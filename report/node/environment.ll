begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4node15LoadEnvironmentEPNS_11EnvironmentESt8functionIFN2v810MaybeLocalINS3_5ValueEEERKNS_36StartExecutionCallbackInfoWithModuleEEES2_IFvS1_NS3_5LocalIS5_EESD_EE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::function.336", align 8 ; 6 uses
  %4 = alloca %"class.std::function.561", align 8 ; 7 uses
  tail call void @_ZN4node11Environment15InitializeLibuvEv(ptr noundef nonnull align 8 dereferenceable(3304) %0) #17
  tail call void @_ZN4node11Environment21InitializeDiagnosticsEv(ptr noundef nonnull align 8 dereferenceable(3304) %0) #17
end_hunk_0
begin_hunk_1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3184 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.i = load <2 x ptr>, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr %i.b, ptr %i.g, align 8
  store <2 x ptr> %i.i, ptr %i.f, align 8
  store ptr %i.d, ptr %i.h, align 8
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN4node11Environment20set_embedder_preloadESt8functionIFvPS0_N2v85LocalINS3_5ValueEEES6_EE.exit, label %bb.b
end_hunk_1
begin_hunk_2
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node21SetProcessExitHandlerEPNS_11EnvironmentEOSt8functionIFvS1_NS_8ExitCodeEEE(ptr noundef captures(none) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2976 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.b, align 8
end_hunk_2
begin_hunk_3
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvPN4node11EnvironmentENS0_8ExitCodeEEEC2EOS5_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvPN4node11EnvironmentENS0_8ExitCodeEEEC2EOS5_.exit.i.i

_ZNSt8functionIFvPN4node11EnvironmentENS0_8ExitCodeEEEC2EOS5_.exit.i.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2992 ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  store <2 x ptr> %i.g, ptr %i.e, align 8
  store <2 x ptr> %i.c, ptr %i.f, align 8
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN4node11Environment24set_process_exit_handlerEOSt8functionIFvPS0_NS_8ExitCodeEEE.exit, label %bb.c
end_hunk_3
begin_hunk_4
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node21SetProcessExitHandlerEPNS_11EnvironmentEOSt8functionIFvS1_iEE(ptr noundef captures(none) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 6 uses
  %3 = alloca %"class.std::function.633", align 8 ; 11 uses
  %4 = alloca %class.anon.636, align 8            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
end_hunk_4
begin_hunk_5
_ZNSt8functionIFvPN4node11EnvironmentENS0_8ExitCodeEEEC2EOS5_.exit.i.i: ; preds = %_ZNSt8functionIFvPN4node11EnvironmentEiEEC2ERKS4_.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2976 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 16, i1 false)
  store ptr %i.q, ptr %i.u, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2984
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2992 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3000
  %i.y = load <2 x ptr>, ptr %i.w, align 8
  %i.z = load ptr, ptr %i.w, align 8              ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvPN4node11EnvironmentENS0_8ExitCodeEEZNS0_21SetProcessExitHandlerES2_OSt8functionIFvS2_iEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.w, align 8
  store <2 x ptr> %i.y, ptr %i.v, align 8
  store ptr @"_ZNSt17_Function_handlerIFvPN4node11EnvironmentENS0_8ExitCodeEEZNS0_21SetProcessExitHandlerES2_OSt8functionIFvS2_iEEE3$_0E9_M_invokeERKSt9_Any_dataOS2_OS3_", ptr %i.x, align 8
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d
end_hunk_5
