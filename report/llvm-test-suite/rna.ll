Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/rna?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@foldrna:bb.a
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dw, i8 0, i64 %i.ds, i1 false), !tbaa !88
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv562
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dz, i8 0, i64 %i.ds, i1 false), !tbaa !88
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv562
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ec, i8 0, i64 %i.ds, i1 false), !tbaa !88
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv562
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ef, i8 0, i64 %i.ds, i1 false), !tbaa !88
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv562
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ei, i8 0, i64 %i.ds, i1 false), !tbaa !88
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv562
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.el, i8 0, i64 %i.ds, i1 false), !tbaa !88
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv562
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.eo, i8 0, i64 %i.ds, i1 false), !tbaa !88
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv562
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 56
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.er, i8 0, i64 %i.ds, i1 false), !tbaa !88
  %indvars.iv.next563.7 = add nuw nsw i64 %indvars.iv562, 8 ; 2 uses
  %niter798.next.7 = add i64 %niter798, 8         ; 2 uses
  %niter798.ncmp.7 = icmp eq i64 %niter798.next.7, %unroll_iter797
  br i1 %niter798.ncmp.7, label %.lr.ph452.loopexit.unr-lcssa, label %.preheader326, !llvm.loop !40

.preheader335:                                    ; preds = %.preheader335.preheader, %._crit_edge361
  %indvars.iv524 = phi i64 [ 0, %.preheader335.preheader ], [ %indvars.iv.next525, %._crit_edge361 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv524
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !87 ; 7 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv524
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !87 ; 7 uses
  %i.ew = ptrtoaddr ptr %i.ev to i64
  %i.ex = ptrtoaddr ptr %i.et to i64
  %i.ey = sub i64 %i.ex, %i.ew
  %diff.check = icmp ugt i64 %i.ey, -32
  %or.cond759 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond759, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader335, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader335 ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.ez, align 4, !tbaa !88
  store <4 x float> splat (float 1.000000e+00), ptr %i.fa, align 4, !tbaa !88
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <4 x float> zeroinitializer, ptr %i.fb, align 4, !tbaa !88
  store <4 x float> zeroinitializer, ptr %i.fc, align 4, !tbaa !88
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge361, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader335, %middle.block
  %indvars.iv519.ph = phi i64 [ 0, %.preheader335 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod787.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv519.prol = phi i64 [ %indvars.iv.next520.prol, %scalar.ph.prol ], [ %indvars.iv519.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv519.prol
  store float 1.000000e+00, ptr %i.fe, align 4, !tbaa !88
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv519.prol
  store float 0.000000e+00, ptr %i.ff, align 4, !tbaa !88
  %indvars.iv.next520.prol = add nuw nsw i64 %indvars.iv519.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter786
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !42

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv519.unr = phi i64 [ %indvars.iv519.ph, %scalar.ph.preheader ], [ %indvars.iv.next520.prol, %scalar.ph.prol ]
  %i.fg = sub nsw i64 %indvars.iv519.ph, %wide.trip.count522
  %i.fh = icmp ugt i64 %i.fg, -4
  br i1 %i.fh, label %._crit_edge361, label %scalar.ph

.lr.ph377:                                        ; preds = %._crit_edge361, %.preheader335.lr.ph
  %i.fi = load ptr, ptr @foldrna.pairprob1, align 8, !tbaa !20
  %i.fj = load ptr, ptr @foldrna.pairprob2, align 8
  %i.fk = load ptr, ptr @foldrna.oseq1, align 8   ; 2 uses
  %i.fl = load ptr, ptr @foldrna.oseq2, align 8   ; 4 uses
  %wide.trip.count82.i281 = zext nneg i32 %0 to i64 ; 2 uses
  %wide.trip.count.i282 = zext nneg i32 %1 to i64 ; 4 uses
  %i.fm = load ptr, ptr @foldrna.impmtx2, align 8
  %wide.trip.count537 = and i64 %i.b, 2147483647
  %wide.trip.count532 = and i64 %i.e, 2147483647  ; 8 uses
  br label %bb.ab

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv519 = phi i64 [ %indvars.iv.next520.3, %scalar.ph ], [ %indvars.iv519.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv519
  store float 1.000000e+00, ptr %i.fn, align 4, !tbaa !88
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv519
  store float 0.000000e+00, ptr %i.fo, align 4, !tbaa !88
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next520
  store float 1.000000e+00, ptr %i.fp, align 4, !tbaa !88
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next520
  store float 0.000000e+00, ptr %i.fq, align 4, !tbaa !88
  %indvars.iv.next520.1 = add nuw nsw i64 %indvars.iv519, 2 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next520.1
  store float 1.000000e+00, ptr %i.fr, align 4, !tbaa !88
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next520.1
  store float 0.000000e+00, ptr %i.fs, align 4, !tbaa !88
  %indvars.iv.next520.2 = add nuw nsw i64 %indvars.iv519, 3 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next520.2
  store float 1.000000e+00, ptr %i.ft, align 4, !tbaa !88
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next520.2
  store float 0.000000e+00, ptr %i.fu, align 4, !tbaa !88
  %indvars.iv.next520.3 = add nuw nsw i64 %indvars.iv519, 4 ; 2 uses
  %exitcond523.not.3 = icmp eq i64 %indvars.iv.next520.3, %wide.trip.count522
  br i1 %exitcond523.not.3, label %._crit_edge361, label %scalar.ph, !llvm.loop !43

._crit_edge361:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1 ; 2 uses
  %exitcond528.not = icmp eq i64 %indvars.iv.next525, %wide.trip.count527
  br i1 %exitcond528.not, label %.lr.ph377, label %.preheader335, !llvm.loop !44

.preheader329:                                    ; preds = %._crit_edge373
  store ptr %storemerge.lcssa, ptr @foldrna.pairpt1, align 8, !tbaa !22
  %i.fv = load ptr, ptr @foldrna.oseq1, align 8
  %i.fw = load ptr, ptr @foldrna.oseq2, align 8
  %wide.trip.count35.i = zext nneg i32 %0 to i64
  %wide.trip.count.i317 = zext nneg i32 %1 to i64
  %i.fx = load ptr, ptr @foldrna.impmtx2, align 8
  br i1 %i.bn, label %.preheader328.preheader, label %.lr.ph452

.preheader328.preheader:                          ; preds = %.preheader329
  %wide.trip.count557 = and i64 %i.b, 2147483647
  %wide.trip.count542 = and i64 %i.e, 2147483647
  %wide.trip.count547 = and i64 %i.e, 2147483647
  %wide.trip.count552 = and i64 %i.e, 2147483647
  %i.fy = shl nuw nsw i64 %wide.trip.count532, 2  ; 4 uses
  %min.iters.check722 = icmp samesign ult i64 %wide.trip.count532, 8
  %n.vec724 = and i64 %i.e, 2147483640            ; 3 uses
  %cmp.n735 = icmp eq i64 %wide.trip.count532, %n.vec724
  %xtraiter788 = and i64 %i.e, 1
  %lcmp.mod789.not = icmp eq i64 %xtraiter788, 0
  %min.iters.check699 = icmp samesign ult i64 %wide.trip.count532, 8
  %n.vec701 = and i64 %i.e, 2147483640            ; 3 uses
  %cmp.n709 = icmp eq i64 %wide.trip.count532, %n.vec701
  %xtraiter791 = and i64 %i.e, 1
  %lcmp.mod792.not = icmp eq i64 %xtraiter791, 0
  br label %.preheader328

bb.ab:                                            ; preds = %.lr.ph377, %._crit_edge373
  %indvars.iv534 = phi i64 [ 0, %.lr.ph377 ], [ %indvars.iv.next535, %._crit_edge373 ] ; 7 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv534
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !22 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !25 ; 2 uses
  %.not371 = icmp eq i32 %i.gc, -1
  br i1 %.not371, label %._crit_edge373, label %.preheader333.lr.ph

.preheader333.lr.ph:                              ; preds = %bb.ab
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv534
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv534
  br i1 %i.bn, label %.preheader333.us, label %.preheader333

.preheader333.us:                                 ; preds = %.preheader333.lr.ph, %._crit_edge370.us
  %i.gf = phi i32 [ %i.mt, %._crit_edge370.us ], [ %i.gc, %.preheader333.lr.ph ] ; 3 uses
  %storemerge372.us = phi ptr [ %i.mr, %._crit_edge370.us ], [ %i.ga, %.preheader333.lr.ph ] ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %storemerge372.us, i64 20
  %i.gh = sext i32 %i.gf to i64
  %i.gi = icmp slt i64 %indvars.iv534, %i.gh      ; 2 uses
  %i.gj = zext nneg i32 %i.gf to i64              ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader333.us, %._crit_edge367.us
  %indvars.iv529 = phi i64 [ 0, %.preheader333.us ], [ %indvars.iv.next530, %._crit_edge367.us ] ; 10 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv529
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !22 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !25 ; 2 uses
  %.not249363.us = icmp eq i32 %i.gn, -1
  br i1 %.not249363.us, label %._crit_edge367.us, label %.lr.ph366.us

.lr.ph366.us:                                     ; preds = %bb.ac, %bb.an
  %i.go = phi i32 [ %i.mq, %bb.an ], [ %i.gn, %bb.ac ] ; 4 uses
  %storemerge248364.us = phi ptr [ %i.mo, %bb.an ], [ %i.gl, %bb.ac ] ; 3 uses
  %i.gp = load float, ptr %i.gg, align 4, !tbaa !26
  %i.gq = getelementptr inbounds nuw i8, ptr %storemerge248364.us, i64 20
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !26
  %i.gs = fmul float %i.gp, %i.gr                 ; 2 uses
  %i.gt = or i32 %i.go, %i.gf
  %or.cond.us = icmp sgt i32 %i.gt, -1
  br i1 %or.cond.us, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %.lr.ph366.us
  %12 = sext i32 %i.go to i64                     ; 2 uses
  %13 = icmp sgt i64 %indvars.iv529, %12
  %or.cond254.us = and i1 %i.gi, %13
  br i1 %or.cond254.us, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %14 = icmp slt i64 %indvars.iv529, %12
  %or.cond255.us = and i1 %i.gi, %14
  br i1 %or.cond255.us, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ad, label %.preheader.lr.ph.i279.us, label %.sink.split

.preheader.lr.ph.i279.us:                         ; preds = %bb.af
  %i.gu = zext nneg i32 %i.go to i64
  br i1 %i.af, label %.preheader.us.i284.us, label %.sink.split

.preheader.us.i284.us:                            ; preds = %.preheader.lr.ph.i279.us, %._crit_edge.us.i300.us
  %indvars.iv79.i285.us = phi i64 [ %indvars.iv.next80.i302.us, %._crit_edge.us.i300.us ], [ 0, %.preheader.lr.ph.i279.us ] ; 3 uses
  %.04759.us.i286.us = phi float [ %.us-phi.us.i301.us, %._crit_edge.us.i300.us ], [ 0.000000e+00, %.preheader.lr.ph.i279.us ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv79.i285.us
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !10 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv534
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !85
  %i.gz = sext i8 %i.gy to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !7  ; 3 uses
  %i.hc = icmp sgt i32 %i.hb, 3
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv79.i285.us ; 3 uses
  br i1 %i.hc, label %.lr.ph.split.us.us.i308.us, label %.lr.ph.split.us63.preheader.i287.us

.lr.ph.split.us63.preheader.i287.us:              ; preds = %.preheader.us.i284.us
  %i.he = add nsw i32 %i.hb, 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gj
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !85
  %i.hh = sext i8 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !7  ; 2 uses
  %i.hk = shl nsw i32 %i.hj, 2
  %i.hl = add i32 %i.he, %i.hk
  %i.hm = icmp sgt i32 %i.hj, 3
  %spec.select.i288.us = select i1 %i.hm, i32 36, i32 %i.hl ; 2 uses
  %i.hn = icmp eq i32 %spec.select.i288.us, 36
  %i.ho = sext i32 %spec.select.i288.us to i64
  %i.hp = getelementptr inbounds [148 x i8], ptr @ribosumdis, i64 %i.ho
  br label %.lr.ph.split.us63.i289.us

.lr.ph.split.us63.i289.us:                        ; preds = %bb.ai, %.lr.ph.split.us63.preheader.i287.us
  %indvars.iv.i290.us = phi i64 [ 0, %.lr.ph.split.us63.preheader.i287.us ], [ %indvars.iv.next.i298.us, %bb.ai ] ; 3 uses
  %.14857.us65.i291.us = phi float [ %.04759.us.i286.us, %.lr.ph.split.us63.preheader.i287.us ], [ %.2.us67.i297.us, %bb.ai ]
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i290.us
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !10 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %indvars.iv529
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !85
  %i.hu = sext i8 %i.ht to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !7  ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.gu
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !85
  %i.hz = sext i8 %i.hy to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !7  ; 2 uses
  %i.ic = icmp sgt i32 %i.hw, 3
  br i1 %i.ic, label %.lr.ph.split.us63..thread.us66_crit_edge.i306.us, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.split.us63.i289.us
  %i.id = icmp sgt i32 %i.ib, 3
  %or.cond.us.i292.us = select i1 %i.id, i1 true, i1 %i.hn
  %.pre84.i293.us = load double, ptr %i.hd, align 8, !tbaa !28 ; 2 uses
  br i1 %or.cond.us.i292.us, label %.thread.us66.i304.us, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ie = shl nsw i32 %i.ib, 2
  %i.if = add nsw i32 %i.hw, 4
  %i.ig = add i32 %i.if, %i.ie
  br label %bb.ai

.lr.ph.split.us63..thread.us66_crit_edge.i306.us: ; preds = %.lr.ph.split.us63.i289.us
  %.pre.i307.us = load double, ptr %i.hd, align 8, !tbaa !28
  br label %.thread.us66.i304.us

.thread.us66.i304.us:                             ; preds = %.lr.ph.split.us63..thread.us66_crit_edge.i306.us, %bb.ag
  %i.ih = phi double [ %.pre.i307.us, %.lr.ph.split.us63..thread.us66_crit_edge.i306.us ], [ %.pre84.i293.us, %bb.ag ]
  %.156.us.i305.us = phi i32 [ 36, %.lr.ph.split.us63..thread.us66_crit_edge.i306.us ], [ %i.hb, %bb.ag ]
  %i.ii = sext i32 %.156.us.i305.us to i64
  %i.ij = getelementptr inbounds [104 x i8], ptr @n_dis, i64 %i.ii
  br label %bb.ai

bb.ai:                                            ; preds = %.thread.us66.i304.us, %bb.ah
  %.sink.i294.us = phi i32 [ %i.hw, %.thread.us66.i304.us ], [ %i.ig, %bb.ah ]
  %.sink96.i295.us = phi ptr [ %i.ij, %.thread.us66.i304.us ], [ %i.hp, %bb.ah ]
  %.sink93.i296.us = phi double [ %i.ih, %.thread.us66.i304.us ], [ %.pre84.i293.us, %bb.ah ]
  %i.ik = sext i32 %.sink.i294.us to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %.sink96.i295.us, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !7
  %i.in = sitofp i32 %i.im to float
  %i.io = fpext nnan ninf float %i.in to double
  %i.ip = fmul double %.sink93.i296.us, %i.io
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i290.us
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !28
  %i.is = fpext float %.14857.us65.i291.us to double
  %i.it = tail call double @llvm.fmuladd.f64(double %i.ip, double %i.ir, double %i.is)
  %.2.us67.i297.us = fptrunc double %i.it to float ; 2 uses
  %indvars.iv.next.i298.us = add nuw nsw i64 %indvars.iv.i290.us, 1 ; 2 uses
  %exitcond.not.i299.us = icmp eq i64 %indvars.iv.next.i298.us, %wide.trip.count.i282
  br i1 %exitcond.not.i299.us, label %._crit_edge.us.i300.us, label %.lr.ph.split.us63.i289.us, !llvm.loop !45

.lr.ph.split.us.us.i308.us:                       ; preds = %.preheader.us.i284.us
  %i.iu = load double, ptr %i.hd, align 8, !tbaa !28
  br label %.thread.us.us.i309.us

.thread.us.us.i309.us:                            ; preds = %.thread.us.us.i309.us, %.lr.ph.split.us.us.i308.us
  %indvars.iv74.i310.us = phi i64 [ %indvars.iv.next75.i313.us, %.thread.us.us.i309.us ], [ 0, %.lr.ph.split.us.us.i308.us ] ; 3 uses
  %.14857.us.us.i311.us = phi float [ %.2.us.us.i312.us, %.thread.us.us.i309.us ], [ %.04759.us.i286.us, %.lr.ph.split.us.us.i308.us ]
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv74.i310.us
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !10
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %indvars.iv529
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !85
  %i.iz = sext i8 %i.iy to i64
  %i.ja = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !7
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 3744), i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !7
  %i.jf = sitofp i32 %i.je to float
  %i.jg = fpext nnan ninf float %i.jf to double
  %i.jh = fmul double %i.iu, %i.jg
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv74.i310.us
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !28
  %i.jk = fpext float %.14857.us.us.i311.us to double
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.jh, double %i.jj, double %i.jk)
  %.2.us.us.i312.us = fptrunc double %i.jl to float ; 2 uses
  %indvars.iv.next75.i313.us = add nuw nsw i64 %indvars.iv74.i310.us, 1 ; 2 uses
  %exitcond78.not.i314.us = icmp eq i64 %indvars.iv.next75.i313.us, %wide.trip.count.i282
  br i1 %exitcond78.not.i314.us, label %._crit_edge.us.i300.us, label %.thread.us.us.i309.us, !llvm.loop !45

._crit_edge.us.i300.us:                           ; preds = %bb.ai, %.thread.us.us.i309.us
  %.us-phi.us.i301.us = phi float [ %.2.us.us.i312.us, %.thread.us.us.i309.us ], [ %.2.us67.i297.us, %bb.ai ] ; 2 uses
  %indvars.iv.next80.i302.us = add nuw nsw i64 %indvars.iv79.i285.us, 1 ; 2 uses
  %exitcond83.not.i303.us = icmp eq i64 %indvars.iv.next80.i302.us, %wide.trip.count82.i281
  br i1 %exitcond83.not.i303.us, label %.sink.split, label %.preheader.us.i284.us, !llvm.loop !46

bb.aj:                                            ; preds = %bb.ad
  br i1 %i.ad, label %.preheader.lr.ph.i.us, label %.sink.split

.preheader.lr.ph.i.us:                            ; preds = %bb.aj
  %i.jm = zext nneg i32 %i.go to i64
  br i1 %i.af, label %.preheader.us.i.us, label %.sink.split

.preheader.us.i.us:                               ; preds = %.preheader.lr.ph.i.us, %._crit_edge.us.i.us
  %indvars.iv79.i.us = phi i64 [ %indvars.iv.next80.i.us, %._crit_edge.us.i.us ], [ 0, %.preheader.lr.ph.i.us ] ; 3 uses
  %.04759.us.i.us = phi float [ %.us-phi.us.i.us, %._crit_edge.us.i.us ], [ 0.000000e+00, %.preheader.lr.ph.i.us ] ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv79.i.us
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !10 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %indvars.iv534
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !85
  %i.jr = sext i8 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !7  ; 3 uses
  %i.ju = icmp sgt i32 %i.jt, 3
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv79.i.us ; 3 uses
  br i1 %i.ju, label %.lr.ph.split.us.us.i.us, label %.lr.ph.split.us63.preheader.i.us

.lr.ph.split.us63.preheader.i.us:                 ; preds = %.preheader.us.i.us
  %i.jw = shl nsw i32 %i.jt, 2
  %i.jx = add nsw i32 %i.jw, 4
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.gj
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !85
  %i.ka = sext i8 %i.jz to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !7  ; 2 uses
  %i.kd = add nsw i32 %i.jx, %i.kc
  %i.ke = icmp sgt i32 %i.kc, 3
  %spec.select.i.us = select i1 %i.ke, i32 36, i32 %i.kd ; 2 uses
  %i.kf = icmp eq i32 %spec.select.i.us, 36
  %i.kg = sext i32 %spec.select.i.us to i64
  %i.kh = getelementptr inbounds [148 x i8], ptr @ribosumdis, i64 %i.kg
  br label %.lr.ph.split.us63.i.us

.lr.ph.split.us63.i.us:                           ; preds = %bb.am, %.lr.ph.split.us63.preheader.i.us
  %indvars.iv.i274.us = phi i64 [ 0, %.lr.ph.split.us63.preheader.i.us ], [ %indvars.iv.next.i276.us, %bb.am ] ; 3 uses
  %.14857.us65.i.us = phi float [ %.04759.us.i.us, %.lr.ph.split.us63.preheader.i.us ], [ %.2.us67.i.us, %bb.am ]
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i274.us
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !10 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %indvars.iv529
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !85
  %i.km = sext i8 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !7  ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.jm
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !85
  %i.kr = sext i8 %i.kq to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !7  ; 2 uses
  %i.ku = icmp sgt i32 %i.ko, 3
  br i1 %i.ku, label %.lr.ph.split.us63..thread.us66_crit_edge.i.us, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.split.us63.i.us
  %i.kv = icmp sgt i32 %i.kt, 3
  %or.cond.us.i.us = select i1 %i.kv, i1 true, i1 %i.kf
  %.pre84.i.us = load double, ptr %i.jv, align 8, !tbaa !28 ; 2 uses
  br i1 %or.cond.us.i.us, label %.thread.us66.i.us, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kw = shl nsw i32 %i.ko, 2
  %i.kx = add nsw i32 %i.kw, 4
  %i.ky = add nsw i32 %i.kx, %i.kt
end_hunk_0
begin_hunk_1_@foldrna:bb.a

.preheader325.lr.ph:                              ; preds = %bb.ap
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %indvars.iv587 ; 3 uses
  br i1 %i.bn, label %.preheader325.us, label %.preheader325

.preheader325.us:                                 ; preds = %.preheader325.lr.ph, %._crit_edge399.us
  %i.rn = phi i32 [ %i.vx, %._crit_edge399.us ], [ %i.rl, %.preheader325.lr.ph ] ; 5 uses
  %storemerge250429.us = phi ptr [ %i.vv, %._crit_edge399.us ], [ %i.rj, %.preheader325.lr.ph ] ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %storemerge250429.us, i64 20 ; 4 uses
  %i.rp = sext i32 %i.rn to i64                   ; 2 uses
  %i.rq = icmp sgt i64 %indvars.iv587, %i.rp
  %i.rr = icmp slt i64 %indvars.iv587, %i.rp
  %.fr394.us = freeze i1 %i.rr                    ; 2 uses
  %i.rs = zext nneg i32 %i.rn to i64
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %i.rs ; 3 uses
  %.fr.us = freeze i1 %i.rq
  br i1 %.fr.us, label %.lr.ph398.split.us.us, label %.lr.ph398.split.us431

.lr.ph398.split.us431:                            ; preds = %.preheader325.us
  br i1 %.fr394.us, label %.lr.ph398.split.split.us.us, label %.lr.ph398.split.split.us432.preheader

.lr.ph398.split.split.us432.preheader:            ; preds = %.lr.ph398.split.us431
  br i1 %i.rf, label %.lr.ph398.split.split.us432.epil.preheader, label %.lr.ph398.split.split.us432

.lr.ph398.split.split.us432:                      ; preds = %.lr.ph398.split.split.us432.preheader, %._crit_edge390.split.us.split.us.us.1
  %indvars.iv567 = phi i64 [ %indvars.iv.next568.1, %._crit_edge390.split.us.split.us.us.1 ], [ 0, %.lr.ph398.split.split.us432.preheader ] ; 3 uses
  %niter805 = phi i64 [ %niter805.next.1, %._crit_edge390.split.us.split.us.us.1 ], [ 0, %.lr.ph398.split.split.us432.preheader ]
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %indvars.iv567
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !22 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !25
  %.not253386.us434 = icmp eq i32 %i.rx, -1
  br i1 %.not253386.us434, label %._crit_edge390.split.us.split.us.us, label %.lr.ph389.us435

.lr.ph389.us435:                                  ; preds = %.lr.ph398.split.split.us432, %.lr.ph389.us435
  %storemerge252387.us.us.us = phi ptr [ %i.ry, %.lr.ph389.us435 ], [ %i.rv, %.lr.ph398.split.split.us432 ] ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %storemerge252387.us.us.us, i64 24
  %i.rz = getelementptr inbounds nuw i8, ptr %storemerge252387.us.us.us, i64 40
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !25
  %.not253.us.us.us = icmp eq i32 %i.sa, -1
  br i1 %.not253.us.us.us, label %._crit_edge390.split.us.split.us.us, label %.lr.ph389.us435, !llvm.loop !70

._crit_edge390.split.us.split.us.us:              ; preds = %.lr.ph389.us435, %.lr.ph398.split.split.us432
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %indvars.iv567
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !22 ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !25
  %.not253386.us434.1 = icmp eq i32 %i.sf, -1
  br i1 %.not253386.us434.1, label %._crit_edge390.split.us.split.us.us.1, label %.lr.ph389.us435.1

.lr.ph389.us435.1:                                ; preds = %._crit_edge390.split.us.split.us.us, %.lr.ph389.us435.1
  %storemerge252387.us.us.us.1 = phi ptr [ %i.sg, %.lr.ph389.us435.1 ], [ %i.sd, %._crit_edge390.split.us.split.us.us ] ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %storemerge252387.us.us.us.1, i64 24 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %storemerge252387.us.us.us.1, i64 40
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !25
  %.not253.us.us.us.1 = icmp eq i32 %i.si, -1
  br i1 %.not253.us.us.us.1, label %._crit_edge390.split.us.split.us.us.1, label %.lr.ph389.us435.1, !llvm.loop !70

._crit_edge390.split.us.split.us.us.1:            ; preds = %.lr.ph389.us435.1, %._crit_edge390.split.us.split.us.us
  %storemerge252.lcssa.us436.1 = phi ptr [ %i.sd, %._crit_edge390.split.us.split.us.us ], [ %i.sg, %.lr.ph389.us435.1 ]
  %indvars.iv.next568.1 = add nuw nsw i64 %indvars.iv567, 2 ; 2 uses
  %niter805.next.1 = add i64 %niter805, 2         ; 2 uses
  %niter805.ncmp.1 = icmp eq i64 %niter805.next.1, %unroll_iter804
  br i1 %niter805.ncmp.1, label %._crit_edge399.us.loopexit762.unr-lcssa, label %.lr.ph398.split.split.us432, !llvm.loop !71

.lr.ph398.split.split.us.us:                      ; preds = %.lr.ph398.split.us431, %._crit_edge390.split.us.split.us414.us
  %indvars.iv572 = phi i64 [ %indvars.iv.next573, %._crit_edge390.split.us.split.us414.us ], [ 0, %.lr.ph398.split.us431 ] ; 4 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %indvars.iv572
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !22 ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !25 ; 2 uses
  %.not253386.us408.us = icmp eq i32 %i.sm, -1
  br i1 %.not253386.us408.us, label %._crit_edge390.split.us.split.us414.us, label %.lr.ph389.us409.us

.lr.ph389.us409.us:                               ; preds = %.lr.ph398.split.split.us.us, %bb.ar
  %i.sn = phi i32 [ %i.tk, %bb.ar ], [ %i.sm, %.lr.ph398.split.split.us.us ] ; 3 uses
  %storemerge252387.us.us411.us = phi ptr [ %i.ti, %bb.ar ], [ %i.sk, %.lr.ph398.split.split.us.us ] ; 3 uses
  %i.so = or i32 %i.sn, %i.rn
  %or.cond3.us.us412.us = icmp sgt i32 %i.so, -1
  %i.sp = sext i32 %i.sn to i64
  %i.sq = icmp slt i64 %indvars.iv572, %i.sp
  %or.cond = and i1 %or.cond3.us.us412.us, %i.sq
  br i1 %or.cond, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph389.us409.us
  %i.sr = load float, ptr %i.ro, align 4, !tbaa !26
  %i.ss = getelementptr inbounds nuw i8, ptr %storemerge252387.us.us411.us, i64 20
  %i.st = load float, ptr %i.ss, align 4, !tbaa !26
  %i.su = fmul float %i.sr, %i.st
  %i.sv = load ptr, ptr %i.rt, align 8, !tbaa !87
  %i.sw = zext nneg i32 %i.sn to i64
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %i.sw
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !88 ; 2 uses
  %i.sz = fcmp olt float %i.sy, 0.000000e+00
  %i.ta = select i1 %i.sz, float 0.000000e+00, float %i.sy
  %i.tb = load float, ptr @consweight_rna, align 4, !tbaa !88
  %i.tc = fmul float %i.tb, %i.ta
  %i.td = fmul float %i.tc, 6.000000e+02
  %i.te = load ptr, ptr %i.rm, align 8, !tbaa !87
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %indvars.iv572 ; 2 uses
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !88
  %i.th = tail call float @llvm.fmuladd.f32(float %i.td, float %i.su, float %i.tg)
  store float %i.th, ptr %i.tf, align 4, !tbaa !88
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph389.us409.us
  %i.ti = getelementptr inbounds nuw i8, ptr %storemerge252387.us.us411.us, i64 24 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %storemerge252387.us.us411.us, i64 40
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !25 ; 2 uses
  %.not253.us.us413.us = icmp eq i32 %i.tk, -1
  br i1 %.not253.us.us413.us, label %._crit_edge390.split.us.split.us414.us, label %.lr.ph389.us409.us, !llvm.loop !70

._crit_edge390.split.us.split.us414.us:           ; preds = %bb.ar, %.lr.ph398.split.split.us.us
  %storemerge252.lcssa.us416.us = phi ptr [ %i.sk, %.lr.ph398.split.split.us.us ], [ %i.ti, %bb.ar ]
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %exitcond576.not = icmp eq i64 %indvars.iv.next573, %wide.trip.count575
  br i1 %exitcond576.not, label %._crit_edge399.us, label %.lr.ph398.split.split.us.us, !llvm.loop !71

.lr.ph398.split.us.us:                            ; preds = %.preheader325.us
  br i1 %.fr394.us, label %.lr.ph398.split.us.split.us.us, label %.lr.ph398.split.us.split.us440

.lr.ph398.split.us.split.us440:                   ; preds = %.lr.ph398.split.us.us, %._crit_edge390.split.us404.split.us.us
  %indvars.iv577 = phi i64 [ %indvars.iv.next578, %._crit_edge390.split.us404.split.us.us ], [ 0, %.lr.ph398.split.us.us ] ; 4 uses
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %indvars.iv577
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !22 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !25 ; 2 uses
  %.not253386.us.us442 = icmp eq i32 %i.to, -1
  br i1 %.not253386.us.us442, label %._crit_edge390.split.us404.split.us.us, label %.lr.ph389.us.us443

.lr.ph389.us.us443:                               ; preds = %.lr.ph398.split.us.split.us440, %bb.at
  %i.tp = phi i32 [ %i.um, %bb.at ], [ %i.to, %.lr.ph398.split.us.split.us440 ] ; 3 uses
  %storemerge252387.us401.us.us = phi ptr [ %i.uk, %bb.at ], [ %i.tm, %.lr.ph398.split.us.split.us440 ] ; 3 uses
  %i.tq = or i32 %i.tp, %i.rn
  %or.cond3.us402.us.us = icmp sgt i32 %i.tq, -1
  %i.tr = sext i32 %i.tp to i64
  %i.ts = icmp sgt i64 %indvars.iv577, %i.tr
  %or.cond465 = and i1 %or.cond3.us402.us.us, %i.ts
  br i1 %or.cond465, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph389.us.us443
  %i.tt = load float, ptr %i.ro, align 4, !tbaa !26
  %i.tu = getelementptr inbounds nuw i8, ptr %storemerge252387.us401.us.us, i64 20
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !26
  %i.tw = fmul float %i.tt, %i.tv
  %i.tx = load ptr, ptr %i.rt, align 8, !tbaa !87
  %i.ty = zext nneg i32 %i.tp to i64
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.ty
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !88 ; 2 uses
  %i.ub = fcmp olt float %i.ua, 0.000000e+00
  %i.uc = select i1 %i.ub, float 0.000000e+00, float %i.ua
  %i.ud = load float, ptr @consweight_rna, align 4, !tbaa !88
  %i.ue = fmul float %i.ud, %i.uc
  %i.uf = fmul float %i.ue, 6.000000e+02
  %i.ug = load ptr, ptr %i.rm, align 8, !tbaa !87
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %indvars.iv577 ; 2 uses
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !88
  %i.uj = tail call float @llvm.fmuladd.f32(float %i.uf, float %i.tw, float %i.ui)
  store float %i.uj, ptr %i.uh, align 4, !tbaa !88
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph389.us.us443
  %i.uk = getelementptr inbounds nuw i8, ptr %storemerge252387.us401.us.us, i64 24 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %storemerge252387.us401.us.us, i64 40
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !25 ; 2 uses
  %.not253.us403.us.us = icmp eq i32 %i.um, -1
  br i1 %.not253.us403.us.us, label %._crit_edge390.split.us404.split.us.us, label %.lr.ph389.us.us443, !llvm.loop !70

._crit_edge390.split.us404.split.us.us:           ; preds = %bb.at, %.lr.ph398.split.us.split.us440
  %storemerge252.lcssa.us.us444 = phi ptr [ %i.tm, %.lr.ph398.split.us.split.us440 ], [ %i.uk, %bb.at ]
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 2 uses
  %exitcond581.not = icmp eq i64 %indvars.iv.next578, %wide.trip.count580
  br i1 %exitcond581.not, label %._crit_edge399.us, label %.lr.ph398.split.us.split.us440, !llvm.loop !71

.lr.ph398.split.us.split.us.us:                   ; preds = %.lr.ph398.split.us.us, %._crit_edge390.split.us404.split.us425.us
  %indvars.iv582 = phi i64 [ %indvars.iv.next583, %._crit_edge390.split.us404.split.us425.us ], [ 0, %.lr.ph398.split.us.us ] ; 4 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %indvars.iv582
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !22 ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !25 ; 2 uses
  %.not253386.us.us.us = icmp eq i32 %i.uq, -1
  br i1 %.not253386.us.us.us, label %._crit_edge390.split.us404.split.us425.us, label %.lr.ph389.us.us.us.preheader

.lr.ph389.us.us.us.preheader:                     ; preds = %.lr.ph398.split.us.split.us.us
  %.pre612 = load float, ptr %i.ro, align 4, !tbaa !26
  br label %.lr.ph389.us.us.us

.lr.ph389.us.us.us:                               ; preds = %.lr.ph389.us.us.us.preheader, %bb.aw
  %i.ur = phi float [ %i.vk, %bb.aw ], [ %.pre612, %.lr.ph389.us.us.us.preheader ] ; 3 uses
  %i.us = phi i32 [ %i.vn, %bb.aw ], [ %i.uq, %.lr.ph389.us.us.us.preheader ] ; 2 uses
  %storemerge252387.us401.us422.us = phi ptr [ %i.vl, %bb.aw ], [ %i.uo, %.lr.ph389.us.us.us.preheader ] ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %storemerge252387.us401.us422.us, i64 20
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !26
  %i.uv = fmul float %i.ur, %i.uu
  %i.uw = or i32 %i.us, %i.rn
  %or.cond3.us402.us423.us = icmp sgt i32 %i.uw, -1
  br i1 %or.cond3.us402.us423.us, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %.lr.ph389.us.us.us
  %i.ux = zext i32 %i.us to i64                   ; 2 uses
  %or.cond464.not = icmp eq i64 %indvars.iv582, %i.ux
  br i1 %or.cond464.not, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.uy = load ptr, ptr %i.rt, align 8, !tbaa !87
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.ux
  %i.va = load float, ptr %i.uz, align 4, !tbaa !88 ; 2 uses
  %i.vb = fcmp olt float %i.va, 0.000000e+00
  %i.vc = select i1 %i.vb, float 0.000000e+00, float %i.va
  %i.vd = load float, ptr @consweight_rna, align 4, !tbaa !88
  %i.ve = fmul float %i.vd, %i.vc
  %i.vf = fmul float %i.ve, 6.000000e+02
  %i.vg = load ptr, ptr %i.rm, align 8, !tbaa !87
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %indvars.iv582 ; 2 uses
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !88
  %i.vj = tail call float @llvm.fmuladd.f32(float %i.vf, float %i.uv, float %i.vi)
  store float %i.vj, ptr %i.vh, align 4, !tbaa !88
  %.pre = load float, ptr %i.ro, align 4, !tbaa !26
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %.lr.ph389.us.us.us
  %i.vk = phi float [ %i.ur, %bb.au ], [ %.pre, %bb.av ], [ %i.ur, %.lr.ph389.us.us.us ]
  %i.vl = getelementptr inbounds nuw i8, ptr %storemerge252387.us401.us422.us, i64 24 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %storemerge252387.us401.us422.us, i64 40
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !25 ; 2 uses
  %.not253.us403.us424.us = icmp eq i32 %i.vn, -1
  br i1 %.not253.us403.us424.us, label %._crit_edge390.split.us404.split.us425.us, label %.lr.ph389.us.us.us, !llvm.loop !70

._crit_edge390.split.us404.split.us425.us:        ; preds = %bb.aw, %.lr.ph398.split.us.split.us.us
  %storemerge252.lcssa.us.us.us = phi ptr [ %i.uo, %.lr.ph398.split.us.split.us.us ], [ %i.vl, %bb.aw ]
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next583, %wide.trip.count585
  br i1 %exitcond586.not, label %._crit_edge399.us, label %.lr.ph398.split.us.split.us.us, !llvm.loop !71

._crit_edge399.us.loopexit762.unr-lcssa:          ; preds = %._crit_edge390.split.us.split.us.us.1
  br i1 %lcmp.mod801.not, label %._crit_edge399.us, label %.lr.ph398.split.split.us432.epil.preheader

.lr.ph398.split.split.us432.epil.preheader:       ; preds = %._crit_edge399.us.loopexit762.unr-lcssa, %.lr.ph398.split.split.us432.preheader
  %indvars.iv567.epil.init = phi i64 [ 0, %.lr.ph398.split.split.us432.preheader ], [ %indvars.iv.next568.1, %._crit_edge399.us.loopexit762.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod803)
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %indvars.iv567.epil.init
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !22 ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !25
  %.not253386.us434.epil = icmp eq i32 %i.vr, -1
  br i1 %.not253386.us434.epil, label %._crit_edge399.us, label %.lr.ph389.us435.epil

.lr.ph389.us435.epil:                             ; preds = %.lr.ph398.split.split.us432.epil.preheader, %.lr.ph389.us435.epil
  %storemerge252387.us.us.us.epil = phi ptr [ %i.vs, %.lr.ph389.us435.epil ], [ %i.vp, %.lr.ph398.split.split.us432.epil.preheader ] ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %storemerge252387.us.us.us.epil, i64 24 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %storemerge252387.us.us.us.epil, i64 40
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !25
  %.not253.us.us.us.epil = icmp eq i32 %i.vu, -1
  br i1 %.not253.us.us.us.epil, label %._crit_edge399.us, label %.lr.ph389.us435.epil, !llvm.loop !70

._crit_edge399.us:                                ; preds = %._crit_edge399.us.loopexit762.unr-lcssa, %.lr.ph389.us435.epil, %.lr.ph398.split.split.us432.epil.preheader, %._crit_edge390.split.us.split.us414.us, %._crit_edge390.split.us404.split.us.us, %._crit_edge390.split.us404.split.us425.us
  %.us-phi406.us = phi ptr [ %storemerge252.lcssa.us.us.us, %._crit_edge390.split.us404.split.us425.us ], [ %storemerge252.lcssa.us.us444, %._crit_edge390.split.us404.split.us.us ], [ %storemerge252.lcssa.us416.us, %._crit_edge390.split.us.split.us414.us ], [ %storemerge252.lcssa.us436.1, %._crit_edge399.us.loopexit762.unr-lcssa ], [ %i.vp, %.lr.ph398.split.split.us432.epil.preheader ], [ %i.vs, %.lr.ph389.us435.epil ]
  %i.vv = getelementptr inbounds nuw i8, ptr %storemerge250429.us, i64 24 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %storemerge250429.us, i64 40
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !25 ; 2 uses
  %.not251.us = icmp eq i32 %i.vx, -1
  br i1 %.not251.us, label %._crit_edge430.split.us, label %.preheader325.us, !llvm.loop !72

._crit_edge430.split.us:                          ; preds = %._crit_edge399.us
  store ptr %.us-phi406.us, ptr @foldrna.pairpt2, align 8, !tbaa !22
  br label %._crit_edge430

.preheader325:                                    ; preds = %.preheader325.lr.ph, %.preheader325
  %storemerge250429 = phi ptr [ %i.vy, %.preheader325 ], [ %i.rj, %.preheader325.lr.ph ] ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %storemerge250429, i64 24 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %storemerge250429, i64 40
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !25
  %.not251 = icmp eq i32 %i.wa, -1
  br i1 %.not251, label %._crit_edge430, label %.preheader325, !llvm.loop !72

._crit_edge430:                                   ; preds = %.preheader325, %._crit_edge430.split.us, %bb.ap
  %storemerge250.lcssa = phi ptr [ %i.rj, %bb.ap ], [ %i.vv, %._crit_edge430.split.us ], [ %i.vy, %.preheader325 ]
  %indvars.iv.next588 = add nuw nsw i64 %indvars.iv587, 1 ; 2 uses
  %exitcond591.not = icmp eq i64 %indvars.iv.next588, %wide.trip.count590
  br i1 %exitcond591.not, label %.preheader324, label %bb.ap, !llvm.loop !73

.preheader323:                                    ; preds = %.preheader323.preheader, %._crit_edge455
  %indvars.iv597 = phi i64 [ 0, %.preheader323.preheader ], [ %indvars.iv.next598, %._crit_edge455 ] ; 3 uses
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %indvars.iv597
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !87 ; 8 uses
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv597
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !87 ; 8 uses
  br i1 %min.iters.check744, label %scalar.ph743.preheader, label %vector.memcheck737

vector.memcheck737:                               ; preds = %.preheader323
  %scevgep738 = getelementptr i8, ptr %i.we, i64 %i.rh
  %scevgep739 = getelementptr i8, ptr %i.wc, i64 %i.rh
  %bound0740 = icmp ult ptr %i.we, %scevgep739
  %bound1741 = icmp ult ptr %i.wc, %scevgep738
  %found.conflict742 = and i1 %bound0740, %bound1741
  br i1 %found.conflict742, label %scalar.ph743.preheader, label %vector.body747

vector.body747:                                   ; preds = %vector.memcheck737, %vector.body747
  %index748 = phi i64 [ %index.next753, %vector.body747 ], [ 0, %vector.memcheck737 ] ; 3 uses
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %index748 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %wide.load749 = load <4 x float>, ptr %i.wf, align 4, !tbaa !88, !alias.scope !100
  %wide.load750 = load <4 x float>, ptr %i.wg, align 4, !tbaa !88, !alias.scope !100
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %index748 ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 16 ; 2 uses
  %wide.load751 = load <4 x float>, ptr %i.wh, align 4, !tbaa !88, !alias.scope !101, !noalias !100
  %wide.load752 = load <4 x float>, ptr %i.wi, align 4, !tbaa !88, !alias.scope !101, !noalias !100
  %i.wj = fadd <4 x float> %wide.load749, %wide.load751
  %i.wk = fadd <4 x float> %wide.load750, %wide.load752
  store <4 x float> %i.wj, ptr %i.wh, align 4, !tbaa !88, !alias.scope !101, !noalias !100
  store <4 x float> %i.wk, ptr %i.wi, align 4, !tbaa !88, !alias.scope !101, !noalias !100
  %index.next753 = add nuw i64 %index748, 8       ; 2 uses
  %i.wl = icmp eq i64 %index.next753, %n.vec746
  br i1 %i.wl, label %middle.block754, label %vector.body747, !llvm.loop !77

middle.block754:                                  ; preds = %vector.body747
  br i1 %cmp.n755, label %._crit_edge455, label %scalar.ph743.preheader

scalar.ph743.preheader:                           ; preds = %vector.memcheck737, %.preheader323, %middle.block754
  %indvars.iv592.ph = phi i64 [ 0, %vector.memcheck737 ], [ 0, %.preheader323 ], [ %n.vec746, %middle.block754 ] ; 3 uses
  br i1 %lcmp.mod807.not, label %scalar.ph743.prol.loopexit, label %scalar.ph743.prol

scalar.ph743.prol:                                ; preds = %scalar.ph743.preheader, %scalar.ph743.prol
  %indvars.iv592.prol = phi i64 [ %indvars.iv.next593.prol, %scalar.ph743.prol ], [ %indvars.iv592.ph, %scalar.ph743.preheader ] ; 3 uses
  %prol.iter808 = phi i64 [ %prol.iter808.next, %scalar.ph743.prol ], [ 0, %scalar.ph743.preheader ]
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %indvars.iv592.prol
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !88
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %indvars.iv592.prol ; 2 uses
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !88
  %i.wq = fadd float %i.wn, %i.wp
  store float %i.wq, ptr %i.wo, align 4, !tbaa !88
  %indvars.iv.next593.prol = add nuw nsw i64 %indvars.iv592.prol, 1 ; 2 uses
  %prol.iter808.next = add i64 %prol.iter808, 1   ; 2 uses
  %prol.iter808.cmp.not = icmp eq i64 %prol.iter808.next, %xtraiter806
  br i1 %prol.iter808.cmp.not, label %scalar.ph743.prol.loopexit, label %scalar.ph743.prol, !llvm.loop !78

scalar.ph743.prol.loopexit:                       ; preds = %scalar.ph743.prol, %scalar.ph743.preheader
  %indvars.iv592.unr = phi i64 [ %indvars.iv592.ph, %scalar.ph743.preheader ], [ %indvars.iv.next593.prol, %scalar.ph743.prol ]
  %i.wr = sub nsw i64 %indvars.iv592.ph, %wide.trip.count570
  %i.ws = icmp ugt i64 %i.wr, -4
  br i1 %i.ws, label %._crit_edge455, label %scalar.ph743

scalar.ph743:                                     ; preds = %scalar.ph743.prol.loopexit, %scalar.ph743
  %indvars.iv592 = phi i64 [ %indvars.iv.next593.3, %scalar.ph743 ], [ %indvars.iv592.unr, %scalar.ph743.prol.loopexit ] ; 6 uses
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %indvars.iv592
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !88
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %indvars.iv592 ; 2 uses
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !88
  %i.wx = fadd float %i.wu, %i.ww
  store float %i.wx, ptr %i.wv, align 4, !tbaa !88
  %indvars.iv.next593 = add nuw nsw i64 %indvars.iv592, 1 ; 2 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %indvars.iv.next593
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !88
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %indvars.iv.next593 ; 2 uses
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !88
  %i.xc = fadd float %i.wz, %i.xb
  store float %i.xc, ptr %i.xa, align 4, !tbaa !88
  %indvars.iv.next593.1 = add nuw nsw i64 %indvars.iv592, 2 ; 2 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %indvars.iv.next593.1
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !88
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %indvars.iv.next593.1 ; 2 uses
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !88
  %i.xh = fadd float %i.xe, %i.xg
  store float %i.xh, ptr %i.xf, align 4, !tbaa !88
  %indvars.iv.next593.2 = add nuw nsw i64 %indvars.iv592, 3 ; 2 uses
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %indvars.iv.next593.2
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !88
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %indvars.iv.next593.2 ; 2 uses
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !88
  %i.xm = fadd float %i.xj, %i.xl
  store float %i.xm, ptr %i.xk, align 4, !tbaa !88
  %indvars.iv.next593.3 = add nuw nsw i64 %indvars.iv592, 4 ; 2 uses
  %exitcond596.not.3 = icmp eq i64 %indvars.iv.next593.3, %wide.trip.count595
  br i1 %exitcond596.not.3, label %._crit_edge455, label %scalar.ph743, !llvm.loop !79

._crit_edge455:                                   ; preds = %scalar.ph743.prol.loopexit, %scalar.ph743, %middle.block754
  %indvars.iv.next598 = add nuw nsw i64 %indvars.iv597, 1 ; 2 uses
  %exitcond601.not = icmp eq i64 %indvars.iv.next598, %wide.trip.count600
  br i1 %exitcond601.not, label %._crit_edge457.split, label %.preheader323, !llvm.loop !80

._crit_edge457.split:                             ; preds = %._crit_edge455, %.preheader336, %.preheader327, %.loopexit, %.preheader323.lr.ph, %.preheader324
  %i.xn = load ptr, ptr @foldrna.useq1, align 8, !tbaa !15
  tail call void @FreeCharMtx(ptr noundef %i.xn) #17
  %i.xo = load ptr, ptr @foldrna.useq2, align 8, !tbaa !15
  tail call void @FreeCharMtx(ptr noundef %i.xo) #17
  %i.xp = load ptr, ptr @foldrna.oseq1, align 8, !tbaa !15
  tail call void @FreeCharMtx(ptr noundef %i.xp) #17
  %i.xq = load ptr, ptr @foldrna.oseq2, align 8, !tbaa !15
  tail call void @FreeCharMtx(ptr noundef %i.xq) #17
  %i.xr = load ptr, ptr @foldrna.oseq1r, align 8, !tbaa !15
  tail call void @FreeCharMtx(ptr noundef %i.xr) #17
  %i.xs = load ptr, ptr @foldrna.oseq2r, align 8, !tbaa !15
  tail call void @FreeCharMtx(ptr noundef %i.xs) #17
  %i.xt = load ptr, ptr @foldrna.odir1, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.xt) #17
  %i.xu = load ptr, ptr @foldrna.odir2, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.xu) #17
  %i.xv = load ptr, ptr @foldrna.impmtx2, align 8, !tbaa !84
  tail call void @FreeFloatMtx(ptr noundef %i.xv) #17
  %i.xw = load ptr, ptr @foldrna.map, align 8, !tbaa !84
end_hunk_1
