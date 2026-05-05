inline.NumInlined: 7169
inline.NumDeleted: 1237
begin_hunk_0_@_ZN6duckdb13BitwiseAndFun12GetFunctionsEv:bb.a
  %5 = alloca %"class.duckdb::vector.3", align 8  ; 9 uses
  %6 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %8 = alloca %"class.std::function", align 16    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %10 = alloca %"class.duckdb::ScalarFunction", align 8 ; 15 uses
  %11 = alloca %"class.duckdb::vector.3", align 8 ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb13BitwiseAndFun12GetFunctionsEv:bb.a
  br i1 %.not188, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_1
begin_hunk_2_@_ZN6duckdb13BitwiseAndFun12GetFunctionsEv:bb.a
  br label %.loopexit156

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0119.0189)
          to label %bb.g unwind label %.loopexit156.loopexit196

bb.g:                                             ; preds = %bb.f
end_hunk_2
begin_hunk_3_@_ZN6duckdb13BitwiseAndFun12GetFunctionsEv:bb.a
.noexc95:                                         ; preds = %bb.g
  store ptr %i.v, ptr %5, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.w, ptr %i.e, align 8, !tbaa !15
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread244

end_hunk_3
begin_hunk_4_@_ZN6duckdb13BitwiseAndFun12GetFunctionsEv:bb.a

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc95
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.ab, ptr %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx, align 8, !tbaa !12
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0119.0189)
          to label %bb.l unwind label %bb.ai

end_hunk_4
begin_hunk_5_@_ZN6duckdb13BitwiseAndFun12GetFunctionsEv:bb.a
bb.l:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %.val = load i8, ptr %.sroa.0119.0189, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false), !alias.scope !26
  switch i8 %.val, label %bb.m [
    i8 11, label %_ZN6duckdbL30GetScalarIntegerBinaryFunctionINS_12_GLOBAL__N_118BitwiseANDOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE.exit
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i
end_hunk_5
begin_hunk_6_@_ZN6duckdb13BitwiseAndFun12GetFunctionsEv:bb.a
  unreachable

_ZN6duckdbL30GetScalarIntegerBinaryFunctionINS_12_GLOBAL__N_118BitwiseANDOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE.exit: ; preds = %bb.l, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit51.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit46.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit41.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit36.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit31.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i
  %.sink = phi <2 x i64> [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionINS_10uhugeint_tES2_S2_NS_12_GLOBAL__N_118BitwiseANDOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit51.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionINS_9hugeint_tES2_S2_NS_12_GLOBAL__N_118BitwiseANDOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit46.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionImmmNS_12_GLOBAL__N_118BitwiseANDOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit41.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIjjjNS_12_GLOBAL__N_118BitwiseANDOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit36.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionItttNS_12_GLOBAL__N_118BitwiseANDOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit31.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIhhhNS_12_GLOBAL__N_118BitwiseANDOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIlllNS_12_GLOBAL__N_118BitwiseANDOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIiiiNS_12_GLOBAL__N_118BitwiseANDOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIsssNS_12_GLOBAL__N_118BitwiseANDOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIaaaNS_12_GLOBAL__N_118BitwiseANDOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %bb.l ]
  store <2 x i64> %.sink, ptr %8, align 16, !tbaa !34, !alias.scope !26
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.f, align 16, !tbaa !35, !alias.scope !26
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 0)
          to label %bb.s unwind label %bb.aj

end_hunk_6
begin_hunk_7_@_ZN6duckdb13BitwiseAndFun12GetFunctionsEv:bb.a
_ZN6duckdb14ScalarFunctionD2Ev.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, %bb.ad
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %4) #20, !inline_history !56
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #20
  %i.bx = load ptr, ptr %i.f, align 16, !tbaa !45 ; 2 uses
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.af

end_hunk_7
begin_hunk_8_@_ZN6duckdb13BitwiseAndFun12GetFunctionsEv:bb.a
_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit, %bb.af
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
  %i.cb = load ptr, ptr %5, align 8, !tbaa !10    ; 3 uses
  %i.cc = load ptr, ptr %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i50 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not4.i.i.i50, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i56, label %.lr.ph.i.i.i51

end_hunk_8
begin_hunk_9_@_ZN6duckdb13BitwiseAndFun12GetFunctionsEv:bb.a

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %bb.am ], [ %i.ci, %bb.aj ] ; 2 uses
  %i.cl = load ptr, ptr %i.f, align 16, !tbaa !45 ; 2 uses
  %.not.i59 = icmp eq ptr %i.cl, null
  br i1 %.not.i59, label %.body44, label %bb.ao

end_hunk_9
begin_hunk_10_@_ZN6duckdb12BitwiseOrFun12GetFunctionsEv:bb.a
  %5 = alloca %"class.duckdb::vector.3", align 8  ; 9 uses
  %6 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %8 = alloca %"class.std::function", align 16    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %10 = alloca %"class.duckdb::ScalarFunction", align 8 ; 15 uses
  %11 = alloca %"class.duckdb::vector.3", align 8 ; 9 uses
end_hunk_10
begin_hunk_11_@_ZN6duckdb12BitwiseOrFun12GetFunctionsEv:bb.a
  br i1 %.not188, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_11
begin_hunk_12_@_ZN6duckdb12BitwiseOrFun12GetFunctionsEv:bb.a
  br label %.loopexit156

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0119.0189)
          to label %bb.g unwind label %.loopexit156.loopexit196

bb.g:                                             ; preds = %bb.f
end_hunk_12
begin_hunk_13_@_ZN6duckdb12BitwiseOrFun12GetFunctionsEv:bb.a
.noexc95:                                         ; preds = %bb.g
  store ptr %i.v, ptr %5, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.w, ptr %i.e, align 8, !tbaa !15
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread244

end_hunk_13
begin_hunk_14_@_ZN6duckdb12BitwiseOrFun12GetFunctionsEv:bb.a

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc95
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.ab, ptr %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx, align 8, !tbaa !12
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0119.0189)
          to label %bb.l unwind label %bb.ai

end_hunk_14
begin_hunk_15_@_ZN6duckdb12BitwiseOrFun12GetFunctionsEv:bb.a
bb.l:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %.val = load i8, ptr %.sroa.0119.0189, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false), !alias.scope !186
  switch i8 %.val, label %bb.m [
    i8 11, label %_ZN6duckdbL30GetScalarIntegerBinaryFunctionINS_12_GLOBAL__N_117BitwiseOROperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE.exit
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i
end_hunk_15
begin_hunk_16_@_ZN6duckdb12BitwiseOrFun12GetFunctionsEv:bb.a
  unreachable

_ZN6duckdbL30GetScalarIntegerBinaryFunctionINS_12_GLOBAL__N_117BitwiseOROperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE.exit: ; preds = %bb.l, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit51.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit46.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit41.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit36.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit31.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i
  %.sink = phi <2 x i64> [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionINS_10uhugeint_tES2_S2_NS_12_GLOBAL__N_117BitwiseOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit51.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionINS_9hugeint_tES2_S2_NS_12_GLOBAL__N_117BitwiseOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit46.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionImmmNS_12_GLOBAL__N_117BitwiseOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit41.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIjjjNS_12_GLOBAL__N_117BitwiseOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit36.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionItttNS_12_GLOBAL__N_117BitwiseOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit31.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIhhhNS_12_GLOBAL__N_117BitwiseOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIlllNS_12_GLOBAL__N_117BitwiseOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIiiiNS_12_GLOBAL__N_117BitwiseOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIsssNS_12_GLOBAL__N_117BitwiseOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIaaaNS_12_GLOBAL__N_117BitwiseOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %bb.l ]
  store <2 x i64> %.sink, ptr %8, align 16, !tbaa !34, !alias.scope !186
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.f, align 16, !tbaa !35, !alias.scope !186
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 0)
          to label %bb.s unwind label %bb.aj

end_hunk_16
begin_hunk_17_@_ZN6duckdb12BitwiseOrFun12GetFunctionsEv:bb.a
_ZN6duckdb14ScalarFunctionD2Ev.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, %bb.ad
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %4) #20, !inline_history !56
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #20
  %i.bx = load ptr, ptr %i.f, align 16, !tbaa !45 ; 2 uses
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.af

end_hunk_17
begin_hunk_18_@_ZN6duckdb12BitwiseOrFun12GetFunctionsEv:bb.a
_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit, %bb.af
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
  %i.cb = load ptr, ptr %5, align 8, !tbaa !10    ; 3 uses
  %i.cc = load ptr, ptr %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i50 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not4.i.i.i50, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i56, label %.lr.ph.i.i.i51

end_hunk_18
begin_hunk_19_@_ZN6duckdb12BitwiseOrFun12GetFunctionsEv:bb.a

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %bb.am ], [ %i.ci, %bb.aj ] ; 2 uses
  %i.cl = load ptr, ptr %i.f, align 16, !tbaa !45 ; 2 uses
  %.not.i59 = icmp eq ptr %i.cl, null
  br i1 %.not.i59, label %.body44, label %bb.ao

end_hunk_19
begin_hunk_20_@_ZN6duckdb13BitwiseXorFun12GetFunctionsEv:bb.a
  %5 = alloca %"class.duckdb::vector.3", align 8  ; 9 uses
  %6 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %8 = alloca %"class.std::function", align 16    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %10 = alloca %"class.duckdb::ScalarFunction", align 8 ; 15 uses
  %11 = alloca %"class.duckdb::vector.3", align 8 ; 9 uses
end_hunk_20
begin_hunk_21_@_ZN6duckdb13BitwiseXorFun12GetFunctionsEv:bb.a
  br i1 %.not188, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_21
begin_hunk_22_@_ZN6duckdb13BitwiseXorFun12GetFunctionsEv:bb.a
  br label %.loopexit156

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0119.0189)
          to label %bb.g unwind label %.loopexit156.loopexit196

bb.g:                                             ; preds = %bb.f
end_hunk_22
begin_hunk_23_@_ZN6duckdb13BitwiseXorFun12GetFunctionsEv:bb.a
.noexc95:                                         ; preds = %bb.g
  store ptr %i.v, ptr %5, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.w, ptr %i.e, align 8, !tbaa !15
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread244

end_hunk_23
begin_hunk_24_@_ZN6duckdb13BitwiseXorFun12GetFunctionsEv:bb.a

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc95
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.ab, ptr %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx, align 8, !tbaa !12
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0119.0189)
          to label %bb.l unwind label %bb.ai

end_hunk_24
begin_hunk_25_@_ZN6duckdb13BitwiseXorFun12GetFunctionsEv:bb.a
bb.l:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %.val = load i8, ptr %.sroa.0119.0189, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false), !alias.scope !258
  switch i8 %.val, label %bb.m [
    i8 11, label %_ZN6duckdbL30GetScalarIntegerBinaryFunctionINS_12_GLOBAL__N_118BitwiseXOROperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE.exit
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i
end_hunk_25
begin_hunk_26_@_ZN6duckdb13BitwiseXorFun12GetFunctionsEv:bb.a
  unreachable

_ZN6duckdbL30GetScalarIntegerBinaryFunctionINS_12_GLOBAL__N_118BitwiseXOROperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE.exit: ; preds = %bb.l, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit51.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit46.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit41.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit36.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit31.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i
  %.sink = phi <2 x i64> [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionINS_10uhugeint_tES2_S2_NS_12_GLOBAL__N_118BitwiseXOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit51.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionINS_9hugeint_tES2_S2_NS_12_GLOBAL__N_118BitwiseXOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit46.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionImmmNS_12_GLOBAL__N_118BitwiseXOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit41.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIjjjNS_12_GLOBAL__N_118BitwiseXOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit36.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionItttNS_12_GLOBAL__N_118BitwiseXOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit31.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIhhhNS_12_GLOBAL__N_118BitwiseXOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIlllNS_12_GLOBAL__N_118BitwiseXOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIiiiNS_12_GLOBAL__N_118BitwiseXOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIsssNS_12_GLOBAL__N_118BitwiseXOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIaaaNS_12_GLOBAL__N_118BitwiseXOROperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %bb.l ]
  store <2 x i64> %.sink, ptr %8, align 16, !tbaa !34, !alias.scope !258
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.f, align 16, !tbaa !35, !alias.scope !258
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 0)
          to label %bb.s unwind label %bb.aj

end_hunk_26
begin_hunk_27_@_ZN6duckdb13BitwiseXorFun12GetFunctionsEv:bb.a
_ZN6duckdb14ScalarFunctionD2Ev.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, %bb.ad
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %4) #20, !inline_history !56
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #20
  %i.bx = load ptr, ptr %i.f, align 16, !tbaa !45 ; 2 uses
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.af

end_hunk_27
begin_hunk_28_@_ZN6duckdb13BitwiseXorFun12GetFunctionsEv:bb.a
_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit, %bb.af
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
  %i.cb = load ptr, ptr %5, align 8, !tbaa !10    ; 3 uses
  %i.cc = load ptr, ptr %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i50 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not4.i.i.i50, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i56, label %.lr.ph.i.i.i51

end_hunk_28
begin_hunk_29_@_ZN6duckdb13BitwiseXorFun12GetFunctionsEv:bb.a

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %bb.am ], [ %i.ci, %bb.aj ] ; 2 uses
  %i.cl = load ptr, ptr %i.f, align 16, !tbaa !45 ; 2 uses
  %.not.i59 = icmp eq ptr %i.cl, null
  br i1 %.not.i59, label %.body44, label %bb.ao

end_hunk_29
begin_hunk_30_@_ZN6duckdb13BitwiseNotFun12GetFunctionsEv:bb.a
  %5 = alloca %"class.duckdb::vector.3", align 8  ; 9 uses
  %6 = alloca [1 x %"struct.duckdb::LogicalType"], align 8 ; 7 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %8 = alloca %"class.std::function", align 16    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %10 = alloca %"class.duckdb::ScalarFunction", align 8 ; 15 uses
  %11 = alloca %"class.duckdb::vector.3", align 8 ; 9 uses
end_hunk_30
begin_hunk_31_@_ZN6duckdb13BitwiseNotFun12GetFunctionsEv:bb.a
  br i1 %.not170, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_31
begin_hunk_32_@_ZN6duckdb13BitwiseNotFun12GetFunctionsEv:bb.a
.noexc92:                                         ; preds = %bb.f
  store ptr %i.r, ptr %5, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  store ptr %i.s, ptr %i.d, align 8, !tbaa !15
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc92
  store ptr %i.s, ptr %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx, align 8, !tbaa !12
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0116.0171)
          to label %bb.k unwind label %bb.ai

end_hunk_32
begin_hunk_33_@_ZN6duckdb13BitwiseNotFun12GetFunctionsEv:bb.a
bb.k:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.val = load i8, ptr %.sroa.0116.0171, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false), !alias.scope !330
  switch i8 %.val, label %bb.l [
    i8 11, label %_ZN6duckdbL29GetScalarIntegerUnaryFunctionINS_12_GLOBAL__N_118BitwiseNotOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE.exit
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i
end_hunk_33
begin_hunk_34_@_ZN6duckdb13BitwiseNotFun12GetFunctionsEv:bb.a
  unreachable

_ZN6duckdbL29GetScalarIntegerUnaryFunctionINS_12_GLOBAL__N_118BitwiseNotOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE.exit: ; preds = %bb.k, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit51.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit46.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit41.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit36.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit31.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i
  %.sink = phi <2 x i64> [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionINS_10uhugeint_tES2_NS_12_GLOBAL__N_118BitwiseNotOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit51.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionINS_9hugeint_tES2_NS_12_GLOBAL__N_118BitwiseNotOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit46.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionImmNS_12_GLOBAL__N_118BitwiseNotOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit41.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIjjNS_12_GLOBAL__N_118BitwiseNotOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit36.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIttNS_12_GLOBAL__N_118BitwiseNotOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit31.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIhhNS_12_GLOBAL__N_118BitwiseNotOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIllNS_12_GLOBAL__N_118BitwiseNotOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIiiNS_12_GLOBAL__N_118BitwiseNotOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIssNS_12_GLOBAL__N_118BitwiseNotOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIaaNS_12_GLOBAL__N_118BitwiseNotOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %bb.k ]
  store <2 x i64> %.sink, ptr %8, align 16, !tbaa !34, !alias.scope !330
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.e, align 16, !tbaa !35, !alias.scope !330
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 0)
          to label %bb.r unwind label %bb.aj

end_hunk_34
begin_hunk_35_@_ZN6duckdb13BitwiseNotFun12GetFunctionsEv:bb.a
_ZN6duckdb14ScalarFunctionD2Ev.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, %bb.ac
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %4) #20, !inline_history !56
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #20
  %i.bo = load ptr, ptr %i.e, align 16, !tbaa !45 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ae

end_hunk_35
begin_hunk_36_@_ZN6duckdb13BitwiseNotFun12GetFunctionsEv:bb.a
_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit, %bb.ae
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
  %i.bs = load ptr, ptr %5, align 8, !tbaa !10    ; 3 uses
  %i.bt = load ptr, ptr %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i47 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not4.i.i.i47, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i53, label %.lr.ph.i.i.i48

end_hunk_36
begin_hunk_37_@_ZN6duckdb13BitwiseNotFun12GetFunctionsEv:bb.a

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.pn32.pn = phi { ptr, i32 } [ %.pn32, %bb.am ], [ %i.bz, %bb.aj ] ; 2 uses
  %i.cc = load ptr, ptr %i.e, align 16, !tbaa !45 ; 2 uses
  %.not.i56 = icmp eq ptr %i.cc, null
  br i1 %.not.i56, label %.body41, label %bb.ao

end_hunk_37
begin_hunk_38_@_ZN6duckdb12LeftShiftFun12GetFunctionsEv:bb.a
  %5 = alloca %"class.duckdb::vector.3", align 8  ; 9 uses
  %6 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %8 = alloca %"class.std::function", align 16    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %10 = alloca %"class.duckdb::ScalarFunction", align 8 ; 15 uses
  %11 = alloca %"class.duckdb::vector.3", align 8 ; 9 uses
end_hunk_38
begin_hunk_39_@_ZN6duckdb12LeftShiftFun12GetFunctionsEv:bb.a
  br i1 %.not188, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_39
begin_hunk_40_@_ZN6duckdb12LeftShiftFun12GetFunctionsEv:bb.a
  br label %.loopexit156

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0119.0189)
          to label %bb.g unwind label %.loopexit156.loopexit196

bb.g:                                             ; preds = %bb.f
end_hunk_40
begin_hunk_41_@_ZN6duckdb12LeftShiftFun12GetFunctionsEv:bb.a
.noexc95:                                         ; preds = %bb.g
  store ptr %i.v, ptr %5, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.w, ptr %i.e, align 8, !tbaa !15
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread244

end_hunk_41
begin_hunk_42_@_ZN6duckdb12LeftShiftFun12GetFunctionsEv:bb.a

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc95
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.ab, ptr %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx, align 8, !tbaa !12
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0119.0189)
          to label %bb.l unwind label %bb.ai

end_hunk_42
begin_hunk_43_@_ZN6duckdb12LeftShiftFun12GetFunctionsEv:bb.a
bb.l:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %.val = load i8, ptr %.sroa.0119.0189, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false), !alias.scope !359
  switch i8 %.val, label %bb.m [
    i8 11, label %_ZN6duckdbL30GetScalarIntegerBinaryFunctionINS_12_GLOBAL__N_124BitwiseShiftLeftOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE.exit
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i
end_hunk_43
begin_hunk_44_@_ZN6duckdb12LeftShiftFun12GetFunctionsEv:bb.a
  unreachable

_ZN6duckdbL30GetScalarIntegerBinaryFunctionINS_12_GLOBAL__N_124BitwiseShiftLeftOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE.exit: ; preds = %bb.l, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit51.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit46.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit41.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit36.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit31.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i
  %.sink = phi <2 x i64> [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionINS_10uhugeint_tES2_S2_NS_12_GLOBAL__N_124BitwiseShiftLeftOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit51.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionINS_9hugeint_tES2_S2_NS_12_GLOBAL__N_124BitwiseShiftLeftOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit46.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionImmmNS_12_GLOBAL__N_124BitwiseShiftLeftOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit41.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIjjjNS_12_GLOBAL__N_124BitwiseShiftLeftOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit36.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionItttNS_12_GLOBAL__N_124BitwiseShiftLeftOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit31.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIhhhNS_12_GLOBAL__N_124BitwiseShiftLeftOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIlllNS_12_GLOBAL__N_124BitwiseShiftLeftOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIiiiNS_12_GLOBAL__N_124BitwiseShiftLeftOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIsssNS_12_GLOBAL__N_124BitwiseShiftLeftOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIaaaNS_12_GLOBAL__N_124BitwiseShiftLeftOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %bb.l ]
  store <2 x i64> %.sink, ptr %8, align 16, !tbaa !34, !alias.scope !359
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.f, align 16, !tbaa !35, !alias.scope !359
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 0)
          to label %bb.s unwind label %bb.aj

end_hunk_44
begin_hunk_45_@_ZN6duckdb12LeftShiftFun12GetFunctionsEv:bb.a
_ZN6duckdb14ScalarFunctionD2Ev.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, %bb.ad
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %4) #20, !inline_history !56
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #20
  %i.bx = load ptr, ptr %i.f, align 16, !tbaa !45 ; 2 uses
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.af

end_hunk_45
begin_hunk_46_@_ZN6duckdb12LeftShiftFun12GetFunctionsEv:bb.a
_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit, %bb.af
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
  %i.cb = load ptr, ptr %5, align 8, !tbaa !10    ; 3 uses
  %i.cc = load ptr, ptr %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i50 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not4.i.i.i50, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i56, label %.lr.ph.i.i.i51

end_hunk_46
begin_hunk_47_@_ZN6duckdb12LeftShiftFun12GetFunctionsEv:bb.a

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %bb.am ], [ %i.ci, %bb.aj ] ; 2 uses
  %i.cl = load ptr, ptr %i.f, align 16, !tbaa !45 ; 2 uses
  %.not.i59 = icmp eq ptr %i.cl, null
  br i1 %.not.i59, label %.body44, label %bb.ao

end_hunk_47
begin_hunk_48_@_ZN6duckdb13RightShiftFun12GetFunctionsEv:bb.a
  %5 = alloca %"class.duckdb::vector.3", align 8  ; 9 uses
  %6 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %8 = alloca %"class.std::function", align 16    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %10 = alloca %"class.duckdb::ScalarFunction", align 8 ; 15 uses
  %11 = alloca %"class.duckdb::vector.3", align 8 ; 9 uses
end_hunk_48
begin_hunk_49_@_ZN6duckdb13RightShiftFun12GetFunctionsEv:bb.a
  br i1 %.not188, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_49
begin_hunk_50_@_ZN6duckdb13RightShiftFun12GetFunctionsEv:bb.a
  br label %.loopexit156

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0119.0189)
          to label %bb.g unwind label %.loopexit156.loopexit196

bb.g:                                             ; preds = %bb.f
end_hunk_50
begin_hunk_51_@_ZN6duckdb13RightShiftFun12GetFunctionsEv:bb.a
.noexc95:                                         ; preds = %bb.g
  store ptr %i.v, ptr %5, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.w, ptr %i.e, align 8, !tbaa !15
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread244

end_hunk_51
begin_hunk_52_@_ZN6duckdb13RightShiftFun12GetFunctionsEv:bb.a

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc95
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.ab, ptr %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx, align 8, !tbaa !12
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0119.0189)
          to label %bb.l unwind label %bb.ai

end_hunk_52
begin_hunk_53_@_ZN6duckdb13RightShiftFun12GetFunctionsEv:bb.a
bb.l:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %.val = load i8, ptr %.sroa.0119.0189, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false), !alias.scope !431
  switch i8 %.val, label %bb.m [
    i8 11, label %_ZN6duckdbL30GetScalarIntegerBinaryFunctionINS_12_GLOBAL__N_125BitwiseShiftRightOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE.exit
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i
end_hunk_53
begin_hunk_54_@_ZN6duckdb13RightShiftFun12GetFunctionsEv:bb.a
  unreachable

_ZN6duckdbL30GetScalarIntegerBinaryFunctionINS_12_GLOBAL__N_125BitwiseShiftRightOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE.exit: ; preds = %bb.l, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit51.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit46.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit41.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit36.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit31.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i
  %.sink = phi <2 x i64> [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionINS_10uhugeint_tES2_S2_NS_12_GLOBAL__N_125BitwiseShiftRightOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit51.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionINS_9hugeint_tES2_S2_NS_12_GLOBAL__N_125BitwiseShiftRightOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit46.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionImmmNS_12_GLOBAL__N_125BitwiseShiftRightOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit41.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIjjjNS_12_GLOBAL__N_125BitwiseShiftRightOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit36.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionItttNS_12_GLOBAL__N_125BitwiseShiftRightOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit31.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIhhhNS_12_GLOBAL__N_125BitwiseShiftRightOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIlllNS_12_GLOBAL__N_125BitwiseShiftRightOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIiiiNS_12_GLOBAL__N_125BitwiseShiftRightOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIsssNS_12_GLOBAL__N_125BitwiseShiftRightOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11.i ], [ <i64 ptrtoint (ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIaaaNS_12_GLOBAL__N_125BitwiseShiftRightOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE to i64), i64 0>, %bb.l ]
  store <2 x i64> %.sink, ptr %8, align 16, !tbaa !34, !alias.scope !431
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.f, align 16, !tbaa !35, !alias.scope !431
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 0)
          to label %bb.s unwind label %bb.aj

end_hunk_54
begin_hunk_55_@_ZN6duckdb13RightShiftFun12GetFunctionsEv:bb.a
_ZN6duckdb14ScalarFunctionD2Ev.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, %bb.ad
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %4) #20, !inline_history !56
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #20
  %i.bx = load ptr, ptr %i.f, align 16, !tbaa !45 ; 2 uses
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.af

end_hunk_55
begin_hunk_56_@_ZN6duckdb13RightShiftFun12GetFunctionsEv:bb.a
_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit, %bb.af
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
  %i.cb = load ptr, ptr %5, align 8, !tbaa !10    ; 3 uses
  %i.cc = load ptr, ptr %.sroa.0.i.i.i47.i.sroa.4.0..sroa_idx, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i50 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not4.i.i.i50, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i56, label %.lr.ph.i.i.i51

end_hunk_56
begin_hunk_57_@_ZN6duckdb13RightShiftFun12GetFunctionsEv:bb.a

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %bb.am ], [ %i.ci, %bb.aj ] ; 2 uses
  %i.cl = load ptr, ptr %i.f, align 16, !tbaa !45 ; 2 uses
  %.not.i59 = icmp eq ptr %i.cl, null
  br i1 %.not.i59, label %.body44, label %bb.ao

end_hunk_57
