begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %1 = alloca %"struct.node::sqlite::ConflictCallbackContext", align 8 ; 14 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"class.v8::Local.23", align 8      ; 4 uses
end_hunk_0
begin_hunk_1

"_ZNSt8functionIFiiEEaSIZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS6_5ValueEEEE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSE_.exit": ; preds = %_ZNK2v85Value16QuickIsUndefinedEv.exit43.thread
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.ar, ptr %i.du, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.db, ptr %.sroa.4.0..sroa_idx, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @"_ZNSt17_Function_handlerIFiiEZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS4_5ValueEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 56
end_hunk_1
begin_hunk_2
; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(32) ptr @"_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINSA_5ValueEEEE3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOSI_"(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.i.i = alloca { i64, i64 }, align 8     ; 4 uses
  %2 = alloca %"class.std::function.556", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  store ptr %i.c, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x ptr>, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.d, align 8              ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS8_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.d, align 8
  store <2 x ptr> %i.f, ptr %i.a, align 8
  store ptr @"_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS8_5ValueEEEE3$_1E9_M_invokeERKSt9_Any_dataOS3_", ptr %i.e, align 8
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b
end_hunk_2
