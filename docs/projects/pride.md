# PRIDE: AI-Driven Precision Diagnosis for Heavy-Duty Trucks

## Overview

PRIDE investigated how AI can support earlier and more accurate diagnosis of faults in heavy-duty trucks. The project
combined onboard ranking and sensor data, diagnostic trouble codes (DTCs), and unstructured workshop reports. Its two
main research directions were forecasting future faults from ranking data and applying language models to classify
complaints. Language models were also used to extract technical information and integrate multiple data sources for
improved engine diagnostics.

## Results and impact

The results demonstrate that ranking data contains valuable information for long-term fault prediction. The MLSTM-FCN
model achieved an average accuracy of 58%, reaching 73% for individual DTCs, and outperformed XGBoost by approximately
ten percentage points. For workshop reports, domain-adapted language models and synthetic training data substantially
improved classification and named-entity recognition. Multimodal fusion using text, DTCs, and ranking-data snapshots
achieved 68.8% diagnostic accuracy, compared with 65.3% for text alone. The project demonstrated how AI can integrate
vehicle data and workshop reports to enable earlier, more accurate fault diagnosis. A fully integrated and
workshop-validated system remains a topic for future work.

## People and partners

- **Research team:**
  - [Adeel Zafar](https://www.hh.se/english/information-english/search-staff.html?person=C09D7C95-A038-424C-BB50-2E2DF7A48659)
  - [Hamid Sarmadi](https://www.hh.se/english/information-english/search-staff.html?person=F66B43FC-7101-4927-99B1-A955CF7B298E)
  - [Sławomir Nowaczyk](https://www.hh.se/english/information-english/search-staff.html?person=CC3B6517-904D-4E86-9B1E-8C395C0F3236)
  - [S. Gholami Shahbandi](https://www.hh.se/english/information-english/search-staff.html?person=4A279A80-485E-4377-86EF-F2B036ABDBCE)
  - [Petter Strandh](https://github.com/PetStr)
- **Coordinator:**
  [CAISR at Halmstad University](https://www.hh.se/english/research/our-research/research-at-the-school-of-information-technology/center-for-applied-intelligent-systems-research-caisr.html)
- **Industrial partner:** Volvo Group Trucks Technology, Quality and Customer Satisfaction (Q&CS)
- **Contact persons:** Sławomir Nowaczyk, Halmstad University, and Petter Strandh, Volvo GTT

## Publications

1. [How to Use Language Models for Vehicle Service Complaint Classification under Industrial Constraints?](https://link.springer.com/chapter/10.1007/978-3-032-32643-0_13)
   ISMIS 2026.
1. [From Zero-Shot to Domain Precision: Synthetic Data Fine-Tuning for Robust NER in Low-Resource Domain-Specific Texts](https://link.springer.com/chapter/10.1007/978-3-032-32643-0_17).
   ISMIS 2026.
1. From Bug Reports to Fault Reports: Bridging Software Engineering and Automotive Service Quality with Language Models.
   SOMI Workshop, ECML PKDD 2026.
1. [Modality Dropout Enables Multi-Modal Fusion for Heavy-Duty Vehicle Engine Diagnostics](https://arxiv.org/abs/2608.23161).
   EMNLP 2026, under review.
