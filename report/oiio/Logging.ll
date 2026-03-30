begin_hunk_0
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }

@_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE = internal global %"class.std::function" zeroinitializer, align 16
@__dso_handle = external hidden global i8
@_ZN16OpenColorIO_v2_512_GLOBAL__N_114g_logginglevelE = internal unnamed_addr global i32 255, align 4
@_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingOverrideE = internal unnamed_addr global i1 false, align 1
end_hunk_0
begin_hunk_1
; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_518SetLoggingFunctionESt8functionIFvPKcEE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function", align 16    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvPKcEEC2ERKS3_.exit.i, label %bb.b
end_hunk_1
begin_hunk_2

bb.c:                                             ; preds = %bb.b
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !45
  %.sroa.0.0.copyload.i.i.pre.i = load <2 x i64>, ptr %1, align 16, !tbaa !29
  br label %_ZNSt8functionIFvPKcEEC2ERKS3_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !20  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.e

end_hunk_2
begin_hunk_3
  resume { ptr, i32 } %i.f

_ZNSt8functionIFvPKcEEC2ERKS3_.exit.i:            ; preds = %bb.c, %bb.a
  %.sroa.0.0.copyload.i.i.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.0.0.copyload.i.i.pre.i, %bb.c ]
  %2 = phi <2 x ptr> [ zeroinitializer, %bb.a ], [ %i.e, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, i64 16, i1 false), !tbaa.struct !46
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, align 16, !tbaa !29
  %i.k = load <2 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, i64 16), align 16, !tbaa !45
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, i64 16), align 16, !tbaa !45 ; 2 uses
  store <2 x ptr> %i.k, ptr %i.a, align 16, !tbaa !45
  store <2 x ptr> %2, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, i64 16), align 16, !tbaa !45
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvPKcEEaSERKS3_.exit, label %bb.g

end_hunk_3
begin_hunk_4
; Function Attrs: mustprogress nounwind uwtable
define void @_ZN16OpenColorIO_v2_529ResetToDefaultLoggingFunctionEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::function", align 16    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_122DefaultLoggingFunctionEPKc, ptr %0, align 16, !tbaa !45
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %0, align 16, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, i64 16, i1 false), !tbaa.struct !46
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, align 16, !tbaa !29
  %i.c = load <2 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, i64 16), align 16, !tbaa !45
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, i64 16), align 16, !tbaa !45 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvPKcEPS2_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, i64 16), align 16, !tbaa !45
  store <2 x ptr> %i.c, ptr %i.a, align 16, !tbaa !45
  store ptr @_ZNSt17_Function_handlerIFvPKcEPS2_E9_M_invokeERKSt9_Any_dataOS1_, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, i64 24), align 8, !tbaa !45
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvPKcEEaSIRS2_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS3_E4typeEOS7_.exit, label %bb.b
end_hunk_4
begin_hunk_5
  %i.eb = load ptr, ptr %4, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.eb, ptr %i.a, align 8, !tbaa !70
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, i64 16), align 16, !tbaa !20
  %.not.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i, label %bb.x, label %bb.y

end_hunk_5
begin_hunk_6
define internal void @_GLOBAL__sub_I_Logging.cpp() #16 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, i64 8), align 8
  store ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_122DefaultLoggingFunctionEPKc, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, align 16, !tbaa !45
  store ptr @_ZNSt17_Function_handlerIFvPKcEPS2_E9_M_invokeERKSt9_Any_dataOS1_, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, i64 24), align 8, !tbaa !71
  store ptr @_ZNSt17_Function_handlerIFvPKcEPS2_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, i64 16), align 16, !tbaa !20
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt14_Function_baseD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_117g_loggingFunctionE, ptr nonnull @__dso_handle) #20 ; 0 uses
  ret void
}
end_hunk_6
