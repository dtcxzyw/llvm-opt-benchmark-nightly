loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dlantp_:bb.a
  br i1 %found.conflict, label %.lr.ph428.preheader, label %vector.main.loop.iter.check769

vector.main.loop.iter.check769:                   ; preds = %vector.memcheck
  %min.iters.check770 = icmp ult i64 %indvar, 16
  br i1 %min.iters.check770, label %vec.epilog.ph791, label %vector.ph771

vector.ph771:                                     ; preds = %vector.main.loop.iter.check769
  %i.ma = and i64 %indvar, 12
  %n.vec772 = and i64 %indvar, -16                ; 5 uses
  %i.mb = or disjoint i64 %n.vec772, 1
  %i.mc = add i64 %n.vec772, %i.ly                ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.g, i64 %i.ly
  br label %vector.body773

vector.body773:                                   ; preds = %vector.body773, %vector.ph771
  %index774 = phi i64 [ 0, %vector.ph771 ], [ %index.next782, %vector.body773 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index774 ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.me = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.mf = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %wide.load = load <4 x double>, ptr %gep, align 8, !tbaa !9, !alias.scope !37 ; 3 uses
  %wide.load775 = load <4 x double>, ptr %i.md, align 8, !tbaa !9, !alias.scope !37 ; 3 uses
  %wide.load776 = load <4 x double>, ptr %i.me, align 8, !tbaa !9, !alias.scope !37 ; 3 uses
  %wide.load777 = load <4 x double>, ptr %i.mf, align 8, !tbaa !9, !alias.scope !37 ; 3 uses
  %i.mg = fcmp oge <4 x double> %wide.load, zeroinitializer
  %i.mh = fcmp oge <4 x double> %wide.load775, zeroinitializer
  %i.mi = fcmp oge <4 x double> %wide.load776, zeroinitializer
  %i.mj = fcmp oge <4 x double> %wide.load777, zeroinitializer
  %i.mk = fneg <4 x double> %wide.load
  %i.ml = fneg <4 x double> %wide.load775
  %i.mm = fneg <4 x double> %wide.load776
  %i.mn = fneg <4 x double> %wide.load777
  %i.mo = select <4 x i1> %i.mg, <4 x double> %wide.load, <4 x double> %i.mk
  %i.mp = select <4 x i1> %i.mh, <4 x double> %wide.load775, <4 x double> %i.ml
  %i.mq = select <4 x i1> %i.mi, <4 x double> %wide.load776, <4 x double> %i.mm
  %i.mr = select <4 x i1> %i.mj, <4 x double> %wide.load777, <4 x double> %i.mn
  %i.ms = getelementptr [8 x i8], ptr %5, i64 %index774 ; 5 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 32 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 64 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 96 ; 2 uses
  %wide.load778 = load <4 x double>, ptr %i.ms, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  %wide.load779 = load <4 x double>, ptr %i.mt, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  %wide.load780 = load <4 x double>, ptr %i.mu, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  %wide.load781 = load <4 x double>, ptr %i.mv, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  %i.mw = fadd <4 x double> %wide.load778, %i.mo
  %i.mx = fadd <4 x double> %wide.load779, %i.mp
  %i.my = fadd <4 x double> %wide.load780, %i.mq
  %i.mz = fadd <4 x double> %wide.load781, %i.mr
  store <4 x double> %i.mw, ptr %i.ms, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  store <4 x double> %i.mx, ptr %i.mt, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  store <4 x double> %i.my, ptr %i.mu, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  store <4 x double> %i.mz, ptr %i.mv, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  %index.next782 = add nuw i64 %index774, 16      ; 2 uses
  %i.na = icmp eq i64 %index.next782, %n.vec772
  br i1 %i.na, label %middle.block783, label %vector.body773, !llvm.loop !42

middle.block783:                                  ; preds = %vector.body773
  %cmp.n784 = icmp eq i64 %indvar, %n.vec772
  br i1 %cmp.n784, label %._crit_edge429.loopexit, label %vec.epilog.iter.check789

vec.epilog.iter.check789:                         ; preds = %middle.block783
  %min.epilog.iters.check790 = icmp eq i64 %i.ma, 0
  br i1 %min.epilog.iters.check790, label %.lr.ph428.preheader, label %vec.epilog.ph791, !prof !34

vec.epilog.ph791:                                 ; preds = %vector.main.loop.iter.check769, %vec.epilog.iter.check789
  %vec.epilog.resume.val785 = phi i64 [ %n.vec772, %vec.epilog.iter.check789 ], [ 0, %vector.main.loop.iter.check769 ]
  %n.vec792 = and i64 %indvar, -4                 ; 4 uses
  %i.nb = or disjoint i64 %n.vec792, 1
  %i.nc = add i64 %n.vec792, %i.ly                ; 2 uses
  %invariant.gep1019 = getelementptr [8 x i8], ptr %i.g, i64 %i.ly
  br label %vec.epilog.vector.body793

vec.epilog.vector.body793:                        ; preds = %vec.epilog.vector.body793, %vec.epilog.ph791
  %index794 = phi i64 [ %vec.epilog.resume.val785, %vec.epilog.ph791 ], [ %index.next797, %vec.epilog.vector.body793 ] ; 3 uses
  %gep1020 = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %index794
  %wide.load795 = load <4 x double>, ptr %gep1020, align 8, !tbaa !9, !alias.scope !37 ; 3 uses
  %i.nd = fcmp oge <4 x double> %wide.load795, zeroinitializer
  %i.ne = fneg <4 x double> %wide.load795
  %i.nf = select <4 x i1> %i.nd, <4 x double> %wide.load795, <4 x double> %i.ne
  %i.ng = getelementptr [8 x i8], ptr %5, i64 %index794 ; 2 uses
  %wide.load796 = load <4 x double>, ptr %i.ng, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  %i.nh = fadd <4 x double> %wide.load796, %i.nf
  store <4 x double> %i.nh, ptr %i.ng, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  %index.next797 = add nuw i64 %index794, 4       ; 2 uses
  %i.ni = icmp eq i64 %index.next797, %n.vec792
  br i1 %i.ni, label %vec.epilog.middle.block798, label %vec.epilog.vector.body793, !llvm.loop !43

vec.epilog.middle.block798:                       ; preds = %vec.epilog.vector.body793
  %cmp.n799 = icmp eq i64 %indvar, %n.vec792
  br i1 %cmp.n799, label %._crit_edge429.loopexit, label %.lr.ph428.preheader

.lr.ph428.preheader:                              ; preds = %vector.memcheck, %iter.check787, %vec.epilog.iter.check789, %vec.epilog.middle.block798
  %indvars.iv586.ph = phi i64 [ 1, %iter.check787 ], [ 1, %vector.memcheck ], [ %i.mb, %vec.epilog.iter.check789 ], [ %i.nb, %vec.epilog.middle.block798 ] ; 4 uses
  %indvars.iv584.ph = phi i64 [ %i.ly, %iter.check787 ], [ %i.ly, %vector.memcheck ], [ %i.mc, %vec.epilog.iter.check789 ], [ %i.nc, %vec.epilog.middle.block798 ] ; 2 uses
  %i.nj = sub i64 %indvars.iv593, %indvars.iv586.ph
  %i.nk = sub i64 %indvar, %indvars.iv586.ph
  %xtraiter = and i64 %i.nj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph428.prol.loopexit, label %.lr.ph428.prol

.lr.ph428.prol:                                   ; preds = %.lr.ph428.preheader, %.lr.ph428.prol
  %indvars.iv586.prol = phi i64 [ %indvars.iv.next587.prol, %.lr.ph428.prol ], [ %indvars.iv586.ph, %.lr.ph428.preheader ] ; 2 uses
  %indvars.iv584.prol = phi i64 [ %indvars.iv.next585.prol, %.lr.ph428.prol ], [ %indvars.iv584.ph, %.lr.ph428.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph428.prol ], [ 0, %.lr.ph428.preheader ]
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv584.prol
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !9 ; 3 uses
  %i.nn = fcmp oge double %i.nm, 0.000000e+00
  %i.no = fneg double %i.nm
  %i.np = select i1 %i.nn, double %i.nm, double %i.no
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv586.prol ; 2 uses
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !9
  %i.ns = fadd double %i.nr, %i.np
  store double %i.ns, ptr %i.nq, align 8, !tbaa !9
  %indvars.iv.next585.prol = add nsw i64 %indvars.iv584.prol, 1 ; 3 uses
  %indvars.iv.next587.prol = add nuw nsw i64 %indvars.iv586.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph428.prol.loopexit, label %.lr.ph428.prol, !llvm.loop !44

.lr.ph428.prol.loopexit:                          ; preds = %.lr.ph428.prol, %.lr.ph428.preheader
  %indvars.iv.next585.lcssa983.unr = phi i64 [ poison, %.lr.ph428.preheader ], [ %indvars.iv.next585.prol, %.lr.ph428.prol ]
  %indvars.iv586.unr = phi i64 [ %indvars.iv586.ph, %.lr.ph428.preheader ], [ %indvars.iv.next587.prol, %.lr.ph428.prol ]
  %indvars.iv584.unr = phi i64 [ %indvars.iv584.ph, %.lr.ph428.preheader ], [ %indvars.iv.next585.prol, %.lr.ph428.prol ]
  %i.nt = icmp ult i64 %i.nk, 3
  br i1 %i.nt, label %._crit_edge429.loopexit, label %.lr.ph428

.lr.ph428:                                        ; preds = %.lr.ph428.prol.loopexit, %.lr.ph428
  %indvars.iv586 = phi i64 [ %indvars.iv.next587.3, %.lr.ph428 ], [ %indvars.iv586.unr, %.lr.ph428.prol.loopexit ] ; 5 uses
  %indvars.iv584 = phi i64 [ %indvars.iv.next585.3, %.lr.ph428 ], [ %indvars.iv584.unr, %.lr.ph428.prol.loopexit ] ; 5 uses
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv584
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !9 ; 3 uses
  %i.nw = fcmp oge double %i.nv, 0.000000e+00
  %i.nx = fneg double %i.nv
  %i.ny = select i1 %i.nw, double %i.nv, double %i.nx
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv586 ; 2 uses
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !9
  %i.ob = fadd double %i.oa, %i.ny
  store double %i.ob, ptr %i.nz, align 8, !tbaa !9
  %i.oc = getelementptr [8 x i8], ptr %4, i64 %indvars.iv584
  %i.od = load double, ptr %i.oc, align 8, !tbaa !9 ; 3 uses
  %i.oe = fcmp oge double %i.od, 0.000000e+00
  %i.of = fneg double %i.od
  %i.og = select i1 %i.oe, double %i.od, double %i.of
  %i.oh = getelementptr [8 x i8], ptr %5, i64 %indvars.iv586 ; 2 uses
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !9
  %i.oj = fadd double %i.oi, %i.og
  store double %i.oj, ptr %i.oh, align 8, !tbaa !9
  %i.ok = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv584
  %i.ol = getelementptr i8, ptr %i.ok, i64 16
  %i.om = load double, ptr %i.ol, align 8, !tbaa !9 ; 3 uses
  %i.on = fcmp oge double %i.om, 0.000000e+00
  %i.oo = fneg double %i.om
  %i.op = select i1 %i.on, double %i.om, double %i.oo
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv586
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16 ; 2 uses
  %i.os = load double, ptr %i.or, align 8, !tbaa !9
  %i.ot = fadd double %i.os, %i.op
  store double %i.ot, ptr %i.or, align 8, !tbaa !9
  %i.ou = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv584
  %i.ov = getelementptr i8, ptr %i.ou, i64 24
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !9 ; 3 uses
  %i.ox = fcmp oge double %i.ow, 0.000000e+00
  %i.oy = fneg double %i.ow
  %i.oz = select i1 %i.ox, double %i.ow, double %i.oy
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv586
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 24 ; 2 uses
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !9
  %i.pd = fadd double %i.pc, %i.oz
  store double %i.pd, ptr %i.pb, align 8, !tbaa !9
  %indvars.iv.next585.3 = add nsw i64 %indvars.iv584, 4 ; 2 uses
  %indvars.iv.next587.3 = add nuw nsw i64 %indvars.iv586, 4 ; 2 uses
  %exitcond592.not.3 = icmp eq i64 %indvars.iv.next587.3, %indvars.iv593
  br i1 %exitcond592.not.3, label %._crit_edge429.loopexit, label %.lr.ph428, !llvm.loop !45

._crit_edge429.loopexit:                          ; preds = %.lr.ph428.prol.loopexit, %.lr.ph428, %vec.epilog.middle.block798, %middle.block783
  %indvars.iv.next585.lcssa = phi i64 [ %i.nc, %vec.epilog.middle.block798 ], [ %i.mc, %middle.block783 ], [ %indvars.iv.next585.lcssa983.unr, %.lr.ph428.prol.loopexit ], [ %indvars.iv.next585.3, %.lr.ph428 ]
  %i.pe = trunc nsw i64 %indvars.iv.next585.lcssa to i32
  br label %._crit_edge429

._crit_edge429:                                   ; preds = %._crit_edge429.loopexit, %.lr.ph434
  %.7242.lcssa = phi i32 [ %.6241433, %.lr.ph434 ], [ %i.pe, %._crit_edge429.loopexit ]
  %i.pf = add nsw i32 %.7242.lcssa, 1
  %indvars.iv.next594 = add nuw nsw i64 %indvars.iv593, 1 ; 2 uses
  %exitcond597.not = icmp eq i64 %indvars.iv.next594, %wide.trip.count596
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond597.not, label %.loopexit356, label %.lr.ph434, !llvm.loop !46

bb.ad:                                            ; preds = %bb.ab
  br i1 %.not292471, label %.loopexit356, label %.lr.ph448.preheader

.lr.ph448.preheader:                              ; preds = %bb.ad
  %i.pg = zext nneg i32 %i.lh to i64
  %i.ph = shl nuw nsw i64 %i.pg, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %i.ph, i1 false), !tbaa !9
  %i.pi = add nuw i32 %i.lh, 2
  %wide.trip.count615 = zext i32 %i.pi to i64
  %scevgep806 = getelementptr i8, ptr %4, i64 -8
  br label %iter.check833

iter.check833:                                    ; preds = %.lr.ph448.preheader, %.loopexit966
  %indvar803 = phi i64 [ 0, %.lr.ph448.preheader ], [ %indvar.next804, %.loopexit966 ] ; 3 uses
  %indvars.iv612 = phi i64 [ 2, %.lr.ph448.preheader ], [ %indvars.iv.next613, %.loopexit966 ] ; 3 uses
  %.8243447 = phi i64 [ 1, %.lr.ph448.preheader ], [ %indvars.iv.next602.lcssa, %.loopexit966 ] ; 7 uses
  %i.pj = add i64 %indvar803, 1                   ; 8 uses
  %min.iters.check813 = icmp ult i64 %i.pj, 4
  br i1 %min.iters.check813, label %vec.epilog.scalar.ph834.preheader, label %vector.memcheck802

vector.memcheck802:                               ; preds = %iter.check833
  %i.pk = shl nuw nsw i64 %indvar803, 3           ; 2 uses
  %scevgep808 = getelementptr i8, ptr %4, i64 %i.pk
  %i.pl = getelementptr i8, ptr %5, i64 %i.pk
  %scevgep805 = getelementptr i8, ptr %i.pl, i64 8
  %i.pm = shl i64 %.8243447, 3                    ; 2 uses
  %scevgep807 = getelementptr i8, ptr %scevgep806, i64 %i.pm
  %scevgep809 = getelementptr i8, ptr %scevgep808, i64 %i.pm
  %bound0810 = icmp ult ptr %5, %scevgep809
  %bound1811 = icmp ult ptr %scevgep807, %scevgep805
  %found.conflict812 = and i1 %bound0810, %bound1811
  br i1 %found.conflict812, label %vec.epilog.scalar.ph834.preheader, label %vector.main.loop.iter.check814

vector.main.loop.iter.check814:                   ; preds = %vector.memcheck802
  %min.iters.check815 = icmp ult i64 %i.pj, 16
  br i1 %min.iters.check815, label %vec.epilog.ph837, label %vector.ph816

vector.ph816:                                     ; preds = %vector.main.loop.iter.check814
  %i.pn = and i64 %i.pj, 12
  %n.vec817 = and i64 %i.pj, -16                  ; 5 uses
  %i.po = or disjoint i64 %n.vec817, 1
  %i.pp = add i64 %.8243447, %n.vec817            ; 2 uses
  %i.pq = getelementptr [8 x i8], ptr %i.g, i64 %.8243447
  br label %vector.body818

vector.body818:                                   ; preds = %vector.body818, %vector.ph816
  %index819 = phi i64 [ 0, %vector.ph816 ], [ %index.next828, %vector.body818 ] ; 3 uses
  %i.pr = getelementptr [8 x i8], ptr %i.pq, i64 %index819 ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 32
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 96
  %wide.load820 = load <4 x double>, ptr %i.pr, align 8, !tbaa !9, !alias.scope !47 ; 3 uses
  %wide.load821 = load <4 x double>, ptr %i.ps, align 8, !tbaa !9, !alias.scope !47 ; 3 uses
  %wide.load822 = load <4 x double>, ptr %i.pt, align 8, !tbaa !9, !alias.scope !47 ; 3 uses
  %wide.load823 = load <4 x double>, ptr %i.pu, align 8, !tbaa !9, !alias.scope !47 ; 3 uses
  %i.pv = fcmp oge <4 x double> %wide.load820, zeroinitializer
  %i.pw = fcmp oge <4 x double> %wide.load821, zeroinitializer
  %i.px = fcmp oge <4 x double> %wide.load822, zeroinitializer
  %i.py = fcmp oge <4 x double> %wide.load823, zeroinitializer
  %i.pz = fneg <4 x double> %wide.load820
  %i.qa = fneg <4 x double> %wide.load821
  %i.qb = fneg <4 x double> %wide.load822
  %i.qc = fneg <4 x double> %wide.load823
  %i.qd = select <4 x i1> %i.pv, <4 x double> %wide.load820, <4 x double> %i.pz
  %i.qe = select <4 x i1> %i.pw, <4 x double> %wide.load821, <4 x double> %i.qa
  %i.qf = select <4 x i1> %i.px, <4 x double> %wide.load822, <4 x double> %i.qb
  %i.qg = select <4 x i1> %i.py, <4 x double> %wide.load823, <4 x double> %i.qc
  %i.qh = getelementptr [8 x i8], ptr %5, i64 %index819 ; 5 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 32 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 64 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qh, i64 96 ; 2 uses
  %wide.load824 = load <4 x double>, ptr %i.qh, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  %wide.load825 = load <4 x double>, ptr %i.qi, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  %wide.load826 = load <4 x double>, ptr %i.qj, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  %wide.load827 = load <4 x double>, ptr %i.qk, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  %i.ql = fadd <4 x double> %wide.load824, %i.qd
  %i.qm = fadd <4 x double> %wide.load825, %i.qe
  %i.qn = fadd <4 x double> %wide.load826, %i.qf
  %i.qo = fadd <4 x double> %wide.load827, %i.qg
  store <4 x double> %i.ql, ptr %i.qh, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  store <4 x double> %i.qm, ptr %i.qi, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  store <4 x double> %i.qn, ptr %i.qj, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  store <4 x double> %i.qo, ptr %i.qk, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  %index.next828 = add nuw i64 %index819, 16      ; 2 uses
  %i.qp = icmp eq i64 %index.next828, %n.vec817
  br i1 %i.qp, label %middle.block829, label %vector.body818, !llvm.loop !52

middle.block829:                                  ; preds = %vector.body818
  %cmp.n830 = icmp eq i64 %i.pj, %n.vec817
  br i1 %cmp.n830, label %.loopexit966, label %vec.epilog.iter.check835

vec.epilog.iter.check835:                         ; preds = %middle.block829
  %min.epilog.iters.check836 = icmp eq i64 %i.pn, 0
  br i1 %min.epilog.iters.check836, label %vec.epilog.scalar.ph834.preheader, label %vec.epilog.ph837, !prof !34

vec.epilog.ph837:                                 ; preds = %vector.main.loop.iter.check814, %vec.epilog.iter.check835
  %vec.epilog.resume.val831 = phi i64 [ %n.vec817, %vec.epilog.iter.check835 ], [ 0, %vector.main.loop.iter.check814 ]
  %n.vec838 = and i64 %i.pj, -4                   ; 4 uses
  %i.qq = or disjoint i64 %n.vec838, 1
  %i.qr = add i64 %.8243447, %n.vec838            ; 2 uses
  %i.qs = getelementptr [8 x i8], ptr %i.g, i64 %.8243447
  br label %vec.epilog.vector.body839

vec.epilog.vector.body839:                        ; preds = %vec.epilog.vector.body839, %vec.epilog.ph837
  %index840 = phi i64 [ %vec.epilog.resume.val831, %vec.epilog.ph837 ], [ %index.next843, %vec.epilog.vector.body839 ] ; 3 uses
  %i.qt = getelementptr [8 x i8], ptr %i.qs, i64 %index840
  %wide.load841 = load <4 x double>, ptr %i.qt, align 8, !tbaa !9, !alias.scope !47 ; 3 uses
  %i.qu = fcmp oge <4 x double> %wide.load841, zeroinitializer
  %i.qv = fneg <4 x double> %wide.load841
  %i.qw = select <4 x i1> %i.qu, <4 x double> %wide.load841, <4 x double> %i.qv
  %i.qx = getelementptr [8 x i8], ptr %5, i64 %index840 ; 2 uses
  %wide.load842 = load <4 x double>, ptr %i.qx, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  %i.qy = fadd <4 x double> %wide.load842, %i.qw
  store <4 x double> %i.qy, ptr %i.qx, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  %index.next843 = add nuw i64 %index840, 4       ; 2 uses
  %i.qz = icmp eq i64 %index.next843, %n.vec838
  br i1 %i.qz, label %vec.epilog.middle.block844, label %vec.epilog.vector.body839, !llvm.loop !53

vec.epilog.middle.block844:                       ; preds = %vec.epilog.vector.body839
  %cmp.n845 = icmp eq i64 %i.pj, %n.vec838
  br i1 %cmp.n845, label %.loopexit966, label %vec.epilog.scalar.ph834.preheader

vec.epilog.scalar.ph834.preheader:                ; preds = %vector.memcheck802, %iter.check833, %vec.epilog.iter.check835, %vec.epilog.middle.block844
  %indvars.iv603.ph = phi i64 [ 1, %iter.check833 ], [ 1, %vector.memcheck802 ], [ %i.po, %vec.epilog.iter.check835 ], [ %i.qq, %vec.epilog.middle.block844 ] ; 4 uses
  %indvars.iv601.ph = phi i64 [ %.8243447, %iter.check833 ], [ %.8243447, %vector.memcheck802 ], [ %i.pp, %vec.epilog.iter.check835 ], [ %i.qr, %vec.epilog.middle.block844 ] ; 2 uses
  %i.ra = sub i64 %indvars.iv612, %indvars.iv603.ph
  %i.rb = sub i64 %i.pj, %indvars.iv603.ph
  %xtraiter988 = and i64 %i.ra, 3                 ; 2 uses
  %lcmp.mod989.not = icmp eq i64 %xtraiter988, 0
  br i1 %lcmp.mod989.not, label %vec.epilog.scalar.ph834.prol.loopexit, label %vec.epilog.scalar.ph834.prol

vec.epilog.scalar.ph834.prol:                     ; preds = %vec.epilog.scalar.ph834.preheader, %vec.epilog.scalar.ph834.prol
  %indvars.iv603.prol = phi i64 [ %indvars.iv.next604.prol, %vec.epilog.scalar.ph834.prol ], [ %indvars.iv603.ph, %vec.epilog.scalar.ph834.preheader ] ; 2 uses
  %indvars.iv601.prol = phi i64 [ %indvars.iv.next602.prol, %vec.epilog.scalar.ph834.prol ], [ %indvars.iv601.ph, %vec.epilog.scalar.ph834.preheader ] ; 2 uses
  %prol.iter990 = phi i64 [ %prol.iter990.next, %vec.epilog.scalar.ph834.prol ], [ 0, %vec.epilog.scalar.ph834.preheader ]
  %i.rc = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv601.prol
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !9 ; 3 uses
  %i.re = fcmp oge double %i.rd, 0.000000e+00
  %i.rf = fneg double %i.rd
  %i.rg = select i1 %i.re, double %i.rd, double %i.rf
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv603.prol ; 2 uses
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !9
  %i.rj = fadd double %i.ri, %i.rg
  store double %i.rj, ptr %i.rh, align 8, !tbaa !9
  %indvars.iv.next602.prol = add nsw i64 %indvars.iv601.prol, 1 ; 3 uses
  %indvars.iv.next604.prol = add nuw nsw i64 %indvars.iv603.prol, 1 ; 2 uses
  %prol.iter990.next = add i64 %prol.iter990, 1   ; 2 uses
  %prol.iter990.cmp.not = icmp eq i64 %prol.iter990.next, %xtraiter988
  br i1 %prol.iter990.cmp.not, label %vec.epilog.scalar.ph834.prol.loopexit, label %vec.epilog.scalar.ph834.prol, !llvm.loop !54

vec.epilog.scalar.ph834.prol.loopexit:            ; preds = %vec.epilog.scalar.ph834.prol, %vec.epilog.scalar.ph834.preheader
  %indvars.iv.next602.lcssa981.unr = phi i64 [ poison, %vec.epilog.scalar.ph834.preheader ], [ %indvars.iv.next602.prol, %vec.epilog.scalar.ph834.prol ]
  %indvars.iv603.unr = phi i64 [ %indvars.iv603.ph, %vec.epilog.scalar.ph834.preheader ], [ %indvars.iv.next604.prol, %vec.epilog.scalar.ph834.prol ]
  %indvars.iv601.unr = phi i64 [ %indvars.iv601.ph, %vec.epilog.scalar.ph834.preheader ], [ %indvars.iv.next602.prol, %vec.epilog.scalar.ph834.prol ]
  %i.rk = icmp ult i64 %i.rb, 3
  br i1 %i.rk, label %.loopexit966, label %vec.epilog.scalar.ph834

vec.epilog.scalar.ph834:                          ; preds = %vec.epilog.scalar.ph834.prol.loopexit, %vec.epilog.scalar.ph834
  %indvars.iv603 = phi i64 [ %indvars.iv.next604.3, %vec.epilog.scalar.ph834 ], [ %indvars.iv603.unr, %vec.epilog.scalar.ph834.prol.loopexit ] ; 5 uses
  %indvars.iv601 = phi i64 [ %indvars.iv.next602.3, %vec.epilog.scalar.ph834 ], [ %indvars.iv601.unr, %vec.epilog.scalar.ph834.prol.loopexit ] ; 5 uses
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv601
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !9 ; 3 uses
  %i.rn = fcmp oge double %i.rm, 0.000000e+00
  %i.ro = fneg double %i.rm
  %i.rp = select i1 %i.rn, double %i.rm, double %i.ro
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv603 ; 2 uses
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !9
  %i.rs = fadd double %i.rr, %i.rp
  store double %i.rs, ptr %i.rq, align 8, !tbaa !9
  %i.rt = getelementptr [8 x i8], ptr %4, i64 %indvars.iv601
  %i.ru = load double, ptr %i.rt, align 8, !tbaa !9 ; 3 uses
  %i.rv = fcmp oge double %i.ru, 0.000000e+00
  %i.rw = fneg double %i.ru
  %i.rx = select i1 %i.rv, double %i.ru, double %i.rw
  %i.ry = getelementptr [8 x i8], ptr %5, i64 %indvars.iv603 ; 2 uses
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !9
  %i.sa = fadd double %i.rz, %i.rx
  store double %i.sa, ptr %i.ry, align 8, !tbaa !9
  %i.sb = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv601
  %i.sc = getelementptr i8, ptr %i.sb, i64 16
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !9 ; 3 uses
  %i.se = fcmp oge double %i.sd, 0.000000e+00
  %i.sf = fneg double %i.sd
  %i.sg = select i1 %i.se, double %i.sd, double %i.sf
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv603
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 16 ; 2 uses
  %i.sj = load double, ptr %i.si, align 8, !tbaa !9
  %i.sk = fadd double %i.sj, %i.sg
  store double %i.sk, ptr %i.si, align 8, !tbaa !9
  %i.sl = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv601
  %i.sm = getelementptr i8, ptr %i.sl, i64 24
  %i.sn = load double, ptr %i.sm, align 8, !tbaa !9 ; 3 uses
  %i.so = fcmp oge double %i.sn, 0.000000e+00
  %i.sp = fneg double %i.sn
  %i.sq = select i1 %i.so, double %i.sn, double %i.sp
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv603
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 24 ; 2 uses
  %i.st = load double, ptr %i.ss, align 8, !tbaa !9
  %i.su = fadd double %i.st, %i.sq
  store double %i.su, ptr %i.ss, align 8, !tbaa !9
  %indvars.iv.next602.3 = add nsw i64 %indvars.iv601, 4 ; 2 uses
  %indvars.iv.next604.3 = add nuw nsw i64 %indvars.iv603, 4 ; 2 uses
  %exitcond611.not.3 = icmp eq i64 %indvars.iv.next604.3, %indvars.iv612
  br i1 %exitcond611.not.3, label %.loopexit966, label %vec.epilog.scalar.ph834, !llvm.loop !55

.loopexit966:                                     ; preds = %vec.epilog.scalar.ph834.prol.loopexit, %vec.epilog.scalar.ph834, %vec.epilog.middle.block844, %middle.block829
  %indvars.iv.next602.lcssa = phi i64 [ %i.qr, %vec.epilog.middle.block844 ], [ %i.pp, %middle.block829 ], [ %indvars.iv.next602.lcssa981.unr, %vec.epilog.scalar.ph834.prol.loopexit ], [ %indvars.iv.next602.3, %vec.epilog.scalar.ph834 ]
  %indvars.iv.next613 = add nuw nsw i64 %indvars.iv612, 1 ; 2 uses
  %exitcond616.not = icmp eq i64 %indvars.iv.next613, %wide.trip.count615
  %indvar.next804 = add i64 %indvar803, 1
  br i1 %exitcond616.not, label %.loopexit356, label %iter.check833, !llvm.loop !56

bb.ae:                                            ; preds = %bb.aa
  br i1 %.not291, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not292471, label %.loopexit356, label %iter.check859

iter.check859:                                    ; preds = %bb.af
  %i.sv = add nuw i32 %i.lh, 1
  %wide.trip.count620 = zext i32 %i.sv to i64
  %i.sw = zext nneg i32 %i.lh to i64              ; 7 uses
  %min.iters.check848 = icmp ult i32 %i.lh, 4
  br i1 %min.iters.check848, label %.lr.ph454.preheader, label %vector.main.loop.iter.check849

vector.main.loop.iter.check849:                   ; preds = %iter.check859
  %min.iters.check850 = icmp ult i32 %i.lh, 16
  br i1 %min.iters.check850, label %vec.epilog.ph863, label %vector.ph851

vector.ph851:                                     ; preds = %vector.main.loop.iter.check849
  %i.sx = and i64 %i.sw, 12
  %n.vec852 = and i64 %i.sw, 2147483632           ; 4 uses
  %i.sy = or disjoint i64 %n.vec852, 1
  br label %vector.body853

vector.body853:                                   ; preds = %vector.body853, %vector.ph851
  %index854 = phi i64 [ 0, %vector.ph851 ], [ %index.next855, %vector.body853 ] ; 2 uses
  %i.sz = getelementptr [8 x i8], ptr %5, i64 %index854 ; 4 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 32
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 64
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.sz, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.ta, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.tb, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.tc, align 8, !tbaa !9
  %index.next855 = add nuw i64 %index854, 16      ; 2 uses
  %i.td = icmp eq i64 %index.next855, %n.vec852
  br i1 %i.td, label %middle.block856, label %vector.body853, !llvm.loop !57

middle.block856:                                  ; preds = %vector.body853
  %cmp.n857 = icmp eq i64 %n.vec852, %i.sw
  br i1 %cmp.n857, label %.lr.ph468.preheader, label %vec.epilog.iter.check861

vec.epilog.iter.check861:                         ; preds = %middle.block856
  %min.epilog.iters.check862 = icmp eq i64 %i.sx, 0
  br i1 %min.epilog.iters.check862, label %.lr.ph454.preheader, label %vec.epilog.ph863, !prof !34

vec.epilog.ph863:                                 ; preds = %vector.main.loop.iter.check849, %vec.epilog.iter.check861
  %vec.epilog.resume.val858 = phi i64 [ %n.vec852, %vec.epilog.iter.check861 ], [ 0, %vector.main.loop.iter.check849 ]
  %n.vec864 = and i64 %i.sw, 2147483644           ; 3 uses
  %i.te = or disjoint i64 %n.vec864, 1
  br label %vec.epilog.vector.body865

vec.epilog.vector.body865:                        ; preds = %vec.epilog.vector.body865, %vec.epilog.ph863
  %index866 = phi i64 [ %vec.epilog.resume.val858, %vec.epilog.ph863 ], [ %index.next867, %vec.epilog.vector.body865 ] ; 2 uses
  %i.tf = getelementptr [8 x i8], ptr %5, i64 %index866
  store <4 x double> splat (double 1.000000e+00), ptr %i.tf, align 8, !tbaa !9
  %index.next867 = add nuw i64 %index866, 4       ; 2 uses
  %i.tg = icmp eq i64 %index.next867, %n.vec864
  br i1 %i.tg, label %vec.epilog.middle.block868, label %vec.epilog.vector.body865, !llvm.loop !58

vec.epilog.middle.block868:                       ; preds = %vec.epilog.vector.body865
  %cmp.n869 = icmp eq i64 %n.vec864, %i.sw
  br i1 %cmp.n869, label %.lr.ph468.preheader, label %.lr.ph454.preheader

.lr.ph454.preheader:                              ; preds = %iter.check859, %vec.epilog.iter.check861, %vec.epilog.middle.block868
  %indvars.iv617.ph = phi i64 [ 1, %iter.check859 ], [ %i.sy, %vec.epilog.iter.check861 ], [ %i.te, %vec.epilog.middle.block868 ]
  br label %.lr.ph454

.lr.ph468.preheader:                              ; preds = %.lr.ph454, %vec.epilog.middle.block868, %middle.block856
  %i.th = add nuw i32 %i.lh, 1
  %wide.trip.count634 = zext i32 %i.th to i64
  %wide.trip.count631 = zext nneg i32 %i.lh to i64 ; 3 uses
  %i.ti = shl nuw nsw i64 %wide.trip.count631, 3  ; 2 uses
  %scevgep875 = getelementptr i8, ptr %5, i64 %i.ti
  %scevgep876 = getelementptr i8, ptr %4, i64 -8
  %i.tj = add nsw i64 %i.ti, -16
  br label %.lr.ph468

.lr.ph454:                                        ; preds = %.lr.ph454.preheader, %.lr.ph454
  %indvars.iv617 = phi i64 [ %indvars.iv.next618, %.lr.ph454 ], [ %indvars.iv617.ph, %.lr.ph454.preheader ] ; 2 uses
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv617
  store double 1.000000e+00, ptr %i.tk, align 8, !tbaa !9
  %indvars.iv.next618 = add nuw nsw i64 %indvars.iv617, 1 ; 2 uses
  %exitcond621.not = icmp eq i64 %indvars.iv.next618, %wide.trip.count620
  br i1 %exitcond621.not, label %.lr.ph468.preheader, label %.lr.ph454, !llvm.loop !59

.lr.ph468:                                        ; preds = %.lr.ph468.preheader, %._crit_edge461
  %indvar872 = phi i64 [ 0, %.lr.ph468.preheader ], [ %indvar.next873, %._crit_edge461 ] ; 4 uses
  %indvars.iv624 = phi i64 [ 1, %.lr.ph468.preheader ], [ %indvars.iv.next625, %._crit_edge461 ] ; 8 uses
  %.10245467 = phi i32 [ 1, %.lr.ph468.preheader ], [ %.11246.lcssa, %._crit_edge461 ]
  %i.tl = xor i64 %indvar872, -1
  %i.tm = add i64 %i.tl, %wide.trip.count631      ; 7 uses
  %i.tn = shl nuw nsw i64 %indvar872, 3
  %i.to = getelementptr i8, ptr %5, i64 %i.tn
  %scevgep874 = getelementptr i8, ptr %i.to, i64 8
  %i.tp = shl i64 %indvar872, 3
  %i.tq = sub i64 %i.tj, %i.tp
  %scevgep878 = getelementptr i8, ptr %4, i64 %i.tq
  %indvars633 = trunc i64 %indvars.iv624 to i32
  %.11246455 = add i32 %.10245467, 1              ; 2 uses
  %.not299.not456 = icmp sgt i32 %i.lh, %indvars633
  br i1 %.not299.not456, label %iter.check903, label %._crit_edge461

iter.check903:                                    ; preds = %.lr.ph468
  %i.tr = sext i32 %.11246455 to i64              ; 7 uses
  %min.iters.check883 = icmp ult i64 %i.tm, 4
  br i1 %min.iters.check883, label %.lr.ph460.preheader, label %vector.memcheck871

vector.memcheck871:                               ; preds = %iter.check903
  %i.ts = shl nsw i64 %i.tr, 3                    ; 2 uses
  %scevgep877 = getelementptr i8, ptr %scevgep876, i64 %i.ts
  %scevgep879 = getelementptr i8, ptr %scevgep878, i64 %i.ts
  %bound0880 = icmp ult ptr %scevgep874, %scevgep879
  %bound1881 = icmp ult ptr %scevgep877, %scevgep875
  %found.conflict882 = and i1 %bound0880, %bound1881
  br i1 %found.conflict882, label %.lr.ph460.preheader, label %vector.main.loop.iter.check884
end_hunk_0
