Project A:
%% The answers to questions that cannot be answered in code can be found here. %%

    Question 1:

For n = 50 I got the following results:
       w
    0.0200
    0.0493
    0.0836
    0.1126
    0.1205
    0.0923
    0.0229
   -0.0768
   -0.1825
   -0.2672
   -0.3133
   -0.3182
   -0.2911
   -0.2459
   -0.1950
   -0.1459
   -0.1021
   -0.0633
   -0.0272
    0.0095
    0.0512
    0.1033
    0.1719
    0.2631
    0.3803
    0.5199
    0.6649
    0.7804
    0.8164
    0.7228
    0.4767
    0.1046
   -0.3170
   -0.6895
   -0.9351
   -1.0254
   -0.9812
   -0.8510
   -0.6851
   -0.5199
   -0.3740
   -0.2522
   -0.1511
   -0.0630
    0.0213
    0.1121
    0.2206
    0.3588
    0.5371
    0.7606


    Question 2:
    
     D0y         w
    0.0200    0.0200
    0.0493    0.0493
    0.0836    0.0836
    0.1126    0.1126
    0.1205    0.1205
    0.0923    0.0923
    0.0229    0.0229
   -0.0768   -0.0768
   -0.1825   -0.1825
   -0.2672   -0.2672
   -0.3133   -0.3133
   -0.3182   -0.3182
   -0.2911   -0.2911
   -0.2459   -0.2459
   -0.1950   -0.1950
   -0.1459   -0.1459
   -0.1021   -0.1021
   -0.0633   -0.0633
   -0.0272   -0.0272
    0.0095    0.0095
    0.0512    0.0512
    0.1033    0.1033
    0.1719    0.1719
    0.2631    0.2631
    0.3803    0.3803
    0.5199    0.5199
    0.6649    0.6649
    0.7804    0.7804
    0.8164    0.8164
    0.7228    0.7228
    0.4767    0.4767
    0.1046    0.1046
   -0.3170   -0.3170
   -0.6895   -0.6895
   -0.9351   -0.9351
   -1.0254   -1.0254
   -0.9812   -0.9812
   -0.8510   -0.8510
   -0.6851   -0.6851
   -0.5199   -0.5199
   -0.3740   -0.3740
   -0.2522   -0.2522
   -0.1511   -0.1511
   -0.0630   -0.0630
    0.0213    0.0213
    0.1121    0.1121
    0.2206    0.2206
    0.3588    0.3588
    0.5371    0.5371
    0.7606    0.7606

The values of D0y and w are the exact same ones, thus D0y = w.


    Question 5:

D0 =

     0     1     0     0     0     0     0     0     0    -1
    -1     0     1     0     0     0     0     0     0     0
     0    -1     0     1     0     0     0     0     0     0
     0     0    -1     0     1     0     0     0     0     0
     0     0     0    -1     0     1     0     0     0     0
     0     0     0     0    -1     0     1     0     0     0
     0     0     0     0     0    -1     0     1     0     0
     0     0     0     0     0     0    -1     0     1     0
     0     0     0     0     0     0     0    -1     0     1
     1     0     0     0     0     0     0     0    -1     0


D0D0 =

    -2     0     1     0     0     0     0     0     1     0
     0    -2     0     1     0     0     0     0     0     1
     1     0    -2     0     1     0     0     0     0     0
     0     1     0    -2     0     1     0     0     0     0
     0     0     1     0    -2     0     1     0     0     0
     0     0     0     1     0    -2     0     1     0     0
     0     0     0     0     1     0    -2     0     1     0
     0     0     0     0     0     1     0    -2     0     1
     1     0     0     0     0     0     1     0    -2     0
     0     1     0     0     0     0     0     1     0    -2

The matrix of D0D0 has one more nonzero diagonal than the matrix of D0. 

As for how well it calculates f''(x), well it only
gives a good acurate for i values that are close to n.
As seen below onlt the last three calculations can be said
to be somewhat accurate for n = 19.

    D0D0y     f''(x)
    0.0016    1.0000
   -0.0042    0.0158
   -0.0379   -2.3968
   -0.0583   -1.8851
   -0.0041    0.4789
    0.0668    0.9649
    0.0841    0.5723
    0.0844    0.3704
    0.1278    0.4920
    0.1953    0.8812
    0.0718    0.7885
   -0.4126   -1.2427
   -0.7640   -2.6813
   -0.3857   -0.5781
    0.2677    0.9529
    0.4960    0.7763
    0.4207    0.4311
    0.4425    0.3906
    0.6665    0.6693 


    Question 6:

As can be seen from the images named partAQuestion6*.jpg as the order of differentiation
increases the bigger the n gets, and therefore h(h=6pi/n) gets small, the more accurate
the approximate value is to the real value. For n = 1000 and n = 15000 there seems to be
almost no change, which might be due to how the computer calculates very small numbers. 

