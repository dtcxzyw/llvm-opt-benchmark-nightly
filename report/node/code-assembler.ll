begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeAssembler31RegisterCallGenerationCallbacksERKSt8functionIFvvEES7_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 9 uses
  %4 = alloca %"class.std::function", align 16    ; 9 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvvEEC2ERKS1_.exit.i, label %bb.b
end_hunk_0
begin_hunk_1
bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2) #26 ; 0 uses
  %i.f = load <2 x ptr>, ptr %i.c, align 8
  %.sroa.0.0.copyload.i.i.pre.i = load <2 x i64>, ptr %4, align 16
  br label %_ZNSt8functionIFvvEEC2ERKS1_.exit.i

_ZNSt8functionIFvvEEC2ERKS1_.exit.i:              ; preds = %bb.b, %bb.a
  %.sroa.0.0.copyload.i.i.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.0.0.copyload.i.i.pre.i, %bb.b ]
  %5 = phi <2 x ptr> [ zeroinitializer, %bb.a ], [ %i.f, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false)
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 3 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.h, align 8              ; 2 uses
  store <2 x ptr> %i.i, ptr %i.g, align 16
  store <2 x ptr> %5, ptr %i.h, align 8
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvvEEaSERKS1_.exit, label %bb.c
end_hunk_1
begin_hunk_2
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i.i.not.i.i4 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.not.i.i4, label %_ZNSt8functionIFvvEEC2ERKS1_.exit.i5, label %bb.d
end_hunk_2
begin_hunk_3
bb.d:                                             ; preds = %_ZNSt8functionIFvvEEaSERKS1_.exit
  %i.p = call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2) #26 ; 0 uses
  %i.q = load <2 x ptr>, ptr %i.n, align 8
  %.sroa.0.0.copyload.i.i.pre.i4 = load <2 x i64>, ptr %3, align 16
  br label %_ZNSt8functionIFvvEEC2ERKS1_.exit.i5

_ZNSt8functionIFvvEEC2ERKS1_.exit.i5:             ; preds = %bb.d, %_ZNSt8functionIFvvEEaSERKS1_.exit
  %.sroa.0.0.copyload.i.i.i6 = phi <2 x i64> [ zeroinitializer, %_ZNSt8functionIFvvEEaSERKS1_.exit ], [ %.sroa.0.0.copyload.i.i.pre.i4, %bb.d ]
  %6 = phi <2 x ptr> [ zeroinitializer, %_ZNSt8functionIFvvEEaSERKS1_.exit ], [ %i.q, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 16, i1 false)
  store <2 x i64> %.sroa.0.0.copyload.i.i.i6, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 136 ; 3 uses
  %i.t = load <2 x ptr>, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.s, align 8              ; 2 uses
  store <2 x ptr> %i.t, ptr %i.r, align 16
  store <2 x ptr> %6, ptr %i.s, align 8
  %.not.i.i6 = icmp eq ptr %i.u, null
  br i1 %.not.i.i6, label %_ZNSt8functionIFvvEEaSERKS1_.exit7, label %bb.e
end_hunk_3
