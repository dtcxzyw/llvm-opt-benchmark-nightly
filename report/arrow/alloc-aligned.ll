inline.NumInlined: 57
inline.NumDeleted: 20
begin_hunk_0_@mi_heap_malloc_zero_aligned_at_overalloc:bb.a
  %i.b = tail call i64 @llvm.umax.i64(i64 %1, i64 1025)
  %i.c = tail call ptr @_mi_heap_malloc_zero_ex(ptr noundef %0, i64 noundef %i.b, i1 noundef zeroext %4, i64 noundef %2) #8 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = add i64 %2, -1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = tail call i64 @llvm.umax.i64(i64 %1, i64 16)
  %i.f = add nsw i64 %2, -1                       ; 2 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = tail call ptr @_mi_heap_malloc_zero(ptr noundef %0, i64 noundef range(i64 -1, -9223372036854710273) %i.g, i1 noundef zeroext %4) #8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.f, %bb.d ]
  %.036 = phi ptr [ %i.c, %._crit_edge ], [ %i.h, %bb.d ] ; 3 uses
  %i.j = ptrtoint ptr %.036 to i64                ; 4 uses
  %i.k = lshr i64 %i.j, 29
  %i.l = load ptr, ptr @_mi_page_map, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8
  %i.o = add i64 %3, %i.j
  %i.p = and i64 %i.o, %.pre-phi                  ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = sub i64 %2, %i.p
  %i.s = select i1 %i.q, i64 0, i64 %i.r          ; 2 uses
end_hunk_0
