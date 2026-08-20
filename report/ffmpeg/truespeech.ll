inline.NumInlined: 43
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [11 x i8] c"truespeech\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"DSP Group TrueSpeech\00", align 1
@ff_truespeech_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86037, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 1008, ptr null, ptr null, ptr null, ptr @truespeech_decode_init, %union.anon { ptr @truespeech_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Channel count %d\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Too small input buffer (%d bytes), need at least 32 bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"Too large input buffer (%d bytes); per-block sample count overflows\0A\00", align 1
@ts_cb_0 = internal unnamed_addr constant [32 x i16] [i16 -32192, i16 -31900, i16 -31538, i16 -31139, i16 -30715, i16 -30242, i16 -29737, i16 -29196, i16 -28591, i16 -27934, i16 -27170, i16 -26353, i16 -25471, i16 -24455, i16 -23220, i16 -21806, i16 -20086, i16 -18166, i16 -16092, i16 -13876, i16 -11463, i16 -8749, i16 -5674, i16 -1901, i16 2415, i16 6858, i16 10732, i16 14367, i16 17913, i16 21610, i16 25539, i16 29621], align 16
@ts_cb_1 = internal unnamed_addr constant [32 x i16] [i16 -24731, i16 -19093, i16 -14973, i16 -11407, i16 -8168, i16 -5196, i16 -2532, i16 -167, i16 2139, i16 4358, i16 6482, i16 8522, i16 10441, i16 12280, i16 14054, i16 15762, i16 17375, i16 18875, i16 20294, i16 21607, i16 22832, i16 23971, i16 25068, i16 26105, i16 27092, i16 27994, i16 28830, i16 29613, i16 30315, i16 30960, i16 31578, i16 32165], align 16
@ts_cb_2 = internal unnamed_addr constant [16 x i16] [i16 -26888, i16 -23628, i16 -20667, i16 -17837, i16 -15183, i16 -12596, i16 -10129, i16 -7650, i16 -5133, i16 -2496, i16 247, i16 3104, i16 6273, i16 9882, i16 14187, i16 19808], align 16
@ts_cb_3 = internal unnamed_addr constant [16 x i16] [i16 -14764, i16 -8462, i16 -4182, i16 -620, i16 2410, i16 5183, i16 7803, i16 10284, i16 12662, i16 14985, i16 17311, i16 19618, i16 21887, i16 24144, i16 26392, i16 28557], align 16
@ts_cb_4 = internal unnamed_addr constant [16 x i16] [i16 -21529, i16 -17496, i16 -14308, i16 -11482, i16 -8946, i16 -6700, i16 -4574, i16 -2536, i16 -472, i16 1615, i16 3767, i16 6072, i16 8618, i16 11659, i16 15266, i16 19961], align 16
@ts_cb_5 = internal unnamed_addr constant [8 x i16] [i16 -10981, i16 -3794, i16 1070, i16 5063, i16 8800, i16 12571, i16 16606, i16 21381], align 16
@ts_cb_6 = internal unnamed_addr constant [8 x i16] [i16 -19120, i16 -14299, i16 -9856, i16 -5737, i16 -1917, i16 1874, i16 6161, i16 11800], align 16
@ts_cb_7 = internal unnamed_addr constant [8 x i16] [i16 -12560, i16 -6919, i16 -2373, i16 1606, i16 5365, i16 9215, i16 13679, i16 19085], align 16
@ts_order2_coeffs = internal unnamed_addr constant [50 x i16] [i16 -4817, i16 21049, i16 21745, i16 -6999, i16 9760, i16 -4546, i16 2518, i16 11328, i16 -4171, i16 11232, i16 16353, i16 13113, i16 17455, i16 -6402, i16 17496, i16 -1569, i16 -3535, i16 17371, i16 15792, i16 -2299, i16 20347, i16 -261, i16 9901, i16 3292, i16 13250, i16 1849, i16 4798, i16 17314, i16 7135, i16 7998, i16 529, i16 1942, i16 10987, i16 5695, i16 1293, i16 14904, i16 3358, i16 3448, i16 5391, i16 13126, i16 14500, i16 2941, i16 11613, i16 8159, i16 6583, i16 10274, i16 3481, i16 7954, i16 6476, i16 3302], align 16
@ts_pulse_scales = internal unnamed_addr constant [64 x i16] [i16 2, i16 6, i16 -2, i16 -6, i16 4, i16 12, i16 -4, i16 -12, i16 6, i16 18, i16 -6, i16 -18, i16 10, i16 30, i16 -10, i16 -30, i16 16, i16 48, i16 -16, i16 -48, i16 25, i16 75, i16 -25, i16 -75, i16 40, i16 120, i16 -40, i16 -120, i16 64, i16 192, i16 -64, i16 -192, i16 101, i16 303, i16 -101, i16 -303, i16 161, i16 483, i16 -161, i16 -483, i16 256, i16 768, i16 -256, i16 -768, i16 406, i16 1218, i16 -406, i16 -1218, i16 645, i16 1935, i16 -645, i16 -1935, i16 1024, i16 3072, i16 -1024, i16 -3072, i16 1625, i16 4875, i16 -1625, i16 -4875, i16 2580, i16 7740, i16 -2580, i16 -7740], align 16
@ts_pulse_values = internal unnamed_addr constant [120 x i16] [i16 3654, i16 3276, i16 2925, i16 2600, i16 2300, i16 2024, i16 1771, i16 1540, i16 1330, i16 1140, i16 969, i16 816, i16 680, i16 560, i16 455, i16 364, i16 286, i16 220, i16 165, i16 120, i16 84, i16 56, i16 35, i16 20, i16 10, i16 4, i16 1, i16 0, i16 0, i16 0, i16 406, i16 378, i16 351, i16 325, i16 300, i16 276, i16 253, i16 231, i16 210, i16 190, i16 171, i16 153, i16 136, i16 120, i16 105, i16 91, i16 78, i16 66, i16 55, i16 45, i16 36, i16 28, i16 21, i16 15, i16 10, i16 6, i16 3, i16 1, i16 0, i16 0, i16 29, i16 28, i16 27, i16 26, i16 25, i16 24, i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9, i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1163346256, 1) i32 @truespeech_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %i.b) #6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.c) #6
  store i32 1, ptr %i.c, align 8, !tbaa !30
  store i32 1, ptr %i.a, align 4, !tbaa !30
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 1, ptr %i.f, align 4, !tbaa !33
  tail call void @ff_bswapdsp_init(ptr noundef %i.e) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1163346256, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 286331168) i32 @truespeech_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [7 x i16], align 2                ; 10 uses
  %i.b = alloca [206 x i16], align 16             ; 48 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 149 uses
  %i.i = sdiv i32 %i.f, 32                        ; 2 uses
  %.off = add i32 %i.f, 31
  %.not = icmp ult i32 %.off, 63
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.f) #6
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.f, 286331167
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.f) #6
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.k = mul nsw i32 %i.i, 240                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.k, ptr %i.l, align 8, !tbaa !37
  %i.m = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #6 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.p = sext i32 %i.k to i64
  %i.q = shl nsw i64 %i.p, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.o, i8 0, i64 %i.q, i1 false)
  %i.r = icmp sgt i32 %i.f, 31
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 62
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 58
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 17
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 22
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 23
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 26
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 30
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 34
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 35 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 804 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 806 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 808 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 810 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 812 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.h, i64 814
  %5 = getelementptr inbounds nuw i8, ptr %i.h, i64 816
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 818
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 820 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 724 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 944 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 740
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 976
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 992
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 978
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 994
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 980
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 996
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 982
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 998
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 984
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 1000
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 986
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 1002
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 988
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 1004
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 990
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 1006
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 140 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 380
  %i.ck = getelementptr i8, ptr %i.h, i64 824     ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 756 ; 3 uses
  %scevgep.i = getelementptr i8, ptr %i.h, i64 758 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 762
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 764
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 772 ; 3 uses
  %scevgep131.i = getelementptr i8, ptr %i.h, i64 774
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 788 ; 3 uses
  %i.cq = getelementptr i8, ptr %i.h, i64 790     ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 290
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 292 ; 3 uses
  %scevgep84 = getelementptr i8, ptr %i.h, i64 944
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 156
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 172
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 188
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 204
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 220
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 236
  %i.de = getelementptr inbounds nuw i8, ptr %i.h, i64 252
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 268
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 284
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 300
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 316
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 332
  %i.dq = getelementptr inbounds nuw i8, ptr %i.h, i64 348
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.dt = getelementptr inbounds nuw i8, ptr %i.h, i64 364
  %i.du = getelementptr inbounds nuw i8, ptr %i.h, i64 380
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 396
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 412
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 428
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 444
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 460
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 476
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ej = getelementptr inbounds nuw i8, ptr %i.h, i64 492
  %i.ek = getelementptr inbounds nuw i8, ptr %i.h, i64 508
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 524
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 540
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.er = getelementptr inbounds nuw i8, ptr %i.h, i64 556
  %i.es = getelementptr inbounds nuw i8, ptr %i.h, i64 572
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.ev = getelementptr inbounds nuw i8, ptr %i.h, i64 588
  %i.ew = getelementptr inbounds nuw i8, ptr %i.h, i64 604
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.ez = getelementptr inbounds nuw i8, ptr %i.h, i64 620
  %i.fa = getelementptr inbounds nuw i8, ptr %i.h, i64 636
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 652
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 668
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 684
  %i.fi = getelementptr inbounds nuw i8, ptr %i.h, i64 700
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 716
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.fn = getelementptr inbounds nuw i8, ptr %i.h, i64 720
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 290
  %i.fp = getelementptr i8, ptr %i.h, i64 840
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 308
  %i.fr = getelementptr i8, ptr %i.h, i64 856
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 324
  %i.ft = getelementptr i8, ptr %i.h, i64 872
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  %i.fv = getelementptr i8, ptr %i.h, i64 888
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 356
  %i.fx = getelementptr i8, ptr %i.h, i64 904
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 372
  %i.fz = getelementptr i8, ptr %i.h, i64 920
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 388
  %i.gb = getelementptr inbounds nuw i8, ptr %i.h, i64 484
  %i.gc = getelementptr i8, ptr %i.h, i64 832
  %i.gd = getelementptr inbounds nuw i8, ptr %i.h, i64 500
  %i.ge = getelementptr i8, ptr %i.h, i64 840
  %i.gf = getelementptr inbounds nuw i8, ptr %i.h, i64 516
  %i.gg = getelementptr i8, ptr %i.h, i64 848
  %i.gh = getelementptr inbounds nuw i8, ptr %i.h, i64 532
  %i.gi = getelementptr i8, ptr %i.h, i64 856
  %i.gj = getelementptr inbounds nuw i8, ptr %i.h, i64 548
  %i.gk = getelementptr i8, ptr %i.h, i64 864
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 564
  %i.gm = getelementptr i8, ptr %i.h, i64 872
  %i.gn = getelementptr inbounds nuw i8, ptr %i.h, i64 580
  %i.go = getelementptr i8, ptr %i.h, i64 880
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 596
  %i.gq = getelementptr i8, ptr %i.h, i64 888
  %i.gr = getelementptr inbounds nuw i8, ptr %i.h, i64 612
  %i.gs = getelementptr i8, ptr %i.h, i64 896
  %i.gt = getelementptr inbounds nuw i8, ptr %i.h, i64 628
  %i.gu = getelementptr i8, ptr %i.h, i64 904
  %i.gv = getelementptr inbounds nuw i8, ptr %i.h, i64 644
  %i.gw = getelementptr i8, ptr %i.h, i64 912
  %i.gx = getelementptr inbounds nuw i8, ptr %i.h, i64 660
  %i.gy = getelementptr i8, ptr %i.h, i64 920
  %i.gz = getelementptr inbounds nuw i8, ptr %i.h, i64 676
  %i.ha = getelementptr i8, ptr %i.h, i64 928
  %i.hb = getelementptr inbounds nuw i8, ptr %i.h, i64 692
  %i.hc = getelementptr i8, ptr %i.h, i64 936
  %i.hd = getelementptr inbounds nuw i8, ptr %i.h, i64 708
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.s
  %.073 = phi ptr [ %i.o, %.lr.ph ], [ %i.alk, %bb.s ] ; 3 uses
  %.04372 = phi i32 [ 0, %.lr.ph ], [ %i.alp, %bb.s ]
  %.04571 = phi ptr [ %i.d, %.lr.ph ], [ %i.lg, %bb.s ] ; 2 uses
  %i.he = load ptr, ptr %i.h, align 16, !tbaa !43
  tail call void %i.he(ptr noundef nonnull %i.s, ptr noundef %.04571, i32 noundef 8) #6, !inline_history !46
  %i.hf = load i32, ptr %i.s, align 16, !tbaa !31
  %i.hg = tail call i32 @llvm.bswap.i32(i32 %i.hf) ; 3 uses
  %i.hh = lshr i32 %i.hg, 29
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr @ts_cb_7, i64 %i.hi
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !47 ; 2 uses
  store i16 %i.hk, ptr %i.u, align 2, !tbaa !47
  %i.hl = lshr i32 %i.hg, 26
  %i.hm = and i32 %i.hl, 7
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr @ts_cb_6, i64 %i.hn
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !47 ; 2 uses
  store i16 %i.hp, ptr %i.v, align 4, !tbaa !47
  %i.hq = lshr i32 %i.hg, 23
  %i.hr = and i32 %i.hq, 7
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr @ts_cb_5, i64 %i.hs
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !47 ; 2 uses
  store i16 %i.hu, ptr %i.w, align 2, !tbaa !47
  %i.hv = load i32, ptr %i.x, align 1, !tbaa !31
  %i.hw = tail call i32 @llvm.bswap.i32(i32 %i.hv) ; 2 uses
  %i.hx = lshr i32 %i.hw, 27
  %i.hy = and i32 %i.hx, 15
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr @ts_cb_4, i64 %i.hz
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !47 ; 2 uses
  store i16 %i.ib, ptr %i.y, align 8, !tbaa !47
  %i.ic = lshr i32 %i.hw, 23
  %i.id = and i32 %i.ic, 15
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [2 x i8], ptr @ts_cb_3, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !47 ; 2 uses
  store i16 %i.ig, ptr %i.z, align 2, !tbaa !47
  %i.ih = load i32, ptr %i.aa, align 2, !tbaa !31
  %i.ii = tail call i32 @llvm.bswap.i32(i32 %i.ih) ; 2 uses
  %i.ij = lshr i32 %i.ii, 27
end_hunk_0
begin_hunk_1_@truespeech_decode_frame:bb.a
  %i.me = add nsw i32 %i.md, 16384
  %i.mf = lshr i32 %i.me, 15
  %i.mg = trunc i32 %i.mf to i16
  %i.mh = add i16 %i.mg, %i.lu                    ; 2 uses
  %i.mi = sub nsw i32 8, %i.lw
  %i.mj = lshr i32 %i.mi, 3                       ; 2 uses
  %i.mk = trunc i32 %i.mj to i16
  %sext140.i = shl i32 %i.mj, 16
  %i.ml = ashr exact i32 %sext140.i, 16
  %i.mm = sext i16 %i.ib to i32                   ; 5 uses
  %i.mn = sub nsw i32 8, %i.mm
  %i.mo = lshr i32 %i.mn, 3                       ; 2 uses
  %sext142.i = shl i32 %i.mo, 16
  %i.mp = ashr exact i32 %sext142.i, 16
  %i.mq = sext i16 %i.hu to i32                   ; 6 uses
  %i.mr = mul nsw i32 %i.mp, %i.mq
  %i.ms = add nsw i32 %i.mr, 16384
  %i.mt = lshr i32 %i.ms, 15
  %i.mu = trunc i32 %i.mt to i16
  %i.mv = sub nsw i32 8, %i.mq
  %i.mw = lshr i32 %i.mv, 3                       ; 2 uses
  %sext143.i = shl i32 %i.mw, 16
  %i.mx = ashr exact i32 %sext143.i, 16
  %i.my = sext i16 %i.hp to i32                   ; 7 uses
  %i.mz = mul nsw i32 %i.mx, %i.my
  %i.na = add nsw i32 %i.mz, 16384
  %i.nb = sub nsw i32 8, %i.my
  %i.nc = lshr i32 %i.nb, 3                       ; 2 uses
  %sext144.i = shl i32 %i.nc, 16
  %i.nd = ashr exact i32 %sext144.i, 16
  %i.ne = sext i16 %i.hk to i32                   ; 8 uses
  %i.nf = mul nsw i32 %i.nd, %i.ne
  %i.ng = shl nsw i32 %i.ne, 13
  %i.nh = sext i16 %i.mb to i32
  %i.ni = sext i16 %i.mh to i32
  %i.nj = sext i16 %i.ig to i32                   ; 4 uses
  %i.nk = sub nsw i32 8, %i.nj
  %i.nl = mul nsw i32 %i.nh, %i.nj
  %i.nm = mul nsw i32 %i.ni, %i.nj
  %i.nn = mul nsw i32 %i.ml, %i.nj
  %i.no = add nsw i32 %i.nl, 16384
  %i.np = add nsw i32 %i.nm, 16384
  %i.nq = add nsw i32 %i.nn, 16384
  %i.nr = lshr i32 %i.nk, 3                       ; 2 uses
  %i.ns = lshr i32 %i.no, 15
  %i.nt = lshr i32 %i.np, 15
  %i.nu = lshr i32 %i.nq, 15
  %i.nv = trunc i32 %i.nr to i16
  %i.nw = trunc i32 %i.ns to i16
  %i.nx = trunc i32 %i.nt to i16
  %i.ny = trunc i32 %i.nu to i16
  %i.nz = add i16 %i.nw, %i.mk                    ; 2 uses
  %i.oa = add i16 %i.mh, %i.nx                    ; 2 uses
  %i.ob = add i16 %i.mb, %i.ny                    ; 2 uses
  %sext141.i = shl i32 %i.nr, 16
  %i.oc = ashr exact i32 %sext141.i, 16
  %i.od = sext i16 %i.nz to i32
  %i.oe = sext i16 %i.oa to i32
  %i.of = sext i16 %i.ob to i32
  %i.og = mul nsw i32 %i.of, %i.mm
  %i.oh = mul nsw i32 %i.oe, %i.mm
  %i.oi = mul nsw i32 %i.od, %i.mm
  %i.oj = mul nsw i32 %i.oc, %i.mm
  %i.ok = add nsw i32 %i.og, 16384
  %i.ol = add nsw i32 %i.oh, 16384
  %i.om = add nsw i32 %i.oi, 16384
  %i.on = add nsw i32 %i.oj, 16384
  %i.oo = lshr i32 %i.ok, 15
  %i.op = lshr i32 %i.ol, 15
  %i.oq = lshr i32 %i.om, 15
  %i.or = lshr i32 %i.on, 15
  %i.os = trunc i32 %i.oo to i16
  %i.ot = trunc i32 %i.op to i16
  %i.ou = trunc i32 %i.oq to i16
  %i.ov = trunc i32 %i.or to i16
  %i.ow = add i16 %i.os, %i.nv                    ; 2 uses
  %i.ox = add i16 %i.nz, %i.ot                    ; 2 uses
  %i.oy = add i16 %i.oa, %i.ou                    ; 2 uses
  %i.oz = add i16 %i.ob, %i.ov                    ; 2 uses
  %i.pa = trunc i32 %i.mo to i16
  %i.pb = sext i16 %i.ow to i32
  %i.pc = mul nsw i32 %i.pb, %i.mq
  %i.pd = add nsw i32 %i.pc, 16384
  %i.pe = lshr i32 %i.pd, 15
  %i.pf = trunc i32 %i.pe to i16
  %i.pg = sext i16 %i.ox to i32
  %i.ph = mul nsw i32 %i.pg, %i.mq
  %i.pi = add nsw i32 %i.ph, 16384
  %i.pj = lshr i32 %i.pi, 15
  %i.pk = trunc i32 %i.pj to i16
  %i.pl = sext i16 %i.oy to i32
  %i.pm = mul nsw i32 %i.pl, %i.mq
  %i.pn = add nsw i32 %i.pm, 16384
  %i.po = lshr i32 %i.pn, 15
  %i.pp = trunc i32 %i.po to i16
  %i.pq = sext i16 %i.oz to i32
  %i.pr = mul nsw i32 %i.pq, %i.mq
  %i.ps = add nsw i32 %i.pr, 16384
  %i.pt = lshr i32 %i.ps, 15
  %i.pu = trunc i32 %i.pt to i16
  %i.pv = trunc i32 %i.mw to i16
  %i.pw = add i16 %i.pu, %i.pa                    ; 2 uses
  %i.px = add i16 %i.ow, %i.pp                    ; 2 uses
  %i.py = add i16 %i.ox, %i.pk                    ; 2 uses
  %i.pz = add i16 %i.oy, %i.pf                    ; 2 uses
  %i.qa = add i16 %i.oz, %i.mu                    ; 2 uses
  %i.qb = sext i16 %i.pw to i32
  %i.qc = mul nsw i32 %i.qb, %i.my
  %i.qd = add nsw i32 %i.qc, 16384
  %i.qe = sext i16 %i.px to i32
  %i.qf = mul nsw i32 %i.qe, %i.my
  %i.qg = add nsw i32 %i.qf, 16384
  %i.qh = sext i16 %i.py to i32
  %i.qi = mul nsw i32 %i.qh, %i.my
  %i.qj = add nsw i32 %i.qi, 16384
  %i.qk = sext i16 %i.pz to i32
  %i.ql = mul nsw i32 %i.qk, %i.my
  %i.qm = add nsw i32 %i.ql, 16384
  %i.qn = sext i16 %i.qa to i32
  %i.qo = mul nsw i32 %i.qn, %i.my
  %i.qp = add nsw i32 %i.qo, 16384
  %i.qq = lshr i32 %i.qp, 15
  %i.qr = lshr i32 %i.qm, 15
  %i.qs = lshr i32 %i.qj, 15
  %i.qt = lshr i32 %i.qg, 15
  %i.qu = lshr i32 %i.qd, 15
  %i.qv = lshr i32 %i.na, 15
  %i.qw = trunc i32 %i.qq to i16
  %i.qx = trunc i32 %i.qr to i16
  %i.qy = trunc i32 %i.qs to i16
  %i.qz = trunc i32 %i.qt to i16
  %i.ra = trunc i32 %i.qu to i16
  %i.rb = trunc i32 %i.qv to i16
  %i.rc = add i16 %i.qw, %i.pv                    ; 2 uses
  %i.rd = add i16 %i.pw, %i.qx                    ; 2 uses
  %i.re = add i16 %i.px, %i.qy                    ; 2 uses
  %i.rf = add i16 %i.py, %i.qz                    ; 2 uses
  %i.rg = add i16 %i.pz, %i.ra                    ; 2 uses
  %i.rh = add i16 %i.qa, %i.rb                    ; 2 uses
  %i.ri = sext i16 %i.rc to i32
  %i.rj = mul nsw i32 %i.ri, %i.ne
  %i.rk = sext i16 %i.rd to i32
  %i.rl = mul nsw i32 %i.rk, %i.ne
  %i.rm = sext i16 %i.re to i32
  %i.rn = mul nsw i32 %i.rm, %i.ne
  %i.ro = sext i16 %i.rf to i32
  %i.rp = mul nsw i32 %i.ro, %i.ne
  %i.rq = sext i16 %i.rg to i32
  %i.rr = mul nsw i32 %i.rq, %i.ne
  %i.rs = add nsw i32 %i.rr, 16384
  %i.rt = add nsw i32 %i.rp, 16384
  %i.ru = add nsw i32 %i.rn, 16384
  %i.rv = add nsw i32 %i.rl, 16384
  %i.rw = add nsw i32 %i.rj, 16384
  %i.rx = add nsw i32 %i.nf, 16384
  %i.ry = lshr i32 %i.rs, 15
  %i.rz = lshr i32 %i.rt, 15
  %i.sa = lshr i32 %i.ru, 15
  %i.sb = lshr i32 %i.rv, 15
  %i.sc = lshr i32 %i.rw, 15
  %i.sd = lshr i32 %i.rx, 15
  %i.se = trunc i32 %i.ry to i16
  %i.sf = trunc i32 %i.rz to i16
  %i.sg = trunc i32 %i.sa to i16
  %i.sh = trunc i32 %i.sb to i16
  %i.si = trunc i32 %i.sc to i16
  %i.sj = trunc i32 %i.sd to i16
  %i.sk = add i16 %i.rc, %i.se
  %i.sl = add i16 %i.rd, %i.sf
  %i.sm = add i16 %i.re, %i.sg
  %i.sn = add i16 %i.rf, %i.sh
  %i.so = add i16 %i.rg, %i.si
  %i.sp = add i16 %i.rh, %i.sj
  %i.sq = sext i16 %i.rh to i32
  %i.sr = mul nsw i32 %i.sq, %i.ne
  %i.ss = add nsw i32 %i.sr, 16384
  %i.st = lshr i32 %i.ss, 15
  %i.su = add nuw nsw i32 %i.st, %i.nc
  %i.sv = sext i16 %i.sk to i32
  %i.sw = sext i16 %i.sl to i32
  %i.sx = sext i16 %i.sm to i32
  %i.sy = sext i16 %i.sn to i32
  %i.sz = sext i16 %i.so to i32
  %i.ta = sext i16 %i.sp to i32
  %i.tb = sub nsw i32 65536, %i.ng
  %sext146.i = shl i32 %i.su, 16
  %i.tc = ashr i32 %i.tb, 16
  %i.td = ashr exact i32 %sext146.i, 16
  %i.te = mul nsw i32 %i.sx, 31989
  %i.tf = mul nsw i32 %i.sy, 32182
  %i.tg = mul nsw i32 %i.sz, 32376
  %i.th = mul nsw i32 %i.ta, 32571
  %i.ti = mul nsw i32 %i.tc, 31228
  %i.tj = mul nsw i32 %i.td, 31416
  %i.tk = mul nsw i32 %i.sv, 31606
  %i.tl = mul nsw i32 %i.sw, 31797
  %i.tm = insertelement <4 x i32> poison, i32 %i.tl, i64 0
  %i.tn = insertelement <4 x i32> %i.tm, i32 %i.tk, i64 1
  %i.to = insertelement <4 x i32> %i.tn, i32 %i.tj, i64 2
  %i.tp = insertelement <4 x i32> %i.to, i32 %i.ti, i64 3
  %i.tq = lshr <4 x i32> %i.tp, splat (i32 15)    ; 5 uses
  %i.tr = lshr i32 %i.te, 15                      ; 2 uses
  %i.ts = lshr i32 %i.tf, 15                      ; 2 uses
  %i.tt = lshr i32 %i.tg, 15                      ; 2 uses
  %i.tu = lshr i32 %i.th, 15                      ; 2 uses
  %6 = trunc i32 %i.tu to i16                     ; 2 uses
  store i16 %6, ptr %i.bc, align 4, !tbaa !47
  %i.tv = trunc i32 %i.tt to i16                  ; 2 uses
  store i16 %i.tv, ptr %i.bd, align 2, !tbaa !47
  %i.tw = trunc i32 %i.ts to i16                  ; 2 uses
  store i16 %i.tw, ptr %i.be, align 8, !tbaa !47
  %i.tx = trunc i32 %i.tr to i16                  ; 2 uses
  store i16 %i.tx, ptr %i.bf, align 2, !tbaa !47
  %i.ty = bitcast <4 x i32> %i.tq to <8 x i16>
  %i.tz = extractelement <8 x i16> %i.ty, i64 0   ; 3 uses
  store i16 %i.tz, ptr %i.bg, align 4, !tbaa !47
  %i.ua = bitcast <4 x i32> %i.tq to <8 x i16>
  %i.ub = extractelement <8 x i16> %i.ua, i64 2   ; 3 uses
  store i16 %i.ub, ptr %4, align 2, !tbaa !47
  %7 = bitcast <4 x i32> %i.tq to <8 x i16>
  %8 = extractelement <8 x i16> %7, i64 4         ; 3 uses
  store i16 %8, ptr %5, align 16, !tbaa !47
  %i.uc = bitcast <4 x i32> %i.tq to <8 x i16>
  %i.ud = extractelement <8 x i16> %i.uc, i64 6   ; 3 uses
  store i16 %i.ud, ptr %i.bh, align 2, !tbaa !47
  store i32 %i.lh, ptr %i.bi, align 4, !tbaa !50
  %.not.i = icmp eq i32 %i.iz, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader34.i

.preheader34.i:                                   ; preds = %bb.g
  %i.ue = insertelement <8 x i32> poison, i32 %i.tu, i64 0
  %i.uf = insertelement <8 x i32> %i.ue, i32 %i.tt, i64 1
  %i.ug = insertelement <8 x i32> %i.uf, i32 %i.ts, i64 2
  %i.uh = insertelement <8 x i32> %i.ug, i32 %i.tr, i64 3
  %i.ui = shufflevector <4 x i32> %i.tq, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uj = shufflevector <8 x i32> %i.uh, <8 x i32> %i.ui, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.uk = shl <8 x i32> %i.uj, splat (i32 16)
  %i.ul = ashr exact <8 x i32> %i.uk, splat (i32 16)
  %i.um = shufflevector <8 x i32> %i.ul, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.un = load <8 x i32>, ptr %i.bj, align 4, !tbaa !30
  %i.uo = shufflevector <8 x i32> %i.un, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.up = mul nsw <16 x i32> %i.um, <i32 21846, i32 21846, i32 21846, i32 21846, i32 21846, i32 21846, i32 21846, i32 21846, i32 10923, i32 10923, i32 10923, i32 10923, i32 10923, i32 10923, i32 10923, i32 10923>
  %i.uq = mul nsw <16 x i32> %i.uo, <i32 10923, i32 10923, i32 10923, i32 10923, i32 10923, i32 10923, i32 10923, i32 10923, i32 21846, i32 21846, i32 21846, i32 21846, i32 21846, i32 21846, i32 21846, i32 21846>
  %i.ur = add nsw <16 x i32> %i.up, splat (i32 16384)
  %i.us = add <16 x i32> %i.ur, %i.uq
  %i.ut = lshr <16 x i32> %i.us, splat (i32 15)
  %i.uu = trunc <16 x i32> %i.ut to <16 x i16>
  store <16 x i16> %i.uu, ptr %i.bk, align 16, !tbaa !47
  %.pre = load i16, ptr %i.bc, align 4, !tbaa !47
  %.pre76 = load i16, ptr %i.bd, align 2, !tbaa !47
  %.pre77 = load i16, ptr %i.be, align 8, !tbaa !47
  %.pre78 = load i16, ptr %i.bf, align 2, !tbaa !47
  br label %truespeech_filters_merge.exit

.preheader.i:                                     ; preds = %bb.g
  %i.uv = load <8 x i32>, ptr %i.bj, align 4, !tbaa !30
  %i.uw = shufflevector <8 x i32> %i.uv, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ux = trunc <16 x i32> %i.uw to <16 x i16>
  store <16 x i16> %i.ux, ptr %i.bk, align 16, !tbaa !47
  br label %truespeech_filters_merge.exit

truespeech_filters_merge.exit:                    ; preds = %.preheader34.i, %.preheader.i
  %i.uy = phi i16 [ %.pre78, %.preheader34.i ], [ %i.tx, %.preheader.i ] ; 2 uses
  %i.uz = phi i16 [ %.pre77, %.preheader34.i ], [ %i.tw, %.preheader.i ] ; 2 uses
  %i.va = phi i16 [ %.pre76, %.preheader34.i ], [ %i.tv, %.preheader.i ] ; 2 uses
  %i.vb = phi i16 [ %.pre, %.preheader34.i ], [ %6, %.preheader.i ] ; 2 uses
  store i16 %i.vb, ptr %i.bm, align 16, !tbaa !47
  store i16 %i.vb, ptr %i.bn, align 16, !tbaa !47
  store i16 %i.va, ptr %i.bo, align 2, !tbaa !47
  store i16 %i.va, ptr %i.bp, align 2, !tbaa !47
  store i16 %i.uz, ptr %i.bq, align 4, !tbaa !47
  store i16 %i.uz, ptr %i.br, align 4, !tbaa !47
  store i16 %i.uy, ptr %i.bs, align 2, !tbaa !47
  store i16 %i.uy, ptr %i.bt, align 2, !tbaa !47
  store i16 %i.tz, ptr %i.bu, align 8, !tbaa !47
  store i16 %i.tz, ptr %i.bv, align 8, !tbaa !47
  store i16 %i.ub, ptr %i.bw, align 2, !tbaa !47
  store i16 %i.ub, ptr %i.bx, align 2, !tbaa !47
  store i16 %8, ptr %i.by, align 4, !tbaa !47
  store i16 %8, ptr %i.bz, align 4, !tbaa !47
  store i16 %i.ud, ptr %i.ca, align 2, !tbaa !47
  store i16 %i.ud, ptr %i.cb, align 2, !tbaa !47
  %scevgep = getelementptr i8, ptr %.073, i64 480
  %bound0 = icmp ult ptr %.073, %scevgep84
  %bound1 = icmp ult ptr %i.ck, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %bb.h

bb.h:                                             ; preds = %truespeech_filters_merge.exit, %truespeech_synth.exit
  %indvars.iv = phi i64 [ 0, %truespeech_filters_merge.exit ], [ %indvars.iv.next, %truespeech_synth.exit ] ; 7 uses
  %.170 = phi ptr [ %.073, %truespeech_filters_merge.exit ], [ %i.alk, %truespeech_synth.exit ] ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !30 ; 3 uses
  %i.ve = icmp eq i32 %i.vd, 127
  br i1 %i.ve, label %bb.i, label %vector.body101

vector.body101:                                   ; preds = %bb.h
  %wide.load103 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !30
  %wide.load104 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !30
  %i.vf = trunc <4 x i32> %wide.load103 to <4 x i16>
  %i.vg = trunc <4 x i32> %wide.load104 to <4 x i16>
  store <4 x i16> %i.vf, ptr %i.b, align 16, !tbaa !47
  store <4 x i16> %i.vg, ptr %i.cu, align 8, !tbaa !47
  %wide.load103.1 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !30
  %wide.load104.1 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !30
  %i.vh = trunc <4 x i32> %wide.load103.1 to <4 x i16>
  %i.vi = trunc <4 x i32> %wide.load104.1 to <4 x i16>
  store <4 x i16> %i.vh, ptr %i.cx, align 16, !tbaa !47
  store <4 x i16> %i.vi, ptr %i.cy, align 8, !tbaa !47
  %wide.load103.2 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !30
  %wide.load104.2 = load <4 x i32>, ptr %i.da, align 4, !tbaa !30
  %i.vj = trunc <4 x i32> %wide.load103.2 to <4 x i16>
  %i.vk = trunc <4 x i32> %wide.load104.2 to <4 x i16>
  store <4 x i16> %i.vj, ptr %i.db, align 16, !tbaa !47
  store <4 x i16> %i.vk, ptr %i.dc, align 8, !tbaa !47
  %wide.load103.3 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !30
  %wide.load104.3 = load <4 x i32>, ptr %i.de, align 4, !tbaa !30
  %i.vl = trunc <4 x i32> %wide.load103.3 to <4 x i16>
  %i.vm = trunc <4 x i32> %wide.load104.3 to <4 x i16>
  store <4 x i16> %i.vl, ptr %i.df, align 16, !tbaa !47
  store <4 x i16> %i.vm, ptr %i.dg, align 8, !tbaa !47
  %wide.load103.4 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !30
  %wide.load104.4 = load <4 x i32>, ptr %i.di, align 4, !tbaa !30
  %i.vn = trunc <4 x i32> %wide.load103.4 to <4 x i16>
  %i.vo = trunc <4 x i32> %wide.load104.4 to <4 x i16>
  store <4 x i16> %i.vn, ptr %i.dj, align 16, !tbaa !47
  store <4 x i16> %i.vo, ptr %i.dk, align 8, !tbaa !47
  %wide.load103.5 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !30
  %wide.load104.5 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !30
  %i.vp = trunc <4 x i32> %wide.load103.5 to <4 x i16>
  %i.vq = trunc <4 x i32> %wide.load104.5 to <4 x i16>
  store <4 x i16> %i.vp, ptr %i.dn, align 16, !tbaa !47
  store <4 x i16> %i.vq, ptr %i.do, align 8, !tbaa !47
  %wide.load103.6 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !30
  %wide.load104.6 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !30
  %i.vr = trunc <4 x i32> %wide.load103.6 to <4 x i16>
  %i.vs = trunc <4 x i32> %wide.load104.6 to <4 x i16>
  store <4 x i16> %i.vr, ptr %i.dr, align 16, !tbaa !47
  store <4 x i16> %i.vs, ptr %i.ds, align 8, !tbaa !47
  %wide.load103.7 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !30
  %wide.load104.7 = load <4 x i32>, ptr %i.du, align 4, !tbaa !30
  %i.vt = trunc <4 x i32> %wide.load103.7 to <4 x i16>
  %i.vu = trunc <4 x i32> %wide.load104.7 to <4 x i16>
  store <4 x i16> %i.vt, ptr %i.dv, align 16, !tbaa !47
  store <4 x i16> %i.vu, ptr %i.dw, align 8, !tbaa !47
  %wide.load103.8 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !30
  %wide.load104.8 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !30
  %i.vv = trunc <4 x i32> %wide.load103.8 to <4 x i16>
  %i.vw = trunc <4 x i32> %wide.load104.8 to <4 x i16>
  store <4 x i16> %i.vv, ptr %i.dz, align 16, !tbaa !47
  store <4 x i16> %i.vw, ptr %i.ea, align 8, !tbaa !47
  %wide.load103.9 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !30
  %wide.load104.9 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !30
  %i.vx = trunc <4 x i32> %wide.load103.9 to <4 x i16>
  %i.vy = trunc <4 x i32> %wide.load104.9 to <4 x i16>
  store <4 x i16> %i.vx, ptr %i.ed, align 16, !tbaa !47
  store <4 x i16> %i.vy, ptr %i.ee, align 8, !tbaa !47
  %wide.load103.10 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !30
  %wide.load104.10 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !30
  %i.vz = trunc <4 x i32> %wide.load103.10 to <4 x i16>
  %i.wa = trunc <4 x i32> %wide.load104.10 to <4 x i16>
  store <4 x i16> %i.vz, ptr %i.eh, align 16, !tbaa !47
  store <4 x i16> %i.wa, ptr %i.ei, align 8, !tbaa !47
  %wide.load103.11 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !30
  %wide.load104.11 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !30
  %i.wb = trunc <4 x i32> %wide.load103.11 to <4 x i16>
  %i.wc = trunc <4 x i32> %wide.load104.11 to <4 x i16>
  store <4 x i16> %i.wb, ptr %i.el, align 16, !tbaa !47
  store <4 x i16> %i.wc, ptr %i.em, align 8, !tbaa !47
  %wide.load103.12 = load <4 x i32>, ptr %i.en, align 4, !tbaa !30
  %wide.load104.12 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !30
  %i.wd = trunc <4 x i32> %wide.load103.12 to <4 x i16>
  %i.we = trunc <4 x i32> %wide.load104.12 to <4 x i16>
  store <4 x i16> %i.wd, ptr %i.ep, align 16, !tbaa !47
  store <4 x i16> %i.we, ptr %i.eq, align 8, !tbaa !47
  %wide.load103.13 = load <4 x i32>, ptr %i.er, align 4, !tbaa !30
  %wide.load104.13 = load <4 x i32>, ptr %i.es, align 4, !tbaa !30
  %i.wf = trunc <4 x i32> %wide.load103.13 to <4 x i16>
  %i.wg = trunc <4 x i32> %wide.load104.13 to <4 x i16>
  store <4 x i16> %i.wf, ptr %i.et, align 16, !tbaa !47
  store <4 x i16> %i.wg, ptr %i.eu, align 8, !tbaa !47
  %wide.load103.14 = load <4 x i32>, ptr %i.ev, align 4, !tbaa !30
  %wide.load104.14 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !30
  %i.wh = trunc <4 x i32> %wide.load103.14 to <4 x i16>
  %i.wi = trunc <4 x i32> %wide.load104.14 to <4 x i16>
  store <4 x i16> %i.wh, ptr %i.ex, align 16, !tbaa !47
  store <4 x i16> %i.wi, ptr %i.ey, align 8, !tbaa !47
  %wide.load103.15 = load <4 x i32>, ptr %i.ez, align 4, !tbaa !30
  %wide.load104.15 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !30
  %i.wj = trunc <4 x i32> %wide.load103.15 to <4 x i16>
  %i.wk = trunc <4 x i32> %wide.load104.15 to <4 x i16>
  store <4 x i16> %i.wj, ptr %i.fb, align 16, !tbaa !47
  store <4 x i16> %i.wk, ptr %i.fc, align 8, !tbaa !47
  %wide.load103.16 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !30
  %wide.load104.16 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !30
  %i.wl = trunc <4 x i32> %wide.load103.16 to <4 x i16>
  %i.wm = trunc <4 x i32> %wide.load104.16 to <4 x i16>
  store <4 x i16> %i.wl, ptr %i.ff, align 16, !tbaa !47
  store <4 x i16> %i.wm, ptr %i.fg, align 8, !tbaa !47
  %wide.load103.17 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !30
  %wide.load104.17 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !30
  %i.wn = trunc <4 x i32> %wide.load103.17 to <4 x i16>
  %i.wo = trunc <4 x i32> %wide.load104.17 to <4 x i16>
  store <4 x i16> %i.wn, ptr %i.fj, align 16, !tbaa !47
  store <4 x i16> %i.wo, ptr %i.fk, align 8, !tbaa !47
  %i.wp = load i32, ptr %i.fl, align 4, !tbaa !30
  %i.wq = trunc i32 %i.wp to i16
  store i16 %i.wq, ptr %i.fm, align 16, !tbaa !47
  %i.wr = load i32, ptr %i.fn, align 16, !tbaa !30
  %i.ws = trunc i32 %i.wr to i16
  store i16 %i.ws, ptr %i.fo, align 2, !tbaa !47
  %i.wt = sdiv i32 %i.vd, 25
  %i.wu = lshr i64 %indvars.iv, 1
  %i.wv = and i64 %i.wu, 2147483647
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.wv
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !30
  %i.wy = add nsw i32 %i.wx, %i.wt                ; 2 uses
  %i.wz = icmp slt i32 %i.wy, -18
  %i.xa = tail call i32 @llvm.smin.i32(i32 %i.wy, i32 127)
  %..i.neg.i = sub nsw i32 -18, %i.xa
  %.0.i.neg.i = select i1 %i.wz, i32 0, i32 %..i.neg.i
  %i.xb = sext i32 %.0.i.neg.i to i64             ; 3 uses
  %i.xc = getelementptr inbounds [2 x i8], ptr %i.cr, i64 %i.xb ; 16 uses
  %i.xd = srem i32 %i.vd, 25
  %i.xe = shl nsw i32 %i.xd, 1
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr inbounds [2 x i8], ptr @ts_order2_coeffs, i64 %i.xf ; 2 uses
  %i.xh = load i16, ptr %i.xg, align 4, !tbaa !47
  %i.xi = sext i16 %i.xh to i32                   ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xg, i64 2
  %i.xk = load i16, ptr %i.xj, align 2, !tbaa !47
  %i.xl = sext i16 %i.xk to i32                   ; 3 uses
  %i.xm = shl nsw i64 %i.xb, 1
  %i.xn = add nsw i64 %i.xm, 13
  %diff.check = icmp ult i64 %i.xn, 15
  %i.xo = shl nsw i64 %i.xb, 1
  %diff.check87 = icmp ugt i64 %i.xo, -16
  %conflict.rdx = or i1 %diff.check, %diff.check87
  br i1 %conflict.rdx, label %scalar.ph88.preheader, label %vector.body92

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ck, i8 0, i64 120, i1 false)
  br label %truespeech_apply_twopoint_filter.exit

vector.body92:                                    ; preds = %vector.body101
  %broadcast.splatinsert90 = insertelement <8 x i32> poison, i32 %i.xl, i64 0
  %broadcast.splat91 = shufflevector <8 x i32> %broadcast.splatinsert90, <8 x i32> poison, <8 x i32> zeroinitializer ; 7 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.xi, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.xp = getelementptr i8, ptr %i.xc, i64 112
  %wide.load94 = load <8 x i16>, ptr %i.xc, align 2, !tbaa !47
  %i.xq = sext <8 x i16> %wide.load94 to <8 x i32>
  %i.xr = mul nsw <8 x i32> %broadcast.splat, %i.xq
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xc, i64 2
  %wide.load95 = load <8 x i16>, ptr %i.xs, align 2, !tbaa !47
  %i.xt = sext <8 x i16> %wide.load95 to <8 x i32>
  %i.xu = mul nsw <8 x i32> %broadcast.splat91, %i.xt
  %i.xv = add nsw <8 x i32> %i.xr, splat (i32 8192)
  %i.xw = add <8 x i32> %i.xv, %i.xu
  %i.xx = lshr <8 x i32> %i.xw, splat (i32 14)
  %i.xy = trunc <8 x i32> %i.xx to <8 x i16>      ; 2 uses
  store <8 x i16> %i.xy, ptr %i.ck, align 8, !tbaa !47
  store <8 x i16> %i.xy, ptr %i.cs, align 4, !tbaa !47
  %next.gep.1 = getelementptr i8, ptr %i.xc, i64 16
  %wide.load94.1 = load <8 x i16>, ptr %next.gep.1, align 2, !tbaa !47
  %i.xz = sext <8 x i16> %wide.load94.1 to <8 x i32>
  %i.ya = mul nsw <8 x i32> %broadcast.splat, %i.xz
  %i.yb = getelementptr i8, ptr %i.xc, i64 18
  %wide.load95.1 = load <8 x i16>, ptr %i.yb, align 2, !tbaa !47
  %i.yc = sext <8 x i16> %wide.load95.1 to <8 x i32>
  %i.yd = mul nsw <8 x i32> %broadcast.splat91, %i.yc
  %i.ye = add nsw <8 x i32> %i.ya, splat (i32 8192)
  %i.yf = add <8 x i32> %i.ye, %i.yd
  %i.yg = lshr <8 x i32> %i.yf, splat (i32 14)
  %i.yh = trunc <8 x i32> %i.yg to <8 x i16>      ; 2 uses
  store <8 x i16> %i.yh, ptr %i.fp, align 8, !tbaa !47
  store <8 x i16> %i.yh, ptr %i.fq, align 4, !tbaa !47
  %next.gep.2 = getelementptr i8, ptr %i.xc, i64 32
  %wide.load94.2 = load <8 x i16>, ptr %next.gep.2, align 2, !tbaa !47
end_hunk_1
