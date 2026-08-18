inline.NumInlined: 101
inline.NumDeleted: 37
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !15
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
  %i.b = load double, ptr %i.a, align 8, !tbaa !20
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK8facebook5velox9functions9aggregate16CovarAccumulator5meanXEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !21
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK8facebook5velox9functions9aggregate16CovarAccumulator5meanYEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !22
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
  %i.e = load <2 x double>, ptr %i.c, align 8, !tbaa !23 ; 2 uses
  %i.f = insertelement <2 x double> poison, double %1, i64 0
  %i.g = insertelement <2 x double> %i.f, double %2, i64 1
  %i.h = fsub <2 x double> %i.g, %i.e             ; 2 uses
  %i.i = insertelement <2 x double> poison, double %i.d, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.h, %i.j
  %i.l = fadd <2 x double> %i.e, %i.k             ; 2 uses
  store <2 x double> %i.l, ptr %i.c, align 8, !tbaa !23
  %i.m = extractelement <2 x double> %i.l, i64 1
  %i.n = fsub double %2, %i.m
  %i.o = extractelement <2 x double> %i.h, i64 0
  %i.p = fmul double %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !20
  %i.s = fadd double %i.r, %i.p
  store double %i.s, ptr %i.q, align 8, !tbaa !20
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
  store double %2, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %i.f, align 8, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.b, %1                     ; 2 uses
  %i.h = sitofp i64 %i.b to double
  %i.i = sitofp i64 %1 to double                  ; 2 uses
  %i.j = sitofp i64 %i.g to double                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !20
  %i.m = load <2 x double>, ptr %i.d, align 8, !tbaa !23 ; 2 uses
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
  store double %i.v, ptr %i.k, align 8, !tbaa !20
  %i.w = insertelement <2 x double> poison, double %i.i, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x double> %i.p, %i.x
  %i.z = insertelement <2 x double> poison, double %i.j, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fdiv <2 x double> %i.y, %i.aa
  %i.ac = fadd <2 x double> %i.m, %i.ab
  store <2 x double> %i.ac, ptr %i.d, align 8, !tbaa !23
  store i64 %i.g, ptr %0, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK8facebook5velox9functions9aggregate15RegrAccumulator3m2XEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load double, ptr %i.a, align 8, !tbaa !24
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
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %i.f = insertelement <2 x double> poison, double %1, i64 0
  %i.g = insertelement <2 x double> %i.f, double %2, i64 1 ; 2 uses
  %i.h = fsub <2 x double> %i.g, %i.e             ; 2 uses
  %i.i = insertelement <2 x double> poison, double %i.d, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.h, %i.j
  %i.l = fadd <2 x double> %i.e, %i.k             ; 2 uses
  store <2 x double> %i.l, ptr %i.a, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = fsub <2 x double> %i.g, %i.l
  %i.o = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.q = fmul <2 x double> %i.o, %i.p
  %i.r = load <2 x double>, ptr %i.m, align 8, !tbaa !23
  %i.s = fadd <2 x double> %i.r, %i.q
  store <2 x double> %i.s, ptr %i.m, align 8, !tbaa !23
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
  store double %5, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %0, align 8, !tbaa !17
  store double %2, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %i.g, align 8, !tbaa !20
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

bb.d:                                             ; preds = %bb.b
  %i.h = sitofp i64 %i.b to double
  %i.i = add nsw i64 %i.b, %1                     ; 2 uses
  %i.j = sitofp i64 %i.i to double                ; 2 uses
  %i.k = sitofp i64 %1 to double
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load double, ptr %i.l, align 8, !tbaa !21 ; 3 uses
  %i.p = fsub double %i.o, %2
  %i.q = tail call noundef double @pow(double noundef %i.p, double noundef 2.000000e+00) #12
  %i.r = fsub double %2, %i.o                     ; 2 uses
  %i.s = load double, ptr %i.m, align 8, !tbaa !22 ; 2 uses
  %i.t = fsub double %3, %i.s                     ; 2 uses
  %i.u = fmul double %i.r, %i.t
  %6 = insertelement <2 x double> poison, double %i.h, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %8 = insertelement <2 x double> poison, double %i.u, i64 0
  %9 = insertelement <2 x double> %8, double %i.j, i64 1 ; 2 uses
  %10 = fmul <2 x double> %7, %9
  %11 = fdiv <2 x double> %7, %9
  %i.v = load <2 x double>, ptr %i.n, align 8, !tbaa !23
  %i.w = insertelement <4 x double> poison, double %i.r, i64 0
  %i.x = insertelement <4 x double> %i.w, double %i.t, i64 1
  %12 = shufflevector <2 x double> %10, <2 x double> %11, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %13 = shufflevector <4 x double> %i.x, <4 x double> %12, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.y = insertelement <4 x double> poison, double %i.k, i64 0
  %i.z = shufflevector <4 x double> %i.y, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aa = fmul <4 x double> %13, %i.z             ; 2 uses
  %i.ab = insertelement <4 x double> poison, double %i.j, i64 0
  %i.ac = insertelement <4 x double> %i.ab, double %i.q, i64 1
  %i.ad = shufflevector <4 x double> %i.ac, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.ae = fdiv <4 x double> %i.aa, %i.ad
  %i.af = fmul <4 x double> %i.aa, %i.ad
  %i.ag = shufflevector <4 x double> %i.ae, <4 x double> %i.af, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ah = insertelement <4 x double> <double -0.000000e+00, double -0.000000e+00, double poison, double poison>, double %4, i64 2
  %i.ai = insertelement <4 x double> %i.ah, double %5, i64 3
  %i.aj = fadd <4 x double> %i.ai, %i.ag
  %i.ak = insertelement <4 x double> poison, double %i.o, i64 0
  %i.al = insertelement <4 x double> %i.ak, double %i.s, i64 1
  %i.am = shufflevector <2 x double> %i.v, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.an = shufflevector <4 x double> %i.al, <4 x double> %i.am, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ao = fadd <4 x double> %i.an, %i.aj
  store <4 x double> %i.ao, ptr %i.l, align 8, !tbaa !23
  store i64 %i.i, ptr %0, align 8, !tbaa !17
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK8facebook5velox9functions9aggregate23ExtendedRegrAccumulator3m2YEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load double, ptr %i.a, align 8, !tbaa !26
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
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %i.f = insertelement <2 x double> poison, double %1, i64 0
  %i.g = insertelement <2 x double> %i.f, double %2, i64 1 ; 2 uses
  %i.h = fsub <2 x double> %i.g, %i.e             ; 3 uses
  %i.i = insertelement <2 x double> poison, double %i.d, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.h, %i.j
  %i.l = fadd <2 x double> %i.e, %i.k             ; 2 uses
  store <2 x double> %i.l, ptr %i.a, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = fsub <2 x double> %i.g, %i.l             ; 2 uses
  %i.o = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.q = fmul <2 x double> %i.o, %i.p
  %i.r = load <2 x double>, ptr %i.m, align 8, !tbaa !23
  %i.s = fadd <2 x double> %i.r, %i.q
  store <2 x double> %i.s, ptr %i.m, align 8, !tbaa !23
  %foldExtExtBinop = fmul <2 x double> %i.h, %i.n
  %i.t = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !26
  %i.w = fadd double %i.t, %i.v
  store double %i.w, ptr %i.u, align 8, !tbaa !26
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
  store double %5, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %6, ptr %i.e, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %0, align 8, !tbaa !17
  store double %2, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %i.h, align 8, !tbaa !20
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
  %i.r = load double, ptr %i.n, align 8, !tbaa !21 ; 3 uses
  %i.s = fsub double %i.r, %2
  %i.t = tail call noundef double @pow(double noundef %i.s, double noundef 2.000000e+00) #12
  %i.u = load double, ptr %i.o, align 8, !tbaa !22 ; 3 uses
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
  %i.al = load double, ptr %i.p, align 8, !tbaa !26
  %i.am = fadd double %i.al, %i.ak
  store double %i.am, ptr %i.p, align 8, !tbaa !26
  %i.an = load <2 x double>, ptr %i.q, align 8, !tbaa !23
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
  store <4 x double> %i.bb, ptr %i.n, align 8, !tbaa !23
  store i64 %i.j, ptr %0, align 8, !tbaa !17
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9functions9aggregate22CovarIntermediateInput9mergeIntoERNS2_16CovarAccumulatorEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i32 noundef %2) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef double %i.j(ptr noundef nonnull align 8 dereferenceable(136) %i.g, i32 noundef %2) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef double %i.p(ptr noundef nonnull align 8 dereferenceable(136) %i.m, i32 noundef %2) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
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
  store double %i.k, ptr %i.aa, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.q, ptr %i.ab, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.w, ptr %i.ac, align 8, !tbaa !20
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = add nsw i64 %i.y, %i.e                  ; 2 uses
  %i.ae = sitofp i64 %i.y to double
  %i.af = sitofp i64 %i.e to double               ; 2 uses
  %i.ag = sitofp i64 %i.ad to double              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !20
  %i.aj = load <2 x double>, ptr %i.aa, align 8, !tbaa !23 ; 2 uses
  %i.ak = insertelement <2 x double> poison, double %i.k, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.q, i64 1
  %i.am = fsub <2 x double> %i.al, %i.aj          ; 3 uses
end_hunk_0
