"Testing partition1";
partition1 (4, []) = ([],[]);
partition1 (5, [5, 3, 10, 2, 7, 4, 6]) = ([3,2,4],[5,10,7,6]);
partition1 (2, [2, 1, 6, 10, 8, 1]) = ([1,1],[2,6,10,8]);
partition1 (10, [10, 1, 2, 3, 4, 5, 6]) = ([1,2,3,4,5,6],[10]);
partition1 (5, [5, 5, 5]) = ([], [5, 5, 5]);

