Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/eatgq?download=true
inline.NumInlined: 30
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"eatgq\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Electronic Arts TGQ video\00", align 1
@ff_eatgq_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 121, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 1056, ptr null, ptr null, ptr null, ptr @tgq_decode_init, %union.anon { ptr @tgq_decode_frame }, ptr @tgq_decode_close, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"truncated header\0A\00", align 1
@ff_inv_aanscales = external local_unnamed_addr constant [64 x i16], align 16
@.str.6 = private unnamed_addr constant [25 x i8] c"missing reference frame\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"invalid motion vector\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"unsupported mb mode %i\0A\00", align 1
@ff_zigzag_direct = external local_unnamed_addr constant [64 x i8], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @tgq_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  store ptr %0, ptr %i.b, align 16, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 15, ptr %i.c, align 4, !tbaa !33
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.d, align 8, !tbaa !34
  %i.e = tail call ptr @av_frame_alloc() #7       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !35
  %.not = icmp eq ptr %i.e, null
  %. = select i1 %.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal i32 @tgq_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 21 uses
  %i.f = icmp slt i32 %i.c, 16
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.2) #7
  br label %tgq_decode_mb.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 1, !tbaa !39
  %i.k = icmp ugt i32 %i.j, 1048575
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.m = zext nneg i32 %i.c to i64
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 10 ; 2 uses
  %i.q = load i16, ptr %i.l, align 1, !tbaa !39   ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %i.s, ptr %i.t, align 16, !tbaa !40
  %i.u = load i16, ptr %i.p, align 1, !tbaa !39
  %i.v = tail call i16 @llvm.bswap.i16(i16 %i.u)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = zext i16 %i.q to i32                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %i.w, ptr %i.x, align 16, !tbaa !40
  %i.y = load i16, ptr %i.p, align 1, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi i32 [ %i.s, %bb.d ], [ %i.w, %bb.e ]
  %.in = phi i16 [ %i.v, %bb.d ], [ %i.y, %bb.e ]
  %i.aa = zext i16 %.in to i32                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 3 uses
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !41
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ac = load ptr, ptr %i.e, align 16, !tbaa !29 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.not = icmp eq i32 %i.ae, %i.z
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 116
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !43
  %.not49 = icmp eq i32 %i.ah, %i.aa
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  tail call void @av_frame_unref(ptr noundef %i.aj) #7
  %i.ak = load ptr, ptr %i.e, align 16, !tbaa !29
  %i.al = load i32, ptr %i.af, align 16, !tbaa !40
  %i.am = load i32, ptr %i.ab, align 4, !tbaa !41
  %i.an = tail call i32 @ff_set_dimensions(ptr noundef %i.ak, i32 noundef %i.al, i32 noundef %i.am) #7 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %tgq_decode_mb.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = load i8, ptr %.sroa.0.0, align 1, !tbaa !39
  %i.aq = zext i8 %i.ap to i16
  %i.ar = sub nsw i16 100, %i.aq
  %i.as = insertelement <2 x i16> poison, i16 %i.ar, i64 0
  %i.at = shufflevector <2 x i16> %i.as, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.au = mul nsw <2 x i16> %i.at, <i16 7, i16 11>
  %i.av = sdiv <2 x i16> %i.au, <i16 50, i16 100>
  %i.aw = add nsw <2 x i16> %i.av, <i16 1, i16 4> ; 2 uses
  %i.ax = extractelement <2 x i16> %i.aw, i64 0
  %i.ay = sext i16 %i.ax to i64                   ; 8 uses
  %i.az = extractelement <2 x i16> %i.aw, i64 1
  %i.ba = sext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 13 uses
  %i.bc = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %i.bd = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.i
  %indvars.iv.i = phi i64 [ 0, %bb.i ], [ %i.bh, %.preheader.i ] ; 9 uses
  %i.be = shl nuw nsw i64 %indvars.iv.i, 3        ; 3 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr @ff_inv_aanscales, i64 %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.be
  %i.bh = add nuw nsw i64 %indvars.iv.i, 1        ; 3 uses
  %i.bi = add nuw nsw i64 %indvars.iv.i, 2
  %i.bj = add nuw nsw i64 %indvars.iv.i, 3
  %i.bk = mul i64 %i.bj, %i.ay
  %i.bl = mul i64 %i.bi, %i.ay
  %i.bm = mul i64 %i.bh, %i.ay
  %i.bn = mul i64 %indvars.iv.i, %i.ay
  %i.bo = trunc i64 %i.bk to i32
  %i.bp = trunc i64 %i.bl to i32
  %i.bq = trunc i64 %i.bm to i32
  %i.br = trunc i64 %i.bn to i32
  %i.bs = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %i.bt = insertelement <4 x i32> %i.bs, i32 %i.bq, i64 1
  %i.bu = insertelement <4 x i32> %i.bt, i32 %i.bp, i64 2
  %i.bv = insertelement <4 x i32> %i.bu, i32 %i.bo, i64 3
  %i.bw = sdiv <4 x i32> %i.bv, splat (i32 14)
  %i.bx = add nsw <4 x i32> %i.bw, %i.bd
  %i.by = load <4 x i16>, ptr %i.bf, align 16, !tbaa !44
  %i.bz = zext <4 x i16> %i.by to <4 x i32>
  %i.ca = mul nsw <4 x i32> %i.bx, %i.bz
  %i.cb = ashr <4 x i32> %i.ca, splat (i32 10)
  store <4 x i32> %i.cb, ptr %i.bg, align 4, !tbaa !33
  %i.cc = add nuw nsw i64 %indvars.iv.i, 4
  %i.cd = or disjoint i64 %i.be, 4                ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr @ff_inv_aanscales, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cd
  %i.cg = add nuw nsw i64 %indvars.iv.i, 5
  %i.ch = add nuw nsw i64 %indvars.iv.i, 6
  %i.ci = add nuw nsw i64 %indvars.iv.i, 7
  %i.cj = mul i64 %i.ci, %i.ay
  %i.ck = mul i64 %i.ch, %i.ay
  %i.cl = mul i64 %i.cg, %i.ay
  %i.cm = mul i64 %i.cc, %i.ay
  %i.cn = trunc i64 %i.cj to i32
  %i.co = trunc i64 %i.ck to i32
  %i.cp = trunc i64 %i.cl to i32
  %i.cq = trunc i64 %i.cm to i32
  %i.cr = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %i.cs = insertelement <4 x i32> %i.cr, i32 %i.cp, i64 1
  %i.ct = insertelement <4 x i32> %i.cs, i32 %i.co, i64 2
  %i.cu = insertelement <4 x i32> %i.ct, i32 %i.cn, i64 3
  %i.cv = sdiv <4 x i32> %i.cu, splat (i32 14)
  %i.cw = add nsw <4 x i32> %i.cv, %i.bd
  %i.cx = load <4 x i16>, ptr %i.ce, align 8, !tbaa !44
  %i.cy = zext <4 x i16> %i.cx to <4 x i32>
  %i.cz = mul nsw <4 x i32> %i.cw, %i.cy
  %i.da = ashr <4 x i32> %i.cz, splat (i32 10)
  store <4 x i32> %i.da, ptr %i.cf, align 4, !tbaa !33
  %exitcond.not.i = icmp eq i64 %i.bh, 8
  br i1 %exitcond.not.i, label %tgq_calculate_qtable.exit, label %.preheader.i, !llvm.loop !46

tgq_calculate_qtable.exit:                        ; preds = %.preheader.i
  %i.db = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #7 ; 2 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %tgq_decode_mb.exit.thread, label %bb.j

bb.j:                                             ; preds = %tgq_calculate_qtable.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 4 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !48
  %i.df = or i32 %i.de, 2
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !48
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !43 ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.preheader.lr.ph, label %._crit_edge97

.preheader.lr.ph:                                 ; preds = %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dl = ptrtoint ptr %i.o to i64                ; 27 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 288 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 544
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 672
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 800
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 928
  %.pre = load i32, ptr %i.dk, align 8, !tbaa !42
  %.3..3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.5..5..5..5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %.1..1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.2..2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.4..4..4..4..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.5..5..5..5..sroa_idx159 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %.3..3..3..3..sroa_idx155 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
end_hunk_0
