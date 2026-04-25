inline.NumInlined: 22
inline.NumDeleted: 1
begin_hunk_0_@BeamFirSetup:bb.a
  %i.j = getelementptr i8, ptr %i.e, i64 4
  %i.k = shl nuw i32 %1, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 2)
  %2 = add nsw i32 %smax, -2
  %i.l = zext nneg i32 %2 to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %3 = or disjoint i64 %i.m, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.j, i8 0, i64 %3, i1 false), !tbaa !21
  %scevgep17 = getelementptr i8, ptr %i.g, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep17, i8 0, i64 %3, i1 false), !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
end_hunk_0
begin_hunk_1_@BeamFirSetup_StrictFP:bb.a
  %i.j = getelementptr i8, ptr %i.e, i64 4
  %i.k = shl nuw i32 %1, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 2)
  %2 = add nsw i32 %smax, -2
  %i.l = zext nneg i32 %2 to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %3 = or disjoint i64 %i.m, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.j, i8 0, i64 %3, i1 false), !tbaa !21
  %scevgep17 = getelementptr i8, ptr %i.g, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep17, i8 0, i64 %3, i1 false), !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
end_hunk_1
