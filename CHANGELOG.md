# Changelog

All notable changes to this project will be documented in this file.

## v3.0.0

Breaking changes:

- Require Node.js 20 or later (commander 14).
- Declare `mocha` (>= 6) as a peer dependency. The knapsack reporter and
  `cypress-multi-reporters` already loaded it at runtime.

Other changes:

- Support Cypress 14, 15 and 16 (peer range is now `^10 || … || ^16`).
- Bump commander 8 → 14, cosmiconfig 7 → 9 (still searches up to the home
  directory), cypress-multi-reporters 1 → 2, shell-quote and
  `@badeball/cypress-configuration` to their latest minors.
- Declare `debug`, which was imported but only installed transitively.
- Move `recast`, `ast-types` and `@babel/types` to dev dependencies. Only the
  test suite uses them.
- CI: Node 22 container, current runners and actions, matrix up to Cypress 16.
