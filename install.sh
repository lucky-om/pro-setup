#!/usr/bin/env python3
# -------------------------------------------------------
# Author : Lucky
# Version: 1.0
# Mark   : © Lucky Creations - All Rights Reserved
# -------------------------------------------------------

import time
import sys
import os

# BLOCK ASCII BANNER
banner = r"""
 _       _    _      _____   _   __ __     __
| |     | |  | |  /  _____| | | / / \ \   / /
| |     | |  | | | |        | '  /   \ \_/ / 
| |     | |  | | | |        |  <      \   /  
| |____ | |__| | | | _____  | .  \     | |   
|______| \____/   \ _____ | |_| \_\    |_|   
"""

# Clear screen
os.system("cls" if os.name == "nt" else "clear")

print(banner)
print("Version: 1.0\n")
print("Welcome to Lucky's Installer!\n")

# INSTALLATION ANIMATION
def spinner_animation(duration=5):
    spinner = ['|', '/', '-', '\\']
    end_time = time.time() + duration
    while time.time() < end_time:
        for frame in spinner:
            sys.stdout.write(f"\rInstalling... {frame}")
            sys.stdout.flush()
            time.sleep(0.1)

def dots_animation(text, count=5):
    for i in range(count):
        sys.stdout.write(f"\r{text}{'.' * (i % 4)}")
        sys.stdout.flush()
        time.sleep(0.5)

# Run animations
spinner_animation(3)
dots_animation("Finalizing Installation", 8)

print("\n\n✅ Installation Complete!")
print("🎯 Powered by LUCKY v1.0")
