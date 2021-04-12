[Previous Page - Background](background.html)

### Actors

This specification defines no new actors beyond those in the C-CDA on FHIR specification which are: 

* Document Source: An application that exposes a clinical document to a consumer. This actor may also be the creator of the document, but could also be an intermediary. This can be thought of as the server in a client/server interaction.
* Document Consumer: An application that consumes a clinical document. This can be thought of as the client in a client/server interaction.

### Paradigms
* RESTfulAPI
* Document 
* Bundle

### Resources and Profiles
#### Resource Profiles
This specification defines the following profiles:
* Dental Referral Note Profile
* Dental Consult Note
* Dental Communication Profile
* Dental Service Request Profile
* Dental Findings Profile
Details on these profiles are available on the Artifact Index page.
#### Extensions
This implementation guide defines no new extensions.

### Claiming Conformance to This Specification

This specification conforms to US Core Profiles. 
To claim conformance to this specification, servers SHALL:
* Be able to populate all profile data elements that have a minimum cardinality >= 1 and/or flagged as Must Support as defined by that profile’s StructureDefinition.
* Conform to this IG’s Server Capability Statement expectations for that profile’s type.

Details on profiles and extensions present in this specification. are available on the Artifact Index page.

### Must Support

This specification uses the same must-support rules as the C-CDA on FHIR specification.

### Missing Data

This specification uses the same missing data rule as US Core.

### Representing Deleted Information

This specification uses the same Representing Deleted Information rule as US Core.

### Search 
This specification uses the same Search Syntax rule as US Core. This guide does not define any additiona Search Parameters.

### Security
This specification uses the same FHIR Security rule as  FHIR R4.
This guide does not specify any specific security considerations beyond [FHIR's general security considerations page](http://http://hl7.org/fhir/2018Sep/security.html).

[Next Page - Best Practices](best_practices.html)