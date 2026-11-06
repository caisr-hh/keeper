# Nordic MIL

## Project Overview

The Nordic MIL simulation project has the ambitious scope of enabling decision makers in the maritime industry to
compare the expected outcomes of future investments using the simulator as a platform to compare the effects of changes
to the driveline, vessel type and energy storage system for various operational strategies. The project is planned to
run from October 2025 to December 2027 and involves a large selection of local and international partners. Co-funding is
provided by the Swedish energy agency.

## Project partners

- [Cetasol](https://cetasol.com/)
- [Halmstad University](https://www.hh.se/)
- [Erik Thun](https://thun.se/)
- [Quokka AB](https://quokka.se/)
- [RISE](https://www.ri.se/sv)
- [Strömma](https://www.stromma.com)
- [Port Singapore Port Authority](https://www.mpa.gov.sg/home)
- [ZEM energy](https://zem.no/)
- [Furuno](https://www.furuno.se/)

## Research objectives

The focus of the Nordic MIL project from Halmstad University lies in developing and evaluating models for predictive
maintenance.

### Anomaly detection - Detecting issues in engine signals

The diverse sets of drivelines presented requires a flexible anomaly detection framework. The task is inherently
unsupervised and with low guarantees in terms of data quality, placing high requirements of robustness in the solution.
Currently, various forms of reconstructive methods such as those based on VAEs are tested on this task.

### Hull cleaning - Drift detection and modelling: As the hull fouls the effective drag increases. To accurately model the

fuel efficiency, this factor has to be accounted for. The challenge in this task comes from the diversity of vessels,
weather, and operational conditions.

### Implementation The project builds on the framework and experience formed during the Marine Twin project of the previous year and the end goal is an automatic

Pipeline for both tasks hosted on AWS for training and validation steps, yet deployable on edge devices when applicable.

The lack of labelled data and the variety means that special attention has to be paid to both data pipelines and model
evaluation.
