Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/prosumer?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"prosumer\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Brooktree ProSumer Video\00", align 1
@ff_prosumer_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 230, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 32848, ptr null, ptr null, ptr null, ptr @decode_init, %union.anon { ptr @decode_frame }, ptr @decode_close, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@table = internal unnamed_addr constant [730 x i16] [i16 0, i16 256, i16 257, i16 512, i16 514, i16 768, i16 -1, i16 1024, i16 -258, i16 1280, i16 1, i16 1792, i16 256, i16 2048, i16 255, i16 2304, i16 -256, i16 2560, i16 -32767, i16 1536, i16 -32766, i16 2816, i16 -772, i16 16, i16 1028, i16 48, i16 2, i16 3376, i16 -260, i16 32, i16 -770, i16 64, i16 -257, i16 3360, i16 2056, i16 96, i16 -2, i16 80, i16 1026, i16 3072, i16 516, i16 3088, i16 -1800, i16 3120, i16 513, i16 3136, i16 258, i16 3168, i16 2052, i16 3888, i16 1032, i16 3584, i16 -1796, i16 3600, i16 -776, i16 3184, i16 254, i16 3328, i16 -512, i16 3392, i16 -255, i16 3408, i16 511, i16 3424, i16 512, i16 3440, i16 -769, i16 3616, i16 260, i16 3632, i16 -3856, i16 3664, i16 1025, i16 3696, i16 766, i16 3840, i16 -510, i16 3856, i16 -511, i16 3872, i16 510, i16 3904, i16 -254, i16 3920, i16 767, i16 3936, i16 -32765, i16 3104, i16 -32764, i16 112, i16 -32763, i16 3344, i16 -32762, i16 3152, i16 -32761, i16 3680, i16 -32760, i16 3648, i16 -32759, i16 3952, i16 -1022, i16 128, i16 -508, i16 129, i16 -1024, i16 130, i16 764, i16 131, i16 4112, i16 132, i16 252, i16 133, i16 4, i16 134, i16 1024, i16 135, i16 -4, i16 136, i16 4104, i16 137, i16 2064, i16 138, i16 2050, i16 139, i16 520, i16 140, i16 -264, i16 141, i16 -1023, i16 142, i16 1279, i16 143, i16 -1794, i16 144, i16 -1020, i16 145, i16 1276, i16 146, i16 -252, i16 147, i16 508, i16 148, i16 -3848, i16 149, i16 -1808, i16 150, i16 1278, i16 151, i16 -3844, i16 152, i16 8, i16 153, i16 2302, i16 154, i16 504, i16 155, i16 2048, i16 156, i16 2300, i16 157, i16 -504, i16 158, i16 -1016, i16 159, i16 -2048, i16 160, i16 264, i16 161, i16 -2046, i16 162, i16 2049, i16 163, i16 248, i16 164, i16 -2044, i16 165, i16 -1793, i16 166, i16 -8, i16 167, i16 1272, i16 168, i16 760, i16 169, i16 4100, i16 170, i16 2296, i16 171, i16 -2040, i16 172, i16 1040, i16 173, i16 -248, i16 174, i16 2303, i16 175, i16 -784, i16 176, i16 -2047, i16 177, i16 -7952, i16 178, i16 -3085, i16 179, i16 -3872, i16 180, i16 -1286, i16 181, i16 -2057, i16 182, i16 -272, i16 183, i16 -3842, i16 184, i16 -5655, i16 185, i16 -1543, i16 186, i16 8224, i16 187, i16 -7968, i16 188, i16 752, i16 189, i16 1264, i16 190, i16 8208, i16 191, i16 -4884, i16 192, i16 -4113, i16 193, i16 4128, i16 194, i16 -2571, i16 195, i16 -2828, i16 196, i16 -4627, i16 197, i16 -5398, i16 198, i16 -1029, i16 199, i16 4098, i16 200, i16 -3342, i16 201, i16 -2314, i16 202, i16 -3599, i16 203, i16 -515, i16 204, i16 528, i16 205, i16 4351, i16 206, i16 -514, i16 207, i16 4344, i16 208, i16 4096, i16 209, i16 -4095, i16 210, i16 4097, i16 211, i16 16, i16 212, i16 4350, i16 213, i16 -5141, i16 214, i16 -496, i16 215, i16 272, i16 216, i16 -4096, i16 217, i16 2288, i16 218, i16 496, i16 219, i16 771, i16 220, i16 240, i16 221, i16 -4094, i16 222, i16 4348, i16 223, i16 -1008, i16 224, i16 -3841, i16 225, i16 -4370, i16 226, i16 -4092, i16 227, i16 -16, i16 228, i16 -2056, i16 229, i16 -3086, i16 230, i16 -1542, i16 231, i16 2080, i16 232, i16 770, i16 233, i16 -7944, i16 234, i16 1285, i16 235, i16 8200, i16 236, i16 -5912, i16 237, i16 1027, i16 238, i16 -1028, i16 239, i16 -771, i16 240, i16 -1030, i16 241, i16 515, i16 242, i16 -773, i16 243, i16 772, i16 244, i16 -2032, i16 245, i16 -240, i16 246, i16 -4088, i16 247, i16 -259, i16 248, i16 -2058, i16 249, i16 -3343, i16 250, i16 -3084, i16 251, i16 -4628, i16 252, i16 -2831, i16 253, i16 -2570, i16 254, i16 -3855, i16 255, i16 -1544, i16 3200, i16 4336, i16 3201, i16 -3341, i16 3202, i16 -2055, i16 3203, i16 -2315, i16 3204, i16 -3857, i16 3205, i16 -2827, i16 3206, i16 -2313, i16 3207, i16 -1287, i16 3208, i16 1029, i16 3209, i16 -1799, i16 3210, i16 -1285, i16 3211, i16 -3600, i16 3212, i16 -2829, i16 3213, i16 -3598, i16 3214, i16 -1824, i16 3215, i16 -1801, i16 3216, i16 -516, i16 3217, i16 -1798, i16 3218, i16 -1290, i16 3219, i16 -4369, i16 3220, i16 -2569, i16 3221, i16 -517, i16 3222, i16 -2826, i16 3223, i16 -774, i16 3224, i16 -4883, i16 3225, i16 -3853, i16 3226, i16 -3087, i16 3227, i16 -4885, i16 3228, i16 -4626, i16 3229, i16 -1545, i16 3230, i16 1056, i16 3231, i16 -5142, i16 3232, i16 -3852, i16 3233, i16 -3083, i16 3234, i16 -1289, i16 3235, i16 769, i16 3236, i16 -3081, i16 3237, i16 -2061, i16 3238, i16 -4112, i16 3239, i16 -1546, i16 3240, i16 -4114, i16 3241, i16 -2825, i16 3242, i16 1284, i16 3243, i16 -2572, i16 3244, i16 -3597, i16 3245, i16 -5138, i16 3246, i16 -3339, i16 3247, i16 -3089, i16 3248, i16 -2575, i16 3249, i16 -1549, i16 3250, i16 -4624, i16 3251, i16 -4367, i16 3252, i16 -2311, i16 3253, i16 -1797, i16 3254, i16 -4080, i16 3255, i16 -3338, i16 3256, i16 -2835, i16 3257, i16 -2053, i16 3258, i16 -1805, i16 3259, i16 -4629, i16 3260, i16 -3854, i16 3261, i16 -3335, i16 3262, i16 -1807, i16 3263, i16 -1284, i16 3264, i16 -1032, i16 3265, i16 -2320, i16 3266, i16 -1288, i16 3267, i16 259, i16 3268, i16 -3082, i16 3269, i16 -2823, i16 3270, i16 -2062, i16 3271, i16 8196, i16 3272, i16 -3344, i16 3273, i16 -2830, i16 3274, i16 -4371, i16 3275, i16 -800, i16 3276, i16 -5399, i16 3277, i16 -5397, i16 3278, i16 -2316, i16 3279, i16 -3, i16 3280, i16 -5654, i16 3281, i16 -3596, i16 3282, i16 -2321, i16 3283, i16 -2312, i16 3284, i16 -1802, i16 3285, i16 -4110, i16 3286, i16 -4111, i16 3287, i16 -2063, i16 3288, i16 -1027, i16 3289, i16 -266, i16 3290, i16 -9, i16 3291, i16 1541, i16 3292, i16 -3851, i16 3293, i16 -3846, i16 3294, i16 -3591, i16 3295, i16 -3332, i16 3296, i16 -2066, i16 3297, i16 -2059, i16 3298, i16 -1540, i16 3299, i16 -1291, i16 3300, i16 -1039, i16 3301, i16 -3601, i16 3302, i16 -3590, i16 3303, i16 -2824, i16 3304, i16 -2064, i16 3305, i16 -2060, i16 3306, i16 -2052, i16 3307, i16 -1541, i16 3308, i16 -1295, i16 3309, i16 -1031, i16 3310, i16 -513, i16 3311, i16 -7940, i16 3312, i16 -5140, i16 3313, i16 -4625, i16 3314, i16 -4115, i16 3315, i16 -3594, i16 3316, i16 -3337, i16 3317, i16 -3090, i16 3318, i16 -3080, i16 3319, i16 -2574, i16 3320, i16 -1806, i16 3321, i16 -1551, i16 3322, i16 -1550, i16 3323, i16 -1041, i16 3324, i16 253, i16 3325, i16 -4882, i16 3326, i16 -3345, i16 3327, i16 -3336, i16 3456, i16 -2576, i16 3457, i16 -2318, i16 3458, i16 -777, i16 3459, i16 -775, i16 3460, i16 1286, i16 3461, i16 -4372, i16 3462, i16 -3850, i16 3463, i16 -3340, i16 3464, i16 -2319, i16 3465, i16 -1803, i16 3466, i16 -1548, i16 3467, i16 -1033, i16 3468, i16 1283, i16 3469, i16 -4116, i16 3470, i16 -3088, i16 3471, i16 -2832, i16 3472, i16 -2573, i16 3473, i16 -2317, i16 3474, i16 -2054, i16 3475, i16 -32758, i16 3476, i16 -32757, i16 3477, i16 -32756, i16 3478, i16 -32755, i16 3479, i16 -32754, i16 3480, i16 -32753, i16 3481, i16 -32752, i16 3482, i16 -32751, i16 3483, i16 -32750, i16 3484, i16 -32749, i16 3485, i16 -32748, i16 3486, i16 -32747, i16 3487, i16 -32746, i16 3488, i16 -32745, i16 3489, i16 -32744, i16 3490, i16 -32743, i16 3491, i16 -32742, i16 3492, i16 -32741, i16 3493, i16 -32740, i16 3494, i16 -32739, i16 3495, i16 -32738, i16 3496, i16 -32737, i16 3497, i16 -32736, i16 3498, i16 -32735, i16 3499, i16 -32734, i16 3500, i16 -32733, i16 3501, i16 -32732, i16 3502, i16 -32731, i16 3503, i16 -32730, i16 3504, i16 -32729, i16 3505, i16 -32728, i16 3506, i16 -32727, i16 3507, i16 -32726, i16 3508, i16 -32725, i16 3509, i16 -32724, i16 3510, i16 -32723, i16 3511, i16 -32722, i16 3512, i16 -32721, i16 3513, i16 -32513, i16 3514], align 16
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"s->size >= bytestream2_get_bytes_left_p(&s->pb)\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"libavcodec/prosumer.c\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @decode_init(ptr nofree noundef captures(none) initializes((136, 140)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = add nsw i32 %i.d, 7
  %i.f = and i32 %i.e, -8                         ; 2 uses
  %i.g = ashr exact i32 %i.f, 1
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store i32 %i.h, ptr %i.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.k = load i32, ptr %i.j, align 4, !tbaa !34
  %i.l = mul i32 %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 7, ptr %i.n, align 8, !tbaa !43
  %i.o = zext i32 %i.h to i64
  %i.p = tail call noalias ptr @av_malloc(i64 noundef %i.o) #6
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32832 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !36
  %i.r = load i32, ptr %i.m, align 4, !tbaa !35
  %i.s = zext i32 %i.r to i64
  %i.t = tail call noalias ptr @av_malloc(i64 noundef %i.s) #6 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32840
  store ptr %i.t, ptr %i.u, align 8, !tbaa !37
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.v, null
  %.not17 = icmp eq ptr %i.t, null
  %or.cond = select i1 %.not, i1 true, i1 %.not17
  br i1 %or.cond, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %i.i, align 8, !tbaa !33
  %i.x = zext i32 %i.w to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.v, i8 -128, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %bb.b
  %indvars.iv58.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next59.i, %.loopexit.i ] ; 5 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr @table, i64 %indvars.iv58.i ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !45  ; 2 uses
  %i.ab = icmp samesign ugt i64 %indvars.iv58.i, 21
  %i.ac = select i1 %i.ab, i32 2, i32 1
  %i.ad = icmp samesign ugt i64 %indvars.iv58.i, 99 ; 2 uses
  %i.ae = zext i1 %i.ad to i32
  %i.af = add nuw nsw i32 %i.ac, %i.ae            ; 2 uses
  %i.ag = shl nuw nsw i32 %i.af, 16
  %i.ah = getelementptr i8, ptr %i.z, i64 -2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !45
  %i.aj = zext i16 %i.ai to i32
  %i.ak = or disjoint i32 %i.ag, %i.aj            ; 2 uses
  %i.al = shl nuw nsw i32 %i.af, 2                ; 2 uses
  %i.am = sub nuw nsw i32 12, %i.al               ; 5 uses
  br i1 %i.ad, label %bb.d, label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.c
  %i.an = add nuw nsw i32 %i.al, 20
  %i.ao = zext i16 %i.aa to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = zext i16 %i.aa to i64
  %.idx.i = shl nuw nsw i64 %i.ap, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i ; 2 uses
  store i32 %i.ak, ptr %i.aq, align 4, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 0, ptr %i.ar, align 4, !tbaa !38
  br label %.loopexit.i

bb.e:                                             ; preds = %fill_elements.exit.i, %.preheader42.i
  %indvars.iv.i = phi i64 [ 0, %.preheader42.i ], [ %indvars.iv.next.i, %fill_elements.exit.i ] ; 3 uses
  %.03948.i = phi i32 [ %i.ak, %.preheader42.i ], [ %.140.i, %fill_elements.exit.i ] ; 2 uses
  %i.as = and i32 %.03948.i, 16777215             ; 4 uses
  %i.at = and i32 %.03948.i, 65280
  %.not.i = icmp eq i32 %i.at, 32768
  br i1 %.not.i, label %fill_elements.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.av = shl i32 %i.au, %i.an                    ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %indvars.iv.i.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.i, %bb.k ] ; 3 uses
  %i.aw = icmp samesign ugt i64 %indvars.iv.i.i, 10 ; 2 uses
  %i.ax = select i1 %i.aw, i32 8, i32 4           ; 4 uses
  %.not.i.i = icmp samesign ult i32 %i.am, %i.ax
  br i1 %.not.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.finite54 = select i1 %i.aw, i32 -16777216, i32 -268435456
  %i.ay = and i32 %.finite54, %i.av
  %i.az = lshr exact i32 %i.ay, 20
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 2
  %i.ba = getelementptr inbounds nuw i8, ptr @table, i64 %.idx.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !45
  %i.bd = zext i16 %i.bc to i32
  %i.be = icmp eq i32 %i.az, %i.bd
  br i1 %i.be, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bf = load i16, ptr %i.ba, align 2, !tbaa !45 ; 2 uses
  %i.bg = icmp slt i16 %i.bf, -32512
  br i1 %i.bg, label %fill_elements.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %reass.sub.i.i = sub nsw i32 %i.ax, %i.am
  %i.bh = shl nsw i32 %reass.sub.i.i, 22
  %i.bi = add nsw i32 %i.bh, 50331648
  %i.bj = or disjoint i32 %i.bi, %i.as
  %i.bk = or i32 %i.bj, 268435456
  %i.bl = zext i16 %i.bf to i32
  %i.bm = sub nuw nsw i32 %i.am, %i.ax
  %i.bn = shl i32 %i.av, %i.ax
  br label %.loopexit.i.i

bb.k:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 43
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.g, !llvm.loop !40

.loopexit.i.i:                                    ; preds = %bb.k, %bb.j
  %.241.i = phi i32 [ %i.bk, %bb.j ], [ %i.as, %bb.k ] ; 3 uses
  %.1.i = phi i32 [ %i.bl, %bb.j ], [ -1, %bb.k ] ; 3 uses
  %.236.i.i = phi i32 [ %i.bm, %bb.j ], [ %i.am, %bb.k ] ; 2 uses
  %.2.i.i = phi i32 [ %i.bn, %bb.j ], [ %i.av, %bb.k ]
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.loopexit.i.i
  %indvars.iv.1.i.i = phi i64 [ 0, %.loopexit.i.i ], [ %indvars.iv.next.1.i.i, %bb.p ] ; 3 uses
  %i.bo = icmp samesign ugt i64 %indvars.iv.1.i.i, 10 ; 2 uses
  %i.bp = select i1 %i.bo, i32 8, i32 4           ; 2 uses
  %.not.1.i.i = icmp samesign ult i32 %.236.i.i, %i.bp
  br i1 %.not.1.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.finite = select i1 %i.bo, i32 -16777216, i32 -268435456
  %i.bq = and i32 %.finite, %.2.i.i
  %i.br = lshr exact i32 %i.bq, 20
  %.idx50.i.i = shl nuw nsw i64 %indvars.iv.1.i.i, 2
  %i.bs = getelementptr inbounds nuw i8, ptr @table, i64 %.idx50.i.i ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !45
  %i.bv = zext i16 %i.bu to i32
  %i.bw = icmp eq i32 %i.br, %i.bv
  br i1 %i.bw, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bx = load i16, ptr %i.bs, align 2, !tbaa !45 ; 2 uses
  %i.by = icmp slt i16 %i.bx, -32512
  br i1 %i.by, label %fill_elements.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = and i32 %.241.i, 16777215
  %reass.sub.1.i.i = sub nsw i32 %i.bp, %.236.i.i
  %i.ca = shl nsw i32 %reass.sub.1.i.i, 22
  %i.cb = add nsw i32 %i.ca, 50331648
  %i.cc = or i32 %i.bz, %i.cb
  %i.cd = or i32 %i.cc, 536870912
  %i.ce = zext i16 %i.bx to i32
  %i.cf = shl nuw i32 %i.ce, 16
  %i.cg = or i32 %i.cf, %.1.i
  br label %fill_elements.exit.i

bb.p:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next.1.i.i = add nuw nsw i64 %indvars.iv.1.i.i, 1 ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %indvars.iv.next.1.i.i, 43
  br i1 %exitcond.1.not.i.i, label %fill_elements.exit.i, label %bb.l, !llvm.loop !40

fill_elements.exit.i:                             ; preds = %bb.p, %bb.o, %bb.n, %bb.i, %bb.e
  %.140.i = phi i32 [ %i.as, %bb.e ], [ %i.as, %bb.i ], [ %.241.i, %bb.n ], [ %i.cd, %bb.o ], [ %.241.i, %bb.p ] ; 2 uses
  %.038.i = phi i32 [ -1, %bb.e ], [ -1, %bb.i ], [ %.1.i, %bb.n ], [ %i.cg, %bb.o ], [ %.1.i, %bb.p ]
  %i.ch = add nuw i64 %indvars.iv.i, %i.ao
  %i.ci = trunc nuw i64 %i.ch to i32
  %i.cj = shl i32 %i.ci, 1                        ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ck
  store i32 %.140.i, ptr %i.cl, align 4, !tbaa !38
  %i.cm = or disjoint i32 %i.cj, 1
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.cn
  store i32 %.038.i, ptr %i.co, align 4, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cp = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %.029.highbits.i = lshr i32 %i.cp, %i.am
  %i.cq = icmp eq i32 %.029.highbits.i, 0
  br i1 %i.cq, label %bb.e, label %.loopexit.i, !llvm.loop !41

.loopexit.i:                                      ; preds = %fill_elements.exit.i, %bb.d
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 2
  %i.cr = icmp samesign ult i64 %indvars.iv58.i, 728
  br i1 %i.cr, label %bb.c, label %fill_lut.exit, !llvm.loop !42

fill_lut.exit:                                    ; preds = %.loopexit.i
  store <4 x i32> <i32 425984, i32 0, i32 425984, i32 0>, ptr %i.y, align 8, !tbaa !38
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store <4 x i32> <i32 425984, i32 0, i32 425984, i32 0>, ptr %i.cs, align 8, !tbaa !38
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store <4 x i32> <i32 425984, i32 0, i32 425984, i32 0>, ptr %i.ct, align 8, !tbaa !38
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store <4 x i32> <i32 425984, i32 0, i32 425984, i32 0>, ptr %i.cu, align 8, !tbaa !38
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store <4 x i32> <i32 425984, i32 0, i32 425984, i32 0>, ptr %i.cv, align 8, !tbaa !38
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store <4 x i32> <i32 425984, i32 0, i32 425984, i32 0>, ptr %i.cw, align 8, !tbaa !38
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store <4 x i32> <i32 425984, i32 0, i32 425984, i32 0>, ptr %i.cx, align 8, !tbaa !38
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store <4 x i32> <i32 425984, i32 0, i32 425984, i32 0>, ptr %i.cy, align 8, !tbaa !38
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %fill_lut.exit
  %.0 = phi i32 [ 0, %fill_lut.exit ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !62   ; 3 uses
  %i.e = icmp slt i32 %i.d, 33
  br i1 %i.e, label %decompress.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 6 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %bytestream2_init.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 141) #6
  tail call void @abort() #7
  unreachable

bytestream2_init.exit:                            ; preds = %bb.b
  store ptr %i.g, ptr %i.b, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !65
  %i.i = zext nneg i32 %i.d to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32840 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35   ; 3 uses
  %i.q = icmp ne ptr %i.n, null
  %i.r = icmp sgt i32 %i.p, -1
  %or.cond.i = and i1 %i.q, %i.r
  br i1 %or.cond.i, label %bytestream2_init_writer.exit, label %bb.d

bb.d:                                             ; preds = %bytestream2_init.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 151) #6
  tail call void @abort() #7
  unreachable

bytestream2_init_writer.exit:                     ; preds = %bytestream2_init.exit
  store ptr %i.n, ptr %i.l, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store ptr %i.n, ptr %i.s, align 8, !tbaa !68
  %i.t = zext nneg i32 %i.p to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 8 uses
  store i32 0, ptr %i.w, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.y = icmp samesign ult i32 %i.d, 36
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bytestream2_init_writer.exit
  store ptr %i.j, ptr %i.b, align 8, !tbaa !64
  br label %bytestream2_get_le32.exit.i

bb.f:                                             ; preds = %bytestream2_init_writer.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !71
  %i.ab = load i32, ptr %i.z, align 1, !tbaa !72
  br label %bytestream2_get_le32.exit.i

bytestream2_get_le32.exit.i:                      ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ 0, %bb.e ], [ %i.ab, %bb.f ] ; 3 uses
  %i.ac = icmp eq i32 %i.p, 0
  br i1 %i.ac, label %.loopexit106, label %.lr.ph179.i

.lr.ph179.i:                                      ; preds = %bytestream2_get_le32.exit.i
  %i.ad = lshr i32 %.0.i.i, 20                    ; 2 uses
  %i.ae = shl nuw nsw i32 %i.ad, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !38
  %.sroa.14.0.extract.shift.i = lshr i32 %.0.i.i, 16
  %.sroa.14.0.extract.trunc.i = trunc nuw i32 %.sroa.14.0.extract.shift.i to i16
  %.sroa.0.0.extract.trunc.i = trunc i32 %.0.i.i to i16
  br label %bb.g

bb.g:                                             ; preds = %.backedge153.i, %.lr.ph179.i
  %i.ai = phi ptr [ %i.n, %.lr.ph179.i ], [ %i.ge, %.backedge153.i ] ; 10 uses
  %i.aj = phi ptr [ %i.u, %.lr.ph179.i ], [ %i.gf, %.backedge153.i ] ; 4 uses
  %i.ak = phi i64 [ %i.t, %.lr.ph179.i ], [ %i.gi, %.backedge153.i ]
  %.0113177.i = phi i32 [ %i.ah, %.lr.ph179.i ], [ %.0113.be.i, %.backedge153.i ] ; 8 uses
  %.sroa.0.0176.i = phi i16 [ %.sroa.0.0.extract.trunc.i, %.lr.ph179.i ], [ %.sroa.0.0.be.i, %.backedge153.i ] ; 3 uses
  %.sroa.14.0175.i = phi i16 [ %.sroa.14.0.extract.trunc.i, %.lr.ph179.i ], [ %.sroa.14.0.be.i, %.backedge153.i ] ; 3 uses
  %.0114174.i = phi i32 [ 4, %.lr.ph179.i ], [ %.0114.be.i, %.backedge153.i ] ; 4 uses
  %.0116173.i = phi i32 [ %i.ad, %.lr.ph179.i ], [ %.0116.be.i, %.backedge153.i ]
  %i.al = load i32, ptr %i.w, align 8, !tbaa !70
  %.not.i88 = icmp eq i32 %i.al, 0
  br i1 %.not.i88, label %bb.h, label %.loopexit106

bb.h:                                             ; preds = %bb.g
  %i.am = and i32 %.0113177.i, 255                ; 2 uses
  %i.an = and i32 %.0113177.i, 65535
  %or.cond.i89 = icmp eq i32 %i.an, 32768
  br i1 %or.cond.i89, label %.preheader.preheader.i, label %bb.i

.preheader.preheader.i:                           ; preds = %bb.h
  %.sroa.14.0.insert.ext58.i = zext i16 %.sroa.14.0175.i to i32
  %.sroa.0.0.insert.ext28.i = zext i16 %.sroa.0.0176.i to i32
  %i.ao = shl i32 %.sroa.14.0.insert.ext58.i, 20
  %i.ap = shl nuw nsw i32 %.sroa.0.0.insert.ext28.i, 4 ; 2 uses
  %i.aq = or disjoint i32 %i.ao, %i.ap            ; 2 uses
  %.sroa.0.0.extract.trunc31.i = trunc i32 %i.ap to i16 ; 2 uses
  %.not126.i = icmp eq i32 %.0114174.i, 1
  br i1 %.not126.i, label %bb.aj, label %bb.ae

bb.i:                                             ; preds = %bb.h
  %i.ar = and i32 %.0113177.i, 65280
  %.not123.i = icmp eq i32 %i.ar, 32768
  br i1 %.not123.i, label %.preheader150.i, label %bb.j

.preheader150.i:                                  ; preds = %bb.i
  %.not185.i = icmp eq i32 %i.am, 0
  br i1 %.not185.i, label %.loopexit151.i, label %.lr.ph.i
end_hunk_0
