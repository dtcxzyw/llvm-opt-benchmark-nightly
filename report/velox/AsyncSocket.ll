inline.NumInlined: 4673
inline.NumDeleted: 1879
begin_hunk_0_@_ZNK5folly11AsyncSocket11getZeroCopyEv:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN5folly11AsyncSocket21setZeroCopyEnableFuncESt8functionIFbRKSt10unique_ptrINS_5IOBufESt14default_deleteIS3_EEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(1169) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14328 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEC2ERKS9_.exit.i, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN5folly11AsyncSocket21setZeroCopyEnableFuncESt8functionIFbRKSt10unique_ptrINS_5IOBufESt14default_deleteIS3_EEEE:bb.a
bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14328 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.e

end_hunk_1
begin_hunk_2_@_ZN5folly11AsyncSocket21setZeroCopyEnableFuncESt8functionIFbRKSt10unique_ptrINS_5IOBufESt14default_deleteIS3_EEEE:bb.a

_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEC2ERKS9_.exit.i: ; preds = %bb.c, %bb.a
  %i.l = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !14329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !14329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !14329
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !14313
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !14313 ; 2 uses
  store <2 x ptr> %i.n, ptr %i.b, align 8, !tbaa !14313
  store <2 x ptr> %i.l, ptr %i.m, align 8, !tbaa !14313
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEaSERKS9_.exit, label %bb.g
end_hunk_2
begin_hunk_3_@_ZNK5folly11AsyncWriter13getRXZeroCopyEv:bb.a
; Function Attrs: uwtable
define void @_ZThn32_N5folly11AsyncSocket21setZeroCopyEnableFuncESt8functionIFbRKSt10unique_ptrINS_5IOBufESt14default_deleteIS3_EEEE(ptr noundef captures(none) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14328 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEC2ERKS9_.exit.i.i, label %bb.b
end_hunk_3
begin_hunk_4_@_ZThn32_N5folly11AsyncSocket21setZeroCopyEnableFuncESt8functionIFbRKSt10unique_ptrINS_5IOBufESt14default_deleteIS3_EEEE:bb.a
bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14328 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i, label %bb.e

end_hunk_4
begin_hunk_5_@_ZThn32_N5folly11AsyncSocket21setZeroCopyEnableFuncESt8functionIFbRKSt10unique_ptrINS_5IOBufESt14default_deleteIS3_EEEE:bb.a

_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEC2ERKS9_.exit.i.i: ; preds = %bb.c, %bb.a
  %i.l = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !14329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !14329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !14329
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !14313
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !14313 ; 2 uses
  store <2 x ptr> %i.n, ptr %i.b, align 8, !tbaa !14313
  store <2 x ptr> %i.l, ptr %i.m, align 8, !tbaa !14313
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN5folly11AsyncSocket21setZeroCopyEnableFuncESt8functionIFbRKSt10unique_ptrINS_5IOBufESt14default_deleteIS3_EEEE.exit, label %bb.g
end_hunk_5
