# Human Work Tasks: [INTENT NAME]

**Input**: Intent specification and plan from `/specs/[###-intent-name]/`

Tasks translate the chosen route into the smallest visible, ordered actions.
They must not add scope beyond `spec.md`. Every task names its output or the
observation that makes it complete.

## Format

`- [ ] T### [P?] Description with an exact file path, artifact, or observable
outcome`

Use `[P]` only when tasks can truly proceed independently. For learning and
physical-device work, prefer one deliberate action at a time over artificial
parallelism.

## Phase 1: Readiness

- [ ] T001 Confirm the selected route, constitution gates, scope, and stop
  conditions in `spec.md`.
- [ ] T002 Create the declared local and reviewable artifact locations.

## Phase 2: Route work

Create only the actions needed by the selected route:

- **Document stewardship**: inspect, edit, review, and render/check the named
  document.
- **Learning**: establish the learner's starting point, complete one practice
  activity, and preserve learner-produced evidence.
- **Preservation investigation**: run only the approved Manual procedure,
  create the declared observation records, and stop at the first unmet safety
  condition.
- **Software development**: organize tasks by independently testable user need;
  write requested tests before implementation; name exact source and test paths.

## Phase 3: Evaluate and decide

- [ ] T### Compare declared evidence with the completion rule in `spec.md`.
- [ ] T### Record the completion decision: complete, revise, open a new intent,
  or stop.

## Dependencies and validation

State the task order, any genuine parallel opportunities, and the evidence that
closes the intention. A successful render or generated file is not evidence that
an external experiment, transfer, or learning outcome occurred.
