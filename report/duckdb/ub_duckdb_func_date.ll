inline.NumInlined: 1836
inline.NumDeleted: 869
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_116StrpTimeFunction4BindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS8_ELb1EEELb1ESaISB_EEE
define internal void @_ZN6duckdb12_GLOBAL__N_116StrpTimeFunction4BindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS8_ELb1EEELb1ESaISB_EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::vector.155", align 16 ; 6 uses
  %5 = alloca %"class.std::function", align 8     ; 7 uses
  %6 = alloca %"class.std::function", align 8     ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::function", align 8     ; 7 uses
  %8 = alloca %"class.std::function", align 8     ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 11 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_116StrpTimeFunction4BindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS8_ELb1EEELb1ESaISB_EEE:bb.a
  store ptr @_ZN6duckdb12_GLOBAL__N_116StrpTimeFunction5ParseINS_14timestamp_ns_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %21, align 8, !tbaa !23
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.fl, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.fp = load <2 x ptr>, ptr %i.fn, align 8, !tbaa !23
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !23 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.fn, align 8, !tbaa !23
  store <2 x ptr> %i.fp, ptr %i.fm, align 8, !tbaa !23
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.fo, align 8, !tbaa !23
  %.not.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit.thread, label %bb.bg
end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_116StrpTimeFunction4BindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS8_ELb1EEELb1ESaISB_EEE:bb.a
  store ptr @_ZN6duckdb12_GLOBAL__N_116StrpTimeFunction8TryParseINS_14timestamp_ns_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %22, align 8, !tbaa !23
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fz, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.gd = load <2 x ptr>, ptr %i.gb, align 8, !tbaa !23
  %i.ge = load ptr, ptr %i.gb, align 8, !tbaa !23 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.gb, align 8, !tbaa !23
  store <2 x ptr> %i.gd, ptr %i.ga, align 8, !tbaa !23
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.gc, align 8, !tbaa !23
  %.not.i.i.i134 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i134, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit135.thread, label %bb.bk
end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_116StrpTimeFunction4BindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS8_ELb1EEELb1ESaISB_EEE:bb.a
  store ptr @_ZN6duckdb12_GLOBAL__N_116StrpTimeFunction5ParseINS_14timestamp_ns_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %36, align 8, !tbaa !23
  %i.ob = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nz, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ob, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ob, ptr noundef nonnull align 8 dereferenceable(16) %36, i64 16, i1 false)
  %i.oc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.of = load <2 x ptr>, ptr %i.od, align 8, !tbaa !23
  %i.og = load ptr, ptr %i.od, align 8, !tbaa !23 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.od, align 8, !tbaa !23
  store <2 x ptr> %i.of, ptr %i.oc, align 8, !tbaa !23
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.oe, align 8, !tbaa !23
  %.not.i.i.i219 = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i219, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit220.thread, label %bb.el
end_hunk_3
begin_hunk_4_@_ZN6duckdb12_GLOBAL__N_116StrpTimeFunction4BindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS8_ELb1EEELb1ESaISB_EEE:bb.a
  store ptr @_ZN6duckdb12_GLOBAL__N_116StrpTimeFunction8TryParseINS_14timestamp_ns_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %37, align 8, !tbaa !23
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.on, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.op, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.op, ptr noundef nonnull align 8 dereferenceable(16) %37, i64 16, i1 false)
  %i.oq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.ot = load <2 x ptr>, ptr %i.or, align 8, !tbaa !23
  %i.ou = load ptr, ptr %i.or, align 8, !tbaa !23 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.or, align 8, !tbaa !23
  store <2 x ptr> %i.ot, ptr %i.oq, align 8, !tbaa !23
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.os, align 8, !tbaa !23
  %.not.i.i.i226 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.i226, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit227.thread, label %bb.ep
end_hunk_4
begin_hunk_5_@_ZN6duckdb11LogicalTypeC1ERKS0_
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(360) ptr @_ZN6duckdb14ScalarFunctionaSEOS0_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN6duckdb14SimpleFunctionaSERKS0_(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull align 8 dereferenceable(236) %1) ; 0 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit, label %bb.b
end_hunk_5
begin_hunk_6_@_ZN6duckdb14ScalarFunctionaSEOS0_:bb.a
  store i32 %i.al, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !23
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !27
end_hunk_6
begin_hunk_7_@_ZN6duckdb14ScalarFunctionaSEOS0_:bb.a

bb.l:                                             ; preds = %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 16, i1 false), !tbaa.struct !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i: ; preds = %bb.l, %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.at = load <2 x ptr>, ptr %i.as, align 8, !tbaa !23
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !23 ; 2 uses
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !23
  store <2 x ptr> %i.ao, ptr %i.as, align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSEOS8_.exit, label %bb.m
end_hunk_7
