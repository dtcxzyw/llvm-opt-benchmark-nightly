Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_gpath?download=true
inline.NumInlined: 3692
inline.NumDeleted: 904
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6colvar6gspath14calc_gradientsEv:bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dj = load double, ptr %i.dh, align 8, !tbaa !145, !alias.scope !299
  %i.dk = load double, ptr %i.di, align 8, !tbaa !145, !alias.scope !299
  %i.dl = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.dk, i64 1
  %i.dn = fmul <2 x double> %broadcast.splat, %i.dm
  %i.do = fdiv <2 x double> %i.dn, %broadcast.splat288
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dr = load double, ptr %i.dp, align 8, !tbaa !145, !alias.scope !299
  %i.ds = load double, ptr %i.dq, align 8, !tbaa !145, !alias.scope !299
  %i.dt = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %i.ds, i64 1
  %i.dv = fmul <2 x double> %broadcast.splat, %i.du
  %i.dw = fdiv <2 x double> %i.dv, %broadcast.splat288
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %index ; 3 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.cy ; 3 uses
  %i.dz = load double, ptr %i.dx, align 8, !tbaa !145, !alias.scope !300
  %i.ea = load double, ptr %i.dy, align 8, !tbaa !145, !alias.scope !300
  %i.eb = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.ea, i64 1
  %i.ed = fmul <2 x double> %broadcast.splat286, %i.ec
  %i.ee = fdiv <2 x double> %i.ed, %broadcast.splat288
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eh = load double, ptr %i.ef, align 8, !tbaa !145, !alias.scope !300
  %i.ei = load double, ptr %i.eg, align 8, !tbaa !145, !alias.scope !300
  %i.ej = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.ei, i64 1
  %i.el = fmul <2 x double> %broadcast.splat286, %i.ek
  %i.em = fdiv <2 x double> %i.el, %broadcast.splat288
  %i.en = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ep = load double, ptr %i.en, align 8, !tbaa !145, !alias.scope !300
  %i.eq = load double, ptr %i.eo, align 8, !tbaa !145, !alias.scope !300
  %i.er = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.eq, i64 1
  %i.et = fmul <2 x double> %broadcast.splat286, %i.es
  %i.eu = fdiv <2 x double> %i.et, %broadcast.splat288
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index ; 4 uses
  %wide.load = load <2 x double>, ptr %i.ev, align 8, !tbaa !145, !alias.scope !301, !noalias !302
  %i.ew = fadd <2 x double> %i.dg, %wide.load
  store <2 x double> %i.ew, ptr %i.ev, align 8, !tbaa !145, !alias.scope !301, !noalias !302
  %i.ex = getelementptr [8 x i8], ptr %i.ev, i64 %i.ac ; 2 uses
  %wide.load289 = load <2 x double>, ptr %i.ex, align 8, !tbaa !145, !alias.scope !303, !noalias !304
  %i.ey = fadd <2 x double> %i.do, %wide.load289
  store <2 x double> %i.ey, ptr %i.ex, align 8, !tbaa !145, !alias.scope !303, !noalias !304
  %i.ez = getelementptr i8, ptr %i.ev, i64 %.idx.i ; 2 uses
  %wide.load290 = load <2 x double>, ptr %i.ez, align 8, !tbaa !145, !alias.scope !305, !noalias !306
  %i.fa = fadd <2 x double> %i.dw, %wide.load290
  store <2 x double> %i.fa, ptr %i.ez, align 8, !tbaa !145, !alias.scope !305, !noalias !306
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index ; 4 uses
  %wide.load291 = load <2 x double>, ptr %i.fb, align 8, !tbaa !145, !alias.scope !307, !noalias !308
  %i.fc = fadd <2 x double> %i.ee, %wide.load291
  store <2 x double> %i.fc, ptr %i.fb, align 8, !tbaa !145, !alias.scope !307, !noalias !308
  %i.fd = getelementptr [8 x i8], ptr %i.fb, i64 %i.ak ; 2 uses
  %wide.load292 = load <2 x double>, ptr %i.fd, align 8, !tbaa !145, !alias.scope !309, !noalias !310
  %i.fe = fadd <2 x double> %i.em, %wide.load292
  store <2 x double> %i.fe, ptr %i.fd, align 8, !tbaa !145, !alias.scope !309, !noalias !310
  %i.ff = getelementptr i8, ptr %i.fb, i64 %.idx.i14 ; 2 uses
  %wide.load293 = load <2 x double>, ptr %i.ff, align 8, !tbaa !145, !alias.scope !311, !noalias !312
  %i.fg = fadd <2 x double> %i.eu, %wide.load293
  store <2 x double> %i.fg, ptr %i.ff, align 8, !tbaa !145, !alias.scope !311, !noalias !312
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !296

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.018.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.fi = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.018 = phi i64 [ %i.hb, %scalar.ph ], [ %.018.ph, %scalar.ph.preheader ] ; 5 uses
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.018 ; 2 uses
  %i.fl = load double, ptr %i.n, align 8, !tbaa !161
  %i.fm = load <2 x double>, ptr %i.fk, align 8, !tbaa !145
  %i.fn = fmul <2 x double> %i.fi, %i.fm
  %i.fo = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fq = fdiv <2 x double> %i.fn, %i.fp          ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !145
  %i.ft = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.018 ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !145
  %i.fv = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.fu, i64 1
  %i.fx = fmul <2 x double> %i.q, %i.fw
  %i.fy = fdiv <2 x double> %i.fx, %i.fp          ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.ga = load <2 x double>, ptr %i.fz, align 8, !tbaa !145
  %i.gb = fmul <2 x double> %i.fj, %i.ga
  %i.gc = fdiv <2 x double> %i.gb, %i.fp          ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.018 ; 4 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !145
  %i.gf = extractelement <2 x double> %i.fq, i64 0
  %i.gg = fadd double %i.gf, %i.ge
  store double %i.gg, ptr %i.gd, align 8, !tbaa !145
  %i.gh = getelementptr [8 x i8], ptr %i.gd, i64 %i.ac ; 2 uses
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !145
  %i.gj = extractelement <2 x double> %i.fq, i64 1
  %i.gk = fadd double %i.gj, %i.gi
  store double %i.gk, ptr %i.gh, align 8, !tbaa !145
  %i.gl = getelementptr i8, ptr %i.gd, i64 %.idx.i ; 2 uses
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !145
  %i.gn = extractelement <2 x double> %i.fy, i64 0
  %i.go = fadd double %i.gn, %i.gm
  store double %i.go, ptr %i.gl, align 8, !tbaa !145
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.018 ; 4 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !145
  %i.gr = extractelement <2 x double> %i.fy, i64 1
  %i.gs = fadd double %i.gr, %i.gq
  store double %i.gs, ptr %i.gp, align 8, !tbaa !145
  %i.gt = getelementptr [8 x i8], ptr %i.gp, i64 %i.ak ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !145
  %i.gv = extractelement <2 x double> %i.gc, i64 0
  %i.gw = fadd double %i.gv, %i.gu
  store double %i.gw, ptr %i.gt, align 8, !tbaa !145
  %i.gx = getelementptr i8, ptr %i.gp, i64 %.idx.i14 ; 2 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !145
  %i.gz = extractelement <2 x double> %i.gc, i64 1
  %i.ha = fadd double %i.gz, %i.gy
  store double %i.ha, ptr %i.gx, align 8, !tbaa !145
  %i.hb = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.hb, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !297
}

declare void @_ZN6colvar3cvc15debug_gradientsEv(ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

declare void @_ZN6colvar3cvc17collect_gradientsERKSt6vectorIiSaIiEERS1_IN12colvarmodule7rvectorESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

declare void @_ZN6colvar3cvc19calc_force_invgradsEv(ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

declare void @_ZN6colvar3cvc24calc_Jacobian_derivativeEv(ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar6gspath11apply_forceERK11colvarvalue(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2664) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.d = load i64, ptr %i.c, align 8, !tbaa !157
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !158
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !159
  tail call void @_ZN12colvarmodule10atom_group18apply_colvar_forceERKd(ptr noundef nonnull align 8 dereferenceable(1712) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.i = load i64, ptr %i.h, align 8, !tbaa !160
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !158
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !159
  tail call void @_ZN12colvarmodule10atom_group18apply_colvar_forceERKd(ptr noundef nonnull align 8 dereferenceable(1712) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

declare noundef double @_ZNK6colvar3cvc5dist2ERK11colvarvalueS3_(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #0

declare void @_ZNK6colvar3cvc11dist2_lgradERK11colvarvalueS3_(ptr dead_on_unwind writable sret(%class.colvarvalue) align 8, ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #0

declare void @_ZNK6colvar3cvc11dist2_rgradERK11colvarvalueS3_(ptr dead_on_unwind writable sret(%class.colvarvalue) align 8, ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #0

declare void @_ZNK6colvar3cvc4wrapER11colvarvalue(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #0

declare noundef ptr @_ZN6colvar3cvc14get_param_gradERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare noundef i32 @_ZN6colvar3cvc23init_total_force_paramsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar18CartesianBasedPath37computeDistanceBetweenReferenceFramesERSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1704) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.64", align 8    ; 13 uses
  %3 = alloca %"class.std::vector.64", align 8    ; 12 uses
  %4 = alloca %"class.colvarmodule::rotation", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !141  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.not = icmp eq i64 %i.g, 24
  br i1 %.not, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 496
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 504
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 512
  br label %bb.b

._crit_edge135:                                   ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit61, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph134, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit61
  %i.p = phi ptr [ %i.d, %.lr.ph134 ], [ %i.fd, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit61 ] ; 2 uses
  %.040132 = phi i64 [ 0, %.lr.ph134 ], [ %i.ac, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit61 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.040132 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !165  ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !156  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  %i.x = sdiv exact i64 %i.w, 24
  %i.y = icmp ugt i64 %i.x, 384307168202282325
  br i1 %i.y, label %.noexc, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #31
  unreachable

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  store i64 0, ptr %2, align 8
  br label %bb.c

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.z = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #32 ; 3 uses
  store ptr %i.z, ptr %2, align 8, !tbaa !156
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.w
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.z, i8 0, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !141
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i
  %i.ab = phi ptr [ %i.p, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %.pre, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  store ptr %.sink.i, ptr %i.i, align 8, !tbaa !166
  store ptr %.sink.i, ptr %i.h, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.ac = add nuw i64 %.040132, 1                 ; 5 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !165 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !156 ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = sdiv exact i64 %i.aj, 24
  %i.al = icmp ugt i64 %i.ak, 384307168202282325
  br i1 %i.al, label %bb.d, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i50

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #31
          to label %.noexc57 unwind label %.loopexit.split-lp

.noexc57:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i50: ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not.i.i.i.i51 = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i51, label %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i56, label %.lr.ph.preheader.i.i.i.i.i52

_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i56: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i50
  store i64 0, ptr %3, align 8
  br label %bb.e

.lr.ph.preheader.i.i.i.i.i52:                     ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i50
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #32
          to label %.noexc58 unwind label %.loopexit ; 4 uses

.noexc58:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i52
  store ptr %i.am, ptr %3, align 8, !tbaa !156
  %i.an = getelementptr i8, ptr %i.am, i64 %i.aj
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.am, i8 0, i64 %i.aj, i1 false)
  %.pre147.pre = load ptr, ptr %i.a, align 8, !tbaa !141
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i56, %.noexc58
  %.pre147 = phi ptr [ %i.ab, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i56 ], [ %.pre147.pre, %.noexc58 ] ; 4 uses
  %i.ao = phi ptr [ null, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i56 ], [ %i.am, %.noexc58 ]
  %.sink.i54 = phi ptr [ null, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i56 ], [ %i.an, %.noexc58 ] ; 2 uses
  store ptr %.sink.i54, ptr %i.k, align 8, !tbaa !166
  store ptr %.sink.i54, ptr %i.j, align 8, !tbaa !165
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !132
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1144
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !139 ; 6 uses
  %.not136 = icmp eq i64 %i.ar, 0                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre147, i64 %.040132
  %.pre148 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !156 ; 5 uses
  %.phi.trans.insert149 = getelementptr inbounds nuw [24 x i8], ptr %.pre147, i64 %i.ac
  %.pre150 = load ptr, ptr %.phi.trans.insert149, align 8, !tbaa !156 ; 5 uses
  br i1 %.not136, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %xtraiter = and i64 %i.ar, 1
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ar, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.031115.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.dm, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.db, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init174 = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.dg, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init176 = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.dl, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod180 = trunc i64 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod180)
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %.pre148, i64 %.031115.epil.init ; 2 uses
  %i.au = load <2 x double>, ptr %i.at, align 8, !tbaa !145
  %i.av = fadd <2 x double> %.epil.init, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !167
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %.pre150, i64 %.031115.epil.init ; 2 uses
  %i.az = load <2 x double>, ptr %i.ay, align 8, !tbaa !145
  %i.ba = fadd <2 x double> %.epil.init174, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !167
  %i.bd = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bc, i64 1
  %i.bf = fadd <2 x double> %.epil.init176, %i.be
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.e
  %i.bg = phi <2 x double> [ zeroinitializer, %bb.e ], [ %i.db, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ]
  %i.bh = phi <2 x double> [ zeroinitializer, %bb.e ], [ %i.dg, %._crit_edge.loopexit.unr-lcssa ], [ %i.ba, %.lr.ph.epil.preheader ]
  %i.bi = phi <2 x double> [ zeroinitializer, %bb.e ], [ %i.dl, %._crit_edge.loopexit.unr-lcssa ], [ %i.bf, %.lr.ph.epil.preheader ]
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %.pre147, i64 %.040132
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !165
  %i.bm = ptrtoint ptr %.pre148 to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %.pre147, i64 %i.ac
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !165
  %i.bq = ptrtoint ptr %.pre150 to i64
  %i.br = ptrtoint ptr %i.bl to i64
  %i.bs = sub i64 %i.br, %i.bm
  %i.bt = sdiv exact i64 %i.bs, 24
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = sub i64 %i.bu, %i.bq
  %i.bw = sdiv exact i64 %i.bv, 24
  %i.bx = insertelement <2 x i64> poison, i64 %i.bt, i64 0
  %i.by = insertelement <2 x i64> %i.bx, i64 %i.bw, i64 1
  %i.bz = uitofp <2 x i64> %i.by to <2 x double>  ; 3 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = fdiv <2 x double> %i.bg, %i.ca
  %i.cc = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = fdiv <2 x double> %i.bh, %i.cc
  br i1 %.not136, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.ce = fdiv <2 x double> %i.bi, %i.bz          ; 2 uses
  %i.cf = load ptr, ptr %2, align 8, !tbaa !156
  %i.cg = extractelement <2 x double> %i.ce, i64 0
  %i.ch = extractelement <2 x double> %i.ce, i64 1
  br label %bb.f

.loopexit:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i52
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit63

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit63

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.031115 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dm, %.lr.ph ] ; 4 uses
  %i.ci = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.db, %.lr.ph ]
  %i.cj = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.dg, %.lr.ph ]
  %i.ck = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.dl, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %.pre148, i64 %.031115 ; 2 uses
  %i.cm = load <2 x double>, ptr %i.cl, align 8, !tbaa !145
  %i.cn = fadd <2 x double> %i.ci, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cp = load double, ptr %i.co, align 8, !tbaa !167
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %.pre150, i64 %.031115 ; 2 uses
  %i.cr = load <2 x double>, ptr %i.cq, align 8, !tbaa !145
  %i.cs = fadd <2 x double> %i.cj, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !167
  %i.cv = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cu, i64 1
  %i.cx = fadd <2 x double> %i.ck, %i.cw
  %i.cy = or disjoint i64 %.031115, 1             ; 2 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %.pre148, i64 %i.cy ; 2 uses
  %i.da = load <2 x double>, ptr %i.cz, align 8, !tbaa !145
  %i.db = fadd <2 x double> %i.cn, %i.da          ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !167
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %.pre150, i64 %i.cy ; 2 uses
  %i.df = load <2 x double>, ptr %i.de, align 8, !tbaa !145
  %i.dg = fadd <2 x double> %i.cs, %i.df          ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.di = load double, ptr %i.dh, align 8, !tbaa !167
  %i.dj = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.di, i64 1
  %i.dl = fadd <2 x double> %i.cx, %i.dk          ; 3 uses
  %i.dm = add nuw i64 %.031115, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !313

._crit_edge125:                                   ; preds = %bb.f, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZN12colvarmodule8rotationC1Ev(ptr noundef nonnull align 8 dereferenceable(568) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %.lr.ph124, %bb.f
  %.030122 = phi i64 [ 0, %.lr.ph124 ], [ %i.eb, %bb.f ] ; 5 uses
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %.pre148, i64 %.030122 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load double, ptr %i.do, align 8, !tbaa !167, !noalias !327
  %i.dq = fsub double %i.dp, %i.cg
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.030122 ; 2 uses
  %i.ds = load <2 x double>, ptr %i.dn, align 8, !tbaa !145, !noalias !327
  %i.dt = fsub <2 x double> %i.ds, %i.cb
  store <2 x double> %i.dt, ptr %i.dr, align 8, !tbaa !145
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store double %i.dq, ptr %.sroa.673.0..sroa_idx, align 8, !tbaa !145
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %.pre150, i64 %.030122 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !167, !noalias !328
  %i.dx = fsub double %i.dw, %i.ch
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.030122 ; 2 uses
  %i.dz = load <2 x double>, ptr %i.du, align 8, !tbaa !145, !noalias !328
  %i.ea = fsub <2 x double> %i.dz, %i.cd
  store <2 x double> %i.ea, ptr %i.dy, align 8, !tbaa !145
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store double %i.dx, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !145
  %i.eb = add nuw i64 %.030122, 1                 ; 2 uses
  %exitcond145.not = icmp eq i64 %i.eb, %i.ar
  br i1 %exitcond145.not, label %._crit_edge125, label %bb.f, !llvm.loop !318

bb.g:                                             ; preds = %._crit_edge125
  invoke void @_ZN12colvarmodule8rotation21calc_optimal_rotationERKSt6vectorINS_7rvectorESaIS2_EES6_(ptr noundef nonnull align 8 dereferenceable(568) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.preheader unwind label %bb.k

.preheader:                                       ; preds = %bb.g
  %i.ec = load ptr, ptr %i.l, align 8, !tbaa !132
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1144
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !139 ; 3 uses
  %.not138 = icmp eq i64 %i.ee, 0
  br i1 %.not138, label %._crit_edge129, label %.lr.ph128

.lr.ph128:                                        ; preds = %.preheader
  %i.ef = load ptr, ptr %2, align 8, !tbaa !156
  %i.eg = load double, ptr %i.m, align 8, !tbaa !329, !noalias !330 ; 7 uses
  %5 = load double, ptr %i.n, align 8, !tbaa !331, !noalias !330 ; 5 uses
  %i.eh = load <2 x double>, ptr %i.o, align 8, !tbaa !145, !noalias !330 ; 5 uses
  %6 = fneg <2 x double> %i.eh                    ; 4 uses
  %7 = fmul double %5, 0.000000e+00
  %8 = extractelement <2 x double> %i.eh, i64 0   ; 2 uses
  %9 = fmul double %8, 0.000000e+00
  %10 = fneg double %5                            ; 3 uses
  %11 = extractelement <2 x double> %i.eh, i64 1  ; 2 uses
  %i.ei = fmul double %11, 0.000000e+00
  %i.ej = load ptr, ptr %3, align 8, !tbaa !156
  %i.ek = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.el = insertelement <2 x double> poison, double %9, i64 0
  %12 = insertelement <2 x double> poison, double %10, i64 0
  %13 = insertelement <2 x double> %12, double %i.eg, i64 1
  %14 = insertelement <2 x double> poison, double %5, i64 0
  %i.em = extractelement <2 x double> %6, i64 0   ; 3 uses
  %15 = extractelement <2 x double> %6, i64 1     ; 2 uses
  %16 = shufflevector <2 x double> %6, <2 x double> %i.eh, <2 x i32> <i32 3, i32 1>
  %17 = shufflevector <2 x double> %i.ek, <2 x double> %i.eh, <2 x i32> <i32 0, i32 2>
  br label %bb.l

._crit_edge129:                                   ; preds = %bb.l, %.preheader
  %.0100.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.gw, %bb.l ]
  %i.en = uitofp i64 %i.ee to double
  %i.eo = fdiv double %.0100.lcssa, %i.en
  %i.ep = call noundef double @sqrt(double noundef %i.eo) #29
  %i.eq = load ptr, ptr %1, align 8, !tbaa !152
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.040132
  store double %i.ep, ptr %i.er, align 8, !tbaa !145
  call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.es = load ptr, ptr %3, align 8, !tbaa !156   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge129
  %i.et = load ptr, ptr %i.k, align 8, !tbaa !166
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.es to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ew) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit: ; preds = %._crit_edge129, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ex = load ptr, ptr %2, align 8, !tbaa !156   ; 3 uses
  %.not.i.i.i60 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit61, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit
  %i.ey = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fb) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit61

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit61: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.fc = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.fd = load ptr, ptr %i.a, align 8, !tbaa !141 ; 2 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = sdiv exact i64 %i.fg, 24
  %i.fi = add nsw i64 %i.fh, -1
  %i.fj = icmp ult i64 %i.ac, %i.fi
  br i1 %i.fj, label %bb.b, label %._crit_edge135, !llvm.loop !323

bb.j:                                             ; preds = %._crit_edge125
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %4) #29
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph128, %bb.l
  %.0127 = phi i64 [ 0, %.lr.ph128 ], [ %i.gx, %bb.l ] ; 3 uses
  %.0100126 = phi double [ 0.000000e+00, %.lr.ph128 ], [ %i.gw, %bb.l ]
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %.0127 ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !168, !noalias !332 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fp = fneg double %i.fn
  %i.fq = fmul double %5, %i.fp
  %18 = call double @llvm.fmuladd.f64(double %i.eg, double 0.000000e+00, double %i.fq)
  %i.fr = load <2 x double>, ptr %i.fo, align 8, !tbaa !145, !noalias !332 ; 6 uses
  %19 = extractelement <2 x double> %i.fr, i64 0
  %20 = call double @llvm.fmuladd.f64(double %i.em, double %19, double %18)
  %i.fs = extractelement <2 x double> %i.fr, i64 1
  %21 = call double @llvm.fmuladd.f64(double %15, double %i.fs, double %20) ; 3 uses
  %i.ft = call double @llvm.fmuladd.f64(double %i.eg, double %i.fn, double %7)
  %i.fu = insertelement <2 x double> %i.el, double %i.ft, i64 1
  %i.fv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %i.fr, <2 x double> %i.fu)
  %22 = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %23 = insertelement <2 x double> %22, double %i.fn, i64 0
  %24 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %23, <2 x double> %i.fv) ; 2 uses
  %25 = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %26 = insertelement <2 x double> %24, double %i.ei, i64 1
  %i.fw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %25, <2 x double> %26) ; 2 uses
  %27 = extractelement <2 x double> %i.fw, i64 0  ; 2 uses
  %28 = extractelement <2 x double> %24, i64 1    ; 3 uses
  %29 = fmul double %i.eg, %28
  %30 = insertelement <2 x double> %14, double %21, i64 1
  %i.fx = insertelement <2 x double> %i.fr, double %10, i64 1
  %31 = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fy = insertelement <2 x double> %31, double %29, i64 1
  %i.fz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> %i.fx, <2 x double> %i.fy)
  %32 = insertelement <2 x double> %31, double %i.fn, i64 0
  %33 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %32, <2 x double> %i.fz) ; 2 uses
  %34 = extractelement <2 x double> %33, i64 0    ; 3 uses
  %i.ga = extractelement <2 x double> %33, i64 1
  %i.gb = call double @llvm.fmuladd.f64(double %34, double %8, double %i.ga)
  %i.gc = fmul double %i.eg, %27
  %i.gd = call double @llvm.fmuladd.f64(double %21, double %i.em, double %i.gc)
  %i.ge = call double @llvm.fmuladd.f64(double %34, double %10, double %i.gd)
  %i.gf = call double @llvm.fmuladd.f64(double %28, double %11, double %i.ge)
  %i.gg = fmul double %i.eg, %34
  %i.gh = call double @llvm.fmuladd.f64(double %21, double %15, double %i.gg)
  %i.gi = call double @llvm.fmuladd.f64(double %28, double %i.em, double %i.gh)
  %i.gj = call double @llvm.fmuladd.f64(double %27, double %5, double %i.gi)
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %.0127 ; 3 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !168, !noalias !333
  %i.gm = fsub double %i.gb, %i.gl                ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.go = load double, ptr %i.gn, align 8, !tbaa !169, !noalias !333
  %i.gp = fsub double %i.gf, %i.go                ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !167, !noalias !333
  %i.gs = fsub double %i.gj, %i.gr                ; 2 uses
  %i.gt = fmul double %i.gp, %i.gp
  %i.gu = call double @llvm.fmuladd.f64(double %i.gm, double %i.gm, double %i.gt)
  %i.gv = call noundef double @llvm.fmuladd.f64(double %i.gs, double %i.gs, double %i.gu)
  %i.gw = fadd double %.0100126, %i.gv            ; 2 uses
  %i.gx = add nuw i64 %.0127, 1                   ; 2 uses
  %exitcond146.not = icmp eq i64 %i.gx, %i.ee
  br i1 %exitcond146.not, label %._crit_edge129, label %bb.l, !llvm.loop !326

bb.m:                                             ; preds = %bb.k, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.fl, %bb.k ], [ %i.fk, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.gy = load ptr, ptr %3, align 8, !tbaa !156   ; 3 uses
  %.not.i.i.i62 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit63, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gz = load ptr, ptr %i.k, align 8, !tbaa !166
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %i.gy to i64
  %i.hc = sub i64 %i.ha, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %i.hc) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit63

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit63: ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %bb.m
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %.pn.pn, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.hd = load ptr, ptr %2, align 8, !tbaa !156   ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit65, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit63
  %i.he = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hd to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hh) #30
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit65

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit65: ; preds = %bb.o, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn43.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6colvar18CartesianBasedPath32computeDistanceToReferenceFramesERSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1704) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !140  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !141  ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24                  ; 5 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge25, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !132
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1144
  %i.l = load i64, ptr %i.k, align 8, !tbaa !139  ; 3 uses
  %.not26 = icmp eq i64 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = uitofp i64 %i.l to double                ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !152    ; 3 uses
  br i1 %.not26, label %.preheader.lr.ph.split, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us
  %.01424.us = phi i64 [ %i.av, %._crit_edge.us ], [ 0, %.preheader.lr.ph ] ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.01424.us
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !159  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !152
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1144
  %i.v = load i64, ptr %i.u, align 8, !tbaa !139  ; 2 uses
  %.idx.i.us = shl i64 %i.v, 4
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.01424.us
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !156
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %.022.us = phi i64 [ 0, %.preheader.us ], [ %i.ar, %bb.b ] ; 3 uses
  %.02021.us = phi double [ 0.000000e+00, %.preheader.us ], [ %i.aq, %bb.b ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.022.us ; 3 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !145
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.v
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !145
  %i.ac = getelementptr i8, ptr %i.y, i64 %.idx.i.us
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !145
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.022.us ; 3 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !168, !noalias !340
  %i.ag = fsub double %i.z, %i.af                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !169, !noalias !340
  %i.aj = fsub double %i.ab, %i.ai                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.al = load double, ptr %i.ak, align 8, !tbaa !167, !noalias !340
  %i.am = fsub double %i.ad, %i.al                ; 2 uses
  %i.an = fmul double %i.aj, %i.aj
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.an)
  %i.ap = tail call noundef double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.ao)
  %i.aq = fadd double %.02021.us, %i.ap           ; 2 uses
  %i.ar = add nuw i64 %.022.us, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.l
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !336

._crit_edge.us:                                   ; preds = %bb.b
  %i.as = fdiv double %i.aq, %i.o
  %i.at = tail call noundef double @sqrt(double noundef %i.as) #29
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.01424.us
  store double %i.at, ptr %i.au, align 8, !tbaa !145
  %i.av = add nuw i64 %.01424.us, 1               ; 2 uses
  %exitcond28.not = icmp eq i64 %i.av, %i.h
  br i1 %exitcond28.not, label %._crit_edge25, label %.preheader.us, !llvm.loop !337

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.aw = fdiv double 0.000000e+00, %i.o
  %i.ax = tail call noundef double @sqrt(double noundef %i.aw) #29 ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.lr.ph.split
  %n.vec = and i64 %i.h, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ax, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ay, align 8, !tbaa !145
  store <2 x double> %broadcast.splat, ptr %i.az, align 8, !tbaa !145
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !338

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge25, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split, %middle.block
  %.01424.ph = phi i64 [ 0, %.preheader.lr.ph.split ], [ %n.vec, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.01424 = phi i64 [ %i.bc, %.preheader ], [ %.01424.ph, %.preheader.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.01424
  store double %i.ax, ptr %i.bb, align 8, !tbaa !145
  %i.bc = add nuw i64 %.01424, 1                  ; 2 uses
  %exitcond30.not = icmp eq i64 %i.bc, %i.h
  br i1 %exitcond30.not, label %._crit_edge25, label %.preheader, !llvm.loop !339

._crit_edge25:                                    ; preds = %._crit_edge.us, %.preheader, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar6gspath14prepareVectorsEv(ptr noundef nonnull align 8 dereferenceable(2664) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.64", align 8    ; 11 uses
  %2 = alloca %"class.std::vector.64", align 8    ; 10 uses
  %3 = alloca %"class.std::vector.64", align 8    ; 10 uses
  %4 = alloca %"class.std::vector.64", align 8    ; 10 uses
  %5 = alloca %"class.std::vector.64", align 8    ; 11 uses
  %6 = alloca %"class.std::vector.64", align 8    ; 10 uses
  %7 = alloca %"class.std::vector.64", align 8    ; 10 uses
  %8 = alloca %"class.std::vector.64", align 8    ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1144
  %i.d = load i64, ptr %i.c, align 8, !tbaa !139  ; 15 uses
  %.not = icmp eq i64 %i.d, 0                     ; 3 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.g = load i64, ptr %i.f, align 8, !tbaa !157  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !158  ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !159  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !152  ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1144
  %i.n = load i64, ptr %i.m, align 8, !tbaa !139  ; 4 uses
  %.idx.i = shl i64 %i.n, 4                       ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !141  ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v6f64
!131 = !{!130, !47, i64 1696}
!132 = !{!130, !124, i64 1608}
!133 = !{!"_ZTSN12colvarmodule7rmatrixE", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !30, i64 56, !30, i64 64}
!134 = !{!"_ZTSN12colvarmodule8rotationE", !133, i64 0, !21, i64 72, !21, i64 200, !21, i64 232, !21, i64 360, !28, i64 488, !111, i64 496, !111, i64 528, !31, i64 560}
!135 = !{!"p1 _ZTS19rotation_derivative", !31, i64 0}
!136 = !{!"_ZTSSt12__mutex_base", !21, i64 0}
!137 = !{!"_ZTSSt5mutex", !136, i64 0}
!138 = !{!"_ZTSN12colvarmodule10atom_groupE", !86, i64 0, !98, i64 320, !56, i64 440, !28, i64 472, !56, i64 480, !124, i64 512, !134, i64 520, !28, i64 1088, !28, i64 1089, !41, i64 1096, !30, i64 1120, !30, i64 1128, !135, i64 1136, !47, i64 1144, !121, i64 1152, !41, i64 1176, !41, i64 1200, !41, i64 1224, !41, i64 1248, !41, i64 1272, !41, i64 1296, !41, i64 1320, !121, i64 1344, !121, i64 1368, !121, i64 1392, !110, i64 1416, !22, i64 1440, !41, i64 1448, !41, i64 1472, !47, i64 1496, !110, i64 1504, !110, i64 1528, !110, i64 1552, !41, i64 1576, !110, i64 1600, !110, i64 1624, !110, i64 1648, !137, i64 1672}
!139 = !{!138, !47, i64 1144}
!140 = !{!126, !125, i64 8}
!141 = !{!126, !125, i64 0}
!142 = !{!122, !109, i64 0}
!143 = !{!109, !109, i64 0}
!144 = !{!122, !30, i64 8}
!145 = !{!30, !30, i64 0}
!146 = !{i64 0, i64 8, !145, i64 8, i64 8, !145, i64 16, i64 8, !145}
!147 = !{i64 0, i64 8, !145, i64 8, i64 8, !145, i64 16, i64 8, !145, i64 24, i64 8, !145}
!148 = !{!118, !117, i64 0}
!149 = !{!118, !117, i64 16}
!150 = !{!113, !31, i64 0}
!151 = !{!113, !31, i64 16}
!152 = !{!38, !37, i64 0}
!153 = !{!38, !37, i64 8}
!154 = !{!38, !37, i64 16}
!155 = !{!48, !47, i64 368}
!156 = !{!33, !32, i64 0}
!157 = !{!48, !47, i64 344}
!158 = !{!100, !99, i64 0}
!159 = !{!124, !124, i64 0}
!160 = !{!48, !47, i64 352}
!161 = !{!48, !30, i64 376}
!162 = !{!"llvm.loop.mustprogress"}
!163 = !{!"llvm.loop.isvectorized", i32 1}
!164 = !{!"llvm.loop.unroll.runtime.disable"}
!165 = !{!33, !32, i64 8}
!166 = !{!33, !32, i64 16}
!167 = !{!110, !30, i64 16}
!168 = !{!110, !30, i64 0}
!169 = !{!110, !30, i64 8}
!170 = !{!48, !47, i64 360}
!171 = !{!130, !28, i64 1616}
!172 = !{ptr @_ZN6colvar6gspathD0Ev, ptr @_ZN6colvar6gspathD2Ev}
!173 = !{ptr @_ZN6colvar6gspathD0Ev}
!174 = !{!43, !42, i64 8}
!175 = !{!43, !42, i64 0}
!176 = !{!48, !28, i64 338}
!177 = !{!48, !30, i64 384}
!178 = !{!42, !42, i64 0}
!179 = !{!48, !30, i64 40}
!180 = !{!48, !30, i64 24}
!181 = !{ptr @_ZN6colvar6gzpathD2Ev}
!182 = !{!"_ZTSN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE1EEE", !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !30, i64 56, !30, i64 64, !30, i64 72, !30, i64 80, !30, i64 88, !36, i64 96, !36, i64 120, !36, i64 144, !36, i64 168, !36, i64 192, !36, i64 216, !36, i64 240, !36, i64 264, !41, i64 288, !46, i64 312, !28, i64 336, !28, i64 337, !28, i64 338, !47, i64 344, !47, i64 352, !47, i64 360, !47, i64 368, !30, i64 376, !30, i64 384}
!183 = !{!182, !28, i64 336}
!184 = !{!182, !28, i64 337}
!185 = !{!182, !47, i64 344}
!186 = !{!182, !47, i64 352}
!187 = !{!182, !47, i64 360}
!188 = !{!182, !30, i64 376}
!189 = !{!"llvm.loop.unroll.disable"}
!190 = !{ptr @_ZN6colvar6gzpathD0Ev, ptr @_ZN6colvar6gzpathD2Ev}
!191 = !{ptr @_ZN6colvar6gzpathD0Ev}
!192 = !{!182, !47, i64 368}
!193 = !{!182, !28, i64 338}
!194 = !{!182, !30, i64 384}
!195 = !{!182, !30, i64 56}
!196 = !{!182, !30, i64 80}
!197 = !{!126, !125, i64 16}
!198 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!199 = !{!32, !32, i64 0}
!200 = !{!100, !99, i64 8}
!201 = !{!100, !99, i64 16}
!202 = !{!"p2 _ZTSN6colvar3cvcE", !92, i64 0}
!203 = !{!202, !202, i64 0}
!204 = !{!"p1 _ZTSN6colvar3cvcE", !31, i64 0}
!205 = !{!204, !204, i64 0}
!206 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!207 = !{!105, !104, i64 0}
!208 = !{!105, !104, i64 16}
!209 = !{!"_ZTSNSt12_Vector_baseIPN6colvar3cvcESaIS2_EE17_Vector_impl_dataE", !202, i64 0, !202, i64 8, !202, i64 16}
!210 = !{!209, !202, i64 8}
!211 = !{!209, !202, i64 16}
!212 = !{!209, !202, i64 0}
!213 = !{!99, !99, i64 0}
!214 = !{!"p1 _ZTS11colvarvalue", !31, i64 0}
!215 = !{!"_ZTSNSt12_Vector_baseI11colvarvalueSaIS0_EE17_Vector_impl_dataE", !214, i64 0, !214, i64 8, !214, i64 16}
!216 = !{!215, !214, i64 8}
!217 = !{!215, !214, i64 16}
!218 = !{!"_ZTSNSt12_Vector_baseIPN6colvar3cvcESaIS2_EE12_Vector_implE", !209, i64 0}
!219 = !{!"_ZTSSt12_Vector_baseIPN6colvar3cvcESaIS2_EE", !218, i64 0}
!220 = !{!"_ZTSSt6vectorIPN6colvar3cvcESaIS2_EE", !219, i64 0}
!221 = !{!"p1 _ZTSSt6vectorI11colvarvalueSaIS0_EE", !31, i64 0}
!222 = !{!"_ZTSNSt12_Vector_baseISt6vectorI11colvarvalueSaIS1_EESaIS3_EE17_Vector_impl_dataE", !221, i64 0, !221, i64 8, !221, i64 16}
!223 = !{!"_ZTSNSt12_Vector_baseISt6vectorI11colvarvalueSaIS1_EESaIS3_EE12_Vector_implE", !222, i64 0}
!224 = !{!"_ZTSSt12_Vector_baseISt6vectorI11colvarvalueSaIS1_EESaIS3_EE", !223, i64 0}
!225 = !{!"_ZTSSt6vectorIS_I11colvarvalueSaIS0_EESaIS2_EE", !224, i64 0}
!226 = !{!"_ZTSN6colvar11CVBasedPathE", !123, i64 0, !220, i64 1608, !225, i64 1632, !28, i64 1656, !47, i64 1664}
!227 = !{!226, !47, i64 1664}
!228 = !{!215, !214, i64 0}
!229 = !{!105, !104, i64 8}
!230 = !{!222, !221, i64 8}
!231 = !{!222, !221, i64 16}
!232 = !{!88, !87, i64 0}
!233 = !{!"_ZTSN10colvardeps13feature_stateE", !28, i64 0, !28, i64 1, !22, i64 4, !121, i64 8}
!234 = !{!233, !28, i64 1}
!235 = !{!222, !221, i64 0}
!236 = !{!123, !30, i64 504}
!237 = !{!123, !22, i64 512}
!238 = !{!"_ZTSNSt12_Vector_baseI11colvarvalueSaIS0_EE12_Vector_implE", !215, i64 0}
!239 = !{!"_ZTSSt12_Vector_baseI11colvarvalueSaIS0_EE", !238, i64 0}
!240 = !{!"_ZTSSt6vectorI11colvarvalueSaIS0_EE", !239, i64 0}
!241 = !{!"_ZTSN15GeometricPathCV17GeometricPathBaseI11colvarvaluedLNS_7path_szE0EEE", !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !30, i64 56, !30, i64 64, !30, i64 72, !30, i64 80, !30, i64 88, !240, i64 96, !240, i64 120, !240, i64 144, !240, i64 168, !240, i64 192, !240, i64 216, !240, i64 240, !240, i64 264, !41, i64 288, !46, i64 312, !28, i64 336, !28, i64 337, !28, i64 338, !47, i64 344, !47, i64 352, !47, i64 360, !47, i64 368, !30, i64 376, !30, i64 384}
!242 = !{!241, !28, i64 336}
!243 = !{!241, !28, i64 337}
!244 = !{!241, !47, i64 368}
!245 = !{!241, !30, i64 376}
!246 = !{!241, !47, i64 360}
!247 = !{!241, !47, i64 344}
!248 = !{!241, !47, i64 352}
!249 = !{!241, !28, i64 338}
!250 = !{!241, !30, i64 384}
!251 = !{!241, !30, i64 40}
!252 = !{!241, !30, i64 24}
!253 = !{!241, !30, i64 8}
!254 = !{!241, !30, i64 16}
!255 = !{!"_ZTSN15GeometricPathCV17GeometricPathBaseI11colvarvaluedLNS_7path_szE1EEE", !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !30, i64 56, !30, i64 64, !30, i64 72, !30, i64 80, !30, i64 88, !240, i64 96, !240, i64 120, !240, i64 144, !240, i64 168, !240, i64 192, !240, i64 216, !240, i64 240, !240, i64 264, !41, i64 288, !46, i64 312, !28, i64 336, !28, i64 337, !28, i64 338, !47, i64 344, !47, i64 352, !47, i64 360, !47, i64 368, !30, i64 376, !30, i64 384}
!256 = !{!255, !30, i64 376}
!257 = !{!255, !30, i64 384}
!258 = !{!255, !28, i64 336}
!259 = !{!255, !28, i64 337}
!260 = !{!255, !47, i64 360}
!261 = !{!255, !47, i64 344}
!262 = !{!255, !47, i64 352}
!263 = !{!255, !47, i64 368}
!264 = !{!255, !28, i64 338}
!265 = !{!255, !30, i64 40}
!266 = !{!255, !30, i64 24}
!267 = !{!255, !30, i64 8}
!268 = !{!255, !30, i64 16}
!269 = !{!255, !30, i64 56}
!270 = !{!255, !30, i64 80}
!271 = !{!255, !30, i64 32}
!272 = !{!43, !42, i64 16}
!273 = !{!214, !214, i64 0}
!274 = distinct !{!274, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!275 = distinct !{!275, !274, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!276 = distinct !{!276, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!277 = distinct !{!277, !276, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!278 = distinct !{!278, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!279 = distinct !{!279, !278, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!280 = distinct !{!280, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!281 = distinct !{!281, !280, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!282 = !{!275}
!283 = !{!277}
!284 = !{!279}
!285 = !{!281}
!286 = distinct !{!286, i1 false, !"LVerDomain"}
!287 = distinct !{!287, !286}
!288 = distinct !{!288, !286}
!289 = distinct !{!289, !286}
!290 = distinct !{!290, !286}
!291 = distinct !{!291, !286}
!292 = distinct !{!292, !286}
!293 = distinct !{!293, !286}
!294 = distinct !{!294, !286}
!295 = distinct !{!295, !286}
!296 = distinct !{!296, !162, !163, !164}
!297 = distinct !{!297, !162, !163}
!298 = !{!287}
!299 = !{!288}
!300 = !{!289}
!301 = !{!290}
!302 = !{!295, !294, !293, !292, !291, !288, !287, !289}
!303 = !{!295}
!304 = !{!294, !293, !292, !291, !288, !287, !289}
!305 = !{!294}
!306 = !{!293, !292, !291, !288, !287, !289}
!307 = !{!293}
!308 = !{!292, !291, !288, !287, !289}
!309 = !{!292}
!310 = !{!291, !288, !287, !289}
!311 = !{!291}
!312 = !{!288, !287, !289}
!313 = distinct !{!313, !162}
!314 = distinct !{!314, i1 false, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!315 = distinct !{!315, !314, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!316 = distinct !{!316, i1 false, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!317 = distinct !{!317, !316, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!318 = distinct !{!318, !162}
!319 = distinct !{!319, i1 false, !"_ZNK12colvarmodule10quaternion6rotateERKNS_7rvectorE"}
!320 = distinct !{!320, !319, !"_ZNK12colvarmodule10quaternion6rotateERKNS_7rvectorE: argument 0"}
!321 = distinct !{!321, i1 false, !"_ZmlRKN12colvarmodule10quaternionES2_"}
!322 = distinct !{!322, !321, !"_ZmlRKN12colvarmodule10quaternionES2_: argument 0"}
!323 = distinct !{!323, !162}
!324 = distinct !{!324, i1 false, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!325 = distinct !{!325, !324, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!326 = distinct !{!326, !162}
!327 = !{!315}
!328 = !{!317}
!329 = !{!111, !30, i64 0}
!330 = !{!322, !320}
!331 = !{!111, !30, i64 8}
!332 = !{!320}
!333 = !{!325}
!334 = distinct !{!334, i1 false, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!335 = distinct !{!335, !334, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!336 = distinct !{!336, !162}
!337 = distinct !{!337, !162}
!338 = distinct !{!338, !162, !163, !164}
!339 = distinct !{!339, !162, !164, !163}
!340 = !{!335}
!341 = distinct !{!341, i1 false, !"LVerDomain"}
!342 = distinct !{!342, !341}
!343 = distinct !{!343, !341}
!344 = distinct !{!344, !341}
!345 = distinct !{!345, !341}
!346 = distinct !{!346, i1 false, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!347 = distinct !{!347, !346, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!348 = distinct !{!348, !341}
!349 = distinct !{!349, !341}
!350 = distinct !{!350, !341}
!351 = distinct !{!351, !341}
!352 = distinct !{!352, !341}
!353 = distinct !{!353, !341}
!354 = distinct !{!354, i1 false, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!355 = distinct !{!355, !354, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!356 = distinct !{!356, !162, !163, !164}
!357 = distinct !{!357, !162, !163}
!358 = distinct !{!358, !162}
!359 = distinct !{!359, i1 false, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!360 = distinct !{!360, !359, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!361 = distinct !{!361, i1 false, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!362 = distinct !{!362, !361, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!363 = distinct !{!363, !162}
!364 = distinct !{!364, !162}
!365 = distinct !{!365, i1 false, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!366 = distinct !{!366, !365, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!367 = distinct !{!367, i1 false, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!368 = distinct !{!368, !367, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!369 = distinct !{!369, !162}
!370 = distinct !{!370, i1 false, !"_ZNK12colvarmodule8rotation6matrixEv"}
!371 = distinct !{!371, !370, !"_ZNK12colvarmodule8rotation6matrixEv: argument 0"}
!372 = distinct !{!372, i1 false, !"_ZNK12colvarmodule10quaternion15rotation_matrixEv"}
!373 = distinct !{!373, !372, !"_ZNK12colvarmodule10quaternion15rotation_matrixEv: argument 0"}
!374 = distinct !{!374, i1 false, !"LVerDomain"}
!375 = distinct !{!375, !374}
!376 = distinct !{!376, i1 false, !"_ZmlRKN12colvarmodule7rmatrixERKNS_7rvectorE"}
!377 = distinct !{!377, !376, !"_ZmlRKN12colvarmodule7rmatrixERKNS_7rvectorE: argument 0"}
!378 = distinct !{!378, !374}
!379 = distinct !{!379, i1 false, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!380 = distinct !{!380, !379, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!381 = distinct !{!381, !374}
!382 = distinct !{!382, !162, !163, !164}
!383 = distinct !{!383, !162, !163}
!384 = distinct !{!384, !162}
!385 = distinct !{!385, i1 false, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!386 = distinct !{!386, !385, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!387 = distinct !{!387, i1 false, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!388 = distinct !{!388, !387, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!389 = distinct !{!389, !162}
!390 = distinct !{!390, !162}
!391 = distinct !{!391, i1 false, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!392 = distinct !{!392, !391, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!393 = distinct !{!393, i1 false, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!394 = distinct !{!394, !393, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!395 = distinct !{!395, !162}
!396 = distinct !{!396, i1 false, !"_ZNK12colvarmodule8rotation6matrixEv"}
!397 = distinct !{!397, !396, !"_ZNK12colvarmodule8rotation6matrixEv: argument 0"}
!398 = distinct !{!398, i1 false, !"_ZNK12colvarmodule10quaternion15rotation_matrixEv"}
!399 = distinct !{!399, !398, !"_ZNK12colvarmodule10quaternion15rotation_matrixEv: argument 0"}
!400 = distinct !{!400, i1 false, !"LVerDomain"}
!401 = distinct !{!401, !400}
!402 = distinct !{!402, i1 false, !"_ZmlRKN12colvarmodule7rmatrixERKNS_7rvectorE"}
!403 = distinct !{!403, !402, !"_ZmlRKN12colvarmodule7rmatrixERKNS_7rvectorE: argument 0"}
!404 = distinct !{!404, !400}
!405 = distinct !{!405, i1 false, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!406 = distinct !{!406, !405, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!407 = distinct !{!407, !400}
!408 = distinct !{!408, !162, !163, !164}
!409 = distinct !{!409, !162, !163}
!410 = !{!342}
!411 = !{!343}
!412 = !{!344}
!413 = !{!345}
!414 = !{!347}
!415 = !{!348}
!416 = !{!353, !344, !343, !342, !345, !352, !351, !350, !349}
!417 = !{!350}
!418 = !{!351}
!419 = !{!352}
!420 = !{!349}
!421 = !{!355}
!422 = !{!353}
!423 = !{!344, !343, !342, !345, !352, !351, !350, !349}
!424 = !{!360}
!425 = !{!362}
!426 = !{!366}
!427 = !{!368}
!428 = !{!373, !371}
!429 = !{!375}
!430 = !{!377}
!431 = !{!378}
!432 = !{!380}
!433 = !{!381}
!434 = !{!375, !378}
!435 = !{!386}
!436 = !{!388}
!437 = !{!392}
!438 = !{!394}
!439 = !{!399, !397}
!440 = !{!401}
!441 = !{!403}
!442 = !{!404}
!443 = !{!406}
!444 = !{!407}
!445 = !{!401, !404}
!446 = distinct !{!446, !162, !163, !164}
!447 = distinct !{!447, !162, !164, !163}
!448 = distinct !{!448, !162, !163, !164}
!449 = distinct !{!449, !162, !164, !163}
!450 = !{ptr @_ZN6colvar6gspath31updateDistanceToReferenceFramesEv}
!451 = distinct !{!451, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!452 = distinct !{!452, !451, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!453 = distinct !{!453, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!454 = distinct !{!454, !453, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!455 = distinct !{!455, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!456 = distinct !{!456, !455, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!457 = distinct !{!457, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!458 = distinct !{!458, !457, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!459 = distinct !{!459, !162}
!460 = !{!452}
!461 = !{!454}
!462 = !{!456}
!463 = !{!458}
!464 = distinct !{!464, !162}
!465 = !{!48, !30, i64 56}
!466 = !{!48, !30, i64 72}
!467 = distinct !{!467, i1 false, !"LVerDomain"}
!468 = distinct !{!468, !467}
!469 = distinct !{!469, !467}
!470 = distinct !{!470, i1 false, !"_ZmldRKN12colvarmodule7rvectorE"}
!471 = distinct !{!471, !470, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!472 = distinct !{!472, !467}
!473 = distinct !{!473, i1 false, !"_ZmldRKN12colvarmodule7rvectorE"}
!474 = distinct !{!474, !473, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!475 = distinct !{!475, !467}
!476 = distinct !{!476, !467}
!477 = distinct !{!477, !467}
!478 = distinct !{!478, i1 false, !"_ZmldRKN12colvarmodule7rvectorE"}
!479 = distinct !{!479, !478, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!480 = distinct !{!480, !162, !163, !164}
!481 = distinct !{!481, !162, !163}
!482 = !{!48, !30, i64 8}
!483 = !{!48, !30, i64 16}
!484 = !{!468}
!485 = !{!469}
!486 = !{!471}
!487 = !{!472}
!488 = !{!474}
!489 = !{!475}
!490 = !{!477, !468, !469, !472, !476}
!491 = !{!476}
!492 = !{!479}
!493 = !{!477}
!494 = !{!468, !469, !472, !476}
!495 = distinct !{!495, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!496 = distinct !{!496, !495, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!497 = distinct !{!497, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!498 = distinct !{!498, !497, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!499 = distinct !{!499, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!500 = distinct !{!500, !499, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!501 = distinct !{!501, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!502 = distinct !{!502, !501, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!503 = !{!496}
!504 = !{!498}
!505 = !{!500}
!506 = !{!502}
!507 = distinct !{!507, i1 false, !"LVerDomain"}
!508 = distinct !{!508, !507}
!509 = distinct !{!509, i1 false, !"_ZmldRKN12colvarmodule7rvectorE"}
!510 = distinct !{!510, !509, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!511 = distinct !{!511, !507}
!512 = distinct !{!512, !507}
!513 = distinct !{!513, !507}
!514 = distinct !{!514, !507}
!515 = distinct !{!515, !507}
!516 = distinct !{!516, !507}
!517 = distinct !{!517, !507}
!518 = distinct !{!518, !162, !163, !164}
!519 = distinct !{!519, !162, !163}
!520 = !{!508}
!521 = !{!510}
!522 = !{!511}
!523 = !{!512}
!524 = !{!517, !516, !515, !514, !513, !508, !511}
!525 = !{!517}
!526 = !{!516, !515, !514, !513, !508, !511}
!527 = !{!516}
!528 = !{!515, !514, !513, !508, !511}
!529 = !{!515}
!530 = !{!514, !513, !508, !511}
!531 = !{!514}
end_hunk_1
