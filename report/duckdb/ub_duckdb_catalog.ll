begin_hunk_0
; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21CatalogEntryRetriever7InheritERKS0_(ptr noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function.513", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRN6duckdb12CatalogEntryEEEC2ERKS4_.exit.i, label %bb.b
end_hunk_0
begin_hunk_1

bb.c:                                             ; preds = %bb.b
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !185
  br label %_ZNSt8functionIFvRN6duckdb12CatalogEntryEEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.e

end_hunk_1
begin_hunk_2
  resume { ptr, i32 } %i.f

_ZNSt8functionIFvRN6duckdb12CatalogEntryEEEC2ERKS4_.exit.i: ; preds = %bb.c, %bb.a
  %3 = phi <2 x ptr> [ zeroinitializer, %bb.a ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !185
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !185  ; 2 uses
  store <2 x ptr> %i.l, ptr %i.a, align 8, !tbaa !185
  store <2 x ptr> %3, ptr %i.k, align 8, !tbaa !185
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRN6duckdb12CatalogEntryEEEaSERKS4_.exit, label %bb.g
end_hunk_2
begin_hunk_3
; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb21CatalogEntryRetriever11SetCallbackESt8functionIFvRNS_12CatalogEntryEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef captures(none) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function.513", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !185
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !151
end_hunk_3
begin_hunk_4
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRN6duckdb12CatalogEntryEEEC2EOS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !186
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb12CatalogEntryEEEC2EOS4_.exit.i

_ZNSt8functionIFvRN6duckdb12CatalogEntryEEEC2EOS4_.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load <2 x ptr>, ptr %i.e, align 8, !tbaa !185
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !185  ; 2 uses
  store <2 x ptr> %i.f, ptr %i.d, align 8, !tbaa !185
  store <2 x ptr> %i.b, ptr %i.e, align 8, !tbaa !185
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRN6duckdb12CatalogEntryEEEaSEOS4_.exit, label %bb.c
end_hunk_4
