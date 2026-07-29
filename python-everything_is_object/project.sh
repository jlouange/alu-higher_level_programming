#!/bin/bash


cat > 0-answer.txt <<'EOF'
type
EOF

cat > 1-answer.txt <<'EOF'
id
EOF

cat > 2-answer.txt <<'EOF'
No
EOF

cat > 3-answer.txt <<'EOF'
Yes
EOF

cat > 4-answer.txt <<'EOF'
Yes
EOF

cat > 5-answer.txt <<'EOF'
No
EOF

cat > 6-answer.txt <<'EOF'
True
EOF

cat > 7-answer.txt <<'EOF'
True
EOF

cat > 8-answer.txt <<'EOF'
True
EOF

cat > 9-answer.txt <<'EOF'
True
EOF

cat > 10-answer.txt <<'EOF'
True
EOF

cat > 11-answer.txt <<'EOF'
False
EOF

cat > 12-answer.txt <<'EOF'
True
EOF

cat > 13-answer.txt <<'EOF'
True
EOF

cat > 14-answer.txt <<'EOF'
[1, 2, 3, 4]
EOF

cat > 15-answer.txt <<'EOF'
[1, 2, 3]
EOF

cat > 16-answer.txt <<'EOF'
1
EOF

cat > 17-answer.txt <<'EOF'
[1, 2, 3, 4]
EOF

cat > 18-answer.txt <<'EOF'
[1, 2, 3]
EOF

cat > 20-answer.txt <<'EOF'
Yes
EOF

cat > 21-answer.txt <<'EOF'
Yes
EOF

cat > 22-answer.txt <<'EOF'
No
EOF

cat > 23-answer.txt <<'EOF'
Yes
EOF

cat > 24-answer.txt <<'EOF'
False
EOF

cat > 25-answer.txt <<'EOF'
True
EOF

cat > 26-answer.txt <<'EOF'
True
EOF

cat > 27-answer.txt <<'EOF'
No
EOF

cat > 28-answer.txt <<'EOF'
Yes
EOF


cat > 19-copy_list.py <<'EOF'
#!/usr/bin/python3
def copy_list(l):
    return l[:]
EOF

chmod +x 19-copy_list.py

cat > README.md <<'EOF'
# Python - Everything is object

This project explores how Python handles objects, references, aliases,
mutable and immutable types, identity, equality, and function arguments.

## Concepts

- Objects
- Types
- IDs
- References
- Assignment
- Aliasing
- Mutable objects
- Immutable objects
- Identity
- Equality
- List copying
- Tuples
- Function argument passing
EOF

chmod +x README.md

