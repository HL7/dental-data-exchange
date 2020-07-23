[Previous Page - Proper use of the Dental Findings Section](proper_use_of_the_dental_findings_section.html)

Given that most EDRs already support SNODENT, but most EHRs only support SNOMED-CT and ICD-10, the recommended practice is to convey both versions of a concept when possible. Whenever possible, the SNOMED-CT term should be provided as the primary code, with the equivalent SNODENT term included as a translation. Failure to include a SNOMED-CT or ICD-10 coded value may result in inability for a receiving system to meaningfully interpret the information provided. Systems that cannot implement SNOMED-CT transmission or reception will not be able to translate over to US FHIR Core. In representing problems, this implementation guide recommends the use of SNOMED CT and understands that some EDRS may use ICD-10 if SNOMED CT is not available. 

[Next Page - Planned Procedures and Encounters using CDT and SNODENT](planned_procedures_and_encounters_using_cdt_and_snodent.html)