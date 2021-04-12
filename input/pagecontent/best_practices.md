[Previous Page - Specification](specification.html)

In addition to noting net new dental data concepts within this implementation guide, the work group believed it is beneficial to include best practices for the dental data concepts that are not implementable yet. This is to better prepare for dental data exchange concepts that will continue to enhance the current state of data exchange while utilizing the concepts that are already modeled. Best practices noted below include the proper use of the new dental sections, incorporating multiple dental codes, and attaching additional unstructured information pertinent to the patient’s dental record.

### Populating Bi-directional Medical/Dental and Dental/Dental Exchanges

This IG makes a distinction between medical problems and dental problems. 

**Dental Providers:** In an effort to avoid clutter of the medical problem list, a Dental Condition profile has been defined for all dental-specific diagnoses. Dentists are expected to consider which, if any, dental problems warrant consideration by Medical clinicians and therefore should be found on the patient’s medical problem list. Dental EHR system implementers are expected to make this choice apparent to Dentists/users through a user interface experience, capture their Dentists/users decision for each diagnoses (i.e., medical condition or dental condition), and to map each diagnosis to the appropriate profile: 
* Diagnoses that would only be considered, tracked, and treated by Dentists should conform to the Dental Condition profile
* Diagnoses that are deemed by Dentists to warrant consideration, tracking, and possible treatment by Medical professionals should conform to the US-Core Condition profile.

All Conditions/Problems text associated with both Medical and Dental Conditions should be found under the Problems Section of Dental Consult and Dental Referral FHIR Documents. 

Similarly, for Dental observations and findings, dental-specific measurements should be shared and conform to the Dental Findings profile, which is found in the Dental Findings Section of Dental Referral and Dental Consult Notes.  All other non-dental-specific findings/measurements and observations should conform to the appropriate profile, such as US Core Vitals Observation profile, or PastOrPresentJob Observation profile. If there is no appropriate Observation profile for the nature of the observation, then the base FHIR R4 Observation resource should be used.

* Medical to Dental Referral Note: When a medical provider is referring a patient to a primary dentist for follow up or an initial exam, including oral exam findings in the assessment section along with any plans for treatment (e.g., fluoride drops, antibiotic treatments for oral infections) and education provided (e.g., regular flossing) information around patient’s oral health.  Also, in the referral, include information on current problems, allergies, recent surgical procedures, implantable devices that would impact the patient’s care.  

* Dental to Dental Referral Note:  In the case of a referral between a primary dentist and a specialty dentist, include the Dental Findings sections and any procedures completed along with any treatment plans.  

* Dental to Medical Consult Note: In sending dental information back to the medical provider in a consult, include any additional medications provided to the patient, diagnoses made, procedures completed, and treatment and follow up plan you created with the patient.  

* Dental to Dental Consult Note:  In sending dental information back to primary dentist include details on the exam conducted, findings and any treatment or therapies performed. Include any additional medications provided to the patient, diagnoses made, procedures completed, and treatment and follow up plan you created with the patient.  

### Proper Use of the Dental Findings Section

The Dental Findings resource conveys clinically significant observations confirmed or discovered during a dental visit. It reuses data structures commonly found in the Condition resource and the Observation resource, and the implementer may choose how to select which data belong in Dental Findings versus the other resources referenced.

The HL7 community recommends the following practices:
* Keep dental findings that a medical provider would consider clutter in Dental Findings, and not in the Condition resource. (e.g., Active Caries on Tooth #3)
* Keep dental measurements that a medical provider would consider clutter in Dental Findings, and not in the Observation  resource. (e.g., Overjet of 3mm)

We recommend using Reason for Referral value sets in conjunction with a Dental Findings resource. The table below is a sample of matched SNODENT and SNOMED codes that describe reasons for referral.
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:1;}
.tg td{border-color:black;border-style:solid;border-width:1px; overflow:hidden;padding:1px 1px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px; font-weight:normal;overflow:hidden;padding:1px 1px;word-break:normal;}
.tg .tg-1wig{font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-1wig">Reason for Referral</th>
    <th class="tg-1wig">SNODENT ID</th>
    <th class="tg-1wig">SNOMED ID</th>
    <th class="tg-1wig">Description</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">Abscess</td>
    <td class="tg-0lax">123286D</td>
    <td class="tg-0lax">128477000</td>
    <td class="tg-0lax">Abscess</td>
  </tr>
  <tr>
    <td class="tg-0lax">Accretions on teeth (deposits)</td>
    <td class="tg-0lax">127701D</td>
    <td class="tg-0lax">6288001</td>
    <td class="tg-0lax">Accretions on teeth</td>
  </tr>
  <tr>
    <td class="tg-0lax">Bleeding gums</td>
    <td class="tg-0lax">142683D</td>
    <td class="tg-0lax">86276007</td>
    <td class="tg-0lax">Bleeding gums</td>
  </tr>
  <tr>
    <td class="tg-0lax">Dental clearance prior to transplant, surgery, or other treatment cancer</td>
    <td class="tg-0lax">146328D</td>
    <td class="tg-0lax">110475006</td>
    <td class="tg-0lax">Compliance with suggested dental care</td>
  </tr>
  <tr>
    <td class="tg-0lax">Dental decay (dental caries disease)</td>
    <td class="tg-0lax">118065D</td>
    <td class="tg-0lax">80967001</td>
    <td class="tg-0lax">Dental caries</td>
  </tr>
  <tr>
    <td class="tg-0lax">Diabetes</td>
    <td class="tg-0lax">133643D</td>
    <td class="tg-0lax">73211009</td>
    <td class="tg-0lax">Diabetes mellitus</td>
  </tr>
  <tr>
    <td class="tg-0lax">Disturbances intooth eruption</td>
    <td class="tg-0lax">144684D</td>
    <td class="tg-0lax">234972003</td>
    <td class="tg-0lax">Disturbance of tooth eruption or exfoliation</td>
  </tr>
  <tr>
    <td class="tg-0lax">Dry mouth</td>
    <td class="tg-0lax">138508D</td>
    <td class="tg-0lax">87715008</td>
    <td class="tg-0lax">Xerostomia</td>
  </tr>
  <tr>
    <td class="tg-0lax">Erosion of teethdue to persistent vomiting</td>
    <td class="tg-0lax">104212D</td>
    <td class="tg-0lax">52031007</td>
    <td class="tg-0lax">Erosion of teethdue to persistent vomiting</td>
  </tr>
  <tr>
    <td class="tg-0lax">Evaluate a swelling or other lesion, including infection and rule out oral cancer</td>
    <td class="tg-0lax">128015D</td>
    <td class="tg-0lax">65124004</td>
    <td class="tg-0lax">Swelling</td>
  </tr>
  <tr>
    <td class="tg-0lax">Infection</td>
    <td class="tg-0lax">138169D</td>
    <td class="tg-0lax">40733004</td>
    <td class="tg-0lax">Disorder due to infection</td>
  </tr>
  <tr>
    <td class="tg-0lax">Lack of oral hygiene, including build-up of deposits on teeth</td>
    <td class="tg-0lax">140234D</td>
    <td class="tg-0lax">110299009</td>
    <td class="tg-0lax">Poor oral hygiene</td>
  </tr>
  <tr>
    <td class="tg-0lax">Lack of recent dental care</td>
    <td class="tg-0lax">212130D</td>
    <td class="tg-0lax">413313008</td>
    <td class="tg-0lax">Did not attend dentist in last 12 - 18 months (finding)</td>
  </tr>
  <tr>
    <td class="tg-0lax">Malocclusion</td>
    <td class="tg-0lax">150365D</td>
    <td class="tg-0lax">47944004</td>
    <td class="tg-0lax">Malocclusion of teeth</td>
  </tr>
  <tr>
    <td class="tg-0lax">Oral lesion</td>
    <td class="tg-0lax">180678D</td>
    <td class="tg-0lax">1071000119107</td>
    <td class="tg-0lax">Oral lesion</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient referral for dental care</td>
    <td class="tg-0lax">212150D</td>
    <td class="tg-0lax">103697008</td>
    <td class="tg-0lax">Patient referral for dental care</td>
  </tr>
  <tr>
    <td class="tg-0lax">Pregnancy</td>
    <td class="tg-0lax">174950D</td>
    <td class="tg-0lax">77386006</td>
    <td class="tg-0lax">Pregnant</td>
  </tr>
  <tr>
    <td class="tg-0lax">Sore gums</td>
    <td class="tg-0lax">104458D</td>
    <td class="tg-0lax">11114002</td>
    <td class="tg-0lax">Sore gums</td>
  </tr>
  <tr>
    <td class="tg-0lax">Swollen gums</td>
    <td class="tg-0lax">148393D</td>
    <td class="tg-0lax">309685001</td>
    <td class="tg-0lax">Swollen gums</td>
  </tr>
  <tr>
    <td class="tg-0lax">TMD pain</td>
    <td class="tg-0lax">167337D</td>
    <td class="tg-0lax">298376001</td>
    <td class="tg-0lax">Temporomandibular joint painful on movement</td>
  </tr>
  <tr>
    <td class="tg-0lax">Tooth abnormalities, such as excessive erosion (eating disorder) or excessive wear of teeth</td>
    <td class="tg-0lax">135988D</td>
    <td class="tg-0lax">82212003</td>
    <td class="tg-0lax">Erosion of teeth</td>
  </tr>
  <tr>
    <td class="tg-0lax">Tooth pain</td>
    <td class="tg-0lax">131687D</td>
    <td class="tg-0lax">27355003</td>
    <td class="tg-0lax">Toothache</td>
  </tr>
  <tr>
    <td class="tg-0lax">Trauma</td>
    <td class="tg-0lax">128117D</td>
    <td class="tg-0lax">397869004</td>
    <td class="tg-0lax">Dental trauma</td>
  </tr>
</tbody>
</table>

### Incorporating SNODENT Concepts

Given that most electronic dental record (EDR) systems already support SNODENT, but most EHRs only support SNOMED-CT and ICD-10, the recommended practice is to convey both versions of a concept when possible. Whenever possible, the SNOMED-CT term should be provided as the primary code, with the equivalent SNODENT term included as a translation. Failure to include a SNOMED-CT or ICD-10 coded value may result in inability for a receiving system to meaningfully interpret the information provided. Systems that cannot implement SNOMED-CT transmission or reception will not be able to translate over to US FHIR Core. In representing problems, this implementation guide recommends the use of SNOMED CT and understands that some EDRS may use ICD-10 if SNOMED CT is not available. 

### Planned Procedures and Encounters using CDT and SNODENT

When populating the Service Request, if appropriate, implementers should use CDT terms to describe the planned encounter. The procedure is encouraged to be from LOINC, SNOMED-CT, CPT-4 , or ICD10 PCS, and similarly the encounter is encouraged to be from a value set consisting of SNOMED-CT values. However, in both cases, the conformance statement linking these elements to terminologies only have the strength of **SHOULD**. When referring to dental encounters or procedures in the Service Request, a CDT term would be more appropriate and should be used.  Additionally, if a procedure is planned, implementers should follow the best practice to include a SNODENT concept.

### Dental Images as Results

Dental images such as bitewing x-rays are not expected to be embedded within a Dental Referral composition or Dental Consultation Note composition. The exchange of actual dental images is expected to occur via secure email or some other secure and private exchange pathway in dental referral use cases.  If a narrative describing findings from review of an image is available, it can be conveyed in an Observation resource.  

### Referral Identifiers in the Consult Note

To facilitate correlation between a Dental Consult Note and the original referral that led to the resulting consultation, a globally unique referral identifier will be a reference to the specific ServiceRequest instance that was sent in the referral note; the ServiceRequest instance will be referenced from the OrderExtension (extension) in the Dental Consult Note.

### Periodontal Findings

For inclusion of a detailed periodontal assessment, implementors should rely on the[ Periodontal Attachment Implementation Guide](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=459).

### Including UDI details for Devices and Implants

When device or implant information is included in a dental data exchange document, Unique Device Identifier (UDI) information should also be included about that device or implant if possible. See Scenario 3: Dental to Dental (Endodontist) Referral Note for an example of how this information might be included.

### Content Inclusion

#### Caries Risk Assessment

For most dental practices, dental caries risk assessments are important references for dental providers. They provide additional context for the urgency of a patient’s dental pain/issue. The work group suggests conveying dental caries risk assessments in the US Core Condition Profile or the Dental Condition profile. Below are examples of dental or periodontal risk identification in a dental record:

* Low
* Elevated Risk

#### Patient Self-Management Goals

A Goals Section is represented as a MAY in the referral and consult note, providing specific patient goals separate from instruction. Goals may represent what the patient should do in addition to standard instructions given to the patient. The work group suggests conveying dental goals in the US Core Goal Profile. (The US Core Goal Profile may be found underneath the Plan of Treatment section in a Dental Consult and Dental Referral Notes.) Below are examples of self-management dental goals:

* See dentist/regular dental visits	
* Healthy snacks
* No soda/sugary drinks/energy drinks	
* Brush twice daily
* Less/no junk food/candy	
* Floss daily
* Use fluoride toothpaste	
* Limit caffeine
* Dental treatment for current teeth	
* Tobacco cessation
* Quit/decrease alcohol consumption	
* Seek drug abuse/use treatment



[Next Page - Dental Forms & Resources](dental_forms_resources.html)