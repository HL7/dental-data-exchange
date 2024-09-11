Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $dental-category = http://hl7.org/fhir/us/dental-data-exchange/CodeSystem/dental-category
Alias: $sct = http://snomed.info/sct
Alias: $ADAUniversalToothDesignationSystem = http://terminology.hl7.org/CodeSystem/ADAUniversalToothDesignationSystem

Instance: CariesTooth2-example-dental-condition
InstanceOf: DentalCondition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs2buccal)
* contained = bs2buccal
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $dental-category#dental "Dental"
* code = $sct#251330002 "Caries active (finding)"
* code.text = "Caries active (finding)"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"

Instance: CariesTooth3-example-dental-condition
InstanceOf: DentalCondition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs3buccal)
* contained = bs3buccal
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $dental-category#dental "Dental"
* code = $sct#251330002 "Caries active (finding)"
* code.text = "Caries active (finding)"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"

Instance: CariesTooth4-example-dental-condition
InstanceOf: DentalCondition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs4buccal)
* contained = bs4buccal
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $dental-category#dental "Dental"
* code = $sct#251330002 "Caries active (finding)"
* code.text = "Caries active (finding)"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"

Instance: CariesTooth5-example-dental-condition
InstanceOf: DentalCondition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs5buccal)
* contained = bs5buccal
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $dental-category#dental "Dental"
* code = $sct#251330002 "Caries active (finding)"
* code.text = "Caries active (finding)"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"

Instance: CariesTooth6-example-dental-condition
InstanceOf: DentalCondition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs6buccal)
* contained = bs6buccal
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $dental-category#dental "Dental"
* code = $sct#251330002 "Caries active (finding)"
* code.text = "Caries active (finding)"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"

Instance: CariesTooth7-example-dental-condition
InstanceOf: DentalCondition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs7buccal)
* contained = bs7buccal
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $dental-category#dental "Dental"
* code = $sct#251330002 "Caries active (finding)"
* code.text = "Caries active (finding)"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"

Instance: CariesTooth8-example-dental-condition
InstanceOf: DentalCondition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs8buccal)
* contained = bs8buccal
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $dental-category#dental "Dental"
* code = $sct#251330002 "Caries active (finding)"
* code.text = "Caries active (finding)"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"

Instance: PeriodontalAbscessTooth8-example-dental-condition
InstanceOf: DentalCondition
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category[+] = $dental-category#dental "Dental"
* category[+] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"
* code = $sct#83412009 "Periodontal abscess (disorder)"
* code.text = "Periodontal abscess (disorder)"
* bodySite.coding[+] = $sct#422653006 "Structure of permanent maxillary right central incisor tooth (body structure)"
* bodySite.coding[+] = $ADAUniversalToothDesignationSystem#8 "Permanent maxillary right central incisor tooth"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"

Instance: CariesTooth9-example-dental-condition
InstanceOf: DentalCondition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs9buccal)
* contained = bs9buccal
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $dental-category#dental "Dental"
* code = $sct#251330002 "Caries active (finding)"
* code.text = "Caries active (finding)"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"

Instance: CariesTooth10-example-dental-condition
InstanceOf: DentalCondition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs10buccal)
* contained = bs10buccal
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $dental-category#dental "Dental"
* code = $sct#251330002 "Caries active (finding)"
* code.text = "Caries active (finding)"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"

Instance: CariesTooth11-example-dental-condition
InstanceOf: DentalCondition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs11buccal)
* contained = bs11buccal
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $dental-category#dental "Dental"
* code = $sct#251330002 "Caries active (finding)"
* code.text = "Caries active (finding)"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"

Instance: CariesTooth12-example-dental-condition
InstanceOf: DentalCondition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs12buccal)
* contained = bs12buccal
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $dental-category#dental "Dental"
* code = $sct#251330002 "Caries active (finding)"
* code.text = "Caries active (finding)"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"

Instance: CariesTooth13-example-dental-condition
InstanceOf: DentalCondition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs13buccal)
* contained = bs13buccal
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $dental-category#dental "Dental"
* code = $sct#251330002 "Caries active (finding)"
* code.text = "Caries active (finding)"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"

Instance: CariesTooth14-example-dental-condition
InstanceOf: DentalCondition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs14buccal)
* contained = bs14buccal
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $dental-category#dental "Dental"
* code = $sct#251330002 "Caries active (finding)"
* code.text = "Caries active (finding)"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"

Instance: CariesTooth15-example-dental-condition
InstanceOf: DentalCondition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* extension.valueReference = Reference(bs15buccal)
* contained = bs15buccal
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $dental-category#dental "Dental"
* code = $sct#251330002 "Caries active (finding)"
* code.text = "Caries active (finding)"
* subject = Reference(Patient/example-dental) "Patient A"
* onsetDateTime = "2019-12-10"

Instance: bs2buccal
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#863902006 "Structure of permanent maxillary right second molar tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#2 "Permanent maxillary right second molar tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* patient = Reference(Patient/example-dental) "Patient A"

Instance: bs3buccal
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#865995000 "Structure of permanent maxillary right first molar tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#3 "Permanent maxillary right first molar tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* patient = Reference(Patient/example-dental) "Patient A"

Instance: bs4buccal
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#36492000 "Structure of permanent maxillary right second premolar tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#4 "Permanent maxillary right second premolar tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* patient = Reference(Patient/example-dental) "Patient A"

Instance: bs5buccal
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#57826002 "Structure of permanent maxillary right first premolar tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#5 "Permanent maxillary right first premolar tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* patient = Reference(Patient/example-dental) "Patient A"

Instance: bs6buccal
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#860767006 "Structure of permanent maxillary right canine tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#6 "	Permanent maxillary right canine tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* patient = Reference(Patient/example-dental) "Patient A"

Instance: bs7buccal
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#424877001 "Structure of permanent maxillary right lateral incisor tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#7 "Permanent maxillary right lateral incisor tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* patient = Reference(Patient/example-dental) "Patient A"

Instance: bs8buccal
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#422653006 "Structure of permanent maxillary right central incisor tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#8 "Permanent maxillary right central incisor tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* patient = Reference(Patient/example-dental) "Patient A"

Instance: bs9buccal
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#424399000 "Structure of permanent maxillary left central incisor tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#9 "Permanent maxillary left central incisor tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* patient = Reference(Patient/example-dental) "Patient A"

Instance: bs10buccal
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#423185002 "Structure of permanent maxillary left lateral incisor tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#10 "Permanent maxillary left lateral incisor tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* patient = Reference(Patient/example-dental) "Patient A"

Instance: bs11buccal
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#860780009 "Structure of permanent maxillary left canine tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#11 "Permanent maxillary left canine tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* patient = Reference(Patient/example-dental) "Patient A"

Instance: bs12buccal
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#61897005 "Structure of permanent maxillary left first premolar tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#12 "Permanent maxillary left first premolar tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* patient = Reference(Patient/example-dental) "Patient A"

Instance: bs13buccal
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#23226009 "Structure of permanent maxillary left second premolar tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#13 "Permanent maxillary left second premolar tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* patient = Reference(Patient/example-dental) "Patient A"

Instance: bs14buccal
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#865988009 "Structure of permanent maxillary left first molar tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#14 "Permanent maxillary left first molar tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* patient = Reference(Patient/example-dental) "Patient A"

Instance: bs15buccal
InstanceOf: BodyStructure
Usage: #inline
* location.coding[0] = $sct#863901004 "Structure of permanent maxillary left second molar tooth (body structure)"
* location.coding[+] = $ADAUniversalToothDesignationSystem#15 "Permanent maxillary left second molar tooth"
* locationQualifier[0] = $sct#245647007 "Entire buccal surface"
* patient = Reference(Patient/example-dental) "Patient A"
