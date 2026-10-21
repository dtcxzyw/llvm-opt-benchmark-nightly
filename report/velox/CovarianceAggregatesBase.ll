Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/CovarianceAggregatesBase?download=true
inline.NumInlined: 101
inline.NumDeleted: 37
begin_hunk_0_@__cxx_global_var_init:bb.a
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox9connector9Connector28kTotalRemainingFilterCpuTimeB5cxx11E, i64 16), ptr @_ZN8facebook5velox9connector9Connector28kTotalRemainingFilterCpuTimeB5cxx11E, align 8, !tbaa !46
  %i.d = invoke noalias noundef nonnull dereferenceable(29) ptr @_Znwm(i64 noundef 29) #13
          to label %.noexc2 unwind label %bb.d    ; 3 uses

.noexc2:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.d, ptr @_ZN8facebook5velox9connector9Connector28kTotalRemainingFilterCpuTimeB5cxx11E, align 8, !tbaa !13
  store i64 28, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox9connector9Connector28kTotalRemainingFilterCpuTimeB5cxx11E, i64 16), align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.d, ptr noundef nonnull align 1 dereferenceable(28) @.str, i64 28, i1 false)
  store i64 28, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox9connector9Connector28kTotalRemainingFilterCpuTimeB5cxx11E, i64 8), align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i8 0, ptr %i.e, align 1, !tbaa !14
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN8facebook5velox9connector9Connector28kTotalRemainingFilterCpuTimeB5cxx11E, ptr nonnull @__dso_handle) #12 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN8facebook5velox9connector9Connector28kTotalRemainingFilterCpuTimeB5cxx11E) #12
  br label %bb.c

bb.c:                                             ; preds = %.noexc2, %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVN8facebook5velox9connector9Connector28kTotalRemainingFilterCpuTimeB5cxx11E) #12
  resume { ptr, i32 } %i.g
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !14
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK8facebook5velox9functions9aggregate16CovarAccumulator5countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !17
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK8facebook5velox9functions9aggregate16CovarAccumulator2c2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load double, ptr %i.a, align 8, !tbaa !18
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK8facebook5velox9functions9aggregate16CovarAccumulator5meanXEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !19
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK8facebook5velox9functions9aggregate16CovarAccumulator5meanYEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !20
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN8facebook5velox9functions9aggregate16CovarAccumulator6updateEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, double noundef %1, double noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !17
  %i.b = add nsw i64 %i.a, 1                      ; 2 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = sitofp i64 %i.b to double
  %i.e = load <2 x double>, ptr %i.c, align 8, !tbaa !21 ; 2 uses
  %i.f = insertelement <2 x double> poison, double %1, i64 0
  %i.g = insertelement <2 x double> %i.f, double %2, i64 1
  %i.h = fsub <2 x double> %i.g, %i.e             ; 2 uses
  %i.i = insertelement <2 x double> poison, double %i.d, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.h, %i.j
  %i.l = fadd <2 x double> %i.e, %i.k             ; 2 uses
  store <2 x double> %i.l, ptr %i.c, align 8, !tbaa !21
  %i.m = extractelement <2 x double> %i.l, i64 1
  %i.n = fsub double %2, %i.m
  %i.o = extractelement <2 x double> %i.h, i64 0
  %i.p = fmul double %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !18
  %i.s = fadd double %i.r, %i.p
  store double %i.s, ptr %i.q, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %1, ptr %0, align 8, !tbaa !17
  store double %2, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %i.f, align 8, !tbaa !18
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.b, %1                     ; 2 uses
  %i.h = sitofp i64 %i.b to double
  %i.i = sitofp i64 %1 to double                  ; 2 uses
  %i.j = sitofp i64 %i.g to double                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !18
  %i.m = load <2 x double>, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  %i.n = insertelement <2 x double> poison, double %2, i64 0
  %i.o = insertelement <2 x double> %i.n, double %3, i64 1
  %i.p = fsub <2 x double> %i.o, %i.m             ; 3 uses
  %shift = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.p, %shift
  %i.q = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.r = fmul double %i.q, %i.h
  %i.s = fmul double %i.r, %i.i
  %i.t = fdiv double %i.s, %i.j
  %i.u = fadd double %4, %i.t
  %i.v = fadd double %i.l, %i.u
  store double %i.v, ptr %i.k, align 8, !tbaa !18
  %i.w = insertelement <2 x double> poison, double %i.i, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x double> %i.p, %i.x
  %i.z = insertelement <2 x double> poison, double %i.j, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fdiv <2 x double> %i.y, %i.aa
  %i.ac = fadd <2 x double> %i.m, %i.ab
  store <2 x double> %i.ac, ptr %i.d, align 8, !tbaa !21
  store i64 %i.g, ptr %0, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK8facebook5velox9functions9aggregate15RegrAccumulator3m2XEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load double, ptr %i.a, align 8, !tbaa !23
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN8facebook5velox9functions9aggregate15RegrAccumulator6updateEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, double noundef %1, double noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !17
  %i.c = add nsw i64 %i.b, 1                      ; 2 uses
  store i64 %i.c, ptr %0, align 8, !tbaa !17
  %i.d = sitofp i64 %i.c to double
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !21 ; 2 uses
  %i.f = insertelement <2 x double> poison, double %1, i64 0
  %i.g = insertelement <2 x double> %i.f, double %2, i64 1 ; 2 uses
  %i.h = fsub <2 x double> %i.g, %i.e             ; 2 uses
  %i.i = insertelement <2 x double> poison, double %i.d, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.h, %i.j
  %i.l = fadd <2 x double> %i.e, %i.k             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = fsub <2 x double> %i.g, %i.l
  %i.o = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.q = fmul <2 x double> %i.o, %i.p
  %i.r = load <2 x double>, ptr %i.m, align 8, !tbaa !21
  %i.s = fadd <2 x double> %i.r, %i.q
  %3 = shufflevector <2 x double> %i.l, <2 x double> %i.s, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %3, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN8facebook5velox9functions9aggregate15RegrAccumulator5mergeEldddd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %5, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %0, align 8, !tbaa !17
  store double %2, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %i.g, align 8, !tbaa !18
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

bb.d:                                             ; preds = %bb.b
  %i.h = sitofp i64 %i.b to double
  %i.i = add nsw i64 %i.b, %1                     ; 2 uses
  %i.j = sitofp i64 %i.i to double                ; 2 uses
  %i.k = sitofp i64 %1 to double
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load double, ptr %i.l, align 8, !tbaa !19 ; 3 uses
  %i.p = fsub double %i.o, %2
  %i.q = tail call noundef double @pow(double noundef %i.p, double noundef 2.000000e+00) #12
  %i.r = fsub double %2, %i.o                     ; 2 uses
  %i.s = load double, ptr %i.m, align 8, !tbaa !20 ; 2 uses
  %i.t = fsub double %3, %i.s                     ; 2 uses
  %i.u = fmul double %i.r, %i.t
  %i.v = insertelement <2 x double> poison, double %i.h, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = insertelement <2 x double> poison, double %i.u, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.j, i64 1 ; 2 uses
  %i.z = fmul <2 x double> %i.w, %i.y
  %i.aa = fdiv <2 x double> %i.w, %i.y
  %i.ab = load <2 x double>, ptr %i.n, align 8, !tbaa !21
  %i.ac = insertelement <4 x double> poison, double %i.r, i64 0
  %i.ad = insertelement <4 x double> %i.ac, double %i.t, i64 1
  %i.ae = shufflevector <2 x double> %i.z, <2 x double> %i.aa, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.af = shufflevector <4 x double> %i.ad, <4 x double> %i.ae, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ag = insertelement <4 x double> poison, double %i.k, i64 0
  %i.ah = shufflevector <4 x double> %i.ag, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ai = fmul <4 x double> %i.af, %i.ah          ; 2 uses
  %i.aj = insertelement <4 x double> poison, double %i.j, i64 0
  %i.ak = insertelement <4 x double> %i.aj, double %i.q, i64 1
  %i.al = shufflevector <4 x double> %i.ak, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.am = fdiv <4 x double> %i.ai, %i.al
  %i.an = fmul <4 x double> %i.ai, %i.al
  %i.ao = shufflevector <4 x double> %i.am, <4 x double> %i.an, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ap = insertelement <4 x double> <double -0.000000e+00, double -0.000000e+00, double poison, double poison>, double %4, i64 2
  %i.aq = insertelement <4 x double> %i.ap, double %5, i64 3
  %i.ar = fadd <4 x double> %i.aq, %i.ao
  %i.as = insertelement <4 x double> poison, double %i.o, i64 0
  %i.at = insertelement <4 x double> %i.as, double %i.s, i64 1
  %i.au = shufflevector <2 x double> %i.ab, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.av = shufflevector <4 x double> %i.at, <4 x double> %i.au, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aw = fadd <4 x double> %i.av, %i.ar
  store <4 x double> %i.aw, ptr %i.l, align 8, !tbaa !21
  store i64 %i.i, ptr %0, align 8, !tbaa !17
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK8facebook5velox9functions9aggregate23ExtendedRegrAccumulator3m2YEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load double, ptr %i.a, align 8, !tbaa !25
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN8facebook5velox9functions9aggregate23ExtendedRegrAccumulator6updateEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, double noundef %1, double noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !17
  %i.c = add nsw i64 %i.b, 1                      ; 2 uses
  store i64 %i.c, ptr %0, align 8, !tbaa !17
  %i.d = sitofp i64 %i.c to double
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !21 ; 2 uses
  %i.f = insertelement <2 x double> poison, double %1, i64 0
  %i.g = insertelement <2 x double> %i.f, double %2, i64 1 ; 2 uses
  %i.h = fsub <2 x double> %i.g, %i.e             ; 3 uses
  %i.i = insertelement <2 x double> poison, double %i.d, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.h, %i.j
  %i.l = fadd <2 x double> %i.e, %i.k             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = fsub <2 x double> %i.g, %i.l             ; 2 uses
  %i.o = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.q = fmul <2 x double> %i.o, %i.p
  %i.r = load <2 x double>, ptr %i.m, align 8, !tbaa !21
  %i.s = fadd <2 x double> %i.r, %i.q
  %3 = shufflevector <2 x double> %i.l, <2 x double> %i.s, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %3, ptr %i.a, align 8, !tbaa !21
  %foldExtExtBinop = fmul <2 x double> %i.h, %i.n
  %i.t = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !25
  %i.w = fadd double %i.t, %i.v
  store double %i.w, ptr %i.u, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN8facebook5velox9functions9aggregate23ExtendedRegrAccumulator5mergeElddddd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %5, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %6, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %0, align 8, !tbaa !17
  store double %2, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.g, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %i.h, align 8, !tbaa !18
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

bb.d:                                             ; preds = %bb.b
  %i.i = sitofp i64 %i.b to double                ; 2 uses
  %i.j = add nsw i64 %i.b, %1                     ; 2 uses
  %i.k = sitofp i64 %i.j to double                ; 2 uses
  %i.l = fdiv double %i.i, %i.k                   ; 2 uses
  %i.m = sitofp i64 %1 to double                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load double, ptr %i.n, align 8, !tbaa !19 ; 3 uses
  %i.s = fsub double %i.r, %2
  %i.t = tail call noundef double @pow(double noundef %i.s, double noundef 2.000000e+00) #12
  %i.u = load double, ptr %i.o, align 8, !tbaa !20 ; 3 uses
  %i.v = fsub double %i.u, %3
  %i.w = tail call noundef double @pow(double noundef %i.v, double noundef 2.000000e+00) #12
  %i.x = fsub double %2, %i.r                     ; 2 uses
  %i.y = fsub double %3, %i.u                     ; 2 uses
  %i.z = fmul double %i.x, %i.y
  %i.aa = fmul double %i.z, %i.i
  %i.ab = fmul double %i.l, %i.m
  %i.ac = insertelement <4 x double> poison, double %i.x, i64 0
  %i.ad = insertelement <4 x double> %i.ac, double %i.y, i64 1
  %i.ae = insertelement <4 x double> %i.ad, double %i.aa, i64 2
  %i.af = insertelement <4 x double> %i.ae, double %i.l, i64 3
  %i.ag = insertelement <4 x double> poison, double %i.m, i64 0
  %i.ah = shufflevector <4 x double> %i.ag, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ai = fmul <4 x double> %i.af, %i.ah          ; 2 uses
  %i.aj = fmul double %i.ab, %i.w
  %i.ak = fadd double %6, %i.aj
  %i.al = load double, ptr %i.p, align 8, !tbaa !25
  %i.am = fadd double %i.al, %i.ak
  store double %i.am, ptr %i.p, align 8, !tbaa !25
  %i.an = load <2 x double>, ptr %i.q, align 8, !tbaa !21
  %i.ao = insertelement <4 x double> poison, double %i.k, i64 0
  %i.ap = insertelement <4 x double> %i.ao, double %i.t, i64 1
  %i.aq = shufflevector <4 x double> %i.ap, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.ar = fdiv <4 x double> %i.ai, %i.aq
  %i.as = fmul <4 x double> %i.ai, %i.aq
  %i.at = shufflevector <4 x double> %i.ar, <4 x double> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.au = insertelement <4 x double> <double -0.000000e+00, double -0.000000e+00, double poison, double poison>, double %4, i64 2
  %i.av = insertelement <4 x double> %i.au, double %5, i64 3
  %i.aw = fadd <4 x double> %i.av, %i.at
  %i.ax = insertelement <4 x double> poison, double %i.r, i64 0
  %i.ay = insertelement <4 x double> %i.ax, double %i.u, i64 1
  %i.az = shufflevector <2 x double> %i.an, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ba = shufflevector <4 x double> %i.ay, <4 x double> %i.az, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bb = fadd <4 x double> %i.ba, %i.aw
  store <4 x double> %i.bb, ptr %i.n, align 8, !tbaa !21
  store i64 %i.j, ptr %0, align 8, !tbaa !17
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9functions9aggregate22CovarIntermediateInput9mergeIntoERNS2_16CovarAccumulatorEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i32 noundef %2) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef double %i.j(ptr noundef nonnull align 8 dereferenceable(136) %i.g, i32 noundef %2) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef double %i.p(ptr noundef nonnull align 8 dereferenceable(136) %i.m, i32 noundef %2) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 384
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef double %i.v(ptr noundef nonnull align 8 dereferenceable(136) %i.s, i32 noundef %2) ; 2 uses
  %i.x = icmp eq i64 %i.e, 0
  br i1 %i.x, label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load i64, ptr %1, align 8, !tbaa !17     ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.e, ptr %1, align 8, !tbaa !17
  store double %i.k, ptr %i.aa, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.q, ptr %i.ab, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.w, ptr %i.ac, align 8, !tbaa !18
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = add nsw i64 %i.y, %i.e                  ; 2 uses
  %i.ae = sitofp i64 %i.y to double
  %i.af = sitofp i64 %i.e to double               ; 2 uses
  %i.ag = sitofp i64 %i.ad to double              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !18
  %i.aj = load <2 x double>, ptr %i.aa, align 8, !tbaa !21 ; 2 uses
  %i.ak = insertelement <2 x double> poison, double %i.k, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.q, i64 1
  %i.am = fsub <2 x double> %i.al, %i.aj          ; 3 uses
  %shift = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.am, %shift
  %i.an = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ao = fmul double %i.an, %i.ae
  %i.ap = fmul double %i.ao, %i.af
  %i.aq = fdiv double %i.ap, %i.ag
  %i.ar = fadd double %i.w, %i.aq
  %i.as = fadd double %i.ai, %i.ar
  store double %i.as, ptr %i.ah, align 8, !tbaa !18
  %i.at = insertelement <2 x double> poison, double %i.af, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x double> %i.am, %i.au
  %i.aw = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fdiv <2 x double> %i.av, %i.ax
  %i.az = fadd <2 x double> %i.aj, %i.ay
  store <2 x double> %i.az, ptr %i.aa, align 8, !tbaa !21
  store i64 %i.ad, ptr %1, align 8, !tbaa !17
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8facebook5velox9functions9aggregate23CovarIntermediateResult3setEiRKNS2_16CovarAccumulatorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !17
  %i.b = load ptr, ptr %0, align 8, !tbaa !38
  %i.c = sext i32 %1 to i64                       ; 4 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  store i64 %i.a, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.c
  store double %i.f, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.c
  store double %i.k, ptr %i.n, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.c
  store double %i.p, ptr %i.s, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN8facebook5velox9functions9aggregate15CorrAccumulator6updateEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, double noundef %1, double noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !17
  %i.c = add nsw i64 %i.b, 1                      ; 2 uses
  store i64 %i.c, ptr %0, align 8, !tbaa !17
  %i.d = sitofp i64 %i.c to double
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !21 ; 2 uses
  %i.f = insertelement <2 x double> poison, double %1, i64 0
  %i.g = insertelement <2 x double> %i.f, double %2, i64 1 ; 2 uses
  %i.h = fsub <2 x double> %i.g, %i.e             ; 3 uses
  %i.i = insertelement <2 x double> poison, double %i.d, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.h, %i.j
  %i.l = fadd <2 x double> %i.e, %i.k             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = fsub <2 x double> %i.g, %i.l             ; 2 uses
  %i.o = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.q = fmul <2 x double> %i.o, %i.p
  %i.r = load <2 x double>, ptr %i.m, align 8, !tbaa !21
  %i.s = fadd <2 x double> %i.r, %i.q
  %3 = shufflevector <2 x double> %i.l, <2 x double> %i.s, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %3, ptr %i.a, align 8, !tbaa !21
  %foldExtExtBinop = fmul <2 x double> %i.h, %i.n
  %i.t = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !44
  %i.w = fadd double %i.t, %i.v
  store double %i.w, ptr %i.u, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN8facebook5velox9functions9aggregate15CorrAccumulator5mergeElddddd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %5, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %6, ptr %i.e, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %0, align 8, !tbaa !17
  store double %2, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.g, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %i.h, align 8, !tbaa !18
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

bb.d:                                             ; preds = %bb.b
  %i.i = sitofp i64 %i.b to double                ; 2 uses
  %i.j = add nsw i64 %i.b, %1                     ; 2 uses
  %i.k = sitofp i64 %i.j to double                ; 2 uses
  %i.l = fdiv double %i.i, %i.k                   ; 2 uses
  %i.m = sitofp i64 %1 to double                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load double, ptr %i.n, align 8, !tbaa !19 ; 3 uses
  %i.s = fsub double %i.r, %2
  %i.t = tail call noundef double @pow(double noundef %i.s, double noundef 2.000000e+00) #12
  %i.u = load double, ptr %i.o, align 8, !tbaa !20 ; 3 uses
  %i.v = fsub double %i.u, %3
  %i.w = tail call noundef double @pow(double noundef %i.v, double noundef 2.000000e+00) #12
  %i.x = fsub double %2, %i.r                     ; 2 uses
  %i.y = fsub double %3, %i.u                     ; 2 uses
  %i.z = fmul double %i.x, %i.y
  %i.aa = fmul double %i.z, %i.i
  %i.ab = fmul double %i.l, %i.m
  %i.ac = insertelement <4 x double> poison, double %i.x, i64 0
  %i.ad = insertelement <4 x double> %i.ac, double %i.y, i64 1
  %i.ae = insertelement <4 x double> %i.ad, double %i.aa, i64 2
  %i.af = insertelement <4 x double> %i.ae, double %i.l, i64 3
  %i.ag = insertelement <4 x double> poison, double %i.m, i64 0
  %i.ah = shufflevector <4 x double> %i.ag, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ai = fmul <4 x double> %i.af, %i.ah          ; 2 uses
  %i.aj = fmul double %i.ab, %i.w
  %i.ak = fadd double %6, %i.aj
  %i.al = load double, ptr %i.p, align 8, !tbaa !44
  %i.am = fadd double %i.al, %i.ak
  store double %i.am, ptr %i.p, align 8, !tbaa !44
  %i.an = load <2 x double>, ptr %i.q, align 8, !tbaa !21
  %i.ao = insertelement <4 x double> poison, double %i.k, i64 0
  %i.ap = insertelement <4 x double> %i.ao, double %i.t, i64 1
  %i.aq = shufflevector <4 x double> %i.ap, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.ar = fdiv <4 x double> %i.ai, %i.aq
  %i.as = fmul <4 x double> %i.ai, %i.aq
  %i.at = shufflevector <4 x double> %i.ar, <4 x double> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.au = insertelement <4 x double> <double -0.000000e+00, double -0.000000e+00, double poison, double poison>, double %4, i64 2
  %i.av = insertelement <4 x double> %i.au, double %5, i64 3
  %i.aw = fadd <4 x double> %i.av, %i.at
  %i.ax = insertelement <4 x double> poison, double %i.r, i64 0
  %i.ay = insertelement <4 x double> %i.ax, double %i.u, i64 1
  %i.az = shufflevector <2 x double> %i.an, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ba = shufflevector <4 x double> %i.ay, <4 x double> %i.az, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bb = fadd <4 x double> %i.ba, %i.aw
  store <4 x double> %i.bb, ptr %i.n, align 8, !tbaa !21
  store i64 %i.j, ptr %0, align 8, !tbaa !17
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9functions9aggregate21CorrIntermediateInput9mergeIntoERNS2_15CorrAccumulatorEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i32 noundef %2) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef double %i.j(ptr noundef nonnull align 8 dereferenceable(136) %i.g, i32 noundef %2) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef double %i.p(ptr noundef nonnull align 8 dereferenceable(136) %i.m, i32 noundef %2) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 384
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef double %i.v(ptr noundef nonnull align 8 dereferenceable(136) %i.s, i32 noundef %2) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 384
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef double %i.ab(ptr noundef nonnull align 8 dereferenceable(136) %i.y, i32 noundef %2) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 384
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef double %i.ah(ptr noundef nonnull align 8 dereferenceable(136) %i.ae, i32 noundef %2) ; 2 uses
  %i.aj = icmp eq i64 %i.e, 0
  br i1 %i.aj, label %_ZN8facebook5velox9functions9aggregate15CorrAccumulator5mergeElddddd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = load i64, ptr %1, align 8, !tbaa !17    ; 3 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.ac, ptr %i.am, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %i.ai, ptr %i.an, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %1, align 8, !tbaa !17
  store double %i.k, ptr %i.ao, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.q, ptr %i.ap, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.w, ptr %i.aq, align 8, !tbaa !18
  br label %_ZN8facebook5velox9functions9aggregate15CorrAccumulator5mergeElddddd.exit

bb.d:                                             ; preds = %bb.b
  %i.ar = sitofp i64 %i.ak to double              ; 2 uses
  %i.as = add nsw i64 %i.ak, %i.e                 ; 2 uses
  %i.at = sitofp i64 %i.as to double              ; 3 uses
  %i.au = sitofp i64 %i.e to double               ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !19 ; 2 uses
  %i.ax = fsub double %i.aw, %i.k
  %i.ay = tail call noundef double @pow(double noundef %i.ax, double noundef 2.000000e+00) #12
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !20 ; 2 uses
  %i.bb = fsub double %i.ba, %i.q
  %i.bc = tail call noundef double @pow(double noundef %i.bb, double noundef 2.000000e+00) #12
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !44
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bg = fdiv double %i.ar, %i.at
  %i.bh = fmul double %i.bg, %i.au                ; 2 uses
  %i.bi = fmul double %i.bh, %i.ay
  %i.bj = fmul double %i.bh, %i.bc
  %i.bk = fadd double %i.ai, %i.bj
  %i.bl = fadd double %i.be, %i.bk
  store double %i.bl, ptr %i.bd, align 8, !tbaa !44
  %i.bm = insertelement <2 x double> poison, double %i.w, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.ac, i64 1
  %i.bo = load <2 x double>, ptr %i.bf, align 8, !tbaa !21
  %i.bp = insertelement <2 x double> poison, double %i.k, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.q, i64 1
  %i.br = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.ba, i64 1 ; 2 uses
  %i.bt = fsub <2 x double> %i.bq, %i.bs          ; 3 uses
  %shift = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.bt, %shift
  %i.bu = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bv = fmul double %i.bu, %i.ar
  %i.bw = fmul double %i.bv, %i.au
  %i.bx = fdiv double %i.bw, %i.at
  %i.by = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bi, i64 1
  %i.ca = fadd <2 x double> %i.bn, %i.bz
  %i.cb = fadd <2 x double> %i.bo, %i.ca
  store <2 x double> %i.cb, ptr %i.bf, align 8, !tbaa !21
  %i.cc = insertelement <2 x double> poison, double %i.au, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x double> %i.bt, %i.cd
  %i.cf = insertelement <2 x double> poison, double %i.at, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = fdiv <2 x double> %i.ce, %i.cg
  %i.ci = fadd <2 x double> %i.bs, %i.ch          ; 2 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 0
end_hunk_0
