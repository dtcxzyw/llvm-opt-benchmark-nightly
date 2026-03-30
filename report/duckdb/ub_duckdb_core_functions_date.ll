begin_hunk_0
; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_112DatePartBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 8     ; 6 uses
  %5 = alloca %"class.std::function", align 8     ; 6 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
end_hunk_0
begin_hunk_1
_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 16, i1 false), !tbaa.struct !61
  store ptr @_ZN6duckdb12_GLOBAL__N_18DatePart13UnaryFunctionINS_11timestamp_tEdNS1_17JulianDayOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %i.bx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 248
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.cb = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !7
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !7  ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bz, align 8, !tbaa !7
  store <2 x ptr> %i.cb, ptr %i.by, align 8, !tbaa !7
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.ca, align 8, !tbaa !7
  %.not.i.i.i61 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i61, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.o
end_hunk_1
begin_hunk_2
_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i90: ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ez, i64 16, i1 false), !tbaa.struct !61
  store ptr @_ZN6duckdb12_GLOBAL__N_18DatePart13UnaryFunctionINS_11timestamp_tEdNS1_13EpochOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %i.ez, align 8
  %.sroa.2170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 248
  store i64 0, ptr %.sroa.2170.0..sroa_idx, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.fd = load <2 x ptr>, ptr %i.fb, align 8, !tbaa !7
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !7  ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.fb, align 8, !tbaa !7
  store <2 x ptr> %i.fd, ptr %i.fa, align 8, !tbaa !7
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.fc, align 8, !tbaa !7
  %.not.i.i.i91 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i91, label %_ZNSt14_Function_baseD2Ev.exit94, label %bb.ae
end_hunk_2
begin_hunk_3
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !7
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !12
end_hunk_3
begin_hunk_4
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !61
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !7
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !7    ; 2 uses
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !7
  store <2 x ptr> %i.c, ptr %i.f, align 8, !tbaa !7
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSEOS8_.exit, label %bb.c
end_hunk_4
