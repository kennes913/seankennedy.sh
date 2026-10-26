+++
title = "resume"
date = 2025-10-25
template = "resume.html"
+++

**Sean Kennedy**  
Staff Software Engineer | Infrastructure & Platform  
Austin, Texas | 210-410-4905 | skennedy@seankennedy.sh | Linkedin | Github

## Summary

Staff software engineer with 9+ years of experience building production software, data systems, and cloud infrastructure, with deep specialization in platform engineering and SRE. Strong in Python, Terraform, AWS, and CI/CD, with a track record of building deployment platforms, distributed data systems, APIs, and developer tooling that reduce costs, accelerate delivery, and improve reliability. Delivered six-figure cost savings and 2x–10x deployment improvements while shipping both internal infrastructure and customer-facing platform capabilities.

## Skills

Languages: Python, SQL, JavaScript, C++, Rust  
Cloud & Infrastructure: AWS, Azure, Terraform, Kubernetes, ECS  
CI/CD & Platform: GitHub Actions, CircleCI  
Data: PostgreSQL, Snowflake, Trino, Alluxio  
AI Harnesses: Claude Code, Codex

## Experience

### Staff SRE Engineer, manifold.ai

_Mar. 2026 - present_

* Built a serverless Slack deploy-notification service (Lambda, DynamoDB, Terraform) that turns GitHub Actions webhooks into live-updating, deduplicated status messages with failure routing.
* Upgraded the Terraform Snowflake provider from v0.98 to 2.x across all production customer environments with zero downtime protecting customer data from non-deterministic states and upgrade related failures.
* Built new customer provisioning AI agent that reduced customer onboarding time measured in days to time measured in hours by collapsing the number of manual steps into fewer automated steps.
* Enhanced Slack-based deployment failure triage with automated first-pass diagnostics, helping engineers identify likely causes faster and deployment failure investigation time.

### Sr. DevOps Engineer, manifold.ai

_Oct. 2022 - Mar. 2026_

* Owned and maintained critical components of the core platform infrastructure, including deployment tooling, initial end-to-end service rollouts, integration testing frameworks, and novel platform features.
* Migrated several cloud-managed services to self-hosted infrastructure, reducing annual operating costs by ~$60K/year.
* Led a major Terraform pipeline refactor, achieving 2x–10x faster deployments and significantly lowering deployment failure risk.
* Led implementation of the BYOCompute feature, enabling customers to connect their own cloud accounts to the platform, directly contributing to increased product adoption.

### Sr. Infrastructure Engineer, CDK Global

_July 2020 - Sept. 2022_

* Optimized a key internal microservice, reducing API response times by ~2.95 seconds and lowering memory usage in the Kubernetes cluster.
* Improved data platform performance by implementing cache invalidation and warming jobs, leading to faster load times and higher user satisfaction.
* Cut data delivery time to production Snowflake environments from days to hours by building a continuous deployment pipeline integrating Git and Kafka Connect.
* Achieved company-wide security SLOs by deploying ClamAV virus scanning via a custom Kubernetes Helm chart.
* Accelerated delivery of Databricks notebook pipelines by developing a Python-based CI tool to manage and converge Databricks workspace job state.

### Sr. Data Engineer, Square Root

_June 2019 - July 2020_

* Developed a critical SQL generation microservice, eliminating the need for external vendors and saving the company over $100,000.
* Implemented a bulk API endpoint for the core data API, reducing dashboard client calls by 3–7x and enabling advanced visualization features.
* Re-architected data flow for a core data science product using Alluxio distributed caching and the Trino query engine, enabling compatibility with new data stores and significantly faster queries.
* Built comprehensive data quality testing tools, increasing API request coverage to 95%.

### Data Engineer, Square Root

_Oct. 2017 - June 2019_

* Built a configurable file ingestion and normalization framework that improved data processing speed by ~20% and centralized previously fragmented file movement workflows.
* Designed and deployed an event-based data lake ingestion service processing ~3 million events/month, enabling near real-time (≈30s latency) ingestion of physical transaction data.
* Developed an internal web app used by ~40 employees to track and visualize customer feedback, transforming hard-to-quantify insights into actionable metrics and improving user engagement.
* Authored data migration scripts that enabled seamless interoperability between legacy and modern data stores, supporting gradual system transition without disrupting usage.

### Business Intelligence Developer, Unique Influence

_Oct. 2014 - Oct. 2017_

* Built an automated report generation system using Cron, MySQL, and Python to produce custom multi-tab .xlsx reports for 15 clients, saving over 1 hour per week per client.

## Education

### University of Texas

Bachelor of Arts, May 2010

### Austin Community College

Aug. 2015 - May 2020 (Computer Science)