# Intent Specification: [INTENT NAME]

**Intent Branch**: `[###-intent-name]`  
**Created**: [DATE]  
**Status**: Draft  
**Input**: Human description: "$ARGUMENTS"

## Human intention

**I want to**: [Describe the human goal without presuming software.]  
**Why now**: [What makes this turn worth taking?]  
**Done means**: [What will the person be able to understand, decide, use, or
communicate when this turn is complete?]

## Route selection

**Selected route**: [document stewardship | learning | preservation
investigation | software development]

**Why this is the smallest fitting route**: [Explain why a simpler route does
not suffice, if relevant.]

**Route change trigger**: [What observation or decision would require choosing
a different route?]

## Context, scope, and uncertainty

**Known context**: [Relevant starting state, prior decisions, and inputs.]  
**Open questions**: [List uncertainty explicitly; use NEEDS CLARIFICATION rather
than guessing.]  
**In scope**: [What this turn may do.]  
**Out of scope**: [What it must not silently become.]

## Guardrails

- **Safety and ethics**: [Non-negotiable limits.]
- **Privacy and disclosure**: [What must stay local or be reviewed before
  sharing.]
- **Time, money, access, or authority limits**: [Relevant boundaries.]
- **Stop conditions**: [When to pause rather than improvise or escalate.]

## Route requirements

### Document stewardship

**Target and audience**: [Document and intended reader.]  
**Completion check**: [Review, render, link check, or other appropriate check.]

### Learning

**Learner's starting point**: [What is already understood.]  
**Practice or application**: [A small activity that demonstrates learning.]  
**Completion evidence**: [Explanation in the learner's own words, exercise,
reflection, or applied result.]

### Preservation investigation

**Research question**: [One answerable question.]  
**Device and host in scope**: [Exact device label and environment.]  
**Safety invariants**: [What must not change.]  
**Expected observation artifacts**: [Named records, captures, or logs.]  
**Evaluation rule**: [How the result will be classified.]  
**Execution status**: [draft | ready to run | completed | stopped]

An experiment may run only when this route is selected and the execution status
is `ready to run`.

### Software development

Complete this section only when software is the selected route.

**User need**: [What users need and why.]  
**Acceptance scenarios**: [Given/When/Then scenarios.]  
**Functional requirements**: [Testable capabilities, without deciding the
technology prematurely.]  
**Success criteria**: [Measurable outcomes.]

## Completion and next decision

**Evidence to review**: [Files, tests, rendered output, or human-produced
evidence.]  
**Completion decision**: [complete | revise this intent | open a new intent |
stop]  
**Possible next intention**: [Leave `unknown` until evidence justifies one.]
