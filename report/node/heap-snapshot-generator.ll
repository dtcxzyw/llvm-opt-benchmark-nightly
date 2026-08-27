Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/heap-snapshot-generator?download=true
inline.NumInlined: 7020
inline.NumDeleted: 3466
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2v88internal14V8HeapExplorer31ExtractAllocationSiteReferencesEPNS0_9HeapEntryENS0_6TaggedINS0_14AllocationSiteEEE:bb.a
  %i.i = load i64, ptr %i.g, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, ptr noundef nonnull @.str.429, i64 %i.i, i32 noundef 24)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer44ExtractArrayBoilerplateDescriptionReferencesEPNS0_9HeapEntryENS0_6TaggedINS0_27ArrayBoilerplateDescriptionEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, ptr noundef nonnull @.str.475, i64 %i.c, i32 noundef 16)
  tail call void @_ZN2v88internal14V8HeapExplorer9TagObjectENS0_6TaggedINS0_6ObjectEEEPKcSt8optionalINS0_9HeapEntry4TypeEEb(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %i.c, ptr noundef nonnull @.str.476, i64 4294967300, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer45ExtractRegExpBoilerplateDescriptionReferencesEPNS0_9HeapEntryENS0_6TaggedINS0_28RegExpBoilerplateDescriptionEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr nofree noundef readnone captures(none) %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = add i64 %2, 7
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b acquire, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer9TagObjectENS0_6TaggedINS0_6ObjectEEEPKcSt8optionalINS0_9HeapEntry4TypeEEb(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %i.c, ptr noundef nonnull @.str.477, i64 4294967300, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer31ExtractFeedbackVectorReferencesEPNS0_9HeapEntryENS0_6TaggedINS0_14FeedbackVectorEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr nofree readnone captures(none) %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = add i64 %2, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = add i64 %2, 47
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %i.f = phi i32 [ %i.c, %.lr.ph ], [ %i.y, %.critedge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.g = shl nuw nsw i64 %indvars.iv, 3
  %i.h = add i64 %i.e, %i.g
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = and i64 %i.j, 3
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i64 %i.j, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 257
  br i1 %i.s, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 205
  br i1 %i.x, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.c, %bb.d
  tail call void @_ZN2v88internal14V8HeapExplorer9TagObjectENS0_6TaggedINS0_6ObjectEEEPKcSt8optionalINS0_9HeapEntry4TypeEEb(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %i.j, ptr noundef nonnull @.str.487, i64 4294967300, i1 noundef zeroext false)
  %.pre = load i32, ptr %i.b, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.critedge2, %bb.d
  %i.y = phi i32 [ %i.f, %bb.b ], [ %.pre, %.critedge2 ], [ %i.f, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !97
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer32ExtractDescriptorArrayReferencesEPNS0_9HeapEntryENS0_6TaggedINS0_15DescriptorArrayEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = add i64 %2, 23
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, ptr noundef nonnull @.str.488, i64 %i.c, i32 noundef 24)
  %i.d = add i64 %2, 31                           ; 4 uses
  %i.e = add i64 %2, 7
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = sext i16 %i.g to i64
  %i.i = mul nsw i64 %i.h, 24
  %i.j = add i64 %i.d, %i.i                       ; 2 uses
  %i.k = icmp ult i64 %i.d, %i.j
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %invariant.op = sub i64 -4294967295, %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.l = phi i64 [ %i.z, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.reass.reass = add i64 %i.l, %invariant.op     ; 2 uses
  %i.m = trunc i64 %.reass.reass to i32
  %i.n = inttoptr i64 %i.l to ptr
  %i.o = load i64, ptr %i.n, align 8              ; 4 uses
  %i.p = and i64 %i.o, 3                          ; 2 uses
  %i.q = icmp eq i64 %i.p, 3
  %i.r = and i64 %i.o, 4294967295
  %i.s = icmp ne i64 %i.r, 3
  %i.t = and i1 %i.q, %i.s
  br i1 %i.t, label %bb.b, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.b:                                             ; preds = %.lr.ph
  %i.u = and i64 %i.o, -3
  %.sroa.015.0.insert.ext = and i64 %.reass.reass, 4294967295
  %.sroa.015.0.insert.insert = or disjoint i64 %.sroa.015.0.insert.ext, 4294967296
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_ZN2v88internal14V8HeapExplorer16SetWeakReferenceEPNS0_9HeapEntryEiNS0_6TaggedINS0_6ObjectEEESt8optionalIiE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i32 noundef %i.v, i64 %i.u, i64 %.sroa.015.0.insert.insert)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %.lr.ph
  %i.w = icmp eq i64 %i.p, 1
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.c:                                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEiNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i32 noundef %i.x, i64 %i.o, i32 noundef %i.m)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = shl nuw nsw i64 %indvars.iv.next, 3
  %i.z = add i64 %i.d, %i.y                       ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !98
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer26ExtractEnumCacheReferencesEPNS0_9HeapEntryENS0_6TaggedINS0_9EnumCacheEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr nofree readnone captures(none) %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = add i64 %2, 7
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer9TagObjectENS0_6TaggedINS0_6ObjectEEEPKcSt8optionalINS0_9HeapEntry4TypeEEb(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %i.c, ptr noundef nonnull @.str.489, i64 4294967310, i1 noundef zeroext false)
  %i.d = add i64 %2, 15
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer9TagObjectENS0_6TaggedINS0_6ObjectEEEPKcSt8optionalINS0_9HeapEntry4TypeEEb(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %i.f, ptr noundef nonnull @.str.489, i64 4294967310, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer32ExtractTransitionArrayReferencesEPNS0_9HeapEntryENS0_6TaggedINS0_15TransitionArrayEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr nofree noundef readnone captures(none) %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = add i64 %2, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load atomic volatile i64, ptr %i.c acquire, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic volatile i64, ptr %i.c acquire, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer9TagObjectENS0_6TaggedINS0_6ObjectEEEPKcSt8optionalINS0_9HeapEntry4TypeEEb(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %i.e, ptr noundef nonnull @.str.413, i64 4294967310, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14V8HeapExplorer26ExtractWeakArrayReferencesINS0_14WeakFixedArrayEEEviPNS0_9HeapEntryENS0_6TaggedIT_EE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, ptr noundef %2, i64 %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = add i64 %3, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 4 uses
  %indvars27 = trunc i64 %indvars.iv to i32       ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8 ; 4 uses
  %i.k = and i64 %i.j, 3                          ; 2 uses
  %i.l = icmp eq i64 %i.k, 3
  %i.m = and i64 %i.j, 4294967295
  %i.n = icmp ne i64 %i.m, 3
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.c:                                             ; preds = %bb.b
  %i.p = and i64 %i.j, -3
  %indvars.iv.tr.a = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr.a, 3
  %i.r = add i32 %i.q, %1
  %.sroa.012.0.insert.ext = zext i32 %i.r to i64
  %.sroa.012.0.insert.insert = or disjoint i64 %.sroa.012.0.insert.ext, 4294967296
  tail call void @_ZN2v88internal14V8HeapExplorer16SetWeakReferenceEPNS0_9HeapEntryEiNS0_6TaggedINS0_6ObjectEEESt8optionalIiE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, i32 noundef %indvars27, i64 %i.p, i64 %.sroa.012.0.insert.insert)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.b
  %i.s = icmp eq i64 %i.k, 1
  br i1 %i.s, label %bb.d, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.d:                                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.t = shl nsw i32 %indvars27, 3
  %i.u = add nsw i32 %i.t, %1
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEiNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, i32 noundef %indvars27, i64 %i.j, i32 noundef %i.u)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load i64, ptr %i.c, align 8
  %i.w = ashr i64 %i.v, 32
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !99
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14V8HeapExplorer26ExtractWeakArrayReferencesINS0_13WeakArrayListEEEviPNS0_9HeapEntryENS0_6TaggedIT_EE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, ptr noundef %2, i64 %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = add i64 %3, 15
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %invariant.op = add i64 %3, 23
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 3 uses
  %indvars34 = trunc i64 %indvars.iv to i32       ; 3 uses
  %i.g = shl nuw nsw i64 %indvars.iv, 3           ; 2 uses
  %i.h = shl nuw nsw i32 %indvars34, 3
  %.reass = add i64 %i.g, %invariant.op
  %i.i = inttoptr i64 %.reass to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8 ; 4 uses
  %i.k = and i64 %i.j, 3                          ; 2 uses
  %i.l = icmp eq i64 %i.k, 3
  %i.m = and i64 %i.j, 4294967295
  %i.n = icmp ne i64 %i.m, 3
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.b:                                             ; preds = %.lr.ph
  %i.p = and i64 %i.j, -3
  %i.q = trunc i64 %i.g to i32
  %i.r = add i32 %1, %i.q
  %.sroa.012.0.insert.ext = zext i32 %i.r to i64
  %.sroa.012.0.insert.insert = or disjoint i64 %.sroa.012.0.insert.ext, 4294967296
  tail call void @_ZN2v88internal14V8HeapExplorer16SetWeakReferenceEPNS0_9HeapEntryEiNS0_6TaggedINS0_6ObjectEEESt8optionalIiE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, i32 noundef %indvars34, i64 %i.p, i64 %.sroa.012.0.insert.insert)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %.lr.ph
  %i.s = icmp eq i64 %i.k, 1
  br i1 %i.s, label %bb.c, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.c:                                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.t = add nsw i32 %i.h, %1
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEiNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, i32 noundef %indvars34, i64 %i.j, i32 noundef %i.t)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i64, ptr %i.b, align 8
  %i.v = ashr i64 %i.u, 32
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !100
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer24ExtractContextReferencesEPNS0_9HeapEntryENS0_6TaggedINS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.794", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.794", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::ScopeInfo::LocalNamesRange<v8::internal::Tagged<v8::internal::ScopeInfo>>::Iterator", align 8 ; 6 uses
  %6 = alloca %"class.v8::internal::ScopeInfo::LocalNamesRange<v8::internal::Tagged<v8::internal::ScopeInfo>>::Iterator", align 8 ; 6 uses
  %7 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.793", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::ScopeInfo::LocalNamesRange", align 8 ; 8 uses
  %9 = alloca %"class.v8::internal::ScopeInfo::LocalNamesRange<v8::internal::Tagged<v8::internal::ScopeInfo>>::Iterator", align 8 ; 9 uses
  %10 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.794", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.794", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.794", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.794", align 8 ; 4 uses
  %i.a = add i64 %2, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 228
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %2, ptr %7, align 8
  %i.h = call noundef zeroext i1 @_ZNK2v88internal7Context22is_declaration_contextEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br i1 %i.h, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %2, 15                           ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i64 %i.k, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %8, ptr %6, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8
  %i.m = add i64 %i.k, 23
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = lshr i64 %i.o, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = icmp slt i32 %i.q, 75
  br i1 %i.r, label %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE5beginEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator23advance_hashtable_indexEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %.fca.0.load.pre.i = load ptr, ptr %6, align 8
  %.fca.1.load.pre.i = load i64, ptr %i.l, align 8
  %.pre = load i64, ptr %8, align 8               ; 2 uses
  %.pre150 = add i64 %.pre, 23
  %.pre151 = inttoptr i64 %.pre150 to ptr
  br label %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE5beginEv.exit

_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE5beginEv.exit: ; preds = %bb.c, %bb.d
  %.pre-phi152 = phi ptr [ %i.n, %bb.c ], [ %.pre151, %bb.d ]
  %i.s = phi i64 [ %i.k, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.t = phi i64 [ 0, %bb.c ], [ %.fca.1.load.pre.i, %bb.d ] ; 2 uses
  %i.u = phi ptr [ %8, %bb.c ], [ %.fca.0.load.pre.i, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr %i.u, ptr %9, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i64 %i.t, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.w = load i64, ptr %.pre-phi152, align 8      ; 4 uses
  %i.x = lshr i64 %i.w, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = icmp slt i32 %i.y, 75
  br i1 %i.z, label %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE9max_indexEv.exit.thread.i, label %bb.e

_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE9max_indexEv.exit.thread.i: ; preds = %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE5beginEv.exit
  %i.aa = ashr i64 %i.w, 32
  br label %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE3endEv.exit

bb.e:                                             ; preds = %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE5beginEv.exit
  %i.ab = add i64 %i.s, 7
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i32, ptr %i.ac monotonic, align 4, !noalias !101
  %i.ae = and i32 %i.ad, 15
  %i.af = icmp eq i32 %i.ae, 5
  %i.ag = select i1 %i.af, i64 56, i64 48
  %i.ah = icmp slt i64 %i.w, 322122547200
  %i.ai = lshr i64 %i.w, 29
  %i.aj = and i64 %i.ai, 4294967288
  %i.ak = select i1 %i.ah, i64 %i.aj, i64 322122547200
  %i.al = add nuw nsw i64 %i.ag, %i.ak
  %i.am = add i64 %i.s, -1
  %sext.i.i.i.i = shl i64 %i.al, 32
  %i.an = ashr exact i64 %sext.i.i.i.i, 32
  %i.ao = add i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = add i64 %i.aq, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8
  %i.av = ashr i64 %i.au, 32
  store ptr %8, ptr %5, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.av, ptr %i.aw, align 8
  call void @_ZN2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator23advance_hashtable_indexEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %.fca.0.load.pre.i42 = load ptr, ptr %5, align 8
  %.fca.1.load.pre.i43 = load i64, ptr %i.aw, align 8
  br label %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE3endEv.exit

_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE3endEv.exit: ; preds = %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE9max_indexEv.exit.thread.i, %bb.e
  %.fca.1.load.i44 = phi i64 [ %i.aa, %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE9max_indexEv.exit.thread.i ], [ %.fca.1.load.pre.i43, %bb.e ] ; 2 uses
  %.fca.0.load.i45 = phi ptr [ %8, %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE9max_indexEv.exit.thread.i ], [ %.fca.0.load.pre.i42, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ax = icmp ne ptr %i.u, %.fca.0.load.i45
  %i.ay = icmp ne i64 %i.t, %.fca.1.load.i44
  %.not3.i145 = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %.not3.i145, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8IteratorppEv.exit, %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE3endEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  store i64 %i.k, ptr %11, align 8
  %i.az = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo31HasContextAllocatedFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br i1 %i.az, label %bb.k, label %bb.m

.lr.ph:                                           ; preds = %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE3endEv.exit, %_ZN2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8IteratorppEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store i64 %i.k, ptr %10, align 8
  %i.ba = call noundef i32 @_ZNK2v88internal9ScopeInfo19ContextHeaderLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #29
  %i.bb = load ptr, ptr %9, align 8               ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.bd = add i64 %i.bc, 23
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bg = lshr i64 %i.bf, 32
  %i.bh = trunc nuw i64 %i.bg to i32
  %i.bi = icmp slt i32 %i.bh, 75
  br i1 %i.bi, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.bj = load i64, ptr %i.v, align 8
  %i.bk = trunc i64 %i.bj to i32
  br label %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator5indexEv.exit

bb.g:                                             ; preds = %.lr.ph
  %i.bl = add i64 %i.bc, 7
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i32, ptr %i.bm monotonic, align 4, !noalias !108
  %i.bo = and i32 %i.bn, 15
  %i.bp = icmp eq i32 %i.bo, 5
  %i.bq = select i1 %i.bp, i64 56, i64 48
  %i.br = icmp slt i64 %i.bf, 322122547200
  %i.bs = lshr i64 %i.bf, 29
  %i.bt = and i64 %i.bs, 4294967288
  %i.bu = select i1 %i.br, i64 %i.bt, i64 322122547200
  %i.bv = add nuw nsw i64 %i.bq, %i.bu
  %i.bw = add i64 %i.bc, -1
  %sext.i.i.i.i48 = shl i64 %i.bv, 32
  %i.bx = ashr exact i64 %sext.i.i.i.i48, 32
  %i.by = add i64 %i.bw, %i.bx
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = add i64 %i.ca, -1
  %i.cc = inttoptr i64 %i.cb to ptr
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8
  %i.cd = call noundef i32 @_ZN2v88internal20NameToIndexHashTable7IndexAtENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %i.cc, i64 %.sroa.0.0.copyload.i) #29
  %.pre147 = load ptr, ptr %9, align 8
  br label %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator5indexEv.exit

_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator5indexEv.exit: ; preds = %bb.f, %bb.g
  %i.ce = phi ptr [ %i.bb, %bb.f ], [ %.pre147, %bb.g ]
  %.0.i = phi i32 [ %i.bk, %bb.f ], [ %i.cd, %bb.g ]
  %i.cf = add nsw i32 %.0.i, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.cg = load i64, ptr %i.ce, align 8            ; 4 uses
  %i.ch = add i64 %i.cg, 23
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load i64, ptr %i.ci, align 8            ; 3 uses
  %i.ck = lshr i64 %i.cj, 32
  %i.cl = trunc nuw i64 %i.ck to i32
  %i.cm = icmp slt i32 %i.cl, 75
  br i1 %i.cm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator5indexEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i64 %i.cg, ptr %4, align 8
  %i.cn = load i64, ptr %i.v, align 8
  %i.co = trunc i64 %i.cn to i32
  %i.cp = call i64 @_ZNK2v88internal9ScopeInfo23ContextInlinedLocalNameENS0_16PtrComprCageBaseEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.co) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator4nameEv.exit

bb.i:                                             ; preds = %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator5indexEv.exit
  %i.cq = add i64 %i.cg, 7
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load atomic volatile i32, ptr %i.cr monotonic, align 4, !noalias !115
  %i.ct = and i32 %i.cs, 15
  %i.cu = icmp eq i32 %i.ct, 5
  %i.cv = select i1 %i.cu, i64 56, i64 48
  %i.cw = icmp slt i64 %i.cj, 322122547200
  %i.cx = lshr i64 %i.cj, 29
  %i.cy = and i64 %i.cx, 4294967288
  %i.cz = select i1 %i.cw, i64 %i.cy, i64 322122547200
  %i.da = add nuw nsw i64 %i.cv, %i.cz
  %i.db = add i64 %i.cg, -1
  %sext.i.i.i.i.i = shl i64 %i.da, 32
  %i.dc = ashr exact i64 %sext.i.i.i.i.i, 32
  %i.dd = add i64 %i.db, %i.dc
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = add i64 %i.df, -1
  %i.dh = inttoptr i64 %i.dg to ptr
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.v, align 8
  %i.di = trunc i64 %.sroa.01.0.copyload.i.i to i32
  %i.dj = shl nsw i32 %i.di, 1
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr [8 x i8], ptr %i.dh, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 40
  %i.dn = load atomic volatile i64, ptr %i.dm monotonic, align 8
  br label %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator4nameEv.exit

_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator4nameEv.exit: ; preds = %bb.h, %bb.i
  %.sroa.03.0.i.i = phi i64 [ %i.cp, %bb.h ], [ %i.dn, %bb.i ]
  %i.do = shl nsw i32 %i.cf, 3                    ; 2 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = add i64 %i.i, %i.dp
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = load atomic volatile i64, ptr %i.dr monotonic, align 8
  %i.dt = add nsw i32 %i.do, 16
  call void @_ZN2v88internal14V8HeapExplorer19SetContextReferenceEPNS0_9HeapEntryENS0_6TaggedINS0_6StringEEENS4_INS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i64 %.sroa.03.0.i.i, i64 %i.ds, i32 noundef %i.dt)
  %i.du = load i64, ptr %i.v, align 8
  %i.dv = add i64 %i.du, 1                        ; 2 uses
  store i64 %i.dv, ptr %i.v, align 8
  %i.dw = load ptr, ptr %9, align 8               ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = add i64 %i.dx, 23
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = lshr i64 %i.ea, 32
  %i.ec = trunc nuw i64 %i.eb to i32
  %i.ed = icmp slt i32 %i.ec, 75
  br i1 %i.ed, label %_ZN2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8IteratorppEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator4nameEv.exit
  call void @_ZN2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator23advance_hashtable_indexEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
  %.pre148 = load ptr, ptr %9, align 8
  %.pre149 = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8IteratorppEv.exit

_ZN2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8IteratorppEv.exit: ; preds = %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator4nameEv.exit, %bb.j
  %i.ee = phi i64 [ %i.dv, %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator4nameEv.exit ], [ %.pre149, %bb.j ]
  %i.ef = phi ptr [ %i.dw, %_ZNK2v88internal9ScopeInfo15LocalNamesRangeINS0_6TaggedIS1_EEE8Iterator4nameEv.exit ], [ %.pre148, %bb.j ]
  %i.eg = icmp ne ptr %i.ef, %.fca.0.load.i45
  %i.eh = icmp ne i64 %i.ee, %.fca.1.load.i44
  %.not3.i = select i1 %i.eg, i1 true, i1 %i.eh
  br i1 %.not3.i, label %.lr.ph, label %._crit_edge

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  store i64 %i.k, ptr %12, align 8
  %i.ei = call i64 @_ZNK2v88internal9ScopeInfo12FunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #29 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  store i64 %i.k, ptr %13, align 8
  %i.ej = call noundef i32 @_ZNK2v88internal9ScopeInfo24FunctionContextSlotIndexENS0_6TaggedINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 %i.ei) #29 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.ek = icmp sgt i32 %i.ej, -1
  br i1 %i.ek, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.el = shl nsw i32 %i.ej, 3                    ; 2 uses
  %narrow = add nuw i32 %i.el, 15
  %i.em = zext i32 %narrow to i64
  %i.en = add i64 %2, %i.em
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = load atomic volatile i64, ptr %i.eo monotonic, align 8
  %i.eq = add nuw nsw i32 %i.el, 16
  call void @_ZN2v88internal14V8HeapExplorer19SetContextReferenceEPNS0_9HeapEntryENS0_6TaggedINS0_6StringEEENS4_INS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i64 %i.ei, i64 %i.ep, i32 noundef %i.eq)
  br label %bb.m

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l, %bb.k, %.critedge, %bb.b
  %i.er = add i64 %2, 15                          ; 2 uses
  %i.es = inttoptr i64 %i.er to ptr               ; 2 uses
  %i.et = load atomic volatile i64, ptr %i.es monotonic, align 8
  call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, ptr noundef nonnull @.str.407, i64 %i.et, i32 noundef 16)
  %i.eu = add i64 %2, 23
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load atomic volatile i64, ptr %i.ev monotonic, align 8
  call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, ptr noundef nonnull @.str.408, i64 %i.ew, i32 noundef 24)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.ex = load i64, ptr %i.es, align 8
  store i64 %i.ex, ptr %3, align 8
  %i.ey = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo23HasContextExtensionSlotEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  br i1 %i.ey, label %_ZNK2v88internal7Context13has_extensionEv.exit, label %_ZNK2v88internal7Context13has_extensionEv.exit.thread

_ZNK2v88internal7Context13has_extensionEv.exit.thread: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.o

_ZNK2v88internal7Context13has_extensionEv.exit:   ; preds = %bb.m
  %i.ez = add i64 %2, 31
  %i.fa = inttoptr i64 %i.ez to ptr               ; 2 uses
  %i.fb = load atomic volatile i64, ptr %i.fa monotonic, align 8
  %i.fc = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 10624
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 96
  %i.fg = load i64, ptr %i.ff, align 8
  %.not = icmp eq i64 %i.fb, %i.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK2v88internal7Context13has_extensionEv.exit
  %i.fh = load atomic volatile i64, ptr %i.fa monotonic, align 8
  call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, ptr noundef nonnull @.str.409, i64 %i.fh, i32 noundef 32)
  br label %bb.o

bb.o:                                             ; preds = %_ZNK2v88internal7Context13has_extensionEv.exit.thread, %bb.n, %_ZNK2v88internal7Context13has_extensionEv.exit
  %i.fi = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.fj = add i64 %i.fi, 11
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = load atomic volatile i16, ptr %i.fk monotonic, align 2
  %i.fm = icmp eq i16 %i.fl, 228
  br i1 %i.fm, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.fn = add i64 %2, 1359
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = load atomic volatile i64, ptr %i.fo monotonic, align 8
  call void @_ZN2v88internal14V8HeapExplorer9TagObjectENS0_6TaggedINS0_6ObjectEEEPKcSt8optionalINS0_9HeapEntry4TypeEEb(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %i.fp, ptr noundef nonnull @.str.410, i64 0, i1 noundef zeroext false)
  %i.fq = add i64 %2, 47
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = load atomic volatile i64, ptr %i.fr monotonic, align 8
  call void @_ZN2v88internal14V8HeapExplorer9TagObjectENS0_6TaggedINS0_6ObjectEEEPKcSt8optionalINS0_9HeapEntry4TypeEEb(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %i.fs, ptr noundef nonnull @.str.411, i64 0, i1 noundef zeroext false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.q
  %.0146 = phi i64 [ 0, %bb.p ], [ %i.gd, %bb.q ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr @_ZN2v88internalL20native_context_namesE, i64 %.0146 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = shl nsw i32 %i.fu, 3                    ; 2 uses
  %i.fy = sext i32 %i.fx to i64
  %i.fz = add i64 %i.er, %i.fy
  %i.ga = inttoptr i64 %i.fz to ptr
  %i.gb = load atomic volatile i64, ptr %i.ga monotonic, align 8
  %i.gc = add i32 %i.fx, 16
  call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, ptr noundef %i.fw, i64 %i.gb, i32 noundef %i.gc)
  %i.gd = add nuw nsw i64 %.0146, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.gd, 297
  br i1 %exitcond.not, label %.loopexit, label %bb.q, !llvm.loop !122

.loopexit:                                        ; preds = %bb.q, %bb.o
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer35ExtractEphemeronHashTableReferencesEPNS0_9HeapEntryENS0_6TaggedINS0_18EphemeronHashTableEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = add i64 %2, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = lshr i64 %i.l, 32                        ; 2 uses
  %.not66 = icmp eq i64 %i.m, 0
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.o, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.052.067 = phi i64 [ 0, %.lr.ph ], [ %i.cy, %bb.o ] ; 2 uses
  %i.p = trunc i64 %.sroa.052.067 to i32
  %i.q = shl nsw i32 %i.p, 1                      ; 2 uses
  %i.r = add nsw i32 %i.q, 3                      ; 3 uses
  %i.s = add nsw i32 %i.q, 4                      ; 3 uses
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.t
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8 ; 3 uses
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.w
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8 ; 2 uses
  %i.z = shl nsw i32 %i.r, 3
  %i.aa = add i32 %i.z, 16
  %.sroa.044.0.insert.ext = zext i32 %i.aa to i64
  %.sroa.044.0.insert.insert = or disjoint i64 %.sroa.044.0.insert.ext, 4294967296
  call void @_ZN2v88internal14V8HeapExplorer16SetWeakReferenceEPNS0_9HeapEntryEiNS0_6TaggedINS0_6ObjectEEESt8optionalIiE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i32 noundef %i.r, i64 %i.v, i64 %.sroa.044.0.insert.insert)
  %i.ab = shl nsw i32 %i.s, 3
  %i.ac = add i32 %i.ab, 16
  %.sroa.042.0.insert.ext = zext i32 %i.ac to i64
  %.sroa.042.0.insert.insert = or disjoint i64 %.sroa.042.0.insert.ext, 4294967296
  call void @_ZN2v88internal14V8HeapExplorer16SetWeakReferenceEPNS0_9HeapEntryEiNS0_6TaggedINS0_6ObjectEEESt8optionalIiE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i32 noundef %i.s, i64 %i.y, i64 %.sroa.042.0.insert.insert)
  %i.ad = call noundef ptr @_ZN2v88internal14V8HeapExplorer8GetEntryENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %i.v) ; 7 uses
  %i.ae = call noundef ptr @_ZN2v88internal14V8HeapExplorer8GetEntryENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %i.y) ; 7 uses
  %i.af = call noundef ptr @_ZN2v88internal14V8HeapExplorer8GetEntryENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %2) ; 5 uses
  %i.ag = icmp ne ptr %i.ad, null
  %i.ah = icmp ne ptr %i.ae, null
  %or.cond = and i1 %i.ag, %i.ah
  br i1 %or.cond, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 10624
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = load i64, ptr %i.al, align 8
  %i.an = icmp eq i64 %i.v, %i.am
  br i1 %i.an, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.o, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = call noundef ptr (ptr, ptr, ...) @_ZN2v88internal14StringsStorage12GetFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull @.str.403, ptr noundef %i.aq, i32 noundef %i.as, ptr noundef %i.au, i32 noundef %i.aw, i32 noundef %i.ay) #29 ; 3 uses
  %i.ba = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = add i32 %i.bc, 1                        ; 2 uses
  %.not.i = icmp eq ptr %i.az, null               ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = call noundef ptr (ptr, ptr, ...) @_ZN2v88internal14StringsStorage12GetFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull @.str, i32 noundef %i.bd, ptr noundef nonnull %i.az) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bf = call noundef ptr @_ZN2v88internal14StringsStorage7GetNameEi(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i32 noundef %i.bd) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bg = phi ptr [ %i.be, %bb.e ], [ %i.bf, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 3, ptr %i.e, align 4
  store ptr %i.bg, ptr %i.f, align 8
  store ptr %i.ae, ptr %i.g, align 8
  %i.bh = load i32, ptr %i.bb, align 4
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bb, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #29
  store ptr %i.ad, ptr %i.h, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 368 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 384
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bm, %i.bp
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = load i32, ptr %i.ad, align 8
  %i.br = lshr i32 %i.bq, 1
  %i.bs = and i32 %i.br, 2147483640
  %i.bt = or disjoint i32 %i.bs, 3
  store i32 %i.bt, ptr %i.bm, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.ae, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.bg, ptr %i.bv, align 8
  %i.bw = load ptr, ptr %i.bl, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.bx, ptr %i.bl, align 8
  br label %_ZN2v88internal9HeapEntry26SetNamedAutoIndexReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_14StringsStorageEPNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit

bb.i:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 320
  call void @_ZNSt5dequeIN2v88internal13HeapGraphEdgeESaIS2_EE16_M_push_back_auxIJRNS2_4TypeERPKcPNS1_9HeapEntryERSC_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.by, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %_ZN2v88internal9HeapEntry26SetNamedAutoIndexReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_14StringsStorageEPNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit

_ZN2v88internal9HeapEntry26SetNamedAutoIndexReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_14StringsStorageEPNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bz = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = add i32 %i.cb, 1                        ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal9HeapEntry26SetNamedAutoIndexReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_14StringsStorageEPNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit
  %i.cd = call noundef ptr (ptr, ptr, ...) @_ZN2v88internal14StringsStorage12GetFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %i.bz, ptr noundef nonnull @.str, i32 noundef %i.cc, ptr noundef nonnull %i.az) #29
  br label %bb.l

bb.k:                                             ; preds = %_ZN2v88internal9HeapEntry26SetNamedAutoIndexReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_14StringsStorageEPNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit
  %i.ce = call noundef ptr @_ZN2v88internal14StringsStorage7GetNameEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bz, i32 noundef %i.cc) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cf = phi ptr [ %i.cd, %bb.j ], [ %i.ce, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 3, ptr %i.a, align 4
  store ptr %i.cf, ptr %i.b, align 8
  store ptr %i.ae, ptr %i.c, align 8
  %i.cg = load i32, ptr %i.ca, align 4
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.ca, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store ptr %i.af, ptr %i.d, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 368 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 384
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -24
  %.not.i.i.i40 = icmp eq ptr %i.cl, %i.co
  br i1 %.not.i.i.i40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = load i32, ptr %i.af, align 8
  %i.cq = lshr i32 %i.cp, 1
  %i.cr = and i32 %i.cq, 2147483640
  %i.cs = or disjoint i32 %i.cr, 3
  store i32 %i.cs, ptr %i.cl, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.ae, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.cf, ptr %i.cu, align 8
  %i.cv = load ptr, ptr %i.ck, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store ptr %i.cw, ptr %i.ck, align 8
  br label %_ZN2v88internal9HeapEntry26SetNamedAutoIndexReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_14StringsStorageEPNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit41

bb.n:                                             ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 320
  call void @_ZNSt5dequeIN2v88internal13HeapGraphEdgeESaIS2_EE16_M_push_back_auxIJRNS2_4TypeERPKcPNS1_9HeapEntryERSC_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cx, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN2v88internal9HeapEntry26SetNamedAutoIndexReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_14StringsStorageEPNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit41

_ZN2v88internal9HeapEntry26SetNamedAutoIndexReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_14StringsStorageEPNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit41: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal9HeapEntry26SetNamedAutoIndexReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_14StringsStorageEPNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit41, %bb.c, %bb.b
  %i.cy = add nuw nsw i64 %.sroa.052.067, 1       ; 2 uses
  %.not = icmp eq i64 %i.cy, %i.m
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer27ExtractFixedArrayReferencesEPNS0_9HeapEntryENS0_6TaggedINS0_10FixedArrayEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = add i64 %2, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 32                        ; 2 uses
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %4 = load atomic volatile i64, ptr %3 monotonic, align 8
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.i = shl i32 %indvars.iv.tr, 3
  %i.j = add nuw i32 %i.i, 16
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEiNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i32 noundef %5, i64 %4, i32 noundef %i.j)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !123
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer25ExtractWeakCellReferencesEPNS0_9HeapEntryENS0_6TaggedINS0_8WeakCellEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = add i64 %2, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer16SetWeakReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEiNS2_21ReferenceVerificationE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, ptr noundef nonnull @.str.453, i64 %i.d, i32 noundef 16, i32 poison)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i64, ptr %i.e, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer16SetWeakReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEiNS2_21ReferenceVerificationE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, ptr noundef nonnull @.str.454, i64 %i.f, i32 noundef 24, i32 poison)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer30ExtractBytecodeArrayReferencesEPNS0_9HeapEntryENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr nofree readnone captures(none) %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = add i64 %2, 39
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer26RecursivelyTagConstantPoolENS0_6TaggedINS0_6ObjectEEEPKcNS0_9HeapEntry4TypeEi(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %i.c, ptr noundef nonnull @.str.484, i32 noundef 4, i32 noundef 3)
  %i.d = add i64 %2, 31
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer9TagObjectENS0_6TaggedINS0_6ObjectEEEPKcSt8optionalINS0_9HeapEntry4TypeEEb(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %i.f, ptr noundef nonnull @.str.485, i64 4294967300, i1 noundef zeroext false)
  %i.g = add i64 %2, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i64, ptr %i.h acquire, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer9TagObjectENS0_6TaggedINS0_6ObjectEEEPKcSt8optionalINS0_9HeapEntry4TypeEEb(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %i.i, ptr noundef nonnull @.str.464, i64 4294967300, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer26ExtractScopeInfoReferencesEPNS0_9HeapEntryENS0_6TaggedINS0_9ScopeInfoEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr nofree readnone captures(none) %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = add i64 %2, 23
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = icmp slt i32 %i.e, 75
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %2, 7
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i32, ptr %i.h monotonic, align 4, !noalias !124
  %i.j = and i32 %i.i, 15
  %i.k = icmp eq i32 %i.j, 5
  %i.l = select i1 %i.k, i64 56, i64 48
  %i.m = icmp slt i64 %i.c, 322122547200
  %i.n = lshr i64 %i.c, 29
  %i.o = and i64 %i.n, 4294967288
  %i.p = select i1 %i.m, i64 %i.o, i64 322122547200
  %i.q = add nuw nsw i64 %i.l, %i.p
  %i.r = add i64 %2, -1
  %sext.i.i = shl i64 %i.q, 32
  %i.s = ashr exact i64 %sext.i.i, 32
  %i.t = add i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer9TagObjectENS0_6TaggedINS0_6ObjectEEEPKcSt8optionalINS0_9HeapEntry4TypeEEb(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %i.v, ptr noundef nonnull @.str.486, i64 4294967300, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer32ExtractCppHeapExternalReferencesEPNS0_9HeapEntryENS0_6TaggedINS0_21CppHeapExternalObjectEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr nofree noundef readnone captures(none) %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::Tagged.750", align 8 ; 3 uses
  store i64 %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.c, ptr %3, align 8
  %i.d = call { ptr, i8 } @_ZNSt10_HashtableIN2v88internal6TaggedINS1_21CppHeapExternalObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS4_SJ_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb1EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer27ExtractWasmStructReferencesENS0_6TaggedINS0_10WasmStructEEEPNS0_9HeapEntryE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.v8::internal::wasm::StringBuilder", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.915", align 8 ; 4 uses
  %i.i = add i64 %1, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 31
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = tail call noundef ptr @_ZN2v88internal4wasm20GetTypeCanonicalizerEv() #29
  %i.p = add i64 %i.n, 7
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = lshr i32 %i.r, 8
  %i.t = and i32 %i.s, 1048575
  %i.u = tail call noundef ptr @_ZNK2v88internal4wasm17TypeCanonicalizer12LookupStructENS1_18CanonicalTypeIndexE(ptr noundef nonnull align 8 dereferenceable(8056) %i.o, i32 %i.t) #29 ; 5 uses
  %i.v = tail call noundef ptr @_ZN2v88internal4wasm29GetCanonicalTypeNamesProviderEv() #29
  %i.w = load i16, ptr %i.u, align 8
  %.not = icmp eq i16 %i.w, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 280 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 288 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 296 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 304 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.ag = add i64 %1, 15
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 272
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal4wasm13StringBuilderD2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal4wasm13StringBuilderD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal4wasm13StringBuilderD2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store ptr %3, ptr %i.y, align 8
  store ptr %3, ptr %i.z, align 8
  store i64 256, ptr %i.aa, align 8
  store i8 1, ptr %i.ab, align 8
  %i.ap = load i32, ptr %i.q, align 4
  %i.aq = lshr i32 %i.ap, 8
  %i.ar = and i32 %i.aq, 1048575
  %i.as = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  call void @_ZN2v88internal4wasm26CanonicalTypeNamesProvider14PrintFieldNameERNS1_13StringBuilderENS1_18CanonicalTypeIndexEj(ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef nonnull align 8 dereferenceable(305) %3, i32 %i.ar, i32 noundef %i.as) #29
  %i.at = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.c, label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEc.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN2v88internal4wasm13StringBuilder4GrowEm(ptr noundef nonnull align 8 dereferenceable(305) %3, i64 noundef 1)
  %.pre.i.i = load i64, ptr %i.aa, align 8
  br label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEc.exit

_ZN2v88internal4wasmlsERNS1_13StringBuilderEc.exit: ; preds = %bb.b, %bb.c
  %i.av = phi i64 [ %.pre.i.i, %bb.c ], [ %i.at, %bb.b ]
  %i.aw = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ax, ptr %i.z, align 8
  %i.ay = add i64 %i.av, -1
  store i64 %i.ay, ptr %i.aa, align 8
  store i8 0, ptr %i.aw, align 1
  %i.az = load ptr, ptr %i.ac, align 8
  %i.ba = load ptr, ptr %i.y, align 8
  %i.bb = call noundef ptr @_ZN2v88internal14StringsStorage7GetCopyEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef %i.ba) #29 ; 4 uses
  %i.bc = load ptr, ptr %i.ad, align 8
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i24 = load i32, ptr %i.bd, align 4 ; 3 uses
  %i.be = and i32 %.sroa.0.0.copyload.i.i24, 3
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN2v88internal4wasmlsERNS1_13StringBuilderEc.exit
  %i.bg = and i32 %.sroa.0.0.copyload.i.i24, 268435440
  %i.bh = add nsw i32 %i.bg, -5648                ; 2 uses
  %i.bi = call i32 @llvm.fshl.i32(i32 %i.bh, i32 %i.bh, i32 24)
  %i.bj = icmp ult i32 %i.bi, 8
  br i1 %i.bj, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.376) #31
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal4wasmlsERNS1_13StringBuilderEc.exit
  %i.bk = and i32 %.sroa.0.0.copyload.i.i24, 268435427
  switch i32 %i.bk, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread54 [
end_hunk_0
begin_hunk_1_@_ZN2v88internal14V8HeapExplorer26ExtractWasmArrayReferencesENS0_6TaggedINS0_9WasmArrayEEEPNS0_9HeapEntryE:bb.a
  %i.by = icmp ult i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.c, label %.loopexit, !llvm.loop !132

.loopexit:                                        ; preds = %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer40ExtractWasmTrustedInstanceDataReferencesENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEPNS0_9HeapEntryE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
.preheader:
  %i.a = add i64 %1, 151
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.850, i64 %i.c, i32 noundef 152)
  %i.d = add i64 %1, 159
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.422, i64 %i.f, i32 noundef 160)
  %i.g = add i64 %1, 175
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.851, i64 %i.i, i32 noundef 176)
  %i.j = add i64 %1, 183
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.852, i64 %i.l, i32 noundef 184)
  %i.m = add i64 %1, 191
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.853, i64 %i.o, i32 noundef 192)
  %i.p = add i64 %1, 199
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i64, ptr %i.q, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.854, i64 %i.r, i32 noundef 200)
  %i.s = add i64 %1, 207
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.855, i64 %i.u, i32 noundef 208)
  %i.v = add i64 %1, 223
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %i.w, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.856, i64 %i.x, i32 noundef 224)
  %i.y = add i64 %1, 231
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load i64, ptr %i.z, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.857, i64 %i.aa, i32 noundef 232)
  %i.ab = add i64 %1, 239
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.858, i64 %i.ad, i32 noundef 240)
  %i.ae = add i64 %1, 247
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i64, ptr %i.af, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.859, i64 %i.ag, i32 noundef 248)
  %i.ah = add i64 %1, 255
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.860, i64 %i.aj, i32 noundef 256)
  %i.ak = add i64 %1, 23
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.861, i64 %i.am, i32 noundef 24)
  %i.an = add i64 %1, 127
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load i64, ptr %i.ao, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.862, i64 %i.ap, i32 noundef 128)
  %i.aq = add i64 %1, 135
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load i64, ptr %i.ar, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.863, i64 %i.as, i32 noundef 136)
  %i.at = add i64 %1, 143
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i64, ptr %i.au, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.864, i64 %i.av, i32 noundef 144)
  %i.aw = add i64 %1, 167
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load i64, ptr %i.ax, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.865, i64 %i.ay, i32 noundef 168)
  %i.az = add i64 %1, 119
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load i64, ptr %i.ba, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.866, i64 %i.bb, i32 noundef 120)
  %i.bc = add i64 %1, 7
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load i64, ptr %i.bd, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.867, i64 %i.be, i32 noundef 8)
  %i.bf = add i64 %1, 215
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i64, ptr %i.bg, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.868, i64 %i.bh, i32 noundef 216)
  %i.bi = add i64 %1, 15
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load i64, ptr %i.bj, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.869, i64 %i.bk, i32 noundef 16)
  %i.bl = add i64 %1, 263
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load i64, ptr %i.bm, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %2, ptr noundef nonnull @.str.495, i64 %i.bn, i32 noundef 264)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer25ExtractPropertyReferencesENS0_6TaggedINS0_8JSObjectEEEPNS0_9HeapEntryE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Representation", align 1 ; 4 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = add i64 %1, 7
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = add i64 %1, -1                           ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 4 uses
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 15
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i32, ptr %i.j monotonic, align 4
  %i.l = and i32 %i.k, 2097152
  %.not.i.i = icmp eq i32 %i.l, 0
  %i.m = load atomic volatile i64, ptr %i.g monotonic, align 8 ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.n = add i64 %i.m, 39
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.r = add i64 %i.q, 15
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i32, ptr %i.s acquire, align 4
  %i.u = lshr i32 %i.t, 10
  %i.v = and i32 %i.u, 1023                       ; 2 uses
  %i.w = zext nneg i32 %i.v to i64
  %.not204213 = icmp eq i32 %i.v, 0
  br i1 %.not204213, label %.loopexit, label %.lr.ph215

.lr.ph215:                                        ; preds = %bb.b
  %i.x = add i64 %i.p, 7
  %i.y = add i64 %i.p, -1                         ; 2 uses
  %i.z = add i64 %i.p, 15
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph215, %.thread
  %.sroa.0133.0214 = phi i64 [ 0, %.lr.ph215 ], [ %i.da, %.thread ] ; 2 uses
  %i.ab = mul nuw nsw i64 %.sroa.0133.0214, 103079215104
  %sext.i = add nuw nsw i64 %i.ab, 137438953472
  %i.ac = lshr exact i64 %sext.i, 32              ; 4 uses
  %i.ad = add i64 %i.x, %i.ac
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8 ; 2 uses
  %i.ag = lshr i64 %i.af, 32
  %i.ah = trunc nuw i64 %i.ag to i32              ; 4 uses
  %i.ai = and i32 %i.ah, 32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.aa, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 512
  %i.am = load i32, ptr %i.al, align 8
  %i.an = icmp ne i32 %i.am, 1
  %.pre = lshr i64 %i.af, 38
  %.pre218 = trunc i64 %.pre to i8
  %.pre220 = and i8 %.pre218, 7                   ; 3 uses
  %.off = add nsw i8 %.pre220, -1
  %switch = icmp ult i8 %.off, 2
  %or.cond = select i1 %i.an, i1 %switch, i1 false
  br i1 %or.cond, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %i.ao = add i64 %i.y, %i.ac
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  %i.ar = load atomic volatile i64, ptr %i.g monotonic, align 8 ; 2 uses
  %i.as = lshr i32 %i.ah, 19
  %i.at = and i32 %i.as, 1023                     ; 3 uses
  %i.au = add i64 %i.ar, 7
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i8, ptr %i.av monotonic, align 1
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add i64 %i.ar, 8
  %i.az = inttoptr i64 %i.ay to ptr               ; 3 uses
  %i.ba = load atomic volatile i8, ptr %i.az monotonic, align 1
  %i.bb = zext i8 %i.ba to i32
  %i.bc = sub nsw i32 %i.ax, %i.bb                ; 3 uses
  %i.bd = icmp slt i32 %i.at, %i.bc               ; 2 uses
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.be = load atomic volatile i8, ptr %i.az monotonic, align 1
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 30
  %i.bh = load atomic volatile i8, ptr %i.az monotonic, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nuw nsw i32 %i.at, %i.bi
  %i.bk = shl nuw nsw i32 %i.bj, 3
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.bl = sub nsw i32 %i.at, %i.bc
  %i.bm = shl nsw i32 %i.bl, 3
  %i.bn = add nuw nsw i32 %i.bm, 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.013.i.i = phi i64 [ %i.bg, %bb.e ], [ 2147483648, %bb.f ]
  %.0.i.i = phi i32 [ %i.bk, %bb.e ], [ %i.bn, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i8 %.pre220, ptr %3, align 1
  %switch205 = icmp samesign ult i8 %.pre220, 5
  br i1 %switch205, label %_ZN2v88internal10FieldIndex10ForDetailsENS0_6TaggedINS0_3MapEEENS0_15PropertyDetailsE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = call noundef ptr @_ZNK2v88internal14Representation8MnemonicEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.835, ptr noundef %i.bo) #29
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.376) #31
  unreachable

_ZN2v88internal10FieldIndex10ForDetailsENS0_6TaggedINS0_3MapEEENS0_15PropertyDetailsE.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bp = select i1 %i.bd, i64 16384, i64 0
  %i.bq = sext i32 %.0.i.i to i64                 ; 3 uses
  %i.br = sext i32 %i.bc to i64
  %i.bs = shl nsw i64 %i.br, 17
  %i.bt = or disjoint i64 %i.bs, %i.bp
  %i.bu = or i64 %.013.i.i, %i.bt
  %i.bv = or i64 %i.bu, %i.bq                     ; 2 uses
  %i.bw = and i64 %i.bv, 16384
  %.not.i.i65 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i65, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN2v88internal10FieldIndex10ForDetailsENS0_6TaggedINS0_3MapEEENS0_15PropertyDetailsE.exit
  %i.bx = load i64, ptr %i.d, align 8             ; 3 uses
  %i.by = and i64 %i.bx, 1
  %i.bz = icmp eq i64 %i.by, 0
  %.pre.i.i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 10624
  %.pre11.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8 ; 2 uses
  br i1 %i.bz, label %.critedge.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre11.i.i.i, i64 312
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = icmp eq i64 %i.bx, %i.cb
  br i1 %i.cc, label %.critedge.i.i.i, label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit

.critedge.i.i.i:                                  ; preds = %bb.j, %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre11.i.i.i, i64 304
  %i.ce = load i64, ptr %i.cd, align 8
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit

_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit: ; preds = %bb.j, %.critedge.i.i.i
  %.sroa.05.0.i.i.i = phi i64 [ %i.ce, %.critedge.i.i.i ], [ %i.bx, %bb.j ]
  %sh.diff.i.i = lshr i64 %i.bv, 27
  %i.cf = and i64 %sh.diff.i.i, 120
  %.mask.i.i = and i64 %i.bq, 16376
  %i.cg = add nuw nsw i64 %.mask.i.i, 15
  %i.ch = sub nsw i64 %i.cg, %i.cf
  %i.ci = add i64 %i.ch, %.sroa.05.0.i.i.i
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load atomic volatile i64, ptr %i.cj monotonic, align 8
  br label %bb.l

bb.k:                                             ; preds = %_ZN2v88internal10FieldIndex10ForDetailsENS0_6TaggedINS0_3MapEEENS0_15PropertyDetailsE.exit
  %i.cl = and i64 %i.bq, 16383
  %i.cm = add i64 %i.f, %i.cl
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i64, ptr %i.cn monotonic, align 8
  %i.cp = and i32 %.0.i.i, 16383
  br label %bb.l

bb.l:                                             ; preds = %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit, %bb.k
  %i.cq = phi i64 [ %i.co, %bb.k ], [ %i.ck, %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit ]
  %i.cr = phi i32 [ %i.cp, %bb.k ], [ -1, %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE.exit ]
  %i.cs = and i32 %i.ah, 1
  tail call void @_ZN2v88internal14V8HeapExplorer34SetDataOrAccessorPropertyReferenceENS0_12PropertyKindEPNS0_9HeapEntryENS0_6TaggedINS0_4NameEEENS5_INS0_6ObjectEEEPKci(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %i.cs, ptr noundef %2, i64 %i.aq, i64 %i.cq, ptr noundef null, i32 noundef %i.cr)
  br label %.thread

bb.m:                                             ; preds = %bb.c
  %i.ct = and i32 %i.ah, 1
  %i.cu = add i64 %i.y, %i.ac
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load atomic volatile i64, ptr %i.cv monotonic, align 8
  %i.cx = add i64 %i.z, %i.ac
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = load atomic volatile i64, ptr %i.cy monotonic, align 8
  tail call void @_ZN2v88internal14V8HeapExplorer34SetDataOrAccessorPropertyReferenceENS0_12PropertyKindEPNS0_9HeapEntryENS0_6TaggedINS0_4NameEEENS5_INS0_6ObjectEEEPKci(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %i.ct, ptr noundef %2, i64 %i.cw, i64 %i.cz, ptr noundef null, i32 noundef -1)
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.m, %bb.l
  %i.da = add nuw nsw i64 %.sroa.0133.0214, 1     ; 2 uses
  %.not204 = icmp eq i64 %i.da, %i.w
  br i1 %.not204, label %.loopexit, label %bb.c

bb.n:                                             ; preds = %bb.a
  %i.db = add i64 %i.m, 11
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = load atomic volatile i16, ptr %i.dc monotonic, align 2
  %i.de = icmp eq i16 %i.dd, 303
  br i1 %i.de, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.df = load atomic volatile i64, ptr %i.d acquire, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  %i.dh = add i64 %i.df, -1
  %i.di = inttoptr i64 %i.dh to ptr               ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load atomic volatile i64, ptr %i.dj monotonic, align 8
  %i.dl = lshr i64 %i.dk, 32                      ; 2 uses
  %.not202210 = icmp eq i64 %i.dl, 0
  br i1 %.not202210, label %.loopexit, label %.lr.ph212

.lr.ph212:                                        ; preds = %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph212, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.0103.0211 = phi i64 [ 0, %.lr.ph212 ], [ %i.ei, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 2 uses
  %i.do = shl nuw i64 %.sroa.0103.0211, 32
  %sext.i.i72 = add i64 %i.do, 21474836480
  %i.dp = ashr exact i64 %sext.i.i72, 29
  %i.dq = getelementptr inbounds i8, ptr %i.dm, i64 %i.dp ; 2 uses
  %i.dr = load atomic volatile i64, ptr %i.dq monotonic, align 8 ; 2 uses
  %i.ds = load i64, ptr %i.dg, align 8
  %i.dt = icmp eq i64 %i.dr, %i.ds
  br i1 %i.dt, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.p
  %i.du = load i64, ptr %i.dn, align 8
  %.not203 = icmp eq i64 %i.dr, %i.du
  br i1 %.not203, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.dv = load atomic volatile i64, ptr %i.dq monotonic, align 8 ; 3 uses
  %i.dw = add i64 %i.dv, 7
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = add i64 %i.dv, 23
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = add i64 %i.dv, 15
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = lshr i64 %i.ee, 32
  %i.eg = trunc nuw i64 %i.ef to i32
  %i.eh = and i32 %i.eg, 1
  tail call void @_ZN2v88internal14V8HeapExplorer34SetDataOrAccessorPropertyReferenceENS0_12PropertyKindEPNS0_9HeapEntryENS0_6TaggedINS0_4NameEEENS5_INS0_6ObjectEEEPKci(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %i.eh, ptr noundef %2, i64 %i.dy, i64 %i.eb, ptr noundef null, i32 noundef -1)
  br label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.p, %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, %bb.q
  %i.ei = add nuw nsw i64 %.sroa.0103.0211, 1     ; 2 uses
  %.not202 = icmp eq i64 %i.ei, %i.dl
  br i1 %.not202, label %.loopexit, label %bb.p

bb.r:                                             ; preds = %bb.n
  %i.ej = and i64 %i.e, 1
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %bb.s, label %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit

bb.s:                                             ; preds = %bb.r
  %i.el = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 10624
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1336
  %i.ep = load i64, ptr %i.eo, align 8
  br label %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit

_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit: ; preds = %bb.r, %bb.s
  %.sroa.05.0.i.i = phi i64 [ %i.ep, %bb.s ], [ %i.e, %bb.r ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  %i.er = add i64 %.sroa.05.0.i.i, -1
  %i.es = inttoptr i64 %i.er to ptr               ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load atomic volatile i64, ptr %i.et monotonic, align 8
  %i.ev = lshr i64 %i.eu, 32                      ; 2 uses
  %.not208 = icmp eq i64 %i.ev, 0
  br i1 %.not208, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.084.0209 = phi i64 [ 0, %.lr.ph ], [ %i.fo, %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 2 uses
  %i.ey = mul i64 %.sroa.084.0209, 12884901888    ; 3 uses
  %sext.i.i80 = add i64 %i.ey, 25769803776
  %i.ez = ashr exact i64 %sext.i.i80, 29
  %i.fa = getelementptr inbounds i8, ptr %i.ew, i64 %i.ez
  %i.fb = load atomic volatile i64, ptr %i.fa monotonic, align 8 ; 3 uses
  %i.fc = load i64, ptr %i.eq, align 8
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.t
  %i.fe = load i64, ptr %i.ex, align 8
  %.not201 = icmp eq i64 %i.fb, %i.fe
  br i1 %.not201, label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
end_hunk_1
