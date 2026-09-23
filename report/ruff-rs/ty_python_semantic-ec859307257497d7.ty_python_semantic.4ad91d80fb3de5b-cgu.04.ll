Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.04?download=true
inline.NumInlined: 10536
inline.NumDeleted: 4602
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB6_19TypeRelationChecker20with_recursion_guardNCNvB2_15check_type_pairso_0EBa_:bb.a
  br i1 %i.bg, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.i.i.i, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread.i.i

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.i.i.i: ; preds = %bb.g
  %i.bh = icmp ne i32 %.sroa.08.0.copyload.i.i, 17
  call void @llvm.assume(i1 %i.bh)
  %i.bi = add nsw i32 %.sroa.08.0.copyload.i.i, -4
  %i.bj = icmp samesign ugt i32 %.sroa.08.0.copyload.i.i, 3
  %narrow.i.i.i = select i1 %i.bj, i32 %i.bi, i32 13
  switch i32 %narrow.i.i.i, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker38should_provide_callable_upcast_context.exit.thread28.i.i [
    i32 3, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread.i.i
    i32 4, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread.i.i
    i32 9, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread.i.i
    i32 17, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker38should_provide_callable_upcast_context.exit.i.i
  ]

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread.i.i: ; preds = %bb.h, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker38should_provide_callable_upcast_context.exit.i.i, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.i.i.i, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.i.i.i, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.i.i.i, %bb.g, %bb.f
  call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !497
  br label %bb.j

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker38should_provide_callable_upcast_context.exit.i.i: ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.i.i.i
  %i.bk = icmp ne i32 %.sroa.411.0.copyload.i.i, 5
  call void @llvm.assume(i1 %i.bk)
  %.not.i.i = icmp eq i32 %.sroa.411.0.copyload.i.i, 21
  br i1 %.not.i.i, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread.i.i, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker38should_provide_callable_upcast_context.exit.thread28.i.i

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker38should_provide_callable_upcast_context.exit.thread28.i.i: ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker38should_provide_callable_upcast_context.exit.i.i, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.i.i.i
  %i.bl = invoke noundef zeroext i1 @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet18is_never_satisfied(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.i, ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ad, ptr noundef nonnull align 4 %i.af)
          to label %bb.h unwind label %bb.k, !noalias !500

bb.h:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker38should_provide_callable_upcast_context.exit.thread28.i.i
  br i1 %i.bl, label %bb.i, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread.i.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !494
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB5_13CallableTypes9into_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.bm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ad, ptr noundef nonnull align 4 %i.af), !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !494
  store i32 %.sroa.08.0.copyload.i.i, ptr %i.e, align 8, !noalias !494
  %.sroa.411.0..sroa_idx14.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.411.0.copyload.i.i, ptr %.sroa.411.0..sroa_idx14.i.i, align 4, !noalias !494
  %.sroa.516.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.516.0.copyload.i.i, ptr %.sroa.516.0..sroa_idx19.i.i, align 8, !noalias !494
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 20, ptr %i.bn, align 4, !noalias !494
  call void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_errorNtB5_16ErrorContextTree4push(ptr noundef nonnull align 8 %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.e), !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !494
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !494
  br label %_RNCNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_19TypeRelationChecker15check_type_pairso_0Bb_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable13CallableTypesEBH_.exit.i.i: ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm.i.i

bb.k:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker38should_provide_callable_upcast_context.exit.thread28.i.i, %.noexc.i.i, %bb.d
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable13CallableTypesEBH_.exit.i.i unwind label %bb.l, !noalias !497

bb.l:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63, !noalias !497
  unreachable

_RNCNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_19TypeRelationChecker15check_type_pairso_0Bb_.exit.i: ; preds = %bb.j, %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtB7_8relation12TypeRelationTNtB7_4TypeB1J_B1e_NtB1g_17TypeVarEvaluationENtNtB7_11constraints13ConstraintSetKj1_E12finish_visitB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bp, ptr noundef nonnull align 8 %i.n, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(36) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.i), !noalias !503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !489
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bq = getelementptr i8, ptr %1, i64 48
  %.val = load ptr, ptr %i.bq, align 8, !nonnull !12, !align !13, !noundef !12
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.br, align 8, !alias.scope !504
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.bs, align 4, !alias.scope !504
  store ptr %.val, ptr %0, align 8, !alias.scope !504
  br label %bb.o

bb.n:                                             ; preds = %bb.b, %_RNCNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_19TypeRelationChecker15check_type_pairso_0Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB6_19TypeRelationChecker20with_recursion_guardNCNvB2_15check_type_pairsp_0EBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %4, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [36 x i8], align 4                ; 8 uses
  %.sroa.6 = alloca [36 x i8], align 4            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i8, ptr %i.i, align 8, !range !18, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.l = load i8, ptr %i.k, align 1, !range !17, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 %i.j, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  store i8 %i.l, ptr %i.o, align 1
  call void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtB7_8relation12TypeRelationTNtB7_4TypeB1J_B1e_NtB1g_17TypeVarEvaluationENtNtB7_11constraints13ConstraintSetKj1_E11begin_visitB9_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noundef nonnull align 8 %i.h, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(36) %i.f), !inline_history !505
  %i.p = load i32, ptr %i.c, align 8, !range !19, !noundef !12
  switch i32 %i.p, label %default.unreachable [
    i32 0, label %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsp_0EBa_.exit
    i32 1, label %bb.b
    i32 2, label %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsp_0EBa_.exit.thread
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsp_0EBa_.exit.thread: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !517
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.r = load ptr, ptr %6, align 8, !alias.scope !518, !noalias !519, !nonnull !12, !align !13, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !518, !noalias !519, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !518, !noalias !519, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !520
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !518, !noalias !519, !nonnull !12, !align !16, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.x, i64 16, i1 false), !noalias !520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !520
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !518, !noalias !519, !nonnull !12, !align !16, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false), !noalias !520
  call void @_RNvMs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtNtB7_8relation19TypeRelationChecker29check_type_satisfies_protocol(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull align 8 %i.r, ptr noundef nonnull %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.v, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a), !noalias !521, !inline_history !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !517
  call void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtB7_8relation12TypeRelationTNtB7_4TypeB1J_B1e_NtB1g_17TypeVarEvaluationENtNtB7_11constraints13ConstraintSetKj1_E12finish_visitB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noundef nonnull align 8 %i.h, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(36) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.e)
  %.sroa.6.8..sroa_idx1 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.8..sroa_idx1, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !517
  br label %bb.c

_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsp_0EBa_.exit: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.8..sroa_idx2 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.8..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ab = getelementptr i8, ptr %1, i64 48
  %.val = load ptr, ptr %i.ab, align 8, !nonnull !12, !align !13, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.ac, align 8, !alias.scope !523
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ad, align 4, !alias.scope !523
  store ptr %.val, ptr %0, align 8, !alias.scope !523
  br label %bb.d

bb.c:                                             ; preds = %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsp_0EBa_.exit, %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsp_0EBa_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.8..sroa_idx, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB6_19TypeRelationChecker20with_recursion_guardNCNvB2_15check_type_pairsq_0EBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %4, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [96 x i8], align 8                ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 4                ; 4 uses
  %i.h = alloca [16 x i8], align 4                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 3 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 4                ; 5 uses
  %i.l = alloca [16 x i8], align 4                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 3 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 4                ; 4 uses
  %i.p = alloca [16 x i8], align 4                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 3 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [20 x i8], align 4                ; 12 uses
  %i.t = alloca [16 x i8], align 4                ; 6 uses
  %i.u = alloca [16 x i8], align 4                ; 6 uses
  %i.v = alloca [16 x i8], align 4                ; 4 uses
  %i.w = alloca [16 x i8], align 4                ; 4 uses
  %i.x = alloca [12 x i8], align 4                ; 15 uses
  %i.y = alloca [16 x i8], align 4                ; 4 uses
  %i.z = alloca [16 x i8], align 4                ; 6 uses
  %i.aa = alloca [16 x i8], align 4               ; 6 uses
  %i.ab = alloca [16 x i8], align 4               ; 4 uses
  %i.ac = alloca [16 x i8], align 4               ; 5 uses
  %i.ad = alloca [16 x i8], align 4               ; 4 uses
  %i.ae = alloca [16 x i8], align 4               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 3 uses
  %i.ah = alloca [72 x i8], align 8               ; 12 uses
  %i.ai = alloca [16 x i8], align 8               ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 3 uses
  %i.ak = alloca [16 x i8], align 4               ; 4 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [16 x i8], align 8               ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 3 uses
  %i.ao = alloca [72 x i8], align 8               ; 13 uses
  %i.ap = alloca [40 x i8], align 8               ; 8 uses
  %i.aq = alloca [20 x i8], align 4               ; 9 uses
  %i.ar = alloca [16 x i8], align 4               ; 4 uses
  %i.as = alloca [16 x i8], align 8               ; 4 uses
  %i.at = alloca [16 x i8], align 8               ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 3 uses
  %i.av = alloca [20 x i8], align 4               ; 8 uses
  %i.aw = alloca [20 x i8], align 4               ; 8 uses
  %i.ax = alloca [72 x i8], align 8               ; 11 uses
  %i.ay = alloca [72 x i8], align 8               ; 8 uses
  %i.az = alloca [16 x i8], align 8               ; 4 uses
  %i.ba = alloca [16 x i8], align 8               ; 3 uses
  %i.bb = alloca [16 x i8], align 4               ; 4 uses
  %i.bc = alloca [16 x i8], align 4               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 6 uses
  %i.be = alloca [16 x i8], align 4               ; 4 uses
  %i.bf = alloca [16 x i8], align 4               ; 4 uses
  %i.bg = alloca [16 x i8], align 8               ; 6 uses
  %i.bh = alloca [72 x i8], align 8               ; 7 uses
  %i.bi = alloca [72 x i8], align 8               ; 7 uses
  %i.bj = alloca [16 x i8], align 4               ; 4 uses
  %i.bk = alloca [16 x i8], align 4               ; 4 uses
  %i.bl = alloca [16 x i8], align 4               ; 4 uses
  %i.bm = alloca [16 x i8], align 4               ; 4 uses
  %i.bn = alloca [16 x i8], align 4               ; 4 uses
  %i.bo = alloca [16 x i8], align 8               ; 6 uses
  %i.bp = alloca [72 x i8], align 8               ; 7 uses
  %i.bq = alloca [16 x i8], align 4               ; 4 uses
  %i.br = alloca [16 x i8], align 4               ; 4 uses
  %i.bs = alloca [72 x i8], align 8               ; 7 uses
  %i.bt = alloca [72 x i8], align 8               ; 6 uses
  %i.bu = alloca [16 x i8], align 8               ; 12 uses
  %i.bv = alloca [72 x i8], align 8               ; 13 uses
  %i.bw = alloca [16 x i8], align 8               ; 14 uses
  %i.bx = alloca [12 x i8], align 4               ; 6 uses
  %i.by = alloca [12 x i8], align 4               ; 7 uses
  %i.bz = alloca [16 x i8], align 8               ; 4 uses
  %i.ca = alloca [16 x i8], align 8               ; 3 uses
  %i.cb = alloca [16 x i8], align 4               ; 4 uses
  %i.cc = alloca [16 x i8], align 8               ; 4 uses
  %i.cd = alloca [16 x i8], align 8               ; 3 uses
  %i.ce = alloca [72 x i8], align 8               ; 13 uses
  %i.cf = alloca [20 x i8], align 4               ; 5 uses
  %i.cg = alloca [20 x i8], align 4               ; 10 uses
  %i.ch = alloca [16 x i8], align 4               ; 4 uses
  %i.ci = alloca [16 x i8], align 8               ; 4 uses
  %i.cj = alloca [16 x i8], align 8               ; 3 uses
  %i.ck = alloca [72 x i8], align 8               ; 13 uses
  %i.cl = alloca [16 x i8], align 8               ; 11 uses
  %i.cm = alloca [20 x i8], align 4               ; 6 uses
  %i.cn = alloca [12 x i8], align 4               ; 14 uses
  %i.co = alloca [36 x i8], align 4               ; 2 uses
  %i.cp = alloca [16 x i8], align 8               ; 4 uses
  %i.cq = alloca [16 x i8], align 8               ; 50 uses
  %i.cr = alloca [40 x i8], align 8               ; 4 uses
  %i.cs = alloca [36 x i8], align 4               ; 8 uses
  %.sroa.6 = alloca [36 x i8], align 4            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cw = load i8, ptr %i.cv, align 8, !range !18, !noundef !12
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.cy = load i8, ptr %i.cx, align 1, !range !17, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cs, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cz, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store i8 %i.cw, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 33
  store i8 %i.cy, ptr %i.db, align 1
  call void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtB7_8relation12TypeRelationTNtB7_4TypeB1J_B1e_NtB1g_17TypeVarEvaluationENtNtB7_11constraints13ConstraintSetKj1_E11begin_visitB9_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cr, ptr noundef nonnull align 8 %i.cu, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(36) %i.cs), !inline_history !524
  %i.dc = load i32, ptr %i.cr, align 8, !range !19, !noundef !12
  switch i32 %i.dc, label %default.unreachable520 [
    i32 0, label %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsq_0EBa_.exit
    i32 1, label %bb.dw
    i32 2, label %bb.b
  ]

default.unreachable520:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.co, ptr noundef nonnull align 4 dereferenceable(36) %i.dd, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !690
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.de = load ptr, ptr %6, align 8, !alias.scope !691, !noalias !692, !nonnull !12, !align !13, !noundef !12 ; 39 uses
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !691, !noalias !692, !nonnull !12, !noundef !12 ; 44 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !691, !noalias !692, !nonnull !12, !align !13, !noundef !12 ; 44 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !691, !noalias !692, !nonnull !12, !align !16, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %i.dk, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !693
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !691, !noalias !692, !nonnull !12, !align !16, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cn, ptr noundef nonnull align 4 dereferenceable(12) %i.dm, i64 12, i1 false), !noalias !693
  call void @llvm.experimental.noalias.scope.decl(metadata !694), !noalias !695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !693
  %i.dn = load i32, ptr %i.cn, align 4, !range !23, !alias.scope !694, !noalias !696, !noundef !12 ; 2 uses
  %i.do = icmp eq i32 %i.dn, -2
  br i1 %i.do, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !range !20, !alias.scope !694, !noalias !696, !noundef !12 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !alias.scope !694, !noalias !696, !noundef !12 ; 3 uses
  %i.dt = call noundef zeroext i1 @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_24SynthesizedTypedDictType8is_patch(i32 noundef %i.dq, i32 noundef %i.ds, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di), !noalias !697, !inline_history !538
  br i1 %i.dt, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0234.0.copyload = load i32, ptr %i.x, align 4
  %i.du = icmp eq i32 %.sroa.0234.0.copyload, -2
  br i1 %i.du, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit.thread

.thread:                                          ; preds = %bb.b
  %.sroa.0234.0.copyload264 = load i32, ptr %i.x, align 4 ; 2 uses
  %i.dv = icmp eq i32 %.sroa.0234.0.copyload264, -2
  br i1 %i.dv, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread, label %bb.af

bb.e:                                             ; preds = %bb.c
  %i.dw = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType5items(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.x, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di) ; 3 uses
  %i.dx = call noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dicts4_1__NtB8_24SynthesizedTypedDictType5itemsDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.dq, i32 noundef %i.ds, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di), !noalias !697, !inline_history !538 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !698
  call void @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dicts4_1__NtB8_24SynthesizedTypedDictType8opennessDNtNtBc_2db2DbEL_EBc_(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.cm, i32 noundef %i.dq, i32 noundef %i.ds, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di), !noalias !697, !inline_history !538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !698
  %i.dy = getelementptr i8, ptr %i.de, i64 48     ; 6 uses
  %.val110.i.i = load ptr, ptr %i.dy, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  store i32 -1, ptr %i.dz, align 8, !alias.scope !699, !noalias !697
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.ea, align 4, !alias.scope !699, !noalias !697
  store ptr %.val110.i.i, ptr %i.cl, align 8, !alias.scope !699, !noalias !697
  %i.eb = load ptr, ptr %i.dw, align 8, !alias.scope !700, !noalias !701, !noundef !12 ; 3 uses
  %.not.i101 = icmp eq ptr %i.eb, null
  br i1 %.not.i101, label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit110, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ed = load <2 x i64>, ptr %i.ec, align 8, !alias.scope !700, !noalias !701
  br label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit110

_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit110: ; preds = %bb.e, %bb.f
  %.sink19.i108 = phi i64 [ 0, %bb.e ], [ 1, %bb.f ] ; 2 uses
  %i.ee = phi <2 x i64> [ <i64 undef, i64 0>, %bb.e ], [ %i.ed, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !698
  store i64 %.sink19.i108, ptr %i.ck, align 8, !noalias !698
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !698
  %.sroa.6115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.eb, ptr %.sroa.6115.0..sroa_idx, align 8, !noalias !698
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.ef = extractelement <2 x i64> %i.ee, i64 0
  store i64 %i.ef, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !698
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i64 %.sink19.i108, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !698
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !698
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB6_19TypeRelationChecker20with_recursion_guardNCNvB2_15check_type_pairsq_0EBa_:bb.a
    i32 0, label %bb.r
    i32 1, label %bb.s
    i32 2, label %bb.t
  ]

.loopexit:                                        ; preds = %bb.z, %._crit_edge, %._crit_edge372
  unreachable

bb.r:                                             ; preds = %bb.t, %._crit_edge372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !698
  br label %bb.q

bb.s:                                             ; preds = %._crit_edge372
  %.val123.i.i = load ptr, ptr %i.dy, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.fp, align 8, !alias.scope !711, !noalias !712
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.fq, align 4, !alias.scope !711, !noalias !712
  store ptr %.val123.i.i, ptr %i.cq, align 8, !alias.scope !711, !noalias !712
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %i.cm, i64 16, i1 false), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !698
  %i.fr = load ptr, ptr %i.dy, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !698
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bz, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ac, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ab), !noalias !697, !inline_history !538
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ca, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.fr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.bz), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !698
  br label %bb.r

bb.u:                                             ; preds = %bb.w, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !698
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph371
  %i.fs = extractvalue { ptr, ptr } %.pn376, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !698
  %i.ft = load ptr, ptr %i.dy, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cb, ptr noundef nonnull align 4 dereferenceable(16) %i.fs, i64 16, i1 false), !noalias !697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %i.cg, i64 16, i1 false)
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cc, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.y, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.cb), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !698
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cd, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.ft, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.cc), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !698
  %.sroa.4128.0.copyload = load i32, ptr %i.dz, align 8, !noalias !698
  %i.fu = icmp eq i32 %.sroa.4128.0.copyload, -2
  br i1 %i.fu, label %bb.w, label %.backedge

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !noalias !710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !698
  br label %bb.u

bb.x:                                             ; preds = %bb.u, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !698
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !698
  br label %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsq_0EBa_.exit.thread

bb.z:                                             ; preds = %bb.g
  switch i32 %narrow101.i.i, label %.loopexit [
    i32 0, label %.backedge326
    i32 1, label %bb.ab
    i32 2, label %bb.aa
  ]

.backedge326:                                     ; preds = %bb.z, %bb.aa
  %i.fv = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ck), !noalias !697, !inline_history !538 ; 2 uses
  %i.fw = extractvalue { ptr, ptr } %i.fv, 0      ; 2 uses
  %.not95.i.i = icmp eq ptr %i.fw, null
  br i1 %.not95.i.i, label %._crit_edge369, label %bb.g

bb.aa:                                            ; preds = %bb.g, %bb.z
  %.sink = phi ptr [ %i.cm, %bb.z ], [ %i.ew, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %.sink, i64 16, i1 false), !noalias !697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !698
  %i.fx = load ptr, ptr %i.dy, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ch, ptr noundef nonnull align 4 dereferenceable(16) %i.el, i64 16, i1 false), !noalias !697
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ci, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ch, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ad), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !698
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.fx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.ci), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !698
  %.sroa.4.0.copyload = load i32, ptr %i.dz, align 8, !noalias !698
  %i.fy = icmp eq i32 %.sroa.4.0.copyload, -2
  br i1 %i.fy, label %bb.ad, label %.backedge326

bb.ab:                                            ; preds = %bb.z
  %.val122.i.i = load ptr, ptr %i.dy, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.fz, align 8, !alias.scope !713, !noalias !712
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.ga, align 4, !alias.scope !713, !noalias !712
  store ptr %.val122.i.i, ptr %i.cq, align 8, !alias.scope !713, !noalias !712
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !698
  br label %bb.y

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !noalias !710
  br label %bb.ac

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !698
  br label %bb.aq

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread: ; preds = %bb.d, %.thread, %bb.aq
  %i.gb = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType5items(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.x, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di) ; 9 uses
  %i.gc = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType5items(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.cn, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di), !noalias !714, !inline_history !538 ; 5 uses
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType8openness(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.s, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.x, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di)
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType8openness(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.aq, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.cn, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di), !inline_history !538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !698
  %i.gd = getelementptr i8, ptr %i.de, i64 48     ; 23 uses
  %.val109.i.i = load ptr, ptr %i.gd, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  store i32 -1, ptr %i.ge, align 8, !alias.scope !715, !noalias !697
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.gf, align 4, !alias.scope !715, !noalias !697
  store ptr %.val109.i.i, ptr %i.bw, align 8, !alias.scope !715, !noalias !697
  %i.gg = load ptr, ptr %i.gc, align 8, !alias.scope !716, !noalias !717, !noundef !12 ; 3 uses
  %.not.i74 = icmp eq ptr %i.gg, null
  br i1 %.not.i74, label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit83, label %bb.ae

bb.ae:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gi = load <2 x i64>, ptr %i.gh, align 8, !alias.scope !716, !noalias !717
  br label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit83

_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit83: ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread, %bb.ae
  %.sink19.i81 = phi i64 [ 0, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread ], [ 1, %bb.ae ] ; 2 uses
  %i.gj = phi <2 x i64> [ <i64 undef, i64 0>, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread ], [ %i.gi, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !698
  store i64 %.sink19.i81, ptr %i.bv, align 8, !noalias !698
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr null, ptr %.sroa.5141.0..sroa_idx, align 8, !noalias !698
  %.sroa.6142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.gg, ptr %.sroa.6142.0..sroa_idx, align 8, !noalias !698
  %.sroa.7143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.gk = extractelement <2 x i64> %i.gj, i64 0
  store i64 %i.gk, ptr %.sroa.7143.0..sroa_idx, align 8, !noalias !698
  %.sroa.8144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i64 %.sink19.i81, ptr %.sroa.8144.0..sroa_idx, align 8, !noalias !698
  %.sroa.9145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store ptr null, ptr %.sroa.9145.0..sroa_idx, align 8, !noalias !698
  %.sroa.10146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store ptr %i.gg, ptr %.sroa.10146.0..sroa_idx, align 8, !noalias !698
  %.sroa.11147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store <2 x i64> %i.gj, ptr %.sroa.11147.0..sroa_idx, align 8, !noalias !698
  %i.gl = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bv), !noalias !697, !inline_history !538 ; 2 uses
  %i.gm = extractvalue { ptr, ptr } %i.gl, 0      ; 2 uses
  %.not74.i.i360 = icmp eq ptr %i.gm, null
  br i1 %.not74.i.i360, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit83
  %.sroa.6254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.sroa.7156.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.sroa.8159.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.5248.sroa.4.0..sroa.5248.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.7.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.7.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 7 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  br label %bb.at

bb.af:                                            ; preds = %.thread
  %.sroa.5235.0..sroa_idx265 = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.5235.0.copyload266 = load i64, ptr %.sroa.5235.0..sroa_idx265, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !698
  store i32 %.sroa.0234.0.copyload264, ptr %i.by, align 4, !noalias !698
  %.sroa.7132.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i64 %.sroa.5235.0.copyload266, ptr %.sroa.7132.0..sroa_idx272, align 4, !noalias !698
  %.sroa.7137.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %.sroa.7137.0.copyload139 = load i64, ptr %.sroa.7137.0..sroa_idx138, align 4, !alias.scope !718, !noalias !696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !698
  store i32 %i.dn, ptr %i.bx, align 4, !noalias !698
  %.sroa.7137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i64 %.sroa.7137.0.copyload139, ptr %.sroa.7137.0..sroa_idx, align 4, !noalias !698
  %i.gu = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !719
  %7 = getelementptr inbounds nuw i8, ptr %i.de, i64 48 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.gw = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.gx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %8 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %9 = getelementptr inbounds nuw i8, ptr %i.e, i64 89
  %i.gz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5.0..sroa_idx.i.i73 = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 90
  %10 = load ptr, ptr %i.gu, align 8, !noalias !719, !nonnull !12, !align !16, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !719
  %11 = load ptr, ptr %7, align 8, !noalias !719, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %12 = load <2 x ptr>, ptr %i.gv, align 8, !noalias !719
  store i32 0, ptr %8, align 8, !alias.scope !720, !noalias !719
  store ptr null, ptr %i.e, align 8, !alias.scope !720, !noalias !719
  store ptr %11, ptr %i.gz, align 8, !alias.scope !720, !noalias !719
  store i32 -2, ptr %i.ha, align 8, !alias.scope !720, !noalias !719
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i73, align 4, !alias.scope !720, !noalias !719
  %13 = insertelement <4 x ptr> poison, ptr %10, i64 0
  %14 = insertelement <4 x ptr> %13, ptr %11, i64 1
  %15 = shufflevector <2 x ptr> %12, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %16 = shufflevector <4 x ptr> %14, <4 x ptr> %15, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %16, ptr %i.gx, align 8, !alias.scope !720, !noalias !719
  %17 = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %18 = load <2 x ptr>, ptr %i.gw, align 8, !noalias !719
  store i8 2, ptr %i.gy, align 8, !alias.scope !720, !noalias !719
  store i8 0, ptr %9, align 1, !alias.scope !720, !noalias !719
  store i8 1, ptr %i.hb, align 2, !alias.scope !720, !noalias !719
  store <2 x ptr> %18, ptr %17, align 8, !alias.scope !720, !noalias !719
  invoke void @_RNvMsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtNtB7_8relation19TypeRelationChecker16check_class_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.e, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.by, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.bx)
          to label %bb.aj unwind label %bb.ag, !noalias !697, !inline_history !570

bb.ag:                                            ; preds = %bb.al, %bb.af
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.am, %bb.ag
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.hc, %bb.ag ], [ %i.hr, %bb.am ]
  call void @llvm.experimental.noalias.scope.decl(metadata !721), !noalias !697
  call void @llvm.experimental.noalias.scope.decl(metadata !722), !noalias !697
  %i.hd = load ptr, ptr %i.e, align 8, !alias.scope !723, !noalias !719, !noundef !12 ; 3 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8relation19TypeRelationCheckerEBH_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.body.i
  %i.hf = load i64, ptr %i.hd, align 8, !noalias !724, !noundef !12
  %i.hg = add i64 %i.hf, -1                       ; 2 uses
  store i64 %i.hg, ptr %i.hd, align 8, !noalias !724
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %bb.ai, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8relation19TypeRelationCheckerEBH_.exit.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextNodeEE9drop_slowB1j_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8relation19TypeRelationCheckerEBH_.exit.i unwind label %bb.ap, !noalias !725, !inline_history !570

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8relation19TypeRelationCheckerEBH_.exit.i: ; preds = %bb.ai, %bb.ah, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.aj:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !726), !noalias !697
  %i.hi = load ptr, ptr %i.f, align 8, !alias.scope !726, !noalias !727, !nonnull !12, !align !13, !noundef !12 ; 7 uses
  %i.hj = load i64, ptr %i.hi, align 8, !noalias !728, !noundef !12
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.ak, label %bb.al, !prof !27

bb.ak:                                            ; preds = %bb.aj
  store i64 -1, ptr %i.hi, align 8, !noalias !728
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hn = load i32, ptr %i.hm, align 8, !alias.scope !726, !noalias !727, !noundef !12
  %i.ho = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.hp = load i32, ptr %i.ho, align 4, !alias.scope !726, !noalias !727, !noundef !12
  %i.hq = invoke noundef zeroext i1 @_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_6NodeId19is_always_satisfied(i32 noundef %i.hn, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 4 %10, ptr noalias noundef nonnull align 8 dereferenceable(688) %i.hl, i32 noundef %i.hp)
          to label %_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet19is_always_satisfied.exit.i unwind label %bb.am, !noalias !729, !inline_history !570

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #64
          to label %.noexc1.i unwind label %bb.ag, !noalias !725, !inline_history !570

.noexc1.i:                                        ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.hr = landingpad { ptr, i32 }
          cleanup
  %i.hs = load i64, ptr %i.hi, align 8, !noalias !729, !noundef !12
  %i.ht = add i64 %i.hs, 1
  store i64 %i.ht, ptr %i.hi, align 8, !noalias !729
  br label %.body.i

_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet19is_always_satisfied.exit.i: ; preds = %bb.ak
  %i.hu = load i64, ptr %i.hi, align 8, !noalias !729, !noundef !12
  %i.hv = add i64 %i.hu, 1
  store i64 %i.hv, ptr %i.hi, align 8, !noalias !729
  call void @llvm.experimental.noalias.scope.decl(metadata !730), !noalias !697
  call void @llvm.experimental.noalias.scope.decl(metadata !731), !noalias !697
  %i.hw = load ptr, ptr %i.e, align 8, !alias.scope !732, !noalias !719, !noundef !12 ; 3 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker16is_class_subtype.exit, label %bb.an

bb.an:                                            ; preds = %_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet19is_always_satisfied.exit.i
  %i.hy = load i64, ptr %i.hw, align 8, !noalias !733, !noundef !12
  %i.hz = add i64 %i.hy, -1                       ; 2 uses
  store i64 %i.hz, ptr %i.hw, align 8, !noalias !733
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %bb.ao, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker16is_class_subtype.exit

bb.ao:                                            ; preds = %bb.an
  call void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextNodeEE9drop_slowB1j_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.e), !noalias !725, !inline_history !570
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker16is_class_subtype.exit

bb.ap:                                            ; preds = %bb.ai
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63, !noalias !725, !inline_history !570
  unreachable

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker16is_class_subtype.exit: ; preds = %_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet19is_always_satisfied.exit.i, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !719
  br i1 %i.hq, label %bb.as, label %bb.ar

bb.aq:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit.thread, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !698
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread

bb.ar:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker16is_class_subtype.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !698
  br label %bb.aq

bb.as:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker16is_class_subtype.exit
  %.val108.i.i = load ptr, ptr %7, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  %i.ic = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -1, ptr %i.ic, align 8, !alias.scope !734, !noalias !712
  %i.id = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.id, align 4, !alias.scope !734, !noalias !712
  store ptr %.val108.i.i, ptr %i.cq, align 8, !alias.scope !734, !noalias !712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !698
  br label %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsq_0EBa_.exit.thread

bb.at:                                            ; preds = %.lr.ph, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.thread
  %.pn = phi { ptr, ptr } [ %i.gl, %.lr.ph ], [ %i.oy, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.thread ]
  %i.ie = phi ptr [ %i.gm, %.lr.ph ], [ %i.oz, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.thread ] ; 35 uses
  %i.if = extractvalue { ptr, ptr } %.pn, 1       ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.if) ], !noalias !695
  %i.ig = getelementptr i8, ptr %i.if, i64 24     ; 2 uses
  %.val106.i.i = load i8, ptr %i.ig, align 4, !noalias !697, !noundef !12 ; 2 uses
  %i.ih = trunc i8 %.val106.i.i to i1
  br i1 %i.ih, label %bb.by, label %bb.bx

._crit_edge:                                      ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.thread, %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !698
  %i.ii = load i32, ptr %i.aq, align 4, !range !25, !noundef !12 ; 3 uses
  %i.ij = add nsw i32 %i.ii, -37
  %i.ik = icmp samesign ugt i32 %i.ii, 36
  %narrow.i.i = select i1 %i.ik, i32 %i.ij, i32 2
  switch i32 %narrow.i.i, label %.loopexit [
    i32 0, label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72
    i32 1, label %bb.av
    i32 2, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.aw
  %.sroa.7196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.sroa.7196.0.copyload = load i32, ptr %.sroa.7196.0..sroa_idx, align 4
  %.sroa.8199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.8199.0.copyload = load i64, ptr %.sroa.8199.0..sroa_idx, align 4
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72

bb.av:                                            ; preds = %._crit_edge
  %.val128.i.i = load i32, ptr %i.s, align 4, !range !25, !noundef !12
  %i.il = icmp eq i32 %.val128.i.i, 38
  br i1 %i.il, label %bb.ay, label %bb.ax

bb.aw:                                            ; preds = %._crit_edge
  %.sroa.6239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.6239.0.copyload = load i8, ptr %.sroa.6239.0..sroa_idx, align 4
  %i.im = trunc nuw i8 %.sroa.6239.0.copyload to i1
  br i1 %i.im, label %bb.au, label %bb.bd

bb.ax:                                            ; preds = %bb.ba, %bb.av
  %.val121.i.i = load ptr, ptr %i.gd, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  %i.in = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.in, align 8, !alias.scope !735, !noalias !712
  %i.io = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.io, align 4, !alias.scope !735, !noalias !712
  store ptr %.val121.i.i, ptr %i.cq, align 8, !alias.scope !735, !noalias !712
  br label %bb.bc

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !698
  %i.ip = load ptr, ptr %i.gb, align 8, !noalias !697, !noundef !12 ; 3 uses
  %.not78.i.i = icmp eq ptr %i.ip, null
  br i1 %.not78.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ir = load <2 x i64>, ptr %i.iq, align 8, !noalias !697
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.039.sroa.0.0.i.i = phi i64 [ 1, %bb.az ], [ 0, %bb.ay ] ; 2 uses
  %i.is = phi <2 x i64> [ %i.ir, %bb.az ], [ <i64 undef, i64 0>, %bb.ay ] ; 2 uses
  store i64 %.sroa.039.sroa.0.0.i.i, ptr %i.ax, align 8, !noalias !698
  %.sroa.039.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr null, ptr %.sroa.039.sroa.5.0..sroa_idx.i.i, align 8, !noalias !698
  %.sroa.039.sroa.5.sroa.5.0..sroa.039.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.ip, ptr %.sroa.039.sroa.5.sroa.5.0..sroa.039.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !698
  %.sroa.039.sroa.5.sroa.6.0..sroa.039.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.it = extractelement <2 x i64> %i.is, i64 0
  store i64 %i.it, ptr %.sroa.039.sroa.5.sroa.6.0..sroa.039.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !698
  %.sroa.039.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i64 %.sroa.039.sroa.0.0.i.i, ptr %.sroa.039.sroa.6.0..sroa_idx.i.i, align 8, !noalias !698
  %.sroa.039.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store ptr null, ptr %.sroa.039.sroa.7.0..sroa_idx.i.i, align 8, !noalias !698
  %.sroa.039.sroa.7.sroa.5.0..sroa.039.sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store ptr %i.ip, ptr %.sroa.039.sroa.7.sroa.5.0..sroa.039.sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !698
  %.sroa.039.sroa.7.sroa.6.0..sroa.039.sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store <2 x i64> %i.is, ptr %.sroa.039.sroa.7.sroa.6.0..sroa.039.sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !698
  %i.iu = call fastcc noundef zeroext i1 @_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2S_3any5checkRBX_NCNvMs3_B1I_NtNtB1K_8relation19TypeRelationChecker20check_typeddict_pairs1_0E0INtNtNtB30_3ops12control_flow11ControlFlowuEEB1M_(ptr noalias noundef align 8 dereferenceable(72) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gc), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !698
  br i1 %i.iu, label %bb.ax, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge366, %._crit_edge363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !noalias !710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !698
  br label %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsq_0EBa_.exit.thread

bb.bc:                                            ; preds = %bb.dt, %bb.bp, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !698
  br label %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsq_0EBa_.exit.thread

bb.bd:                                            ; preds = %bb.aw
  %.sroa.7242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i64 16, i1 false)
  %.sroa.6239.0..sroa_idx240 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i8 0, ptr %.sroa.6239.0..sroa_idx240, align 4, !noalias !698
  %.sroa.7242.0..sroa_idx243 = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7242.0..sroa_idx243, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7242.0..sroa_idx, i64 3, i1 false)
  %i.iv = load i32, ptr %i.s, align 4, !range !25, !noundef !12 ; 2 uses
  %i.iw = icmp samesign ult i32 %i.iv, 37
  br i1 %i.iw, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %.sroa.7183.0..sroa_idx184 = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.7183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7183.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7183.0..sroa_idx184, i64 16, i1 false)
  store i32 %i.iv, ptr %i.av, align 4, !noalias !698
  %.sroa.3245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.3245.0.copyload = load i8, ptr %.sroa.3245.0..sroa_idx, align 4, !noalias !698
  %i.ix = trunc nuw i8 %.sroa.3245.0.copyload to i1
  br i1 %i.ix, label %bb.bi, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %.val120.i.i = load ptr, ptr %i.gd, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  %i.iy = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.iy, align 8, !alias.scope !736, !noalias !712
  %i.iz = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.iz, align 4, !alias.scope !736, !noalias !712
  store ptr %.val120.i.i, ptr %i.cq, align 8, !alias.scope !736, !noalias !712
  br label %bb.bp

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !698
  %i.ja = load ptr, ptr %i.gd, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ar, ptr noundef nonnull align 4 dereferenceable(16) %i.av, i64 16, i1 false), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i64 16, i1 false)
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.as, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ar, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.w), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !698
  %i.jb = load ptr, ptr %i.gd, align 8, !noalias !698, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !698
  store ptr %i.de, ptr %i.ap, align 8, !noalias !698
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.dg, ptr %i.jc, align 8, !noalias !698
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.di, ptr %i.jd, align 8, !noalias !698
  %i.je = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.aw, ptr %i.je, align 8, !noalias !698
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr %i.av, ptr %i.jf, align 8, !noalias !698
  call fastcc void @_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs2_0EBa_(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.at, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.as, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.jb, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.ap), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !698
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.ja, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.at), !noalias !697, !inline_history !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !698
  %i.jg = load ptr, ptr %i.gb, align 8, !alias.scope !737, !noalias !738, !noundef !12 ; 3 uses
  %.not.i58 = icmp eq ptr %i.jg, null
  br i1 %.not.i58, label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit67, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ji = load <2 x i64>, ptr %i.jh, align 8, !alias.scope !737, !noalias !738
  br label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit67

_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit67: ; preds = %bb.bg, %bb.bh
  %.sink19.i65 = phi i64 [ 0, %bb.bg ], [ 1, %bb.bh ] ; 2 uses
  %i.jj = phi <2 x i64> [ <i64 undef, i64 0>, %bb.bg ], [ %i.ji, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !698
  store i64 %.sink19.i65, ptr %i.ao, align 8, !noalias !698
  %.sroa.5186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr null, ptr %.sroa.5186.0..sroa_idx, align 8, !noalias !698
  %.sroa.6187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.jg, ptr %.sroa.6187.0..sroa_idx, align 8, !noalias !698
  %.sroa.7188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.jk = extractelement <2 x i64> %i.jj, i64 0
  store i64 %i.jk, ptr %.sroa.7188.0..sroa_idx, align 8, !noalias !698
  %.sroa.8189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 %.sink19.i65, ptr %.sroa.8189.0..sroa_idx, align 8, !noalias !698
  %.sroa.9190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr null, ptr %.sroa.9190.0..sroa_idx, align 8, !noalias !698
  %.sroa.10191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store ptr %i.jg, ptr %.sroa.10191.0..sroa_idx, align 8, !noalias !698
  %.sroa.11192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  store <2 x i64> %i.jj, ptr %.sroa.11192.0..sroa_idx, align 8, !noalias !698
  %i.jl = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ao), !noalias !697, !inline_history !538 ; 2 uses
  %i.jm = extractvalue { ptr, ptr } %i.jl, 0      ; 2 uses
  %.not76.i.i361 = icmp eq ptr %i.jm, null
  br i1 %.not76.i.i361, label %._crit_edge363, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit67
  %i.jn = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  br label %.lr.ph362

end_hunk_1
