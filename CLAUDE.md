# Trading Cognitive System (TCS) Development Guide

## 📌 Project Overview
The Trading Cognitive System (TCS) is a high-precision autonomous framework that converts raw market data into objective trading intelligence. It follows a strict **Data $\rightarrow$ Quant $\rightarrow$ Logic $\rightarrow$ Scenario** pipeline to eliminate intuitive guesswork.

## 🏗️ Architecture & Patterns
- **Cognitive Loop**: $\text{Observe} \rightarrow \text{Audit} \rightarrow \text{Reason} \rightarrow \text{Execute} \rightarrow \text{Verify}$.
- **Symmetry Standard**: Narrative Claims $\iff$ Boolean Slots $\iff$ Quantitative Data.
- **[4+1] Rule**: 4 reports (`machine`, `human`, `generic`, `social`) + 1 evidence chart per session.
- **Strict Terminology**: Zero adjectives (no "strong", "rapid"). Only quantitative deltas or boolean statuses.

## 📂 Directory Structure
- `bin/`: Executable tools (`tcs_browser.py`, `fetch_index.py`, `tcs_index_helper.py`, `send_email.py`, `tcs_automation.py`).
- `TCS_Core/`: System brain (Logic, Config, Visualization).
- `config/`: Unified configuration center (`settings.yaml`, `tcs_manifest.json`).
- `tooling/`: Supporting libraries and knowledge bases (`PriceAction/`).
- `Skills/`: Detailed Agent execution specifications.
- `TCS_Prompts/`: Report generation templates.
- `Archive/`: Historical versions and upgrades.

## 🛠️ Technical Stack
- **Backend**: Python 3.12
- **Frontend**: D3.js (Visualization Sandbox)
- **Automation**: Playwright (Headless Browser), pywebview (UI Window)
- **Data**: TradingView (Screener API), Google Finance (Web Scraping)

## 🚀 Quick Start
1. **Install Dependencies**: `pip install -r requirements.txt && playwright install chromium`
2. **Launch Browser**: `python bin/tcs_browser.py`
3. **Fetch Index**: `python bin/fetch_index.py`

## 📏 Coding Standards
- **Paths**: Always use **relative paths** via `pathlib.Path`.
- **Output**: Every file write must be followed by a `stat` or `cat` verification.
- **Naming**: Use deterministic, technical identifiers (e.g., `IS_INSIDE_BAR` instead of `inside_bar_pattern`).
