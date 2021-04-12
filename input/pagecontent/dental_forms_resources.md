[Previous Page - Best Practices](best_practices.html)

### Imaging Results Example Code

Results Description Value / Unit Interpretation Reference Range   Chest X-RAY 2 views   Performed on 02-25-2015 9:10a   Chest X-Ray 2 Views   The lungs are clear. The heart is enlarged with evidence of cardiomegaly. Pulmonary vasculature is normal. The aorta is mildly ectatic and tortuous. IMPRESSION: Cardiomegaly. No other acute abnormality.   Electronically signed: Hermione Seaven, MD 02-25-2015 10:32a

<section>
  <templateId root="2.16.840.1.113883.10.20.22.2.3.1"/>
  <templateId root="2.16.840.1.113883.10.20.22.2.3.1" extension="2015-08-01"/>
  <!-- Results Section with Coded Entries Required-->
  <code code="30954-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Relevant diagnostic tests and/or laboratory data"/>
  <title>Results</title>
  <text>
    <table border="1">
      <thead>
        <tr>
          <th>Description</th>
          <th>Value / Unit</th>
          <th>Interpretation</th>
          <th>Reference Range</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th colspan="4">Chest X-RAY 2 views</th>
        </tr>
        <tr>
          <th colspan="4">Performed on 02-25-2015 9:10a</th>
        </tr>
        <tr ID="Result1">
          <td>Chest X-Ray 2 Views</td>
          <td ID="Result1OriginalText" >
            The lungs are clear. The heart is enlarged with evidence of cardiomegaly.
            Pulmonary vasculature is normal. The aorta is mildly ectatic and tortuous.
            IMPRESSION: Cardiomegaly. No other acute abnormality. 
          </td>
          <td></td>
          <td></td>
        </tr>
        <tr>
          <th colspan="4">Electronically signed: Hermione Seaven, MD 02-25-2015 10:32a</th>
        </tr>
      </tbody>
    </table>
  </text>
  <entry>
    <organizer classCode="CLUSTER" moodCode="EVN">
      <!-- Selected CLUSTER since not a set of tests -->
      <templateId root="2.16.840.1.113883.10.20.22.4.1"/>
      <templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"/>
      <!-- Results Organizer -->
      <id root="e1aa44dd-6f39-4f5c-b267-897c3821b563"/>
      <code code="71020" displayName="Chest X-Ray 2 Views" codeSystem="2.16.840.1.113883.6.12" codeSystemName="CPT"/>
      <statusCode code="completed"/>
      <!-- an organizer/effectiveTime value="20150225091059-0500" could be used but is not required -->
      <component>
        <observation classCode="OBS" moodCode="EVN">
          <templateId root="2.16.840.1.113883.10.20.22.4.2"/>
          <templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"/>
          <!-- Results Observation -->
          <id root="e1aa44dd-6f39-2f5c-b267-897c3824b563"/>
          <code code="36643-5" displayName="Chest X-ray 2 Views" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC">
            <!-- a translation code may be helpful and used by some EHRs to denote that this is a textual response of result impression -->
          </code>
          <text>
            <reference value="#Result1"/>
          </text>
          <statusCode code="completed"/>
          <!-- This is the timestamp of biologically relevance (i.e. when chest x-ray was performed), aligning with HL7 v3 modeling. -->
          <effectiveTime value="20150225091059-0500"/>
          <value xsi:type="ED">
            <reference value="#Result1OriginalText" />
          </value>
          <author>
            <!-- This is the timestamp of when the author (i.e. the radiologist) interpreted the chest x-ray-->
            <time value="20150225103206-0500"/>
            <assignedAuthor>
              <id extension="66666" root="2.16.840.1.113883.4.6"/>
              <code code="111NR0200X" codeSystem="2.16.840.1.113883.6.101" codeSystemName="NUCC" displayName="Radiology"/>
              <addr>
                <streetAddressLine>6666 StreetName St.</streetAddressLine>
                <city>Silver Spring</city>
                <state>MD</state>
                <postalCode>20901</postalCode>
                <country>US</country>
              </addr>
              <telecom value="tel:+1(301)666-6666" use="WP"/>
              <assignedPerson>
                <name>
                  <given>Hermione</given>
                  <family>Seaven</family>
                  <suffix>MD</suffix>
                </name>
              </assignedPerson>
            </assignedAuthor>
          </author>
        </observation>
      </component>
    </organizer>
  </entry>
</section>

### CareQuest Institute MORE Care Referral Form

<table><tr><td><img src="MORE Care Referral Form.png" /></td></tr></table>

The Medical-Oral Expanded Care (MORE Care) referral forms  are designed to establish a pathway of care communication that streamlines the scheduling process and closes the loop on a referral from a medical provider to dental providers. Above shows the MORE Care Medical Provider Referral for Dental Care, which was designed to facilitate the referral process, by ensuring that the receiving provider was given the essential health information for the referred patient. 

### CareQuest Institute MORE Care Dental Treatment Form

<table><tr><td><img src="MORE Care Treatment Report.png" /></td></tr></table>

In the MORE Care pathway, dentists are asked to acknowledge acceptance of the referral, and following the referral treatment visit, complete the Dental Referral Treatment Report (above) to verify diagnosis, disease risk status, dental treatment summary, and patient recare schedule with the medical care team.

### Value Set Discrepancy Mapping

#### Crosswalk of All Teeth

This table is the crosswalk mapping of all teeth in SNOMED-CT and SNODENT.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-1wig{font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-1wig"><br>SNOMED-CT</th>
    <th class="tg-1wig"><br>SNODENT</th>
    <th class="tg-1wig"><br>DisplayName</th>
    <th class="tg-1wig"><br>Description</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax"><br>68085002</td>
    <td class="tg-0lax"><br>161227D</td>
    <td class="tg-0lax"><br>Permanentupper right third molar tooth</td>
    <td class="tg-0lax"><br>Permanentmaxillary right third molar tooth; Universal designation 1; ISO designation 18</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>7121006</td>
    <td class="tg-0lax"><br>161262D</td>
    <td class="tg-0lax"><br>Permanentupper right second molar tooth</td>
    <td class="tg-0lax"><br>Permanentmaxillary right second molar tooth; Universal designation 2; ISO designation 17</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>5140004</td>
    <td class="tg-0lax"><br>161010D</td>
    <td class="tg-0lax"><br>Permanentupper right first molar tooth</td>
    <td class="tg-0lax"><br>Permanentmaxillary right first molar tooth; Universal designation 3; ISO designation 16</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>36492000</td>
    <td class="tg-0lax"><br>161546D</td>
    <td class="tg-0lax"><br>Permanentupper right second premolar tooth</td>
    <td class="tg-0lax"><br>Permanentmaxillary right second premolar tooth; Universal designation 4; ISO designation15</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>57826002</td>
    <td class="tg-0lax"><br>161607D</td>
    <td class="tg-0lax"><br>Permanentupper right first premolar tooth</td>
    <td class="tg-0lax"><br>Permanentmaxillary right first premolar tooth; Universal designation 5; ISO designation14</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>80647007</td>
    <td class="tg-0lax"><br>160840D</td>
    <td class="tg-0lax"><br>Permanentupper right canine tooth</td>
    <td class="tg-0lax"><br>Permanentmaxillary right canine tooth; Universal designation 6; ISO designation 13</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>11712009</td>
    <td class="tg-0lax"><br>161941D</td>
    <td class="tg-0lax"><br>Permanentupper right lateral incisor tooth</td>
    <td class="tg-0lax"><br>Permanentmaxillary right lateral incisor tooth; Universal designation 7; ISO designation12</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>22120004</td>
    <td class="tg-0lax"><br>160903D</td>
    <td class="tg-0lax"><br>Permanentupper right central incisor tooth</td>
    <td class="tg-0lax"><br>Permanentmaxillary right central incisor tooth; Universal designation 8; ISO designation11</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>31982000</td>
    <td class="tg-0lax"><br>161006D</td>
    <td class="tg-0lax"><br>Permanentupper left central incisor tooth</td>
    <td class="tg-0lax"><br>Permanentmaxillary left central incisor tooth; Universal designation 9; ISO designation21</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>25748002</td>
    <td class="tg-0lax"><br>161109D</td>
    <td class="tg-0lax"><br>Permanentupper left lateral incisor tooth</td>
    <td class="tg-0lax"><br>Permanentmaxillary left lateral incisor tooth; Universal designation 10; ISO designation22</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>72876007</td>
    <td class="tg-0lax"><br>160957D</td>
    <td class="tg-0lax"><br>Permanentupper left canine tooth</td>
    <td class="tg-0lax"><br>Permanentmaxillary left canine tooth; Universal designation 11; ISO designation 23</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>61897005</td>
    <td class="tg-0lax"><br>161329D</td>
    <td class="tg-0lax"><br>Permanentupper left first premolar tooth</td>
    <td class="tg-0lax"><br>Permanentmaxillary left first premolar tooth; Universal designation 12; ISO designation24</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>23226009</td>
    <td class="tg-0lax"><br>161178D</td>
    <td class="tg-0lax"><br>Permanentupper left second premolar tooth</td>
    <td class="tg-0lax"><br>Permanentmaxillary left second premolar tooth; Universal designation 13; ISO designation25</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>23427002</td>
    <td class="tg-0lax"><br>161132D</td>
    <td class="tg-0lax"><br>Permanentupper left first molar tooth</td>
    <td class="tg-0lax"><br>Permanentmaxillary left first molar tooth; Universal designation 14; ISO designation 26</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>66303006</td>
    <td class="tg-0lax"><br>161317D</td>
    <td class="tg-0lax"><br>Permanentupper left second molar tooth</td>
    <td class="tg-0lax"><br>Permanentmaxillary left second molar tooth; Universal designation 15; ISO designation 27</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>87704003</td>
    <td class="tg-0lax"><br>161454D</td>
    <td class="tg-0lax"><br>Permanentupper left third molar tooth</td>
    <td class="tg-0lax"><br>Permanentmaxillary left third molar tooth; Universal designation 16; ISO designation 28</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>74344005</td>
    <td class="tg-0lax"><br>161258D</td>
    <td class="tg-0lax"><br>Permanentlower left third molar tooth</td>
    <td class="tg-0lax"><br>Permanentmandibular left third molar tooth; Universal designation 17; ISO designation 38</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>48402004</td>
    <td class="tg-0lax"><br>161372D</td>
    <td class="tg-0lax"><br>Permanentlower left second molar tooth</td>
    <td class="tg-0lax"><br>Permanentmandibular left second molar tooth; Universal designation 18; ISO designation37</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>89625000</td>
    <td class="tg-0lax"><br>161533D</td>
    <td class="tg-0lax"><br>Permanentlower left first molar tooth</td>
    <td class="tg-0lax"><br>Permanentmandibular left first molar tooth; Universal designation 19; ISO designation 36</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>24573005</td>
    <td class="tg-0lax"><br>161150D</td>
    <td class="tg-0lax"><br>Permanentlower left second premolar tooth</td>
    <td class="tg-0lax"><br>Permanentmandibular left second premolar tooth; Universal designation 20; ISO designation35</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>2400006</td>
    <td class="tg-0lax"><br>160654D</td>
    <td class="tg-0lax"><br>Permanentlower left first premolar tooth</td>
    <td class="tg-0lax"><br>Permanentmandibular left first premolar tooth; Universal designation 21; ISO designation34</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>39844006</td>
    <td class="tg-0lax"><br>160817D</td>
    <td class="tg-0lax"><br>Permanentlower left canine tooth</td>
    <td class="tg-0lax"><br>Permanentmandibular left canine tooth; Universal designation 22; ISO designation 33</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>77130001</td>
    <td class="tg-0lax"><br>161477D</td>
    <td class="tg-0lax"><br>Permanentlower left lateral incisor tooth</td>
    <td class="tg-0lax"><br>Permanentmandibular left lateral incisor tooth; Universal designation 23; ISO designation32</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>113278005</td>
    <td class="tg-0lax"><br>161068D</td>
    <td class="tg-0lax"><br>Permanentlower left central incisor tooth</td>
    <td class="tg-0lax"><br>Permanentmandibular left central incisor tooth; Universal designation 24; ISO designation31</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>15422005</td>
    <td class="tg-0lax"><br>161291D</td>
    <td class="tg-0lax"><br>Permanentlower right central incisor tooth</td>
    <td class="tg-0lax"><br>Permanentmandibular right central incisor tooth; Universal designation 25; ISO designation41</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>82628004</td>
    <td class="tg-0lax"><br>161197D</td>
    <td class="tg-0lax"><br>Permanentlower right lateral incisor tooth</td>
    <td class="tg-0lax"><br>Permanentmandibular right lateral incisor tooth; Universal designation 26; ISO designation42</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>47055002</td>
    <td class="tg-0lax"><br>161514D</td>
    <td class="tg-0lax"><br>Permanentlower right canine tooth</td>
    <td class="tg-0lax"><br>Permanentmandibular right canine tooth; Universal designation 27; ISO designation 43</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>80140008</td>
    <td class="tg-0lax"><br>161496D</td>
    <td class="tg-0lax"><br>Permanentlower right first premolar tooth</td>
    <td class="tg-0lax"><br>Permanentmandibular right first premolar tooth; Universal designation 28; ISO designation44</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>8873007</td>
    <td class="tg-0lax"><br>161412D</td>
    <td class="tg-0lax"><br>Permanentlower right second premolar tooth</td>
    <td class="tg-0lax"><br>Permanentmandibular right second premolar tooth; Universal designation 29; ISO designation45</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>28480000</td>
    <td class="tg-0lax"><br>160770D</td>
    <td class="tg-0lax"><br>Permanentlower right first molar tooth</td>
    <td class="tg-0lax"><br>Permanentmandibular right first molar tooth; Universal designation 30; ISO designation46</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>40005008</td>
    <td class="tg-0lax"><br>160704D</td>
    <td class="tg-0lax"><br>Permanentlower right second molar tooth</td>
    <td class="tg-0lax"><br>Permanentmandibular right second molar tooth; Universal designation 31; ISO designation47</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>38994002</td>
    <td class="tg-0lax"><br>161121D</td>
    <td class="tg-0lax"><br>Permanentlower right third molar tooth</td>
    <td class="tg-0lax"><br>Permanentmandibular right third molar tooth; Universal designation 32; ISO designation48</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>27855007</td>
    <td class="tg-0lax"><br>162091D</td>
    <td class="tg-0lax"><br>Primaryupper right second molar tooth</td>
    <td class="tg-0lax"><br>Deciduousmaxillary right second molar tooth; Universal designation A; ISO designation 55</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>17505006</td>
    <td class="tg-0lax"><br>162234D</td>
    <td class="tg-0lax"><br>Primaryupper right first molar tooth</td>
    <td class="tg-0lax"><br>Deciduousmaxillary right first molar tooth; Universal designation B; ISO designation 54</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>30618001</td>
    <td class="tg-0lax"><br>162268D</td>
    <td class="tg-0lax"><br>Primaryupper right canine tooth</td>
    <td class="tg-0lax"><br>Deciduousmaxillary right canine tooth; Universal designation C; ISO designation 53</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>65624003</td>
    <td class="tg-0lax"><br>162494D</td>
    <td class="tg-0lax"><br>Primaryupper right lateral incisor tooth</td>
    <td class="tg-0lax"><br>Deciduousmaxillary right lateral incisor tooth; Universal designation D; ISO designation52</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>88824007</td>
    <td class="tg-0lax"><br>162619D</td>
    <td class="tg-0lax"><br>Primaryupper right central incisor tooth</td>
    <td class="tg-0lax"><br>Deciduousmaxillary right central incisor tooth; Universal designation E; ISO designation51</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>51678005</td>
    <td class="tg-0lax"><br>162418D</td>
    <td class="tg-0lax"><br>Primaryupper left central incisor tooth</td>
    <td class="tg-0lax"><br>Deciduousmaxillary left central incisor tooth; Universal designation F; ISO designation61</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>43622005</td>
    <td class="tg-0lax"><br>162350D</td>
    <td class="tg-0lax"><br>Primaryupper left lateral incisor tooth</td>
    <td class="tg-0lax"><br>Deciduousmaxillary left lateral incisor tooth; Universal designation G; ISO designation62</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>73937000</td>
    <td class="tg-0lax"><br>162309D</td>
    <td class="tg-0lax"><br>Primaryupper left canine tooth</td>
    <td class="tg-0lax"><br>Deciduousmaxillary left canine tooth; Universal designation H; ISO designation 63</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>45234009</td>
    <td class="tg-0lax"><br>162004D</td>
    <td class="tg-0lax"><br>Primaryupper left first molar tooth</td>
    <td class="tg-0lax"><br>Deciduousmaxillary left first molar tooth; Universal designation I; ISO designation 64</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>51943008</td>
    <td class="tg-0lax"><br>162585D</td>
    <td class="tg-0lax"><br>Primaryupper left second molar tooth</td>
    <td class="tg-0lax"><br>Deciduousmaxillary left second molar tooth; Universal designation J; ISO designation 65</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>49330006</td>
    <td class="tg-0lax"><br>162321D</td>
    <td class="tg-0lax"><br>Primarylower left second molar tooth</td>
    <td class="tg-0lax"><br>Deciduousmandibular left second molar tooth; Universal designation K; ISO designation 75</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>38896004</td>
    <td class="tg-0lax"><br>162537D</td>
    <td class="tg-0lax"><br>Primarylower left first molar tooth</td>
    <td class="tg-0lax"><br>Deciduousmandibular left first molar tooth; Universal designation L; ISO designation 74</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>43281008</td>
    <td class="tg-0lax"><br>162441D</td>
    <td class="tg-0lax"><br>Primarylower left canine tooth</td>
    <td class="tg-0lax"><br>Deciduousmandibular left canine tooth; Universal designation M; ISO designation 73</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>14770005</td>
    <td class="tg-0lax"><br>162129D</td>
    <td class="tg-0lax"><br>Primarylower left lateral incisor tooth</td>
    <td class="tg-0lax"><br>Deciduousmandibular left lateral incisor tooth; Universal designation N; ISO designation72</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>89552004</td>
    <td class="tg-0lax"><br>162345D</td>
    <td class="tg-0lax"><br>Primarylower left central incisor tooth</td>
    <td class="tg-0lax"><br>Deciduousmandibular left central incisor tooth: Universal designation O; ISO designation71</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>67834006</td>
    <td class="tg-0lax"><br>162062D</td>
    <td class="tg-0lax"><br>Primarylower right central incisor tooth</td>
    <td class="tg-0lax"><br>Deciduousmandibular right central incisor tooth; Universal designation P; ISO designation81</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>22445006</td>
    <td class="tg-0lax"><br>161956D</td>
    <td class="tg-0lax"><br>Primarylower right lateral incisor tooth</td>
    <td class="tg-0lax"><br>Deciduousmandibular right lateral incisor tooth; Universal designation Q; ISO designation82</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>6062009</td>
    <td class="tg-0lax"><br>161892D</td>
    <td class="tg-0lax"><br>Primarylower right canine tooth</td>
    <td class="tg-0lax"><br>Deciduousmandibular right canine tooth; Universal designation R; ISO designation 83</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>58646007</td>
    <td class="tg-0lax"><br>162206D</td>
    <td class="tg-0lax"><br>Primarylower right first molar tooth</td>
    <td class="tg-0lax"><br>Deciduousmandibular right first molar tooth: Universal designation S; ISO designation 84</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>61868007</td>
    <td class="tg-0lax"><br>162425D</td>
    <td class="tg-0lax"><br>Primarylower right second molar tooth</td>
    <td class="tg-0lax"><br>Deciduousmandibular right second molar tooth; Universal designation T; ISO designation85</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707029006</td>
    <td class="tg-0lax"><br>177552D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular left canine tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular left canine tooth; Universal designation MS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707021009</td>
    <td class="tg-0lax"><br>177292D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular left central incisor tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular left central incisor tooth; Universal designation OS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707030001</td>
    <td class="tg-0lax"><br>177421D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular left first molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular left first molar tooth; Universal designation LS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707028003</td>
    <td class="tg-0lax"><br>177318D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular left lateral incisor tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular left lateral incisor tooth; Universal designation NS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707031002</td>
    <td class="tg-0lax"><br>177704D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular left second molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular left second molar tooth ; Universal designation KS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707023007</td>
    <td class="tg-0lax"><br>177387D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular right canine tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular right canine tooth; Universal designation RS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707025000</td>
    <td class="tg-0lax"><br>177450D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular right central incisor tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular right central incisor tooth; Universal designation PS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707022002</td>
    <td class="tg-0lax"><br>177758D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular right first molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular right first molar tooth; Universal designation SS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707024001</td>
    <td class="tg-0lax"><br>177466D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular right lateral incisor tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular right lateral incisor tooth; Universal designation QS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707021009</td>
    <td class="tg-0lax"><br>177302D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular right second molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous mandibular right second molar tooth; Universal designation TS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707016006</td>
    <td class="tg-0lax"><br>177497D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary left canine tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary left canine tooth; Universal designation HS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707014009</td>
    <td class="tg-0lax"><br>177736D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary left central incisor tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary left central incisor tooth; Universal designation FS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707017002</td>
    <td class="tg-0lax"><br>177715D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary left first molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary left first molar tooth; Universal designation IS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707015005</td>
    <td class="tg-0lax"><br>177263D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary left lateral incisor tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary left lateral incisor tooth; Universal designation GS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707018007</td>
    <td class="tg-0lax"><br>177581D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary left second molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary left second molar tooth; Universal designation JS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707011001</td>
    <td class="tg-0lax"><br>177575D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary right canine tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary right canine tooth; Universal designation CS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707013003</td>
    <td class="tg-0lax"><br>177696D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary right central incisor tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary right central incisor tooth; Universal designation ES</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707010000</td>
    <td class="tg-0lax"><br>177360D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary right first molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary right first molar tooth; Universal designation BS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707012008</td>
    <td class="tg-0lax"><br>177620D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary right lateral incisor tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary right lateral incisor tooth; Universal designation DS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707009005</td>
    <td class="tg-0lax"><br>177665D</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary right second molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarydeciduous maxillary right second molar tooth; Universal designation AS</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707058009</td>
    <td class="tg-0lax"><br>177523D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular left canine tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular left canine tooth; Universal designation 72</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707060006</td>
    <td class="tg-0lax"><br>177510D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular left central incisor tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular left central incisor tooth; Universal designation 74</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707055007</td>
    <td class="tg-0lax"><br>177478D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular left first molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular left first molar tooth; Universal designation 69</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707057004</td>
    <td class="tg-0lax"><br>177631D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular left first premolar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular left first premolar tooth ; Universal designation 71</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707059001</td>
    <td class="tg-0lax"><br>177271D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular left lateral incisor tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular left lateral incisor tooth; Universal designation 73</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707054006</td>
    <td class="tg-0lax"><br>177677D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular left second molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular left second molar tooth; Universal designation 68</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707056008</td>
    <td class="tg-0lax"><br>177727D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular left second premolar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular left second premolar tooth; Universal designation 70</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707052005</td>
    <td class="tg-0lax"><br>177743D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular left third molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular left third molar tooth; Universal designation 67</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707063008</td>
    <td class="tg-0lax"><br>177341D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular right canine tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular right canine tooth; Universal designation 77</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707061005</td>
    <td class="tg-0lax"><br>177285D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular right central incisor tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular right central incisor tooth; Universal designation 75</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707066000</td>
    <td class="tg-0lax"><br>177413D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular right first molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular right first molar tooth; Universal designation 80</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707064002</td>
    <td class="tg-0lax"><br>177599D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular right first premolar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular right first premolar tooth; Universal designation 78</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707062003</td>
    <td class="tg-0lax"><br>177506D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular right lateral incisor tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular right lateral incisor tooth; Universal designation 76</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707067009</td>
    <td class="tg-0lax"><br>177432D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular right second molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular right second molar tooth; Universal designation 81</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707065001</td>
    <td class="tg-0lax"><br>177409D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular right second premolar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular right second premolar tooth; Universal designation 79</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707068004</td>
    <td class="tg-0lax"><br>177608D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular right third molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent mandibular right third molar tooth; Universal designation 82</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707044007</td>
    <td class="tg-0lax"><br>177356D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary left canine tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary left canine tooth; Universal designation 61</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707042006</td>
    <td class="tg-0lax"><br>177762D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary left central incisor tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary left central incisor tooth; Universal designation 59</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707047000</td>
    <td class="tg-0lax"><br>177654D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary left first molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary left first molar tooth; Universal designation 64</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707045008</td>
    <td class="tg-0lax"><br>177445D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary left first premolar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary left first premolar tooth; Universal designation 62</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707043001</td>
    <td class="tg-0lax"><br>177683D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary left lateral incisor tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary left lateral incisor tooth; Universal designation 60</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707048005</td>
    <td class="tg-0lax"><br>177373D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary left second molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary left second molar tooth; Universal designation 65</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707046009</td>
    <td class="tg-0lax"><br>177325D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary left second premolar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary left second premolar tooth; Universal designation 63</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707049002</td>
    <td class="tg-0lax"><br>177568D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary left third molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary left third molar tooth; Universal designation 66</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707038008</td>
    <td class="tg-0lax"><br>177339D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary right canine tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary right canine tooth; Universal designation 56</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707041004</td>
    <td class="tg-0lax"><br>177259D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary right central incisor tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary right central incisor tooth; Universal designation 58</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707035006</td>
    <td class="tg-0lax"><br>177534D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary right first molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary right first molar tooth; Universal designation 53</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707037003</td>
    <td class="tg-0lax"><br>177612D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary right first premolar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary right first premolar tooth; Universal designation 55</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707039000</td>
    <td class="tg-0lax"><br>177484D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary right lateral incisor tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary right lateral incisor tooth; Universal designation 57</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707033004</td>
    <td class="tg-0lax"><br>177649D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary right second molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary right second molar tooth; Universal designation 52</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707036007</td>
    <td class="tg-0lax"><br>177547D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary right second premolar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary right second premolar tooth; Universal designation 54</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>707032009</td>
    <td class="tg-0lax"><br>177394D</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary right third molar tooth</td>
    <td class="tg-0lax"><br>Supernumerarypermanent maxillary right third molar tooth; Universal designation 51</td>
  </tr>
</tbody>
</table>

#### Crosswalk of Regions of the Mouth

This table is the crosswalk mapping of four regions of the mouth in SNOMED-CT and SNODENT.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-1wig{font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-1wig"><br>SNOMED-CT</th>
    <th class="tg-1wig"><br>SNODENT</th>
    <th class="tg-1wig"><br>Display Name</th>
    <th class="tg-1wig"><br>Description</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax"><br>280709009</td>
    <td class="tg-0lax"><br>210963D</td>
    <td class="tg-0lax"><br>Anterior segmentof maxilla</td>
    <td class="tg-0lax"><br>Anterior segmentof maxilla</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>280710004</td>
    <td class="tg-0lax"><br>210964D</td>
    <td class="tg-0lax"><br>Posterior segmentof maxilla</td>
    <td class="tg-0lax"><br>Posterior segmentof maxilla</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>245796006</td>
    <td class="tg-0lax"><br>210965D</td>
    <td class="tg-0lax"><br>Anterior partof lower alveolar ridge</td>
    <td class="tg-0lax"><br>Anterior partof lower alveolar ridge</td>
  </tr>
  <tr>
    <td class="tg-0lax"><br>245797002</td>
    <td class="tg-0lax"><br>210966D</td>
    <td class="tg-0lax"><br>Posterior partof lower alveolar ridge</td>
    <td class="tg-0lax"><br>Posterior partof lower alveolar ridge</td>
  </tr>
</tbody>
</table>


[Next Page - Downloads](downloads.html)