inline.NumInlined: 2258
inline.NumDeleted: 1233
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail15SingletonHolderINS_21CPUThreadPoolExecutorEE17registerSingletonESt8functionIFPS2_vEES4_IFvS5_EE(ptr noundef nonnull align 8 dereferenceable(2304) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.0", align 16  ; 9 uses
  %4 = alloca %"class.std::function", align 16    ; 9 uses
  %5 = alloca %"class.folly::detail::TypeDescriptor", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #22 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5folly6detail15SingletonHolderINS_21CPUThreadPoolExecutorEE17registerSingletonESt8functionIFPS2_vEES4_IFvS5_EE:bb.a
bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !20
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !2038
end_hunk_1
begin_hunk_2_@_ZN5folly6detail15SingletonHolderINS_21CPUThreadPoolExecutorEE17registerSingletonESt8functionIFPS2_vEES4_IFvS5_EE:bb.a
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFPN5folly21CPUThreadPoolExecutorEvEEC2EOS4_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !2040
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFPN5folly21CPUThreadPoolExecutorEvEEC2EOS4_.exit.i

_ZNSt8functionIFPN5folly21CPUThreadPoolExecutorEvEEC2EOS4_.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 16, i1 false), !tbaa.struct !2040
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.i, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2240 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !20
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  store <2 x ptr> %i.o, ptr %i.m, align 16, !tbaa !20
  store <2 x ptr> %i.k, ptr %i.n, align 8, !tbaa !20
  %.not.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i2, label %_ZNSt8functionIFPN5folly21CPUThreadPoolExecutorEvEEaSEOS4_.exit, label %bb.h
end_hunk_2
begin_hunk_3_@_ZN5folly6detail15SingletonHolderINS_21CPUThreadPoolExecutorEE17registerSingletonESt8functionIFPS2_vEES4_IFvS5_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !20
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !2038
end_hunk_3
begin_hunk_4_@_ZN5folly6detail15SingletonHolderINS_21CPUThreadPoolExecutorEE17registerSingletonESt8functionIFPS2_vEES4_IFvS5_EE:bb.a
  br i1 %.not.i.i.not.i.i4, label %_ZNSt8functionIFvPN5folly21CPUThreadPoolExecutorEEEC2EOS4_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt8functionIFPN5folly21CPUThreadPoolExecutorEvEEaSEOS4_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !2040
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvPN5folly21CPUThreadPoolExecutorEEEC2EOS4_.exit.i

_ZNSt8functionIFvPN5folly21CPUThreadPoolExecutorEEEC2EOS4_.exit.i: ; preds = %bb.j, %_ZNSt8functionIFPN5folly21CPUThreadPoolExecutorEvEEaSEOS4_.exit
  %.sroa.0.i.i.i3.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 16, i1 false), !tbaa.struct !2040
  store <2 x i64> %.sroa.0.i.i.i3.sroa.0.0.copyload, ptr %i.t, align 8, !tbaa !97
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2272 ; 3 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !20
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !20  ; 2 uses
  store <2 x ptr> %i.z, ptr %i.x, align 16, !tbaa !20
  store <2 x ptr> %i.v, ptr %i.y, align 8, !tbaa !20
  %.not.i.i5 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i5, label %_ZNSt8functionIFvPN5folly21CPUThreadPoolExecutorEEEaSEOS4_.exit, label %bb.k
end_hunk_4
