Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/point_attribute?download=true
inline.NumInlined: 3495
inline.NumDeleted: 1449
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN5draco14PointAttribute17DeduplicateValuesERKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE:bb.a
  %i.z = load i8, ptr %i.y, align 8, !tbaa !61
  switch i8 %i.z, label %_ZN5draco14PointAttribute22DeduplicateTypedValuesItEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit [
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  store i32 %i.x, ptr %15, align 4, !tbaa !68
  %i.aa = call noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesItLi1EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %15)
  br label %_ZN5draco14PointAttribute22DeduplicateTypedValuesItEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit

bb.s:                                             ; preds = %bb.q
  store i32 %i.x, ptr %16, align 4, !tbaa !68
  %i.ab = call noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesItLi2EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %16)
  br label %_ZN5draco14PointAttribute22DeduplicateTypedValuesItEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit

bb.t:                                             ; preds = %bb.q
  store i32 %i.x, ptr %17, align 4, !tbaa !68
  %i.ac = call noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesItLi3EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %17)
  br label %_ZN5draco14PointAttribute22DeduplicateTypedValuesItEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit

bb.u:                                             ; preds = %bb.q
  store i32 %i.x, ptr %18, align 4, !tbaa !68
  %i.ad = call noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesItLi4EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %18)
  br label %_ZN5draco14PointAttribute22DeduplicateTypedValuesItEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit

_ZN5draco14PointAttribute22DeduplicateTypedValuesItEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit: ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i14 = phi i32 [ %i.ad, %bb.u ], [ %i.aa, %bb.r ], [ %i.ab, %bb.s ], [ %i.ac, %bb.t ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %bb.ak

bb.v:                                             ; preds = %bb.a
  %i.ae = load i32, ptr %2, align 4, !tbaa !68    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !61
  switch i8 %i.ag, label %_ZN5draco14PointAttribute22DeduplicateTypedValuesIsEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit [
    i8 1, label %bb.w
    i8 2, label %bb.x
    i8 3, label %bb.y
    i8 4, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  store i32 %i.ae, ptr %11, align 4, !tbaa !68
  %i.ah = call noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesIsLi1EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %11)
  br label %_ZN5draco14PointAttribute22DeduplicateTypedValuesIsEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit

bb.x:                                             ; preds = %bb.v
  store i32 %i.ae, ptr %12, align 4, !tbaa !68
  %i.ai = call noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesIsLi2EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %12)
  br label %_ZN5draco14PointAttribute22DeduplicateTypedValuesIsEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit

bb.y:                                             ; preds = %bb.v
  store i32 %i.ae, ptr %13, align 4, !tbaa !68
  %i.aj = call noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesIsLi3EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %13)
  br label %_ZN5draco14PointAttribute22DeduplicateTypedValuesIsEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit

bb.z:                                             ; preds = %bb.v
  store i32 %i.ae, ptr %14, align 4, !tbaa !68
  %i.ak = call noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesIsLi4EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %14)
  br label %_ZN5draco14PointAttribute22DeduplicateTypedValuesIsEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit

_ZN5draco14PointAttribute22DeduplicateTypedValuesIsEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit: ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.0.i15 = phi i32 [ %i.ak, %bb.z ], [ %i.ah, %bb.w ], [ %i.ai, %bb.x ], [ %i.aj, %bb.y ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.ak

bb.aa:                                            ; preds = %bb.a
  %i.al = load i32, ptr %2, align 4, !tbaa !68    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i8, ptr %i.am, align 8, !tbaa !61
  switch i8 %i.an, label %_ZN5draco14PointAttribute22DeduplicateTypedValuesIjEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit [
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %bb.ad
    i8 4, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.al, ptr %7, align 4, !tbaa !68
  %i.ao = call noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesIjLi1EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %7)
  br label %_ZN5draco14PointAttribute22DeduplicateTypedValuesIjEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit

bb.ac:                                            ; preds = %bb.aa
  store i32 %i.al, ptr %8, align 4, !tbaa !68
  %i.ap = call noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesIjLi2EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %8)
  br label %_ZN5draco14PointAttribute22DeduplicateTypedValuesIjEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit

bb.ad:                                            ; preds = %bb.aa
  store i32 %i.al, ptr %9, align 4, !tbaa !68
  %i.aq = call noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesIjLi3EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %9)
  br label %_ZN5draco14PointAttribute22DeduplicateTypedValuesIjEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit

bb.ae:                                            ; preds = %bb.aa
  store i32 %i.al, ptr %10, align 4, !tbaa !68
  %i.ar = call noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesIjLi4EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %10)
  br label %_ZN5draco14PointAttribute22DeduplicateTypedValuesIjEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit

_ZN5draco14PointAttribute22DeduplicateTypedValuesIjEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit: ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.0.i16 = phi i32 [ %i.ar, %bb.ae ], [ %i.ao, %bb.ab ], [ %i.ap, %bb.ac ], [ %i.aq, %bb.ad ], [ 0, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ak

bb.af:                                            ; preds = %bb.a
  %i.as = load i32, ptr %2, align 4, !tbaa !68    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load i8, ptr %i.at, align 8, !tbaa !61
  switch i8 %i.au, label %_ZN5draco14PointAttribute22DeduplicateTypedValuesIiEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit [
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
    i8 4, label %bb.aj
  ]

bb.ag:                                            ; preds = %bb.af
  store i32 %i.as, ptr %3, align 4, !tbaa !68
  %i.av = call noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesIiLi1EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %3)
  br label %_ZN5draco14PointAttribute22DeduplicateTypedValuesIiEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit

bb.ah:                                            ; preds = %bb.af
  store i32 %i.as, ptr %4, align 4, !tbaa !68
  %i.aw = call noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesIiLi2EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4)
  br label %_ZN5draco14PointAttribute22DeduplicateTypedValuesIiEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit

bb.ai:                                            ; preds = %bb.af
  store i32 %i.as, ptr %5, align 4, !tbaa !68
  %i.ax = call noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesIiLi3EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5)
  br label %_ZN5draco14PointAttribute22DeduplicateTypedValuesIiEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit

bb.aj:                                            ; preds = %bb.af
  store i32 %i.as, ptr %6, align 4, !tbaa !68
  %i.ay = call noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesIiLi4EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6)
  br label %_ZN5draco14PointAttribute22DeduplicateTypedValuesIiEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit

_ZN5draco14PointAttribute22DeduplicateTypedValuesIiEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit: ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %.0.i17 = phi i32 [ %i.ay, %bb.aj ], [ %i.av, %bb.ag ], [ %i.aw, %bb.ah ], [ %i.ax, %bb.ai ], [ 0, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN5draco14PointAttribute22DeduplicateTypedValuesIiEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit, %_ZN5draco14PointAttribute22DeduplicateTypedValuesIjEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit, %_ZN5draco14PointAttribute22DeduplicateTypedValuesIsEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit, %_ZN5draco14PointAttribute22DeduplicateTypedValuesItEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit, %_ZN5draco14PointAttribute22DeduplicateTypedValuesIhEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit, %_ZN5draco14PointAttribute22DeduplicateTypedValuesIaEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit, %_ZN5draco14PointAttribute22DeduplicateTypedValuesIfEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit
  %.0 = phi i32 [ %.0.i, %_ZN5draco14PointAttribute22DeduplicateTypedValuesIfEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit ], [ %.0.i12, %_ZN5draco14PointAttribute22DeduplicateTypedValuesIaEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit ], [ %.0.i13, %_ZN5draco14PointAttribute22DeduplicateTypedValuesIhEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit ], [ %.0.i14, %_ZN5draco14PointAttribute22DeduplicateTypedValuesItEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit ], [ %.0.i15, %_ZN5draco14PointAttribute22DeduplicateTypedValuesIsEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit ], [ %.0.i16, %_ZN5draco14PointAttribute22DeduplicateTypedValuesIjEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit ], [ %.0.i17, %_ZN5draco14PointAttribute22DeduplicateTypedValuesIiEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE.exit ] ; 2 uses
  %i.az = icmp eq i32 %.0, 0
  %..0 = select i1 %i.az, i32 -1, i32 %.0
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.a
  %.011 = phi i32 [ -1, %bb.a ], [ %..0, %bb.ak ]
  ret i32 %.011
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !58     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 6 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = load ptr, ptr %0, align 8, !tbaa !58     ; 15 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE11_M_allocateEm.exit.i, !prof !65

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #14 ; 4 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not11.i.i.i.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -4
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -4
  %i.s = add i64 %i.r, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 4 %i.c, i64 %i.s, i1 false), !tbaa !68
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #15
  br label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.t, ptr %i.h, align 8, !tbaa !69
  br label %_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !59   ; 4 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.g, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 8
  %i.z = sub i64 %i.e, %i.l
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader91, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.g, 9223372036854775800      ; 3 uses
  %i.aa = and i64 %i.g, 7
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.j, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.ae ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.c, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep44, align 4, !tbaa !68
  %wide.load45 = load <4 x i32>, ptr %i.af, align 4, !tbaa !68
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !68
  store <4 x i32> %wide.load45, ptr %i.ag, align 4, !tbaa !68
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.preheader91

.lr.ph.i.i.i.i.i.preheader91:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader91, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader91 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader91 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader91 ] ; 2 uses
  %i.ai = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !68
  store i32 %i.ai, ptr %.0811.i.i.i.i.i, align 4, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.al = add nsw i64 %.012.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, !llvm.loop !164

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.x ; 4 uses
  %i.ao = ashr exact i64 %i.x, 2                  ; 6 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %min.iters.check51 = icmp ult i64 %i.ao, 8
  %i.aq = sub i64 %i.e, %i.l
  %diff.check53 = icmp ugt i64 %i.aq, -32
  %or.cond87 = or i1 %min.iters.check51, %diff.check53
  br i1 %or.cond87, label %.lr.ph.i.i.i.i.i26.preheader90, label %vector.ph54

vector.ph54:                                      ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %n.vec55 = and i64 %i.ao, 9223372036854775800   ; 3 uses
  %i.ar = and i64 %i.ao, 7
  %i.as = shl i64 %n.vec55, 2                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.j, i64 %i.as
  %i.au = getelementptr i8, ptr %i.c, i64 %i.as
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph54
  %index57 = phi i64 [ 0, %vector.ph54 ], [ %index.next62, %vector.body56 ] ; 2 uses
  %i.av = shl i64 %index57, 2                     ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.j, i64 %i.av ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.c, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep59, i64 16
  %wide.load60 = load <4 x i32>, ptr %next.gep59, align 4, !tbaa !68
  %wide.load61 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !68
  %i.ax = getelementptr i8, ptr %next.gep58, i64 16
  store <4 x i32> %wide.load60, ptr %next.gep58, align 4, !tbaa !68
  store <4 x i32> %wide.load61, ptr %i.ax, align 4, !tbaa !68
  %index.next62 = add nuw i64 %index57, 8         ; 2 uses
  %i.ay = icmp eq i64 %index.next62, %n.vec55
  br i1 %i.ay, label %middle.block63, label %vector.body56, !llvm.loop !165

middle.block63:                                   ; preds = %vector.body56
  %cmp.n64 = icmp eq i64 %i.ao, %n.vec55
  br i1 %cmp.n64, label %_ZSt4copyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i26.preheader90

.lr.ph.i.i.i.i.i26.preheader90:                   ; preds = %.lr.ph.i.i.i.i.i26.preheader, %middle.block63
  %.012.i.i.i.i.i27.ph = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.ar, %middle.block63 ]
  %.0811.i.i.i.i.i28.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.at, %middle.block63 ]
  %.0910.i.i.i.i.i29.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.au, %middle.block63 ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader90, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i26.preheader90 ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i26.preheader90 ] ; 2 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i26.preheader90 ] ; 2 uses
  %i.az = load i32, ptr %.0910.i.i.i.i.i29, align 4, !tbaa !68
  store i32 %i.az, ptr %.0811.i.i.i.i.i28, align 4, !tbaa !68
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 4
  %i.bc = add nsw i64 %.012.i.i.i.i.i27, -1
  %i.bd = icmp samesign ugt i64 %.012.i.i.i.i.i27, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_ET0_T_S6_S5_.exit, !llvm.loop !166

_ZSt4copyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i26, %middle.block63, %bb.h
  %.not13.i.i.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not13.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_ET0_T_S6_S5_.exit
  %i.be = add i64 %i.d, %i.l
  %i.bf = add i64 %i.be, -4
  %i.bg = add i64 %i.w, %i.e
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check71 = icmp ult i64 %i.bh, 44
  %i.bk = sub i64 %i.e, %i.l
  %diff.check73 = icmp ugt i64 %i.bk, -32
  %or.cond88 = or i1 %min.iters.check71, %diff.check73
  br i1 %or.cond88, label %.lr.ph.i.i.i.i.preheader89, label %vector.ph74

vector.ph74:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec75 = and i64 %i.bj, 9223372036854775800   ; 3 uses
  %i.bl = shl i64 %n.vec75, 2                     ; 2 uses
  %i.bm = getelementptr i8, ptr %i.v, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.an, i64 %i.bl
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph74
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next82, %vector.body76 ] ; 2 uses
  %i.bo = shl i64 %index77, 2                     ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.v, i64 %i.bo ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.an, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load80 = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !68
  %wide.load81 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !68
  %i.bq = getelementptr i8, ptr %next.gep78, i64 16
  store <4 x i32> %wide.load80, ptr %next.gep78, align 4, !tbaa !68
  store <4 x i32> %wide.load81, ptr %i.bq, align 4, !tbaa !68
  %index.next82 = add nuw i64 %index77, 8         ; 2 uses
  %i.br = icmp eq i64 %index.next82, %n.vec75
  br i1 %i.br, label %middle.block83, label %vector.body76, !llvm.loop !167

middle.block83:                                   ; preds = %vector.body76
  %cmp.n84 = icmp eq i64 %i.bj, %n.vec75
  br i1 %cmp.n84, label %_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader89

.lr.ph.i.i.i.i.preheader89:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block83
  %.015.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.bm, %middle.block83 ]
  %.01214.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.preheader ], [ %i.bn, %middle.block83 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader89, %.lr.ph.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader89 ] ; 2 uses
  %.01214.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader89 ] ; 2 uses
  %i.bs = load i32, ptr %.01214.i.i.i.i, align 4, !tbaa !68
  store i32 %i.bs, ptr %.015.i.i.i.i, align 4, !tbaa !68
  %i.bt = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bt, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !168

_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %middle.block, %middle.block83, %bb.g, %_ZSt4copyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.bv = phi ptr [ %i.j, %middle.block83 ], [ %2, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_ET0_T_S6_S5_.exit ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.f
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

end_hunk_0
