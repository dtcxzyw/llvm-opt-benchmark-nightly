loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
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
  %lcmp.mod459 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod459)
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
  %umax = tail call i64 @llvm.umax.i64(i64 %i.au, i64 %i.av)
  %i.aw = add nuw nsw i64 %umax, 1
  %i.ax = sub nsw i64 %i.aw, %i.au                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph225
  %n.vec = and i64 %i.ax, -8                      ; 3 uses
  %i.ay = add nsw i64 %n.vec, %i.au
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = add i64 %index, %i.au                   ; 2 uses
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
  %cmp.n = icmp eq i64 %i.ax, %n.vec
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
  %i.bs = add i32 %2, -1                          ; 5 uses
  %i.bt = add i32 %2, 1
  %3 = zext i32 %i.bs to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %umax341 = call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bm)
  %i.bu = add nuw nsw i64 %umax341, 1
  %i.bv = sub nsw i64 %i.bu, %i.bj                ; 3 uses
  %i.bw = add i32 %2, -1                          ; 5 uses
  %i.bx = add i32 %2, 1
  %5 = zext i32 %i.bw to i64
  %6 = add nuw nsw i64 %5, 1                      ; 2 uses
  %7 = add i32 %2, -1                             ; 5 uses
  %i.by = add i32 %2, 1
  %8 = zext i32 %7 to i64
  %9 = add nuw nsw i64 %8, 1                      ; 2 uses
  %umax407 = call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bm)
  %i.bz = add nuw nsw i64 %umax407, 1
  %i.ca = sub nsw i64 %i.bz, %i.bj                ; 3 uses
  %i.cb = add i32 %2, -1                          ; 5 uses
  %i.cc = add i32 %2, 1
  %i.cd = zext i32 %i.cb to i64
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check427 = icmp ult i32 %i.cb, 7
  %invariant.op = sub i32 -2, %2
  %invariant.op462 = sub i32 -2, %2
  %invariant.op464 = sub i32 -2, %2
  %n.vec430 = and i64 %i.ce, 8589934588           ; 3 uses
  %i.cf = add nuw nsw i64 %n.vec430, %i.bq
  %broadcast.splatinsert435 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat436 = shufflevector <4 x i32> %broadcast.splatinsert435, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n445 = icmp eq i64 %i.ce, %n.vec430
  %min.iters.check409 = icmp ult i64 %i.ca, 8
  %n.vec412 = and i64 %i.ca, -8                   ; 3 uses
  %i.cg = add nsw i64 %n.vec412, %i.bj
  %cmp.n419 = icmp eq i64 %i.ca, %n.vec412
  %min.iters.check387 = icmp ult i32 %7, 7
  %invariant.op466 = sub i32 -2, %2
  %invariant.op468 = sub i32 -2, %2
  %invariant.op470 = sub i32 -2, %2
  %n.vec390 = and i64 %9, 8589934588              ; 3 uses
  %i.ch = add nuw nsw i64 %n.vec390, %i.bq
  %broadcast.splatinsert395 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat396 = shufflevector <4 x i32> %broadcast.splatinsert395, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n405 = icmp eq i64 %9, %n.vec390
  %min.iters.check361 = icmp ult i32 %i.bw, 7
  %invariant.op472 = sub i32 -2, %2
  %invariant.op474 = sub i32 -2, %2
  %invariant.op476 = sub i32 -2, %2
  %n.vec364 = and i64 %6, 8589934588              ; 3 uses
  %i.ci = add nuw nsw i64 %n.vec364, %i.bq
  %broadcast.splatinsert369 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat370 = shufflevector <4 x i32> %broadcast.splatinsert369, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n379 = icmp eq i64 %6, %n.vec364
  %min.iters.check343 = icmp ult i64 %i.bv, 8
  %n.vec346 = and i64 %i.bv, -8                   ; 3 uses
  %i.cj = add nsw i64 %n.vec346, %i.bj
  %cmp.n353 = icmp eq i64 %i.bv, %n.vec346
  %min.iters.check322 = icmp ult i32 %i.bs, 7
  %invariant.op478 = sub i32 -2, %2
  %invariant.op480 = sub i32 -2, %2
  %invariant.op482 = sub i32 -2, %2
  %n.vec325 = and i64 %4, 8589934588              ; 3 uses
  %i.ck = add nuw nsw i64 %n.vec325, %i.bq
  %broadcast.splatinsert330 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat331 = shufflevector <4 x i32> %broadcast.splatinsert330, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n339 = icmp eq i64 %4, %n.vec325
  br label %bb.j

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.at, ptr %i.cl, align 4, !tbaa !4
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.at, ptr %i.cm, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.av
  br i1 %.not.not, label %scalar.ph, label %.preheader, !llvm.loop !16

bb.j:                                             ; preds = %.lr.ph264, %bb.aa
  %i.cn = phi i32 [ %i.bg, %.lr.ph264 ], [ %i.qc, %bb.aa ] ; 3 uses
  %.0263 = phi i32 [ 0, %.lr.ph264 ], [ %.3.lcssa, %bb.aa ] ; 2 uses
  %.0177262 = phi i32 [ 49152, %.lr.ph264 ], [ %spec.store.select1, %bb.aa ] ; 2 uses
  %i.co = add nuw nsw i32 %i.cn, 49152            ; 5 uses
  %i.cp = icmp samesign ult i32 %i.cn, 49152      ; 2 uses
  br i1 %i.cp, label %bb.k, label %.lr.ph258.preheader

bb.k:                                             ; preds = %bb.j
  %i.cq = zext nneg i32 %i.cn to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.cq
  %i.cs = call ptr @strncpy(ptr noundef nonnull %i.cr, ptr noundef nonnull %0, i64 noundef %i.bi) #9 ; 0 uses
  %i.ct = add i32 %i.co, %i.o                     ; 3 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cu
  store i8 0, ptr %i.cv, align 1, !tbaa !8
  %i.cw = icmp ugt i32 %i.ct, 49152
  br i1 %i.cw, label %.lr.ph258.preheader, label %._crit_edge259

.lr.ph258.preheader:                              ; preds = %bb.j, %bb.k
  %.0173317 = phi i32 [ %i.ct, %bb.k ], [ %i.co, %bb.j ]
  %.pre = load i32, ptr @Init1, align 4, !tbaa !4
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %.loopexit
  %i.cx = phi i32 [ %i.pr, %.loopexit ], [ %.pre, %.lr.ph258.preheader ] ; 4 uses
  %.3256 = phi i32 [ %.5, %.loopexit ], [ %.0263, %.lr.ph258.preheader ] ; 2 uses
  %.2176255 = phi i32 [ %i.jj, %.loopexit ], [ 49152, %.lr.ph258.preheader ] ; 4 uses
  %.1178254 = phi i32 [ %.3180, %.loopexit ], [ %.0177262, %.lr.ph258.preheader ] ; 3 uses
  %i.cy = or disjoint i32 %.2176255, 1            ; 2 uses
  %i.cz = zext i32 %.2176255 to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 2, !tbaa !8
  %i.dc = sext i8 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr @Mask, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !4  ; 6 uses
  %i.df = load i32, ptr %i.bk, align 4, !tbaa !4  ; 3 uses
  %i.dg = and i32 %i.df, %i.cx
  %i.dh = lshr i32 %i.df, 1
  %i.di = and i32 %i.dh, %i.de                    ; 2 uses
  %i.dj = or i32 %i.di, %i.dg                     ; 2 uses
  store i32 %i.dj, ptr %i.bl, align 4, !tbaa !4
  br i1 %.not197226, label %._crit_edge230, label %.lr.ph229

.lr.ph229:                                        ; preds = %.lr.ph258
  %i.dk = load i32, ptr @I, align 4, !tbaa !4     ; 3 uses
  %i.dl = load i32, ptr @DD, align 4, !tbaa !4    ; 4 uses
  %i.dm = load i32, ptr @S, align 4, !tbaa !4     ; 3 uses
  br i1 %min.iters.check427, label %scalar.ph426.preheader, label %vector.scevcheck421

vector.scevcheck421:                              ; preds = %.lr.ph229
  %.reass = add i32 %i.dl, %invariant.op
  %i.dn = icmp ult i32 %.reass, %i.cb
  %.reass463 = add i32 %i.dk, %invariant.op462
  %i.do = icmp ult i32 %.reass463, %i.cb
  %.reass465 = add i32 %i.dm, %invariant.op464
  %i.dp = icmp ult i32 %.reass465, %i.cb
  %i.dq = or i1 %i.dn, %i.do
  %i.dr = or i1 %i.dq, %i.dp
  br i1 %i.dr, label %scalar.ph426.preheader, label %vector.memcheck424

vector.memcheck424:                               ; preds = %vector.scevcheck421
  %i.ds = sub i32 %i.cc, %i.dl
  %i.dt = zext i32 %i.ds to i64
  %i.du = sub nsw i64 %i.bq, %i.dt
  %i.dv = and i64 %i.du, 4611686018427387900
  %diff.check425 = icmp eq i64 %i.dv, 0
  br i1 %diff.check425, label %scalar.ph426.preheader, label %vector.ph428

vector.ph428:                                     ; preds = %vector.memcheck424
  %broadcast.splatinsert431 = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %broadcast.splat432 = shufflevector <4 x i32> %broadcast.splatinsert431, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert433 = insertelement <4 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat434 = shufflevector <4 x i32> %broadcast.splatinsert433, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body437

vector.body437:                                   ; preds = %vector.body437, %vector.ph428
  %index438 = phi i64 [ 0, %vector.ph428 ], [ %index.next443, %vector.body437 ] ; 2 uses
  %i.dw = add i64 %index438, %i.bq                ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dw
  %wide.load439 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !4 ; 2 uses
  %i.dy = and <4 x i32> %wide.load439, %broadcast.splat432
  %i.dz = lshr <4 x i32> %wide.load439, splat (i32 1)
  %i.ea = and <4 x i32> %i.dz, %broadcast.splat434
  %i.eb = trunc nuw i64 %i.dw to i32              ; 3 uses
  %i.ec = sub i32 %i.eb, %i.dk
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ed
  %wide.load440 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !4
  %i.ef = sub i32 %i.eb, %i.dl
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eg
  %wide.load441 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !4
  %i.ei = sub i32 %i.eb, %i.dm
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ej
  %wide.load442 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !4
  %i.el = or <4 x i32> %wide.load442, %wide.load441
  %i.em = lshr <4 x i32> %i.el, splat (i32 1)
  %i.en = and <4 x i32> %i.em, %broadcast.splat436
  %i.eo = or <4 x i32> %wide.load440, %i.dy
  %i.ep = or <4 x i32> %i.eo, %i.ea
  %i.eq = or <4 x i32> %i.ep, %i.en
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dw
  store <4 x i32> %i.eq, ptr %i.er, align 4, !tbaa !4
  %index.next443 = add nuw i64 %index438, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next443, %n.vec430
  br i1 %i.es, label %middle.block444, label %vector.body437, !llvm.loop !17

middle.block444:                                  ; preds = %vector.body437
  br i1 %cmp.n445, label %._crit_edge230.loopexit, label %scalar.ph426.preheader

scalar.ph426.preheader:                           ; preds = %vector.memcheck424, %vector.scevcheck421, %.lr.ph229, %middle.block444
  %indvars.iv268.ph = phi i64 [ %i.bq, %vector.memcheck424 ], [ %i.bq, %vector.scevcheck421 ], [ %i.bq, %.lr.ph229 ], [ %i.cf, %middle.block444 ]
  br label %scalar.ph426

scalar.ph426:                                     ; preds = %scalar.ph426.preheader, %scalar.ph426
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %scalar.ph426 ], [ %indvars.iv268.ph, %scalar.ph426.preheader ] ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv268
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !4  ; 2 uses
  %i.ev = and i32 %i.eu, %i.cx
  %i.ew = lshr i32 %i.eu, 1
  %i.ex = and i32 %i.ew, %i.de
  %i.ey = trunc nuw i64 %indvars.iv268 to i32     ; 3 uses
  %i.ez = sub i32 %i.ey, %i.dk
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4
  %i.fd = sub i32 %i.ey, %i.dl
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !4
  %i.fh = sub i32 %i.ey, %i.dm
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !4
  %i.fl = or i32 %i.fk, %i.fg
  %i.fm = lshr i32 %i.fl, 1
  %i.fn = and i32 %i.fm, %i.q
  %i.fo = or i32 %i.fc, %i.ev
  %i.fp = or i32 %i.fo, %i.ex
  %i.fq = or i32 %i.fp, %i.fn
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv268
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !4
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next269 to i32
  %exitcond271 = icmp eq i32 %i.br, %lftr.wideiv
  br i1 %exitcond271, label %._crit_edge230.loopexit, label %scalar.ph426, !llvm.loop !18

._crit_edge230.loopexit:                          ; preds = %scalar.ph426, %middle.block444
  %.pre293 = load i32, ptr %i.bl, align 4, !tbaa !4
  br label %._crit_edge230

._crit_edge230:                                   ; preds = %._crit_edge230.loopexit, %.lr.ph258
  %i.fs = phi i32 [ %.pre293, %._crit_edge230.loopexit ], [ %i.dj, %.lr.ph258 ] ; 2 uses
  %i.ft = and i32 %i.fs, %i.r
  %.not198 = icmp eq i32 %i.ft, 0
  br i1 %.not198, label %.loopexit211, label %bb.l

bb.l:                                             ; preds = %._crit_edge230
  %i.fu = add nsw i32 %.3256, 1                   ; 3 uses
  %i.fv = load i32, ptr @AND, align 4, !tbaa !4
  switch i32 %i.fv, label %.thread [
    i32 1, label %bb.m
    i32 0, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.fw = load i32, ptr %i.bn, align 8, !tbaa !4
  %i.fx = load i32, ptr @endposition, align 4, !tbaa !4 ; 2 uses
  %i.fy = and i32 %i.fx, %i.fw
  %i.fz = icmp eq i32 %i.fy, %i.fx
  br i1 %i.fz, label %bb.o, label %.thread

bb.n:                                             ; preds = %bb.l
  %i.ga = load i32, ptr %i.bn, align 8, !tbaa !4
  %i.gb = load i32, ptr @endposition, align 4, !tbaa !4
  %i.gc = and i32 %i.gb, %i.ga
  %i.gd = icmp ne i32 %i.gc, 0
  %i.ge = zext i1 %i.gd to i32
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.m, %bb.n
  %i.gf = phi i32 [ 0, %bb.l ], [ %i.ge, %bb.n ], [ 0, %bb.m ]
  %i.gg = load i32, ptr @INVERSE, align 4, !tbaa !4
  %.not199 = icmp eq i32 %i.gf, %i.gg
  br i1 %.not199, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.thread, %bb.m
  %i.gh = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %.not200 = icmp eq i32 %i.gh, 0
  br i1 %.not200, label %bb.p, label %.loopexit212.sink.split

bb.p:                                             ; preds = %bb.o
  %i.gi = icmp slt i32 %.1178254, %i.co
  br i1 %i.gi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gj = sub i32 %.2176255, %i.o
  call void @output(ptr noundef nonnull %i.c, i32 noundef %.1178254, i32 noundef %i.gj, i32 noundef %i.fu) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %.thread
  %i.gk = sub i32 %i.cy, %i.o                     ; 2 uses
  store i32 0, ptr @TRUNCATE, align 4, !tbaa !4
  br i1 %.not223314, label %._crit_edge235, label %.lr.ph234

.lr.ph234:                                        ; preds = %bb.r
  %i.gl = load i32, ptr @Init, align 4, !tbaa !4  ; 3 uses
  br i1 %min.iters.check409, label %scalar.ph408.preheader, label %vector.ph410

vector.ph410:                                     ; preds = %.lr.ph234
  %broadcast.splatinsert413 = insertelement <4 x i32> poison, i32 %i.gl, i64 0
  %broadcast.splat414 = shufflevector <4 x i32> %broadcast.splatinsert413, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body415

vector.body415:                                   ; preds = %vector.body415, %vector.ph410
  %index416 = phi i64 [ 0, %vector.ph410 ], [ %index.next417, %vector.body415 ] ; 2 uses
  %i.gm = add i64 %index416, %i.bj                ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store <4 x i32> %broadcast.splat414, ptr %i.gn, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat414, ptr %i.go, align 4, !tbaa !4
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gm ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <4 x i32> %broadcast.splat414, ptr %i.gp, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat414, ptr %i.gq, align 4, !tbaa !4
  %index.next417 = add nuw i64 %index416, 8       ; 2 uses
  %i.gr = icmp eq i64 %index.next417, %n.vec412
  br i1 %i.gr, label %middle.block418, label %vector.body415, !llvm.loop !19

middle.block418:                                  ; preds = %vector.body415
  br i1 %cmp.n419, label %._crit_edge235.loopexit, label %scalar.ph408.preheader

scalar.ph408.preheader:                           ; preds = %.lr.ph234, %middle.block418
  %indvars.iv272.ph = phi i64 [ %i.bj, %.lr.ph234 ], [ %i.cg, %middle.block418 ]
  br label %scalar.ph408

scalar.ph408:                                     ; preds = %scalar.ph408.preheader, %scalar.ph408
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %scalar.ph408 ], [ %indvars.iv272.ph, %scalar.ph408.preheader ] ; 4 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv272
  store i32 %i.gl, ptr %i.gs, align 4, !tbaa !4
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv272
  store i32 %i.gl, ptr %i.gt, align 4, !tbaa !4
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1
  %.not201.not = icmp samesign ult i64 %indvars.iv272, %i.bm
  br i1 %.not201.not, label %scalar.ph408, label %._crit_edge235.loopexit, !llvm.loop !20

._crit_edge235.loopexit:                          ; preds = %scalar.ph408, %middle.block418
  %.pre294 = load i32, ptr %i.bk, align 4, !tbaa !4 ; 2 uses
  %.pre301 = lshr i32 %.pre294, 1
  %.pre303 = and i32 %.pre301, %i.de
  br label %._crit_edge235

._crit_edge235:                                   ; preds = %._crit_edge235.loopexit, %bb.r
  %.pre-phi304 = phi i32 [ %.pre303, %._crit_edge235.loopexit ], [ %i.di, %bb.r ]
  %i.gu = phi i32 [ %.pre294, %._crit_edge235.loopexit ], [ %i.df, %bb.r ]
  %i.gv = load i32, ptr @Init1, align 4, !tbaa !4 ; 5 uses
  %i.gw = and i32 %i.gu, %i.gv
  %i.gx = or i32 %.pre-phi304, %i.gw
  %i.gy = and i32 %i.gx, %i.ao                    ; 2 uses
  store i32 %i.gy, ptr %i.bl, align 4, !tbaa !4
  br i1 %.not197226, label %.loopexit211, label %.lr.ph239

.lr.ph239:                                        ; preds = %._crit_edge235
  %i.gz = load i32, ptr @I, align 4, !tbaa !4     ; 3 uses
  %i.ha = load i32, ptr @DD, align 4, !tbaa !4    ; 4 uses
  %i.hb = load i32, ptr @S, align 4, !tbaa !4     ; 3 uses
  br i1 %min.iters.check387, label %scalar.ph386.preheader, label %vector.scevcheck381

vector.scevcheck381:                              ; preds = %.lr.ph239
  %.reass467 = add i32 %i.ha, %invariant.op466
  %i.hc = icmp ult i32 %.reass467, %7
  %.reass469 = add i32 %i.gz, %invariant.op468
  %i.hd = icmp ult i32 %.reass469, %7
  %.reass471 = add i32 %i.hb, %invariant.op470
  %i.he = icmp ult i32 %.reass471, %7
  %i.hf = or i1 %i.hc, %i.hd
  %i.hg = or i1 %i.hf, %i.he
  br i1 %i.hg, label %scalar.ph386.preheader, label %vector.memcheck384

vector.memcheck384:                               ; preds = %vector.scevcheck381
  %i.hh = sub i32 %i.by, %i.ha
  %i.hi = zext i32 %i.hh to i64
  %i.hj = sub nsw i64 %i.bq, %i.hi
  %i.hk = and i64 %i.hj, 4611686018427387900
  %diff.check385 = icmp eq i64 %i.hk, 0
  br i1 %diff.check385, label %scalar.ph386.preheader, label %vector.ph388

vector.ph388:                                     ; preds = %vector.memcheck384
  %broadcast.splatinsert391 = insertelement <4 x i32> poison, i32 %i.gv, i64 0
  %broadcast.splat392 = shufflevector <4 x i32> %broadcast.splatinsert391, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert393 = insertelement <4 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat394 = shufflevector <4 x i32> %broadcast.splatinsert393, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph388
  %index398 = phi i64 [ 0, %vector.ph388 ], [ %index.next403, %vector.body397 ] ; 2 uses
  %i.hl = add i64 %index398, %i.bq                ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hl
  %wide.load399 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !4 ; 2 uses
  %i.hn = and <4 x i32> %wide.load399, %broadcast.splat392
  %i.ho = lshr <4 x i32> %wide.load399, splat (i32 1)
  %i.hp = and <4 x i32> %i.ho, %broadcast.splat394
  %i.hq = trunc nuw i64 %i.hl to i32              ; 3 uses
  %i.hr = sub i32 %i.hq, %i.gz
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hs
  %wide.load400 = load <4 x i32>, ptr %i.ht, align 4, !tbaa !4
  %i.hu = sub i32 %i.hq, %i.ha
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hv
  %wide.load401 = load <4 x i32>, ptr %i.hw, align 4, !tbaa !4
  %i.hx = sub i32 %i.hq, %i.hb
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hy
  %wide.load402 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !4
  %i.ia = or <4 x i32> %wide.load402, %wide.load401
  %i.ib = lshr <4 x i32> %i.ia, splat (i32 1)
  %i.ic = and <4 x i32> %i.ib, %broadcast.splat396
  %i.id = or <4 x i32> %wide.load400, %i.hn
  %i.ie = or <4 x i32> %i.id, %i.hp
  %i.if = or <4 x i32> %i.ie, %i.ic
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hl
  store <4 x i32> %i.if, ptr %i.ig, align 4, !tbaa !4
  %index.next403 = add nuw i64 %index398, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next403, %n.vec390
  br i1 %i.ih, label %middle.block404, label %vector.body397, !llvm.loop !21

middle.block404:                                  ; preds = %vector.body397
  br i1 %cmp.n405, label %.loopexit211.loopexit, label %scalar.ph386.preheader

scalar.ph386.preheader:                           ; preds = %vector.memcheck384, %vector.scevcheck381, %.lr.ph239, %middle.block404
  %indvars.iv275.ph = phi i64 [ %i.bq, %vector.memcheck384 ], [ %i.bq, %vector.scevcheck381 ], [ %i.bq, %.lr.ph239 ], [ %i.ch, %middle.block404 ]
  br label %scalar.ph386

scalar.ph386:                                     ; preds = %scalar.ph386.preheader, %scalar.ph386
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %scalar.ph386 ], [ %indvars.iv275.ph, %scalar.ph386.preheader ] ; 4 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv275
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !4  ; 2 uses
  %i.ik = and i32 %i.ij, %i.gv
  %i.il = lshr i32 %i.ij, 1
  %i.im = and i32 %i.il, %i.de
  %i.in = trunc nuw i64 %indvars.iv275 to i32     ; 3 uses
  %i.io = sub i32 %i.in, %i.gz
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4
  %i.is = sub i32 %i.in, %i.ha
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !4
  %i.iw = sub i32 %i.in, %i.hb
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !4
  %i.ja = or i32 %i.iz, %i.iv
  %i.jb = lshr i32 %i.ja, 1
  %i.jc = and i32 %i.jb, %i.q
  %i.jd = or i32 %i.ir, %i.ik
  %i.je = or i32 %i.jd, %i.im
  %i.jf = or i32 %i.je, %i.jc
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv275
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !4
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %lftr.wideiv278 = trunc i64 %indvars.iv.next276 to i32
  %exitcond279 = icmp eq i32 %i.br, %lftr.wideiv278
  br i1 %exitcond279, label %.loopexit211.loopexit, label %scalar.ph386, !llvm.loop !22

.loopexit211.loopexit:                            ; preds = %scalar.ph386, %middle.block404
  %.pre295 = load i32, ptr %i.bl, align 4, !tbaa !4
  br label %.loopexit211

.loopexit211:                                     ; preds = %.loopexit211.loopexit, %._crit_edge235, %._crit_edge230
  %i.jh = phi i32 [ %i.cx, %._crit_edge230 ], [ %i.gv, %._crit_edge235 ], [ %i.gv, %.loopexit211.loopexit ] ; 4 uses
  %i.ji = phi i32 [ %i.fs, %._crit_edge230 ], [ %i.gy, %._crit_edge235 ], [ %.pre295, %.loopexit211.loopexit ] ; 3 uses
  %.2179 = phi i32 [ %.1178254, %._crit_edge230 ], [ %i.gk, %._crit_edge235 ], [ %i.gk, %.loopexit211.loopexit ] ; 3 uses
  %.4 = phi i32 [ %.3256, %._crit_edge230 ], [ %i.fu, %._crit_edge235 ], [ %i.fu, %.loopexit211.loopexit ] ; 2 uses
  %i.jj = add i32 %.2176255, 2                    ; 4 uses
  %i.jk = zext i32 %i.cy to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !8
  %i.jn = sext i8 %i.jm to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr @Mask, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !4  ; 6 uses
  %i.jq = and i32 %i.jh, %i.ji
  %i.jr = lshr i32 %i.ji, 1
  %i.js = and i32 %i.jr, %i.jp                    ; 2 uses
  %i.jt = or i32 %i.js, %i.jq                     ; 2 uses
  store i32 %i.jt, ptr %i.bk, align 4, !tbaa !4
  br i1 %.not197226, label %._crit_edge244, label %.lr.ph243

.lr.ph243:                                        ; preds = %.loopexit211
  %i.ju = load i32, ptr @I, align 4, !tbaa !4     ; 3 uses
  %i.jv = load i32, ptr @DD, align 4, !tbaa !4    ; 4 uses
  %i.jw = load i32, ptr @S, align 4, !tbaa !4     ; 3 uses
  br i1 %min.iters.check361, label %scalar.ph360.preheader, label %vector.scevcheck355

vector.scevcheck355:                              ; preds = %.lr.ph243
  %.reass473 = add i32 %i.jv, %invariant.op472
  %i.jx = icmp ult i32 %.reass473, %i.bw
  %.reass475 = add i32 %i.ju, %invariant.op474
  %i.jy = icmp ult i32 %.reass475, %i.bw
  %.reass477 = add i32 %i.jw, %invariant.op476
  %i.jz = icmp ult i32 %.reass477, %i.bw
  %i.ka = or i1 %i.jx, %i.jy
  %i.kb = or i1 %i.ka, %i.jz
  br i1 %i.kb, label %scalar.ph360.preheader, label %vector.memcheck358

vector.memcheck358:                               ; preds = %vector.scevcheck355
  %i.kc = sub i32 %i.bx, %i.jv
  %i.kd = zext i32 %i.kc to i64
  %i.ke = sub nsw i64 %i.bq, %i.kd
  %i.kf = and i64 %i.ke, 4611686018427387900
  %diff.check359 = icmp eq i64 %i.kf, 0
  br i1 %diff.check359, label %scalar.ph360.preheader, label %vector.ph362

vector.ph362:                                     ; preds = %vector.memcheck358
  %broadcast.splatinsert365 = insertelement <4 x i32> poison, i32 %i.jh, i64 0
  %broadcast.splat366 = shufflevector <4 x i32> %broadcast.splatinsert365, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert367 = insertelement <4 x i32> poison, i32 %i.jp, i64 0
  %broadcast.splat368 = shufflevector <4 x i32> %broadcast.splatinsert367, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph362
  %index372 = phi i64 [ 0, %vector.ph362 ], [ %index.next377, %vector.body371 ] ; 2 uses
  %i.kg = add i64 %index372, %i.bq                ; 3 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kg
  %wide.load373 = load <4 x i32>, ptr %i.kh, align 4, !tbaa !4 ; 2 uses
  %i.ki = and <4 x i32> %wide.load373, %broadcast.splat366
  %i.kj = lshr <4 x i32> %wide.load373, splat (i32 1)
  %i.kk = and <4 x i32> %i.kj, %broadcast.splat368
  %i.kl = trunc nuw i64 %i.kg to i32              ; 3 uses
  %i.km = sub i32 %i.kl, %i.ju
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kn
  %wide.load374 = load <4 x i32>, ptr %i.ko, align 4, !tbaa !4
  %i.kp = sub i32 %i.kl, %i.jv
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kq
  %wide.load375 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !4
  %i.ks = sub i32 %i.kl, %i.jw
  %i.kt = zext i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kt
  %wide.load376 = load <4 x i32>, ptr %i.ku, align 4, !tbaa !4
  %i.kv = or <4 x i32> %wide.load376, %wide.load375
  %i.kw = lshr <4 x i32> %i.kv, splat (i32 1)
  %i.kx = and <4 x i32> %i.kw, %broadcast.splat370
  %i.ky = or <4 x i32> %wide.load374, %i.ki
  %i.kz = or <4 x i32> %i.ky, %i.kk
  %i.la = or <4 x i32> %i.kz, %i.kx
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kg
  store <4 x i32> %i.la, ptr %i.lb, align 4, !tbaa !4
  %index.next377 = add nuw i64 %index372, 4       ; 2 uses
  %i.lc = icmp eq i64 %index.next377, %n.vec364
  br i1 %i.lc, label %middle.block378, label %vector.body371, !llvm.loop !23

middle.block378:                                  ; preds = %vector.body371
  br i1 %cmp.n379, label %._crit_edge244.loopexit, label %scalar.ph360.preheader

scalar.ph360.preheader:                           ; preds = %vector.memcheck358, %vector.scevcheck355, %.lr.ph243, %middle.block378
  %indvars.iv280.ph = phi i64 [ %i.bq, %vector.memcheck358 ], [ %i.bq, %vector.scevcheck355 ], [ %i.bq, %.lr.ph243 ], [ %i.ci, %middle.block378 ]
  br label %scalar.ph360

scalar.ph360:                                     ; preds = %scalar.ph360.preheader, %scalar.ph360
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %scalar.ph360 ], [ %indvars.iv280.ph, %scalar.ph360.preheader ] ; 4 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv280
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !4  ; 2 uses
  %i.lf = and i32 %i.le, %i.jh
  %i.lg = lshr i32 %i.le, 1
  %i.lh = and i32 %i.lg, %i.jp
  %i.li = trunc nuw i64 %indvars.iv280 to i32     ; 3 uses
  %i.lj = sub i32 %i.li, %i.ju
  %i.lk = zext i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !4
  %i.ln = sub i32 %i.li, %i.jv
end_hunk_0
