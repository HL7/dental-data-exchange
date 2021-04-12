[Previous Page - Workflows](workflows.html)

Currently, there is no standard for the exchange of discrete dental observations between dental providers. While some dental electronic health record (EHR) systems have implemented C-CDA for data exchange, that standard was primarily built for medical care and does not include the structured data elements needed by dental providers.

The Department of Defense (DoD) and the American Dental Association (ADA) recognized the need for foundational dental data exchange between medical and dental practices and among dental practices. The DoD wishes to support the dental health of service members and their readiness for deployment. The ADA wishes to support a continued, industry-wide, drive to promote and enhance standardized and structured dental data for seamless interoperability using CDA and FHIR. Lantana Consulting Group and DentaQuest Partnership have collaborated to develop a CDA Dental Data Exchange Implementation Guide in parallel to this FHIR implementation guide. 

Representatives from the DoD, ADA, and industry leaders convened the Dental Data Exchange Project in late Summer 2019. The first project milestone was identifying key data concepts that could successfully transmit a dental referral between two dental systems, or between a medical and a dental system. The project focused on adding structure to unstructured dental data elements while maintaining compatibility with [FHIR US Core Implementation Guide](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=500), [HL7 CDA® R2 IG: C-CDA Templates for Clinical Notes R2.1 Companion Guide, Release 2 - US Realm](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=447), and [HL7 CDA® R2 Implementation Guide: Consolidated CDA Templates for Clinical Notes - US Realm](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=492). 

Independently, the DentaQuest Partnership identified a need for communication and coordination of care between oral health providers and other health care disciplines. The inability of health information systems to meaningfully share data limits the healthcare system’s ability to address whole-person care across the lifespan, and is therefore detrimental to health outcomes. The electronic communication of clinically relevant medical or dental information when referring a patient to a dental provider, and the ability to close the referral loop, via a dental consultation note to the referring healthcare providers is vital to improving care coordination and provider collaboration. DentaQuest Partnership joined this project in Fall 2019, bringing their requirements to the development of standard dental referral and dental consultation notes.

### Current Project

This project defines FHIR artifacts to extend the existing C-CDA 2.1 Referral Note and Consultation Note to include dental specific data concepts called for in the ANS/ADA 1084 standard and the CareQuest Institute’s MORE Care and Oral Health Value-Based Care initiatives. 

The project references value sets set by the Systematized Nomenclature of Dentistry (SNODENT) working group, under SNOMED-CT. SNODENT is an official subset of SNOMED-CT that provides standardized terms for describing dental disease, captures clinical detail and patient characteristics, supports analysis of patient care services and outcomes, and is interoperable with electronic health records (EHR) and electronic dental record (EDR) systems. Additionally, SNODENT is mapped to ICD-10-CM for reporting diagnoses for billing. SNODENT includes a web-based search browser ([ADA Browser®](https://snodent.ada.org/), where implementors can browse dental related terms and code sets.

The project uses the ADA 1084 as the authoritative reference for dental data inclusion because the ADA created it through consensus across dental providers about what shared dental concepts could be exchanged. The work group compared the ADA 1084 to the FHIR R4 standard, identifying gaps in FHIR representation of dental data concepts. The project prioritized ADA 1084 dental data elements within data domain categories and grouped the data domains by Dental Referral Note (referral sent to another system, requesting dental services) and Dental Consult Note (referral outcome sent back to requester). 

### Dental Use Case Scenarios

Use cases can bridge understanding between conceptual interpretations and technical implementation of this guide. These use cases were tested at the May 2020 FHIR Connectathon: Dental Summary Exchange Track, and further refined by the project. 

The use cases outlined in this section show the complexity of the information that can be exchanged between a dental and medical system or two dental systems. Fully-formed XML sample files representing the data included in each of these scenarios are published with this implementation guide.

The figure below represents the high-level workflow described across Scenarios 1 (Medical to Dental Referral Note) and 2 (Dental to Medical Consultation Note).  

<table><tr><td><img src="Dnetal Data Exchange.png" /></td></tr></table>

#### Scenario 1 Medical to Dental Referral Note
Patient A is a 30-year-old male who has mild hypertension, Type 1 Diabetes, and has an insulin pump. He sees his primary care physician, Dr. John M at Good Health Clinic, for a routine, annual check-up. Aside from medical concerns, Patient A mentions increasing pain in his left lower jaw and some occasional bleeding from his gums. Dr. John M makes an urgent referral to a dentist for further evaluation and discusses the plan with Patient A, who agrees with the plan. Dr. John M generates a Patient Referral Note that includes data describing the dental related findings. Before Patient A leaves, the referral coordinator at the front desk schedules an appointment for him to see Dr. Drew Dentist for the next day.

Capability Statement references: Medical office system is the Document Source (i.e., server) that generates the Dental Referral Note and the Dental office application is the Document Consumer (i.e., client) that consumes the Dental Referral Note.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px; overflow:hidden;padding:0px 3px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px; font-weight:normal;overflow:hidden;padding:0px 3px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0lax">Patient has pain in his lower left jaw and occasional bleeding from his gums - referring for dental evaluation.</th>
  </tr>
</thead>
</table>

The following data table maps the FHIR resources to CDA sections and entries, and to data values for Scenario 1.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px; overflow:hidden;padding:0px 3px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px; font-weight:normal;overflow:hidden;padding:0px 3px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
 <tr>
 <th title="Field #1">FHIR Resource/Profile</th>
 <th title="Field #2">FHIR Data Element</th>
 <th title="Field #3">CDA Section</th>
 <th title="Field #5">CDA Entry</th>
 <th title="Field #5">Data Values</th>
 </tr>
</thead>
<tbody>
 <tr>
 <td>AllergyIntollerance</td>
 <td>AllergyIntollerance.code</td>
 <td>Allergies and Intolerances Section <br>(entries required) (V3)</td>
 <td>Allergy Concern Act(V3)/ <br>Allergy - Intolerance Observation (V2)</td>
 <td>7980 Penicillin G (Ingredient) RxNorm</td>
 </tr>
 <tr>
 <td>Communication (Dental Communication Profile)</td>
 <td>Communication.payload.content</td>
 <td>Instructions Section(V2)</td>
 <td>N/A</td>
 <td>Pt. Education. Advised to see dentist regularly, <br>brush 2x/day w/ fluoride toothpaste, floss</td>
 </tr>
 <tr>
 <td>Composition</td>
 <td>Composition.section.title = "Assessment Section"</td>
 <td>Assessment Section</td>
 <td>N/A</td>
 <td>Patient has pain in his lower left jaw and occasional bleeding from his gums - referring for dental evaluation.</td>
 </tr>
 <tr>
 <td>Composition</td>
 <td>Composition.section.title= "History of Present Illness Section"</td>
 <td>History of Present Illness Section</td>
 <td>N/A</td>
 <td>Patient has not visited a dentist or received fluoride treatments
<br> in the past four years while away at college.</td>
 </tr>
 <tr>
 <td>Condition</td>
 <td>Condition.category Condition.code</td>
 <td>Problem Section (entries required) V3</td>
 <td>Problem Concern Act(V3) / Problem Observation (V3)</td>
 <td>Value: 38341003 Hypertensive disorder (disorder) SNOMED CT
<br>    Translation: 175027DHypertensive disorder (disorder) SNODENT
<br>Value: 46635009 Type1 diabetes SNOMED CT
<br>    Translation: 175321DType 1 diabetes SNODENT 
<br>Value: 609402003 At high risk for dental caries (finding) SNOMED CT
<br>    Translation: 179051DAt high risk for dental caries (finding) SNODENT</td>
 </tr>
 <tr>
 <td>Coverage</td>
 <td>Coverage.status Coverage.payor</td>
 <td>Payers Section (V3)</td>
 <td>N/A</td>
 <td>Aetna Comprehensive Medical /Dental Insurance</td>
 </tr>
 <tr>
 <td>Encounter</td>
 <td>Encounter.status
<br>Encounter.class
<br>Encounter.type
<br>Encounter.period
<br>Encounter.priority</td>
 <td>US Realm Header</td>
 <td>componentOf/encompassingEncounter</td>
 <td>Office visit: Feb 14,2020 at 3:00 pm
<br>99201 Level 1 New Patient Office 
<br>Visit CPT</td>
 </tr>
 <tr>
 <td>Goals</td>
 <td></td>
 <td>Goal Section</td>
 <td>Goal Observation</td>
 <td>No soda/sugary drinks/energy drinks
<br>Use fluoride toothpaste</td>
 </tr>
 <tr>
 <td>Health Concerns</td>
 <td></td>
 <td>Health Concern Section(V2)</td>
 <td>Health Concern Act(V2) / Problem Observation (V3)</td>
 <td>230572002 Neuropathy due to diabetes mellitus SNOMED CT</td>
 </tr>
 <tr>
 <td>Immunization</td>
 <td></td>
 <td>Immunization Section (entries required) (V3)</td>
 <td>Immunization Activity(V3) /
<br>Immunization Medication Information (V2)</td>
 <td>08 Hepatitis B vaccine CVX Administered on 1/4/2020</td>
 </tr>
 <tr>
 <td>Medical Equipment</td>
 <td></td>
 <td>Medical Equipment Section (V2)</td>
 <td>Procedure Activity Procedure (V2) /
<br>Product Instance</td>
 <td>443263006 Insertion of insulin pump (procedure) SNOMED CT
<br>69805005 Insulin pump SNOMED CT
<br>212124D Insulin pump SNODENT</td>
 </tr>
 <tr>
 <td>Medication &amp; MedicationRequest (status=completed)</td>
 <td>Medication.code
<br>MedicationRequest.status
<br>Medicationstatus.intent
<br>MedicationRequest.authoredOn
<br>MedicationRequest.dosageInstruction.route
<br>MedicationRequest.dosageInstruction.doseAndRate</td>
 <td>Medications Section (entries required) (V2)</td>
 <td>Medication Activity (V2) / Medication Information (V2)</td>
 <td>Lisinopril 10 mg tab, taking 1 tab once a day 
<br>314076 Lisinopril 10mg Oral Tablet RxNorm</td>
 </tr>
 <tr>
 <td>Observation (Dental Findings profile)</td>
 <td></td>
 <td>Problem Section (entries required) V3 
<br>(might be in the Dental Findings Section instead if it came from a Dental care setting)</td>
 <td>Problem Observation(V3)</td>
 <td>Value: 309685001 Swollen gums SNOMED CT
<br>   Translation: 148393DSwollen gums SNODENT
<br>Value: 276453000 Teeth covered in plaque (finding) SNOMED CT
<br>   Translation: 108723DTeeth covered in plaque (finding) SNODENT
<br>Value: 27355003 Toothache (finding) SNOMED CT
<br>   Translation: 108723D Toothache (finding) SNODENT
<br>Value: 86276007 Bleeding Gums SNOMED CT
<br>   Translation: 142683DBleeding Gums SNODENT</td>
 </tr>
 <tr>
 <td>Patient</td>
 <td>Patient.name 
<br>Patient MRN (identifier) 
<br>Patient.address 
<br>Patient.telecom 
<br>Patient.birthDate 
<br>Patient.gender 
<br>Patient.us-core-ethnicity (extension) 
<br>Patient.us-core-race (extension)</td>
 <td>US Realm Header</td>
 <td>recordTarget/ patientRole</td>
 <td>Patient A 
<br>MRN: 5152020 
<br>123 Test. Dr. Denver CO 80204 
<br>phone: (123)456-7890 
<br>email: testA@email.com 
<br>01-01-1990 
<br>Male 
<br>Not Hispanic or Latino 
<br>White</td>
 </tr>
 <tr>
 <td>Procedure</td>
 <td></td>
 <td>Procedure Section</td>
 <td></td>
 <td>N/A - no procedures in the scenario</td>
 </tr>
 <tr>
 <td>Referral Note (CCDAonFHIR) 
<br>Reason for Referral</td>
 <td>Composition.section.code[43241-9].text 
<br>Composition.section.code[43241-9].entry</td>
 <td>Reason for Referral Section (V3)</td>
 <td>Patient Referral Act/ Indication (V2)</td>
 <td>Dental Referral: Feb15, 2020 at 3 pm; 
<br>priority – ASAP 
<br>103697008 Patient referral for dental care (procedure) SNOMED CT
<br>27355003 Pain in tooth SNOMED CT
<br>301716002 Left lower quadrant pain SNOMED CT
<br>86276007 Bleeding gums SNOMED CT</td>
 </tr>
 <tr>
 <td>Referring Organization</td>
 <td>Organization.identifier:NPI 
<br>Organization.active 
<br>Organization.name</td>
 <td>US Realm Header</td>
 <td>custodian/ assignedCustodian 
<br>/representedCustodianOrganization</td>
 <td>NPI 1316452725 
<br>Good Health Clinic</td>
 </tr>
 <tr>
 <td>Referring Practitioner</td>
 <td>Practitioner.identifier:NPI 
<br>Practitioner.name 
<br>Practitioner Organization</td>
 <td>US Realm Header</td>
 <td>author/ assignedAuthor</td>
 <td>NPI: 1234567411 
<br>Dr. John M 
<br>Good Health Clinic</td>
 </tr>
 <tr>
 <td>Referring PractitionerRole</td>
 <td>PractitionerRole.organization 
<br>PractitionerRole.code</td>
 <td>US Realm Header</td>
 <td>author/ assignedAuthor/ code</td>
 <td>207QA0505X Family Medicine 
<br>[Adult Medicine] Healthcare Provider Taxonomy (HIPAA)</td>
 </tr>
 <tr>
 <td>ServiceRequest</td>
 <td>ServiceRequest.priority 
<br>ServiceRequest.reasonCode 
<br>ServiceRequest.occurence</td>
 <td>Plan of Treatment SectionV2</td>
 <td>Planned Encounter V2</td>
 <td>D0150 Comprehensive Oral Evaluation CDT</td>
 </tr>
 <tr>
 <td>Social History</td>
 <td></td>
 <td>Social History Section (V3)</td>
 <td>Smoking Status – Meaningful Use (V2)  
<br>and Social History Observation (V3)</td>
 <td>266919005 Never smoked tobacco (finding) SNOMED CT 
<br>224302000 Received higher education college education (finding) SNOMED CT 
 
<br>106302007 Accountant (occupation) SNOMED CT</td>
 </tr>
 <tr>
 <td>Vital Signs Observation </td>
 <td>Observation.component.value</td>
 <td>Vital Signs Section (entries required) (V3)</td>
 <td>Vital Signs Organizer(V3) / Vital Sign Observation (V2)</td>
 <td>Temp: 98.5 
<br>Pulse: 78 
<br>Respiration: 20 
<br>BP: 120/80</td>
 </tr>
</tbody>
</table>


#### Scenario 2 Dental to Medical Consult Note
Patient A sees Dr. Drew Dentist on February 16th for an urgent evaluation based on a referral from Dr. John M, his primary care provider. Patient A is a new patient at Dr. Dentist’s office, so a new patient record is created. Dr. Dentist reviews the risk assessment, the Dental Referral Note from Dr. John M, and the rest of the information that was pre-populated in the dental EHR. Dr. Dentist performs an oral evaluation and two PA radiographs. He identifies two areas of concern: patient has a significant, non-restorable caries lesion (decay) on the left lower back molar (tooth #18) with signs of infection, and early signs of decay on the right upper incisor (tooth #7). 

Dr. Dentist recommends an extraction of the left lower molar (tooth #18) and restoration of the right upper lateral incisor (tooth #7) due to a caries lesion (decay). Dr. Dentist explains the importance of using a fluoride toothpaste when brushing twice daily with daily flossing, and of the need for bi-annual dental visits for examination and prophylaxis (cleaning). 

Before Patient A leaves, the receptionist schedules an appointment for the extraction of tooth #18 on February 23rd, another appointment for restoration of tooth #7 on March 3rd, and a follow-up appointment for a complete examination, including radiographs and prophylaxis on March 10th. 

Dr. Dentist reviews Patient A’s current medication list, notes an allergy to penicillin that is a counter-indication for his typical recommendation of amoxicillin, prescribes Erythromycin 500 mg every six hours for the infection and recommends alternating over-the-counter Ibuprofen and Acetaminophen for pain. Also, he generates a Dental Consultation Note back to Dr. John M with a summary of Patient A’s visit including the new prescription, planned procedures, future appointment dates, and patient specific dental goals.

Capability Statement references: The Dental office system is the Document Source (server) that generates the Dental Consult Note and the Medical office application is the Document Consumer (ie client) that consumes the Dental Consult Note

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px; overflow:hidden;padding:0px 3px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px; font-weight:normal;overflow:hidden;padding:0px 3px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0lax">Patient reports inability to chew on left side due to pain and sensitivity, a condition that has increased in severity in the two days since his medical appointment. Significant decay on the left lower second molar (tooth #18) with signs of infection. Early signs of a caries lesion (decay) on the right upper lateral incisor (tooth #7). Recommend an extraction of the left lower second molar (tooth#18) and a restoration on the right upper lateral incisor (tooth #7) due to a caries lesion.</th>
  </tr>
</thead>
</table>

The following data table maps the FHIR resources to CDA sections and entries, and to data values for Scenario 2.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px; overflow:hidden;padding:0px 3px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px; font-weight:normal;overflow:hidden;padding:0px 3px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
 <tr>
 <th title="Field #1">FHIR Resource/Profile</th>
 <th title="Field #2">FHIR Data Element</th>
 <th title="Field #3">CDA Section</th>
 <th title="Field #4">CDA Entry</th>
 <th title="Field #5">Data Values</th>
 </tr>
</thead>
<tbody>
 <tr>
 <td>AllergyIntollerance</td>
 <td>AllergyIntollerance.code</td>
 <td>Allergies and Intolerances Section 
<br>(entries required) (V3)</td>
 <td>Allergy Concern Act (V3) / 
Allergy - Intolerance Observation(V2)</td>
 <td>7980 Penicillin G (Ingredient) RxNorm</td>
 </tr>
 <tr>
 <td>Communication</td>
 <td>Communication.payload</td>
 <td>Instructions Section (V2)</td>
 <td></td>
 <td>Patient A educated on the benefits of using a fluoride toothpaste, daily flossing, and bi-annual routine dental cleaning visits.</td>
 </tr>
 <tr>
 <td>Condition</td>
 <td>Condition.code 
<br>Condition.bodySite</td>
 <td>Problem Section (entries required) V3</td>
 <td>Problem Observation (V3)</td>
 <td>Value: 38341003 Hypertensive disorder (disorder) SNOMED CT
<br>   Translation: 175027D Hypertensive disorder (disorder) SNODENT
<br>Value: 46635009 Type 1 diabetes SNOMED CT
<br>   Translation: 175321D Type 1 diabetes SNODENT
<br>Value: 80967001 Dental caries (disorder) SNOMED CT
<br>   Translation: 118065D Dental caries (disorder) SNODENT
<br>Value: 288920002 Unable to chew (finding) SNOMED CT
<br>   Translation: 126488D Unable to chew (finding) SNODENT
<br>Value: 276453000 Teeth covered in plaque (finding) SNOMED CT
<br>   Translation: 108723D Teeth covered in plaque (finding) SNODENT
<br>Value: 27355003 Toothache (finding) SNOMED CT
<br>   Translation: 108723D Toothache (finding) SNODENT
<br>Value: Chronic periodontitis (disorder) SNOMED CT
<br>   Translation: 116957D Chronic periodontitis (disorder) SNODENT
<br>Value: 427898007 Infection of tooth SNOMED CT
<br>   Translation: 181608D Infection of tooth SNODENT
<br>Value: 609402003 At high risk for dental caries (finding) SNOMEDCT
<br>   Translation: 179051D At high risk for dental caries (finding)SNODENT</td>
 </tr>
 <tr>
 <td>Consult Note (CCDAonFHIR)</td>
 <td>Composition.Reason for Visit Section 
<br>Composition.Assessment Section</td>
 <td>Assessment Section (V2)</td>
 <td></td>
 <td>Patient reports inability to chew on left side due to pain and sensitivity, a condition that has increased in severity in the two days since his medical appointment. 

<br>Significant decay on the left lower second molar (tooth #18) with signs of infection. 
<br>Early signs of a caries lesion (decay) on the right upper lateral incisor (tooth #7).
<br>Recommend an extraction of the left lower second molar(tooth#18) and a restoration on the right upper lateral incisor (tooth #7) due to a caries lesion</td>
 </tr>
 <tr>
 <td>Consulting Organization</td>
 <td>Organization.name</td>
 <td>US Realm Header</td>
 <td>custodian/assignedCustodian 
<br>/representedCustodianOrganization</td>
 <td>Name = Good Oral Health Clinic 
<br>NPI = 1316452726 
<br>Address = 54321 Main Street, Fairfax, VA, 22031</td>
 </tr>
 <tr>
 <td>Consulting Practitioner</td>
 <td>Practitioner.identifier:NPI 
<br>Practitioner.name 
<br>Practitioner Organization</td>
 <td>US Realm Header</td>
 <td>author/ assignedAuthor</td>
 <td>NPI = 1034567384 
<br>Name = Dr. Drew Dentist 
<br>Org = Good Oral Health Clinic</td>
 </tr>
 <tr>
 <td>Consulting PractitionerRole</td>
 <td>PractitionerRole.code 
<br>PractitionerRole.specialty</td>
 <td>US Realm Header</td>
 <td>author/assignedAuthor/code</td>
 <td>Healthcare Provider Taxonomy (HIPAA) 
<br>122300000X Dental Providers; Dentist 
<br>Provider Role (HL7) 
<br>RT - Referred to Provider</td>
 </tr>
 <tr>
 <td>Coverage</td>
 <td>Coverage.status 
<br>Coverage.payor</td>
 <td>Payers Section (V3)</td>
 <td></td>
 <td>Aetna Comprehensive Medical /Dental Insurance</td>
 </tr>
 <tr>
 <td>Dental Findings</td>
 <td>Condition.code 
<br>Condition.bodySite</td>
 <td>Dental Findings Section</td>
 <td>Problem Observation (V3)</td>
 <td>Value: 80967001 Dental caries SNOMED CT 
<br>   Translation: 118065D Dental caries SNODENT 
<br>targetSiteCode: 48402004 Structure of mandibular left second molar tooth SNOMED CT 
<br>   Translation: 161372D Structure of mandibular left second molar tooth SNODENT 
<br>Value: 427898007 Infection of tooth SNOMED CT 
<br>   Translation: 181608D Infection of tooth SNODENT 
<br>targetSiteCode: 48402004 Structure of mandibular left second molar tooth SNOMED CT 
<br>    Translation: 161372D Structure of mandibular left second molar tooth SNODENT 
<br>Value: 80967001 Dental caries SNOMED CT 
<br>   Translation: 118065D Dental caries SNODENT 
<br>targetSiteCode: 245574002 Entire permanent maxillary right lateral incisor tooth SNOMED CT 
<br>   Translation: 161941D Entire permanent maxillary right lateral incisor tooth SNODENT</td>
 </tr>
 <tr>
 <td>Dental Findings</td>
 <td>Observation</td>
 <td>Dental Findings Section</td>
 <td>Result Organizer (V3) / Result Observation (V3)</td>
 <td>Code: 32916-9 Horizontal overlap [Length] Maxilla and MandibleMeasured LOINC 
<br>Value = 3 
<br>Units = mm</td>
 </tr>
 <tr>
 <td>Encounter</td>
 <td>Encounter.status  
<br>Encounter.period</td>
 <td>US Realm Header</td>
 <td>componentOf/ encompassingEncounter</td>
 <td>Performed Feb 16, 2020 11am EST 
<br>CDT D0140 limited oral evaluation - new or established patient</td>
 </tr>
 <tr>
 <td>Medical History</td>
 <td></td>
 <td>History of Present Illness Section</td>
 <td></td>
 <td>The patient has not visited a dentist or received fluoride treatments in the past four years while away at college.</td>
 </tr>
 <tr>
 <td>MedicationRequest (status=active); 
<br>Medication</td>
 <td>Medication.code 
<br>MedicationRequest.dosageInstruction</td>
 <td>Medications Section (entries required) (V2)</td>
 <td>Medication Activity (V2) / Medication Information (V2)</td>
 <td>314076 Lisinopril 10 mg Oral Tablet RxNorm 
<br>197650 erythromycin 500 MG Oral Tablet RxNorm 
<br>310965 ibuprofen 200 MG Oral Tablet RxNorm 
<br>313782 acetaminophen 325 MG Oral Tablet RxNorm</td>
 </tr>
 <tr>
 <td>Patient</td>
 <td><a href="http://patient.us/">Patient.us</a>-core-ethnicity (extension) 
<br><a href="http://patient.name/">Patient.name</a> 
<br>Patient.gender</td>
 <td>US Realm Header</td>
 <td>recordTarget/ patientRole</td>
 <td>Patient A 
<br>MRN: 2020515 
<br>123 Test. Dr. Denver CO 80204 
<br>phone: (123)456-7890 
<br>email: <a href="mailto:testA@email.com">testA@email.com</a> 
<br>01-01-1990 
<br>Male 
<br>Not Hispanic or Latino 
<br>White</td>
 </tr>
 <tr>
 <td>Procedure</td>
 <td>Procedure.code</td>
 <td>Procedures Section (entries optional) (v2)</td>
 <td></td>
 <td>CDT D1206 topical application of fluoride varnish</td>
 </tr>
 <tr>
 <td>Reason for Referral (status=planned)</td>
 <td>Encounter.reasonReference 
<br>Encounter.priority</td>
 <td>Reason for Visit Section</td>
 <td></td>
 <td>Patient referred for evaluation and treatment for tooth ache lower left.</td>
 </tr>
 <tr>
 <td>ServiceRequest</td>
 <td></td>
 <td>Plan of Treatment Section V2</td>
 <td></td>
 <td>Planned Visits: 
<br>Visit 1 - Feb 23, 2020 
<br>CDT D7140 Extraction, erupted tooth or exposed root (elevation and/or forceps removal) 
<br>Tooth #18  
<br>Visit 2- March 3, 2020 
<br>CDT D1352 Preventive resin restoration in a moderate to high caries risk patient-permanent tooth. 
<br>Tooth #7  
<br>Visit 3 - March 10, 2020 
<br>CDT D0150 comprehensive oral evaluation - new or established patient 
<br>CDT D1110 prophylaxis - adult 
<br>CDT D0210 Full Mouth Radiographic Survey</td>
 </tr>
 <tr>
 <td>Vital Signs Observation </td>
 <td>Observation.component.value</td>
 <td>Vital Signs Section (entries required) (V3)</td>
 <td></td>
 <td>Temp: 99 degF 
<br>Pulse: 82 bpm 
<br>BP: 120/80</td>
 </tr>
</tbody>
</table>



#### Scenario 3 Dental to Dental (Endodontist) Referral
Patient A contacts Dr. Drew Dentist complaining about pain in lower right quadrant of his mouth. He mentioned the pain started two weeks ago and has worsened. He noticed sharp, stabbing pain provoked by drinking cold beverages in the past week and lingering pain with biting in the last 2 days. Patient A is able to eat regular food, but is only chewing on the left side. He is taking 400mg ibuprofen every 8 hours for pain. 

Patient A has a history of hypertension and takes Lisinopril 10mg tablet once daily. He is also taking erythromycin 500mg every 6 hours for the infection, and additional ibuprofen for pain as needed. He is allergic to penicillin. 

Dr. Dentist takes Patient A’s clinical impressions and sends referral to Endodontist for an evaluation of tooth #30 and endodontic therapy #30. Referral included medications prescribed, diagnosis, prognosis, treatment notes, images, and follow up recommendations.

Capability Statement references: General Dentist office system is the Document Source (ie server) that generates the Dental Referral Note and the Dental specialist office application is the Document Consumer (ie client) that consumes the Dental Referral Note

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px; overflow:hidden;padding:0px 3px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px; font-weight:normal;overflow:hidden;padding:0px 3px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0lax">#30 pulpal necrosis and periapical pathosis with draining fistula. Clinical impression is that possible vital pulp remnants remain. #30 possible cracked DB cusp; rule out cracked tooth. Clinical impression is that tooth is restorable. #29 D caries lesion. 
<br>On exam of the right lower quadrant, tooth #30 was sensitive to percussion (lingering for 45 seconds) and to cold (sharp, stops when cold removed). No sensitivity to palpation, pain upon biting with relief upon opening. No evidence of new caries on distal; missing #28, replaced with endosteal (root form) implant with full crown tooth-colored restoration;#32 impacted with possible full boney impaction. One cm swelling present on buccal free-gingiva around #29 and #30 with sinus tract present #30B. Periodontal pocket depth WNL.
</th>
  </tr>
</thead>
</table>

The following data table maps the FHIR resources to CDA sections and entries, and to data values for Scenario 3.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px; overflow:hidden;padding:0px 3px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px; font-weight:normal;overflow:hidden;padding:0px 3px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
 <tr>
 <th title="Field #1">FHIR Resource/Profile</th>
 <th title="Field #2">FHIR Data Element</th>
 <th title="Field #3">CDA Section</th>
 <th title="Field #4">CDA Entry</th>
 <th title="Field #5">Data Values</th>
 </tr>
</thead>
<tbody>
 <tr>
 <td>AllergyIntollerance</td>
 <td>AllergyIntollerance.code</td>
 <td>Allergies and Intolerances Section (entries required) (V3)</td>
 <td>Allergy Concern Act (V3)/ 
<br>Allergy - Intolerance Observation (V2)</td>
 <td>7980 Penicillin G (Ingredient) RxNorm</td>
 </tr>
 <tr>
 <td>Chief Complaint</td>
 <td></td>
 <td>Chief Complaint Section</td>
 <td>N/A</td>
 <td>"Pain in lower right Quadrant"</td>
 </tr>
 <tr>
 <td>Composition</td>
 <td>Composition.section.title = "Assessment Section"</td>
 <td>Assessment Section</td>
 <td>N/A</td>
 <td>#30 pulpal necrosis and perioapical pathosis with draining fistula. Clinical impression is that possible vital pulp remnants remain. 
<br>#30 possible cracked DB cusp; rule out cracked tooth. Clinical impression is that tooth is restorable. #29 D caries lesion. 
<br>On exam of the right lower quadrant, tooth #30 was sensitive to percussion (lingering for 45 seconds) and to cold (sharp, stops when cold removed). No sensitivity to palpation, pain upon biting with relief upon opening. No evidence of new caries on distal; missing #28, replaced with endosteal (root form) implant with full crown tooth-colored restoration; #32 impacted with possible full boney impaction. One cm swelling present on buccal free-gingival around #29 and #30with sinus tract present #30B. Periodontal pocket depth WNL.</td>
 </tr>
 <tr>
 <td>Composition</td>
 <td>Composition.section.title = "History of Present Illness Section"</td>
 <td>History of Present Illness Section</td>
 <td>N/A</td>
 <td>One month ago, pt. reports he had a MOBD amalgam restoration (D2161 #30 MOBD) placed in his right lower first molar (tooth #30) for a fractured tooth - MB cusp lost due to undermining by caries lesion (ADA Caries Classification System advanced caries lesion). 
<br>Patient A said the pain started 2 weeks ago and has progressively worsened. He noticed sharp, stabbing pain provoked by drinking cold beverages in the past week and lingering pain with biting in the last 2 days. He is able to eat regular food but only chews on the left side. He takes 400 mg ibuprofen every 8 hours for pain. His last doses was 2 hours prior to this visit.</td>
 </tr>
 <tr>
 <td>Condition*</td>
 <td>Condition.code 
<br>Condition.body 
<br>SiteCondition.verification 
<br>StatusCondition.category</td>
 <td>Problem Section (entries required) V3</td>
 <td>Problem Concern Act (V3) / Problem Observation (V3)</td>
 <td>Value: 38341003 Hypertensive disorder (disorder) SNOMED CT 
<br>   Translation: 175027D Hypertensive disorder (disorder) SNODENT 
<br>Value: 46635009 Type 1 diabetes SNOMED CT 
<br>   Translation: 175321D Type 1 diabetes SNODENT</td>
 </tr>
 <tr>
 <td>Coverage</td>
 <td>Coverage.status 
<br>Coverage.payor</td>
 <td>Payers Section (V3)</td>
 <td>N/A</td>
 <td>Aetna Comprehensive Medical /Dental Insurance</td>
 </tr>
 <tr>
 <td>Encounter</td>
 <td>Encounter.status 
<br>Encounter.period</td>
 <td>US Realm Header</td>
 <td>componentOf/encompassingEncounter</td>
 <td>Performed Mar 20, 2020 9am EST 
<br>CDT D0140 limited oral evaluation - new or established patient</td>
 </tr>
 <tr>
 <td>MedicationRequest &amp; Medication </td>
 <td>Medication.code 
<br>MedicationRequest.dosageInstruction</td>
 <td>Medications Section (entries required) (V2)</td>
 <td>Medication Activity (V2) / Medication Information (V2)</td>
 <td>314076 Lisinopril 10 mg Oral Tablet RxNorm 
<br>197650 erythromycin 500 MG Oral Tablet RxNorm 
<br>310965 ibuprofen 200 MG Oral Tablet RxNorm 
<br>313782 acetaminophen 325 MG Oral Tablet RxNorm</td>
 </tr>
 <tr>
 <td>Observation* (Dental Findings profile)</td>
 <td>Observation.code 
<br>Observation.value</td>
 <td>Dental Findings Section</td>
 <td>Result Organizer (V3) / Result Observation (V3)</td>
 <td>Code: 18782-3 Radiology Study Observation LOINC 
<br>Value: "Radiographic results showed #32 full bony impaction,#28 endosteal (root form) implant with full crown restoration, and tooth #30 withsmall PA lesion mesial root. Radiographic caries lesion #29 distal caries lesion(ADA Caries Classification System moderate caries lesion). Other WNL"</td>
 </tr>
 <tr>
 <td>Observation* (Dental Findings profile)</td>
 <td>Observation.code 
<br>Observation.value</td>
 <td>Dental Findings Section</td>
 <td>Problem Observation (V3)</td>
 <td>Tooth 30: 
<br>targetSiteCode: 28480000 Permanent lower right first molar tooth SNOMED CT 
<br>   Translation: 160770D Permanent lower right first molar tooth SNODENT 
<br>Code : 109591005 Tooth tender to percussion SNOMED CT 
<br>   Translation: 128058D Tooth tender to percussion SNODENT 
<br>Code: 109594002 Tooth sensitivity to cold SNOMED CT 
<br>   Translation: 108969D Tooth sensitivity to cold SNODENT 
<br>Code: 109596000 Tooth sensitivity to pressure SNOMED CT 
<br>   Translation: 106172D Tooth sensitivity to pressure SNODENT 
<br>Tooth #28: 
<br>targetSiteCode: 80140008 Permanent lower right first premolar tooth SNOMED CT 
<br>   Translation: 161496DPermanent lower right first premolar tooth SNODENT 
<br>Code: 278552004 Dental crown present SNOMED CT 
<br>   Translation: 178492D Dental crown present SNODENT 
<br>Tooth #32: 
<br>targetSiteCode: 38994002Permanent lower right third molar tooth SNOMED CT 
<br>   Translation: 161121D Permanent lower right third molar tooth SNODENT 
<br>Code: 109511009 Completely impacted tooth in bone SNOMED CT 
<br>   Translation: 212078D Completely impacted tooth in bone SNODENT 
<br>Buccal Gingiva: 
<br>targetSiteCode: 16811007Buccal mucosa SNOMED CT 
<br>   Translation: 109364D Buccal mucosa SNODENT 
<br>Code: 722192005 Localized swelling SNOMED CT 
<br>   Translation: 212078D Localized swelling SNODENT</td>
 </tr>
 <tr>
 <td>Patient</td>
 <td><a href="http://patient.name/">Patient.name</a> 
<br>Patient MRN (identifier) 
<br>Patient.address 
<br>Patient.telecom 
<br>Patient.birthDate 
<br>Patient.gender<a href="http://patient.us/">Patient.us</a>-core-ethnicity(extension) 
<br><a href="http://patient.us/">Patient.us</a>-core-race (extension)</td>
 <td>US Realm Header</td>
 <td>recordTarget/patientRole</td>
 <td>Patient A 
<br>MRN: 2020515 
<br>123 Test. Dr. Denver CO 80204 
<br>phone: (123)456-7890 
<br>email: <a href="mailto:testA@email.com">testA@email.com</a> 
<br>01-01-1990 
<br>Male 
<br>Not Hispanic or Latino 
<br>White</td>
 </tr>
 <tr>
 <td>Procedure* </td>
 <td>Procedure.code 
<br>Procedure.outcome</td>
 <td>Procedures Section (entries optional) (V2)</td>
 <td>Procedure Activity Observation (V2)</td>
 <td>Code : D0220 Intraoral - periapical first radiographic image CDT 
<br>targetSiteCode: 8873007 Permanent lower right second premolar tooth SNOMED CT 
<br>   Translation: 161412DPermanent lower right second premolar tooth SNODENT 
<br>Code : D0230 Intraoral - periapical each additional radiographic image CDT 
<br>targetSiteCode: 28480000 Permanent lower right first molar tooth SNOMED CT 
<br>   Translation: 160770D Permanent lower right first molar tooth SNODENT 
<br>Code : D0460 Pulp vitality test CDT 
<br>targetSiteCode: 28480000 Permanent lower right first molar tooth SNOMED CT 
<br>   Translation: 160770D Permanent lower right first molar tooth SNODENT</td>
 </tr>
 <tr>
 <td>Referral Note (<a href="https://build.fhir.org/ig/HL7/ccda-on-fhir-r4/">CCDAonFHIR</a>) Reason for Referral</td>
 <td>Composition.section.code[43241-9].text 
<br>Composition.section.code[43241-9].entry</td>
 <td>Reason for Referral Section (V3)</td>
 <td>N/A</td>
 <td>"Referral to endodontist for evaluation of #30 and endodontic therapy. (D3330) 
<br>Suspect irreversible pulpitis with necrotic pulp and periapical pathosis. Tooth is restorable despite possible incomplete fracture DB cusp #30."</td>
 </tr>
 <tr>
 <td>Referring Organization</td>
 <td>Organization.identifier:NPI 
<br>Organization.active 
<br><a href="http://organization.name/">Organization.name</a></td>
 <td>US Realm Header</td>
 <td>custodian/ assignedCustodian/ representedCustodianOrganization</td>
 <td>Name = Good Oral Health Clinic 
<br>NPI = 1316452726 
<br>Address = 54321 Main Street, Fairfax, VA, 22031</td>
 </tr>
 <tr>
 <td>Referring Practitioner</td>
 <td>Practitioner.identifier:NPI 
<br><a href="http://practitioner.name/">Practitioner.name</a> 
<br>Practitioner Organization</td>
 <td>US Realm Header</td>
 <td>author/assignedAuthor</td>
 <td>NPI = 1034567384 
<br>Name = Dr. Drew Dentist 
<br>Org = Good Oral Health Clinic</td>
 </tr>
 <tr>
 <td>Referring PractitionerRole</td>
 <td>PractitionerRole.organization 
<br>PractitionerRole.code</td>
 <td>US Realm Header</td>
 <td>author/assignedAuthor/code</td>
 <td>Healthcare Provider Taxonomy (HIPAA) 
<br>122300000X Dental Providers; Dentist</td>
 </tr>
 <tr>
 <td>ServiceRequest*</td>
 <td>ServiceRequest.priority 
<br>ServiceRequest.reasonCode  
<br>ServiceRequest.occurence </td>
 <td>Plan of Treatment Section V2</td>
 <td>Planned Encounter V2</td>
 <td>D3330 endodontic therapy, molar tooth CDT</td>
 </tr>
 <tr>
 <td>Vital Signs Observation</td>
 <td>Observation.component.value</td>
 <td>Vital Signs Section (entries required) (V3)</td>
 <td>Vital Signs Organizer (V3) /Vital Sign Observation (V2)</td>
 <td>Temp: 99 deg 
<br>FBP 130/86 
<br>Pulse 92 bpm</td>
 </tr>
</tbody>
</table>

#### Scenario 4 Dental (Endodontist) to Dental (General Dentist) Consult Note
Patient A was experiencing pain that started two weeks ago and has progressively worsened. He noticed sharp, stabbing pain provoked by drinking cold beverages in the past week and lingering pain with biting in the last 2 days. He is able to eat regular food but only chews on the left side. He takes 400 mg ibuprofen every 8 hours for pain, and his last dose was 2 hours prior to this visit. He visited his general dentist and was referred to Endodontist.

Previous medical and dental history verified by Endodontist: One month ago, patient reports he had a MOBD amalgam restoration (D2161 #30 MOBD) placed in his right lower first molar (tooth #30) for a fractured tooth - MB cusp lost due to undermining by caries lesion (ADA Caries Classification System advanced caries lesion). Previous Medical History and Allergies from referring dentist: 
* Medical History: Patient A has a history of hypertension and is taking Lisinopril 10 mg tablet once daily. Patient is also on erythromycin 500 mg every six hours for the infection and taking ibuprofen and acetaminophen as needed for pain. 
* Allergies: Patient is allergic to penicillin.

Endodontist also verifies intraoral and paraoral findings from referring Dentist. At the end of the visit, a Dental Consultation Note is generated including medications prescribed, diagnosis, prognosis, treatment notes, images, and follow up recommendations and sent from the Endodontist to the General Dentist.

Capability Statement References: Dental specialist office system is the Document Source (ie server) that generates the Dental Consult Note and the general Dental office application is the Document Consumer (ie client) that consumes the Dental Consult Note

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px; overflow:hidden;padding:0px 3px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px; font-weight:normal;overflow:hidden;padding:0px 3px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0lax">Verified suspected irreversible pulpitis #30 with necrotic pulp with PAP mesial root accompanied by draining sinus tract on B. No vertical fracture of root apparent during endodontic therapy.</th>
  </tr>
</thead>
</table>

The following data table maps the FHIR resources to CDA sections and entries, and to data values for Scenario 4.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px; overflow:hidden;padding:0px 3px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px; font-weight:normal;overflow:hidden;padding:0px 3px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
 <tr>
 <th title="Field #1">FHIR Resource/Profile</th>
 <th title="Field #2">FHIR Data Element</th>
 <th title="Field #3">CDA Section</th>
 <th title="Field #4">CDA Entry</th>
 <th title="Field #5">Data Values</th>
 </tr>
</thead>
<tbody>
 <tr>
 <td>AllergyIntollerance</td>
 <td>AllergyIntollerance.code</td>
 <td>Allergies and Intolerances Section (entries required) (V3)</td>
 <td>Allergy Concern Act (V3) / Allergy - Intolerance Observation (V2)</td>
 <td>7980 Penicillin G (Ingredient) RxNorm</td>
 </tr>
 <tr>
 <td>Composition</td>
 <td>Composition.section.title = "Assessment Section"</td>
 <td>Assessment Section</td>
 <td>N/A</td>
 <td>Verified suspected irreversible pulpitis #30 with necrotic pulp with PAP mesial root accompanied by draining sinus tract on B. No vertical fracture of root apparent during endodontic therapy.</td>
 </tr>
 <tr>
 <td>Composition</td>
 <td>Composition.section.title = "History of Present Illness Section"</td>
 <td>History of Present Illness Section</td>
 <td>N/A</td>
 <td>Patient A said the pain started 2 weeks ago and has progressively worsened. He noticed sharp, stabbing pain provoked by drinking cold beverages in the past week and lingering pain with biting in the last 2 days. He is able to eat regular food but only chews on the left side. He takes 400 mg ibuprofen every 8 hours for pain. His last doses was 2 hours prior to this visit. He visited his general dentist and was referred to Endodontist.</td>
 </tr>
 <tr>
 <td>Condition</td>
 <td>Condition.verficiationStatus 
<br>Condition.category 
<br>Condition.code</td>
 <td>Problem Section (entries required) V3</td>
 <td>Problem Concern Act (V3) /Problem Observation (V3)</td>
 <td>Code : 109600005 Irreversible pulpitis (disorder) SNOMED CT 
<br>   Translation: 125784D Irreversible pulpitis (disorder) SNODENT 
<br>targetSiteCode: 28480000 Permanent lower right first molar tooth SNOMED CT 
<br>   Translation: 160770D Permanent lower right first molar tooth SNODENT</td>
 </tr>
 <tr>
 <td>Encounter</td>
 <td>Encounter.status 
<br>Encounter.period</td>
 <td>US Realm Header</td>
 <td>componentOf/encompassingEncounter</td>
 <td>Performed Mar 22, 2020 9am EST 
<br>CDT D3330 - endodontic therapy, molar tooth (excluding final restoration)</td>
 </tr>
 <tr>
 <td>MedicationRequest &amp; Medication </td>
 <td>Medication.code 
<br>MedicationRequest.dosageInstruction</td>
 <td>Medications Section (entries required) (V2)</td>
 <td>Medication Activity (V2) / Medication Information (V2)</td>
 <td>993836 Acetaminophen 300 MG / Codeine Phosphate 30 MG [Tylenol with Codeine] RxNorm</td>
 </tr>
 <tr>
 <td>Observation* (Dental Findings profile)</td>
 <td>Observation.code 
<br>Observation.value</td>
 <td>Dental Findings Section</td>
 <td>N/A</td>
 <td>Performed transillumination and dye tests (blue dye) within pulp chamber during endodontic therapy and saw no evidence of cracks. Exposed one diagnostic periapical radiograph and confirmed radiographic findings above.</td>
 </tr>
 <tr>
 <td>Procedure</td>
 <td>Procedure.code 
<br>Procedure.outcome</td>
 <td>Procedures Section (entries optional) (V2)</td>
 <td>Procedure Activity Observation (V2)</td>
 <td>CDT D3330 endodontic therapy, molar tooth (excluding final restoration)</td>
 </tr>
 <tr>
 <td>Prognosis</td>
 <td></td>
 <td>Problem Section (entries required) V3</td>
 <td>Problem Concern Act (V3) / Problem Observation (V3) / Prognosis Observation</td>
 <td>Good. Recommend restoration with full crown.</td>
 </tr>
 <tr>
 <td>Reason for Referral</td>
 <td>Encounter.reasonReference 
<br>Encounter.priority</td>
 <td>Reason for Visit Section</td>
 <td></td>
 <td>Referral for pain lower RQ, points to #30. Evaluation of #30 and endodontic therapy.</td>
 </tr>
 <tr>
 <td>ServiceRequest*</td>
 <td>ServiceRequest.category 
<br>ServiceRequest.code</td>
 <td>Plan of Treatment Section V2</td>
 <td></td>
 <td>Puff of sealer noted around M root; monitor for the next year, and, if sealer does not resorb, consider apicoectomy.</td>
 </tr>
</tbody>
</table>


[Next Page - Specification](specification.html)