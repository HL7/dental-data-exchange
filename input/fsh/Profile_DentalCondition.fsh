Alias: $dental-category = http://hl7.org/fhir/us/dental-data-exchange/CodeSystem/dental-category
Alias: $us-core-condition = http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns

Profile: DentalCondition
Parent: $us-core-condition
Id: dental-condition
Title: "Dental Condition"
Description: "This profile specifies a 'dental' slice on Condition category. It also constrains bodySite and evidence to MustSupport. Providing evidence (i.e., point-in-time Observations) in support of longitudinal Conditions is highly encouraged."
* ^meta.versionId = "36"
* ^meta.lastUpdated = "2021-07-29T14:05:33.820+00:00"
* ^meta.source = "#oPwHtcP2s5XfAmAj"
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
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains dental 1..1 MS
* category[dental] = $dental-category#dental "Dental" (exactly)
* category[dental] ^short = "dental"
* bodySite MS
* evidence MS

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: DentalCondition
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: DentalCondition
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: DentalCondition
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: DentalCondition
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: DentalCondition
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: DentalCondition
Target: "http://snomed.org/attributebinding"
