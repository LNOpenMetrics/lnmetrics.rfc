# Local Reputation for Peer/Channel scoring.

<pre>
  Metric ID: 2
  Metric Name: Jamming Mitigation Dry Run.
  Author: TODO
  Status: draft
  Created: 2023-08-01
  Version: 0
</pre>

## Status of This Document

This document is draft of a potential specification. It has no official standing of any kind and 
does not represent the support or consensus of any standards organization.

There is also a mailing list [1] where there is the full discussion.

## Definition

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", 
"MAY", and "OPTIONAL" in this document are to be interpreted as described in RFC 2119.

## Introduction

Proposal for HTLC endorsement and local reputation tracking to better inform our
efforts to mitigate jamming attacks.

The goals of collection these data are:
* To use real-world data to sanity check the "steady state" behavior
  of local reputation algorithms, and to better inform creation of
  synthetic data for simulating attack scenarios.
* To obtain liquidity and slot utilization data to inform sane defaults
  for resource bucketing.

This metrics required a protocol change that is described in [2],
and the data will be full anonymous, so these kind of data are not
for node managements tools, but just for research porpuse.

## Metric Input

* version (uint8): set to 1, included to future-proof ourselves
  against the need to change this format.
* channel_in (uint64)[P]: the short channel ID of the incoming channel
  that forwarded the HLTC.
* channel_out (uint64)[P]: the short channel ID of the outgoing
  channel that forwarded the HTLC.
* peer_in (hex string)[P]: the hex encoded pubkey of the remote peer
  for the channel_in.
* peer_out (hex_string)[P]: the hex encoded pubkey of the remote peer
  for the channel_out.
* fee_msat(uint64): the fee offered by the HTLC, expressed in msat.
* outgoing_liquidity (float64): the portion of
  `max_htlc_value_in_flight` that is occupied on channel_out after the
  HTLC has been forwarded.
* outgoing_slots (float64): the portion of `max_accepted_htlcs` that
  is occupied on channel_out after the HTLC has been forwarded.
* ts_added_ns (uint64): the unix timestamp that the HTLC was added,
  expressed in nanoseconds.
* ts_removed_ns (uint64): the unix timestamp that the HLTC was
  removed, expressed in nanoseconds.
* htlc_settled (bool): set to 0 if the HTLC failed, and 1 if it was
  settled.
* incoming_endorsed (int16): an integer indicating the endorsement
  status of the incoming HTLC (-1 if not present, otherwise set to the
  value in the incoming endorsement TLV).
* outgoing_endorsed (int16): an integer indicating the endorsement
  status of the outgoing HTLC (-1 if not set, otherwise set to the
  value set in the outgoing endorsement TLV).

[1](https://lists.linuxfoundation.org/pipermail/lightning-dev/2023-August/004034.html)
[2](https://github.com/lightning/bolts/pull/1071)
