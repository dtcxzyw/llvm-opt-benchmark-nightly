inline.NumInlined: 43
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 50
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FFCodecDefault = type { ptr, ptr }
%struct.AVChannelLayout = type { i32, i32, %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.FCBParam = type { i64, i32, i32, i32, [6 x i32], [6 x i32] }
%struct.HFParam = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"g723_1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"G.723.1\00", align 1
@defaults = internal constant [2 x %struct.FFCodecDefault] [%struct.FFCodecDefault { ptr @.str.3, ptr @.str.4 }, %struct.FFCodecDefault zeroinitializer], align 16
@.compoundliteral = internal constant [2 x %struct.AVChannelLayout] [%struct.AVChannelLayout { i32 1, i32 1, %union.anon.2 { i64 4 }, ptr null }, %struct.AVChannelLayout zeroinitializer], align 8
@.compoundliteral.2 = internal constant [2 x i32] [i32 1, i32 -1], align 4
@ff_g723_1_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86068, i32 1048578, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 6072, ptr null, ptr null, ptr @defaults, ptr @g723_1_encode_init, %union.anon { ptr @g723_1_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr @.compoundliteral, ptr null, ptr @.compoundliteral.2 } } }, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"6300\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Only 8000Hz sample rate supported\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Use bitrate 6300 instead of 5300.\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Bitrate 5300\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bitrate not supported, use 6300\0A\00", align 1
@dc_lsp = internal unnamed_addr constant [10 x i16] [i16 3131, i16 4721, i16 7690, i16 10806, i16 13872, i16 16495, i16 19752, i16 22260, i16 25484, i16 27718], align 16
@hamming_window = internal unnamed_addr constant [180 x i16] [i16 2621, i16 2631, i16 2659, i16 2705, i16 2770, i16 2853, i16 2955, i16 3074, i16 3212, i16 3367, i16 3541, i16 3731, i16 3939, i16 4164, i16 4405, i16 4663, i16 4937, i16 5226, i16 5531, i16 5851, i16 6186, i16 6534, i16 6897, i16 7273, i16 7661, i16 8062, i16 8475, i16 8899, i16 9334, i16 9780, i16 10235, i16 10699, i16 11172, i16 11653, i16 12141, i16 12636, i16 13138, i16 13645, i16 14157, i16 14673, i16 15193, i16 15716, i16 16242, i16 16769, i16 17298, i16 17827, i16 18356, i16 18884, i16 19411, i16 19935, i16 20457, i16 20975, i16 21489, i16 21999, i16 22503, i16 23002, i16 23494, i16 23978, i16 24455, i16 24924, i16 25384, i16 25834, i16 26274, i16 26704, i16 27122, i16 27529, i16 27924, i16 28306, i16 28675, i16 29031, i16 29373, i16 29700, i16 30012, i16 30310, i16 30592, i16 30857, i16 31107, i16 31340, i16 31557, i16 31756, i16 31938, i16 32102, i16 32249, i16 32377, i16 32488, i16 32580, i16 32654, i16 32710, i16 32747, i16 32766, i16 32766, i16 32747, i16 32710, i16 32654, i16 32580, i16 32488, i16 32377, i16 32249, i16 32102, i16 31938, i16 31756, i16 31557, i16 31340, i16 31107, i16 30857, i16 30592, i16 30310, i16 30012, i16 29700, i16 29373, i16 29031, i16 28675, i16 28306, i16 27924, i16 27529, i16 27122, i16 26704, i16 26274, i16 25834, i16 25384, i16 24924, i16 24455, i16 23978, i16 23494, i16 23002, i16 22503, i16 21999, i16 21489, i16 20975, i16 20457, i16 19935, i16 19411, i16 18884, i16 18356, i16 17827, i16 17298, i16 16769, i16 16242, i16 15716, i16 15193, i16 14673, i16 14157, i16 13645, i16 13138, i16 12636, i16 12141, i16 11653, i16 11172, i16 10699, i16 10235, i16 9780, i16 9334, i16 8899, i16 8475, i16 8062, i16 7661, i16 7273, i16 6897, i16 6534, i16 6186, i16 5851, i16 5531, i16 5226, i16 4937, i16 4663, i16 4405, i16 4164, i16 3939, i16 3731, i16 3541, i16 3367, i16 3212, i16 3074, i16 2955, i16 2853, i16 2770, i16 2705, i16 2659, i16 2631, i16 2621], align 16
@ff_g723_1_cos_tab = external local_unnamed_addr constant [513 x i16], align 16
@ff_g723_1_lsp_band0 = external constant [256 x [3 x i16]], align 16
@ff_g723_1_lsp_band1 = external constant [256 x [3 x i16]], align 16
@ff_g723_1_lsp_band2 = external constant [256 x [4 x i16]], align 16
@ff_g723_1_adaptive_cb_gain85 = external local_unnamed_addr constant [1700 x i16], align 16
@ff_g723_1_adaptive_cb_gain170 = external local_unnamed_addr constant [3400 x i16], align 16
@pulses = internal unnamed_addr constant [4 x i8] c"\06\05\06\05", align 1
@ff_g723_1_fixed_cb_gain = external local_unnamed_addr constant [24 x i16], align 16
@ff_g723_1_combinatorial_table = external local_unnamed_addr constant [6 x [30 x i32]], align 16
@.str.9 = private unnamed_addr constant [43 x i8] c"Internal error, put_bits buffer too small\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1163346256, 1) i32 @g723_1_encode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %.not = icmp eq i32 %i.d, 8000
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #9
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  switch i64 %i.f, label %bb.f [
    i64 6300, label %bb.d
    i64 5300, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i32 0, ptr %i.g, align 4, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 240, ptr %i.h, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, ptr noundef nonnull align 16 dereferenceable(20) @dc_lsp, i64 20, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #9
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #9
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ 0, %bb.d ], [ -1163346256, %bb.e ], [ -22, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @g723_1_encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.FCBParam, align 8           ; 10 uses
  %i.a = alloca [5 x [60 x i16]], align 16        ; 39 uses
  %i.b = alloca [80 x i32], align 16              ; 9 uses
  %i.c = alloca [15 x i32], align 16              ; 10 uses
  %i.d = alloca [250 x i16], align 16             ; 6 uses
  %i.e = alloca [4 x i16], align 2                ; 7 uses
  %i.f = alloca [4 x i16], align 2                ; 7 uses
  %i.g = alloca [4 x i16], align 8                ; 5 uses
  %i.h = alloca [12 x i32], align 16              ; 12 uses
  %i.i = alloca [10 x i16], align 16              ; 4 uses
  %i.j = alloca [180 x i16], align 16             ; 30 uses
  %i.k = alloca [44 x i16], align 16              ; 3 uses
  %i.l = alloca [40 x i16], align 16              ; 14 uses
  %i.m = alloca [40 x i16], align 16              ; 4 uses
  %i.n = alloca [10 x i16], align 16              ; 21 uses
  %i.o = alloca [80 x i16], align 16              ; 4 uses
  %i.p = alloca [385 x i16], align 16             ; 30 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 6 uses
  %5 = alloca [4 x %struct.HFParam], align 16     ; 12 uses
  %i.r = alloca [60 x i16], align 16              ; 47 uses
  %i.s = alloca [64 x i16], align 16              ; 18 uses
  %i.t = alloca [60 x i16], align 16              ; 7 uses
  %i.u = alloca [10 x i16], align 16              ; 5 uses
  %i.v = alloca [10 x i16], align 16              ; 4 uses
  %i.w = alloca [10 x i16], align 16              ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !9    ; 55 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.aa = load ptr, ptr %2, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !36
  %i.ad = sext i32 %i.ac to i64
  %i.ae = shl nsw i64 %i.ad, 1
  %i.af = tail call ptr @av_memdup(ptr noundef %i.aa, i64 noundef %i.ae) #9 ; 21 uses
  %i.ag = ptrtoaddr ptr %i.af to i64              ; 6 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %pack_bitstream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 2700 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 2704 ; 2 uses
  %.promoted.i = load i32, ptr %i.ai, align 4, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.aj = phi i32 [ %.promoted.i, %bb.b ], [ %i.ax, %bb.c ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.i ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !42 ; 2 uses
  %i.am = sext i16 %i.al to i32
  %i.an = load i16, ptr %i.ah, align 4, !tbaa !42
  %i.ao = sext i16 %i.an to i32
  %i.ap = sub nsw i32 %i.am, %i.ao
  %i.aq = shl nsw i32 %i.ap, 15
  %i.ar = ashr i32 %i.aj, 16
  %i.as = mul nsw i32 %i.ar, 65024
  %i.at = and i32 %i.aj, 65535
  %i.au = mul nuw nsw i32 %i.at, 32512
  %i.av = lshr i32 %i.au, 15
  %i.aw = add nsw i32 %i.av, %i.as
  %i.ax = add i32 %i.aw, %i.aq                    ; 3 uses
  store i16 %i.al, ptr %i.ah, align 4, !tbaa !42
  %.0.i.i = tail call i32 @llvm.sadd.sat.i32(i32 %i.ax, i32 32768)
  %i.ay = lshr i32 %.0.i.i, 16
  %i.az = trunc nuw i32 %i.ay to i16
  store i16 %i.az, ptr %i.ak, align 2, !tbaa !42
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 240
  br i1 %exitcond.not.i, label %highpass_filter.exit, label %bb.c, !llvm.loop !43

highpass_filter.exit:                             ; preds = %bb.c
  store i32 %i.ax, ptr %i.ai, align 4, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 2170 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.p, ptr noundef nonnull align 2 dereferenceable(240) %i.ba, i64 240, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(480) %i.bb, ptr noundef nonnull align 2 dereferenceable(480) %i.af, i64 480, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 352 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 354 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 356 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 358 ; 2 uses
  br label %vector.ph

vector.ph:                                        ; preds = %levinson_durbin.exit.i, %highpass_filter.exit
  %indvars.iv.i115 = phi i64 [ 0, %highpass_filter.exit ], [ %indvars.iv.next.i116, %levinson_durbin.exit.i ] ; 2 uses
  %.021.i = phi i32 [ 0, %highpass_filter.exit ], [ %i.ma, %levinson_durbin.exit.i ]
  %.01219.i = phi ptr [ %i.l, %highpass_filter.exit ], [ %i.ly, %levinson_durbin.exit.i ] ; 10 uses
  %.01318.i = phi ptr [ %i.k, %highpass_filter.exit ], [ %i.lz, %levinson_durbin.exit.i ] ; 15 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.i115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  %i.br = call i32 @ff_g723_1_scale_vector(ptr noundef nonnull %i.j, ptr noundef nonnull %i.bq, i32 noundef 180) #9 ; 0 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.bs, align 16, !tbaa !42
  %i.bt = sext <8 x i16> %wide.load to <8 x i32>
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr @hamming_window, i64 %index
  %wide.load332 = load <8 x i16>, ptr %i.bu, align 16, !tbaa !42
  %i.bv = sext <8 x i16> %wide.load332 to <8 x i32>
  %i.bw = mul nsw <8 x i32> %i.bv, %i.bt
  %i.bx = add nsw <8 x i32> %i.bw, splat (i32 16384)
  %i.by = lshr <8 x i32> %i.bx, splat (i32 15)
  %i.bz = trunc <8 x i32> %i.by to <8 x i16>
  store <8 x i16> %i.bz, ptr %i.bs, align 16, !tbaa !42
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, 176
  br i1 %i.ca, label %scalar.ph, label %vector.body, !llvm.loop !45

scalar.ph:                                        ; preds = %vector.body
  %i.cb = load i16, ptr %i.bm, align 16, !tbaa !42
  %i.cc = sext i16 %i.cb to i32
  %i.cd = mul nsw i32 %i.cc, 2705
  %i.ce = add nsw i32 %i.cd, 16384
  %i.cf = lshr i32 %i.ce, 15
  %i.cg = trunc i32 %i.cf to i16
  store i16 %i.cg, ptr %i.bm, align 16, !tbaa !42
  %i.ch = load i16, ptr %i.bn, align 2, !tbaa !42
  %i.ci = sext i16 %i.ch to i32
  %i.cj = mul nsw i32 %i.ci, 2659
  %i.ck = add nsw i32 %i.cj, 16384
  %i.cl = lshr i32 %i.ck, 15
  %i.cm = trunc i32 %i.cl to i16
  store i16 %i.cm, ptr %i.bn, align 2, !tbaa !42
  %i.cn = load i16, ptr %i.bo, align 4, !tbaa !42
  %i.co = sext i16 %i.cn to i32
  %i.cp = mul nsw i32 %i.co, 2631
  %i.cq = add nsw i32 %i.cp, 16384
  %i.cr = lshr i32 %i.cq, 15
  %i.cs = trunc i32 %i.cr to i16
  store i16 %i.cs, ptr %i.bo, align 4, !tbaa !42
  %i.ct = load i16, ptr %i.bp, align 2, !tbaa !42
  %i.cu = sext i16 %i.ct to i32
  %i.cv = mul nsw i32 %i.cu, 2621
  %i.cw = add nsw i32 %i.cv, 16384
  %i.cx = lshr i32 %i.cw, 15
  %i.cy = trunc i32 %i.cx to i16
  store i16 %i.cy, ptr %i.bp, align 2, !tbaa !42
  %i.cz = call i64 @ff_dot_product(ptr noundef nonnull %i.j, ptr noundef nonnull %i.j, i32 noundef 180) #9
  %i.da = trunc i64 %i.cz to i32                  ; 2 uses
  %i.db = ashr i32 %i.da, 10
  %i.dc = add nsw i32 %i.db, %i.da                ; 2 uses
  %i.dd = call i32 @ff_g723_1_normalize_bits(i32 noundef %i.dc, i32 noundef 31) #9 ; 11 uses
  %i.de = shl i32 %i.dc, %i.dd
  %.0.i27.i.i = call i32 @llvm.sadd.sat.i32(i32 %i.de, i32 32768)
  %i.df = lshr i32 %.0.i27.i.i, 16                ; 2 uses
  %i.dg = trunc nuw i32 %i.df to i16
  store i16 %i.dg, ptr %.01318.i, align 2, !tbaa !42
  %.not.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i.i, label %bb.d, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %scalar.ph
  %i.dh = call i64 @ff_dot_product(ptr noundef nonnull %i.j, ptr noundef nonnull %i.bc, i32 noundef 179) #9
  %i.di = trunc i64 %i.dh to i32
  %i.dj = shl i32 %i.di, %i.dd                    ; 2 uses
  %i.dk = ashr i32 %i.dj, 16
  %i.dl = mul nsw i32 %i.dk, 65498
  %i.dm = and i32 %i.dj, 65535
  %i.dn = mul nuw nsw i32 %i.dm, 32749
  %i.do = lshr i32 %i.dn, 15
  %i.dp = add nsw i32 %i.dl, 32768
  %.0.i35.i.i = add nsw i32 %i.dp, %i.do
  %i.dq = lshr i32 %.0.i35.i.i, 16
  %i.dr = trunc nuw i32 %i.dq to i16
  %i.ds = getelementptr inbounds nuw i8, ptr %.01318.i, i64 2
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !42
  %i.dt = call i64 @ff_dot_product(ptr noundef nonnull %i.j, ptr noundef nonnull %i.bd, i32 noundef 178) #9
  %i.du = trunc i64 %i.dt to i32
  %i.dv = shl i32 %i.du, %i.dd                    ; 2 uses
  %i.dw = ashr i32 %i.dv, 16
  %i.dx = mul nsw i32 %i.dw, 65390
  %i.dy = and i32 %i.dv, 65535
  %i.dz = mul nuw nsw i32 %i.dy, 32695
  %i.ea = lshr i32 %i.dz, 15
  %i.eb = add nsw i32 %i.dx, 32768
  %.0.i.136.i.i = add nsw i32 %i.eb, %i.ea
  %i.ec = lshr i32 %.0.i.136.i.i, 16
  %i.ed = trunc nuw i32 %i.ec to i16
  %i.ee = getelementptr inbounds nuw i8, ptr %.01318.i, i64 4
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !42
  %i.ef = call i64 @ff_dot_product(ptr noundef nonnull %i.j, ptr noundef nonnull %i.be, i32 noundef 177) #9
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = shl i32 %i.eg, %i.dd                    ; 2 uses
  %i.ei = ashr i32 %i.eh, 16
  %i.ej = mul nsw i32 %i.ei, 65208
  %i.ek = and i32 %i.eh, 65535
end_hunk_0
begin_hunk_1_@g723_1_encode_frame:bb.a
  %i.bsh = sext i16 %i.bsg to i32
  %i.bsi = mul nsw i32 %i.bsh, %i.bre
  %i.bsj = add nsw i32 %i.bsi, %i.bsf             ; 2 uses
  %i.bsk = sext i32 %i.bsj to i64
  %i.bsl = shl nsw i64 %i.bsk, 1                  ; 2 uses
  %i.bsm = add nsw i64 %i.bsl, 2147516416
  %.not.i172.2.i = icmp ult i64 %i.bsm, 4294967296
  %i.bsn = icmp sgt i32 %i.bsj, -16385
  %i.bso = select i1 %i.bsn, i32 2147418112, i32 -2147483648
  %i.bsp = trunc i64 %i.bsl to i32
  %i.bsq = add i32 %i.bsp, 32768
  %.0.i173.2.i = select i1 %.not.i172.2.i, i32 %i.bsq, i32 %i.bso
  %i.bsr = lshr i32 %.0.i173.2.i, 16
  %i.bss = trunc nuw i32 %i.bsr to i16
  store i16 %i.bss, ptr %i.bbu, align 2, !tbaa !42
  %i.bst = load i16, ptr %i.bby, align 2, !tbaa !42
  %i.bsu = sext i16 %i.bst to i32
  %i.bsv = shl nsw i32 %i.bsu, 15
  %i.bsw = load i16, ptr %i.bbz, align 4, !tbaa !42
  %i.bsx = sext i16 %i.bsw to i32
  %i.bsy = mul nsw i32 %i.bsx, %i.bre
  %i.bsz = add nsw i32 %i.bsy, %i.bsv             ; 2 uses
  %i.bta = sext i32 %i.bsz to i64
  %i.btb = shl nsw i64 %i.bta, 1                  ; 2 uses
  %i.btc = add nsw i64 %i.btb, 2147516416
  %.not.i172.2.i.1 = icmp ult i64 %i.btc, 4294967296
  %i.btd = icmp sgt i32 %i.bsz, -16385
  %i.bte = select i1 %i.btd, i32 2147418112, i32 -2147483648
  %i.btf = trunc i64 %i.btb to i32
  %i.btg = add i32 %i.btf, 32768
  %.0.i173.2.i.1 = select i1 %.not.i172.2.i.1, i32 %i.btg, i32 %i.bte
  %i.bth = lshr i32 %.0.i173.2.i.1, 16
  %i.bti = trunc nuw i32 %i.bth to i16
  store i16 %i.bti, ptr %i.bbx, align 4, !tbaa !42
  %i.btj = load i16, ptr %i.bcb, align 4, !tbaa !42
  %i.btk = sext i16 %i.btj to i32
  %i.btl = shl nsw i32 %i.btk, 15
  %i.btm = load i16, ptr %i.bcc, align 2, !tbaa !42
  %i.btn = sext i16 %i.btm to i32
  %i.bto = mul nsw i32 %i.btn, %i.bre
  %i.btp = add nsw i32 %i.bto, %i.btl             ; 2 uses
  %i.btq = sext i32 %i.btp to i64
  %i.btr = shl nsw i64 %i.btq, 1                  ; 2 uses
  %i.bts = add nsw i64 %i.btr, 2147516416
  %.not.i172.2.i.2 = icmp ult i64 %i.bts, 4294967296
  %i.btt = icmp sgt i32 %i.btp, -16385
  %i.btu = select i1 %i.btt, i32 2147418112, i32 -2147483648
  %i.btv = trunc i64 %i.btr to i32
  %i.btw = add i32 %i.btv, 32768
  %.0.i173.2.i.2 = select i1 %.not.i172.2.i.2, i32 %i.btw, i32 %i.btu
  %i.btx = lshr i32 %.0.i173.2.i.2, 16
  %i.bty = trunc nuw i32 %i.btx to i16
  store i16 %i.bty, ptr %i.bca, align 2, !tbaa !42
  %i.btz = load i16, ptr %i.s, align 16, !tbaa !42
  %i.bua = sext i16 %i.btz to i32                 ; 5 uses
  %i.bub = add nsw i32 %i.bua, 2
  %i.buc = lshr i32 %i.bub, 2
  %i.bud = trunc i32 %i.buc to i16
  store i16 %i.bud, ptr %i.a, align 16, !tbaa !42
  %broadcast.splatinsert421 = insertelement <8 x i32> poison, i32 %i.bua, i64 0
  %broadcast.splat422 = shufflevector <8 x i32> %broadcast.splatinsert421, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %scalar.ph429
  %index424 = phi i64 [ 0, %scalar.ph429 ], [ %index.next427, %vector.body423 ] ; 2 uses
  %i.bue = or disjoint i64 %index424, 1           ; 2 uses
  %i.buf = getelementptr [2 x i8], ptr %i.a, i64 %i.bue ; 2 uses
  %i.bug = getelementptr i8, ptr %i.buf, i64 118
  %wide.load425 = load <8 x i16>, ptr %i.bug, align 8, !tbaa !42
  %i.buh = sext <8 x i16> %wide.load425 to <8 x i32>
  %i.bui = shl nsw <8 x i32> %i.buh, splat (i32 15)
  %i.buj = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.bue
  %wide.load426 = load <8 x i16>, ptr %i.buj, align 2, !tbaa !42
  %i.buk = sext <8 x i16> %wide.load426 to <8 x i32>
  %i.bul = mul nsw <8 x i32> %broadcast.splat422, %i.buk
  %i.bum = add nsw <8 x i32> %i.bul, %i.bui       ; 2 uses
  %i.bun = sext <8 x i32> %i.bum to <8 x i64>
  %i.buo = shl nsw <8 x i64> %i.bun, splat (i64 1) ; 2 uses
  %i.bup = add nsw <8 x i64> %i.buo, splat (i64 2147516416)
  %i.buq = icmp ult <8 x i64> %i.bup, splat (i64 4294967296)
  %i.bur = icmp sgt <8 x i32> %i.bum, splat (i32 -16385)
  %i.bus = select <8 x i1> %i.bur, <8 x i32> splat (i32 2147418112), <8 x i32> splat (i32 -2147483648)
  %i.but = trunc <8 x i64> %i.buo to <8 x i32>
  %i.buu = add <8 x i32> %i.but, splat (i32 32768)
  %i.buv = select <8 x i1> %i.buq, <8 x i32> %i.buu, <8 x i32> %i.bus
  %i.buw = lshr <8 x i32> %i.buv, splat (i32 16)
  %i.bux = trunc nuw <8 x i32> %i.buw to <8 x i16>
  store <8 x i16> %i.bux, ptr %i.buf, align 2, !tbaa !42
  %index.next427 = add nuw i64 %index424, 8       ; 2 uses
  %i.buy = icmp eq i64 %index.next427, 56
  br i1 %i.buy, label %scalar.ph419, label %vector.body423, !llvm.loop !91

scalar.ph419:                                     ; preds = %vector.body423
  %i.buz = load i16, ptr %i.bbb, align 8, !tbaa !42
  %i.bva = sext i16 %i.buz to i32
  %i.bvb = shl nsw i32 %i.bva, 15
  %i.bvc = load i16, ptr %i.bcd, align 2, !tbaa !42
  %i.bvd = sext i16 %i.bvc to i32
  %i.bve = mul nsw i32 %i.bvd, %i.bua
  %i.bvf = add nsw i32 %i.bve, %i.bvb             ; 2 uses
  %i.bvg = sext i32 %i.bvf to i64
  %i.bvh = shl nsw i64 %i.bvg, 1                  ; 2 uses
  %i.bvi = add nsw i64 %i.bvh, 2147516416
  %.not.i172.3.i = icmp ult i64 %i.bvi, 4294967296
  %i.bvj = icmp sgt i32 %i.bvf, -16385
  %i.bvk = select i1 %i.bvj, i32 2147418112, i32 -2147483648
  %i.bvl = trunc i64 %i.bvh to i32
  %i.bvm = add i32 %i.bvl, 32768
  %.0.i173.3.i = select i1 %.not.i172.3.i, i32 %i.bvm, i32 %i.bvk
  %i.bvn = lshr i32 %.0.i173.3.i, 16
  %i.bvo = trunc nuw i32 %i.bvn to i16
  store i16 %i.bvo, ptr %i.bba, align 2, !tbaa !42
  %i.bvp = load i16, ptr %i.bcf, align 2, !tbaa !42
  %i.bvq = sext i16 %i.bvp to i32
  %i.bvr = shl nsw i32 %i.bvq, 15
  %i.bvs = load i16, ptr %i.bcg, align 4, !tbaa !42
  %i.bvt = sext i16 %i.bvs to i32
  %i.bvu = mul nsw i32 %i.bvt, %i.bua
  %i.bvv = add nsw i32 %i.bvu, %i.bvr             ; 2 uses
  %i.bvw = sext i32 %i.bvv to i64
  %i.bvx = shl nsw i64 %i.bvw, 1                  ; 2 uses
  %i.bvy = add nsw i64 %i.bvx, 2147516416
  %.not.i172.3.i.1 = icmp ult i64 %i.bvy, 4294967296
  %i.bvz = icmp sgt i32 %i.bvv, -16385
  %i.bwa = select i1 %i.bvz, i32 2147418112, i32 -2147483648
  %i.bwb = trunc i64 %i.bvx to i32
  %i.bwc = add i32 %i.bwb, 32768
  %.0.i173.3.i.1 = select i1 %.not.i172.3.i.1, i32 %i.bwc, i32 %i.bwa
  %i.bwd = lshr i32 %.0.i173.3.i.1, 16
  %i.bwe = trunc nuw i32 %i.bwd to i16
  store i16 %i.bwe, ptr %i.bce, align 4, !tbaa !42
  %i.bwf = load i16, ptr %i.bci, align 4, !tbaa !42
  %i.bwg = sext i16 %i.bwf to i32
  %i.bwh = shl nsw i32 %i.bwg, 15
  %i.bwi = load i16, ptr %i.bcj, align 2, !tbaa !42
  %i.bwj = sext i16 %i.bwi to i32
  %i.bwk = mul nsw i32 %i.bwj, %i.bua
  %i.bwl = add nsw i32 %i.bwk, %i.bwh             ; 2 uses
  %i.bwm = sext i32 %i.bwl to i64
  %i.bwn = shl nsw i64 %i.bwm, 1                  ; 2 uses
  %i.bwo = add nsw i64 %i.bwn, 2147516416
  %.not.i172.3.i.2 = icmp ult i64 %i.bwo, 4294967296
  %i.bwp = icmp sgt i32 %i.bwl, -16385
  %i.bwq = select i1 %i.bwp, i32 2147418112, i32 -2147483648
  %i.bwr = trunc i64 %i.bwn to i32
  %i.bws = add i32 %i.bwr, 32768
  %.0.i173.3.i.2 = select i1 %.not.i172.3.i.2, i32 %i.bws, i32 %i.bwq
  %i.bwt = lshr i32 %.0.i173.3.i.2, 16
  %i.bwu = trunc nuw i32 %i.bwt to i16
  store i16 %i.bwu, ptr %i.bch, align 2, !tbaa !42
  %i.bwv = call i64 @ff_dot_product(ptr noundef nonnull %.0106234, ptr noundef nonnull %i.a, i32 noundef 60) #9 ; 2 uses
  %i.bww = shl nsw i64 %i.bwv, 1                  ; 2 uses
  %i.bwx = add i64 %i.bww, 2147483648
  %.not.i170.i = icmp ult i64 %i.bwx, 4294967296
  %i.bwy = icmp sgt i64 %i.bwv, -1
  %i.bwz = select i1 %i.bwy, i32 2147483647, i32 -2147483648
  %i.bxa = trunc i64 %i.bww to i32
  %.0.i171.i = select i1 %.not.i170.i, i32 %i.bxa, i32 %i.bwz
  %i.bxb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv267.i ; 5 uses
  store i32 %.0.i171.i, ptr %i.bxb, align 16, !tbaa !41
  %i.bxc = call i64 @ff_dot_product(ptr noundef nonnull %.0106234, ptr noundef nonnull %i.bah, i32 noundef 60) #9 ; 2 uses
  %i.bxd = shl nsw i64 %i.bxc, 1                  ; 2 uses
  %i.bxe = add i64 %i.bxd, 2147483648
  %.not.i170.1.i = icmp ult i64 %i.bxe, 4294967296
  %i.bxf = icmp sgt i64 %i.bxc, -1
  %i.bxg = select i1 %i.bxf, i32 2147483647, i32 -2147483648
  %i.bxh = trunc i64 %i.bxd to i32
  %.0.i171.1.i = select i1 %.not.i170.1.i, i32 %i.bxh, i32 %i.bxg
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bxb, i64 4
  store i32 %.0.i171.1.i, ptr %i.bxi, align 4, !tbaa !41
  %i.bxj = call i64 @ff_dot_product(ptr noundef nonnull %.0106234, ptr noundef nonnull %i.baf, i32 noundef 60) #9 ; 2 uses
  %i.bxk = shl nsw i64 %i.bxj, 1                  ; 2 uses
  %i.bxl = add i64 %i.bxk, 2147483648
  %.not.i170.2.i = icmp ult i64 %i.bxl, 4294967296
  %i.bxm = icmp sgt i64 %i.bxj, -1
  %i.bxn = select i1 %i.bxm, i32 2147483647, i32 -2147483648
  %i.bxo = trunc i64 %i.bxk to i32
  %.0.i171.2.i = select i1 %.not.i170.2.i, i32 %i.bxo, i32 %i.bxn
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bxb, i64 8
  store i32 %.0.i171.2.i, ptr %i.bxp, align 8, !tbaa !41
  %i.bxq = call i64 @ff_dot_product(ptr noundef nonnull %.0106234, ptr noundef nonnull %i.bad, i32 noundef 60) #9 ; 2 uses
  %i.bxr = shl nsw i64 %i.bxq, 1                  ; 2 uses
  %i.bxs = add i64 %i.bxr, 2147483648
  %.not.i170.3.i = icmp ult i64 %i.bxs, 4294967296
  %i.bxt = icmp sgt i64 %i.bxq, -1
  %i.bxu = select i1 %i.bxt, i32 2147483647, i32 -2147483648
  %i.bxv = trunc i64 %i.bxr to i32
  %.0.i171.3.i = select i1 %.not.i170.3.i, i32 %i.bxv, i32 %i.bxu
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bxb, i64 12
  store i32 %.0.i171.3.i, ptr %i.bxw, align 4, !tbaa !41
  %i.bxx = call i64 @ff_dot_product(ptr noundef nonnull %.0106234, ptr noundef nonnull %i.bab, i32 noundef 60) #9 ; 2 uses
  %i.bxy = shl nsw i64 %i.bxx, 1                  ; 2 uses
  %i.bxz = add i64 %i.bxy, 2147483648
  %.not.i170.4.i = icmp ult i64 %i.bxz, 4294967296
  %i.bya = icmp sgt i64 %i.bxx, -1
  %i.byb = select i1 %i.bya, i32 2147483647, i32 -2147483648
  %i.byc = trunc i64 %i.bxy to i32
  %.0.i171.4.i = select i1 %.not.i170.4.i, i32 %i.byc, i32 %i.byb
  %i.byd = getelementptr inbounds nuw i8, ptr %i.bxb, i64 16
  store i32 %.0.i171.4.i, ptr %i.byd, align 16, !tbaa !41
  %i.bye = shl nuw nsw i64 %indvars.iv267.i, 32
  %sext.i172 = add nuw nsw i64 %i.bye, 21474836480
  %i.byf = call i32 @ff_g723_1_dot_product(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i32 noundef 60) #9
  %i.byg = lshr exact i64 %sext.i172, 30
  %i.byh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.byg ; 15 uses
  store i32 %i.byf, ptr %i.byh, align 4, !tbaa !41
  %i.byi = call i32 @ff_g723_1_dot_product(ptr noundef nonnull %i.bah, ptr noundef nonnull %i.bah, i32 noundef 60) #9
  %i.byj = getelementptr i8, ptr %i.byh, i64 4
  store i32 %i.byi, ptr %i.byj, align 8, !tbaa !41
  %i.byk = call i32 @ff_g723_1_dot_product(ptr noundef nonnull %i.baf, ptr noundef nonnull %i.baf, i32 noundef 60) #9
  %i.byl = getelementptr i8, ptr %i.byh, i64 8
  store i32 %i.byk, ptr %i.byl, align 4, !tbaa !41
  %i.bym = call i32 @ff_g723_1_dot_product(ptr noundef nonnull %i.bad, ptr noundef nonnull %i.bad, i32 noundef 60) #9
  %i.byn = getelementptr i8, ptr %i.byh, i64 12
  store i32 %i.bym, ptr %i.byn, align 16, !tbaa !41
  %i.byo = call i32 @ff_g723_1_dot_product(ptr noundef nonnull %i.bab, ptr noundef nonnull %i.bab, i32 noundef 60) #9
  %i.byp = getelementptr i8, ptr %i.byh, i64 16
  store i32 %i.byo, ptr %i.byp, align 4, !tbaa !41
  %i.byq = call i64 @ff_dot_product(ptr noundef nonnull %i.bah, ptr noundef nonnull %i.a, i32 noundef 60) #9 ; 2 uses
  %i.byr = shl nsw i64 %i.byq, 2                  ; 2 uses
  %i.bys = add i64 %i.byr, 2147483648
  %.not.i168.i = icmp ult i64 %i.bys, 4294967296
  %i.byt = icmp sgt i64 %i.byq, -1
  %i.byu = select i1 %i.byt, i32 2147483647, i32 -2147483648
  %i.byv = trunc i64 %i.byr to i32
  %.0.i169.i = select i1 %.not.i168.i, i32 %i.byv, i32 %i.byu
  %i.byw = getelementptr i8, ptr %i.byh, i64 20
  store i32 %.0.i169.i, ptr %i.byw, align 8, !tbaa !41
  %i.byx = call i64 @ff_dot_product(ptr noundef nonnull %i.baf, ptr noundef nonnull %i.a, i32 noundef 60) #9 ; 2 uses
  %i.byy = shl nsw i64 %i.byx, 2                  ; 2 uses
  %i.byz = add i64 %i.byy, 2147483648
  %.not.i168.1.i = icmp ult i64 %i.byz, 4294967296
  %i.bza = icmp sgt i64 %i.byx, -1
  %i.bzb = select i1 %i.bza, i32 2147483647, i32 -2147483648
  %i.bzc = trunc i64 %i.byy to i32
  %.0.i169.1.i = select i1 %.not.i168.1.i, i32 %i.bzc, i32 %i.bzb
  %i.bzd = getelementptr i8, ptr %i.byh, i64 24
  store i32 %.0.i169.1.i, ptr %i.bzd, align 4, !tbaa !41
  %i.bze = call i64 @ff_dot_product(ptr noundef nonnull %i.baf, ptr noundef nonnull %i.bah, i32 noundef 60) #9 ; 2 uses
  %i.bzf = shl nsw i64 %i.bze, 2                  ; 2 uses
  %i.bzg = add i64 %i.bzf, 2147483648
  %.not.i168.1.1.i = icmp ult i64 %i.bzg, 4294967296
  %i.bzh = icmp sgt i64 %i.bze, -1
  %i.bzi = select i1 %i.bzh, i32 2147483647, i32 -2147483648
  %i.bzj = trunc i64 %i.bzf to i32
  %.0.i169.1.1.i = select i1 %.not.i168.1.1.i, i32 %i.bzj, i32 %i.bzi
  %i.bzk = getelementptr i8, ptr %i.byh, i64 28
  store i32 %.0.i169.1.1.i, ptr %i.bzk, align 16, !tbaa !41
  %i.bzl = call i64 @ff_dot_product(ptr noundef nonnull %i.bad, ptr noundef nonnull %i.a, i32 noundef 60) #9 ; 2 uses
  %i.bzm = shl nsw i64 %i.bzl, 2                  ; 2 uses
  %i.bzn = add i64 %i.bzm, 2147483648
  %.not.i168.2.i = icmp ult i64 %i.bzn, 4294967296
  %i.bzo = icmp sgt i64 %i.bzl, -1
  %i.bzp = select i1 %i.bzo, i32 2147483647, i32 -2147483648
  %i.bzq = trunc i64 %i.bzm to i32
  %.0.i169.2.i = select i1 %.not.i168.2.i, i32 %i.bzq, i32 %i.bzp
  %i.bzr = getelementptr i8, ptr %i.byh, i64 32
  store i32 %.0.i169.2.i, ptr %i.bzr, align 4, !tbaa !41
  %i.bzs = call i64 @ff_dot_product(ptr noundef nonnull %i.bad, ptr noundef nonnull %i.bah, i32 noundef 60) #9 ; 2 uses
  %i.bzt = shl nsw i64 %i.bzs, 2                  ; 2 uses
  %i.bzu = add i64 %i.bzt, 2147483648
  %.not.i168.2.1.i = icmp ult i64 %i.bzu, 4294967296
  %i.bzv = icmp sgt i64 %i.bzs, -1
  %i.bzw = select i1 %i.bzv, i32 2147483647, i32 -2147483648
  %i.bzx = trunc i64 %i.bzt to i32
  %.0.i169.2.1.i = select i1 %.not.i168.2.1.i, i32 %i.bzx, i32 %i.bzw
  %i.bzy = getelementptr i8, ptr %i.byh, i64 36
  store i32 %.0.i169.2.1.i, ptr %i.bzy, align 8, !tbaa !41
  %i.bzz = call i64 @ff_dot_product(ptr noundef nonnull %i.bad, ptr noundef nonnull %i.baf, i32 noundef 60) #9 ; 2 uses
  %i.caa = shl nsw i64 %i.bzz, 2                  ; 2 uses
  %i.cab = add i64 %i.caa, 2147483648
  %.not.i168.2.2.i = icmp ult i64 %i.cab, 4294967296
  %i.cac = icmp sgt i64 %i.bzz, -1
  %i.cad = select i1 %i.cac, i32 2147483647, i32 -2147483648
  %i.cae = trunc i64 %i.caa to i32
  %.0.i169.2.2.i = select i1 %.not.i168.2.2.i, i32 %i.cae, i32 %i.cad
  %i.caf = getelementptr i8, ptr %i.byh, i64 40
  store i32 %.0.i169.2.2.i, ptr %i.caf, align 4, !tbaa !41
  %i.cag = call i64 @ff_dot_product(ptr noundef nonnull %i.bab, ptr noundef nonnull %i.a, i32 noundef 60) #9 ; 2 uses
  %i.cah = shl nsw i64 %i.cag, 2                  ; 2 uses
  %i.cai = add i64 %i.cah, 2147483648
  %.not.i168.3.i = icmp ult i64 %i.cai, 4294967296
  %i.caj = icmp sgt i64 %i.cag, -1
  %i.cak = select i1 %i.caj, i32 2147483647, i32 -2147483648
  %i.cal = trunc i64 %i.cah to i32
  %.0.i169.3.i = select i1 %.not.i168.3.i, i32 %i.cal, i32 %i.cak
  %i.cam = getelementptr i8, ptr %i.byh, i64 44
  store i32 %.0.i169.3.i, ptr %i.cam, align 16, !tbaa !41
  %i.can = call i64 @ff_dot_product(ptr noundef nonnull %i.bab, ptr noundef nonnull %i.bah, i32 noundef 60) #9 ; 2 uses
  %i.cao = shl nsw i64 %i.can, 2                  ; 2 uses
  %i.cap = add i64 %i.cao, 2147483648
  %.not.i168.3.1.i = icmp ult i64 %i.cap, 4294967296
  %i.caq = icmp sgt i64 %i.can, -1
  %i.car = select i1 %i.caq, i32 2147483647, i32 -2147483648
  %i.cas = trunc i64 %i.cao to i32
  %.0.i169.3.1.i = select i1 %.not.i168.3.1.i, i32 %i.cas, i32 %i.car
  %i.cat = getelementptr i8, ptr %i.byh, i64 48
  store i32 %.0.i169.3.1.i, ptr %i.cat, align 4, !tbaa !41
  %i.cau = call i64 @ff_dot_product(ptr noundef nonnull %i.bab, ptr noundef nonnull %i.baf, i32 noundef 60) #9 ; 2 uses
  %i.cav = shl nsw i64 %i.cau, 2                  ; 2 uses
  %i.caw = add i64 %i.cav, 2147483648
  %.not.i168.3.2.i = icmp ult i64 %i.caw, 4294967296
  %i.cax = icmp sgt i64 %i.cau, -1
  %i.cay = select i1 %i.cax, i32 2147483647, i32 -2147483648
  %i.caz = trunc i64 %i.cav to i32
  %.0.i169.3.2.i = select i1 %.not.i168.3.2.i, i32 %i.caz, i32 %i.cay
  %i.cba = getelementptr i8, ptr %i.byh, i64 52
  store i32 %.0.i169.3.2.i, ptr %i.cba, align 8, !tbaa !41
  %i.cbb = call i64 @ff_dot_product(ptr noundef nonnull %i.bab, ptr noundef nonnull %i.bad, i32 noundef 60) #9 ; 2 uses
  %i.cbc = shl nsw i64 %i.cbb, 2                  ; 2 uses
  %i.cbd = add i64 %i.cbc, 2147483648
  %.not.i168.3.3.i = icmp ult i64 %i.cbd, 4294967296
  %i.cbe = icmp sgt i64 %i.cbb, -1
  %i.cbf = select i1 %i.cbe, i32 2147483647, i32 -2147483648
  %i.cbg = trunc i64 %i.cbc to i32
  %.0.i169.3.3.i = select i1 %.not.i168.3.3.i, i32 %i.cbg, i32 %i.cbf
  %i.cbh = getelementptr i8, ptr %i.byh, i64 56
  store i32 %.0.i169.3.3.i, ptr %i.cbh, align 4, !tbaa !41
  %indvars.iv.next268.i = add nuw nsw i64 %indvars.iv267.i, 20
  %i.cbi = add nuw nsw i32 %.0132198.i, 1         ; 2 uses
  %exitcond270.not.i = icmp eq i32 %i.cbi, %i.bio
  br i1 %exitcond270.not.i, label %.preheader177.i, label %bb.bj, !llvm.loop !92

scalar.ph408:                                     ; preds = %middle.block417, %scalar.ph408
  %indvars.iv271.i = phi i64 [ %indvars.iv.next272.i, %scalar.ph408 ], [ %n.vec410, %middle.block417 ] ; 2 uses
  %.0121200.i = phi i32 [ %spec.select.i, %scalar.ph408 ], [ %i.bjb, %middle.block417 ]
  %i.cbj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv271.i
  %i.cbk = load i32, ptr %i.cbj, align 4, !tbaa !41
  %i.cbl = call i32 @llvm.abs.i32(i32 %i.cbk, i1 true)
  %spec.select.i = call i32 @llvm.umax.i32(i32 %.0121200.i, i32 %i.cbl) ; 2 uses
  %indvars.iv.next272.i = add nuw nsw i64 %indvars.iv271.i, 1 ; 2 uses
  %exitcond274.not.i = icmp eq i64 %indvars.iv.next272.i, %wide.trip.count.i
  br i1 %exitcond274.not.i, label %.loopexit, label %scalar.ph408, !llvm.loop !93

.loopexit:                                        ; preds = %scalar.ph408, %middle.block417
  %spec.select.i.lcssa = phi i32 [ %i.bjb, %middle.block417 ], [ %spec.select.i, %scalar.ph408 ]
  %i.cbm = call i32 @ff_g723_1_normalize_bits(i32 noundef %spec.select.i.lcssa, i32 noundef 31) #9 ; 2 uses
  %n.vec = and i64 %wide.trip.count.i, 248        ; 3 uses
  %broadcast.splatinsert400 = insertelement <4 x i32> poison, i32 %i.cbm, i64 0
  %broadcast.splat401 = shufflevector <4 x i32> %broadcast.splatinsert400, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %.loopexit
  %index403 = phi i64 [ 0, %.loopexit ], [ %index.next406, %vector.body402 ] ; 2 uses
  %i.cbn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index403 ; 3 uses
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cbn, i64 16 ; 2 uses
  %wide.load404 = load <4 x i32>, ptr %i.cbn, align 16, !tbaa !41
  %wide.load405 = load <4 x i32>, ptr %i.cbo, align 16, !tbaa !41
  %i.cbp = shl <4 x i32> %wide.load404, %broadcast.splat401
  %i.cbq = shl <4 x i32> %wide.load405, %broadcast.splat401
  %i.cbr = call <4 x i32> @llvm.sadd.sat.v4i32(<4 x i32> %i.cbp, <4 x i32> splat (i32 32768))
  %i.cbs = call <4 x i32> @llvm.sadd.sat.v4i32(<4 x i32> %i.cbq, <4 x i32> splat (i32 32768))
  %i.cbt = ashr <4 x i32> %i.cbr, splat (i32 16)
  %i.cbu = ashr <4 x i32> %i.cbs, splat (i32 16)
  store <4 x i32> %i.cbt, ptr %i.cbn, align 16, !tbaa !41
  store <4 x i32> %i.cbu, ptr %i.cbo, align 16, !tbaa !41
  %index.next406 = add nuw i64 %index403, 8       ; 2 uses
  %i.cbv = icmp eq i64 %index.next406, %n.vec
  br i1 %i.cbv, label %middle.block407, label %vector.body402, !llvm.loop !94

middle.block407:                                  ; preds = %vector.body402
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader176.i, label %scalar.ph398

.preheader176.i:                                  ; preds = %scalar.ph398, %middle.block407
  %i.cbw = icmp sgt i32 %.0145.i, 57
  %i.cbx = sext i32 %.0145.i to i64
  %wide.trip.count291.i = zext nneg i32 %i.bio to i64
  %invariant.op.i = sub nsw i64 58, %i.cbx
  br label %.preheader.lr.ph.i

scalar.ph398:                                     ; preds = %middle.block407, %scalar.ph398
  %indvars.iv275.i = phi i64 [ %indvars.iv.next276.i, %scalar.ph398 ], [ %n.vec, %middle.block407 ] ; 2 uses
  %i.cby = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv275.i ; 2 uses
  %i.cbz = load i32, ptr %i.cby, align 4, !tbaa !41
  %i.cca = shl i32 %i.cbz, %i.cbm
  %.0.i167.i = call i32 @llvm.sadd.sat.i32(i32 %i.cca, i32 32768)
  %i.ccb = ashr i32 %.0.i167.i, 16
  store i32 %i.ccb, ptr %i.cby, align 4, !tbaa !41
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 1 ; 2 uses
  %exitcond279.not.i = icmp eq i64 %indvars.iv.next276.i, %wide.trip.count.i
  br i1 %exitcond279.not.i, label %.preheader176.i, label %scalar.ph398, !llvm.loop !95

.preheader.lr.ph.i:                               ; preds = %._crit_edge.i, %.preheader176.i
  %indvars.iv288.i = phi i64 [ 0, %.preheader176.i ], [ %indvars.iv.next289.i, %._crit_edge.i ] ; 4 uses
  %.1122216.i = phi i32 [ 0, %.preheader176.i ], [ %.3.i, %._crit_edge.i ]
  %.0136214.i = phi i32 [ 85, %.preheader176.i ], [ %.1137.i, %._crit_edge.i ]
  %.0143213.i = phi ptr [ @ff_g723_1_adaptive_cb_gain85, %.preheader176.i ], [ %.1144.i, %._crit_edge.i ]
  %.0147212.i = phi i32 [ 0, %.preheader176.i ], [ %.2149.i, %._crit_edge.i ]
  %.0150211.i = phi i32 [ 1, %.preheader176.i ], [ %.2152.i, %._crit_edge.i ]
  %i.ccc = icmp sgt i64 %indvars.iv288.i, %invariant.op.i
  %or.cond165.i = select i1 %i.bip, i1 %i.cbw, i1 %i.ccc ; 2 uses
  %.1144.i = select i1 %or.cond165.i, ptr @ff_g723_1_adaptive_cb_gain170, ptr %.0143213.i ; 2 uses
  %.1137.i = select i1 %or.cond165.i, i32 170, i32 %.0136214.i ; 2 uses
  %.idx193 = mul nuw nsw i64 %indvars.iv288.i, 80
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx193 ; 2 uses
  %i.cce = load <16 x i32>, ptr %i.ccd, align 16, !tbaa !41
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.ccd, i64 64
  %i.ccg = load <4 x i32>, ptr %i.ccf, align 16, !tbaa !41
  %i.cch = trunc nuw nsw i64 %indvars.iv288.i to i32
  br label %.preheader.i173

.preheader.i173:                                  ; preds = %.preheader.i173, %.preheader.lr.ph.i
  %indvars.iv284.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next285.i, %.preheader.i173 ] ; 2 uses
  %.2208.i = phi i32 [ %.1122216.i, %.preheader.lr.ph.i ], [ %.3.i, %.preheader.i173 ] ; 2 uses
  %.5206.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.ccz, %.preheader.i173 ] ; 2 uses
  %.1148205.i = phi i32 [ %.0147212.i, %.preheader.lr.ph.i ], [ %.2149.i, %.preheader.i173 ]
  %.1151204.i = phi i32 [ %.0150211.i, %.preheader.lr.ph.i ], [ %.2152.i, %.preheader.i173 ]
  %i.cci = getelementptr inbounds nuw [2 x i8], ptr %.1144.i, i64 %indvars.iv284.i ; 2 uses
  %i.ccj = load <16 x i16>, ptr %i.cci, align 8, !tbaa !42
  %i.cck = sext <16 x i16> %i.ccj to <16 x i32>
  %i.ccl = mul nsw <16 x i32> %i.cce, %i.cck
  %i.ccm = sext <16 x i32> %i.ccl to <16 x i64>   ; 2 uses
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.cci, i64 32
  %i.cco = load <4 x i16>, ptr %i.ccn, align 8, !tbaa !42
  %i.ccp = sext <4 x i16> %i.cco to <4 x i32>
  %i.ccq = mul nsw <4 x i32> %i.ccg, %i.ccp
  %i.ccr = sext <4 x i32> %i.ccq to <4 x i64>
  %i.ccs = shufflevector <16 x i64> %i.ccm, <16 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = add nsw <4 x i64> %i.ccs, %i.ccr
  %i.cct = shufflevector <4 x i64> %rdx.op, <4 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ccu = shufflevector <16 x i64> %i.cct, <16 x i64> %i.ccm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ccv = call i64 @llvm.vector.reduce.add.v16i64(<16 x i64> %i.ccu)
  %i.ccw = call i64 @llvm.smax.i64(i64 %i.ccv, i64 -2147483648)
  %i.ccx = call i64 @llvm.smin.i64(i64 %i.ccw, i64 2147483647)
  %.0.i.i174 = trunc nsw i64 %i.ccx to i32        ; 2 uses
  %i.ccy = icmp slt i32 %.2208.i, %.0.i.i174      ; 2 uses
  %.2152.i = select i1 %i.ccy, i32 %i.cch, i32 %.1151204.i ; 4 uses
  %.2149.i = select i1 %i.ccy, i32 %.5206.i, i32 %.1148205.i ; 3 uses
  %.3.i = call i32 @llvm.smax.i32(i32 %.2208.i, i32 %.0.i.i174) ; 2 uses
  %i.ccz = add nuw nsw i32 %.5206.i, 1            ; 2 uses
  %indvars.iv.next285.i = add nuw nsw i64 %indvars.iv284.i, 20
  %exitcond287.not.i = icmp eq i32 %i.ccz, %.1137.i
  br i1 %exitcond287.not.i, label %._crit_edge.i, label %.preheader.i173, !llvm.loop !96

._crit_edge.i:                                    ; preds = %.preheader.i173
  %indvars.iv.next289.i = add nuw nsw i64 %indvars.iv288.i, 1 ; 2 uses
  %exitcond292.not.i = icmp eq i64 %indvars.iv.next289.i, %wide.trip.count291.i
  br i1 %exitcond292.not.i, label %acb_search.exit, label %.preheader.lr.ph.i, !llvm.loop !97

acb_search.exit:                                  ; preds = %._crit_edge.i
  %i.cda = add nsw i32 %.2152.i, -1
  %.3153.i = select i1 %i.bip, i32 %.2152.i, i32 1
  %i.cdb = select i1 %i.bip, i32 0, i32 %i.cda
  %.1146.i = add nsw i32 %i.cdb, %.0145.i
  store i32 %.1146.i, ptr %i.bil, align 4, !tbaa !41
  %i.cdc = getelementptr inbounds nuw [28 x i8], ptr %i.z, i64 %indvars.iv257 ; 9 uses
  store i32 %.3153.i, ptr %i.cdc, align 4, !tbaa !98
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.cdc, i64 4
  store i32 %.2149.i, ptr %i.cdd, align 4, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.cde = load i32, ptr %i.bil, align 4, !tbaa !41
  %i.cdf = load i32, ptr %i.bai, align 4, !tbaa !31
  call void @ff_g723_1_gen_acb_excitation(ptr noundef nonnull %i.s, ptr noundef nonnull %i.baa, i32 noundef %i.cde, ptr noundef nonnull %i.cdc, i32 noundef %i.cdf) #9
  br label %bb.bm

bb.bm:                                            ; preds = %.epilog-lcssa514, %acb_search.exit
  %indvars.iv25.i = phi i64 [ 0, %acb_search.exit ], [ %indvars.iv.next26.i, %.epilog-lcssa514 ] ; 8 uses
  %indvars.iv23.i = phi i64 [ 1, %acb_search.exit ], [ %indvars.iv.next24.i, %.epilog-lcssa514 ] ; 3 uses
  %i.cdg = getelementptr inbounds nuw [2 x i8], ptr %.0106234, i64 %indvars.iv25.i ; 2 uses
  %i.cdh = load i16, ptr %i.cdg, align 2, !tbaa !42
  %i.cdi = sext i16 %i.cdh to i32
  %i.cdj = shl nsw i32 %i.cdi, 14
  %i.cdk = sext i32 %i.cdj to i64                 ; 2 uses
  %xtraiter511 = and i64 %indvars.iv23.i, 3       ; 3 uses
  %i.cdl = icmp samesign ult i64 %indvars.iv25.i, 3
  br i1 %i.cdl, label %.epil.preheader510, label %.new

.new:                                             ; preds = %bb.bm
  %unroll_iter517 = and i64 %indvars.iv23.i, 9223372036854775804
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.new
  %indvars.iv.i175 = phi i64 [ 0, %.new ], [ %indvars.iv.next.i176.3, %bb.bn ] ; 6 uses
  %.018.i = phi i64 [ %i.cdk, %.new ], [ %i.cev, %bb.bn ]
  %niter518 = phi i64 [ 0, %.new ], [ %niter518.next.3, %bb.bn ]
  %i.cdm = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.i175
  %i.cdn = load i16, ptr %i.cdm, align 8, !tbaa !42
  %i.cdo = sext i16 %i.cdn to i64
  %i.cdp = sub nuw nsw i64 %indvars.iv25.i, %indvars.iv.i175
  %i.cdq = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.cdp
  %i.cdr = load i16, ptr %i.cdq, align 2, !tbaa !42
  %i.cds = sext i16 %i.cdr to i64
  %i.cdt = mul nsw i64 %i.cds, %i.cdo
  %indvars.iv.next.i176 = or disjoint i64 %indvars.iv.i175, 1 ; 2 uses
  %i.cdu = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.i176
  %i.cdv = load i16, ptr %i.cdu, align 2, !tbaa !42
  %i.cdw = sext i16 %i.cdv to i64
  %i.cdx = sub nuw nsw i64 %indvars.iv25.i, %indvars.iv.next.i176
  %i.cdy = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.cdx
  %i.cdz = load i16, ptr %i.cdy, align 2, !tbaa !42
  %i.cea = sext i16 %i.cdz to i64
  %i.ceb = mul nsw i64 %i.cea, %i.cdw
  %i.cec = add nsw i64 %i.cdt, %i.ceb
  %indvars.iv.next.i176.1 = or disjoint i64 %indvars.iv.i175, 2 ; 2 uses
  %i.ced = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.i176.1
  %i.cee = load i16, ptr %i.ced, align 4, !tbaa !42
  %i.cef = sext i16 %i.cee to i64
  %i.ceg = sub nuw nsw i64 %indvars.iv25.i, %indvars.iv.next.i176.1
  %i.ceh = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.ceg
  %i.cei = load i16, ptr %i.ceh, align 2, !tbaa !42
  %i.cej = sext i16 %i.cei to i64
  %i.cek = mul nsw i64 %i.cej, %i.cef
  %i.cel = add nsw i64 %i.cec, %i.cek
  %indvars.iv.next.i176.2 = or disjoint i64 %indvars.iv.i175, 3 ; 2 uses
  %i.cem = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.i176.2
  %i.cen = load i16, ptr %i.cem, align 2, !tbaa !42
  %i.ceo = sext i16 %i.cen to i64
  %i.cep = sub nuw nsw i64 %indvars.iv25.i, %indvars.iv.next.i176.2
  %i.ceq = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.cep
  %i.cer = load i16, ptr %i.ceq, align 2, !tbaa !42
  %i.ces = sext i16 %i.cer to i64
  %i.cet = mul nsw i64 %i.ces, %i.ceo
  %i.ceu = add nsw i64 %i.cel, %i.cet
  %i.cev = sub i64 %.018.i, %i.ceu                ; 3 uses
  %indvars.iv.next.i176.3 = add nuw nsw i64 %indvars.iv.i175, 4 ; 2 uses
end_hunk_1
