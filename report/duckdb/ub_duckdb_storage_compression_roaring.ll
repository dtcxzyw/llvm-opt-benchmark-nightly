inline.NumInlined: 1873
inline.NumDeleted: 1202
begin_hunk_0_@_ZN6duckdb7roaring27ContainerMetadataCollection11AddMetadataENS0_17ContainerMetadataE:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring27ContainerMetadataCollection15AddRunContainerEmb(ptr noundef nonnull align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %spec.select4.i = select i1 %2, i8 3, i8 2      ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !291  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb7roaring27ContainerMetadataCollection16AddContainerTypeEbb
define void @_ZN6duckdb7roaring27ContainerMetadataCollection16AddContainerTypeEbb(ptr noundef nonnull align 8 captures(none) dereferenceable(96) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %spec.select = select i1 %1, i8 2, i8 0
  %3 = select i1 %1, i8 3, i8 1
  %spec.select4 = select i1 %2, i8 %3, i8 %spec.select ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !291  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_1
