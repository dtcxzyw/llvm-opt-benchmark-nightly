Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_gpath?download=true
inline.NumInlined: 3692
inline.NumDeleted: 904
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE0EE22determineClosestFramesEv:bb.a
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
  %i.y = extractelement <2 x double> %i.cb, i64 0
  store double %i.y, ptr %i.k, align 8, !tbaa !180
  %i.z = extractelement <2 x double> %i.cb, i64 1
  store double %i.z, ptr %i.l, align 8, !tbaa !179
  %shift = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.br, %shift
  %i.aa = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.ab = phi double [ %i.aa, %._crit_edge ], [ 0.000000e+00, %bb.a ]
  %i.ac = phi <2 x double> [ %i.cb, %._crit_edge ], [ zeroinitializer, %bb.a ] ; 2 uses
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
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.cc, %bb.c ] ; 4 uses
  %i.az = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.cb, %bb.c ]
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
  %i.bs = load <3 x double>, ptr %i.bg, align 8, !tbaa !145 ; 6 uses
  %1 = shufflevector <3 x double> %i.bs, <3 x double> poison, <3 x i32> <i32 2, i32 poison, i32 poison>
  %i.bt = shufflevector <2 x double> %i.bh, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %2 = shufflevector <3 x double> %i.bt, <3 x double> %i.bs, <2 x i32> <i32 4, i32 1>
  %i.bu = shufflevector <3 x double> %i.bs, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = fmul <2 x double> %2, %i.bu
  %i.bw = shufflevector <3 x double> %i.bs, <3 x double> %i.bt, <2 x i32> <i32 0, i32 3>
  %i.bx = shufflevector <3 x double> %i.bs, <3 x double> poison, <2 x i32> zeroinitializer
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.bx, <2 x double> %i.bv)
  %3 = shufflevector <2 x double> %i.bj, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %4 = shufflevector <3 x double> %1, <3 x double> %3, <2 x i32> <i32 0, i32 4>
  %i.bz = shufflevector <3 x double> %i.bs, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %i.bz, <2 x double> %i.by)
  %i.cb = fadd <2 x double> %i.az, %i.ca          ; 4 uses
  %i.cc = add nuw i64 %.010, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %i.t
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
end_hunk_0
