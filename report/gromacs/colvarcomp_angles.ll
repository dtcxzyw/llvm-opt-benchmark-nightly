Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_angles?download=true
inline.NumInlined: 608
inline.NumDeleted: 246
begin_hunk_0_@_ZN6colvar12dipole_angle10calc_valueEv:bb.a
  %i.ed = call double @llvm.fmuladd.f64(double %i.dz, double %i.dz, double %i.ec)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !91 ; 3 uses
  %i.eg = call noundef double @llvm.fmuladd.f64(double %i.ef, double %i.ef, double %i.ed)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.eg) ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 2 uses
  store double %sqrt.i, ptr %i.eh, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !100
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 417
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !102, !range !103, !noundef !104
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre = load double, ptr %i.m, align 8, !tbaa !105
  %.pre65 = load double, ptr %i.ea, align 8, !tbaa !106
  %.pre66 = load double, ptr %i.ee, align 8, !tbaa !91
  %.pre67 = load double, ptr %i.eh, align 8, !tbaa !167
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eo = load double, ptr %i.en, align 16, !tbaa !91, !noalias !168
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eq = load double, ptr %i.ep, align 16, !tbaa !91, !noalias !168
  %i.er = fsub double %i.eo, %i.eq
  %i.es = load <2 x double>, ptr %3, align 16, !tbaa !89, !noalias !168
  %i.et = load <2 x double>, ptr %2, align 16, !tbaa !89, !noalias !168
  %i.eu = fsub <2 x double> %i.es, %i.et
  store <2 x double> %i.eu, ptr %10, align 16, !tbaa !89, !alias.scope !168
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double %i.er, ptr %i.ev, align 16, !tbaa !91, !alias.scope !168
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ew = phi double [ %sqrt.i, %bb.r ], [ %.pre67, %bb.q ]
  %i.ex = phi double [ %i.ef, %bb.r ], [ %.pre66, %bb.q ]
  %i.ey = phi double [ %i.eb, %bb.r ], [ %.pre65, %bb.q ]
  %i.ez = phi double [ %i.dz, %bb.r ], [ %.pre, %bb.q ]
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 16 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !91
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.fe = load <2 x double>, ptr %i.fa, align 8, !tbaa !89 ; 3 uses
  %i.ff = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fg = insertelement <2 x double> %i.ff, double %i.ey, i64 1
  %i.fh = fmul <2 x double> %i.ff, %i.fg
  %i.fi = insertelement <2 x double> %i.fe, double %i.ez, i64 1
  %i.fj = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.fj, <2 x double> %i.fh)
  %i.fl = insertelement <2 x double> poison, double %i.fc, i64 0 ; 2 uses
  %i.fm = insertelement <2 x double> %i.fl, double %i.ex, i64 1
  %i.fn = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.fn, <2 x double> %i.fk) ; 2 uses
  %i.fp = extractelement <2 x double> %i.fo, i64 0
  %sqrt.i46 = call noundef double @llvm.sqrt.f64(double %i.fp) ; 2 uses
  store double %sqrt.i46, ptr %i.fd, align 8, !tbaa !169
  %i.fq = fmul double %sqrt.i46, %i.ew
  %i.fr = extractelement <2 x double> %i.fo, i64 1
  %i.fs = fdiv double %i.fr, %i.fq
  %i.ft = call noundef double @acos(double noundef %i.fs) #19
  %i.fu = fmul double %i.ft, f0x404CA5DC1A63C1F8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 600
  store double %i.fu, ptr %i.fv, align 8, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void

bb.t:                                             ; preds = %bb.a
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.v:                                             ; preds = %bb.f
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.k, %.critedge.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i21, %bb.m
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.y:                                             ; preds = %bb.o
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gc = load ptr, ptr %4, align 8, !tbaa !124   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.cm
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.y
  %i.ge = load i64, ptr %i.cm, align 8, !tbaa !126
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ga, %bb.x ], [ %i.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.gb, %bb.y ] ; 2 uses
  %i.gg = load ptr, ptr %5, align 8, !tbaa !124   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !126
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.fz, %bb.w ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ] ; 2 uses
  %i.gl = load ptr, ptr %9, align 8, !tbaa !124   ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !126
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fy, %bb.v ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.gq = load ptr, ptr %6, align 8, !tbaa !124   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.ad
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.gs = load i64, ptr %i.ad, align 8, !tbaa !126
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.u
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fx, %bb.u ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ] ; 2 uses
  %i.gu = load ptr, ptr %7, align 8, !tbaa !124   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.o
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.gw = load i64, ptr %i.o, align 8, !tbaa !126
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.t
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.t ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ]
  %i.gy = load ptr, ptr %8, align 8, !tbaa !124   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !126
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6colvar12dipole_angle14calc_gradientsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1745) initializes((1696, 1744)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.d = load double, ptr %i.c, align 8, !tbaa !91 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.f = load double, ptr %i.e, align 8, !tbaa !91 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 6 uses
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.i = load <2 x double>, ptr %i.a, align 8, !tbaa !89 ; 5 uses
  %i.j = load <2 x double>, ptr %i.b, align 8, !tbaa !89 ; 5 uses
  %i.k = extractelement <2 x double> %i.j, i64 1
  %i.l = extractelement <2 x double> %i.j, i64 0
  %i.m = extractelement <2 x double> %i.i, i64 0
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1712 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 10 uses
  %i.o = load <2 x double>, ptr %i.g, align 8, !tbaa !89 ; 9 uses
  %i.p = shufflevector <2 x double> %i.i, <2 x double> %i.o, <2 x i32> <i32 1, i32 2>
  %i.q = shufflevector <2 x double> %i.j, <2 x double> %i.o, <2 x i32> <i32 1, i32 3>
  %i.r = fmul <2 x double> %i.p, %i.q             ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = tail call double @llvm.fmuladd.f64(double %i.m, double %i.l, double %i.s)
  %i.u = tail call noundef double @llvm.fmuladd.f64(double %i.d, double %i.f, double %i.t)
  %i.v = extractelement <2 x double> %i.r, i64 1
  %i.w = fdiv double %i.u, %i.v                   ; 2 uses
  %i.x = fneg double %i.w                         ; 4 uses
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.w, double 1.000000e+00)
  %i.z = tail call noundef double @sqrt(double noundef %i.y) #19
  %i.aa = fdiv double -1.000000e+00, %i.z
  %i.ab = fmul double %i.aa, f0x404CA5DC1A63C1F8
  %i.ac = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fdiv <2 x double> %i.j, %i.ac
  %i.ae = insertelement <2 x double> poison, double %i.x, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ag = fmul <2 x double> %i.i, %i.af
  %i.ah = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv <2 x double> %i.ag, %i.ah
  %i.aj = fadd <2 x double> %i.ad, %i.ai
  %i.ak = fdiv <2 x double> splat (double 1.000000e+00), %i.o
  %i.al = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x double> %i.ak, %i.am          ; 3 uses
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.ao, %i.aj
  store <2 x double> %i.ap, ptr %i.h, align 8, !tbaa !89
  %i.aq = insertelement <2 x double> %i.i, double %i.f, i64 1
  %i.ar = fdiv <2 x double> %i.aq, %i.o
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.at = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.au = insertelement <2 x double> %i.at, double %i.d, i64 0
  %i.av = fmul <2 x double> %i.au, %i.af
  %i.aw = fmul double %i.k, %i.x
  %i.ax = fmul double %i.f, %i.x
  %i.ay = fdiv <2 x double> %i.av, %i.o
  %i.az = fadd <2 x double> %i.as, %i.ay
  %i.ba = fmul <2 x double> %i.an, %i.az
  store <2 x double> %i.ba, ptr %.sroa.567.0..sroa_idx, align 8, !tbaa !89
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1728 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 4 uses
  %i.bb = insertelement <2 x double> poison, double %i.d, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.aw, i64 1
  %i.bd = fdiv <2 x double> %i.bc, %i.o
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bg = insertelement <2 x double> %i.bf, double %i.ax, i64 1
  %i.bh = fdiv <2 x double> %i.bg, %i.o
  %i.bi = fadd <2 x double> %i.be, %i.bh
  %i.bj = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = fmul <2 x double> %i.bj, %i.bi
  store <2 x double> %i.bk, ptr %.sroa.452.0..sroa_idx, align 8, !tbaa !89
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !120 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1128
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !207
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 1120
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !208
  %i.br = fdiv double %i.bo, %i.bq                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 1144
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !209 ; 10 uses
  %.not = icmp eq i64 %i.bt, 0
  br i1 %.not, label %.preheader68, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 1200
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !116 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 1248
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !116 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 1272
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !116 ; 6 uses
  %.idx.i = shl i64 %i.bt, 4                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 22
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ca = shl i64 %i.bt, 3                        ; 3 uses
  %i.cb = getelementptr i8, ptr %i.bz, i64 %i.ca  ; 4 uses
  %i.cc = getelementptr i8, ptr %i.bz, i64 %.idx.i ; 7 uses
  %i.cd = mul i64 %i.bt, 24
  %i.ce = getelementptr i8, ptr %i.bz, i64 %i.cd  ; 4 uses
  %i.cf = getelementptr i8, ptr %i.bv, i64 %i.ca  ; 3 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.ca  ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 3 uses
  %i.ci = insertelement <4 x ptr> poison, ptr %i.bz, i64 0
  %i.cj = shufflevector <4 x ptr> %i.ci, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ck = insertelement <4 x ptr> poison, ptr %i.ce, i64 0
  %i.cl = insertelement <4 x ptr> %i.ck, ptr %i.cf, i64 1
  %i.cm = insertelement <4 x ptr> %i.cl, ptr %i.cg, i64 2
  %i.cn = insertelement <4 x ptr> %i.cm, ptr %i.ch, i64 3
  %i.co = icmp ult <4 x ptr> %i.cj, %i.cn
  %i.cp = insertelement <4 x ptr> poison, ptr %i.cc, i64 0
  %i.cq = insertelement <4 x ptr> %i.cp, ptr %i.bv, i64 1
  %i.cr = insertelement <4 x ptr> %i.cq, ptr %i.bx, i64 2
  %i.cs = insertelement <4 x ptr> %i.cr, ptr %i.h, i64 3
  %i.ct = insertelement <4 x ptr> poison, ptr %i.cb, i64 0
  %i.cu = shufflevector <4 x ptr> %i.ct, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cv = icmp ult <4 x ptr> %i.cs, %i.cu
  %i.cw = and <4 x i1> %i.co, %i.cv
  %bound0141 = icmp ult ptr %i.cb, %i.cf
  %bound1142 = icmp ult ptr %i.bv, %i.cc
  %found.conflict143 = and i1 %bound0141, %bound1142
  %bound0145 = icmp ult ptr %i.cb, %i.cg
  %bound1146 = icmp ult ptr %i.bx, %i.cc
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %i.cb, %i.ch
  %bound1150 = icmp ult ptr %i.h, %i.cc
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %i.cc, %i.cf
  %bound1154 = icmp ult ptr %i.bv, %i.ce
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %i.cc, %i.cg
  %bound1158 = icmp ult ptr %i.bx, %i.ce
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %i.cc, %i.ch
  %bound1162 = icmp ult ptr %i.h, %i.ce
  %found.conflict163 = and i1 %bound0161, %bound1162
  %i.cx = bitcast <4 x i1> %i.cw to i4
  %i.cy = icmp ne i4 %i.cx, 0
  %op.rdx = or i1 %i.cy, %found.conflict143
  %op.rdx348 = or i1 %found.conflict147, %found.conflict151
  %op.rdx349 = or i1 %found.conflict155, %found.conflict159
  %op.rdx350 = or i1 %op.rdx, %op.rdx348
  %op.rdx351 = or i1 %op.rdx349, %found.conflict163
  %op.rdx352 = or i1 %op.rdx350, %op.rdx351
  br i1 %op.rdx352, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bt, -2                      ; 3 uses
  %i.cz = load <2 x double>, ptr %i.h, align 8
  %broadcast.splat167 = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = load <2 x double>, ptr %.sroa.466.0..sroa_idx, align 8
  %broadcast.splat169 = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = load <2 x double>, ptr %.sroa.567.0..sroa_idx, align 8
  %broadcast.splat171 = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.br, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index
  %wide.load = load <2 x double>, ptr %i.dc, align 8, !tbaa !89, !alias.scope !210
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index
  %wide.load165 = load <2 x double>, ptr %i.dd, align 8, !tbaa !89, !alias.scope !211
  %i.de = fneg <2 x double> %wide.load165
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %broadcast.splat, <2 x double> %wide.load) ; 3 uses
  %i.dg = fmul <2 x double> %i.df, %broadcast.splat167
  %i.dh = fmul <2 x double> %i.df, %broadcast.splat169
  %i.di = fmul <2 x double> %i.df, %broadcast.splat171
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index ; 3 uses
  store <2 x double> %i.dg, ptr %i.dj, align 8, !tbaa !89, !alias.scope !212, !noalias !213
  %i.dk = getelementptr [8 x i8], ptr %i.dj, i64 %i.bt
  store <2 x double> %i.dh, ptr %i.dk, align 8, !tbaa !89, !alias.scope !214, !noalias !215
  %i.dl = getelementptr i8, ptr %i.dj, i64 %.idx.i
  store <2 x double> %i.di, ptr %i.dl, align 8, !tbaa !89, !alias.scope !216, !noalias !217
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.preheader68, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.02769.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader68:                                     ; preds = %scalar.ph, %middle.block, %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !121 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1144
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !209 ; 10 uses
  %.not74 = icmp eq i64 %i.dq, 0
  br i1 %.not74, label %.preheader, label %.lr.ph71

.lr.ph71:                                         ; preds = %.preheader68
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 1320
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !116 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 1272
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !116 ; 8 uses
  %.idx.i28 = shl i64 %i.dq, 4                    ; 3 uses
  %min.iters.check207 = icmp ult i64 %i.dq, 18
  br i1 %min.iters.check207, label %scalar.ph206.preheader, label %vector.memcheck208

vector.memcheck208:                               ; preds = %.lr.ph71
  %i.dv = shl i64 %i.dq, 3                        ; 2 uses
  %i.dw = getelementptr i8, ptr %i.du, i64 %i.dv  ; 5 uses
  %i.dx = getelementptr i8, ptr %i.du, i64 %.idx.i28 ; 5 uses
  %i.dy = mul i64 %i.dq, 24
  %i.dz = getelementptr i8, ptr %i.du, i64 %i.dy  ; 3 uses
  %i.ea = getelementptr i8, ptr %i.ds, i64 %i.dv  ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1744 ; 3 uses
  %bound0212 = icmp ult ptr %i.du, %i.dz
  %bound1213 = icmp ult ptr %i.dx, %i.dw
  %found.conflict214 = and i1 %bound0212, %bound1213
  %bound0216 = icmp ult ptr %i.du, %i.ea
  %bound1217 = icmp ult ptr %i.ds, %i.dw
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx219 = or i1 %found.conflict214, %found.conflict218
  %bound0220 = icmp ult ptr %i.du, %i.eb
  %bound1221 = icmp ult ptr %i.n, %i.dw
  %found.conflict222 = and i1 %bound0220, %bound1221
  %conflict.rdx223 = or i1 %conflict.rdx219, %found.conflict222
  %bound0228 = icmp ult ptr %i.dw, %i.ea
  %bound1229 = icmp ult ptr %i.ds, %i.dx
  %found.conflict230 = and i1 %bound0228, %bound1229
  %conflict.rdx231 = or i1 %conflict.rdx223, %found.conflict230
  %bound0232 = icmp ult ptr %i.dw, %i.eb
  %bound1233 = icmp ult ptr %i.n, %i.dx
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %conflict.rdx231, %found.conflict234
  %bound0236 = icmp ult ptr %i.dx, %i.ea
  %bound1237 = icmp ult ptr %i.ds, %i.dz
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %conflict.rdx235, %found.conflict238
  %bound0240 = icmp ult ptr %i.dx, %i.eb
  %bound1241 = icmp ult ptr %i.n, %i.dz
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx243 = or i1 %conflict.rdx239, %found.conflict242
  br i1 %conflict.rdx243, label %scalar.ph206.preheader, label %vector.ph244

vector.ph244:                                     ; preds = %vector.memcheck208
  %n.vec245 = and i64 %i.dq, -4                   ; 3 uses
  %i.ec = load <2 x double>, ptr %i.n, align 8
  %i.ed = load <2 x double>, ptr %.sroa.452.0..sroa_idx, align 8
  %i.ee = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !91, !alias.scope !221, !noalias !222
  %i.ef = fneg <2 x double> %i.ec
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eh = fneg <2 x double> %i.ed
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.scalar = fneg double %i.ee
  %i.ej = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body252

vector.body252:                                   ; preds = %vector.body252, %vector.ph244
  %index253 = phi i64 [ 0, %vector.ph244 ], [ %index.next256, %vector.body252 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index253 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load254 = load <2 x double>, ptr %i.el, align 8, !tbaa !89, !alias.scope !223 ; 3 uses
  %wide.load255 = load <2 x double>, ptr %i.em, align 8, !tbaa !89, !alias.scope !223 ; 3 uses
  %i.en = fmul <2 x double> %wide.load254, %i.eg
  %i.eo = fmul <2 x double> %wide.load255, %i.eg
  %i.ep = fmul <2 x double> %wide.load254, %i.ei
  %i.eq = fmul <2 x double> %wide.load255, %i.ei
  %i.er = fmul <2 x double> %wide.load254, %i.ek
  %i.es = fmul <2 x double> %wide.load255, %i.ek
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index253 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <2 x double> %i.en, ptr %i.et, align 8, !tbaa !89, !alias.scope !224, !noalias !225
  store <2 x double> %i.eo, ptr %i.eu, align 8, !tbaa !89, !alias.scope !224, !noalias !225
  %i.ev = getelementptr [8 x i8], ptr %i.et, i64 %i.dq ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 16
  store <2 x double> %i.ep, ptr %i.ev, align 8, !tbaa !89, !alias.scope !226, !noalias !227
  store <2 x double> %i.eq, ptr %i.ew, align 8, !tbaa !89, !alias.scope !226, !noalias !227
  %i.ex = getelementptr i8, ptr %i.et, i64 %.idx.i28 ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 16
  store <2 x double> %i.er, ptr %i.ex, align 8, !tbaa !89, !alias.scope !228, !noalias !229
  store <2 x double> %i.es, ptr %i.ey, align 8, !tbaa !89, !alias.scope !228, !noalias !229
  %index.next256 = add nuw i64 %index253, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next256, %n.vec245
  br i1 %i.ez, label %middle.block257, label %vector.body252, !llvm.loop !186

middle.block257:                                  ; preds = %vector.body252
  %cmp.n258 = icmp eq i64 %i.dq, %n.vec245
  br i1 %cmp.n258, label %.preheader, label %scalar.ph206.preheader

scalar.ph206.preheader:                           ; preds = %vector.memcheck208, %.lr.ph71, %middle.block257
  %.02670.ph = phi i64 [ 0, %vector.memcheck208 ], [ 0, %.lr.ph71 ], [ %n.vec245, %middle.block257 ]
  br label %scalar.ph206

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.02769 = phi i64 [ %i.fl, %scalar.ph ], [ %.02769.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.02769
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !89
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.02769
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !89
  %i.fe = fneg double %i.fd
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.br, double %i.fb) ; 2 uses
  %1 = load <2 x double>, ptr %i.h, align 8, !tbaa !89, !noalias !230
  %2 = insertelement <2 x double> poison, double %i.ff, i64 0
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = fmul <2 x double> %3, %1                   ; 2 uses
  %i.fg = load double, ptr %.sroa.567.0..sroa_idx, align 8, !tbaa !91, !noalias !230
  %i.fh = fmul double %i.ff, %i.fg
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.02769 ; 3 uses
  %5 = extractelement <2 x double> %4, i64 0
  store double %5, ptr %i.fi, align 8, !tbaa !89
  %i.fj = getelementptr [8 x i8], ptr %i.fi, i64 %i.bt
  %6 = extractelement <2 x double> %4, i64 1
  store double %6, ptr %i.fj, align 8, !tbaa !89
  %i.fk = getelementptr i8, ptr %i.fi, i64 %.idx.i
  store double %i.fh, ptr %i.fk, align 8, !tbaa !89
  %i.fl = add nuw i64 %.02769, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %i.bt
  br i1 %exitcond.not, label %.preheader68, label %scalar.ph, !llvm.loop !189

.preheader:                                       ; preds = %scalar.ph206, %middle.block257, %.preheader68
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !122 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1144
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !209 ; 10 uses
  %.not75 = icmp eq i64 %i.fp, 0
  br i1 %.not75, label %._crit_edge, label %.lr.ph73

.lr.ph73:                                         ; preds = %.preheader
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 1320
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !116 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 1272
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !116 ; 8 uses
  %.idx.i29 = shl i64 %i.fp, 4                    ; 3 uses
  %min.iters.check295 = icmp ult i64 %i.fp, 22
  br i1 %min.iters.check295, label %scalar.ph294.preheader, label %vector.memcheck296

vector.memcheck296:                               ; preds = %.lr.ph73
  %i.fu = shl i64 %i.fp, 3                        ; 2 uses
  %i.fv = getelementptr i8, ptr %i.ft, i64 %i.fu  ; 5 uses
  %i.fw = getelementptr i8, ptr %i.ft, i64 %.idx.i29 ; 5 uses
  %i.fx = mul i64 %i.fp, 24
  %i.fy = getelementptr i8, ptr %i.ft, i64 %i.fx  ; 3 uses
  %i.fz = getelementptr i8, ptr %i.fr, i64 %i.fu  ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1744 ; 3 uses
  %bound0300 = icmp ult ptr %i.ft, %i.fy
  %bound1301 = icmp ult ptr %i.fw, %i.fv
  %found.conflict302 = and i1 %bound0300, %bound1301
  %bound0304 = icmp ult ptr %i.ft, %i.fz
  %bound1305 = icmp ult ptr %i.fr, %i.fv
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx307 = or i1 %found.conflict302, %found.conflict306
  %bound0308 = icmp ult ptr %i.ft, %i.ga
  %bound1309 = icmp ult ptr %i.n, %i.fv
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %conflict.rdx307, %found.conflict310
  %bound0316 = icmp ult ptr %i.fv, %i.fz
  %bound1317 = icmp ult ptr %i.fr, %i.fw
  %found.conflict318 = and i1 %bound0316, %bound1317
  %conflict.rdx319 = or i1 %conflict.rdx311, %found.conflict318
  %bound0320 = icmp ult ptr %i.fv, %i.ga
  %bound1321 = icmp ult ptr %i.n, %i.fw
  %found.conflict322 = and i1 %bound0320, %bound1321
  %conflict.rdx323 = or i1 %conflict.rdx319, %found.conflict322
  %bound0324 = icmp ult ptr %i.fw, %i.fz
  %bound1325 = icmp ult ptr %i.fr, %i.fy
  %found.conflict326 = and i1 %bound0324, %bound1325
  %conflict.rdx327 = or i1 %conflict.rdx323, %found.conflict326
  %bound0328 = icmp ult ptr %i.fw, %i.ga
  %bound1329 = icmp ult ptr %i.n, %i.fy
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx331 = or i1 %conflict.rdx327, %found.conflict330
  br i1 %conflict.rdx331, label %scalar.ph294.preheader, label %vector.ph332

vector.ph332:                                     ; preds = %vector.memcheck296
  %n.vec333 = and i64 %i.fp, -4                   ; 3 uses
  %i.gb = load <2 x double>, ptr %i.n, align 8
  %broadcast.splat339 = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gc = load <2 x double>, ptr %.sroa.452.0..sroa_idx, align 8
  %broadcast.splat341 = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gd = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !91, !alias.scope !231, !noalias !232
  %broadcast.splatinsert342 = insertelement <2 x double> poison, double %i.gd, i64 0
  %broadcast.splat343 = shufflevector <2 x double> %broadcast.splatinsert342, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph332
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next344, %vector.body334 ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %index335 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load336 = load <2 x double>, ptr %i.ge, align 8, !tbaa !89, !alias.scope !233 ; 3 uses
  %wide.load337 = load <2 x double>, ptr %i.gf, align 8, !tbaa !89, !alias.scope !233 ; 3 uses
  %i.gg = fmul <2 x double> %wide.load336, %broadcast.splat339
  %i.gh = fmul <2 x double> %wide.load337, %broadcast.splat339
  %i.gi = fmul <2 x double> %wide.load336, %broadcast.splat341
  %i.gj = fmul <2 x double> %wide.load337, %broadcast.splat341
  %i.gk = fmul <2 x double> %wide.load336, %broadcast.splat343
  %i.gl = fmul <2 x double> %wide.load337, %broadcast.splat343
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %index335 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <2 x double> %i.gg, ptr %i.gm, align 8, !tbaa !89, !alias.scope !234, !noalias !235
  store <2 x double> %i.gh, ptr %i.gn, align 8, !tbaa !89, !alias.scope !234, !noalias !235
  %i.go = getelementptr [8 x i8], ptr %i.gm, i64 %i.fp ; 2 uses
  %i.gp = getelementptr i8, ptr %i.go, i64 16
  store <2 x double> %i.gi, ptr %i.go, align 8, !tbaa !89, !alias.scope !236, !noalias !237
  store <2 x double> %i.gj, ptr %i.gp, align 8, !tbaa !89, !alias.scope !236, !noalias !237
  %i.gq = getelementptr i8, ptr %i.gm, i64 %.idx.i29 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 16
  store <2 x double> %i.gk, ptr %i.gq, align 8, !tbaa !89, !alias.scope !238, !noalias !239
  store <2 x double> %i.gl, ptr %i.gr, align 8, !tbaa !89, !alias.scope !238, !noalias !239
  %index.next344 = add nuw i64 %index335, 4       ; 2 uses
  %i.gs = icmp eq i64 %index.next344, %n.vec333
  br i1 %i.gs, label %middle.block345, label %vector.body334, !llvm.loop !198

middle.block345:                                  ; preds = %vector.body334
  %cmp.n346 = icmp eq i64 %i.fp, %n.vec333
  br i1 %cmp.n346, label %._crit_edge, label %scalar.ph294.preheader

scalar.ph294.preheader:                           ; preds = %vector.memcheck296, %.lr.ph73, %middle.block345
  %.072.ph = phi i64 [ 0, %vector.memcheck296 ], [ 0, %.lr.ph73 ], [ %n.vec333, %middle.block345 ]
  br label %scalar.ph294

scalar.ph206:                                     ; preds = %scalar.ph206.preheader, %scalar.ph206
  %.02670 = phi i64 [ %i.hi, %scalar.ph206 ], [ %.02670.ph, %scalar.ph206.preheader ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.02670
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !89 ; 2 uses
  %i.gv = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !91, !noalias !222
  %i.gw = load <2 x double>, ptr %i.n, align 8, !tbaa !89, !noalias !222
  %i.gx = fneg <2 x double> %i.gw
  %i.gy = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ha = fmul <2 x double> %i.gz, %i.gx          ; 2 uses
  %i.hb = fneg double %i.gv
  %i.hc = fmul double %i.gu, %i.hb
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.02670 ; 3 uses
  %i.he = extractelement <2 x double> %i.ha, i64 0
  store double %i.he, ptr %i.hd, align 8, !tbaa !89
  %i.hf = getelementptr [8 x i8], ptr %i.hd, i64 %i.dq
  %i.hg = extractelement <2 x double> %i.ha, i64 1
  store double %i.hg, ptr %i.hf, align 8, !tbaa !89
  %i.hh = getelementptr i8, ptr %i.hd, i64 %.idx.i28
  store double %i.hc, ptr %i.hh, align 8, !tbaa !89
  %i.hi = add nuw i64 %.02670, 1                  ; 2 uses
  %exitcond76.not = icmp eq i64 %i.hi, %i.dq
  br i1 %exitcond76.not, label %.preheader, label %scalar.ph206, !llvm.loop !199

._crit_edge:                                      ; preds = %scalar.ph294, %middle.block345, %.preheader
  ret void

scalar.ph294:                                     ; preds = %scalar.ph294.preheader, %scalar.ph294
  %.072 = phi i64 [ %i.hq, %scalar.ph294 ], [ %.072.ph, %scalar.ph294.preheader ] ; 3 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.072
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !89 ; 2 uses
  %7 = load <2 x double>, ptr %i.n, align 8, !tbaa !89, !noalias !232
  %8 = insertelement <2 x double> poison, double %i.hk, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = fmul <2 x double> %9, %7                  ; 2 uses
  %i.hl = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !91, !noalias !232
  %i.hm = fmul double %i.hk, %i.hl
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.072 ; 3 uses
  %11 = extractelement <2 x double> %10, i64 0
  store double %11, ptr %i.hn, align 8, !tbaa !89
  %i.ho = getelementptr [8 x i8], ptr %i.hn, i64 %i.fp
  %12 = extractelement <2 x double> %10, i64 1
  store double %12, ptr %i.ho, align 8, !tbaa !89
  %i.hp = getelementptr i8, ptr %i.hn, i64 %.idx.i29
  store double %i.hm, ptr %i.hp, align 8, !tbaa !89
  %i.hq = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond77.not = icmp eq i64 %i.hq, %i.fp
  br i1 %exitcond77.not, label %._crit_edge, label %scalar.ph294, !llvm.loop !200
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar12dipole_angleD1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1745) dereferenceable(1745) %i.a) #19
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar12dipole_angleD0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320 ; 2 uses
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1745) dereferenceable(1745) %i.a) #19
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(1745) %i.a, i64 noundef 1752) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(1608)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar8dihedralD0Ev(ptr noundef nonnull align 8 dereferenceable(1713) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1713) dereferenceable(1713) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1720) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6colvar8dihedral4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1713) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6colvar3cvc4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = tail call noundef ptr @_ZN6colvar3cvc11parse_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcb(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2, i1 noundef zeroext false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store ptr %i.b, ptr %i.c, align 8, !tbaa !128
  %i.d = tail call noundef ptr @_ZN6colvar3cvc11parse_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcb(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.3, i1 noundef zeroext false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1616
  store ptr %i.d, ptr %i.e, align 8, !tbaa !129
  %i.f = tail call noundef ptr @_ZN6colvar3cvc11parse_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcb(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.4, i1 noundef zeroext false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1624
  store ptr %i.f, ptr %i.g, align 8, !tbaa !130
  %i.h = tail call noundef ptr @_ZN6colvar3cvc11parse_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcb(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.16, i1 noundef zeroext false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1632
  store ptr %i.h, ptr %i.i, align 8, !tbaa !131
  %i.j = load ptr, ptr %0, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.n = or i32 %i.m, %i.a
  ret i32 %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar8dihedral10calc_valueEv(ptr noundef nonnull align 8 dereferenceable(1713) initializes((600, 608), (1640, 1712)) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 9 uses
  %3 = alloca %"class.colvarmodule::rvector", align 16 ; 9 uses
  %4 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %5 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %6 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %7 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !129
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 417
  %i.p = load i8, ptr %i.o, align 1, !tbaa !102, !range !103, !noundef !104
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !100
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load double, ptr %i.r, align 16, !tbaa !91, !noalias !250
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load double, ptr %i.t, align 16, !tbaa !91, !noalias !250
  %i.v = fsub double %i.s, %i.u
  %i.w = load <2 x double>, ptr %2, align 16, !tbaa !89, !noalias !250
  %i.x = load <2 x double>, ptr %1, align 16, !tbaa !89, !noalias !250
  %i.y = fsub <2 x double> %i.w, %i.x
  store <2 x double> %i.y, ptr %5, align 16, !tbaa !89, !alias.scope !250
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.v, ptr %i.z, align 16, !tbaa !91, !alias.scope !250
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = phi ptr [ %i.n, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 417
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !102, !range !103, !noundef !104
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre6 = load ptr, ptr %i.m, align 8, !tbaa !100
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load double, ptr %i.af, align 16, !tbaa !91, !noalias !251
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load double, ptr %i.ah, align 16, !tbaa !91, !noalias !251
  %i.aj = fsub double %i.ag, %i.ai
  %i.ak = load <2 x double>, ptr %3, align 16, !tbaa !89, !noalias !251
  %i.al = load <2 x double>, ptr %2, align 16, !tbaa !89, !noalias !251
  %i.am = fsub <2 x double> %i.ak, %i.al
  store <2 x double> %i.am, ptr %6, align 16, !tbaa !89, !alias.scope !251
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.aj, ptr %i.an, align 16, !tbaa !91, !alias.scope !251
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = phi ptr [ %i.aa, %bb.f ], [ %.pre6, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 16 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 417
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !102, !range !103, !noundef !104
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load double, ptr %i.at, align 16, !tbaa !91, !noalias !252
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load double, ptr %i.av, align 16, !tbaa !91, !noalias !252
  %i.ax = fsub double %i.au, %i.aw
  %i.ay = load <2 x double>, ptr %4, align 16, !tbaa !89, !noalias !252
  %i.az = load <2 x double>, ptr %3, align 16, !tbaa !89, !noalias !252
  %i.ba = fsub <2 x double> %i.ay, %i.az
  store <2 x double> %i.ba, ptr %7, align 16, !tbaa !89, !alias.scope !252
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.ax, ptr %i.bb, align 16, !tbaa !91, !alias.scope !252
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.bg = load <2 x double>, ptr %i.be, align 8, !tbaa !89, !noalias !253 ; 4 uses
  %i.bh = load <2 x double>, ptr %i.bd, align 8, !tbaa !89, !noalias !104 ; 6 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bj = load <2 x double>, ptr %i.ab, align 8, !tbaa !89, !noalias !253 ; 3 uses
  %i.bk = load <2 x double>, ptr %i.ap, align 8, !tbaa !89, !noalias !253 ; 7 uses
  %i.bl = shufflevector <2 x double> %i.bj, <2 x double> %i.bg, <2 x i32> <i32 1, i32 2>
  %i.bm = fneg <2 x double> %i.bl
  %i.bn = fmul <2 x double> %i.bk, %i.bm
  %i.bo = shufflevector <2 x double> %i.bk, <2 x double> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.bp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bo, <2 x double> %i.bn) ; 2 uses
  %i.bq = shufflevector <2 x double> %i.bj, <2 x double> %i.bg, <2 x i32> <i32 0, i32 3>
  %i.br = fneg <2 x double> %i.bq
  %i.bs = shufflevector <2 x double> %i.bg, <2 x double> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.bt = shufflevector <2 x double> %i.bg, <2 x double> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.bu = fmul <2 x double> %i.bs, %i.bt
end_hunk_0
