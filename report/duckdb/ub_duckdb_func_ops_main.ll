begin_hunk_0
  %16 = alloca %"class.duckdb::vector", align 8   ; 9 uses
  %17 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %18 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %19 = alloca %"class.std::function", align 8    ; 10 uses
  %20 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %21 = alloca %"class.duckdb::ScalarFunction", align 8 ; 12 uses
  %22 = alloca %"class.duckdb::vector", align 8   ; 9 uses
end_hunk_0
begin_hunk_1
  %i.u = getelementptr inbounds nuw i8, ptr %21, i64 344 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %21, i64 352 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %51 = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 264
end_hunk_1
begin_hunk_2
  br label %.loopexit541

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0474.0660)
          to label %bb.bj unwind label %.loopexit541.loopexit671

bb.bj:                                            ; preds = %bb.bi
end_hunk_2
begin_hunk_3
.noexc384:                                        ; preds = %bb.bj
  store ptr %i.fp, ptr %16, align 8, !tbaa !41
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  store ptr %i.fq, ptr %i.x, align 8, !tbaa !44
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i382 unwind label %.thread827

end_hunk_3
begin_hunk_4

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i382: ; preds = %.noexc384
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %51)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i382.1 unwind label %.lr.ph.i.i.i.i.i.i.i378.preheader

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i382.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i382
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  store ptr %i.fv, ptr %i.y, align 8, !tbaa !45
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0474.0660)
          to label %bb.bo unwind label %bb.cm

end_hunk_4
begin_hunk_5
_ZN6duckdbL24GetScalarIntegerFunctionINS_29MultiplyOperatorOverflowCheckEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit: ; preds = %bb.bo, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit55.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit50.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit45.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit40.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit35.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit30.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit25.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit20.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit15.i
  %_ZN6duckdb14ScalarFunction14BinaryFunctionINS_10uhugeint_tES2_S2_NS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink = phi ptr [ @_ZN6duckdb14ScalarFunction14BinaryFunctionINS_10uhugeint_tES2_S2_NS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit55.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionImmmNS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit50.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIjjjNS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit45.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionItttNS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit40.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIhhhNS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit35.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionINS_9hugeint_tES2_S2_NS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit30.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIlllNS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit25.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIiiiNS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit20.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIsssNS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit15.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIaaaNS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.bo ]
  store ptr %_ZN6duckdb14ScalarFunction14BinaryFunctionINS_10uhugeint_tES2_S2_NS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink, ptr %19, align 8
  store i64 0, ptr %i.z, align 8, !tbaa !15
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.aa, align 8, !tbaa !46, !alias.scope !373
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.ab, align 8, !tbaa !46, !alias.scope !373
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 noundef zeroext 0)
end_hunk_5
begin_hunk_6
_ZNSt14_Function_baseD2Ev.exit192:                ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit190, %bb.cj
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #26
  %i.id = load ptr, ptr %16, align 8, !tbaa !41   ; 3 uses
  %i.ie = load ptr, ptr %i.y, align 8, !tbaa !45  ; 2 uses
  %.not4.i.i.i193 = icmp eq ptr %i.id, %i.ie
  br i1 %.not4.i.i.i193, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i199, label %.lr.ph.i.i.i194

end_hunk_6
