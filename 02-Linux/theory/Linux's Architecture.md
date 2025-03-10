# Linux Architecture - Where to Start

## Table of Contents
- [Introduction](#introduction)
- [Linux Kernel Architecture](#linux-kernel-architecture)
- [Operating System Components](#operating-system-components)
- [User Mode vs Kernel Mode](#user-mode-vs-kernel-mode)
- [Multi-user Systems and Security](#multi-user-systems-and-security)
- [Process and Multi-processing](#process-and-multi-processing)
- [Kernel Threads](#kernel-threads)
- [Kernel Preemption](#kernel-preemption)
- [Multiprocessor Support](#multiprocessor-support)
- [Kernel Modules](#kernel-modules)
- [File Systems](#file-systems)
- [Unix File Types](#unix-file-types)
- [File Permissions](#file-permissions)
- [System Calls for Files](#system-calls-for-files)
- [Synchronization and Concurrency](#synchronization-and-concurrency)
- [Process Management](#process-management)
- [Interprocess Communication (IPC)](#interprocess-communication-ipc)
- [Exploring the Kernel and Modules](#exploring-the-kernel-and-modules)

---

## Introduction
Linux was, initially, developed by Linus Torvalds with the goal of creating an open-source operating system based on UNIX. It inherited key UNIX concepts such as multitasking, security, and access permissions.

## Linux Kernel Architecture
The Linux kernel follows a **monolithic modular** model:
- The core manages essential functions.
- Modules can be dynamically loaded or unloaded, allowing additional functionalities without recompiling the kernel.

### Types of Kernels
| Kernel Type | Characteristics |
|------------|----------------|
| **Monolithic Kernel** | Integrates all essential OS functions within the core. Provides high performance but is complex to maintain. Example: Linux, FreeBSD. |
| **Microkernel** | Breaks system functions into separate processes running in user space. Improves modularity and security but may impact performance. Example: GNU Hurd, Minix. |
| **Hybrid Kernel** | A mix of both approaches to balance performance and modularity. Example: Windows NT, macOS XNU. |

## Operating System Components
1. **Kernel** - Manages hardware, processes, memory, and files.
2. **Process Manager** - Schedules CPU time among processes.
3. **Memory Manager** - Manages RAM and virtual memory.
4. **File System Manager** - Handles data storage and retrieval.
5. **I/O Manager** - Manages communication between OS and hardware.
6. **User & Permission Manager** - Handles multi-user access control.

## User Mode vs Kernel Mode
- **User Mode**: Programs run without direct hardware access. Requests to the kernel are made via system calls.
- **Kernel Mode**: The kernel has full control over the system.

## Multi-user Systems and Security
Linux supports multiple users and enhances security via:
- **Authentication** with login and passwords.
- **Permission control** for files and directories.
- **Process isolation** using User Mode and Kernel Mode.

## Process and Multi-processing
- Linux supports **multithreading** (Lightweight Processes - LWP).
- **Symmetric Multi-processing (SMP)** allows efficient CPU utilization.

## Kernel Threads
Kernel threads operate independently within the system core, optimizing resource management.

## Kernel Preemption
Introduced in Linux 2.6, kernel preemption allows better system responsiveness by enabling interruption of kernel tasks.

## Multiprocessor Support
Linux supports **SMP (Symmetric Multiprocessing)** and **NUMA (Non-Uniform Memory Access)**, optimizing CPU usage.

## Kernel Modules
Linux supports dynamic **kernel module loading**, reducing the need for custom compilations.

### Important Commands
```sh
lsmod         # List loaded modules
modinfo vfat  # Get module details
modprobe vfat # Load a module
rmmod vfat    # Unload a module
```

## File Systems
- **Ext2, Ext3, Ext4** - Traditional Linux file systems.
- **XFS** - Optimized for large-scale data.
- **Btrfs** - Supports snapshots and RAID.
- **VFS (Virtual File System)** - Allows multiple file system compatibility.

## Unix File Types
| File Type | Description |
|-----------|-------------|
| Regular File | Standard files (text, images, executables). |
| Directory | Contains other files and directories. |
| Symbolic Link | Shortcut to another file. |
| Block Device File | Represents storage devices (HDD, SSD). |
| Character Device File | Represents peripherals (keyboard, mouse). |
| FIFO (Named Pipe) | Used for inter-process communication. |
| Socket | Network communication. |

## File Permissions
| Access Type | User | Group | Others |
|------------|------|-------|--------|
| Read (r)  | ✓ | ✓ | ✗ |
| Write (w) | ✓ | ✗ | ✗ |
| Execute (x) | ✓ | ✓ | ✗ |

### Modifying Permissions
```sh
chmod 755 myfile.sh
chown user:group myfile.sh
```

## System Calls for Files
| System Call | Function |
|------------|----------|
| open() | Opens a file |
| read() | Reads file content |
| write() | Writes to file |
| close() | Closes a file |
| unlink() | Deletes a file |
| rename() | Renames a file |

## Synchronization and Concurrency
- **Semaphore** - Controls access to shared resources.
- **Spinlocks** - Waits for resource availability without blocking.
- **Deadlock Prevention** - Avoids circular resource waiting.

## Process Management
Each process in Unix has a **process descriptor** containing:
- CPU registers.
- Process state (running, waiting, etc.).
- Open files.

### Process Commands
```sh
ps -l          # List processes
kill -9 PID    # Terminate a process
```

## Interprocess Communication (IPC)
| IPC Method | Description |
|------------|-------------|
| Signals | Asynchronous notifications |
| Pipes | One-way communication between processes |
| Named Pipes (FIFO) | IPC between independent processes |
| Message Queues | Message passing between processes |
| Shared Memory | Processes share memory space |
| Sockets | Interprocess communication over a network |

## Exploring the Kernel and Modules
### Kernel Information
```sh
uname -r   # Show kernel version
uname -a   # Show full system details
```

### Module Management
```sh
lsmod          # List loaded modules
modinfo vfat   # Get module details
modprobe vfat  # Load a module
rmmod vfat     # Remove a module
```

### Kernel Logs
```sh
dmesg | tail -20  # View recent kernel logs
dmesg | grep error  # Filter error messages
```

---
### Summary
Mastering the Linux kernel and system architecture enables better performance tuning, troubleshooting, and security administration. Understanding file systems, process management, and kernel modules is crucial for system administrators and power users.

---

This document provides a comprehensive guide to Linux architecture, covering kernel design, system components, process management, security, and more.
