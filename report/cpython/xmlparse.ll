inline.NumInlined: 273
inline.NumDeleted: 44
begin_hunk_0_@processEntity:bb.a
bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink45 = phi i64 [ 616, %bb.c ], [ 584, %bb.b ], [ 600, %bb.a ]
  %.sink = phi i64 [ 624, %bb.c ], [ 592, %bb.b ], [ 608, %bb.a ]
  %i.b = getelementptr i8, ptr %0, i64 %.sink     ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 %.sink45   ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !321  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90
  store ptr %i.f, ptr %i.b, align 8, !tbaa !321
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = tail call fastcc ptr @expat_malloc(ptr noundef nonnull %0, i64 noundef 48, i32 noundef 6382) ; 2 uses
  %.not40 = icmp eq ptr %i.g, null
  br i1 %.not40, label %bb.m, label %bb.g

end_hunk_0
begin_hunk_1_@processEntity:bb.a
entityTrackingOnOpen.exit:                        ; preds = %bb.j, %bb.k
  %i.aj = getelementptr i8, ptr %1, i64 20
  store i32 0, ptr %i.aj, align 4, !tbaa !265
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !321
  %i.al = getelementptr i8, ptr %.036, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !90
  store ptr %.036, ptr %i.c, align 8, !tbaa !321
  %i.am = getelementptr i8, ptr %.036, i64 24
  store ptr %1, ptr %i.am, align 8, !tbaa !263
  %i.an = getelementptr i8, ptr %.036, i64 40
end_hunk_1
