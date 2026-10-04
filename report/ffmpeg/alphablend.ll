Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/alphablend?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"plane_count == nb_components - 1\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"libswscale/alphablend.c\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"libswscale/swscale_internal.h\00", align 1

; Function Attrs: nounwind uwtable
define noundef i32 @ff_sws_alphablendaway(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x [3 x i32]], align 16         ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !43
  %i.d = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.c) #5 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !47
  %i.k = zext i8 %i.j to i32
  %i.l = load i32, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.m = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.l) #5 ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 810) #5
  tail call void @abort() #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !48
  %i.p = and i64 %i.o, 10
  %or.cond10.i = icmp eq i64 %i.p, 0
  br i1 %or.cond10.i, label %bb.d, label %isGray.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load i8, ptr %i.q, align 8, !tbaa !47
  %i.s = icmp ugt i8 %i.r, 2
  %i.t = add i32 %i.l, -9
  %i.u = icmp ult i32 %i.t, 2
  %or.cond454 = or i1 %i.u, %i.s
  br i1 %or.cond454, label %isGray.exit.thread, label %bb.e

isGray.exit.thread:                               ; preds = %bb.c, %bb.d
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %isGray.exit.thread
  %exitcond.peel.not = phi i1 [ false, %isGray.exit.thread ], [ true, %bb.d ] ; 5 uses
  %i.v = phi i32 [ 3, %isGray.exit.thread ], [ 1, %bb.d ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !50   ; 23 uses
  %i.y = icmp sgt i32 %i.x, 8                     ; 3 uses
  %i.z = add nsw i32 %i.x, -1                     ; 2 uses
  %i.aa = shl nuw i32 1, %i.z                     ; 14 uses
  %notmask = shl nsw i32 -1, %i.x
  %i.ab = xor i32 %notmask, -1                    ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i32, ptr %i.ac, align 16, !tbaa !51
  %i.ae = icmp eq i32 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.ag = sdiv i32 %i.aa, 2                       ; 2 uses
  %i.ah = shl i32 3, %i.z
  %i.ai = sdiv i32 %i.ah, 2                       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.a, align 16, !tbaa !52
  store i32 0, ptr %i.af, align 4, !tbaa !52
  br i1 %exitcond.peel.not, label %.split476.us, label %.split.peel.next

.split.peel.next:                                 ; preds = %bb.f
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !48
  %i.al = and i64 %i.ak, 32
  %.not438 = icmp eq i64 %i.al, 0
  %spec.select = select i1 %.not438, i32 %i.aa, i32 0
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %spec.select, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.split476.us.sink.split

bb.g:                                             ; preds = %bb.e
  store i32 %i.ag, ptr %i.a, align 16, !tbaa !52
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !52
  br i1 %exitcond.peel.not, label %.split476.us, label %.split.us.peel.next

.split.us.peel.next:                              ; preds = %bb.g
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !48
  %i.an = and i64 %i.am, 32
  %.not438.us = icmp eq i64 %i.an, 0              ; 2 uses
  %spec.select452.us = select i1 %.not438.us, i32 %i.aa, i32 %i.ai
  %spec.select.us = select i1 %.not438.us, i32 %i.aa, i32 %i.ag
  %broadcast.splatinsert647 = insertelement <2 x i32> poison, i32 %spec.select.us, i64 0
  %broadcast.splat648 = shufflevector <2 x i32> %broadcast.splatinsert647, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert645 = insertelement <2 x i32> poison, i32 %spec.select452.us, i64 0
  %broadcast.splat646 = shufflevector <2 x i32> %broadcast.splatinsert645, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.split476.us.sink.split

.split476.us.sink.split:                          ; preds = %.split.us.peel.next, %.split.peel.next
  %broadcast.splat.sink653 = phi <2 x i32> [ %broadcast.splat, %.split.peel.next ], [ %broadcast.splat648, %.split.us.peel.next ]
  %broadcast.splat.sink = phi <2 x i32> [ %broadcast.splat, %.split.peel.next ], [ %broadcast.splat646, %.split.us.peel.next ]
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <2 x i32> %broadcast.splat.sink653, ptr %7, align 4, !tbaa !52
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x i32> %broadcast.splat.sink, ptr %8, align 16, !tbaa !52
  br label %.split476.us

.split476.us:                                     ; preds = %.split476.us.sink.split, %bb.f, %bb.g
  %i.ao = add nsw i32 %i.k, -1
  %i.ap = icmp eq i32 %i.v, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.split476.us
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 49) #5
  tail call void @abort() #6
  unreachable

bb.i:                                             ; preds = %.split476.us
  %i.aq = load i64, ptr %i.aj, align 8, !tbaa !48
  %i.ar = and i64 %i.aq, 16
  %.not426 = icmp eq i64 %i.ar, 0
  br i1 %.not426, label %bb.ac, label %.preheader472

.preheader472:                                    ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.at = sub nsw i32 0, %4
  %i.au = zext nneg i32 %i.v to i64               ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.au ; 2 uses
  %i.ax = add nsw i32 %i.f, -1                    ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  br label %bb.j

bb.j:                                             ; preds = %.preheader472, %._crit_edge
  %indvars.iv558 = phi i64 [ 0, %.preheader472 ], [ %indvars.iv.next559, %._crit_edge ] ; 7 uses
  %.not430 = icmp eq i64 %indvars.iv558, 0        ; 2 uses
  %.in = select i1 %.not430, ptr %i.e, ptr %i.as
  %i.ba = load i32, ptr %.in, align 8, !tbaa !52  ; 7 uses
  br i1 %.not430, label %.thread451, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = load i8, ptr %i.ay, align 1, !tbaa !53
  %i.bc = icmp ne i8 %i.bb, 0
  %i.bd = load i8, ptr %i.az, align 2, !tbaa !54
  %i.be = zext i8 %i.bd to i32
  br label %.thread451

.thread451:                                       ; preds = %bb.j, %bb.k
  %i.bf = phi i1 [ %i.bc, %bb.k ], [ false, %bb.j ]
  %i.bg = phi i32 [ %i.be, %bb.k ], [ 0, %bb.j ]  ; 6 uses
  %i.bh = ashr i32 %i.at, %i.bg                   ; 2 uses
  %i.bi = sub nsw i32 0, %i.bh
  %i.bj = ashr i32 %3, %i.bg
  %.not431 = icmp ne i32 %i.bg, 0
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv558 ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv558 ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv558 ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv558 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv558 ; 6 uses
  %i.bo = icmp sgt i32 %i.ba, 0                   ; 6 uses
  %wide.trip.count531 = zext nneg i32 %i.ba to i64
  %wide.trip.count536 = zext nneg i32 %i.ba to i64
  %wide.trip.count541 = zext nneg i32 %i.ba to i64
  %wide.trip.count546 = zext nneg i32 %i.ba to i64
  %wide.trip.count551 = zext nneg i32 %i.ba to i64
  %wide.trip.count556 = zext nneg i32 %i.ba to i64
  %i.bp = icmp slt i32 %i.bh, 0
  br i1 %i.bp, label %.lr.ph640, label %._crit_edge

.lr.ph640:                                        ; preds = %.thread451, %.loopexit463
  %.0408639 = phi i32 [ %i.lx, %.loopexit463 ], [ 0, %.thread451 ] ; 8 uses
  %i.bq = add nsw i32 %.0408639, %i.bj            ; 10 uses
  %i.br = shl i32 %i.bq, %i.bg
  %i.bs = add nsw i32 %i.br, 1
  %i.bt = icmp slt i32 %i.bs, %i.h
  %i.bu = select i1 %.not431, i1 %i.bt, i1 false  ; 4 uses
  %or.cond = select i1 %i.bf, i1 true, i1 %i.bu
  br i1 %or.cond, label %bb.l, label %bb.y

bb.l:                                             ; preds = %.lr.ph640
  %i.bv = load i32, ptr %i.aw, align 4, !tbaa !52 ; 4 uses
  br i1 %i.y, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.bw = ashr i32 %i.bv, 1
  %i.bx = sext i32 %i.bw to i64                   ; 4 uses
  %i.by = load ptr, ptr %i.bk, align 8, !tbaa !55
  %i.bz = load i32, ptr %i.bl, align 4, !tbaa !52
  %i.ca = mul nsw i32 %i.bz, %.0408639
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb ; 2 uses
  %i.cd = load ptr, ptr %i.av, align 8, !tbaa !55
  %i.ce = mul nsw i32 %i.bv, %.0408639
  %i.cf = shl i32 %i.ce, %i.bg
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg ; 4 uses
  %i.ci = load ptr, ptr %i.bm, align 8, !tbaa !55
  %i.cj = load i32, ptr %i.bn, align 4, !tbaa !52
  %i.ck = mul nsw i32 %i.cj, %i.bq
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.b, align 8, !tbaa !43
  %i.co = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.cn) #5 ; 2 uses
  %.not.i443 = icmp eq ptr %i.co, null
  br i1 %.not.i443, label %bb.n, label %isBE.exit444

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 771) #5
  tail call void @abort() #6
  unreachable

isBE.exit444:                                     ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !48
  %i.cr = and i64 %i.cq, 1
  %.not434 = icmp eq i64 %i.cr, 0
  br i1 %.not434, label %.preheader462, label %.preheader464

.preheader464:                                    ; preds = %isBE.exit444
  br i1 %i.bo, label %.lr.ph493, label %.loopexit463

.preheader462:                                    ; preds = %isBE.exit444
  br i1 %i.bo, label %.lr.ph497, label %.loopexit463

.lr.ph497:                                        ; preds = %.preheader462, %bb.q
  %indvars.iv553 = phi i64 [ %indvars.iv.next554, %bb.q ], [ 0, %.preheader462 ] ; 5 uses
  %i.cs = shl nuw nsw i64 %indvars.iv553, 1       ; 3 uses
  %i.ct = trunc nuw i64 %i.cs to i32
  %.not436 = icmp sgt i32 %i.ax, %i.ct
  %i.cu = trunc i64 %i.cs to i32
  %i.cv = or disjoint i32 %i.cu, 1
  %i.cw = select i1 %.not436, i32 %i.cv, i32 %i.ax
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.cs ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !57
  %i.cz = zext i16 %i.cy to i32                   ; 2 uses
  %i.da = sext i32 %i.cw to i64
  %i.db = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %i.da ; 2 uses
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !57
  %i.dd = zext i16 %i.dc to i32                   ; 2 uses
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph497
  %i.de = getelementptr [2 x i8], ptr %i.cx, i64 %i.bx
  %i.df = load i16, ptr %i.de, align 2, !tbaa !57
  %i.dg = zext i16 %i.df to i32
  %i.dh = getelementptr [2 x i8], ptr %i.db, i64 %i.bx
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !57
  %i.dj = zext i16 %i.di to i32
  %i.dk = add nuw nsw i32 %i.cz, 2
  %i.dl = add nuw nsw i32 %i.dk, %i.dd
  %i.dm = add nuw nsw i32 %i.dl, %i.dg
  %i.dn = add nuw nsw i32 %i.dm, %i.dj
  %i.do = lshr i32 %i.dn, 2
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph497
  %i.dp = add nuw nsw i32 %i.dd, %i.cz
  %i.dq = lshr i32 %i.dp, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0410 = phi i32 [ %i.do, %bb.o ], [ %i.dq, %bb.p ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %indvars.iv553
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !57
  %i.dt = zext i16 %i.ds to i32
  %i.du = mul nuw nsw i32 %.0410, %i.dt
  %i.dv = trunc nuw nsw i64 %indvars.iv553 to i32
  %i.dw = xor i32 %i.bq, %i.dv
  %i.dx = lshr i32 %i.dw, 5
  %i.dy = and i32 %i.dx, 1
  %i.dz = zext nneg i32 %i.dy to i64
  %gep495 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %i.dz
  %i.ea = load i32, ptr %gep495, align 4, !tbaa !52
  %i.eb = sub nsw i32 %i.ab, %.0410
  %i.ec = mul i32 %i.ea, %i.eb
  %i.ed = add i32 %i.ec, %i.aa
  %i.ee = add i32 %i.ed, %i.du                    ; 2 uses
  %i.ef = lshr i32 %i.ee, %i.x
  %i.eg = add i32 %i.ef, %i.ee
  %i.eh = lshr i32 %i.eg, %i.x
  %.0.i449 = tail call i32 @llvm.smin.i32(i32 %i.eh, i32 %i.ab)
  %i.ei = trunc i32 %.0.i449 to i16
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv553
  store i16 %i.ei, ptr %i.ej, align 2, !tbaa !57
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1 ; 2 uses
  %exitcond557.not = icmp eq i64 %indvars.iv.next554, %wide.trip.count556
  br i1 %exitcond557.not, label %.loopexit463, label %.lr.ph497, !llvm.loop !9

.lr.ph493:                                        ; preds = %.preheader464, %bb.t
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %bb.t ], [ 0, %.preheader464 ] ; 5 uses
  %i.ek = shl nuw nsw i64 %indvars.iv548, 1       ; 3 uses
  %i.el = trunc nuw i64 %i.ek to i32
  %.not435 = icmp sgt i32 %i.ax, %i.el
  %i.em = trunc i64 %i.ek to i32
  %i.en = or disjoint i32 %i.em, 1
  %i.eo = select i1 %.not435, i32 %i.en, i32 %i.ax
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.ek ; 2 uses
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !57
  %i.er = tail call i16 @llvm.bswap.i16(i16 %i.eq)
  %i.es = zext i16 %i.er to i32                   ; 2 uses
  %i.et = sext i32 %i.eo to i64
  %i.eu = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %i.et ; 2 uses
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !57
  %i.ew = tail call i16 @llvm.bswap.i16(i16 %i.ev)
  %i.ex = zext i16 %i.ew to i32                   ; 2 uses
  br i1 %i.bu, label %bb.r, label %bb.s

end_hunk_0
