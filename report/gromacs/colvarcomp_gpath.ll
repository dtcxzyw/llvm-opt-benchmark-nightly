Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_gpath?download=true
inline.NumInlined: 3692
inline.NumDeleted: 904
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE0EE22determineClosestFramesEv:bb.a
  %i.gc = load i64, ptr %i.an, align 8, !tbaa !58
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.x
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fr, %bb.x ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ge = load ptr, ptr %4, align 8, !tbaa !57    ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.aj
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.gg = load i64, ptr %i.aj, align 8, !tbaa !58
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 2 uses
  %i.gi = load ptr, ptr %5, align 8, !tbaa !57    ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.ah
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.gk = load i64, ptr %i.ah, align 8, !tbaa !58
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.w
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fq, %bb.w ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ] ; 2 uses
  %i.gm = load ptr, ptr %6, align 8, !tbaa !57    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.as
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.go = load i64, ptr %i.as, align 8, !tbaa !58
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.v
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fp, %bb.v ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.gq = load ptr, ptr %1, align 8, !tbaa !57    ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.aa
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.gs = load i64, ptr %i.aa, align 8, !tbaa !58
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %i.gu = phi i64 [ %.pre148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %bb.d ] ; 3 uses
  %i.gv = phi ptr [ %.pre147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %bb.d ] ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 %i.gu, ptr %i.gw, align 8, !tbaa !157
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !49, !range !50, !noundef !51
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !55
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.hc = load i64, ptr %i.r, align 8, !tbaa !155
  %i.hd = sub nsw i64 %i.gu, %i.hc
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.he = phi i64 [ %i.hb, %bb.aa ], [ %i.hd, %bb.ab ]
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !160
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 337
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !60, !range !50, !noundef !51
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !55
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.hl = load i64, ptr %i.r, align 8, !tbaa !155
  %i.hm = add nsw i64 %i.hl, %i.gu
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.hn = phi i64 [ %i.hk, %bb.ad ], [ %i.hm, %bb.ae ]
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !170
  %i.hp = load i64, ptr %i.gv, align 8, !tbaa !55
  %i.hq = uitofp i64 %i.hp to double
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 384
  store double %i.hq, ptr %i.hr, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE0EE12computeValueEv(ptr noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(392) %0)
  %i.d = load ptr, ptr %0, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(392) %0)
  %i.g = load ptr, ptr %0, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(392) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store double 0.000000e+00, ptr %i.l, align 8, !tbaa !179
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !165  ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !156  ; 3 uses
  %.not = icmp eq ptr %i.o, %i.p
  br i1 %.not, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !156
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !156
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  store <2 x double> %i.br, ptr %i.j, align 8, !tbaa !145
  %i.y = extractelement <2 x double> %i.bx, i64 0
  store double %i.y, ptr %i.k, align 8, !tbaa !180
  %i.z = extractelement <2 x double> %i.bx, i64 1
  store double %i.z, ptr %i.l, align 8, !tbaa !179
  %shift = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.br, %shift
  %i.aa = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.ab = phi double [ %i.aa, %._crit_edge ], [ 0.000000e+00, %bb.a ]
  %i.ac = phi <2 x double> [ %i.bx, %._crit_edge ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.ad = fneg double %i.ab
  %i.ae = extractelement <2 x double> %i.ac, i64 0 ; 2 uses
  %i.af = fmul double %i.ae, %i.ad
  %i.ag = extractelement <2 x double> %i.ac, i64 1 ; 3 uses
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.af)
  %i.ai = tail call noundef double @sqrt(double noundef %i.ah) #29
  %i.aj = fsub double %i.ai, %i.ag
  %i.ak = fdiv double %i.aj, %i.ae                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.ak, ptr %i.al, align 8, !tbaa !467
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.an = load double, ptr %i.am, align 8, !tbaa !177
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !161 ; 2 uses
  %i.aq = fdiv double %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !155
  %i.at = sitofp i64 %i.as to double
  %i.au = fadd double %i.ak, -1.000000e+00
  %i.av = fmul double %i.ap, 2.000000e+00
  %i.aw = fdiv double %i.au, %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.at, double %i.aw, double %i.aq)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.ax, ptr %i.ay, align 8, !tbaa !468
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.by, %bb.c ] ; 4 uses
  %i.az = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bx, %bb.c ]
  %i.ba = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.br, %bb.c ]
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.010 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.010 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !167
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.010
  %i.bh = load <2 x double>, ptr %i.bb, align 8, !tbaa !145 ; 2 uses
  %i.bi = load <2 x double>, ptr %i.bd, align 8, !tbaa !145 ; 2 uses
  %i.bj = load <2 x double>, ptr %i.bc, align 8, !tbaa !145 ; 3 uses
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> %i.bi, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bl = fmul <2 x double> %i.bk, %i.bk
  %i.bm = shufflevector <2 x double> %i.bh, <2 x double> %i.bi, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.bm, <2 x double> %i.bl)
  %i.bo = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bp = insertelement <2 x double> %i.bo, double %i.bf, i64 1 ; 2 uses
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bp, <2 x double> %i.bn)
  %i.br = fadd <2 x double> %i.ba, %i.bq          ; 4 uses
  %1 = load <3 x double>, ptr %i.bg, align 8, !tbaa !145 ; 6 uses
  %2 = shufflevector <3 x double> %1, <3 x double> poison, <3 x i32> <i32 2, i32 poison, i32 poison>
  %3 = shufflevector <2 x double> %i.bh, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %4 = shufflevector <3 x double> %3, <3 x double> %1, <2 x i32> <i32 4, i32 1>
  %i.bs = shufflevector <3 x double> %1, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fmul <2 x double> %4, %i.bs
  %5 = shufflevector <3 x double> %1, <3 x double> %3, <2 x i32> <i32 0, i32 3>
  %i.bu = shufflevector <3 x double> %1, <3 x double> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %i.bu, <2 x double> %i.bt)
  %6 = shufflevector <2 x double> %i.bj, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %7 = shufflevector <3 x double> %2, <3 x double> %6, <2 x i32> <i32 0, i32 4>
  %8 = shufflevector <3 x double> %1, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %8, <2 x double> %i.bv)
  %i.bx = fadd <2 x double> %i.az, %i.bw          ; 4 uses
  %i.by = add nuw i64 %.010, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !466
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE0EE18computeDerivativesEv(ptr noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !180 ; 3 uses
  %i.c = fmul double %i.b, 2.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !179 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !484
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !485
  %i.j = fsub double %i.g, %i.i
  %i.k = fneg double %i.j
  %i.l = fmul double %i.b, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.l)
  %i.n = tail call noundef double @sqrt(double noundef %i.m) #29
  %i.o = fmul double %i.c, %i.n
  %i.p = insertelement <2 x double> poison, double %i.o, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.b, i64 1
  %i.r = fdiv <2 x double> splat (double 1.000000e+00), %i.q ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !165  ; 4 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !156  ; 7 uses
  %.not = icmp eq ptr %i.u, %i.v
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = sdiv exact i64 %i.y, 24                  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !156 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !156 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !156 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !156 ; 8 uses
  %min.iters.check = icmp ult i64 %i.z, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.y ; 5 uses
  %scevgep32 = getelementptr i8, ptr %i.ah, i64 %i.y ; 5 uses
  %scevgep33 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %scevgep34 = getelementptr i8, ptr %i.ab, i64 %i.y ; 2 uses
  %scevgep36 = getelementptr i8, ptr %i.af, i64 %i.y ; 2 uses
  %bound0 = icmp ult ptr %i.ad, %scevgep32
  %bound1 = icmp ult ptr %i.ah, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound037 = icmp ult ptr %i.ad, %scevgep33
  %bound138 = icmp ult ptr %i.a, %scevgep
  %found.conflict39 = and i1 %bound037, %bound138
  %conflict.rdx = or i1 %found.conflict, %found.conflict39
  %bound040 = icmp ult ptr %i.ad, %scevgep34
  %bound141 = icmp ult ptr %i.ab, %scevgep
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx43 = or i1 %conflict.rdx, %found.conflict42
  %bound044 = icmp ult ptr %i.ad, %i.u
  %bound145 = icmp ult ptr %i.v, %scevgep
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx43, %found.conflict46
  %bound048 = icmp ult ptr %i.ad, %scevgep36
  %bound149 = icmp ult ptr %i.af, %scevgep
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx51 = or i1 %conflict.rdx47, %found.conflict50
  %bound052 = icmp ult ptr %i.ah, %scevgep33
  %bound153 = icmp ult ptr %i.a, %scevgep32
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx55 = or i1 %conflict.rdx51, %found.conflict54
  %bound056 = icmp ult ptr %i.ah, %scevgep34
  %bound157 = icmp ult ptr %i.ab, %scevgep32
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %conflict.rdx55, %found.conflict58
  %bound060 = icmp ult ptr %i.ah, %i.u
  %bound161 = icmp ult ptr %i.v, %scevgep32
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx63 = or i1 %conflict.rdx59, %found.conflict62
  %bound064 = icmp ult ptr %i.ah, %scevgep36
  %bound165 = icmp ult ptr %i.af, %scevgep32
  %found.conflict66 = and i1 %bound064, %bound165
  %conflict.rdx67 = or i1 %conflict.rdx63, %found.conflict66
  br i1 %conflict.rdx67, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -2                       ; 3 uses
  %i.ai = load double, ptr %i.d, align 8, !tbaa !179, !alias.scope !486
  %i.aj = fmul double %i.ai, 2.000000e+00
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %i.aj, i64 0 ; 2 uses
  %broadcast.splat71 = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = load double, ptr %i.a, align 8, !tbaa !180, !alias.scope !486 ; 2 uses
  %i.al = fmul double %i.ak, 2.000000e+00
  %broadcast.splatinsert72 = insertelement <2 x double> poison, double %i.al, i64 0 ; 2 uses
  %broadcast.splat73 = shufflevector <2 x double> %broadcast.splatinsert72, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fmul double %i.ak, 2.000000e+00
  %broadcast.splatinsert74 = insertelement <2 x double> poison, double %i.am, i64 0 ; 2 uses
  %broadcast.splat75 = shufflevector <2 x double> %broadcast.splatinsert74, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat69 = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.an = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> zeroinitializer
  %i.ao = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <4 x i32> zeroinitializer
  %i.ap = shufflevector <2 x double> %broadcast.splatinsert72, <2 x double> poison, <4 x i32> zeroinitializer
  %i.aq = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ar = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> zeroinitializer
  %i.as = shufflevector <2 x double> %broadcast.splatinsert74, <2 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.at = or disjoint i64 %index, 1               ; 3 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %index ; 3 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.at ; 3 uses
  %i.aw = load double, ptr %i.au, align 8, !tbaa !168, !alias.scope !487, !noalias !488
  %i.ax = load double, ptr %i.av, align 8, !tbaa !168, !alias.scope !487, !noalias !488
  %i.ay = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ax, i64 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !169, !alias.scope !487, !noalias !488
  %i.bd = load double, ptr %i.bb, align 8, !tbaa !169, !alias.scope !487, !noalias !488
  %i.be = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bi = load double, ptr %i.bg, align 8, !tbaa !167, !alias.scope !487, !noalias !488
  %i.bj = load double, ptr %i.bh, align 8, !tbaa !167, !alias.scope !487, !noalias !488
  %i.bk = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bj, i64 1 ; 2 uses
  %i.bm = fmul <2 x double> %broadcast.splat71, %i.bl
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %index ; 3 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.at ; 3 uses
  %i.bp = load double, ptr %i.bn, align 8, !tbaa !168, !alias.scope !489, !noalias !490
  %i.bq = load double, ptr %i.bo, align 8, !tbaa !168, !alias.scope !489, !noalias !490
  %i.br = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bq, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !169, !alias.scope !489, !noalias !490
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !169, !alias.scope !489, !noalias !490
  %i.bx = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bw, i64 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !167, !alias.scope !489, !noalias !490
  %i.cc = load double, ptr %i.ca, align 8, !tbaa !167, !alias.scope !489, !noalias !490
  %i.cd = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.ce = insertelement <2 x double> %i.cd, double %i.cc, i64 1
  %i.cf = fmul <2 x double> %broadcast.splat73, %i.ce
  %i.cg = fsub <2 x double> %i.bm, %i.cf
  %i.ch = fmul <2 x double> %broadcast.splat, %i.cg
  %i.ci = fmul <2 x double> %broadcast.splat69, %i.bl
  %i.cj = fsub <2 x double> %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %index
  %i.cl = shufflevector <2 x double> %i.az, <2 x double> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cm = fmul <4 x double> %i.ao, %i.cl
  %i.cn = shufflevector <2 x double> %i.bs, <2 x double> %i.by, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.co = fmul <4 x double> %i.ap, %i.cn
  %i.cp = fsub <4 x double> %i.cm, %i.co
  %i.cq = fmul <4 x double> %i.an, %i.cp
  %i.cr = shufflevector <2 x double> %i.az, <2 x double> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cs = fmul <4 x double> %i.aq, %i.cr
  %i.ct = fsub <4 x double> %i.cq, %i.cs
  %i.cu = shufflevector <2 x double> %i.cj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.ct, <4 x double> %i.cu, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.ck, align 8, !tbaa !145, !alias.scope !491, !noalias !492
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %index ; 3 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.at ; 3 uses
  %i.cx = load double, ptr %i.cv, align 8, !tbaa !168, !alias.scope !493, !noalias !494
  %i.cy = load double, ptr %i.cw, align 8, !tbaa !168, !alias.scope !493, !noalias !494
  %i.cz = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cy, i64 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.dd = load double, ptr %i.db, align 8, !tbaa !169, !alias.scope !493, !noalias !494
  %i.de = load double, ptr %i.dc, align 8, !tbaa !169, !alias.scope !493, !noalias !494
  %i.df = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %i.de, i64 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.dj = load double, ptr %i.dh, align 8, !tbaa !167, !alias.scope !493, !noalias !494
  %i.dk = load double, ptr %i.di, align 8, !tbaa !167, !alias.scope !493, !noalias !494
  %i.dl = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.dk, i64 1
  %i.dn = fmul <2 x double> %broadcast.splat75, %i.dm
  %i.do = fmul <2 x double> %broadcast.splat, %i.dn
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %index
  %i.dq = shufflevector <2 x double> %i.da, <2 x double> %i.dg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dr = fmul <4 x double> %i.as, %i.dq
  %i.ds = fmul <4 x double> %i.ar, %i.dr
  %i.dt = shufflevector <2 x double> %i.do, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec76 = shufflevector <4 x double> %i.ds, <4 x double> %i.dt, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec76, ptr %i.dp, align 8, !tbaa !145, !alias.scope !495, !noalias !496
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !482

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.031.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.dv = extractelement <2 x double> %i.r, i64 1
  %i.dw = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dx = extractelement <2 x double> %i.r, i64 0 ; 2 uses
  %i.dy = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.031 = phi i64 [ %i.fj, %scalar.ph ], [ %.031.ph, %scalar.ph.preheader ] ; 6 uses
  %i.dz = load double, ptr %i.d, align 8, !tbaa !179
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.031 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !167, !noalias !488 ; 2 uses
  %i.ed = load double, ptr %i.a, align 8, !tbaa !180
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.031 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !167, !noalias !490
  %i.eh = fmul double %i.dv, %i.ec
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.031 ; 2 uses
  %i.ej = load <2 x double>, ptr %i.ea, align 8, !tbaa !145, !noalias !488 ; 2 uses
  %1 = insertelement <2 x double> poison, double %i.dz, i64 0
  %2 = insertelement <2 x double> %1, double %i.ed, i64 1
  %3 = fmul <2 x double> %2, splat (double 2.000000e+00) ; 4 uses
  %i.ek = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x double> %i.ek, %i.ej
  %4 = extractelement <2 x double> %3, i64 0
  %i.em = fmul double %4, %i.ec
  %i.en = load <2 x double>, ptr %i.ee, align 8, !tbaa !145, !noalias !490
  %5 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %6 = fmul <2 x double> %5, %i.en
  %7 = extractelement <2 x double> %3, i64 1
  %i.eo = fmul double %7, %i.eg
  %i.ep = fsub <2 x double> %i.el, %6
  %i.eq = fsub double %i.em, %i.eo
  %i.er = fmul <2 x double> %i.dw, %i.ep
  %i.es = fmul double %i.dx, %i.eq
  %i.et = fmul <2 x double> %i.dy, %i.ej
  %i.eu = fsub <2 x double> %i.er, %i.et
  %i.ev = fsub double %i.es, %i.eh
  store <2 x double> %i.eu, ptr %i.ei, align 8, !tbaa !145
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store double %i.ev, ptr %.sroa.530.0..sroa_idx, align 8, !tbaa !145
  %i.ew = load double, ptr %i.a, align 8, !tbaa !180
  %i.ex = fmul double %i.ew, 2.000000e+00         ; 2 uses
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.031 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !167, !noalias !494
  %i.fb = fmul double %i.ex, %i.fa
  %i.fc = fmul double %i.dx, %i.fb
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.031 ; 2 uses
  %i.fe = load <2 x double>, ptr %i.ey, align 8, !tbaa !145, !noalias !494
  %i.ff = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = fmul <2 x double> %i.fg, %i.fe
  %i.fi = fmul <2 x double> %i.dw, %i.fh
  store <2 x double> %i.fi, ptr %i.fd, align 8, !tbaa !145
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store double %i.fc, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !145
  %i.fj = add nuw i64 %.031, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fj, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !483
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar6gzpathD2Ev(ptr noundef nonnull align 8 dead_on_return(3232) dereferenceable(3232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTVN6colvar6gzpathE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar6gzpathE, i64 280), ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6colvar6gzpathE, i64 344), ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2664
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.c) #29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2096
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.d) #29
  tail call void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %i.b) #29
  tail call void @_ZN6colvar18CartesianBasedPathD2Ev(ptr noundef nonnull align 8 dead_on_return(1704) dereferenceable(1704) %0) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar6gzpathD0Ev(ptr noundef nonnull align 8 dereferenceable(3232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTVN6colvar6gzpathE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar6gzpathE, i64 280), ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6colvar6gzpathE, i64 344), ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2664
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.c) #29, !inline_history !181
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2096
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.d) #29, !inline_history !181
  tail call void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %i.b) #29, !inline_history !181
  tail call void @_ZN6colvar18CartesianBasedPathD2Ev(ptr noundef nonnull align 8 dead_on_return(1704) dereferenceable(3232) %0) #29, !inline_history !181
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 3232) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6colvar6gzpath4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.j = alloca i8, align 1                       ; 7 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.colvarmodule::rvector", align 8 ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.m = tail call noundef i32 @_ZN6colvar18CartesianBasedPath4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1704) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.az

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2040 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #29
  store i8 1, ptr %i.h, align 1, !tbaa !29
  %i.p = call noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRbRKbNS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 1 dereferenceable(1) %i.h, i32 noundef 131078) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  %i.q = load i8, ptr %i.o, align 8, !tbaa !183, !range !50, !noundef !51
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.noexc.i, label %.noexc.i55

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  store i64 74, ptr %i.g, align 8, !tbaa !55
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.t, ptr %2, align 8, !tbaa !57
  %i.u = load i64, ptr %i.g, align 8, !tbaa !55   ; 3 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(74) %i.t, ptr noundef nonnull align 1 dereferenceable(74) @.str.30, i64 74, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.noexc
  %i.x = load ptr, ptr %2, align 8, !tbaa !57     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.s
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.z = load i64, ptr %i.s, align 8, !tbaa !58
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.i

bb.d:                                             ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.e:                                             ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !57    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.e
  %i.af = load i64, ptr %i.s, align 8, !tbaa !58
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.d
  %.pn30 = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.ac, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.ba

.noexc.i55:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ah, ptr %3, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  store i64 72, ptr %i.f, align 8, !tbaa !55
  %i.ai = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc56 unwind label %bb.g   ; 3 uses

.noexc56:                                         ; preds = %.noexc.i55
  store ptr %i.ai, ptr %3, align 8, !tbaa !57
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !55  ; 3 uses
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.ai, ptr noundef nonnull align 1 dereferenceable(72) @.str.31, i64 72, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !59
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  store i8 0, ptr %i.al, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 10)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.noexc56
  %i.am = load ptr, ptr %3, align 8, !tbaa !57    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ah
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.f
  %i.ao = load i64, ptr %i.ah, align 8, !tbaa !58
end_hunk_0
begin_hunk_1_@_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE1EE12computeValueEv:bb.a
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(392) %0)
  %i.d = load ptr, ptr %0, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(392) %0)
  %i.g = load ptr, ptr %0, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(392) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !165  ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !156  ; 3 uses
  %.not = icmp eq ptr %i.p, %i.q
  br i1 %.not, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !156
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !156
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !156
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %i.ab = extractelement <6 x double> %i.cs, i64 0
  store double %i.ab, ptr %i.j, align 8, !tbaa !195
  %i.ac = shufflevector <6 x double> %i.cs, <6 x double> poison, <2 x i32> <i32 4, i32 5>
  store <2 x double> %i.ac, ptr %i.k, align 8, !tbaa !145
  %i.ad = extractelement <6 x double> %i.cs, i64 2
  store double %i.ad, ptr %i.l, align 8, !tbaa !196
  %i.ae = shufflevector <6 x double> %i.cs, <6 x double> poison, <2 x i32> <i32 3, i32 1>
  store <2 x double> %i.ae, ptr %i.m, align 8, !tbaa !145
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.af = phi <6 x double> [ %i.cs, %._crit_edge ], [ zeroinitializer, %bb.a ] ; 6 uses
  %i.ag = extractelement <6 x double> %i.af, i64 0 ; 2 uses
  %i.ah = extractelement <6 x double> %i.af, i64 4
  %i.ai = fsub double %i.ag, %i.ah
  %i.aj = fneg double %i.ai
  %i.ak = extractelement <6 x double> %i.af, i64 5 ; 2 uses
  %i.al = fmul double %i.ak, %i.aj
  %i.am = extractelement <6 x double> %i.af, i64 1 ; 3 uses
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.al)
  %i.ao = tail call noundef double @sqrt(double noundef %i.an) #29
  %i.ap = fsub double %i.ao, %i.am
  %i.aq = fdiv double %i.ap, %i.ak                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.aq, ptr %i.ar, align 8, !tbaa !197
  %i.as = fadd double %i.aq, -1.000000e+00
  %i.at = fmul double %i.as, 5.000000e-01         ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.at, ptr %i.au, align 8, !tbaa !659
  %i.av = fmul double %i.at, 2.000000e+00
  %i.aw = extractelement <6 x double> %i.af, i64 2
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.av, double %i.aw, double %i.ag)
  %i.ay = fmul double %i.at, %i.at
  %i.az = extractelement <6 x double> %i.af, i64 3
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.az, double %i.ax) ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.ba, ptr %i.bb, align 8, !tbaa !660
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 338
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !193, !range !50, !noundef !51
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = tail call double @llvm.fabs.f64(double %i.ba)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.bf)
  %sqrt.sink = select i1 %i.be, double %i.ba, double %sqrt
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %sqrt.sink, ptr %i.bg, align 8, !tbaa !198
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.c ] ; 5 uses
  %i.bh = phi <6 x double> [ zeroinitializer, %.lr.ph ], [ %i.cs, %bb.c ]
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.015 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !167
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.015 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !167 ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.015 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !167 ; 2 uses
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %.015 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !167 ; 2 uses
  %i.bu = load <2 x double>, ptr %i.bi, align 8, !tbaa !145 ; 2 uses
  %i.bv = load <2 x double>, ptr %i.bl, align 8, !tbaa !145 ; 2 uses
  %i.bw = load <2 x double>, ptr %i.bo, align 8, !tbaa !145 ; 2 uses
  %i.bx = load <2 x double>, ptr %i.br, align 8, !tbaa !145 ; 2 uses
  %i.by = shufflevector <2 x double> %i.bu, <2 x double> %i.bx, <6 x i32> <i32 1, i32 1, i32 1, i32 3, i32 poison, i32 poison> ; 2 uses
  %i.bz = shufflevector <2 x double> %i.bv, <2 x double> %i.bw, <6 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 3> ; 2 uses
  %i.ca = shufflevector <6 x double> %i.by, <6 x double> %i.bz, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 10, i32 11>
  %i.cb = shufflevector <6 x double> %i.by, <6 x double> %i.bz, <6 x i32> <i32 0, i32 11, i32 3, i32 3, i32 10, i32 11>
  %i.cc = fmul <6 x double> %i.ca, %i.cb
  %i.cd = shufflevector <2 x double> %i.bu, <2 x double> %i.bx, <6 x i32> <i32 0, i32 0, i32 0, i32 2, i32 poison, i32 poison> ; 2 uses
  %i.ce = shufflevector <2 x double> %i.bv, <2 x double> %i.bw, <6 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 2> ; 2 uses
  %i.cf = shufflevector <6 x double> %i.cd, <6 x double> %i.ce, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 10, i32 11>
  %i.cg = shufflevector <6 x double> %i.cd, <6 x double> %i.ce, <6 x i32> <i32 0, i32 11, i32 3, i32 3, i32 10, i32 11>
  %i.ch = tail call <6 x double> @llvm.fmuladd.v6f64(<6 x double> %i.cf, <6 x double> %i.cg, <6 x double> %i.cc)
  %i.ci = insertelement <6 x double> poison, double %i.bk, i64 0 ; 2 uses
  %i.cj = insertelement <6 x double> %i.ci, double %i.bt, i64 3
  %i.ck = insertelement <6 x double> %i.cj, double %i.bn, i64 4
  %i.cl = insertelement <6 x double> %i.ck, double %i.bq, i64 5
  %i.cm = shufflevector <6 x double> %i.cl, <6 x double> poison, <6 x i32> <i32 0, i32 0, i32 0, i32 3, i32 4, i32 5>
  %i.cn = insertelement <6 x double> %i.ci, double %i.bq, i64 1
  %i.co = insertelement <6 x double> %i.cn, double %i.bt, i64 2
  %i.cp = insertelement <6 x double> %i.co, double %i.bn, i64 4
  %i.cq = shufflevector <6 x double> %i.cp, <6 x double> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 2, i32 4, i32 1>
  %i.cr = tail call <6 x double> @llvm.fmuladd.v6f64(<6 x double> %i.cm, <6 x double> %i.cq, <6 x double> %i.ch)
  %i.cs = fadd <6 x double> %i.cr, %i.bh          ; 6 uses
  %i.ct = add nuw i64 %.015, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ct, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !658
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE1EE18computeDerivativesEv(ptr noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !684 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !685 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !195
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !686
  %i.i = fsub double %i.f, %i.h
  %i.j = fneg double %i.i
  %i.k = fmul double %i.b, %i.j
  %i.l = tail call double @llvm.fmuladd.f64(double %i.d, double %i.d, double %i.k)
  %i.m = tail call noundef double @sqrt(double noundef %i.l) #29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !165  ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !156  ; 3 uses
  %.not = icmp eq ptr %i.p, %i.q
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = fmul double %i.b, 2.000000e+00
  %i.s = fmul double %i.r, %i.m
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.b, i64 1
  %i.v = fdiv <2 x double> splat (double 1.000000e+00), %i.u ; 4 uses
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = ptrtoint ptr %i.q to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !156
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !156
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !156
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !156
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 338
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !193, !range !50, !noundef !51
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.as = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.au = extractelement <2 x double> %i.v, i64 0 ; 2 uses
  %i.av = extractelement <2 x double> %i.v, i64 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.0121 = phi i64 [ 0, %.lr.ph ], [ %i.hn, %bb.g ] ; 14 uses
  %i.aw = load double, ptr %i.c, align 8, !tbaa !685
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.0121 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !167, !noalias !687 ; 2 uses
  %i.ba = load double, ptr %i.a, align 8, !tbaa !684
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.0121 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 3 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !167, !noalias !688
  %i.be = fmul double %i.av, %i.az
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.0121 ; 4 uses
  %i.bg = load <2 x double>, ptr %i.ax, align 8, !tbaa !145, !noalias !687 ; 2 uses
  %1 = insertelement <2 x double> poison, double %i.aw, i64 0
  %2 = insertelement <2 x double> %1, double %i.ba, i64 1
  %3 = fmul <2 x double> %2, splat (double 2.000000e+00) ; 4 uses
  %i.bh = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x double> %i.bh, %i.bg
  %4 = extractelement <2 x double> %3, i64 0
  %i.bj = fmul double %4, %i.az
  %i.bk = load <2 x double>, ptr %i.bb, align 8, !tbaa !145, !noalias !688
  %5 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %6 = fmul <2 x double> %5, %i.bk
  %7 = extractelement <2 x double> %3, i64 1
  %i.bl = fmul double %7, %i.bd
  %i.bm = fsub <2 x double> %i.bi, %6
  %i.bn = fsub double %i.bj, %i.bl
  %i.bo = fmul <2 x double> %i.as, %i.bm
  %i.bp = fmul double %i.au, %i.bn
  %i.bq = fmul <2 x double> %i.at, %i.bg
  %i.br = fsub <2 x double> %i.bo, %i.bq
  %i.bs = fsub double %i.bp, %i.be
  store <2 x double> %i.br, ptr %i.bf, align 8, !tbaa !145
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 3 uses
  store double %i.bs, ptr %.sroa.5120.0..sroa_idx, align 8, !tbaa !145
  %i.bt = load double, ptr %i.a, align 8, !tbaa !684
  %i.bu = fmul double %i.bt, 2.000000e+00         ; 2 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.0121 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !167, !noalias !689
  %i.by = fmul double %i.bu, %i.bx
  %i.bz = fmul double %i.au, %i.by
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.0121 ; 4 uses
  %i.cb = load <2 x double>, ptr %i.bv, align 8, !tbaa !145, !noalias !689
  %i.cc = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x double> %i.cd, %i.cb
  %i.cf = fmul <2 x double> %i.as, %i.ce
  store <2 x double> %i.cf, ptr %i.ca, align 8, !tbaa !145
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 3 uses
  store double %i.bz, ptr %.sroa.5102.0..sroa_idx, align 8, !tbaa !145
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cg = load double, ptr %i.bc, align 8, !tbaa !167, !noalias !690
  %i.ch = fmul double %i.cg, 2.000000e+00
  %i.ci = load double, ptr %i.ao, align 8, !tbaa !197
  %i.cj = fadd double %i.ci, -1.000000e+00        ; 3 uses
  %i.ck = load ptr, ptr %i.ap, align 8, !tbaa !156
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %.0121 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !167, !noalias !691
  %i.co = fmul double %i.cj, %i.cn
  %i.cp = fadd double %i.ch, %i.co
  %i.cq = load double, ptr %i.aq, align 8, !tbaa !196 ; 2 uses
  %i.cr = load double, ptr %.sroa.5120.0..sroa_idx, align 8, !tbaa !167, !noalias !692 ; 2 uses
  %i.cs = fmul double %i.cq, %i.cr
  %i.ct = fadd double %i.cp, %i.cs
  %i.cu = load double, ptr %i.ar, align 8, !tbaa !693
  %i.cv = fmul double %i.cu, 2.500000e-01
  %i.cw = fmul double %i.cv, 2.000000e+00
  %i.cx = fmul double %i.cj, %i.cw                ; 2 uses
  %i.cy = fmul double %i.cr, %i.cx
  %i.cz = fadd double %i.ct, %i.cy
  %i.da = load ptr, ptr %i.am, align 8, !tbaa !156
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %.0121 ; 2 uses
  %i.dc = load <2 x double>, ptr %i.bb, align 8, !tbaa !145, !noalias !690
  %i.dd = fmul <2 x double> %i.dc, splat (double 2.000000e+00)
  %i.de = load <2 x double>, ptr %i.cl, align 8, !tbaa !145, !noalias !691
  %i.df = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x double> %i.dg, %i.de
  %i.di = fadd <2 x double> %i.dd, %i.dh
  %i.dj = load <2 x double>, ptr %i.bf, align 8, !tbaa !145, !noalias !692 ; 2 uses
  %i.dk = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x double> %i.dl, %i.dj
  %i.dn = fadd <2 x double> %i.di, %i.dm
  %i.do = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x double> %i.dj, %i.dp
  %i.dr = fadd <2 x double> %i.dn, %i.dq
  store <2 x double> %i.dr, ptr %i.db, align 8, !tbaa !145
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store double %i.cz, ptr %.sroa.596.0..sroa_idx, align 8, !tbaa !145
  %i.ds = load double, ptr %i.aq, align 8, !tbaa !196 ; 2 uses
  %i.dt = load double, ptr %.sroa.5102.0..sroa_idx, align 8, !tbaa !167, !noalias !694 ; 2 uses
  %i.du = fmul double %i.ds, %i.dt
  %i.dv = load double, ptr %i.ar, align 8, !tbaa !693
  %i.dw = fmul double %i.dv, 2.500000e-01
  %i.dx = fmul double %i.dw, 2.000000e+00
  %i.dy = load double, ptr %i.ao, align 8, !tbaa !197
  %i.dz = fadd double %i.dy, -1.000000e+00
  %i.ea = fmul double %i.dx, %i.dz                ; 2 uses
  %i.eb = fmul double %i.dt, %i.ea
  %i.ec = fadd double %i.du, %i.eb
  %i.ed = load ptr, ptr %i.an, align 8, !tbaa !156
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %.0121 ; 2 uses
  %i.ef = load <2 x double>, ptr %i.ca, align 8, !tbaa !145, !noalias !694 ; 2 uses
  %i.eg = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fmul <2 x double> %i.eh, %i.ef
  %i.ej = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x double> %i.ef, %i.ek
  %i.em = fadd <2 x double> %i.ei, %i.el
  store <2 x double> %i.em, ptr %i.ee, align 8, !tbaa !145
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store double %i.ec, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !145
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.en = load double, ptr %i.al, align 8, !tbaa !198 ; 2 uses
  %i.eo = fcmp ogt double %i.en, 0.000000e+00
  br i1 %i.eo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ep = fmul nnan double %i.en, 2.000000e+00
  %i.eq = fdiv double 1.000000e+00, %i.ep         ; 2 uses
  %i.er = load double, ptr %i.bc, align 8, !tbaa !167, !noalias !695
  %i.es = fmul double %i.er, 2.000000e+00
  %i.et = load double, ptr %i.ao, align 8, !tbaa !197
  %i.eu = fadd double %i.et, -1.000000e+00        ; 3 uses
  %i.ev = load ptr, ptr %i.ap, align 8, !tbaa !156
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %.0121 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !167, !noalias !696
  %i.ez = fmul double %i.eu, %i.ey
  %i.fa = fadd double %i.es, %i.ez
  %i.fb = load double, ptr %i.aq, align 8, !tbaa !196 ; 2 uses
  %i.fc = load double, ptr %.sroa.5120.0..sroa_idx, align 8, !tbaa !167, !noalias !697 ; 2 uses
  %i.fd = fmul double %i.fb, %i.fc
  %i.fe = fadd double %i.fa, %i.fd
  %i.ff = load double, ptr %i.ar, align 8, !tbaa !693
  %i.fg = fmul double %i.ff, 2.500000e-01
  %i.fh = fmul double %i.fg, 2.000000e+00
  %i.fi = fmul double %i.eu, %i.fh                ; 2 uses
  %i.fj = fmul double %i.fc, %i.fi
  %i.fk = fadd double %i.fe, %i.fj
  %i.fl = fmul double %i.eq, %i.fk
  %i.fm = load ptr, ptr %i.am, align 8, !tbaa !156
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %.0121 ; 2 uses
  %i.fo = load <2 x double>, ptr %i.bb, align 8, !tbaa !145, !noalias !695
  %i.fp = fmul <2 x double> %i.fo, splat (double 2.000000e+00)
  %i.fq = load <2 x double>, ptr %i.ew, align 8, !tbaa !145, !noalias !696
  %i.fr = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = fmul <2 x double> %i.fs, %i.fq
  %i.fu = fadd <2 x double> %i.fp, %i.ft
  %i.fv = load <2 x double>, ptr %i.bf, align 8, !tbaa !145, !noalias !697 ; 2 uses
  %i.fw = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = fmul <2 x double> %i.fx, %i.fv
  %i.fz = fadd <2 x double> %i.fu, %i.fy
  %i.ga = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x double> %i.fv, %i.gb
  %i.gd = fadd <2 x double> %i.fz, %i.gc
  %i.ge = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = fmul <2 x double> %i.gf, %i.gd
  store <2 x double> %i.gg, ptr %i.fn, align 8, !tbaa !145
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store double %i.fl, ptr %.sroa.566.0..sroa_idx, align 8, !tbaa !145
  %i.gh = load double, ptr %i.aq, align 8, !tbaa !196 ; 2 uses
  %i.gi = load double, ptr %.sroa.5102.0..sroa_idx, align 8, !tbaa !167, !noalias !698 ; 2 uses
  %i.gj = fmul double %i.gh, %i.gi
  %i.gk = load double, ptr %i.ar, align 8, !tbaa !693
  %i.gl = load double, ptr %i.ao, align 8, !tbaa !197
  %i.gm = fadd double %i.gl, -1.000000e+00
  %i.gn = load ptr, ptr %i.an, align 8, !tbaa !156
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gn, i64 %.0121 ; 2 uses
  %i.gp = load double, ptr %i.al, align 8, !tbaa !198
  %i.gq = load <2 x double>, ptr %i.ca, align 8, !tbaa !145, !noalias !698 ; 2 uses
  %i.gr = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = fmul <2 x double> %i.gs, %i.gq
  %i.gu = fmul double %i.gk, 2.500000e-01
  %i.gv = fmul double %i.gu, 2.000000e+00
  %i.gw = fmul double %i.gp, 2.000000e+00
  %i.gx = fmul double %i.gv, %i.gm                ; 2 uses
  %i.gy = fdiv double 1.000000e+00, %i.gw         ; 2 uses
  %i.gz = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = fmul <2 x double> %i.gq, %i.ha
  %i.hc = fmul double %i.gi, %i.gx
  %i.hd = fadd <2 x double> %i.gt, %i.hb
  %i.he = fadd double %i.gj, %i.hc
  %i.hf = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hg = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hh = fmul <2 x double> %i.hg, %i.hd
  %i.hi = fmul double %i.gy, %i.he
  store <2 x double> %i.hh, ptr %i.go, align 8, !tbaa !145
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store double %i.hi, ptr %.sroa.542.0..sroa_idx, align 8, !tbaa !145
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.hj = load ptr, ptr %i.am, align 8, !tbaa !156
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.hj, i64 %.0121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, i8 0, i64 24, i1 false)
  %i.hl = load ptr, ptr %i.an, align 8, !tbaa !156
  %i.hm = getelementptr inbounds nuw [24 x i8], ptr %i.hl, i64 %.0121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i8 0, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %i.hn = add nuw i64 %.0121, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.hn, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !683
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN6colvar18CartesianBasedPathD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
end_hunk_1
