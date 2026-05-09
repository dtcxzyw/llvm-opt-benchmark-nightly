inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i8 @linear2alaw(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, -1                      ; 3 uses
  %i.b = sub nsw i32 -8, %0
  %.017 = select i1 %i.a, i32 %0, i32 %i.b        ; 10 uses
  %.016 = select i1 %i.a, i8 -43, i8 85
  %.not.i = icmp sgt i32 %.017, 255
  br i1 %.not.i, label %bb.b, label %bb.i

end_hunk_0
begin_hunk_1_@linear2alaw:bb.a
  br i1 %.not.7.i, label %search.exit, label %.thread

search.exit:                                      ; preds = %bb.h
  %1 = select i1 %i.a, i8 -86, i8 42
  br label %bb.k

.thread:                                          ; preds = %bb.g, %bb.d, %bb.f, %bb.c, %bb.h, %bb.e
end_hunk_1
