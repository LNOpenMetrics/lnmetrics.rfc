# Local Reputation for Peer/Channel scoring.

<pre>
  Metric ID: 1
  Metric Name: Local Reputation for Peer/Channel scoring.
  Author: Vincenzo Palazzo <vicenzo.palazzo@protonmail.com>
  Status: draft
  Created: 2022-11-05
  Version: 0
</pre>

## Status of This Document

This document is draft of a potential specification. It has no official standing of any kind and 
does not represent the support or consensus of any standards organization.

## Introduction

This section describes our case study that uses the LNMetrics framework to define a local 
reputation of the node to provide a solution to a problem we encountered while building 
our lightning node on the Bitcoin network. 

The local reputation described in this section aims to provide enough data to support a 
lightning network user during the initial phase and helps define some criteria to discover 
a "good" lightning node where it is possible to initialize a channel. In addition, with this 
local reputation system, it is possible to help node management tools, such as clboss 
to score the channel and have some additional information at runtime.

## Metric Input

- Lightning Node performance information:
  - Operative System information
  - The number of channels of the node
  - The number of forwards payments that the node has performed in the last 30 minutes
  - The current lightning fee that the node has to forward a payment

- Performance for each channel:
  - If the node is online at the moment of the check
  - The current lightning fee of the channel to forward a payment through it
  - The number of payments that are forwarded in the last 30 minutes through this specific channel
  - The channel direction, where for each lightning channel there will be two items: one of inbound connection, and another one for outbound connection. In this way it is possible to try to estimate the usable direction of the channel.


The full JSON schema is available [here](https://raw.githubusercontent.com/LNOpenMetrics/lnmetrics.rfc/main/schemas/metric_1_input.schema.json)

## Metric Output

When the client provides the data to the analysis system, the following metric output 
is calculated:

- Lightning node up time scoring divided by period is calculated
- Lightning channel forwards payment scoring divided into success, failure, and local failure is calculated
- Local failure is how many forwards are failing because of some lightning node problem, e.g., the node that is running the metrics has no channel with enough outbound capacity


The full JSON schema is available [here](https://raw.githubusercontent.com/LNOpenMetrics/lnmetrics.rfc/main/schemas/metric_1_output.schema.json )

## Possible Usage of the data

Currently there is no enough data to try to make a real study on how it 
is possible use these data for, but a node with these data available can 
try to optimize the choice while closing and opening a channel and bootstrap the node with
several known peers.

A possible idea is to improve the DNS bootstrap of the lightning network by running
this metric on the DNS server.

## Reference Implementation:

- [lnmetrics.server](https://github.com/LNOpenMetrics/lnmetrics.server)
- [go-lnmetrics.reporter](https://github.com/LNOpenMetrics/go-lnmetrics.reporter)

## License

This RFC is licensed under the 2-clause BSD license.
