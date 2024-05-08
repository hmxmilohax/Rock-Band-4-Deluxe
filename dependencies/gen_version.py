# add_devbuild.py
from pathlib import Path
import subprocess
import sys

commit = subprocess.check_output(["git", "describe", "--always", "--dirty"],text=True).strip("\n")
version = f"Nightly {commit}"

path = sys.argv[1]

f = open(path, "w")

f.write(f'"RB4DX {version}"')

f.close()