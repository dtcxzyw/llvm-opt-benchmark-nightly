inline.NumInlined: 133
inline.NumDeleted: 55
begin_hunk_0
@.str.2 = private unnamed_addr constant [45 x i8] c"allocation request is too large (%zu bytes)\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i64 -3, 74) i64 @_mi_bin(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @mi_bin(i64 noundef %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i64 -3, 74) i64 @mi_bin(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = add i64 %0, 7                            ; 4 uses
  %i.b = lshr i64 %i.a, 3                         ; 2 uses
end_hunk_0
begin_hunk_1_@mi_bin:bb.a
bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i64 %i.b, -1                     ; 2 uses
  %i.i = tail call range(i64 51, 61) i64 @llvm.ctlz.i64(i64 range(i64 8, 8192) %i.h, i1 true) ; 2 uses
  %1 = shl nuw nsw i64 %i.i, 2
  %i.j = sub nuw nsw i64 61, %i.i
  %i.k = lshr i64 %i.h, %i.j
  %i.l = and i64 %i.k, 3
  %2 = or disjoint i64 %i.l, %1
  %3 = xor i64 %2, 252
  %i.m = add nsw i64 %3, -3
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
end_hunk_1
begin_hunk_2_@_mi_page_queue_is_valid:bb.a
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i64 -3, 75) i64 @_mi_page_bin(ptr noundef readonly captures(address) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8
  %i.b = trunc i64 %i.a to i1
end_hunk_2
begin_hunk_3_@_mi_malloc_generic:bb.a
  %.not.i = icmp eq i64 %3, 0
  %i.r = select i1 %.not.i, i64 %1, i64 65537
  %i.s = getelementptr inbounds nuw i8, ptr %.040, i64 1264
  %i.t = tail call fastcc range(i64 -3, 74) i64 @mi_bin(i64 noundef range(i64 0, -9223372036854775808) %i.r)
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.t ; 4 uses
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %.val.i = load i64, ptr %i.v, align 8, !tbaa !9
end_hunk_3
begin_hunk_4_@mi_find_page:bb.a
  %.not = icmp eq i64 %2, 0
  %i.b = select i1 %.not, i64 %1, i64 65537
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.d = tail call fastcc range(i64 -3, 74) i64 @mi_bin(i64 noundef range(i64 0, -9223372036854775808) %i.b)
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.d ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %.val = load i64, ptr %i.f, align 8, !tbaa !9
end_hunk_4
