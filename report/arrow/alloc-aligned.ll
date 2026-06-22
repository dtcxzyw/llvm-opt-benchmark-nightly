inline.NumInlined: 57
inline.NumDeleted: 20
begin_hunk_0_@mi_calloc_aligned_at:bb.a
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.v, %.thread.i.i.i ], [ %i.u, %bb.g ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_calloc_aligned(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %.not.i.i = icmp eq i64 %0, 1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_calloc_aligned.exit, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 5 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.not.i.i.i.i = icmp eq i64 %i.f, 1
  br i1 %or.cond.not.i.i.i.i, label %bb.d, label %mi_heap_calloc_aligned.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %storemerge.i.ph.i.i, 1025
  %i.h = icmp ule i64 %2, %storemerge.i.ph.i.i
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %.thread.i.i.i.i, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw nsw i64 %storemerge.i.ph.i.i, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i.i, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.q = add i64 %2, -1
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = and i64 %i.q, %i.r
  %.not36.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not36.i.i.i.i, label %bb.g, label %.thread.i.i.i.i, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @_mi_page_malloc_zeroed(ptr noundef nonnull %i.b, ptr noundef nonnull %i.n, i64 noundef %storemerge.i.ph.i.i) #8
  br label %mi_heap_calloc_aligned.exit

.thread.i.i.i.i:                                  ; preds = %bb.f, %bb.e, %bb.d
  %i.u = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_generic(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i.i, i64 noundef %2, i64 noundef 0, i1 noundef zeroext true)
  br label %mi_heap_calloc_aligned.exit

mi_heap_calloc_aligned.exit:                      ; preds = %bb.b, %bb.c, %bb.g, %.thread.i.i.i.i
  %.0.i.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.u, %.thread.i.i.i.i ], [ %i.t, %bb.g ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_realloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %3, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_mi_heap_realloc_zero(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %5) #8
  br label %mi_heap_malloc_zero_aligned_at.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %3)
  %or.cond.not.i = icmp eq i64 %i.d, 1
  br i1 %or.cond.not.i, label %bb.e, label %mi_heap_malloc_zero_aligned_at.exit, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.e = icmp ult i64 %2, 1025
  %i.f = icmp ule i64 %3, %2
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %bb.f, label %.thread.i, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.h = add nuw nsw i64 %2, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12   ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %.thread.i, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.o = add i64 %3, -1
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = add i64 %4, %i.p
  %i.r = and i64 %i.q, %i.o
  %.not36.i = icmp eq i64 %i.r, 0
  br i1 %.not36.i, label %bb.h, label %.thread.i, !prof !8

bb.h:                                             ; preds = %bb.g
  br i1 %5, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = tail call ptr @_mi_page_malloc_zeroed(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef %2) #8
  br label %mi_heap_malloc_zero_aligned_at.exit

bb.j:                                             ; preds = %bb.h
  %i.t = tail call ptr @_mi_page_malloc(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef %2) #8
  br label %mi_heap_malloc_zero_aligned_at.exit

.thread.i:                                        ; preds = %bb.g, %bb.f, %bb.e
  %i.u = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_generic(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5)
  br label %mi_heap_malloc_zero_aligned_at.exit

bb.k:                                             ; preds = %bb.c
  %i.v = tail call i64 @mi_usable_size(ptr noundef nonnull %1) #8 ; 5 uses
  %.not = icmp ugt i64 %2, %i.v                   ; 2 uses
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = lshr i64 %i.v, 1
  %i.x = sub i64 %i.v, %i.w
  %.not50 = icmp ult i64 %2, %i.x
  br i1 %.not50, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = ptrtoint ptr %1 to i64
  %i.z = add i64 %4, %i.y
  %i.aa = urem i64 %i.z, %3
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %mi_heap_malloc_zero_aligned_at.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ac = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %3)
  %or.cond.not.i.i = icmp eq i64 %i.ac, 1
  br i1 %or.cond.not.i.i, label %bb.o, label %mi_heap_malloc_zero_aligned_at.exit, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.ad = icmp ult i64 %2, 1025
  %i.ae = icmp ule i64 %3, %2
  %i.af = and i1 %i.ad, %i.ae
  br i1 %i.af, label %bb.p, label %.thread.i.i, !prof !8

bb.p:                                             ; preds = %bb.o
  %i.ag = add nuw nsw i64 %2, 7
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !9  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.q, !prof !21

bb.q:                                             ; preds = %bb.p
  %i.an = add i64 %3, -1
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = add i64 %4, %i.ao
  %i.aq = and i64 %i.ap, %i.an
  %.not36.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not36.i.i, label %bb.r, label %.thread.i.i, !prof !8

bb.r:                                             ; preds = %bb.q
  %i.ar = tail call ptr @_mi_page_malloc(ptr noundef nonnull %0, ptr noundef nonnull %i.ak, i64 noundef %2) #8
  br label %mi_heap_malloc_aligned_at.exit

.thread.i.i:                                      ; preds = %bb.q, %bb.p, %bb.o
  %i.as = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_generic(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false)
  br label %mi_heap_malloc_aligned_at.exit

mi_heap_malloc_aligned_at.exit:                   ; preds = %bb.r, %.thread.i.i
  %.3.i.i = phi ptr [ %i.ar, %bb.r ], [ %i.as, %.thread.i.i ] ; 5 uses
  %.not51 = icmp eq ptr %.3.i.i, null
  br i1 %.not51, label %mi_heap_malloc_zero_aligned_at.exit, label %bb.s

bb.s:                                             ; preds = %mi_heap_malloc_aligned_at.exit
  %or.cond = and i1 %5, %.not
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.at = tail call i64 @llvm.usub.sat.i64(i64 %i.v, i64 8) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 %i.at
  %i.av = sub i64 %2, %i.at
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.au, i8 0, i64 %i.av, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.assume(i1 true) [ "align"(ptr %.3.i.i, i64 8), "align"(ptr %1, i64 8) ]
  %6 = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.v)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.3.i.i, ptr nonnull readonly align 8 %1, i64 %6, i1 false)
  tail call void @mi_free(ptr noundef nonnull %1) #8
  br label %mi_heap_malloc_zero_aligned_at.exit

mi_heap_malloc_zero_aligned_at.exit:              ; preds = %bb.n, %.thread.i, %bb.j, %bb.i, %bb.d, %bb.m, %bb.u, %mi_heap_malloc_aligned_at.exit, %bb.b
  %.1 = phi ptr [ %i.b, %bb.b ], [ null, %mi_heap_malloc_aligned_at.exit ], [ %1, %bb.m ], [ %.3.i.i, %bb.u ], [ null, %bb.d ], [ %i.u, %.thread.i ], [ %i.t, %bb.j ], [ %i.s, %bb.i ], [ null, %bb.n ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_realloc_aligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %3, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_mi_heap_realloc_zero(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false) #8
  br label %mi_heap_realloc_zero_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = urem i64 %i.c, %3
  %i.e = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.d, i1 noundef zeroext false)
  br label %mi_heap_realloc_zero_aligned.exit

mi_heap_realloc_zero_aligned.exit:                ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_rezalloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_rezalloc_aligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %3, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_mi_heap_realloc_zero(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext true) #8
  br label %mi_heap_realloc_zero_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = urem i64 %i.c, %3
  %i.e = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.d, i1 noundef zeroext true)
  br label %mi_heap_realloc_zero_aligned.exit

mi_heap_realloc_zero_aligned.exit:                ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_recalloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_count_size_overflow.exit, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %3, %bb.a ], [ %i.c, %bb.b ]
  %i.d = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i64 noundef %4, i64 noundef %5, i1 noundef zeroext true)
  br label %mi_count_size_overflow.exit

mi_count_size_overflow.exit:                      ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_recalloc_aligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_count_size_overflow.exit, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %3, %bb.a ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = icmp ult i64 %4, 9
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @_mi_heap_realloc_zero(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i1 noundef zeroext true) #8
  br label %mi_count_size_overflow.exit

bb.e:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %1 to i64
  %i.g = urem i64 %i.f, %4
  %i.h = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i64 noundef %4, i64 noundef %i.g, i1 noundef zeroext true)
  br label %mi_count_size_overflow.exit

mi_count_size_overflow.exit:                      ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.e, %bb.d ], [ %i.h, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_realloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext false)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_realloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp ult i64 %2, 9
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #8
  br label %mi_heap_realloc_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64
  %i.f = urem i64 %i.e, %2
  %i.g = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %i.f, i1 noundef zeroext false)
  br label %mi_heap_realloc_aligned.exit

mi_heap_realloc_aligned.exit:                     ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_rezalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_rezalloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp ult i64 %2, 9
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #8
  br label %mi_heap_rezalloc_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64
  %i.f = urem i64 %i.e, %2
  %i.g = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %i.f, i1 noundef zeroext true)
  br label %mi_heap_rezalloc_aligned.exit

mi_heap_rezalloc_aligned.exit:                    ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_recalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_recalloc_aligned_at.exit, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ]
  %i.f = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true)
  br label %mi_heap_recalloc_aligned_at.exit

mi_heap_recalloc_aligned_at.exit:                 ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  ret ptr %.0.i
}

end_hunk_0
