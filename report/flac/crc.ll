Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/crc?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@FLAC__crc8_table = hidden local_unnamed_addr constant [256 x i8] c"\00\07\0E\09\1C\1B\12\158?61$#*-pw~ylkbeHOFATSZ]\E0\E7\EE\E9\FC\FB\F2\F5\D8\DF\D6\D1\C4\C3\CA\CD\90\97\9E\99\8C\8B\82\85\A8\AF\A6\A1\B4\B3\BA\BD\C7\C0\C9\CE\DB\DC\D5\D2\FF\F8\F1\F6\E3\E4\ED\EA\B7\B0\B9\BE\AB\AC\A5\A2\8F\88\81\86\93\94\9D\9A' ).;<52\1F\18\11\16\03\04\0D\0AWPY^KLEBohafst}z\89\8E\87\80\95\92\9B\9C\B1\B6\BF\B8\AD\AA\A3\A4\F9\FE\F7\F0\E5\E2\EB\EC\C1\C6\CF\C8\DD\DA\D3\D4ing`ur{|QV_XMJCD\19\1E\17\10\05\02\0B\0C!&/(=:34NI@GRU\\[vqx\7Fjmdc>907\22%,+\06\01\08\0F\1A\1D\14\13\AE\A9\A0\A7\B2\B5\BC\BB\96\91\98\9F\8A\8D\84\83\DE\D9\D0\D7\C2\C5\CC\CB\E6\E1\E8\EF\FA\FD\F4\F3", align 16
@FLAC__crc16_table = hidden local_unnamed_addr constant [8 x [256 x i16]] [[256 x i16] [i16 0, i16 -32763, i16 -32753, i16 10, i16 -32741, i16 30, i16 20, i16 -32751, i16 -32717, i16 54, i16 60, i16 -32711, i16 40, i16 -32723, i16 -32729, i16 34, i16 -32669, i16 102, i16 108, i16 -32663, i16 120, i16 -32643, i16 -32649, i16 114, i16 80, i16 -32683, i16 -32673, i16 90, i16 -32693, i16 78, i16 68, i16 -32703, i16 -32573, i16 198, i16 204, i16 -32567, i16 216, i16 -32547, i16 -32553, i16 210, i16 240, i16 -32523, i16 -32513, i16 250, i16 -32533, i16 238, i16 228, i16 -32543, i16 160, i16 -32603, i16 -32593, i16 170, i16 -32581, i16 190, i16 180, i16 -32591, i16 -32621, i16 150, i16 156, i16 -32615, i16 136, i16 -32627, i16 -32633, i16 130, i16 -32381, i16 390, i16 396, i16 -32375, i16 408, i16 -32355, i16 -32361, i16 402, i16 432, i16 -32331, i16 -32321, i16 442, i16 -32341, i16 430, i16 420, i16 -32351, i16 480, i16 -32283, i16 -32273, i16 490, i16 -32261, i16 510, i16 500, i16 -32271, i16 -32301, i16 470, i16 476, i16 -32295, i16 456, i16 -32307, i16 -32313, i16 450, i16 320, i16 -32443, i16 -32433, i16 330, i16 -32421, i16 350, i16 340, i16 -32431, i16 -32397, i16 374, i16 380, i16 -32391, i16 360, i16 -32403, i16 -32409, i16 354, i16 -32477, i16 294, i16 300, i16 -32471, i16 312, i16 -32451, i16 -32457, i16 306, i16 272, i16 -32491, i16 -32481, i16 282, i16 -32501, i16 270, i16 260, i16 -32511, i16 -31997, i16 774, i16 780, i16 -31991, i16 792, i16 -31971, i16 -31977, i16 786, i16 816, i16 -31947, i16 -31937, i16 826, i16 -31957, i16 814, i16 804, i16 -31967, i16 864, i16 -31899, i16 -31889, i16 874, i16 -31877, i16 894, i16 884, i16 -31887, i16 -31917, i16 854, i16 860, i16 -31911, i16 840, i16 -31923, i16 -31929, i16 834, i16 960, i16 -31803, i16 -31793, i16 970, i16 -31781, i16 990, i16 980, i16 -31791, i16 -31757, i16 1014, i16 1020, i16 -31751, i16 1000, i16 -31763, i16 -31769, i16 994, i16 -31837, i16 934, i16 940, i16 -31831, i16 952, i16 -31811, i16 -31817, i16 946, i16 912, i16 -31851, i16 -31841, i16 922, i16 -31861, i16 910, i16 900, i16 -31871, i16 640, i16 -32123, i16 -32113, i16 650, i16 -32101, i16 670, i16 660, i16 -32111, i16 -32077, i16 694, i16 700, i16 -32071, i16 680, i16 -32083, i16 -32089, i16 674, i16 -32029, i16 742, i16 748, i16 -32023, i16 760, i16 -32003, i16 -32009, i16 754, i16 720, i16 -32043, i16 -32033, i16 730, i16 -32053, i16 718, i16 708, i16 -32063, i16 -32189, i16 582, i16 588, i16 -32183, i16 600, i16 -32163, i16 -32169, i16 594, i16 624, i16 -32139, i16 -32129, i16 634, i16 -32149, i16 622, i16 612, i16 -32159, i16 544, i16 -32219, i16 -32209, i16 554, i16 -32197, i16 574, i16 564, i16 -32207, i16 -32237, i16 534, i16 540, i16 -32231, i16 520, i16 -32243, i16 -32249, i16 514], [256 x i16] [i16 0, i16 -31229, i16 -29693, i16 2560, i16 -26621, i16 7680, i16 5120, i16 -28157, i16 -20477, i16 13824, i16 15360, i16 -17917, i16 10240, i16 -20989, i16 -23549, i16 8704, i16 -8189, i16 26112, i16 27648, i16 -5629, i16 30720, i16 -509, i16 -3069, i16 29184, i16 20480, i16 -10749, i16 -9213, i16 23040, i16 -14333, i16 19968, i16 17408, i16 -15869, i16 16387, i16 -14848, i16 -13312, i16 18947, i16 -10240, i16 24067, i16 21507, i16 -11776, i16 -4096, i16 30211, i16 31747, i16 -1536, i16 26627, i16 -4608, i16 -7168, i16 25091, i16 -24576, i16 9731, i16 11267, i16 -22016, i16 14339, i16 -16896, i16 -19456, i16 12803, i16 4099, i16 -27136, i16 -25600, i16 6659, i16 -30720, i16 3587, i16 1027, i16 -32256, i16 -32762, i16 1541, i16 3077, i16 -30202, i16 6149, i16 -25082, i16 -27642, i16 4613, i16 12293, i16 -18938, i16 -17402, i16 14853, i16 -22522, i16 11781, i16 9221, i16 -24058, i16 24581, i16 -6650, i16 -5114, i16 27141, i16 -2042, i16 32261, i16 29701, i16 -3578, i16 -12282, i16 22021, i16 23557, i16 -9722, i16 18437, i16 -12794, i16 -15354, i16 16901, i16 -16379, i16 17926, i16 19462, i16 -13819, i16 22534, i16 -8699, i16 -11259, i16 20998, i16 28678, i16 -2555, i16 -1019, i16 31238, i16 -6139, i16 28166, i16 25606, i16 -7675, i16 8198, i16 -23035, i16 -21499, i16 10758, i16 -18427, i16 15878, i16 13318, i16 -19963, i16 -28667, i16 5638, i16 7174, i16 -26107, i16 2054, i16 -29179, i16 -31739, i16 518, i16 -32759, i16 1546, i16 3082, i16 -30199, i16 6154, i16 -25079, i16 -27639, i16 4618, i16 12298, i16 -18935, i16 -17399, i16 14858, i16 -22519, i16 11786, i16 9226, i16 -24055, i16 24586, i16 -6647, i16 -5111, i16 27146, i16 -2039, i16 32266, i16 29706, i16 -3575, i16 -12279, i16 22026, i16 23562, i16 -9719, i16 18442, i16 -12791, i16 -15351, i16 16906, i16 -16374, i16 17929, i16 19465, i16 -13814, i16 22537, i16 -8694, i16 -11254, i16 21001, i16 28681, i16 -2550, i16 -1014, i16 31241, i16 -6134, i16 28169, i16 25609, i16 -7670, i16 8201, i16 -23030, i16 -21494, i16 10761, i16 -18422, i16 15881, i16 13321, i16 -19958, i16 -28662, i16 5641, i16 7177, i16 -26102, i16 2057, i16 -29174, i16 -31734, i16 521, i16 15, i16 -31220, i16 -29684, i16 2575, i16 -26612, i16 7695, i16 5135, i16 -28148, i16 -20468, i16 13839, i16 15375, i16 -17908, i16 10255, i16 -20980, i16 -23540, i16 8719, i16 -8180, i16 26127, i16 27663, i16 -5620, i16 30735, i16 -500, i16 -3060, i16 29199, i16 20495, i16 -10740, i16 -9204, i16 23055, i16 -14324, i16 19983, i16 17423, i16 -15860, i16 16396, i16 -14833, i16 -13297, i16 18956, i16 -10225, i16 24076, i16 21516, i16 -11761, i16 -4081, i16 30220, i16 31756, i16 -1521, i16 26636, i16 -4593, i16 -7153, i16 25100, i16 -24561, i16 9740, i16 11276, i16 -22001, i16 14348, i16 -16881, i16 -19441, i16 12812, i16 4108, i16 -27121, i16 -25585, i16 6668, i16 -30705, i16 3596, i16 1036, i16 -32241], [256 x i16] [i16 0, i16 -32745, i16 -32725, i16 60, i16 -32685, i16 68, i16 120, i16 -32657, i16 -32605, i16 180, i16 136, i16 -32609, i16 240, i16 -32537, i16 -32549, i16 204, i16 -32445, i16 340, i16 360, i16 -32385, i16 272, i16 -32505, i16 -32453, i16 300, i16 480, i16 -32265, i16 -32309, i16 476, i16 -32333, i16 420, i16 408, i16 -32369, i16 -32125, i16 660, i16 680, i16 -32065, i16 720, i16 -32057, i16 -32005, i16 748, i16 544, i16 -32201, i16 -32245, i16 540, i16 -32141, i16 612, i16 600, i16 -32177, i16 960, i16 -31785, i16 -31765, i16 1020, i16 -31853, i16 900, i16 952, i16 -31825, i16 -31901, i16 884, i16 840, i16 -31905, i16 816, i16 -31961, i16 -31973, i16 780, i16 -31485, i16 1300, i16 1320, i16 -31425, i16 1360, i16 -31417, i16 -31365, i16 1388, i16 1440, i16 -31305, i16 -31349, i16 1436, i16 -31245, i16 1508, i16 1496, i16 -31281, i16 1088, i16 -31657, i16 -31637, i16 1148, i16 -31725, i16 1028, i16 1080, i16 -31697, i16 -31517, i16 1268, i16 1224, i16 -31521, i16 1200, i16 -31577, i16 -31589, i16 1164, i16 1920, i16 -30825, i16 -30805, i16 1980, i16 -30765, i16 1988, i16 2040, i16 -30737, i16 -30941, i16 1844, i16 1800, i16 -30945, i16 1904, i16 -30873, i16 -30885, i16 1868, i16 -31037, i16 1748, i16 1768, i16 -30977, i16 1680, i16 -31097, i16 -31045, i16 1708, i16 1632, i16 -31113, i16 -31157, i16 1628, i16 -31181, i16 1572, i16 1560, i16 -31217, i16 -30205, i16 2580, i16 2600, i16 -30145, i16 2640, i16 -30137, i16 -30085, i16 2668, i16 2720, i16 -30025, i16 -30069, i16 2716, i16 -29965, i16 2788, i16 2776, i16 -30001, i16 2880, i16 -29865, i16 -29845, i16 2940, i16 -29933, i16 2820, i16 2872, i16 -29905, i16 -29725, i16 3060, i16 3016, i16 -29729, i16 2992, i16 -29785, i16 -29797, i16 2956, i16 2176, i16 -30569, i16 -30549, i16 2236, i16 -30509, i16 2244, i16 2296, i16 -30481, i16 -30685, i16 2100, i16 2056, i16 -30689, i16 2160, i16 -30617, i16 -30629, i16 2124, i16 -30269, i16 2516, i16 2536, i16 -30209, i16 2448, i16 -30329, i16 -30277, i16 2476, i16 2400, i16 -30345, i16 -30389, i16 2396, i16 -30413, i16 2340, i16 2328, i16 -30449, i16 3840, i16 -28905, i16 -28885, i16 3900, i16 -28845, i16 3908, i16 3960, i16 -28817, i16 -28765, i16 4020, i16 3976, i16 -28769, i16 4080, i16 -28697, i16 -28709, i16 4044, i16 -29117, i16 3668, i16 3688, i16 -29057, i16 3600, i16 -29177, i16 -29125, i16 3628, i16 3808, i16 -28937, i16 -28981, i16 3804, i16 -29005, i16 3748, i16 3736, i16 -29041, i16 -29309, i16 3476, i16 3496, i16 -29249, i16 3536, i16 -29241, i16 -29189, i16 3564, i16 3360, i16 -29385, i16 -29429, i16 3356, i16 -29325, i16 3428, i16 3416, i16 -29361, i16 3264, i16 -29481, i16 -29461, i16 3324, i16 -29549, i16 3204, i16 3256, i16 -29521, i16 -29597, i16 3188, i16 3144, i16 -29601, i16 3120, i16 -29657, i16 -29669, i16 3084], [256 x i16] [i16 0, i16 -27645, i16 -22525, i16 15360, i16 -12285, i16 17408, i16 30720, i16 -5117, i16 8195, i16 -19456, i16 -30720, i16 7171, i16 -4096, i16 25603, i16 22531, i16 -13312, i16 16390, i16 -11259, i16 -6139, i16 31750, i16 -28667, i16 1030, i16 14342, i16 -21499, i16 24581, i16 -3066, i16 -14330, i16 23557, i16 -20474, i16 9221, i16 6149, i16 -29690, i16 -32756, i16 5135, i16 10255, i16 -17396, i16 20495, i16 -15348, i16 -2036, i16 27663, i16 -24561, i16 13324, i16 2060, i16 -25585, i16 28684, i16 -7153, i16 -10225, i16 19468, i16 -16374, i16 21513, i16 26633, i16 -1014, i16 4105, i16 -31734, i16 -18422, i16 11273, i16 -8183, i16 29706, i16 18442, i16 -9207, i16 12298, i16 -23543, i16 -26615, i16 3082, i16 -32739, i16 5150, i16 10270, i16 -17379, i16 20510, i16 -15331, i16 -2019, i16 27678, i16 -24546, i16 13341, i16 2077, i16 -25570, i16 28701, i16 -7138, i16 -10210, i16 19485, i16 -16357, i16 21528, i16 26648, i16 -997, i16 4120, i16 -31717, i16 -18405, i16 11288, i16 -8168, i16 29723, i16 18459, i16 -9192, i16 12315, i16 -23528, i16 -26600, i16 3099, i16 17, i16 -27630, i16 -22510, i16 15377, i16 -12270, i16 17425, i16 30737, i16 -5102, i16 8210, i16 -19439, i16 -30703, i16 7186, i16 -4079, i16 25618, i16 22546, i16 -13295, i16 16407, i16 -11244, i16 -6124, i16 31767, i16 -28652, i16 1047, i16 14359, i16 -21484, i16 24596, i16 -3049, i16 -14313, i16 23572, i16 -20457, i16 9236, i16 6164, i16 -29673, i16 -32705, i16 5180, i16 10300, i16 -17345, i16 20540, i16 -15297, i16 -1985, i16 27708, i16 -24516, i16 13375, i16 2111, i16 -25540, i16 28735, i16 -7108, i16 -10180, i16 19519, i16 -16327, i16 21562, i16 26682, i16 -967, i16 4154, i16 -31687, i16 -18375, i16 11322, i16 -8134, i16 29753, i16 18489, i16 -9158, i16 12345, i16 -23494, i16 -26566, i16 3129, i16 51, i16 -27600, i16 -22480, i16 15411, i16 -12240, i16 17459, i16 30771, i16 -5072, i16 8240, i16 -19405, i16 -30669, i16 7216, i16 -4045, i16 25648, i16 22576, i16 -13261, i16 16437, i16 -11210, i16 -6090, i16 31797, i16 -28618, i16 1077, i16 14389, i16 -21450, i16 24630, i16 -3019, i16 -14283, i16 23606, i16 -20427, i16 9270, i16 6198, i16 -29643, i16 34, i16 -27615, i16 -22495, i16 15394, i16 -12255, i16 17442, i16 30754, i16 -5087, i16 8225, i16 -19422, i16 -30686, i16 7201, i16 -4062, i16 25633, i16 22561, i16 -13278, i16 16420, i16 -11225, i16 -6105, i16 31780, i16 -28633, i16 1060, i16 14372, i16 -21465, i16 24615, i16 -3036, i16 -14300, i16 23591, i16 -20444, i16 9255, i16 6183, i16 -29660, i16 -32722, i16 5165, i16 10285, i16 -17362, i16 20525, i16 -15314, i16 -2002, i16 27693, i16 -24531, i16 13358, i16 2094, i16 -25555, i16 28718, i16 -7123, i16 -10195, i16 19502, i16 -16344, i16 21547, i16 26667, i16 -984, i16 4139, i16 -31704, i16 -18392, i16 11307, i16 -8149, i16 29736, i16 18472, i16 -9173, i16 12328, i16 -23509, i16 -26581, i16 3112], [256 x i16] [i16 0, i16 -32645, i16 -32525, i16 136, i16 -32285, i16 408, i16 272, i16 -32405, i16 -31805, i16 952, i16 816, i16 -31925, i16 544, i16 -32165, i16 -32045, i16 680, i16 -30845, i16 2040, i16 1904, i16 -30965, i16 1632, i16 -31205, i16 -31085, i16 1768, i16 1088, i16 -31685, i16 -31565, i16 1224, i16 -31325, i16 1496, i16 1360, i16 -31445, i16 -28925, i16 3960, i16 4080, i16 -28789, i16 3808, i16 -29029, i16 -29165, i16 3688, i16 3264, i16 -29509, i16 -29645, i16 3144, i16 -29405, i16 3416, i16 3536, i16 -29269, i16 2176, i16 -30469, i16 -30605, i16 2056, i16 -30365, i16 2328, i16 2448, i16 -30229, i16 -29885, i16 2872, i16 2992, i16 -29749, i16 2720, i16 -29989, i16 -30125, i16 2600, i16 -25085, i16 7800, i16 7920, i16 -24949, i16 8160, i16 -24677, i16 -24813, i16 8040, i16 7616, i16 -25157, i16 -25293, i16 7496, i16 -25565, i16 7256, i16 7376, i16 -25429, i16 6528, i16 -26117, i16 -26253, i16 6408, i16 -26525, i16 6168, i16 6288, i16 -26389, i16 -26045, i16 6712, i16 6832, i16 -25909, i16 7072, i16 -25637, i16 -25773, i16 6952, i16 4352, i16 -28293, i16 -28173, i16 4488, i16 -28445, i16 4248, i16 4112, i16 -28565, i16 -27965, i16 4792, i16 4656, i16 -28085, i16 4896, i16 -27813, i16 -27693, i16 5032, i16 -27005, i16 5880, i16 5744, i16 -27125, i16 5984, i16 -26853, i16 -26733, i16 6120, i16 5440, i16 -27333, i16 -27213, i16 5576, i16 -27485, i16 5336, i16 5200, i16 -27605, i16 -17405, i16 15480, i16 15600, i16 -17269, i16 15840, i16 -16997, i16 -17133, i16 15720, i16 16320, i16 -16453, i16 -16589, i16 16200, i16 -16861, i16 15960, i16 16080, i16 -16725, i16 15232, i16 -17413, i16 -17549, i16 15112, i16 -17821, i16 14872, i16 14992, i16 -17685, i16 -18365, i16 14392, i16 14512, i16 -18229, i16 14752, i16 -17957, i16 -18093, i16 14632, i16 13056, i16 -19589, i16 -19469, i16 13192, i16 -19741, i16 12952, i16 12816, i16 -19861, i16 -20285, i16 12472, i16 12336, i16 -20405, i16 12576, i16 -20133, i16 -20013, i16 12712, i16 -19325, i16 13560, i16 13424, i16 -19445, i16 13664, i16 -19173, i16 -19053, i16 13800, i16 14144, i16 -18629, i16 -18509, i16 14280, i16 -18781, i16 14040, i16 13904, i16 -18901, i16 8704, i16 -23941, i16 -23821, i16 8840, i16 -23581, i16 9112, i16 8976, i16 -23701, i16 -24125, i16 8632, i16 8496, i16 -24245, i16 8224, i16 -24485, i16 -24365, i16 8360, i16 -23165, i16 9720, i16 9584, i16 -23285, i16 9312, i16 -23525, i16 -23405, i16 9448, i16 9792, i16 -22981, i16 -22861, i16 9928, i16 -22621, i16 10200, i16 10064, i16 -22741, i16 -21245, i16 11640, i16 11760, i16 -21109, i16 11488, i16 -21349, i16 -21485, i16 11368, i16 11968, i16 -20805, i16 -20941, i16 11848, i16 -20701, i16 12120, i16 12240, i16 -20565, i16 10880, i16 -21765, i16 -21901, i16 10760, i16 -21661, i16 11032, i16 11152, i16 -21525, i16 -22205, i16 10552, i16 10672, i16 -22069, i16 10400, i16 -22309, i16 -22445, i16 10280], [256 x i16] [i16 0, i16 -2045, i16 28675, i16 -30720, i16 -8186, i16 6149, i16 -28667, i16 26630, i16 16393, i16 -18422, i16 12298, i16 -14327, i16 -24561, i16 22540, i16 -12276, i16 10255, i16 -32750, i16 30737, i16 -4079, i16 2066, i16 24596, i16 -26601, i16 4119, i16 -6124, i16 -16357, i16 14360, i16 -20456, i16 18459, i16 8221, i16 -10210, i16 20510, i16 -22499, i16 -32735, i16 30754, i16 -4062, i16 2081, i16 24615, i16 -26588, i16 4132, i16 -6105, i16 -16344, i16 14379, i16 -20437, i16 18472, i16 8238, i16 -10195, i16 20525, i16 -22482, i16 51, i16 -2000, i16 28720, i16 -30669, i16 -8139, i16 6198, i16 -28618, i16 26677, i16 16442, i16 -18375, i16 12345, i16 -14278, i16 -24516, i16 22591, i16 -12225, i16 10300, i16 -32697, i16 30788, i16 -4028, i16 2119, i16 24641, i16 -26558, i16 4162, i16 -6079, i16 -16306, i16 14413, i16 -20403, i16 18510, i16 8264, i16 -10165, i16 20555, i16 -22456, i16 85, i16 -1962, i16 28758, i16 -30635, i16 -8109, i16 6224, i16 -28592, i16 26707, i16 16476, i16 -18337, i16 12383, i16 -14244, i16 -24486, i16 22617, i16 -12199, i16 10330, i16 102, i16 -1947, i16 28773, i16 -30618, i16 -8096, i16 6243, i16 -28573, i16 26720, i16 16495, i16 -18324, i16 12396, i16 -14225, i16 -24471, i16 22634, i16 -12182, i16 10345, i16 -32652, i16 30839, i16 -3977, i16 2164, i16 24690, i16 -26511, i16 4209, i16 -6030, i16 -16259, i16 14462, i16 -20354, i16 18557, i16 8315, i16 -10120, i16 20600, i16 -22405, i16 -32629, i16 30856, i16 -3960, i16 2187, i16 24717, i16 -26482, i16 4238, i16 -6003, i16 -16254, i16 14465, i16 -20351, i16 18562, i16 8324, i16 -10105, i16 20615, i16 -22396, i16 153, i16 -1894, i16 28826, i16 -30567, i16 -8033, i16 6300, i16 -28516, i16 26783, i16 16528, i16 -18285, i16 12435, i16 -14192, i16 -24426, i16 22677, i16 -12139, i16 10390, i16 170, i16 -1879, i16 28841, i16 -30550, i16 -8020, i16 6319, i16 -28497, i16 26796, i16 16547, i16 -18272, i16 12448, i16 -14173, i16 -24411, i16 22694, i16 -12122, i16 10405, i16 -32584, i16 30907, i16 -3909, i16 2232, i16 24766, i16 -26435, i16 4285, i16 -5954, i16 -16207, i16 14514, i16 -20302, i16 18609, i16 8375, i16 -10060, i16 20660, i16 -22345, i16 204, i16 -1841, i16 28879, i16 -30516, i16 -7990, i16 6345, i16 -28471, i16 26826, i16 16581, i16 -18234, i16 12486, i16 -14139, i16 -24381, i16 22720, i16 -12096, i16 10435, i16 -32546, i16 30941, i16 -3875, i16 2270, i16 24792, i16 -26405, i16 4315, i16 -5928, i16 -16169, i16 14548, i16 -20268, i16 18647, i16 8401, i16 -10030, i16 20690, i16 -22319, i16 -32531, i16 30958, i16 -3858, i16 2285, i16 24811, i16 -26392, i16 4328, i16 -5909, i16 -16156, i16 14567, i16 -20249, i16 18660, i16 8418, i16 -10015, i16 20705, i16 -22302, i16 255, i16 -1796, i16 28924, i16 -30465, i16 -7943, i16 6394, i16 -28422, i16 26873, i16 16630, i16 -18187, i16 12533, i16 -14090, i16 -24336, i16 22771, i16 -12045, i16 10480], [256 x i16] [i16 0, i16 -32493, i16 -32221, i16 816, i16 -31677, i16 1360, i16 1632, i16 -30861, i16 -30589, i16 2448, i16 2720, i16 -29773, i16 3264, i16 -29229, i16 -28957, i16 4080, i16 -28413, i16 4112, i16 4896, i16 -28109, i16 5440, i16 -27565, i16 -26781, i16 5744, i16 6528, i16 -26477, i16 -25693, i16 6832, i16 -25149, i16 7376, i16 8160, i16 -24845, i16 -24061, i16 8976, i16 8224, i16 -24269, i16 9792, i16 -22701, i16 -23453, i16 9584, i16 10880, i16 -21613, i16 -22365, i16 10672, i16 -20797, i16 12240, i16 11488, i16 -21005, i16 13056, i16 -19949, i16 -20189, i16 12336, i16 -18621, i16 13904, i16 13664, i16 -19341, i16 -17533, i16 14992, i16 14752, i16 -18253, i16 16320, i16 -16685, i16 -16925, i16 15600, i16 -15357, i16 17680, i16 17952, i16 -14541, i16 16448, i16 -16045, i16 -15773, i16 17264, i16 19584, i16 -12909, i16 -12637, i16 20400, i16 -14141, i16 18896, i16 19168, i16 -13325, i16 21760, i16 -11245, i16 -10461, i16 22064, i16 -11965, i16 20560, i16 21344, i16 -11661, i16 -8829, i16 23696, i16 24480, i16 -8525, i16 22976, i16 -10029, i16 -9245, i16 23280, i16 26112, i16 -6381, i16 -7133, i16 25904, i16 -7613, i16 25424, i16 24672, i16 -7821, i16 -4477, i16 28560, i16 27808, i16 -4685, i16 27328, i16 -5165, i16 -5917, i16 27120, i16 -2301, i16 30224, i16 29984, i16 -3021, i16 29504, i16 -3501, i16 -3741, i16 28784, i16 32640, i16 -365, i16 -605, i16 31920, i16 -1085, i16 31440, i16 31200, i16 -1805, i16 2051, i16 -30448, i16 -30176, i16 2867, i16 -29632, i16 3411, i16 3683, i16 -28816, i16 -32640, i16 403, i16 675, i16 -31824, i16 1219, i16 -31280, i16 -31008, i16 2035, i16 -26368, i16 6163, i16 6947, i16 -26064, i16 7491, i16 -25520, i16 -24736, i16 7795, i16 4483, i16 -28528, i16 -27744, i16 4787, i16 -27200, i16 5331, i16 6115, i16 -26896, i16 -22016, i16 11027, i16 10275, i16 -22224, i16 11843, i16 -20656, i16 -21408, i16 11635, i16 8835, i16 -23664, i16 -24416, i16 8627, i16 -22848, i16 10195, i16 9443, i16 -23056, i16 15107, i16 -17904, i16 -18144, i16 14387, i16 -16576, i16 15955, i16 15715, i16 -17296, i16 -19584, i16 12947, i16 12707, i16 -20304, i16 14275, i16 -18736, i16 -18976, i16 13555, i16 -13312, i16 19731, i16 20003, i16 -12496, i16 18499, i16 -14000, i16 -13728, i16 19315, i16 17539, i16 -14960, i16 -14688, i16 18355, i16 -16192, i16 16851, i16 17123, i16 -15376, i16 23811, i16 -9200, i16 -8416, i16 24115, i16 -9920, i16 22611, i16 23395, i16 -9616, i16 -10880, i16 21651, i16 22435, i16 -10576, i16 20931, i16 -12080, i16 -11296, i16 21235, i16 28163, i16 -4336, i16 -5088, i16 27955, i16 -5568, i16 27475, i16 26723, i16 -5776, i16 -6528, i16 26515, i16 25763, i16 -6736, i16 25283, i16 -7216, i16 -7968, i16 25075, i16 -256, i16 32275, i16 32035, i16 -976, i16 31555, i16 -1456, i16 -1696, i16 30835, i16 30595, i16 -2416, i16 -2656, i16 29875, i16 -3136, i16 29395, i16 29155, i16 -3856], [256 x i16] [i16 0, i16 4102, i16 8204, i16 12298, i16 16408, i16 20510, i16 24596, i16 28690, i16 -32720, i16 -28618, i16 -24516, i16 -20422, i16 -16344, i16 -12242, i16 -8156, i16 -4062, i16 -32667, i16 -28573, i16 -24471, i16 -20369, i16 -16259, i16 -12165, i16 -8079, i16 -3977, i16 85, i16 4179, i16 8281, i16 12383, i16 16461, i16 20555, i16 24641, i16 28743, i16 -32561, i16 -28471, i16 -24381, i16 -20283, i16 -16169, i16 -12079, i16 -7973, i16 -3875, i16 255, i16 4345, i16 8435, i16 12533, i16 16615, i16 20705, i16 24811, i16 28909, i16 170, i16 4268, i16 8358, i16 12448, i16 16562, i16 20660, i16 24766, i16 28856, i16 -32614, i16 -28516, i16 -24426, i16 -20336, i16 -16254, i16 -12156, i16 -8050, i16 -3960, i16 -32357, i16 -28259, i16 -24169, i16 -20079, i16 -15997, i16 -11899, i16 -7793, i16 -3703, i16 427, i16 4525, i16 8615, i16 12705, i16 16819, i16 20917, i16 25023, i16 29113, i16 510, i16 4600, i16 8690, i16 12788, i16 16870, i16 20960, i16 25066, i16 29164, i16 -32306, i16 -28216, i16 -24126, i16 -20028, i16 -15914, i16 -11824, i16 -7718, i16 -3620, i16 340, i16 4434, i16 8536, i16 12638, i16 16716, i16 20810, i16 24896, i16 28998, i16 -32412, i16 -28318, i16 -24216, i16 -20114, i16 -16004, i16 -11910, i16 -7824, i16 -3722, i16 -32463, i16 -28361, i16 -24259, i16 -20165, i16 -16087, i16 -11985, i16 -7899, i16 -3805, i16 257, i16 4359, i16 8461, i16 12555, i16 16665, i16 20767, i16 24853, i16 28947, i16 -31949, i16 -27851, i16 -23745, i16 -19655, i16 -15573, i16 -11475, i16 -7385, i16 -3295, i16 771, i16 4869, i16 8975, i16 13065, i16 17179, i16 21277, i16 25367, i16 29457, i16 854, i16 4944, i16 9050, i16 13148, i16 17230, i16 21320, i16 25410, i16 29508, i16 -31898, i16 -27808, i16 -23702, i16 -19604, i16 -15490, i16 -11400, i16 -7310, i16 -3212, i16 1020, i16 5114, i16 9200, i16 13302, i16 17380, i16 21474, i16 25576, i16 29678, i16 -31796, i16 -27702, i16 -23616, i16 -19514, i16 -15404, i16 -11310, i16 -7208, i16 -3106, i16 -31847, i16 -27745, i16 -23659, i16 -19565, i16 -15487, i16 -11385, i16 -7283, i16 -3189, i16 937, i16 5039, i16 9125, i16 13219, i16 17329, i16 21431, i16 25533, i16 29627, i16 680, i16 4782, i16 8868, i16 12962, i16 17072, i16 21174, i16 25276, i16 29370, i16 -32104, i16 -28002, i16 -23916, i16 -19822, i16 -15744, i16 -11642, i16 -7540, i16 -3446, i16 -32051, i16 -27957, i16 -23871, i16 -19769, i16 -15659, i16 -11565, i16 -7463, i16 -3361, i16 765, i16 4859, i16 8945, i16 13047, i16 17125, i16 21219, i16 25321, i16 29423, i16 -32153, i16 -28063, i16 -23957, i16 -19859, i16 -15745, i16 -11655, i16 -7565, i16 -3467, i16 599, i16 4689, i16 8795, i16 12893, i16 16975, i16 21065, i16 25155, i16 29253, i16 514, i16 4612, i16 8718, i16 12808, i16 16922, i16 21020, i16 25110, i16 29200, i16 -32206, i16 -28108, i16 -24002, i16 -19912, i16 -15830, i16 -11732, i16 -7642, i16 -3552]], align 16

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define hidden zeroext i8 @FLAC__crc8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not5 = icmp eq i32 %1, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %1, 3                       ; 3 uses
  %i.a = icmp ult i32 %1, 4
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %1, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.08 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %i.y, %.lr.ph ]
  %.046 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.b = getelementptr inbounds nuw i8, ptr %.046, i64 1
  %i.c = load i8, ptr %.046, align 1, !tbaa !8
  %i.d = xor i8 %i.c, %.08
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @FLAC__crc8_table, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %.046, i64 2
  %i.i = load i8, ptr %i.b, align 1, !tbaa !8
  %i.j = xor i8 %i.i, %i.g
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @FLAC__crc8_table, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %.046, i64 3
  %i.o = load i8, ptr %i.h, align 1, !tbaa !8
  %i.p = xor i8 %i.o, %i.m
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @FLAC__crc8_table, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %.046, i64 4 ; 2 uses
  %i.u = load i8, ptr %i.n, align 1, !tbaa !8
  %i.v = xor i8 %i.u, %i.s
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @FLAC__crc8_table, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8     ; 3 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !12

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.08.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ]
  %.046.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.08.epil = phi i8 [ %i.ae, %.lr.ph.epil ], [ %.08.epil.init, %.lr.ph.epil.preheader ]
  %.046.epil = phi ptr [ %i.z, %.lr.ph.epil ], [ %.046.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %.046.epil, i64 1
  %i.aa = load i8, ptr %.046.epil, align 1, !tbaa !8
  %i.ab = xor i8 %i.aa, %.08.epil
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @FLAC__crc8_table, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8   ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !13

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi i8 [ 0, %bb.a ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ], [ %i.ae, %.lr.ph.epil ]
  ret i8 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define hidden zeroext i16 @FLAC__crc16(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, 7
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.020.lcssa = phi ptr [ %0, %bb.a ], [ %i.bd, %.lr.ph ] ; 3 uses
  %.018.lcssa = phi i32 [ %1, %bb.a ], [ %i.be, %.lr.ph ] ; 5 uses
  %.0.lcssa = phi i16 [ 0, %bb.a ], [ %i.bc, %.lr.ph ] ; 4 uses
  %.not27 = icmp eq i32 %.018.lcssa, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph31.preheader

.lr.ph31.preheader:                               ; preds = %.preheader
  %xtraiter = and i32 %.018.lcssa, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph31.prol.loopexit, label %.lr.ph31.prol

.lr.ph31.prol:                                    ; preds = %.lr.ph31.preheader
  %2 = add nsw i32 %.018.lcssa, -1
  %3 = shl i16 %.0.lcssa, 8
  %4 = lshr i16 %.0.lcssa, 8
  %5 = getelementptr inbounds nuw i8, ptr %.020.lcssa, i64 1
  %6 = load i8, ptr %.020.lcssa, align 1, !tbaa !8
  %7 = zext i8 %6 to i16
  %8 = xor i16 %4, %7
  %9 = zext nneg i16 %8 to i64
  %10 = getelementptr inbounds nuw [2 x i8], ptr @FLAC__crc16_table, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !11
  %12 = xor i16 %11, %3                           ; 2 uses
  br label %.lr.ph31.prol.loopexit

.lr.ph31.prol.loopexit:                           ; preds = %.lr.ph31.prol, %.lr.ph31.preheader
  %.lcssa.unr = phi i16 [ poison, %.lr.ph31.preheader ], [ %12, %.lr.ph31.prol ]
  %.130.unr = phi i16 [ %.0.lcssa, %.lr.ph31.preheader ], [ %12, %.lr.ph31.prol ]
  %.11929.unr = phi i32 [ %.018.lcssa, %.lr.ph31.preheader ], [ %2, %.lr.ph31.prol ]
  %.12128.unr = phi ptr [ %.020.lcssa, %.lr.ph31.preheader ], [ %5, %.lr.ph31.prol ]
  %13 = icmp eq i32 %.018.lcssa, 1
  br i1 %13, label %._crit_edge, label %.lr.ph31.a

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.024 = phi i16 [ %i.bc, %.lr.ph ], [ 0, %bb.a ]
  %.01823 = phi i32 [ %i.be, %.lr.ph ], [ %1, %bb.a ]
  %.02022 = phi ptr [ %i.bd, %.lr.ph ], [ %0, %bb.a ] ; 9 uses
  %i.b = load i8, ptr %.02022, align 1, !tbaa !8
  %i.c = zext i8 %i.b to i16
  %i.d = shl nuw i16 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %.02022, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %i.g = zext i8 %i.f to i16
  %i.h = or disjoint i16 %i.d, %i.g
  %i.i = xor i16 %i.h, %.024
  %i.j = zext i16 %i.i to i32                     ; 2 uses
  %i.k = lshr i32 %i.j, 8
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 3584), i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !11
  %i.o = and i32 %i.j, 255
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 3072), i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !11
  %i.s = xor i16 %i.r, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %.02022, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 2560), i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !11
  %i.y = xor i16 %i.s, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.02022, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 2048), i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !11
  %i.ae = xor i16 %i.y, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.02022, i64 4
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 1536), i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !11
  %i.ak = xor i16 %i.ae, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.02022, i64 5
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 1024), i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !11
  %i.aq = xor i16 %i.ak, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.02022, i64 6
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 512), i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !11
  %i.aw = xor i16 %i.aq, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.02022, i64 7
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !8
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @FLAC__crc16_table, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !11
  %i.bc = xor i16 %i.aw, %i.bb                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.02022, i64 8 ; 2 uses
  %i.be = add i32 %.01823, -8                     ; 3 uses
  %i.bf = icmp ugt i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph, label %.preheader, !llvm.loop !15

.lr.ph31.a:                                       ; preds = %.lr.ph31.prol.loopexit, %.lr.ph31.a
  %.130 = phi i16 [ %i.bp, %.lr.ph31.a ], [ %.130.unr, %.lr.ph31.prol.loopexit ] ; 2 uses
  %.11929 = phi i32 [ %23, %.lr.ph31.a ], [ %.11929.unr, %.lr.ph31.prol.loopexit ]
  %.12128 = phi ptr [ %24, %.lr.ph31.a ], [ %.12128.unr, %.lr.ph31.prol.loopexit ] ; 3 uses
  %14 = shl i16 %.130, 8
  %15 = lshr i16 %.130, 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.12128, i64 1
  %16 = load i8, ptr %.12128, align 1, !tbaa !8
  %17 = zext i8 %16 to i16
  %18 = xor i16 %15, %17
  %19 = zext nneg i16 %18 to i64
  %20 = getelementptr inbounds nuw [2 x i8], ptr @FLAC__crc16_table, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !11     ; 2 uses
  %22 = xor i16 %21, %14
  %23 = add nsw i32 %.11929, -2                   ; 2 uses
  %i.bh = shl i16 %21, 8
  %i.bi = lshr i16 %22, 8
  %24 = getelementptr inbounds nuw i8, ptr %.12128, i64 2
  %i.bj = load i8, ptr %i.bg, align 1, !tbaa !8
  %i.bk = zext i8 %i.bj to i16
  %i.bl = xor i16 %i.bi, %i.bk
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr @FLAC__crc16_table, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !11
  %i.bp = xor i16 %i.bo, %i.bh                    ; 2 uses
  %.not.1.a = icmp eq i32 %23, 0
  br i1 %.not.1.a, label %._crit_edge, label %.lr.ph31.a, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph31.prol.loopexit, %.lr.ph31.a, %.preheader
  %.1.lcssa = phi i16 [ %.0.lcssa, %.preheader ], [ %.lcssa.unr, %.lr.ph31.prol.loopexit ], [ %i.bp, %.lr.ph31.a ]
  ret i16 %.1.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define hidden zeroext i16 @FLAC__crc16_update_words32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, 1
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.024 = phi i16 [ %i.aw, %.lr.ph ], [ %2, %bb.a ]
  %.02023 = phi i32 [ %i.ay, %.lr.ph ], [ %1, %bb.a ]
  %.02122 = phi ptr [ %i.ax, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.b = load i32, ptr %.02122, align 4, !tbaa !18 ; 3 uses
  %i.c = lshr i32 %i.b, 16
  %i.d = zext i16 %.024 to i32
  %i.e = xor i32 %i.c, %i.d                       ; 2 uses
  %i.f = lshr i32 %i.e, 8
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 3584), i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !11
  %i.j = and i32 %i.e, 255
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 3072), i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !11
  %i.n = xor i16 %i.m, %i.i
  %i.o = lshr i32 %i.b, 8
  %i.p = and i32 %i.o, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 2560), i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !11
  %i.t = xor i16 %i.n, %i.s
  %i.u = and i32 %i.b, 255
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 2048), i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !11
  %i.y = xor i16 %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.02122, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !18  ; 4 uses
  %i.ab = lshr i32 %i.aa, 24
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 1536), i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !11
  %i.af = xor i16 %i.y, %i.ae
  %i.ag = lshr i32 %i.aa, 16
  %i.ah = and i32 %i.ag, 255
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 1024), i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !11
  %i.al = xor i16 %i.af, %i.ak
  %i.am = lshr i32 %i.aa, 8
  %i.an = and i32 %i.am, 255
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 512), i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !11
  %i.ar = xor i16 %i.al, %i.aq
  %i.as = and i32 %i.aa, 255
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @FLAC__crc16_table, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !11
  %i.aw = xor i16 %i.ar, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02122, i64 8 ; 2 uses
  %i.ay = add i32 %.02023, -2                     ; 3 uses
  %i.az = icmp ugt i32 %i.ay, 1
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.021.lcssa = phi ptr [ %0, %bb.a ], [ %i.ax, %.lr.ph ]
  %.020.lcssa = phi i32 [ %1, %bb.a ], [ %i.ay, %.lr.ph ]
  %.0.lcssa = phi i16 [ %2, %bb.a ], [ %i.aw, %.lr.ph ] ; 2 uses
  %.not = icmp eq i32 %.020.lcssa, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ba = load i32, ptr %.021.lcssa, align 4, !tbaa !18 ; 3 uses
  %i.bb = lshr i32 %i.ba, 16
  %i.bc = zext i16 %.0.lcssa to i32
  %i.bd = xor i32 %i.bb, %i.bc                    ; 2 uses
  %i.be = lshr i32 %i.bd, 8
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 1536), i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !11
  %i.bi = and i32 %i.bd, 255
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 1024), i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !11
  %i.bm = xor i16 %i.bl, %i.bh
  %i.bn = lshr i32 %i.ba, 8
  %i.bo = and i32 %i.bn, 255
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 512), i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !11
  %i.bs = xor i16 %i.bm, %i.br
  %i.bt = and i32 %i.ba, 255
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr @FLAC__crc16_table, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !11
  %i.bx = xor i16 %i.bs, %i.bw
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1 = phi i16 [ %i.bx, %bb.b ], [ %.0.lcssa, %._crit_edge ]
  ret i16 %.1
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define hidden zeroext i16 @FLAC__crc16_update_words64(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %.not14 = icmp eq i32 %1, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.017 = phi i16 [ %i.ar, %.lr.ph ], [ %2, %bb.a ]
  %.01216 = phi i32 [ %i.a, %.lr.ph ], [ %1, %bb.a ]
  %.01315 = phi ptr [ %i.as, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.a = add i32 %.01216, -1                      ; 2 uses
  %i.b = load i64, ptr %.01315, align 8, !tbaa !21 ; 7 uses
  %i.c = lshr i64 %i.b, 48
  %i.d = trunc nuw i64 %i.c to i16
  %i.e = xor i16 %.017, %i.d
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = lshr i32 %i.f, 8
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 3584), i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !11
  %i.k = and i32 %i.f, 255
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 3072), i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !11
  %i.o = xor i16 %i.n, %i.j
  %i.p = lshr i64 %i.b, 40
  %i.q = and i64 %i.p, 255
  %i.r = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 2560), i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !11
  %i.t = xor i16 %i.o, %i.s
  %i.u = lshr i64 %i.b, 32
  %i.v = and i64 %i.u, 255
  %i.w = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 2048), i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !11
  %i.y = xor i16 %i.t, %i.x
  %i.z = lshr i64 %i.b, 24
  %i.aa = and i64 %i.z, 255
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 1536), i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !11
  %i.ad = xor i16 %i.y, %i.ac
  %i.ae = lshr i64 %i.b, 16
  %i.af = and i64 %i.ae, 255
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 1024), i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !11
  %i.ai = xor i16 %i.ad, %i.ah
  %i.aj = lshr i64 %i.b, 8
  %i.ak = and i64 %i.aj, 255
  %i.al = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @FLAC__crc16_table, i64 512), i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !11
  %i.an = xor i16 %i.ai, %i.am
  %i.ao = and i64 %i.b, 255
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @FLAC__crc16_table, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !11
  %i.ar = xor i16 %i.an, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01315, i64 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i16 [ %2, %bb.a ], [ %i.ar, %.lr.ph ]
  ret i16 %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"short", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = !{!5, !5, i64 0}
!19 = distinct !{!19, !9}
!20 = !{!"long", !4, i64 0}
!21 = !{!20, !20, i64 0}
end_hunk_0
