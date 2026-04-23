inline.NumInlined: 431
inline.NumDeleted: 216
begin_hunk_0_@_ZN2v88internal14FixedArrayBase33GetMaxLengthForNewSpaceAllocationENS0_12ElementsKindE:bb.a
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal14FixedArrayBase10IsCowArrayEv(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load atomic volatile i64, ptr %0 monotonic, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal13WeakArrayList6AppendEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_23MaybeObjectDirectHandleENS0_14AllocationTypeE:bb.a
  %i.a = load i64, ptr %1, align 8                ; 8 uses
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = lshr i64 %i.d, 32                        ; 4 uses
  %i.f = trunc nuw i64 %i.e to i32                ; 4 uses
  %i.g = add i64 %i.a, 7
  %i.h = inttoptr i64 %i.g to ptr
end_hunk_1
begin_hunk_2_@_ZN2v88internal13WeakArrayList6AppendEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_23MaybeObjectDirectHandleENS0_14AllocationTypeE:bb.a
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !24

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %i.aw = and i64 %i.d, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.aw, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

end_hunk_2
begin_hunk_3_@_ZN2v88internal13WeakArrayList6AppendEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_23MaybeObjectDirectHandleENS0_14AllocationTypeE:bb.a
  br label %.thread

.thread:                                          ; preds = %bb.x, %bb.w, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit30, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit, %bb.j, %bb.k
  %.sink = phi i64 [ %i.d, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit ], [ %i.d, %bb.k ], [ %i.d, %bb.j ], [ %i.bo, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit30 ], [ %i.bo, %bb.w ], [ %i.bo, %bb.x ]
  %.sink90 = phi ptr [ %i.c, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit ], [ %i.c, %bb.k ], [ %i.c, %bb.j ], [ %i.bn, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit30 ], [ %i.bn, %bb.w ], [ %i.bn, %bb.x ]
  %.sroa.020.1 = phi ptr [ %1, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit ], [ %1, %bb.k ], [ %1, %bb.j ], [ %.sroa.063.0, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit30 ], [ %.sroa.063.0, %bb.w ], [ %.sroa.063.0, %bb.x ]
  %i.cm = and i64 %.sink, -4294967296
end_hunk_3
begin_hunk_4_@_ZNK2v88internal13WeakArrayList17CountLiveElementsEv:bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i64 %i.c, 32                        ; 4 uses
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge
end_hunk_4
begin_hunk_5_@_ZNK2v88internal13WeakArrayList17CountLiveElementsEv:bb.a
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.h = and i64 %i.c, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.h, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

end_hunk_5
begin_hunk_6_@_ZNK2v88internal13WeakArrayList23CountLiveWeakReferencesEv:bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i64 %i.c, 32                        ; 4 uses
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge
end_hunk_6
begin_hunk_7_@_ZNK2v88internal13WeakArrayList23CountLiveWeakReferencesEv:bb.a
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.h = and i64 %i.c, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.h, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

end_hunk_7
begin_hunk_8_@_ZNK2v88internal13WeakArrayList23CountLiveWeakReferencesEv:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13WeakArrayList9RemoveOneENS0_23MaybeObjectDirectHandleE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 %1, ptr readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 8 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = lshr i64 %i.c, 32                        ; 3 uses
  %i.e = trunc nuw i64 %i.d to i32                ; 4 uses
  %i.f = add nsw i32 %i.e, -1                     ; 5 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.h = icmp eq i32 %1, 0
  %i.i = icmp eq ptr %2, null                     ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.i, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split, !prof !7

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %3 = shl nsw i32 %i.f, 3
  %narrow.us.us = add nuw i32 %3, 23
  %4 = zext i32 %narrow.us.us to i64
  %5 = add i64 %.sroa.0.0.copyload.i, %4
  %6 = inttoptr i64 %5 to ptr
  %7 = load atomic volatile i64, ptr %6 monotonic, align 8 ; 0 uses
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.j = load i64, ptr %2, align 8
  %i.k = or i64 %i.j, 3                           ; 2 uses
  %8 = shl nsw i32 %i.f, 3                        ; 3 uses
  %narrow.us51 = add nuw i32 %8, 23
  %9 = zext i32 %narrow.us51 to i64               ; 2 uses
  %10 = add i64 %.sroa.0.0.copyload.i, %9
  %11 = inttoptr i64 %10 to ptr                   ; 2 uses
  %12 = load atomic volatile i64, ptr %11 monotonic, align 8
  %.not.us52 = icmp eq i64 %12, %i.k
  br i1 %.not.us52, label %.split38.us, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %.lr.ph.split.us.split
end_hunk_8
begin_hunk_9_@_ZN2v88internal13WeakArrayList9RemoveOneENS0_23MaybeObjectDirectHandleE:bb.a
  br i1 %i.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split, !prof !7

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %13 = shl nsw i32 %i.f, 3
  %narrow.us43 = add nuw i32 %13, 23
  %14 = zext i32 %narrow.us43 to i64
  %15 = add i64 %.sroa.0.0.copyload.i, %14
  %16 = inttoptr i64 %15 to ptr
  %17 = load atomic volatile i64, ptr %16 monotonic, align 8 ; 0 uses
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.u = load i64, ptr %2, align 8                ; 2 uses
  %18 = shl nsw i32 %i.f, 3                       ; 3 uses
  %narrow45 = add nuw i32 %18, 23
  %19 = zext i32 %narrow45 to i64                 ; 2 uses
  %20 = add i64 %.sroa.0.0.copyload.i, %19
  %21 = inttoptr i64 %20 to ptr                   ; 2 uses
  %22 = load atomic volatile i64, ptr %21 monotonic, align 8
  %.not46 = icmp eq i64 %22, %i.u
  br i1 %.not46, label %.split38.us, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %.lr.ph.split.split
end_hunk_9
begin_hunk_10_@_ZN2v88internal13WeakArrayList9RemoveOneENS0_23MaybeObjectDirectHandleE:bb.a
  br i1 %.not, label %.split38.us, label %.lr.ph47, !llvm.loop !27

.split38.us:                                      ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.us, %.lr.ph.split.split, %.lr.ph.split.us.split
  %.pre-phi = phi i32 [ %8, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.us ], [ %8, %.lr.ph.split.us.split ], [ %18, %.lr.ph.split.split ], [ %18, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i ]
  %.us-phi39 = phi i64 [ %i.o, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.us ], [ %9, %.lr.ph.split.us.split ], [ %19, %.lr.ph.split.split ], [ %i.aa, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i ]
  %.us-phi40 = phi ptr [ %i.q, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.us ], [ %11, %.lr.ph.split.us.split ], [ %21, %.lr.ph.split.split ], [ %i.ac, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i ]
  %i.ae = sext i32 %.pre-phi to i64
  %i.af = add nsw i64 %i.ae, 23                   ; 2 uses
  %i.ag = add i64 %i.af, %.sroa.0.0.copyload.i
  %i.ah = inttoptr i64 %i.ag to ptr
end_hunk_10
begin_hunk_11_@llvm.assume

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_11
