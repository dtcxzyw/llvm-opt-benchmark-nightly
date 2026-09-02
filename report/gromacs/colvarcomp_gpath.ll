Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_gpath?download=true
inline.NumInlined: 3692
inline.NumDeleted: 904
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6colvar6gspath14prepareVectorsEv:bb.a
  %i.qv = load ptr, ptr %3, align 8, !tbaa !156   ; 3 uses
  %.not.i.i.i155 = icmp eq ptr %i.qv, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit156, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit154
  %i.qw = load ptr, ptr %i.or, align 8, !tbaa !166
  %i.qx = ptrtoint ptr %i.qw to i64
  %i.qy = ptrtoint ptr %i.qv to i64
  %i.qz = sub i64 %i.qx, %i.qy
  call void @_ZdlPvm(ptr noundef nonnull %i.qv, i64 noundef %i.qz) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit156

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit156: ; preds = %bb.t, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit154, %bb.m
  %.pn108.pn.pn = phi { ptr, i32 } [ %i.qc, %bb.m ], [ %.pn108.pn, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit154 ], [ %.pn108.pn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.y

bb.u:                                             ; preds = %._crit_edge458
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 2096
  invoke void @_ZN12colvarmodule8rotation21calc_optimal_rotationERKSt6vectorINS_7rvectorESaIS2_EES6_(ptr noundef nonnull align 8 dereferenceable(568) %i.ra, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %._crit_edge577 unwind label %bb.v

._crit_edge577:                                   ; preds = %bb.u
  %.pre572.pre = load ptr, ptr %2, align 8, !tbaa !156
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.rb = landingpad { ptr, i32 }
          cleanup
  %.pre573 = load ptr, ptr %2, align 8, !tbaa !156
  br label %bb.y

bb.w:                                             ; preds = %._crit_edge577, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit152
  %.pre572 = phi ptr [ %.pre572.pre, %._crit_edge577 ], [ %i.jz, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit152 ] ; 8 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.re = load <2 x double>, ptr %i.rc, align 8, !tbaa !145, !noalias !430 ; 9 uses
  %i.rf = shufflevector <2 x double> %i.re, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rg = extractelement <2 x double> %i.re, i64 1 ; 4 uses
  %i.rh = fmul double %i.rg, %i.rg
  %i.ri = extractelement <2 x double> %i.re, i64 0 ; 4 uses
  %i.rj = call double @llvm.fmuladd.f64(double %i.ri, double %i.ri, double %i.rh)
  %i.rk = load <2 x double>, ptr %i.rd, align 8, !tbaa !145, !noalias !430 ; 9 uses
  %i.rl = extractelement <2 x double> %i.rk, i64 0 ; 5 uses
  %i.rm = fneg double %i.rl                       ; 3 uses
  %i.rn = call double @llvm.fmuladd.f64(double %i.rm, double %i.rl, double %i.rj)
  %i.ro = extractelement <2 x double> %i.rk, i64 1 ; 5 uses
  %i.rp = fneg double %i.ro                       ; 3 uses
  %i.rq = call double @llvm.fmuladd.f64(double %i.rp, double %i.ro, double %i.rn) ; 2 uses
  %i.rr = fneg double %i.rg                       ; 2 uses
  %i.rs = fmul double %i.rg, %i.rr
  %i.rt = call double @llvm.fmuladd.f64(double %i.ri, double %i.ri, double %i.rs) ; 2 uses
  %i.ru = call double @llvm.fmuladd.f64(double %i.rl, double %i.rl, double %i.rt)
  %i.rv = call double @llvm.fmuladd.f64(double %i.rp, double %i.ro, double %i.ru) ; 2 uses
  %i.rw = call double @llvm.fmuladd.f64(double %i.rm, double %i.rl, double %i.rt)
  %i.rx = call double @llvm.fmuladd.f64(double %i.ro, double %i.ro, double %i.rw) ; 2 uses
  %i.ry = insertelement <2 x double> %i.rk, double %i.rr, i64 0
  %i.rz = fmul <2 x double> %i.re, %i.ry
  %i.sa = shufflevector <2 x double> %i.rz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.sb = shufflevector <2 x double> %i.re, <2 x double> %i.rk, <2 x i32> <i32 0, i32 2>
  %i.sc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sb, <2 x double> %i.rk, <2 x double> %i.sa)
  %i.sd = shufflevector <2 x double> %i.rk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.se = insertelement <2 x double> %i.sd, double %i.rp, i64 0
  %i.sf = fmul <2 x double> %i.re, %i.se
  %i.sg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rf, <2 x double> %i.rk, <2 x double> %i.sf) ; 2 uses
  %i.sh = extractelement <2 x double> %i.sg, i64 0
  %i.si = fmul double %i.sh, 2.000000e+00         ; 2 uses
  %i.sj = extractelement <2 x double> %i.sg, i64 1
  %i.sk = fmul double %i.sj, 2.000000e+00         ; 2 uses
  %i.sl = fmul <2 x double> %i.sc, splat (double 2.000000e+00) ; 3 uses
  %i.sm = shufflevector <2 x double> %i.rk, <2 x double> %i.re, <2 x i32> <i32 0, i32 2>
  %i.sn = insertelement <2 x double> %i.sd, double %i.rm, i64 1
  %i.so = fmul <2 x double> %i.sm, %i.sn
  %i.sp = shufflevector <2 x double> %i.re, <2 x double> %i.rk, <2 x i32> <i32 1, i32 3>
  %i.sq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.re, <2 x double> %i.sp, <2 x double> %i.so) ; 2 uses
  %i.sr = extractelement <2 x double> %i.sq, i64 1
  %i.ss = fmul double %i.sr, 2.000000e+00         ; 2 uses
  %i.st = extractelement <2 x double> %i.sq, i64 0
  %i.su = fmul double %i.st, 2.000000e+00         ; 2 uses
  %i.sv = load ptr, ptr %i.a, align 8, !tbaa !132
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 1144
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !139 ; 6 uses
  %.not496 = icmp eq i64 %i.sx, 0
  br i1 %.not496, label %._crit_edge486, label %.lr.ph485

.lr.ph485:                                        ; preds = %bb.w
  %i.sy = load ptr, ptr %1, align 8, !tbaa !156   ; 5 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !156 ; 5 uses
  %min.iters.check797 = icmp eq i64 %i.sx, 1
  br i1 %min.iters.check797, label %scalar.ph796.preheader, label %vector.memcheck785

vector.memcheck785:                               ; preds = %.lr.ph485
  %i.tb = mul i64 %i.sx, 24                       ; 3 uses
  %scevgep786 = getelementptr i8, ptr %i.ta, i64 %i.tb ; 2 uses
  %scevgep787 = getelementptr i8, ptr %i.sy, i64 %i.tb
  %scevgep788 = getelementptr i8, ptr %.pre572, i64 %i.tb
  %bound0789 = icmp ult ptr %i.ta, %scevgep787
  %bound1790 = icmp ult ptr %i.sy, %scevgep786
  %found.conflict791 = and i1 %bound0789, %bound1790
  %bound0792 = icmp ult ptr %i.ta, %scevgep788
  %bound1793 = icmp ult ptr %.pre572, %scevgep786
  %found.conflict794 = and i1 %bound0792, %bound1793
  %conflict.rdx795 = or i1 %found.conflict791, %found.conflict794
  br i1 %conflict.rdx795, label %scalar.ph796.preheader, label %vector.ph798

vector.ph798:                                     ; preds = %vector.memcheck785
  %n.vec799 = and i64 %i.sx, -2                   ; 3 uses
  %broadcast.splatinsert800 = insertelement <2 x double> poison, double %i.si, i64 0
  %broadcast.splat801 = shufflevector <2 x double> %broadcast.splatinsert800, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert802 = insertelement <2 x double> poison, double %i.rq, i64 0
  %broadcast.splat803 = shufflevector <2 x double> %broadcast.splatinsert802, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat805 = shufflevector <2 x double> %i.sl, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert806 = insertelement <2 x double> poison, double %i.rv, i64 0
  %broadcast.splat807 = shufflevector <2 x double> %broadcast.splatinsert806, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert808 = insertelement <2 x double> poison, double %i.sk, i64 0
  %broadcast.splat809 = shufflevector <2 x double> %broadcast.splatinsert808, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat811 = shufflevector <2 x double> %i.sl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert812 = insertelement <2 x double> poison, double %i.su, i64 0
  %broadcast.splat813 = shufflevector <2 x double> %broadcast.splatinsert812, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert814 = insertelement <2 x double> poison, double %i.ss, i64 0
  %broadcast.splat815 = shufflevector <2 x double> %broadcast.splatinsert814, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert816 = insertelement <2 x double> poison, double %i.rx, i64 0
  %broadcast.splat817 = shufflevector <2 x double> %broadcast.splatinsert816, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body818

vector.body818:                                   ; preds = %vector.body818, %vector.ph798
  %index819 = phi i64 [ 0, %vector.ph798 ], [ %index.next821, %vector.body818 ] ; 5 uses
  %i.tc = or disjoint i64 %index819, 1            ; 2 uses
  %i.td = getelementptr inbounds nuw [24 x i8], ptr %i.sy, i64 %index819 ; 3 uses
  %i.te = getelementptr inbounds nuw [24 x i8], ptr %i.sy, i64 %i.tc ; 3 uses
  %i.tf = load double, ptr %i.td, align 8, !tbaa !168, !alias.scope !431, !noalias !432
  %i.tg = load double, ptr %i.te, align 8, !tbaa !168, !alias.scope !431, !noalias !432
  %i.th = insertelement <2 x double> poison, double %i.tf, i64 0
  %i.ti = insertelement <2 x double> %i.th, double %i.tg, i64 1 ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tk = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.tl = load double, ptr %i.tj, align 8, !tbaa !169, !alias.scope !431, !noalias !432
  %i.tm = load double, ptr %i.tk, align 8, !tbaa !169, !alias.scope !431, !noalias !432
  %i.tn = insertelement <2 x double> poison, double %i.tl, i64 0
  %i.to = insertelement <2 x double> %i.tn, double %i.tm, i64 1 ; 3 uses
  %i.tp = fmul <2 x double> %broadcast.splat801, %i.to
  %i.tq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat803, <2 x double> %i.ti, <2 x double> %i.tp)
  %i.tr = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.ts = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  %i.tt = load double, ptr %i.tr, align 8, !tbaa !167, !alias.scope !431, !noalias !432
  %i.tu = load double, ptr %i.ts, align 8, !tbaa !167, !alias.scope !431, !noalias !432
  %i.tv = insertelement <2 x double> poison, double %i.tt, i64 0
  %i.tw = insertelement <2 x double> %i.tv, double %i.tu, i64 1 ; 3 uses
  %i.tx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat805, <2 x double> %i.tw, <2 x double> %i.tq)
  %i.ty = fmul <2 x double> %broadcast.splat807, %i.to
  %i.tz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat809, <2 x double> %i.ti, <2 x double> %i.ty)
  %i.ua = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat811, <2 x double> %i.tw, <2 x double> %i.tz)
  %i.ub = fmul <2 x double> %broadcast.splat813, %i.to
  %i.uc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat815, <2 x double> %i.ti, <2 x double> %i.ub)
  %i.ud = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat817, <2 x double> %i.tw, <2 x double> %i.uc)
  %i.ue = getelementptr inbounds nuw [24 x i8], ptr %.pre572, i64 %index819 ; 3 uses
  %i.uf = getelementptr inbounds nuw [24 x i8], ptr %.pre572, i64 %i.tc ; 3 uses
  %i.ug = load double, ptr %i.ue, align 8, !tbaa !168, !alias.scope !433, !noalias !434
  %i.uh = load double, ptr %i.uf, align 8, !tbaa !168, !alias.scope !433, !noalias !434
  %i.ui = insertelement <2 x double> poison, double %i.ug, i64 0
  %i.uj = insertelement <2 x double> %i.ui, double %i.uh, i64 1
  %i.uk = fsub <2 x double> %i.tx, %i.uj
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %i.um = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %i.un = load double, ptr %i.ul, align 8, !tbaa !169, !alias.scope !433, !noalias !434
  %i.uo = load double, ptr %i.um, align 8, !tbaa !169, !alias.scope !433, !noalias !434
  %i.up = insertelement <2 x double> poison, double %i.un, i64 0
  %i.uq = insertelement <2 x double> %i.up, double %i.uo, i64 1
  %i.ur = fsub <2 x double> %i.ua, %i.uq
  %i.us = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.uu = load double, ptr %i.us, align 8, !tbaa !167, !alias.scope !433, !noalias !434
  %i.uv = load double, ptr %i.ut, align 8, !tbaa !167, !alias.scope !433, !noalias !434
  %i.uw = insertelement <2 x double> poison, double %i.uu, i64 0
  %i.ux = insertelement <2 x double> %i.uw, double %i.uv, i64 1
  %i.uy = fsub <2 x double> %i.ud, %i.ux
  %i.uz = getelementptr inbounds nuw [24 x i8], ptr %i.ta, i64 %index819
  %i.va = shufflevector <2 x double> %i.uk, <2 x double> %i.ur, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vb = shufflevector <2 x double> %i.uy, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec820 = shufflevector <4 x double> %i.va, <4 x double> %i.vb, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec820, ptr %i.uz, align 8, !tbaa !145, !alias.scope !435, !noalias !436
  %index.next821 = add nuw i64 %index819, 2       ; 2 uses
  %i.vc = icmp eq i64 %index.next821, %n.vec799
  br i1 %i.vc, label %middle.block822, label %vector.body818, !llvm.loop !384

middle.block822:                                  ; preds = %vector.body818
  %cmp.n823 = icmp eq i64 %i.sx, %n.vec799
  br i1 %cmp.n823, label %._crit_edge486.thread, label %scalar.ph796.preheader

scalar.ph796.preheader:                           ; preds = %vector.memcheck785, %.lr.ph485, %middle.block822
  %.588483.ph = phi i64 [ 0, %vector.memcheck785 ], [ 0, %.lr.ph485 ], [ %n.vec799, %middle.block822 ]
  %i.vd = insertelement <2 x double> poison, double %i.si, i64 0
  %i.ve = insertelement <2 x double> %i.vd, double %i.rv, i64 1
  %i.vf = insertelement <2 x double> poison, double %i.rq, i64 0
  %i.vg = insertelement <2 x double> %i.vf, double %i.sk, i64 1
  br label %scalar.ph796

scalar.ph796:                                     ; preds = %scalar.ph796.preheader, %scalar.ph796
  %.588483 = phi i64 [ %i.vw, %scalar.ph796 ], [ %.588483.ph, %scalar.ph796.preheader ] ; 4 uses
  %i.vh = getelementptr inbounds nuw [24 x i8], ptr %i.sy, i64 %.588483 ; 2 uses
  %i.vi = getelementptr inbounds nuw [24 x i8], ptr %.pre572, i64 %.588483 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !167, !noalias !434
  %i.vl = getelementptr inbounds nuw [24 x i8], ptr %i.ta, i64 %.588483 ; 2 uses
  %9 = load <3 x double>, ptr %i.vh, align 8, !tbaa !145, !noalias !432 ; 5 uses
  %i.vm = load double, ptr %i.vh, align 8, !tbaa !168, !noalias !432
  %10 = shufflevector <3 x double> %9, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vn = fmul <2 x double> %i.ve, %10
  %i.vo = shufflevector <3 x double> %9, <3 x double> poison, <2 x i32> zeroinitializer
  %i.vp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vg, <2 x double> %i.vo, <2 x double> %i.vn)
  %11 = shufflevector <3 x double> %9, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %12 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sl, <2 x double> %11, <2 x double> %i.vp)
  %13 = extractelement <3 x double> %9, i64 1
  %i.vq = fmul double %i.su, %13
  %i.vr = call double @llvm.fmuladd.f64(double %i.ss, double %i.vm, double %i.vq)
  %14 = extractelement <3 x double> %9, i64 2
  %i.vs = call double @llvm.fmuladd.f64(double %i.rx, double %14, double %i.vr)
  %i.vt = load <2 x double>, ptr %i.vi, align 8, !tbaa !145, !noalias !434
  %i.vu = fsub <2 x double> %12, %i.vt
  %i.vv = fsub double %i.vs, %i.vk
  store <2 x double> %i.vu, ptr %i.vl, align 8, !tbaa !145
  %.sroa.6293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  store double %i.vv, ptr %.sroa.6293.0..sroa_idx, align 8, !tbaa !145
  %i.vw = add nuw i64 %.588483, 1                 ; 2 uses
  %exitcond532.not = icmp eq i64 %i.vw, %i.sx
  br i1 %exitcond532.not, label %._crit_edge486.thread, label %scalar.ph796, !llvm.loop !385

._crit_edge486:                                   ; preds = %bb.w
  %.not.i.i.i157 = icmp eq ptr %.pre572, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit158, label %._crit_edge486.thread

._crit_edge486.thread:                            ; preds = %scalar.ph796, %middle.block822, %._crit_edge486
  %i.vx = load ptr, ptr %i.kb, align 8, !tbaa !166
  %i.vy = ptrtoint ptr %i.vx to i64
  %i.vz = ptrtoint ptr %.pre572 to i64
  %i.wa = sub i64 %i.vy, %i.vz
  call void @_ZdlPvm(ptr noundef nonnull %.pre572, i64 noundef %i.wa) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit158

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit158: ; preds = %._crit_edge486, %._crit_edge486.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.wb = load ptr, ptr %1, align 8, !tbaa !156   ; 3 uses
  %.not.i.i.i159 = icmp eq ptr %i.wb, null
  br i1 %.not.i.i.i159, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit160, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit158
  %i.wc = load ptr, ptr %i.jm, align 8, !tbaa !166
  %i.wd = ptrtoint ptr %i.wc to i64
  %i.we = ptrtoint ptr %i.wb to i64
  %i.wf = sub i64 %i.wd, %i.we
  call void @_ZdlPvm(ptr noundef nonnull %i.wb, i64 noundef %i.wf) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit160

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit160: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit158, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.az

bb.y:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit156, %bb.v
  %i.wg = phi ptr [ %i.jz, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit156 ], [ %.pre573, %bb.v ] ; 3 uses
  %.pn114 = phi { ptr, i32 } [ %.pn108.pn.pn, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit156 ], [ %i.rb, %bb.v ] ; 2 uses
  %.not.i.i.i161 = icmp eq ptr %i.wg, null
  br i1 %.not.i.i.i161, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit162, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.wh = load ptr, ptr %i.kb, align 8, !tbaa !166
  %i.wi = ptrtoint ptr %i.wh to i64
  %i.wj = ptrtoint ptr %i.wg to i64
  %i.wk = sub i64 %i.wi, %i.wj
  call void @_ZdlPvm(ptr noundef nonnull %i.wg, i64 noundef %i.wk) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit162

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit162: ; preds = %bb.z, %bb.y, %bb.i
  %.pn114.pn = phi { ptr, i32 } [ %i.le, %bb.i ], [ %.pn114, %bb.y ], [ %.pn114, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.wl = load ptr, ptr %1, align 8, !tbaa !156   ; 3 uses
  %.not.i.i.i163 = icmp eq ptr %i.wl, null
  br i1 %.not.i.i.i163, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit164, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit162
  %i.wm = load ptr, ptr %i.jm, align 8, !tbaa !166
  %i.wn = ptrtoint ptr %i.wm to i64
  %i.wo = ptrtoint ptr %i.wl to i64
  %i.wp = sub i64 %i.wn, %i.wo
  call void @_ZdlPvm(ptr noundef nonnull %i.wl, i64 noundef %i.wp) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit164

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit164: ; preds = %bb.aa, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit162, %bb.h
  %.pn114.pn.pn = phi { ptr, i32 } [ %i.ld, %bb.h ], [ %.pn114.pn, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit162 ], [ %.pn114.pn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.ba

bb.ab:                                            ; preds = %bb.ab, %.lr.ph399.new
  %.689398 = phi i64 [ 0, %.lr.ph399.new ], [ %i.xw, %bb.ab ] ; 4 uses
  %i.wq = phi <6 x double> [ zeroinitializer, %.lr.ph399.new ], [ %i.xv, %bb.ab ]
  %niter = phi i64 [ 0, %.lr.ph399.new ], [ %niter.next.1, %bb.ab ]
  %i.wr = getelementptr inbounds nuw [24 x i8], ptr %i.fq, i64 %.689398 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wt = load double, ptr %i.ws, align 8, !tbaa !167
  %i.wu = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %.689398 ; 2 uses
  %i.wv = load <2 x double>, ptr %i.wr, align 8, !tbaa !145
  %i.ww = load <2 x double>, ptr %i.wu, align 8, !tbaa !145
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wu, i64 16
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !167
  %i.wz = insertelement <6 x double> poison, double %i.wt, i64 4
  %i.xa = insertelement <6 x double> %i.wz, double %i.wy, i64 5
  %i.xb = shufflevector <2 x double> %i.wv, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xc = shufflevector <6 x double> %i.xb, <6 x double> %i.xa, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 10, i32 11>
  %i.xd = shufflevector <2 x double> %i.ww, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xe = shufflevector <6 x double> %i.xc, <6 x double> %i.xd, <6 x i32> <i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.xf = fadd <6 x double> %i.wq, %i.xe
  %i.xg = or disjoint i64 %.689398, 1             ; 2 uses
  %i.xh = getelementptr inbounds nuw [24 x i8], ptr %i.fq, i64 %i.xg ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  %i.xj = load double, ptr %i.xi, align 8, !tbaa !167
  %i.xk = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %i.xg ; 2 uses
  %i.xl = load <2 x double>, ptr %i.xh, align 8, !tbaa !145
  %i.xm = load <2 x double>, ptr %i.xk, align 8, !tbaa !145
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %i.xo = load double, ptr %i.xn, align 8, !tbaa !167
  %i.xp = insertelement <6 x double> poison, double %i.xj, i64 4
  %i.xq = insertelement <6 x double> %i.xp, double %i.xo, i64 5
  %i.xr = shufflevector <2 x double> %i.xl, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xs = shufflevector <6 x double> %i.xr, <6 x double> %i.xq, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 10, i32 11>
  %i.xt = shufflevector <2 x double> %i.xm, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xu = shufflevector <6 x double> %i.xs, <6 x double> %i.xt, <6 x i32> <i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.xv = fadd <6 x double> %i.xf, %i.xu          ; 3 uses
  %i.xw = add nuw i64 %.689398, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge400.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !386

._crit_edge400.loopexit.unr-lcssa:                ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge400, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge400.loopexit.unr-lcssa, %.lr.ph399
  %.689398.epil.init = phi i64 [ 0, %.lr.ph399 ], [ %i.xw, %._crit_edge400.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi <6 x double> [ zeroinitializer, %.lr.ph399 ], [ %i.xv, %._crit_edge400.loopexit.unr-lcssa ]
  %lcmp.mod829 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod829)
  %i.xx = getelementptr inbounds nuw [24 x i8], ptr %i.fq, i64 %.689398.epil.init ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !167
  %i.ya = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %.689398.epil.init ; 2 uses
  %i.yb = load <2 x double>, ptr %i.xx, align 8, !tbaa !145
  %i.yc = load <2 x double>, ptr %i.ya, align 8, !tbaa !145
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  %i.ye = load double, ptr %i.yd, align 8, !tbaa !167
  %i.yf = insertelement <6 x double> poison, double %i.xz, i64 4
  %i.yg = insertelement <6 x double> %i.yf, double %i.ye, i64 5
  %i.yh = shufflevector <2 x double> %i.yb, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yi = shufflevector <6 x double> %i.yh, <6 x double> %i.yg, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 10, i32 11>
  %i.yj = shufflevector <2 x double> %i.yc, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yk = shufflevector <6 x double> %i.yi, <6 x double> %i.yj, <6 x i32> <i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.yl = fadd <6 x double> %.epil.init, %i.yk
  br label %._crit_edge400

._crit_edge400:                                   ; preds = %.epil.preheader, %._crit_edge400.loopexit.unr-lcssa, %.preheader379.._crit_edge400_crit_edge
  %i.ym = phi ptr [ %.pre538, %.preheader379.._crit_edge400_crit_edge ], [ %i.fs, %._crit_edge400.loopexit.unr-lcssa ], [ %i.fs, %.epil.preheader ]
  %i.yn = phi ptr [ %.pre536, %.preheader379.._crit_edge400_crit_edge ], [ %i.fq, %._crit_edge400.loopexit.unr-lcssa ], [ %i.fq, %.epil.preheader ] ; 2 uses
  %i.yo = phi ptr [ %.pre534, %.preheader379.._crit_edge400_crit_edge ], [ %i.fo, %._crit_edge400.loopexit.unr-lcssa ], [ %i.fo, %.epil.preheader ] ; 2 uses
  %i.yp = phi i64 [ %.pre, %.preheader379.._crit_edge400_crit_edge ], [ %i.fn, %._crit_edge400.loopexit.unr-lcssa ], [ %i.fn, %.epil.preheader ]
  %i.yq = phi <6 x double> [ zeroinitializer, %.preheader379.._crit_edge400_crit_edge ], [ %i.xv, %._crit_edge400.loopexit.unr-lcssa ], [ %i.yl, %.epil.preheader ] ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 3 uses
  %i.yt = getelementptr inbounds nuw [24 x i8], ptr %i.yo, i64 %i.yp
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !165 ; 2 uses
  %i.yw = ptrtoint ptr %i.yn to i64
  %i.yx = shufflevector <6 x double> %i.yq, <6 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.yy = getelementptr inbounds nuw [24 x i8], ptr %i.yo, i64 %i.ff
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !165
  %i.zb = ptrtoint ptr %i.ym to i64
  %i.zc = ptrtoint ptr %i.za to i64
  %i.zd = ptrtoint ptr %i.yv to i64
  %i.ze = sub i64 %i.zc, %i.zb
  %i.zf = sub i64 %i.zd, %i.yw                    ; 4 uses
  %i.zg = sdiv exact i64 %i.ze, 24
  %i.zh = sdiv exact i64 %i.zf, 24                ; 2 uses
  %i.zi = insertelement <2 x i64> poison, i64 %i.zh, i64 0
  %i.zj = insertelement <2 x i64> %i.zi, i64 %i.zg, i64 1
  %i.zk = uitofp <2 x i64> %i.zj to <2 x double>  ; 3 uses
  %i.zl = shufflevector <2 x double> %i.zk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zm = fdiv <2 x double> %i.yx, %i.zl
  %i.zn = shufflevector <2 x double> %i.zk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.zo = shufflevector <6 x double> %i.yq, <6 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.zp = fdiv <2 x double> %i.zo, %i.zn
  %i.zq = shufflevector <6 x double> %i.yq, <6 x double> poison, <2 x i32> <i32 4, i32 5>
  %i.zr = fdiv <2 x double> %i.zq, %i.zk          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.zs = icmp ugt i64 %i.zh, 384307168202282325
  br i1 %i.zs, label %bb.ac, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i165

bb.ac:                                            ; preds = %._crit_edge400
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #31
          to label %.noexc172 unwind label %bb.af

.noexc172:                                        ; preds = %bb.ac
  unreachable

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i165: ; preds = %._crit_edge400
  store i64 0, ptr %5, align 8
  %.not.i.i.i.i166 = icmp eq ptr %i.yv, %i.yn
  br i1 %.not.i.i.i.i166, label %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i171, label %.lr.ph.preheader.i.i.i.i.i167

.lr.ph.preheader.i.i.i.i.i167:                    ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i165
  %i.zt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zf) #32
          to label %.noexc173 unwind label %bb.af ; 4 uses

.noexc173:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i167
  store ptr %i.zt, ptr %5, align 8, !tbaa !156
  %i.zu = getelementptr i8, ptr %i.zt, i64 %i.zf
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.zt, i8 0, i64 %i.zf, i1 false)
  %.pre539 = load i64, ptr %i.fe, align 8, !tbaa !170
  br label %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i171

_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i171: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i165, %.noexc173
  %i.zv = phi ptr [ %i.zt, %.noexc173 ], [ null, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i165 ]
end_hunk_0
begin_hunk_1_@_ZN6colvar6gspath14prepareVectorsEv:bb.a
  %.not.i.i.i211 = icmp eq ptr %i.ahh, null
  br i1 %.not.i.i.i211, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit212, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit210
  %i.ahi = load ptr, ptr %i.afd, align 8, !tbaa !166
  %i.ahj = ptrtoint ptr %i.ahi to i64
  %i.ahk = ptrtoint ptr %i.ahh to i64
  %i.ahl = sub i64 %i.ahj, %i.ahk
  call void @_ZdlPvm(ptr noundef nonnull %i.ahh, i64 noundef %i.ahl) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit212

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit212: ; preds = %bb.ar, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit210, %bb.ak
  %.pn96.pn.pn = phi { ptr, i32 } [ %i.ago, %bb.ak ], [ %.pn96.pn, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit210 ], [ %.pn96.pn, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.aw

bb.as:                                            ; preds = %._crit_edge410
  %i.ahm = getelementptr inbounds nuw i8, ptr %0, i64 2096
  invoke void @_ZN12colvarmodule8rotation21calc_optimal_rotationERKSt6vectorINS_7rvectorESaIS2_EES6_(ptr noundef nonnull align 8 dereferenceable(568) %i.ahm, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %._crit_edge574 unwind label %bb.at

._crit_edge574:                                   ; preds = %bb.as
  %.pre550.pre = load ptr, ptr %6, align 8, !tbaa !156
  br label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ahn = landingpad { ptr, i32 }
          cleanup
  %.pre551 = load ptr, ptr %6, align 8, !tbaa !156
  br label %bb.aw

bb.au:                                            ; preds = %._crit_edge574, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit208
  %.pre550 = phi ptr [ %.pre550.pre, %._crit_edge574 ], [ %i.aal, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit208 ] ; 8 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.ahp = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.ahq = load <2 x double>, ptr %i.aho, align 8, !tbaa !145, !noalias !441 ; 9 uses
  %i.ahr = shufflevector <2 x double> %i.ahq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ahs = extractelement <2 x double> %i.ahq, i64 1 ; 4 uses
  %i.aht = fmul double %i.ahs, %i.ahs
  %i.ahu = extractelement <2 x double> %i.ahq, i64 0 ; 4 uses
  %i.ahv = call double @llvm.fmuladd.f64(double %i.ahu, double %i.ahu, double %i.aht)
  %i.ahw = load <2 x double>, ptr %i.ahp, align 8, !tbaa !145, !noalias !441 ; 9 uses
  %i.ahx = extractelement <2 x double> %i.ahw, i64 0 ; 5 uses
  %i.ahy = fneg double %i.ahx                     ; 3 uses
  %i.ahz = call double @llvm.fmuladd.f64(double %i.ahy, double %i.ahx, double %i.ahv)
  %i.aia = extractelement <2 x double> %i.ahw, i64 1 ; 5 uses
  %i.aib = fneg double %i.aia                     ; 3 uses
  %i.aic = call double @llvm.fmuladd.f64(double %i.aib, double %i.aia, double %i.ahz) ; 2 uses
  %i.aid = fneg double %i.ahs                     ; 2 uses
  %i.aie = fmul double %i.ahs, %i.aid
  %i.aif = call double @llvm.fmuladd.f64(double %i.ahu, double %i.ahu, double %i.aie) ; 2 uses
  %i.aig = call double @llvm.fmuladd.f64(double %i.ahx, double %i.ahx, double %i.aif)
  %i.aih = call double @llvm.fmuladd.f64(double %i.aib, double %i.aia, double %i.aig) ; 2 uses
  %i.aii = call double @llvm.fmuladd.f64(double %i.ahy, double %i.ahx, double %i.aif)
  %i.aij = call double @llvm.fmuladd.f64(double %i.aia, double %i.aia, double %i.aii) ; 2 uses
  %i.aik = insertelement <2 x double> %i.ahw, double %i.aid, i64 0
  %i.ail = fmul <2 x double> %i.ahq, %i.aik
  %i.aim = shufflevector <2 x double> %i.ail, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ain = shufflevector <2 x double> %i.ahq, <2 x double> %i.ahw, <2 x i32> <i32 0, i32 2>
  %i.aio = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ain, <2 x double> %i.ahw, <2 x double> %i.aim)
  %i.aip = shufflevector <2 x double> %i.ahw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aiq = insertelement <2 x double> %i.aip, double %i.aib, i64 0
  %i.air = fmul <2 x double> %i.ahq, %i.aiq
  %i.ais = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahr, <2 x double> %i.ahw, <2 x double> %i.air) ; 2 uses
  %i.ait = extractelement <2 x double> %i.ais, i64 0
  %i.aiu = fmul double %i.ait, 2.000000e+00       ; 2 uses
  %i.aiv = extractelement <2 x double> %i.ais, i64 1
  %i.aiw = fmul double %i.aiv, 2.000000e+00       ; 2 uses
  %i.aix = fmul <2 x double> %i.aio, splat (double 2.000000e+00) ; 3 uses
  %i.aiy = shufflevector <2 x double> %i.ahw, <2 x double> %i.ahq, <2 x i32> <i32 0, i32 2>
  %i.aiz = insertelement <2 x double> %i.aip, double %i.ahy, i64 1
  %i.aja = fmul <2 x double> %i.aiy, %i.aiz
  %i.ajb = shufflevector <2 x double> %i.ahq, <2 x double> %i.ahw, <2 x i32> <i32 1, i32 3>
  %i.ajc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahq, <2 x double> %i.ajb, <2 x double> %i.aja) ; 2 uses
  %i.ajd = extractelement <2 x double> %i.ajc, i64 1
  %i.aje = fmul double %i.ajd, 2.000000e+00       ; 2 uses
  %i.ajf = extractelement <2 x double> %i.ajc, i64 0
  %i.ajg = fmul double %i.ajf, 2.000000e+00       ; 2 uses
  %i.ajh = load ptr, ptr %i.a, align 8, !tbaa !132
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 1144
  %i.ajj = load i64, ptr %i.aji, align 8, !tbaa !139 ; 6 uses
  %.not491 = icmp eq i64 %i.ajj, 0
  br i1 %.not491, label %._crit_edge438, label %.lr.ph437

.lr.ph437:                                        ; preds = %bb.au
  %i.ajk = load ptr, ptr %5, align 8, !tbaa !156  ; 5 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !156 ; 5 uses
  %min.iters.check759 = icmp eq i64 %i.ajj, 1
  br i1 %min.iters.check759, label %scalar.ph758.preheader, label %vector.memcheck747

vector.memcheck747:                               ; preds = %.lr.ph437
  %i.ajn = mul i64 %i.ajj, 24                     ; 3 uses
  %scevgep748 = getelementptr i8, ptr %i.ajm, i64 %i.ajn ; 2 uses
  %scevgep749 = getelementptr i8, ptr %i.ajk, i64 %i.ajn
  %scevgep750 = getelementptr i8, ptr %.pre550, i64 %i.ajn
  %bound0751 = icmp ult ptr %i.ajm, %scevgep749
  %bound1752 = icmp ult ptr %i.ajk, %scevgep748
  %found.conflict753 = and i1 %bound0751, %bound1752
  %bound0754 = icmp ult ptr %i.ajm, %scevgep750
  %bound1755 = icmp ult ptr %.pre550, %scevgep748
  %found.conflict756 = and i1 %bound0754, %bound1755
  %conflict.rdx757 = or i1 %found.conflict753, %found.conflict756
  br i1 %conflict.rdx757, label %scalar.ph758.preheader, label %vector.ph760

vector.ph760:                                     ; preds = %vector.memcheck747
  %n.vec761 = and i64 %i.ajj, -2                  ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aiu, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert762 = insertelement <2 x double> poison, double %i.aic, i64 0
  %broadcast.splat763 = shufflevector <2 x double> %broadcast.splatinsert762, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat765 = shufflevector <2 x double> %i.aix, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert766 = insertelement <2 x double> poison, double %i.aih, i64 0
  %broadcast.splat767 = shufflevector <2 x double> %broadcast.splatinsert766, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert768 = insertelement <2 x double> poison, double %i.aiw, i64 0
  %broadcast.splat769 = shufflevector <2 x double> %broadcast.splatinsert768, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat771 = shufflevector <2 x double> %i.aix, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert772 = insertelement <2 x double> poison, double %i.ajg, i64 0
  %broadcast.splat773 = shufflevector <2 x double> %broadcast.splatinsert772, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert774 = insertelement <2 x double> poison, double %i.aje, i64 0
  %broadcast.splat775 = shufflevector <2 x double> %broadcast.splatinsert774, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert776 = insertelement <2 x double> poison, double %i.aij, i64 0
  %broadcast.splat777 = shufflevector <2 x double> %broadcast.splatinsert776, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body778

vector.body778:                                   ; preds = %vector.body778, %vector.ph760
  %index779 = phi i64 [ 0, %vector.ph760 ], [ %index.next781, %vector.body778 ] ; 5 uses
  %i.ajo = or disjoint i64 %index779, 1           ; 2 uses
  %i.ajp = getelementptr inbounds nuw [24 x i8], ptr %.pre550, i64 %index779 ; 3 uses
  %i.ajq = getelementptr inbounds nuw [24 x i8], ptr %.pre550, i64 %i.ajo ; 3 uses
  %i.ajr = getelementptr inbounds nuw [24 x i8], ptr %i.ajk, i64 %index779 ; 3 uses
  %i.ajs = getelementptr inbounds nuw [24 x i8], ptr %i.ajk, i64 %i.ajo ; 3 uses
  %i.ajt = load double, ptr %i.ajr, align 8, !tbaa !168, !alias.scope !442, !noalias !443
  %i.aju = load double, ptr %i.ajs, align 8, !tbaa !168, !alias.scope !442, !noalias !443
  %i.ajv = insertelement <2 x double> poison, double %i.ajt, i64 0
  %i.ajw = insertelement <2 x double> %i.ajv, double %i.aju, i64 1 ; 3 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajs, i64 8
  %i.ajz = load double, ptr %i.ajx, align 8, !tbaa !169, !alias.scope !442, !noalias !443
  %i.aka = load double, ptr %i.ajy, align 8, !tbaa !169, !alias.scope !442, !noalias !443
  %i.akb = insertelement <2 x double> poison, double %i.ajz, i64 0
  %i.akc = insertelement <2 x double> %i.akb, double %i.aka, i64 1 ; 3 uses
  %i.akd = fmul <2 x double> %broadcast.splat, %i.akc
  %i.ake = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat763, <2 x double> %i.ajw, <2 x double> %i.akd)
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajr, i64 16
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajs, i64 16
  %i.akh = load double, ptr %i.akf, align 8, !tbaa !167, !alias.scope !442, !noalias !443
  %i.aki = load double, ptr %i.akg, align 8, !tbaa !167, !alias.scope !442, !noalias !443
  %i.akj = insertelement <2 x double> poison, double %i.akh, i64 0
  %i.akk = insertelement <2 x double> %i.akj, double %i.aki, i64 1 ; 3 uses
  %i.akl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat765, <2 x double> %i.akk, <2 x double> %i.ake)
  %i.akm = fmul <2 x double> %broadcast.splat767, %i.akc
  %i.akn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat769, <2 x double> %i.ajw, <2 x double> %i.akm)
  %i.ako = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat771, <2 x double> %i.akk, <2 x double> %i.akn)
  %i.akp = fmul <2 x double> %broadcast.splat773, %i.akc
  %i.akq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat775, <2 x double> %i.ajw, <2 x double> %i.akp)
  %i.akr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat777, <2 x double> %i.akk, <2 x double> %i.akq)
  %i.aks = load double, ptr %i.ajp, align 8, !tbaa !168, !alias.scope !444, !noalias !445
  %i.akt = load double, ptr %i.ajq, align 8, !tbaa !168, !alias.scope !444, !noalias !445
  %i.aku = insertelement <2 x double> poison, double %i.aks, i64 0
  %i.akv = insertelement <2 x double> %i.aku, double %i.akt, i64 1
  %i.akw = fsub <2 x double> %i.akv, %i.akl
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ajp, i64 8
  %i.aky = getelementptr inbounds nuw i8, ptr %i.ajq, i64 8
  %i.akz = load double, ptr %i.akx, align 8, !tbaa !169, !alias.scope !444, !noalias !445
  %i.ala = load double, ptr %i.aky, align 8, !tbaa !169, !alias.scope !444, !noalias !445
  %i.alb = insertelement <2 x double> poison, double %i.akz, i64 0
  %i.alc = insertelement <2 x double> %i.alb, double %i.ala, i64 1
  %i.ald = fsub <2 x double> %i.alc, %i.ako
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ajp, i64 16
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ajq, i64 16
  %i.alg = load double, ptr %i.ale, align 8, !tbaa !167, !alias.scope !444, !noalias !445
  %i.alh = load double, ptr %i.alf, align 8, !tbaa !167, !alias.scope !444, !noalias !445
  %i.ali = insertelement <2 x double> poison, double %i.alg, i64 0
  %i.alj = insertelement <2 x double> %i.ali, double %i.alh, i64 1
  %i.alk = fsub <2 x double> %i.alj, %i.akr
  %i.all = getelementptr inbounds nuw [24 x i8], ptr %i.ajm, i64 %index779
  %i.alm = shufflevector <2 x double> %i.akw, <2 x double> %i.ald, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aln = shufflevector <2 x double> %i.alk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec780 = shufflevector <4 x double> %i.alm, <4 x double> %i.aln, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec780, ptr %i.all, align 8, !tbaa !145, !alias.scope !446, !noalias !447
  %index.next781 = add nuw i64 %index779, 2       ; 2 uses
  %i.alo = icmp eq i64 %index.next781, %n.vec761
  br i1 %i.alo, label %middle.block782, label %vector.body778, !llvm.loop !410

middle.block782:                                  ; preds = %vector.body778
  %cmp.n783 = icmp eq i64 %i.ajj, %n.vec761
  br i1 %cmp.n783, label %._crit_edge438.thread, label %scalar.ph758.preheader

scalar.ph758.preheader:                           ; preds = %vector.memcheck747, %.lr.ph437, %middle.block782
  %.1093435.ph = phi i64 [ 0, %vector.memcheck747 ], [ 0, %.lr.ph437 ], [ %n.vec761, %middle.block782 ]
  %i.alp = insertelement <2 x double> poison, double %i.aiu, i64 0
  %i.alq = insertelement <2 x double> %i.alp, double %i.aih, i64 1
  %i.alr = insertelement <2 x double> poison, double %i.aic, i64 0
  %i.als = insertelement <2 x double> %i.alr, double %i.aiw, i64 1
  br label %scalar.ph758

scalar.ph758:                                     ; preds = %scalar.ph758.preheader, %scalar.ph758
  %.1093435 = phi i64 [ %i.ami, %scalar.ph758 ], [ %.1093435.ph, %scalar.ph758.preheader ] ; 4 uses
  %i.alt = getelementptr inbounds nuw [24 x i8], ptr %.pre550, i64 %.1093435 ; 2 uses
  %i.alu = getelementptr inbounds nuw [24 x i8], ptr %i.ajk, i64 %.1093435 ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alt, i64 16
  %i.alw = load double, ptr %i.alv, align 8, !tbaa !167, !noalias !445
  %i.alx = getelementptr inbounds nuw [24 x i8], ptr %i.ajm, i64 %.1093435 ; 2 uses
  %15 = load <3 x double>, ptr %i.alu, align 8, !tbaa !145, !noalias !443 ; 5 uses
  %i.aly = load double, ptr %i.alu, align 8, !tbaa !168, !noalias !443
  %16 = shufflevector <3 x double> %15, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.alz = fmul <2 x double> %i.alq, %16
  %i.ama = shufflevector <3 x double> %15, <3 x double> poison, <2 x i32> zeroinitializer
  %i.amb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.als, <2 x double> %i.ama, <2 x double> %i.alz)
  %17 = shufflevector <3 x double> %15, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %18 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aix, <2 x double> %17, <2 x double> %i.amb)
  %19 = extractelement <3 x double> %15, i64 1
  %i.amc = fmul double %i.ajg, %19
  %i.amd = call double @llvm.fmuladd.f64(double %i.aje, double %i.aly, double %i.amc)
  %20 = extractelement <3 x double> %15, i64 2
  %i.ame = call double @llvm.fmuladd.f64(double %i.aij, double %20, double %i.amd)
  %i.amf = load <2 x double>, ptr %i.alt, align 8, !tbaa !145, !noalias !445
  %i.amg = fsub <2 x double> %i.amf, %18
  %i.amh = fsub double %i.alw, %i.ame
  store <2 x double> %i.amg, ptr %i.alx, align 8, !tbaa !145
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alx, i64 16
  store double %i.amh, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !145
  %i.ami = add nuw i64 %.1093435, 1               ; 2 uses
  %exitcond525.not = icmp eq i64 %i.ami, %i.ajj
  br i1 %exitcond525.not, label %._crit_edge438.thread, label %scalar.ph758, !llvm.loop !411

._crit_edge438:                                   ; preds = %bb.au
  %.not.i.i.i213 = icmp eq ptr %.pre550, null
  br i1 %.not.i.i.i213, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit214, label %._crit_edge438.thread

._crit_edge438.thread:                            ; preds = %scalar.ph758, %middle.block782, %._crit_edge438
  %i.amj = load ptr, ptr %i.aan, align 8, !tbaa !166
  %i.amk = ptrtoint ptr %i.amj to i64
  %i.aml = ptrtoint ptr %.pre550 to i64
  %i.amm = sub i64 %i.amk, %i.aml
  call void @_ZdlPvm(ptr noundef nonnull %.pre550, i64 noundef %i.amm) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit214

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit214: ; preds = %._crit_edge438, %._crit_edge438.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.amn = load ptr, ptr %5, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i215 = icmp eq ptr %i.amn, null
  br i1 %.not.i.i.i215, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit216, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit214
  %i.amo = load ptr, ptr %i.zy, align 8, !tbaa !166
  %i.amp = ptrtoint ptr %i.amo to i64
  %i.amq = ptrtoint ptr %i.amn to i64
  %i.amr = sub i64 %i.amp, %i.amq
  call void @_ZdlPvm(ptr noundef nonnull %i.amn, i64 noundef %i.amr) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit216

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit216: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit214, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.az

bb.aw:                                            ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit212, %bb.at
  %i.ams = phi ptr [ %i.aal, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit212 ], [ %.pre551, %bb.at ] ; 3 uses
  %.pn102 = phi { ptr, i32 } [ %.pn96.pn.pn, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit212 ], [ %i.ahn, %bb.at ] ; 2 uses
  %.not.i.i.i217 = icmp eq ptr %i.ams, null
  br i1 %.not.i.i.i217, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit218, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.amt = load ptr, ptr %i.aan, align 8, !tbaa !166
  %i.amu = ptrtoint ptr %i.amt to i64
  %i.amv = ptrtoint ptr %i.ams to i64
  %i.amw = sub i64 %i.amu, %i.amv
  call void @_ZdlPvm(ptr noundef nonnull %i.ams, i64 noundef %i.amw) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit218

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit218: ; preds = %bb.ax, %bb.aw, %bb.ag
  %.pn102.pn = phi { ptr, i32 } [ %i.abq, %bb.ag ], [ %.pn102, %bb.aw ], [ %.pn102, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.amx = load ptr, ptr %5, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i219 = icmp eq ptr %i.amx, null
  br i1 %.not.i.i.i219, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit220, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit218
  %i.amy = load ptr, ptr %i.zy, align 8, !tbaa !166
  %i.amz = ptrtoint ptr %i.amy to i64
  %i.ana = ptrtoint ptr %i.amx to i64
  %i.anb = sub i64 %i.amz, %i.ana
  call void @_ZdlPvm(ptr noundef nonnull %i.amx, i64 noundef %i.anb) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit220

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit220: ; preds = %bb.ay, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit218, %bb.af
  %.pn102.pn.pn = phi { ptr, i32 } [ %i.abp, %bb.af ], [ %.pn102.pn, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit218 ], [ %.pn102.pn, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.ba

bb.az:                                            ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit216, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit160
  ret void

bb.ba:                                            ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit220, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit164
  %.pn114.pn.pn.pn = phi { ptr, i32 } [ %.pn114.pn.pn, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit164 ], [ %.pn102.pn.pn, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit220 ]
  resume { ptr, i32 } %.pn114.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar6gspath31updateDistanceToReferenceFramesEv(ptr noundef nonnull align 8 dereferenceable(2664) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1992
  %i.b = load ptr, ptr %0, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(1704) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar6gspathD1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTVN6colvar6gspathE, i64 16), ptr %i.a, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar6gspathE, i64 280), ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6colvar6gspathE, i64 344), ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1776
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.c) #29, !inline_history !27
  tail call void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %i.b) #29, !inline_history !27
  tail call void @_ZN6colvar18CartesianBasedPathD2Ev(ptr noundef nonnull align 8 dead_on_return(1704) dereferenceable(2664) %i.a) #29, !inline_history !27
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar6gspathD0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTVN6colvar6gspathE, i64 16), ptr %i.a, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar6gspathE, i64 280), ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6colvar6gspathE, i64 344), ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1776
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.c) #29, !inline_history !172
  tail call void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %i.b) #29, !inline_history !172
  tail call void @_ZN6colvar18CartesianBasedPathD2Ev(ptr noundef nonnull align 8 dead_on_return(1704) dereferenceable(2664) %i.a) #29, !inline_history !172
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(2664) %i.a, i64 noundef 2664) #30, !inline_history !173
  ret void
}

; Function Attrs: uwtable
define linkonce_odr noundef ptr @_ZThn320_NK6colvar3cvc8featuresEv(ptr noundef %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN6colvar3cvc12cvc_featuresE
}

; Function Attrs: uwtable
define linkonce_odr noundef ptr @_ZThn320_N6colvar3cvc15modify_featuresEv(ptr noundef %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN6colvar3cvc12cvc_featuresE
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN10colvardeps23do_feature_side_effectsEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
declare noundef i32 @_ZThn320_N6colvar3cvc17init_dependenciesEv(ptr noundef) unnamed_addr #5 align 2

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn1704_N6colvar6gspathD1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1704 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTVN6colvar6gspathE, i64 16), ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds i8, ptr %0, i64 -1384
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar6gspathE, i64 280), ptr %i.b, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6colvar6gspathE, i64 344), ptr %0, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.c) #29, !inline_history !27
  tail call void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %0) #29, !inline_history !27
  tail call void @_ZN6colvar18CartesianBasedPathD2Ev(ptr noundef nonnull align 8 dead_on_return(1704) dereferenceable(2664) %i.a) #29, !inline_history !27
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn1704_N6colvar6gspathD0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1704 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTVN6colvar6gspathE, i64 16), ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds i8, ptr %0, i64 -1384
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar6gspathE, i64 280), ptr %i.b, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6colvar6gspathE, i64 344), ptr %0, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.c) #29, !inline_history !172
  tail call void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %0) #29, !inline_history !172
  tail call void @_ZN6colvar18CartesianBasedPathD2Ev(ptr noundef nonnull align 8 dead_on_return(1704) dereferenceable(2664) %i.a) #29, !inline_history !172
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(2664) %i.a, i64 noundef 2664) #30, !inline_history !173
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE0EE10initializeEmRKS2_mbbb(ptr noundef nonnull align 8 dereferenceable(392) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.c, align 8, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !165  ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !156  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 3 uses
  %i.l = icmp ugt i64 %1, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw i64 %1, %i.k
  tail call void @_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.f, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE6resizeEmRKS1_.exit

bb.c:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN6colvar6gzpath14prepareVectorsEv:bb.a
  %op.rdx754 = or i1 %found.conflict674, %found.conflict678
  %op.rdx755 = or i1 %op.rdx752, %op.rdx753
  %op.rdx756 = or i1 %op.rdx754, %i.qq
  %op.rdx757 = or i1 %op.rdx755, %op.rdx756
  br i1 %op.rdx757, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.mq, -2                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.mb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert680 = insertelement <2 x double> poison, double %i.lj, i64 0
  %broadcast.splat681 = shufflevector <2 x double> %broadcast.splatinsert680, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat683 = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert684 = insertelement <2 x double> poison, double %i.lo, i64 0
  %broadcast.splat685 = shufflevector <2 x double> %broadcast.splatinsert684, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert686 = insertelement <2 x double> poison, double %i.md, i64 0
  %broadcast.splat687 = shufflevector <2 x double> %broadcast.splatinsert686, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat689 = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert690 = insertelement <2 x double> poison, double %i.mn, i64 0
  %broadcast.splat691 = shufflevector <2 x double> %broadcast.splatinsert690, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert692 = insertelement <2 x double> poison, double %i.ml, i64 0
  %broadcast.splat693 = shufflevector <2 x double> %broadcast.splatinsert692, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert694 = insertelement <2 x double> poison, double %i.lq, i64 0
  %broadcast.splat695 = shufflevector <2 x double> %broadcast.splatinsert694, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 11 uses
  %i.qt = or disjoint i64 %index, 1               ; 4 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %index ; 3 uses
  %wide.load = load <2 x double>, ptr %i.qu, align 8, !tbaa !145, !alias.scope !611
  %i.qv = getelementptr [8 x i8], ptr %i.qu, i64 %i.mz
  %wide.load696 = load <2 x double>, ptr %i.qv, align 8, !tbaa !145, !alias.scope !612
  %i.qw = getelementptr i8, ptr %i.qu, i64 %.idx.i
  %wide.load697 = load <2 x double>, ptr %i.qw, align 8, !tbaa !145, !alias.scope !613
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %index ; 3 uses
  %wide.load698 = load <2 x double>, ptr %i.qx, align 8, !tbaa !145, !alias.scope !614
  %i.qy = getelementptr [8 x i8], ptr %i.qx, i64 %i.ng
  %wide.load699 = load <2 x double>, ptr %i.qy, align 8, !tbaa !145, !alias.scope !615
  %i.qz = getelementptr i8, ptr %i.qx, i64 %.idx.i120
  %wide.load700 = load <2 x double>, ptr %i.qz, align 8, !tbaa !145, !alias.scope !616
  %i.ra = getelementptr inbounds nuw [24 x i8], ptr %i.nj, i64 %index ; 3 uses
  %i.rb = getelementptr inbounds nuw [24 x i8], ptr %i.nj, i64 %i.qt ; 3 uses
  %i.rc = load double, ptr %i.ra, align 8, !tbaa !168, !alias.scope !617, !noalias !618
  %i.rd = load double, ptr %i.rb, align 8, !tbaa !168, !alias.scope !617, !noalias !618
  %i.re = insertelement <2 x double> poison, double %i.rc, i64 0
  %i.rf = insertelement <2 x double> %i.re, double %i.rd, i64 1
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.ri = load double, ptr %i.rg, align 8, !tbaa !169, !alias.scope !617, !noalias !618
  %i.rj = load double, ptr %i.rh, align 8, !tbaa !169, !alias.scope !617, !noalias !618
  %i.rk = insertelement <2 x double> poison, double %i.ri, i64 0
  %i.rl = insertelement <2 x double> %i.rk, double %i.rj, i64 1
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  %i.ro = load double, ptr %i.rm, align 8, !tbaa !167, !alias.scope !617, !noalias !618
  %i.rp = load double, ptr %i.rn, align 8, !tbaa !167, !alias.scope !617, !noalias !618
  %i.rq = insertelement <2 x double> poison, double %i.ro, i64 0
  %i.rr = insertelement <2 x double> %i.rq, double %i.rp, i64 1
  %i.rs = fsub <2 x double> %i.rr, %wide.load697
  %i.rt = getelementptr inbounds nuw [24 x i8], ptr %i.nl, i64 %index
  %i.ru = shufflevector <2 x double> %i.rf, <2 x double> %i.rl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rv = shufflevector <2 x double> %wide.load, <2 x double> %wide.load696, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rw = fsub <4 x double> %i.ru, %i.rv
  %i.rx = shufflevector <2 x double> %i.rs, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.rw, <4 x double> %i.rx, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.rt, align 8, !tbaa !145, !alias.scope !619, !noalias !620
  %i.ry = getelementptr inbounds nuw [24 x i8], ptr %i.nn, i64 %index ; 3 uses
  %i.rz = getelementptr inbounds nuw [24 x i8], ptr %i.nn, i64 %i.qt ; 3 uses
  %i.sa = load double, ptr %i.ry, align 8, !tbaa !168, !alias.scope !621, !noalias !622
  %i.sb = load double, ptr %i.rz, align 8, !tbaa !168, !alias.scope !621, !noalias !622
  %i.sc = insertelement <2 x double> poison, double %i.sa, i64 0
  %i.sd = insertelement <2 x double> %i.sc, double %i.sb, i64 1
  %i.se = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sg = load double, ptr %i.se, align 8, !tbaa !169, !alias.scope !621, !noalias !622
  %i.sh = load double, ptr %i.sf, align 8, !tbaa !169, !alias.scope !621, !noalias !622
  %i.si = insertelement <2 x double> poison, double %i.sg, i64 0
  %i.sj = insertelement <2 x double> %i.si, double %i.sh, i64 1
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  %i.sm = load double, ptr %i.sk, align 8, !tbaa !167, !alias.scope !621, !noalias !622
  %i.sn = load double, ptr %i.sl, align 8, !tbaa !167, !alias.scope !621, !noalias !622
  %i.so = insertelement <2 x double> poison, double %i.sm, i64 0
  %i.sp = insertelement <2 x double> %i.so, double %i.sn, i64 1
  %i.sq = fsub <2 x double> %wide.load700, %i.sp
  %i.sr = getelementptr inbounds nuw [24 x i8], ptr %i.np, i64 %index
  %i.ss = shufflevector <2 x double> %wide.load698, <2 x double> %wide.load699, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.st = shufflevector <2 x double> %i.sd, <2 x double> %i.sj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.su = fsub <4 x double> %i.ss, %i.st
  %i.sv = shufflevector <2 x double> %i.sq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec701 = shufflevector <4 x double> %i.su, <4 x double> %i.sv, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec701, ptr %i.sr, align 8, !tbaa !145, !alias.scope !623, !noalias !624
  %i.sw = getelementptr inbounds nuw [24 x i8], ptr %i.nq, i64 %index ; 3 uses
  %i.sx = getelementptr inbounds nuw [24 x i8], ptr %i.nq, i64 %i.qt ; 3 uses
  %i.sy = load double, ptr %i.sw, align 8, !tbaa !168, !alias.scope !625, !noalias !626
  %i.sz = load double, ptr %i.sx, align 8, !tbaa !168, !alias.scope !625, !noalias !626
  %i.ta = insertelement <2 x double> poison, double %i.sy, i64 0
  %i.tb = insertelement <2 x double> %i.ta, double %i.sz, i64 1 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.td = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.te = load double, ptr %i.tc, align 8, !tbaa !169, !alias.scope !625, !noalias !626
  %i.tf = load double, ptr %i.td, align 8, !tbaa !169, !alias.scope !625, !noalias !626
  %i.tg = insertelement <2 x double> poison, double %i.te, i64 0
  %i.th = insertelement <2 x double> %i.tg, double %i.tf, i64 1 ; 3 uses
  %i.ti = fmul <2 x double> %broadcast.splat, %i.th
  %i.tj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat681, <2 x double> %i.tb, <2 x double> %i.ti)
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.tm = load double, ptr %i.tk, align 8, !tbaa !167, !alias.scope !625, !noalias !626
  %i.tn = load double, ptr %i.tl, align 8, !tbaa !167, !alias.scope !625, !noalias !626
  %i.to = insertelement <2 x double> poison, double %i.tm, i64 0
  %i.tp = insertelement <2 x double> %i.to, double %i.tn, i64 1 ; 3 uses
  %i.tq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat683, <2 x double> %i.tp, <2 x double> %i.tj)
  %i.tr = fmul <2 x double> %broadcast.splat685, %i.th
  %i.ts = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat687, <2 x double> %i.tb, <2 x double> %i.tr)
  %i.tt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat689, <2 x double> %i.tp, <2 x double> %i.ts)
  %i.tu = fmul <2 x double> %broadcast.splat691, %i.th
  %i.tv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat693, <2 x double> %i.tb, <2 x double> %i.tu)
  %i.tw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat695, <2 x double> %i.tp, <2 x double> %i.tv)
  %i.tx = getelementptr inbounds nuw [24 x i8], ptr %i.nr, i64 %index ; 3 uses
  %i.ty = getelementptr inbounds nuw [24 x i8], ptr %i.nr, i64 %i.qt ; 3 uses
  %i.tz = load double, ptr %i.tx, align 8, !tbaa !168, !alias.scope !627, !noalias !628
  %i.ua = load double, ptr %i.ty, align 8, !tbaa !168, !alias.scope !627, !noalias !628
  %i.ub = insertelement <2 x double> poison, double %i.tz, i64 0
  %i.uc = insertelement <2 x double> %i.ub, double %i.ua, i64 1
  %i.ud = fsub <2 x double> %i.tq, %i.uc
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.ug = load double, ptr %i.ue, align 8, !tbaa !169, !alias.scope !627, !noalias !628
  %i.uh = load double, ptr %i.uf, align 8, !tbaa !169, !alias.scope !627, !noalias !628
  %i.ui = insertelement <2 x double> poison, double %i.ug, i64 0
  %i.uj = insertelement <2 x double> %i.ui, double %i.uh, i64 1
  %i.uk = fsub <2 x double> %i.tt, %i.uj
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.um = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  %i.un = load double, ptr %i.ul, align 8, !tbaa !167, !alias.scope !627, !noalias !628
  %i.uo = load double, ptr %i.um, align 8, !tbaa !167, !alias.scope !627, !noalias !628
  %i.up = insertelement <2 x double> poison, double %i.un, i64 0
  %i.uq = insertelement <2 x double> %i.up, double %i.uo, i64 1
  %i.ur = fsub <2 x double> %i.tw, %i.uq
  %i.us = getelementptr inbounds nuw [24 x i8], ptr %i.nt, i64 %index
  %i.ut = shufflevector <2 x double> %i.ud, <2 x double> %i.uk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.uu = shufflevector <2 x double> %i.ur, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec702 = shufflevector <4 x double> %i.ut, <4 x double> %i.uu, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec702, ptr %i.us, align 8, !tbaa !145, !alias.scope !629, !noalias !630
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.uv = icmp eq i64 %index.next, %n.vec
  br i1 %i.uv, label %middle.block, label %vector.body, !llvm.loop !579

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mq, %n.vec
  br i1 %cmp.n, label %._crit_edge358, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph357, %middle.block
  %.476355.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph357 ], [ %n.vec, %middle.block ]
  %i.uw = insertelement <2 x double> poison, double %i.mb, i64 0
  %i.ux = insertelement <2 x double> %i.uw, double %i.lo, i64 1
  %i.uy = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.uz = insertelement <2 x double> %i.uy, double %i.md, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.476355 = phi i64 [ %i.wt, %scalar.ph ], [ %.476355.ph, %scalar.ph.preheader ] ; 10 uses
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %.476355 ; 3 uses
  %i.vb = load double, ptr %i.va, align 8, !tbaa !145
  %i.vc = getelementptr [8 x i8], ptr %i.va, i64 %i.mz
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !145
  %i.ve = getelementptr i8, ptr %i.va, i64 %.idx.i
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !145
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %.476355 ; 3 uses
  %i.vh = load double, ptr %i.vg, align 8, !tbaa !145
  %i.vi = getelementptr [8 x i8], ptr %i.vg, i64 %i.ng
  %i.vj = load double, ptr %i.vi, align 8, !tbaa !145
  %i.vk = getelementptr i8, ptr %i.vg, i64 %.idx.i120
  %i.vl = load double, ptr %i.vk, align 8, !tbaa !145
  %i.vm = getelementptr inbounds nuw [24 x i8], ptr %i.nj, i64 %.476355 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !167, !noalias !618
  %i.vp = fsub double %i.vo, %i.vf
  %i.vq = getelementptr inbounds nuw [24 x i8], ptr %i.nl, i64 %.476355 ; 2 uses
  %i.vr = load <2 x double>, ptr %i.vm, align 8, !tbaa !145, !noalias !618
  %i.vs = insertelement <2 x double> poison, double %i.vb, i64 0
  %i.vt = insertelement <2 x double> %i.vs, double %i.vd, i64 1
  %i.vu = fsub <2 x double> %i.vr, %i.vt
  store <2 x double> %i.vu, ptr %i.vq, align 8, !tbaa !145
  %.sroa.6229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vq, i64 16
  store double %i.vp, ptr %.sroa.6229.0..sroa_idx, align 8, !tbaa !145
  %i.vv = getelementptr inbounds nuw [24 x i8], ptr %i.nn, i64 %.476355 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !167, !noalias !622
  %i.vy = fsub double %i.vl, %i.vx
  %i.vz = getelementptr inbounds nuw [24 x i8], ptr %i.np, i64 %.476355 ; 2 uses
  %i.wa = load <2 x double>, ptr %i.vv, align 8, !tbaa !145, !noalias !622
  %i.wb = insertelement <2 x double> poison, double %i.vh, i64 0
  %i.wc = insertelement <2 x double> %i.wb, double %i.vj, i64 1
  %i.wd = fsub <2 x double> %i.wc, %i.wa
  store <2 x double> %i.wd, ptr %i.vz, align 8, !tbaa !145
  %.sroa.6226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  store double %i.vy, ptr %.sroa.6226.0..sroa_idx, align 8, !tbaa !145
  %i.we = getelementptr inbounds nuw [24 x i8], ptr %i.nq, i64 %.476355 ; 2 uses
  %i.wf = getelementptr inbounds nuw [24 x i8], ptr %i.nr, i64 %.476355 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !167, !noalias !628
  %i.wi = getelementptr inbounds nuw [24 x i8], ptr %i.nt, i64 %.476355 ; 2 uses
  %7 = load <3 x double>, ptr %i.we, align 8, !tbaa !145, !noalias !626 ; 5 uses
  %i.wj = load double, ptr %i.we, align 8, !tbaa !168, !noalias !626
  %8 = shufflevector <3 x double> %7, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wk = fmul <2 x double> %i.ux, %8
  %i.wl = shufflevector <3 x double> %7, <3 x double> poison, <2 x i32> zeroinitializer
  %i.wm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uz, <2 x double> %i.wl, <2 x double> %i.wk)
  %9 = shufflevector <3 x double> %7, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %10 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %9, <2 x double> %i.wm)
  %11 = extractelement <3 x double> %7, i64 1
  %i.wn = fmul double %i.mn, %11
  %i.wo = call double @llvm.fmuladd.f64(double %i.ml, double %i.wj, double %i.wn)
  %12 = extractelement <3 x double> %7, i64 2
  %i.wp = call double @llvm.fmuladd.f64(double %i.lq, double %12, double %i.wo)
  %i.wq = load <2 x double>, ptr %i.wf, align 8, !tbaa !145, !noalias !628
  %i.wr = fsub <2 x double> %10, %i.wq
  %i.ws = fsub double %i.wp, %i.wh
  store <2 x double> %i.wr, ptr %i.wi, align 8, !tbaa !145
  %.sroa.6223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  store double %i.ws, ptr %.sroa.6223.0..sroa_idx, align 8, !tbaa !145
  %i.wt = add nuw i64 %.476355, 1                 ; 2 uses
  %exitcond424.not = icmp eq i64 %i.wt, %i.mq
  br i1 %exitcond424.not, label %._crit_edge358, label %scalar.ph, !llvm.loop !580

bb.r:                                             ; preds = %bb.t
  %i.wu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

._crit_edge358:                                   ; preds = %scalar.ph, %middle.block, %bb.q
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 4 uses
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !187 ; 4 uses
  %i.wx = icmp slt i64 %i.ww, 0
  br i1 %i.wx, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge358
  %i.wy = uitofp nneg i64 %i.ww to double
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !188
  %i.xb = fcmp olt double %i.xa, %i.wy
  br i1 %i.xb, label %bb.t, label %.preheader307

.preheader307:                                    ; preds = %bb.s
  %.pre452 = load ptr, ptr %i.bo, align 8, !tbaa !141 ; 2 uses
  %.phi.trans.insert453 = getelementptr inbounds nuw [24 x i8], ptr %.pre452, i64 %i.ww
  %.pre454 = load ptr, ptr %.phi.trans.insert453, align 8, !tbaa !156 ; 7 uses
  br i1 %.not397, label %._crit_edge365, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %.preheader307
  %xtraiter773 = and i64 %i.mq, 3                 ; 3 uses
  %i.xc = icmp ult i64 %i.mq, 4
  br i1 %i.xc, label %.lr.ph364.epil.preheader, label %.lr.ph364.preheader.new

.lr.ph364.preheader.new:                          ; preds = %.lr.ph364.preheader
  %unroll_iter780 = and i64 %i.mq, -4
  br label %.lr.ph364

bb.t:                                             ; preds = %bb.s, %._crit_edge358
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.xf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.xe, ptr noundef nonnull align 8 dereferenceable(24) %i.xd)
          to label %bb.ak unwind label %bb.r      ; 0 uses

.lr.ph364:                                        ; preds = %.lr.ph364, %.lr.ph364.preheader.new
  %.577363 = phi i64 [ 0, %.lr.ph364.preheader.new ], [ %i.yi, %.lr.ph364 ] ; 5 uses
  %.sroa.14215.0362 = phi double [ 0.000000e+00, %.lr.ph364.preheader.new ], [ %i.yh, %.lr.ph364 ]
  %i.xg = phi <2 x double> [ zeroinitializer, %.lr.ph364.preheader.new ], [ %i.ye, %.lr.ph364 ]
  %niter781 = phi i64 [ 0, %.lr.ph364.preheader.new ], [ %niter781.next.3, %.lr.ph364 ]
  %i.xh = getelementptr inbounds nuw [24 x i8], ptr %.pre454, i64 %.577363 ; 2 uses
  %i.xi = load <2 x double>, ptr %i.xh, align 8, !tbaa !145
  %i.xj = fadd <2 x double> %i.xg, %i.xi
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !167
  %i.xm = fadd double %.sroa.14215.0362, %i.xl
  %i.xn = getelementptr inbounds nuw [24 x i8], ptr %.pre454, i64 %.577363 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  %i.xp = load <2 x double>, ptr %i.xo, align 8, !tbaa !145
  %i.xq = fadd <2 x double> %i.xj, %i.xp
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 40
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !167
  %i.xt = fadd double %i.xm, %i.xs
  %i.xu = getelementptr inbounds nuw [24 x i8], ptr %.pre454, i64 %.577363 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 48
  %i.xw = load <2 x double>, ptr %i.xv, align 8, !tbaa !145
  %i.xx = fadd <2 x double> %i.xq, %i.xw
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xu, i64 64
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !167
  %i.ya = fadd double %i.xt, %i.xz
  %i.yb = getelementptr inbounds nuw [24 x i8], ptr %.pre454, i64 %.577363 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 72
  %i.yd = load <2 x double>, ptr %i.yc, align 8, !tbaa !145
  %i.ye = fadd <2 x double> %i.xx, %i.yd          ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yb, i64 88
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !167
  %i.yh = fadd double %i.ya, %i.yg                ; 3 uses
  %i.yi = add nuw i64 %.577363, 4                 ; 2 uses
  %niter781.next.3 = add nuw i64 %niter781, 4     ; 2 uses
  %niter781.ncmp.3 = icmp eq i64 %niter781.next.3, %unroll_iter780
  br i1 %niter781.ncmp.3, label %._crit_edge365.loopexit.unr-lcssa, label %.lr.ph364, !llvm.loop !581

._crit_edge365.loopexit.unr-lcssa:                ; preds = %.lr.ph364
  %lcmp.mod776.not = icmp eq i64 %xtraiter773, 0
  br i1 %lcmp.mod776.not, label %._crit_edge365, label %.lr.ph364.epil.preheader

.lr.ph364.epil.preheader:                         ; preds = %._crit_edge365.loopexit.unr-lcssa, %.lr.ph364.preheader
  %.577363.epil.init = phi i64 [ 0, %.lr.ph364.preheader ], [ %i.yi, %._crit_edge365.loopexit.unr-lcssa ]
  %.sroa.14215.0362.epil.init = phi double [ 0.000000e+00, %.lr.ph364.preheader ], [ %i.yh, %._crit_edge365.loopexit.unr-lcssa ]
  %.epil.init775 = phi <2 x double> [ zeroinitializer, %.lr.ph364.preheader ], [ %i.ye, %._crit_edge365.loopexit.unr-lcssa ]
  %lcmp.mod779 = icmp ne i64 %xtraiter773, 0
  call void @llvm.assume(i1 %lcmp.mod779)
  br label %.lr.ph364.epil

.lr.ph364.epil:                                   ; preds = %.lr.ph364.epil, %.lr.ph364.epil.preheader
  %.577363.epil = phi i64 [ %i.yq, %.lr.ph364.epil ], [ %.577363.epil.init, %.lr.ph364.epil.preheader ] ; 2 uses
  %.sroa.14215.0362.epil = phi double [ %i.yp, %.lr.ph364.epil ], [ %.sroa.14215.0362.epil.init, %.lr.ph364.epil.preheader ]
  %i.yj = phi <2 x double> [ %i.ym, %.lr.ph364.epil ], [ %.epil.init775, %.lr.ph364.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph364.epil ], [ 0, %.lr.ph364.epil.preheader ]
  %i.yk = getelementptr inbounds nuw [24 x i8], ptr %.pre454, i64 %.577363.epil ; 2 uses
  %i.yl = load <2 x double>, ptr %i.yk, align 8, !tbaa !145
  %i.ym = fadd <2 x double> %i.yj, %i.yl          ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yk, i64 16
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !167
  %i.yp = fadd double %.sroa.14215.0362.epil, %i.yo ; 2 uses
  %i.yq = add nuw i64 %.577363.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter773
  br i1 %epil.iter.cmp.not, label %._crit_edge365, label %.lr.ph364.epil, !llvm.loop !582

._crit_edge365:                                   ; preds = %._crit_edge365.loopexit.unr-lcssa, %.lr.ph364.epil, %.preheader307
  %.sroa.14215.0.lcssa = phi double [ 0.000000e+00, %.preheader307 ], [ %i.yh, %._crit_edge365.loopexit.unr-lcssa ], [ %i.yp, %.lr.ph364.epil ]
  %i.yr = phi <2 x double> [ zeroinitializer, %.preheader307 ], [ %i.ye, %._crit_edge365.loopexit.unr-lcssa ], [ %i.ym, %.lr.ph364.epil ]
  %i.ys = getelementptr inbounds nuw [24 x i8], ptr %.pre452, i64 %i.ww
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !165 ; 2 uses
  %i.yv = ptrtoint ptr %i.yu to i64
  %i.yw = ptrtoint ptr %.pre454 to i64
  %i.yx = sub i64 %i.yv, %i.yw                    ; 4 uses
  %i.yy = sdiv exact i64 %i.yx, 24                ; 2 uses
  %i.yz = uitofp i64 %i.yy to double              ; 2 uses
  %i.za = insertelement <2 x double> poison, double %i.yz, i64 0
  %i.zb = shufflevector <2 x double> %i.za, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zc = fdiv <2 x double> %i.yr, %i.zb          ; 3 uses
  %i.zd = fdiv double %.sroa.14215.0.lcssa, %i.yz ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.ze = icmp ugt i64 %i.yy, 384307168202282325
  br i1 %i.ze, label %bb.u, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i121

bb.u:                                             ; preds = %._crit_edge365
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #31
          to label %.noexc128 unwind label %bb.w

.noexc128:                                        ; preds = %bb.u
  unreachable

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i121: ; preds = %._crit_edge365
  store i64 0, ptr %5, align 8
  %.not.i.i.i.i122 = icmp eq ptr %i.yu, %.pre454
  br i1 %.not.i.i.i.i122, label %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i127, label %.lr.ph.preheader.i.i.i.i.i123

.lr.ph.preheader.i.i.i.i.i123:                    ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i121
  %i.zf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yx) #32
          to label %.noexc129 unwind label %bb.w  ; 4 uses

.noexc129:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i123
  store ptr %i.zf, ptr %5, align 8, !tbaa !156
  %i.zg = getelementptr i8, ptr %i.zf, i64 %i.yx
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.zf, i8 0, i64 %i.yx, i1 false)
  %.pre455 = load ptr, ptr %i.a, align 8, !tbaa !132
  %.phi.trans.insert456 = getelementptr inbounds nuw i8, ptr %.pre455, i64 1144
  %.pre457 = load i64, ptr %.phi.trans.insert456, align 8, !tbaa !139
  br label %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i127

_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i127: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i121, %.noexc129
  %i.zh = phi ptr [ %i.zf, %.noexc129 ], [ null, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i121 ] ; 5 uses
  %i.zi = phi i64 [ %.pre457, %.noexc129 ], [ %i.mq, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i121 ] ; 5 uses
  %.sink.i125 = phi ptr [ %i.zg, %.noexc129 ], [ null, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i121 ] ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.zk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %.sink.i125, ptr %i.zk, align 8, !tbaa !166
  store ptr %.sink.i125, ptr %i.zj, align 8, !tbaa !165
  %.not399 = icmp eq i64 %i.zi, 0
  br i1 %.not399, label %._crit_edge372, label %.lr.ph371

.lr.ph371:                                        ; preds = %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i127
  %i.zl = load i64, ptr %i.wv, align 8, !tbaa !187
  %i.zm = load ptr, ptr %i.bo, align 8, !tbaa !141
  %i.zn = getelementptr inbounds nuw [24 x i8], ptr %i.zm, i64 %i.zl
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !156 ; 3 uses
  %xtraiter783 = and i64 %i.zi, 1
  %i.zp = icmp eq i64 %i.zi, 1
  br i1 %i.zp, label %.epil.preheader782, label %.lr.ph371.new

.lr.ph371.new:                                    ; preds = %.lr.ph371
  %unroll_iter787 = and i64 %i.zi, -2
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph371.new
  %.678369 = phi i64 [ 0, %.lr.ph371.new ], [ %i.aaf, %bb.v ] ; 4 uses
  %niter788 = phi i64 [ 0, %.lr.ph371.new ], [ %niter788.next.1, %bb.v ]
  %i.zq = getelementptr inbounds nuw [24 x i8], ptr %i.zo, i64 %.678369 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %i.zs = load double, ptr %i.zr, align 8, !tbaa !167, !noalias !631
  %i.zt = fsub double %i.zs, %i.zd
  %i.zu = getelementptr inbounds nuw [24 x i8], ptr %i.zh, i64 %.678369 ; 2 uses
  %i.zv = load <2 x double>, ptr %i.zq, align 8, !tbaa !145, !noalias !631
  %i.zw = fsub <2 x double> %i.zv, %i.zc
  store <2 x double> %i.zw, ptr %i.zu, align 8, !tbaa !145
  %.sroa.6204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zu, i64 16
  store double %i.zt, ptr %.sroa.6204.0..sroa_idx, align 8, !tbaa !145
  %i.zx = or disjoint i64 %.678369, 1             ; 2 uses
  %i.zy = getelementptr inbounds nuw [24 x i8], ptr %i.zo, i64 %i.zx ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  %i.aaa = load double, ptr %i.zz, align 8, !tbaa !167, !noalias !631
  %i.aab = fsub double %i.aaa, %i.zd
  %i.aac = getelementptr inbounds nuw [24 x i8], ptr %i.zh, i64 %i.zx ; 2 uses
  %i.aad = load <2 x double>, ptr %i.zy, align 8, !tbaa !145, !noalias !631
end_hunk_2
begin_hunk_3_@_ZN6colvar6gzpath14prepareVectorsEv:bb.a
  %.not.i.i.i141 = icmp eq ptr %i.aev, null
  br i1 %.not.i.i.i141, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit142, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aew = load ptr, ptr %i.adg, align 8, !tbaa !166
  %i.aex = ptrtoint ptr %i.aew to i64
  %i.aey = ptrtoint ptr %i.aev to i64
  %i.aez = sub i64 %i.aex, %i.aey
  call void @_ZdlPvm(ptr noundef nonnull %i.aev, i64 noundef %i.aez) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit142

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit142: ; preds = %bb.ae, %bb.ad, %bb.aa
  %.pn84.pn = phi { ptr, i32 } [ %i.aeg, %bb.aa ], [ %i.aeu, %bb.ad ], [ %i.aeu, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.ai

bb.af:                                            ; preds = %._crit_edge372
  %i.afa = getelementptr inbounds nuw i8, ptr %0, i64 2096
  invoke void @_ZN12colvarmodule8rotation21calc_optimal_rotationERKSt6vectorINS_7rvectorESaIS2_EES6_(ptr noundef nonnull align 8 dereferenceable(568) %i.afa, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %._crit_edge464 unwind label %bb.ag

._crit_edge464:                                   ; preds = %bb.af
  %.pre460.pre = load ptr, ptr %5, align 8, !tbaa !156
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.afb = landingpad { ptr, i32 }
          cleanup
  %.pre461 = load ptr, ptr %5, align 8, !tbaa !156
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge464, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit
  %.pre460 = phi ptr [ %.pre460.pre, %._crit_edge464 ], [ %i.zh, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit ] ; 8 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.afe = load <2 x double>, ptr %i.afc, align 8, !tbaa !145, !noalias !633 ; 9 uses
  %i.aff = shufflevector <2 x double> %i.afe, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.afg = extractelement <2 x double> %i.afe, i64 1 ; 4 uses
  %i.afh = fmul double %i.afg, %i.afg
  %i.afi = extractelement <2 x double> %i.afe, i64 0 ; 4 uses
  %i.afj = call double @llvm.fmuladd.f64(double %i.afi, double %i.afi, double %i.afh)
  %i.afk = load <2 x double>, ptr %i.afd, align 8, !tbaa !145, !noalias !633 ; 9 uses
  %i.afl = extractelement <2 x double> %i.afk, i64 0 ; 5 uses
  %i.afm = fneg double %i.afl                     ; 3 uses
  %i.afn = call double @llvm.fmuladd.f64(double %i.afm, double %i.afl, double %i.afj)
  %i.afo = extractelement <2 x double> %i.afk, i64 1 ; 5 uses
  %i.afp = fneg double %i.afo                     ; 3 uses
  %i.afq = call double @llvm.fmuladd.f64(double %i.afp, double %i.afo, double %i.afn) ; 2 uses
  %i.afr = fneg double %i.afg                     ; 2 uses
  %i.afs = fmul double %i.afg, %i.afr
  %i.aft = call double @llvm.fmuladd.f64(double %i.afi, double %i.afi, double %i.afs) ; 2 uses
  %i.afu = call double @llvm.fmuladd.f64(double %i.afl, double %i.afl, double %i.aft)
  %i.afv = call double @llvm.fmuladd.f64(double %i.afp, double %i.afo, double %i.afu) ; 2 uses
  %i.afw = call double @llvm.fmuladd.f64(double %i.afm, double %i.afl, double %i.aft)
  %i.afx = call double @llvm.fmuladd.f64(double %i.afo, double %i.afo, double %i.afw) ; 2 uses
  %i.afy = insertelement <2 x double> %i.afk, double %i.afr, i64 0
  %i.afz = fmul <2 x double> %i.afe, %i.afy
  %i.aga = shufflevector <2 x double> %i.afz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.agb = shufflevector <2 x double> %i.afe, <2 x double> %i.afk, <2 x i32> <i32 0, i32 2>
  %i.agc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agb, <2 x double> %i.afk, <2 x double> %i.aga)
  %i.agd = shufflevector <2 x double> %i.afk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.age = insertelement <2 x double> %i.agd, double %i.afp, i64 0
  %i.agf = fmul <2 x double> %i.afe, %i.age
  %i.agg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aff, <2 x double> %i.afk, <2 x double> %i.agf) ; 2 uses
  %i.agh = extractelement <2 x double> %i.agg, i64 0
  %i.agi = fmul double %i.agh, 2.000000e+00       ; 2 uses
  %i.agj = extractelement <2 x double> %i.agg, i64 1
  %i.agk = fmul double %i.agj, 2.000000e+00       ; 2 uses
  %i.agl = fmul <2 x double> %i.agc, splat (double 2.000000e+00) ; 3 uses
  %i.agm = shufflevector <2 x double> %i.afk, <2 x double> %i.afe, <2 x i32> <i32 0, i32 2>
  %i.agn = insertelement <2 x double> %i.agd, double %i.afm, i64 1
  %i.ago = fmul <2 x double> %i.agm, %i.agn
  %i.agp = shufflevector <2 x double> %i.afe, <2 x double> %i.afk, <2 x i32> <i32 1, i32 3>
  %i.agq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afe, <2 x double> %i.agp, <2 x double> %i.ago) ; 2 uses
  %i.agr = extractelement <2 x double> %i.agq, i64 1
  %i.ags = fmul double %i.agr, 2.000000e+00       ; 2 uses
  %i.agt = extractelement <2 x double> %i.agq, i64 0
  %i.agu = fmul double %i.agt, 2.000000e+00       ; 2 uses
  %i.agv = load ptr, ptr %i.a, align 8, !tbaa !132
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 1144
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !139 ; 6 uses
  %.not402 = icmp eq i64 %i.agx, 0
  br i1 %.not402, label %._crit_edge393, label %.lr.ph392

.lr.ph392:                                        ; preds = %bb.ah
  %i.agy = load ptr, ptr %1, align 8, !tbaa !156  ; 5 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !156 ; 5 uses
  %min.iters.check715 = icmp eq i64 %i.agx, 1
  br i1 %min.iters.check715, label %scalar.ph714.preheader, label %vector.memcheck703

vector.memcheck703:                               ; preds = %.lr.ph392
  %i.ahb = mul i64 %i.agx, 24                     ; 3 uses
  %scevgep704 = getelementptr i8, ptr %i.aha, i64 %i.ahb ; 2 uses
  %scevgep705 = getelementptr i8, ptr %i.agy, i64 %i.ahb
  %scevgep706 = getelementptr i8, ptr %.pre460, i64 %i.ahb
  %bound0707 = icmp ult ptr %i.aha, %scevgep705
  %bound1708 = icmp ult ptr %i.agy, %scevgep704
  %found.conflict709 = and i1 %bound0707, %bound1708
  %bound0710 = icmp ult ptr %i.aha, %scevgep706
  %bound1711 = icmp ult ptr %.pre460, %scevgep704
  %found.conflict712 = and i1 %bound0710, %bound1711
  %conflict.rdx713 = or i1 %found.conflict709, %found.conflict712
  br i1 %conflict.rdx713, label %scalar.ph714.preheader, label %vector.ph716

vector.ph716:                                     ; preds = %vector.memcheck703
  %n.vec717 = and i64 %i.agx, -2                  ; 3 uses
  %broadcast.splatinsert718 = insertelement <2 x double> poison, double %i.agi, i64 0
  %broadcast.splat719 = shufflevector <2 x double> %broadcast.splatinsert718, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert720 = insertelement <2 x double> poison, double %i.afq, i64 0
  %broadcast.splat721 = shufflevector <2 x double> %broadcast.splatinsert720, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat723 = shufflevector <2 x double> %i.agl, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert724 = insertelement <2 x double> poison, double %i.afv, i64 0
  %broadcast.splat725 = shufflevector <2 x double> %broadcast.splatinsert724, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert726 = insertelement <2 x double> poison, double %i.agk, i64 0
  %broadcast.splat727 = shufflevector <2 x double> %broadcast.splatinsert726, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat729 = shufflevector <2 x double> %i.agl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert730 = insertelement <2 x double> poison, double %i.agu, i64 0
  %broadcast.splat731 = shufflevector <2 x double> %broadcast.splatinsert730, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert732 = insertelement <2 x double> poison, double %i.ags, i64 0
  %broadcast.splat733 = shufflevector <2 x double> %broadcast.splatinsert732, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert734 = insertelement <2 x double> poison, double %i.afx, i64 0
  %broadcast.splat735 = shufflevector <2 x double> %broadcast.splatinsert734, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body736

vector.body736:                                   ; preds = %vector.body736, %vector.ph716
  %index737 = phi i64 [ 0, %vector.ph716 ], [ %index.next739, %vector.body736 ] ; 5 uses
  %i.ahc = or disjoint i64 %index737, 1           ; 2 uses
  %i.ahd = getelementptr inbounds nuw [24 x i8], ptr %.pre460, i64 %index737 ; 3 uses
  %i.ahe = getelementptr inbounds nuw [24 x i8], ptr %.pre460, i64 %i.ahc ; 3 uses
  %i.ahf = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %index737 ; 3 uses
  %i.ahg = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.ahc ; 3 uses
  %i.ahh = load double, ptr %i.ahf, align 8, !tbaa !168, !alias.scope !634, !noalias !635
  %i.ahi = load double, ptr %i.ahg, align 8, !tbaa !168, !alias.scope !634, !noalias !635
  %i.ahj = insertelement <2 x double> poison, double %i.ahh, i64 0
  %i.ahk = insertelement <2 x double> %i.ahj, double %i.ahi, i64 1 ; 3 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahg, i64 8
  %i.ahn = load double, ptr %i.ahl, align 8, !tbaa !169, !alias.scope !634, !noalias !635
  %i.aho = load double, ptr %i.ahm, align 8, !tbaa !169, !alias.scope !634, !noalias !635
  %i.ahp = insertelement <2 x double> poison, double %i.ahn, i64 0
  %i.ahq = insertelement <2 x double> %i.ahp, double %i.aho, i64 1 ; 3 uses
  %i.ahr = fmul <2 x double> %broadcast.splat719, %i.ahq
  %i.ahs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat721, <2 x double> %i.ahk, <2 x double> %i.ahr)
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahf, i64 16
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahg, i64 16
  %i.ahv = load double, ptr %i.aht, align 8, !tbaa !167, !alias.scope !634, !noalias !635
  %i.ahw = load double, ptr %i.ahu, align 8, !tbaa !167, !alias.scope !634, !noalias !635
  %i.ahx = insertelement <2 x double> poison, double %i.ahv, i64 0
  %i.ahy = insertelement <2 x double> %i.ahx, double %i.ahw, i64 1 ; 3 uses
  %i.ahz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat723, <2 x double> %i.ahy, <2 x double> %i.ahs)
  %i.aia = fmul <2 x double> %broadcast.splat725, %i.ahq
  %i.aib = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat727, <2 x double> %i.ahk, <2 x double> %i.aia)
  %i.aic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat729, <2 x double> %i.ahy, <2 x double> %i.aib)
  %i.aid = fmul <2 x double> %broadcast.splat731, %i.ahq
  %i.aie = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat733, <2 x double> %i.ahk, <2 x double> %i.aid)
  %i.aif = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat735, <2 x double> %i.ahy, <2 x double> %i.aie)
  %i.aig = load double, ptr %i.ahd, align 8, !tbaa !168, !alias.scope !636, !noalias !637
  %i.aih = load double, ptr %i.ahe, align 8, !tbaa !168, !alias.scope !636, !noalias !637
  %i.aii = insertelement <2 x double> poison, double %i.aig, i64 0
  %i.aij = insertelement <2 x double> %i.aii, double %i.aih, i64 1
  %i.aik = fsub <2 x double> %i.aij, %i.ahz
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8
  %i.ain = load double, ptr %i.ail, align 8, !tbaa !169, !alias.scope !636, !noalias !637
  %i.aio = load double, ptr %i.aim, align 8, !tbaa !169, !alias.scope !636, !noalias !637
  %i.aip = insertelement <2 x double> poison, double %i.ain, i64 0
  %i.aiq = insertelement <2 x double> %i.aip, double %i.aio, i64 1
  %i.air = fsub <2 x double> %i.aiq, %i.aic
  %i.ais = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ahe, i64 16
  %i.aiu = load double, ptr %i.ais, align 8, !tbaa !167, !alias.scope !636, !noalias !637
  %i.aiv = load double, ptr %i.ait, align 8, !tbaa !167, !alias.scope !636, !noalias !637
  %i.aiw = insertelement <2 x double> poison, double %i.aiu, i64 0
  %i.aix = insertelement <2 x double> %i.aiw, double %i.aiv, i64 1
  %i.aiy = fsub <2 x double> %i.aix, %i.aif
  %i.aiz = getelementptr inbounds nuw [24 x i8], ptr %i.aha, i64 %index737
  %i.aja = shufflevector <2 x double> %i.aik, <2 x double> %i.air, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ajb = shufflevector <2 x double> %i.aiy, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec738 = shufflevector <4 x double> %i.aja, <4 x double> %i.ajb, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec738, ptr %i.aiz, align 8, !tbaa !145, !alias.scope !638, !noalias !639
  %index.next739 = add nuw i64 %index737, 2       ; 2 uses
  %i.ajc = icmp eq i64 %index.next739, %n.vec717
  br i1 %i.ajc, label %middle.block740, label %vector.body736, !llvm.loop !603

middle.block740:                                  ; preds = %vector.body736
  %cmp.n741 = icmp eq i64 %i.agx, %n.vec717
  br i1 %cmp.n741, label %._crit_edge393.thread, label %scalar.ph714.preheader

scalar.ph714.preheader:                           ; preds = %vector.memcheck703, %.lr.ph392, %middle.block740
  %.981390.ph = phi i64 [ 0, %vector.memcheck703 ], [ 0, %.lr.ph392 ], [ %n.vec717, %middle.block740 ]
  %i.ajd = insertelement <2 x double> poison, double %i.agi, i64 0
  %i.aje = insertelement <2 x double> %i.ajd, double %i.afv, i64 1
  %i.ajf = insertelement <2 x double> poison, double %i.afq, i64 0
  %i.ajg = insertelement <2 x double> %i.ajf, double %i.agk, i64 1
  br label %scalar.ph714

scalar.ph714:                                     ; preds = %scalar.ph714.preheader, %scalar.ph714
  %.981390 = phi i64 [ %i.ajw, %scalar.ph714 ], [ %.981390.ph, %scalar.ph714.preheader ] ; 4 uses
  %i.ajh = getelementptr inbounds nuw [24 x i8], ptr %.pre460, i64 %.981390 ; 2 uses
  %i.aji = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %.981390 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16
  %i.ajk = load double, ptr %i.ajj, align 8, !tbaa !167, !noalias !637
  %i.ajl = getelementptr inbounds nuw [24 x i8], ptr %i.aha, i64 %.981390 ; 2 uses
  %13 = load <3 x double>, ptr %i.aji, align 8, !tbaa !145, !noalias !635 ; 5 uses
  %i.ajm = load double, ptr %i.aji, align 8, !tbaa !168, !noalias !635
  %14 = shufflevector <3 x double> %13, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ajn = fmul <2 x double> %i.aje, %14
  %i.ajo = shufflevector <3 x double> %13, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ajp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajg, <2 x double> %i.ajo, <2 x double> %i.ajn)
  %15 = shufflevector <3 x double> %13, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %16 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agl, <2 x double> %15, <2 x double> %i.ajp)
  %17 = extractelement <3 x double> %13, i64 1
  %i.ajq = fmul double %i.agu, %17
  %i.ajr = call double @llvm.fmuladd.f64(double %i.ags, double %i.ajm, double %i.ajq)
  %18 = extractelement <3 x double> %13, i64 2
  %i.ajs = call double @llvm.fmuladd.f64(double %i.afx, double %18, double %i.ajr)
  %i.ajt = load <2 x double>, ptr %i.ajh, align 8, !tbaa !145, !noalias !637
  %i.aju = fsub <2 x double> %i.ajt, %16
  %i.ajv = fsub double %i.ajk, %i.ajs
  store <2 x double> %i.aju, ptr %i.ajl, align 8, !tbaa !145
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajl, i64 16
  store double %i.ajv, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !145
  %i.ajw = add nuw i64 %.981390, 1                ; 2 uses
  %exitcond431.not = icmp eq i64 %i.ajw, %i.agx
  br i1 %exitcond431.not, label %._crit_edge393.thread, label %scalar.ph714, !llvm.loop !604

._crit_edge393:                                   ; preds = %bb.ah
  %.not.i.i.i143 = icmp eq ptr %.pre460, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit144, label %._crit_edge393.thread

._crit_edge393.thread:                            ; preds = %scalar.ph714, %middle.block740, %._crit_edge393
  %i.ajx = load ptr, ptr %i.zk, align 8, !tbaa !166
  %i.ajy = ptrtoint ptr %i.ajx to i64
  %i.ajz = ptrtoint ptr %.pre460 to i64
  %i.aka = sub i64 %i.ajy, %i.ajz
  call void @_ZdlPvm(ptr noundef nonnull %.pre460, i64 noundef %i.aka) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit144

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit144: ; preds = %._crit_edge393, %._crit_edge393.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.ak

bb.ai:                                            ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit142, %bb.ag
  %i.akb = phi ptr [ %i.zh, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit142 ], [ %.pre461, %bb.ag ] ; 3 uses
  %.pn88 = phi { ptr, i32 } [ %.pn84.pn, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit142 ], [ %i.afb, %bb.ag ] ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.akb, null
  br i1 %.not.i.i.i145, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit146, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.akc = load ptr, ptr %i.zk, align 8, !tbaa !166
  %i.akd = ptrtoint ptr %i.akc to i64
  %i.ake = ptrtoint ptr %i.akb to i64
  %i.akf = sub i64 %i.akd, %i.ake
  call void @_ZdlPvm(ptr noundef nonnull %i.akb, i64 noundef %i.akf) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit146

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit146: ; preds = %bb.aj, %bb.ai, %bb.w
  %.pn88.pn = phi { ptr, i32 } [ %i.aag, %bb.w ], [ %.pn88, %bb.ai ], [ %.pn88, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.ap

bb.ak:                                            ; preds = %bb.t, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit144
  %i.akg = load ptr, ptr %4, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i147 = icmp eq ptr %i.akg, null
  br i1 %.not.i.i.i147, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit148, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.akh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !166
  %i.akj = ptrtoint ptr %i.aki to i64
  %i.akk = ptrtoint ptr %i.akg to i64
  %i.akl = sub i64 %i.akj, %i.akk
  call void @_ZdlPvm(ptr noundef nonnull %i.akg, i64 noundef %i.akl) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit148

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit148: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.akm = load ptr, ptr %3, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i149 = icmp eq ptr %i.akm, null
  br i1 %.not.i.i.i149, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit150, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit148
  %i.akn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !166
  %i.akp = ptrtoint ptr %i.ako to i64
  %i.akq = ptrtoint ptr %i.akm to i64
  %i.akr = sub i64 %i.akp, %i.akq
  call void @_ZdlPvm(ptr noundef nonnull %i.akm, i64 noundef %i.akr) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit150

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit150: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit148, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.aks = load ptr, ptr %2, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i151 = icmp eq ptr %i.aks, null
  br i1 %.not.i.i.i151, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit152, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit150
  %i.akt = load ptr, ptr %i.dq, align 8, !tbaa !166
  %i.aku = ptrtoint ptr %i.akt to i64
  %i.akv = ptrtoint ptr %i.aks to i64
  %i.akw = sub i64 %i.aku, %i.akv
  call void @_ZdlPvm(ptr noundef nonnull %i.aks, i64 noundef %i.akw) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit152

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit152: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit150, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.akx = load ptr, ptr %1, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i153 = icmp eq ptr %i.akx, null
  br i1 %.not.i.i.i153, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit154, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit152
  %i.aky = load ptr, ptr %i.dc, align 8, !tbaa !166
  %i.akz = ptrtoint ptr %i.aky to i64
  %i.ala = ptrtoint ptr %i.akx to i64
  %i.alb = sub i64 %i.akz, %i.ala
  call void @_ZdlPvm(ptr noundef nonnull %i.akx, i64 noundef %i.alb) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit154

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit154: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit152, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret void

bb.ap:                                            ; preds = %bb.r, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit146, %bb.g, %bb.p
  %.pn96.pn.pn = phi { ptr, i32 } [ %i.ku, %bb.p ], [ %i.gq, %bb.g ], [ %.pn88.pn, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit146 ], [ %i.wu, %bb.r ] ; 2 uses
  %i.alc = load ptr, ptr %4, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i155 = icmp eq ptr %i.alc, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit156, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ald = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !166
  %i.alf = ptrtoint ptr %i.ale to i64
  %i.alg = ptrtoint ptr %i.alc to i64
  %i.alh = sub i64 %i.alf, %i.alg
  call void @_ZdlPvm(ptr noundef nonnull %i.alc, i64 noundef %i.alh) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit156

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit156: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ali = load ptr, ptr %3, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i157 = icmp eq ptr %i.ali, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit158, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit156
  %i.alj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !166
  %i.all = ptrtoint ptr %i.alk to i64
  %i.alm = ptrtoint ptr %i.ali to i64
  %i.aln = sub i64 %i.all, %i.alm
  call void @_ZdlPvm(ptr noundef nonnull %i.ali, i64 noundef %i.aln) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit158

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit158: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit156, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.alo = load ptr, ptr %2, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i159 = icmp eq ptr %i.alo, null
  br i1 %.not.i.i.i159, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit160, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit158
  %i.alp = load ptr, ptr %i.dq, align 8, !tbaa !166
  %i.alq = ptrtoint ptr %i.alp to i64
  %i.alr = ptrtoint ptr %i.alo to i64
  %i.als = sub i64 %i.alq, %i.alr
  call void @_ZdlPvm(ptr noundef nonnull %i.alo, i64 noundef %i.als) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit160

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit160: ; preds = %bb.as, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit158, %bb.f
  %.pn100.pn = phi { ptr, i32 } [ %i.et, %bb.f ], [ %.pn96.pn.pn, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit158 ], [ %.pn96.pn.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.alt = load ptr, ptr %1, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i161 = icmp eq ptr %i.alt, null
  br i1 %.not.i.i.i161, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit162, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit160
  %i.alu = load ptr, ptr %i.dc, align 8, !tbaa !166
  %i.alv = ptrtoint ptr %i.alu to i64
  %i.alw = ptrtoint ptr %i.alt to i64
  %i.alx = sub i64 %i.alv, %i.alw
  call void @_ZdlPvm(ptr noundef nonnull %i.alt, i64 noundef %i.alx) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit162

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit162: ; preds = %bb.at, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit160
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn100.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar6gzpath31updateDistanceToReferenceFramesEv(ptr noundef nonnull align 8 dereferenceable(3232) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1992
  %i.b = load ptr, ptr %0, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(1704) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar6gzpathD1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTVN6colvar6gzpathE, i64 16), ptr %i.a, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar6gzpathE, i64 280), ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6colvar6gzpathE, i64 344), ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2344
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.c) #29, !inline_history !181
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1776
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.d) #29, !inline_history !181
  tail call void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %i.b) #29, !inline_history !181
  tail call void @_ZN6colvar18CartesianBasedPathD2Ev(ptr noundef nonnull align 8 dead_on_return(1704) dereferenceable(3232) %i.a) #29, !inline_history !181
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar6gzpathD0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320 ; 3 uses
end_hunk_3
