Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/cpu_subroutines?download=true
inline.NumInlined: 18129
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 1435
loop-unroll.NumUnrolled: 1524
begin_hunk_0_@_Z32cpu_statevec_allTargDiagMatr_subILb1EEv5Qureg17FullStateDiagMatrSt7complexIdE.omp_outlined:bb.a
  %i.y = load <2 x double>, ptr %i.x, align 8     ; 2 uses
  %i.z = insertelement <2 x double> poison, double %i.v, i64 0
  %i.aa = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ab = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fmul fast <2 x double> %i.aa, %i.ab     ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fmul fast <2 x double> %i.y, %i.ae      ; 2 uses
  %i.ag = fsub fast <2 x double> %i.af, %i.ac
  %i.ah = fadd fast <2 x double> %i.af, %i.ac
  %i.ai = shufflevector <2 x double> %i.ag, <2 x double> %i.ah, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ai, ptr %i.x, align 8
  %i.aj = add nsw i64 %.018, 1
  %.not.not = icmp slt i64 %.018, %i.o
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z32cpu_statevec_allTargDiagMatr_subILb0EEv5Qureg17FullStateDiagMatrSt7complexIdE(ptr noundef byval(%struct.Qureg) align 8 %0, ptr noundef byval(%struct.FullStateDiagMatr) align 8 %1, double %2, double %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  tail call void @_Z47assert_quregAndFullStateDiagMatrHaveSameDistrib5Qureg17FullStateDiagMatr(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %1)
  tail call void @_Z35assert_exponentMatchesTemplateParamSt7complexIdEb(double %2, double %3, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24
  store i64 %i.e, ptr %i.a, align 8, !tbaa !25
  %i.f = load i32, ptr %0, align 8, !tbaa !27
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_Z32cpu_statevec_allTargDiagMatr_subILb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.omp_outlined, ptr nonnull %i.a, ptr nonnull %1, ptr nonnull %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.c)
  store i32 %i.c, ptr %i.b, align 4, !tbaa !28
  call void @_Z32cpu_statevec_allTargDiagMatr_subILb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.omp_outlined(ptr nonnull %i.b, ptr nonnull poison, ptr %i.a, ptr %1, ptr %0) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z32cpu_statevec_allTargDiagMatr_subILb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %4) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not14 = icmp sgt i64 %i.k, %i.j
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.n = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.015 = phi i64 [ %i.k, %.lr.ph ], [ %i.ac, %bb.c ] ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.p = getelementptr inbounds [16 x i8], ptr %i.o, i64 %.015
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.r = getelementptr inbounds [16 x i8], ptr %i.q, i64 %.015 ; 2 uses
  %i.s = load <2 x double>, ptr %i.p, align 8     ; 2 uses
  %i.t = load <2 x double>, ptr %i.r, align 8     ; 2 uses
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.v = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.w = fmul fast <2 x double> %i.u, %i.v        ; 2 uses
  %i.x = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fmul fast <2 x double> %i.t, %i.x        ; 2 uses
  %i.z = fsub fast <2 x double> %i.y, %i.w
  %i.aa = fadd fast <2 x double> %i.y, %i.w
  %i.ab = shufflevector <2 x double> %i.z, <2 x double> %i.aa, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ab, ptr %i.r, align 8
  %i.ac = add nsw i64 %.015, 1
  %.not.not = icmp slt i64 %.015, %i.n
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE(ptr noundef byval(%struct.Qureg) align 8 %0, ptr noundef byval(%struct.FullStateDiagMatr) align 8 %1, double %2, double %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  tail call void @_Z35assert_exponentMatchesTemplateParamSt7complexIdEb(double %2, double %3, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24
  store i64 %i.e, ptr %i.a, align 8, !tbaa !25
  %i.f = load i32, ptr %0, align 8, !tbaa !27
  %i.g = icmp ne i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp ne i32 %i.i, 0
  %or.cond = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE.omp_outlined, ptr nonnull %i.a, ptr nonnull %1, ptr nonnull %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.c)
  store i32 %i.c, ptr %i.b, align 4, !tbaa !28
  call void @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE.omp_outlined(ptr nonnull %i.b, ptr nonnull poison, ptr %i.a, ptr %1, ptr %0) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb1ELb1ELb1EEv5Qureg17FullStateDiagMatrSt7complexIdE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %4) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not24 = icmp sgt i64 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 72
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.025 = phi i64 [ %i.k, %.lr.ph ], [ %i.ac, %bb.c ] ; 5 uses
  %i.q = load i64, ptr %i.l, align 8, !tbaa !68   ; 2 uses
  %i.r = srem i64 %.025, %i.q
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !43   ; 2 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.r ; 2 uses
  %.sroa.02.sroa.0.0.copyload = load double, ptr %i.t, align 8 ; 2 uses
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.02.sroa.4.0.copyload = load double, ptr %.sroa.02.sroa.4.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.u = load i32, ptr %i.n, align 4, !tbaa !29
  %i.v = sext i32 %i.u to i64
  %i.w = load i64, ptr %i.o, align 8, !tbaa !30
  %i.x = and i64 %i.w, 4294967295
  %i.y = shl i64 %i.v, %i.x
  %i.z = or i64 %i.y, %.025
  %i.aa = sdiv i64 %i.z, %i.q
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.aa ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.ab, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %5 = fmul fast double %.sroa.0.0.copyload, %.sroa.02.sroa.0.0.copyload
  %6 = fmul fast double %.sroa.0.0.copyload, %.sroa.02.sroa.4.0.copyload
  %7 = fmul fast double %.sroa.6.0.copyload, %.sroa.02.sroa.4.0.copyload
  %8 = fadd fast double %7, %5                    ; 2 uses
  %9 = fmul fast double %.sroa.6.0.copyload, %.sroa.02.sroa.0.0.copyload
  %10 = fsub fast double %6, %9                   ; 2 uses
  %11 = load ptr, ptr %i.p, align 8, !tbaa !22
  %12 = getelementptr inbounds [16 x i8], ptr %11, i64 %.025 ; 3 uses
  %13 = load double, ptr %12, align 8             ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %15 = load double, ptr %14, align 8             ; 2 uses
  %16 = fmul fast double %13, %8
  %17 = fmul fast double %15, %10
  %18 = fmul fast double %13, %10
  %19 = fmul fast double %15, %8
  %20 = fsub fast double %16, %17
  %21 = fadd fast double %19, %18
  store double %20, ptr %12, align 8
  store double %21, ptr %14, align 8
  %i.ac = add nsw i64 %.025, 1
  %22 = load i64, ptr %i.b, align 8, !tbaa !25
  %.not.not = icmp slt i64 %.025, %22
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE(ptr noundef byval(%struct.Qureg) align 8 %0, ptr noundef byval(%struct.FullStateDiagMatr) align 8 %1, double %2, double %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  tail call void @_Z35assert_exponentMatchesTemplateParamSt7complexIdEb(double %2, double %3, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24
  store i64 %i.e, ptr %i.a, align 8, !tbaa !25
  %i.f = load i32, ptr %0, align 8, !tbaa !27
  %i.g = icmp ne i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp ne i32 %i.i, 0
  %or.cond = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.omp_outlined, ptr nonnull %i.a, ptr nonnull %1, ptr nonnull %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.c)
  store i32 %i.c, ptr %i.b, align 4, !tbaa !28
  call void @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.omp_outlined(ptr nonnull %i.b, ptr nonnull poison, ptr %i.a, ptr %1, ptr %0) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb1ELb0ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %4) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not16 = icmp sgt i64 %i.k, %i.j
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.o = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.017 = phi i64 [ %i.k, %.lr.ph ], [ %i.af, %bb.c ] ; 4 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !68
  %i.q = srem i64 %.017, %i.p
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.s = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.u = getelementptr inbounds [16 x i8], ptr %i.t, i64 %.017 ; 2 uses
  %i.v = load <2 x double>, ptr %i.s, align 8     ; 2 uses
  %i.w = load <2 x double>, ptr %i.u, align 8     ; 2 uses
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.y = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.z = fmul fast <2 x double> %i.x, %i.y        ; 2 uses
  %i.aa = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul fast <2 x double> %i.w, %i.aa      ; 2 uses
  %i.ac = fsub fast <2 x double> %i.ab, %i.z
  %i.ad = fadd fast <2 x double> %i.ab, %i.z
  %i.ae = shufflevector <2 x double> %i.ac, <2 x double> %i.ad, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ae, ptr %i.u, align 8
  %i.af = add nsw i64 %.017, 1
  %.not.not = icmp slt i64 %.017, %i.o
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE(ptr noundef byval(%struct.Qureg) align 8 %0, ptr noundef byval(%struct.FullStateDiagMatr) align 8 %1, double %2, double %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  tail call void @_Z35assert_exponentMatchesTemplateParamSt7complexIdEb(double %2, double %3, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24
  store i64 %i.e, ptr %i.a, align 8, !tbaa !25
  %i.f = load i32, ptr %0, align 8, !tbaa !27
  %i.g = icmp ne i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp ne i32 %i.i, 0
  %or.cond = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.omp_outlined, ptr nonnull %i.a, ptr nonnull %0, ptr nonnull %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.c)
  store i32 %i.c, ptr %i.b, align 4, !tbaa !28
  call void @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.omp_outlined(ptr nonnull %i.b, ptr nonnull poison, ptr %i.a, ptr %0, ptr %1) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z32cpu_densmatr_allTargDiagMatr_subILb0ELb0ELb1ELb0EEv5Qureg17FullStateDiagMatrSt7complexIdE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %4) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not19 = icmp sgt i64 %i.k, %i.j
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.q = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.020 = phi i64 [ %i.k, %.lr.ph ], [ %i.an, %bb.c ] ; 4 uses
  %i.r = load i32, ptr %i.l, align 4, !tbaa !29
  %i.s = sext i32 %i.r to i64
  %i.t = load i64, ptr %i.m, align 8, !tbaa !30
end_hunk_0
