inline.NumInlined: 528
inline.NumDeleted: 263
begin_hunk_0_@_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE:bb.a
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %.03638.i53
  %i.mz = load double, ptr %i.my, align 8, !tbaa !29, !noalias !49 ; 2 uses
  %i.na = fadd double %.03240.i51, %i.mz          ; 3 uses
  %i.nb = tail call double @llvm.fmuladd.f64(double %i.mz, double %i.mv, double %.03539.i52) ; 2 uses
  %i.nc = add nuw i64 %.03638.i53, 1              ; 2 uses
  %i.nd = load ptr, ptr %i.mn, align 8, !tbaa !16, !noalias !49 ; 2 uses
  %i.ne = load ptr, ptr %1, align 8, !tbaa !19, !noalias !49 ; 4 uses
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = sub i64 %i.nf, %i.ng
  %i.ni = ashr exact i64 %i.nh, 3
  %i.nj = icmp ult i64 %i.nc, %i.ni
  br i1 %i.nj, label %.lr.ph.i49, label %._crit_edge.i54, !llvm.loop !30

.lr.ph47.i55:                                     ; preds = %._crit_edge.i54, %.lr.ph47.i55
  %i.nk = phi ptr [ %i.nx, %.lr.ph47.i55 ], [ %i.ne, %._crit_edge.i54 ]
  %.03345.i56 = phi i64 [ %i.nv, %.lr.ph47.i55 ], [ 0, %._crit_edge.i54 ] ; 3 uses
  %.03444.i57 = phi double [ %i.nu, %.lr.ph47.i55 ], [ 0.000000e+00, %._crit_edge.i54 ]
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %.03345.i56
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !25, !noalias !49
  %i.nn = tail call noundef double %.0.i46(i64 noundef %i.nm), !noalias !49, !inline_history !48
  %i.no = fmul double %i.mq, %i.nn
  %i.np = load ptr, ptr %2, align 8, !tbaa !26, !noalias !49
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %.03345.i56
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !29, !noalias !49
  %i.ns = fsub double %i.nr, %i.no
  %i.nt = tail call noundef double @pow(double noundef %i.ns, double noundef 2.000000e+00) #21, !tbaa !4, !noalias !49
  %i.nu = fadd double %.03444.i57, %i.nt          ; 2 uses
  %i.nv = add nuw i64 %.03345.i56, 1              ; 2 uses
  %i.nw = load ptr, ptr %i.mn, align 8, !tbaa !16, !noalias !49
  %i.nx = load ptr, ptr %1, align 8, !tbaa !19, !noalias !49 ; 2 uses
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = sub i64 %i.ny, %i.nz
  %i.ob = ashr exact i64 %i.oa, 3                 ; 2 uses
  %i.oc = icmp ult i64 %i.nv, %i.ob
  br i1 %i.oc, label %.lr.ph47.i55, label %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit66.loopexit, !llvm.loop !33

_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit66.loopexit: ; preds = %.lr.ph47.i55
  %i.od = uitofp i64 %i.ob to double
  br label %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit66

_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit66: ; preds = %_ZN9benchmark12FittingCurveENS_4BigOE.exit47, %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit66.loopexit, %._crit_edge.i54
  %.sroa.0.0 = phi double [ %i.mq, %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit66.loopexit ], [ %i.mq, %._crit_edge.i54 ], [ +qnan, %_ZN9benchmark12FittingCurveENS_4BigOE.exit47 ]
  %.032.lcssa70.i58 = phi double [ %i.na, %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit66.loopexit ], [ %i.na, %._crit_edge.i54 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit47 ]
  %.034.lcssa.i59 = phi double [ %i.nu, %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit66.loopexit ], [ 0.000000e+00, %._crit_edge.i54 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit47 ]
  %.lcssa.i60 = phi double [ %i.od, %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit66.loopexit ], [ 0.000000e+00, %._crit_edge.i54 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit47 ] ; 2 uses
  %i.oe = fdiv double %.032.lcssa70.i58, %.lcssa.i60
  %i.of = fdiv double %.034.lcssa.i59, %.lcssa.i60
  %i.og = tail call double @sqrt(double noundef %i.of) #21, !tbaa !4, !noalias !49
  %i.oh = fdiv double %i.og, %i.oe
  store double %.sroa.0.0, ptr %0, align 8, !tbaa !29
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.oh, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !20
  br label %bb.w

bb.w:                                             ; preds = %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit66, %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.23") align 8 initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 20 uses
  %3 = alloca %"class.std::vector.13", align 8    ; 19 uses
  %4 = alloca %"class.std::vector.13", align 8    ; 14 uses
  %5 = alloca %"struct.benchmark::LeastSq", align 8 ; 7 uses
  %6 = alloca %"struct.benchmark::LeastSq", align 8 ; 7 uses
  %7 = alloca %"struct.benchmark::LeastSq", align 8 ; 6 uses
  %8 = alloca %"struct.benchmark::BenchmarkName", align 8 ; 16 uses
  %9 = alloca %"struct.benchmark::BenchmarkReporter::Run", align 8 ; 36 uses
  %10 = alloca %"struct.benchmark::BenchmarkReporter::Run", align 8 ; 36 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !55     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 560
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.bh, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not223 = icmp eq ptr %i.c, %i.b
  br i1 %.not223, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70
  store ptr %i.bc, ptr %i.i, align 8
  store ptr %i.ba, ptr %i.j, align 8
  store ptr %i.bx, ptr %i.k, align 8
  store ptr %i.bv, ptr %i.l, align 8
  store ptr %i.cp, ptr %i.m, align 8
  store ptr %i.cn, ptr %i.n, align 8
  %.pre378 = load ptr, ptr %1, align 8, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.o = phi ptr [ %i.cn, %._crit_edge ], [ null, %bb.b ] ; 9 uses
  %i.p = phi ptr [ %i.bc, %._crit_edge ], [ null, %bb.b ] ; 3 uses
  %i.q = phi ptr [ %.pre378, %._crit_edge ], [ %i.c, %bb.b ] ; 3 uses
  %i.r = phi ptr [ %i.co, %._crit_edge ], [ null, %bb.b ] ; 14 uses
  %i.s = phi ptr [ %i.bw, %._crit_edge ], [ null, %bb.b ] ; 11 uses
  %i.t = phi ptr [ %i.bb, %._crit_edge ], [ null, %bb.b ] ; 8 uses
  store ptr %i.t, ptr %2, align 8
  store ptr %i.s, ptr %3, align 8
  store ptr %i.r, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 460
  %i.v = load i32, ptr %i.u, align 4, !tbaa !56   ; 3 uses
  %i.w = icmp eq i32 %i.v, 8
  br i1 %i.w, label %bb.w, label %bb.x

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.cn, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 15 uses
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.cp, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 9 uses
  %i.z = phi ptr [ null, %.lr.ph ], [ %i.bv, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.aa = phi ptr [ null, %.lr.ph ], [ %i.bx, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.ab = phi ptr [ null, %.lr.ph ], [ %i.ba, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 5 uses
  %i.ac = phi ptr [ null, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 5 uses
  %.sroa.0164.0224 = phi ptr [ %i.c, %.lr.ph ], [ %i.cq, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 5 uses
  %i.ad = phi ptr [ null, %.lr.ph ], [ %i.bb, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.ae = phi ptr [ null, %.lr.ph ], [ %i.bw, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 13 uses
  %i.af = phi ptr [ null, %.lr.ph ], [ %i.co, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 17 uses
  %i.ag = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !34

bb.e:                                             ; preds = %bb.d
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #21
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !35
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #21
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.f, %bb.e, %bb.d
  %i.aj = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !35 ; 2 uses
  %.not.i55 = icmp eq ptr %i.aj, null
  br i1 %.not.i55, label %_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.7, i64 noundef 38)
          to label %_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit unwind label %.loopexit174 ; 0 uses

_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 472 ; 2 uses
  %.not.i56 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i56, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit
  %i.am = load i64, ptr %i.al, align 8, !tbaa !25
  store i64 %i.am, ptr %i.ac, align 8, !tbaa !25
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.i:                                             ; preds = %_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit
  %i.an = ptrtoint ptr %i.ab to i64
  %i.ao = ptrtoint ptr %i.ad to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 6 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.j, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  store ptr %i.ac, ptr %i.i, align 8
  store ptr %i.ab, ptr %i.j, align 8
  store ptr %i.aa, ptr %i.k, align 8
  store ptr %i.z, ptr %i.l, align 8
  store ptr %i.y, ptr %i.m, align 8
  store ptr %i.x, ptr %i.n, align 8
  store ptr %i.ad, ptr %2, align 8
  store ptr %i.ae, ptr %3, align 8
  store ptr %i.af, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #24
          to label %.noexc57 unwind label %.loopexit.split-lp175

.noexc57:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ar = ashr exact i64 %i.ap, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #22
          to label %.noexc58 unwind label %.loopexit174 ; 4 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.ap ; 2 uses
  %i.ax = load i64, ptr %i.al, align 8, !tbaa !25
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !25
  %i.ay = icmp sgt i64 %i.ap, 0
  br i1 %i.ay, label %bb.k, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %.noexc58
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ad, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %.noexc58
  %.not.i17.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ap) #23
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.h
  %i.ba = phi ptr [ %i.az, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.ab, %bb.h ] ; 6 uses
  %.pn = phi ptr [ %i.aw, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.ac, %bb.h ]
  %i.bb = phi ptr [ %i.av, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.ad, %bb.h ] ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 432
  %i.be = load double, ptr %i.bd, align 8, !tbaa !75
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 392 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !76
  %i.bh = sitofp i64 %i.bg to double              ; 2 uses
  %i.bi = fdiv double %i.be, %i.bh                ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  store double %i.bi, ptr %i.aa, align 8, !tbaa !29
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.n:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %i.bj = ptrtoint ptr %i.z to i64
  %i.bk = ptrtoint ptr %i.ae to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 6 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %bb.o, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  store ptr %i.bc, ptr %i.i, align 8
  store ptr %i.ba, ptr %i.j, align 8
  store ptr %i.aa, ptr %i.k, align 8
  store ptr %i.z, ptr %i.l, align 8
  store ptr %i.y, ptr %i.m, align 8
  store ptr %i.x, ptr %i.n, align 8
  store ptr %i.bb, ptr %2, align 8
  store ptr %i.ae, ptr %3, align 8
  store ptr %i.af, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #24
          to label %.noexc59 unwind label %.loopexit.split-lp180

.noexc59:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bn = ashr exact i64 %i.bl, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bn ; 2 uses
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.bo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #22
          to label %.noexc60 unwind label %.loopexit179 ; 4 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bl ; 2 uses
  store double %i.bi, ptr %i.bs, align 8, !tbaa !29
  %i.bt = icmp sgt i64 %i.bl, 0
  br i1 %i.bt, label %bb.p, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.p:                                             ; preds = %.noexc60
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.br, ptr align 8 %i.ae, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.p, %.noexc60
  %.not.i17.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.bl) #23
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  %.pre = load i64, ptr %i.bf, align 8, !tbaa !76
  %.pre384 = sitofp i64 %.pre to double
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.m
  %.pre-phi = phi double [ %.pre384, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.bh, %bb.m ]
  %i.bv = phi ptr [ %i.bu, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.z, %bb.m ] ; 4 uses
  %.pn275 = phi ptr [ %i.bs, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.aa, %bb.m ]
  %i.bw = phi ptr [ %i.br, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.ae, %bb.m ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn275, i64 8 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 440
  %i.bz = load double, ptr %i.by, align 8, !tbaa !77
  %i.ca = fdiv double %i.bz, %.pre-phi            ; 2 uses
  %.not.i.i61 = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i61, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  store double %i.ca, ptr %i.y, align 8, !tbaa !29
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70

bb.s:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.cb = ptrtoint ptr %i.x to i64
  %i.cc = ptrtoint ptr %i.af to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 6 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.t, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i62

bb.t:                                             ; preds = %bb.s
  store ptr %i.bc, ptr %i.i, align 8
  store ptr %i.ba, ptr %i.j, align 8
  store ptr %i.bx, ptr %i.k, align 8
  store ptr %i.bv, ptr %i.l, align 8
  store ptr %i.y, ptr %i.m, align 8
  store ptr %i.x, ptr %i.n, align 8
  store ptr %i.bb, ptr %2, align 8
  store ptr %i.bw, ptr %3, align 8
  store ptr %i.af, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #24
          to label %.noexc68 unwind label %.loopexit.split-lp185

.noexc68:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i62: ; preds = %bb.s
  %i.cf = ashr exact i64 %i.cd, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i63 = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i.i63, %i.cf ; 2 uses
  %i.ch = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i64 = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i64)
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #22
          to label %.noexc69 unwind label %.loopexit184 ; 4 uses

.noexc69:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i62
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %i.cd ; 2 uses
  store double %i.ca, ptr %i.ck, align 8, !tbaa !29
  %i.cl = icmp sgt i64 %i.cd, 0
  br i1 %i.cl, label %bb.u, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65

bb.u:                                             ; preds = %.noexc69
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr align 8 %i.af, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65: ; preds = %bb.u, %.noexc69
  %.not.i17.i.i.i66 = icmp eq ptr %i.af, null
  br i1 %.not.i17.i.i.i66, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.cd) #23
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67: ; preds = %bb.v, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70

_ZNSt6vectorIdSaIdEE9push_backEOd.exit70:         ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67, %bb.r
  %i.cn = phi ptr [ %i.cm, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67 ], [ %i.x, %bb.r ] ; 3 uses
  %.pn276 = phi ptr [ %i.ck, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67 ], [ %i.y, %bb.r ]
  %i.co = phi ptr [ %i.cj, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67 ], [ %i.af, %bb.r ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn276, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 560 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.b
  br i1 %.not, label %._crit_edge, label %bb.d

.loopexit174:                                     ; preds = %bb.g, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit176 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %i.i, align 8
  store ptr %i.ab, ptr %i.j, align 8
  store ptr %i.aa, ptr %i.k, align 8
  store ptr %i.z, ptr %i.l, align 8
  store ptr %i.y, ptr %i.m, align 8
  store ptr %i.x, ptr %i.n, align 8
  store ptr %i.ad, ptr %2, align 8
  store ptr %i.ae, ptr %3, align 8
  store ptr %i.af, ptr %4, align 8
  br label %bb.bd

.loopexit.split-lp175:                            ; preds = %bb.j
  %lpad.loopexit.split-lp177 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit179:                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit181 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bc, ptr %i.i, align 8
  store ptr %i.ba, ptr %i.j, align 8
  store ptr %i.aa, ptr %i.k, align 8
  store ptr %i.z, ptr %i.l, align 8
  store ptr %i.y, ptr %i.m, align 8
  store ptr %i.x, ptr %i.n, align 8
  store ptr %i.bb, ptr %2, align 8
  store ptr %i.ae, ptr %3, align 8
  store ptr %i.af, ptr %4, align 8
  br label %bb.bd

.loopexit.split-lp180:                            ; preds = %bb.o
  %lpad.loopexit.split-lp182 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit184:                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i62
  %lpad.loopexit186 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bc, ptr %i.i, align 8
  store ptr %i.ba, ptr %i.j, align 8
  store ptr %i.bx, ptr %i.k, align 8
  store ptr %i.bv, ptr %i.l, align 8
  store ptr %i.y, ptr %i.m, align 8
  store ptr %i.x, ptr %i.n, align 8
  store ptr %i.bb, ptr %2, align 8
  store ptr %i.bw, ptr %3, align 8
  store ptr %i.af, ptr %4, align 8
  br label %bb.bd

.loopexit.split-lp185:                            ; preds = %bb.t
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.w:                                             ; preds = %bb.c
  %i.cr = getelementptr inbounds nuw i8, ptr %i.q, i64 464
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !78 ; 3 uses
  %.not.i71 = icmp eq ptr %i.p, %i.t              ; 2 uses
  br i1 %.not.i71, label %.loopexit173, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.w
  %i.ct = ptrtoint ptr %i.p to i64
  %i.cu = ptrtoint ptr %i.t to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ashr exact i64 %i.cv, 3                 ; 3 uses
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc72
  %i.cx = fdiv double %i.df, %i.db                ; 2 uses
  br label %.lr.ph47.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.noexc72
  %.041.i = phi double [ %i.db, %.noexc72 ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.03240.i = phi double [ %i.de, %.noexc72 ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.03539.i = phi double [ %i.df, %.noexc72 ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.03638.i = phi i64 [ %i.dg, %.noexc72 ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.03638.i
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !25, !noalias !79
  %i.da = invoke noundef double %i.cs(i64 noundef %i.cz)
          to label %.noexc72 unwind label %.loopexit.split-lp169, !inline_history !48 ; 3 uses

.noexc72:                                         ; preds = %.lr.ph.i
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double %i.da, double %.041.i) ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.03638.i
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !29, !noalias !79 ; 2 uses
  %i.de = fadd double %.03240.i, %i.dd            ; 2 uses
  %i.df = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.da, double %.03539.i) ; 2 uses
  %i.dg = add nuw i64 %.03638.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dg, %i.cw
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !30

.lr.ph47.i:                                       ; preds = %._crit_edge.i, %.noexc73
  %.03345.i = phi i64 [ %i.dq, %.noexc73 ], [ 0, %._crit_edge.i ] ; 3 uses
  %.03444.i = phi double [ %i.dp, %.noexc73 ], [ 0.000000e+00, %._crit_edge.i ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.03345.i
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !25, !noalias !79
  %i.dj = invoke noundef double %i.cs(i64 noundef %i.di)
          to label %.noexc73 unwind label %.thread, !inline_history !48

.noexc73:                                         ; preds = %.lr.ph47.i
  %i.dk = fmul double %i.cx, %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.03345.i
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !29, !noalias !79
  %i.dn = fsub double %i.dm, %i.dk
  %i.do = tail call noundef double @pow(double noundef %i.dn, double noundef 2.000000e+00) #21, !tbaa !4, !noalias !79
  %i.dp = fadd double %.03444.i, %i.do            ; 2 uses
  %i.dq = add nuw i64 %.03345.i, 1                ; 2 uses
  %exitcond374.not = icmp eq i64 %i.dq, %i.cw
  br i1 %exitcond374.not, label %.loopexit173.loopexit, label %.lr.ph47.i, !llvm.loop !33

.loopexit173.loopexit:                            ; preds = %.noexc73
  %.pre379 = load ptr, ptr %1, align 8, !tbaa !55
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre379, i64 464
  %.pre380 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !78
  %i.dr = uitofp i64 %i.cw to double
  br label %.loopexit173

.loopexit173:                                     ; preds = %bb.w, %.loopexit173.loopexit
  %i.ds = phi ptr [ %.pre380, %.loopexit173.loopexit ], [ %i.cs, %bb.w ] ; 2 uses
  %.sroa.0145.0 = phi double [ %i.cx, %.loopexit173.loopexit ], [ +qnan, %bb.w ]
  %.032.lcssa70.i = phi double [ %i.de, %.loopexit173.loopexit ], [ 0.000000e+00, %bb.w ]
  %.034.lcssa.i = phi double [ %i.dp, %.loopexit173.loopexit ], [ 0.000000e+00, %bb.w ]
  %.lcssa.i = phi double [ %i.dr, %.loopexit173.loopexit ], [ 0.000000e+00, %bb.w ] ; 2 uses
  %i.dt = fdiv double %.032.lcssa70.i, %.lcssa.i
  %i.du = fdiv double %.034.lcssa.i, %.lcssa.i
  %i.dv = tail call double @sqrt(double noundef %i.du) #21, !tbaa !4, !noalias !79
  %i.dw = fdiv double %i.dv, %i.dt
  br i1 %.not.i71, label %.loopexit167, label %.lr.ph.i75.preheader

.lr.ph.i75.preheader:                             ; preds = %.loopexit173
  %i.dx = ptrtoint ptr %i.p to i64
  %i.dy = ptrtoint ptr %i.t to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = ashr exact i64 %i.dz, 3                 ; 3 uses
  br label %.lr.ph.i75

._crit_edge.i80:                                  ; preds = %.noexc92
  %i.eb = fdiv double %i.ej, %i.ef                ; 2 uses
  br label %.lr.ph47.i81

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.preheader, %.noexc92
  %.041.i76 = phi double [ %i.ef, %.noexc92 ], [ 0.000000e+00, %.lr.ph.i75.preheader ]
  %.03240.i77 = phi double [ %i.ei, %.noexc92 ], [ 0.000000e+00, %.lr.ph.i75.preheader ]
  %.03539.i78 = phi double [ %i.ej, %.noexc92 ], [ 0.000000e+00, %.lr.ph.i75.preheader ]
  %.03638.i79 = phi i64 [ %i.ek, %.noexc92 ], [ 0, %.lr.ph.i75.preheader ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.03638.i79
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !25, !noalias !82
  %i.ee = invoke noundef double %i.ds(i64 noundef %i.ed)
          to label %.noexc92 unwind label %.loopexit.split-lp, !inline_history !48 ; 3 uses

.noexc92:                                         ; preds = %.lr.ph.i75
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ee, double %.041.i76) ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.03638.i79
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !29, !noalias !82 ; 2 uses
  %i.ei = fadd double %.03240.i77, %i.eh          ; 2 uses
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.ee, double %.03539.i78) ; 2 uses
  %i.ek = add nuw i64 %.03638.i79, 1              ; 2 uses
  %exitcond376.not = icmp eq i64 %i.ek, %i.ea
  br i1 %exitcond376.not, label %._crit_edge.i80, label %.lr.ph.i75, !llvm.loop !30

.lr.ph47.i81:                                     ; preds = %._crit_edge.i80, %.noexc93
  %.03345.i82 = phi i64 [ %i.eu, %.noexc93 ], [ 0, %._crit_edge.i80 ] ; 3 uses
  %.03444.i83 = phi double [ %i.et, %.noexc93 ], [ 0.000000e+00, %._crit_edge.i80 ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.03345.i82
  %i.em = load i64, ptr %i.el, align 8, !tbaa !25, !noalias !82
  %i.en = invoke noundef double %i.ds(i64 noundef %i.em)
          to label %.noexc93 unwind label %.loopexit, !inline_history !48

.noexc93:                                         ; preds = %.lr.ph47.i81
  %i.eo = fmul double %i.eb, %i.en
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.03345.i82
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !29, !noalias !82
  %i.er = fsub double %i.eq, %i.eo
  %i.es = tail call noundef double @pow(double noundef %i.er, double noundef 2.000000e+00) #21, !tbaa !4, !noalias !82
  %i.et = fadd double %.03444.i83, %i.es          ; 2 uses
  %i.eu = add nuw i64 %.03345.i82, 1              ; 2 uses
  %exitcond377.not = icmp eq i64 %i.eu, %i.ea
  br i1 %exitcond377.not, label %.loopexit167.loopexit, label %.lr.ph47.i81, !llvm.loop !33

.loopexit167.loopexit:                            ; preds = %.noexc93
  %i.ev = uitofp i64 %i.ea to double
  br label %.loopexit167

.loopexit167:                                     ; preds = %.loopexit173, %.loopexit167.loopexit
  %.sroa.0.0 = phi double [ %i.eb, %.loopexit167.loopexit ], [ +qnan, %.loopexit173 ]
  %.032.lcssa70.i84 = phi double [ %i.ei, %.loopexit167.loopexit ], [ 0.000000e+00, %.loopexit173 ]
end_hunk_0
begin_hunk_1_@"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_18__invokeEl":bb.a

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal noundef double @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_28__invokeEl"(i64 noundef %0) #11 align 2 {
bb.a:
  %i.a = sitofp i64 %0 to double
  %i.b = tail call noundef double @pow(double noundef %i.a, double noundef 3.000000e+00) #21, !tbaa !4
  ret double %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal noundef double @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_38__invokeEl"(i64 noundef %0) #11 align 2 {
bb.a:
  %i.a = sitofp i64 %0 to double
  %i.b = tail call noundef double @log2(double noundef %i.a) #21, !tbaa !4
  ret double %i.b
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal noundef double @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_48__invokeEl"(i64 noundef %0) #11 align 2 {
bb.a:
  %i.a = sitofp i64 %0 to double                  ; 2 uses
  %i.b = tail call double @log2(double noundef %i.a) #21, !tbaa !4
  %i.c = fmul double %i.b, %i.a
  ret double %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl"(i64 %0) #10 align 2 {
bb.a:
  ret double 1.000000e+00
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

declare noundef i32 @_ZN9benchmark18GetDefaultTimeUnitEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !12
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #23
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !107

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit
  %.05 = phi ptr [ %i.x, %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit ], [ %0, %bb.a ] ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 496
  %i.b = getelementptr inbounds nuw i8, ptr %.05, i64 512
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !98
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i: ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.05, i64 360
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05, i64 376 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !12
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05, i64 320
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05, i64 336 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !12
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05, i64 280
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !88   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05, i64 296 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !12
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit

_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  tail call void @_ZN9benchmark13BenchmarkNameD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(560) %.05) #21
  %i.x = getelementptr inbounds nuw i8, ptr %.05, i64 560 ; 2 uses
  %.not = icmp eq ptr %i.x, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !108

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(560) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !55     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775520
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #24
  unreachable

_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 560                 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 16470307208669242) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %i.j, 560                ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #22 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  invoke void @_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(560) %i.o, ptr noundef nonnull align 8 dereferenceable(560) %2)
          to label %_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit
  %i.p = tail call noundef ptr @_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.n, ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 560
  %i.r = tail call noundef ptr @_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.q, ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !97
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #23
  br label %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !55
  store ptr %i.r, ptr %i.a, align 8, !tbaa !52
  %i.w = getelementptr inbounds nuw [560 x i8], ptr %i.n, i64 %i.j
  store ptr %i.w, ptr %i.s, align 8, !tbaa !97
  ret void

bb.d:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #21 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #25
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(560) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  tail call void @_ZN9benchmark13BenchmarkNameC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, ptr noundef nonnull align 8 dereferenceable(20) %i.e, i64 20, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !8
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !88   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 %i.k, ptr %i.c, align 8, !tbaa !25
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.m, ptr %i.f, align 8, !tbaa !88
  %i.n = load i64, ptr %i.c, align 8, !tbaa !25
  store i64 %i.n, ptr %i.h, align 8, !tbaa !12
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.o = phi ptr [ %i.m, %.noexc ], [ %i.h, %bb.a ] ; 2 uses
  switch i64 %i.k, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !12
  store i8 %i.p, ptr %i.o, align 1, !tbaa !12
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.q = load i64, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.q, ptr %i.r, align 8, !tbaa !13
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.w = load i32, ptr %i.v, align 8, !tbaa !93
  store i32 %i.w, ptr %i.u, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !8
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !88  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !25
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i19, label %._crit_edge.i.i18

.noexc.i19:                                       ; preds = %bb.d
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc20 unwind label %bb.o   ; 2 uses

.noexc20:                                         ; preds = %.noexc.i19
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !88
  %i.af = load i64, ptr %i.b, align 8, !tbaa !25
  store i64 %i.af, ptr %i.z, align 8, !tbaa !12
  br label %._crit_edge.i.i18

._crit_edge.i.i18:                                ; preds = %.noexc20, %bb.d
  %i.ag = phi ptr [ %i.ae, %.noexc20 ], [ %i.z, %bb.d ] ; 2 uses
  switch i64 %i.ac, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i18
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !12
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !12
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i18
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !13
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !101
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 5 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !8
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !88 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.au = load i64, ptr %i.at, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.au, ptr %i.a, align 8, !tbaa !25
  %i.av = icmp ugt i64 %i.au, 15
  br i1 %i.av, label %.noexc.i23, label %._crit_edge.i.i22

.noexc.i23:                                       ; preds = %bb.g
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24 unwind label %bb.p   ; 2 uses

.noexc24:                                         ; preds = %.noexc.i23
  store ptr %i.aw, ptr %i.ap, align 8, !tbaa !88
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.ax, ptr %i.ar, align 8, !tbaa !12
  br label %._crit_edge.i.i22

._crit_edge.i.i22:                                ; preds = %.noexc24, %bb.g
  %i.ay = phi ptr [ %i.aw, %.noexc24 ], [ %i.ar, %bb.g ] ; 2 uses
  switch i64 %i.au, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i22
  %i.az = load i8, ptr %i.as, align 1, !tbaa !12
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !12
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.as, i64 %i.au, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i22
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !13
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !88
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(98) %i.be, ptr noundef nonnull align 8 dereferenceable(98) %i.bf, i64 98, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  store i32 0, ptr %i.bg, align 8, !tbaa !102
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  store ptr null, ptr %i.bh, align 8, !tbaa !98
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !103
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !104
end_hunk_1
