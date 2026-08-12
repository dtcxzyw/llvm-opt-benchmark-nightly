inline.NumInlined: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  br i1 %i.el, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %puts471 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.em = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %.0452554, i32 noundef %.0450552, i32 noundef %.0448550) ; 0 uses
  %i.en = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %.0446548, i32 noundef %.0444546, i32 noundef %.0442544) ; 0 uses
  %i.eo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %.0440542, i32 noundef %.0438540, i32 noundef %.0436538) ; 0 uses
  %i.ep = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, double noundef %.0434536, double noundef %.0432534, double noundef %.0430532) ; 0 uses
  %i.eq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %.0421526, i32 noundef %.0419524) ; 0 uses
  %i.er = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %.0423528) ; 0 uses
  %i.es = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %.0428530) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.et = call i32 @hypre_MPI_Barrier(i32 noundef 0) #10 ; 0 uses
  %i.eu = call i32 @hypre_InitializeTiming(ptr noundef nonnull @.str.30) #10 ; 3 uses
  %i.ev = call i32 @hypre_BeginTiming(i32 noundef %i.eu) #10 ; 0 uses
  switch i32 %.0423528, label %bb.t [
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.ew = call ptr @hypre_CAlloc(i32 noundef 2, i32 noundef 4) #10
  %i.ex = call ptr @hypre_CAlloc(i32 noundef 2, i32 noundef 8) #10 ; 3 uses
  %i.ey = call ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 4) #10 ; 2 uses
  store ptr %i.ey, ptr %i.ex, align 8, !tbaa !18
  store i32 -1, ptr %i.ey, align 4, !tbaa !4
  %i.ez = call ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 4) #10 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !18
  store i32 0, ptr %i.ez, align 4, !tbaa !4
  %i.fb = load i32, ptr %i.l, align 4, !tbaa !4
  %i.fc = srem i32 %i.fb, %.0446548
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.fd = mul nsw i32 %.0450552, %.0452554
  %i.fe = mul nsw i32 %.0438540, %.0440542
  %i.ff = call ptr @hypre_CAlloc(i32 noundef 3, i32 noundef 4) #10
  %i.fg = call ptr @hypre_CAlloc(i32 noundef 3, i32 noundef 8) #10 ; 4 uses
  %i.fh = call ptr @hypre_CAlloc(i32 noundef 2, i32 noundef 4) #10 ; 3 uses
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !18
  store i32 -1, ptr %i.fh, align 4, !tbaa !4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store i32 0, ptr %i.fi, align 4, !tbaa !4
  %i.fj = call ptr @hypre_CAlloc(i32 noundef 2, i32 noundef 4) #10 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !18
  store i32 0, ptr %i.fj, align 4, !tbaa !4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store i32 -1, ptr %i.fl, align 4, !tbaa !4
  %i.fm = call ptr @hypre_CAlloc(i32 noundef 2, i32 noundef 4) #10 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !18
  store i32 0, ptr %i.fm, align 4, !tbaa !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store i32 0, ptr %i.fo, align 4, !tbaa !4
  %i.fp = load i32, ptr %i.l, align 4, !tbaa !4   ; 2 uses
  %i.fq = srem i32 %i.fp, %.0446548
  %i.fr = sdiv i32 %i.fp, %.0446548
  %i.fs = srem i32 %i.fr, %.0444546
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.ft = mul nsw i32 %.0450552, %.0452554
  %i.fu = mul nsw i32 %i.ft, %.0448550
  %i.fv = mul nsw i32 %.0438540, %.0440542
  %i.fw = mul nsw i32 %i.fv, %.0436538
  %i.fx = call ptr @hypre_CAlloc(i32 noundef 4, i32 noundef 4) #10
  %i.fy = call ptr @hypre_CAlloc(i32 noundef 4, i32 noundef 8) #10 ; 5 uses
  %i.fz = call ptr @hypre_CAlloc(i32 noundef 3, i32 noundef 4) #10 ; 4 uses
  store ptr %i.fz, ptr %i.fy, align 8, !tbaa !18
  store i32 -1, ptr %i.fz, align 4, !tbaa !4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store i32 0, ptr %i.ga, align 4, !tbaa !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i32 0, ptr %i.gb, align 4, !tbaa !4
  %i.gc = call ptr @hypre_CAlloc(i32 noundef 3, i32 noundef 4) #10 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !18
  store i32 0, ptr %i.gc, align 4, !tbaa !4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 -1, ptr %i.ge, align 4, !tbaa !4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i32 0, ptr %i.gf, align 4, !tbaa !4
  %i.gg = call ptr @hypre_CAlloc(i32 noundef 3, i32 noundef 4) #10 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !18
  store i32 0, ptr %i.gg, align 4, !tbaa !4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i32 0, ptr %i.gi, align 4, !tbaa !4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i32 -1, ptr %i.gj, align 4, !tbaa !4
  %i.gk = call ptr @hypre_CAlloc(i32 noundef 3, i32 noundef 4) #10 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !18
  store i32 0, ptr %i.gk, align 4, !tbaa !4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store i32 0, ptr %i.gm, align 4, !tbaa !4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i32 0, ptr %i.gn, align 4, !tbaa !4
  %i.go = load i32, ptr %i.l, align 4, !tbaa !4   ; 3 uses
  %i.gp = srem i32 %i.go, %.0446548               ; 2 uses
  %i.gq = sdiv i32 %i.go, %.0446548
  %i.gr = srem i32 %i.gq, %.0444546               ; 2 uses
  %i.gs = mul nsw i32 %i.gr, %.0446548
  %i.gt = add i32 %i.gp, %i.gs
  %i.gu = sub i32 %i.go, %i.gt
  %i.gv = sdiv i32 %i.gu, %i.eh
  %i.gw = mul nsw i32 %i.gv, %.0436538
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.0427 = phi i32 [ undef, %bb.p ], [ %i.fc, %bb.q ], [ %i.fq, %bb.r ], [ %i.gp, %bb.s ] ; 3 uses
  %.0426 = phi i32 [ undef, %bb.p ], [ undef, %bb.q ], [ %i.fs, %bb.r ], [ %i.gr, %bb.s ] ; 2 uses
  %.0425 = phi i32 [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ %i.gw, %bb.s ]
  %.0418 = phi i32 [ undef, %bb.p ], [ %.0440542, %bb.q ], [ %i.fe, %bb.r ], [ %i.fw, %bb.s ] ; 10 uses
  %.0417 = phi i32 [ undef, %bb.p ], [ %.0452554, %bb.q ], [ %i.fd, %bb.r ], [ %i.fu, %bb.s ] ; 7 uses
  %.0416 = phi ptr [ undef, %bb.p ], [ %i.ex, %bb.q ], [ %i.fg, %bb.r ], [ %i.fy, %bb.s ] ; 3 uses
  %.0415 = phi ptr [ undef, %bb.p ], [ %i.ew, %bb.q ], [ %i.ff, %bb.r ], [ %i.fx, %bb.s ] ; 12 uses
  %i.gx = call ptr @hypre_CAlloc(i32 noundef %.0418, i32 noundef 8) #10 ; 13 uses
  %i.gy = call ptr @hypre_CAlloc(i32 noundef %.0418, i32 noundef 8) #10 ; 13 uses
  %i.gz = icmp sgt i32 %.0418, 0                  ; 7 uses
  br i1 %i.gz, label %.lr.ph.preheader, label %.preheader522

.lr.ph.preheader:                                 ; preds = %bb.t
  %wide.trip.count = zext nneg i32 %.0418 to i64
  br label %.lr.ph

.preheader522:                                    ; preds = %.lr.ph, %bb.t
  %i.ha = icmp sgt i32 %.0423528, 0               ; 2 uses
  br i1 %i.ha, label %.lr.ph589.preheader, label %._crit_edge

.lr.ph589.preheader:                              ; preds = %.preheader522
  %wide.trip.count700 = zext nneg i32 %.0423528 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.0423528, 4
  br i1 %min.iters.check, label %.lr.ph589.preheader913, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph589.preheader
  %n.vec = and i64 %wide.trip.count700, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hb = shl nuw nsw i64 %index, 3
  %i.hc = shl i64 %index, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hb
  %i.he = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hc
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store <4 x i32> splat (i32 1), ptr %i.hd, align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.hf, align 16, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count700
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph589.preheader913

.lr.ph589.preheader913:                           ; preds = %.lr.ph589.preheader, %middle.block
  %indvars.iv697.ph = phi i64 [ 0, %.lr.ph589.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph589

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.hh = call ptr @hypre_CAlloc(i32 noundef %.0423528, i32 noundef 4) #10
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !18
  %i.hj = call ptr @hypre_CAlloc(i32 noundef %.0423528, i32 noundef 4) #10
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader522, label %.lr.ph, !llvm.loop !23

.lr.ph589:                                        ; preds = %.lr.ph589.preheader913, %.lr.ph589
  %indvars.iv697 = phi i64 [ %indvars.iv.next698, %.lr.ph589 ], [ %indvars.iv697.ph, %.lr.ph589.preheader913 ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv697, 3
  %i.hl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 2 uses
  store i32 1, ptr %i.hl, align 8, !tbaa !4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  store i32 1, ptr %i.hm, align 4, !tbaa !4
  %indvars.iv.next698 = add nuw nsw i64 %indvars.iv697, 1 ; 2 uses
  %exitcond701.not = icmp eq i64 %indvars.iv.next698, %wide.trip.count700
  br i1 %exitcond701.not, label %._crit_edge, label %.lr.ph589, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph589, %middle.block, %.preheader522
  switch i32 %.0423528, label %.loopexit [
    i32 1, label %.preheader514
    i32 2, label %.preheader516
    i32 3, label %.preheader520
  ]

.preheader520:                                    ; preds = %._crit_edge
  %i.hn = icmp sgt i32 %.0436538, 0
  br i1 %i.hn, label %.preheader519.lr.ph, label %.loopexit

.preheader519.lr.ph:                              ; preds = %.preheader520
  %2 = icmp slt i32 %.0438540, 1
  %3 = icmp slt i32 %.0440542, 1
  %i.ho = mul nsw i32 %.0427, %.0440542
  %i.hp = mul nsw i32 %.0426, %.0438540
  %brmerge = select i1 %2, i1 true, i1 %3
  br i1 %brmerge, label %.loopexit, label %.preheader519

.preheader516:                                    ; preds = %._crit_edge
  %i.hq = icmp sgt i32 %.0438540, 0
  br i1 %i.hq, label %.preheader515.lr.ph, label %.loopexit

.preheader515.lr.ph:                              ; preds = %.preheader516
  %i.hr = icmp sgt i32 %.0440542, 0
  %i.hs = mul nsw i32 %.0427, %.0440542
  %i.ht = mul nsw i32 %.0426, %.0438540
  br i1 %i.hr, label %.preheader515, label %.loopexit

.preheader514:                                    ; preds = %._crit_edge
  %i.hu = icmp sgt i32 %.0440542, 0
  br i1 %i.hu, label %.lr.ph610, label %.loopexit

.lr.ph610:                                        ; preds = %.preheader514
  %i.hv = mul nsw i32 %.0427, %.0440542           ; 3 uses
  %wide.trip.count718 = zext nneg i32 %.0440542 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count718, 1
  %i.hw = icmp eq i32 %.0440542, 1
  br i1 %i.hw, label %.epil.preheader, label %.lr.ph610.new

.lr.ph610.new:                                    ; preds = %.lr.ph610
  %unroll_iter = and i64 %wide.trip.count718, 2147483646
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph610.new
  %indvars.iv713 = phi i64 [ 0, %.lr.ph610.new ], [ %indvars.iv.next714.1, %bb.u ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph610.new ], [ %niter.next.1, %bb.u ]
  %indvars717 = trunc i64 %indvars.iv713 to i32
  %i.hx = add nsw i32 %i.hv, %indvars717          ; 2 uses
  %i.hy = mul nsw i32 %i.hx, %.0452554
  %i.hz = add nsw i32 %i.hy, -17
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv713
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !18
  store i32 %i.hz, ptr %i.ib, align 4, !tbaa !4
  %i.ic = add nsw i32 %i.hx, 1
  %i.id = mul nsw i32 %i.ic, %.0452554
  %i.ie = add nsw i32 %i.id, -18
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv713
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !18
  store i32 %i.ie, ptr %i.ig, align 4, !tbaa !4
  %indvars.iv.next714 = or disjoint i64 %indvars.iv713, 1 ; 3 uses
  %indvars717.1 = trunc i64 %indvars.iv.next714 to i32
  %i.ih = add nsw i32 %i.hv, %indvars717.1        ; 2 uses
  %i.ii = mul nsw i32 %i.ih, %.0452554
  %i.ij = add nsw i32 %i.ii, -17
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv.next714
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !18
  store i32 %i.ij, ptr %i.il, align 4, !tbaa !4
  %i.im = add nsw i32 %i.ih, 1
  %i.in = mul nsw i32 %i.im, %.0452554
  %i.io = add nsw i32 %i.in, -18
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next714
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !18
  store i32 %i.io, ptr %i.iq, align 4, !tbaa !4
  %indvars.iv.next714.1 = add nuw nsw i64 %indvars.iv713, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.u, !llvm.loop !25

.preheader515:                                    ; preds = %.preheader515.lr.ph, %._crit_edge604
  %.1607 = phi i64 [ %indvars.iv.next709, %._crit_edge604 ], [ 0, %.preheader515.lr.ph ]
  %.0399606 = phi i32 [ %i.jj, %._crit_edge604 ], [ 0, %.preheader515.lr.ph ] ; 2 uses
  %i.ir = add nsw i32 %.0399606, %i.ht            ; 2 uses
  %i.is = mul nsw i32 %i.ir, %.0450552
  %i.it = add nsw i32 %i.ir, 1
  %i.iu = mul nsw i32 %i.it, %.0450552
  %i.iv = add nsw i32 %i.iu, -1
  br label %bb.v

bb.v:                                             ; preds = %.preheader515, %bb.v
  %indvars.iv708 = phi i64 [ %.1607, %.preheader515 ], [ %indvars.iv.next709, %bb.v ] ; 3 uses
  %.1402601 = phi i32 [ 0, %.preheader515 ], [ %i.ji, %bb.v ] ; 2 uses
  %i.iw = add nsw i32 %.1402601, %i.hs            ; 2 uses
  %i.ix = mul nsw i32 %i.iw, %.0452554
  %i.iy = add nsw i32 %i.ix, -17
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %indvars.iv708
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !18 ; 2 uses
  store i32 %i.iy, ptr %i.ja, align 4, !tbaa !4
  %i.jb = add nsw i32 %i.iw, 1
  %i.jc = mul nsw i32 %i.jb, %.0452554
  %i.jd = add nsw i32 %i.jc, -18
  %i.je = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %indvars.iv708
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !18 ; 2 uses
  store i32 %i.jd, ptr %i.jf, align 4, !tbaa !4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  store i32 %i.is, ptr %i.jg, align 4, !tbaa !4
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  store i32 %i.iv, ptr %i.jh, align 4, !tbaa !4
  %indvars.iv.next709 = add nsw i64 %indvars.iv708, 1 ; 2 uses
  %i.ji = add nuw nsw i32 %.1402601, 1            ; 2 uses
  %exitcond711.not = icmp eq i32 %i.ji, %.0440542
  br i1 %exitcond711.not, label %._crit_edge604, label %bb.v, !llvm.loop !26

._crit_edge604:                                   ; preds = %bb.v
  %i.jj = add nuw nsw i32 %.0399606, 1            ; 2 uses
  %exitcond712.not = icmp eq i32 %i.jj, %.0438540
  br i1 %exitcond712.not, label %.loopexit, label %.preheader515, !llvm.loop !27

.preheader519:                                    ; preds = %.preheader519.lr.ph, %._crit_edge597
  %.3600 = phi i64 [ %indvars.iv.next703, %._crit_edge597 ], [ 0, %.preheader519.lr.ph ]
  %.0398599 = phi i32 [ %i.kl, %._crit_edge597 ], [ 0, %.preheader519.lr.ph ] ; 2 uses
  %i.jk = add nsw i32 %.0398599, %.0425           ; 2 uses
  %i.jl = mul nsw i32 %i.jk, %.0448550
  %i.jm = add nsw i32 %i.jl, 32
  %i.jn = add nsw i32 %i.jk, 1
  %i.jo = mul nsw i32 %i.jn, %.0448550
  %i.jp = add nsw i32 %i.jo, 31
  br label %.preheader518.us

.preheader518.us:                                 ; preds = %.preheader519, %._crit_edge593.us
  %.4596.us = phi i64 [ %indvars.iv.next703, %._crit_edge593.us ], [ %.3600, %.preheader519 ]
  %.1400595.us = phi i32 [ %i.kk, %._crit_edge593.us ], [ 0, %.preheader519 ] ; 2 uses
  %i.jq = add nsw i32 %.1400595.us, %i.hp         ; 2 uses
  %i.jr = mul nsw i32 %i.jq, %.0450552
  %i.js = add nsw i32 %i.jq, 1
  %i.jt = mul nsw i32 %i.js, %.0450552
  %i.ju = add nsw i32 %i.jt, -1
  br label %bb.w

bb.w:                                             ; preds = %.preheader518.us, %bb.w
  %indvars.iv702 = phi i64 [ %.4596.us, %.preheader518.us ], [ %indvars.iv.next703, %bb.w ] ; 3 uses
  %.2403590.us = phi i32 [ 0, %.preheader518.us ], [ %i.kj, %bb.w ] ; 2 uses
  %i.jv = add nsw i32 %.2403590.us, %i.ho         ; 2 uses
  %i.jw = mul nsw i32 %i.jv, %.0452554
  %i.jx = add nsw i32 %i.jw, -17
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %indvars.iv702
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !18 ; 3 uses
  store i32 %i.jx, ptr %i.jz, align 4, !tbaa !4
  %i.ka = add nsw i32 %i.jv, 1
  %i.kb = mul nsw i32 %i.ka, %.0452554
  %i.kc = add nsw i32 %i.kb, -18
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %indvars.iv702
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !18 ; 3 uses
  store i32 %i.kc, ptr %i.ke, align 4, !tbaa !4
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  store i32 %i.jr, ptr %i.kf, align 4, !tbaa !4
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  store i32 %i.ju, ptr %i.kg, align 4, !tbaa !4
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store i32 %i.jm, ptr %i.kh, align 4, !tbaa !4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store i32 %i.jp, ptr %i.ki, align 4, !tbaa !4
  %indvars.iv.next703 = add nsw i64 %indvars.iv702, 1 ; 3 uses
  %i.kj = add nuw nsw i32 %.2403590.us, 1         ; 2 uses
  %exitcond705.not = icmp eq i32 %i.kj, %.0440542
  br i1 %exitcond705.not, label %._crit_edge593.us, label %bb.w, !llvm.loop !28

._crit_edge593.us:                                ; preds = %bb.w
  %i.kk = add nuw nsw i32 %.1400595.us, 1         ; 2 uses
  %exitcond706.not = icmp eq i32 %i.kk, %.0438540
  br i1 %exitcond706.not, label %._crit_edge597, label %.preheader518.us, !llvm.loop !29

._crit_edge597:                                   ; preds = %._crit_edge593.us
  %i.kl = add nuw nsw i32 %.0398599, 1            ; 2 uses
  %exitcond707.not = icmp eq i32 %i.kl, %.0436538
  br i1 %exitcond707.not, label %.loopexit, label %.preheader519, !llvm.loop !30

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph610
  %indvars.iv713.epil.init = phi i64 [ 0, %.lr.ph610 ], [ %indvars.iv.next714.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod931 = trunc i32 %.0440542 to i1
  call void @llvm.assume(i1 %lcmp.mod931)
  %indvars717.epil = trunc i64 %indvars.iv713.epil.init to i32
  %i.km = add nsw i32 %i.hv, %indvars717.epil     ; 2 uses
  %i.kn = mul nsw i32 %i.km, %.0452554
  %i.ko = add nsw i32 %i.kn, -17
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv713.epil.init
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !18
  store i32 %i.ko, ptr %i.kq, align 4, !tbaa !4
  %i.kr = add nsw i32 %i.km, 1
  %i.ks = mul nsw i32 %i.kr, %.0452554
  %i.kt = add nsw i32 %i.ks, -18
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv713.epil.init
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !18
  store i32 %i.kt, ptr %i.kv, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge597, %._crit_edge604, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader519.lr.ph, %.preheader520, %.preheader516, %.preheader515.lr.ph, %.preheader514, %._crit_edge
  %i.kw = call i32 @HYPRE_StructGridCreate(i32 noundef 0, i32 noundef %.0423528, ptr noundef nonnull %i.n) #10 ; 0 uses
  br i1 %i.gz, label %.lr.ph613.preheader, label %._crit_edge614

.lr.ph613.preheader:                              ; preds = %.loopexit
  %wide.trip.count723 = zext nneg i32 %.0418 to i64
  br label %.lr.ph613

.lr.ph613:                                        ; preds = %.lr.ph613.preheader, %.lr.ph613
  %indvars.iv720 = phi i64 [ 0, %.lr.ph613.preheader ], [ %indvars.iv.next721, %.lr.ph613 ] ; 3 uses
  %i.kx = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv720
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !18
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv720
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !18
  %i.lc = call i32 @HYPRE_StructGridSetExtents(ptr noundef %i.kx, ptr noundef %i.kz, ptr noundef %i.lb) #10 ; 0 uses
  %indvars.iv.next721 = add nuw nsw i64 %indvars.iv720, 1 ; 2 uses
  %exitcond724.not = icmp eq i64 %indvars.iv.next721, %wide.trip.count723
  br i1 %exitcond724.not, label %._crit_edge614, label %.lr.ph613, !llvm.loop !33

._crit_edge614:                                   ; preds = %.lr.ph613, %.loopexit
  %i.ld = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.le = call i32 @HYPRE_StructGridAssemble(ptr noundef %i.ld) #10 ; 0 uses
  %i.lf = add i32 %.0423528, 1                    ; 7 uses
  %i.lg = call i32 @HYPRE_StructStencilCreate(i32 noundef %.0423528, i32 noundef %i.lf, ptr noundef nonnull %i.o) #10 ; 0 uses
  %.not472615 = icmp slt i32 %.0423528, 0         ; 3 uses
  br i1 %.not472615, label %._crit_edge619, label %.lr.ph618.preheader

.lr.ph618.preheader:                              ; preds = %._crit_edge614
  %wide.trip.count728 = zext i32 %i.lf to i64
  br label %.lr.ph618

.lr.ph618:                                        ; preds = %.lr.ph618.preheader, %.lr.ph618
  %indvars.iv725 = phi i64 [ 0, %.lr.ph618.preheader ], [ %indvars.iv.next726, %.lr.ph618 ] ; 3 uses
  %i.lh = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %.0416, i64 %indvars.iv725
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !18
  %i.lk = trunc nuw nsw i64 %indvars.iv725 to i32
  %i.ll = call i32 @HYPRE_StructStencilSetElement(ptr noundef %i.lh, i32 noundef %i.lk, ptr noundef %i.lj) #10 ; 0 uses
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1 ; 2 uses
  %exitcond729.not = icmp eq i64 %indvars.iv.next726, %wide.trip.count728
  br i1 %exitcond729.not, label %._crit_edge619, label %.lr.ph618, !llvm.loop !36

._crit_edge619:                                   ; preds = %.lr.ph618, %._crit_edge614
  %i.lm = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.ln = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.lo = call i32 @HYPRE_StructMatrixCreate(i32 noundef 0, ptr noundef %i.lm, ptr noundef %i.ln, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.lp = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.lq = call i32 @HYPRE_StructMatrixSetSymmetric(ptr noundef %i.lp, i32 noundef 1) #10 ; 0 uses
  %i.lr = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.ls = call i32 @HYPRE_StructMatrixSetNumGhost(ptr noundef %i.lr, ptr noundef nonnull %i.c) #10 ; 0 uses
  %i.lt = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.lu = call i32 @HYPRE_StructMatrixInitialize(ptr noundef %i.lt) #10 ; 0 uses
  %i.lv = mul nsw i32 %.0417, %i.lf               ; 3 uses
  %i.lw = call ptr @hypre_CAlloc(i32 noundef %i.lv, i32 noundef 8) #10 ; 5 uses
  %i.lx = icmp sgt i32 %i.lv, 0
  br i1 %i.lx, label %.preheader513.lr.ph, label %.preheader512

.preheader513.lr.ph:                              ; preds = %._crit_edge619
  %i.ly = insertelement <2 x double> poison, double %.0434536, i64 0
  %i.lz = insertelement <2 x double> %i.ly, double %.0432534, i64 1
  %i.ma = fneg <2 x double> %i.lz                 ; 3 uses
  %i.mb = fneg double %.0430532
  %i.mc = fadd double %.0434536, %.0432534        ; 2 uses
  %i.md = fadd double %i.mc, %.0430532
  %i.me = fmul double %i.md, 2.000000e+00
  %i.mf = fmul double %i.mc, 2.000000e+00
  %i.mg = fmul double %.0434536, 2.000000e+00
  br i1 %.not472615, label %.preheader512, label %.preheader513.preheader

.preheader513.preheader:                          ; preds = %.preheader513.lr.ph
  %i.mh = zext i32 %i.lf to i64                   ; 13 uses
  %i.mi = extractelement <2 x double> %i.ma, i64 0
  %min.iters.check848 = icmp ult i32 %i.lf, 8     ; 4 uses
  %n.vec886 = and i64 %i.mh, 4294967288           ; 3 uses
  %cmp.n894 = icmp eq i64 %n.vec886, %i.mh
  %n.vec873 = and i64 %i.mh, 4294967288           ; 3 uses
  %cmp.n881 = icmp eq i64 %n.vec873, %i.mh
  %n.vec860 = and i64 %i.mh, 4294967288           ; 3 uses
  %cmp.n868 = icmp eq i64 %n.vec860, %i.mh
  %n.vec850 = and i64 %i.mh, 4294967288           ; 3 uses
  %cmp.n855 = icmp eq i64 %n.vec850, %i.mh
  br label %.preheader513

.preheader513:                                    ; preds = %.preheader513.preheader, %._crit_edge623
  %indvars.iv750 = phi i64 [ 0, %.preheader513.preheader ], [ %indvars.iv.next751, %._crit_edge623 ] ; 2 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %indvars.iv750 ; 6 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 8
  %i.ml = getelementptr i8, ptr %i.mj, i64 16     ; 2 uses
  %i.mm = getelementptr i8, ptr %i.mj, i64 24
  switch i32 %.0423528, label %.lr.ph622.split.preheader [
    i32 1, label %.lr.ph622.split.us.preheader
    i32 2, label %.lr.ph622.split.us624.preheader
    i32 3, label %.lr.ph622.split.us627.preheader
  ]

.lr.ph622.split.us627.preheader:                  ; preds = %.preheader513
  br i1 %min.iters.check848, label %.lr.ph622.split.us627.preheader910, label %vector.body887

vector.body887:                                   ; preds = %.lr.ph622.split.us627.preheader, %vector.body887
  %index888 = phi i64 [ %index.next891, %vector.body887 ], [ 0, %.lr.ph622.split.us627.preheader ] ; 2 uses
  %vec.ind889 = phi <4 x i32> [ %vec.ind.next892, %vector.body887 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph622.split.us627.preheader ] ; 3 uses
  %step.add890 = add <4 x i32> %vec.ind889, splat (i32 4)
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.0415, i64 %index888 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  store <4 x i32> %vec.ind889, ptr %i.mn, align 4, !tbaa !4
  store <4 x i32> %step.add890, ptr %i.mo, align 4, !tbaa !4
  %index.next891 = add nuw i64 %index888, 8       ; 2 uses
  %vec.ind.next892 = add <4 x i32> %vec.ind889, splat (i32 8)
  %i.mp = icmp eq i64 %index.next891, %n.vec886
  br i1 %i.mp, label %middle.block893, label %vector.body887, !llvm.loop !39

middle.block893:                                  ; preds = %vector.body887
  br i1 %cmp.n894, label %._crit_edge623.split.split.split.us, label %.lr.ph622.split.us627.preheader910

.lr.ph622.split.us627.preheader910:               ; preds = %.lr.ph622.split.us627.preheader, %middle.block893
  %indvars.iv730.ph = phi i64 [ 0, %.lr.ph622.split.us627.preheader ], [ %n.vec886, %middle.block893 ]
  br label %.lr.ph622.split.us627

.lr.ph622.split.us624.preheader:                  ; preds = %.preheader513
  br i1 %min.iters.check848, label %.lr.ph622.split.us624.preheader909, label %vector.body874

vector.body874:                                   ; preds = %.lr.ph622.split.us624.preheader, %vector.body874
  %index875 = phi i64 [ %index.next878, %vector.body874 ], [ 0, %.lr.ph622.split.us624.preheader ] ; 2 uses
  %vec.ind876 = phi <4 x i32> [ %vec.ind.next879, %vector.body874 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph622.split.us624.preheader ] ; 3 uses
  %step.add877 = add <4 x i32> %vec.ind876, splat (i32 4)
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.0415, i64 %index875 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store <4 x i32> %vec.ind876, ptr %i.mq, align 4, !tbaa !4
  store <4 x i32> %step.add877, ptr %i.mr, align 4, !tbaa !4
  %index.next878 = add nuw i64 %index875, 8       ; 2 uses
  %vec.ind.next879 = add <4 x i32> %vec.ind876, splat (i32 8)
  %i.ms = icmp eq i64 %index.next878, %n.vec873
  br i1 %i.ms, label %middle.block880, label %vector.body874, !llvm.loop !40

middle.block880:                                  ; preds = %vector.body874
  br i1 %cmp.n881, label %._crit_edge623.split.split.us, label %.lr.ph622.split.us624.preheader909

.lr.ph622.split.us624.preheader909:               ; preds = %.lr.ph622.split.us624.preheader, %middle.block880
  %indvars.iv735.ph = phi i64 [ 0, %.lr.ph622.split.us624.preheader ], [ %n.vec873, %middle.block880 ]
  br label %.lr.ph622.split.us624

.lr.ph622.split.us.preheader:                     ; preds = %.preheader513
  br i1 %min.iters.check848, label %.lr.ph622.split.us.preheader908, label %vector.body861

vector.body861:                                   ; preds = %.lr.ph622.split.us.preheader, %vector.body861
  %index862 = phi i64 [ %index.next865, %vector.body861 ], [ 0, %.lr.ph622.split.us.preheader ] ; 2 uses
  %vec.ind863 = phi <4 x i32> [ %vec.ind.next866, %vector.body861 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph622.split.us.preheader ] ; 3 uses
  %step.add864 = add <4 x i32> %vec.ind863, splat (i32 4)
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.0415, i64 %index862 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  store <4 x i32> %vec.ind863, ptr %i.mt, align 4, !tbaa !4
  store <4 x i32> %step.add864, ptr %i.mu, align 4, !tbaa !4
  %index.next865 = add nuw i64 %index862, 8       ; 2 uses
  %vec.ind.next866 = add <4 x i32> %vec.ind863, splat (i32 8)
  %i.mv = icmp eq i64 %index.next865, %n.vec860
  br i1 %i.mv, label %middle.block867, label %vector.body861, !llvm.loop !41

middle.block867:                                  ; preds = %vector.body861
  br i1 %cmp.n868, label %._crit_edge623.split.us, label %.lr.ph622.split.us.preheader908

.lr.ph622.split.us.preheader908:                  ; preds = %.lr.ph622.split.us.preheader, %middle.block867
  %indvars.iv740.ph = phi i64 [ 0, %.lr.ph622.split.us.preheader ], [ %n.vec860, %middle.block867 ]
  br label %.lr.ph622.split.us

.lr.ph622.split.preheader:                        ; preds = %.preheader513
  br i1 %min.iters.check848, label %.lr.ph622.split.preheader907, label %vector.body851

vector.body851:                                   ; preds = %.lr.ph622.split.preheader, %vector.body851
  %index852 = phi i64 [ %index.next853, %vector.body851 ], [ 0, %.lr.ph622.split.preheader ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %vec.ind.next, %vector.body851 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph622.split.preheader ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %.0415, i64 %index852 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store <4 x i32> %vec.ind, ptr %i.mw, align 4, !tbaa !4
  store <4 x i32> %step.add, ptr %i.mx, align 4, !tbaa !4
  %index.next853 = add nuw i64 %index852, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.my = icmp eq i64 %index.next853, %n.vec850
  br i1 %i.my, label %middle.block854, label %vector.body851, !llvm.loop !42

middle.block854:                                  ; preds = %vector.body851
  br i1 %cmp.n855, label %._crit_edge623, label %.lr.ph622.split.preheader907

.lr.ph622.split.preheader907:                     ; preds = %.lr.ph622.split.preheader, %middle.block854
  %indvars.iv745.ph = phi i64 [ 0, %.lr.ph622.split.preheader ], [ %n.vec850, %middle.block854 ]
  br label %.lr.ph622.split

.lr.ph622.split.us:                               ; preds = %.lr.ph622.split.us.preheader908, %.lr.ph622.split.us
  %indvars.iv740 = phi i64 [ %indvars.iv.next741, %.lr.ph622.split.us ], [ %indvars.iv740.ph, %.lr.ph622.split.us.preheader908 ] ; 3 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.0415, i64 %indvars.iv740
  %i.na = trunc nuw nsw i64 %indvars.iv740 to i32
  store i32 %i.na, ptr %i.mz, align 4, !tbaa !4
  %indvars.iv.next741 = add nuw nsw i64 %indvars.iv740, 1 ; 2 uses
  %exitcond744.not = icmp eq i64 %indvars.iv.next741, %i.mh
  br i1 %exitcond744.not, label %._crit_edge623.split.us, label %.lr.ph622.split.us, !llvm.loop !43

._crit_edge623.split.us:                          ; preds = %.lr.ph622.split.us, %middle.block867
  store double %i.mi, ptr %i.mj, align 8, !tbaa !44
  store double %i.mg, ptr %i.mk, align 8, !tbaa !44
  br label %._crit_edge623
end_hunk_0
