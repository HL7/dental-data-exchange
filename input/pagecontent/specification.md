### Actors

This specification defines no new actors beyond those in the C-CDA on FHIR specification which are: 

* **Document Source**: An application that exposes a clinical document to a consumer. This actor may be the creator of the document but could also be an intermediary. This can be thought of as the server in a client/server interaction.
* **Document Consumer**: An application that consumes a clinical document. This can be thought of as the client in a client/server interaction.

### FHIR Paradigms Supported by This IG
* RESTful API
* Document Bundle

### Resources and Profiles
#### Resource Profiles
This specification defines the following profiles:
* Dental Referral Note
* Dental Consult Note
* Dental Communication
* Dental Service Request
* Dental Finding

#### Extensions
This implementation guide defines no new extensions.

### Claiming Conformance to This Specification

This specification conforms to US Core Profiles. 
To claim conformance to this specification, servers SHALL:
* Be able to populate all profile data elements that have a minimum cardinality >= 1 and/or flagged as Must Support as defined by that profile’s StructureDefinition.
* Conform to this IG’s Server Capability Statement expectations for that profile’s type.

Details on profiles and extensions present in this specification are available on the [Artifact Index](artifacts.html#profiles) page.

### Must Support and Missing Data
Systems claiming to conform to a profile SHALL support the elements in a profile as defined below. This guide adopts the following definitions of MustSupport for all direct transactions between the Sending and Receiving Systems.

**All Sending Systems**
Sending Systems are defined as Provider Systems and applications.
* As part of the sending of a Dental Referral Note as exemplified in Use Cases 1 and 3 of this IG, the Sender SHALL be capable of including all elements defined in the profiles that have a MustSupport flag and SHALL populate all elements with a MustSupport flag if the information exists.
* In situations where information on a particular data element is not present, the Sender SHALL NOT include the data element in the resource instance if the cardinality is 0..n.
* If the information does not exist and the cardinality of the element is >= 1..*, the Sender SHALL  use the dataAbsentReason extension where it is defined. **Note**: populating the element with the value set absent reason or using the dataAbsent Reason SHOULD be handled by the Sending System and not require provider action.

**All Receiving Systems**
Receiving Systems are defined as Provider Systems and applications receiving transactions from the Sending System.
* The Receiving System SHALL be capable of processing resource instances containing required and allowed data elements without generating an error or causing the application to fail.
* Receiving Systems SHOULD be capable of processing (display, store, etc) the data elements based on the utility of the specific element to the receiver.
* When receiving a dental transaction from the Sender, the Receiving System SHALL interpret missing data elements within resource instances as data not present in the Senders systems.
* Receiving Systems SHALL be able to process resource instances containing data elements asserting missing information without generating an error or causing the application to fail.

### Conformance to US Core Profile
Where this IG does not additionally constrain a US Core profile, the actors shall follow the US Core definition of [Must Support and Missing Data](http://hl7.org/fhir/us/core/general-guidance.html).

### Search 
This specification uses the same Search Syntax rule as [US Core](https://www.hl7.org/fhir/us/core/searchparameters.html). This guide does not define any additional Search Parameters.

### Privacy and Security
This Implementation Guide is adopting the [Security and Privacy Section](http://build.fhir.org/ig/HL7/davinci-ehrx/security.html) of the Da Vinci Project Health Record Exchange (HRex) IG.
