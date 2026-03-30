begin_hunk_0
; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_122BindDecimalAddSubtractINS_11AddOperatorENS_23DecimalAddOverflowCheckELb0EEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS5_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS4_INS_10ExpressionES6_ISE_ELb1EEELb1ESaISG_EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 16    ; 14 uses
  %5 = alloca %"class.std::function", align 8     ; 7 uses
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %6 = alloca %"class.std::function", align 8     ; 9 uses
end_hunk_0
begin_hunk_1
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i17 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i.i17, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i18, label %bb.k

end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.ac, align 16
  br label %bb.k

bb.k:                                             ; preds = %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread, %.noexc
end_hunk_2
begin_hunk_3
  %i.ae = phi ptr [ %i.y, %.noexc ], [ %i.aa, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.af = phi ptr [ %i.v, %.noexc ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.ag = phi ptr [ %i.x, %.noexc ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  store ptr %.sroa.0.0, ptr %4, align 16
  %.sroa.4.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx37, align 8, !tbaa !15
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i18
end_hunk_3
begin_hunk_4
  %i.ai = phi ptr [ %i.ae, %bb.k ], [ %i.y, %.noexc ] ; 2 uses
  %i.aj = phi ptr [ %i.af, %bb.k ], [ %i.v, %.noexc ]
  %i.ak = phi ptr [ %i.ag, %bb.k ], [ null, %.noexc ]
  %.sroa.0.i.i.i.i16.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 16, i1 false), !tbaa.struct !292
  store <2 x i64> %.sroa.0.i.i.i.i16.sroa.0.0.copyload, ptr %i.ai, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46 ; 3 uses
  store ptr %i.an, ptr %i.al, align 16, !tbaa !46
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46
end_hunk_4
begin_hunk_5
; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_128DeserializeDecimalArithmeticINS_11AddOperatorENS_23DecimalAddOverflowCheckELb0EEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS5_ELb1EEERNS_12DeserializerERNS_14ScalarFunctionE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 13 uses
  %4 = alloca %"class.std::function", align 8     ; 8 uses
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %5 = alloca %"class.std::function", align 8     ; 9 uses
end_hunk_5
begin_hunk_6

bb.l:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit
  switch i8 %i.ag, label %bb.m [
    i8 11, label %bb.n
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i
  ]

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i: ; preds = %bb.l
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !310
end_hunk_6
begin_hunk_7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i23

_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit: ; preds = %.noexc20
  %.sroa.051.0.copyload = load ptr, ptr %4, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !310
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i, %bb.l, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit
  %.sroa.0.0 = phi ptr [ %.sroa.051.0.copyload, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_11AddOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIfffNS_11AddOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.l ]
  %.sroa.4.0 = phi i64 [ %.sroa.3.0.copyload, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ 0, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ 0, %bb.l ]
  %10 = phi ptr [ %i.av, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, %bb.l ]
  %11 = phi ptr [ %i.ax, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %13, align 16
  store ptr %.sroa.0.0, ptr %3, align 16
  %.sroa.4.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx48, align 8, !tbaa !15
  %.sroa.0.i.i.i.i21.sroa.0.0.copyload.pre = load <2 x i64>, ptr %3, align 16, !tbaa !15
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i23

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i23: ; preds = %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread53, %bb.n
  %.sroa.0.i.i.i.i21.sroa.0.0.copyload = phi <2 x i64> [ %.sroa.0.i.i.i.i21.sroa.0.0.copyload.pre, %bb.n ], [ zeroinitializer, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread53 ]
  %i.az = phi ptr [ %12, %bb.n ], [ %i.ay, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread53 ]
  %i.ba = phi ptr [ %10, %bb.n ], [ %i.av, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread53 ]
  %i.bb = phi ptr [ %11, %bb.n ], [ null, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread53 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 16, i1 false), !tbaa.struct !292
  store <2 x i64> %.sroa.0.i.i.i.i21.sroa.0.0.copyload, ptr %i.bc, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !46 ; 3 uses
  store ptr %i.bf, ptr %i.bd, align 16, !tbaa !46
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !46
end_hunk_7
begin_hunk_8
; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_122BindDecimalAddSubtractINS_16SubtractOperatorENS_28DecimalSubtractOverflowCheckELb1EEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS5_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS4_INS_10ExpressionES6_ISE_ELb1EEELb1ESaISG_EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 16    ; 14 uses
  %5 = alloca %"class.std::function", align 8     ; 7 uses
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %6 = alloca %"class.std::function", align 8     ; 9 uses
end_hunk_8
begin_hunk_9
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i17 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i.i17, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i18, label %bb.k

end_hunk_9
begin_hunk_10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.ac, align 16
  br label %bb.k

bb.k:                                             ; preds = %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread, %.noexc
end_hunk_10
begin_hunk_11
  %i.ae = phi ptr [ %i.y, %.noexc ], [ %i.aa, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.af = phi ptr [ %i.v, %.noexc ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.ag = phi ptr [ %i.x, %.noexc ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  store ptr %.sroa.0.0, ptr %4, align 16
  %.sroa.4.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx37, align 8, !tbaa !15
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i18
end_hunk_11
begin_hunk_12
  %i.ai = phi ptr [ %i.ae, %bb.k ], [ %i.y, %.noexc ] ; 2 uses
  %i.aj = phi ptr [ %i.af, %bb.k ], [ %i.v, %.noexc ]
  %i.ak = phi ptr [ %i.ag, %bb.k ], [ null, %.noexc ]
  %.sroa.0.i.i.i.i16.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 16, i1 false), !tbaa.struct !292
  store <2 x i64> %.sroa.0.i.i.i.i16.sroa.0.0.copyload, ptr %i.ai, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46 ; 3 uses
  store ptr %i.an, ptr %i.al, align 16, !tbaa !46
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46
end_hunk_12
begin_hunk_13
; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_128DeserializeDecimalArithmeticINS_16SubtractOperatorENS_28DecimalSubtractOverflowCheckELb0EEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS5_ELb1EEERNS_12DeserializerERNS_14ScalarFunctionE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 13 uses
  %4 = alloca %"class.std::function", align 8     ; 8 uses
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %5 = alloca %"class.std::function", align 8     ; 9 uses
end_hunk_13
begin_hunk_14

bb.l:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit
  switch i8 %i.ag, label %bb.m [
    i8 11, label %bb.n
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i
  ]

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i: ; preds = %bb.l
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !367
end_hunk_14
begin_hunk_15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i23

_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit: ; preds = %.noexc20
  %.sroa.051.0.copyload = load ptr, ptr %4, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !367
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i, %bb.l, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit
  %.sroa.0.0 = phi ptr [ %.sroa.051.0.copyload, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_16SubtractOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIfffNS_16SubtractOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.l ]
  %.sroa.4.0 = phi i64 [ %.sroa.3.0.copyload, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ 0, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ 0, %bb.l ]
  %10 = phi ptr [ %i.av, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, %bb.l ]
  %11 = phi ptr [ %i.ax, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %13, align 16
  store ptr %.sroa.0.0, ptr %3, align 16
  %.sroa.4.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx48, align 8, !tbaa !15
  %.sroa.0.i.i.i.i21.sroa.0.0.copyload.pre = load <2 x i64>, ptr %3, align 16, !tbaa !15
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i23

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i23: ; preds = %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread53, %bb.n
  %.sroa.0.i.i.i.i21.sroa.0.0.copyload = phi <2 x i64> [ %.sroa.0.i.i.i.i21.sroa.0.0.copyload.pre, %bb.n ], [ zeroinitializer, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread53 ]
  %i.az = phi ptr [ %12, %bb.n ], [ %i.ay, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread53 ]
  %i.ba = phi ptr [ %10, %bb.n ], [ %i.av, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread53 ]
  %i.bb = phi ptr [ %11, %bb.n ], [ null, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread53 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 16, i1 false), !tbaa.struct !292
  store <2 x i64> %.sroa.0.i.i.i.i21.sroa.0.0.copyload, ptr %i.bc, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !46 ; 3 uses
  store ptr %i.bf, ptr %i.bd, align 16, !tbaa !46
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !46
end_hunk_15
begin_hunk_16
; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_119BindDecimalMultiplyERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 16    ; 14 uses
  %5 = alloca %"class.std::function", align 8     ; 7 uses
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %6 = alloca %"class.std::function", align 8     ; 9 uses
end_hunk_16
begin_hunk_17
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i94 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.not.i.i.i94, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i95, label %bb.cc

end_hunk_17
begin_hunk_18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.gt, align 16
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread, %.noexc
end_hunk_18
begin_hunk_19
  %i.gv = phi ptr [ %i.gp, %.noexc ], [ %i.gr, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.gw = phi ptr [ %i.gm, %.noexc ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.gx = phi ptr [ %i.go, %.noexc ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  store ptr %.sroa.0.0, ptr %4, align 16
  %.sroa.4.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx201, align 8, !tbaa !15
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i95
end_hunk_19
begin_hunk_20
  %i.gz = phi ptr [ %i.gv, %bb.cc ], [ %i.gp, %.noexc ] ; 2 uses
  %i.ha = phi ptr [ %i.gw, %bb.cc ], [ %i.gm, %.noexc ]
  %i.hb = phi ptr [ %i.gx, %bb.cc ], [ null, %.noexc ]
  %.sroa.0.i.i.i.i93.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.gz, i64 16, i1 false), !tbaa.struct !292
  store <2 x i64> %.sroa.0.i.i.i.i93.sroa.0.0.copyload, ptr %i.gz, align 8, !tbaa !15
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !46 ; 3 uses
  store ptr %i.he, ptr %i.hc, align 16, !tbaa !46
  store ptr %i.hb, ptr %i.hd, align 8, !tbaa !46
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !46
end_hunk_20
begin_hunk_21
; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_128DeserializeDecimalArithmeticINS_16MultiplyOperatorENS_28DecimalMultiplyOverflowCheckELb0EEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS5_ELb1EEERNS_12DeserializerERNS_14ScalarFunctionE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 13 uses
  %4 = alloca %"class.std::function", align 8     ; 8 uses
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %5 = alloca %"class.std::function", align 8     ; 9 uses
end_hunk_21
begin_hunk_22

bb.l:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit
  switch i8 %i.ag, label %bb.m [
    i8 11, label %bb.n
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i
  ]

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i: ; preds = %bb.l
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !397
end_hunk_22
begin_hunk_23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !397
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i23

_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit: ; preds = %.noexc20
  %.sroa.051.0.copyload = load ptr, ptr %4, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !397
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i, %bb.l, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit
  %.sroa.0.0 = phi ptr [ %.sroa.051.0.copyload, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_16MultiplyOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIfffNS_16MultiplyOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.l ]
  %.sroa.4.0 = phi i64 [ %.sroa.3.0.copyload, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ 0, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ 0, %bb.l ]
  %10 = phi ptr [ %i.av, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, %bb.l ]
  %11 = phi ptr [ %i.ax, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %13, align 16
  store ptr %.sroa.0.0, ptr %3, align 16
  %.sroa.4.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx48, align 8, !tbaa !15
  %.sroa.0.i.i.i.i21.sroa.0.0.copyload.pre = load <2 x i64>, ptr %3, align 16, !tbaa !15
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i23

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i23: ; preds = %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread53, %bb.n
  %.sroa.0.i.i.i.i21.sroa.0.0.copyload = phi <2 x i64> [ %.sroa.0.i.i.i.i21.sroa.0.0.copyload.pre, %bb.n ], [ zeroinitializer, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread53 ]
  %i.az = phi ptr [ %12, %bb.n ], [ %i.ay, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread53 ]
  %i.ba = phi ptr [ %10, %bb.n ], [ %i.av, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread53 ]
  %i.bb = phi ptr [ %11, %bb.n ], [ null, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread53 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 16, i1 false), !tbaa.struct !292
  store <2 x i64> %.sroa.0.i.i.i.i21.sroa.0.0.copyload, ptr %i.bc, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !46 ; 3 uses
  store ptr %i.bf, ptr %i.bd, align 16, !tbaa !46
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !46
end_hunk_23
