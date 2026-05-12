inline.NumInlined: 87
inline.NumDeleted: 77
begin_hunk_0_@_ZN4geos8simplify21TaggedLinesSimplifierC2Ev:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #8
          to label %bb.c unwind label %bb.g       ; 8 uses

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
end_hunk_0
begin_hunk_1_@_ZN4geos8simplify21TaggedLinesSimplifierC2Ev:bb.a

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !27
  %1 = load ptr, ptr %i.h, align 8, !tbaa !27
  invoke void @_ZN4geos8simplify26TaggedLineStringSimplifierC1EPNS0_16LineSegmentIndexES3_(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef %i.q, ptr noundef %1)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
end_hunk_1
