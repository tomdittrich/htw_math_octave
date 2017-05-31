%8_2_a
disp("a")
disp("---------")
p1a=[2];
p1b=[1 0 -1];
[r1,xP1,g1]=residue(p1a,p1b)

%8_2_b
disp("b")
disp("---------")
p2a=[2 3];
p2b=[1 3 2];
[r2,xP2,g2]=residue(p2a,p2b)

%8_2_c
disp("c")
disp("---------")
p3a=[1 1 1 2];
p3b=[1 0 3 0 2];
[r3,xP3,g3]=residue(p3a,p3b)

%8_2_d
disp("d")
disp("---------")
p4a=[2 -14 14 30];
p4b=[1 0 -4];
[r4,xP4,g4]=residue(p4a,p4b)