inline.NumInlined: 26
inline.NumDeleted: 15
begin_hunk_0_@_mi_prim_alloc_huge_os_pages:bb.a
  %i.d = and i64 %1, 1073741823
  %i.e = icmp ne i64 %i.d, 0
  %.b.i = load i1, ptr @unix_mmap.mi_huge_pages_available, align 1
  %or.cond4.not.i = select i1 %i.e, i1 true, i1 %.b.i
  %spec.select = select i1 %or.cond4.not.i, i32 1409548322, i32 2013528098 ; 2 uses
  %i.f = tail call fastcc ptr @unix_mmap_prim_aligned(ptr noundef %0, i64 noundef %1, i64 noundef 65536, i32 noundef 3, i32 noundef %spec.select) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %unix_mmap.exit

bb.b:                                             ; preds = %bb.a
  %5 = and i32 %spec.select, 2013265920
  %6 = icmp eq i32 %5, 2013265920
  br i1 %6, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  store ptr null, ptr %4, align 8, !tbaa !18
end_hunk_0
