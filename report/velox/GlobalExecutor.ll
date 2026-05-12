inline.NumInlined: 3660
inline.NumDeleted: 1838
begin_hunk_0_@_ZNSt15_Sp_counted_ptrIPN5folly21CPUThreadPoolExecutorELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail15SingletonHolderISt10shared_ptrINS_21CPUThreadPoolExecutorEEE17registerSingletonESt8functionIFPS4_vEES6_IFvS7_EE(ptr noundef nonnull align 8 dereferenceable(2304) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.301", align 16 ; 9 uses
  %4 = alloca %"class.std::function.297", align 16 ; 9 uses
  %5 = alloca %"class.folly::detail::TypeDescriptor", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5folly6detail15SingletonHolderISt10shared_ptrINS_21CPUThreadPoolExecutorEEE17registerSingletonESt8functionIFPS4_vEES6_IFvS7_EE:bb.a
bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !181
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !256
end_hunk_1
begin_hunk_2_@_ZN5folly6detail15SingletonHolderISt10shared_ptrINS_21CPUThreadPoolExecutorEEE17registerSingletonESt8functionIFPS4_vEES6_IFvS7_EE:bb.a
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFPSt10shared_ptrIN5folly21CPUThreadPoolExecutorEEvEEC2EOS6_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !3196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFPSt10shared_ptrIN5folly21CPUThreadPoolExecutorEEvEEC2EOS6_.exit.i

_ZNSt8functionIFPSt10shared_ptrIN5folly21CPUThreadPoolExecutorEEvEEC2EOS6_.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 16, i1 false), !tbaa.struct !3196
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.i, align 8, !tbaa !255
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2240 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !181
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !181  ; 2 uses
  store <2 x ptr> %i.o, ptr %i.m, align 16, !tbaa !181
  store <2 x ptr> %i.k, ptr %i.n, align 8, !tbaa !181
  %.not.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i2, label %_ZNSt8functionIFPSt10shared_ptrIN5folly21CPUThreadPoolExecutorEEvEEaSEOS6_.exit, label %bb.h
end_hunk_2
begin_hunk_3_@_ZN5folly6detail15SingletonHolderISt10shared_ptrINS_21CPUThreadPoolExecutorEEE17registerSingletonESt8functionIFPS4_vEES6_IFvS7_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !181
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !256
end_hunk_3
begin_hunk_4_@_ZN5folly6detail15SingletonHolderISt10shared_ptrINS_21CPUThreadPoolExecutorEEE17registerSingletonESt8functionIFPS4_vEES6_IFvS7_EE:bb.a
  br i1 %.not.i.i.not.i.i4, label %_ZNSt8functionIFvPSt10shared_ptrIN5folly21CPUThreadPoolExecutorEEEEC2EOS6_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt8functionIFPSt10shared_ptrIN5folly21CPUThreadPoolExecutorEEvEEaSEOS6_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !3196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvPSt10shared_ptrIN5folly21CPUThreadPoolExecutorEEEEC2EOS6_.exit.i

_ZNSt8functionIFvPSt10shared_ptrIN5folly21CPUThreadPoolExecutorEEEEC2EOS6_.exit.i: ; preds = %bb.j, %_ZNSt8functionIFPSt10shared_ptrIN5folly21CPUThreadPoolExecutorEEvEEaSEOS6_.exit
  %.sroa.0.i.i.i3.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 16, i1 false), !tbaa.struct !3196
  store <2 x i64> %.sroa.0.i.i.i3.sroa.0.0.copyload, ptr %i.t, align 8, !tbaa !255
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2272 ; 3 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !181
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !181 ; 2 uses
  store <2 x ptr> %i.z, ptr %i.x, align 16, !tbaa !181
  store <2 x ptr> %i.v, ptr %i.y, align 8, !tbaa !181
  %.not.i.i5 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i5, label %_ZNSt8functionIFvPSt10shared_ptrIN5folly21CPUThreadPoolExecutorEEEEaSEOS6_.exit, label %bb.k
end_hunk_4
begin_hunk_5_@_ZNSt15_Sp_counted_ptrIPN5folly20IOThreadPoolExecutorELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail15SingletonHolderISt10shared_ptrINS_20IOThreadPoolExecutorEEE17registerSingletonESt8functionIFPS4_vEES6_IFvS7_EE(ptr noundef nonnull align 8 dereferenceable(2304) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.431", align 16 ; 9 uses
  %4 = alloca %"class.std::function.427", align 16 ; 9 uses
  %5 = alloca %"class.folly::detail::TypeDescriptor", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5folly6detail15SingletonHolderISt10shared_ptrINS_20IOThreadPoolExecutorEEE17registerSingletonESt8functionIFPS4_vEES6_IFvS7_EE:bb.a
bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !181
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !256
end_hunk_6
begin_hunk_7_@_ZN5folly6detail15SingletonHolderISt10shared_ptrINS_20IOThreadPoolExecutorEEE17registerSingletonESt8functionIFPS4_vEES6_IFvS7_EE:bb.a
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFPSt10shared_ptrIN5folly20IOThreadPoolExecutorEEvEEC2EOS6_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !3196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFPSt10shared_ptrIN5folly20IOThreadPoolExecutorEEvEEC2EOS6_.exit.i

_ZNSt8functionIFPSt10shared_ptrIN5folly20IOThreadPoolExecutorEEvEEC2EOS6_.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 16, i1 false), !tbaa.struct !3196
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.i, align 8, !tbaa !255
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2240 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !181
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !181  ; 2 uses
  store <2 x ptr> %i.o, ptr %i.m, align 16, !tbaa !181
  store <2 x ptr> %i.k, ptr %i.n, align 8, !tbaa !181
  %.not.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i2, label %_ZNSt8functionIFPSt10shared_ptrIN5folly20IOThreadPoolExecutorEEvEEaSEOS6_.exit, label %bb.h
end_hunk_7
begin_hunk_8_@_ZN5folly6detail15SingletonHolderISt10shared_ptrINS_20IOThreadPoolExecutorEEE17registerSingletonESt8functionIFPS4_vEES6_IFvS7_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !181
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !256
end_hunk_8
begin_hunk_9_@_ZN5folly6detail15SingletonHolderISt10shared_ptrINS_20IOThreadPoolExecutorEEE17registerSingletonESt8functionIFPS4_vEES6_IFvS7_EE:bb.a
  br i1 %.not.i.i.not.i.i4, label %_ZNSt8functionIFvPSt10shared_ptrIN5folly20IOThreadPoolExecutorEEEEC2EOS6_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt8functionIFPSt10shared_ptrIN5folly20IOThreadPoolExecutorEEvEEaSEOS6_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !3196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvPSt10shared_ptrIN5folly20IOThreadPoolExecutorEEEEC2EOS6_.exit.i

_ZNSt8functionIFvPSt10shared_ptrIN5folly20IOThreadPoolExecutorEEEEC2EOS6_.exit.i: ; preds = %bb.j, %_ZNSt8functionIFPSt10shared_ptrIN5folly20IOThreadPoolExecutorEEvEEaSEOS6_.exit
  %.sroa.0.i.i.i3.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 16, i1 false), !tbaa.struct !3196
  store <2 x i64> %.sroa.0.i.i.i3.sroa.0.0.copyload, ptr %i.t, align 8, !tbaa !255
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2272 ; 3 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !181
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !181 ; 2 uses
  store <2 x ptr> %i.z, ptr %i.x, align 16, !tbaa !181
  store <2 x ptr> %i.v, ptr %i.y, align 8, !tbaa !181
  %.not.i.i5 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i5, label %_ZNSt8functionIFvPSt10shared_ptrIN5folly20IOThreadPoolExecutorEEEEaSEOS6_.exit, label %bb.k
end_hunk_9
begin_hunk_10_@_ZN5folly6detail14UniqueInstance7enforceERNS1_3ArgE
; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_GlobalExecutor.cpp() #34 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::function.508", align 16 ; 11 uses
  %1 = alloca %"class.std::function.508", align 8 ; 10 uses
  %2 = alloca %"class.std::function.489", align 16 ; 11 uses
  %3 = alloca %"class.std::function.489", align 8 ; 10 uses
  %4 = alloca %"class.std::function.427", align 8 ; 13 uses
  %5 = alloca %"class.std::function.431", align 8 ; 11 uses
end_hunk_10
begin_hunk_11_@_GLOBAL__sub_I_GlobalExecutor.cpp:bb.a
  %11 = alloca %"class.std::function.301", align 8 ; 10 uses
  %12 = alloca %"class.std::function.297", align 8 ; 10 uses
  %13 = alloca %"class.std::function.301", align 8 ; 12 uses
  %14 = alloca %"class.std::function.0", align 16 ; 9 uses
  %15 = alloca %"class.std::function", align 16   ; 9 uses
  %16 = alloca %"class.folly::detail::TypeDescriptor", align 16 ; 4 uses
  %17 = alloca %"class.std::function", align 8    ; 13 uses
  %18 = alloca %"class.std::function.0", align 8  ; 11 uses
end_hunk_11
begin_hunk_12_@_GLOBAL__sub_I_GlobalExecutor.cpp:bb.a
bb.i:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 2224 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %15, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !181
  %.val.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !256
end_hunk_12
begin_hunk_13_@_GLOBAL__sub_I_GlobalExecutor.cpp:bb.a
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8functionIFPSt10shared_ptrIN12_GLOBAL__N_118DefaultCPUExecutorEEvEEC2EOS6_.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 16, i1 false), !tbaa.struct !3196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFPSt10shared_ptrIN12_GLOBAL__N_118DefaultCPUExecutorEEvEEC2EOS6_.exit.i.i.i.i

_ZNSt8functionIFPSt10shared_ptrIN12_GLOBAL__N_118DefaultCPUExecutorEEvEEC2EOS6_.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.0.i.i.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %15, align 16, !tbaa !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 16, i1 false), !tbaa.struct !3196
  store <2 x i64> %.sroa.0.i.i.i.i.i.i.sroa.0.0.copyload, ptr %i.aa, align 8, !tbaa !255
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 2240 ; 3 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !181
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !181 ; 2 uses
  store <2 x ptr> %i.af, ptr %i.ad, align 16, !tbaa !181
  store <2 x ptr> %i.ac, ptr %i.ae, align 8, !tbaa !181
  %.not.i.i2.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i2.i.i.i, label %_ZNSt8functionIFPSt10shared_ptrIN12_GLOBAL__N_118DefaultCPUExecutorEEvEEaSEOS6_.exit.i.i.i, label %bb.k
end_hunk_13
begin_hunk_14_@_GLOBAL__sub_I_GlobalExecutor.cpp:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 2256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %14, i8 0, i64 24, i1 false)
  %i.al = load <2 x ptr>, ptr %i.r, align 8, !tbaa !181
  %.val.i.i4.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !256
  %.not.i.i.not.i.i5.i.i.i = icmp eq ptr %.val.i.i4.i.i.i, null
  br i1 %.not.i.i.not.i.i5.i.i.i, label %_ZNSt8functionIFvPSt10shared_ptrIN12_GLOBAL__N_118DefaultCPUExecutorEEEEC2EOS6_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt8functionIFPSt10shared_ptrIN12_GLOBAL__N_118DefaultCPUExecutorEEvEEaSEOS6_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 16, i1 false), !tbaa.struct !3196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvPSt10shared_ptrIN12_GLOBAL__N_118DefaultCPUExecutorEEEEC2EOS6_.exit.i.i.i.i

_ZNSt8functionIFvPSt10shared_ptrIN12_GLOBAL__N_118DefaultCPUExecutorEEEEC2EOS6_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt8functionIFPSt10shared_ptrIN12_GLOBAL__N_118DefaultCPUExecutorEEvEEaSEOS6_.exit.i.i.i
  %.sroa.0.i.i.i3.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %14, align 16, !tbaa !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 16, i1 false), !tbaa.struct !3196
  store <2 x i64> %.sroa.0.i.i.i3.i.i.i.sroa.0.0.copyload, ptr %i.ak, align 8, !tbaa !255
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 2272 ; 3 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !181
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !181 ; 2 uses
  store <2 x ptr> %i.ao, ptr %i.am, align 16, !tbaa !181
  store <2 x ptr> %i.al, ptr %i.an, align 8, !tbaa !181
  %.not.i.i6.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i6.i.i.i, label %bb.p, label %bb.n
end_hunk_14
begin_hunk_15_@_GLOBAL__sub_I_GlobalExecutor.cpp:bb.a
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %.val.i.i.i.i = load ptr, ptr %i.hv, align 8, !tbaa !256 ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt8functionIFPN12_GLOBAL__N_114GlobalExecutorIN5folly8ExecutorEEEvEEC2ERKS7_.exit.i.i.i, label %bb.cv
end_hunk_15
begin_hunk_16_@_GLOBAL__sub_I_GlobalExecutor.cpp:bb.a
bb.cx:                                            ; preds = %bb.cv
  %i.ig = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ih = load ptr, ptr %i.id, align 16, !tbaa !256 ; 2 uses
  %.not.i.i.i.i.i54 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i.i54, label %.body.i52, label %bb.cy

end_hunk_16
begin_hunk_17_@_GLOBAL__sub_I_GlobalExecutor.cpp:bb.a

_ZNSt8functionIFPN12_GLOBAL__N_114GlobalExecutorIN5folly8ExecutorEEEvEEC2ERKS7_.exit.i.i.i: ; preds = %bb.cw, %bb.cu
  %i.il = phi <2 x ptr> [ splat (ptr null), %bb.cu ], [ %i.if, %bb.cw ] ; 2 uses
  %.sroa.0.i.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ic, i64 16, i1 false), !tbaa.struct !3196
  store <2 x i64> %.sroa.0.i.i.i.i.i.sroa.0.0.copyload, ptr %i.ic, align 8, !tbaa !255
  %i.im = getelementptr inbounds nuw i8, ptr %i.hz, i64 32 ; 3 uses
  %i.in = load <2 x ptr>, ptr %i.im, align 8, !tbaa !181
  %i.io = load ptr, ptr %i.im, align 8, !tbaa !181 ; 2 uses
  store <2 x ptr> %i.in, ptr %i.id, align 16, !tbaa !181
  store <2 x ptr> %i.il, ptr %i.im, align 8, !tbaa !181
  %.not.i.i4.i.i = icmp eq ptr %i.io, null
  %i.ip = extractelement <2 x ptr> %i.il, i64 0
end_hunk_17
begin_hunk_18_@_GLOBAL__sub_I_GlobalExecutor.cpp:bb.a
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %.val.i.i.i.i64 = load ptr, ptr %i.jc, align 8, !tbaa !256 ; 2 uses
  %.not.i.i.not.i.i.i.i65 = icmp eq ptr %.val.i.i.i.i64, null
  br i1 %.not.i.i.not.i.i.i.i65, label %_ZNSt8functionIFPN12_GLOBAL__N_114GlobalExecutorIN5folly10IOExecutorEEEvEEC2ERKS7_.exit.i.i.i, label %bb.dl
end_hunk_18
begin_hunk_19_@_GLOBAL__sub_I_GlobalExecutor.cpp:bb.a
bb.dn:                                            ; preds = %bb.dl
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jo = load ptr, ptr %i.jk, align 16, !tbaa !256 ; 2 uses
  %.not.i.i.i.i.i66 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i.i.i66, label %.body.i59, label %bb.do

end_hunk_19
begin_hunk_20_@_GLOBAL__sub_I_GlobalExecutor.cpp:bb.a

_ZNSt8functionIFPN12_GLOBAL__N_114GlobalExecutorIN5folly10IOExecutorEEEvEEC2ERKS7_.exit.i.i.i: ; preds = %bb.dm, %bb.dk
  %i.js = phi <2 x ptr> [ splat (ptr null), %bb.dk ], [ %i.jm, %bb.dm ] ; 2 uses
  %.sroa.0.i.i.i.i.i56.sroa.0.0.copyload = load <2 x i64>, ptr %0, align 16, !tbaa !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.jj, i64 16, i1 false), !tbaa.struct !3196
  store <2 x i64> %.sroa.0.i.i.i.i.i56.sroa.0.0.copyload, ptr %i.jj, align 8, !tbaa !255
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jg, i64 32 ; 3 uses
  %i.ju = load <2 x ptr>, ptr %i.jt, align 8, !tbaa !181
  %i.jv = load ptr, ptr %i.jt, align 8, !tbaa !181 ; 2 uses
  store <2 x ptr> %i.ju, ptr %i.jk, align 16, !tbaa !181
  store <2 x ptr> %i.js, ptr %i.jt, align 8, !tbaa !181
  %.not.i.i4.i.i67 = icmp eq ptr %i.jv, null
  %i.jw = extractelement <2 x ptr> %i.js, i64 0
end_hunk_20
