Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.11?download=true
inline.NumInlined: 14995
inline.NumDeleted: 7635
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
  %i.kn = fadd <2 x double> %i.kb, %i.km          ; 3 uses
  %i.ko = add nuw nsw i64 %i.jq, 4
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge482.loopexit.unr-lcssa, label %.lr.ph481.new, !llvm.loop !826

._crit_edge482.loopexit.unr-lcssa:                ; preds = %.lr.ph481.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge482

.epil.preheader:                                  ; preds = %._crit_edge482.loopexit.unr-lcssa, %.lr.ph481
  %.0208480.epil.init = phi i64 [ 0, %.lr.ph481 ], [ %i.kc, %._crit_edge482.loopexit.unr-lcssa ] ; 2 uses
  %.0398479.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kn, %._crit_edge482.loopexit.unr-lcssa ]
  %.0400478.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kj, %._crit_edge482.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod671)
  %i.kp = getelementptr [8 x i8], ptr %i.jg, i64 %.0208480.epil.init
  %i.kq = load <2 x double>, ptr %i.kp, align 1, !tbaa !27 ; 2 uses
  %i.kr = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208480.epil.init ; 2 uses
  %i.ks = getelementptr [8 x i8], ptr %i.kr, i64 %i.jh
  %i.kt = load <2 x double>, ptr %i.ks, align 1, !tbaa !27
  %i.ku = fmul <2 x double> %i.kq, %i.kt
  %i.kv = fadd <2 x double> %.0400478.epil.init, %i.ku
  %i.kw = getelementptr [8 x i8], ptr %i.kr, i64 %i.jj
  %i.kx = load <2 x double>, ptr %i.kw, align 1, !tbaa !27
  %i.ky = fmul <2 x double> %i.kq, %i.kx
  %i.kz = fadd <2 x double> %.0398479.epil.init, %i.ky
  br label %._crit_edge482

._crit_edge482:                                   ; preds = %.epil.preheader, %._crit_edge482.loopexit.unr-lcssa, %.preheader405
  %.0400.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.kj, %._crit_edge482.loopexit.unr-lcssa ], [ %i.kv, %.epil.preheader ] ; 2 uses
  %.0398.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.kn, %._crit_edge482.loopexit.unr-lcssa ], [ %i.kz, %.epil.preheader ] ; 2 uses
  %.0208.lcssa = phi i64 [ 0, %.preheader405 ], [ %i.fx, %._crit_edge482.loopexit.unr-lcssa ], [ %i.fx, %.epil.preheader ] ; 6 uses
  %i.la = shufflevector <2 x double> %.0400.lcssa, <2 x double> %.0398.lcssa, <2 x i32> <i32 0, i32 2>
  %i.lb = shufflevector <2 x double> %.0400.lcssa, <2 x double> %.0398.lcssa, <2 x i32> <i32 1, i32 3>
  %i.lc = fadd <2 x double> %i.la, %i.lb          ; 3 uses
  %i.ld = icmp slt i64 %.0208.lcssa, %1
  br i1 %i.ld, label %.lr.ph490, label %._crit_edge482.._crit_edge491_crit_edge

._crit_edge482.._crit_edge491_crit_edge:          ; preds = %._crit_edge482
  %.pre571 = add nuw nsw i64 %.2494, 1
  br label %._crit_edge491

.lr.ph490:                                        ; preds = %._crit_edge482
  %i.le = load ptr, ptr %3, align 8, !tbaa !189   ; 3 uses
  %i.lf = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.lg = add nuw nsw i64 %.2494, 1               ; 3 uses
  %i.lh = mul nsw i64 %i.lg, %.sroa.33.0.copyload ; 3 uses
  %.neg = or disjoint i64 %.0208.lcssa, 1
  br i1 %lcmp.mod673.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph490
  %i.li = getelementptr [8 x i8], ptr %i.le, i64 %.0208.lcssa
  %i.lj = load double, ptr %i.li, align 8, !tbaa !65
  %i.lk = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208.lcssa ; 2 uses
  %i.ll = getelementptr [8 x i8], ptr %i.lk, i64 %i.lf
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !65
  %i.ln = getelementptr [8 x i8], ptr %i.lk, i64 %i.lh
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !65
  %i.lp = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lr = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.ls = insertelement <2 x double> %i.lr, double %i.lo, i64 1
  %i.lt = fmul <2 x double> %i.lq, %i.ls
  %i.lu = fadd <2 x double> %i.lc, %i.lt          ; 2 uses
  %i.lv = or disjoint i64 %.0208.lcssa, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph490
  %.lcssa651.unr = phi <2 x double> [ poison, %.lr.ph490 ], [ %i.lu, %.prol.loopexit.unr-lcssa ]
  %.1209486.unr = phi i64 [ %.0208.lcssa, %.lr.ph490 ], [ %i.lv, %.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x double> [ %i.lc, %.lr.ph490 ], [ %i.lu, %.prol.loopexit.unr-lcssa ]
  %i.lw = icmp eq i64 %1, %.neg
  br i1 %i.lw, label %._crit_edge491, label %.lr.ph490.new

.lr.ph490.new:                                    ; preds = %.prol.loopexit, %.lr.ph490.new
  %.1209486 = phi i64 [ %i.mz, %.lr.ph490.new ], [ %.1209486.unr, %.prol.loopexit ] ; 4 uses
  %i.lx = phi <2 x double> [ %i.my, %.lr.ph490.new ], [ %.unr, %.prol.loopexit ]
  %i.ly = getelementptr [8 x i8], ptr %i.le, i64 %.1209486
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !65
  %i.ma = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1209486 ; 2 uses
  %i.mb = getelementptr [8 x i8], ptr %i.ma, i64 %i.lf
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !65
  %i.md = getelementptr [8 x i8], ptr %i.ma, i64 %i.lh
  %i.me = load double, ptr %i.md, align 8, !tbaa !65
  %i.mf = insertelement <2 x double> poison, double %i.lz, i64 0
  %i.mg = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mh = insertelement <2 x double> poison, double %i.mc, i64 0
  %i.mi = insertelement <2 x double> %i.mh, double %i.me, i64 1
  %i.mj = fmul <2 x double> %i.mg, %i.mi
  %i.mk = fadd <2 x double> %i.lx, %i.mj
  %i.ml = add nuw nsw i64 %.1209486, 1            ; 2 uses
  %i.mm = getelementptr [8 x i8], ptr %i.le, i64 %i.ml
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !65
  %i.mo = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.ml ; 2 uses
  %i.mp = getelementptr [8 x i8], ptr %i.mo, i64 %i.lf
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !65
  %i.mr = getelementptr [8 x i8], ptr %i.mo, i64 %i.lh
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !65
  %i.mt = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mv = insertelement <2 x double> poison, double %i.mq, i64 0
  %i.mw = insertelement <2 x double> %i.mv, double %i.ms, i64 1
  %i.mx = fmul <2 x double> %i.mu, %i.mw
  %i.my = fadd <2 x double> %i.mk, %i.mx          ; 2 uses
  %i.mz = add nuw nsw i64 %.1209486, 2            ; 2 uses
  %exitcond550.not.1 = icmp eq i64 %i.mz, %1
  br i1 %exitcond550.not.1, label %._crit_edge491, label %.lr.ph490.new, !llvm.loop !827

._crit_edge491:                                   ; preds = %.prol.loopexit, %.lr.ph490.new, %._crit_edge482.._crit_edge491_crit_edge
  %.pre-phi572 = phi i64 [ %.pre571, %._crit_edge482.._crit_edge491_crit_edge ], [ %i.lg, %.lr.ph490.new ], [ %i.lg, %.prol.loopexit ]
  %i.na = phi <2 x double> [ %i.lc, %._crit_edge482.._crit_edge491_crit_edge ], [ %.lcssa651.unr, %.prol.loopexit ], [ %i.my, %.lr.ph490.new ] ; 2 uses
  %i.nb = mul nsw i64 %.2494, %5
  %i.nc = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nb ; 2 uses
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !65
  %i.ne = extractelement <2 x double> %i.na, i64 0
  %i.nf = tail call double @llvm.fmuladd.f64(double %6, double %i.ne, double %i.nd)
  store double %i.nf, ptr %i.nc, align 8, !tbaa !65
  %i.ng = mul nsw i64 %.pre-phi572, %5
  %i.nh = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ng ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !65
  %i.nj = extractelement <2 x double> %i.na, i64 1
  %i.nk = tail call double @llvm.fmuladd.f64(double %6, double %i.nj, double %i.ni)
  store double %i.nk, ptr %i.nh, align 8, !tbaa !65
  %i.nl = add nuw nsw i64 %.2494, 2               ; 3 uses
  %i.nm = icmp slt i64 %i.nl, %i.e
  br i1 %i.nm, label %.preheader405, label %.preheader404, !llvm.loop !828

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge507
  %.3511 = phi i64 [ %.2.lcssa, %.preheader.lr.ph ], [ %i.qj, %._crit_edge507 ] ; 4 uses
  br i1 %.not496, label %._crit_edge500, label %.lr.ph499

.lr.ph499:                                        ; preds = %.preheader
  %i.nn = load ptr, ptr %3, align 8, !tbaa !189   ; 5 uses
  %i.no = mul nsw i64 %.3511, %.sroa.33.0.copyload
  %invariant.gep = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.no ; 5 uses
  br i1 %i.jp, label %.epil.preheader674, label %.lr.ph499.new

.lr.ph499.new:                                    ; preds = %.lr.ph499, %.lr.ph499.new
  %i.np = phi i64 [ %i.on, %.lr.ph499.new ], [ 2, %.lr.ph499 ] ; 6 uses
  %.0205498 = phi i64 [ %i.oh, %.lr.ph499.new ], [ 0, %.lr.ph499 ] ; 2 uses
  %.0392497 = phi <2 x double> [ %i.om, %.lr.ph499.new ], [ zeroinitializer, %.lr.ph499 ]
  %niter681 = phi i64 [ %niter681.next.3, %.lr.ph499.new ], [ 0, %.lr.ph499 ]
  %i.nq = getelementptr [8 x i8], ptr %i.nn, i64 %.0205498
  %i.nr = load <2 x double>, ptr %i.nq, align 1, !tbaa !27
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498
  %i.ns = load <2 x double>, ptr %gep, align 1, !tbaa !27
  %i.nt = fmul <2 x double> %i.nr, %i.ns
  %i.nu = fadd <2 x double> %.0392497, %i.nt
  %i.nv = add nuw nsw i64 %i.np, 2                ; 2 uses
  %i.nw = getelementptr [8 x i8], ptr %i.nn, i64 %i.np
  %i.nx = load <2 x double>, ptr %i.nw, align 1, !tbaa !27
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.np
  %i.ny = load <2 x double>, ptr %gep.1, align 1, !tbaa !27
  %i.nz = fmul <2 x double> %i.nx, %i.ny
  %i.oa = fadd <2 x double> %i.nu, %i.nz
  %i.ob = add nuw nsw i64 %i.np, 4                ; 2 uses
  %i.oc = getelementptr [8 x i8], ptr %i.nn, i64 %i.nv
  %i.od = load <2 x double>, ptr %i.oc, align 1, !tbaa !27
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nv
  %i.oe = load <2 x double>, ptr %gep.2, align 1, !tbaa !27
  %i.of = fmul <2 x double> %i.od, %i.oe
  %i.og = fadd <2 x double> %i.oa, %i.of
  %i.oh = add nuw nsw i64 %i.np, 6                ; 2 uses
  %i.oi = getelementptr [8 x i8], ptr %i.nn, i64 %i.ob
  %i.oj = load <2 x double>, ptr %i.oi, align 1, !tbaa !27
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ob
  %i.ok = load <2 x double>, ptr %gep.3, align 1, !tbaa !27
  %i.ol = fmul <2 x double> %i.oj, %i.ok
  %i.om = fadd <2 x double> %i.og, %i.ol          ; 3 uses
  %i.on = add nuw nsw i64 %i.np, 8                ; 2 uses
  %niter681.next.3 = add i64 %niter681, 4         ; 2 uses
  %niter681.ncmp.3 = icmp eq i64 %niter681.next.3, %unroll_iter680
  br i1 %niter681.ncmp.3, label %._crit_edge500.loopexit.unr-lcssa, label %.lr.ph499.new, !llvm.loop !829

._crit_edge500.loopexit.unr-lcssa:                ; preds = %.lr.ph499.new
  br i1 %lcmp.mod677.not, label %._crit_edge500, label %.epil.preheader674

.epil.preheader674:                               ; preds = %._crit_edge500.loopexit.unr-lcssa, %.lr.ph499
  %.epil.init = phi i64 [ 2, %.lr.ph499 ], [ %i.on, %._crit_edge500.loopexit.unr-lcssa ]
  %.0205498.epil.init = phi i64 [ 0, %.lr.ph499 ], [ %i.oh, %._crit_edge500.loopexit.unr-lcssa ]
  %.0392497.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph499 ], [ %i.om, %._crit_edge500.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod679)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader674
  %i.oo = phi i64 [ %.epil.init, %.epil.preheader674 ], [ %i.ou, %bb.f ] ; 2 uses
  %.0205498.epil = phi i64 [ %.0205498.epil.init, %.epil.preheader674 ], [ %i.oo, %bb.f ] ; 2 uses
  %.0392497.epil = phi <2 x double> [ %.0392497.epil.init, %.epil.preheader674 ], [ %i.ot, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader674 ], [ %epil.iter.next, %bb.f ]
  %i.op = getelementptr [8 x i8], ptr %i.nn, i64 %.0205498.epil
  %i.oq = load <2 x double>, ptr %i.op, align 1, !tbaa !27
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498.epil
  %i.or = load <2 x double>, ptr %gep.epil, align 1, !tbaa !27
  %i.os = fmul <2 x double> %i.oq, %i.or
  %i.ot = fadd <2 x double> %.0392497.epil, %i.os ; 2 uses
  %i.ou = add nuw nsw i64 %i.oo, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter675
  br i1 %epil.iter.cmp.not, label %._crit_edge500, label %bb.f, !llvm.loop !830

._crit_edge500:                                   ; preds = %._crit_edge500.loopexit.unr-lcssa, %bb.f, %.preheader
  %.0392.lcssa = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.om, %._crit_edge500.loopexit.unr-lcssa ], [ %i.ot, %bb.f ] ; 2 uses
  %.0205.lcssa = phi i64 [ 0, %.preheader ], [ %i.jl, %bb.f ], [ %i.jl, %._crit_edge500.loopexit.unr-lcssa ] ; 5 uses
  %shift = shufflevector <2 x double> %.0392.lcssa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.0392.lcssa, %shift
  %7 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ov = icmp slt i64 %.0205.lcssa, %1
  br i1 %i.ov, label %.lr.ph506, label %._crit_edge507

.lr.ph506:                                        ; preds = %._crit_edge500
  %i.ow = mul nsw i64 %.3511, %.sroa.33.0.copyload
  %invariant.gep509 = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.ow ; 5 uses
  %i.ox = load ptr, ptr %3, align 8, !tbaa !189   ; 5 uses
  %i.oy = sub i64 %1, %.0205.lcssa
  %xtraiter684 = and i64 %i.oy, 3                 ; 2 uses
  %lcmp.mod685.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod685.not, label %.prol.loopexit683, label %.prol.preheader682

.prol.preheader682:                               ; preds = %.lr.ph506, %.prol.preheader682
  %.0504.prol = phi double [ %i.pd, %.prol.preheader682 ], [ %7, %.lr.ph506 ]
  %.1503.prol = phi i64 [ %i.pe, %.prol.preheader682 ], [ %.0205.lcssa, %.lr.ph506 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader682 ], [ 0, %.lr.ph506 ]
  %gep510.prol = getelementptr [8 x i8], ptr %invariant.gep509, i64 %.1503.prol
  %i.oz = getelementptr [8 x i8], ptr %i.ox, i64 %.1503.prol
  %i.pa = load double, ptr %gep510.prol, align 8, !tbaa !65
  %i.pb = load double, ptr %i.oz, align 8, !tbaa !65
  %i.pc = fmul double %i.pa, %i.pb
  %i.pd = fadd double %.0504.prol, %i.pc          ; 3 uses
  %i.pe = add nuw nsw i64 %.1503.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter684
  br i1 %prol.iter.cmp.not, label %.prol.loopexit683, label %.prol.preheader682, !llvm.loop !831

.prol.loopexit683:                                ; preds = %.prol.preheader682, %.lr.ph506
  %.lcssa648.unr = phi double [ poison, %.lr.ph506 ], [ %i.pd, %.prol.preheader682 ]
  %.0504.unr = phi double [ %7, %.lr.ph506 ], [ %i.pd, %.prol.preheader682 ]
  %.1503.unr = phi i64 [ %.0205.lcssa, %.lr.ph506 ], [ %i.pe, %.prol.preheader682 ]
  %i.pf = sub i64 %.0205.lcssa, %1
  %i.pg = icmp ugt i64 %i.pf, -4
  br i1 %i.pg, label %._crit_edge507, label %.lr.ph506.new

.lr.ph506.new:                                    ; preds = %.prol.loopexit683, %.lr.ph506.new
  %.0504 = phi double [ %i.qd, %.lr.ph506.new ], [ %.0504.unr, %.prol.loopexit683 ]
  %.1503 = phi i64 [ %i.qe, %.lr.ph506.new ], [ %.1503.unr, %.prol.loopexit683 ] ; 6 uses
  %gep510 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %.1503
  %i.ph = getelementptr [8 x i8], ptr %i.ox, i64 %.1503
  %i.pi = load double, ptr %gep510, align 8, !tbaa !65
  %i.pj = load double, ptr %i.ph, align 8, !tbaa !65
  %i.pk = fmul double %i.pi, %i.pj
  %i.pl = fadd double %.0504, %i.pk
  %i.pm = add nuw nsw i64 %.1503, 1               ; 2 uses
  %gep510.1 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.pm
  %i.pn = getelementptr [8 x i8], ptr %i.ox, i64 %i.pm
  %i.po = load double, ptr %gep510.1, align 8, !tbaa !65
  %i.pp = load double, ptr %i.pn, align 8, !tbaa !65
  %i.pq = fmul double %i.po, %i.pp
  %i.pr = fadd double %i.pl, %i.pq
  %i.ps = add nuw nsw i64 %.1503, 2               ; 2 uses
  %gep510.2 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.ps
  %i.pt = getelementptr [8 x i8], ptr %i.ox, i64 %i.ps
  %i.pu = load double, ptr %gep510.2, align 8, !tbaa !65
  %i.pv = load double, ptr %i.pt, align 8, !tbaa !65
  %i.pw = fmul double %i.pu, %i.pv
  %i.px = fadd double %i.pr, %i.pw
  %i.py = add nuw nsw i64 %.1503, 3               ; 2 uses
  %gep510.3 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.py
  %i.pz = getelementptr [8 x i8], ptr %i.ox, i64 %i.py
  %i.qa = load double, ptr %gep510.3, align 8, !tbaa !65
  %i.qb = load double, ptr %i.pz, align 8, !tbaa !65
  %i.qc = fmul double %i.qa, %i.qb
  %i.qd = fadd double %i.px, %i.qc                ; 2 uses
  %i.qe = add nuw nsw i64 %.1503, 4               ; 2 uses
  %exitcond551.not.3 = icmp eq i64 %i.qe, %1
  br i1 %exitcond551.not.3, label %._crit_edge507, label %.lr.ph506.new, !llvm.loop !832

._crit_edge507:                                   ; preds = %.prol.loopexit683, %.lr.ph506.new, %._crit_edge500
  %.0.lcssa = phi double [ %7, %._crit_edge500 ], [ %.lcssa648.unr, %.prol.loopexit683 ], [ %i.qd, %.lr.ph506.new ]
  %i.qf = mul nsw i64 %.3511, %5
  %i.qg = getelementptr inbounds [8 x i8], ptr %4, i64 %i.qf ; 2 uses
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !65
  %i.qi = tail call double @llvm.fmuladd.f64(double %6, double %.0.lcssa, double %i.qh)
  store double %i.qi, ptr %i.qg, align 8, !tbaa !65
  %i.qj = add nuw nsw i64 %.3511, 1               ; 2 uses
  %exitcond552.not = icmp eq i64 %i.qj, %0
  br i1 %exitcond552.not, label %._crit_edge512, label %.preheader, !llvm.loop !833

._crit_edge512:                                   ; preds = %._crit_edge507, %.preheader404
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, !prof !183

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #24
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #24
  br label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #24
  resume { ptr, i32 } %i.d

_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.e = load i64, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, align 8, !tbaa !147 ; 4 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !148 ; 4 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 16), align 8, !tbaa !149 ; 3 uses
  %i.h = icmp sgt i64 %3, 1
  br i1 %i.h, label %bb.f, label %bb.o

bb.f:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.i = add nsw i64 %i.e, -128
  %i.j = sdiv i64 %i.i, 64
  %i.k = tail call i64 @llvm.smax.i64(i64 %i.j, i64 8)
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.k, i64 320) ; 2 uses
  %i.m = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.n = icmp slt i64 %i.l, %i.m
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = and i64 %i.l, 504                        ; 2 uses
  store i64 %i.o, ptr %0, align 8, !tbaa !109
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi i64 [ %i.o, %bb.g ], [ %i.m, %bb.f ]
  %i.q = sub nsw i64 %i.f, %i.e
  %i.r = shl i64 %i.p, 5
  %i.s = udiv i64 %i.q, %i.r                      ; 2 uses
  %i.t = load i64, ptr %2, align 8, !tbaa !109    ; 2 uses
  %i.u = add nsw i64 %3, -1                       ; 2 uses
  %i.v = add i64 %i.u, %i.t
  %i.w = sdiv i64 %i.v, %3                        ; 2 uses
  %.not114 = icmp sgt i64 %i.s, %i.w
  br i1 %.not114, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i64 %i.s, 576460752303423484
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.y = add nsw i64 %i.w, 3                      ; 2 uses
  %i.z = srem i64 %i.y, 4
  %i.aa = sub nsw i64 %i.y, %i.z
  %.sroa.speculated153 = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge184 = phi i64 [ %i.x, %bb.i ], [ %.sroa.speculated153, %bb.j ]
  store i64 %storemerge184, ptr %2, align 8, !tbaa !109
  %i.ab = icmp sgt i64 %i.g, %i.f
  br i1 %i.ab, label %bb.l, label %.critedge116

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nsw i64 %i.g, %i.f
  %i.ad = load i64, ptr %0, align 8, !tbaa !109
  %i.ae = shl i64 %3, 3
  %i.af = mul i64 %i.ae, %i.ad
  %i.ag = udiv i64 %i.ac, %i.af                   ; 3 uses
  %i.ah = load i64, ptr %1, align 8, !tbaa !109   ; 2 uses
  %i.ai = add i64 %i.u, %i.ah
  %i.aj = sdiv i64 %i.ai, %3                      ; 2 uses
  %i.ak = icmp slt i64 %i.ag, %i.aj
  %i.al = icmp samesign ugt i64 %i.ag, 3
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = and i64 %i.ag, 2305843009213693948
  store i64 %i.am, ptr %1, align 8, !tbaa !109
  br label %.critedge116

bb.n:                                             ; preds = %bb.l
  %i.an = add nsw i64 %i.aj, 3                    ; 2 uses
  %i.ao = srem i64 %i.an, 4
  %i.ap = sub nsw i64 %i.an, %i.ao
  %.sroa.speculated149 = tail call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.ah)
  store i64 %.sroa.speculated149, ptr %1, align 8, !tbaa !109
  br label %.critedge116

bb.o:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.aq = load i64, ptr %1, align 8, !tbaa !109   ; 2 uses
  %i.ar = load i64, ptr %2, align 8, !tbaa !109
  %i.as = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 %i.ar)
  %i.at = load i64, ptr %0, align 8, !tbaa !109   ; 8 uses
  %.sroa.speculated145 = tail call i64 @llvm.smax.i64(i64 %i.at, i64 %i.as)
  %i.au = icmp slt i64 %.sroa.speculated145, 48
  br i1 %i.au, label %.critedge116, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = add nsw i64 %i.e, -128                  ; 2 uses
  %i.aw = sdiv i64 %i.av, 64
  %i.ax = and i64 %i.aw, -8
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_:bb.a
  %i.ay = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.ag, i64 %i.ay
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ay
  %i.ba = load double, ptr %gep.i.2, align 8, !tbaa !65
  store double %i.ba, ptr %i.az, align 8, !tbaa !65
  %i.bb = add nuw nsw i64 %.09.i, 3               ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ag, i64 %i.bb
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bb
  %i.bd = load double, ptr %gep.i.3, align 8, !tbaa !65
  store double %i.bd, ptr %i.bc, align 8, !tbaa !65
  %i.be = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.be, %i.j
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !987

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !87 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !87 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !205, !nonnull !26, !align !110
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !68
  %i.bn = and i64 %i.bm, 1
  %i.bo = icmp sgt i64 %i.bi, 0
  br i1 %i.bo, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bp = lshr exact i64 %i.d, 3
  %i.bq = and i64 %i.bp, 1
  %i.br = tail call i64 @llvm.smin.i64(i64 %i.bq, i64 %i.bg)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.eg, %._crit_edge ] ; 8 uses
  %.03552 = phi i64 [ %i.br, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 6 uses
  %i.bt = shl i64 %.03453, 3                      ; 2 uses
  %i.bu = sub i64 %i.bg, %.03552                  ; 2 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader43.loopexit, label %.preheader43

.preheader43.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !996, !nonnull !26, !align !110 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !157
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !98
  %i.cc = mul nsw i64 %i.cb, %.03453
  %invariant.gep = getelementptr [8 x i8], ptr %i.bz, i64 %i.cc
  %i.cd = load ptr, ptr %0, align 8, !tbaa !997, !nonnull !26, !align !110 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !101
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !87
  %i.ch = mul nsw i64 %i.cg, %.03453
  %i.ci = getelementptr [8 x i8], ptr %i.ce, i64 %i.ch
  %i.cj = load double, ptr %invariant.gep, align 8, !tbaa !65
  store double %i.cj, ptr %i.ci, align 8, !tbaa !65
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph47, label %.preheader

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.cl = icmp slt i64 %i.bw, %i.bg
  br i1 %i.cl, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !997, !nonnull !26, !align !110 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !101 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !87 ; 2 uses
  %i.cq = mul nsw i64 %i.cp, %.03453
  %i.cr = getelementptr [8 x i8], ptr %i.cn, i64 %i.cq ; 2 uses
  %i.cs = load ptr, ptr %i.bs, align 8, !tbaa !996, !nonnull !26, !align !110 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !157 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !98 ; 2 uses
  %i.cw = mul nsw i64 %i.cv, %.03453
  %invariant.gep50 = getelementptr [8 x i8], ptr %i.ct, i64 %i.cw ; 2 uses
  %i.cx = add i64 %.03552, %i.bv
  %i.cy = sub i64 %i.bg, %i.cx                    ; 3 uses
  %min.iters.check71 = icmp ult i64 %i.cy, 10
  br i1 %min.iters.check71, label %scalar.ph70.preheader, label %vector.memcheck69

vector.memcheck69:                                ; preds = %.lr.ph49
  %i.cz = ptrtoaddr ptr %i.ct to i64
  %i.da = ptrtoaddr ptr %i.cn to i64
  %i.db = mul i64 %i.cp, %i.bt
  %i.dc = add i64 %i.db, %i.da
  %i.dd = mul i64 %i.cv, %i.bt
  %i.de = add i64 %i.dd, %i.cz
  %i.df = sub i64 %i.de, %i.dc
  %diff.check = icmp ugt i64 %i.df, -32
  br i1 %diff.check, label %scalar.ph70.preheader, label %vector.ph72

vector.ph72:                                      ; preds = %vector.memcheck69
  %n.vec73 = and i64 %i.cy, -4                    ; 3 uses
  %i.dg = add i64 %i.bw, %n.vec73
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph72
  %index75 = phi i64 [ 0, %vector.ph72 ], [ %index.next78, %vector.body74 ] ; 2 uses
  %i.dh = add i64 %i.bw, %index75                 ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %i.cr, i64 %i.dh ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %invariant.gep50, i64 %i.dh ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  %wide.load76 = load <2 x double>, ptr %i.dj, align 8, !tbaa !65
  %wide.load77 = load <2 x double>, ptr %i.dk, align 8, !tbaa !65
  %i.dl = getelementptr i8, ptr %i.di, i64 16
  store <2 x double> %wide.load76, ptr %i.di, align 8, !tbaa !65
  store <2 x double> %wide.load77, ptr %i.dl, align 8, !tbaa !65
  %index.next78 = add nuw i64 %index75, 4         ; 2 uses
  %i.dm = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.dm, label %middle.block79, label %vector.body74, !llvm.loop !988

middle.block79:                                   ; preds = %vector.body74
  %cmp.n80 = icmp eq i64 %i.cy, %n.vec73
  br i1 %cmp.n80, label %._crit_edge, label %scalar.ph70.preheader

scalar.ph70.preheader:                            ; preds = %vector.memcheck69, %.lr.ph49, %middle.block79
  %.048.ph = phi i64 [ %i.bw, %vector.memcheck69 ], [ %i.bw, %.lr.ph49 ], [ %i.dg, %middle.block79 ]
  br label %scalar.ph70

.lr.ph47:                                         ; preds = %.preheader43, %.lr.ph47
  %.03246 = phi i64 [ %i.ec, %.lr.ph47 ], [ %.03552, %.preheader43 ] ; 3 uses
  %i.dn = load ptr, ptr %0, align 8, !tbaa !997, !nonnull !26, !align !110 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !101
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !87
  %i.dr = mul nsw i64 %i.dq, %.03453
  %i.ds = getelementptr [8 x i8], ptr %i.do, i64 %i.dr
  %i.dt = getelementptr [8 x i8], ptr %i.ds, i64 %.03246
  %i.du = load ptr, ptr %i.bs, align 8, !tbaa !996, !nonnull !26, !align !110 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !157
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %.03246
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !98
  %i.dz = mul nsw i64 %i.dy, %.03453
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dz
  %i.eb = load <2 x double>, ptr %i.ea, align 1, !tbaa !27
  store <2 x double> %i.eb, ptr %i.dt, align 16, !tbaa !27
  %i.ec = add nsw i64 %.03246, 2                  ; 2 uses
  %i.ed = icmp slt i64 %i.ec, %i.bw
  br i1 %i.ed, label %.lr.ph47, label %.preheader, !llvm.loop !989

._crit_edge:                                      ; preds = %scalar.ph70, %middle.block79, %.preheader
  %i.ee = add nsw i64 %.03552, %i.bn
  %i.ef = srem i64 %i.ee, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bg, i64 %i.ef)
  %i.eg = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond57.not = icmp eq i64 %i.eg, %i.bi
  br i1 %exitcond57.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_.exit, label %bb.c, !llvm.loop !990

scalar.ph70:                                      ; preds = %scalar.ph70.preheader, %scalar.ph70
  %.048 = phi i64 [ %i.ej, %scalar.ph70 ], [ %.048.ph, %scalar.ph70.preheader ] ; 3 uses
  %i.eh = getelementptr [8 x i8], ptr %i.cr, i64 %.048
  %gep51 = getelementptr [8 x i8], ptr %invariant.gep50, i64 %.048
  %i.ei = load double, ptr %gep51, align 8, !tbaa !65
  store double %i.ei, ptr %i.eh, align 8, !tbaa !65
  %i.ej = add nsw i64 %.048, 1                    ; 2 uses
  %i.ek = icmp slt i64 %i.ej, %i.bg
  br i1 %i.ek, label %scalar.ph70, label %._crit_edge, !llvm.loop !991

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #12 = { nofree nounwind }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { noreturn }
attributes #27 = { builtin nounwind }
attributes #28 = { builtin allocsize(0) }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}
!llvm.errno.tbaa = !{!22}

!0 = distinct !{!0, !66}
!1 = distinct !{!1, !66}
!2 = distinct !{!2, !66}
!3 = distinct !{!3, !66}
!4 = distinct !{!4, !66}
!5 = distinct !{!5, !66}
!6 = distinct !{!6, !66}
!7 = distinct !{!7, !66}
!8 = distinct !{!8, !66}
!9 = distinct !{!9, !66}
!10 = distinct !{!10, !66}
!11 = distinct !{!11, !66}
!12 = distinct !{!12, !66}
!13 = distinct !{!13, !66}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!18 = !{!"Simple C++ TBAA"}
!19 = !{!"omnipotent char", !18, i64 0}
!20 = !{!"int", !19, i64 0}
!21 = !{!"__libc_errno", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"bool", !19, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{!19, !19, i64 0}
!28 = !{!"float", !19, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"_ZTSN5Eigen15ComputationInfoE", !19, i64 0}
!31 = !{!"any pointer", !19, i64 0}
!32 = !{!"p1 int", !31, i64 0}
!33 = !{!"long", !19, i64 0}
!34 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !32, i64 0, !33, i64 8}
!35 = !{!34, !33, i64 8}
!36 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEE", !34, i64 0}
!37 = !{!"_ZTSN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEE", !36, i64 0}
!38 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEE", !23, i64 0}
!39 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEE", !38, i64 0}
!40 = !{!"p1 double", !31, i64 0}
!41 = !{!"_ZTSN5Eigen8internal17CompressedStorageIdiEE", !40, i64 0, !32, i64 8, !33, i64 16, !33, i64 24}
!42 = !{!"_ZTSN5Eigen12SparseMatrixIdLi0EiEE", !39, i64 0, !33, i64 8, !33, i64 16, !32, i64 24, !32, i64 32, !41, i64 40}
!43 = !{!"_ZTSN5Eigen16SparseSolverBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEEE", !23, i64 0}
!44 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !40, i64 0, !33, i64 8}
!45 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE", !44, i64 0}
!46 = !{!"_ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !45, i64 0}
!47 = !{!"_ZTSN5Eigen17PermutationMatrixILin1ELin1EiEE", !37, i64 0}
!48 = !{!"double", !19, i64 0}
!49 = !{!"_ZTSN5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEEE", !43, i64 0, !30, i64 4, !23, i64 8, !23, i64 9, !42, i64 16, !46, i64 88, !37, i64 104, !37, i64 120, !47, i64 136, !47, i64 152, !48, i64 168, !48, i64 176}
!50 = !{!"_ZTSN5Eigen16SparseSolverBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEEE", !23, i64 0}
!51 = !{!"_ZTSN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEEE", !50, i64 0, !30, i64 4, !23, i64 8, !23, i64 9, !42, i64 16, !46, i64 88, !37, i64 104, !37, i64 120, !47, i64 136, !47, i64 152, !48, i64 168, !48, i64 176}
!52 = !{!"_ZTSN5Eigen8internal22MappedSuperNodalMatrixIdiEE", !33, i64 0, !33, i64 8, !33, i64 16, !40, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56, !32, i64 64}
!53 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_3MapINS_12SparseMatrixIdLi0EiEELi0ENS_6StrideILi0ELi0EEEEEEE", !23, i64 0}
!54 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_3MapINS_12SparseMatrixIdLi0EiEELi0ENS_6StrideILi0ELi0EEEEEEE", !53, i64 0}
!55 = !{!"_ZTSN5Eigen8internal11plain_arrayIiLi2ELi0ELi0EEE", !19, i64 0}
!56 = !{!"_ZTSN5Eigen12DenseStorageIiLi2ELi2ELi1ELi0EEE", !55, i64 0}
!57 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_5ArrayIiLi2ELi1ELi0ELi2ELi1EEEEE", !56, i64 0}
!58 = !{!"_ZTSN5Eigen5ArrayIiLi2ELi1ELi0ELi2ELi1EEE", !57, i64 0}
!59 = !{!"_ZTSN5Eigen13SparseMapBaseINS_3MapINS_12SparseMatrixIdLi0EiEELi0ENS_6StrideILi0ELi0EEEEELi0EEE", !54, i64 0, !33, i64 8, !33, i64 16, !58, i64 24, !32, i64 32, !32, i64 40, !40, i64 48, !32, i64 56}
!60 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !40, i64 0, !33, i64 8, !33, i64 16}
!61 = !{!44, !40, i64 0}
!62 = !{!34, !32, i64 0}
!63 = !{!60, !40, i64 0}
!64 = !{!20, !20, i64 0}
!65 = !{!48, !48, i64 0}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!60, !33, i64 8}
!69 = !{!44, !33, i64 8}
!70 = !{!"vtable pointer", !18, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!60, !33, i64 16}
!73 = !{!"llvm.loop.isvectorized", i32 1}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !31, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"p1 _ZTSN5Eigen12SparseMatrixIdLi0EiEE", !31, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !31, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!42, !33, i64 16}
!82 = !{!"_ZTSN5Eigen8internal18scalar_constant_opIdEE", !48, i64 0}
!83 = !{!82, !48, i64 0}
!84 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !33, i64 0}
!85 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi0EEE", !40, i64 0, !84, i64 8, !84, i64 16}
!86 = !{!85, !40, i64 0}
!87 = !{!84, !33, i64 0}
!88 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1EEE", !85, i64 0}
!89 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0ELb1EEE", !88, i64 0, !75, i64 24, !84, i64 32, !84, i64 40, !33, i64 48}
!90 = !{!89, !33, i64 48}
!91 = !{!42, !33, i64 8}
!92 = !{!41, !40, i64 0}
!93 = !{!41, !32, i64 8}
!94 = !{!42, !32, i64 24}
!95 = !{!42, !32, i64 32}
!96 = !{!"_ZTSN5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EEE", !40, i64 0, !33, i64 8}
!97 = !{!96, !40, i64 0}
!98 = !{!96, !33, i64 8}
!99 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
!100 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEES4_EE", !40, i64 0, !99, i64 8, !84, i64 16}
!101 = !{!100, !40, i64 0}
!102 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEE", !31, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !31, i64 0}
!105 = !{!"p1 _ZTSN5Eigen8internal9assign_opIddEE", !31, i64 0}
!106 = !{!105, !105, i64 0}
!107 = !{!"p1 _ZTSN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEE", !31, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!33, !33, i64 0}
!110 = !{i64 8}
!111 = !{!"p1 float", !31, i64 0}
!112 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEELi0EEE", !111, i64 0, !84, i64 8, !99, i64 16}
!113 = !{!112, !111, i64 0}
!114 = !{!"p1 _ZTSN5Eigen6MatrixIfLi3ELi3ELi0ELi3ELi3EEE", !31, i64 0}
!115 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi3EEE"}
!116 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS3_IfLin1ELin1ELi0ELi3ELi3EEEEE", !111, i64 0, !99, i64 8, !115, i64 9}
!117 = !{!116, !111, i64 0}
!118 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEENS3_IfLi1ELin1ELi1ELi1ELi3EEEEE", !111, i64 0, !115, i64 8, !99, i64 9}
!119 = !{!118, !111, i64 0}
!120 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi0EEE", !111, i64 0, !84, i64 8, !84, i64 16}
!121 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1EEE", !120, i64 0}
!122 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0ELb1EEE", !121, i64 0, !114, i64 24, !84, i64 32, !84, i64 40, !33, i64 48}
!123 = !{!"_ZTSN5Eigen9BlockImplINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0ENS_5DenseEEE", !122, i64 0}
!124 = !{!"_ZTSN5Eigen5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEE", !123, i64 0}
!125 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEELi0EEE", !111, i64 0, !99, i64 8, !84, i64 16}
!126 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEELi1EEE", !125, i64 0}
!127 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0ELb1EEE", !126, i64 0, !114, i64 24, !84, i64 32, !84, i64 40, !33, i64 48}
!128 = !{!"_ZTSN5Eigen9BlockImplINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0ENS_5DenseEEE", !127, i64 0}
!129 = !{!"_ZTSN5Eigen5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEE", !128, i64 0}
!130 = !{!"_ZTSN5Eigen9TransposeIKNS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEEE", !129, i64 0}
!131 = !{!"_ZTSN5Eigen8internal15block_evaluatorINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0ELb1EEE", !116, i64 0}
!132 = !{!"_ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEE", !131, i64 0}
!133 = !{!"_ZTSN5Eigen8internal15block_evaluatorINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0ELb1EEE", !118, i64 0}
!134 = !{!"_ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEEE", !133, i64 0}
!135 = !{!"_ZTSN5Eigen8internal9evaluatorIKNS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEEE", !134, i64 0}
!136 = !{!"_ZTSN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEEENS0_10IndexBasedEfEE", !135, i64 0}
!137 = !{!"_ZTSN5Eigen8internal9evaluatorINS_9TransposeIKNS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEEEEE", !136, i64 0}
!138 = !{!"_ZTSN5Eigen8internal17product_evaluatorINS_7ProductINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEELi3ENS_10DenseShapeESC_ffEE", !124, i64 0, !130, i64 56, !132, i64 112, !137, i64 128, !33, i64 144}
!139 = !{!138, !33, i64 144}
!140 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEENS3_IfLin1ELi1ELi0ELi3ELi1EEEEE", !111, i64 0, !99, i64 8, !115, i64 9}
!141 = !{!140, !111, i64 0}
!142 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEE", !31, i64 0}
!143 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_7ProductINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEE", !31, i64 0}
!144 = !{!"p1 _ZTSN5Eigen8internal13sub_assign_opIffEE", !31, i64 0}
!145 = !{!"p1 _ZTSN5Eigen5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEE", !31, i64 0}
!146 = !{!"_ZTSN5Eigen8internal10CacheSizesE", !33, i64 0, !33, i64 8, !33, i64 16}
!147 = !{!146, !33, i64 0}
!148 = !{!146, !33, i64 8}
!149 = !{!146, !33, i64 16}
!150 = !{!"_ZTSN5Eigen8internal8AllRangeILin1EEE", !84, i64 0}
!151 = !{!"_ZTSN5Eigen7ProductINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0EEE", !77, i64 0, !79, i64 8}
!152 = !{!"_ZTSN5Eigen8internal13scalar_sum_opIddEE"}
!153 = !{!"_ZTSN5Eigen8internal30plainobjectbase_evaluator_dataIdLi0EEE", !40, i64 0}
!154 = !{!"_ZTSN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEE", !153, i64 0}
!155 = !{!154, !40, i64 0}
!156 = !{!"_ZTSN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEE", !96, i64 0}
!157 = !{!156, !40, i64 0}
!158 = !{!153, !40, i64 0}
!159 = !{!151, !77, i64 0}
!160 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEEEE", !23, i64 0}
!161 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEEEE", !160, i64 0}
!162 = !{!"_ZTSN5Eigen8internal19SparseTransposeImplIKNS_12SparseMatrixIdLi0EiEELi1024EEE", !161, i64 0}
!163 = !{!"_ZTSN5Eigen13TransposeImplIKNS_12SparseMatrixIdLi0EiEENS_6SparseEEE", !162, i64 0}
!164 = !{!"_ZTSN5Eigen9TransposeIKNS_12SparseMatrixIdLi0EiEEEE", !163, i64 0, !77, i64 8}
!165 = !{!164, !77, i64 8}
end_hunk_1
