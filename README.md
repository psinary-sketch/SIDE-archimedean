# SIDE-archimedean

Lean 4 kernel — the Archimedean / √ **identification** of sigma = 1/2.

J. York Seale — https://orcid.org/0009-0008-7993-0310

## What it proves

The Archimedean path (CRITICAL RESOLVE Path One; A Place to Stand, the √ mechanism and Focus) reaches sigma = 1/2 through the theta transformation and the functional equation. This kernel verifies the algebraic core:

- `theta_weight_doubles_to_one` — the √ factor in theta(-1/tau) = sqrt(-i tau)*theta(tau) carries weight 1/2; doubling returns the FE period 1.
- `fe_reflect_fixed_iff` — the functional-equation reflection sigma to 1-sigma has its unique fixed point at sigma = 1/2.
- `focus_codim_eq_one_iff` — Focus: at sigma = 1/2 the zero-codimension drops from 2 to 1 (xi real on the line).
- `archimedean_identifies_half` — the FE fixed point and the Focus point coincide.
- `archimedean_forces_half` — the headline: the Archimedean FE structure forces sigma = 1/2.

## What it does NOT claim

An **identification kernel** — same status as Voice1 (Euler balance), Voice6 (spectral), and SIDE-frobenius (indicial). It verifies the Archimedean machinery *points at* sigma = 1/2. It does **not** prove RH on its own; that requires the exhaustive mechanism catalogue (Ostrowski + Conservation).

## Federation context

Checkpoint 1.2-A in the alternative-proof-paths census (`PATHS_TO_THE_CRITICAL_LINE`), filed within the Phase 1.5 wave. Independent federated kernel: own toolchain pin, own Mathlib pin, own deposit. Mathlib-dependent (pinned v4.29.1, reusing the federation cache).

## Build

lake exe cache get
lake build
lake env lean AxiomCheck.lean

Toolchain leanprover/lean4:v4.29.1; Mathlib pinned v4.29.1.

## License

MIT.

## AI disclosure

*Computational workflow assisted by various LLM instances. Mathematical content, proof strategies, and editorial decisions are the author's.*