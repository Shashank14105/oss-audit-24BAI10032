# OSS Audit — 24BAI10032

> **Open Source Software Audit** | VITyarthi | OSS NGMC Course

---

## Student Information

| Field | Details |
|---|---|
| **Name** | Shashank Kumar |
| **Registration Number** | 24BAI10032 |
| **Slot** | B22 |
| **Course** | Open Source Software (NGMC) |
| **Date of Submission** | 31/03/2026 |

---

## Chosen Software

**Python**

---

## Repository Structure
```
oss-audit-[24BAI10032]/
├── README.md
├── script1.sh
├── script2.sh
├── script3.sh
├── script4.sh
└── script5.sh
```

---

## Scripts Overview


### Script 1 — System Information Reporter

**File:** `script1.sh`

**Description:** Displays system details such as Linux distribution, kernel version, current user, uptime, memory usage, and date/time.

**Concepts Used:** Variables, `echo`, command substitution (`$()`), basic Linux commands.

---

### Script 2 — Python Package Inspector

**File:** `script2.sh`
**Description:** Checks whether Python is installed on the system, retrieves its version, and prints relevant package details. Also includes conditional logic to describe Python’s purpose.
**Concepts Used:** `if-then-else`, `case` statement, `dpkg -l`, `grep`.

---

### Script 3 — Disk and Permission Auditor

**File:** `script3.sh`
**Description:** Iterates through important system directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`) and displays their permissions, ownership, and disk usage. Also verifies the Python installation directory.
**Concepts Used:** `for` loop, `du`, `ls -ld`, `awk`, `cut`.

---

### Script 4 — Log File Analyzer

**File:** `script4.sh`
**Description:** Reads a log file line by line, counts occurrences of a specified keyword (default: `error`), and prints a summary along with the last 5 matching lines.
**Concepts Used:** `while read` loop, `if-then`, counter variables, command-line arguments (`$1`, `$2`), `grep`, `tail`.

---

### Script 5 — Open Source Manifesto Generator

**File:** `script5.sh`
**Description:** Interactively asks the user three questions and generates a personalized open-source philosophy statement. The output is saved to a `.txt` file named after the current user.
**Concepts Used:** `read` for user input, string concatenation, file writing (`>` and `>>`), `date` command.

---

## How to Run the Scripts

### Prerequisites

* Linux environment (WSL Ubuntu used in this project)
* Bash shell (`bash --version`)
* Python installed (for Script 2)

---

### Step 1 — Clone the Repository

```bash
git clone https://github.com/Shashank14105/oss-audit-24BAI10032.git
cd oss-audit-24BAI10032
```

---

### Step 2 — Make Scripts Executable

```bash
chmod +x *.sh
```

---

### Step 3 — Run Each Script

**Script 1 — System Information Reporter**

```bash
./script1.sh
```

---

**Script 2 — Python Package Inspector**

```bash
./script2.sh
```

---

**Script 3 — Disk Auditor**

```bash
./script3.sh
```

---

**Script 4 — Log Analyzer**

```bash
# Default keyword
./script4.sh /var/log/syslog

# Custom keyword
./script4.sh /var/log/syslog warning
```

---

**Script 5 — Manifesto Generator**

```bash
./script5.sh
```

---

## Dependencies

| Script   | Dependencies                | Availability  |
| -------- | --------------------------- | ------------- |
| Script 1 | `uname`, `uptime`, `whoami` | Pre-installed |
| Script 2 | `dpkg`, `grep`, `python3`   | Pre-installed |
| Script 3 | `du`, `ls`, `awk`, `cut`    | Pre-installed |
| Script 4 | `grep`, `tail`              | Pre-installed |
| Script 5 | `date`, `cat`               | Pre-installed |

>  All scripts are written in Bash and require only a standard Linux environment.

---

## License

This project was submitted as part of the **Open Source Software Course at VIT Bhopal University**.
All scripts and documentation are original work by **SHASHANK KUMAR**.

---
