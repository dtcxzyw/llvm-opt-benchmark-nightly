inline.NumInlined: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@hypre_CSRMatrixUnion:bb.a
.lr.ph226.us:                                     ; preds = %.lr.ph226.us.preheader, %bb.f
  %indvars.iv328 = phi i64 [ 0, %.lr.ph226.us.preheader ], [ %indvars.iv.next329, %bb.f ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv328
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4  ; 3 uses
  br i1 %min.iters.check520, label %scalar.ph519.preheader, label %vector.ph521

vector.ph521:                                     ; preds = %.lr.ph226.us
  %broadcast.splatinsert524 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat525 = shufflevector <4 x i32> %broadcast.splatinsert524, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body526

vector.body526:                                   ; preds = %vector.body526, %vector.ph521
  %index527 = phi i64 [ 0, %vector.ph521 ], [ %index.next532, %vector.body526 ] ; 2 uses
  %vec.phi528 = phi <4 x i1> [ zeroinitializer, %vector.ph521 ], [ %i.bp, %vector.body526 ]
  %vec.phi529 = phi <4 x i1> [ zeroinitializer, %vector.ph521 ], [ %i.bq, %vector.body526 ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index527 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load530 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !4
  %wide.load531 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !4
  %i.bn = icmp eq <4 x i32> %wide.load530, %broadcast.splat525
  %i.bo = icmp eq <4 x i32> %wide.load531, %broadcast.splat525
  %i.bp = or <4 x i1> %vec.phi528, %i.bn          ; 2 uses
  %i.bq = or <4 x i1> %vec.phi529, %i.bo          ; 2 uses
  %index.next532 = add nuw i64 %index527, 8       ; 2 uses
  %i.br = icmp eq i64 %index.next532, %n.vec523
  br i1 %i.br, label %middle.block533, label %vector.body526, !llvm.loop !58

middle.block533:                                  ; preds = %vector.body526
  %bin.rdx534 = or <4 x i1> %i.bq, %i.bp
  %bin.rdx534.fr = freeze <4 x i1> %bin.rdx534
  %i.bs = bitcast <4 x i1> %bin.rdx534.fr to i4
  %.not555 = icmp ne i4 %i.bs, 0
  %rdx.select535 = zext i1 %.not555 to i32        ; 2 uses
  br i1 %cmp.n536, label %._crit_edge.us229, label %scalar.ph519.preheader

scalar.ph519.preheader:                           ; preds = %.lr.ph226.us, %middle.block533
  %indvars.iv323.ph = phi i64 [ 0, %.lr.ph226.us ], [ %n.vec523, %middle.block533 ]
  %.2155225.us.ph = phi i32 [ 0, %.lr.ph226.us ], [ %rdx.select535, %middle.block533 ]
  br label %scalar.ph519

scalar.ph519:                                     ; preds = %scalar.ph519.preheader, %scalar.ph519
  %indvars.iv323 = phi i64 [ %indvars.iv.next324, %scalar.ph519 ], [ %indvars.iv323.ph, %scalar.ph519.preheader ] ; 2 uses
  %.2155225.us = phi i32 [ %spec.select198.us, %scalar.ph519 ], [ %.2155225.us.ph, %scalar.ph519.preheader ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv323
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = icmp eq i32 %i.bu, %i.bk
  %spec.select198.us = select i1 %i.bv, i32 1, i32 %.2155225.us ; 2 uses
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %exitcond327.not = icmp eq i64 %indvars.iv.next324, %wide.trip.count326
  br i1 %exitcond327.not, label %._crit_edge.us229, label %scalar.ph519, !llvm.loop !59

bb.e:                                             ; preds = %._crit_edge.us229
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv328
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.by
  store i32 %i.bk, ptr %i.bz, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.us229
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %exitcond332.not = icmp eq i64 %indvars.iv.next329, %wide.trip.count331
  br i1 %exitcond332.not, label %.loopexit210, label %.lr.ph226.us, !llvm.loop !60

._crit_edge.us229:                                ; preds = %scalar.ph519, %middle.block533
  %spec.select198.us.lcssa = phi i32 [ %rdx.select535, %middle.block533 ], [ %spec.select198.us, %scalar.ph519 ]
  %i.ca = icmp eq i32 %spec.select198.us.lcssa, 0
  br i1 %i.ca, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv313 = phi i64 [ %indvars.iv.next314.3, %.lr.ph ], [ %indvars.iv313.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv313
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv313
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !4
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next314
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next314
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !4
  %indvars.iv.next314.1 = add nuw nsw i64 %indvars.iv313, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next314.1
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next314.1
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !4
  %indvars.iv.next314.2 = add nuw nsw i64 %indvars.iv313, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next314.2
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next314.2
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !4
  %indvars.iv.next314.3 = add nuw nsw i64 %indvars.iv313, 4 ; 2 uses
  %exitcond317.not.3 = icmp eq i64 %indvars.iv.next314.3, %wide.trip.count316
  br i1 %exitcond317.not.3, label %.preheader, label %.lr.ph, !llvm.loop !61

.lr.ph228.split:                                  ; preds = %.lr.ph228.split, %.lr.ph228.split.preheader.new
  %indvars.iv318 = phi i64 [ 0, %.lr.ph228.split.preheader.new ], [ %indvars.iv.next319.3, %.lr.ph228.split ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph228.split.preheader.new ], [ %niter.next.3, %.lr.ph228.split ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv318
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv318
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.cr
  store i32 %i.co, ptr %i.cs, align 4, !tbaa !4
  %indvars.iv.next319 = or disjoint i64 %indvars.iv318, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next319
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next319
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.cx
  store i32 %i.cu, ptr %i.cy, align 4, !tbaa !4
  %indvars.iv.next319.1 = or disjoint i64 %indvars.iv318, 2 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next319.1
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next319.1
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.dd
  store i32 %i.da, ptr %i.de, align 4, !tbaa !4
  %indvars.iv.next319.2 = or disjoint i64 %indvars.iv318, 3 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next319.2
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next319.2
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.dj
  store i32 %i.dg, ptr %i.dk, align 4, !tbaa !4
  %indvars.iv.next319.3 = add nuw nsw i64 %indvars.iv318, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit210.loopexit569.unr-lcssa, label %.lr.ph228.split, !llvm.loop !60

.loopexit210.loopexit569.unr-lcssa:               ; preds = %.lr.ph228.split
  %lcmp.mod577.not = icmp eq i64 %xtraiter576, 0
  br i1 %lcmp.mod577.not, label %.loopexit210, label %.lr.ph228.split.epil.preheader

.lr.ph228.split.epil.preheader:                   ; preds = %.loopexit210.loopexit569.unr-lcssa, %.lr.ph228.split.preheader
  %indvars.iv318.epil.init = phi i64 [ 0, %.lr.ph228.split.preheader ], [ %indvars.iv.next319.3, %.loopexit210.loopexit569.unr-lcssa ]
  %lcmp.mod578 = icmp ne i64 %xtraiter576, 0
  tail call void @llvm.assume(i1 %lcmp.mod578)
  br label %.lr.ph228.split.epil

.lr.ph228.split.epil:                             ; preds = %.lr.ph228.split.epil, %.lr.ph228.split.epil.preheader
  %indvars.iv318.epil = phi i64 [ %indvars.iv318.epil.init, %.lr.ph228.split.epil.preheader ], [ %indvars.iv.next319.epil, %.lr.ph228.split.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph228.split.epil.preheader ], [ %epil.iter.next, %.lr.ph228.split.epil ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv318.epil
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv318.epil
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.dp
  store i32 %i.dm, ptr %i.dq, align 4, !tbaa !4
  %indvars.iv.next319.epil = add nuw nsw i64 %indvars.iv318.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter576
  br i1 %epil.iter.cmp.not, label %.loopexit210, label %.lr.ph228.split.epil, !llvm.loop !62

.loopexit210:                                     ; preds = %.loopexit210.loopexit569.unr-lcssa, %.lr.ph228.split.epil, %bb.f, %.preheader
  %.2205 = phi i32 [ %.0.lcssa, %bb.f ], [ %.0.lcssa, %.preheader ], [ %.0.lcssa443445447, %.lr.ph228.split.epil ], [ %.0.lcssa443445447, %.loopexit210.loopexit569.unr-lcssa ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !15 ; 2 uses
  %i.dt = icmp sgt i32 %i.c, 0
  br i1 %i.dt, label %.lr.ph257, label %._crit_edge

.loopexit210.thread:                              ; preds = %bb.a
  %i.du = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.g) ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !15 ; 3 uses
  %i.dx = icmp sgt i32 %i.c, 0
  br i1 %i.dx, label %.lr.ph257.thread, label %._crit_edge

.lr.ph257.thread:                                 ; preds = %.loopexit210.thread
  %.not196456 = icmp eq ptr %3, null
  %wide.trip.count376 = zext nneg i32 %i.c to i64 ; 2 uses
  %.pre412 = load i32, ptr %i.i, align 4, !tbaa !4 ; 2 uses
  %.pre413 = load i32, ptr %i.n, align 4, !tbaa !4 ; 2 uses
  br i1 %.not196456, label %.lr.ph257.split.us.split.us, label %.lr.ph257.split.us.split

.lr.ph257:                                        ; preds = %.loopexit210
  %.not196 = icmp eq ptr %3, null
  %wide.trip.count346 = zext nneg i32 %i.c to i64
  %.pre = load i32, ptr %i.i, align 4, !tbaa !4
  %.pre409 = load i32, ptr %i.n, align 4, !tbaa !4
  br label %.lr.ph257.split

.lr.ph257.split.us.split.us:                      ; preds = %.lr.ph257.thread, %.loopexit209.us.us
  %i.dy = phi i32 [ %i.ed, %.loopexit209.us.us ], [ %.pre413, %.lr.ph257.thread ] ; 2 uses
  %i.dz = phi i32 [ %i.eb, %.loopexit209.us.us ], [ %.pre412, %.lr.ph257.thread ]
  %indvars.iv373 = phi i64 [ %indvars.iv.next374, %.loopexit209.us.us ], [ 0, %.lr.ph257.thread ]
  %.0181255.us.us = phi i32 [ %.1182.lcssa.us.us, %.loopexit209.us.us ], [ %i.dw, %.lr.ph257.thread ] ; 2 uses
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 4 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next374
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4  ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next374
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !4  ; 3 uses
  %i.ee = icmp slt i32 %i.dy, %i.ed
  br i1 %i.ee, label %.lr.ph252.us.us.preheader, label %.loopexit209.us.us

.lr.ph252.us.us.preheader:                        ; preds = %.lr.ph257.split.us.split.us
  %i.ef = add nsw i32 %i.eb, -1                   ; 2 uses
  %i.eg = sext i32 %i.dy to i64
  %wide.trip.count371 = sext i32 %i.ed to i64
  %wide.trip.count366 = sext i32 %i.ef to i64
  br label %.lr.ph252.us.us

.loopexit209.us.us:                               ; preds = %.loopexit.us.us.us.us, %.lr.ph257.split.us.split.us
  %.1182.lcssa.us.us = phi i32 [ %.0181255.us.us, %.lr.ph257.split.us.split.us ], [ %spec.select200.us.us.us.us, %.loopexit.us.us.us.us ] ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next374, %wide.trip.count376
  br i1 %exitcond377.not, label %._crit_edge, label %.lr.ph257.split.us.split.us, !llvm.loop !63

.lr.ph252.us.us:                                  ; preds = %.lr.ph252.us.us.preheader, %.loopexit.us.us.us.us
  %indvars.iv368 = phi i64 [ %i.eg, %.lr.ph252.us.us.preheader ], [ %indvars.iv.next369, %.loopexit.us.us.us.us ] ; 2 uses
  %.0156249.us.us.us.us = phi i32 [ %i.dz, %.lr.ph252.us.us.preheader ], [ %.1157.us.us.us.us, %.loopexit.us.us.us.us ] ; 8 uses
  %.1182247.us.us.us.us = phi i32 [ %.0181255.us.us, %.lr.ph252.us.us.preheader ], [ %spec.select200.us.us.us.us, %.loopexit.us.us.us.us ]
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv368
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !4  ; 2 uses
  %.not197231.us.us.us.us.not = icmp slt i32 %.0156249.us.us.us.us, %i.eb
  br i1 %.not197231.us.us.us.us.not, label %.lr.ph234.us.us.us.us, label %.loopexit.us.us.us.us

.lr.ph244.us.us.us.us..loopexit.us.us.us.us.loopexit_crit_edge: ; preds = %.lr.ph244.us.us.us.us
  br label %.loopexit.us.us.us.us, !llvm.loop !64

.loopexit.us.us.us.us:                            ; preds = %.lr.ph244.us.us.us.us.preheader, %.lr.ph244.us.us.us.us..loopexit.us.us.us.us.loopexit_crit_edge, %.lr.ph252.us.us, %.split.us.us.us.us.us
  %.not197213.us.us.us.us = phi i32 [ 0, %.split.us.us.us.us.us ], [ 1, %.lr.ph252.us.us ], [ 1, %.lr.ph244.us.us.us.us..loopexit.us.us.us.us.loopexit_crit_edge ], [ 1, %.lr.ph244.us.us.us.us.preheader ]
  %.1157.us.us.us.us = phi i32 [ %spec.select199.us.us.us.us, %.split.us.us.us.us.us ], [ %.0156249.us.us.us.us, %.lr.ph252.us.us ], [ %.0156249.us.us.us.us, %.lr.ph244.us.us.us.us..loopexit.us.us.us.us.loopexit_crit_edge ], [ %.0156249.us.us.us.us, %.lr.ph244.us.us.us.us.preheader ]
  %spec.select200.us.us.us.us = add nsw i32 %.not197213.us.us.us.us, %.1182247.us.us.us.us ; 2 uses
  %indvars.iv.next369 = add nsw i64 %indvars.iv368, 1 ; 2 uses
  %exitcond372.not = icmp eq i64 %indvars.iv.next369, %wide.trip.count371
  br i1 %exitcond372.not, label %.loopexit209.us.us, label %.lr.ph252.us.us, !llvm.loop !65

.lr.ph234.us.us.us.us:                            ; preds = %.lr.ph252.us.us
  %i.ej = sext i32 %.0156249.us.us.us.us to i64   ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !4
  %i.em = icmp eq i32 %i.ei, %i.el
  br i1 %i.em, label %.split.us.us.us.us.us, label %.lr.ph244.us.us.us.us.preheader

.lr.ph244.us.us.us.us.preheader:                  ; preds = %.lr.ph234.us.us.us.us
  %exitcond367.not487 = icmp eq i32 %.0156249.us.us.us.us, %i.ef
  br i1 %exitcond367.not487, label %.loopexit.us.us.us.us, label %.lr.ph489, !llvm.loop !64

.lr.ph489:                                        ; preds = %.lr.ph244.us.us.us.us.preheader
  br label %bb.g, !llvm.loop !64

bb.g:                                             ; preds = %.lr.ph489, %.lr.ph244.us.us.us.us
  %indvars.iv363488 = phi i64 [ %i.ej, %.lr.ph489 ], [ %indvars.iv.next364, %.lr.ph244.us.us.us.us ]
  %indvars.iv.next364 = add nsw i64 %indvars.iv363488, 1 ; 4 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv.next364
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !4
  %i.ep = icmp eq i32 %i.ei, %i.eo
  br i1 %i.ep, label %.split.us.us.us.us.us.loopexit, label %.lr.ph244.us.us.us.us, !llvm.loop !64

.lr.ph244.us.us.us.us:                            ; preds = %bb.g
  %exitcond367.not = icmp eq i64 %indvars.iv.next364, %wide.trip.count366
  br i1 %exitcond367.not, label %.lr.ph244.us.us.us.us..loopexit.us.us.us.us.loopexit_crit_edge, label %bb.g, !llvm.loop !64

.split.us.us.us.us.us.loopexit:                   ; preds = %bb.g
  %i.eq = trunc nsw i64 %indvars.iv.next364 to i32
  %i.er = icmp eq i32 %.0156249.us.us.us.us, %i.eq
  %i.es = zext i1 %i.er to i32
  br label %.split.us.us.us.us.us

.split.us.us.us.us.us:                            ; preds = %.split.us.us.us.us.us.loopexit, %.lr.ph234.us.us.us.us
  %.2168.lcssa214.us.us.us.us.us = phi i32 [ 1, %.lr.ph234.us.us.us.us ], [ %i.es, %.split.us.us.us.us.us.loopexit ]
  %spec.select199.us.us.us.us = add nsw i32 %.0156249.us.us.us.us, %.2168.lcssa214.us.us.us.us.us
  br label %.loopexit.us.us.us.us

.lr.ph257.split.us.split:                         ; preds = %.lr.ph257.thread, %.loopexit209.us
  %i.et = phi i32 [ %i.ey, %.loopexit209.us ], [ %.pre413, %.lr.ph257.thread ] ; 2 uses
  %i.eu = phi i32 [ %i.ew, %.loopexit209.us ], [ %.pre412, %.lr.ph257.thread ]
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %.loopexit209.us ], [ 0, %.lr.ph257.thread ]
  %.0181255.us = phi i32 [ %.1182.lcssa.us, %.loopexit209.us ], [ %i.dw, %.lr.ph257.thread ] ; 2 uses
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1 ; 4 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next359
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !4  ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next359
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4  ; 3 uses
  %i.ez = icmp slt i32 %i.et, %i.ey
  br i1 %i.ez, label %.lr.ph252.us.preheader, label %.loopexit209.us

.lr.ph252.us.preheader:                           ; preds = %.lr.ph257.split.us.split
  %i.fa = add nsw i32 %i.ew, -1                   ; 2 uses
  %i.fb = sext i32 %i.et to i64
  %wide.trip.count356 = sext i32 %i.ey to i64
  %wide.trip.count351 = sext i32 %i.fa to i64
  br label %.lr.ph252.us

.loopexit209.us:                                  ; preds = %.loopexit.us.us, %.lr.ph257.split.us.split
  %.1182.lcssa.us = phi i32 [ %.0181255.us, %.lr.ph257.split.us.split ], [ %spec.select200.us.us, %.loopexit.us.us ] ; 2 uses
  %exitcond362.not = icmp eq i64 %indvars.iv.next359, %wide.trip.count376
  br i1 %exitcond362.not, label %._crit_edge, label %.lr.ph257.split.us.split, !llvm.loop !63

.lr.ph252.us:                                     ; preds = %.lr.ph252.us.preheader, %.loopexit.us.us
  %indvars.iv353 = phi i64 [ %i.fb, %.lr.ph252.us.preheader ], [ %indvars.iv.next354, %.loopexit.us.us ] ; 2 uses
  %.0156249.us.us = phi i32 [ %i.eu, %.lr.ph252.us.preheader ], [ %.1157.us.us, %.loopexit.us.us ] ; 8 uses
  %.1182247.us.us = phi i32 [ %.0181255.us, %.lr.ph252.us.preheader ], [ %spec.select200.us.us, %.loopexit.us.us ]
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv353
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !4  ; 2 uses
  %.not197231.us.us.not = icmp slt i32 %.0156249.us.us, %i.ew
  br i1 %.not197231.us.us.not, label %.lr.ph234.us.us, label %.loopexit.us.us

.lr.ph244.us.us..loopexit.us.us.loopexit_crit_edge: ; preds = %.lr.ph244.us.us
  br label %.loopexit.us.us, !llvm.loop !64

.loopexit.us.us:                                  ; preds = %.lr.ph244.us.us.preheader, %.lr.ph244.us.us..loopexit.us.us.loopexit_crit_edge, %.lr.ph252.us, %.split.us.us.us
  %.not197213.us.us = phi i32 [ 0, %.split.us.us.us ], [ 1, %.lr.ph252.us ], [ 1, %.lr.ph244.us.us..loopexit.us.us.loopexit_crit_edge ], [ 1, %.lr.ph244.us.us.preheader ]
  %.1157.us.us = phi i32 [ %spec.select199.us.us, %.split.us.us.us ], [ %.0156249.us.us, %.lr.ph252.us ], [ %.0156249.us.us, %.lr.ph244.us.us..loopexit.us.us.loopexit_crit_edge ], [ %.0156249.us.us, %.lr.ph244.us.us.preheader ]
  %spec.select200.us.us = add nsw i32 %.not197213.us.us, %.1182247.us.us ; 2 uses
  %indvars.iv.next354 = add nsw i64 %indvars.iv353, 1 ; 2 uses
  %exitcond357.not = icmp eq i64 %indvars.iv.next354, %wide.trip.count356
  br i1 %exitcond357.not, label %.loopexit209.us, label %.lr.ph252.us, !llvm.loop !65

.lr.ph234.us.us:                                  ; preds = %.lr.ph252.us
  %i.fh = sext i32 %.0156249.us.us to i64         ; 2 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !4
  %i.fk = icmp eq i32 %i.fg, %i.fj
  br i1 %i.fk, label %.split.us.us.us, label %.lr.ph244.us.us.preheader

.lr.ph244.us.us.preheader:                        ; preds = %.lr.ph234.us.us
  %exitcond352.not484 = icmp eq i32 %.0156249.us.us, %i.fa
  br i1 %exitcond352.not484, label %.loopexit.us.us, label %.lr.ph486, !llvm.loop !64

.lr.ph486:                                        ; preds = %.lr.ph244.us.us.preheader
  br label %bb.h, !llvm.loop !64

bb.h:                                             ; preds = %.lr.ph486, %.lr.ph244.us.us
  %indvars.iv348485 = phi i64 [ %i.fh, %.lr.ph486 ], [ %indvars.iv.next349, %.lr.ph244.us.us ]
  %indvars.iv.next349 = add nsw i64 %indvars.iv348485, 1 ; 4 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv.next349
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.fn = icmp eq i32 %i.fg, %i.fm
  br i1 %i.fn, label %.split.us.us.us.loopexit, label %.lr.ph244.us.us, !llvm.loop !64

.lr.ph244.us.us:                                  ; preds = %bb.h
  %exitcond352.not = icmp eq i64 %indvars.iv.next349, %wide.trip.count351
  br i1 %exitcond352.not, label %.lr.ph244.us.us..loopexit.us.us.loopexit_crit_edge, label %bb.h, !llvm.loop !64

.split.us.us.us.loopexit:                         ; preds = %bb.h
  %i.fo = trunc nsw i64 %indvars.iv.next349 to i32
  %i.fp = icmp eq i32 %.0156249.us.us, %i.fo
  %i.fq = zext i1 %i.fp to i32
  br label %.split.us.us.us

.split.us.us.us:                                  ; preds = %.split.us.us.us.loopexit, %.lr.ph234.us.us
  %.2168.lcssa214.us.us.us = phi i32 [ 1, %.lr.ph234.us.us ], [ %i.fq, %.split.us.us.us.loopexit ]
  %spec.select199.us.us = add nsw i32 %.0156249.us.us, %.2168.lcssa214.us.us.us
  br label %.loopexit.us.us

.loopexit209:                                     ; preds = %.loopexit, %.lr.ph257.split
  %.1182.lcssa = phi i32 [ %.0181255, %.lr.ph257.split ], [ %spec.select200, %.loopexit ] ; 2 uses
  %exitcond347.not = icmp eq i64 %indvars.iv.next344, %wide.trip.count346
  br i1 %exitcond347.not, label %._crit_edge, label %.lr.ph257.split, !llvm.loop !63

.lr.ph257.split:                                  ; preds = %.lr.ph257, %.loopexit209
  %i.fr = phi i32 [ %.pre409, %.lr.ph257 ], [ %i.fw, %.loopexit209 ] ; 2 uses
  %i.fs = phi i32 [ %.pre, %.lr.ph257 ], [ %i.fu, %.loopexit209 ]
  %indvars.iv343 = phi i64 [ 0, %.lr.ph257 ], [ %indvars.iv.next344, %.loopexit209 ]
  %.0181255 = phi i32 [ %i.ds, %.lr.ph257 ], [ %.1182.lcssa, %.loopexit209 ] ; 2 uses
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 4 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next344
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4  ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next344
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !4  ; 3 uses
  %i.fx = icmp slt i32 %i.fr, %i.fw
  br i1 %i.fx, label %.lr.ph252.preheader, label %.loopexit209

.lr.ph252.preheader:                              ; preds = %.lr.ph257.split
  %i.fy = add nsw i32 %i.fu, -1                   ; 2 uses
  %i.fz = sext i32 %i.fr to i64
  %wide.trip.count341 = sext i32 %i.fw to i64
  %wide.trip.count336 = sext i32 %i.fy to i64
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %.loopexit
  %indvars.iv338 = phi i64 [ %i.fz, %.lr.ph252.preheader ], [ %indvars.iv.next339, %.loopexit ] ; 2 uses
  %.0156249 = phi i32 [ %i.fs, %.lr.ph252.preheader ], [ %.1157, %.loopexit ] ; 8 uses
  %.1182247 = phi i32 [ %.0181255, %.lr.ph252.preheader ], [ %spec.select200, %.loopexit ]
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv338
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !4  ; 2 uses
  br i1 %.not196, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph252
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph252
  %.2173 = phi i32 [ %i.ge, %bb.i ], [ %i.gb, %.lr.ph252 ] ; 2 uses
  %.not197231.not = icmp slt i32 %.0156249, %i.fu
  br i1 %.not197231.not, label %.lr.ph234, label %.loopexit

.lr.ph234:                                        ; preds = %bb.j
  %i.gf = sext i32 %.0156249 to i64               ; 2 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !4
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !4
  %i.gl = icmp eq i32 %.2173, %i.gk
  br i1 %i.gl, label %.split, label %.lr.ph240.preheader

.lr.ph240.preheader:                              ; preds = %.lr.ph234
  %exitcond337.not481 = icmp eq i32 %.0156249, %i.fy
  br i1 %exitcond337.not481, label %.loopexit, label %.lr.ph483, !llvm.loop !64

.lr.ph483:                                        ; preds = %.lr.ph240.preheader
  br label %bb.k, !llvm.loop !64

bb.k:                                             ; preds = %.lr.ph483, %.lr.ph240
  %indvars.iv333482 = phi i64 [ %i.gf, %.lr.ph483 ], [ %indvars.iv.next334, %.lr.ph240 ]
  %indvars.iv.next334 = add nsw i64 %indvars.iv333482, 1 ; 4 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv.next334
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !4
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr %2, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !4
  %i.gr = icmp eq i32 %.2173, %i.gq
  br i1 %i.gr, label %.split.loopexit, label %.lr.ph240, !llvm.loop !64

.split.loopexit:                                  ; preds = %bb.k
  %i.gs = trunc nsw i64 %indvars.iv.next334 to i32
  %i.gt = icmp eq i32 %.0156249, %i.gs
  %i.gu = zext i1 %i.gt to i32
  br label %.split

.split:                                           ; preds = %.split.loopexit, %.lr.ph234
  %.2168.lcssa214 = phi i32 [ 1, %.lr.ph234 ], [ %i.gu, %.split.loopexit ]
  %spec.select199 = add nsw i32 %.0156249, %.2168.lcssa214
  br label %.loopexit

.lr.ph240:                                        ; preds = %bb.k
  %exitcond337.not = icmp eq i64 %indvars.iv.next334, %wide.trip.count336
  br i1 %exitcond337.not, label %.lr.ph240..loopexit.loopexit_crit_edge, label %bb.k, !llvm.loop !64

.lr.ph240..loopexit.loopexit_crit_edge:           ; preds = %.lr.ph240
  br label %.loopexit, !llvm.loop !64

.loopexit:                                        ; preds = %.lr.ph240.preheader, %.lr.ph240..loopexit.loopexit_crit_edge, %bb.j, %.split
  %.not197213 = phi i32 [ 0, %.split ], [ 1, %bb.j ], [ 1, %.lr.ph240..loopexit.loopexit_crit_edge ], [ 1, %.lr.ph240.preheader ]
  %.1157 = phi i32 [ %spec.select199, %.split ], [ %.0156249, %bb.j ], [ %.0156249, %.lr.ph240..loopexit.loopexit_crit_edge ], [ %.0156249, %.lr.ph240.preheader ]
  %spec.select200 = add nsw i32 %.not197213, %.1182247 ; 2 uses
  %indvars.iv.next339 = add nsw i64 %indvars.iv338, 1 ; 2 uses
  %exitcond342.not = icmp eq i64 %indvars.iv.next339, %wide.trip.count341
  br i1 %exitcond342.not, label %.loopexit209, label %.lr.ph252, !llvm.loop !65

._crit_edge:                                      ; preds = %.loopexit209, %.loopexit209.us, %.loopexit209.us.us, %.loopexit210.thread, %.loopexit210
  %i.gv = phi i1 [ false, %.loopexit210 ], [ false, %.loopexit210.thread ], [ true, %.loopexit209.us.us ], [ true, %.loopexit209.us ], [ true, %.loopexit209 ]
  %.0180204452 = phi ptr [ %i.r, %.loopexit210 ], [ null, %.loopexit210.thread ], [ null, %.loopexit209.us.us ], [ null, %.loopexit209.us ], [ %i.r, %.loopexit209 ] ; 4 uses
  %.2205450 = phi i32 [ %.2205, %.loopexit210 ], [ %i.du, %.loopexit210.thread ], [ %i.du, %.loopexit209.us.us ], [ %i.du, %.loopexit209.us ], [ %.2205, %.loopexit209 ]
  %.0181.lcssa = phi i32 [ %i.ds, %.loopexit210 ], [ %i.dw, %.loopexit210.thread ], [ %.1182.lcssa.us.us, %.loopexit209.us.us ], [ %.1182.lcssa.us, %.loopexit209.us ], [ %.1182.lcssa, %.loopexit209 ] ; 4 uses
  %i.gw = tail call ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 56) #11 ; 13 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  store ptr null, ptr %i.gx, align 8, !tbaa !8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gw, i8 0, i64 24, i1 false)
  store i32 %i.c, ptr %i.gy, align 8, !tbaa !13
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 28
  store i32 %.2205450, ptr %i.gz, align 4, !tbaa !14
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  store i32 %.0181.lcssa, ptr %i.ha, align 8, !tbaa !15
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 52
  store i32 1, ptr %i.hb, align 4, !tbaa !16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  store i32 %i.c, ptr %i.hc, align 8, !tbaa !17
  %i.hd = icmp ne i32 %.0181.lcssa, 0             ; 2 uses
  br i1 %i.hd, label %bb.l, label %.thread464

.thread464:                                       ; preds = %._crit_edge
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.hf = tail call ptr @hypre_CAlloc(i32 noundef %.0181.lcssa, i32 noundef 8) #11
  store ptr %i.hf, ptr %i.gw, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %.pre414 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !18
  %i.hg = icmp eq ptr %.pre414, null
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  br i1 %i.hg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread464, %bb.l
  %i.hi = phi ptr [ %i.he, %.thread464 ], [ %i.hh, %bb.l ] ; 2 uses
  %i.hj = add nsw i32 %i.c, 1
  %i.hk = tail call ptr @hypre_CAlloc(i32 noundef %i.hj, i32 noundef 4) #11
  store ptr %i.hk, ptr %i.hi, align 8, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.hl = phi ptr [ %i.hi, %bb.m ], [ %i.hh, %bb.l ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !20 ; 2 uses
  %i.ho = icmp eq ptr %i.hn, null
  %or.cond3.i = and i1 %i.hd, %i.ho
  br i1 %or.cond3.i, label %bb.o, label %hypre_CSRMatrixInitialize.exit

bb.o:                                             ; preds = %bb.n
  %i.hp = tail call ptr @hypre_CAlloc(i32 noundef %.0181.lcssa, i32 noundef 4) #11 ; 2 uses
  store ptr %i.hp, ptr %i.hm, align 8, !tbaa !20
  br label %hypre_CSRMatrixInitialize.exit

hypre_CSRMatrixInitialize.exit:                   ; preds = %bb.n, %bb.o
  %i.hq = phi ptr [ %i.hn, %bb.n ], [ %i.hp, %bb.o ] ; 9 uses
  %i.hr = load ptr, ptr %i.hl, align 8, !tbaa !18 ; 2 uses
  store i32 0, ptr %i.hr, align 4, !tbaa !4
  br i1 %i.gv, label %.lr.ph286, label %._crit_edge287

.lr.ph286:                                        ; preds = %hypre_CSRMatrixInitialize.exit
  %i.hs = ptrtoaddr ptr %i.hq to i64
  %.not194 = icmp eq ptr %3, null                 ; 2 uses
  %wide.trip.count407 = zext nneg i32 %i.c to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph286, %._crit_edge281
  %indvars.iv404 = phi i64 [ 0, %.lr.ph286 ], [ %indvars.iv.next405, %._crit_edge281 ] ; 3 uses
  %.0160285 = phi i32 [ 0, %.lr.ph286 ], [ %.2162.lcssa, %._crit_edge281 ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv404
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !4  ; 4 uses
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 5 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next405
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !4  ; 5 uses
  %i.hx = icmp slt i32 %i.hu, %i.hw
  br i1 %i.hx, label %.lr.ph265.preheader, label %._crit_edge266

.lr.ph265.preheader:                              ; preds = %bb.p
  %i.hy = sext i32 %.0160285 to i64               ; 5 uses
  %i.hz = sext i32 %i.hu to i64                   ; 6 uses
  %wide.trip.count386 = sext i32 %i.hw to i64     ; 4 uses
  %i.ia = sub nsw i64 %wide.trip.count386, %i.hz  ; 3 uses
  %min.iters.check542 = icmp ult i64 %i.ia, 8
  br i1 %min.iters.check542, label %.lr.ph265.preheader557, label %vector.memcheck539

vector.memcheck539:                               ; preds = %.lr.ph265.preheader
  %i.ib = shl nsw i64 %i.hy, 2
  %i.ic = shl nsw i64 %i.hz, 2
  %i.id = add i64 %i.ib, %i.hs
  %i.ie = add i64 %i.ic, %i.l
  %i.if = sub i64 %i.ie, %i.id
  %diff.check540 = icmp ugt i64 %i.if, -32
  br i1 %diff.check540, label %.lr.ph265.preheader557, label %vector.ph543

vector.ph543:                                     ; preds = %vector.memcheck539
  %n.vec545 = and i64 %i.ia, -8                   ; 4 uses
  %i.ig = add nsw i64 %n.vec545, %i.hz
  %i.ih = add nsw i64 %n.vec545, %i.hy            ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.k, i64 %i.hz
  %invariant.gep594 = getelementptr [4 x i8], ptr %i.hq, i64 %i.hy
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph543
  %index547 = phi i64 [ 0, %vector.ph543 ], [ %index.next550, %vector.body546 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index547 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load548 = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load549 = load <4 x i32>, ptr %i.ii, align 4, !tbaa !4
  %gep595 = getelementptr [4 x i8], ptr %invariant.gep594, i64 %index547 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %gep595, i64 16
  store <4 x i32> %wide.load548, ptr %gep595, align 4, !tbaa !4
  store <4 x i32> %wide.load549, ptr %i.ij, align 4, !tbaa !4
  %index.next550 = add nuw i64 %index547, 8       ; 2 uses
  %i.ik = icmp eq i64 %index.next550, %n.vec545
  br i1 %i.ik, label %middle.block551, label %vector.body546, !llvm.loop !66

middle.block551:                                  ; preds = %vector.body546
  %cmp.n552 = icmp eq i64 %i.ia, %n.vec545
  br i1 %cmp.n552, label %._crit_edge266.loopexit, label %.lr.ph265.preheader557

.lr.ph265.preheader557:                           ; preds = %vector.memcheck539, %.lr.ph265.preheader, %middle.block551
end_hunk_0
