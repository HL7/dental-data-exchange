[Previous Page - Scenario 1 Medical to Dental Referral](scenario_1_medical_to_dental_referral.html)

John Doe is a 21-year-old white male with mild hypertension who is a full time Analyst, recently graduated from college. He sees dentist Dr. Johnson on May 12th for an urgent evaluation based on a referral from Dr. Smith, his primary care physician. The receptionist at the Dentist office checks John in; he is a new patient, so she creates a new patient record in the system. She verifies his demographics and insurance information from the electronic referral received from Dr. Smith.
The dental hygienist calls John into the room; verifies his identity, obtains his medical/social history, reviews current medications and allergies from the referral note, and confirms reason for visit.
Dr. Johnson meets John in the room; reviews the risk assessment (risk assessment details, caries risk- general or perio), reviews the referral note from Dr. Smith, and reviews the rest of the information that was pre-populated in their internal dental EHR. Dr. Johnson then performs an oral evaluation and two PA radiographs. He identifies two areas of concern: patient has a significant, non-restorable caries lesion (decay) on the left lower back molar (tooth #18) with signs of infection. John also has early signs of decay on the right upper incisor (tooth #7) (Conditions). 
After Dr. Johnson describes these findings to John, John also reports inability to chew on left side due to pain and sensitivity, a condition that has increased in severity in the two days since his medical appointment.
Dr. Johnson recommends an extraction of the left lower molar (tooth #18) and restoration of the right upper lateral incisor (tooth #7) due to a caries lesion (decay). Dr. Johnson educates John on the benefits of complete examination, the importance of using a fluoride toothpaste when brushing twice daily with daily flossing, and of the need for bi-annual dental visits for examination and prophylaxis (cleaning). John agrees and Dr. Johnson mentions the receptionist will book a future appointment for the urgent, follow-up procedures. 
Before John leaves, the receptionist schedules an appointment for the extraction of tooth #18 on May 19th (one week after first visit), another appointment for restoration of tooth #7 on May 26th (one week after extraction), and schedules a follow-up appointment for a complete examination, including radiographs and prophylaxis on June 4th (one week after restoration of tooth #7). 
Dr. Johnson reviews John’s current medication list, notes an allergy to penicillin that is a counter-indication for his typical recommendation of amoxicillin, prescribes erythromycin 500 mg every six hours for the infection and recommends alternating over-the-counter ibuprofen and acetaminophen for pain. Also, he generates a Dental Referral Treatment Report back to Dr. Smith with a summary of John’s visit including the new prescription, planned procedures and future appointment dates.


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0pky">   <br>Data Category   </th>
    <th class="tg-0pky">   <br>CDA Section   </th>
    <th class="tg-0pky">   <br>CDA Entry   </th>
    <th class="tg-0pky">   <br>Data Values   </th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Allergies and Intolerances   Section (entries required) (V3)   </td>
    <td class="tg-0pky">   <br>Allergy Concern Act (V3)/Allergy   - Intolerance Observation (V2)   </td>
    <td class="tg-0pky">   <br>7980 Penicillin G   (Ingredient) RxNorm   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Dental Findings Section*   </td>
    <td class="tg-0pky">   <br>Problem Observation (V3)   </td>
    <td class="tg-0pky">   <br>Value: 80967001 Dental caries   SNOMED CT<br>   Translation: 118065D Dental caries SNODENT<br>   targetSiteCode: 48402004 Structure of mandibular left second molar tooth   SNOMED CT<br>   Translation: 161372D Structure of mandibular left second molar tooth SNODENT<br>   Value: 427898007 Infection of tooth SNOMED CT<br>   Translation: 181608D Infection of tooth SNODENT<br>   targetSiteCode: 48402004 Structure of mandibular left second molar tooth   SNOMED CT<br>   Translation: 161372D Structure of mandibular left second molar tooth SNODENT<br>   Value: 80967001 Dental caries SNOMED CT<br>   Translation: 118065D Dental caries SNODENT<br>   targetSiteCode: 245574002 Entire permanent maxillary right lateral incisor   tooth SNOMED CT<br>   Translation: 161941D Entire permanent maxillary right lateral incisor tooth   SNODENT   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Dental Findings Section   </td>
    <td class="tg-0pky">   <br>Result Organizer (V3) / Result   Observation (V3)   </td>
    <td class="tg-0pky">   <br>Code: 32916-9 Horizontal   overlap [Length] Maxilla and Mandible Measured LOINC<br>   Value = 3<br>   Units = mm   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Problem Section (entries   required) V3   </td>
    <td class="tg-0pky">   <br>Problem Observation (V3)   </td>
    <td class="tg-0pky">   <br>Value: 38341003 Hypertensive   disorder (disorder) SNOMED CT<br>   <br>Translation: 175027D   Hypertensive disorder (disorder) SNODENT<br>   <br>Value: 46635009 Type 1 diabetes   SNOMED CT<br>   <br>Translation: 175321D Type 1   diabetes SNODENT<br>   <br>Value: 80967001 Dental caries   (disorder) SNOMED CT<br>   <br>Translation: 118065D Dental   caries (disorder) SNODENT<br>   <br>Value: 288920002 Unable to chew   (finding) SNOMED CT<br>   <br>Translation: 126488D Unable to   chew (finding) SNODENT<br>   <br>Value: 276453000 Teeth covered   in plaque (finding) SNOMED CT<br>   <br>Translation: 108723D Teeth   covered in plaque (finding) SNODENT<br>   <br>Value: 27355003 Toothache   (finding) SNOMED CT<br>   <br>Translation: 108723D Toothache   (finding) SNODENT<br>   <br>Value: Chronic periodontitis   (disorder) SNOMED CT<br>   <br>Translation: 116957D Chronic   periodontitis (disorder) SNODENT<br>   <br>Value: 427898007 Infection of   tooth SNOMED CT<br>   <br>Translation: 181608D Infection   of tooth SNODENT<br>   <br>Value: 609402003 At high risk   for dental caries (finding) SNOMED CT<br>   <br>Translation: 179051D At high   risk for dental caries (finding) SNODENT   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Assessment Section (V2)   </td>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Patient reports inability to   chew on left side due to pain and sensitivity, a condition that has increased   in severity in the two days since his medical appointment <br>   Significant decay on the left lower second molar (tooth #18)  with signs of infection <br>   Early signs of a caries lesion (decay) on the right upper lateral incisor   (tooth #7) <br>   Recommend an extraction of the left lower second molar (tooth #18)  and a restoration on the right upper   lateral incisor (tooth #7) due to a caries lesion   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Instructions Section (V2)   </td>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Patient A educated on the   benefits of using a fluoride toothpaste, daily flossing, and bi-annual   routine dental cleaning visits.   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Payers Section (V3)   </td>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Aetna Comprehensive   Medical/Dental Insurance   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>Consultation Visit Information   </td>
    <td class="tg-0pky">   <br>US Realm Header   </td>
    <td class="tg-0pky">   <br>componentOf/encompassingEncounter   </td>
    <td class="tg-0pky">   <br>Performed Feb 16, 2020 11am EST<br>   CDT D0140 limited oral evaluation - new or established patient   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Plan of Treatment Section V2   </td>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Planned Visits:<br>   Visit 1 - Feb 23, 2020<br>   CDT D7140 Extraction, erupted tooth or exposed root (elevation and/or forceps   removal)<br>   Tooth #18 <br>   Visit 2 - March 3, 2020<br>   CDT D1352 Preventive resin restoration in a moderate to high caries risk   patient-permanent tooth.<br>   Tooth #7<br>   Visit 3 - March 10, 2020<br>   CDT D0150 comprehensive oral evaluation - new or established patient<br>   CDT D1110 prophylaxis - adult<br>   CDT D0210 Full Mouth Radiographic Survey   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>History of Present Illness   Section   </td>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>The patient has not visited a   dentist or received fluoride treatments in the past four years while away at   college   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Medications   Section (entries required) (V2)**   </td>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>314076 Lisinopril 10 mg Oral   Tablet RxNorm<br>   197650 Erythromycin 500 MG Oral Tablet RxNorm<br>   310965 Ibuprofen 200 MG Oral Tablet RxNorm<br>   313782 Acetaminophen 325 MG Oral Tablet RxNorm   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>Author Organization   </td>
    <td class="tg-0pky">   <br>US Realm Header   </td>
    <td class="tg-0pky">   <br>custodian/assignedCustodian/representedCustodianOrganization   </td>
    <td class="tg-0pky">   <br>Name = Good Oral Health Clinic<br>   NPI = 1316452726<br>   Address = 54321 Main Street, Fairfax, VA, 22031   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>Patient Demographics   </td>
    <td class="tg-0pky">   <br>US Realm Header   </td>
    <td class="tg-0pky">   <br>recordTarget/patientRole   </td>
    <td class="tg-0pky">   <br>Patient A<br>   MRN: 2020515<br>   123 Test. Dr. Denver CO 80204<br>   phone: (123)456-7890<br>   email: <a href="mailto:&#116;&#x65;&#115;&#116;&#65;&#64;&#101;&#x6d;&#97;&#x69;&#108;&#46;&#x63;&#x6f;&#x6d;"><span style="color:#905">testA@email.com</span></a><br>   01-01-1990<br>   Male<br>   Not Hispanic or Latino<br>   White   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>Authoring Provider   </td>
    <td class="tg-0pky">   <br>US Realm Header   </td>
    <td class="tg-0pky">   <br>author/assignedAuthor   </td>
    <td class="tg-0pky">   <br>NPI = 1034567384<br>   Name = Dr. Drew Dentist<br>   Org = Good Oral Health Clinic   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>Authoring Provider Type   </td>
    <td class="tg-0pky">   <br>US Realm Header   </td>
    <td class="tg-0pky">   <br>author/assignedAuthor/code   </td>
    <td class="tg-0pky">   <br>Healthcare Provider Taxonomy   (HIPAA)<br>   122300000X Dental Providers; Dentist<br>   Provider Role (HL7)<br>   RT - Referred to Provider   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Procedures Section (entries   optional) (v2)   </td>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>CDT D1206 topical application of   fluoride varnish   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Reason for Visit Section   </td>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Patient referred for evaluation   and treatment for toothache lower left   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Problem Section (entries   required) V3   </td>
    <td class="tg-0pky">   <br>Problem Observation (V3)   </td>
    <td class="tg-0pky">   <br>Value: 609402003 At high   risk for dental caries (finding) SNOMED CT<br>   Translation: 179051D At high risk for dental caries (finding) SNODENT   </td>
  </tr>
  <tr>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Vital Signs Section (entries   required) (V3)   </td>
    <td class="tg-0pky">   <br>    </td>
    <td class="tg-0pky">   <br>Temp:  99 degF<br>   Pulse: 82 bpm<br>   BP: 120/80   </td>
  </tr>
</tbody>
</table>

[Next Page - Scenario 3 Dental to Dental (Endodontist) Referral](scenario_3_dental_to_dental_endodontist_referral.html)