<div align="center">
  <h1>lnmetrics.rfc</h1>

  <img src="https://github.com/LNOpenMetrics/lnmetrics.icons/blob/main/current/res/mipmap-xxxhdpi/ic_launcher.png" />

  <p>
    <strong>Lightning Network Metrics Specification (RFC).</strong>
  </p>

  <h4>
    <a href="https://github.com/LNOpenMetrics">Project Homepage</a>
  </h4>
</div>

## Table of Content

- Introduction
- Metrics
- Terminology
- LNMetrics Request for Comments (RFC)
- Implementation
- License

## Introduction

The **lnmetrics** project aims to develop a collection of tools for running Lightning Network nodes with daily activity. 
This project involves defining and collecting Lightning Network metrics through a data-driven analysis.

### Problem

Obtaining information on how a node performs on a daily basis is difficult due to two primary reasons. 
- First, it requires a direct interaction with node operators, who may not be willing to share their data due to privacy concerns. 
- Second, data collection of this kind can leak private data, and node operators do not want to be exposed to this risk.

### Proposed Solution

To work around these problems, our proposal defines what data will be collected and how it will 
be analyzed in a public manner through a lnmetrics **Request for Comments (RFC)**, called lnmetrics RFC. Once the data is defined, 
it is collected using a public server with a public API, with the possibility to self-host the server on hardware with at 
least a Raspberry PI 2 capability.

We conducted an analysis of the state of the art, which helped us better understand which information is difficult to obtain 
from a researcher’s point of view. Our preliminary study revealed that information on how a node performs on a daily basis is 
difficult to obtain. We then developed an open-source framework for defining and collecting these metrics. 

This framework enables us to collect the data in a public and non-invasive manner.

## Metrics

- [Local Reputation for Node/Channel selection](metrics/metric_1.md)

## Terminology

- Server Side: A Software that it is a server, that accept request with some interface (GraphQL, Rest, ecc.);
- Client Side: A Software that ran on the lightning network node to collect the data and push on the server the result of the calculation;
- Input data model: The description of the data that are collected on the client side, and push on the server side;
- Output data model: The description of the data that are calculated on the server side, and that can be required by anyone.

## LNMetrics Request for Comments (RFC)

The LNMetrics Request for Comment (RFC) proposes a more general idea of what has al-
ready been done in the Lightning Network protocol definition. Its aim is to define the data 
that is collected and how it is used, without attempting to establish a standard of metrics 
for the Lightning Network. Rather, the RFC aims to encourage discussion among people to 
achieve better results.

This Metric Standard it is not a list of rules that all need to agree, but it is more a list of
metrics that respect some rules useful to make some analysis on the lightning network. In addition,
there is no particular field where these metrics are related, so fill free to proposed any type of metrics.

The lnmetrics RFC process involves proposing new metrics through a defined process that consists of three parts: 

1. Metric Introduction: The description of the metric/data collection and what is the overall goal; 
2. Input Metric:  Defines the data that the researcher needs, defined as JSON Schema; 
3. Output Metric: Defines the data that the research aims to return as a result. 

Ideally, a reference implementation should be provided to enable users to participate in the 
research by running the provided tool and to support the RFC discussion. 

## Implementation

- [go-lnmetrics.reporter](https://github.com/LNOpenMetrics/go-lnmetrics.reporter): Reference of a client for core lightning written in Go lang.
- [lnmetrics.server](https://github.com/LNOpenMetrics/go-lnmetrics.reporter): Reference implementation of the Server side written in Go lang, and use GraphQL as interface.

## License

TODO
