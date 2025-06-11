# Kisumu HIE FHIR Implementation guide

#### Revision History

<table class="table table-hover table-bordered table-striped">
    <thead>
        <tr>
            <th>Name</th>
            <th>Date</th>
            <th>Reason For Changes</th>
            <th>Version</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Kisumu County</td>
            <td>6th June 2025</td>
            <td>Initial Draft</td>
            <td>1.0</td>
        </tr>
    </tbody>
</table>

### Purpose of this Guide

This FHIR Implementation Guide serves as the technical blueprint for implementers, developers, and stakeholders contributing to the Kisumu County Health Information Exchange (CHIE) initiative. It defines the FHIR profiles, value sets, and interoperability workflows necessary to ensure consistent and secure data exchange across all digital health platforms within Kisumu County and beyond.

Let us build a digitally empowered health system, one that delivers timely, data-driven, and person-centered care for all residents of Kisumu County.

### Introduction

The Kisumu County Health Information Exchange (CHIE) represents a landmark initiative by the Kisumu County Government to build a digitally interconnected and responsive healthcare ecosystem. Anchored in the county’s commitment to improved health outcomes and in compliance with Kenya’s Digital Health Act 2023, CHIE serves as the foundational layer of digital public infrastructure for health (DPI-H), enabling real-time, secure, and interoperable health data exchange across facilities and systems.

### Background

As a devolved unit within Kenya’s governance framework, Kisumu County bears the responsibility for delivering accessible, quality healthcare to its citizens. Recognizing digital transformation as a catalyst for systemic improvement, the Department of Health has prioritized the development of policies, technical standards, and infrastructure that support integrated, patient-centered care delivery. This FHIR Implementation Guide (IG) supports that transformation by documenting the specifications required to enable seamless data interoperability, secure exchange, and system integration within the county and with national platforms.

###   Project Vision & Objectives

CHIE is designed to:

Establish Primary Care Networks (PCNs) that support community-level management of minor illnesses and strengthen maternal and neonatal care at referral hubs.

Interconnect county EMRs (such as eCHIS, Elephant, KenyaEMR, and FunSoft) with a centralized County Digital Health Shared Services layer.

Enable integration with the Kenya Digital Health Superhighway, thereby positioning Kisumu County as a model for subnational digital health infrastructure.

###   CHIE Technical Architecture

The CHIE is structured around three key components:

Kenya Digital Health Superhighway Integration – to enable national-level interoperability.

Point of Service (PoS) Solutions – interlinking multiple EMRs used across health facilities.

County Digital Health Shared Services, comprising:

The County Data Repository (CDR) for longitudinal patient records.

The County Interoperability Services Layer (CISL) for routing, mapping, and securing health data flows.


