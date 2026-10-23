Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilLinear?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@linear_equation_solver:bb.a

.loopexit342:                                     ; preds = %bb.l, %.critedge
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %exitcond421.not = icmp eq i64 %indvars.iv.next418, %i.g
  br i1 %exitcond421.not, label %._crit_edge372, label %.lr.ph370, !llvm.loop !40

bb.m:                                             ; preds = %.critedge
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.aj

._crit_edge372:                                   ; preds = %.loopexit342
  %i.em = tail call noalias ptr @calloc(i64 noundef %i.x, i64 noundef 4) #14 ; 19 uses
  %.not279 = icmp eq ptr %i.em, null
  br i1 %.not279, label %bb.n, label %.preheader340

.preheader340:                                    ; preds = %._crit_edge372
  %i.en = icmp sgt i32 %.1246, 0                  ; 3 uses
  br i1 %i.en, label %.lr.ph374.preheader, label %.lr.ph377.preheader

.lr.ph374.preheader:                              ; preds = %.preheader340
  %wide.trip.count425 = zext nneg i32 %.1246 to i64 ; 3 uses
  %min.iters.check545 = icmp ult i32 %.1246, 8
  br i1 %min.iters.check545, label %.lr.ph374.preheader589, label %vector.ph546

vector.ph546:                                     ; preds = %.lr.ph374.preheader
  %n.vec547 = and i64 %wide.trip.count425, 2147483640 ; 3 uses
  %broadcast.splatinsert548 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat549 = shufflevector <4 x i32> %broadcast.splatinsert548, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body550

vector.body550:                                   ; preds = %pred.store.continue565, %vector.ph546
  %index551 = phi i64 [ 0, %vector.ph546 ], [ %index.next566, %pred.store.continue565 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index551
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index551
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load <4 x i32>, ptr %i.eo, align 4, !tbaa !13 ; 5 uses
  %i.es = load <4 x i32>, ptr %i.eq, align 4, !tbaa !13 ; 5 uses
  %i.et = icmp ult <4 x i32> %i.er, %broadcast.splat549 ; 4 uses
  %i.eu = icmp ult <4 x i32> %i.es, %broadcast.splat549 ; 4 uses
  %i.ev = extractelement <4 x i1> %i.et, i64 0
  br i1 %i.ev, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body550
  %i.ew = extractelement <4 x i32> %i.er, i64 0
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ex
  store i32 1, ptr %i.ey, align 4, !tbaa !13
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body550
  %i.ez = extractelement <4 x i1> %i.et, i64 1
  br i1 %i.ez, label %pred.store.if552, label %pred.store.continue553

pred.store.if552:                                 ; preds = %pred.store.continue
  %i.fa = extractelement <4 x i32> %i.er, i64 1
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fb
  store i32 1, ptr %i.fc, align 4, !tbaa !13
  br label %pred.store.continue553

pred.store.continue553:                           ; preds = %pred.store.if552, %pred.store.continue
  %i.fd = extractelement <4 x i1> %i.et, i64 2
  br i1 %i.fd, label %pred.store.if554, label %pred.store.continue555

pred.store.if554:                                 ; preds = %pred.store.continue553
  %i.fe = extractelement <4 x i32> %i.er, i64 2
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ff
  store i32 1, ptr %i.fg, align 4, !tbaa !13
  br label %pred.store.continue555

pred.store.continue555:                           ; preds = %pred.store.if554, %pred.store.continue553
  %i.fh = extractelement <4 x i1> %i.et, i64 3
  br i1 %i.fh, label %pred.store.if556, label %pred.store.continue557

pred.store.if556:                                 ; preds = %pred.store.continue555
  %i.fi = extractelement <4 x i32> %i.er, i64 3
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fj
  store i32 1, ptr %i.fk, align 4, !tbaa !13
  br label %pred.store.continue557

pred.store.continue557:                           ; preds = %pred.store.if556, %pred.store.continue555
  %i.fl = extractelement <4 x i1> %i.eu, i64 0
  br i1 %i.fl, label %pred.store.if558, label %pred.store.continue559

pred.store.if558:                                 ; preds = %pred.store.continue557
  %i.fm = extractelement <4 x i32> %i.es, i64 0
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fn
  store i32 1, ptr %i.fo, align 4, !tbaa !13
  br label %pred.store.continue559

pred.store.continue559:                           ; preds = %pred.store.if558, %pred.store.continue557
  %i.fp = extractelement <4 x i1> %i.eu, i64 1
  br i1 %i.fp, label %pred.store.if560, label %pred.store.continue561

pred.store.if560:                                 ; preds = %pred.store.continue559
  %i.fq = extractelement <4 x i32> %i.es, i64 1
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fr
  store i32 1, ptr %i.fs, align 4, !tbaa !13
  br label %pred.store.continue561

pred.store.continue561:                           ; preds = %pred.store.if560, %pred.store.continue559
  %i.ft = extractelement <4 x i1> %i.eu, i64 2
  br i1 %i.ft, label %pred.store.if562, label %pred.store.continue563

pred.store.if562:                                 ; preds = %pred.store.continue561
  %i.fu = extractelement <4 x i32> %i.es, i64 2
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fv
  store i32 1, ptr %i.fw, align 4, !tbaa !13
  br label %pred.store.continue563

pred.store.continue563:                           ; preds = %pred.store.if562, %pred.store.continue561
  %i.fx = extractelement <4 x i1> %i.eu, i64 3
  br i1 %i.fx, label %pred.store.if564, label %pred.store.continue565

pred.store.if564:                                 ; preds = %pred.store.continue563
  %i.fy = extractelement <4 x i32> %i.es, i64 3
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fz
  store i32 1, ptr %i.ga, align 4, !tbaa !13
  br label %pred.store.continue565

pred.store.continue565:                           ; preds = %pred.store.if564, %pred.store.continue563
  %index.next566 = add nuw i64 %index551, 8       ; 2 uses
  %i.gb = icmp eq i64 %index.next566, %n.vec547
  br i1 %i.gb, label %middle.block567, label %vector.body550, !llvm.loop !41

middle.block567:                                  ; preds = %pred.store.continue565
  %cmp.n568 = icmp eq i64 %n.vec547, %wide.trip.count425
  br i1 %cmp.n568, label %.lr.ph377.preheader, label %.lr.ph374.preheader589

.lr.ph374.preheader589:                           ; preds = %.lr.ph374.preheader, %middle.block567
  %indvars.iv422.ph = phi i64 [ 0, %.lr.ph374.preheader ], [ %n.vec547, %middle.block567 ]
  br label %.lr.ph374

bb.n:                                             ; preds = %._crit_edge372
  %i.gc = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite280 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 46, i64 1, ptr %i.gc) #12 ; 0 uses
  br label %bb.aj

.lr.ph377.preheader:                              ; preds = %bb.p, %middle.block567, %.preheader340
  %min.iters.check571 = icmp ult i32 %2, 8
  br i1 %min.iters.check571, label %.lr.ph377.preheader585, label %vector.ph572

vector.ph572:                                     ; preds = %.lr.ph377.preheader
  %n.vec573 = and i64 %i.q, 2147483640            ; 3 uses
  br label %vector.body574

vector.body574:                                   ; preds = %vector.body574, %vector.ph572
  %index575 = phi i64 [ 0, %vector.ph572 ], [ %index.next579, %vector.body574 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph572 ], [ %i.gj, %vector.body574 ]
  %vec.phi576 = phi <4 x i32> [ zeroinitializer, %vector.ph572 ], [ %i.gk, %vector.body574 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %index575 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load577 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !13
  %wide.load578 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !13
  %i.gf = icmp eq <4 x i32> %wide.load577, zeroinitializer
  %i.gg = icmp eq <4 x i32> %wide.load578, zeroinitializer
  %i.gh = zext <4 x i1> %i.gf to <4 x i32>
  %i.gi = zext <4 x i1> %i.gg to <4 x i32>
  %i.gj = add <4 x i32> %vec.phi, %i.gh           ; 2 uses
  %i.gk = add <4 x i32> %vec.phi576, %i.gi        ; 2 uses
  %index.next579 = add nuw i64 %index575, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next579, %n.vec573
  br i1 %i.gl, label %middle.block580, label %vector.body574, !llvm.loop !42

middle.block580:                                  ; preds = %vector.body574
  %bin.rdx = add <4 x i32> %i.gk, %i.gj
  %i.gm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n581 = icmp eq i64 %n.vec573, %i.q
  br i1 %cmp.n581, label %._crit_edge378, label %.lr.ph377.preheader585

.lr.ph377.preheader585:                           ; preds = %.lr.ph377.preheader, %middle.block580
  %indvars.iv427.ph = phi i64 [ 0, %.lr.ph377.preheader ], [ %n.vec573, %middle.block580 ]
  %.0248375.ph = phi i32 [ 0, %.lr.ph377.preheader ], [ %i.gm, %middle.block580 ]
  br label %.lr.ph377

.lr.ph374:                                        ; preds = %.lr.ph374.preheader589, %bb.p
  %indvars.iv422 = phi i64 [ %indvars.iv.next423, %bb.p ], [ %indvars.iv422.ph, %.lr.ph374.preheader589 ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv422
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !13 ; 2 uses
  %or.cond295 = icmp ult i32 %i.go, %2
  br i1 %or.cond295, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph374
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.gp
  store i32 1, ptr %i.gq, align 4, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph374
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 1 ; 2 uses
  %exitcond426.not = icmp eq i64 %indvars.iv.next423, %wide.trip.count425
  br i1 %exitcond426.not, label %.lr.ph377.preheader, label %.lr.ph374, !llvm.loop !43

._crit_edge378:                                   ; preds = %.lr.ph377, %middle.block580
  %spec.select.lcssa = phi i32 [ %i.gm, %middle.block580 ], [ %spec.select, %.lr.ph377 ] ; 10 uses
  %i.gr = icmp ne i32 %spec.select.lcssa, 0       ; 4 uses
  br i1 %i.gr, label %bb.q, label %.lr.ph385.preheader

.lr.ph377:                                        ; preds = %.lr.ph377.preheader585, %.lr.ph377
  %indvars.iv427 = phi i64 [ %indvars.iv.next428, %.lr.ph377 ], [ %indvars.iv427.ph, %.lr.ph377.preheader585 ] ; 2 uses
  %.0248375 = phi i32 [ %spec.select, %.lr.ph377 ], [ %.0248375.ph, %.lr.ph377.preheader585 ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv427
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !13
  %.not291 = icmp eq i32 %i.gt, 0
  %i.gu = zext i1 %.not291 to i32
  %spec.select = add nuw nsw i32 %.0248375, %i.gu ; 2 uses
  %indvars.iv.next428 = add nuw nsw i64 %indvars.iv427, 1 ; 2 uses
  %exitcond431.not = icmp eq i64 %indvars.iv.next428, %i.x
  br i1 %exitcond431.not, label %._crit_edge378, label %.lr.ph377, !llvm.loop !44

bb.q:                                             ; preds = %._crit_edge378
  %i.gv = zext nneg i32 %spec.select.lcssa to i64
  %i.gw = shl nuw nsw i64 %i.gv, 2
  %i.gx = tail call noalias ptr @malloc(i64 noundef %i.gw) #13 ; 7 uses
  %.not281 = icmp eq ptr %i.gx, null
  br i1 %.not281, label %bb.r, label %.lr.ph382.preheader

.lr.ph382.preheader:                              ; preds = %bb.q
  %xtraiter595 = and i64 %i.q, 1
  %i.gy = icmp eq i32 %2, 1
  br i1 %i.gy, label %.lr.ph382.epil.preheader, label %.lr.ph382.preheader.new

.lr.ph382.preheader.new:                          ; preds = %.lr.ph382.preheader
  %unroll_iter = and i64 %i.q, 2147483646
  br label %.lr.ph382

bb.r:                                             ; preds = %bb.q
  %i.gz = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite282 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 48, i64 1, ptr %i.gz) #12 ; 0 uses
  br label %bb.aj

.lr.ph382:                                        ; preds = %bb.u, %.lr.ph382.preheader.new
  %indvars.iv432 = phi i64 [ 0, %.lr.ph382.preheader.new ], [ %indvars.iv.next433.1, %bb.u ] ; 4 uses
  %.0227380 = phi i32 [ 0, %.lr.ph382.preheader.new ], [ %.1.1, %bb.u ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph382.preheader.new ], [ %niter.next.1, %bb.u ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv432
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !13
  %.not290 = icmp eq i32 %i.hb, 0
  br i1 %.not290, label %bb.s, label %.lr.ph382.1

bb.s:                                             ; preds = %.lr.ph382
  %i.hc = add nsw i32 %.0227380, 1
  %i.hd = sext i32 %.0227380 to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.hd
  %i.hf = trunc nuw nsw i64 %indvars.iv432 to i32
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !13
  br label %.lr.ph382.1

.lr.ph382.1:                                      ; preds = %.lr.ph382, %bb.s
  %.1 = phi i32 [ %.0227380, %.lr.ph382 ], [ %i.hc, %bb.s ] ; 3 uses
  %indvars.iv.next433 = or disjoint i64 %indvars.iv432, 1 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.next433
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !13
  %.not290.1 = icmp eq i32 %i.hh, 0
  br i1 %.not290.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph382.1
  %i.hi = add nsw i32 %.1, 1
  %i.hj = sext i32 %.1 to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.hj
  %i.hl = trunc nuw nsw i64 %indvars.iv.next433 to i32
  store i32 %i.hl, ptr %i.hk, align 4, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph382.1
  %.1.1 = phi i32 [ %.1, %.lr.ph382.1 ], [ %i.hi, %bb.t ] ; 2 uses
  %indvars.iv.next433.1 = add nuw nsw i64 %indvars.iv432, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph385.preheader.loopexit.unr-lcssa, label %.lr.ph382, !llvm.loop !45

.lr.ph385.preheader.loopexit.unr-lcssa:           ; preds = %bb.u
  %lcmp.mod596.not = icmp eq i64 %xtraiter595, 0
  br i1 %lcmp.mod596.not, label %.lr.ph385.preheader, label %.lr.ph382.epil.preheader

.lr.ph382.epil.preheader:                         ; preds = %.lr.ph385.preheader.loopexit.unr-lcssa, %.lr.ph382.preheader
  %indvars.iv432.epil.init = phi i64 [ 0, %.lr.ph382.preheader ], [ %indvars.iv.next433.1, %.lr.ph385.preheader.loopexit.unr-lcssa ] ; 2 uses
  %.0227380.epil.init = phi i32 [ 0, %.lr.ph382.preheader ], [ %.1.1, %.lr.ph385.preheader.loopexit.unr-lcssa ]
  %lcmp.mod597 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod597)
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv432.epil.init
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !13
  %.not290.epil = icmp eq i32 %i.hn, 0
  br i1 %.not290.epil, label %bb.v, label %.lr.ph385.preheader

bb.v:                                             ; preds = %.lr.ph382.epil.preheader
  %i.ho = sext i32 %.0227380.epil.init to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.ho
  %i.hq = trunc nuw nsw i64 %indvars.iv432.epil.init to i32
  store i32 %i.hq, ptr %i.hp, align 4, !tbaa !13
  br label %.lr.ph385.preheader

.lr.ph385.preheader:                              ; preds = %.lr.ph385.preheader.loopexit.unr-lcssa, %bb.v, %.lr.ph382.epil.preheader, %._crit_edge378
  %.0250 = phi ptr [ null, %._crit_edge378 ], [ %i.gx, %.lr.ph382.epil.preheader ], [ %i.gx, %bb.v ], [ %i.gx, %.lr.ph385.preheader.loopexit.unr-lcssa ] ; 13 uses
  %invariant.gep476 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.x
  br label %.lr.ph385

.lr.ph385:                                        ; preds = %.lr.ph385, %.lr.ph385.preheader
  %indvars.iv437 = phi i64 [ 0, %.lr.ph385.preheader ], [ %indvars.iv.next438, %.lr.ph385 ] ; 2 uses
  %i.hr = mul nuw nsw i64 %indvars.iv437, %i.h
  %gep477 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep476, i64 %i.hr
  %i.hs = load double, ptr %gep477, align 8, !tbaa !15
  %i.ht = tail call double @llvm.fabs.f64(double %i.hs)
  %i.hu = fcmp ule double %i.ht, f0x3D719799812DEA11 ; 3 uses
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %exitcond441.not = icmp ne i64 %indvars.iv.next438, %i.g
  %or.cond479.not = select i1 %i.hu, i1 %exitcond441.not, i1 false
  br i1 %or.cond479.not, label %.lr.ph385, label %._crit_edge386, !llvm.loop !46

._crit_edge386:                                   ; preds = %.lr.ph385
  %i.hv = and i1 %i.gr, %i.hu                     ; 2 uses
  %i.hw = zext i1 %i.hv to i32                    ; 2 uses
  %i.hx = icmp sgt i32 %2, 3
  %i.hy = and i1 %i.hx, %i.gr                     ; 3 uses
  %i.hz = zext i1 %i.hy to i32                    ; 2 uses
  %i.ia = shl nuw nsw i64 %i.x, 3                 ; 5 uses
  %i.ib = tail call noalias ptr @malloc(i64 noundef %i.ia) #13 ; 27 uses
  %i.ic = tail call noalias ptr @malloc(i64 noundef %i.ia) #13 ; 12 uses
  %i.id = tail call noalias ptr @malloc(i64 noundef %i.ia) #13 ; 6 uses
  %i.ie = icmp ne ptr %i.ib, null
  %i.if = icmp ne ptr %i.ic, null
  %or.cond5 = and i1 %i.ie, %i.if
  %i.ig = icmp ne ptr %i.id, null
  %or.cond7 = and i1 %or.cond5, %i.ig
  br i1 %or.cond7, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge386
  %i.ih = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite283 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 35, i64 1, ptr %i.ih) #12 ; 0 uses
  br label %bb.aj

bb.x:                                             ; preds = %._crit_edge386
  br i1 %i.gr, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ib, i8 0, i64 %i.ia, i1 false), !tbaa !15
  br i1 %i.en, label %.lr.ph54.split.preheader.i, label %compute_solution_from_free.exit

.lr.ph54.split.preheader.i:                       ; preds = %bb.y
  %wide.trip.count68.i = zext nneg i32 %.1246 to i64 ; 2 uses
  %invariant.gep.i305 = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.x ; 5 uses
  %xtraiter598 = and i64 %wide.trip.count68.i, 3  ; 3 uses
  %i.ii = icmp ult i32 %.1246, 4
  br i1 %i.ii, label %.lr.ph54.split.i.epil.preheader, label %.lr.ph54.split.preheader.i.new

.lr.ph54.split.preheader.i.new:                   ; preds = %.lr.ph54.split.preheader.i
  %unroll_iter601 = and i64 %wide.trip.count68.i, 2147483644
  br label %.lr.ph54.split.i

.lr.ph54.split.i:                                 ; preds = %.lr.ph54.split.i, %.lr.ph54.split.preheader.i.new
  %indvars.iv65.i = phi i64 [ 0, %.lr.ph54.split.preheader.i.new ], [ %indvars.iv.next66.i.3, %.lr.ph54.split.i ] ; 6 uses
  %niter602 = phi i64 [ 0, %.lr.ph54.split.preheader.i.new ], [ %niter602.next.3, %.lr.ph54.split.i ]
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv65.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !13
  %i.il = mul nuw nsw i64 %indvars.iv65.i, %i.h
  %gep.i306 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i305, i64 %i.il
  %i.im = load double, ptr %gep.i306, align 8, !tbaa !15
  %i.in = sext i32 %i.ik to i64
  %i.io = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.in
  store double %i.im, ptr %i.io, align 8, !tbaa !15
  %indvars.iv.next66.i = or disjoint i64 %indvars.iv65.i, 1 ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next66.i
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !13
  %i.ir = mul nuw nsw i64 %indvars.iv.next66.i, %i.h
  %gep.i306.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i305, i64 %i.ir
  %i.is = load double, ptr %gep.i306.1, align 8, !tbaa !15
  %i.it = sext i32 %i.iq to i64
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.it
  store double %i.is, ptr %i.iu, align 8, !tbaa !15
  %indvars.iv.next66.i.1 = or disjoint i64 %indvars.iv65.i, 2 ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next66.i.1
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !13
  %i.ix = mul nuw nsw i64 %indvars.iv.next66.i.1, %i.h
  %gep.i306.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i305, i64 %i.ix
  %i.iy = load double, ptr %gep.i306.2, align 8, !tbaa !15
  %i.iz = sext i32 %i.iw to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.iz
  store double %i.iy, ptr %i.ja, align 8, !tbaa !15
  %indvars.iv.next66.i.2 = or disjoint i64 %indvars.iv65.i, 3 ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next66.i.2
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !13
  %i.jd = mul nuw nsw i64 %indvars.iv.next66.i.2, %i.h
  %gep.i306.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i305, i64 %i.jd
  %i.je = load double, ptr %gep.i306.3, align 8, !tbaa !15
  %i.jf = sext i32 %i.jc to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.jf
  store double %i.je, ptr %i.jg, align 8, !tbaa !15
  %indvars.iv.next66.i.3 = add nuw nsw i64 %indvars.iv65.i, 4 ; 2 uses
  %niter602.next.3 = add i64 %niter602, 4         ; 2 uses
  %niter602.ncmp.3 = icmp eq i64 %niter602.next.3, %unroll_iter601
  br i1 %niter602.ncmp.3, label %compute_solution_from_free.exit.loopexit.unr-lcssa, label %.lr.ph54.split.i, !llvm.loop !0

bb.z:                                             ; preds = %bb.x
  %i.jh = icmp samesign ugt i32 %spec.select.lcssa, 5
  br i1 %i.jh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ji = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %spec.select.lcssa) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !13
  %i.jj = zext nneg i32 %spec.select.lcssa to i64 ; 6 uses
  %i.jk = shl nuw nsw i64 %i.jj, 3
  %calloc = tail call ptr @calloc(i64 1, i64 %i.jk) ; 5 uses
  %.not.i = icmp eq ptr %calloc, null
  br i1 %.not.i, label %.critedge337, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ab
  %i.jl = tail call fastcc i32 @assign_and_check_integer(ptr noundef nonnull readonly %i.k, i32 noundef range(i32 1, -2147483648) %2, ptr noundef nonnull readonly %i.n, i32 noundef %.1246, ptr noundef readonly %.0250, i32 noundef range(i32 1, 0) %spec.select.lcssa, ptr noundef %calloc, ptr noundef nonnull readonly %0, i32 noundef range(i32 1, -2147483648) %1, ptr noundef nonnull %i.ic, ptr noundef nonnull %i.id, ptr noundef nonnull %i.ib, i32 noundef range(i32 0, 2) %i.hw, i32 noundef range(i32 0, 2) %i.hz)
  %.not45.i = icmp eq i32 %i.jl, 0
  br i1 %.not45.i, label %.sink.split.i, label %compute_solution_from_free.exit.critedge

.sink.split.i:                                    ; preds = %.lr.ph.preheader.i
  %i.jm = call fastcc i32 @search_integer_solutions(i32 noundef 0, i32 noundef range(i32 1, 0) %spec.select.lcssa, ptr noundef %calloc, ptr noundef @__const.try_integer_solution.candidates, ptr noundef nonnull readonly %i.k, i32 noundef range(i32 1, -2147483648) %1, i32 noundef range(i32 1, -2147483648) %2, ptr noundef nonnull readonly %i.n, i32 noundef %.1246, ptr noundef readonly %.0250, ptr noundef nonnull readonly %0, ptr noundef nonnull %i.ic, ptr noundef nonnull %i.id, ptr noundef nonnull %i.ib, i32 noundef range(i32 0, 2) %i.hw, i32 noundef range(i32 0, 2) %i.hz, ptr noundef %i.a)
  %i.jn = icmp eq i32 %i.jm, 0
  tail call void @free(ptr noundef nonnull %calloc) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %i.jn, label %.preheader, label %compute_solution_from_free.exit

.critedge337:                                     ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.preheader

.preheader:                                       ; preds = %.sink.split.i, %.critedge337
  %i.jo = shl nuw nsw i64 %i.jj, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ic, i8 0, i64 %i.jo, i1 false), !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ib, i8 0, i64 %i.ia, i1 false), !tbaa !15
  %xtraiter603 = and i64 %i.jj, 3                 ; 3 uses
  %i.jp = icmp ult i32 %spec.select.lcssa, 4
  br i1 %i.jp, label %.lr.ph.split.i.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter607 = and i64 %i.jj, 2147483644
  br label %.lr.ph.split.i

.preheader.i320.unr-lcssa:                        ; preds = %.lr.ph.split.i
  %lcmp.mod605.not = icmp eq i64 %xtraiter603, 0
  br i1 %lcmp.mod605.not, label %.preheader.i320, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %.preheader.i320.unr-lcssa, %.preheader
  %indvars.iv.i317.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.i318.3, %.preheader.i320.unr-lcssa ]
  %lcmp.mod606 = icmp ne i64 %xtraiter603, 0
  tail call void @llvm.assume(i1 %lcmp.mod606)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %indvars.iv.i317.epil = phi i64 [ %indvars.iv.next.i318.epil, %.lr.ph.split.i.epil ], [ %indvars.iv.i317.epil.init, %.lr.ph.split.i.epil.preheader ] ; 3 uses
  %epil.iter604 = phi i64 [ %epil.iter604.next, %.lr.ph.split.i.epil ], [ 0, %.lr.ph.split.i.epil.preheader ]
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.0250, i64 %indvars.iv.i317.epil
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !13
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.i317.epil
  %i.jt = load double, ptr %i.js, align 8, !tbaa !15
  %i.ju = sext i32 %i.jr to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.ju
  store double %i.jt, ptr %i.jv, align 8, !tbaa !15
  %indvars.iv.next.i318.epil = add nuw nsw i64 %indvars.iv.i317.epil, 1
  %epil.iter604.next = add i64 %epil.iter604, 1   ; 2 uses
  %epil.iter604.cmp.not = icmp eq i64 %epil.iter604.next, %xtraiter603
  br i1 %epil.iter604.cmp.not, label %.preheader.i320, label %.lr.ph.split.i.epil, !llvm.loop !47

.preheader.i320:                                  ; preds = %.lr.ph.split.i.epil, %.preheader.i320.unr-lcssa
  br i1 %i.en, label %.lr.ph54.i, label %compute_solution_from_free.exit321

.lr.ph54.i:                                       ; preds = %.preheader.i320
  %wide.trip.count78.i = zext nneg i32 %.1246 to i64
  %invariant.gep84.i = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.x
  %xtraiter609 = and i64 %i.jj, 1
  %i.jw = icmp eq i32 %spec.select.lcssa, 1
  %unroll_iter614 = and i64 %i.jj, 2147483646
  %lcmp.mod611.not = icmp eq i64 %xtraiter609, 0
  %lcmp.mod613 = trunc i32 %spec.select.lcssa to i1
  br label %.lr.ph52.us.i

.lr.ph52.us.i:                                    ; preds = %._crit_edge.us.i, %.lr.ph54.i
  %indvars.iv75.i = phi i64 [ 0, %.lr.ph54.i ], [ %indvars.iv.next76.i, %._crit_edge.us.i ] ; 3 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv75.i
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !13
  %i.jz = mul nuw nsw i64 %indvars.iv75.i, %i.h   ; 2 uses
  %gep85.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep84.i, i64 %i.jz
  %i.ka = load double, ptr %gep85.i, align 8, !tbaa !15 ; 2 uses
  %i.kb = trunc nuw i64 %i.jz to i32              ; 3 uses
  br i1 %i.jw, label %.epil.preheader, label %.lr.ph52.us.i.new

.lr.ph52.us.i.new:                                ; preds = %.lr.ph52.us.i, %.lr.ph52.us.i.new
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i.1, %.lr.ph52.us.i.new ], [ 0, %.lr.ph52.us.i ] ; 3 uses
  %.04050.us.i = phi double [ %i.ky, %.lr.ph52.us.i.new ], [ %i.ka, %.lr.ph52.us.i ]
  %niter615 = phi i64 [ %niter615.next.1, %.lr.ph52.us.i.new ], [ 0, %.lr.ph52.us.i ]
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.0250, i64 %indvars.iv70.i
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !13 ; 2 uses
  %i.ke = add nsw i32 %i.kd, %i.kb
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.kf
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !15
  %i.ki = sext i32 %i.kd to i64
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.ki
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !15
  %i.kl = fneg double %i.kh
  %i.km = tail call double @llvm.fmuladd.f64(double %i.kl, double %i.kk, double %.04050.us.i)
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.0250, i64 %indvars.iv70.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !13 ; 2 uses
  %i.kq = add nsw i32 %i.kp, %i.kb
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.kr
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !15
  %i.ku = sext i32 %i.kp to i64
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.ku
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !15
  %i.kx = fneg double %i.kt
  %i.ky = tail call double @llvm.fmuladd.f64(double %i.kx, double %i.kw, double %i.km) ; 3 uses
  %indvars.iv.next71.i.1 = add nuw nsw i64 %indvars.iv70.i, 2 ; 2 uses
  %niter615.next.1 = add i64 %niter615, 2         ; 2 uses
  %niter615.ncmp.1 = icmp eq i64 %niter615.next.1, %unroll_iter614
  br i1 %niter615.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph52.us.i.new, !llvm.loop !1

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph52.us.i.new
  br i1 %lcmp.mod611.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph52.us.i
  %indvars.iv70.i.epil.init = phi i64 [ 0, %.lr.ph52.us.i ], [ %indvars.iv.next71.i.1, %._crit_edge.us.i.unr-lcssa ]
  %.04050.us.i.epil.init = phi double [ %i.ka, %.lr.ph52.us.i ], [ %i.ky, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod613)
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.0250, i64 %indvars.iv70.i.epil.init
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !13 ; 2 uses
  %i.lb = add nsw i32 %i.la, %i.kb
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !15
  %i.lf = sext i32 %i.la to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.lf
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !15
  %i.li = fneg double %i.le
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.li, double %i.lh, double %.04050.us.i.epil.init)
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa583 = phi double [ %i.ky, %._crit_edge.us.i.unr-lcssa ], [ %i.lj, %.epil.preheader ]
  %i.lk = sext i32 %i.jy to i64
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.lk
  store double %.lcssa583, ptr %i.ll, align 8, !tbaa !15
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv75.i, 1 ; 2 uses
  %exitcond79.not.i = icmp eq i64 %indvars.iv.next76.i, %wide.trip.count78.i
  br i1 %exitcond79.not.i, label %compute_solution_from_free.exit321, label %.lr.ph52.us.i, !llvm.loop !0

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.preheader.new
  %indvars.iv.i317 = phi i64 [ 0, %.preheader.new ], [ %indvars.iv.next.i318.3, %.lr.ph.split.i ] ; 6 uses
  %niter608 = phi i64 [ 0, %.preheader.new ], [ %niter608.next.3, %.lr.ph.split.i ]
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.0250, i64 %indvars.iv.i317
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !13
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.i317
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !15
  %i.lq = sext i32 %i.ln to i64
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.lq
  store double %i.lp, ptr %i.lr, align 8, !tbaa !15
  %indvars.iv.next.i318 = or disjoint i64 %indvars.iv.i317, 1 ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.0250, i64 %indvars.iv.next.i318
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !13
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.next.i318
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !15
  %i.lw = sext i32 %i.lt to i64
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.lw
  store double %i.lv, ptr %i.lx, align 8, !tbaa !15
  %indvars.iv.next.i318.1 = or disjoint i64 %indvars.iv.i317, 2 ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.0250, i64 %indvars.iv.next.i318.1
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !13
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.next.i318.1
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !15
  %i.mc = sext i32 %i.lz to i64
  %i.md = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.mc
  store double %i.mb, ptr %i.md, align 8, !tbaa !15
  %indvars.iv.next.i318.2 = or disjoint i64 %indvars.iv.i317, 3 ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.0250, i64 %indvars.iv.next.i318.2
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !13
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.next.i318.2
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !15
  %i.mi = sext i32 %i.mf to i64
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.mi
  store double %i.mh, ptr %i.mj, align 8, !tbaa !15
  %indvars.iv.next.i318.3 = add nuw nsw i64 %indvars.iv.i317, 4 ; 2 uses
  %niter608.next.3 = add i64 %niter608, 4         ; 2 uses
  %niter608.ncmp.3 = icmp eq i64 %niter608.next.3, %unroll_iter607
  br i1 %niter608.ncmp.3, label %.preheader.i320.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !2

compute_solution_from_free.exit321:               ; preds = %._crit_edge.us.i, %.preheader.i320
  %or.cond9 = and i1 %i.hy, %i.hu
  br i1 %or.cond9, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %compute_solution_from_free.exit321
  %puts288 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %compute_solution_from_free.exit

bb.ad:                                            ; preds = %compute_solution_from_free.exit321
  br i1 %i.hv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %puts287 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %compute_solution_from_free.exit

bb.af:                                            ; preds = %bb.ad
  br i1 %i.hy, label %bb.ag, label %.thread335

bb.ag:                                            ; preds = %bb.af
  %puts286 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %compute_solution_from_free.exit

.thread335:                                       ; preds = %bb.af
  %puts285 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %compute_solution_from_free.exit

compute_solution_from_free.exit.critedge:         ; preds = %.lr.ph.preheader.i
  tail call void @free(ptr noundef nonnull %calloc) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %compute_solution_from_free.exit

compute_solution_from_free.exit.loopexit.unr-lcssa: ; preds = %.lr.ph54.split.i
  %lcmp.mod599.not = icmp eq i64 %xtraiter598, 0
  br i1 %lcmp.mod599.not, label %compute_solution_from_free.exit, label %.lr.ph54.split.i.epil.preheader

.lr.ph54.split.i.epil.preheader:                  ; preds = %compute_solution_from_free.exit.loopexit.unr-lcssa, %.lr.ph54.split.preheader.i
  %indvars.iv65.i.epil.init = phi i64 [ 0, %.lr.ph54.split.preheader.i ], [ %indvars.iv.next66.i.3, %compute_solution_from_free.exit.loopexit.unr-lcssa ]
  %lcmp.mod600 = icmp ne i64 %xtraiter598, 0
  tail call void @llvm.assume(i1 %lcmp.mod600)
  br label %.lr.ph54.split.i.epil

.lr.ph54.split.i.epil:                            ; preds = %.lr.ph54.split.i.epil, %.lr.ph54.split.i.epil.preheader
  %indvars.iv65.i.epil = phi i64 [ %indvars.iv65.i.epil.init, %.lr.ph54.split.i.epil.preheader ], [ %indvars.iv.next66.i.epil, %.lr.ph54.split.i.epil ] ; 3 uses
end_hunk_0
