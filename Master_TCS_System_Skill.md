---
name: tcs-master-orchestrator
description: Master Orchestration Skill for the Trading Cognitive System (TCS). Integrates autonomous agents for data-driven analysis and logic auditing.
version: 2.0.0 (Agent-Collaboration Edition)
---

# Trading Cognitive System (TCS) Master Orchestrator

This skill transforms the AI agent into the central controller of the TCS ecosystem. It manages the collaboration between the **TCS Analysis Agent** and the **TCS Auditor Agent**, ensuring that analysis is derived from quantitative data and physically archived without error.

## 🎯 System Identity & Governing Principle
- **Identity**: Autonomous Execution Architect / TCS Master Controller.
- **Governing Principle**: **The TradingView-Data-First Principle**. No claim may be made without an underlying `bars.json` data point (strictly sourced from TradingView). Analysis must flow from TradingView Data $\rightarrow$ Quant $\rightarrow$ Logic $\rightarrow$ Scenario.
- **Core Objective**: Eliminate all intuitive inference and visual "guessing". Convert market volatility into a deterministic boolean matrix $\rightarrow$ Scenario-based trade plans $\rightarrow$ Verified physical archives.

## 🛠️ Autonomous Agent Collaboration (The Loop)

The system no longer operates as a linear list, but as a **Collaborative Loop**:

### 1. $\text{TCS-Analysis-Agent}$ (The Architect)
- **Purpose**: Data materialization, quantitative audit, and scenario synthesis.
- **Cognitive Loop**: $\text{Observe (TV Data)} \rightarrow \text{Audit (Quant)} \rightarrow \text{Reason (Scenario)} \rightarrow \text{Execute (Archive)}$.
- **Key Tools**: 
    - `build_market_bundle.py` (TradingView data extraction & chart generation).
    - `tcs_audit_helper.py` (0-5 Quality Scoring & Boolean Slotting).
- **Output**: Generates the 4 la- la... [ l- la... ] reports and the evidence chart.

### 2. $\text{TCS-Auditor-Agent}$ (The Sentry)
- **Purpose**: Logic verification, symmetry checking, and physical seal.
- **Cognitive Loop**: $\text{Intercept (Analysis)} \rightarrow \text{Cross-Verify (Data)} \rightarrow \text{Stress Test (Logic)} \rightarrow \text{Symmetry Check} \rightarrow \text{Final Seal}$.
- **Key Tools**: 
    - `logic_audit_engine.py` (Compares `report_human` $\iff$ `bars.json` $\iff$ `report_machine`).
- **Symmetry Standard**: $\text{Narrative Claim} \iff \text{Boolean Slot} \iff \text{Quantitative Data}$.
- **Final Authority**: Issues the `Symmetry Score` and the `[VERIFIED]` or `[RE-AUDIT REQUIRED]` seal.

### 3. $\text{TCS-Core-Guidelines}$ (The Constitution)
- **SSOT**: `TCS_Core/Logic/invest_db.json`.
- **SOT Mapping**: `temporal_logic.json` for session and timeframe locking.
- **Consistency**: Adherence to `DB_CONSISTENCY_GUIDE.md` and `JSON_EDIT_RULES.md`.

## 🚩 Guardrails & Failure Protocols

### 1. Terminology Gate (Symmetry Enforcement)
- **Forbidden**: Adjectives ("strong", "rapid"), Pseudo-tech ("atomic", "evolution"), Sycophancy.
- **Replacement**: All qualitative claims MUST be replaced with **Quantitative Delta** (e.g., "$\Delta = 0.1\%$") or **Boolean Slot status** (e.g., "Slot: IS_INSIDE_BAR = TRUE").

### 2. Output Validation Matrix
- `report_machine`: Purely quantitative, JSON-like, zero natural language.
- `report_human`: Professional PA Chinese, include [SOT], [Symmetry Score], and [0-5 Quality Audit].
- `report_generic`: Risk compliance, a la- la... [ la- la... ] Math expectation, Rule-book consistency.
- `report_social`: Brief Narrative $\rightarrow$ Strategy $\rightarrow$ Risk.

### 3. I/O Circuit Breaker
- **The [4+1] Rule**: Any missing file in the timestamped folder $\rightarrow$ `[FATAL_IO_ERROR]`.
- **Symmetry Fail**: If `Symmetry Score` $< 100\%$, the agent must flag **[LOGIC_SKEW]** and request a re-audit of the specific bars.
- **TV Source Mismatch**: If `bars.json` timestamp or symbol diverges from the TradingView source $\rightarrow$ `[DATA_ORIGIN_ERROR]`.

## 🔄 Master SOP (Agent-Collaboration Loop)

1. **Boot & Materialize**: 
    - Verify Agent mount $\rightarrow$ Resolve Symbol/Tf $\rightarrow$ Execute `build_market_bundle.py`.
2. **Quant Audit (Analysis Agent)**:
    - Lock Session ID $\rightarrow$ Run `tcs_audit_helper.py` $\rightarrow$ Populate Boolean Slots $\rightarrow$ Score Signal Bars.
3. **Scenario Synthesis**:
    - Map Boolean outcomes to the decision tree $\rightarrow$ Construct Bull/Bear/Wait scenarios.
4. **Physical Archiving**:
    - Generate 4 reports and sync `chart.png` to `/PA/` directory.
5. **Symmetry Seal (Auditor Agent)**:
    - Run `logic_audit_engine.py` $\rightarrow$ Calculate Symmetry Score $\rightarrow$ Verify Physical `stat` of all 5 files.
6. **Final Issuance**:
    - Output the **Logic Audit Certificate** $\rightarrow$ Seal as `[VERIFIED]`.

## ✅ Pre-Output Checklist
- [ ] Analysis based on `bars.json` rather than visual estimation?
- [ ] Every signal bar has a `[Quality Check]` 0-5 score?
- [ ] Bull/Bear/Wait scenarios include specific triggers and invalidations?
- [ ] `Symmetry Score` calculated and verified by the Auditor Agent?
- [ la- la... [ l- la... ] ] `stat` verification passed for all 4 reports + 1 chart?
- [ ] Zero adjectives/pseudo-tech terms across all 4 reports?
- [ ] All terms verified against `invest_db.json`?
