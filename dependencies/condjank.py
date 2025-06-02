from itertools import product

flags = [
    ("$tiltsens", "Increased Tilt Sensitivity"),
    ("$nood", "Overdrive Gain"),
    ("$practiceod", "OD in Practice"),
    ("$syncspeeds", "Sync Difficulty Speeds"),
]

print("{cond")
for values in product([True, False], repeat=4):
    conditions = []
    outputs = []
    for (var, label), val in zip(flags, values):
        if val:
            conditions.append(f"{var}")
            status = "ON" if var != "$nood" else "OFF"
        else:
            conditions.append(f"{{! {var}}}")
            status = "OFF" if var != "$nood" else "ON"
        if var == "$nood":
            status = "OFF" if val else "ON"
        outputs.append(f"'{label}: {status}'")
    print(f"  ({' '.join(['{&&'] + conditions + ['}'])}")
    print("    {$this setup_confirm_actions a (")
    for line in outputs:
        print(f"      {line}")
    print("    )}")
    print("  )")
print("}")
