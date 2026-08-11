loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@I = external local_unnamed_addr global i32, align 4
@Init1 = external local_unnamed_addr global i32, align 4
@DD = external local_unnamed_addr global i32, align 4
@S = external local_unnamed_addr global i32, align 4
@NO_ERR_MASK = external local_unnamed_addr global i32, align 4
@D_endpos = external local_unnamed_addr global i32, align 4
@Init = external local_unnamed_addr global [0 x i32], align 4
@Mask = external local_unnamed_addr global [0 x i32], align 4
@AND = external local_unnamed_addr global i32, align 4
@endposition = external local_unnamed_addr global i32, align 4
@INVERSE = external local_unnamed_addr global i32, align 4
@FILENAMEONLY = external local_unnamed_addr global i32, align 4
@num_of_matched = external local_unnamed_addr global i32, align 4
@CurrentFileName = external global [0 x i8], align 1
@TRUNCATE = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local void @asearch1(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [17 x i32], align 16              ; 31 uses
  %i.b = alloca [17 x i32], align 16              ; 31 uses
  %i.c = alloca [98305 x i8], align 16            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = load i32, ptr @I, align 4, !tbaa !4      ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr @Init1, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i32, ptr @DD, align 4, !tbaa !4
  %i.g = icmp ugt i32 %i.f, %2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i32 %2, 1
  store i32 %i.h, ptr @DD, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = icmp ugt i32 %i.d, %2
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = add nuw i32 %2, 1
  store i32 %i.j, ptr @I, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = load i32, ptr @S, align 4, !tbaa !4
  %i.l = icmp ugt i32 %i.k, %2
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = add nuw i32 %2, 1
  store i32 %i.m, ptr @S, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10 ; 2 uses
  %i.o = trunc i64 %i.n to i32                    ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 49151
  store i8 10, ptr %i.p, align 1, !tbaa !8
  %i.q = load i32, ptr @NO_ERR_MASK, align 4, !tbaa !4 ; 8 uses
  %i.r = load i32, ptr @D_endpos, align 4, !tbaa !4 ; 5 uses
  %i.s = icmp ugt i32 %i.o, 1
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.t = add i32 %i.o, -1                         ; 2 uses
  %i.u = add i32 %i.o, -2
  %xtraiter = and i32 %i.t, 7                     ; 3 uses
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.t, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0188218 = phi i32 [ %i.r, %.lr.ph.preheader.new ], [ %i.al, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.w = shl i32 %.0188218, 1
  %i.x = or i32 %i.w, %.0188218                   ; 2 uses
  %i.y = shl i32 %i.x, 1
  %i.z = or i32 %i.y, %i.x                        ; 2 uses
  %i.aa = shl i32 %i.z, 1
  %i.ab = or i32 %i.aa, %i.z                      ; 2 uses
  %i.ac = shl i32 %i.ab, 1
  %i.ad = or i32 %i.ac, %i.ab                     ; 2 uses
  %i.ae = shl i32 %i.ad, 1
  %i.af = or i32 %i.ae, %i.ad                     ; 2 uses
  %i.ag = shl i32 %i.af, 1
  %i.ah = or i32 %i.ag, %i.af                     ; 2 uses
  %i.ai = shl i32 %i.ah, 1
  %i.aj = or i32 %i.ai, %i.ah                     ; 2 uses
  %i.ak = shl i32 %i.aj, 1
  %i.al = or i32 %i.ak, %i.aj                     ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !9

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0188218.epil.init = phi i32 [ %i.r, %.lr.ph.preheader ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod443 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod443)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0188218.epil = phi i32 [ %i.an, %.lr.ph.epil ], [ %.0188218.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.am = shl i32 %.0188218.epil, 1
  %i.an = or i32 %i.am, %.0188218.epil            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !11

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.i
  %.0188.lcssa = phi i32 [ %i.r, %bb.i ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil ]
  %i.ao = xor i32 %.0188.lcssa, -1                ; 2 uses
  %i.ap = add i32 %2, 1                           ; 2 uses
  %i.aq = shl i32 %2, 1                           ; 4 uses
  %.not265 = icmp eq i32 %2, 0
  br i1 %.not265, label %.lr.ph225, label %.preheader213

.preheader213:                                    ; preds = %._crit_edge
  %i.ar = zext i32 %2 to i64
  %i.as = shl nuw nsw i64 %i.ar, 2                ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.as, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.as, i1 false), !tbaa !4
  %.not223 = icmp slt i32 %2, 0
  br i1 %.not223, label %.preheader, label %.lr.ph225

.lr.ph225:                                        ; preds = %._crit_edge, %.preheader213
  %i.at = load i32, ptr @Init, align 4, !tbaa !4  ; 3 uses
  %i.au = zext i32 %2 to i64                      ; 5 uses
  %i.av = zext i32 %i.aq to i64                   ; 2 uses
  %i.aw = tail call i64 @llvm.umax.i64(i64 %i.au, i64 %i.av)
  %i.ax = add nuw nsw i64 %i.aw, 1
  %3 = sub nsw i64 %i.ax, %i.au                   ; 3 uses
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph225
  %n.vec = and i64 %3, -8                         ; 3 uses
  %i.ay = add nsw i64 %n.vec, %i.au
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = add nuw i64 %index, %i.au               ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ba, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.bb, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.bc, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.bd, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph225, %middle.block
  %indvars.iv.ph = phi i64 [ %i.au, %.lr.ph225 ], [ %i.ay, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block, %.preheader213
  %.not223314 = phi i1 [ true, %.preheader213 ], [ false, %middle.block ], [ false, %scalar.ph ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 49152 ; 4 uses
  %i.bg = call i32 @fill_buf(i32 noundef %1, ptr noundef nonnull %i.bf, i32 noundef 49152) #9 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph264, label %.loopexit212

.lr.ph264:                                        ; preds = %.preheader
  %sext = shl i64 %i.n, 32
  %i.bi = ashr exact i64 %sext, 32
  %i.bj = zext i32 %2 to i64                      ; 12 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bj ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bj ; 5 uses
  %.not197226 = icmp ugt i32 %i.ap, %i.aq         ; 4 uses
  %i.bm = zext i32 %i.aq to i64                   ; 6 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bm ; 2 uses
  %i.bp = xor i32 %i.o, -1
  %i.bq = zext i32 %i.ap to i64                   ; 24 uses
  %i.br = or disjoint i32 %i.aq, 1                ; 4 uses
  %i.bs = add i32 %2, -1                          ; 6 uses
  %i.bt = add i32 %2, 1
  %i.bu = add i32 %2, 1
  %i.bv = add i32 %2, -1                          ; 6 uses
  %i.bw = add i32 %2, 1
  %i.bx = add i32 %2, 1
  %i.by = add i32 %2, -1                          ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check412 = icmp ult i32 %i.by, 7
  %invariant.op = sub i32 -2, %2
  %invariant.op446 = sub i32 -2, %2
  %invariant.op448 = sub i32 -2, %2
  %n.vec414 = and i64 %i.ca, 8589934588           ; 3 uses
  %i.cb = add nuw nsw i64 %n.vec414, %i.bq
  %broadcast.splatinsert419 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat420 = shufflevector <4 x i32> %broadcast.splatinsert419, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n429 = icmp eq i64 %i.ca, %n.vec414
  %i.cc = call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bm)
  %i.cd = add nuw nsw i64 %i.cc, 1
  %4 = sub nsw i64 %i.cd, %i.bj                   ; 3 uses
  %min.iters.check397 = icmp ult i64 %4, 8
  %n.vec399 = and i64 %4, -8                      ; 3 uses
  %i.ce = add nsw i64 %n.vec399, %i.bj
  %cmp.n406 = icmp eq i64 %4, %n.vec399
  %i.cf = add i32 %2, -1                          ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check377 = icmp ult i32 %i.cf, 7
  %invariant.op450 = sub i32 -2, %2
  %invariant.op452 = sub i32 -2, %2
  %invariant.op454 = sub i32 -2, %2
  %n.vec379 = and i64 %i.ch, 8589934588           ; 3 uses
  %i.ci = add nuw nsw i64 %n.vec379, %i.bq
  %broadcast.splatinsert384 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat385 = shufflevector <4 x i32> %broadcast.splatinsert384, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n394 = icmp eq i64 %i.ch, %n.vec379
  %i.cj = add i32 %2, -1                          ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check354 = icmp ult i32 %i.cj, 7
  %invariant.op456 = sub i32 -2, %2
  %invariant.op458 = sub i32 -2, %2
  %invariant.op460 = sub i32 -2, %2
  %n.vec356 = and i64 %i.cl, 8589934588           ; 3 uses
  %i.cm = add nuw nsw i64 %n.vec356, %i.bq
  %broadcast.splatinsert361 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat362 = shufflevector <4 x i32> %broadcast.splatinsert361, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n371 = icmp eq i64 %i.cl, %n.vec356
  %i.cn = call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bm)
  %i.co = add nuw nsw i64 %i.cn, 1
  %5 = sub nsw i64 %i.co, %i.bj                   ; 3 uses
  %min.iters.check339 = icmp ult i64 %5, 8
  %n.vec341 = and i64 %5, -8                      ; 3 uses
  %i.cp = add nsw i64 %n.vec341, %i.bj
  %cmp.n348 = icmp eq i64 %5, %n.vec341
  %i.cq = add i32 %2, -1                          ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check320 = icmp ult i32 %i.cq, 7
  %invariant.op462 = sub i32 -2, %2
  %invariant.op464 = sub i32 -2, %2
  %invariant.op466 = sub i32 -2, %2
  %n.vec322 = and i64 %i.cs, 8589934588           ; 3 uses
  %i.ct = add nuw nsw i64 %n.vec322, %i.bq
  %broadcast.splatinsert327 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat328 = shufflevector <4 x i32> %broadcast.splatinsert327, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n336 = icmp eq i64 %i.cs, %n.vec322
  br label %bb.j

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.at, ptr %i.cu, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.at, ptr %i.cv, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.av
  br i1 %.not.not, label %scalar.ph, label %.preheader, !llvm.loop !16

bb.j:                                             ; preds = %.lr.ph264, %bb.aa
  %i.cw = phi i32 [ %i.bg, %.lr.ph264 ], [ %i.qp, %bb.aa ] ; 3 uses
  %.0263 = phi i32 [ 0, %.lr.ph264 ], [ %.3.lcssa, %bb.aa ] ; 2 uses
  %.0177262 = phi i32 [ 49152, %.lr.ph264 ], [ %spec.store.select1, %bb.aa ] ; 2 uses
  %i.cx = add nuw nsw i32 %i.cw, 49152            ; 5 uses
  %i.cy = icmp samesign ult i32 %i.cw, 49152      ; 2 uses
  br i1 %i.cy, label %bb.k, label %.lr.ph258.preheader

bb.k:                                             ; preds = %bb.j
  %i.cz = zext nneg i32 %i.cw to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.cz
  %i.db = call ptr @strncpy(ptr noundef nonnull %i.da, ptr noundef nonnull %0, i64 noundef %i.bi) #9 ; 0 uses
  %i.dc = add i32 %i.cx, %i.o                     ; 3 uses
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dd
  store i8 0, ptr %i.de, align 1, !tbaa !8
  %i.df = icmp ugt i32 %i.dc, 49152
  br i1 %i.df, label %.lr.ph258.preheader, label %._crit_edge259

.lr.ph258.preheader:                              ; preds = %bb.j, %bb.k
  %.0173317 = phi i32 [ %i.dc, %bb.k ], [ %i.cx, %bb.j ]
  %.pre = load i32, ptr @Init1, align 4, !tbaa !4
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %.loopexit
  %i.dg = phi i32 [ %i.qe, %.loopexit ], [ %.pre, %.lr.ph258.preheader ] ; 4 uses
  %.3256 = phi i32 [ %.5, %.loopexit ], [ %.0263, %.lr.ph258.preheader ] ; 2 uses
  %.2176255 = phi i32 [ %i.ju, %.loopexit ], [ 49152, %.lr.ph258.preheader ] ; 4 uses
  %.1178254 = phi i32 [ %.3180, %.loopexit ], [ %.0177262, %.lr.ph258.preheader ] ; 3 uses
  %i.dh = or disjoint i32 %.2176255, 1            ; 2 uses
  %i.di = zext i32 %.2176255 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 2, !tbaa !8
  %i.dl = sext i8 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr @Mask, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4  ; 6 uses
  %i.do = load i32, ptr %i.bk, align 4, !tbaa !4  ; 3 uses
  %i.dp = and i32 %i.do, %i.dg
  %i.dq = lshr i32 %i.do, 1
  %i.dr = and i32 %i.dq, %i.dn                    ; 2 uses
  %i.ds = or i32 %i.dr, %i.dp                     ; 2 uses
  store i32 %i.ds, ptr %i.bl, align 4, !tbaa !4
  br i1 %.not197226, label %._crit_edge230, label %.lr.ph229

.lr.ph229:                                        ; preds = %.lr.ph258
  %i.dt = load i32, ptr @I, align 4, !tbaa !4     ; 3 uses
  %i.du = load i32, ptr @DD, align 4, !tbaa !4    ; 4 uses
  %i.dv = load i32, ptr @S, align 4, !tbaa !4     ; 3 uses
  br i1 %min.iters.check412, label %scalar.ph411.preheader, label %vector.scevcheck408

vector.scevcheck408:                              ; preds = %.lr.ph229
  %.reass = add i32 %i.du, %invariant.op
  %i.dw = icmp ult i32 %.reass, %i.bv
  %.reass447 = add i32 %i.dt, %invariant.op446
  %i.dx = icmp ult i32 %.reass447, %i.bv
  %.reass449 = add i32 %i.dv, %invariant.op448
  %i.dy = icmp ult i32 %.reass449, %i.bv
  %i.dz = or i1 %i.dw, %i.dx
  %i.ea = or i1 %i.dz, %i.dy
  br i1 %i.ea, label %scalar.ph411.preheader, label %vector.memcheck409

vector.memcheck409:                               ; preds = %vector.scevcheck408
  %i.eb = sub i32 %i.bx, %i.du
  %i.ec = zext i32 %i.eb to i64
  %i.ed = sub nsw i64 %i.bq, %i.ec
  %i.ee = shl nsw i64 %i.ed, 2
  %i.ef = add nsw i64 %i.ee, -1
  %diff.check410 = icmp ult i64 %i.ef, 15
  br i1 %diff.check410, label %scalar.ph411.preheader, label %vector.ph413

vector.ph413:                                     ; preds = %vector.memcheck409
  %broadcast.splatinsert415 = insertelement <4 x i32> poison, i32 %i.dg, i64 0
  %broadcast.splat416 = shufflevector <4 x i32> %broadcast.splatinsert415, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert417 = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %broadcast.splat418 = shufflevector <4 x i32> %broadcast.splatinsert417, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body421

vector.body421:                                   ; preds = %vector.body421, %vector.ph413
  %index422 = phi i64 [ 0, %vector.ph413 ], [ %index.next427, %vector.body421 ] ; 2 uses
  %i.eg = add nuw i64 %index422, %i.bq            ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eg
  %wide.load423 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !4 ; 2 uses
  %i.ei = and <4 x i32> %wide.load423, %broadcast.splat416
  %i.ej = lshr <4 x i32> %wide.load423, splat (i32 1)
  %i.ek = and <4 x i32> %i.ej, %broadcast.splat418
  %i.el = trunc nuw i64 %i.eg to i32              ; 3 uses
  %i.em = sub i32 %i.el, %i.dt
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.en
  %wide.load424 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !4
  %i.ep = sub i32 %i.el, %i.du
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eq
  %wide.load425 = load <4 x i32>, ptr %i.er, align 4, !tbaa !4
  %i.es = sub i32 %i.el, %i.dv
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.et
  %wide.load426 = load <4 x i32>, ptr %i.eu, align 4, !tbaa !4
  %i.ev = or <4 x i32> %wide.load426, %wide.load425
  %i.ew = lshr <4 x i32> %i.ev, splat (i32 1)
  %i.ex = and <4 x i32> %i.ew, %broadcast.splat420
  %i.ey = or <4 x i32> %wide.load424, %i.ei
  %i.ez = or <4 x i32> %i.ey, %i.ek
  %i.fa = or <4 x i32> %i.ez, %i.ex
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eg
  store <4 x i32> %i.fa, ptr %i.fb, align 4, !tbaa !4
  %index.next427 = add nuw i64 %index422, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next427, %n.vec414
  br i1 %i.fc, label %middle.block428, label %vector.body421, !llvm.loop !17

middle.block428:                                  ; preds = %vector.body421
  br i1 %cmp.n429, label %._crit_edge230.loopexit, label %scalar.ph411.preheader

scalar.ph411.preheader:                           ; preds = %vector.memcheck409, %vector.scevcheck408, %.lr.ph229, %middle.block428
  %indvars.iv268.ph = phi i64 [ %i.bq, %vector.memcheck409 ], [ %i.bq, %vector.scevcheck408 ], [ %i.bq, %.lr.ph229 ], [ %i.cb, %middle.block428 ]
  br label %scalar.ph411

scalar.ph411:                                     ; preds = %scalar.ph411.preheader, %scalar.ph411
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %scalar.ph411 ], [ %indvars.iv268.ph, %scalar.ph411.preheader ] ; 4 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv268
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !4  ; 2 uses
  %i.ff = and i32 %i.fe, %i.dg
  %i.fg = lshr i32 %i.fe, 1
  %i.fh = and i32 %i.fg, %i.dn
  %i.fi = trunc nuw i64 %indvars.iv268 to i32     ; 3 uses
  %i.fj = sub i32 %i.fi, %i.dt
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.fn = sub i32 %i.fi, %i.du
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !4
  %i.fr = sub i32 %i.fi, %i.dv
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4
  %i.fv = or i32 %i.fu, %i.fq
  %i.fw = lshr i32 %i.fv, 1
  %i.fx = and i32 %i.fw, %i.q
  %i.fy = or i32 %i.fm, %i.ff
  %i.fz = or i32 %i.fy, %i.fh
  %i.ga = or i32 %i.fz, %i.fx
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv268
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !4
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next269 to i32
  %exitcond271 = icmp eq i32 %i.br, %lftr.wideiv
  br i1 %exitcond271, label %._crit_edge230.loopexit, label %scalar.ph411, !llvm.loop !18

._crit_edge230.loopexit:                          ; preds = %scalar.ph411, %middle.block428
  %.pre293 = load i32, ptr %i.bl, align 4, !tbaa !4
  br label %._crit_edge230

._crit_edge230:                                   ; preds = %._crit_edge230.loopexit, %.lr.ph258
  %i.gc = phi i32 [ %.pre293, %._crit_edge230.loopexit ], [ %i.ds, %.lr.ph258 ] ; 2 uses
  %i.gd = and i32 %i.gc, %i.r
  %.not198 = icmp eq i32 %i.gd, 0
  br i1 %.not198, label %.loopexit211, label %bb.l

bb.l:                                             ; preds = %._crit_edge230
  %i.ge = add nsw i32 %.3256, 1                   ; 3 uses
  %i.gf = load i32, ptr @AND, align 4, !tbaa !4
  switch i32 %i.gf, label %.thread [
    i32 1, label %bb.m
    i32 0, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.gg = load i32, ptr %i.bn, align 8, !tbaa !4
  %i.gh = load i32, ptr @endposition, align 4, !tbaa !4 ; 2 uses
  %i.gi = and i32 %i.gh, %i.gg
  %i.gj = icmp eq i32 %i.gi, %i.gh
  br i1 %i.gj, label %bb.o, label %.thread

bb.n:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1_@asearch1:bb.a
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %scalar.ph338 ], [ %indvars.iv285.ph, %scalar.ph338.preheader ] ; 4 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv285
  store i32 %i.nh, ptr %i.no, align 4, !tbaa !4
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv285
  store i32 %i.nh, ptr %i.np, align 4, !tbaa !4
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1
  %.not207.not = icmp samesign ult i64 %indvars.iv285, %i.bm
  br i1 %.not207.not, label %scalar.ph338, label %._crit_edge249.loopexit, !llvm.loop !26

._crit_edge249.loopexit:                          ; preds = %scalar.ph338, %middle.block347
  %.pre297 = load i32, ptr %i.bl, align 4, !tbaa !4 ; 2 uses
  %.pre298 = lshr i32 %.pre297, 1
  %.pre299 = and i32 %.pre298, %i.ka
  br label %._crit_edge249

._crit_edge249:                                   ; preds = %._crit_edge249.loopexit, %bb.y
  %.pre-phi300 = phi i32 [ %.pre299, %._crit_edge249.loopexit ], [ %i.kd, %bb.y ]
  %i.nq = phi i32 [ %.pre297, %._crit_edge249.loopexit ], [ %i.jt, %bb.y ]
  %i.nr = load i32, ptr @Init1, align 4, !tbaa !4 ; 6 uses
  %i.ns = and i32 %i.nq, %i.nr
  %i.nt = or i32 %.pre-phi300, %i.ns
  %i.nu = and i32 %i.nt, %i.ao
  store i32 %i.nu, ptr %i.bk, align 4, !tbaa !4
  br i1 %.not197226, label %.loopexit, label %.lr.ph253

.lr.ph253:                                        ; preds = %._crit_edge249
  %i.nv = load i32, ptr @I, align 4, !tbaa !4     ; 3 uses
  %i.nw = load i32, ptr @DD, align 4, !tbaa !4    ; 4 uses
  %i.nx = load i32, ptr @S, align 4, !tbaa !4     ; 3 uses
  br i1 %min.iters.check320, label %scalar.ph319.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph253
  %.reass463 = add i32 %i.nw, %invariant.op462
  %i.ny = icmp ult i32 %.reass463, %i.bs
  %.reass465 = add i32 %i.nv, %invariant.op464
  %i.nz = icmp ult i32 %.reass465, %i.bs
  %.reass467 = add i32 %i.nx, %invariant.op466
  %i.oa = icmp ult i32 %.reass467, %i.bs
  %i.ob = or i1 %i.ny, %i.nz
  %i.oc = or i1 %i.ob, %i.oa
  br i1 %i.oc, label %scalar.ph319.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.od = sub i32 %i.bt, %i.nw
  %i.oe = zext i32 %i.od to i64
  %i.of = sub nsw i64 %i.bq, %i.oe
  %i.og = shl nsw i64 %i.of, 2
  %i.oh = add nsw i64 %i.og, -1
  %diff.check = icmp ult i64 %i.oh, 15
  br i1 %diff.check, label %scalar.ph319.preheader, label %vector.ph321

vector.ph321:                                     ; preds = %vector.memcheck
  %broadcast.splatinsert323 = insertelement <4 x i32> poison, i32 %i.nr, i64 0
  %broadcast.splat324 = shufflevector <4 x i32> %broadcast.splatinsert323, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert325 = insertelement <4 x i32> poison, i32 %i.ka, i64 0
  %broadcast.splat326 = shufflevector <4 x i32> %broadcast.splatinsert325, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph321
  %index330 = phi i64 [ 0, %vector.ph321 ], [ %index.next334, %vector.body329 ] ; 2 uses
  %i.oi = add nuw i64 %index330, %i.bq            ; 3 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oi
  %wide.load = load <4 x i32>, ptr %i.oj, align 4, !tbaa !4 ; 2 uses
  %i.ok = and <4 x i32> %wide.load, %broadcast.splat324
  %i.ol = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.om = and <4 x i32> %i.ol, %broadcast.splat326
  %i.on = trunc nuw i64 %i.oi to i32              ; 3 uses
  %i.oo = sub i32 %i.on, %i.nv
  %i.op = zext i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.op
  %wide.load331 = load <4 x i32>, ptr %i.oq, align 4, !tbaa !4
  %i.or = sub i32 %i.on, %i.nw
  %i.os = zext i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.os
  %wide.load332 = load <4 x i32>, ptr %i.ot, align 4, !tbaa !4
  %i.ou = sub i32 %i.on, %i.nx
  %i.ov = zext i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ov
  %wide.load333 = load <4 x i32>, ptr %i.ow, align 4, !tbaa !4
  %i.ox = or <4 x i32> %wide.load333, %wide.load332
  %i.oy = lshr <4 x i32> %i.ox, splat (i32 1)
  %i.oz = and <4 x i32> %i.oy, %broadcast.splat328
  %i.pa = or <4 x i32> %wide.load331, %i.ok
  %i.pb = or <4 x i32> %i.pa, %i.om
  %i.pc = or <4 x i32> %i.pb, %i.oz
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.oi
  store <4 x i32> %i.pc, ptr %i.pd, align 4, !tbaa !4
  %index.next334 = add nuw i64 %index330, 4       ; 2 uses
  %i.pe = icmp eq i64 %index.next334, %n.vec322
  br i1 %i.pe, label %middle.block335, label %vector.body329, !llvm.loop !27

middle.block335:                                  ; preds = %vector.body329
  br i1 %cmp.n336, label %.loopexit, label %scalar.ph319.preheader

scalar.ph319.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph253, %middle.block335
  %indvars.iv288.ph = phi i64 [ %i.bq, %vector.memcheck ], [ %i.bq, %vector.scevcheck ], [ %i.bq, %.lr.ph253 ], [ %i.ct, %middle.block335 ]
  br label %scalar.ph319

scalar.ph319:                                     ; preds = %scalar.ph319.preheader, %scalar.ph319
  %indvars.iv288 = phi i64 [ %indvars.iv.next289, %scalar.ph319 ], [ %indvars.iv288.ph, %scalar.ph319.preheader ] ; 4 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv288
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !4  ; 2 uses
  %i.ph = and i32 %i.pg, %i.nr
  %i.pi = lshr i32 %i.pg, 1
  %i.pj = and i32 %i.pi, %i.ka
  %i.pk = trunc nuw i64 %indvars.iv288 to i32     ; 3 uses
  %i.pl = sub i32 %i.pk, %i.nv
  %i.pm = zext i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !4
  %i.pp = sub i32 %i.pk, %i.nw
  %i.pq = zext i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !4
  %i.pt = sub i32 %i.pk, %i.nx
  %i.pu = zext i32 %i.pt to i64
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pu
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !4
  %i.px = or i32 %i.pw, %i.ps
  %i.py = lshr i32 %i.px, 1
  %i.pz = and i32 %i.py, %i.q
  %i.qa = or i32 %i.po, %i.ph
  %i.qb = or i32 %i.qa, %i.pj
  %i.qc = or i32 %i.qb, %i.pz
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv288
  store i32 %i.qc, ptr %i.qd, align 4, !tbaa !4
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %lftr.wideiv291 = trunc i64 %indvars.iv.next289 to i32
  %exitcond292 = icmp eq i32 %i.br, %lftr.wideiv291
  br i1 %exitcond292, label %.loopexit, label %scalar.ph319, !llvm.loop !28

.loopexit:                                        ; preds = %scalar.ph319, %middle.block335, %._crit_edge249, %._crit_edge244
  %i.qe = phi i32 [ %i.js, %._crit_edge244 ], [ %i.nr, %._crit_edge249 ], [ %i.nr, %middle.block335 ], [ %i.nr, %scalar.ph319 ]
  %.3180 = phi i32 [ %.2179, %._crit_edge244 ], [ %i.ng, %._crit_edge249 ], [ %i.ng, %middle.block335 ], [ %i.ng, %scalar.ph319 ] ; 2 uses
  %.5 = phi i32 [ %.4, %._crit_edge244 ], [ %i.mq, %._crit_edge249 ], [ %i.mq, %middle.block335 ], [ %i.mq, %scalar.ph319 ] ; 2 uses
  %i.qf = icmp ult i32 %i.ju, %.0173317
  br i1 %i.qf, label %.lr.ph258, label %._crit_edge259, !llvm.loop !29

._crit_edge259:                                   ; preds = %.loopexit, %bb.k
  %.1178.lcssa = phi i32 [ %.0177262, %bb.k ], [ %.3180, %.loopexit ] ; 2 uses
  %.3.lcssa = phi i32 [ %.0263, %bb.k ], [ %.5, %.loopexit ]
  %i.qg = sub nsw i32 %i.cx, %.1178.lcssa         ; 2 uses
  %i.qh = icmp sgt i32 %i.qg, 49152
  br i1 %i.qh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge259
  store i32 1, ptr @TRUNCATE, align 4, !tbaa !4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge259
  %.0181 = phi i32 [ 49152, %bb.z ], [ %i.qg, %._crit_edge259 ] ; 2 uses
  %i.qi = sext i32 %.0181 to i64                  ; 2 uses
  %i.qj = sub nsw i64 0, %i.qi
  %i.qk = getelementptr inbounds i8, ptr %i.bf, i64 %i.qj
  %i.ql = sext i32 %.1178.lcssa to i64
  %i.qm = getelementptr inbounds i8, ptr %i.c, i64 %i.ql
  %i.qn = call ptr @strncpy(ptr noundef nonnull %i.qk, ptr noundef nonnull %i.qm, i64 noundef %i.qi) #9 ; 0 uses
  %i.qo = sub nsw i32 49152, %.0181
  %spec.store.select1 = select i1 %i.cy, i32 49152, i32 %i.qo
  %i.qp = call i32 @fill_buf(i32 noundef %1, ptr noundef nonnull %i.bf, i32 noundef 49152) #9 ; 2 uses
  %i.qq = icmp sgt i32 %i.qp, 0
  br i1 %i.qq, label %bb.j, label %.loopexit212, !llvm.loop !30

.loopexit212.sink.split:                          ; preds = %bb.v, %bb.o
  %i.qr = load i32, ptr @num_of_matched, align 4, !tbaa !4
  %i.qs = add nsw i32 %i.qr, 1
  store i32 %i.qs, ptr @num_of_matched, align 4, !tbaa !4
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName) ; 0 uses
  br label %.loopexit212

.loopexit212:                                     ; preds = %bb.aa, %.loopexit212.sink.split, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @fill_buf(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #4

declare void @output(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !10, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10, !15, !14}
!17 = distinct !{!17, !10, !14, !15}
!18 = distinct !{!18, !10, !14}
!19 = distinct !{!19, !10, !14, !15}
!20 = distinct !{!20, !10, !15, !14}
!21 = distinct !{!21, !10, !14, !15}
!22 = distinct !{!22, !10, !14}
!23 = distinct !{!23, !10, !14, !15}
!24 = distinct !{!24, !10, !14}
!25 = distinct !{!25, !10, !14, !15}
!26 = distinct !{!26, !10, !15, !14}
!27 = distinct !{!27, !10, !14, !15}
!28 = distinct !{!28, !10, !14}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
end_hunk_1
