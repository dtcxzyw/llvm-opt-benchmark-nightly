inline.NumInlined: 528
inline.NumDeleted: 263
begin_hunk_0_@_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE:bb.a
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
define hidden void @_ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.23") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
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
  store ptr %i.be, ptr %i.i, align 8
  store ptr %i.bc, ptr %i.j, align 8
  store ptr %i.ca, ptr %i.k, align 8
  store ptr %i.by, ptr %i.l, align 8
  store ptr %i.cu, ptr %i.m, align 8
  store ptr %i.cs, ptr %i.n, align 8
  %.pre378 = load ptr, ptr %1, align 8, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.o = phi ptr [ %i.cs, %._crit_edge ], [ null, %bb.b ] ; 9 uses
  %i.p = phi ptr [ %i.be, %._crit_edge ], [ null, %bb.b ] ; 3 uses
  %i.q = phi ptr [ %.pre378, %._crit_edge ], [ %i.c, %bb.b ] ; 3 uses
  %i.r = phi ptr [ %i.ct, %._crit_edge ], [ null, %bb.b ] ; 14 uses
  %i.s = phi ptr [ %i.bz, %._crit_edge ], [ null, %bb.b ] ; 11 uses
  %i.t = phi ptr [ %i.bd, %._crit_edge ], [ null, %bb.b ] ; 8 uses
  store ptr %i.t, ptr %2, align 8
  store ptr %i.s, ptr %3, align 8
  store ptr %i.r, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 460
  %i.v = load i32, ptr %i.u, align 4, !tbaa !56   ; 3 uses
  %i.w = icmp eq i32 %i.v, 8
  br i1 %i.w, label %bb.w, label %bb.x

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.cs, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 15 uses
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.cu, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 9 uses
  %i.z = phi ptr [ null, %.lr.ph ], [ %i.by, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.aa = phi ptr [ null, %.lr.ph ], [ %i.ca, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.ab = phi ptr [ null, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 5 uses
  %i.ac = phi ptr [ null, %.lr.ph ], [ %i.be, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 5 uses
  %.sroa.0164.0224 = phi ptr [ %i.c, %.lr.ph ], [ %i.cv, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 5 uses
  %i.ad = phi ptr [ null, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.ae = phi ptr [ null, %.lr.ph ], [ %i.bz, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 13 uses
  %i.af = phi ptr [ null, %.lr.ph ], [ %i.ct, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 17 uses
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
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #22
          to label %.noexc58 unwind label %.loopexit174 ; 4 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  %i.az = load i64, ptr %i.al, align 8, !tbaa !25
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !25
  %i.ba = icmp sgt i64 %i.ap, 0
  br i1 %i.ba, label %bb.k, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %.noexc58
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.ad, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %.noexc58
  %.not.i17.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ap) #23
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.h
  %i.bc = phi ptr [ %i.bb, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.ab, %bb.h ] ; 6 uses
  %.pn = phi ptr [ %i.ay, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.ac, %bb.h ]
  %i.bd = phi ptr [ %i.ax, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.ad, %bb.h ] ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 432
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !75
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 392 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !76
  %i.bj = sitofp i64 %i.bi to double              ; 3 uses
  %i.bk = fdiv double %i.bg, %i.bj                ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  store double %i.bk, ptr %i.aa, align 8, !tbaa !29
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.n:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %i.bl = ptrtoint ptr %i.z to i64
  %i.bm = ptrtoint ptr %i.ae to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 6 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.o, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  store ptr %i.be, ptr %i.i, align 8
  store ptr %i.bc, ptr %i.j, align 8
  store ptr %i.aa, ptr %i.k, align 8
  store ptr %i.z, ptr %i.l, align 8
  store ptr %i.y, ptr %i.m, align 8
  store ptr %i.x, ptr %i.n, align 8
  store ptr %i.bd, ptr %2, align 8
  store ptr %i.ae, ptr %3, align 8
  store ptr %i.af, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #24
          to label %.noexc59 unwind label %.loopexit.split-lp180

.noexc59:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #22
          to label %.noexc60 unwind label %.loopexit179 ; 4 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.bn ; 2 uses
  store double %i.bk, ptr %i.bw, align 8, !tbaa !29
  %i.bx = icmp sgt i64 %i.bn, 0
  br i1 %i.bx, label %bb.p, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.p:                                             ; preds = %.noexc60
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr align 8 %i.ae, i64 %i.bn, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.p, %.noexc60
  %.not.i17.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.bn) #23
  %.pre.pre = load i64, ptr %i.bh, align 8, !tbaa !76
  %.pre386 = sitofp i64 %.pre.pre to double
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %.pre385.pre-phi = phi double [ %.pre386, %bb.q ], [ %i.bj, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i ]
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.m
  %.pre-phi = phi double [ %.pre385.pre-phi, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.bj, %bb.m ]
  %i.by = phi ptr [ %11, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.z, %bb.m ] ; 4 uses
  %.pn275 = phi ptr [ %i.bw, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.aa, %bb.m ]
  %i.bz = phi ptr [ %i.bv, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.ae, %bb.m ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.pn275, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 440
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !77
  %i.cd = fdiv double %i.cc, %.pre-phi            ; 2 uses
  %.not.i.i61 = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i61, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  store double %i.cd, ptr %i.y, align 8, !tbaa !29
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70

bb.s:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.ce = ptrtoint ptr %i.x to i64
  %i.cf = ptrtoint ptr %i.af to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 6 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.t, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i62

bb.t:                                             ; preds = %bb.s
  store ptr %i.be, ptr %i.i, align 8
  store ptr %i.bc, ptr %i.j, align 8
  store ptr %i.ca, ptr %i.k, align 8
  store ptr %i.by, ptr %i.l, align 8
  store ptr %i.y, ptr %i.m, align 8
  store ptr %i.x, ptr %i.n, align 8
  store ptr %i.bd, ptr %2, align 8
  store ptr %i.bz, ptr %3, align 8
  store ptr %i.af, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #24
          to label %.noexc68 unwind label %.loopexit.split-lp185

.noexc68:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i62: ; preds = %bb.s
  %i.ci = ashr exact i64 %i.cg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i63 = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i.i63, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 1152921504606846975)
  %i.cm = select i1 %i.ck, i64 1152921504606846975, i64 %i.cl ; 3 uses
  %.not.i.i.i.i64 = icmp ne i64 %i.cm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i64)
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #22
          to label %.noexc69 unwind label %.loopexit184 ; 4 uses

.noexc69:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i62
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.cg ; 2 uses
  store double %i.cd, ptr %i.cp, align 8, !tbaa !29
  %i.cq = icmp sgt i64 %i.cg, 0
  br i1 %i.cq, label %bb.u, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65

bb.u:                                             ; preds = %.noexc69
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.co, ptr align 8 %i.af, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65: ; preds = %bb.u, %.noexc69
  %.not.i17.i.i.i66 = icmp eq ptr %i.af, null
  br i1 %.not.i17.i.i.i66, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.cg) #23
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67: ; preds = %bb.v, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cm
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70

_ZNSt6vectorIdSaIdEE9push_backEOd.exit70:         ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67, %bb.r
  %i.cs = phi ptr [ %i.cr, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67 ], [ %i.x, %bb.r ] ; 3 uses
  %.pn276 = phi ptr [ %i.cp, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67 ], [ %i.y, %bb.r ]
  %i.ct = phi ptr [ %i.co, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67 ], [ %i.af, %bb.r ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn276, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 560 ; 2 uses
  %.not = icmp eq ptr %i.cv, %i.b
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
  store ptr %i.be, ptr %i.i, align 8
  store ptr %i.bc, ptr %i.j, align 8
  store ptr %i.aa, ptr %i.k, align 8
  store ptr %i.z, ptr %i.l, align 8
  store ptr %i.y, ptr %i.m, align 8
  store ptr %i.x, ptr %i.n, align 8
  store ptr %i.bd, ptr %2, align 8
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
  store ptr %i.be, ptr %i.i, align 8
  store ptr %i.bc, ptr %i.j, align 8
  store ptr %i.ca, ptr %i.k, align 8
  store ptr %i.by, ptr %i.l, align 8
  store ptr %i.y, ptr %i.m, align 8
  store ptr %i.x, ptr %i.n, align 8
  store ptr %i.bd, ptr %2, align 8
  store ptr %i.bz, ptr %3, align 8
  store ptr %i.af, ptr %4, align 8
  br label %bb.bd

.loopexit.split-lp185:                            ; preds = %bb.t
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.w:                                             ; preds = %bb.c
  %i.cw = getelementptr inbounds nuw i8, ptr %i.q, i64 464
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !78 ; 3 uses
  %.not.i71 = icmp eq ptr %i.p, %i.t              ; 2 uses
  br i1 %.not.i71, label %.loopexit173, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.w
  %i.cy = ptrtoint ptr %i.p to i64
  %i.cz = ptrtoint ptr %i.t to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 3                 ; 3 uses
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc72
  %i.dc = fdiv double %i.dk, %i.dg                ; 2 uses
  br label %.lr.ph47.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.noexc72
  %.041.i = phi double [ %i.dg, %.noexc72 ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.03240.i = phi double [ %i.dj, %.noexc72 ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.03539.i = phi double [ %i.dk, %.noexc72 ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.03638.i = phi i64 [ %i.dl, %.noexc72 ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.03638.i
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !25, !noalias !79
  %i.df = invoke noundef double %i.cx(i64 noundef %i.de)
          to label %.noexc72 unwind label %.loopexit.split-lp169, !inline_history !48 ; 3 uses

.noexc72:                                         ; preds = %.lr.ph.i
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double %i.df, double %.041.i) ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.03638.i
  %i.di = load double, ptr %i.dh, align 8, !tbaa !29, !noalias !79 ; 2 uses
  %i.dj = fadd double %.03240.i, %i.di            ; 2 uses
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.di, double %i.df, double %.03539.i) ; 2 uses
  %i.dl = add nuw i64 %.03638.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dl, %i.db
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !30

.lr.ph47.i:                                       ; preds = %._crit_edge.i, %.noexc73
  %.03345.i = phi i64 [ %i.dv, %.noexc73 ], [ 0, %._crit_edge.i ] ; 3 uses
  %.03444.i = phi double [ %i.du, %.noexc73 ], [ 0.000000e+00, %._crit_edge.i ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.03345.i
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !25, !noalias !79
  %i.do = invoke noundef double %i.cx(i64 noundef %i.dn)
          to label %.noexc73 unwind label %.thread, !inline_history !48

.noexc73:                                         ; preds = %.lr.ph47.i
  %i.dp = fmul double %i.dc, %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.03345.i
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !29, !noalias !79
  %i.ds = fsub double %i.dr, %i.dp
  %i.dt = tail call noundef double @pow(double noundef %i.ds, double noundef 2.000000e+00) #21, !tbaa !4, !noalias !79
  %i.du = fadd double %.03444.i, %i.dt            ; 2 uses
  %i.dv = add nuw i64 %.03345.i, 1                ; 2 uses
  %exitcond374.not = icmp eq i64 %i.dv, %i.db
  br i1 %exitcond374.not, label %.loopexit173.loopexit, label %.lr.ph47.i, !llvm.loop !33

.loopexit173.loopexit:                            ; preds = %.noexc73
  %.pre379 = load ptr, ptr %1, align 8, !tbaa !55
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre379, i64 464
  %.pre380 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !78
  %i.dw = uitofp i64 %i.db to double
  br label %.loopexit173
end_hunk_0
