Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgtsv?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dgtsv_:bb.a
  store <4 x double> %i.lx, ptr %i.lv, align 8, !tbaa !50, !alias.scope !59
  store <4 x double> %i.ly, ptr %i.lw, align 8, !tbaa !50, !alias.scope !59
  %index.next660 = add nuw i64 %index655, 8       ; 2 uses
  %i.lz = icmp eq i64 %index.next660, %n.vec651
  br i1 %i.lz, label %middle.block661, label %vector.body654, !llvm.loop !26

middle.block661:                                  ; preds = %vector.body654
  %cmp.n662 = icmp eq i64 %n.vec651, %i.ld
  br i1 %cmp.n662, label %.loopexit479, label %.lr.ph503.preheader801

.lr.ph503.preheader801:                           ; preds = %vector.memcheck646, %.lr.ph503.preheader, %middle.block661
  %indvars.iv538.ph = phi i64 [ 1, %vector.memcheck646 ], [ 1, %.lr.ph503.preheader ], [ %i.lr, %middle.block661 ] ; 4 uses
  %i.ma = sub nsw i64 %wide.trip.count541, %indvars.iv538.ph
  %i.mb = zext nneg i32 %i.j to i64
  %i.mc = sub nsw i64 %i.mb, %indvars.iv538.ph
  %xtraiter827 = and i64 %i.ma, 3                 ; 2 uses
  %lcmp.mod828.not = icmp eq i64 %xtraiter827, 0
  br i1 %lcmp.mod828.not, label %.lr.ph503.prol.loopexit, label %.lr.ph503.prol

.lr.ph503.prol:                                   ; preds = %.lr.ph503.preheader801, %.lr.ph503.prol
  %indvars.iv538.prol = phi i64 [ %indvars.iv.next539.prol, %.lr.ph503.prol ], [ %indvars.iv538.ph, %.lr.ph503.preheader801 ] ; 2 uses
  %prol.iter829 = phi i64 [ %prol.iter829.next, %.lr.ph503.prol ], [ 0, %.lr.ph503.preheader801 ]
  %i.md = mul nsw i64 %indvars.iv538.prol, %i.kz  ; 2 uses
  %gep589.prol = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.md ; 2 uses
  %i.me = load double, ptr %gep589.prol, align 8, !tbaa !50
  %gep591.prol = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.md ; 2 uses
  %i.mf = load double, ptr %gep591.prol, align 8, !tbaa !50 ; 2 uses
  store double %i.mf, ptr %gep589.prol, align 8, !tbaa !50
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.kx, double %i.mf, double %i.me)
  store double %i.mg, ptr %gep591.prol, align 8, !tbaa !50
  %indvars.iv.next539.prol = add nuw nsw i64 %indvars.iv538.prol, 1 ; 2 uses
  %prol.iter829.next = add i64 %prol.iter829, 1   ; 2 uses
  %prol.iter829.cmp.not = icmp eq i64 %prol.iter829.next, %xtraiter827
  br i1 %prol.iter829.cmp.not, label %.lr.ph503.prol.loopexit, label %.lr.ph503.prol, !llvm.loop !27

.lr.ph503.prol.loopexit:                          ; preds = %.lr.ph503.prol, %.lr.ph503.preheader801
  %indvars.iv538.unr = phi i64 [ %indvars.iv538.ph, %.lr.ph503.preheader801 ], [ %indvars.iv.next539.prol, %.lr.ph503.prol ]
  %i.mh = icmp ult i64 %i.mc, 3
  br i1 %i.mh, label %.loopexit479, label %.lr.ph503

.lr.ph503:                                        ; preds = %.lr.ph503.prol.loopexit, %.lr.ph503
  %indvars.iv538 = phi i64 [ %indvars.iv.next539.3, %.lr.ph503 ], [ %indvars.iv538.unr, %.lr.ph503.prol.loopexit ] ; 5 uses
  %i.mi = mul nsw i64 %indvars.iv538, %i.kz       ; 2 uses
  %gep589 = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.mi ; 2 uses
  %i.mj = load double, ptr %gep589, align 8, !tbaa !50
  %gep591 = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.mi ; 2 uses
  %i.mk = load double, ptr %gep591, align 8, !tbaa !50 ; 2 uses
  store double %i.mk, ptr %gep589, align 8, !tbaa !50
  %i.ml = tail call double @llvm.fmuladd.f64(double %i.kx, double %i.mk, double %i.mj)
  store double %i.ml, ptr %gep591, align 8, !tbaa !50
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1
  %i.mm = mul nsw i64 %indvars.iv.next539, %i.kz  ; 2 uses
  %gep589.1 = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.mm ; 2 uses
  %i.mn = load double, ptr %gep589.1, align 8, !tbaa !50
  %gep591.1 = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.mm ; 2 uses
  %i.mo = load double, ptr %gep591.1, align 8, !tbaa !50 ; 2 uses
  store double %i.mo, ptr %gep589.1, align 8, !tbaa !50
  %i.mp = tail call double @llvm.fmuladd.f64(double %i.kx, double %i.mo, double %i.mn)
  store double %i.mp, ptr %gep591.1, align 8, !tbaa !50
  %indvars.iv.next539.1 = add nuw nsw i64 %indvars.iv538, 2
  %i.mq = mul nsw i64 %indvars.iv.next539.1, %i.kz ; 2 uses
  %gep589.2 = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.mq ; 2 uses
  %i.mr = load double, ptr %gep589.2, align 8, !tbaa !50
  %gep591.2 = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.mq ; 2 uses
  %i.ms = load double, ptr %gep591.2, align 8, !tbaa !50 ; 2 uses
  store double %i.ms, ptr %gep589.2, align 8, !tbaa !50
  %i.mt = tail call double @llvm.fmuladd.f64(double %i.kx, double %i.ms, double %i.mr)
  store double %i.mt, ptr %gep591.2, align 8, !tbaa !50
  %indvars.iv.next539.2 = add nuw nsw i64 %indvars.iv538, 3
  %i.mu = mul nsw i64 %indvars.iv.next539.2, %i.kz ; 2 uses
  %gep589.3 = getelementptr [8 x i8], ptr %invariant.gep588, i64 %i.mu ; 2 uses
  %i.mv = load double, ptr %gep589.3, align 8, !tbaa !50
  %gep591.3 = getelementptr [8 x i8], ptr %invariant.gep590, i64 %i.mu ; 2 uses
  %i.mw = load double, ptr %gep591.3, align 8, !tbaa !50 ; 2 uses
  store double %i.mw, ptr %gep589.3, align 8, !tbaa !50
  %i.mx = tail call double @llvm.fmuladd.f64(double %i.kx, double %i.mw, double %i.mv)
  store double %i.mx, ptr %gep591.3, align 8, !tbaa !50
  %indvars.iv.next539.3 = add nuw nsw i64 %indvars.iv538, 4 ; 2 uses
  %exitcond542.not.3 = icmp eq i64 %indvars.iv.next539.3, %wide.trip.count541
  br i1 %exitcond542.not.3, label %.loopexit479, label %.lr.ph503, !llvm.loop !28

.loopexit479:                                     ; preds = %.lr.ph499.prol.loopexit, %.lr.ph499, %.lr.ph503.prol.loopexit, %.lr.ph503, %middle.block, %vec.epilog.middle.block, %middle.block661, %bb.aa, %bb.ac, %._crit_edge495
  %i.my = zext nneg i32 %i.h to i64
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.my
  %i.na = load double, ptr %i.mz, align 8, !tbaa !50
  %i.nb = fcmp oeq double %i.na, 0.000000e+00
  br i1 %i.nb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.loopexit479
  store i32 %i.h, ptr %7, align 4, !tbaa !48
  br label %.loopexit

bb.ae:                                            ; preds = %.loopexit479, %bb.q
  %i.nc = icmp slt i32 %i.j, 3
  %i.nd = zext nneg i32 %i.h to i64               ; 3 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.nd ; 3 uses
  %i.nf = icmp sgt i32 %i.h, 1                    ; 3 uses
  %i.ng = sext i32 %i.e to i64                    ; 11 uses
  br i1 %i.nc, label %.preheader, label %bb.ai

.preheader:                                       ; preds = %bb.ae
  %i.nh = add nsw i32 %i.h, -2                    ; 5 uses
  %i.ni = icmp samesign ugt i32 %i.h, 2           ; 2 uses
  %i.nj = add nsw i32 %i.h, -1                    ; 2 uses
  %i.nk = zext nneg i32 %i.nj to i64              ; 2 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.nk ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.nk ; 2 uses
  %i.nn = sext i32 %i.nh to i64                   ; 17 uses
  %i.no = zext nneg i32 %i.nj to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %invariant.gep608 = getelementptr [8 x i8], ptr %i.g, i64 %i.nd ; 2 uses
  %invariant.gep610 = getelementptr [8 x i8], ptr %i.g, i64 %i.no ; 2 uses
  %i.np = add nsw i64 %i.nn, -1                   ; 4 uses
  %i.nq = sext i32 %i.e to i35                    ; 2 uses
  %i.nr = sext i32 %i.nh to i35
  %i.ns = add nsw i35 %i.nq, %i.nr                ; 2 uses
  %i.nt = shl i35 %i.ns, 3
  %i.nu = add i35 %i.nt, 8                        ; 3 uses
  %i.nv = shl nsw i35 %i.nq, 3                    ; 2 uses
  %i.nw = shl i35 %i.ns, 3
  %i.nx = add i35 %i.nw, 16                       ; 3 uses
  %i.ny = or i64 %i.ng, %i.f
  %i.nz = shl nsw i64 %i.ny, 3
  %i.oa = getelementptr i8, ptr %5, i64 %i.nz
  %scevgep728.a = getelementptr i8, ptr %i.oa, i64 8 ; 10 uses
  %i.ob = zext nneg i32 %smax to i64
  %i.oc = mul nsw i64 %i.ng, %i.ob
  %i.od = shl nsw i64 %i.f, 3                     ; 2 uses
  %i.oe = add i64 %i.oc, %i.f
  %i.of = shl nsw i64 %i.nn, 3                    ; 4 uses
  %i.og = add i64 %i.oe, %i.nn
  %i.oh = shl i64 %i.og, 3
  %i.oi = getelementptr i8, ptr %5, i64 %i.oh
  %scevgep729.a = getelementptr i8, ptr %i.oi, i64 8 ; 10 uses
  %scevgep730.a = getelementptr i8, ptr %4, i64 %i.of ; 2 uses
  %i.oj = add nsw i64 %i.od, 8
  %i.ok = sub nsw i64 %i.oj, %i.of                ; 2 uses
  %scevgep731.a = getelementptr i8, ptr %5, i64 %i.ok ; 2 uses
  %i.ol = sext i32 %i.e to i35                    ; 3 uses
  %i.om = sext i32 %i.nh to i35                   ; 2 uses
  %i.on = add nsw i35 %i.ol, %i.om
  %i.oo = shl i35 %i.on, 3
  %i.op = add i35 %i.oo, 8                        ; 2 uses
  %i.oq = shl nsw i35 %i.ol, 3                    ; 2 uses
  %i.or = add nsw i64 %i.od, 8                    ; 2 uses
  %scevgep733.a = getelementptr i8, ptr %5, i64 %i.or ; 2 uses
  %scevgep735.a = getelementptr i8, ptr %2, i64 %i.of ; 2 uses
  %scevgep736.a = getelementptr i8, ptr %5, i64 %i.ok ; 2 uses
  %i.os = add nsw i35 %i.ol, %i.om
  %i.ot = shl i35 %i.os, 3
  %i.ou = add i35 %i.ot, 16                       ; 2 uses
  %scevgep738 = getelementptr i8, ptr %5, i64 %i.or ; 2 uses
  %scevgep740 = getelementptr i8, ptr %3, i64 %i.of ; 2 uses
  %i.ov = sext i35 %i.op to i64                   ; 2 uses
  %scevgep732 = getelementptr i8, ptr %scevgep731.a, i64 %i.ov
  %scevgep734 = getelementptr i8, ptr %scevgep733.a, i64 %i.ov
  %i.ow = sext i35 %i.ou to i64                   ; 2 uses
  %scevgep737 = getelementptr i8, ptr %scevgep736.a, i64 %i.ow
  %scevgep739 = getelementptr i8, ptr %scevgep738, i64 %i.ow
  %i.ox = load double, ptr %i.ne, align 8, !tbaa !50
  %gep609 = getelementptr [8 x i8], ptr %invariant.gep608, i64 %i.ng ; 2 uses
  %i.oy = load double, ptr %gep609, align 8, !tbaa !50
  %i.oz = fdiv double %i.oy, %i.ox                ; 2 uses
  store double %i.oz, ptr %gep609, align 8, !tbaa !50
  br i1 %i.nf, label %bb.af, label %._crit_edge517

bb.af:                                            ; preds = %.preheader
  %gep611 = getelementptr [8 x i8], ptr %invariant.gep610, i64 %i.ng ; 2 uses
  %i.pa = load double, ptr %gep611, align 8, !tbaa !50
  %i.pb = load double, ptr %i.nl, align 8, !tbaa !50
  %i.pc = fneg double %i.pb
  %i.pd = tail call double @llvm.fmuladd.f64(double %i.pc, double %i.oz, double %i.pa)
  %i.pe = load double, ptr %i.nm, align 8, !tbaa !50
  %i.pf = fdiv double %i.pd, %i.pe
  store double %i.pf, ptr %gep611, align 8, !tbaa !50
  br i1 %i.ni, label %.lr.ph516, label %._crit_edge517

.lr.ph516:                                        ; preds = %bb.af
  %i.pg = add nsw i64 %i.ng, 1                    ; 2 uses
  %i.ph = add nsw i64 %i.ng, 2                    ; 2 uses
  %invariant.gep606 = getelementptr [8 x i8], ptr %i.g, i64 %i.ng ; 2 uses
  %min.iters.check766 = icmp ult i32 %i.nh, 16
  br i1 %min.iters.check766, label %scalar.ph765.preheader, label %vector.scevcheck721

vector.scevcheck721:                              ; preds = %.lr.ph516
  %i.pi = trunc nsw i64 %i.np to i35
  %mul.result725 = shl i35 %i.pi, 3               ; 2 uses
  %mul.overflow726 = icmp ugt i64 %i.np, 4294967295
  %i.pj = sub i35 %i.nu, %mul.result725
  %i.pk = icmp sgt i35 %i.pj, %i.nu
  %i.pl = sub i35 %i.nx, %mul.result725
  %i.pm = icmp sgt i35 %i.pl, %i.nx
  %i.pn = or i1 %i.pm, %mul.overflow726
  %i.po = or i1 %i.pk, %i.pn
  br i1 %i.po, label %scalar.ph765.preheader, label %vector.memcheck727

vector.memcheck727:                               ; preds = %vector.scevcheck721
  %bound0741.a = icmp ult ptr %scevgep728.a, %scevgep730.a
  %bound1742.a = icmp ult ptr %4, %scevgep729.a
  %found.conflict743.a = and i1 %bound0741.a, %bound1742.a
  %stride.check740 = icmp slt i32 %i.e, 0
  %8 = or i1 %found.conflict743.a, %stride.check740
  %bound0745.a = icmp ult ptr %scevgep728.a, %scevgep734
  %bound1746.a = icmp ult ptr %scevgep732, %scevgep729.a
  %found.conflict747.a = and i1 %bound0745.a, %bound1746.a
  %conflict.rdx749 = or i1 %8, %found.conflict747.a
  %bound0750 = icmp ult ptr %scevgep728.a, %scevgep735.a
  %bound1751 = icmp ult ptr %2, %scevgep729.a
  %found.conflict752 = and i1 %bound0750, %bound1751
  %conflict.rdx754 = or i1 %conflict.rdx749, %found.conflict752
  %bound0755 = icmp ult ptr %scevgep728.a, %scevgep739
  %bound1756 = icmp ult ptr %scevgep737, %scevgep729.a
  %found.conflict757 = and i1 %bound0755, %bound1756
  %conflict.rdx759 = or i1 %conflict.rdx754, %found.conflict757
  %bound0760 = icmp ult ptr %scevgep728.a, %scevgep740
  %bound1761 = icmp ult ptr %3, %scevgep729.a
  %found.conflict762 = and i1 %bound0760, %bound1761
  %conflict.rdx764 = or i1 %conflict.rdx759, %found.conflict762
  br i1 %conflict.rdx764, label %scalar.ph765.preheader, label %vector.ph767

vector.ph767:                                     ; preds = %vector.memcheck727
  %n.vec768 = and i64 %i.nn, 8589934588           ; 2 uses
  %i.pp = and i64 %i.nn, 3
  br label %vector.body769

vector.body769:                                   ; preds = %vector.body769, %vector.ph767
  %index770 = phi i64 [ 0, %vector.ph767 ], [ %index.next784, %vector.body769 ] ; 2 uses
  %i.pq = sub i64 %i.nn, %index770                ; 6 uses
  %i.pr = getelementptr [8 x i8], ptr %invariant.gep606, i64 %i.pq
  %i.ps = getelementptr i8, ptr %i.pr, i64 -24    ; 2 uses
  %wide.load771 = load <4 x double>, ptr %i.ps, align 8, !tbaa !50, !alias.scope !60, !noalias !61
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.pq
  %i.pu = getelementptr inbounds i8, ptr %i.pt, i64 -24
  %wide.load773.a = load <4 x double>, ptr %i.pu, align 8, !tbaa !50, !alias.scope !62
  %i.pv = add i64 %i.pg, %i.pq
  %i.pw = shl i64 %i.pv, 32
  %i.px = ashr exact i64 %i.pw, 29
  %i.py = getelementptr inbounds i8, ptr %i.g, i64 %i.px
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 -24
  %wide.load774 = load <4 x double>, ptr %i.pz, align 8, !tbaa !50, !alias.scope !63
  %i.qa = fneg <4 x double> %wide.load773.a
  %i.qb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qa, <4 x double> %wide.load774, <4 x double> %wide.load771)
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pq
  %i.qd = getelementptr inbounds i8, ptr %i.qc, i64 -24
  %wide.load777 = load <4 x double>, ptr %i.qd, align 8, !tbaa !50, !alias.scope !64
  %i.qe = add i64 %i.ph, %i.pq
  %i.qf = shl i64 %i.qe, 32
  %i.qg = ashr exact i64 %i.qf, 29
  %i.qh = getelementptr inbounds i8, ptr %i.g, i64 %i.qg
  %i.qi = getelementptr inbounds i8, ptr %i.qh, i64 -24
  %wide.load778 = load <4 x double>, ptr %i.qi, align 8, !tbaa !50, !alias.scope !65
  %i.qj = fneg <4 x double> %wide.load777
  %i.qk = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qj, <4 x double> %wide.load778, <4 x double> %i.qb)
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.pq
  %i.qm = getelementptr inbounds i8, ptr %i.ql, i64 -24
  %wide.load781 = load <4 x double>, ptr %i.qm, align 8, !tbaa !50, !alias.scope !66
  %i.qn = fdiv <4 x double> %i.qk, %wide.load781
  store <4 x double> %i.qn, ptr %i.ps, align 8, !tbaa !50, !alias.scope !60, !noalias !61
  %index.next784 = add nuw i64 %index770, 4       ; 2 uses
  %i.qo = icmp eq i64 %index.next784, %n.vec768
  br i1 %i.qo, label %middle.block785, label %vector.body769, !llvm.loop !36

middle.block785:                                  ; preds = %vector.body769
  %cmp.n786 = icmp eq i64 %n.vec768, %i.nn
  br i1 %cmp.n786, label %._crit_edge517, label %scalar.ph765.preheader

scalar.ph765.preheader:                           ; preds = %vector.memcheck727, %vector.scevcheck721, %.lr.ph516, %middle.block785
  %indvars.iv556.ph = phi i64 [ %i.nn, %vector.memcheck727 ], [ %i.nn, %vector.scevcheck721 ], [ %i.nn, %.lr.ph516 ], [ %i.pp, %middle.block785 ]
  br label %scalar.ph765

scalar.ph765:                                     ; preds = %scalar.ph765.preheader, %scalar.ph765
  %indvars.iv556 = phi i64 [ %indvars.iv.next557, %scalar.ph765 ], [ %indvars.iv556.ph, %scalar.ph765.preheader ] ; 8 uses
  %gep607 = getelementptr [8 x i8], ptr %invariant.gep606, i64 %indvars.iv556 ; 2 uses
  %i.qp = load double, ptr %gep607, align 8, !tbaa !50
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv556
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !50
  %i.qs = add i64 %i.pg, %indvars.iv556
  %sext570 = shl i64 %i.qs, 32
  %i.qt = ashr exact i64 %sext570, 29
  %i.qu = getelementptr inbounds i8, ptr %i.g, i64 %i.qt
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !50
  %i.qw = fneg double %i.qr
  %i.qx = tail call double @llvm.fmuladd.f64(double %i.qw, double %i.qv, double %i.qp)
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv556
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !50
  %i.ra = add i64 %i.ph, %indvars.iv556
  %sext571 = shl i64 %i.ra, 32
  %i.rb = ashr exact i64 %sext571, 29
  %i.rc = getelementptr inbounds i8, ptr %i.g, i64 %i.rb
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !50
  %i.re = fneg double %i.qz
  %i.rf = tail call double @llvm.fmuladd.f64(double %i.re, double %i.rd, double %i.qx)
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv556
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !50
  %i.ri = fdiv double %i.rf, %i.rh
  store double %i.ri, ptr %gep607, align 8, !tbaa !50
  %indvars.iv.next557 = add nsw i64 %indvars.iv556, -1
  %i.rj = icmp samesign ugt i64 %indvars.iv556, 1
  br i1 %i.rj, label %scalar.ph765, label %._crit_edge517, !llvm.loop !37

._crit_edge517:                                   ; preds = %scalar.ph765, %middle.block785, %.preheader, %bb.af
  %exitcond563.not.not = icmp eq i32 %i.j, 2
  br i1 %exitcond563.not.not, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %._crit_edge517
  %i.rk = add i35 %i.op, %i.oq
  %i.rl = sext i35 %i.rk to i64                   ; 2 uses
  %scevgep732.1 = getelementptr i8, ptr %scevgep731.a, i64 %i.rl
  %scevgep734.1 = getelementptr i8, ptr %scevgep733.a, i64 %i.rl
  %i.rm = add i35 %i.ou, %i.oq
  %i.rn = sext i35 %i.rm to i64                   ; 2 uses
  %scevgep737.1 = getelementptr i8, ptr %scevgep736.a, i64 %i.rn
  %scevgep739.1 = getelementptr i8, ptr %scevgep738, i64 %i.rn
  %i.ro = add i35 %i.nu, %i.nv                    ; 2 uses
  %i.rp = add i35 %i.nx, %i.nv                    ; 2 uses
  %i.rq = load double, ptr %i.ne, align 8, !tbaa !50
  %i.rr = shl nsw i64 %i.ng, 1                    ; 5 uses
  %gep609.1 = getelementptr [8 x i8], ptr %invariant.gep608, i64 %i.rr ; 2 uses
  %i.rs = load double, ptr %gep609.1, align 8, !tbaa !50
  %i.rt = fdiv double %i.rs, %i.rq                ; 2 uses
  store double %i.rt, ptr %gep609.1, align 8, !tbaa !50
  br i1 %i.nf, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %gep611.1 = getelementptr [8 x i8], ptr %invariant.gep610, i64 %i.rr ; 2 uses
  %i.ru = load double, ptr %gep611.1, align 8, !tbaa !50
  %i.rv = load double, ptr %i.nl, align 8, !tbaa !50
  %i.rw = fneg double %i.rv
  %i.rx = tail call double @llvm.fmuladd.f64(double %i.rw, double %i.rt, double %i.ru)
  %i.ry = load double, ptr %i.nm, align 8, !tbaa !50
  %i.rz = fdiv double %i.rx, %i.ry
  store double %i.rz, ptr %gep611.1, align 8, !tbaa !50
  br i1 %i.ni, label %.lr.ph516.1, label %.loopexit

.lr.ph516.1:                                      ; preds = %bb.ah
  %i.sa = or disjoint i64 %i.rr, 1                ; 2 uses
  %i.sb = add nsw i64 %i.rr, 2                    ; 2 uses
  %invariant.gep606.1 = getelementptr [8 x i8], ptr %i.g, i64 %i.rr ; 2 uses
  %min.iters.check766.1 = icmp ult i32 %i.nh, 16
  br i1 %min.iters.check766.1, label %scalar.ph765.preheader.1, label %vector.scevcheck721.1

vector.scevcheck721.1:                            ; preds = %.lr.ph516.1
  %i.sc = trunc nsw i64 %i.np to i35
  %mul.result725.1 = shl i35 %i.sc, 3             ; 2 uses
  %mul.overflow726.1 = icmp ugt i64 %i.np, 4294967295
  %i.sd = sub i35 %i.ro, %mul.result725.1
  %i.se = icmp sgt i35 %i.sd, %i.ro
  %i.sf = sub i35 %i.rp, %mul.result725.1
  %i.sg = icmp sgt i35 %i.sf, %i.rp
  %i.sh = or i1 %i.sg, %mul.overflow726.1
  %i.si = or i1 %i.se, %i.sh
  br i1 %i.si, label %scalar.ph765.preheader.1, label %vector.memcheck727.1

vector.memcheck727.1:                             ; preds = %vector.scevcheck721.1
  %bound0741.1.a = icmp ult ptr %scevgep728.a, %scevgep730.a
  %bound1742.1.a = icmp ult ptr %4, %scevgep729.a
  %found.conflict743.1.a = and i1 %bound0741.1.a, %bound1742.1.a
  %stride.check740.1 = icmp slt i32 %i.e, 0
  %9 = or i1 %found.conflict743.1.a, %stride.check740.1
  %bound0745.1.a = icmp ult ptr %scevgep728.a, %scevgep734.1
  %bound1746.1.a = icmp ult ptr %scevgep732.1, %scevgep729.a
  %found.conflict747.1.a = and i1 %bound0745.1.a, %bound1746.1.a
  %conflict.rdx749.1 = or i1 %9, %found.conflict747.1.a
  %bound0750.1 = icmp ult ptr %scevgep728.a, %scevgep735.a
  %bound1751.1 = icmp ult ptr %2, %scevgep729.a
  %found.conflict752.1 = and i1 %bound0750.1, %bound1751.1
  %conflict.rdx754.1 = or i1 %conflict.rdx749.1, %found.conflict752.1
  %bound0755.1 = icmp ult ptr %scevgep728.a, %scevgep739.1
  %bound1756.1 = icmp ult ptr %scevgep737.1, %scevgep729.a
  %found.conflict757.1 = and i1 %bound0755.1, %bound1756.1
  %conflict.rdx759.1 = or i1 %conflict.rdx754.1, %found.conflict757.1
  %bound0760.1 = icmp ult ptr %scevgep728.a, %scevgep740
  %bound1761.1 = icmp ult ptr %3, %scevgep729.a
  %found.conflict762.1 = and i1 %bound0760.1, %bound1761.1
  %conflict.rdx764.1 = or i1 %conflict.rdx759.1, %found.conflict762.1
  br i1 %conflict.rdx764.1, label %scalar.ph765.preheader.1, label %vector.ph767.1

vector.ph767.1:                                   ; preds = %vector.memcheck727.1
  %n.vec768.1 = and i64 %i.nn, 8589934588         ; 2 uses
  %i.sj = and i64 %i.nn, 3
  br label %vector.body769.1

vector.body769.1:                                 ; preds = %vector.body769.1, %vector.ph767.1
  %index770.1 = phi i64 [ 0, %vector.ph767.1 ], [ %index.next784.1, %vector.body769.1 ] ; 2 uses
  %i.sk = sub i64 %i.nn, %index770.1              ; 6 uses
  %i.sl = getelementptr [8 x i8], ptr %invariant.gep606.1, i64 %i.sk
  %i.sm = getelementptr i8, ptr %i.sl, i64 -24    ; 2 uses
  %wide.load771.1 = load <4 x double>, ptr %i.sm, align 8, !tbaa !50, !alias.scope !60, !noalias !61
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.sk
  %i.so = getelementptr inbounds i8, ptr %i.sn, i64 -24
  %wide.load773.1.a = load <4 x double>, ptr %i.so, align 8, !tbaa !50, !alias.scope !62
  %i.sp = add i64 %i.sa, %i.sk
  %i.sq = shl i64 %i.sp, 32
  %i.sr = ashr exact i64 %i.sq, 29
  %i.ss = getelementptr inbounds i8, ptr %i.g, i64 %i.sr
  %i.st = getelementptr inbounds i8, ptr %i.ss, i64 -24
  %wide.load774.1 = load <4 x double>, ptr %i.st, align 8, !tbaa !50, !alias.scope !63
  %i.su = fneg <4 x double> %wide.load773.1.a
  %i.sv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.su, <4 x double> %wide.load774.1, <4 x double> %wide.load771.1)
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.sk
  %i.sx = getelementptr inbounds i8, ptr %i.sw, i64 -24
  %wide.load777.1 = load <4 x double>, ptr %i.sx, align 8, !tbaa !50, !alias.scope !64
  %i.sy = add i64 %i.sb, %i.sk
  %i.sz = shl i64 %i.sy, 32
  %i.ta = ashr exact i64 %i.sz, 29
  %i.tb = getelementptr inbounds i8, ptr %i.g, i64 %i.ta
  %i.tc = getelementptr inbounds i8, ptr %i.tb, i64 -24
  %wide.load778.1 = load <4 x double>, ptr %i.tc, align 8, !tbaa !50, !alias.scope !65
  %i.td = fneg <4 x double> %wide.load777.1
  %i.te = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.td, <4 x double> %wide.load778.1, <4 x double> %i.sv)
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.sk
  %i.tg = getelementptr inbounds i8, ptr %i.tf, i64 -24
  %wide.load781.1 = load <4 x double>, ptr %i.tg, align 8, !tbaa !50, !alias.scope !66
  %i.th = fdiv <4 x double> %i.te, %wide.load781.1
  store <4 x double> %i.th, ptr %i.sm, align 8, !tbaa !50, !alias.scope !60, !noalias !61
  %index.next784.1 = add nuw i64 %index770.1, 4   ; 2 uses
  %i.ti = icmp eq i64 %index.next784.1, %n.vec768.1
  br i1 %i.ti, label %middle.block785.1, label %vector.body769.1, !llvm.loop !36

middle.block785.1:                                ; preds = %vector.body769.1
  %cmp.n786.1 = icmp eq i64 %n.vec768.1, %i.nn
  br i1 %cmp.n786.1, label %.loopexit, label %scalar.ph765.preheader.1

scalar.ph765.preheader.1:                         ; preds = %middle.block785.1, %vector.memcheck727.1, %vector.scevcheck721.1, %.lr.ph516.1
  %indvars.iv556.ph.1 = phi i64 [ %i.nn, %vector.memcheck727.1 ], [ %i.nn, %vector.scevcheck721.1 ], [ %i.nn, %.lr.ph516.1 ], [ %i.sj, %middle.block785.1 ]
  br label %scalar.ph765.1

scalar.ph765.1:                                   ; preds = %scalar.ph765.1, %scalar.ph765.preheader.1
  %indvars.iv556.1 = phi i64 [ %indvars.iv.next557.1, %scalar.ph765.1 ], [ %indvars.iv556.ph.1, %scalar.ph765.preheader.1 ] ; 8 uses
  %gep607.1 = getelementptr [8 x i8], ptr %invariant.gep606.1, i64 %indvars.iv556.1 ; 2 uses
  %i.tj = load double, ptr %gep607.1, align 8, !tbaa !50
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv556.1
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !50
  %i.tm = add i64 %i.sa, %indvars.iv556.1
  %sext570.1 = shl i64 %i.tm, 32
  %i.tn = ashr exact i64 %sext570.1, 29
  %i.to = getelementptr inbounds i8, ptr %i.g, i64 %i.tn
  %i.tp = load double, ptr %i.to, align 8, !tbaa !50
  %i.tq = fneg double %i.tl
  %i.tr = tail call double @llvm.fmuladd.f64(double %i.tq, double %i.tp, double %i.tj)
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv556.1
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !50
  %i.tu = add i64 %i.sb, %indvars.iv556.1
  %sext571.1 = shl i64 %i.tu, 32
  %i.tv = ashr exact i64 %sext571.1, 29
  %i.tw = getelementptr inbounds i8, ptr %i.g, i64 %i.tv
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !50
  %i.ty = fneg double %i.tt
  %i.tz = tail call double @llvm.fmuladd.f64(double %i.ty, double %i.tx, double %i.tr)
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv556.1
  %i.ub = load double, ptr %i.ua, align 8, !tbaa !50
  %i.uc = fdiv double %i.tz, %i.ub
  store double %i.uc, ptr %gep607.1, align 8, !tbaa !50
  %indvars.iv.next557.1 = add nsw i64 %indvars.iv556.1, -1
  %i.ud = icmp samesign ugt i64 %indvars.iv556.1, 1
  br i1 %i.ud, label %scalar.ph765.1, label %.loopexit, !llvm.loop !37

bb.ai:                                            ; preds = %bb.ae
  %i.ue = add nsw i32 %i.h, -1                    ; 2 uses
  %i.uf = zext nneg i32 %i.ue to i64              ; 2 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.uf
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.uf
  %i.ui = add nsw i32 %i.h, -2                    ; 4 uses
  %i.uj = icmp samesign ugt i32 %i.h, 2
  %i.uk = sext i32 %i.ui to i64                   ; 9 uses
  %i.ul = zext nneg i32 %i.ue to i64
  %i.um = add nuw i32 %i.j, 1
  %wide.trip.count554 = zext i32 %i.um to i64     ; 2 uses
  %invariant.gep602 = getelementptr [8 x i8], ptr %i.g, i64 %i.nd
  %invariant.gep604 = getelementptr [8 x i8], ptr %i.g, i64 %i.ul
  %i.un = add nsw i64 %i.uk, -1                   ; 2 uses
  %i.uo = sext i32 %i.e to i35                    ; 2 uses
  %i.up = sext i32 %i.ui to i35
  %i.uq = add nsw i35 %i.uo, %i.up                ; 2 uses
  %i.ur = shl i35 %i.uq, 3
  %i.us = add i35 %i.ur, 8
  %i.ut = shl nsw i35 %i.uo, 3
  %i.uu = shl i35 %i.uq, 3
  %i.uv = add i35 %i.uu, 16
  %i.uw = or i64 %i.ng, %i.f
  %i.ux = shl nsw i64 %i.uw, 3
  %i.uy = getelementptr i8, ptr %5, i64 %i.ux
  %scevgep = getelementptr i8, ptr %i.uy, i64 8   ; 5 uses
  %i.uz = shl nuw nsw i64 %wide.trip.count554, 3
  %i.va = add nsw i64 %i.uz, -8
  %i.vb = mul i64 %i.va, %i.ng
  %i.vc = shl nsw i64 %i.f, 3                     ; 3 uses
  %i.vd = shl nsw i64 %i.uk, 3                    ; 5 uses
  %i.ve = getelementptr i8, ptr %5, i64 %i.vb
  %i.vf = getelementptr i8, ptr %i.ve, i64 %i.vc
  %i.vg = getelementptr i8, ptr %i.vf, i64 %i.vd
  %scevgep665 = getelementptr i8, ptr %i.vg, i64 8 ; 5 uses
  %scevgep666 = getelementptr i8, ptr %4, i64 %i.vd
  %i.vh = add nsw i64 %i.vc, 8
  %i.vi = sub nsw i64 %i.vh, %i.vd                ; 2 uses
  %scevgep667 = getelementptr i8, ptr %5, i64 %i.vi
  %i.vj = sext i32 %i.e to i35                    ; 3 uses
  %i.vk = sext i32 %i.ui to i35                   ; 2 uses
  %i.vl = add nsw i35 %i.vj, %i.vk
  %i.vm = shl i35 %i.vl, 3
  %i.vn = add i35 %i.vm, 8
  %i.vo = shl nsw i35 %i.vj, 3
  %i.vp = add nsw i64 %i.vc, 8                    ; 2 uses
  %scevgep669 = getelementptr i8, ptr %5, i64 %i.vp
  %scevgep671 = getelementptr i8, ptr %2, i64 %i.vd
  %scevgep672 = getelementptr i8, ptr %5, i64 %i.vi
  %i.vq = add nsw i35 %i.vj, %i.vk
  %i.vr = shl i35 %i.vq, 3
  %i.vs = add i35 %i.vr, 16
  %scevgep674 = getelementptr i8, ptr %5, i64 %i.vp
  %scevgep676 = getelementptr i8, ptr %3, i64 %i.vd
  %min.iters.check700 = icmp ult i32 %i.ui, 16
  %i.vt = trunc nsw i64 %i.un to i35
  %mul.result = shl i35 %i.vt, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.un, 4294967295
  %bound0677 = icmp ult ptr %scevgep, %scevgep666
  %bound1678 = icmp ult ptr %4, %scevgep665
  %found.conflict679 = and i1 %bound0677, %bound1678
  %stride.check683 = icmp slt i32 %i.e, 0
  %invariant.op.a = or i1 %found.conflict679, %stride.check683
  %bound0684 = icmp ult ptr %scevgep, %scevgep671
  %bound1685 = icmp ult ptr %2, %scevgep665
  %found.conflict686 = and i1 %bound0684, %bound1685
  %invariant.op833 = or i1 %invariant.op.a, %found.conflict686
  %bound0694 = icmp ult ptr %scevgep, %scevgep676
  %bound1695 = icmp ult ptr %3, %scevgep665
  %found.conflict696 = and i1 %bound0694, %bound1695
  %n.vec702 = and i64 %i.uk, 8589934588           ; 2 uses
  %i.vu = and i64 %i.uk, 3
  %cmp.n719 = icmp eq i64 %n.vec702, %i.uk
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge512
  %indvar = phi i35 [ 0, %bb.ai ], [ %indvar.next, %._crit_edge512 ] ; 3 uses
  %indvars.iv551 = phi i64 [ 1, %bb.ai ], [ %indvars.iv.next552, %._crit_edge512 ] ; 2 uses
  %i.vv = mul i35 %i.vo, %indvar                  ; 2 uses
  %i.vw = add i35 %i.vn, %i.vv
  %i.vx = sext i35 %i.vw to i64                   ; 2 uses
  %scevgep668 = getelementptr i8, ptr %scevgep667, i64 %i.vx
  %scevgep670 = getelementptr i8, ptr %scevgep669, i64 %i.vx
  %i.vy = add i35 %i.vs, %i.vv
  %i.vz = sext i35 %i.vy to i64                   ; 2 uses
  %scevgep673 = getelementptr i8, ptr %scevgep672, i64 %i.vz
  %scevgep675 = getelementptr i8, ptr %scevgep674, i64 %i.vz
  %i.wa = mul i35 %i.ut, %indvar                  ; 2 uses
  %i.wb = add i35 %i.us, %i.wa                    ; 2 uses
  %i.wc = add i35 %i.uv, %i.wa                    ; 2 uses
  %i.wd = load double, ptr %i.ne, align 8, !tbaa !50
  %i.we = mul nsw i64 %indvars.iv551, %i.ng       ; 5 uses
  %gep603 = getelementptr [8 x i8], ptr %invariant.gep602, i64 %i.we ; 2 uses
  %i.wf = load double, ptr %gep603, align 8, !tbaa !50
  %i.wg = fdiv double %i.wf, %i.wd                ; 2 uses
  store double %i.wg, ptr %gep603, align 8, !tbaa !50
  br i1 %i.nf, label %bb.ak, label %._crit_edge512

bb.ak:                                            ; preds = %bb.aj
  %gep605 = getelementptr [8 x i8], ptr %invariant.gep604, i64 %i.we ; 2 uses
  %i.wh = load double, ptr %gep605, align 8, !tbaa !50
  %i.wi = load double, ptr %i.ug, align 8, !tbaa !50
  %i.wj = fneg double %i.wi
  %i.wk = tail call double @llvm.fmuladd.f64(double %i.wj, double %i.wg, double %i.wh)
  %i.wl = load double, ptr %i.uh, align 8, !tbaa !50
  %i.wm = fdiv double %i.wk, %i.wl
  store double %i.wm, ptr %gep605, align 8, !tbaa !50
  br i1 %i.uj, label %.lr.ph511, label %._crit_edge512

.lr.ph511:                                        ; preds = %bb.ak
  %i.wn = add i64 %i.we, 1                        ; 2 uses
  %i.wo = add i64 %i.we, 2                        ; 2 uses
  %invariant.gep600 = getelementptr [8 x i8], ptr %i.g, i64 %i.we ; 2 uses
  br i1 %min.iters.check700, label %scalar.ph699.preheader, label %vector.scevcheck663

vector.scevcheck663:                              ; preds = %.lr.ph511
  %i.wp = sub i35 %i.wb, %mul.result
  %i.wq = icmp sgt i35 %i.wp, %i.wb
  %i.wr = sub i35 %i.wc, %mul.result
  %i.ws = icmp sgt i35 %i.wr, %i.wc
  %i.wt = or i1 %i.ws, %mul.overflow
  %i.wu = or i1 %i.wq, %i.wt
  br i1 %i.wu, label %scalar.ph699.preheader, label %vector.memcheck664

vector.memcheck664:                               ; preds = %vector.scevcheck663
  %bound0680 = icmp ult ptr %scevgep, %scevgep670
  %bound1681 = icmp ult ptr %scevgep668, %scevgep665
  %found.conflict682 = and i1 %bound0680, %bound1681
  %conflict.rdx688.reass = or i1 %found.conflict682, %invariant.op833
  %bound0689 = icmp ult ptr %scevgep, %scevgep675
  %bound1690 = icmp ult ptr %scevgep673, %scevgep665
  %found.conflict691 = and i1 %bound0689, %bound1690
  %conflict.rdx693 = or i1 %conflict.rdx688.reass, %found.conflict691
  %conflict.rdx698 = or i1 %conflict.rdx693, %found.conflict696
  br i1 %conflict.rdx698, label %scalar.ph699.preheader, label %vector.body703

vector.body703:                                   ; preds = %vector.memcheck664, %vector.body703
  %index704 = phi i64 [ %index.next717, %vector.body703 ], [ 0, %vector.memcheck664 ] ; 2 uses
  %i.wv = sub i64 %i.uk, %index704                ; 6 uses
  %i.ww = getelementptr [8 x i8], ptr %invariant.gep600, i64 %i.wv
  %i.wx = getelementptr i8, ptr %i.ww, i64 -24    ; 2 uses
  %wide.load705 = load <4 x double>, ptr %i.wx, align 8, !tbaa !50, !alias.scope !67, !noalias !68
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.wv
  %i.wz = getelementptr inbounds i8, ptr %i.wy, i64 -24
  %wide.load706.a = load <4 x double>, ptr %i.wz, align 8, !tbaa !50, !alias.scope !69
  %i.xa = add i64 %i.wn, %i.wv
  %i.xb = shl i64 %i.xa, 32
  %i.xc = ashr exact i64 %i.xb, 29
  %i.xd = getelementptr inbounds i8, ptr %i.g, i64 %i.xc
  %i.xe = getelementptr inbounds i8, ptr %i.xd, i64 -24
  %wide.load707.a = load <4 x double>, ptr %i.xe, align 8, !tbaa !50, !alias.scope !70
  %i.xf = fneg <4 x double> %wide.load706.a
  %i.xg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.xf, <4 x double> %wide.load707.a, <4 x double> %wide.load705)
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.wv
  %i.xi = getelementptr inbounds i8, ptr %i.xh, i64 -24
  %wide.load710.a = load <4 x double>, ptr %i.xi, align 8, !tbaa !50, !alias.scope !71
  %i.xj = add i64 %i.wo, %i.wv
  %i.xk = shl i64 %i.xj, 32
  %i.xl = ashr exact i64 %i.xk, 29
  %i.xm = getelementptr inbounds i8, ptr %i.g, i64 %i.xl
  %i.xn = getelementptr inbounds i8, ptr %i.xm, i64 -24
  %wide.load711 = load <4 x double>, ptr %i.xn, align 8, !tbaa !50, !alias.scope !72
  %i.xo = fneg <4 x double> %wide.load710.a
  %i.xp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.xo, <4 x double> %wide.load711, <4 x double> %i.xg)
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.wv
  %i.xr = getelementptr inbounds i8, ptr %i.xq, i64 -24
  %wide.load714 = load <4 x double>, ptr %i.xr, align 8, !tbaa !50, !alias.scope !73
  %i.xs = fdiv <4 x double> %i.xp, %wide.load714
  store <4 x double> %i.xs, ptr %i.wx, align 8, !tbaa !50, !alias.scope !67, !noalias !68
  %index.next717 = add nuw i64 %index704, 4       ; 2 uses
  %i.xt = icmp eq i64 %index.next717, %n.vec702
  br i1 %i.xt, label %middle.block718, label %vector.body703, !llvm.loop !45

middle.block718:                                  ; preds = %vector.body703
  br i1 %cmp.n719, label %._crit_edge512, label %scalar.ph699.preheader

scalar.ph699.preheader:                           ; preds = %vector.memcheck664, %vector.scevcheck663, %.lr.ph511, %middle.block718
  %indvars.iv548.ph = phi i64 [ %i.uk, %vector.memcheck664 ], [ %i.uk, %vector.scevcheck663 ], [ %i.uk, %.lr.ph511 ], [ %i.vu, %middle.block718 ]
  br label %scalar.ph699

scalar.ph699:                                     ; preds = %scalar.ph699.preheader, %scalar.ph699
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %scalar.ph699 ], [ %indvars.iv548.ph, %scalar.ph699.preheader ] ; 8 uses
  %gep601 = getelementptr [8 x i8], ptr %invariant.gep600, i64 %indvars.iv548 ; 2 uses
  %i.xu = load double, ptr %gep601, align 8, !tbaa !50
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv548
  %i.xw = load double, ptr %i.xv, align 8, !tbaa !50
  %i.xx = add i64 %i.wn, %indvars.iv548
  %sext = shl i64 %i.xx, 32
  %i.xy = ashr exact i64 %sext, 29
  %i.xz = getelementptr inbounds i8, ptr %i.g, i64 %i.xy
  %i.ya = load double, ptr %i.xz, align 8, !tbaa !50
  %i.yb = fneg double %i.xw
  %i.yc = tail call double @llvm.fmuladd.f64(double %i.yb, double %i.ya, double %i.xu)
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv548
  %i.ye = load double, ptr %i.yd, align 8, !tbaa !50
  %i.yf = add i64 %i.wo, %indvars.iv548
  %sext569 = shl i64 %i.yf, 32
  %i.yg = ashr exact i64 %sext569, 29
  %i.yh = getelementptr inbounds i8, ptr %i.g, i64 %i.yg
  %i.yi = load double, ptr %i.yh, align 8, !tbaa !50
  %i.yj = fneg double %i.ye
  %i.yk = tail call double @llvm.fmuladd.f64(double %i.yj, double %i.yi, double %i.yc)
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv548
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !50
  %i.yn = fdiv double %i.yk, %i.ym
  store double %i.yn, ptr %gep601, align 8, !tbaa !50
  %indvars.iv.next549 = add nsw i64 %indvars.iv548, -1
  %i.yo = icmp samesign ugt i64 %indvars.iv548, 1
  br i1 %i.yo, label %scalar.ph699, label %._crit_edge512, !llvm.loop !46

._crit_edge512:                                   ; preds = %scalar.ph699, %middle.block718, %bb.aj, %bb.ak
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %exitcond555.not = icmp eq i64 %indvars.iv.next552, %wide.trip.count554
  %indvar.next = add i35 %indvar, 1
  br i1 %exitcond555.not, label %.loopexit, label %bb.aj, !llvm.loop !47

.loopexit:                                        ; preds = %._crit_edge512, %._crit_edge517, %scalar.ph765.1, %middle.block785.1, %bb.ah, %bb.ag, %bb.d, %bb.ad, %bb.ab, %bb.w, %bb.r, %bb.o, %bb.i, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !51}
!9 = distinct !{!9, !51}
!10 = distinct !{!10, !52}
!11 = distinct !{!11, !52}
!12 = distinct !{!12, !51}
!13 = distinct !{!13, !52}
!14 = distinct !{!14, !52}
!15 = distinct !{!15, !51}
!16 = distinct !{!16, i1 false, !"LVerDomain"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !51, !55, !56}
!20 = distinct !{!20, !51, !55, !56}
!21 = distinct !{!21, !52}
!22 = distinct !{!22, !51, !55}
!23 = distinct !{!23, i1 false, !"LVerDomain"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !51, !55, !56}
!27 = distinct !{!27, !52}
!28 = distinct !{!28, !51, !55}
!29 = distinct !{!29, i1 false, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !29}
!34 = distinct !{!34, !29}
!35 = distinct !{!35, !29}
!36 = distinct !{!36, !51, !55, !56}
!37 = distinct !{!37, !51, !55}
!38 = distinct !{!38, i1 false, !"LVerDomain"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = distinct !{!42, !38}
!43 = distinct !{!43, !38}
!44 = distinct !{!44, !38}
!45 = distinct !{!45, !51, !55, !56}
!46 = distinct !{!46, !51, !55}
!47 = distinct !{!47, !51}
!48 = !{!5, !5, i64 0}
!49 = !{!"double", !4, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!17}
!54 = !{!18}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!"branch_weights", i32 4, i32 12}
!58 = !{!24}
!59 = !{!25}
!60 = !{!30}
!61 = !{!35, !34, !33, !32, !31}
!62 = !{!35}
!63 = !{!34}
!64 = !{!33}
!65 = !{!32}
!66 = !{!31}
!67 = !{!39}
!68 = !{!44, !43, !42, !41, !40}
!69 = !{!44}
!70 = !{!43}
!71 = !{!42}
!72 = !{!41}
!73 = !{!40}
end_hunk_0
