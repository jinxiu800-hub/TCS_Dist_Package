# Trading Cognitive System (TCS) - Data-Driven Execution Agent Framework

## 🎯 System Overview
The Trading Cognitive System (TCS) is a high-precision autonomous framework designed to transform raw market data into objective trading intelligence. By integrating the Al Brooks Price Action methodology with a deterministic quantitative engine, TCS replaces subjective technical analysis with a rigid **Data $\rightarrow$ Quant $\rightarrow$ Logic $\rightarrow$ Scenario** pipeline.

The system operates as a collaboration between two specialized agents: the **TCS Analysis Agent** (Data & Strategy) and the **TCS Auditor Agent** (Logic & Symmetry).

## 🛠️ Core Architecture
The system has evolved from a linear pipeline into a **Cognitive Loop**:
`SOT Mapping` $\rightarrow$ `Data Materialization (Scripts)` $\rightarrow$ `Quantitative Audit (0-5 Score)` $\rightarrow$ `Symmetry Verification` $\rightarrow$ `Scenario Synthesis` $\rightarrow$ `Deterministic Archiving`.

### 🚀 Recent Upgrade: Data Source Modernization
- **Massive REST SDK Integration**: Transitioned from volatile scraping to the official `massive` REST client, eliminating IP blocks and ensuring high-reliability data streaming.
- **S3 Hybrid Layer**: Implemented a fallback system capable of reading gzipped flat files directly from S3 buckets for deep historical research.
- **Portable Deployment**: The system is now fully portable. All absolute paths have been generalized, allowing it to be cloned and run across different environments without manual code modification.

### 🗝️ Key Execution Pillars
- **Data-First Principle**: Analysis is strictly forbidden without a `bars.json` source. All visual claims must be backed by quantitative floats.
- **Quantitative Quality Audit**: Every signal bar is scored from 0-5 based on Body Ratio, Close Position, and Relative Size.
- **Symmetry Standard**: A 1:1 mapping is enforced between the Machine View (Boolean Slots) and the Human Narrative.
- **Scenario-Based Intelligence**: Instead of single predictions, the system produces **Bull Case**, **Bear Case**, and **Wait Condition** plans, each with a defined trigger and invalidation.
- **4+1 Physical Archiving**: Mandatory generation and `stat` verification of 4 reports and 1 evidence chart.
- **Cognitive Visualization**: A built-in remote-controlled browser environment that mirrors the Agent's reasoning path via a D3.js decision-tree.

## 📂 Directory Structure

```text
./
├── Master_TCS_System_Skill.md      # 🚀 Master Orchestrator (Agent Collaboration Protocol)
├── TCS_Guardrail.xml               # 🛡️ Hard Constraints & Symmetry Guardrails
├── TCS_Prompts\
│   └── examples.md                 # 📋 Hard-Templates for Report Generation
├── Browser_Internalization\        # 🌐 Runtime Environment & Visual Audit Suite
│   ├── bin\                            # ⚙️ System Binaries (tcs_browser.py, etc.)
│   ├── deploy.bat
│   ├── entrypoint.sh
│   └── hermes.bat
└── TCS_Core\
    ├── Data_Providers\             # 📡 Market Data Layer
    │   └── massive_api\            # ⚡ Massive REST SDK Integration
    │       ├── client.py           # S3/REST Hybrid Data Client
    │       └── schemas.py          # Quantitative Data Models
    ├── Guidelines\                  # 📏 Operational Rules & Boundary Case Resolvers
    ├── Logic\                      # 🧠 The Brain: Decision Trees & State Mapping
    │   ├── invest_db.json           # SSOT: The Core Logic Database
    │   ├── temporal_logic.json     # Session & Timeframe Mapping
    │   └── logic_map.md             # Deterministic Node Transitions
    ├── Config\                      # ⚙️ System Parameters
    │   └── massive_api.yaml         # ⚠️ API Keys & S3 Endpoints (Excluded via .gitignore)
    └── Visualization\               # 🖼️ Logical Mapping Visuals
```

## 🚀 Quick Start & Setup

### 1. Installation
```bash
# Clone the repository
git clone <repo-url>
cd TCS_Dist_Package

# Install dependencies
pip install -r requirements.txt
```

### 2. Configuration
The system requires a Massive API key to function.
- Copy `config/massive_api.yaml.example` (if provided) or create `config/massive_api.yaml`.
- Enter your `aws_secret_access_key` (Massive API Key) and `endpoint_url`.

### 3. Execution
Run the materialization engine for your target symbol:
```bash
python Skills/trading-cognitive-analysis/scripts/build_market_bundle.py --symbol AAPL
```

## 🔄 Agent-Driven SOP

1. **Materialize**: Resolve symbol $\rightarrow$ Run `build_market_bundle.py` $\rightarrow$ Generate `bars.json` & `chart.png`.
2. **Quant Audit**: Lock Session $\rightarrow$ Run `tcs_audit_helper.py` $\rightarrow$ Populate Boolean Slots $\rightarrow$ Score Bars.
3. **Synthesize**: Map Boolean results to Decision Tree $\rightarrow$ Construct Bull/Bear/Wait scenarios.
4. **Verify & Seal**: Auditor Agent runs `logic_audit_engine.py` $\rightarrow$ Verify Symmetry $\rightarrow$ Perform [4+1] Physical Archive $\rightarrow$ Issue Audit Certificate.
5. **Visual Mirroring**: Push the current decision state to the `TCS Cognitive Browser` $\rightarrow$ Render the reasoning path $\rightarrow$ User/Auditor visually confirms the logic flow.

## 🚩 Critical Constraints
- **Zero Adjectives**: No "strong", "rapid", "perfect". All claims must be quantified (e.g., "Symmetry Score: 95%").
- **Conservative Principle**: In ambiguous zones, prioritize lower probability weights and reject high-risk entries.
- **I/O Circuit Breaker**: Any failure in the physical `stat` check of reports triggers an immediate `[FATAL_IO_ERROR]`.

---
*This system is designed for high-precision execution. Any deviation from the data-driven loop or symmetry standards is considered a system failure.*
