inline.NumInlined: 61
inline.NumDeleted: 39
begin_hunk_0_@_ZN4geos5index7bintree7Bintree5queryEd:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN4geos5index7bintree7Bintree5queryEPNS1_8IntervalE:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef %1, ptr noundef nonnull %i.a) ; 0 uses
  ret ptr %i.a
}

end_hunk_1
begin_hunk_2_@llvm.assume
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!15, !16, i64 16}
end_hunk_2
