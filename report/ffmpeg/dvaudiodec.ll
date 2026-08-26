Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dvaudiodec?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"dvaudio\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Ulead DV Audio\00", align 1
@ff_dvaudio_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86022, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4012, ptr null, ptr null, ptr null, ptr @decode_init, %union.anon { ptr @decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -22, 1) i32 @decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  switch i32 %i.d, label %bb.d [
    i32 533, label %bb.b
    i32 534, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store i32 7200, ptr %i.b, align 4, !tbaa !30
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store i32 8640, ptr %i.b, align 4, !tbaa !30
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32   ; 3 uses
  switch i32 %i.f, label %.loopexit [
    i32 7200, label %bb.e
    i32 8640, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  store i32 %i.f, ptr %i.b, align 4, !tbaa !30
  %i.g = icmp eq i32 %i.f, 8640
  %i.h = zext i1 %i.g to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.b
  %i.i = phi i32 [ 1, %bb.c ], [ %i.h, %bb.e ], [ 0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.l = load i32, ptr %i.k, align 8, !tbaa !34
  %i.m = icmp eq i32 %i.l, 12
  %i.n = zext i1 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %i.n, ptr %i.o, align 4, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 1, ptr %i.p, align 4, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.q) #5
  store <2 x i32> <i32 1, i32 2>, ptr %i.q, align 8, !tbaa !37
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 3, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !39
  %i.r = load i32, ptr %i.j, align 4, !tbaa !33
  %.not = icmp eq i32 %i.r, 0                     ; 3 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %2 = load i32, ptr %i.o, align 4, !tbaa !35
  %i.s = trunc i32 %2 to i16
  %3 = add i16 %i.s, 2
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %3, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.f ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %bb.f ], [ %vec.ind.next, %bb.g ] ; 6 uses
  %vec.ind.frozen = freeze <8 x i16> %vec.ind     ; 2 uses
  %4 = udiv <8 x i16> %vec.ind.frozen, splat (i16 3) ; 2 uses
  %5 = mul <8 x i16> %4, splat (i16 3)
  %.decomposed = sub <8 x i16> %vec.ind.frozen, %5
  %6 = mul nuw nsw <8 x i16> %.decomposed, splat (i16 21)
  %7 = mul nuw nsw <8 x i16> %4, splat (i16 9)
  %8 = add nuw nsw <8 x i16> %6, %7
  %9 = udiv <8 x i16> %vec.ind, splat (i16 15)
  %10 = udiv <8 x i16> %vec.ind, splat (i16 18)
  %11 = select i1 %.not, <8 x i16> %9, <8 x i16> %10
  %12 = trunc nuw <8 x i16> %11 to <8 x i8>
  %13 = urem <8 x i8> %12, splat (i8 3)
  %14 = zext nneg <8 x i8> %13 to <8 x i16>
  %15 = add nuw <8 x i16> %8, %14                 ; 2 uses
  %16 = urem <8 x i16> %15, splat (i16 45)
  %17 = urem <8 x i16> %15, splat (i16 54)
  %18 = select i1 %.not, <8 x i16> %16, <8 x i16> %17
  %19 = mul nuw nsw <8 x i16> %18, splat (i16 80)
  %20 = udiv <8 x i16> %vec.ind, splat (i16 45)
  %21 = udiv <8 x i16> %vec.ind, splat (i16 54)
  %22 = select i1 %.not, <8 x i16> %20, <8 x i16> %21
  %23 = mul <8 x i16> %broadcast.splat, %22
  %24 = add <8 x i16> %23, splat (i16 8)
  %25 = add <8 x i16> %24, %19
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store <8 x i16> %25, ptr %i.t, align 2, !tbaa !40
  %indvars.iv.next = add nuw i64 %indvars.iv, 8   ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 8)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !42

.loopexit:                                        ; preds = %bb.g, %bb.d
  %.0 = phi i32 [ -22, %bb.d ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !48
  %i.g = load i32, ptr %i.b, align 4, !tbaa !30
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 244
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !33
  %.val = load i8, ptr %i.i, align 1, !tbaa !38
  %i.l = getelementptr i8, ptr %i.d, i64 247
  %.val35 = load i8, ptr %i.l, align 1, !tbaa !38
  %i.m = lshr i8 %.val35, 3
  %i.n = and i8 %i.m, 7
  %.not9.i = icmp eq i32 %i.k, 0                  ; 3 uses
  switch i8 %i.n, label %bb.e [
    i8 0, label %bb.c
    i8 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = select i1 %.not9.i, i32 1580, i32 1896
  br label %dv_get_audio_sample_count.exit

bb.d:                                             ; preds = %bb.b
  %i.p = select i1 %.not9.i, i32 1452, i32 1742
  br label %dv_get_audio_sample_count.exit

bb.e:                                             ; preds = %bb.b
  %i.q = select i1 %.not9.i, i32 1053, i32 1264
  br label %dv_get_audio_sample_count.exit

dv_get_audio_sample_count.exit:                   ; preds = %bb.c, %bb.d, %bb.e
  %.pn.i = phi i32 [ %i.q, %bb.e ], [ %i.o, %bb.c ], [ %i.p, %bb.d ]
  %i.r = and i8 %.val, 63
  %i.s = zext nneg i8 %i.r to i32
  %.0.i = add nuw nsw i32 %.pn.i, %i.s
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  store i32 %.0.i, ptr %i.t, align 8, !tbaa !49
  %i.u = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #5 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.n, label %bb.f

bb.f:                                             ; preds = %dv_get_audio_sample_count.exit
  %i.w = load ptr, ptr %1, align 8, !tbaa !54     ; 3 uses
  %i.x = load i32, ptr %i.t, align 8, !tbaa !49   ; 5 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !35
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.x to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ac = load i32, ptr %i.j, align 4, !tbaa !33
  %.not34.us = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not34.us, i64 3600, i64 4320 ; 3 uses
  %wide.trip.count47 = zext nneg i32 %i.x to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count47, 1
  %i.ae = icmp eq i32 %i.x, 1
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter = and i64 %wide.trip.count47, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.split.us.new
  %indvars.iv44 = phi i64 [ 0, %.lr.ph.split.us.new ], [ %indvars.iv.next45.1, %bb.g ] ; 3 uses
  %.03240.us = phi ptr [ %i.w, %.lr.ph.split.us.new ], [ %.1.us.1, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter.next.1, %bb.g ]
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv44
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !40
  %i.ah = sext i16 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.d, i64 %i.ah ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !38
  %i.ak = tail call i16 @llvm.bswap.i16(i16 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %.03240.us, i64 2
  store i16 %i.ak, ptr %.03240.us, align 2, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad
  %i.an = load i16, ptr %i.am, align 1, !tbaa !38
  %i.ao = tail call i16 @llvm.bswap.i16(i16 %i.an)
  store i16 %i.ao, ptr %i.al, align 2, !tbaa !40
  %.1.us = getelementptr inbounds nuw i8, ptr %.03240.us, i64 4
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !40
  %i.as = sext i16 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.d, i64 %i.as ; 2 uses
  %i.au = load i16, ptr %i.at, align 1, !tbaa !38
  %i.av = tail call i16 @llvm.bswap.i16(i16 %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %.03240.us, i64 6
  store i16 %i.av, ptr %.1.us, align 2, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ad
  %i.ay = load i16, ptr %i.ax, align 1, !tbaa !38
  %i.az = tail call i16 @llvm.bswap.i16(i16 %i.ay)
  store i16 %i.az, ptr %i.aw, align 2, !tbaa !40
  %.1.us.1 = getelementptr inbounds nuw i8, ptr %.03240.us, i64 8 ; 2 uses
  %indvars.iv.next45.1 = add nuw nsw i64 %indvars.iv44, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !55

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %dv_audio_12to16.exit39
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %dv_audio_12to16.exit39 ] ; 2 uses
  %.03240 = phi ptr [ %i.w, %.lr.ph.split.preheader ], [ %.1, %dv_audio_12to16.exit39 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !40
  %i.bc = sext i16 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.d, i64 %i.bc ; 3 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !38  ; 2 uses
  %i.bf = zext i8 %i.be to i16
  %i.bg = shl nuw nsw i16 %i.bf, 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 2 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !38
  %i.bj = lshr i8 %i.bi, 4
  %i.bk = zext nneg i8 %i.bj to i16
  %i.bl = or disjoint i16 %i.bg, %i.bk            ; 2 uses
  %i.bm = or disjoint i16 %i.bl, -4096
  %i.bn = icmp slt i8 %i.be, 0
  %i.bo = select i1 %i.bn, i16 %i.bm, i16 %i.bl   ; 4 uses
  %i.bp = zext i16 %i.bo to i32
  %i.bq = lshr i16 %i.bo, 8
  %i.br = and i16 %i.bq, 15                       ; 4 uses
  %i.bs = add nsw i16 %i.br, -14
  %or.cond.i = icmp ult i16 %i.bs, -12
  br i1 %or.cond.i, label %dv_audio_12to16.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  %i.bt = icmp samesign ult i16 %i.br, 8
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bu = add nsw i16 %i.br, -1
  %i.bv = zext nneg i16 %i.bu to i32              ; 2 uses
  %i.bw = shl nuw nsw i32 %i.bv, 8
  %i.bx = sub nsw i32 %i.bp, %i.bw
  %i.by = shl nsw i32 %i.bx, %i.bv
  %i.bz = trunc i32 %i.by to i16
  br label %dv_audio_12to16.exit

bb.j:                                             ; preds = %bb.h
  %i.ca = sub nuw nsw i16 14, %i.br               ; 2 uses
  %i.cb = shl nuw nsw i16 %i.ca, 8
  %i.cc = add nsw i16 %i.bo, 1
  %i.cd = add nsw i16 %i.cc, %i.cb
  %i.ce = shl i16 %i.cd, %i.ca
  %i.cf = add i16 %i.ce, -1
  br label %dv_audio_12to16.exit

dv_audio_12to16.exit:                             ; preds = %.lr.ph.split, %bb.i, %bb.j
  %.0.i36 = phi i16 [ %i.cf, %bb.j ], [ %i.bz, %bb.i ], [ %i.bo, %.lr.ph.split ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.03240, i64 2
  store i16 %.0.i36, ptr %.03240, align 2, !tbaa !40
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !38  ; 2 uses
  %i.cj = zext i8 %i.ci to i16
  %i.ck = shl nuw nsw i16 %i.cj, 4
  %i.cl = load i8, ptr %i.bh, align 1, !tbaa !38
  %i.cm = and i8 %i.cl, 15
  %i.cn = zext nneg i8 %i.cm to i16
  %i.co = or disjoint i16 %i.ck, %i.cn            ; 2 uses
  %i.cp = or disjoint i16 %i.co, -4096
  %i.cq = icmp slt i8 %i.ci, 0
  %i.cr = select i1 %i.cq, i16 %i.cp, i16 %i.co   ; 4 uses
  %i.cs = zext i16 %i.cr to i32
  %i.ct = lshr i16 %i.cr, 8
  %i.cu = and i16 %i.ct, 15                       ; 4 uses
  %i.cv = add nsw i16 %i.cu, -14
  %or.cond.i37 = icmp ult i16 %i.cv, -12
  br i1 %or.cond.i37, label %dv_audio_12to16.exit39, label %bb.k

bb.k:                                             ; preds = %dv_audio_12to16.exit
  %i.cw = icmp samesign ult i16 %i.cu, 8
  br i1 %i.cw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cx = add nsw i16 %i.cu, -1
  %i.cy = zext nneg i16 %i.cx to i32              ; 2 uses
  %i.cz = shl nuw nsw i32 %i.cy, 8
  %i.da = sub nsw i32 %i.cs, %i.cz
  %i.db = shl nsw i32 %i.da, %i.cy
  %i.dc = trunc i32 %i.db to i16
  br label %dv_audio_12to16.exit39

bb.m:                                             ; preds = %bb.k
  %i.dd = sub nuw nsw i16 14, %i.cu               ; 2 uses
  %i.de = shl nuw nsw i16 %i.dd, 8
  %i.df = add nsw i16 %i.cr, 1
  %i.dg = add nsw i16 %i.df, %i.de
  %i.dh = shl i16 %i.dg, %i.dd
  %i.di = add i16 %i.dh, -1
  br label %dv_audio_12to16.exit39

dv_audio_12to16.exit39:                           ; preds = %dv_audio_12to16.exit, %bb.l, %bb.m
  %.0.i38 = phi i16 [ %i.di, %bb.m ], [ %i.dc, %bb.l ], [ %i.cr, %dv_audio_12to16.exit ]
  store i16 %.0.i38, ptr %i.cg, align 2, !tbaa !40
  %.1 = getelementptr inbounds nuw i8, ptr %.03240, i64 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !55

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us
  %indvars.iv44.epil.init = phi i64 [ 0, %.lr.ph.split.us ], [ %indvars.iv.next45.1, %._crit_edge.loopexit.unr-lcssa ]
  %.03240.us.epil.init = phi ptr [ %i.w, %.lr.ph.split.us ], [ %.1.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod58 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv44.epil.init
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !40
  %i.dl = sext i16 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %i.d, i64 %i.dl ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 1, !tbaa !38
  %i.do = tail call i16 @llvm.bswap.i16(i16 %i.dn)
  %i.dp = getelementptr inbounds nuw i8, ptr %.03240.us.epil.init, i64 2
  store i16 %i.do, ptr %.03240.us.epil.init, align 2, !tbaa !40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.ad
  %i.dr = load i16, ptr %i.dq, align 1, !tbaa !38
  %i.ds = tail call i16 @llvm.bswap.i16(i16 %i.dr)
  store i16 %i.ds, ptr %i.dp, align 2, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %dv_audio_12to16.exit39, %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.f
  store i32 1, ptr %2, align 4, !tbaa !37
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !30
  br label %bb.n

bb.n:                                             ; preds = %dv_get_audio_sample_count.exit, %bb.a, %._crit_edge
  %.0 = phi i32 [ %i.dt, %._crit_edge ], [ -1094995529, %bb.a ], [ %i.u, %dv_get_audio_sample_count.exit ]
  ret i32 %.0
}

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

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
!9 = !{!10, !12, i64 32}
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
!29 = !{!10, !6, i64 28}
!30 = !{!31, !6, i64 0}
!31 = !{!"DVAudioContext", !6, i64 0, !6, i64 4, !6, i64 8, !7, i64 12}
!32 = !{!10, !6, i64 380}
!33 = !{!31, !6, i64 8}
!34 = !{!10, !6, i64 648}
!35 = !{!31, !6, i64 4}
!36 = !{!10, !6, i64 348}
!37 = !{!6, !6, i64 0}
!38 = !{!7, !7, i64 0}
!39 = !{!12, !12, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"short", !7, i64 0}
!42 = distinct !{!42, !43, !44, !45}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!47, !16, i64 24}
!47 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!48 = !{!47, !6, i64 32}
!49 = !{!50, !6, i64 112}
!50 = !{!"AVFrame", !7, i64 0, !7, i64 64, !51, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !52, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !53, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!51 = !{!"p2 omnipotent char", !28, i64 0}
!52 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!53 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!54 = !{!16, !16, i64 0}
!55 = distinct !{!55, !43}
end_hunk_0
