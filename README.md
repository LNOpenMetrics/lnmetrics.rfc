<div align="center">
  <h1>lnmetrics.rfc</h1>

  <img src="https://github.com/LNOpenMetrics/lnmetrics.icons/blob/main/current/res/mipmap-xxxhdpi/ic_launcher.png" />

  <p>
    <strong>This is a confused and bad format draft of the lightning network metrics specification.</strong>
  </p>

  <p>
  </p>

  <h4>
    <a href="https://github.com/LNOpenMetrics">Project Homepage</a>
  </h4>
</div>

## Table of Content

- Introduction
- Metrics
- Terminology
- How Propose a new Metric
- Implementation
- License

## Introduction

The Lightning Network Open Metrics Specification is a powerful tool that enables developers and users to analyze the Lightning Network and evaluate the reliability of nodes and payment channels. Given the inherent uncertainty of transactions within the network, the available metrics provided by the tool to date are essential for assessing the network.

## Metrics

The following metrics are designed to be a reference for the final user or tools programmers that need to make an analysis of the network to establish the quality of one node.

E.g: Tools like [clboss](https://github.com/ZmnSCPxj/clboss) for c-lightning can work very well if it has additional details about the reliability of one node, or maybe additional routing algorithm like [Probabilistic Route Selection](https://arxiv.org/pdf/2103.08576) can be improved if they have some information about the goodness of one node.

- [Metrics 1](metrics/metric_1.md)

## Terminology

- Server Side: A Software that it is a server, that accept request with some interface (GraphQL, Rest, ecc.);
- Client Side: A Software that ran on the lightning network node to collect the data and push on the server the result of the calculation;
- Input data model: The description of the data that are collected on the client side, and push on the server side;
- Output data model: The description of the data that are calculated on the server side, and that can be required by anyone.

## How Propose a new Metric

This Metric Standard it is not a list of rules that all need to agree, but it is more a list of
metrics that respect some rules useful to make some analysis on the lightning network. In addition,
there is no particular field where these metrics are related, so fill free to proposed any type of metrics.

To proposed any new metric you need to make two type of file:

- A new description file in the directory metrics, with a identifier usually an incremental id;
- Define two json schemas that define the input and the output data model of the metric;
- Make a reference implementation, that can be tested and integrated in the actual existent software.

## Implementation

- [go-lnmetrics.reporter](https://github.com/LNOpenMetrics/go-lnmetrics.reporter): Reference of a client for C-lightning written in Go lang.
- [lnmetrics.server](https://github.com/LNOpenMetrics/go-lnmetrics.reporter): Reference implementation of the Server side written in Go lang, and use GraphQL as interface.

## License

TODO
