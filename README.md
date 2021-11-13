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
- Implementation
- License

## Introduction

TODO: later

## Metrics

The following metrics are designed to be a reference for the final user or tools programmers that need to make an analysis of the network to establish the quality of one node.

E.g: Tools like [clboss](https://github.com/ZmnSCPxj/clboss) for c-lightning can work very well if it has additional details about the reliability of one node, or maybe additional routing algorithm like [Probabilistic Route Selection](https://arxiv.org/pdf/2103.08576) can be improved if they have some information about the goodness of one node.

- [Metrics 1](metrics/metric_1.md)

## Terminology

Nothing here for the moment.

## Implementation

- [go-lnmetrics.reporter](#TODO): Reference implementation for C-lightning written in Go lang.

## License

TODO
