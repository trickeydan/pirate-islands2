#!/usr/bin/env python3
names = ["North","South","East","West"]
markers = [28, 30, 29, 31, 36, 38, 37, 39, 32, 34, 33, 35, 40, 42, 41, 43]

for name,(x,y) in zip(names,[(4,2),(4,6),(6,4),(2,4)]):
    positions = [(x,y-0.25),(x,y+0.38),(x+.35,y+0.05),(x-.35,y+0.05)]
    print(f"<!-- {name} Column -->")
    for face_name, pos in zip(names,positions):
        print(f'<text x="{pos[0]:0.2f}" y="{pos[1]:0.2f}">{markers.pop(0)}</text> <!--{face_name}-->')
    print('\n')
