### Overview

Note to balloters: This implementation guide as balloted depends on the current build of  CCDAonFHIR#2.0.0, in it's final form ready for publication, but due to publication timing, CCDAonFHIR#2.0.0 is not yet released. 
A technical correction may be published to correct this dependency subsequently if this proves necessary once  CCDAonFHIR#2.0.0 is published

This implementation guide provides HL7 FHIR resources to define standards for bi-directional information exchange between a medical and a dental provider or between dental providers. This publication provides the data model, defined data items, and their corresponding code and value sets, specific to a dental referral note and dental consultation note. This guide describes constraints on the [C-CDA on FHIR](http://www.hl7.org/fhir/us/ccda/) header and body elements for dental information, which are derived from requirements developed by the Dental Summary Exchange Project of the Health Level Seven (HL7) Payer/Provider Information Exchange Work Group (PIE WG). Resources in this US Realm implementation guide are specific to dental referral and consultation notes for exchange and interoperability among dental providers and with medical providers.

This guide contains a library of FHIR profiles and is compliant with FHIR Release 4. At a minimum, a document bundle (C-CDA on FHIR Referral Note or Consultation Note) will be exchanged along with a ServiceRequest, Patient, and associated medical and dental information. This guide specifies how and where these resources are included within the C-CDA on FHIR profiles. 

This guide defines 5 new Profiles:
* Dental Consult Note
* Dental Communication
* Dental Service Request
* Dental Findings
* Dental Referral Note

All proprietary documents, guides, guidance, standards, codes, and values contained herein remain the property of their respective Standards Developing Organization (SDO). HL7 does not make any claim to ownership herein.

This HL7 FHIR® R4 Implementation Guide: Dental Data Exchange is developed in parallel to the HL7 CDA® R2 Implementation Guide: Dental Data Exchange.



### Authors

<table>
<thead>
<tr>
<th>Name</th>
<th>Email/URL</th>
</tr>
</thead>
<tbody>
<tr>
<td>HL7 International - Payer/Provider Information Exchange Work Group</td>
<td><a href="http://www.hl7.org/Special/committees/claims" target="_new">http://www.hl7.org/Special/committees/claims</a></td>
</tr>
</tbody>
</table>




[Next Page - Scope](scope.html)