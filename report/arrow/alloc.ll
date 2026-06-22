inline.NumInlined: 139
inline.NumDeleted: 49
begin_hunk_0_@mi_free_generic_mt:bb.a
  %.0.i7 = phi i64 [ %i.o, %_mi_page_ptr_unalign.exit ], [ %i.t, %bb.d ] ; 3 uses
  %i.q = and i64 %.0.i7, -2
  store i64 %i.q, ptr %i.m, align 8, !tbaa !22
  %i.r = cmpxchg weak ptr %i.n, i64 %.0.i7, i64 %i.p acq_rel acquire, align 8 ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  %i.t = extractvalue { i64, i1 } %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.d, !llvm.loop !25

bb.e:                                             ; preds = %bb.d
  %i.u = trunc i64 %.0.i7 to i1
  br i1 %i.u, label %mi_free_block_mt.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @mi_free_try_collect_mt(ptr noundef nonnull %0, ptr noundef nonnull %i.m)
  br label %mi_free_block_mt.exit

mi_free_block_mt.exit:                            ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = lshr i64 %i.a, 16
  %i.c = and i64 %i.b, 8191
  %i.d = lshr i64 %i.a, 29
  %i.e = load ptr, ptr @_mi_page_map, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load atomic ptr, ptr %i.f monotonic, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 9 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %mi_free_block_local.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @llvm.thread.pointer.p0()
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = load atomic i64, ptr %i.i monotonic, align 8 ; 2 uses
  %i.n = xor i64 %i.m, %i.l                       ; 2 uses
  %i.o = icmp eq i64 %i.m, %i.l
  br i1 %i.o, label %bb.c, label %bb.e, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = ptrtoint ptr %i.q to i64
  store i64 %i.r, ptr %0, align 8, !tbaa !22
  store ptr %0, ptr %i.p, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !24
  %i.u = add i16 %i.t, -1                         ; 2 uses
  store i16 %i.u, ptr %i.s, align 8, !tbaa !24
  %i.v = icmp eq i16 %i.u, 0
  br i1 %i.v, label %bb.d, label %mi_free_block_local.exit, !prof !19

bb.d:                                             ; preds = %bb.c
  tail call void @_mi_page_retire(ptr noundef nonnull %i.i) #16
  br label %mi_free_block_local.exit

bb.e:                                             ; preds = %bb.b
  %i.w = icmp ult i64 %i.n, 4
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @mi_free_generic_local(ptr noundef nonnull %i.i, ptr noundef %0)
  br label %mi_free_block_local.exit

bb.g:                                             ; preds = %bb.e
  %i.x = and i64 %i.n, 3
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.aa = load atomic i64, ptr %i.z monotonic, align 8
  %i.ab = or i64 %i.a, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0.i = phi i64 [ %i.aa, %bb.h ], [ %i.af, %bb.i ] ; 3 uses
  %i.ac = and i64 %.0.i, -2
  store i64 %i.ac, ptr %0, align 8, !tbaa !22
  %i.ad = cmpxchg weak ptr %i.z, i64 %.0.i, i64 %i.ab acq_rel acquire, align 8 ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  %i.af = extractvalue { i64, i1 } %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.i, !llvm.loop !25

bb.j:                                             ; preds = %bb.i
  %i.ag = trunc i64 %.0.i to i1
  br i1 %i.ag, label %mi_free_block_local.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @mi_free_try_collect_mt(ptr noundef nonnull %i.i, ptr noundef nonnull %0)
  br label %mi_free_block_local.exit

bb.l:                                             ; preds = %bb.g
  tail call fastcc void @mi_free_generic_mt(ptr noundef nonnull %i.i, ptr noundef %0)
  br label %mi_free_block_local.exit

mi_free_block_local.exit:                         ; preds = %bb.k, %bb.j, %bb.d, %bb.c, %bb.l, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @mi_usable_size(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = lshr i64 %i.a, 16
  %i.c = and i64 %i.b, 8191
  %i.d = lshr i64 %i.a, 29
  %i.e = load ptr, ptr @_mi_page_map, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load atomic ptr, ptr %i.f monotonic, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_mi_usable_size.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.k = load atomic i64, ptr %i.i monotonic, align 8
  %i.l = and i64 %i.k, 2
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.i, i64 40
  %.val.i = load i64, ptr %i.m, align 8, !tbaa !20
  br label %_mi_usable_size.exit

bb.d:                                             ; preds = %bb.b
  %i.n = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef %i.i, ptr noundef %0)
  br label %_mi_usable_size.exit

_mi_usable_size.exit:                             ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.n, %bb.d ], [ %.val.i, %bb.c ], [ 0, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden void @mi_free_size(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  tail call void @mi_free(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_free_size_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  tail call void @mi_free(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_free_aligned(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  tail call void @mi_free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_mi_padding_shrink(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define hidden ptr @_mi_page_malloc_zero(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %2, i1 noundef zeroext %3, i64 noundef 0) #16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.c, align 8, !tbaa !22
  %i.f = inttoptr i64 %.val to ptr
  store ptr %i.f, ptr %i.b, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i16, ptr %i.g, align 8, !tbaa !24
  %i.i = add i16 %i.h, 1
  store i16 %i.i, ptr %i.g, align 8, !tbaa !24
  br i1 %3, label %bb.d, label %bb.g, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.k = load i8, ptr %i.j, align 1, !tbaa !31, !range !32, !noundef !33
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.c, align 8, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 8) ]
  %4 = load i64, ptr %i.a, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.c, i8 0, i64 %4, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.e ], [ %i.c, %bb.f ], [ %i.c, %bb.c ]
  ret ptr %.0
}

declare noalias ptr @_mi_malloc_generic(ptr noundef, i64 noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden ptr @_mi_page_malloc(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %2, i1 noundef zeroext false, i64 noundef 0) #16
  br label %_mi_page_malloc_zero.exit

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !22
  %i.e = inttoptr i64 %.val.i to ptr
  store ptr %i.e, ptr %i.a, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !24
  %i.h = add i16 %i.g, 1
  store i16 %i.h, ptr %i.f, align 8, !tbaa !24
  br label %_mi_page_malloc_zero.exit

_mi_page_malloc_zero.exit:                        ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_mi_page_malloc_zeroed(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %2, i1 noundef zeroext true, i64 noundef 0) #16
  br label %_mi_page_malloc_zero.exit

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.c, align 8, !tbaa !22
  %i.f = inttoptr i64 %.val.i to ptr
  store ptr %i.f, ptr %i.b, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i16, ptr %i.g, align 8, !tbaa !24
  %i.i = add i16 %i.h, 1
  store i16 %i.i, ptr %i.g, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.k = load i8, ptr %i.j, align 1, !tbaa !31, !range !32, !noundef !33
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.c, align 8, !tbaa !22
  br label %_mi_page_malloc_zero.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 8) ]
  %3 = load i64, ptr %i.a, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.c, i8 0, i64 %3, i1 false)
  br label %_mi_page_malloc_zero.exit

_mi_page_malloc_zero.exit:                        ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.d ], [ %i.c, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: inlinehint nounwind uwtable
define hidden noalias ptr @mi_heap_malloc_small(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = add i64 %1, 7
  %i.b = lshr i64 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0) #16
  br label %mi_heap_malloc_small_zero.exit

bb.c:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %i.g, align 8, !tbaa !22
  %i.j = inttoptr i64 %.val.i.i to ptr
  store ptr %i.j, ptr %i.f, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8, !tbaa !24
  %i.m = add i16 %i.l, 1
  store i16 %i.m, ptr %i.k, align 8, !tbaa !24
  br label %mi_heap_malloc_small_zero.exit

mi_heap_malloc_small_zero.exit:                   ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: inlinehint nounwind uwtable
define hidden noalias ptr @mi_malloc_small(i64 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = add i64 %0, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %0, i1 noundef zeroext false, i64 noundef 0) #16
  br label %mi_heap_malloc_small.exit

bb.c:                                             ; preds = %bb.a
  %.val.i.i.i = load i64, ptr %i.i, align 8, !tbaa !22
  %i.l = inttoptr i64 %.val.i.i.i to ptr
  store ptr %i.l, ptr %i.h, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !24
  %i.o = add i16 %i.n, 1
  store i16 %i.o, ptr %i.m, align 8, !tbaa !24
  br label %mi_heap_malloc_small.exit

mi_heap_malloc_small.exit:                        ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.i, %bb.c ]
  ret ptr %.0.i.i.i
}

; Function Attrs: inlinehint nounwind uwtable
define hidden ptr @_mi_heap_malloc_zero_ex(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  br i1 %i.a, label %bb.b, label %bb.h, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef 0) #16
  br label %mi_heap_malloc_small_zero.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.i, align 8, !tbaa !22
  %i.l = inttoptr i64 %.val.i.i to ptr
  store ptr %i.l, ptr %i.h, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !24
  %i.o = add i16 %i.n, 1
  store i16 %i.o, ptr %i.m, align 8, !tbaa !24
  br i1 %2, label %bb.e, label %mi_heap_malloc_small_zero.exit, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  %i.q = load i8, ptr %i.p, align 1, !tbaa !31, !range !32, !noundef !33
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.i, align 8, !tbaa !22
  br label %mi_heap_malloc_small_zero.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.i, i64 8) ]
  %4 = load i64, ptr %i.g, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %4, i1 false)
  br label %mi_heap_malloc_small_zero.exit

bb.h:                                             ; preds = %bb.a
  %i.s = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3) #16
  br label %mi_heap_malloc_small_zero.exit

mi_heap_malloc_small_zero.exit:                   ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.h
  %.0 = phi ptr [ %i.s, %bb.h ], [ %i.k, %bb.c ], [ %i.i, %bb.f ], [ %i.i, %bb.g ], [ %i.i, %bb.d ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define hidden ptr @_mi_heap_malloc_zero(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  br i1 %i.a, label %bb.b, label %bb.h, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef 0) #16
  br label %_mi_heap_malloc_zero_ex.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %i.i, align 8, !tbaa !22
  %i.l = inttoptr i64 %.val.i.i.i to ptr
  store ptr %i.l, ptr %i.h, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !24
  %i.o = add i16 %i.n, 1
  store i16 %i.o, ptr %i.m, align 8, !tbaa !24
  br i1 %2, label %bb.e, label %_mi_heap_malloc_zero_ex.exit, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  %i.q = load i8, ptr %i.p, align 1, !tbaa !31, !range !32, !noundef !33
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.i, align 8, !tbaa !22
  br label %_mi_heap_malloc_zero_ex.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.i, i64 8) ]
  %3 = load i64, ptr %i.g, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %3, i1 false)
  br label %_mi_heap_malloc_zero_ex.exit

bb.h:                                             ; preds = %bb.a
  %i.s = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef 0) #16
  br label %_mi_heap_malloc_zero_ex.exit

_mi_heap_malloc_zero_ex.exit:                     ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.s, %bb.h ], [ %i.k, %bb.c ], [ %i.i, %bb.f ], [ %i.i, %bb.g ], [ %i.i, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: inlinehint nounwind uwtable
define hidden noalias ptr @mi_heap_malloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  br i1 %i.a, label %bb.b, label %bb.e, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0) #16
  br label %_mi_heap_malloc_zero.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !22
  %i.k = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.k, ptr %i.g, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8, !tbaa !24
  %i.n = add i16 %i.m, 1
  store i16 %i.n, ptr %i.l, align 8, !tbaa !24
  br label %_mi_heap_malloc_zero.exit

bb.e:                                             ; preds = %bb.a
  %i.o = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0) #16
  br label %_mi_heap_malloc_zero.exit

_mi_heap_malloc_zero.exit:                        ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.o, %bb.e ], [ %i.j, %bb.c ], [ %i.h, %bb.d ]
  ret ptr %.0.i.i
}

; Function Attrs: inlinehint nounwind uwtable
define hidden noalias ptr @mi_malloc(i64 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = icmp ult i64 %0, 1025
  br i1 %i.c, label %bb.b, label %bb.e, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %0, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %0, i1 noundef zeroext false, i64 noundef 0) #16
  br label %mi_heap_malloc.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !22
  %i.m = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.m, ptr %i.i, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !24
  %i.p = add i16 %i.o, 1
  store i16 %i.p, ptr %i.n, align 8, !tbaa !24
  br label %mi_heap_malloc.exit

bb.e:                                             ; preds = %bb.a
  %i.q = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %0, i1 noundef zeroext false, i64 noundef 0) #16
  br label %mi_heap_malloc.exit

mi_heap_malloc.exit:                              ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.l, %bb.c ], [ %i.j, %bb.d ]
  ret ptr %.0.i.i.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_zalloc_small(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = add i64 %0, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %0, i1 noundef zeroext true, i64 noundef 0) #16
  br label %mi_heap_malloc_small_zero.exit

bb.c:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %i.j, align 8, !tbaa !22
  %i.m = inttoptr i64 %.val.i.i to ptr
  store ptr %i.m, ptr %i.i, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !24
  %i.p = add i16 %i.o, 1
  store i16 %i.p, ptr %i.n, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 57
  %i.r = load i8, ptr %i.q, align 1, !tbaa !31, !range !32, !noundef !33
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.j, align 8, !tbaa !22
  br label %mi_heap_malloc_small_zero.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "align"(ptr %i.j, i64 8) ]
  %1 = load i64, ptr %i.h, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.j, i8 0, i64 %1, i1 false)
  br label %mi_heap_malloc_small_zero.exit

mi_heap_malloc_small_zero.exit:                   ; preds = %bb.b, %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.l, %bb.b ], [ %i.j, %bb.d ], [ %i.j, %bb.e ]
  ret ptr %.0.i.i
}

; Function Attrs: inlinehint nounwind uwtable
define hidden noalias ptr @mi_heap_zalloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  br i1 %i.a, label %bb.b, label %bb.g, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext true, i64 noundef 0) #16
  br label %_mi_heap_malloc_zero.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !22
  %i.l = inttoptr i64 %.val.i.i.i.i to ptr
  store ptr %i.l, ptr %i.h, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !24
  %i.o = add i16 %i.n, 1
  store i16 %i.o, ptr %i.m, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  %i.q = load i8, ptr %i.p, align 1, !tbaa !31, !range !32, !noundef !33
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.i, align 8, !tbaa !22
  br label %_mi_heap_malloc_zero.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "align"(ptr %i.i, i64 8) ]
  %2 = load i64, ptr %i.g, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %2, i1 false)
  br label %_mi_heap_malloc_zero.exit

bb.g:                                             ; preds = %bb.a
  %i.s = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true, i64 noundef 0) #16
  br label %_mi_heap_malloc_zero.exit

_mi_heap_malloc_zero.exit:                        ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.s, %bb.g ], [ %i.k, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_zalloc(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = icmp ult i64 %0, 1025
  br i1 %i.c, label %bb.b, label %bb.g, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %0, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %0, i1 noundef zeroext true, i64 noundef 0) #16
  br label %mi_heap_zalloc.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !22
  %i.n = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.n, ptr %i.j, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !24
  %i.q = add i16 %i.p, 1
  store i16 %i.q, ptr %i.o, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 57
  %i.s = load i8, ptr %i.r, align 1, !tbaa !31, !range !32, !noundef !33
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.k, align 8, !tbaa !22
  br label %mi_heap_zalloc.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 8) ]
  %1 = load i64, ptr %i.i, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %1, i1 false)
  br label %mi_heap_zalloc.exit

bb.g:                                             ; preds = %bb.a
  %i.u = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %0, i1 noundef zeroext true, i64 noundef 0) #16
  br label %mi_heap_zalloc.exit

mi_heap_zalloc.exit:                              ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i.i.i = phi ptr [ %i.u, %bb.g ], [ %i.m, %bb.c ], [ %i.k, %bb.e ], [ %i.k, %bb.f ]
  ret ptr %.0.i.i.i
}

; Function Attrs: inlinehint nounwind uwtable
define hidden noalias ptr @mi_heap_calloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_count_size_overflow.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %2, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = icmp ult i64 %storemerge.i.ph, 1025
  br i1 %i.d, label %bb.d, label %bb.i, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.e = add nuw nsw i64 %storemerge.i.ph, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30   ; 7 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.f, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.n = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext true, i64 noundef 0) #16
  br label %mi_count_size_overflow.exit

bb.f:                                             ; preds = %bb.d
  %.val.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !22
  %i.o = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.o, ptr %i.k, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.q = load i16, ptr %i.p, align 8, !tbaa !24
  %i.r = add i16 %i.q, 1
  store i16 %i.r, ptr %i.p, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 57
  %i.t = load i8, ptr %i.s, align 1, !tbaa !31, !range !32, !noundef !33
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.l, align 8, !tbaa !22
  br label %mi_count_size_overflow.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "align"(ptr %i.l, i64 8) ]
  %3 = load i64, ptr %i.j, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %3, i1 false)
  br label %mi_count_size_overflow.exit

bb.i:                                             ; preds = %bb.c
  %i.v = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext true, i64 noundef 0) #16
  br label %mi_count_size_overflow.exit

mi_count_size_overflow.exit:                      ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.v, %bb.i ], [ %i.n, %bb.e ], [ %i.l, %bb.g ], [ %i.l, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_calloc.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = icmp ult i64 %storemerge.i.ph.i, 1025
  br i1 %i.f, label %bb.d, label %bb.i, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 7 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.f, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext true, i64 noundef 0) #16
  br label %mi_heap_calloc.exit

bb.f:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !22
  %i.q = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.q, ptr %i.m, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !24
  %i.t = add i16 %i.s, 1
  store i16 %i.t, ptr %i.r, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 57
  %i.v = load i8, ptr %i.u, align 1, !tbaa !31, !range !32, !noundef !33
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.n, align 8, !tbaa !22
  br label %mi_heap_calloc.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "align"(ptr %i.n, i64 8) ]
  %2 = load i64, ptr %i.l, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %2, i1 false)
  br label %mi_heap_calloc.exit

bb.i:                                             ; preds = %bb.c
  %i.x = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext true, i64 noundef 0) #16
  br label %mi_heap_calloc.exit

mi_heap_calloc.exit:                              ; preds = %bb.b, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i = phi ptr [ null, %bb.b ], [ %i.x, %bb.i ], [ %i.p, %bb.e ], [ %i.n, %bb.g ], [ %i.n, %bb.h ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_heap_mallocn(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_count_size_overflow.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %2, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = icmp ult i64 %storemerge.i.ph, 1025
  br i1 %i.d, label %bb.d, label %bb.g, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.e = add nuw nsw i64 %storemerge.i.ph, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext false, i64 noundef 0) #16
  br label %mi_count_size_overflow.exit

bb.f:                                             ; preds = %bb.d
  %.val.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !22
  %i.n = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.n, ptr %i.j, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !24
  %i.q = add i16 %i.p, 1
  store i16 %i.q, ptr %i.o, align 8, !tbaa !24
  br label %mi_count_size_overflow.exit

bb.g:                                             ; preds = %bb.c
  %i.r = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext false, i64 noundef 0) #16
  br label %mi_count_size_overflow.exit

mi_count_size_overflow.exit:                      ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.r, %bb.g ], [ %i.m, %bb.e ], [ %i.k, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_mallocn(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_mallocn.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = icmp ult i64 %storemerge.i.ph.i, 1025
  br i1 %i.f, label %bb.d, label %bb.g, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext false, i64 noundef 0) #16
  br label %mi_heap_mallocn.exit

bb.f:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !22
  %i.p = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.p, ptr %i.l, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !24
  %i.s = add i16 %i.r, 1
  store i16 %i.s, ptr %i.q, align 8, !tbaa !24
  br label %mi_heap_mallocn.exit

bb.g:                                             ; preds = %bb.c
  %i.t = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext false, i64 noundef 0) #16
  br label %mi_heap_mallocn.exit

mi_heap_mallocn.exit:                             ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %bb.b ], [ %i.t, %bb.g ], [ %i.o, %bb.e ], [ %i.m, %bb.f ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @mi_expand(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = lshr i64 %i.b, 16
  %i.d = and i64 %i.c, 8191
  %i.e = lshr i64 %i.b, 29
  %i.f = load ptr, ptr @_mi_page_map, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load atomic ptr, ptr %i.g monotonic, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_mi_usable_size.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.l = load atomic i64, ptr %i.j monotonic, align 8
  %i.m = and i64 %i.l, 2
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.j, i64 40
  %.val.i = load i64, ptr %i.n, align 8, !tbaa !20
  br label %_mi_usable_size.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef %i.j, ptr noundef nonnull %0)
  br label %_mi_usable_size.exit

_mi_usable_size.exit:                             ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.o, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %i.p = icmp ugt i64 %1, %.0.i
  %. = select i1 %i.p, ptr null, ptr %0
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_mi_usable_size.exit
  %.1 = phi ptr [ %., %_mi_usable_size.exit ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_mi_heap_realloc_zero(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.a, label %_mi_usable_size.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = lshr i64 %i.b, 16
  %i.d = and i64 %i.c, 8191
  %i.e = lshr i64 %i.b, 29
  %i.f = load ptr, ptr @_mi_page_map, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load atomic ptr, ptr %i.g monotonic, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_mi_usable_size.exit.thread, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.l = load atomic i64, ptr %i.j monotonic, align 8
  %i.m = and i64 %i.l, 2
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.j, i64 40
  %.val.i = load i64, ptr %i.n, align 8, !tbaa !20
  br label %_mi_usable_size.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef %i.j, ptr noundef nonnull %1)
  br label %_mi_usable_size.exit

_mi_usable_size.exit.thread:                      ; preds = %bb.a, %bb.b
  %.not52 = icmp ne i64 %2, 0
  br label %bb.f

_mi_usable_size.exit:                             ; preds = %bb.e, %bb.d
end_hunk_0
