### Overview
This implementation guide provides HL7 FHIR resources to define standards for bi-directional information exchange between a medical and a dental provider or between dental providers. This publication provides the data model, defined data items and their corresponding code and value sets specific to a dental referral note and dental consultation note. This guide describes constraints on the [C-CDA on FHIR](http://www.hl7.org/fhir/us/ccda/) header and body elements for dental information, which are derived from requirements developed by the Dental Summary Exchange Project of the Health Level Seven (HL7) Payer/Provider Information Exchange Work Group (PIE WG). Resources in this US Realm implementation guide are specific to dental referral and consultation notes for exchange and interoperability among dental providers and with medical providers.

This guide contains a library of FHIR profiles and is compliant with FHIR Release 4. At a minimum, a document bundle (C-CDA on FHIR Referral Note or Consultation Note) will be exchanged along with a ServiceRequest, Patient, and associated medical and dental information. This guide specifies how and where these resources are included within the C-CDA on FHIR profiles. 

All proprietary documents, guides, guidance, standards, codes, and values contained herein remain the property of their respective Standards Developing Organization (SDO). HL7 does not make any claim to ownership herein.

This HL7 FHIR® R4 Implementation Guide: Dental Data Exchange is developed in parallel to the HL7 CDA® R2 Implementation Guide: Dental Data Exchange.

### Scope
This guide defines 7 FHIR profiles:
* Dental Bundle
* Dental Referral Note
* Dental Service Request
* Dental Consult Note
* Dental Condition
* Dental Finding
* Dental Communication

This guide defines 6 value sets:
* Dental Reason For Referral
* Dental Observation Codes ValueSet
* Dental Anatomy 
* Oral Cavity Area ValueSet
* Tooth Identification ValueSet
* Dental Category 

This guide provides 4 use cases that represent common dental information exchange patterns:
* Scenario 1: Medical to Dental Referral Note
* Scenario 2: Dental to Medical Consult Note
* Scenario 3: Dental to Dental (Endodontist) Referral Note
* Scenario 4: Dental (Endodontist) to Dental (General Dentist) Consult Note

### Dependencies
This guide leverages the [American National Standard/American Dental Association (ANS/ADA) Specification Number 1084; Reference Core Data Set for Communication among Dental and other Health Information Systems, 2019](https://confluence.hl7.org/download/attachments/55936116/ADA%20Standard%20No.%201084_May%202019.pdf?version=1&modificationDate=1560955690222&api=v2). It is also informed by the work of MORE Care (Medical Oral Expanded Care), an initiative of the CareQuest Institute for Oral Health, which now includes the programs of the DentaQuest Partnership for Oral Health Advancement. MORE Care integrates oral health competencies and capabilities into primary care offices while building patient-centered referral networks with local dental providers using health information technology.

This guide is based on the prior work from the US Core and C-CDA on FHIR Implementation Guides and is supported by the Da Vinci initiative, which is a private effort to accelerate the adoption of FHIR Resources as the standard to support and integrate value-based care (VBC) data exchange across communities. Changes to this specification are managed by the sponsoring Payer/Provider Information Exchange Work Group (PIE WG) and are incorporated as part of the standard balloting process.

**US Core profiles used by this guide:**
* [allergyintolerance](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-allergyintolerance.html)
* [condition](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-condition.html)
* [encounter](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-encounter.html)
* [medication](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-medication.html)
* [organization](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-organization.html)
* [patient](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html)
* [practitioner](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner.html)
* [practitionerrole](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-practitionerrole.html)
* [procedure](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html)
* [vitalsigns](http://hl7.org/fhir/R4/observation-vitalsigns.html)

**C-CDA on FHIR profiles used by this guide:**
* [Referral Note](http://build.fhir.org/ig/HL7/ccda-on-fhir/StructureDefinition-Referral-Note.html)
* [Consultation Note](http://build.fhir.org/ig/HL7/ccda-on-fhir/StructureDefinition-Consultation-Note.html)

**Da Vinci Health Record Exchange (HRex) profile used by this guide:**
* [HRex Coverage](http://hl7.org/fhir/us/davinci-hrex/2019Jun/StructureDefinition-hrex-coverage.html)

**Occupation Data for Health (ODH) profile used by this guide:**
* [PastOrPresentJob](http://hl7.org/fhir/us/odh/StructureDefinition-odh-PastOrPresentJob.html)

### Audience
The audience for this implementation guide includes architects and developers of medical and dental health record systems, medical and dental providers, and payer systems in the US Realm. Business analysts and policy managers can also benefit from a basic understanding of the use of dental data exchange to support internal and external dental referrals, dental coverage or claim substantiation, and overall dental care coordination.

Implementers of this Dental Data Exchange FHIR standard must have FHIR implemented for US Core and C-CDA.

### Dental Data Exchange Project Team
**Contributors**

| Role | Name | Affiliation | Contact |
| -------- | -------- | -------- |
| Primary Editor | Rick Geimer | Lantana Consulting Group | rick.geimer@lantanagroup.com |
| Primary Editor | David deRoode | Lantana Consulting Group | david.deroode@lantanagroup.com |
| Co-Editor | Zabrina Gonzaga | Lantana Consulting Group | zabrina.gonzaga@lantanagroup.com |
| Co-Editor | Diana Wright | Lantana Consulting Group | diana.wright@lantanagroup.com |
| Co-Editor | Russell Ott | Deloitte Consulting LLP | rott@deloitte.com |
| Co-Editor | Manisha Khatta | Deloitte Consulting LLP | makhatta@deloitte.com |
| Subject Matter Expert | Rebekah Fiehn | CareQuest Institute for Oral Health | rfiehn@carequest.org |
| Subject Matter Expert | Eric Tranby | CareQuest Institute for Oral Health | etranby@carequest.org |
| Subject Matter Expert | Greg Zeller | American Dental Association | ggzeller@aol.com |
| Subject Matter Expert | Jean Narcisi | American Dental Association | narcisij@ada.org |
| Subject Matter Expert | Col William Baez | Chief Medical Information Officer, United States Air Force | william.r.baez2.mil@mail.mil |
| Subject Matter Expert | LTC Kevin B. Parker | Chief Dental Informatics Officer, United States Army | kevin.b.parker.mil@mail.mil |
| Subject Matter Expert | CDR Steve Stallings | Chief Dental Informatics Officer, United States Navy | steve.l.stallings.mil@mail.mil |
| Subject Matter Expert | LCDR Michael Bohman | United States Navy | michael.a.bohman2.mil@mail.mil |
| Subject Matter Expert | Martha (Marti) Velezis | Food and Drug Administration | martha.velezis@fda.hhs.gov |

### Acknowledgements
This guide was developed and produced through the efforts of Health Level Seven (HL7).

The editors appreciate the support and sponsorship of the HL7 Payer/Provider Information Exchange Working Group (PIE WG), the HL7 Structured Documents Working Group (SDWG), and all volunteers and staff associated with the creation of this document. This guide would not have been possible without the support of the following organizations:
* American Dental Association
* Defense Health Agency, US Department of Defense
* Veteran's Health Administration, US Department of Veterans Affairs
* Lantana Consulting Group
* CareQuest Institute for Oral Health 

This material contains content from SNOMED CT® ([http://www.ihtsdo.org/snomed-ct/](http://www.ihtsdo.org/snomed-ct/)). SNOMED CT is a registered trademark of the International Health Terminology Standard Development Organization (IHTSDO).

This material contains content from SNODENT® ([http://www.ada.org/snodent](http://www.ada.org/snodent)). SNODENT is a registered trademark of the American Dental Association (ADA). Licensing information is available at [http://www.ada.org/8466.aspx](http://www.ada.org/8466.aspx).

"This material contains content from LOINC ([http://loinc.org](http://loinc.org)). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at [https://loinc.org/kb/license/](https://loinc.org/kb/license/). LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
