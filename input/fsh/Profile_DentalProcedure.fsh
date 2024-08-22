Alias: $dental-category = http://hl7.org/fhir/us/dental-data-exchange/CodeSystem/dental-category
Alias: $us-core-procedure = http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure

Profile: DentalProcedure
Parent: $us-core-procedure
Id: dental-procedure
Title: "Dental Procedure"
Description: "This profile specifies a Dental specialization of the US Core Procedure profile"
* ^date = "2024-08-15T09:50:57-04:00"
* ^publisher = "Payer/Provider Information Exchange Work Group"
* ^contact.name = "HL7 International - Payer/Provider Information Exchange Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/claims"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "US"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains http://hl7.org/fhir/StructureDefinition/bodySite named BodyStructure 0..1
* extension[BodyStructure] ^short = "BodyStructure for more complex anatomical locations"
* extension[BodyStructure] ^base.path = "Element.extension"
* extension[BodyStructure] ^base.min = 0
* extension[BodyStructure] ^base.max = "*"
* category = $dental-category#dental "Dental" (exactly)
* code from DentalProcedureCodes (extensible)
* bodySite MS
