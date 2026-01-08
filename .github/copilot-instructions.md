# Cybersecurity Coursework - AI Agent Instructions

## Project Overview
This repository contains cybersecurity coursework and projects for the 2025-26 academic year. Assignments focus on security concepts, vulnerability analysis, cryptography, network security, and hands-on security tools.

## Development Environment

### Required Tools
- Python 3.x for scripting and security tools
- Network analysis tools (Wireshark, nmap, netcat)
- Virtual machines for safe testing environments
- Git for version control and assignment submission

### Project Structure
```
/
├── assignments/          # Individual assignment folders
├── labs/                # Lab exercises and reports
├── projects/            # Larger security projects
├── scripts/             # Security scripts and tools
└── notes/               # Course notes and references
```

## Key Conventions

### Security Best Practices
- **Never commit sensitive data**: No passwords, API keys, private keys, or real vulnerability data
- **Use placeholder data**: For demonstrations, use sanitized/fictional data only
- **Document assumptions**: Clearly state what environment/context security code assumes
- **Ethical considerations**: All security tools/scripts must include usage warnings and ethical guidelines

### Code Standards
- **Python scripts**: Use `argparse` for CLI tools, include `--help` documentation
- **Comments**: Explain the security concept being demonstrated, not just what the code does
- **Error handling**: Security tools should fail safely and provide clear error messages
- **Logging**: Include verbose mode (`-v`) for debugging security operations

### Assignment Workflow
1. Each assignment gets its own directory: `assignments/assignment-name/`
2. Include a `README.md` explaining the security concept and approach
3. Separate source code from reports/documentation
4. Use `.gitignore` to exclude binary files, VM images, large packet captures

### Documentation Requirements
- **Lab reports**: Include methodology, findings, screenshots (sanitized), and analysis
- **Code documentation**: Explain security mechanisms, potential vulnerabilities addressed
- **References**: Cite security standards (NIST, OWASP) and CVE numbers where applicable

## Common Patterns

### Security Script Template
```python
#!/usr/bin/env python3
"""
Description: [Security tool purpose]
Usage: python script.py [options]
WARNING: For educational purposes only. Unauthorized use is illegal.
"""
import argparse
import logging

def main():
    parser = argparse.ArgumentParser(description="...")
    parser.add_argument('-v', '--verbose', action='store_true')
    args = parser.parse_args()
    
    if args.verbose:
        logging.basicConfig(level=logging.DEBUG)
```

### Vulnerability Analysis Format
When documenting vulnerabilities:
- **CVE/CWE reference** if applicable
- **Description**: What the vulnerability is
- **Impact**: Potential consequences
- **Mitigation**: How to fix or prevent
- **Proof of concept**: Safe demonstration (if appropriate)

## Testing & Validation

### Safe Testing
- Use isolated VMs or containers for testing exploits
- Never test on production systems or networks without authorization
- Document the testing environment in reports

### Code Validation
- Test security scripts with both valid and malicious inputs
- Verify tools handle edge cases and malformed data
- Include sample outputs in documentation

## External Resources
- Follow OWASP guidelines for web security projects
- Reference NIST frameworks for security controls
- Use CVE database for vulnerability research
- Consult course materials and textbook for theoretical foundation

## Submission Guidelines
- Commit working code with clear commit messages
- Include all required documentation before pushing
- Tag submissions with assignment identifiers
- Verify no sensitive information is included before pushing

---
*For educational and authorized security research only. Always follow ethical guidelines and legal requirements.*
