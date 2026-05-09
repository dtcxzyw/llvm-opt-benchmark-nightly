inline.NumInlined: 282
inline.NumDeleted: 158
begin_hunk_0_@llvm.memcpy.p0.p0.i64
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal19MutablePageMetadata27SetYoungGenerationPageFlagsENS0_11MarkingModeE(ptr noundef nonnull align 8 captures(none) dereferenceable(4448) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %.not.i = icmp eq i32 %1, 0                     ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 2, i64 38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = or i64 %i.b, %spec.select.i              ; 2 uses
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
end_hunk_0
