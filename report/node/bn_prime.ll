inline.NumInlined: 14
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bignum_st = type { ptr, i32, i32, i32, i32 }

@_bignum_small_prime_factors = internal constant %struct.bignum_st { ptr @small_prime_factors, i32 17, i32 17, i32 0, i32 2 }, align 8
@.str = private unnamed_addr constant [48 x i8] c"../../deps/openssl/openssl/crypto/bn/bn_prime.c\00", align 1
@__func__.BN_generate_prime_ex2 = private unnamed_addr constant [22 x i8] c"BN_generate_prime_ex2\00", align 1
@small_prime_factors = internal constant [17 x i64] [i64 -4309782995084712991, i64 8148734346248676703, i64 -7646510132918400926, i64 4517730358157349163, i64 7734177320850080899, i64 757968232112212081, i64 8633734662503670026, i64 -2640354292540616525, i64 5389355995458437739, i64 -1479623847028275053, i64 -2619631085558135356, i64 -2856941152863598706, i64 3364315195482710596, i64 -4925511846872794390, i64 3957848698924598975, i64 6856453772018472743, i64 6065], align 16
@primes = internal unnamed_addr constant [2048 x i16] [i16 2, i16 3, i16 5, i16 7, i16 11, i16 13, i16 17, i16 19, i16 23, i16 29, i16 31, i16 37, i16 41, i16 43, i16 47, i16 53, i16 59, i16 61, i16 67, i16 71, i16 73, i16 79, i16 83, i16 89, i16 97, i16 101, i16 103, i16 107, i16 109, i16 113, i16 127, i16 131, i16 137, i16 139, i16 149, i16 151, i16 157, i16 163, i16 167, i16 173, i16 179, i16 181, i16 191, i16 193, i16 197, i16 199, i16 211, i16 223, i16 227, i16 229, i16 233, i16 239, i16 241, i16 251, i16 257, i16 263, i16 269, i16 271, i16 277, i16 281, i16 283, i16 293, i16 307, i16 311, i16 313, i16 317, i16 331, i16 337, i16 347, i16 349, i16 353, i16 359, i16 367, i16 373, i16 379, i16 383, i16 389, i16 397, i16 401, i16 409, i16 419, i16 421, i16 431, i16 433, i16 439, i16 443, i16 449, i16 457, i16 461, i16 463, i16 467, i16 479, i16 487, i16 491, i16 499, i16 503, i16 509, i16 521, i16 523, i16 541, i16 547, i16 557, i16 563, i16 569, i16 571, i16 577, i16 587, i16 593, i16 599, i16 601, i16 607, i16 613, i16 617, i16 619, i16 631, i16 641, i16 643, i16 647, i16 653, i16 659, i16 661, i16 673, i16 677, i16 683, i16 691, i16 701, i16 709, i16 719, i16 727, i16 733, i16 739, i16 743, i16 751, i16 757, i16 761, i16 769, i16 773, i16 787, i16 797, i16 809, i16 811, i16 821, i16 823, i16 827, i16 829, i16 839, i16 853, i16 857, i16 859, i16 863, i16 877, i16 881, i16 883, i16 887, i16 907, i16 911, i16 919, i16 929, i16 937, i16 941, i16 947, i16 953, i16 967, i16 971, i16 977, i16 983, i16 991, i16 997, i16 1009, i16 1013, i16 1019, i16 1021, i16 1031, i16 1033, i16 1039, i16 1049, i16 1051, i16 1061, i16 1063, i16 1069, i16 1087, i16 1091, i16 1093, i16 1097, i16 1103, i16 1109, i16 1117, i16 1123, i16 1129, i16 1151, i16 1153, i16 1163, i16 1171, i16 1181, i16 1187, i16 1193, i16 1201, i16 1213, i16 1217, i16 1223, i16 1229, i16 1231, i16 1237, i16 1249, i16 1259, i16 1277, i16 1279, i16 1283, i16 1289, i16 1291, i16 1297, i16 1301, i16 1303, i16 1307, i16 1319, i16 1321, i16 1327, i16 1361, i16 1367, i16 1373, i16 1381, i16 1399, i16 1409, i16 1423, i16 1427, i16 1429, i16 1433, i16 1439, i16 1447, i16 1451, i16 1453, i16 1459, i16 1471, i16 1481, i16 1483, i16 1487, i16 1489, i16 1493, i16 1499, i16 1511, i16 1523, i16 1531, i16 1543, i16 1549, i16 1553, i16 1559, i16 1567, i16 1571, i16 1579, i16 1583, i16 1597, i16 1601, i16 1607, i16 1609, i16 1613, i16 1619, i16 1621, i16 1627, i16 1637, i16 1657, i16 1663, i16 1667, i16 1669, i16 1693, i16 1697, i16 1699, i16 1709, i16 1721, i16 1723, i16 1733, i16 1741, i16 1747, i16 1753, i16 1759, i16 1777, i16 1783, i16 1787, i16 1789, i16 1801, i16 1811, i16 1823, i16 1831, i16 1847, i16 1861, i16 1867, i16 1871, i16 1873, i16 1877, i16 1879, i16 1889, i16 1901, i16 1907, i16 1913, i16 1931, i16 1933, i16 1949, i16 1951, i16 1973, i16 1979, i16 1987, i16 1993, i16 1997, i16 1999, i16 2003, i16 2011, i16 2017, i16 2027, i16 2029, i16 2039, i16 2053, i16 2063, i16 2069, i16 2081, i16 2083, i16 2087, i16 2089, i16 2099, i16 2111, i16 2113, i16 2129, i16 2131, i16 2137, i16 2141, i16 2143, i16 2153, i16 2161, i16 2179, i16 2203, i16 2207, i16 2213, i16 2221, i16 2237, i16 2239, i16 2243, i16 2251, i16 2267, i16 2269, i16 2273, i16 2281, i16 2287, i16 2293, i16 2297, i16 2309, i16 2311, i16 2333, i16 2339, i16 2341, i16 2347, i16 2351, i16 2357, i16 2371, i16 2377, i16 2381, i16 2383, i16 2389, i16 2393, i16 2399, i16 2411, i16 2417, i16 2423, i16 2437, i16 2441, i16 2447, i16 2459, i16 2467, i16 2473, i16 2477, i16 2503, i16 2521, i16 2531, i16 2539, i16 2543, i16 2549, i16 2551, i16 2557, i16 2579, i16 2591, i16 2593, i16 2609, i16 2617, i16 2621, i16 2633, i16 2647, i16 2657, i16 2659, i16 2663, i16 2671, i16 2677, i16 2683, i16 2687, i16 2689, i16 2693, i16 2699, i16 2707, i16 2711, i16 2713, i16 2719, i16 2729, i16 2731, i16 2741, i16 2749, i16 2753, i16 2767, i16 2777, i16 2789, i16 2791, i16 2797, i16 2801, i16 2803, i16 2819, i16 2833, i16 2837, i16 2843, i16 2851, i16 2857, i16 2861, i16 2879, i16 2887, i16 2897, i16 2903, i16 2909, i16 2917, i16 2927, i16 2939, i16 2953, i16 2957, i16 2963, i16 2969, i16 2971, i16 2999, i16 3001, i16 3011, i16 3019, i16 3023, i16 3037, i16 3041, i16 3049, i16 3061, i16 3067, i16 3079, i16 3083, i16 3089, i16 3109, i16 3119, i16 3121, i16 3137, i16 3163, i16 3167, i16 3169, i16 3181, i16 3187, i16 3191, i16 3203, i16 3209, i16 3217, i16 3221, i16 3229, i16 3251, i16 3253, i16 3257, i16 3259, i16 3271, i16 3299, i16 3301, i16 3307, i16 3313, i16 3319, i16 3323, i16 3329, i16 3331, i16 3343, i16 3347, i16 3359, i16 3361, i16 3371, i16 3373, i16 3389, i16 3391, i16 3407, i16 3413, i16 3433, i16 3449, i16 3457, i16 3461, i16 3463, i16 3467, i16 3469, i16 3491, i16 3499, i16 3511, i16 3517, i16 3527, i16 3529, i16 3533, i16 3539, i16 3541, i16 3547, i16 3557, i16 3559, i16 3571, i16 3581, i16 3583, i16 3593, i16 3607, i16 3613, i16 3617, i16 3623, i16 3631, i16 3637, i16 3643, i16 3659, i16 3671, i16 3673, i16 3677, i16 3691, i16 3697, i16 3701, i16 3709, i16 3719, i16 3727, i16 3733, i16 3739, i16 3761, i16 3767, i16 3769, i16 3779, i16 3793, i16 3797, i16 3803, i16 3821, i16 3823, i16 3833, i16 3847, i16 3851, i16 3853, i16 3863, i16 3877, i16 3881, i16 3889, i16 3907, i16 3911, i16 3917, i16 3919, i16 3923, i16 3929, i16 3931, i16 3943, i16 3947, i16 3967, i16 3989, i16 4001, i16 4003, i16 4007, i16 4013, i16 4019, i16 4021, i16 4027, i16 4049, i16 4051, i16 4057, i16 4073, i16 4079, i16 4091, i16 4093, i16 4099, i16 4111, i16 4127, i16 4129, i16 4133, i16 4139, i16 4153, i16 4157, i16 4159, i16 4177, i16 4201, i16 4211, i16 4217, i16 4219, i16 4229, i16 4231, i16 4241, i16 4243, i16 4253, i16 4259, i16 4261, i16 4271, i16 4273, i16 4283, i16 4289, i16 4297, i16 4327, i16 4337, i16 4339, i16 4349, i16 4357, i16 4363, i16 4373, i16 4391, i16 4397, i16 4409, i16 4421, i16 4423, i16 4441, i16 4447, i16 4451, i16 4457, i16 4463, i16 4481, i16 4483, i16 4493, i16 4507, i16 4513, i16 4517, i16 4519, i16 4523, i16 4547, i16 4549, i16 4561, i16 4567, i16 4583, i16 4591, i16 4597, i16 4603, i16 4621, i16 4637, i16 4639, i16 4643, i16 4649, i16 4651, i16 4657, i16 4663, i16 4673, i16 4679, i16 4691, i16 4703, i16 4721, i16 4723, i16 4729, i16 4733, i16 4751, i16 4759, i16 4783, i16 4787, i16 4789, i16 4793, i16 4799, i16 4801, i16 4813, i16 4817, i16 4831, i16 4861, i16 4871, i16 4877, i16 4889, i16 4903, i16 4909, i16 4919, i16 4931, i16 4933, i16 4937, i16 4943, i16 4951, i16 4957, i16 4967, i16 4969, i16 4973, i16 4987, i16 4993, i16 4999, i16 5003, i16 5009, i16 5011, i16 5021, i16 5023, i16 5039, i16 5051, i16 5059, i16 5077, i16 5081, i16 5087, i16 5099, i16 5101, i16 5107, i16 5113, i16 5119, i16 5147, i16 5153, i16 5167, i16 5171, i16 5179, i16 5189, i16 5197, i16 5209, i16 5227, i16 5231, i16 5233, i16 5237, i16 5261, i16 5273, i16 5279, i16 5281, i16 5297, i16 5303, i16 5309, i16 5323, i16 5333, i16 5347, i16 5351, i16 5381, i16 5387, i16 5393, i16 5399, i16 5407, i16 5413, i16 5417, i16 5419, i16 5431, i16 5437, i16 5441, i16 5443, i16 5449, i16 5471, i16 5477, i16 5479, i16 5483, i16 5501, i16 5503, i16 5507, i16 5519, i16 5521, i16 5527, i16 5531, i16 5557, i16 5563, i16 5569, i16 5573, i16 5581, i16 5591, i16 5623, i16 5639, i16 5641, i16 5647, i16 5651, i16 5653, i16 5657, i16 5659, i16 5669, i16 5683, i16 5689, i16 5693, i16 5701, i16 5711, i16 5717, i16 5737, i16 5741, i16 5743, i16 5749, i16 5779, i16 5783, i16 5791, i16 5801, i16 5807, i16 5813, i16 5821, i16 5827, i16 5839, i16 5843, i16 5849, i16 5851, i16 5857, i16 5861, i16 5867, i16 5869, i16 5879, i16 5881, i16 5897, i16 5903, i16 5923, i16 5927, i16 5939, i16 5953, i16 5981, i16 5987, i16 6007, i16 6011, i16 6029, i16 6037, i16 6043, i16 6047, i16 6053, i16 6067, i16 6073, i16 6079, i16 6089, i16 6091, i16 6101, i16 6113, i16 6121, i16 6131, i16 6133, i16 6143, i16 6151, i16 6163, i16 6173, i16 6197, i16 6199, i16 6203, i16 6211, i16 6217, i16 6221, i16 6229, i16 6247, i16 6257, i16 6263, i16 6269, i16 6271, i16 6277, i16 6287, i16 6299, i16 6301, i16 6311, i16 6317, i16 6323, i16 6329, i16 6337, i16 6343, i16 6353, i16 6359, i16 6361, i16 6367, i16 6373, i16 6379, i16 6389, i16 6397, i16 6421, i16 6427, i16 6449, i16 6451, i16 6469, i16 6473, i16 6481, i16 6491, i16 6521, i16 6529, i16 6547, i16 6551, i16 6553, i16 6563, i16 6569, i16 6571, i16 6577, i16 6581, i16 6599, i16 6607, i16 6619, i16 6637, i16 6653, i16 6659, i16 6661, i16 6673, i16 6679, i16 6689, i16 6691, i16 6701, i16 6703, i16 6709, i16 6719, i16 6733, i16 6737, i16 6761, i16 6763, i16 6779, i16 6781, i16 6791, i16 6793, i16 6803, i16 6823, i16 6827, i16 6829, i16 6833, i16 6841, i16 6857, i16 6863, i16 6869, i16 6871, i16 6883, i16 6899, i16 6907, i16 6911, i16 6917, i16 6947, i16 6949, i16 6959, i16 6961, i16 6967, i16 6971, i16 6977, i16 6983, i16 6991, i16 6997, i16 7001, i16 7013, i16 7019, i16 7027, i16 7039, i16 7043, i16 7057, i16 7069, i16 7079, i16 7103, i16 7109, i16 7121, i16 7127, i16 7129, i16 7151, i16 7159, i16 7177, i16 7187, i16 7193, i16 7207, i16 7211, i16 7213, i16 7219, i16 7229, i16 7237, i16 7243, i16 7247, i16 7253, i16 7283, i16 7297, i16 7307, i16 7309, i16 7321, i16 7331, i16 7333, i16 7349, i16 7351, i16 7369, i16 7393, i16 7411, i16 7417, i16 7433, i16 7451, i16 7457, i16 7459, i16 7477, i16 7481, i16 7487, i16 7489, i16 7499, i16 7507, i16 7517, i16 7523, i16 7529, i16 7537, i16 7541, i16 7547, i16 7549, i16 7559, i16 7561, i16 7573, i16 7577, i16 7583, i16 7589, i16 7591, i16 7603, i16 7607, i16 7621, i16 7639, i16 7643, i16 7649, i16 7669, i16 7673, i16 7681, i16 7687, i16 7691, i16 7699, i16 7703, i16 7717, i16 7723, i16 7727, i16 7741, i16 7753, i16 7757, i16 7759, i16 7789, i16 7793, i16 7817, i16 7823, i16 7829, i16 7841, i16 7853, i16 7867, i16 7873, i16 7877, i16 7879, i16 7883, i16 7901, i16 7907, i16 7919, i16 7927, i16 7933, i16 7937, i16 7949, i16 7951, i16 7963, i16 7993, i16 8009, i16 8011, i16 8017, i16 8039, i16 8053, i16 8059, i16 8069, i16 8081, i16 8087, i16 8089, i16 8093, i16 8101, i16 8111, i16 8117, i16 8123, i16 8147, i16 8161, i16 8167, i16 8171, i16 8179, i16 8191, i16 8209, i16 8219, i16 8221, i16 8231, i16 8233, i16 8237, i16 8243, i16 8263, i16 8269, i16 8273, i16 8287, i16 8291, i16 8293, i16 8297, i16 8311, i16 8317, i16 8329, i16 8353, i16 8363, i16 8369, i16 8377, i16 8387, i16 8389, i16 8419, i16 8423, i16 8429, i16 8431, i16 8443, i16 8447, i16 8461, i16 8467, i16 8501, i16 8513, i16 8521, i16 8527, i16 8537, i16 8539, i16 8543, i16 8563, i16 8573, i16 8581, i16 8597, i16 8599, i16 8609, i16 8623, i16 8627, i16 8629, i16 8641, i16 8647, i16 8663, i16 8669, i16 8677, i16 8681, i16 8689, i16 8693, i16 8699, i16 8707, i16 8713, i16 8719, i16 8731, i16 8737, i16 8741, i16 8747, i16 8753, i16 8761, i16 8779, i16 8783, i16 8803, i16 8807, i16 8819, i16 8821, i16 8831, i16 8837, i16 8839, i16 8849, i16 8861, i16 8863, i16 8867, i16 8887, i16 8893, i16 8923, i16 8929, i16 8933, i16 8941, i16 8951, i16 8963, i16 8969, i16 8971, i16 8999, i16 9001, i16 9007, i16 9011, i16 9013, i16 9029, i16 9041, i16 9043, i16 9049, i16 9059, i16 9067, i16 9091, i16 9103, i16 9109, i16 9127, i16 9133, i16 9137, i16 9151, i16 9157, i16 9161, i16 9173, i16 9181, i16 9187, i16 9199, i16 9203, i16 9209, i16 9221, i16 9227, i16 9239, i16 9241, i16 9257, i16 9277, i16 9281, i16 9283, i16 9293, i16 9311, i16 9319, i16 9323, i16 9337, i16 9341, i16 9343, i16 9349, i16 9371, i16 9377, i16 9391, i16 9397, i16 9403, i16 9413, i16 9419, i16 9421, i16 9431, i16 9433, i16 9437, i16 9439, i16 9461, i16 9463, i16 9467, i16 9473, i16 9479, i16 9491, i16 9497, i16 9511, i16 9521, i16 9533, i16 9539, i16 9547, i16 9551, i16 9587, i16 9601, i16 9613, i16 9619, i16 9623, i16 9629, i16 9631, i16 9643, i16 9649, i16 9661, i16 9677, i16 9679, i16 9689, i16 9697, i16 9719, i16 9721, i16 9733, i16 9739, i16 9743, i16 9749, i16 9767, i16 9769, i16 9781, i16 9787, i16 9791, i16 9803, i16 9811, i16 9817, i16 9829, i16 9833, i16 9839, i16 9851, i16 9857, i16 9859, i16 9871, i16 9883, i16 9887, i16 9901, i16 9907, i16 9923, i16 9929, i16 9931, i16 9941, i16 9949, i16 9967, i16 9973, i16 10007, i16 10009, i16 10037, i16 10039, i16 10061, i16 10067, i16 10069, i16 10079, i16 10091, i16 10093, i16 10099, i16 10103, i16 10111, i16 10133, i16 10139, i16 10141, i16 10151, i16 10159, i16 10163, i16 10169, i16 10177, i16 10181, i16 10193, i16 10211, i16 10223, i16 10243, i16 10247, i16 10253, i16 10259, i16 10267, i16 10271, i16 10273, i16 10289, i16 10301, i16 10303, i16 10313, i16 10321, i16 10331, i16 10333, i16 10337, i16 10343, i16 10357, i16 10369, i16 10391, i16 10399, i16 10427, i16 10429, i16 10433, i16 10453, i16 10457, i16 10459, i16 10463, i16 10477, i16 10487, i16 10499, i16 10501, i16 10513, i16 10529, i16 10531, i16 10559, i16 10567, i16 10589, i16 10597, i16 10601, i16 10607, i16 10613, i16 10627, i16 10631, i16 10639, i16 10651, i16 10657, i16 10663, i16 10667, i16 10687, i16 10691, i16 10709, i16 10711, i16 10723, i16 10729, i16 10733, i16 10739, i16 10753, i16 10771, i16 10781, i16 10789, i16 10799, i16 10831, i16 10837, i16 10847, i16 10853, i16 10859, i16 10861, i16 10867, i16 10883, i16 10889, i16 10891, i16 10903, i16 10909, i16 10937, i16 10939, i16 10949, i16 10957, i16 10973, i16 10979, i16 10987, i16 10993, i16 11003, i16 11027, i16 11047, i16 11057, i16 11059, i16 11069, i16 11071, i16 11083, i16 11087, i16 11093, i16 11113, i16 11117, i16 11119, i16 11131, i16 11149, i16 11159, i16 11161, i16 11171, i16 11173, i16 11177, i16 11197, i16 11213, i16 11239, i16 11243, i16 11251, i16 11257, i16 11261, i16 11273, i16 11279, i16 11287, i16 11299, i16 11311, i16 11317, i16 11321, i16 11329, i16 11351, i16 11353, i16 11369, i16 11383, i16 11393, i16 11399, i16 11411, i16 11423, i16 11437, i16 11443, i16 11447, i16 11467, i16 11471, i16 11483, i16 11489, i16 11491, i16 11497, i16 11503, i16 11519, i16 11527, i16 11549, i16 11551, i16 11579, i16 11587, i16 11593, i16 11597, i16 11617, i16 11621, i16 11633, i16 11657, i16 11677, i16 11681, i16 11689, i16 11699, i16 11701, i16 11717, i16 11719, i16 11731, i16 11743, i16 11777, i16 11779, i16 11783, i16 11789, i16 11801, i16 11807, i16 11813, i16 11821, i16 11827, i16 11831, i16 11833, i16 11839, i16 11863, i16 11867, i16 11887, i16 11897, i16 11903, i16 11909, i16 11923, i16 11927, i16 11933, i16 11939, i16 11941, i16 11953, i16 11959, i16 11969, i16 11971, i16 11981, i16 11987, i16 12007, i16 12011, i16 12037, i16 12041, i16 12043, i16 12049, i16 12071, i16 12073, i16 12097, i16 12101, i16 12107, i16 12109, i16 12113, i16 12119, i16 12143, i16 12149, i16 12157, i16 12161, i16 12163, i16 12197, i16 12203, i16 12211, i16 12227, i16 12239, i16 12241, i16 12251, i16 12253, i16 12263, i16 12269, i16 12277, i16 12281, i16 12289, i16 12301, i16 12323, i16 12329, i16 12343, i16 12347, i16 12373, i16 12377, i16 12379, i16 12391, i16 12401, i16 12409, i16 12413, i16 12421, i16 12433, i16 12437, i16 12451, i16 12457, i16 12473, i16 12479, i16 12487, i16 12491, i16 12497, i16 12503, i16 12511, i16 12517, i16 12527, i16 12539, i16 12541, i16 12547, i16 12553, i16 12569, i16 12577, i16 12583, i16 12589, i16 12601, i16 12611, i16 12613, i16 12619, i16 12637, i16 12641, i16 12647, i16 12653, i16 12659, i16 12671, i16 12689, i16 12697, i16 12703, i16 12713, i16 12721, i16 12739, i16 12743, i16 12757, i16 12763, i16 12781, i16 12791, i16 12799, i16 12809, i16 12821, i16 12823, i16 12829, i16 12841, i16 12853, i16 12889, i16 12893, i16 12899, i16 12907, i16 12911, i16 12917, i16 12919, i16 12923, i16 12941, i16 12953, i16 12959, i16 12967, i16 12973, i16 12979, i16 12983, i16 13001, i16 13003, i16 13007, i16 13009, i16 13033, i16 13037, i16 13043, i16 13049, i16 13063, i16 13093, i16 13099, i16 13103, i16 13109, i16 13121, i16 13127, i16 13147, i16 13151, i16 13159, i16 13163, i16 13171, i16 13177, i16 13183, i16 13187, i16 13217, i16 13219, i16 13229, i16 13241, i16 13249, i16 13259, i16 13267, i16 13291, i16 13297, i16 13309, i16 13313, i16 13327, i16 13331, i16 13337, i16 13339, i16 13367, i16 13381, i16 13397, i16 13399, i16 13411, i16 13417, i16 13421, i16 13441, i16 13451, i16 13457, i16 13463, i16 13469, i16 13477, i16 13487, i16 13499, i16 13513, i16 13523, i16 13537, i16 13553, i16 13567, i16 13577, i16 13591, i16 13597, i16 13613, i16 13619, i16 13627, i16 13633, i16 13649, i16 13669, i16 13679, i16 13681, i16 13687, i16 13691, i16 13693, i16 13697, i16 13709, i16 13711, i16 13721, i16 13723, i16 13729, i16 13751, i16 13757, i16 13759, i16 13763, i16 13781, i16 13789, i16 13799, i16 13807, i16 13829, i16 13831, i16 13841, i16 13859, i16 13873, i16 13877, i16 13879, i16 13883, i16 13901, i16 13903, i16 13907, i16 13913, i16 13921, i16 13931, i16 13933, i16 13963, i16 13967, i16 13997, i16 13999, i16 14009, i16 14011, i16 14029, i16 14033, i16 14051, i16 14057, i16 14071, i16 14081, i16 14083, i16 14087, i16 14107, i16 14143, i16 14149, i16 14153, i16 14159, i16 14173, i16 14177, i16 14197, i16 14207, i16 14221, i16 14243, i16 14249, i16 14251, i16 14281, i16 14293, i16 14303, i16 14321, i16 14323, i16 14327, i16 14341, i16 14347, i16 14369, i16 14387, i16 14389, i16 14401, i16 14407, i16 14411, i16 14419, i16 14423, i16 14431, i16 14437, i16 14447, i16 14449, i16 14461, i16 14479, i16 14489, i16 14503, i16 14519, i16 14533, i16 14537, i16 14543, i16 14549, i16 14551, i16 14557, i16 14561, i16 14563, i16 14591, i16 14593, i16 14621, i16 14627, i16 14629, i16 14633, i16 14639, i16 14653, i16 14657, i16 14669, i16 14683, i16 14699, i16 14713, i16 14717, i16 14723, i16 14731, i16 14737, i16 14741, i16 14747, i16 14753, i16 14759, i16 14767, i16 14771, i16 14779, i16 14783, i16 14797, i16 14813, i16 14821, i16 14827, i16 14831, i16 14843, i16 14851, i16 14867, i16 14869, i16 14879, i16 14887, i16 14891, i16 14897, i16 14923, i16 14929, i16 14939, i16 14947, i16 14951, i16 14957, i16 14969, i16 14983, i16 15013, i16 15017, i16 15031, i16 15053, i16 15061, i16 15073, i16 15077, i16 15083, i16 15091, i16 15101, i16 15107, i16 15121, i16 15131, i16 15137, i16 15139, i16 15149, i16 15161, i16 15173, i16 15187, i16 15193, i16 15199, i16 15217, i16 15227, i16 15233, i16 15241, i16 15259, i16 15263, i16 15269, i16 15271, i16 15277, i16 15287, i16 15289, i16 15299, i16 15307, i16 15313, i16 15319, i16 15329, i16 15331, i16 15349, i16 15359, i16 15361, i16 15373, i16 15377, i16 15383, i16 15391, i16 15401, i16 15413, i16 15427, i16 15439, i16 15443, i16 15451, i16 15461, i16 15467, i16 15473, i16 15493, i16 15497, i16 15511, i16 15527, i16 15541, i16 15551, i16 15559, i16 15569, i16 15581, i16 15583, i16 15601, i16 15607, i16 15619, i16 15629, i16 15641, i16 15643, i16 15647, i16 15649, i16 15661, i16 15667, i16 15671, i16 15679, i16 15683, i16 15727, i16 15731, i16 15733, i16 15737, i16 15739, i16 15749, i16 15761, i16 15767, i16 15773, i16 15787, i16 15791, i16 15797, i16 15803, i16 15809, i16 15817, i16 15823, i16 15859, i16 15877, i16 15881, i16 15887, i16 15889, i16 15901, i16 15907, i16 15913, i16 15919, i16 15923, i16 15937, i16 15959, i16 15971, i16 15973, i16 15991, i16 16001, i16 16007, i16 16033, i16 16057, i16 16061, i16 16063, i16 16067, i16 16069, i16 16073, i16 16087, i16 16091, i16 16097, i16 16103, i16 16111, i16 16127, i16 16139, i16 16141, i16 16183, i16 16187, i16 16189, i16 16193, i16 16217, i16 16223, i16 16229, i16 16231, i16 16249, i16 16253, i16 16267, i16 16273, i16 16301, i16 16319, i16 16333, i16 16339, i16 16349, i16 16361, i16 16363, i16 16369, i16 16381, i16 16411, i16 16417, i16 16421, i16 16427, i16 16433, i16 16447, i16 16451, i16 16453, i16 16477, i16 16481, i16 16487, i16 16493, i16 16519, i16 16529, i16 16547, i16 16553, i16 16561, i16 16567, i16 16573, i16 16603, i16 16607, i16 16619, i16 16631, i16 16633, i16 16649, i16 16651, i16 16657, i16 16661, i16 16673, i16 16691, i16 16693, i16 16699, i16 16703, i16 16729, i16 16741, i16 16747, i16 16759, i16 16763, i16 16787, i16 16811, i16 16823, i16 16829, i16 16831, i16 16843, i16 16871, i16 16879, i16 16883, i16 16889, i16 16901, i16 16903, i16 16921, i16 16927, i16 16931, i16 16937, i16 16943, i16 16963, i16 16979, i16 16981, i16 16987, i16 16993, i16 17011, i16 17021, i16 17027, i16 17029, i16 17033, i16 17041, i16 17047, i16 17053, i16 17077, i16 17093, i16 17099, i16 17107, i16 17117, i16 17123, i16 17137, i16 17159, i16 17167, i16 17183, i16 17189, i16 17191, i16 17203, i16 17207, i16 17209, i16 17231, i16 17239, i16 17257, i16 17291, i16 17293, i16 17299, i16 17317, i16 17321, i16 17327, i16 17333, i16 17341, i16 17351, i16 17359, i16 17377, i16 17383, i16 17387, i16 17389, i16 17393, i16 17401, i16 17417, i16 17419, i16 17431, i16 17443, i16 17449, i16 17467, i16 17471, i16 17477, i16 17483, i16 17489, i16 17491, i16 17497, i16 17509, i16 17519, i16 17539, i16 17551, i16 17569, i16 17573, i16 17579, i16 17581, i16 17597, i16 17599, i16 17609, i16 17623, i16 17627, i16 17657, i16 17659, i16 17669, i16 17681, i16 17683, i16 17707, i16 17713, i16 17729, i16 17737, i16 17747, i16 17749, i16 17761, i16 17783, i16 17789, i16 17791, i16 17807, i16 17827, i16 17837, i16 17839, i16 17851, i16 17863], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ossl_bn_get0_small_factors() local_unnamed_addr #0 {
bb.a:
  ret ptr @_bignum_small_prime_factors
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BN_GENCB_call(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !9
  switch i32 %i.a, label %bb.f [
    i32 1, label %bb.c
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %.not13 = icmp eq ptr %i.c, null
  br i1 %.not13, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  tail call void %i.c(i32 noundef %1, i32 noundef %2, ptr noundef %i.e) #5
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = tail call i32 %i.g(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %0) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.e, %bb.d
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.a ], [ %i.h, %bb.e ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @BN_generate_prime_ex2(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 2048
  %..i = select i1 %i.a, i32 128, i32 64          ; 2 uses
  %i.b = icmp slt i32 %1, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 135, ptr noundef nonnull @__func__.BN_generate_prime_ex2) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 118, ptr noundef null) #5
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %3, null                     ; 2 uses
  %i.d = icmp ne i32 %2, 0                        ; 2 uses
  %i.e = icmp samesign ult i32 %1, 6
  %i.f = icmp ne i32 %1, 3
  %i.g = and i1 %i.e, %i.f
  %i.h = and i1 %i.g, %i.d
  %or.cond5 = and i1 %i.h, %i.c
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 143, ptr noundef nonnull @__func__.BN_generate_prime_ex2) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 118, ptr noundef null) #5
  br label %bb.aw

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 4096, ptr noundef nonnull @.str, i32 noundef 147) #5 ; 16 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.aw, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @BN_CTX_start(ptr noundef %6) #5
  %i.k = tail call ptr @BN_CTX_get(ptr noundef %6) #5 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %probable_prime.exit.thread, label %.preheader122

.preheader122:                                    ; preds = %bb.f
  %i.m = icmp samesign ult i32 %1, 513            ; 2 uses
  %i.n = icmp samesign ult i32 %1, 1025           ; 2 uses
  %i.o = icmp samesign ult i32 %1, 2049           ; 2 uses
  %i.p = icmp samesign ult i32 %1, 4097
  %..i.i70 = select i1 %i.p, i64 1024, i64 2048   ; 2 uses
  %i.q = icmp eq ptr %4, null
  %.not81.i = icmp eq i32 %2, 0                   ; 4 uses
  %i.r = select i1 %.not81.i, i64 1, i64 3
  %i.s = select i1 %.not81.i, i64 3, i64 5
  %i.t = icmp samesign ult i32 %1, 32             ; 4 uses
  %.not.i83 = icmp eq ptr %5, null                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.mux139 = select i1 %i.m, i64 64, i64 128
  %spec.select140 = select i1 %i.o, i64 384, i64 %..i.i70
  %.0.i.i72 = select i1 %i.n, i64 %.mux139, i64 %spec.select140 ; 6 uses
  %i.w = getelementptr [2 x i8], ptr @primes, i64 %.0.i.i72
  %i.x = getelementptr i8, ptr %i.w, i64 -2
  %.mux = select i1 %i.m, i64 64, i64 128
  %spec.select = select i1 %i.o, i64 384, i64 %..i.i70
  %.0.i.i = select i1 %i.n, i64 %.mux, i64 %spec.select ; 10 uses
  %i.y = getelementptr [2 x i8], ptr @primes, i64 %.0.i.i
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader122
  %.057 = phi i32 [ 0, %.preheader122 ], [ %i.gy, %.backedge.backedge ] ; 5 uses
  br i1 %i.c, label %calc_trial_divisions.exit.i, label %calc_trial_divisions.exit.i71

calc_trial_divisions.exit.i:                      ; preds = %.backedge
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !14
  %i.ab = zext i16 %i.aa to i64
  %i.ac = xor i64 %i.ab, -1                       ; 4 uses
  %i.ad = tail call i32 @BN_priv_rand_ex(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef %6) #5
  %.not83.i = icmp eq i32 %i.ad, 0
  br i1 %.not83.i, label %probable_prime.exit.thread.loopexit288, label %.lr.ph.split.us.split.i.a

.lr.ph.split.us.split.i.a:                        ; preds = %calc_trial_divisions.exit.i
  br i1 %.not81.i, label %bb.g, label %.lr.ph.split.i

bb.g:                                             ; preds = %.lr.ph.split.us.split.i.a
  br i1 %i.t, label %.lr.ph.split.us.split.split.us.i, label %.lr.ph.split.us.split.split.i

.lr.ph.split.us.split.split.us.i:                 ; preds = %bb.g, %.lr.ph.split.us.split.split.us.i.backedge
  %indvars.iv144.i = phi i64 [ %indvars.iv144.i.be, %.lr.ph.split.us.split.split.us.i.backedge ], [ 1, %bb.g ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr @primes, i64 %indvars.iv144.i
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !14
  %i.ag = zext i16 %i.af to i64
  %i.ah = tail call i64 @BN_mod_word(ptr noundef %0, i64 noundef %i.ag) #5 ; 2 uses
  %.not55.us.us.i = icmp eq i64 %i.ah, -1
  br i1 %.not55.us.us.i, label %probable_prime.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us.split.split.us.i
  %i.ai = trunc i64 %i.ah to i16
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv144.i
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !14
  %indvars.iv.next145.i = add nuw nsw i64 %indvars.iv144.i, 1 ; 2 uses
  %exitcond148.not.i = icmp eq i64 %indvars.iv.next145.i, %.0.i.i
  br i1 %exitcond148.not.i, label %.split.us.us.us.us94.i, label %.lr.ph.split.us.split.split.us.i.backedge

.lr.ph.split.us.split.split.us.i.backedge:        ; preds = %bb.h, %.backedge.us.us.i
  %indvars.iv144.i.be = phi i64 [ %indvars.iv.next145.i, %bb.h ], [ 1, %.backedge.us.us.i ]
  br label %.lr.ph.split.us.split.split.us.i, !llvm.loop !16

7:                                                ; preds = %.split61.us.us.us.i
  %8 = tail call i32 @BN_num_bits(ptr noundef %0) #5
  %.not54.us.us.i = icmp eq i32 %8, %1
  br i1 %.not54.us.us.i, label %probable_prime.exit, label %.backedge.us.us.i

.backedge.us.us.i:                                ; preds = %.split63.us.us.us.us.i, %7
  %i.ak = tail call i32 @BN_priv_rand_ex(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef %6) #5
  %.not.us.us.i = icmp eq i32 %i.ak, 0
  br i1 %.not.us.us.i, label %probable_prime.exit.thread, label %.lr.ph.split.us.split.split.us.i.backedge

.split61.us.us.us.i:                              ; preds = %bb.i, %bb.k, %.split.us.split.us.us.us.us.i
  %i.al = tail call i32 @BN_add_word(ptr noundef %0, i64 noundef %.047.us.us.us95.i) #5
  %.not53.us.us.i = icmp eq i32 %i.al, 0
  br i1 %.not53.us.us.i, label %probable_prime.exit.thread, label %7

.split.us.us.us.us94.i:                           ; preds = %bb.h, %.split63.us.us.us.us.i
  %.047.us.us.us95.i = phi i64 [ %i.aw, %.split63.us.us.us.us.i ], [ 0, %bb.h ] ; 6 uses
  %i.am = icmp ult i64 %.047.us.us.us95.i, 2147483648
  br i1 %i.am, label %.split.us.split.us.us.us.us.i, label %.split.us.split.us80.us.us.i

.split.us.split.us80.us.us.i:                     ; preds = %.split.us.us.us.us94.i, %bb.i
  %indvars.iv149.i = phi i64 [ %indvars.iv.next150.i, %bb.i ], [ 1, %.split.us.us.us.us94.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv149.i
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !14
  %i.ap = zext i16 %i.ao to i64
  %i.aq = add i64 %.047.us.us.us95.i, %i.ap
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr @primes, i64 %indvars.iv149.i
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !14
  %i.at = zext i16 %i.as to i64
  %i.au = urem i64 %i.aq, %i.at
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.split63.us.us.us.us.i, label %bb.i

bb.i:                                             ; preds = %.split.us.split.us80.us.us.i
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1 ; 2 uses
  %exitcond153.not.i = icmp eq i64 %indvars.iv.next150.i, %.0.i.i
  br i1 %exitcond153.not.i, label %.split61.us.us.us.i, label %.split.us.split.us80.us.us.i, !llvm.loop !18

.split63.us.us.us.us.i:                           ; preds = %.split.us.split.us80.us.us.i, %bb.j
  %i.aw = add i64 %.047.us.us.us95.i, 2           ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, %i.ac
  br i1 %i.ax, label %.backedge.us.us.i, label %.split.us.us.us.us94.i

.split.us.split.us.us.us.us.i:                    ; preds = %.split.us.us.us.us94.i, %bb.k
  %indvars.iv154.i = phi i64 [ %indvars.iv.next155.i, %bb.k ], [ 1, %.split.us.us.us.us94.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr @primes, i64 %indvars.iv154.i
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !14
  %i.ba = zext i16 %i.az to i64                   ; 3 uses
  %i.bb = mul nuw nsw i64 %i.ba, %i.ba
  %i.bc = tail call i64 @BN_get_word(ptr noundef %0) #5
  %i.bd = add i64 %i.bc, %.047.us.us.us95.i
  %i.be = icmp ugt i64 %i.bb, %i.bd
  br i1 %i.be, label %.split61.us.us.us.i, label %bb.j

bb.j:                                             ; preds = %.split.us.split.us.us.us.us.i
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv154.i
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !14
  %i.bh = zext i16 %i.bg to i64
  %i.bi = add nuw nsw i64 %.047.us.us.us95.i, %i.bh
  %i.bj = urem i64 %i.bi, %i.ba
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.split63.us.us.us.us.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1 ; 2 uses
  %exitcond158.not.i = icmp eq i64 %indvars.iv.next155.i, %.0.i.i
  br i1 %exitcond158.not.i, label %.split61.us.us.us.i, label %.split.us.split.us.us.us.us.i, !llvm.loop !18

.lr.ph.split.us.split.split.i:                    ; preds = %bb.g, %.lr.ph.split.us.split.split.i.backedge
  %indvars.iv134.i = phi i64 [ %indvars.iv134.i.be, %.lr.ph.split.us.split.split.i.backedge ], [ 1, %bb.g ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr @primes, i64 %indvars.iv134.i
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !14
  %i.bn = zext i16 %i.bm to i64
  %i.bo = tail call i64 @BN_mod_word(ptr noundef %0, i64 noundef %i.bn) #5 ; 2 uses
  %.not55.us.i = icmp eq i64 %i.bo, -1
  br i1 %.not55.us.i, label %probable_prime.exit.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.split.split.i
  %i.bp = trunc i64 %i.bo to i16
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv134.i
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !14
  %indvars.iv.next135.i = add nuw nsw i64 %indvars.iv134.i, 1 ; 2 uses
  %exitcond138.not.i = icmp eq i64 %indvars.iv.next135.i, %.0.i.i
  br i1 %exitcond138.not.i, label %.split.us.us.us.us.i, label %.lr.ph.split.us.split.split.i.backedge

.lr.ph.split.us.split.split.i.backedge:           ; preds = %bb.l, %.backedge.us.i
  %indvars.iv134.i.be = phi i64 [ %indvars.iv.next135.i, %bb.l ], [ 1, %.backedge.us.i ]
  br label %.lr.ph.split.us.split.split.i, !llvm.loop !16

9:                                                ; preds = %.split61.us.split.split.us.us.split.us.i
  %10 = tail call i32 @BN_num_bits(ptr noundef %0) #5
  %.not54.us.i = icmp eq i32 %10, %1
  br i1 %.not54.us.i, label %probable_prime.exit, label %.backedge.us.i

.backedge.us.i:                                   ; preds = %.split63.us.split.us79.us.us.i, %9
  %i.br = tail call i32 @BN_priv_rand_ex(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef %6) #5
  %.not.us.i = icmp eq i32 %i.br, 0
  br i1 %.not.us.i, label %probable_prime.exit.thread, label %.lr.ph.split.us.split.split.i.backedge

.split.us.us.us.us.i:                             ; preds = %bb.l, %.split63.us.split.us79.us.us.i
  %.047.us.us.us.i = phi i64 [ %i.cb, %.split63.us.split.us79.us.us.i ], [ 0, %bb.l ] ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.split.us.us.us.us.i
  %indvars.iv139.i = phi i64 [ 1, %.split.us.us.us.us.i ], [ %indvars.iv.next140.i, %bb.n ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv139.i
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !14
  %i.bu = zext i16 %i.bt to i64
  %i.bv = add i64 %.047.us.us.us.i, %i.bu
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr @primes, i64 %indvars.iv139.i
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !14
  %i.by = zext i16 %i.bx to i64
  %i.bz = urem i64 %i.bv, %i.by
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %.split63.us.split.us79.us.us.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %exitcond143.not.i = icmp eq i64 %indvars.iv.next140.i, %.0.i.i
  br i1 %exitcond143.not.i, label %.split61.us.split.split.us.us.split.us.i, label %bb.m, !llvm.loop !18

.split63.us.split.us79.us.us.i:                   ; preds = %bb.m
  %i.cb = add i64 %.047.us.us.us.i, 2             ; 2 uses
  %i.cc = icmp ugt i64 %i.cb, %i.ac
  br i1 %i.cc, label %.backedge.us.i, label %.split.us.us.us.us.i

.split61.us.split.split.us.us.split.us.i:         ; preds = %bb.n
  %i.cd = tail call i32 @BN_add_word(ptr noundef %0, i64 noundef %.047.us.us.us.i) #5
  %.not53.us.i = icmp eq i32 %i.cd, 0
  br i1 %.not53.us.i, label %probable_prime.exit.thread, label %9

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.us.split.i.a, %.backedge.i
  %i.ce = tail call i32 @BN_set_bit(ptr noundef %0, i32 noundef 1) #5
  %.not52.i = icmp eq i32 %i.ce, 0
  br i1 %.not52.i, label %probable_prime.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.split.i, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ 1, %.lr.ph.split.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr @primes, i64 %indvars.iv.i
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !14
  %i.ch = zext i16 %i.cg to i64
  %i.ci = tail call i64 @BN_mod_word(ptr noundef %0, i64 noundef %i.ch) #5 ; 2 uses
  %.not55.i = icmp eq i64 %i.ci, -1
  br i1 %.not55.i, label %probable_prime.exit.thread, label %bb.o

bb.o:                                             ; preds = %.preheader.i
  %i.cj = trunc i64 %i.ci to i16
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.i
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.0.i.i
  br i1 %exitcond.not.i, label %.split.i.preheader, label %.preheader.i, !llvm.loop !16

.split.i.preheader:                               ; preds = %bb.o
  br i1 %i.t, label %.split.i, label %.split.i.us

.split.i.us:                                      ; preds = %.split.i.preheader, %.split63.i.loopexit104.us
  %.047.i.us = phi i64 [ %i.cu, %.split63.i.loopexit104.us ], [ 0, %.split.i.preheader ] ; 3 uses
  br label %.split.split.i.us

.split.split.i.us:                                ; preds = %.split.i.us, %bb.p
  %indvars.iv124.i.us = phi i64 [ %indvars.iv.next125.i.us, %bb.p ], [ 1, %.split.i.us ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv124.i.us
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !14
  %i.cn = zext i16 %i.cm to i64
  %i.co = add i64 %.047.i.us, %i.cn
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr @primes, i64 %indvars.iv124.i.us
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !14
  %i.cr = zext i16 %i.cq to i64
  %i.cs = urem i64 %i.co, %i.cr
  %i.ct = icmp samesign ult i64 %i.cs, 2
  br i1 %i.ct, label %.split63.i.loopexit104.us, label %bb.p

bb.p:                                             ; preds = %.split.split.i.us
  %indvars.iv.next125.i.us = add nuw nsw i64 %indvars.iv124.i.us, 1 ; 2 uses
  %exitcond128.not.i.us = icmp eq i64 %indvars.iv.next125.i.us, %.0.i.i
  br i1 %exitcond128.not.i.us, label %.split61.i, label %.split.split.i.us, !llvm.loop !18

.split63.i.loopexit104.us:                        ; preds = %.split.split.i.us
  %i.cu = add i64 %.047.i.us, 4                   ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, %i.ac
  br i1 %i.cv, label %.backedge.i, label %.split.i.us

.split.i:                                         ; preds = %.split.i.preheader, %.split63.i
  %.047.i = phi i64 [ %i.dt, %.split63.i ], [ 0, %.split.i.preheader ] ; 8 uses
  %i.cw = icmp ult i64 %.047.i, 2147483648
  br i1 %i.cw, label %.split.split.us.i, label %.split.split.i

.split.split.us.i:                                ; preds = %.split.i, %bb.r
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %bb.r ], [ 1, %.split.i ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr @primes, i64 %indvars.iv129.i
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !14
  %i.cz = zext i16 %i.cy to i64                   ; 3 uses
  %i.da = mul nuw nsw i64 %i.cz, %i.cz
  %i.db = tail call i64 @BN_get_word(ptr noundef %0) #5
  %i.dc = add i64 %i.db, %.047.i
  %i.dd = icmp ugt i64 %i.da, %i.dc
  br i1 %i.dd, label %.split61.i, label %bb.q

bb.q:                                             ; preds = %.split.split.us.i
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv129.i
  %i.df = load i16, ptr %i.de, align 2, !tbaa !14
  %i.dg = zext i16 %i.df to i64
  %i.dh = add nuw nsw i64 %.047.i, %i.dg
  %i.di = urem i64 %i.dh, %i.cz
  %i.dj = icmp samesign ult i64 %i.di, 2
  br i1 %i.dj, label %.split63.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %exitcond133.not.i = icmp eq i64 %indvars.iv.next130.i, %.0.i.i
  br i1 %exitcond133.not.i, label %.split61.i, label %.split.split.us.i, !llvm.loop !18

.split.split.i:                                   ; preds = %.split.i, %bb.s
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i, %bb.s ], [ 1, %.split.i ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv124.i
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !14
  %i.dm = zext i16 %i.dl to i64
  %i.dn = add i64 %.047.i, %i.dm
  %i.do = getelementptr inbounds nuw [2 x i8], ptr @primes, i64 %indvars.iv124.i
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !14
  %i.dq = zext i16 %i.dp to i64
  %i.dr = urem i64 %i.dn, %i.dq
  %i.ds = icmp samesign ult i64 %i.dr, 2
  br i1 %i.ds, label %.split63.i, label %bb.s

.split63.i:                                       ; preds = %.split.split.i, %bb.q
  %i.dt = add i64 %.047.i, 4                      ; 2 uses
  %i.du = icmp ugt i64 %i.dt, %i.ac
  br i1 %i.du, label %.backedge.i, label %.split.i

bb.s:                                             ; preds = %.split.split.i
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %exitcond128.not.i = icmp eq i64 %indvars.iv.next125.i, %.0.i.i
  br i1 %exitcond128.not.i, label %.split61.i, label %.split.split.i, !llvm.loop !18

.split61.i:                                       ; preds = %bb.p, %bb.s, %bb.r, %.split.split.us.i
  %.047.i132 = phi i64 [ %.047.i, %bb.r ], [ %.047.i, %bb.s ], [ %.047.i, %.split.split.us.i ], [ %.047.i.us, %bb.p ]
  %i.dv = tail call i32 @BN_add_word(ptr noundef %0, i64 noundef %.047.i132) #5
  %.not53.i = icmp eq i32 %i.dv, 0
  br i1 %.not53.i, label %probable_prime.exit.thread, label %bb.t

bb.t:                                             ; preds = %.split61.i
  %i.dw = tail call i32 @BN_num_bits(ptr noundef %0) #5
  %.not54.i = icmp eq i32 %i.dw, %1
  br i1 %.not54.i, label %probable_prime.exit, label %.backedge.i

.backedge.i:                                      ; preds = %.split63.i.loopexit104.us, %.split63.i, %bb.t
  %i.dx = tail call i32 @BN_priv_rand_ex(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef %6) #5
  %.not.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i, label %probable_prime.exit.thread, label %.lr.ph.split.i

calc_trial_divisions.exit.i71:                    ; preds = %.backedge
  %i.dy = load i16, ptr %i.x, align 2, !tbaa !14
  tail call void @BN_CTX_start(ptr noundef %6) #5
  %i.dz = tail call ptr @BN_CTX_get(ptr noundef %6) #5 ; 3 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %probable_prime_dh.exit.thread, label %bb.u

bb.u:                                             ; preds = %calc_trial_divisions.exit.i71
  %i.eb = zext i16 %i.dy to i64                   ; 2 uses
  %i.ec = tail call i64 @BN_get_word(ptr noundef nonnull %3) #5
  %i.ed = icmp ugt i64 %i.ec, %i.eb
  br i1 %i.ed, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ee = tail call i64 @BN_get_word(ptr noundef nonnull %3) #5
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.068.in.i = phi i64 [ %i.ee, %bb.v ], [ %i.eb, %bb.u ]
  %.068.i = xor i64 %.068.in.i, -1                ; 2 uses
  %i.ef = tail call i32 @BN_rand_ex(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef %6) #5
  %.not115.i = icmp eq i32 %i.ef, 0
  br i1 %.not115.i, label %probable_prime_dh.exit.thread, label %.lr.ph.i73

.loopexit.i:                                      ; preds = %.split97.i, %.split97.us.us.i
  %i.eg = tail call i32 @BN_rand_ex(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef %6) #5
  %.not.i81 = icmp eq i32 %i.eg, 0
  br i1 %.not.i81, label %probable_prime_dh.exit.thread, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %bb.w, %.loopexit.i
  %i.eh = tail call i32 @BN_div(ptr noundef null, ptr noundef nonnull %i.dz, ptr noundef %0, ptr noundef nonnull %3, ptr noundef %6) #5
  %.not78.i = icmp eq i32 %i.eh, 0
  br i1 %.not78.i, label %probable_prime_dh.exit.thread, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i73
  %i.ei = tail call i32 @BN_sub(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.dz) #5
  %.not79.i = icmp eq i32 %i.ei, 0
  br i1 %.not79.i, label %probable_prime_dh.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %i.q, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ej = tail call i32 @BN_add_word(ptr noundef %0, i64 noundef %i.r) #5
  %.not82.i = icmp eq i32 %i.ej, 0
  br i1 %.not82.i, label %probable_prime_dh.exit.thread, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ek = tail call i32 @BN_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #5
  %.not80.i = icmp eq i32 %i.ek, 0
  br i1 %.not80.i, label %probable_prime_dh.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.el = tail call i32 @BN_num_bits(ptr noundef %0) #5
  %i.em = icmp slt i32 %i.el, %1
  br i1 %i.em, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.en = tail call i64 @BN_get_word(ptr noundef %0) #5
  %i.eo = icmp ult i64 %i.en, %i.s
  br i1 %i.eo, label %bb.ad, label %.preheader279

.preheader279:                                    ; preds = %bb.ad, %bb.ac
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ep = tail call i32 @BN_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %3) #5
  %.not84.i = icmp eq i32 %i.ep, 0
  br i1 %.not84.i, label %probable_prime_dh.exit.thread, label %.preheader279

.preheader.i77:                                   ; preds = %bb.ai
  br i1 %.not81.i, label %.split.us.us.i, label %.split.i78

.split.us.us.i:                                   ; preds = %.preheader.i77, %.split97.us.us.i
  %.070.us.i = phi i64 [ %i.fb, %.split97.us.us.i ], [ 0, %.preheader.i77 ] ; 8 uses
  %i.eq = icmp ult i64 %.070.us.i, 2147483648
  %or.cond.us.i = and i1 %i.t, %i.eq
  br i1 %or.cond.us.i, label %.split.us.split.us.us.i, label %.split.us.split.us112.i

.split.us.split.us112.i:                          ; preds = %.split.us.us.i, %bb.ae
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i, %bb.ae ], [ 1, %.split.us.us.i ] ; 3 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv143.i
  %i.es = load i16, ptr %i.er, align 2, !tbaa !14
  %i.et = zext i16 %i.es to i64
  %i.eu = add i64 %.070.us.i, %i.et
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr @primes, i64 %indvars.iv143.i
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !14
  %i.ex = zext i16 %i.ew to i64
  %i.ey = urem i64 %i.eu, %i.ex
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %.split97.us.us.i, label %bb.ae

bb.ae:                                            ; preds = %.split.us.split.us112.i
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 2 uses
  %exitcond147.not.i = icmp eq i64 %indvars.iv.next144.i, %.0.i.i72
  br i1 %exitcond147.not.i, label %probable_prime_dh.exit, label %.split.us.split.us112.i, !llvm.loop !19

.split97.us.us.i:                                 ; preds = %.split.us.split.us112.i, %bb.af
  %i.fa = tail call i64 @BN_get_word(ptr noundef nonnull %3) #5
  %i.fb = add i64 %i.fa, %.070.us.i               ; 2 uses
  %i.fc = icmp ugt i64 %i.fb, %.068.i
  br i1 %i.fc, label %.loopexit.i, label %.split.us.us.i

.split.us.split.us.us.i:                          ; preds = %.split.us.us.i, %bb.ag
  %indvars.iv148.i = phi i64 [ %indvars.iv.next149.i, %bb.ag ], [ 1, %.split.us.us.i ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr @primes, i64 %indvars.iv148.i
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !14
  %i.ff = zext i16 %i.fe to i64                   ; 3 uses
  %i.fg = mul nuw nsw i64 %i.ff, %i.ff
  %i.fh = tail call i64 @BN_get_word(ptr noundef %0) #5
  %i.fi = add i64 %i.fh, %.070.us.i
  %i.fj = icmp ugt i64 %i.fg, %i.fi
  br i1 %i.fj, label %probable_prime_dh.exit, label %bb.af

bb.af:                                            ; preds = %.split.us.split.us.us.i
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv148.i
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !14
  %i.fm = zext i16 %i.fl to i64
  %i.fn = add nuw nsw i64 %.070.us.i, %i.fm
  %i.fo = urem i64 %i.fn, %i.ff
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %.split97.us.us.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next149.i, %.0.i.i72
  br i1 %exitcond152.not.i, label %probable_prime_dh.exit, label %.split.us.split.us.us.i, !llvm.loop !19

bb.ah:                                            ; preds = %.preheader279, %bb.ai
  %indvars.iv.i74 = phi i64 [ %indvars.iv.next.i75, %bb.ai ], [ 1, %.preheader279 ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr @primes, i64 %indvars.iv.i74
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !14
  %i.fs = zext i16 %i.fr to i64
  %i.ft = tail call i64 @BN_mod_word(ptr noundef %0, i64 noundef %i.fs) #5 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, -1
  br i1 %i.fu, label %probable_prime_dh.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fv = trunc i64 %i.ft to i16
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.i74
  store i16 %i.fv, ptr %i.fw, align 2, !tbaa !14
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i74, 1 ; 2 uses
  %exitcond.not.i76 = icmp eq i64 %indvars.iv.next.i75, %.0.i.i72
  br i1 %exitcond.not.i76, label %.preheader.i77, label %bb.ah, !llvm.loop !20

.split.i78:                                       ; preds = %.preheader.i77, %.split97.i
  %.070.i = phi i64 [ %i.gv, %.split97.i ], [ 0, %.preheader.i77 ] ; 8 uses
  %i.fx = icmp ult i64 %.070.i, 2147483648
  %or.cond.i79 = and i1 %i.t, %i.fx
  br i1 %or.cond.i79, label %.split.split.us.i82, label %.split.split.i80

.split.split.us.i82:                              ; preds = %.split.i78, %bb.ak
  %indvars.iv138.i = phi i64 [ %indvars.iv.next139.i, %bb.ak ], [ 1, %.split.i78 ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr @primes, i64 %indvars.iv138.i
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !14
  %i.ga = zext i16 %i.fz to i64                   ; 3 uses
  %i.gb = mul nuw nsw i64 %i.ga, %i.ga
  %i.gc = tail call i64 @BN_get_word(ptr noundef %0) #5
  %i.gd = add i64 %i.gc, %.070.i
  %i.ge = icmp ugt i64 %i.gb, %i.gd
  br i1 %i.ge, label %probable_prime_dh.exit, label %bb.aj

bb.aj:                                            ; preds = %.split.split.us.i82
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv138.i
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !14
  %i.gh = zext i16 %i.gg to i64
  %i.gi = add nuw nsw i64 %.070.i, %i.gh
  %i.gj = urem i64 %i.gi, %i.ga
  %i.gk = icmp samesign ult i64 %i.gj, 2
  br i1 %i.gk, label %.split97.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %indvars.iv.next139.i = add nuw nsw i64 %indvars.iv138.i, 1 ; 2 uses
  %exitcond142.not.i = icmp eq i64 %indvars.iv.next139.i, %.0.i.i72
  br i1 %exitcond142.not.i, label %probable_prime_dh.exit, label %.split.split.us.i82, !llvm.loop !19

.split.split.i80:                                 ; preds = %.split.i78, %bb.al
  %indvars.iv133.i = phi i64 [ %indvars.iv.next134.i, %bb.al ], [ 1, %.split.i78 ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv133.i
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !14
  %i.gn = zext i16 %i.gm to i64
  %i.go = add i64 %.070.i, %i.gn
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr @primes, i64 %indvars.iv133.i
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !14
  %i.gr = zext i16 %i.gq to i64
  %i.gs = urem i64 %i.go, %i.gr
  %i.gt = icmp samesign ult i64 %i.gs, 2
  br i1 %i.gt, label %.split97.i, label %bb.al

.split97.i:                                       ; preds = %.split.split.i80, %bb.aj
  %i.gu = tail call i64 @BN_get_word(ptr noundef nonnull %3) #5
  %i.gv = add i64 %i.gu, %.070.i                  ; 2 uses
  %i.gw = icmp ugt i64 %i.gv, %.068.i
  br i1 %i.gw, label %.loopexit.i, label %.split.i78

bb.al:                                            ; preds = %.split.split.i80
  %indvars.iv.next134.i = add nuw nsw i64 %indvars.iv133.i, 1 ; 2 uses
  %exitcond137.not.i = icmp eq i64 %indvars.iv.next134.i, %.0.i.i72
  br i1 %exitcond137.not.i, label %probable_prime_dh.exit, label %.split.split.i80, !llvm.loop !19

probable_prime_dh.exit.thread:                    ; preds = %calc_trial_divisions.exit.i71, %bb.w, %bb.ad, %bb.aa, %bb.z, %bb.x, %.lr.ph.i73, %.loopexit.i, %bb.ah
  tail call void @BN_CTX_end(ptr noundef %6) #5
  br label %probable_prime.exit.thread

probable_prime_dh.exit:                           ; preds = %bb.al, %.split.split.us.i82, %bb.ak, %bb.ae, %.split.us.split.us.us.i, %bb.ag
  %.us-phi.i = phi i64 [ %.070.i, %.split.split.us.i82 ], [ %.070.us.i, %bb.ae ], [ %.070.us.i, %.split.us.split.us.us.i ], [ %.070.us.i, %bb.ag ], [ %.070.i, %bb.ak ], [ %.070.i, %bb.al ]
  %i.gx = tail call i32 @BN_add_word(ptr noundef %0, i64 noundef %.us-phi.i) #5
  %.not86.i.not = icmp eq i32 %i.gx, 0
  tail call void @BN_CTX_end(ptr noundef %6) #5
  br i1 %.not86.i.not, label %probable_prime.exit.thread.loopexit288, label %probable_prime.exit

probable_prime.exit:                              ; preds = %bb.t, %9, %7, %probable_prime_dh.exit
  %i.gy = add nuw nsw i32 %.057, 1
  br i1 %.not.i83, label %BN_GENCB_call.exit.thread, label %bb.am

bb.am:                                            ; preds = %probable_prime.exit
  %i.gz = load i32, ptr %5, align 8, !tbaa !9
  switch i32 %i.gz, label %probable_prime.exit.thread.loopexit288 [
    i32 1, label %bb.an
    i32 2, label %BN_GENCB_call.exit
  ]

bb.an:                                            ; preds = %bb.am
  %i.ha = load ptr, ptr %i.u, align 8, !tbaa !12  ; 2 uses
  %.not13.i = icmp eq ptr %i.ha, null
  br i1 %.not13.i, label %BN_GENCB_call.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hb = load ptr, ptr %i.v, align 8, !tbaa !13
  tail call void %i.ha(i32 noundef 0, i32 noundef %.057, ptr noundef %i.hb) #5, !inline_history !21
  br label %BN_GENCB_call.exit.thread

BN_GENCB_call.exit:                               ; preds = %bb.am
  %i.hc = load ptr, ptr %i.u, align 8, !tbaa !12
  %i.hd = tail call i32 %i.hc(i32 noundef 0, i32 noundef %.057, ptr noundef nonnull %5) #5, !inline_history !21
  %.not67 = icmp eq i32 %i.hd, 0
  br i1 %.not67, label %probable_prime.exit.thread.loopexit288, label %BN_GENCB_call.exit.thread

BN_GENCB_call.exit.thread:                        ; preds = %probable_prime.exit, %bb.ao, %bb.an, %BN_GENCB_call.exit
  br i1 %i.d, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %BN_GENCB_call.exit.thread
  %i.he = tail call fastcc i32 @bn_is_prime_int(ptr noundef %0, i32 noundef %..i, ptr noundef %6, i32 noundef 0, ptr noundef %5)
  switch i32 %i.he, label %probable_prime.exit.thread [
    i32 -1, label %probable_prime.exit.thread.loopexit288
    i32 0, label %.backedge.backedge
  ]

.backedge.backedge:                               ; preds = %.preheader, %bb.ar, %bb.ap
  br label %.backedge

bb.aq:                                            ; preds = %BN_GENCB_call.exit.thread
  %i.hf = tail call i32 @BN_rshift1(ptr noundef nonnull %i.k, ptr noundef %0) #5
  %.not68 = icmp eq i32 %i.hf, 0
  br i1 %.not68, label %probable_prime.exit.thread.loopexit288, label %.preheader

.preheader:                                       ; preds = %bb.aq, %BN_GENCB_call.exit87.thread
  %.058137 = phi i32 [ %i.hn, %BN_GENCB_call.exit87.thread ], [ 0, %bb.aq ]
  %i.hg = tail call fastcc i32 @bn_is_prime_int(ptr noundef %0, i32 noundef 1, ptr noundef %6, i32 noundef 0, ptr noundef %5)
  switch i32 %i.hg, label %bb.ar [
    i32 -1, label %probable_prime.exit.thread
    i32 0, label %.backedge.backedge
  ]

bb.ar:                                            ; preds = %.preheader
  %i.hh = tail call fastcc i32 @bn_is_prime_int(ptr noundef nonnull %i.k, i32 noundef 1, ptr noundef %6, i32 noundef 0, ptr noundef %5)
  switch i32 %i.hh, label %bb.as [
    i32 -1, label %probable_prime.exit.thread
    i32 0, label %.backedge.backedge
  ]

bb.as:                                            ; preds = %bb.ar
  br i1 %.not.i83, label %BN_GENCB_call.exit87.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hi = load i32, ptr %5, align 8, !tbaa !9
  switch i32 %i.hi, label %probable_prime.exit.thread [
    i32 1, label %bb.au
    i32 2, label %BN_GENCB_call.exit87
  ]

bb.au:                                            ; preds = %bb.at
  %i.hj = load ptr, ptr %i.u, align 8, !tbaa !12  ; 2 uses
  %.not13.i86 = icmp eq ptr %i.hj, null
  br i1 %.not13.i86, label %BN_GENCB_call.exit87.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hk = load ptr, ptr %i.v, align 8, !tbaa !13
  tail call void %i.hj(i32 noundef 2, i32 noundef %.057, ptr noundef %i.hk) #5, !inline_history !21
  br label %BN_GENCB_call.exit87.thread

BN_GENCB_call.exit87:                             ; preds = %bb.at
  %i.hl = load ptr, ptr %i.u, align 8, !tbaa !12
  %i.hm = tail call i32 %i.hl(i32 noundef 2, i32 noundef %.057, ptr noundef nonnull %5) #5, !inline_history !21
  %.not69 = icmp eq i32 %i.hm, 0
  br i1 %.not69, label %probable_prime.exit.thread, label %BN_GENCB_call.exit87.thread

BN_GENCB_call.exit87.thread:                      ; preds = %bb.as, %bb.av, %bb.au, %BN_GENCB_call.exit87
  %i.hn = add nuw nsw i32 %.058137, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.hn, %..i
  br i1 %exitcond.not, label %probable_prime.exit.thread, label %.preheader, !llvm.loop !22

probable_prime.exit.thread.loopexit288:           ; preds = %probable_prime_dh.exit, %BN_GENCB_call.exit, %bb.aq, %bb.ap, %calc_trial_divisions.exit.i, %bb.am
  br label %probable_prime.exit.thread

probable_prime.exit.thread:                       ; preds = %.lr.ph.split.i, %.split61.i, %.backedge.i, %.split61.us.split.split.us.us.split.us.i, %.backedge.us.i, %.lr.ph.split.us.split.split.i, %.split61.us.us.us.i, %.backedge.us.us.i, %.lr.ph.split.us.split.split.us.i, %bb.at, %bb.ar, %.preheader, %BN_GENCB_call.exit87, %BN_GENCB_call.exit87.thread, %.preheader.i, %bb.ap, %probable_prime.exit.thread.loopexit288, %probable_prime_dh.exit.thread, %bb.f
  %.059 = phi i32 [ 0, %bb.f ], [ 1, %BN_GENCB_call.exit87.thread ], [ 0, %probable_prime_dh.exit.thread ], [ 0, %.split61.us.us.us.i ], [ 0, %probable_prime.exit.thread.loopexit288 ], [ 0, %.preheader.i ], [ 0, %.split61.us.split.split.us.us.split.us.i ], [ 1, %bb.ap ], [ 0, %bb.at ], [ 0, %BN_GENCB_call.exit87 ], [ 0, %.preheader ], [ 0, %bb.ar ], [ 0, %.lr.ph.split.us.split.split.us.i ], [ 0, %.backedge.us.us.i ], [ 0, %.lr.ph.split.us.split.split.i ], [ 0, %.backedge.us.i ], [ 0, %.backedge.i ], [ 0, %.split61.i ], [ 0, %.lr.ph.split.i ]
  tail call void @CRYPTO_free(ptr noundef nonnull %i.i, ptr noundef nonnull @.str, i32 noundef 204) #5
  tail call void @BN_CTX_end(ptr noundef %6) #5
  br label %bb.aw

bb.aw:                                            ; preds = %bb.e, %probable_prime.exit.thread, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ %.059, %probable_prime.exit.thread ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BN_CTX_start(ptr noundef) local_unnamed_addr #3

declare ptr @BN_CTX_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @bn_is_prime_int(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = tail call ptr @BN_value_one() #5
  %i.c = tail call i32 @BN_cmp(ptr noundef %0, ptr noundef %i.b) #5
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %.thread44, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @BN_is_odd(ptr noundef %0) #5
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @BN_is_word(ptr noundef %0, i64 noundef 3) #5
  %.not37 = icmp eq i32 %i.f, 0
  br i1 %.not37, label %bb.e, label %.thread44

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 @BN_is_word(ptr noundef %0, i64 noundef 2) #5
  br label %.thread44

bb.e:                                             ; preds = %bb.c
  %.not38 = icmp eq i32 %3, 0
  br i1 %.not38, label %.thread48, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 @BN_num_bits(ptr noundef %0) #5 ; 4 uses
  %i.i = icmp slt i32 %i.h, 513
  br i1 %i.i, label %calc_trial_divisions.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = icmp samesign ult i32 %i.h, 1025
  br i1 %i.j, label %calc_trial_divisions.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = icmp samesign ult i32 %i.h, 2049
  br i1 %i.k, label %calc_trial_divisions.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = icmp samesign ult i32 %i.h, 4097
  %..i = select i1 %i.l, i64 1024, i64 2048
  br label %calc_trial_divisions.exit

calc_trial_divisions.exit:                        ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ 384, %bb.h ], [ 64, %bb.f ], [ 128, %bb.g ], [ %..i, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %calc_trial_divisions.exit, %bb.l
  %indvars.iv = phi i64 [ 1, %calc_trial_divisions.exit ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr @primes, i64 %indvars.iv
  %i.n = load i16, ptr %i.m, align 2, !tbaa !14
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %i.p = tail call i64 @BN_mod_word(ptr noundef %0, i64 noundef %i.o) #5
  switch i64 %i.p, label %bb.l [
    i64 -1, label %.thread44
    i64 0, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.q = tail call i32 @BN_is_word(ptr noundef %0, i64 noundef %i.o) #5
  br label %.thread44

bb.l:                                             ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.0.i
  br i1 %exitcond.not, label %bb.m, label %bb.j, !llvm.loop !23

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %.thread48, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = load i32, ptr %4, align 8, !tbaa !9
  switch i32 %i.r, label %.thread44 [
    i32 1, label %bb.o
    i32 2, label %bb.q
  ]

end_hunk_0
