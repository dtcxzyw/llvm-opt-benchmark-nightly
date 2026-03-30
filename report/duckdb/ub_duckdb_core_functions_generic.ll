begin_hunk_0
; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_117BindLeastGreatestINS0_7LeastOpEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS4_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS3_INS_10ExpressionES5_ISD_ELb1EEELb1ESaISF_EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 16    ; 9 uses
  %5 = alloca %"class.std::function", align 16    ; 9 uses
  %6 = alloca %"class.std::function", align 16    ; 9 uses
  %7 = alloca %"class.std::function", align 16    ; 9 uses
  %8 = alloca %"class.std::function", align 16    ; 9 uses
  %9 = alloca %"class.std::function", align 16    ; 9 uses
  %10 = alloca %"class.std::function", align 16   ; 9 uses
  %11 = alloca %"class.std::function", align 16   ; 9 uses
  %12 = alloca %"struct.duckdb::LogicalType", align 8 ; 27 uses
  %13 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
end_hunk_0
begin_hunk_1
  store i64 0, ptr %i.bt, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIaNS_8LessThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %20, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i = load <2 x i64>, ptr %11, align 16, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !94
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i, ptr %i.bp, align 8, !tbaa !84
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bv = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.bv, ptr %i.bu, align 16, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit.thread, label %bb.ae
end_hunk_1
begin_hunk_2
  store i64 0, ptr %i.ce, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIsNS_8LessThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %21, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %21, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i60 = load <2 x i64>, ptr %10, align 16, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !94
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i60, ptr %i.bp, align 8, !tbaa !84
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cg = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.ch = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.cg, ptr %i.cf, align 16, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i62 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i62, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit63.thread, label %bb.ai
end_hunk_2
begin_hunk_3
  store i64 0, ptr %i.cp, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIiNS_8LessThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %22, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %22, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i68 = load <2 x i64>, ptr %9, align 16, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !94
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i68, ptr %i.bp, align 8, !tbaa !84
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cr = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.cs = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.cr, ptr %i.cq, align 16, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i69 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i69, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit70.thread, label %bb.am
end_hunk_3
begin_hunk_4
  store i64 0, ptr %i.da, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIlNS_8LessThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %23, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %23, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i76 = load <2 x i64>, ptr %8, align 16, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !94
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i76, ptr %i.bp, align 8, !tbaa !84
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dc = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.dd = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.dc, ptr %i.db, align 16, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i76 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i76, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit77.thread, label %bb.aq
end_hunk_4
begin_hunk_5
  store i64 0, ptr %i.dl, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionINS_9hugeint_tENS_8LessThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %24, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i84 = load <2 x i64>, ptr %7, align 16, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !94
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i84, ptr %i.bp, align 8, !tbaa !84
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dn = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.do = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.dn, ptr %i.dm, align 16, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i83 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i83, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit84.thread, label %bb.au
end_hunk_5
begin_hunk_6
  store i64 0, ptr %i.dw, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIdNS_8LessThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %25, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %25, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i92 = load <2 x i64>, ptr %6, align 16, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !94
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i92, ptr %i.bp, align 8, !tbaa !84
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dy = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.dz = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.dy, ptr %i.dx, align 16, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i90 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i90, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit91.thread, label %bb.ay
end_hunk_6
begin_hunk_7
  store i64 0, ptr %i.eh, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionINS_8string_tENS_8LessThanENS0_21StandardLeastGreatestILb1EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %26, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %26, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i100 = load <2 x i64>, ptr %5, align 16, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !94
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i100, ptr %i.bp, align 8, !tbaa !84
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ej = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.ek = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.ej, ptr %i.ei, align 16, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i97 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i97, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit98.thread, label %bb.bc
end_hunk_7
begin_hunk_8
  store i64 0, ptr %i.es, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionINS_8string_tENS_8LessThanENS0_20SortKeyLeastGreatestEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %27, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %27, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i108 = load <2 x i64>, ptr %4, align 16, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !94
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i108, ptr %i.bp, align 8, !tbaa !84
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eu = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.ev = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.eu, ptr %i.et, align 16, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i104 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i104, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit105.thread, label %bb.bg
end_hunk_8
begin_hunk_9
; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_117BindLeastGreatestINS0_9GreaterOpEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS4_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS3_INS_10ExpressionES5_ISD_ELb1EEELb1ESaISF_EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 16    ; 9 uses
  %5 = alloca %"class.std::function", align 16    ; 9 uses
  %6 = alloca %"class.std::function", align 16    ; 9 uses
  %7 = alloca %"class.std::function", align 16    ; 9 uses
  %8 = alloca %"class.std::function", align 16    ; 9 uses
  %9 = alloca %"class.std::function", align 16    ; 9 uses
  %10 = alloca %"class.std::function", align 16   ; 9 uses
  %11 = alloca %"class.std::function", align 16   ; 9 uses
  %12 = alloca %"struct.duckdb::LogicalType", align 8 ; 27 uses
  %13 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
end_hunk_9
begin_hunk_10
  store i64 0, ptr %i.bt, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIaNS_11GreaterThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %20, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i = load <2 x i64>, ptr %11, align 16, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !94
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i, ptr %i.bp, align 8, !tbaa !84
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bv = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.bv, ptr %i.bu, align 16, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit.thread, label %bb.ae
end_hunk_10
begin_hunk_11
  store i64 0, ptr %i.ce, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIsNS_11GreaterThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %21, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %21, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i60 = load <2 x i64>, ptr %10, align 16, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !94
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i60, ptr %i.bp, align 8, !tbaa !84
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cg = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.ch = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.cg, ptr %i.cf, align 16, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i62 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i62, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit63.thread, label %bb.ai
end_hunk_11
begin_hunk_12
  store i64 0, ptr %i.cp, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIiNS_11GreaterThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %22, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %22, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i68 = load <2 x i64>, ptr %9, align 16, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !94
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i68, ptr %i.bp, align 8, !tbaa !84
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cr = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.cs = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.cr, ptr %i.cq, align 16, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i69 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i69, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit70.thread, label %bb.am
end_hunk_12
begin_hunk_13
  store i64 0, ptr %i.da, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIlNS_11GreaterThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %23, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %23, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i76 = load <2 x i64>, ptr %8, align 16, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !94
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i76, ptr %i.bp, align 8, !tbaa !84
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dc = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.dd = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.dc, ptr %i.db, align 16, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i76 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i76, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit77.thread, label %bb.aq
end_hunk_13
begin_hunk_14
  store i64 0, ptr %i.dl, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionINS_9hugeint_tENS_11GreaterThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %24, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i84 = load <2 x i64>, ptr %7, align 16, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !94
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i84, ptr %i.bp, align 8, !tbaa !84
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dn = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.do = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.dn, ptr %i.dm, align 16, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i83 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i83, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit84.thread, label %bb.au
end_hunk_14
begin_hunk_15
  store i64 0, ptr %i.dw, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIdNS_11GreaterThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %25, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %25, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i92 = load <2 x i64>, ptr %6, align 16, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !94
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i92, ptr %i.bp, align 8, !tbaa !84
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dy = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.dz = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.dy, ptr %i.dx, align 16, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i90 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i90, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit91.thread, label %bb.ay
end_hunk_15
begin_hunk_16
  store i64 0, ptr %i.eh, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionINS_8string_tENS_11GreaterThanENS0_21StandardLeastGreatestILb1EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %26, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %26, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i100 = load <2 x i64>, ptr %5, align 16, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !94
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i100, ptr %i.bp, align 8, !tbaa !84
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ej = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.ek = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.ej, ptr %i.ei, align 16, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i97 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i97, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit98.thread, label %bb.bc
end_hunk_16
begin_hunk_17
  store i64 0, ptr %i.es, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionINS_8string_tENS_11GreaterThanENS0_20SortKeyLeastGreatestEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %27, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %27, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i108 = load <2 x i64>, ptr %4, align 16, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !94
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i108, ptr %i.bp, align 8, !tbaa !84
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eu = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.ev = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.eu, ptr %i.et, align 16, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i104 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i104, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit105.thread, label %bb.bg
end_hunk_17
