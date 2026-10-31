# SIDE-archimedean

SIDE-archimedean compiles, over Mathlib, five statements of rational arithmetic in σ : ℚ. The map σ ↦ 1 − σ (named fe_reflect) has σ = 1/2 as its only fixed point (fe_reflect_fixed_iff); a function defined to be 1 at σ = 1/2 and 2 elsewhere (focus_codim) takes the value 1 exactly there (focus_codim_eq_one_iff), so the two conditions coincide (archimedean_identifies_half); and the constant named theta_weight, 1/2, doubles to 1 (theta_weight_doubles_to_one). Its headline statement, at v0.1.0 = 8019d9d:

    theorem archimedean_forces_half (σ : ℚ) (h : fe_reflect σ = σ) : σ = 1 / 2

The names record the Archimedean path they stand for (the θ-transformation, the functional equation ξ(s) = ξ(1 − s), Focus); the kernel compiles none of those objects. It checks the fixed-point arithmetic in which that path reaches σ = 1/2.

J. York Seale — https://orcid.org/0009-0008-7993-0310

## What it proves

The Archimedean path (CRITICAL RESOLVE Path One; A Place to Stand, the √ mechanism and Focus) reaches sigma = 1/2 through the theta transformation and the functional equation.

Two of the compiled statements, named in the path's terms:

- `fe_reflect_fixed_iff` — the functional-equation reflection sigma to 1-sigma has its unique fixed point at sigma = 1/2.
- `archimedean_identifies_half` — the FE fixed point and the Focus point coincide.

## What it does NOT claim

An **identification kernel** — same status as Voice1 (Euler balance), Voice6 (spectral), and SIDE-frobenius (indicial). It does **not** prove RH on its own; that requires the exhaustive mechanism catalogue (Ostrowski + Conservation).

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

*Computational workflow assisted by various LLM instances. Mathematical content, strategies of argument, and editorial decisions are the author's.*