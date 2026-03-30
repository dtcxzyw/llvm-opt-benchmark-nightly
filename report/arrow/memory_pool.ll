begin_hunk_0
; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZN5arrow12_GLOBAL__N_114IsDebugEnabledEvENK3$_0clEv"() unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::function.50", align 8  ; 6 uses
  %1 = alloca %"class.std::function.50", align 8  ; 6 uses
  %2 = alloca %"class.arrow::Result.9", align 8   ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::function.50", align 8  ; 9 uses
end_hunk_0
begin_hunk_1

_ZNSt8functionIFvPhlRKN5arrow6StatusEEEC2EOS6_.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 40), i64 16, i1 false), !tbaa.struct !240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 40), ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load <2 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 56), align 8, !tbaa !235
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 56), align 8, !tbaa !235 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvPhlRKN5arrow6StatusEEPS5_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 56), align 8, !tbaa !235
  store <2 x ptr> %i.ad, ptr %i.ac, align 8, !tbaa !235
  store ptr @_ZNSt17_Function_handlerIFvPhlRKN5arrow6StatusEEPS5_E9_M_invokeERKSt9_Any_dataOS0_OlS4_, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 64), align 8, !tbaa !235
  %.not.i.i1.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i, label %bb.j, label %bb.h
end_hunk_1
begin_hunk_2

_ZNSt8functionIFvPhlRKN5arrow6StatusEEEC2EOS6_.exit.i.i31: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 40), i64 16, i1 false), !tbaa.struct !240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 40), ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load <2 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 56), align 8, !tbaa !235
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 56), align 8, !tbaa !235 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvPhlRKN5arrow6StatusEEPS5_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 56), align 8, !tbaa !235
  store <2 x ptr> %i.az, ptr %i.ay, align 8, !tbaa !235
  store ptr @_ZNSt17_Function_handlerIFvPhlRKN5arrow6StatusEEPS5_E9_M_invokeERKSt9_Any_dataOS0_OlS4_, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 64), align 8, !tbaa !235
  %.not.i.i1.i32 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i1.i32, label %bb.s, label %bb.q
end_hunk_2
begin_hunk_3
; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_110DebugState10SetHandlerESt8functionIFvPhlRKNS_6StatusEEE(ptr noundef nonnull captures(none) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %1 = alloca %"class.std::function.50", align 8  ; 9 uses
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance) #33 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b
end_hunk_3
begin_hunk_4

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !235
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !239
end_hunk_4
begin_hunk_5
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvPhlRKN5arrow6StatusEEEC2EOS6_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvPhlRKN5arrow6StatusEEEC2EOS6_.exit.i

_ZNSt8functionIFvPhlRKN5arrow6StatusEEEC2EOS6_.exit.i: ; preds = %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 40), i64 16, i1 false), !tbaa.struct !240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 40), ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !240
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load <2 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 56), align 8, !tbaa !235
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 56), align 8, !tbaa !235 ; 2 uses
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !235
  store <2 x ptr> %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12_GLOBAL__N_110DebugState8InstanceEvE8instance, i64 56), align 8, !tbaa !235
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZNSt8functionIFvPhlRKN5arrow6StatusEEEaSEOS6_.exit, label %bb.d
end_hunk_5
