# Metrics 1

<pre>
  Metric ID: 1
  Metric Name: metric_one
  Author: Vincenzo Palazzo <vicenzo.palazzo@protonmail.com>
  Status: draft
  Created: xxxx-xx-xx
  Version: 2
</pre>

## Introduction

No body will read it

## Data collected and reported

### Metrics Payload

- version: Integer that contains the version of the metrics\_one;
- name: String that contains the name of metric, in this case is *metric_one*;
- node_id: String that contains the node id that are reporting the metric;
- color: String that contains the node color;
- node_alias: String that contains the Alias of the node;
- timezone: String that contains the timezone of the node;
- os_info: Object that contains information about the host os, structure describe in [Os Info Payload](#TODO) section;
- node_info: Object that contains information about the ln implementation, structure describe in [Node Info Payload](#TODO) section; 
- up_time: Array of object that contains the information about the status of the node with a cadence of 30 minutes, if the 
difference between the last two element is more that 40 minutes this means that the node is down for some reason. The structure
of each object inside the array is described in [Status Node Payload](#TODO) section;

### Os Info Payload

Contains information about the os, and the payload contains the following information:

- *os*: String that contains the name of the os;
- *version*: String that contains the version of the system;
- *architecture*: String that contains the architecture of the system.

### Node Info Payload

Contains information about the node implementation, and the payload contains the following information:

- *implementation*: The name of the implementation;
- *version*: The version of the implementation.

### Status Node Payload

Contains all the information of the instant where the screenshot it is taken, normally a screenshot of the status node
it is taken each 30 minutes, and if the difference between the last two it is more than 40 minutes the node it is considered down.

In this last case, it is possible detect the failure reason when the node will back online with an evaluation of the *event* value.

- event: A string that contains an Event name, like on_update, on_close and on_init, this state are important to catch when the node
is down for a user reason or a software failure;
- channels: An Object that contains a summary information on the last activity, and the structure was described in [Channels Summary Payload](#TODO) section;
- forwards: An Object that contains a summary information on the last activity with the forwards payments, and the structure was described in [Payments Summary Payload](#TODO) section;
- timestamp: A integer that contains the UNIX timestamp when the screenshot was taken.

### Channels Summary Payload

TODO: Fill this information

### Payments Summary Payload

TODO: Fill this information

### JSON Schema

TODO add JSON schema here

## Reported Supported

Here there is a list of reported server that support the metric_one:

- [lnmetrics.server](#TODO)

## License

TODO
