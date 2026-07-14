# System Health Logger 🖥️🔋

A lightweight Linux automated scripting project designed to fetch, format, and log essential system hardware telemetry. This repository serves as a practical implementation of fundamental Linux administration tools and a secure Git/GitHub version control workflow via SSH.

---

## 🚀 Features
* **Automated Data Retrieval:** Pulls live system stats with a single script execution.
* **Storage Analysis:** Displays active disk usage statistics for the root file system.
* **Memory Diagnostics:** Tracks real-time RAM usage configurations.
* **Timestamped Reporting:** Formats all logs with precise generation dates.

---

## 🛠️ Linux Commands Used
This project utilizes core Linux terminal utilities:
* `mkdir` & `cd` - Directory structure initialization.
* `touch` & `nano` - File creation and inline scripting.
* `chmod +x` - Modifying file permissions to grant execution rights.
* `df -h` - Checking disk space using human-readable metrics.
* `free -h` - Analyzing total, used, and available physical memory.
* `>>` & `>` - Stream redirection for appending and writing data to files.

---

## 📦 How to Run it Locally

### 1. Clone the repository via SSH
```bash
git clone git@github.com:YOUR-USERNAME/system-monitor.git
cd system-monitor
