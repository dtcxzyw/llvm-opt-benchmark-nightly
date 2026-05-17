inline.NumInlined: 54764
inline.NumDeleted: 11386
begin_hunk_0_@_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_:bb.a
bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load double, ptr %4, align 8, !tbaa !183 ; 2 uses
  %i.b = load double, ptr %3, align 8, !tbaa !183 ; 6 uses
  %i.c = fsub double %i.a, %i.b                   ; 4 uses
  %i.d = load double, ptr %1, align 8, !tbaa !183 ; 12 uses
  %i.e = load double, ptr %0, align 8, !tbaa !183 ; 15 uses
  %i.f = fsub double %i.d, %i.e                   ; 5 uses
  %i.g = tail call double @llvm.fabs.f64(double %i.f)
  %i.h = fcmp olt double %i.g, 1.000000e+00
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = fmul nnan double %i.f, f0x7FEFFFFFFFFFFFFF
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %i.k = tail call double @llvm.fabs.f64(double %i.c)
  %i.l = fcmp ugt double %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = fdiv double %i.c, %i.f
  br label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit

_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi double [ %i.m, %bb.c ], [ f0x7FEFFFFFFFFFFFFF, %bb.b ] ; 3 uses
  %i.n = load double, ptr %5, align 8, !tbaa !183
  %i.o = fsub double %i.n, %i.a                   ; 2 uses
  %i.p = load double, ptr %2, align 8, !tbaa !183 ; 2 uses
  %i.q = fsub double %i.p, %i.d                   ; 3 uses
  %i.r = tail call double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp olt double %i.r, 1.000000e+00
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit
  %i.t = fmul nnan double %i.q, f0x7FEFFFFFFFFFFFFF
  %i.u = tail call double @llvm.fabs.f64(double %i.t)
  %i.v = tail call double @llvm.fabs.f64(double %i.o)
  %i.w = fcmp ugt double %i.u, %i.v
  br i1 %i.w, label %bb.e, label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit47

bb.e:                                             ; preds = %bb.d, %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit
  %i.x = fdiv double %i.o, %i.q
  br label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit47

_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit47: ; preds = %bb.d, %bb.e
  %.0.i46 = phi double [ %i.x, %bb.e ], [ f0x7FEFFFFFFFFFFFFF, %bb.d ]
  %i.y = fsub double %.0.i46, %.0.i               ; 2 uses
  %i.z = fsub double %i.p, %i.e                   ; 3 uses
  %i.aa = tail call double @llvm.fabs.f64(double %i.z)
  %i.ab = fcmp olt double %i.aa, 1.000000e+00
  br i1 %i.ab, label %bb.f, label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49

bb.f:                                             ; preds = %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit47
  %i.ac = fmul nnan double %i.z, f0x7FEFFFFFFFFFFFFF
  %i.ad = tail call double @llvm.fabs.f64(double %i.ac)
  %i.ae = tail call double @llvm.fabs.f64(double %i.y)
  %i.af = fcmp ugt double %i.ad, %i.ae
  br i1 %i.af, label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49, label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49.thread

_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49: ; preds = %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit47, %bb.f
  %i.ag = fdiv double %i.y, %i.z                  ; 4 uses
  %i.ah = fcmp oeq double %i.ag, 0.000000e+00
  br i1 %i.ah, label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49.thread, label %bb.i

_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49.thread: ; preds = %bb.f, %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49
  %i.ai = fdiv double %i.b, %i.c
  %i.aj = fmul double %i.ai, %i.f
  %i.ak = fsub double %i.e, %i.aj                 ; 3 uses
  %i.al = tail call double @llvm.fabs.f64(double %i.e)
  %i.am = fmul double %i.al, f0x3CD4000000000000
  %i.an = fadd double %i.e, %i.am
  %i.ao = fcmp ugt double %i.ak, %i.an
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49.thread
  %i.ap = tail call double @llvm.fabs.f64(double %i.d)
  %i.aq = fmul double %i.ap, f0x3CD4000000000000
  %i.ar = fsub double %i.d, %i.aq
  %i.as = fcmp ult double %i.ak, %i.ar
  br i1 %i.as, label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49.thread
  %i.at = fadd double %i.d, %i.e
  %i.au = fmul double %i.at, 5.000000e-01
  br label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit

bb.i:                                             ; preds = %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49
  %i.av = bitcast double %i.ag to i64
  %i.aw = fcmp oeq double %i.b, 0.000000e+00
  %i.ax = bitcast double %i.b to i64
  %.not.i51 = icmp sgt i64 %i.ax, -1
  %i.ay = select i1 %.not.i51, i32 1, i32 -1
  %i.az = select i1 %i.aw, i32 0, i32 %i.ay       ; 2 uses
  %i.ba = sub nsw i32 0, %i.az
  %.not.i58 = icmp slt i64 %i.av, 0
  %i.bb = select i1 %.not.i58, i32 %i.ba, i32 %i.az
  %i.bc = icmp sgt i32 %i.bb, 0
  %.043 = select i1 %i.bc, double %i.e, double %i.d ; 2 uses
  %.not60 = icmp eq i32 %6, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.bd = add i32 %6, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bd, i32 2)
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit53, %bb.i
  %.1.lcssa = phi double [ %.043, %bb.i ], [ %i.ca, %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit53 ] ; 3 uses
  %i.be = fcmp ugt double %.1.lcssa, %i.e
  %i.bf = fcmp ult double %.1.lcssa, %i.d
  %or.cond = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond, label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit, label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit53
  %.062 = phi i32 [ %i.cb, %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit53 ], [ 1, %.lr.ph.preheader ]
  %.161 = phi double [ %i.ca, %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit53 ], [ %.043, %.lr.ph.preheader ] ; 5 uses
  %i.bg = fsub double %.161, %i.d
  %i.bh = fmul double %i.ag, %i.bg
  %i.bi = fadd double %.0.i, %i.bh
  %i.bj = fsub double %.161, %i.e
  %i.bk = fmul double %i.bj, %i.bi
  %i.bl = fadd double %i.b, %i.bk                 ; 2 uses
  %i.bm = fmul double %.161, 2.000000e+00
  %i.bn = fsub double %i.bm, %i.e
  %i.bo = fsub double %i.bn, %i.d
  %i.bp = fmul double %i.ag, %i.bo
  %i.bq = fadd double %.0.i, %i.bp                ; 3 uses
  %i.br = tail call double @llvm.fabs.f64(double %i.bq)
  %i.bs = fcmp olt double %i.br, 1.000000e+00
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.bt = fadd double %.161, 1.000000e+00
  %i.bu = fsub double %i.bt, %i.e
  %i.bv = fmul nnan double %i.bq, f0x7FEFFFFFFFFFFFFF
  %i.bw = tail call double @llvm.fabs.f64(double %i.bv)
  %i.bx = tail call double @llvm.fabs.f64(double %i.bl)
  %i.by = fcmp ugt double %i.bw, %i.bx
  br i1 %i.by, label %bb.k, label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit53

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %i.bz = fdiv double %i.bl, %i.bq
  br label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit53

_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit53: ; preds = %bb.j, %bb.k
  %.0.i52 = phi double [ %i.bz, %bb.k ], [ %i.bu, %bb.j ]
  %i.ca = fsub double %.161, %.0.i52              ; 2 uses
  %i.cb = add nuw i32 %.062, 1                    ; 2 uses
  %exitcond = icmp eq i32 %i.cb, %umax
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !22041

bb.l:                                             ; preds = %._crit_edge
  %i.cc = fdiv double %i.b, %i.c
  %i.cd = fmul double %i.cc, %i.f
  %i.ce = fsub double %i.e, %i.cd                 ; 3 uses
  %i.cf = tail call double @llvm.fabs.f64(double %i.e)
  %i.cg = fmul double %i.cf, f0x3CD4000000000000
  %i.ch = fadd double %i.e, %i.cg
  %i.ci = fcmp ugt double %i.ce, %i.ch
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cj = tail call double @llvm.fabs.f64(double %i.d)
  %i.ck = fmul double %i.cj, f0x3CD4000000000000
  %i.cl = fsub double %i.d, %i.ck
  %i.cm = fcmp ult double %i.ce, %i.cl
  br i1 %i.cm, label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cn = fadd double %i.d, %i.e
  %i.co = fmul double %i.cn, 5.000000e-01
  br label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit

_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit: ; preds = %bb.n, %bb.m, %bb.h, %bb.g, %._crit_edge
  %.044 = phi double [ %.1.lcssa, %._crit_edge ], [ %i.ak, %bb.g ], [ %i.au, %bb.h ], [ %i.co, %bb.n ], [ %i.ce, %bb.m ]
  ret double %.044
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN5boost4math5tools6detail17cubic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !183 ; 2 uses
  %i.b = load double, ptr %3, align 8, !tbaa !183
  %i.c = fsub double %i.a, %i.b
  %i.d = load double, ptr %6, align 8, !tbaa !183 ; 6 uses
  %i.e = fmul double %i.c, %i.d
  %i.f = load double, ptr %7, align 8, !tbaa !183 ; 3 uses
  %i.g = fsub double %i.f, %i.d
  %i.h = fdiv double %i.e, %i.g
  %i.i = load double, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.j = fsub double %i.i, %i.a                   ; 2 uses
  %i.k = load double, ptr %5, align 8, !tbaa !183 ; 6 uses
  %i.l = fmul double %i.j, %i.k
  %i.m = fsub double %i.d, %i.k                   ; 2 uses
  %i.n = fdiv double %i.l, %i.m
  %i.o = load double, ptr %0, align 8, !tbaa !183 ; 3 uses
  %8 = fsub double %i.o, %i.i                     ; 2 uses
  %9 = load double, ptr %4, align 8, !tbaa !183   ; 6 uses
  %i.p = fmul double %8, %9
  %i.q = fsub double %i.k, %9                     ; 2 uses
  %i.r = fdiv double %i.p, %i.q
  %i.s = fmul double %i.d, %i.j
  %i.t = fdiv double %i.s, %i.m
  %i.u = fmul double %i.k, %8
  %i.v = fdiv double %i.u, %i.q
  %i.w = fsub double %i.t, %i.h
  %i.x = fmul double %i.k, %i.w
  %i.y = fsub double %i.f, %i.k
  %10 = fdiv double %i.x, %i.y
  %11 = fsub double %i.v, %i.n                    ; 2 uses
  %12 = fmul double %9, %11
  %13 = fsub double %i.d, %9                      ; 2 uses
  %14 = fdiv double %12, %13
  %15 = fmul double %i.d, %11
  %16 = fdiv double %15, %13
  %17 = fsub double %16, %10
  %18 = fmul double %9, %17
  %19 = fsub double %i.f, %9
  %20 = fdiv double %18, %19
  %21 = fadd double %i.r, %14
  %22 = fadd double %21, %20
  %i.z = fadd double %i.o, %22                    ; 3 uses
  %i.aa = fcmp ugt double %i.z, %i.o
  %i.ab = fcmp ult double %i.z, %i.i
  %or.cond = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = tail call noundef double @_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.ac, %bb.b ], [ %i.z, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { double, double } @_ZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_10equal_ceilES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_(ptr noundef byval(%"struct.boost::math::detail::distribution_quantile_finder") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"struct.boost::math::complemented2_type", align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 9 uses
  %8 = alloca %"struct.boost::math::detail::distribution_quantile_finder", align 8 ; 8 uses
  %9 = alloca %"struct.boost::math::complemented2_type", align 8 ; 5 uses
  %i.b = alloca double, align 8                   ; 9 uses
  %10 = alloca %"struct.boost::math::detail::distribution_quantile_finder", align 8 ; 8 uses
  %11 = alloca %"struct.boost::math::complemented2_type", align 8 ; 5 uses
  %i.c = alloca double, align 8                   ; 9 uses
  %12 = alloca %"struct.boost::math::detail::distribution_quantile_finder", align 8 ; 8 uses
  %13 = alloca %"struct.boost::math::complemented2_type", align 8 ; 5 uses
  %i.d = alloca double, align 8                   ; 9 uses
  %14 = alloca %"struct.boost::math::detail::distribution_quantile_finder", align 8 ; 9 uses
  %i.e = alloca double, align 8                   ; 33 uses
  %i.f = alloca double, align 8                   ; 27 uses
  %i.g = alloca double, align 8                   ; 20 uses
  %i.h = alloca double, align 8                   ; 22 uses
  %i.i = alloca double, align 8                   ; 19 uses
  %i.j = alloca double, align 8                   ; 17 uses
  %i.k = alloca double, align 8                   ; 9 uses
  %i.l = alloca double, align 8                   ; 11 uses
  %i.m = load i64, ptr %5, align 8, !tbaa !258    ; 4 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load double, ptr %1, align 8, !tbaa !183
  %i.p = load double, ptr %2, align 8, !tbaa !183
  %.fca.0.insert.i = insertvalue { double, double } poison, double %i.o, 0
  %.fca.1.insert.i = insertvalue { double, double } %.fca.0.insert.i, double %i.p, 1
  br label %bb.ca

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #41
  %i.q = load double, ptr %1, align 8, !tbaa !183 ; 13 uses
  store double %i.q, ptr %i.e, align 8, !tbaa !183
  %i.r = load double, ptr %2, align 8, !tbaa !183 ; 11 uses
  store double %i.r, ptr %i.f, align 8, !tbaa !183
  %i.s = fcmp ult double %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr @_ZZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_10equal_ceilES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_E8function, align 8, !tbaa !884
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef %i.t, ptr noundef nonnull @.str.422, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.bz

bb.e:                                             ; preds = %bb.c
  %i.u = load double, ptr %3, align 8, !tbaa !183 ; 5 uses
  store double %i.u, ptr %i.g, align 8, !tbaa !183
  %i.v = load double, ptr %4, align 8, !tbaa !183 ; 4 uses
  store double %i.v, ptr %i.h, align 8, !tbaa !183
  %i.w = tail call double @llvm.ceil.f64(double %i.q)
  %i.x = tail call double @llvm.ceil.f64(double %i.r)
  %i.y = fcmp oeq double %i.w, %i.x
  %i.z = fcmp oeq double %i.u, 0.000000e+00       ; 3 uses
  %or.cond = select i1 %i.y, i1 true, i1 %i.z
  %i.aa = fcmp oeq double %i.v, 0.000000e+00      ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.aa
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %5, align 8, !tbaa !258
  %.not = xor i1 %i.aa, true
  %brmerge = select i1 %i.z, i1 true, i1 %.not
  %i.ab = select i1 %i.z, double %i.q, double %i.r
  %i.ac = select i1 %brmerge, double %i.q, double %i.r
  %.fca.0.insert.i80 = insertvalue { double, double } poison, double %i.ac, 0
  %.fca.1.insert.i81 = insertvalue { double, double } %.fca.0.insert.i80, double %i.ab, 1
  br label %bb.bz

bb.g:                                             ; preds = %bb.e
  %i.ad = bitcast double %i.u to i64
  %i.ae = bitcast double %i.v to i64
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = icmp sgt i64 %i.af, -1
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr @_ZZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_10equal_ceilES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_E8function, align 8, !tbaa !884
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef %i.ah, ptr noundef nonnull @.str.423, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.bz

bb.i:                                             ; preds = %bb.g
  store double 1.000000e+05, ptr %i.j, align 8, !tbaa !183
  store double 1.000000e+05, ptr %i.k, align 8, !tbaa !183
  store double 1.000000e+05, ptr %i.l, align 8, !tbaa !183
  %i.ai = fsub double %i.v, %i.u
  %i.aj = fdiv double %i.u, %i.ai
  %i.ak = fsub double %i.r, %i.q                  ; 3 uses
  %i.al = fmul double %i.ak, %i.aj
  %i.am = fsub double %i.q, %i.al                 ; 3 uses
  %i.an = tail call double @llvm.fabs.f64(double %i.q) ; 2 uses
  %i.ao = fmul double %i.an, f0x3CD4000000000000
  %i.ap = fadd double %i.q, %i.ao
  %i.aq = fcmp ugt double %i.am, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call double @llvm.fabs.f64(double %i.r)
  %i.as = fmul double %i.ar, f0x3CD4000000000000
  %i.at = fsub double %i.r, %i.as
  %i.au = fcmp ult double %i.am, %i.at
  br i1 %i.au, label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.av = fadd double %i.q, %i.r
  %i.aw = fmul double %i.av, 5.000000e-01
  br label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit

_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit: ; preds = %bb.j, %bb.k
  %.0.i = phi double [ %i.aw, %bb.k ], [ %i.am, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %.0.i, ptr %i.d, align 8, !tbaa !183
  %i.ax = fmul double %i.q, f0x3CD0000000000000
  %i.ay = fcmp olt double %i.ak, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit
  %i.az = fmul double %i.ak, 5.000000e-01
  %i.ba = fadd double %i.q, %i.az
  br label %.sink.split.i

bb.m:                                             ; preds = %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit
  %i.bb = fmul double %i.an, f0x3CC0000000000000
  %i.bc = fadd double %i.q, %i.bb                 ; 2 uses
  %i.bd = fcmp ugt double %.0.i, %i.bc
  br i1 %i.bd, label %bb.n, label %.sink.split.i

bb.n:                                             ; preds = %bb.m
  %i.be = tail call double @llvm.fabs.f64(double %i.r)
  %i.bf = fmul double %i.be, f0x3CC0000000000000
  %i.bg = fsub double %i.r, %i.bf                 ; 2 uses
  %i.bh = fcmp ult double %.0.i, %i.bg
  br i1 %i.bh, label %bb.o, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %bb.m, %bb.l
  %.sink.i = phi double [ %i.ba, %bb.l ], [ %i.bc, %bb.m ], [ %i.bg, %bb.n ]
  store double %.sink.i, ptr %i.d, align 8, !tbaa !183
  br label %bb.o

bb.o:                                             ; preds = %.sink.split.i, %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !22028, !range !284, !noundef !285
  %i.bk = trunc nuw i8 %i.bj to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !22026
  store ptr %14, ptr %13, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.d, ptr %i.bn, align 8
  %i.bo = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_21binomial_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %13)
  %i.bp = fsub double %i.bm, %i.bo
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bq = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_21binomial_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(25) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !22026
  %i.bt = fsub double %i.bq, %i.bs
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i

_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i: ; preds = %bb.q, %bb.p
  %i.bu = phi double [ %i.bp, %bb.p ], [ %i.bt, %bb.q ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  %i.bv = fcmp oeq double %i.bu, 0.000000e+00
  br i1 %i.bv, label %.thread, label %bb.r

.thread:                                          ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i
  %i.bw = load double, ptr %i.d, align 8, !tbaa !183
  store double %i.bw, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bx = add i64 %i.m, -1
end_hunk_0
