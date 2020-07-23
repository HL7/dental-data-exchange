### Overview

The Dental Data Exchange FHIR Implementation Guide provides guidance for using the HL7 Fast Healthcare Interoperability Resources (FHIR) standard as an exchange format for dental-related information exchange. It is a collection of profiled FHIR resources designed for use in information exchanges supporting the document-based information shared during the referral of a patient to a general and/or specialized dental provider. The goal of this project is to streamline and enhance the efficacy of the exchange of health information between health care systems and community services organizations involved in addressing chronic health conditions by establishing information exchange standards for electronic referrals and referral outcome reporting.

At a minimum, a document bundle (CCDAonFHIR Referral Note or Consult Note) will be exchanged along with a ServiceRequest, Patient, and associated medical and dental information. This guide specifies how and where these resources are included within the CCDAonFHIR profiles. 

Four use cases are used in this guide to represent the various referral patterns related to dental data exchange:
1. Medical to Dental practitioner Referral note
2. Dental to Medical practitioner Consult note
3. General Dentist to Endodontist Referral note
4. Endodontist to General Dentist Consult note



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




[Next Page - Dependencies](dependencies.html)