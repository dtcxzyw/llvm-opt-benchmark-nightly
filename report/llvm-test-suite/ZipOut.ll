inline.NumInlined: 109
inline.NumDeleted: 28
begin_hunk_0_@_ZN8NArchive4NZip11COutArchive31PrepareWriteCompressedDataZip64Etbb:bb.a
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.a, ptr %i.b, align 8, !tbaa !25
  %i.c = select i1 %2, i32 20, i32 0
  %4 = select i1 %2, i32 31, i32 11
  %spec.select = select i1 %3, i32 %4, i32 %i.c   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %spec.select, ptr %i.d, align 4, !tbaa !26
end_hunk_0
begin_hunk_1_@_ZN8NArchive4NZip11COutArchive31PrepareWriteCompressedDataZip64Etbb:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN8NArchive4NZip11COutArchive26PrepareWriteCompressedDataEtyb(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(81) initializes((72, 81)) %0, i16 noundef zeroext %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ugt i64 %2, 4160749567              ; 3 uses
  %i.b = zext i1 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.b, ptr %i.c, align 8, !tbaa !25
  %i.d = select i1 %i.a, i32 20, i32 0
  %4 = select i1 %i.a, i32 31, i32 11
  %spec.select.i = select i1 %3, i32 %4, i32 %i.d ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %spec.select.i, ptr %i.e, align 4, !tbaa !26
end_hunk_1
begin_hunk_2_@_ZN8NArchive4NZip11COutArchive27PrepareWriteCompressedData2Etyyb:bb.a
bb.a:
  %i.a = icmp ugt i64 %2, 4294967294
  %i.b = icmp ugt i64 %3, 4294967294
  %i.c = or i1 %i.a, %i.b                         ; 3 uses
  %i.d = zext i1 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.d, ptr %i.e, align 8, !tbaa !25
  %i.f = select i1 %i.c, i32 20, i32 0
  %5 = select i1 %i.c, i32 31, i32 11
  %spec.select.i = select i1 %4, i32 %5, i32 %i.f ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %spec.select.i, ptr %i.g, align 4, !tbaa !26
end_hunk_2
