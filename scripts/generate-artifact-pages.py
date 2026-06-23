#!/usr/bin/env python3
"""Generate per-type artifact pagecontent matching the artifacts summary HTML."""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
ARTIFACTS_XML = ROOT / "temp/pages/_includes/artifacts.xml"
OUT_DIR = ROOT / "input/pagecontent"

PAGES = {
    "artifact-profiles.xml": "1",
    "artifact-extensions.xml": "2",
    "artifact-valuesets.xml": "3",
    "artifact-codesystems.xml": "4",
    "artifact-examples.xml": "5",
}


def expand_liquid(fragment: str) -> str:
    fragment = re.sub(
        r"\{%\s*capture\s+grouping_desc\s*%\}(.*?)\{%\s*endcapture\s*%\}\s*\{\{\s*grouping_desc\s*\|\s*markdownify\s*\}\}",
        lambda match: f"<p>{match.group(1).strip()}</p>",
        fragment,
        flags=re.DOTALL,
    )
    fragment = re.sub(
        r"\{%\s*capture\s+desc\s*%\}(.*?)\{%\s*endcapture\s*%\}\s*\n?\{\{\s*desc\s*\|\s*markdownify\s*\}\}",
        lambda match: f"<p>{match.group(1).strip()}</p>",
        fragment,
        flags=re.DOTALL,
    )
    return fragment.strip()


def extract_section(xml: str, anchor: str) -> str:
    pattern = rf'<a name="{anchor}"> </a>(.*?)(?=\s*<a name="\d+"> </a>|\Z)'
    match = re.search(pattern, xml, re.DOTALL)
    if not match:
        return ""
    return expand_liquid(match.group(1))


def main() -> int:
    if not ARTIFACTS_XML.is_file():
        print(f"Missing {ARTIFACTS_XML}; run IG publisher first.", file=sys.stderr)
        return 1

    xml = ARTIFACTS_XML.read_text()
    OUT_DIR.mkdir(parents=True, exist_ok=True)

    for filename, anchor in PAGES.items():
        section = extract_section(xml, anchor)
        if not section:
            print(f"No section found for anchor {anchor}", file=sys.stderr)
            return 1

        content = (
            '<div xmlns="http://www.w3.org/1999/xhtml">\n'
            f"{section}\n"
            f'<p><a href="artifacts.html#{anchor}">View on full artifacts summary</a></p>\n'
            "</div>\n"
        )
        target = OUT_DIR / filename
        target.write_text(content)
        print(f"Wrote {target.relative_to(ROOT)}")

        temp_include = ROOT / "temp/pages/_includes" / filename
        if temp_include.parent.is_dir():
            temp_include.write_text(content)
            print(f"Synced {temp_include.relative_to(ROOT)}")

    for stale in list(OUT_DIR.glob("artifact-*.md")) + list(
        (ROOT / "temp/pages/_includes").glob("artifact-*.md")
        if (ROOT / "temp/pages/_includes").is_dir()
        else []
    ):
        stale.unlink()
        print(f"Removed stale {stale.relative_to(ROOT)}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
