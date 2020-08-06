[Previous Page - Background](background.html)

This project defines FHIR artifacts to extend the existing C-CDA 2.1 Referral Note and Consultation Note to include dental specific data concepts called for in the ANS/ADA 1084 standard and the DentaQuest Partnership’s MORE Care and Oral Health Value-Based Care initiatives. 

The project references value sets set by the Systematized Nomenclature of Dentistry (SNODENT) working group, under SNOMED-CT. SNODENT is an official subset of SNOMED-CT that provides standardized terms for describing dental disease, captures clinical detail and patient characteristics, supports analysis of patient care services and outcomes, and is interoperable with electronic health records (EHR) and electronic dental record (EDR) systems. Additionally, SNODENT is mapped to ICD-10-CM for reporting diagnoses for billing. SNODENT includes a web-based search browser ([ADA Browser®](https://snodent.ada.org/), where implementors can browse dental related terms and code sets.

The project uses the ADA 1084 as the authoritative reference for dental data inclusion because the ADA created it through consensus across dental providers about what shared dental concepts could be exchanged. The work group compared the ADA 1084 to the FHIR R4 standard, identifying gaps in FHIR representation of dental data concepts. The project prioritized ADA 1084 dental data elements within data domain categories and grouped the data domains by Dental Referral Note (referral sent to another system, requesting dental services) and Dental Consult Note (referral outcome sent back to requester). 


[Next Page - Workflows](workflows.html)