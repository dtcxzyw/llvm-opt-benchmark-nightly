begin_hunk_0
; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util18MessageDifferencer35SetMatchIndicesForSmartListCallbackESt8functionIFvPSt6vectorIiSaIiEES7_EE(ptr noundef nonnull align 8 captures(none) dereferenceable(408) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvPSt6vectorIiSaIiEES3_EEC2ERKS5_.exit.i, label %bb.b
end_hunk_0
begin_hunk_1

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !156
  br label %_ZNSt8functionIFvPSt6vectorIiSaIiEES3_EEC2ERKS5_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !158  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.e

end_hunk_1
begin_hunk_2
  resume { ptr, i32 } %i.g

_ZNSt8functionIFvPSt6vectorIiSaIiEES3_EEC2ERKS5_.exit.i: ; preds = %bb.c, %bb.a
  %3 = phi <2 x ptr> [ zeroinitializer, %bb.a ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !232
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !156
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !156  ; 2 uses
  store <2 x ptr> %i.m, ptr %i.b, align 8, !tbaa !156
  store <2 x ptr> %3, ptr %i.l, align 8, !tbaa !156
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvPSt6vectorIiSaIiEES3_EEaSERKS5_.exit, label %bb.g
end_hunk_2
