Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/obmalloc?download=true
inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@mi_is_in_heap_region:bb.a
  %i.au = getelementptr i8, ptr %i.aq, i64 %i.at
  %i.av = icmp ugt ptr %i.au, %0
  br i1 %i.av, label %mi_is_valid_pointer.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.k, %bb.j, %.lr.ph.i.i
  %i.aw = add nuw i64 %.01725.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aw, %i.al
  br i1 %exitcond.not.i.i, label %mi_is_valid_pointer.exit, label %.lr.ph.i.i, !llvm.loop !9

mi_is_valid_pointer.exit:                         ; preds = %bb.k, %.critedge.i.i, %bb.i, %_mi_segment_of.exit.i, %_mi_segment_of.exit.thread.i
  %i.ax = phi i1 [ true, %_mi_segment_of.exit.i ], [ true, %bb.i ], [ false, %_mi_segment_of.exit.thread.i ], [ true, %bb.k ], [ false, %.critedge.i.i ]
  ret i1 %i.ax
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 23) i32 @mi_posix_memalign(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = and i64 %1, 7
  %.not = icmp eq i64 %i.b, 0
  %or.cond13.not21.not25 = and i1 %i.a, %.not
  %i.c = icmp ne i64 %1, 0
  %or.cond14.not23 = and i1 %i.c, %or.cond13.not21.not25
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  %or.cond19 = select i1 %or.cond14.not23, i1 %i.e, i1 false
  br i1 %or.cond19, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !95   ; 3 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.i = icmp samesign ult i64 %i.h, 2
  %.not.i.i = icmp uge i64 %2, %1
  %or.cond.not.i.i = and i1 %.not.i.i, %i.i
  %i.j = icmp ult i64 %2, 1025
  %i.k = and i1 %i.j, %or.cond.not.i.i
  br i1 %i.k, label %bb.c, label %bb.e, !prof !96

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw nsw i64 %2, 7
  %i.m = lshr i64 %i.l, 3
  %i.n = getelementptr i8, ptr %i.g, i64 8
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !94   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16       ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60   ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %mi_malloc_aligned.exit.thread, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.t = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 0), !inline_history !91
  br label %mi_malloc_aligned.exit

mi_malloc_aligned.exit.thread:                    ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.p, i64 24       ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !62
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !62
  %i.x = load atomic i64, ptr %i.r monotonic, align 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.q, align 8, !tbaa !60
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.z = tail call noalias ptr @mi_heap_malloc_aligned_at(ptr noundef %i.g, i64 noundef %2, i64 noundef %1, i64 noundef 0)
  br label %mi_malloc_aligned.exit

mi_malloc_aligned.exit:                           ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.z, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  %i.aa = icmp eq ptr %.0.i.i, null
  %i.ab = icmp ne i64 %2, 0
  %or.cond = and i1 %i.ab, %i.aa
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %mi_malloc_aligned.exit.thread, %mi_malloc_aligned.exit
  %.0.i.i17 = phi ptr [ %i.r, %mi_malloc_aligned.exit.thread ], [ %.0.i.i, %mi_malloc_aligned.exit ]
  store ptr %.0.i.i17, ptr %0, align 8, !tbaa !84
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %mi_malloc_aligned.exit, %bb.a
  %.1 = phi i32 [ 0, %bb.f ], [ 22, %bb.a ], [ 12, %mi_malloc_aligned.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_memalign(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 3 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %or.cond.not16.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.not16.i.i, label %bb.b, label %mi_malloc_aligned.exit, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  %.not.i.i = icmp uge i64 %1, %0
  %or.cond.not.i.i = and i1 %.not.i.i, %i.e
  %i.f = icmp ult i64 %1, 1025
  %i.g = and i1 %i.f, %or.cond.not.i.i
  br i1 %i.g, label %bb.c, label %bb.f, !prof !96

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i64 %1, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr i8, ptr %i.b, i64 8
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !94   ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16       ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60   ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0), !inline_history !91
  br label %mi_malloc_aligned.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.l, i64 24       ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !62
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !62
  %i.t = load atomic i64, ptr %i.n monotonic, align 8
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.m, align 8, !tbaa !60
  br label %mi_malloc_aligned.exit

bb.f:                                             ; preds = %bb.b
  %i.v = tail call noalias ptr @mi_heap_malloc_aligned_at(ptr noundef %i.b, i64 noundef %1, i64 noundef %0, i64 noundef 0)
  br label %mi_malloc_aligned.exit

mi_malloc_aligned.exit:                           ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.v, %bb.f ], [ null, %bb.a ], [ %i.n, %bb.e ], [ %i.p, %bb.d ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_valloc(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !121 ; 3 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 3 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.a)
  %or.cond.not16.i.i.i = icmp eq i64 %i.d, 1
  br i1 %or.cond.not16.i.i.i, label %bb.b, label %mi_memalign.exit, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %i.f = icmp samesign ult i64 %i.e, 2
  %.not.i.i.i = icmp uge i64 %0, %i.a
  %or.cond.not.i.i.i = and i1 %i.f, %.not.i.i.i
  %i.g = icmp ult i64 %0, 1025
  %i.h = and i1 %i.g, %or.cond.not.i.i.i
  br i1 %i.h, label %bb.c, label %bb.f, !prof !96

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw nsw i64 %0, 7
  %i.j = lshr i64 %i.i, 3
  %i.k = getelementptr i8, ptr %i.c, i64 8
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60   ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.e, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.c, i64 noundef %0, i1 noundef zeroext false, i64 noundef 0), !inline_history !91
  br label %mi_memalign.exit

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !62
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !62
  %i.u = load atomic i64, ptr %i.o monotonic, align 8
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.n, align 8, !tbaa !60
  br label %mi_memalign.exit

bb.f:                                             ; preds = %bb.b
  %i.w = tail call noalias ptr @mi_heap_malloc_aligned_at(ptr noundef %i.c, i64 noundef %0, i64 noundef %i.a, i64 noundef 0)
  br label %mi_memalign.exit

mi_memalign.exit:                                 ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.w, %bb.f ], [ null, %bb.a ], [ %i.o, %bb.e ], [ %i.q, %bb.d ]
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_mi_os_page_size() local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !121
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_pvalloc(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !121 ; 7 uses
  %i.b = xor i64 %i.a, -1
  %.not = icmp ult i64 %0, %i.b
  %1 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.a)
  %.not.a = icmp samesign ult i64 %1, 2
  %or.cond = select i1 %.not, i1 %.not.a, i1 false
  br i1 %or.cond, label %_mi_align_up.exit, label %mi_malloc_aligned.exit

_mi_align_up.exit:                                ; preds = %bb.a
  %i.c = add i64 %0, -1
  %i.d = add i64 %i.c, %i.a
  %i.e = sub i64 0, %i.a
  %i.f = and i64 %i.d, %i.e                       ; 6 uses
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 3 uses
  %or.cond.not16.i.i = icmp eq i64 %i.a, 0
  br i1 %or.cond.not16.i.i, label %mi_malloc_aligned.exit, label %bb.b, !prof !474

bb.b:                                             ; preds = %_mi_align_up.exit
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.f)
  %i.j = icmp samesign ult i64 %i.i, 2
  %.not.i.i = icmp uge i64 %i.f, %i.a
  %or.cond.not.i.i = and i1 %.not.i.i, %i.j
  %i.k = icmp ult i64 %i.f, 1025
  %i.l = and i1 %i.k, %or.cond.not.i.i
  br i1 %i.l, label %bb.c, label %bb.f, !prof !96

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw nsw i64 %i.f, 7
  %i.n = lshr i64 %i.m, 3
  %i.o = getelementptr i8, ptr %i.h, i64 8
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !94   ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16       ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60   ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %bb.e, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.h, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 0), !inline_history !91
  br label %mi_malloc_aligned.exit

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.q, i64 24       ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !62
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !62
  %i.y = load atomic i64, ptr %i.s monotonic, align 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.r, align 8, !tbaa !60
  br label %mi_malloc_aligned.exit

bb.f:                                             ; preds = %bb.b
  %i.aa = tail call noalias ptr @mi_heap_malloc_aligned_at(ptr noundef %i.h, i64 noundef %i.f, i64 noundef %i.a, i64 noundef 0)
  br label %mi_malloc_aligned.exit

mi_malloc_aligned.exit:                           ; preds = %bb.f, %bb.e, %bb.d, %_mi_align_up.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.aa, %bb.f ], [ null, %_mi_align_up.exit ], [ %i.s, %bb.e ], [ %i.u, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_aligned_alloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 3 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %or.cond.not16.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.not16.i.i, label %bb.b, label %mi_malloc_aligned.exit, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  %.not.i.i = icmp uge i64 %1, %0
  %or.cond.not.i.i = and i1 %.not.i.i, %i.e
  %i.f = icmp ult i64 %1, 1025
  %i.g = and i1 %i.f, %or.cond.not.i.i
  br i1 %i.g, label %bb.c, label %bb.f, !prof !96

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i64 %1, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr i8, ptr %i.b, i64 8
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !94   ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16       ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60   ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0), !inline_history !91
  br label %mi_malloc_aligned.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.l, i64 24       ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !62
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !62
  %i.t = load atomic i64, ptr %i.n monotonic, align 8
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.m, align 8, !tbaa !60
  br label %mi_malloc_aligned.exit

bb.f:                                             ; preds = %bb.b
  %i.v = tail call noalias ptr @mi_heap_malloc_aligned_at(ptr noundef %i.b, i64 noundef %1, i64 noundef %0, i64 noundef 0)
  br label %mi_malloc_aligned.exit

mi_malloc_aligned.exit:                           ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.v, %bb.f ], [ null, %bb.a ], [ %i.n, %bb.e ], [ %i.p, %bb.d ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  %.not.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i, label %mi_reallocn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_reallocn.exit.thread, label %mi_reallocn.exit, !prof !61

mi_reallocn.exit:                                 ; preds = %bb.a, %bb.b
  %storemerge.i.ph.i.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ]
  %i.f = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i.i, i1 noundef zeroext false) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %mi_reallocn.exit.thread, label %bb.c

mi_reallocn.exit.thread:                          ; preds = %bb.b, %mi_reallocn.exit
  %i.h = tail call ptr @__errno_location() #63
  store i32 12, ptr %i.h, align 4, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %mi_reallocn.exit.thread, %mi_reallocn.exit
  %.0.i.i5 = phi ptr [ null, %mi_reallocn.exit.thread ], [ %i.f, %mi_reallocn.exit ]
  ret ptr %.0.i.i5
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 23) i32 @mi_reallocarr(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #63
  store i32 22, ptr %i.b, align 4, !tbaa !54
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !84
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95
  %.not.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i, label %mi_reallocn.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %bb.e, label %mi_reallocn.exit.i, !prof !61

mi_reallocn.exit.i:                               ; preds = %bb.d, %bb.c
  %storemerge.i.ph.i.i.i = phi i64 [ %2, %bb.c ], [ %i.h, %bb.d ]
  %i.i = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.e, ptr noundef %i.c, i64 noundef %storemerge.i.ph.i.i.i, i1 noundef zeroext false) ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %mi_reallocarray.exit

bb.e:                                             ; preds = %bb.d, %mi_reallocn.exit.i
  %i.k = tail call ptr @__errno_location() #63
  store i32 12, ptr %i.k, align 4, !tbaa !54
  br label %bb.f

mi_reallocarray.exit:                             ; preds = %mi_reallocn.exit.i
  store ptr %i.i, ptr %0, align 8, !tbaa !84
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %mi_reallocarray.exit, %bb.b
  %.1 = phi i32 [ 22, %bb.b ], [ 12, %bb.e ], [ 0, %mi_reallocarray.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @mi__expand(ptr noundef %0, i64 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = and i64 %i.c, -33554432                  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = sub i64 %i.b, %i.d
  %i.g = lshr i64 %i.f, 16
  %i.h = getelementptr i8, ptr %i.e, i64 264
  %i.i = getelementptr [80 x i8], ptr %i.h, i64 %i.g ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !100
  %i.l = zext i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr i8, ptr %i.i, i64 %i.m     ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 14
  %.val.i.i = load i8, ptr %i.o, align 2
  %i.p = and i8 %.val.i.i, 2
  %.not.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i, label %bb.c, label %bb.e, !prof !96

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.n, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !65   ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %_mi_segment_page_start.exit.i.i.i.i.i, !prof !96

bb.d:                                             ; preds = %bb.c
  %i.t = zext nneg i32 %i.r to i64
  br label %_mi_usable_size.exit.i

_mi_segment_page_start.exit.i.i.i.i.i:            ; preds = %bb.c
  %i.u = load i32, ptr %i.n, align 8, !tbaa !93
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 16
  br label %_mi_usable_size.exit.i

bb.e:                                             ; preds = %bb.b
  %i.x = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef nonnull %i.e, ptr noundef %i.n, ptr noundef nonnull %0)
  br label %_mi_usable_size.exit.i

_mi_usable_size.exit.i:                           ; preds = %bb.e, %_mi_segment_page_start.exit.i.i.i.i.i, %bb.d
  %.1.i.i = phi i64 [ %i.w, %_mi_segment_page_start.exit.i.i.i.i.i ], [ %i.x, %bb.e ], [ %i.t, %bb.d ]
  %i.y = icmp ugt i64 %1, %.1.i.i
  br i1 %i.y, label %select.unfold, label %mi_expand.exit

select.unfold:                                    ; preds = %_mi_usable_size.exit.i, %bb.a
  %i.z = tail call ptr @__errno_location() #63
  store i32 12, ptr %i.z, align 4, !tbaa !54
  br label %mi_expand.exit

mi_expand.exit:                                   ; preds = %_mi_usable_size.exit.i, %select.unfold
  %.1.i4 = phi ptr [ null, %select.unfold ], [ %0, %_mi_usable_size.exit.i ]
  ret ptr %.1.i4
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_wcsdup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
end_hunk_0
begin_hunk_1_@mi_arena_purge:bb.a
  %.038.i32.unr = phi i64 [ %i.ci, %.lr.ph.i30.preheader ], [ %i.dm, %.lr.ph.i30.prol ]
  %i.do = icmp ult i64 %i.ch, 512
  br i1 %i.do, label %._crit_edge.i38, label %.lr.ph.i30

._crit_edge.thread.i46:                           ; preds = %.thread.thread, %bb.t, %.thread
  %i.dp = phi ptr [ %i.de, %.thread ], [ %i.dd, %.thread.thread ], [ %i.de, %bb.t ]
  %.034.ph.i47 = phi i64 [ -1, %.thread ], [ 0, %.thread.thread ], [ %i.di, %bb.t ]
  %i.dq = getelementptr [8 x i8], ptr %i.dp, i64 %i.h
  %i.dr = atomicrmw and ptr %i.dq, i64 %.034.ph.i47 acq_rel, align 8 ; 0 uses
  br label %_mi_bitmap_unclaim_across.exit49

.lr.ph.i30:                                       ; preds = %.lr.ph.i30.prol.loopexit, %.lr.ph.i30
  %.02039.i31 = phi ptr [ %.020.i36.7, %.lr.ph.i30 ], [ %.02039.i31.unr, %.lr.ph.i30.prol.loopexit ] ; 9 uses
  %.038.i32 = phi i64 [ %i.dz, %.lr.ph.i30 ], [ %.038.i32.unr, %.lr.ph.i30.prol.loopexit ]
  %i.ds = atomicrmw xchg ptr %.02039.i31, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36 = getelementptr i8, ptr %.02039.i31, i64 8
  %i.dt = atomicrmw xchg ptr %.020.i36, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36.1 = getelementptr i8, ptr %.02039.i31, i64 16
  %i.du = atomicrmw xchg ptr %.020.i36.1, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36.2 = getelementptr i8, ptr %.02039.i31, i64 24
  %i.dv = atomicrmw xchg ptr %.020.i36.2, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36.3 = getelementptr i8, ptr %.02039.i31, i64 32
  %i.dw = atomicrmw xchg ptr %.020.i36.3, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36.4 = getelementptr i8, ptr %.02039.i31, i64 40
  %i.dx = atomicrmw xchg ptr %.020.i36.4, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36.5 = getelementptr i8, ptr %.02039.i31, i64 48
  %i.dy = atomicrmw xchg ptr %.020.i36.5, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36.6 = getelementptr i8, ptr %.02039.i31, i64 56
  %i.dz = add nsw i64 %.038.i32, -8               ; 2 uses
  %i.ea = atomicrmw xchg ptr %.020.i36.6, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i36.7 = getelementptr i8, ptr %.02039.i31, i64 64 ; 2 uses
  %.not22.i37.7 = icmp eq i64 %i.dz, 0
  br i1 %.not22.i37.7, label %._crit_edge.i38, label %.lr.ph.i30, !llvm.loop !11

._crit_edge.i38:                                  ; preds = %.lr.ph.i30.prol.loopexit, %.lr.ph.i30, %mi_bitmap_mask_.exit24.i.i23
  %.020.lcssa.i40 = phi ptr [ %.02035.i28, %mi_bitmap_mask_.exit24.i.i23 ], [ %.020.i36.lcssa.unr, %.lr.ph.i30.prol.loopexit ], [ %.020.i36.7, %.lr.ph.i30 ]
  br i1 %.not23.i, label %_mi_bitmap_unclaim_across.exit49, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i38
  %i.eb = atomicrmw and ptr %.020.lcssa.i40, i64 %notmask.i25.i.i acq_rel, align 8 ; 0 uses
  br label %_mi_bitmap_unclaim_across.exit49

_mi_bitmap_unclaim_across.exit49:                 ; preds = %_mi_bitmap_unclaim_across.exit.thread.thread, %bb.u, %._crit_edge.i38, %._crit_edge.thread.i46, %_mi_bitmap_unclaim_across.exit.thread, %_mi_bitmap_unclaim_across.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #27

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal void @mi_process_done() #2 {
bb.a:
  %i.a = load i8, ptr @_mi_process_is_initialized, align 1, !tbaa !142, !range !86, !noundef !87
  %i.b = trunc nuw i8 %i.a to i1
  %.not = xor i1 %i.b, true
  %.b = load i1, ptr @mi_process_done.process_done, align 1
  %or.cond = select i1 %.not, i1 true, i1 %.b
  br i1 %or.cond, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @mi_process_done.process_done, align 1
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  tail call fastcc void @mi_heap_collect_ex(ptr noundef %i.d, i32 noundef 1)
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 712), align 8, !tbaa !133
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %mi_option_is_enabled.exit, !prof !61

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 704)), !inline_history !141
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %bb.b, %bb.c
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 704), align 16, !tbaa !135
  %.not4 = icmp eq i64 %i.g, 0
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %mi_option_is_enabled.exit
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !95
  tail call fastcc void @mi_heap_collect_ex(ptr noundef %i.h, i32 noundef 1)
  tail call void @_mi_heap_unsafe_destroy_all()
  tail call fastcc void @mi_heap_main_init()
  %i.i = load ptr, ptr @_mi_heap_main, align 8, !tbaa !72
  %i.j = getelementptr i8, ptr %i.i, i64 968
  tail call void @_mi_arena_unsafe_destroy_all(ptr noundef %i.j)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %mi_option_is_enabled.exit
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 40), align 8, !tbaa !133
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %mi_option_is_enabled.exit2, !prof !61

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 32)), !inline_history !141
  br label %mi_option_is_enabled.exit2

mi_option_is_enabled.exit2:                       ; preds = %bb.e, %bb.f
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 32), align 16, !tbaa !135
  %.not5 = icmp eq i64 %i.m, 0
  br i1 %.not5, label %bb.g, label %bb.i

bb.g:                                             ; preds = %mi_option_is_enabled.exit2
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 72), align 8, !tbaa !133
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %mi_option_is_enabled.exit3, !prof !61

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 64)), !inline_history !141
  br label %mi_option_is_enabled.exit3

mi_option_is_enabled.exit3:                       ; preds = %bb.g, %bb.h
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 64), align 16, !tbaa !135
  %.not6 = icmp eq i64 %i.p, 0
  br i1 %.not6, label %bb.m, label %bb.i

bb.i:                                             ; preds = %mi_option_is_enabled.exit3, %mi_option_is_enabled.exit2
  tail call void @mi_process_init(), !inline_history !21
  %i.q = tail call fastcc zeroext i1 @_mi_heap_init(), !inline_history !21
  br i1 %i.q, label %mi_stats_print.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.s = add i64 %i.r, 1                          ; 2 uses
  %i.t = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.0.i.i.i.i.i.i = phi i64 [ %i.t, %bb.j ], [ %i.x, %bb.l ] ; 2 uses
  %i.u = icmp slt i64 %.0.i.i.i.i.i.i, %i.s
  br i1 %i.u, label %bb.l, label %_mi_stat_increase.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.v = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i.i.i.i, i64 %i.s release monotonic, align 8 ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 1
  %i.x = extractvalue { i64, i1 } %i.v, 0
  br i1 %i.w, label %_mi_stat_increase.exit.i.i.i, label %bb.k, !llvm.loop !10

_mi_stat_increase.exit.i.i.i:                     ; preds = %bb.l, %bb.k
  %i.y = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 288), i64 1 monotonic, align 8 ; 0 uses
  %i.z = atomicrmw add ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_stats_print.exit

mi_stats_print.exit:                              ; preds = %bb.i, %_mi_stat_increase.exit.i.i.i
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72
  %i.ac = getelementptr i8, ptr %i.ab, i64 968
  tail call fastcc void @mi_stats_merge_from(ptr noundef %i.ac)
  tail call fastcc void @_mi_stats_print(ptr noundef nonnull @_mi_stats_main, ptr noundef null, ptr noundef null)
  br label %bb.m

bb.m:                                             ; preds = %mi_stats_print.exit, %mi_option_is_enabled.exit3
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2848), align 8, !tbaa !167
  tail call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.53, i64 noundef %i.ad)
  store i1 false, ptr @os_preloading, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mi_out_buf_stderr(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %mi_out_buf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !101
  %.not3.i = icmp eq i8 %i.a, 0
  br i1 %.not3.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !190
  %i.c = tail call i32 @fputs(ptr noundef nonnull readonly %0, ptr noundef %i.b) #64 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = load atomic i64, ptr @out_len monotonic, align 8
  %i.e = icmp ugt i64 %i.d, 32767
  br i1 %i.e, label %mi_out_buf.exit, label %_mi_strlen.exit.i

_mi_strlen.exit.i:                                ; preds = %bb.d
  %strlen.i.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %0) ; 4 uses
  %i.f = icmp eq i64 %strlen.i.i, 0
  br i1 %i.f, label %mi_out_buf.exit, label %bb.e

bb.e:                                             ; preds = %_mi_strlen.exit.i
  %i.g = atomicrmw add ptr @out_len, i64 %strlen.i.i acq_rel, align 8 ; 4 uses
  %i.h = icmp ugt i64 %i.g, 32767
  br i1 %i.h, label %mi_out_buf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add i64 %i.g, %strlen.i.i
  %i.j = icmp ugt i64 %i.i, 32767
  %2 = xor i64 %i.g, 32767
  %spec.select.i = select i1 %i.j, i64 %2, i64 %strlen.i.i
  %i.k = getelementptr i8, ptr @out_buf, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull readonly align 1 %0, i64 %spec.select.i, i1 false)
  br label %mi_out_buf.exit

mi_out_buf.exit:                                  ; preds = %bb.a, %bb.d, %_mi_strlen.exit.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal void @mi_out_buf(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree readnone captures(none) %1) unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i64, ptr @out_len monotonic, align 8
  %i.c = icmp ugt i64 %i.b, 32767
  br i1 %i.c, label %bb.e, label %_mi_strlen.exit

_mi_strlen.exit:                                  ; preds = %bb.b
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %0) ; 4 uses
  %i.d = icmp eq i64 %strlen.i, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_mi_strlen.exit
  %i.e = atomicrmw add ptr @out_len, i64 %strlen.i acq_rel, align 8 ; 4 uses
  %i.f = icmp ugt i64 %i.e, 32767
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add i64 %i.e, %strlen.i
  %i.h = icmp ugt i64 %i.g, 32767
  %2 = xor i64 %i.e, 32767
  %spec.select = select i1 %i.h, i64 %2, i64 %strlen.i
  %i.i = getelementptr i8, ptr @out_buf, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull readonly align 1 %0, i64 %spec.select, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_mi_strlen.exit, %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @mi_recurse_enter_prim() unnamed_addr #53 {
bb.a:
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @recurse) ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !142, !range !86, !noundef !87
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 1, !tbaa !142
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = xor i1 %i.c, true
  ret i1 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_recurse_exit_prim() unnamed_addr #54 {
bb.a:
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @recurse)
  store i8 0, ptr %i.a, align 1, !tbaa !142
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #37

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #55

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_large_huge_page_alloc(ptr noundef %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 524288
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !121
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %1, 2097152
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i64 %1, 8388608
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i64 %1, 33554432
  %..i = select i1 %i.e, i64 1048576, i64 4194304
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i = phi i64 [ %i.b, %bb.b ], [ 262144, %bb.d ], [ 65536, %bb.c ], [ %..i, %bb.e ] ; 5 uses
  %i.f = xor i64 %.0.i, -1
  %.not.i = icmp ult i64 %1, %i.f
  br i1 %.not.i, label %bb.g, label %_mi_os_good_alloc_size.exit, !prof !96

bb.g:                                             ; preds = %bb.f
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i)
  %i.h = icmp samesign ult i64 %i.g, 2
  %i.i = add nsw i64 %1, -1
  %i.j = add i64 %i.i, %.0.i                      ; 3 uses
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = sub i64 0, %.0.i
  %i.l = and i64 %i.j, %i.k
  br label %_mi_os_good_alloc_size.exit

bb.i:                                             ; preds = %bb.g
  %i.m = urem i64 %i.j, %.0.i
  %i.n = sub nuw i64 %i.j, %i.m
  br label %_mi_os_good_alloc_size.exit

_mi_os_good_alloc_size.exit:                      ; preds = %bb.f, %bb.h, %bb.i
  %.010.i = phi i64 [ %1, %bb.f ], [ %i.l, %bb.h ], [ %i.n, %bb.i ] ; 3 uses
  %i.o = icmp ugt i64 %.010.i, 16777216
  %i.p = icmp ne i64 %2, 0
  %i.q = or i1 %i.p, %i.o
  %i.r = add i64 %.010.i, 7
  %i.s = select i1 %i.q, i64 2147483655, i64 %i.r ; 4 uses
  %i.t = lshr i64 %i.s, 3                         ; 2 uses
  %i.u = icmp ult i64 %i.s, 16
  br i1 %i.u, label %mi_page_queue.exit, label %bb.j

bb.j:                                             ; preds = %_mi_os_good_alloc_size.exit
  %i.v = icmp ult i64 %i.s, 72
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = add nuw nsw i64 %i.t, 1
  %i.x = and i64 %i.w, 30
  br label %mi_page_queue.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp ugt i64 %i.s, 131079
  br i1 %i.y, label %mi_page_queue.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = add nsw i64 %i.t, -1                     ; 2 uses
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 false) ; 2 uses
  %i.ab = sub nsw i64 61, %i.aa
  %i.ac = lshr i64 %i.z, %i.ab
  %i.ad = and i64 %i.ac, 3
  %i.ae = shl nuw nsw i64 %i.aa, 2
  %reass.sub = sub nsw i64 %i.ad, %i.ae
  %i.af = add nsw i64 %reass.sub, 249
  %i.ag = and i64 %i.af, 255
  br label %mi_page_queue.exit

mi_page_queue.exit:                               ; preds = %_mi_os_good_alloc_size.exit, %bb.k, %bb.l, %bb.m
  %.0.i.i.i = phi i64 [ %i.ag, %bb.m ], [ %i.x, %bb.k ], [ 1, %_mi_os_good_alloc_size.exit ], [ 73, %bb.l ]
  %i.ah = getelementptr i8, ptr %0, i64 1040
  %i.ai = getelementptr [24 x i8], ptr %i.ah, i64 %.0.i.i.i
  %i.aj = tail call fastcc ptr @mi_page_fresh_alloc(ptr noundef %0, ptr noundef %i.ai, i64 noundef %.010.i, i64 noundef %2)
  ret ptr %i.aj
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_page_fresh_alloc(ptr noundef %0, ptr nofree noundef captures(address) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !72     ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = getelementptr i8, ptr %i.a, i64 952
  %i.d = tail call ptr @_mi_segment_page_alloc(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %3, ptr noundef %i.b, ptr noundef %i.c) ; 15 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.g, align 8, !tbaa !103
  %i.h = icmp eq i64 %.val, 131080
  br i1 %i.h, label %bb.d, label %mi_page_block_size.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !65   ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.e, label %_mi_segment_page_start.exit.i, !prof !96

bb.e:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %i.j to i64
  br label %mi_page_block_size.exit

_mi_segment_page_start.exit.i:                    ; preds = %bb.d
  %i.m = load i32, ptr %i.d, align 8, !tbaa !93
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 16
  br label %mi_page_block_size.exit

mi_page_block_size.exit:                          ; preds = %_mi_segment_page_start.exit.i, %bb.e, %bb.c
  %i.p = phi i64 [ %2, %bb.c ], [ %i.l, %bb.e ], [ %i.o, %_mi_segment_page_start.exit.i ] ; 7 uses
  %i.q = getelementptr i8, ptr %i.d, i64 48
  %i.r = ptrtoint ptr %0 to i64
  store atomic i64 %i.r, ptr %i.q release, align 8
  %i.s = getelementptr i8, ptr %0, i64 3057
  %i.t = load i8, ptr %i.s, align 1, !tbaa !176
  %i.u = getelementptr i8, ptr %i.d, i64 8        ; 3 uses
  %i.v = load i8, ptr %i.u, align 8               ; 2 uses
  %i.w = shl i8 %i.t, 3
  %i.x = and i8 %i.w, 120
  %i.y = and i8 %i.v, -121
  %i.z = or disjoint i8 %i.y, %i.x                ; 2 uses
  store i8 %i.z, ptr %i.u, align 8
  %i.aa = getelementptr i8, ptr %0, i64 3059
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !642, !range !86, !noundef !87
  %i.ac = shl nuw nsw i8 %i.ab, 2
  %i.ad = and i8 %i.z, -5
  %i.ae = or disjoint i8 %i.ad, %i.ac
  store i8 %i.ae, ptr %i.u, align 8
  %i.af = getelementptr i8, ptr %0, i64 3058
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !643
  %i.ah = getelementptr i8, ptr %i.d, i64 9
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !644
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.p, i64 2147483648) ; 6 uses
  %i.aj = trunc nuw i64 %i.ai to i32              ; 2 uses
  %i.ak = getelementptr i8, ptr %i.d, i64 28
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !65
end_hunk_1
begin_hunk_2_@llvm.bswap.i32
!274 = !{!"p1 _ZTS8_inittab", !56, i64 0}
!275 = !{!"p1 _ZTS15_Py_hashtable_t", !56, i64 0}
!276 = !{!"", !247, i64 0, !275, i64 8}
!277 = !{!"_import_runtime_state", !274, i64 0, !67, i64 8, !276, i64 16, !129, i64 32}
!278 = !{!"p1 _ZTS13code_arena_st", !56, i64 0}
!279 = !{!"trampoline_api_st", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !67, i64 32, !67, i64 40}
!280 = !{!"", !53, i64 0, !53, i64 4, !67, i64 8, !278, i64 16, !279, i64 24, !189, i64 72, !67, i64 80, !56, i64 88, !67, i64 96, !53, i64 104}
!281 = !{!"_pending_calls", !246, i64 0, !247, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !52, i64 24, !53, i64 7224, !53, i64 7228}
!282 = !{!"_ceval_runtime_state", !280, i64 0, !281, i64 112}
!283 = !{!"_gilstate_runtime_state", !53, i64 0, !248, i64 8}
!284 = !{!"p1 _ZTS13_PyArg_Parser", !56, i64 0}
!285 = !{!"_getargs_runtime_state", !284, i64 0}
!286 = !{!"_fileutils_state", !53, i64 0}
!287 = !{!"", !53, i64 0, !268, i64 8, !53, i64 16, !53, i64 20, !248, i64 24, !53, i64 32}
!288 = !{!"", !268, i64 0, !53, i64 8, !73, i64 16, !53, i64 24, !248, i64 32, !53, i64 40, !129, i64 48, !67, i64 56, !56, i64 64, !56, i64 72}
!289 = !{!"p1 _ZTS24faulthandler_user_signal", !56, i64 0}
!290 = !{!"", !56, i64 0, !53, i64 8, !67, i64 16}
!291 = !{!"_faulthandler_runtime_state", !287, i64 0, !288, i64 40, !289, i64 120, !290, i64 128, !290, i64 152}
!292 = !{!"_PyTraceMalloc_Config", !53, i64 0, !53, i64 4, !53, i64 8}
!293 = !{!"p1 _ZTS21tracemalloc_traceback", !56, i64 0}
!294 = !{!"_tracemalloc_runtime_state", !292, i64 0, !255, i64 16, !247, i64 136, !67, i64 144, !67, i64 152, !275, i64 160, !293, i64 168, !275, i64 176, !275, i64 184, !275, i64 192, !293, i64 200, !270, i64 208}
!295 = !{!"_reftracer_runtime_state", !56, i64 0, !56, i64 8}
!296 = !{!"", !52, i64 0}
!297 = !{!"_stoptheworld_state", !247, i64 0, !68, i64 1, !68, i64 2, !68, i64 3, !296, i64 4, !67, i64 8, !246, i64 16}
!298 = !{!"PyPreConfig", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36}
!299 = !{!"p1 _ZTS18_Py_AuditHookEntry", !56, i64 0}
!300 = !{!"", !247, i64 0, !299, i64 8}
!301 = !{!"_py_object_runtime_state", !53, i64 0}
!302 = !{!"_Py_float_runtime_state", !53, i64 0, !53, i64 4}
!303 = !{!"_Py_unicode_runtime_ids", !247, i64 0, !67, i64 8}
!304 = !{!"_Py_unicode_runtime_state", !303, i64 0}
!305 = !{!"_types_runtime_state", !53, i64 0, !296, i64 8}
!306 = !{!"_Py_time_runtime_state", !52, i64 0}
!307 = !{!"_Py_cached_objects", !275, i64 0}
!308 = !{!"p1 _ZTS11_typeobject", !56, i64 0}
!309 = !{!"_object", !52, i64 0, !308, i64 8}
!310 = !{!"PyVarObject", !309, i64 0, !67, i64 16}
!311 = !{!"", !310, i64 0, !67, i64 24, !52, i64 32}
!312 = !{!"_PyUnicodeObject_state", !53, i64 0, !53, i64 0, !53, i64 0, !53, i64 0, !53, i64 0}
!313 = !{!"", !309, i64 0, !67, i64 16, !67, i64 24, !312, i64 32}
!314 = !{!"", !313, i64 0, !52, i64 40}
!315 = !{!"", !314, i64 0, !314, i64 56, !314, i64 112, !314, i64 168, !314, i64 224, !314, i64 280, !314, i64 328, !314, i64 384, !314, i64 440, !314, i64 496, !314, i64 544, !314, i64 592, !314, i64 640, !314, i64 696, !314, i64 752, !314, i64 800, !314, i64 848, !314, i64 896, !314, i64 952, !314, i64 1008, !314, i64 1064, !314, i64 1128, !314, i64 1184, !314, i64 1232, !314, i64 1288}
!316 = !{!"", !314, i64 0, !314, i64 56, !314, i64 112, !314, i64 168, !314, i64 224, !314, i64 280, !314, i64 336, !314, i64 392, !314, i64 448, !314, i64 504, !314, i64 552, !314, i64 600, !314, i64 656, !314, i64 704, !314, i64 760, !314, i64 816, !314, i64 872, !314, i64 928, !314, i64 984, !314, i64 1032, !314, i64 1080, !314, i64 1136, !314, i64 1184, !314, i64 1240, !314, i64 1304, !314, i64 1360, !314, i64 1416, !314, i64 1464, !314, i64 1528, !314, i64 1576, !314, i64 1632, !314, i64 1688, !314, i64 1744, !314, i64 1792, !314, i64 1840, !314, i64 1896, !314, i64 1952, !314, i64 2016, !314, i64 2072, !314, i64 2136, !314, i64 2192, !314, i64 2248, !314, i64 2304, !314, i64 2360, !314, i64 2416, !314, i64 2472, !314, i64 2528, !314, i64 2584, !314, i64 2640, !314, i64 2696, !314, i64 2752, !314, i64 2808, !314, i64 2872, !314, i64 2928, !314, i64 2984, !314, i64 3048, !314, i64 3104, !314, i64 3176, !314, i64 3232, !314, i64 3304, !314, i64 3352, !314, i64 3408, !314, i64 3464, !314, i64 3520, !314, i64 3576, !314, i64 3632, !314, i64 3680, !314, i64 3736, !314, i64 3784, !314, i64 3840, !314, i64 3888, !314, i64 3944, !314, i64 4000, !314, i64 4056, !314, i64 4112, !314, i64 4168, !314, i64 4224, !314, i64 4280, !314, i64 4336, !314, i64 4384, !314, i64 4432, !314, i64 4488, !314, i64 4552, !314, i64 4608, !314, i64 4664, !314, i64 4720, !314, i64 4784, !314, i64 4840, !314, i64 4888, !314, i64 4944, !314, i64 5000, !314, i64 5056, !314, i64 5112, !314, i64 5168, !314, i64 5224, !314, i64 5280, !314, i64 5336, !314, i64 5392, !314, i64 5448, !314, i64 5504, !314, i64 5568, !314, i64 5632, !314, i64 5680, !314, i64 5736, !314, i64 5784, !314, i64 5840, !314, i64 5896, !314, i64 5960, !314, i64 6016, !314, i64 6072, !314, i64 6128, !314, i64 6184, !314, i64 6240, !314, i64 6304, !314, i64 6352, !314, i64 6400, !314, i64 6456, !314, i64 6512, !314, i64 6568, !314, i64 6624, !314, i64 6672, !314, i64 6728, !314, i64 6784, !314, i64 6840, !314, i64 6896, !314, i64 6944, !314, i64 7000, !314, i64 7056, !314, i64 7104, !314, i64 7160, !314, i64 7208, !314, i64 7256, !314, i64 7304, !314, i64 7360, !314, i64 7416, !314, i64 7472, !314, i64 7528, !314, i64 7576, !314, i64 7632, !314, i64 7688, !314, i64 7744, !314, i64 7800, !314, i64 7856, !314, i64 7904, !314, i64 7952, !314, i64 8008, !314, i64 8064, !314, i64 8120, !314, i64 8176, !314, i64 8232, !314, i64 8288, !314, i64 8344, !314, i64 8408, !314, i64 8464, !314, i64 8520, !314, i64 8576, !314, i64 8632, !314, i64 8688, !314, i64 8744, !314, i64 8800, !314, i64 8848, !314, i64 8904, !314, i64 8960, !314, i64 9016, !314, i64 9072, !314, i64 9128, !314, i64 9184, !314, i64 9240, !314, i64 9288, !314, i64 9344, !314, i64 9400, !314, i64 9456, !314, i64 9512, !314, i64 9568, !314, i64 9624, !314, i64 9680, !314, i64 9736, !314, i64 9800, !314, i64 9848, !314, i64 9896, !314, i64 9960, !314, i64 10024, !314, i64 10080, !314, i64 10136, !314, i64 10192, !314, i64 10272, !314, i64 10344, !314, i64 10408, !314, i64 10480, !314, i64 10544, !314, i64 10608, !314, i64 10664, !314, i64 10712, !314, i64 10768, !314, i64 10824, !314, i64 10872, !314, i64 10928, !314, i64 10984, !314, i64 11040, !314, i64 11112, !314, i64 11168, !314, i64 11224, !314, i64 11280, !314, i64 11336, !314, i64 11400, !314, i64 11456, !314, i64 11512, !314, i64 11568, !314, i64 11624, !314, i64 11680, !314, i64 11736, !314, i64 11784, !314, i64 11840, !314, i64 11904, !314, i64 11960, !314, i64 12016, !314, i64 12064, !314, i64 12128, !314, i64 12192, !314, i64 12248, !314, i64 12296, !314, i64 12360, !314, i64 12408, !314, i64 12472, !314, i64 12528, !314, i64 12584, !314, i64 12640, !314, i64 12696, !314, i64 12752, !314, i64 12808, !314, i64 12872, !314, i64 12944, !314, i64 13008, !314, i64 13056, !314, i64 13128, !314, i64 13200, !314, i64 13256, !314, i64 13304, !314, i64 13352, !314, i64 13400, !314, i64 13448, !314, i64 13512, !314, i64 13560, !314, i64 13616, !314, i64 13672, !314, i64 13720, !314, i64 13768, !314, i64 13816, !314, i64 13872, !314, i64 13928, !314, i64 13976, !314, i64 14024, !314, i64 14072, !314, i64 14120, !314, i64 14168, !314, i64 14224, !314, i64 14272, !314, i64 14336, !314, i64 14384, !314, i64 14432, !314, i64 14480, !314, i64 14536, !314, i64 14592, !314, i64 14648, !314, i64 14696, !314, i64 14744, !314, i64 14792, !314, i64 14848, !314, i64 14904, !314, i64 14960, !314, i64 15008, !314, i64 15064, !314, i64 15112, !314, i64 15160, !314, i64 15216, !314, i64 15272, !314, i64 15328, !314, i64 15376, !314, i64 15424, !314, i64 15480, !314, i64 15536, !314, i64 15592, !314, i64 15648, !314, i64 15696, !314, i64 15752, !314, i64 15800, !314, i64 15856, !314, i64 15920, !314, i64 15976, !314, i64 16024, !314, i64 16080, !314, i64 16144, !314, i64 16208, !314, i64 16256, !314, i64 16304, !314, i64 16352, !314, i64 16416, !314, i64 16472, !314, i64 16528, !314, i64 16584, !314, i64 16632, !314, i64 16680, !314, i64 16736, !314, i64 16792, !314, i64 16840, !314, i64 16896, !314, i64 16944, !314, i64 17008, !314, i64 17056, !314, i64 17104, !314, i64 17152, !314, i64 17200, !314, i64 17248, !314, i64 17296, !314, i64 17352, !314, i64 17408, !314, i64 17456, !314, i64 17512, !314, i64 17576, !314, i64 17632, !314, i64 17688, !314, i64 17744, !314, i64 17800, !314, i64 17864, !314, i64 17920, !314, i64 17968, !314, i64 18024, !314, i64 18080, !314, i64 18144, !314, i64 18200, !314, i64 18256, !314, i64 18312, !314, i64 18360, !314, i64 18416, !314, i64 18472, !314, i64 18520, !314, i64 18576, !314, i64 18632, !314, i64 18688, !314, i64 18736, !314, i64 18784, !314, i64 18832, !314, i64 18888, !314, i64 18944, !314, i64 18992, !314, i64 19040, !314, i64 19088, !314, i64 19136, !314, i64 19184, !314, i64 19240, !314, i64 19288, !314, i64 19336, !314, i64 19400, !314, i64 19448, !314, i64 19504, !314, i64 19552, !314, i64 19600, !314, i64 19648, !314, i64 19696, !314, i64 19744, !314, i64 19792, !314, i64 19840, !314, i64 19896, !314, i64 19944, !314, i64 19992, !314, i64 20048, !314, i64 20104, !314, i64 20160, !314, i64 20208, !314, i64 20256, !314, i64 20320, !314, i64 20368, !314, i64 20424, !314, i64 20480, !314, i64 20528, !314, i64 20576, !314, i64 20632, !314, i64 20688, !314, i64 20736, !314, i64 20784, !314, i64 20832, !314, i64 20888, !314, i64 20936, !314, i64 20992, !314, i64 21048, !314, i64 21104, !314, i64 21160, !314, i64 21216, !314, i64 21264, !314, i64 21320, !314, i64 21368, !314, i64 21424, !314, i64 21480, !314, i64 21536, !314, i64 21584, !314, i64 21640, !314, i64 21688, !314, i64 21736, !314, i64 21784, !314, i64 21840, !314, i64 21888, !314, i64 21936, !314, i64 21992, !314, i64 22040, !314, i64 22096, !314, i64 22152, !314, i64 22208, !314, i64 22272, !314, i64 22320, !314, i64 22368, !314, i64 22424, !314, i64 22472, !314, i64 22528, !314, i64 22584, !314, i64 22632, !314, i64 22688, !314, i64 22736, !314, i64 22784, !314, i64 22832, !314, i64 22880, !314, i64 22928, !314, i64 22976, !314, i64 23024, !314, i64 23072, !314, i64 23120, !314, i64 23176, !314, i64 23232, !314, i64 23280, !314, i64 23336, !314, i64 23392, !314, i64 23440, !314, i64 23488, !314, i64 23536, !314, i64 23592, !314, i64 23648, !314, i64 23696, !314, i64 23744, !314, i64 23792, !314, i64 23848, !314, i64 23904, !314, i64 23952, !314, i64 24008, !314, i64 24064, !314, i64 24120, !314, i64 24176, !314, i64 24232, !314, i64 24288, !314, i64 24336, !314, i64 24384, !314, i64 24440, !314, i64 24488, !314, i64 24536, !314, i64 24584, !314, i64 24640, !314, i64 24688, !314, i64 24744, !314, i64 24800, !314, i64 24856, !314, i64 24912, !314, i64 24960, !314, i64 25016, !314, i64 25064, !314, i64 25112, !314, i64 25168, !314, i64 25216, !314, i64 25264, !314, i64 25320, !314, i64 25376, !314, i64 25432, !314, i64 25480, !314, i64 25528, !314, i64 25576, !314, i64 25624, !314, i64 25672, !314, i64 25720, !314, i64 25768, !314, i64 25816, !314, i64 25872, !314, i64 25920, !314, i64 25976, !314, i64 26024, !314, i64 26080, !314, i64 26136, !314, i64 26184, !314, i64 26240, !314, i64 26296, !314, i64 26344, !314, i64 26400, !314, i64 26448, !314, i64 26504, !314, i64 26560, !314, i64 26616, !314, i64 26664, !314, i64 26720, !314, i64 26776, !314, i64 26832, !314, i64 26888, !314, i64 26936, !314, i64 26992, !314, i64 27040, !314, i64 27096, !314, i64 27152, !314, i64 27208, !314, i64 27256, !314, i64 27312, !314, i64 27368, !314, i64 27416, !314, i64 27472, !314, i64 27520, !314, i64 27576, !314, i64 27632, !314, i64 27680, !314, i64 27736, !314, i64 27792, !314, i64 27848, !314, i64 27896, !314, i64 27944, !314, i64 27992, !314, i64 28040, !314, i64 28096, !314, i64 28152, !314, i64 28200, !314, i64 28248, !314, i64 28304, !314, i64 28352, !314, i64 28400, !314, i64 28448, !314, i64 28496, !314, i64 28544, !314, i64 28592, !314, i64 28640, !314, i64 28688, !314, i64 28744, !314, i64 28792, !314, i64 28840, !314, i64 28896, !314, i64 28952, !314, i64 29008, !314, i64 29064, !314, i64 29120, !314, i64 29168, !314, i64 29224, !314, i64 29272, !314, i64 29320, !314, i64 29368, !314, i64 29416, !314, i64 29464, !314, i64 29512, !314, i64 29568, !314, i64 29616, !314, i64 29664, !314, i64 29712, !314, i64 29760, !314, i64 29808, !314, i64 29864, !314, i64 29912, !314, i64 29968, !314, i64 30016, !314, i64 30064, !314, i64 30112, !314, i64 30168, !314, i64 30224, !314, i64 30280, !314, i64 30328, !314, i64 30376, !314, i64 30424, !314, i64 30480, !314, i64 30536, !314, i64 30592, !314, i64 30648, !314, i64 30696, !314, i64 30752, !314, i64 30808, !314, i64 30856, !314, i64 30912, !314, i64 30968, !314, i64 31024, !314, i64 31072, !314, i64 31120, !314, i64 31168, !314, i64 31216, !314, i64 31264, !314, i64 31320, !314, i64 31368, !314, i64 31416, !314, i64 31464, !314, i64 31512, !314, i64 31560, !314, i64 31608, !314, i64 31656, !314, i64 31712, !314, i64 31776, !314, i64 31840, !314, i64 31888, !314, i64 31944, !314, i64 32008, !314, i64 32064, !314, i64 32112, !314, i64 32160, !314, i64 32208, !314, i64 32264, !314, i64 32320, !314, i64 32368, !314, i64 32424, !314, i64 32472, !314, i64 32520, !314, i64 32576, !314, i64 32632, !314, i64 32680, !314, i64 32728, !314, i64 32776, !314, i64 32824, !314, i64 32872, !314, i64 32920, !314, i64 32968, !314, i64 33016, !314, i64 33072, !314, i64 33128, !314, i64 33184, !314, i64 33240, !314, i64 33304, !314, i64 33360, !314, i64 33408, !314, i64 33456, !314, i64 33504, !314, i64 33552, !314, i64 33600, !314, i64 33656, !314, i64 33712, !314, i64 33760, !314, i64 33808, !314, i64 33856, !314, i64 33904, !314, i64 33952, !314, i64 34008, !314, i64 34056, !314, i64 34112, !314, i64 34160, !314, i64 34208, !314, i64 34256, !314, i64 34312, !314, i64 34360, !314, i64 34416, !314, i64 34464, !314, i64 34512, !314, i64 34560, !314, i64 34616, !314, i64 34672, !314, i64 34720, !314, i64 34776, !314, i64 34824, !314, i64 34880, !314, i64 34928, !314, i64 34976, !314, i64 35024, !314, i64 35072, !314, i64 35120, !314, i64 35168, !314, i64 35224, !314, i64 35288, !314, i64 35344, !314, i64 35400, !314, i64 35464, !314, i64 35528, !314, i64 35576, !314, i64 35632, !314, i64 35680, !314, i64 35728, !314, i64 35776, !314, i64 35832, !314, i64 35880, !314, i64 35936, !314, i64 35992, !314, i64 36040, !314, i64 36088, !314, i64 36136, !314, i64 36192, !314, i64 36240, !314, i64 36296, !314, i64 36352, !314, i64 36408, !314, i64 36464, !314, i64 36512, !314, i64 36568, !314, i64 36632, !314, i64 36688, !314, i64 36736, !314, i64 36784, !314, i64 36832, !314, i64 36880, !314, i64 36928, !314, i64 36976, !314, i64 37024, !314, i64 37080, !314, i64 37136, !314, i64 37184, !314, i64 37240, !314, i64 37296, !314, i64 37344, !314, i64 37392, !314, i64 37448, !314, i64 37504, !314, i64 37552, !314, i64 37616, !314, i64 37672, !314, i64 37728, !314, i64 37776, !314, i64 37824, !314, i64 37872, !314, i64 37936, !314, i64 37984, !314, i64 38040, !314, i64 38096, !314, i64 38144, !314, i64 38192, !314, i64 38240, !314, i64 38296, !314, i64 38352, !314, i64 38408, !314, i64 38456, !314, i64 38512, !314, i64 38560, !314, i64 38616, !314, i64 38672, !314, i64 38728, !314, i64 38776, !314, i64 38824, !314, i64 38872, !314, i64 38928, !314, i64 38976, !314, i64 39024, !314, i64 39072, !314, i64 39128, !314, i64 39192, !314, i64 39264, !314, i64 39312, !314, i64 39360, !314, i64 39408, !314, i64 39456, !314, i64 39520, !314, i64 39568, !314, i64 39616, !314, i64 39672, !314, i64 39728, !314, i64 39784, !314, i64 39832, !314, i64 39888, !314, i64 39944, !314, i64 39992, !314, i64 40040, !314, i64 40088, !314, i64 40136, !314, i64 40184, !314, i64 40232, !314, i64 40280, !314, i64 40336, !314, i64 40392, !314, i64 40448, !314, i64 40496, !314, i64 40552, !314, i64 40600, !314, i64 40648, !314, i64 40704, !314, i64 40776, !314, i64 40824, !314, i64 40872, !314, i64 40928, !314, i64 40976, !314, i64 41040, !314, i64 41088, !314, i64 41144, !314, i64 41200, !314, i64 41256, !314, i64 41304, !314, i64 41352, !314, i64 41408, !314, i64 41456, !314, i64 41504, !314, i64 41552, !314, i64 41608, !314, i64 41656, !314, i64 41704, !314, i64 41752, !314, i64 41800, !314, i64 41848, !314, i64 41904, !314, i64 41960, !314, i64 42016, !314, i64 42072, !314, i64 42128, !314, i64 42176, !314, i64 42232, !314, i64 42288, !314, i64 42344, !314, i64 42392, !314, i64 42440, !314, i64 42496, !314, i64 42544, !314, i64 42592, !314, i64 42640, !314, i64 42696, !314, i64 42744, !314, i64 42792, !314, i64 42840, !314, i64 42888, !314, i64 42944, !314, i64 42992, !314, i64 43048, !314, i64 43096, !314, i64 43144, !314, i64 43200, !314, i64 43248, !314, i64 43296, !314, i64 43344, !314, i64 43392, !314, i64 43448, !314, i64 43512, !314, i64 43568, !314, i64 43624, !314, i64 43672, !314, i64 43720, !314, i64 43768, !314, i64 43816, !314, i64 43864, !314, i64 43912, !314, i64 43968, !314, i64 44016, !314, i64 44072, !314, i64 44120, !314, i64 44176, !314, i64 44224, !314, i64 44272}
!317 = !{!"_Py_global_strings", !315, i64 0, !316, i64 1336, !52, i64 45664, !52, i64 51808}
!318 = !{!"", !67, i64 0, !67, i64 8}
!319 = !{!"", !310, i64 0, !53, i64 24, !52, i64 32}
!320 = !{!"", !309, i64 0}
!321 = !{!"", !52, i64 0, !311, i64 32960, !52, i64 33000, !317, i64 45288, !318, i64 105288, !311, i64 105304, !318, i64 105344, !319, i64 105360, !320, i64 105400}
!322 = !{!"_Py_static_objects", !321, i64 0}
!323 = !{!"p1 _ZTS18_gil_runtime_state", !56, i64 0}
!324 = !{!"_ceval_state", !67, i64 0, !53, i64 8, !323, i64 16, !53, i64 24, !281, i64 32}
!325 = !{!"p1 _ZTS18_PyThreadStateImpl", !56, i64 0}
!326 = !{!"pythreads", !67, i64 0, !246, i64 8, !325, i64 16, !246, i64 24, !67, i64 32, !67, i64 40}
!327 = !{!"p1 _ZTS14pyruntimestate", !56, i64 0}
!328 = !{!"gc_generation", !318, i64 0, !53, i64 16, !53, i64 20}
!329 = !{!"p1 _ZTS19_PyInterpreterFrame", !56, i64 0}
!330 = !{!"_gc_runtime_state", !53, i64 0, !53, i64 4, !328, i64 8, !52, i64 32, !328, i64 80, !52, i64 104, !53, i64 224, !329, i64 232, !268, i64 240, !268, i64 248, !67, i64 256, !67, i64 264, !53, i64 272, !53, i64 276}
!331 = !{!"", !247, i64 0, !73, i64 8, !67, i64 16}
!332 = !{!"", !53, i64 0, !67, i64 8, !53, i64 16}
!333 = !{!"_import_state", !268, i64 0, !268, i64 8, !268, i64 16, !53, i64 24, !53, i64 28, !53, i64 32, !268, i64 40, !268, i64 48, !53, i64 56, !268, i64 64, !268, i64 72, !268, i64 80, !331, i64 88, !332, i64 112}
!334 = !{!"_gil_runtime_state", !67, i64 0, !246, i64 8, !53, i64 16, !67, i64 24, !52, i64 32, !52, i64 80, !52, i64 120, !52, i64 168}
!335 = !{!"codecs_state", !268, i64 0, !268, i64 8, !268, i64 16, !53, i64 24}
!336 = !{!"xi_exceptions", !268, i64 0, !268, i64 8, !268, i64 16}
!337 = !{!"", !252, i64 0, !336, i64 24}
!338 = !{!"_warnings_runtime_state", !268, i64 0, !268, i64 8, !268, i64 16, !331, i64 24, !67, i64 48, !268, i64 56}
!339 = !{!"p1 _ZTS15atexit_callback", !56, i64 0}
!340 = !{!"atexit_state", !339, i64 0, !268, i64 8}
!341 = !{!"p1 _ZTS9_qsbr_pad", !56, i64 0}
!342 = !{!"p1 _ZTS18_qsbr_thread_state", !56, i64 0}
!343 = !{!"_qsbr_shared", !67, i64 0, !67, i64 8, !341, i64 16, !56, i64 24, !67, i64 32, !247, i64 40, !342, i64 48}
!344 = !{!"p1 _ZTS15_obmalloc_state", !56, i64 0}
!345 = !{!"_Py_freelist", !56, i64 0, !67, i64 8}
!346 = !{!"_Py_freelists", !345, i64 0, !345, i64 16, !345, i64 32, !52, i64 48, !345, i64 368, !345, i64 384, !345, i64 400, !345, i64 416, !345, i64 432, !345, i64 448, !345, i64 464, !345, i64 480, !345, i64 496, !345, i64 512, !345, i64 528, !345, i64 544, !345, i64 560, !345, i64 576, !345, i64 592, !345, i64 608, !345, i64 624, !345, i64 640}
!347 = !{!"_py_object_state", !346, i64 0, !53, i64 656}
!348 = !{!"_Py_unicode_fs_codec", !129, i64 0, !53, i64 8, !129, i64 16, !53, i64 24}
!349 = !{!"p2 _ZTS7_object", !219, i64 0}
!350 = !{!"_Py_unicode_ids", !67, i64 0, !349, i64 8}
!351 = !{!"_Py_unicode_state", !348, i64 0, !56, i64 32, !350, i64 40}
!352 = !{!"_Py_long_state", !53, i64 0}
!353 = !{!"p1 double", !56, i64 0}
!354 = !{!"_dtoa_state", !52, i64 0, !52, i64 64, !52, i64 128, !353, i64 2432}
!355 = !{!"_py_func_state", !53, i64 0, !52, i64 8}
!356 = !{!"_py_code_state", !247, i64 0, !275, i64 8}
!357 = !{!"_Py_dict_state", !53, i64 0, !52, i64 8}
!358 = !{!"_Py_exc_state", !268, i64 0, !56, i64 8, !53, i64 16, !268, i64 24}
!359 = !{!"_Py_mem_interp_free_queue", !53, i64 0, !247, i64 4, !265, i64 8}
!360 = !{!"ast_state", !296, i64 0, !53, i64 4, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !268, i64 56, !268, i64 64, !268, i64 72, !268, i64 80, !268, i64 88, !268, i64 96, !268, i64 104, !268, i64 112, !268, i64 120, !268, i64 128, !268, i64 136, !268, i64 144, !268, i64 152, !268, i64 160, !268, i64 168, !268, i64 176, !268, i64 184, !268, i64 192, !268, i64 200, !268, i64 208, !268, i64 216, !268, i64 224, !268, i64 232, !268, i64 240, !268, i64 248, !268, i64 256, !268, i64 264, !268, i64 272, !268, i64 280, !268, i64 288, !268, i64 296, !268, i64 304, !268, i64 312, !268, i64 320, !268, i64 328, !268, i64 336, !268, i64 344, !268, i64 352, !268, i64 360, !268, i64 368, !268, i64 376, !268, i64 384, !268, i64 392, !268, i64 400, !268, i64 408, !268, i64 416, !268, i64 424, !268, i64 432, !268, i64 440, !268, i64 448, !268, i64 456, !268, i64 464, !268, i64 472, !268, i64 480, !268, i64 488, !268, i64 496, !268, i64 504, !268, i64 512, !268, i64 520, !268, i64 528, !268, i64 536, !268, i64 544, !268, i64 552, !268, i64 560, !268, i64 568, !268, i64 576, !268, i64 584, !268, i64 592, !268, i64 600, !268, i64 608, !268, i64 616, !268, i64 624, !268, i64 632, !268, i64 640, !268, i64 648, !268, i64 656, !268, i64 664, !268, i64 672, !268, i64 680, !268, i64 688, !268, i64 696, !268, i64 704, !268, i64 712, !268, i64 720, !268, i64 728, !268, i64 736, !268, i64 744, !268, i64 752, !268, i64 760, !268, i64 768, !268, i64 776, !268, i64 784, !268, i64 792, !268, i64 800, !268, i64 808, !268, i64 816, !268, i64 824, !268, i64 832, !268, i64 840, !268, i64 848, !268, i64 856, !268, i64 864, !268, i64 872, !268, i64 880, !268, i64 888, !268, i64 896, !268, i64 904, !268, i64 912, !268, i64 920, !268, i64 928, !268, i64 936, !268, i64 944, !268, i64 952, !268, i64 960, !268, i64 968, !268, i64 976, !268, i64 984, !268, i64 992, !268, i64 1000, !268, i64 1008, !268, i64 1016, !268, i64 1024, !268, i64 1032, !268, i64 1040, !268, i64 1048, !268, i64 1056, !268, i64 1064, !268, i64 1072, !268, i64 1080, !268, i64 1088, !268, i64 1096, !268, i64 1104, !268, i64 1112, !268, i64 1120, !268, i64 1128, !268, i64 1136, !268, i64 1144, !268, i64 1152, !268, i64 1160, !268, i64 1168, !268, i64 1176, !268, i64 1184, !268, i64 1192, !268, i64 1200, !268, i64 1208, !268, i64 1216, !268, i64 1224, !268, i64 1232, !268, i64 1240, !268, i64 1248, !268, i64 1256, !268, i64 1264, !268, i64 1272, !268, i64 1280, !268, i64 1288, !268, i64 1296, !268, i64 1304, !268, i64 1312, !268, i64 1320, !268, i64 1328, !268, i64 1336, !268, i64 1344, !268, i64 1352, !268, i64 1360, !268, i64 1368, !268, i64 1376, !268, i64 1384, !268, i64 1392, !268, i64 1400, !268, i64 1408, !268, i64 1416, !268, i64 1424, !268, i64 1432, !268, i64 1440, !268, i64 1448, !268, i64 1456, !268, i64 1464, !268, i64 1472, !268, i64 1480, !268, i64 1488, !268, i64 1496, !268, i64 1504, !268, i64 1512, !268, i64 1520, !268, i64 1528, !268, i64 1536, !268, i64 1544, !268, i64 1552, !268, i64 1560, !268, i64 1568, !268, i64 1576, !268, i64 1584, !268, i64 1592, !268, i64 1600, !268, i64 1608, !268, i64 1616, !268, i64 1624, !268, i64 1632, !268, i64 1640, !268, i64 1648, !268, i64 1656, !268, i64 1664, !268, i64 1672, !268, i64 1680, !268, i64 1688, !268, i64 1696, !268, i64 1704, !268, i64 1712, !268, i64 1720, !268, i64 1728, !268, i64 1736, !268, i64 1744, !268, i64 1752, !268, i64 1760, !268, i64 1768, !268, i64 1776, !268, i64 1784, !268, i64 1792, !268, i64 1800, !268, i64 1808, !268, i64 1816, !268, i64 1824, !268, i64 1832, !268, i64 1840, !268, i64 1848, !268, i64 1856, !268, i64 1864, !268, i64 1872, !268, i64 1880, !268, i64 1888, !268, i64 1896, !268, i64 1904, !268, i64 1912, !268, i64 1920, !268, i64 1928, !268, i64 1936, !268, i64 1944, !268, i64 1952, !268, i64 1960, !268, i64 1968, !268, i64 1976}
!361 = !{!"type_cache", !52, i64 0}
!362 = !{!"", !67, i64 0, !52, i64 8}
!363 = !{!"", !67, i64 0, !67, i64 8, !52, i64 16}
!364 = !{!"types_state", !53, i64 0, !361, i64 8, !362, i64 98312, !363, i64 108016, !247, i64 108512, !52, i64 108520}
!365 = !{!"callable_cache", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24}
!366 = !{!"_PyOptimizationConfig", !55, i64 0, !55, i64 2, !55, i64 4, !55, i64 6, !68, i64 8, !68, i64 9}
!367 = !{!"p1 _ZTS17_PyExecutorObject", !56, i64 0}
!368 = !{!"_rare_events", !52, i64 0, !52, i64 1, !52, i64 2, !52, i64 3, !52, i64 4}
!369 = !{!"_Py_GlobalMonitors", !52, i64 0}
!370 = !{!"_Py_interp_cached_objects", !268, i64 0, !268, i64 8, !308, i64 16, !308, i64 24, !308, i64 32, !308, i64 40, !308, i64 48, !308, i64 56, !308, i64 64, !268, i64 72, !268, i64 80}
!371 = !{!"", !309, i64 0, !56, i64 16, !268, i64 24, !67, i64 32}
!372 = !{!"", !309, i64 0, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !268, i64 56, !52, i64 64}
!373 = !{!"", !53, i64 0, !318, i64 8, !371, i64 24, !372, i64 64}
!374 = !{!"_Py_interp_static_objects", !373, i64 0}
!375 = !{!"", !53, i64 0, !53, i64 0, !53, i64 0, !53, i64 0, !53, i64 0, !53, i64 0, !53, i64 0, !53, i64 0}
!376 = !{!"p1 _ZTS14_err_stackitem", !56, i64 0}
!377 = !{!"p1 _ZTS12_stack_chunk", !56, i64 0}
!378 = !{!"_err_stackitem", !268, i64 0, !376, i64 8}
!379 = !{!"p1 _ZTS11_PyExitData", !56, i64 0}
!380 = !{!"", !53, i64 0, !52, i64 4}
!381 = !{!"_ts", !246, i64 0, !246, i64 8, !248, i64 16, !67, i64 24, !375, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !53, i64 64, !53, i64 68, !329, i64 72, !329, i64 80, !329, i64 88, !56, i64 96, !56, i64 104, !268, i64 112, !268, i64 120, !268, i64 128, !376, i64 136, !268, i64 144, !53, i64 152, !268, i64 160, !67, i64 168, !67, i64 176, !268, i64 184, !67, i64 192, !53, i64 200, !268, i64 208, !268, i64 216, !268, i64 224, !67, i64 232, !67, i64 240, !377, i64 248, !349, i64 256, !349, i64 264, !378, i64 272, !268, i64 288, !379, i64 296, !67, i64 304, !268, i64 312, !268, i64 320, !380, i64 328}
!382 = !{!"p1 _ZTS6_frame", !56, i64 0}
!383 = !{!"p1 _ZTS11_PyStackRef", !56, i64 0}
!384 = !{!"_PyInterpreterFrame", !52, i64 0, !329, i64 8, !52, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !382, i64 48, !56, i64 56, !383, i64 64, !55, i64 72, !52, i64 74, !52, i64 75, !52, i64 80}
!385 = !{!"_PyThreadStateImpl", !381, i64 0, !384, i64 848, !67, i64 936, !67, i64 944, !67, i64 952, !67, i64 960, !67, i64 968, !67, i64 976, !268, i64 984, !268, i64 992, !53, i64 1000, !265, i64 1008, !342, i64 1024, !265, i64 1032}
!386 = !{!"_is", !324, i64 0, !248, i64 7264, !67, i64 7272, !67, i64 7280, !53, i64 7288, !67, i64 7296, !53, i64 7304, !53, i64 7308, !53, i64 7312, !67, i64 7320, !326, i64 7328, !327, i64 7376, !246, i64 7384, !67, i64 7392, !330, i64 7400, !268, i64 7680, !268, i64 7688, !333, i64 7696, !334, i64 7832, !67, i64 8040, !335, i64 8048, !223, i64 8080, !67, i64 8536, !268, i64 8544, !268, i64 8552, !268, i64 8560, !56, i64 8568, !52, i64 8576, !52, i64 8640, !67, i64 8648, !52, i64 8656, !337, i64 10696, !268, i64 10744, !268, i64 10752, !268, i64 10760, !338, i64 10768, !340, i64 10832, !297, i64 10848, !343, i64 10872, !265, i64 10928, !247, i64 10944, !344, i64 10952, !268, i64 10960, !52, i64 10968, !52, i64 11032, !52, i64 11096, !52, i64 11160, !52, i64 11161, !347, i64 11168, !351, i64 11832, !352, i64 11888, !354, i64 11896, !355, i64 14336, !356, i64 79880, !357, i64 79896, !358, i64 79968, !359, i64 80000, !360, i64 80024, !364, i64 82008, !365, i64 223296, !52, i64 223328, !68, i64 223384, !68, i64 223385, !366, i64 223386, !367, i64 223400, !367, i64 223408, !367, i64 223416, !367, i64 223424, !67, i64 223432, !368, i64 223440, !56, i64 223448, !369, i64 223456, !296, i64 223472, !296, i64 223473, !67, i64 223480, !67, i64 223488, !52, i64 223496, !52, i64 224712, !52, i64 224776, !370, i64 224840, !374, i64 224928, !67, i64 225064, !385, i64 225072}
!387 = !{!"pyruntimestate", !245, i64 0, !53, i64 824, !53, i64 828, !53, i64 832, !53, i64 836, !53, i64 840, !246, i64 848, !67, i64 856, !249, i64 864, !67, i64 896, !246, i64 904, !253, i64 912, !259, i64 936, !260, i64 1240, !262, i64 1256, !266, i64 1280, !269, i64 1320, !270, i64 2400, !222, i64 2408, !272, i64 2424, !273, i64 2488, !277, i64 2760, !282, i64 2800, !283, i64 10144, !285, i64 10160, !286, i64 10168, !291, i64 10176, !294, i64 10352, !295, i64 10568, !228, i64 10584, !297, i64 10592, !298, i64 10616, !56, i64 10656, !56, i64 10664, !300, i64 10672, !301, i64 10688, !302, i64 10692, !304, i64 10704, !305, i64 10720, !306, i64 14120, !307, i64 14128, !322, i64 14136, !386, i64 119552}
!388 = !{!387, !53, i64 1208}
!389 = !{!387, !56, i64 952}
!390 = !{!387, !56, i64 992}
!391 = !{!387, !56, i64 1032}
!392 = !{i64 0, i64 8, !84, i64 8, i64 8, !84, i64 16, i64 8, !84}
!393 = !{!387, !56, i64 1224}
!394 = !{!387, !56, i64 1216}
!395 = !{!387, !56, i64 1232}
!396 = !{!387, !56, i64 944}
!397 = !{!387, !56, i64 960}
!398 = !{!387, !56, i64 968}
!399 = !{!387, !56, i64 976}
!400 = !{!387, !56, i64 984}
!401 = !{!387, !56, i64 1016}
!402 = !{ptr @PyMem_RawMalloc}
!403 = !{!381, !248, i64 16}
!404 = !{!385, !342, i64 1024}
!405 = !{!265, !264, i64 0}
!406 = !{!"_mem_work_chunk", !265, i64 0, !67, i64 16, !67, i64 24, !52, i64 32}
!407 = !{!406, !67, i64 16}
!408 = !{!406, !67, i64 24}
!409 = !{!"_mem_work_item", !67, i64 0, !67, i64 8}
!410 = !{!409, !67, i64 0}
!411 = !{!265, !264, i64 8}
!412 = !{ptr @PyMem_Free}
!413 = !{!246, !246, i64 0}
!414 = !{!387, !56, i64 1024}
!415 = !{!386, !67, i64 8536}
!416 = !{!386, !344, i64 10952}
!417 = !{!"_obmalloc_pools", !52, i64 0}
!418 = !{!"p1 _ZTS12arena_object", !56, i64 0}
!419 = !{!"_obmalloc_mgmt", !418, i64 0, !53, i64 8, !418, i64 16, !418, i64 24, !52, i64 32, !67, i64 552, !67, i64 560, !67, i64 568, !67, i64 576}
!420 = !{!"arena_map_top", !52, i64 0}
!421 = !{!"_obmalloc_usage", !420, i64 0, !53, i64 262144, !53, i64 262148}
!422 = !{!"_obmalloc_state", !417, i64 0, !419, i64 512, !421, i64 1096}
!423 = !{!422, !67, i64 1088}
!424 = !{!422, !53, i64 520}
!425 = !{!422, !418, i64 512}
!426 = !{!"p1 _ZTS11pool_header", !56, i64 0}
!427 = !{!"arena_object", !67, i64 0, !129, i64 8, !53, i64 16, !53, i64 20, !426, i64 24, !418, i64 32, !418, i64 40}
!428 = !{!427, !67, i64 0}
!429 = !{!427, !129, i64 8}
!430 = !{!387, !67, i64 1248}
!431 = !{!"p1 _ZTS13arena_map_mid", !56, i64 0}
!432 = !{!431, !431, i64 0}
!433 = !{!"p1 _ZTS13arena_map_bot", !56, i64 0}
!434 = !{!433, !433, i64 0}
!435 = !{!248, !248, i64 0}
!436 = !{!426, !426, i64 0}
!437 = !{!"pool_header", !52, i64 0, !129, i64 8, !426, i64 16, !426, i64 24, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44}
!438 = !{!437, !426, i64 16}
!439 = !{!437, !129, i64 8}
!440 = !{!437, !53, i64 40}
!441 = !{!437, !53, i64 44}
!442 = !{!437, !426, i64 24}
!443 = !{ptr @PyMem_RawCalloc}
!444 = !{!267, !53, i64 4}
!445 = !{!267, !53, i64 0}
!446 = !{!437, !53, i64 36}
!447 = !{ptr @PyMem_RawRealloc}
!448 = !{!256, !56, i64 8}
!449 = !{!256, !56, i64 16}
!450 = !{!256, !52, i64 0}
!451 = !{!256, !56, i64 24}
!452 = !{!256, !56, i64 40}
!453 = !{!427, !53, i64 16}
!454 = !{!422, !67, i64 1080}
!455 = !{!422, !53, i64 263240}
!456 = !{!422, !53, i64 263244}
!457 = !{!77, !67, i64 864}
!458 = !{!422, !418, i64 536}
!459 = !{!418, !418, i64 0}
!460 = !{!427, !426, i64 24}
!461 = !{!427, !418, i64 32}
!462 = !{!437, !53, i64 32}
!463 = !{!427, !418, i64 40}
!464 = !{!422, !418, i64 528}
!465 = !{!427, !53, i64 20}
!466 = !{!"branch_weights", !"expected", i32 2145766520, i32 1717128}
!467 = !{!"branch_weights", !"expected", i32 1074010192, i32 1073473456}
!468 = distinct !{!468, !89}
!469 = distinct !{!469, !89}
!470 = distinct !{!470, !89}
!471 = distinct !{ptr @mi_new_realloc, null}
!472 = !{!"branch_weights", i32 2000, i32 2002}
!473 = distinct !{!473, !89}
!474 = !{!"branch_weights", i32 0, i32 -2147483648}
!475 = distinct !{!475, !89}
!476 = !{!55, !55, i64 0}
!477 = !{!"p1 short", !56, i64 0}
!478 = !{!477, !477, i64 0}
!479 = !{!78, !74, i64 8}
!480 = distinct !{!480, !89}
!481 = distinct !{!481, !89}
!482 = distinct !{!482, !151}
!483 = distinct !{!483, !151}
!484 = distinct !{!484, !151}
!485 = distinct !{!485, !89}
!486 = distinct !{!486, !89}
!487 = distinct !{!487, !89, !156, !157}
!488 = distinct !{!488, !89, !157, !156}
!489 = distinct !{!489, !89}
!490 = distinct !{!490, !89}
!491 = distinct !{!491, !89}
!492 = distinct !{!492, !89}
!493 = distinct !{!493, !89}
!494 = distinct !{!494, !89}
!495 = !{!125, !53, i64 28}
!496 = distinct !{!496, !"_mi_memid_create"}
!497 = distinct !{!497, !496, !"_mi_memid_create: argument 0"}
!498 = !{!497}
!499 = !{!125, !68, i64 25}
!500 = distinct !{!500, !89}
!501 = distinct !{!501, !89}
!502 = distinct !{!502, !89}
!503 = distinct !{!503, !89}
!504 = distinct !{!504, !89}
!505 = !{ptr @mi_option_get, ptr @mi_option_is_enabled}
!506 = distinct !{!506, !89}
!507 = distinct !{!507, !89}
!508 = distinct !{!508, !89}
!509 = distinct !{!509, !89}
!510 = distinct !{!510, !89}
!511 = distinct !{!511, !89}
!512 = distinct !{!512, !89}
!513 = distinct !{!513, !89}
!514 = distinct !{!514, !89}
!515 = distinct !{!515, !151}
!516 = distinct !{!516, !151}
!517 = distinct !{!517, !151}
!518 = distinct !{!518, !89}
!519 = distinct !{!519, !89}
!520 = distinct !{!520, !89}
!521 = distinct !{!521, !89}
!522 = distinct !{!522, !89}
!523 = distinct !{!523, !89}
!524 = distinct !{!524, !89}
!525 = distinct !{!525, !89}
!526 = !{!182, !67, i64 8}
!527 = !{!182, !67, i64 16}
!528 = !{!182, !56, i64 0}
!529 = !{!182, !67, i64 24}
!530 = !{!182, !67, i64 40}
!531 = distinct !{null, null, null, null}
!532 = !{!"mi_heap_area_ex_s", !182, i64 0, !58, i64 48}
!533 = !{!532, !58, i64 48}
!534 = !{!532, !67, i64 32}
!535 = distinct !{null, ptr @mi_stats_reset, ptr @mi_heap_get_default, ptr @mi_thread_init}
!536 = distinct !{!536, !89}
!537 = distinct !{!537, !89}
!538 = distinct !{!538, !89, !156, !157}
!539 = distinct !{!539, !89, !156, !157}
!540 = distinct !{!540, !89, !157, !156}
!541 = !{!132, !129, i64 24}
!542 = !{!"branch_weights", i32 8, i32 24}
!543 = !{!132, !53, i64 12}
!544 = distinct !{null}
!545 = !{!120, !67, i64 16}
!546 = !{!120, !67, i64 8}
!547 = !{!120, !68, i64 25}
!548 = !{!120, !68, i64 26}
!549 = distinct !{!549, !89}
!550 = distinct !{!550, !89, !156, !157}
!551 = distinct !{!551, !89, !157, !156}
!552 = distinct !{!552, !89, !156, !157}
!553 = distinct !{!553, !89, !157, !156}
!554 = distinct !{!554, !89}
!555 = distinct !{!555, !89, !156, !157}
!556 = distinct !{!556, !89, !157, !156}
!557 = distinct !{!557, !89, !156, !157}
!558 = distinct !{!558, !89, !157, !156}
!559 = distinct !{!559, !89, !156, !157}
!560 = distinct !{!560, !89, !157, !156}
!561 = distinct !{!561, !89}
!562 = distinct !{null}
!563 = !{ptr @_mi_os_random_weak}
!564 = distinct !{!564, !89}
!565 = distinct !{!565, !89}
!566 = distinct !{!566, !89}
!567 = distinct !{!567, !89}
!568 = distinct !{!568, !89}
!569 = distinct !{!569, !89}
!570 = distinct !{!570, !89}
!571 = distinct !{!571, !89}
!572 = distinct !{!572, !89}
!573 = distinct !{!573, !89, !208}
!574 = distinct !{!574, !89}
!575 = distinct !{!575, !89}
!576 = distinct !{!576, !89}
!577 = distinct !{!577, !89}
!578 = distinct !{!578, !89}
!579 = distinct !{!579, !89}
!580 = !{!"mi_abandoned_pool_s", !52, i64 0, !52, i64 64, !52, i64 128, !52, i64 192, !52, i64 256}
!581 = !{!580, !52, i64 64}
!582 = !{!111, !52, i64 176}
!583 = !{!580, !52, i64 0}
!584 = distinct !{null}
!585 = distinct !{!585, !89}
!586 = !{!"mi_process_info_s", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56}
!587 = !{!586, !67, i64 8}
!588 = !{!586, !67, i64 16}
!589 = !{!586, !67, i64 56}
!590 = !{!586, !67, i64 32}
!591 = distinct !{!591, !89}
!592 = !{!"p2 omnipotent char", !219, i64 0}
!593 = !{!592, !592, i64 0}
!594 = !{!223, !53, i64 12}
!595 = !{!387, !56, i64 1000}
!596 = !{!387, !56, i64 1008}
!597 = !{ptr @PyMem_Malloc}
!598 = distinct !{null, null, ptr @PyMem_Free}
!599 = !{!"p1 _ZTS12_qsbr_shared", !56, i64 0}
!600 = !{!"_qsbr_thread_state", !67, i64 0, !599, i64 8, !246, i64 16, !53, i64 24, !67, i64 32, !67, i64 40, !68, i64 48, !68, i64 49, !342, i64 56}
!601 = !{!600, !68, i64 48}
!602 = distinct !{!602, !89}
!603 = !{!409, !67, i64 8}
!604 = !{!387, !56, i64 1040}
!605 = !{!387, !56, i64 1048}
!606 = !{!387, !56, i64 1056}
!607 = distinct !{!607, !89}
!608 = distinct !{!608, !89}
!609 = distinct !{null, ptr @PyMem_RawFree}
!610 = distinct !{null}
!611 = distinct !{!611, !89}
!612 = distinct !{!612, !89}
!613 = distinct !{!613, !89}
!614 = !{!386, !327, i64 7376}
!615 = distinct !{!615, !89}
!616 = !{ptr @PyMem_RawFree}
!617 = distinct !{ptr @_PyObject_Malloc, null}
!618 = distinct !{null, ptr @_PyObject_Malloc, ptr @PyMem_RawMalloc}
!619 = distinct !{null, ptr @_PyObject_Free, ptr @PyMem_RawFree}
!620 = !{ptr @_PyObject_Malloc, ptr @PyMem_RawMalloc}
!621 = !{!256, !56, i64 32}
!622 = distinct !{ptr @_PyMem_DebugRawMalloc, null}
!623 = distinct !{ptr @_PyMem_DebugRawCalloc, null}
!624 = !{ptr @_PyMem_DebugRawFree}
!625 = distinct !{!625, !89}
!626 = distinct !{!626, !89}
!627 = distinct !{!627, !89}
!628 = distinct !{!628, !89}
!629 = distinct !{!629, !89}
!630 = !{!422, !67, i64 1072}
!631 = distinct !{!631, !89}
!632 = distinct !{!632, !89}
!633 = distinct !{!633, !89}
!634 = distinct !{!634, !151}
!635 = distinct !{!635, !151}
!636 = distinct !{!636, !151}
!637 = distinct !{!637, !151}
!638 = !{!125, !68, i64 26}
!639 = distinct !{!639, !151}
!640 = distinct !{!640, !151}
!641 = distinct !{!641, !151}
!642 = !{!71, !68, i64 3059}
!643 = !{!71, !52, i64 3058}
!644 = !{!59, !52, i64 9}
!645 = distinct !{!645, !89}
!646 = distinct !{!646, !89}
!647 = !{!77, !67, i64 872}
!648 = !{!77, !67, i64 880}
!649 = !{!77, !67, i64 888}
!650 = !{!111, !67, i64 32}
!651 = !{!111, !68, i64 18}
!652 = distinct !{!652, !151}
!653 = distinct !{!653, !89}
!654 = distinct !{null, ptr @_mi_fputs}
!655 = distinct !{!655, !89}
!656 = !{!211, !67, i64 24}
!657 = distinct !{!657, !89}
!658 = distinct !{null, ptr @PyMem_RawCalloc}
!659 = !{!387, !53, i64 1240}
!660 = !{!422, !67, i64 1064}
!661 = distinct !{!661, !89}
!662 = distinct !{!662, !89}
end_hunk_2
