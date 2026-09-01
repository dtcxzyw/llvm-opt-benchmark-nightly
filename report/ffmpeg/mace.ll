Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mace?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"mace3\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"MACE (Macintosh Audio Compression/Expansion) 3:1\00", align 1
@ff_mace3_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86025, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 20, ptr null, ptr null, ptr null, ptr @mace_decode_init, %union.anon { ptr @mace_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"mace6\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"MACE (Macintosh Audio Compression/Expansion) 6:1\00", align 1
@ff_mace6_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.2, ptr @.str.3, i32 1, i32 86026, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 20, ptr null, ptr null, ptr null, ptr @mace_decode_init, %union.anon { ptr @mace_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"buffer size %d is odd\0A\00", align 1
@MACEtab1 = internal unnamed_addr constant [8 x i16] [i16 -13, i16 8, i16 76, i16 222, i16 222, i16 76, i16 8, i16 -13], align 16
@MACEtab2 = internal unnamed_addr constant [128 x [4 x i16]] [[4 x i16] [i16 37, i16 116, i16 206, i16 330], [4 x i16] [i16 39, i16 121, i16 216, i16 346], [4 x i16] [i16 41, i16 127, i16 225, i16 361], [4 x i16] [i16 42, i16 132, i16 235, i16 377], [4 x i16] [i16 44, i16 137, i16 245, i16 392], [4 x i16] [i16 46, i16 144, i16 256, i16 410], [4 x i16] [i16 48, i16 150, i16 267, i16 428], [4 x i16] [i16 51, i16 157, i16 280, i16 449], [4 x i16] [i16 53, i16 165, i16 293, i16 470], [4 x i16] [i16 55, i16 172, i16 306, i16 490], [4 x i16] [i16 58, i16 179, i16 319, i16 511], [4 x i16] [i16 60, i16 187, i16 333, i16 534], [4 x i16] [i16 63, i16 195, i16 348, i16 557], [4 x i16] [i16 66, i16 205, i16 364, i16 583], [4 x i16] [i16 69, i16 214, i16 380, i16 609], [4 x i16] [i16 72, i16 223, i16 396, i16 635], [4 x i16] [i16 75, i16 233, i16 414, i16 663], [4 x i16] [i16 79, i16 244, i16 433, i16 694], [4 x i16] [i16 82, i16 254, i16 453, i16 725], [4 x i16] [i16 86, i16 265, i16 472, i16 756], [4 x i16] [i16 90, i16 278, i16 495, i16 792], [4 x i16] [i16 94, i16 290, i16 516, i16 826], [4 x i16] [i16 98, i16 303, i16 538, i16 862], [4 x i16] [i16 102, i16 316, i16 562, i16 901], [4 x i16] [i16 107, i16 331, i16 588, i16 942], [4 x i16] [i16 112, i16 345, i16 614, i16 983], [4 x i16] [i16 117, i16 361, i16 641, i16 1027], [4 x i16] [i16 122, i16 377, i16 670, i16 1074], [4 x i16] [i16 127, i16 394, i16 701, i16 1123], [4 x i16] [i16 133, i16 411, i16 732, i16 1172], [4 x i16] [i16 139, i16 430, i16 764, i16 1224], [4 x i16] [i16 145, i16 449, i16 799, i16 1280], [4 x i16] [i16 152, i16 469, i16 835, i16 1337], [4 x i16] [i16 159, i16 490, i16 872, i16 1397], [4 x i16] [i16 166, i16 512, i16 911, i16 1459], [4 x i16] [i16 173, i16 535, i16 951, i16 1523], [4 x i16] [i16 181, i16 558, i16 993, i16 1590], [4 x i16] [i16 189, i16 584, i16 1038, i16 1663], [4 x i16] [i16 197, i16 610, i16 1085, i16 1738], [4 x i16] [i16 206, i16 637, i16 1133, i16 1815], [4 x i16] [i16 215, i16 665, i16 1183, i16 1895], [4 x i16] [i16 225, i16 695, i16 1237, i16 1980], [4 x i16] [i16 235, i16 726, i16 1291, i16 2068], [4 x i16] [i16 246, i16 759, i16 1349, i16 2161], [4 x i16] [i16 257, i16 792, i16 1409, i16 2257], [4 x i16] [i16 268, i16 828, i16 1472, i16 2357], [4 x i16] [i16 280, i16 865, i16 1538, i16 2463], [4 x i16] [i16 293, i16 903, i16 1606, i16 2572], [4 x i16] [i16 306, i16 944, i16 1678, i16 2688], [4 x i16] [i16 319, i16 986, i16 1753, i16 2807], [4 x i16] [i16 334, i16 1030, i16 1832, i16 2933], [4 x i16] [i16 349, i16 1076, i16 1914, i16 3065], [4 x i16] [i16 364, i16 1124, i16 1999, i16 3202], [4 x i16] [i16 380, i16 1174, i16 2088, i16 3344], [4 x i16] [i16 398, i16 1227, i16 2182, i16 3494], [4 x i16] [i16 415, i16 1281, i16 2278, i16 3649], [4 x i16] [i16 434, i16 1339, i16 2380, i16 3811], [4 x i16] [i16 453, i16 1398, i16 2486, i16 3982], [4 x i16] [i16 473, i16 1461, i16 2598, i16 4160], [4 x i16] [i16 495, i16 1526, i16 2714, i16 4346], [4 x i16] [i16 517, i16 1594, i16 2835, i16 4540], [4 x i16] [i16 540, i16 1665, i16 2961, i16 4741], [4 x i16] [i16 564, i16 1740, i16 3093, i16 4953], [4 x i16] [i16 589, i16 1818, i16 3232, i16 5175], [4 x i16] [i16 615, i16 1898, i16 3375, i16 5405], [4 x i16] [i16 643, i16 1984, i16 3527, i16 5647], [4 x i16] [i16 671, i16 2072, i16 3683, i16 5898], [4 x i16] [i16 701, i16 2164, i16 3848, i16 6161], [4 x i16] [i16 733, i16 2261, i16 4020, i16 6438], [4 x i16] [i16 766, i16 2362, i16 4199, i16 6724], [4 x i16] [i16 800, i16 2467, i16 4386, i16 7024], [4 x i16] [i16 836, i16 2578, i16 4583, i16 7339], [4 x i16] [i16 873, i16 2692, i16 4786, i16 7664], [4 x i16] [i16 912, i16 2813, i16 5001, i16 8008], [4 x i16] [i16 952, i16 2938, i16 5223, i16 8364], [4 x i16] [i16 995, i16 3070, i16 5457, i16 8739], [4 x i16] [i16 1039, i16 3207, i16 5701, i16 9129], [4 x i16] [i16 1086, i16 3350, i16 5956, i16 9537], [4 x i16] [i16 1134, i16 3499, i16 6220, i16 9960], [4 x i16] [i16 1185, i16 3655, i16 6497, i16 10404], [4 x i16] [i16 1238, i16 3818, i16 6788, i16 10869], [4 x i16] [i16 1293, i16 3989, i16 7091, i16 11355], [4 x i16] [i16 1351, i16 4166, i16 7407, i16 11861], [4 x i16] [i16 1411, i16 4352, i16 7738, i16 12390], [4 x i16] [i16 1474, i16 4547, i16 8084, i16 12946], [4 x i16] [i16 1540, i16 4750, i16 8444, i16 13522], [4 x i16] [i16 1609, i16 4962, i16 8821, i16 14126], [4 x i16] [i16 1680, i16 5183, i16 9215, i16 14756], [4 x i16] [i16 1756, i16 5415, i16 9626, i16 15415], [4 x i16] [i16 1834, i16 5657, i16 10057, i16 16104], [4 x i16] [i16 1916, i16 5909, i16 10505, i16 16822], [4 x i16] [i16 2001, i16 6173, i16 10975, i16 17574], [4 x i16] [i16 2091, i16 6448, i16 11463, i16 18356], [4 x i16] [i16 2184, i16 6736, i16 11974, i16 19175], [4 x i16] [i16 2282, i16 7037, i16 12510, i16 20032], [4 x i16] [i16 2383, i16 7351, i16 13068, i16 20926], [4 x i16] [i16 2490, i16 7679, i16 13652, i16 21861], [4 x i16] [i16 2601, i16 8021, i16 14260, i16 22834], [4 x i16] [i16 2717, i16 8380, i16 14897, i16 23854], [4 x i16] [i16 2838, i16 8753, i16 15561, i16 24918], [4 x i16] [i16 2965, i16 9144, i16 16256, i16 26031], [4 x i16] [i16 3097, i16 9553, i16 16982, i16 27193], [4 x i16] [i16 3236, i16 9979, i16 17740, i16 28407], [4 x i16] [i16 3380, i16 10424, i16 18532, i16 29675], [4 x i16] [i16 3531, i16 10890, i16 19359, i16 31000], [4 x i16] [i16 3688, i16 11375, i16 20222, i16 32382], [4 x i16] [i16 3853, i16 11883, i16 21125, i16 32767], [4 x i16] [i16 4025, i16 12414, i16 22069, i16 32767], [4 x i16] [i16 4205, i16 12967, i16 23053, i16 32767], [4 x i16] [i16 4392, i16 13546, i16 24082, i16 32767], [4 x i16] [i16 4589, i16 14151, i16 25157, i16 32767], [4 x i16] [i16 4793, i16 14783, i16 26280, i16 32767], [4 x i16] [i16 5007, i16 15442, i16 27452, i16 32767], [4 x i16] [i16 5231, i16 16132, i16 28678, i16 32767], [4 x i16] [i16 5464, i16 16851, i16 29957, i16 32767], [4 x i16] [i16 5708, i16 17603, i16 31294, i16 32767], [4 x i16] [i16 5963, i16 18389, i16 32691, i16 32767], [4 x i16] [i16 6229, i16 19210, i16 32767, i16 32767], [4 x i16] [i16 6507, i16 20067, i16 32767, i16 32767], [4 x i16] [i16 6797, i16 20963, i16 32767, i16 32767], [4 x i16] [i16 7101, i16 21899, i16 32767, i16 32767], [4 x i16] [i16 7418, i16 22876, i16 32767, i16 32767], [4 x i16] [i16 7749, i16 23897, i16 32767, i16 32767], [4 x i16] [i16 8095, i16 24964, i16 32767, i16 32767], [4 x i16] [i16 8456, i16 26078, i16 32767, i16 32767], [4 x i16] [i16 8833, i16 27242, i16 32767, i16 32767], [4 x i16] [i16 9228, i16 28457, i16 32767, i16 32767], [4 x i16] [i16 9639, i16 29727, i16 32767, i16 32767]], align 16
@MACEtab3 = internal unnamed_addr constant [4 x i16] [i16 -18, i16 140, i16 140, i16 -18], align 2
@MACEtab4 = internal unnamed_addr constant [128 x [2 x i16]] [[2 x i16] [i16 64, i16 216], [2 x i16] [i16 67, i16 226], [2 x i16] [i16 70, i16 236], [2 x i16] [i16 74, i16 246], [2 x i16] [i16 77, i16 257], [2 x i16] [i16 80, i16 268], [2 x i16] [i16 84, i16 280], [2 x i16] [i16 88, i16 294], [2 x i16] [i16 92, i16 307], [2 x i16] [i16 96, i16 321], [2 x i16] [i16 100, i16 334], [2 x i16] [i16 104, i16 350], [2 x i16] [i16 109, i16 365], [2 x i16] [i16 114, i16 382], [2 x i16] [i16 119, i16 399], [2 x i16] [i16 124, i16 416], [2 x i16] [i16 130, i16 434], [2 x i16] [i16 136, i16 454], [2 x i16] [i16 142, i16 475], [2 x i16] [i16 148, i16 495], [2 x i16] [i16 155, i16 519], [2 x i16] [i16 162, i16 541], [2 x i16] [i16 169, i16 564], [2 x i16] [i16 176, i16 590], [2 x i16] [i16 185, i16 617], [2 x i16] [i16 193, i16 644], [2 x i16] [i16 201, i16 673], [2 x i16] [i16 210, i16 703], [2 x i16] [i16 220, i16 735], [2 x i16] [i16 230, i16 767], [2 x i16] [i16 240, i16 801], [2 x i16] [i16 251, i16 838], [2 x i16] [i16 262, i16 876], [2 x i16] [i16 274, i16 914], [2 x i16] [i16 286, i16 955], [2 x i16] [i16 299, i16 997], [2 x i16] [i16 312, i16 1041], [2 x i16] [i16 326, i16 1089], [2 x i16] [i16 341, i16 1138], [2 x i16] [i16 356, i16 1188], [2 x i16] [i16 372, i16 1241], [2 x i16] [i16 388, i16 1297], [2 x i16] [i16 406, i16 1354], [2 x i16] [i16 424, i16 1415], [2 x i16] [i16 443, i16 1478], [2 x i16] [i16 462, i16 1544], [2 x i16] [i16 483, i16 1613], [2 x i16] [i16 505, i16 1684], [2 x i16] [i16 527, i16 1760], [2 x i16] [i16 551, i16 1838], [2 x i16] [i16 576, i16 1921], [2 x i16] [i16 601, i16 2007], [2 x i16] [i16 628, i16 2097], [2 x i16] [i16 656, i16 2190], [2 x i16] [i16 686, i16 2288], [2 x i16] [i16 716, i16 2389], [2 x i16] [i16 748, i16 2496], [2 x i16] [i16 781, i16 2607], [2 x i16] [i16 816, i16 2724], [2 x i16] [i16 853, i16 2846], [2 x i16] [i16 891, i16 2973], [2 x i16] [i16 930, i16 3104], [2 x i16] [i16 972, i16 3243], [2 x i16] [i16 1016, i16 3389], [2 x i16] [i16 1061, i16 3539], [2 x i16] [i16 1108, i16 3698], [2 x i16] [i16 1158, i16 3862], [2 x i16] [i16 1209, i16 4035], [2 x i16] [i16 1264, i16 4216], [2 x i16] [i16 1320, i16 4403], [2 x i16] [i16 1379, i16 4599], [2 x i16] [i16 1441, i16 4806], [2 x i16] [i16 1505, i16 5019], [2 x i16] [i16 1572, i16 5244], [2 x i16] [i16 1642, i16 5477], [2 x i16] [i16 1715, i16 5722], [2 x i16] [i16 1792, i16 5978], [2 x i16] [i16 1872, i16 6245], [2 x i16] [i16 1955, i16 6522], [2 x i16] [i16 2043, i16 6813], [2 x i16] [i16 2134, i16 7118], [2 x i16] [i16 2229, i16 7436], [2 x i16] [i16 2329, i16 7767], [2 x i16] [i16 2432, i16 8114], [2 x i16] [i16 2541, i16 8477], [2 x i16] [i16 2655, i16 8854], [2 x i16] [i16 2773, i16 9250], [2 x i16] [i16 2897, i16 9663], [2 x i16] [i16 3026, i16 10094], [2 x i16] [i16 3162, i16 10546], [2 x i16] [i16 3303, i16 11016], [2 x i16] [i16 3450, i16 11508], [2 x i16] [i16 3604, i16 12020], [2 x i16] [i16 3765, i16 12556], [2 x i16] [i16 3933, i16 13118], [2 x i16] [i16 4108, i16 13703], [2 x i16] [i16 4292, i16 14315], [2 x i16] [i16 4483, i16 14953], [2 x i16] [i16 4683, i16 15621], [2 x i16] [i16 4892, i16 16318], [2 x i16] [i16 5111, i16 17046], [2 x i16] [i16 5339, i16 17807], [2 x i16] [i16 5577, i16 18602], [2 x i16] [i16 5826, i16 19433], [2 x i16] [i16 6086, i16 20300], [2 x i16] [i16 6358, i16 21205], [2 x i16] [i16 6642, i16 22152], [2 x i16] [i16 6938, i16 23141], [2 x i16] [i16 7248, i16 24173], [2 x i16] [i16 7571, i16 25252], [2 x i16] [i16 7909, i16 26380], [2 x i16] [i16 8262, i16 27557], [2 x i16] [i16 8631, i16 28786], [2 x i16] [i16 9016, i16 30072], [2 x i16] [i16 9419, i16 31413], [2 x i16] [i16 9839, i16 32767], [2 x i16] [i16 10278, i16 32767], [2 x i16] [i16 10737, i16 32767], [2 x i16] [i16 11216, i16 32767], [2 x i16] [i16 11717, i16 32767], [2 x i16] [i16 12240, i16 32767], [2 x i16] [i16 12786, i16 32767], [2 x i16] [i16 13356, i16 32767], [2 x i16] [i16 13953, i16 32767], [2 x i16] [i16 14576, i16 32767], [2 x i16] [i16 15226, i16 32767], [2 x i16] [i16 15906, i16 32767], [2 x i16] [i16 16615, i16 32767]], align 16

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -22, 1) i32 @mace_decode_init(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  %i.c = add i32 %i.b, -3
  %or.cond = icmp ult i32 %i.c, -2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 6, ptr %i.d, align 4, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @mace_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !34
  %i.k = icmp eq i32 %i.j, 86025                  ; 3 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = shl i32 %i.f, %i.l                       ; 2 uses
  %i.n = srem i32 %i.d, %i.m                      ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.d) #4
  %i.o = sub nsw i32 %i.d, %i.n                   ; 2 uses
  %.not80 = icmp eq i32 %i.o, 0
  br i1 %.not80, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.072 = phi i32 [ %i.o, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.p = sext i32 %.072 to i64
  %not. = xor i1 %i.k, true                       ; 2 uses
  %i.q = zext i1 %not. to i32
  %i.r = zext i1 %not. to i64
  %i.s = shl nsw i64 %i.p, %i.r
  %i.t = mul nsw i64 %i.s, 3
  %i.u = sext i32 %i.f to i64
  %i.v = sdiv i64 %i.t, %i.u                      ; 2 uses
  %i.w = icmp sgt i64 %i.v, 2147483647
  br i1 %i.w, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = trunc i64 %i.v to i32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.x, ptr %i.y, align 8, !tbaa !35
  %i.z = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #4 ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %i.ad = icmp sgt i32 %i.f, 0
  br i1 %i.ad, label %.lr.ph, label %._crit_edge100.split

.lr.ph:                                           ; preds = %bb.e
  %i.ae = sdiv i32 %.072, %i.m                    ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  %i.ag = shl nuw nsw i32 1, %i.q
  %i.ah = zext nneg i32 %i.ag to i64              ; 6 uses
  br i1 %i.af, label %.lr.ph.split, label %._crit_edge100.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %wide.trip.count122 = zext nneg i32 %i.f to i64 ; 2 uses
  %wide.trip.count125 = zext nneg i32 %i.ae to i64 ; 2 uses
  br i1 %i.k, label %.preheader.lr.ph.us, label %.preheader.lr.ph

.preheader.lr.ph.us:                              ; preds = %.lr.ph.split, %._crit_edge.split.us.us
  %indvars.iv119.a = phi i64 [ %indvars.iv.next120, %._crit_edge.split.us.us ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv119.a
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw [10 x i8], ptr %i.h, i64 %indvars.iv119.a ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 6 uses
  %i.am = trunc nuw nsw i64 %indvars.iv119.a to i32
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.split93.us.us.us, %.preheader.lr.ph.us
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %.split93.us.us.us ], [ 0, %.preheader.lr.ph.us ] ; 2 uses
  %.096.us.us = phi ptr [ %i.fc, %.split93.us.us.us ], [ %i.aj, %.preheader.lr.ph.us ]
  %4 = trunc i64 %indvars.iv122 to i32
  %i.an = mul i32 %i.f, %4
  %i.ao = add nuw i32 %i.an, %i.am
  %i.ap = shl i32 %i.ao, %i.l
  %i.aq = sext i32 %i.ap to i64
  %invariant.gep144 = getelementptr i8, ptr %i.b, i64 %i.aq
  br label %.split.us.us.us.us

.split.us.us.us.us:                               ; preds = %chomp3.exit.us.us.us.us.2, %.preheader.us.us
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %chomp3.exit.us.us.us.us.2 ], [ 0, %.preheader.us.us ] ; 2 uses
  %.191.us.us.us = phi ptr [ %i.fc, %chomp3.exit.us.us.us.us.2 ], [ %.096.us.us, %.preheader.us.us ] ; 2 uses
  %gep145 = getelementptr i8, ptr %invariant.gep144, i64 %indvars.iv115
  %i.ar = load i8, ptr %gep145, align 1, !tbaa !42 ; 4 uses
  %i.as = lshr i8 %i.ar, 5                        ; 2 uses
  %i.at = lshr i8 %i.ar, 3
  %i.au = and i8 %i.at, 3                         ; 3 uses
  %i.av = and i8 %i.ar, 7                         ; 3 uses
  %i.aw = zext nneg i8 %i.av to i32               ; 2 uses
  %i.ax = icmp samesign ult i8 %i.av, 4
  %i.ay = load i16, ptr %i.ak, align 2, !tbaa !43 ; 3 uses
  %i.az = lshr i16 %i.ay, 2
  %i.ba = and i16 %i.az, 508                      ; 2 uses
  br i1 %i.ax, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split.us.us.us.us
  %i.bb = add nuw nsw i16 %i.ba, 8
  %i.bc = zext nneg i16 %i.bb to i32
  %i.bd = xor i32 %i.aw, -1
  %i.be = add nsw i32 %i.bc, %i.bd
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @MACEtab2, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !46
  %i.bi = xor i16 %i.bh, -1
  br label %chomp3.exit.us.us.us.us

bb.g:                                             ; preds = %.split.us.us.us.us
  %i.bj = zext nneg i16 %i.ba to i32
  %i.bk = or disjoint i32 %i.bj, %i.aw
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @MACEtab2, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !46
  br label %chomp3.exit.us.us.us.us

chomp3.exit.us.us.us.us:                          ; preds = %bb.g, %bb.f
  %.0.i.i.us.us.us.us = phi i16 [ %i.bn, %bb.g ], [ %i.bi, %bb.f ]
  %i.bo = zext nneg i8 %i.av to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr @MACEtab1, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !46
  %i.br = ashr i16 %i.ay, 5
  %i.bs = sub i16 %i.ay, %i.br
  %i.bt = add i16 %i.bs, %i.bq
  %spec.select.i.i.us.us.us.us = tail call i16 @llvm.smax.i16(i16 %i.bt, i16 0)
  store i16 %spec.select.i.i.us.us.us.us, ptr %i.ak, align 2, !tbaa !43
  %i.bu = sext i16 %.0.i.i.us.us.us.us to i32
  %i.bv = load i16, ptr %i.al, align 2, !tbaa !47
  %i.bw = sext i16 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, %i.bu                ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 32767
  %i.bz = icmp slt i32 %i.bx, -32768
  %i.ca = trunc nsw i32 %i.bx to i16
  %spec.select.i10.i.us.us.us.us = select i1 %i.bz, i16 -32767, i16 %i.ca
  %.0.i11.i.us.us.us.us = select i1 %i.by, i16 32767, i16 %spec.select.i10.i.us.us.us.us ; 4 uses
  %i.cb = ashr i16 %.0.i11.i.us.us.us.us, 3
  %i.cc = sub i16 %.0.i11.i.us.us.us.us, %i.cb
  store i16 %i.cc, ptr %i.al, align 2, !tbaa !47
  %i.cd = and i16 %.0.i11.i.us.us.us.us, -256
  %i.ce = lshr i16 %.0.i11.i.us.us.us.us, 8
  %i.cf = or disjoint i16 %i.ce, %i.cd
  store i16 %i.cf, ptr %.191.us.us.us, align 2, !tbaa !46
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.191.us.us.us, i64 %i.ah ; 2 uses
  %i.ch = zext nneg i8 %i.au to i32               ; 2 uses
  %i.ci = icmp samesign ult i8 %i.au, 2
  %i.cj = load i16, ptr %i.ak, align 2, !tbaa !43 ; 3 uses
  %i.ck = lshr i16 %i.cj, 3
  %i.cl = and i16 %i.ck, 254                      ; 2 uses
  br i1 %i.ci, label %bb.i, label %bb.h

bb.h:                                             ; preds = %chomp3.exit.us.us.us.us
  %i.cm = add nuw nsw i16 %i.cl, 4
  %i.cn = zext nneg i16 %i.cm to i32
  %i.co = xor i32 %i.ch, -1
  %i.cp = add nsw i32 %i.cn, %i.co
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr @MACEtab4, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !46
  %i.ct = xor i16 %i.cs, -1
  br label %chomp3.exit.us.us.us.us.1

bb.i:                                             ; preds = %chomp3.exit.us.us.us.us
  %i.cu = zext nneg i16 %i.cl to i32
  %i.cv = or disjoint i32 %i.cu, %i.ch
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr @MACEtab4, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !46
  br label %chomp3.exit.us.us.us.us.1

chomp3.exit.us.us.us.us.1:                        ; preds = %bb.i, %bb.h
  %.0.i.i.us.us.us.us.1 = phi i16 [ %i.cy, %bb.i ], [ %i.ct, %bb.h ]
  %i.cz = zext nneg i8 %i.au to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr @MACEtab3, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !46
  %i.dc = ashr i16 %i.cj, 5
  %i.dd = sub i16 %i.cj, %i.dc
  %i.de = add i16 %i.dd, %i.db
  %spec.select.i.i.us.us.us.us.1 = tail call i16 @llvm.smax.i16(i16 %i.de, i16 0)
  store i16 %spec.select.i.i.us.us.us.us.1, ptr %i.ak, align 2, !tbaa !43
  %i.df = sext i16 %.0.i.i.us.us.us.us.1 to i32
  %i.dg = load i16, ptr %i.al, align 2, !tbaa !47
  %i.dh = sext i16 %i.dg to i32
  %i.di = add nsw i32 %i.dh, %i.df                ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 32767
  %i.dk = icmp slt i32 %i.di, -32768
  %i.dl = trunc nsw i32 %i.di to i16
  %spec.select.i10.i.us.us.us.us.1 = select i1 %i.dk, i16 -32767, i16 %i.dl
  %.0.i11.i.us.us.us.us.1 = select i1 %i.dj, i16 32767, i16 %spec.select.i10.i.us.us.us.us.1 ; 4 uses
  %i.dm = ashr i16 %.0.i11.i.us.us.us.us.1, 3
  %i.dn = sub i16 %.0.i11.i.us.us.us.us.1, %i.dm
  store i16 %i.dn, ptr %i.al, align 2, !tbaa !47
  %i.do = and i16 %.0.i11.i.us.us.us.us.1, -256
  %i.dp = lshr i16 %.0.i11.i.us.us.us.us.1, 8
  %i.dq = or disjoint i16 %i.dp, %i.do
  store i16 %i.dq, ptr %i.cg, align 2, !tbaa !46
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.ah ; 2 uses
  %i.ds = zext nneg i8 %i.as to i32               ; 2 uses
  %i.dt = icmp sgt i8 %i.ar, -1
  %i.du = load i16, ptr %i.ak, align 2, !tbaa !43 ; 3 uses
  %i.dv = lshr i16 %i.du, 2
  %i.dw = and i16 %i.dv, 508                      ; 2 uses
  br i1 %i.dt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %chomp3.exit.us.us.us.us.1
  %i.dx = add nuw nsw i16 %i.dw, 8
  %i.dy = zext nneg i16 %i.dx to i32
  %i.dz = xor i32 %i.ds, -1
  %i.ea = add nsw i32 %i.dy, %i.dz
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr @MACEtab2, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !46
  %i.ee = xor i16 %i.ed, -1
  br label %chomp3.exit.us.us.us.us.2

bb.k:                                             ; preds = %chomp3.exit.us.us.us.us.1
  %i.ef = zext nneg i16 %i.dw to i32
  %i.eg = or disjoint i32 %i.ef, %i.ds
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr @MACEtab2, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !46
  br label %chomp3.exit.us.us.us.us.2

chomp3.exit.us.us.us.us.2:                        ; preds = %bb.k, %bb.j
  %.0.i.i.us.us.us.us.2 = phi i16 [ %i.ej, %bb.k ], [ %i.ee, %bb.j ]
  %i.ek = zext nneg i8 %i.as to i64
  %i.el = getelementptr inbounds nuw [2 x i8], ptr @MACEtab1, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !tbaa !46
  %i.en = ashr i16 %i.du, 5
  %i.eo = sub i16 %i.du, %i.en
  %i.ep = add i16 %i.eo, %i.em
  %spec.select.i.i.us.us.us.us.2 = tail call i16 @llvm.smax.i16(i16 %i.ep, i16 0)
  store i16 %spec.select.i.i.us.us.us.us.2, ptr %i.ak, align 2, !tbaa !43
  %i.eq = sext i16 %.0.i.i.us.us.us.us.2 to i32
  %i.er = load i16, ptr %i.al, align 2, !tbaa !47
  %i.es = sext i16 %i.er to i32
  %i.et = add nsw i32 %i.es, %i.eq                ; 3 uses
  %i.eu = icmp sgt i32 %i.et, 32767
  %i.ev = icmp slt i32 %i.et, -32768
  %i.ew = trunc nsw i32 %i.et to i16
  %spec.select.i10.i.us.us.us.us.2 = select i1 %i.ev, i16 -32767, i16 %i.ew
  %.0.i11.i.us.us.us.us.2 = select i1 %i.eu, i16 32767, i16 %spec.select.i10.i.us.us.us.us.2 ; 4 uses
  %i.ex = ashr i16 %.0.i11.i.us.us.us.us.2, 3
  %i.ey = sub i16 %.0.i11.i.us.us.us.us.2, %i.ex
  store i16 %i.ey, ptr %i.al, align 2, !tbaa !47
  %i.ez = and i16 %.0.i11.i.us.us.us.us.2, -256
  %i.fa = lshr i16 %.0.i11.i.us.us.us.us.2, 8
  %i.fb = or disjoint i16 %i.fa, %i.ez
  store i16 %i.fb, ptr %i.dr, align 2, !tbaa !46
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ah ; 2 uses
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.fd = trunc nuw nsw i64 %indvars.iv.next116 to i32
  %.069.highbits.us.us.us = lshr i32 %i.fd, %i.l
  %i.fe = icmp eq i32 %.069.highbits.us.us.us, 0
  br i1 %i.fe, label %.split.us.us.us.us, label %.split93.us.us.us, !llvm.loop !48

.split93.us.us.us:                                ; preds = %chomp3.exit.us.us.us.us.2
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond118.not, label %._crit_edge.split.us.us, label %.preheader.us.us, !llvm.loop !50

._crit_edge.split.us.us:                          ; preds = %.split93.us.us.us
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119.a, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge100.split, label %.preheader.lr.ph.us, !llvm.loop !51

.preheader.lr.ph:                                 ; preds = %.lr.ph.split, %._crit_edge.split
  %indvars.iv107.a = phi i64 [ %indvars.iv.next108.a, %._crit_edge.split ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv107.a
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !41
  %i.fh = getelementptr inbounds nuw [10 x i8], ptr %i.h, i64 %indvars.iv107.a ; 10 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 6 ; 10 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 2 ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 4 ; 7 uses
  %i.fm = trunc nuw nsw i64 %indvars.iv107.a to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.split93
  %indvars.iv107 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next108, %.split93 ] ; 2 uses
  %.096 = phi ptr [ %i.fg, %.preheader.lr.ph ], [ %i.nz, %.split93 ]
  %5 = trunc i64 %indvars.iv107 to i32
  %i.fn = mul i32 %i.f, %5
  %i.fo = add nuw i32 %i.fn, %i.fm
  %i.fp = shl i32 %i.fo, %i.l
  %i.fq = sext i32 %i.fp to i64
  %invariant.gep = getelementptr i8, ptr %i.b, i64 %i.fq
  br label %.split

.split:                                           ; preds = %.preheader, %chomp6.exit.2
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %chomp6.exit.2 ] ; 2 uses
  %.191 = phi ptr [ %.096, %.preheader ], [ %i.nz, %chomp6.exit.2 ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.fr = load i8, ptr %gep, align 1, !tbaa !42   ; 4 uses
  %i.fs = lshr i8 %i.fr, 5                        ; 2 uses
  %i.ft = lshr i8 %i.fr, 3
  %i.fu = and i8 %i.ft, 3                         ; 3 uses
  %i.fv = and i8 %i.fr, 7                         ; 3 uses
  %i.fw = zext nneg i8 %i.fs to i32               ; 2 uses
  %i.fx = icmp sgt i8 %i.fr, -1
  %i.fy = load i16, ptr %i.fh, align 2, !tbaa !43 ; 3 uses
  %i.fz = lshr i16 %i.fy, 2
  %i.ga = and i16 %i.fz, 508                      ; 2 uses
  br i1 %i.fx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split
  %i.gb = zext nneg i16 %i.ga to i32
  %i.gc = or disjoint i32 %i.gb, %i.fw
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr @MACEtab2, i64 %i.gd
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !46
  br label %read_table.exit.i

bb.m:                                             ; preds = %.split
  %i.gg = add nuw nsw i16 %i.ga, 8
  %i.gh = zext nneg i16 %i.gg to i32
  %i.gi = xor i32 %i.fw, -1
  %i.gj = add nsw i32 %i.gh, %i.gi
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr @MACEtab2, i64 %i.gk
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !46
  %i.gn = xor i16 %i.gm, -1
  br label %read_table.exit.i

read_table.exit.i:                                ; preds = %bb.m, %bb.l
  %.0.i.i82 = phi i16 [ %i.gf, %bb.l ], [ %i.gn, %bb.m ] ; 2 uses
  %i.go = zext nneg i8 %i.fs to i64
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr @MACEtab1, i64 %i.go
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !46
  %i.gr = ashr i16 %i.fy, 5
  %i.gs = sub i16 %i.fy, %i.gr
  %i.gt = add i16 %i.gs, %i.gq
  %spec.select.i.i83 = tail call i16 @llvm.smax.i16(i16 %i.gt, i16 0)
  store i16 %spec.select.i.i83, ptr %i.fh, align 2, !tbaa !43
  %i.gu = load i16, ptr %i.fi, align 2, !tbaa !52 ; 2 uses
  %i.gv = xor i16 %i.gu, %.0.i.i82
  %i.gw = icmp sgt i16 %i.gv, -1
  %i.gx = load i16, ptr %i.fj, align 2, !tbaa !53 ; 3 uses
  br i1 %i.gw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %read_table.exit.i
  %spec.select.i = tail call i16 @llvm.sadd.sat.i16(i16 %i.gx, i16 506)
  br label %chomp6.exit

bb.o:                                             ; preds = %read_table.exit.i
  %i.gy = icmp slt i16 %i.gx, -32454
  %i.gz = add nsw i16 %i.gx, -314
  %spec.select45.i = select i1 %i.gy, i16 -32767, i16 %i.gz
  br label %chomp6.exit

chomp6.exit:                                      ; preds = %bb.n, %bb.o
  %.sink.i = phi i16 [ %spec.select.i, %bb.n ], [ %spec.select45.i, %bb.o ] ; 2 uses
  store i16 %.sink.i, ptr %i.fj, align 2, !tbaa !53
  %i.ha = sext i16 %.0.i.i82 to i32
  %i.hb = load i16, ptr %i.fk, align 2, !tbaa !47
  %i.hc = sext i16 %i.hb to i32
  %i.hd = add nsw i32 %i.hc, %i.ha                ; 3 uses
  %i.he = icmp sgt i32 %i.hd, 32767
  %i.hf = icmp slt i32 %i.hd, -32768
  %i.hg = trunc nsw i32 %i.hd to i16
  %spec.select.i39.i = select i1 %i.hf, i16 -32767, i16 %i.hg
  %.0.i40.i = select i1 %i.he, i16 32767, i16 %spec.select.i39.i ; 2 uses
  %i.hh = sext i16 %.0.i40.i to i32
  %i.hi = sext i16 %.sink.i to i32
  %i.hj = mul nsw i32 %i.hh, %i.hi
  %i.hk = lshr i32 %i.hj, 15
  %i.hl = trunc i32 %i.hk to i16
  store i16 %i.hl, ptr %i.fk, align 2, !tbaa !47
  %i.hm = ashr i16 %.0.i40.i, 1                   ; 4 uses
  %i.hn = zext i16 %i.gu to i32
  %i.ho = load i16, ptr %i.fl, align 2, !tbaa !54
  %i.hp = sext i16 %i.ho to i32                   ; 2 uses
  %i.hq = add nsw i32 %i.hp, %i.hn
  %i.hr = sext i16 %i.hm to i32                   ; 3 uses
  %i.hs = sub nsw i32 %i.hp, %i.hr
  %i.ht = ashr i32 %i.hs, 2
  %i.hu = sub nsw i32 %i.hq, %i.ht                ; 2 uses
  %i.hv = and i32 %i.hu, 65280
  %i.hw = lshr i32 %i.hu, 8
  %i.hx = and i32 %i.hw, 255
  %i.hy = or disjoint i32 %i.hx, %i.hv
  %i.hz = trunc nuw i32 %i.hy to i16
  store i16 %i.hz, ptr %.191, align 2, !tbaa !46
  %i.ia = load i16, ptr %i.fi, align 2, !tbaa !52
  %i.ib = zext i16 %i.ia to i32
  %i.ic = add nsw i32 %i.hr, %i.ib
  %i.id = load i16, ptr %i.fl, align 2, !tbaa !54
  %i.ie = sext i16 %i.id to i32
  %i.if = sub nsw i32 %i.ie, %i.hr
  %i.ig = ashr i32 %i.if, 2
  %i.ih = add nsw i32 %i.ic, %i.ig                ; 2 uses
  %i.ii = and i32 %i.ih, 65280
  %i.ij = lshr i32 %i.ih, 8
  %i.ik = and i32 %i.ij, 255
  %i.il = or disjoint i32 %i.ik, %i.ii
  %i.im = trunc nuw i32 %i.il to i16
  %i.in = getelementptr inbounds nuw i8, ptr %.191, i64 2
  store i16 %i.im, ptr %i.in, align 2, !tbaa !46
  %i.io = load i16, ptr %i.fi, align 2, !tbaa !52 ; 2 uses
  store i16 %i.io, ptr %i.fl, align 2, !tbaa !54
  store i16 %i.hm, ptr %i.fi, align 2, !tbaa !52
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %.191, i64 %i.ah ; 3 uses
  %i.iq = zext nneg i8 %i.fu to i32               ; 2 uses
  %i.ir = icmp samesign ult i8 %i.fu, 2
  %i.is = load i16, ptr %i.fh, align 2, !tbaa !43 ; 3 uses
  %i.it = lshr i16 %i.is, 3
  %i.iu = and i16 %i.it, 254                      ; 2 uses
  br i1 %i.ir, label %bb.q, label %bb.p

bb.p:                                             ; preds = %chomp6.exit
  %i.iv = add nuw nsw i16 %i.iu, 4
  %i.iw = zext nneg i16 %i.iv to i32
  %i.ix = xor i32 %i.iq, -1
  %i.iy = add nsw i32 %i.iw, %i.ix
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr @MACEtab4, i64 %i.iz
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !46
  %i.jc = xor i16 %i.jb, -1
  br label %read_table.exit.i.1

bb.q:                                             ; preds = %chomp6.exit
  %i.jd = zext nneg i16 %i.iu to i32
  %i.je = or disjoint i32 %i.jd, %i.iq
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr @MACEtab4, i64 %i.jf
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !46
  br label %read_table.exit.i.1

read_table.exit.i.1:                              ; preds = %bb.q, %bb.p
  %.0.i.i82.1 = phi i16 [ %i.jh, %bb.q ], [ %i.jc, %bb.p ] ; 2 uses
  %i.ji = zext nneg i8 %i.fu to i64
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr @MACEtab3, i64 %i.ji
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !46
  %i.jl = ashr i16 %i.is, 5
  %i.jm = sub i16 %i.is, %i.jl
  %i.jn = add i16 %i.jm, %i.jk
  %spec.select.i.i83.1 = tail call i16 @llvm.smax.i16(i16 %i.jn, i16 0)
  store i16 %spec.select.i.i83.1, ptr %i.fh, align 2, !tbaa !43
  %i.jo = xor i16 %i.hm, %.0.i.i82.1
  %i.jp = icmp sgt i16 %i.jo, -1
  %i.jq = load i16, ptr %i.fj, align 2, !tbaa !53 ; 3 uses
  br i1 %i.jp, label %bb.s, label %bb.r

bb.r:                                             ; preds = %read_table.exit.i.1
  %i.jr = icmp slt i16 %i.jq, -32454
  %i.js = add nsw i16 %i.jq, -314
  %spec.select45.i.1 = select i1 %i.jr, i16 -32767, i16 %i.js
  br label %chomp6.exit.1

bb.s:                                             ; preds = %read_table.exit.i.1
  %spec.select.i.1 = tail call i16 @llvm.sadd.sat.i16(i16 %i.jq, i16 506)
  br label %chomp6.exit.1

chomp6.exit.1:                                    ; preds = %bb.s, %bb.r
  %.sink.i.1 = phi i16 [ %spec.select.i.1, %bb.s ], [ %spec.select45.i.1, %bb.r ] ; 2 uses
  store i16 %.sink.i.1, ptr %i.fj, align 2, !tbaa !53
  %i.jt = sext i16 %.0.i.i82.1 to i32
  %i.ju = load i16, ptr %i.fk, align 2, !tbaa !47
  %i.jv = sext i16 %i.ju to i32
  %i.jw = add nsw i32 %i.jv, %i.jt                ; 3 uses
  %i.jx = icmp sgt i32 %i.jw, 32767
  %i.jy = icmp slt i32 %i.jw, -32768
  %i.jz = trunc nsw i32 %i.jw to i16
  %spec.select.i39.i.1 = select i1 %i.jy, i16 -32767, i16 %i.jz
  %.0.i40.i.1 = select i1 %i.jx, i16 32767, i16 %spec.select.i39.i.1 ; 2 uses
  %i.ka = sext i16 %.0.i40.i.1 to i32
  %i.kb = sext i16 %.sink.i.1 to i32
  %i.kc = mul nsw i32 %i.ka, %i.kb
  %i.kd = lshr i32 %i.kc, 15
  %i.ke = trunc i32 %i.kd to i16
  store i16 %i.ke, ptr %i.fk, align 2, !tbaa !47
  %i.kf = ashr i16 %.0.i40.i.1, 1                 ; 4 uses
  %i.kg = zext i16 %i.hm to i32
  %i.kh = sext i16 %i.io to i32                   ; 2 uses
  %i.ki = add nsw i32 %i.kh, %i.kg
  %i.kj = sext i16 %i.kf to i32                   ; 3 uses
  %i.kk = sub nsw i32 %i.kh, %i.kj
  %i.kl = ashr i32 %i.kk, 2
  %i.km = sub nsw i32 %i.ki, %i.kl                ; 2 uses
  %i.kn = and i32 %i.km, 65280
  %i.ko = lshr i32 %i.km, 8
  %i.kp = and i32 %i.ko, 255
  %i.kq = or disjoint i32 %i.kp, %i.kn
  %i.kr = trunc nuw i32 %i.kq to i16
  store i16 %i.kr, ptr %i.ip, align 2, !tbaa !46
  %i.ks = load i16, ptr %i.fi, align 2, !tbaa !52
  %i.kt = zext i16 %i.ks to i32
  %i.ku = add nsw i32 %i.kj, %i.kt
  %i.kv = load i16, ptr %i.fl, align 2, !tbaa !54
  %i.kw = sext i16 %i.kv to i32
  %i.kx = sub nsw i32 %i.kw, %i.kj
  %i.ky = ashr i32 %i.kx, 2
  %i.kz = add nsw i32 %i.ku, %i.ky                ; 2 uses
  %i.la = and i32 %i.kz, 65280
  %i.lb = lshr i32 %i.kz, 8
  %i.lc = and i32 %i.lb, 255
  %i.ld = or disjoint i32 %i.lc, %i.la
  %i.le = trunc nuw i32 %i.ld to i16
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  store i16 %i.le, ptr %i.lf, align 2, !tbaa !46
  %i.lg = load i16, ptr %i.fi, align 2, !tbaa !52 ; 2 uses
  store i16 %i.lg, ptr %i.fl, align 2, !tbaa !54
  store i16 %i.kf, ptr %i.fi, align 2, !tbaa !52
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.ah ; 3 uses
  %i.li = zext nneg i8 %i.fv to i32               ; 2 uses
  %i.lj = icmp samesign ult i8 %i.fv, 4
  %i.lk = load i16, ptr %i.fh, align 2, !tbaa !43 ; 3 uses
  %i.ll = lshr i16 %i.lk, 2
  %i.lm = and i16 %i.ll, 508                      ; 2 uses
  br i1 %i.lj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %chomp6.exit.1
  %i.ln = add nuw nsw i16 %i.lm, 8
  %i.lo = zext nneg i16 %i.ln to i32
  %i.lp = xor i32 %i.li, -1
  %i.lq = add nsw i32 %i.lo, %i.lp
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr @MACEtab2, i64 %i.lr
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !46
  %i.lu = xor i16 %i.lt, -1
  br label %read_table.exit.i.2

bb.u:                                             ; preds = %chomp6.exit.1
  %i.lv = zext nneg i16 %i.lm to i32
  %i.lw = or disjoint i32 %i.lv, %i.li
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr @MACEtab2, i64 %i.lx
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !46
  br label %read_table.exit.i.2

read_table.exit.i.2:                              ; preds = %bb.u, %bb.t
  %.0.i.i82.2 = phi i16 [ %i.lz, %bb.u ], [ %i.lu, %bb.t ] ; 2 uses
  %i.ma = zext nneg i8 %i.fv to i64
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr @MACEtab1, i64 %i.ma
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !46
  %i.md = ashr i16 %i.lk, 5
  %i.me = sub i16 %i.lk, %i.md
  %i.mf = add i16 %i.me, %i.mc
  %spec.select.i.i83.2 = tail call i16 @llvm.smax.i16(i16 %i.mf, i16 0)
  store i16 %spec.select.i.i83.2, ptr %i.fh, align 2, !tbaa !43
  %i.mg = xor i16 %i.kf, %.0.i.i82.2
  %i.mh = icmp sgt i16 %i.mg, -1
  %i.mi = load i16, ptr %i.fj, align 2, !tbaa !53 ; 3 uses
  br i1 %i.mh, label %bb.w, label %bb.v

bb.v:                                             ; preds = %read_table.exit.i.2
  %i.mj = icmp slt i16 %i.mi, -32454
  %i.mk = add nsw i16 %i.mi, -314
  %spec.select45.i.2 = select i1 %i.mj, i16 -32767, i16 %i.mk
  br label %chomp6.exit.2

bb.w:                                             ; preds = %read_table.exit.i.2
  %spec.select.i.2 = tail call i16 @llvm.sadd.sat.i16(i16 %i.mi, i16 506)
  br label %chomp6.exit.2

chomp6.exit.2:                                    ; preds = %bb.w, %bb.v
  %.sink.i.2 = phi i16 [ %spec.select.i.2, %bb.w ], [ %spec.select45.i.2, %bb.v ] ; 2 uses
  store i16 %.sink.i.2, ptr %i.fj, align 2, !tbaa !53
  %i.ml = sext i16 %.0.i.i82.2 to i32
  %i.mm = load i16, ptr %i.fk, align 2, !tbaa !47
  %i.mn = sext i16 %i.mm to i32
  %i.mo = add nsw i32 %i.mn, %i.ml                ; 3 uses
  %i.mp = icmp sgt i32 %i.mo, 32767
  %i.mq = icmp slt i32 %i.mo, -32768
  %i.mr = trunc nsw i32 %i.mo to i16
  %spec.select.i39.i.2 = select i1 %i.mq, i16 -32767, i16 %i.mr
  %.0.i40.i.2 = select i1 %i.mp, i16 32767, i16 %spec.select.i39.i.2 ; 2 uses
  %i.ms = sext i16 %.0.i40.i.2 to i32
  %i.mt = sext i16 %.sink.i.2 to i32
  %i.mu = mul nsw i32 %i.ms, %i.mt
  %i.mv = lshr i32 %i.mu, 15
  %i.mw = trunc i32 %i.mv to i16
  store i16 %i.mw, ptr %i.fk, align 2, !tbaa !47
  %i.mx = ashr i16 %.0.i40.i.2, 1                 ; 2 uses
  %i.my = zext i16 %i.kf to i32
  %i.mz = sext i16 %i.lg to i32                   ; 2 uses
  %i.na = add nsw i32 %i.mz, %i.my
  %i.nb = sext i16 %i.mx to i32                   ; 3 uses
  %i.nc = sub nsw i32 %i.mz, %i.nb
  %i.nd = ashr i32 %i.nc, 2
  %i.ne = sub nsw i32 %i.na, %i.nd                ; 2 uses
  %i.nf = and i32 %i.ne, 65280
  %i.ng = lshr i32 %i.ne, 8
  %i.nh = and i32 %i.ng, 255
  %i.ni = or disjoint i32 %i.nh, %i.nf
  %i.nj = trunc nuw i32 %i.ni to i16
  store i16 %i.nj, ptr %i.lh, align 2, !tbaa !46
  %i.nk = load i16, ptr %i.fi, align 2, !tbaa !52
  %i.nl = zext i16 %i.nk to i32
  %i.nm = add nsw i32 %i.nb, %i.nl
  %i.nn = load i16, ptr %i.fl, align 2, !tbaa !54
  %i.no = sext i16 %i.nn to i32
  %i.np = sub nsw i32 %i.no, %i.nb
  %i.nq = ashr i32 %i.np, 2
  %i.nr = add nsw i32 %i.nm, %i.nq                ; 2 uses
  %i.ns = and i32 %i.nr, 65280
  %i.nt = lshr i32 %i.nr, 8
  %i.nu = and i32 %i.nt, 255
  %i.nv = or disjoint i32 %i.nu, %i.ns
  %i.nw = trunc nuw i32 %i.nv to i16
  %i.nx = getelementptr inbounds nuw i8, ptr %i.lh, i64 2
  store i16 %i.nw, ptr %i.nx, align 2, !tbaa !46
  %i.ny = load i16, ptr %i.fi, align 2, !tbaa !52
  store i16 %i.ny, ptr %i.fl, align 2, !tbaa !54
  store i16 %i.mx, ptr %i.fi, align 2, !tbaa !52
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.ah ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.oa = trunc nuw nsw i64 %indvars.iv.next to i32
  %.069.highbits = lshr i32 %i.oa, %i.l
  %i.ob = icmp eq i32 %.069.highbits, 0
  br i1 %i.ob, label %.split, label %.split93, !llvm.loop !48

.split93:                                         ; preds = %chomp6.exit.2
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count125
  br i1 %exitcond.not, label %._crit_edge.split, label %.preheader, !llvm.loop !50

._crit_edge.split:                                ; preds = %.split93
  %indvars.iv.next108.a = add nuw nsw i64 %indvars.iv107.a, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next108.a, %wide.trip.count122
  br i1 %exitcond110.not, label %._crit_edge100.split, label %.preheader.lr.ph, !llvm.loop !51

._crit_edge100.split:                             ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.lr.ph, %bb.e
  store i32 1, ptr %2, align 4, !tbaa !55
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge100.split, %bb.c, %bb.d, %bb.b
  %.174 = phi i32 [ -1094995529, %bb.b ], [ %.072, %._crit_edge100.split ], [ -1094995529, %bb.c ], [ %i.z, %bb.d ]
  ret i32 %.174
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #3

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 356}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 348}
!30 = !{!31, !16, i64 24}
!31 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!32 = !{!31, !6, i64 32}
!33 = !{!10, !12, i64 32}
!34 = !{!10, !6, i64 24}
!35 = !{!36, !6, i64 112}
!36 = !{!"AVFrame", !7, i64 0, !7, i64 64, !37, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !38, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !39, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!37 = !{!"p2 omnipotent char", !28, i64 0}
!38 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!39 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!40 = !{!36, !37, i64 96}
!41 = !{!19, !19, i64 0}
!42 = !{!7, !7, i64 0}
!43 = !{!44, !45, i64 0}
!44 = !{!"ChannelData", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6, !45, i64 8}
!45 = !{!"short", !7, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!44, !45, i64 8}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = !{!44, !45, i64 6}
!53 = !{!44, !45, i64 2}
!54 = !{!44, !45, i64 4}
!55 = !{!6, !6, i64 0}
end_hunk_0
