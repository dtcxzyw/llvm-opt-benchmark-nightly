Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/obmalloc?download=true
inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@mi_heap_free:bb.a

bb.n:                                             ; preds = %bb.m
  tail call void @_mi_page_retire(ptr noundef %i.aj)
  br label %mi_free.exit

bb.o:                                             ; preds = %bb.l
  tail call void @_mi_free_generic(ptr noundef nonnull %i.v, ptr noundef %i.aj, i1 noundef zeroext true, ptr noundef nonnull %0)
  br label %mi_free.exit

bb.p:                                             ; preds = %bb.k
  tail call void @_mi_free_generic(ptr noundef nonnull %i.v, ptr noundef %i.aj, i1 noundef zeroext false, ptr noundef nonnull %0)
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_unsafe_destroy_all() local_unnamed_addr #2 {
bb.a:
  tail call void @mi_process_init(), !inline_history !174
  %i.a = tail call fastcc zeroext i1 @_mi_heap_init(), !inline_history !174
  br i1 %i.a, label %mi_heap_get_backing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = icmp slt i64 %.0.i.i.i.i.i, %i.c
  br i1 %i.e, label %bb.d, label %_mi_stat_increase.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i.i.i, i64 %i.c release monotonic, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %_mi_stat_increase.exit.i.i, label %bb.c, !llvm.loop !10

_mi_stat_increase.exit.i.i:                       ; preds = %bb.d, %bb.c
  %i.i = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 288), i64 1 monotonic, align 8 ; 0 uses
  %i.j = atomicrmw add ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_heap_get_backing.exit

mi_heap_get_backing.exit:                         ; preds = %bb.a, %_mi_stat_increase.exit.i.i
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !168
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !177  ; 2 uses
  %.not8 = icmp eq ptr %i.r, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %mi_heap_get_backing.exit, %mi_heap_destroy.exit
  %.09 = phi ptr [ %i.t, %mi_heap_destroy.exit ], [ %i.r, %mi_heap_get_backing.exit ] ; 6 uses
  %i.s = getelementptr i8, ptr %.09, i64 3048
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !178  ; 2 uses
  %i.u = getelementptr i8, ptr %.09, i64 3056
  %i.v = load i8, ptr %i.u, align 8, !tbaa !169, !range !86, !noundef !87
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %.not7 = icmp eq ptr %.09, @_mi_heap_empty
  br i1 %.not7, label %mi_heap_destroy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_mi_heap_destroy_pages(ptr noundef nonnull %.09)
  tail call fastcc void @mi_heap_free(ptr noundef nonnull %.09)
  br label %mi_heap_destroy.exit

bb.g:                                             ; preds = %.lr.ph
  tail call void @_mi_heap_destroy_pages(ptr noundef nonnull %.09)
  br label %mi_heap_destroy.exit

mi_heap_destroy.exit:                             ; preds = %bb.f, %bb.e, %bb.g
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !520

._crit_edge:                                      ; preds = %mi_heap_destroy.exit, %mi_heap_get_backing.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_set_default(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %_mi_heap_set_default_direct.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 2 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !95
  %i.e = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !54 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, -1
  br i1 %.not.i.i, label %_mi_heap_set_default_direct.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @pthread_setspecific(i32 noundef %i.e, ptr noundef nonnull %0) #52 ; 0 uses
  br label %_mi_heap_set_default_direct.exit

_mi_heap_set_default_direct.exit:                 ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ %i.d, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_set_default_direct(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  store ptr %0, ptr %i.a, align 8, !tbaa !95
  %i.b = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !54 ; 2 uses
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %_mi_prim_thread_associate_default_heap.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @pthread_setspecific(i32 noundef %i.b, ptr noundef %0) #52 ; 0 uses
  br label %_mi_prim_thread_associate_default_heap.exit

_mi_prim_thread_associate_default_heap.exit:      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @mi_heap_contains_block(ptr nofree noundef readnone captures(address) %0, ptr noundef %1) local_unnamed_addr #21 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @_mi_heap_empty
  %or.cond.not8 = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %1, null
  %or.cond6 = or i1 %or.cond.not8, %i.c
  br i1 %or.cond6, label %mi_heap_of_block.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = add i64 %i.d, -1
  %i.f = and i64 %i.e, -33554432                  ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2864), align 8, !tbaa !122
  %i.i = xor i64 %i.h, %i.f
  %i.j = getelementptr i8, ptr %i.g, i64 216
  %i.k = load i64, ptr %i.j, align 8, !tbaa !123
  %.not.i = icmp eq i64 %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %mi_heap_of_block.exit, !prof !96

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.d, %i.f
  %i.m = lshr i64 %i.l, 16
  %i.n = getelementptr i8, ptr %i.g, i64 264
  %i.o = getelementptr [80 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !100
  %i.r = zext i32 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr i8, ptr %i.o, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 48
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = icmp eq ptr %0, %i.w
  br label %mi_heap_of_block.exit

mi_heap_of_block.exit:                            ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.x, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @mi_heap_check_owned(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #22 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mi_heap_visit_pages.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %i.c = ptrtoint ptr %1 to i64
  %i.d = and i64 %i.c, 7
  %.not = icmp eq i64 %i.d, 0
  %or.cond = and i1 %i.b, %.not
  br i1 %or.cond, label %bb.c, label %mi_heap_visit_pages.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 3024
  %i.f = load i64, ptr %i.e, align 8, !tbaa !170
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %mi_heap_visit_pages.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 1040
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.preheader.i
  %.02229.i = phi i64 [ 0, %.preheader.i ], [ %i.ay, %.critedge.i ] ; 2 uses
  %i.i = getelementptr [24 x i8], ptr %i.h, i64 %.02229.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !105  ; 2 uses
  %.not.i11 = icmp eq ptr %i.j, null
  br i1 %.not.i11, label %.critedge.i, label %.lr.ph

bb.e:                                             ; preds = %mi_heap_page_check_owned.exit
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !19

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.0.i12 = phi ptr [ %i.l, %bb.e ], [ %i.j, %bb.d ] ; 6 uses
  %i.k = getelementptr i8, ptr %.0.i12, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !171  ; 2 uses
  %i.m = ptrtoint ptr %.0.i12 to i64              ; 3 uses
  %i.n = add i64 %i.m, -1
  %i.o = and i64 %i.n, -33554432
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  %i.q = getelementptr i8, ptr %.0.i12, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !65   ; 5 uses
  %i.s = zext i32 %i.r to i64                     ; 4 uses
  %i.t = load i32, ptr %.0.i12, align 8, !tbaa !93
  %i.u = zext i32 %i.t to i64
  %i.v = icmp ugt i32 %i.r, 7
  br i1 %i.v, label %bb.f, label %_mi_page_start.exit.thread.i

bb.f:                                             ; preds = %.lr.ph
  %i.w = icmp ult i32 %i.r, 65
  br i1 %i.w, label %bb.g, label %_mi_page_start.exit.i

bb.g:                                             ; preds = %bb.f
  %i.x = mul nuw nsw i64 %i.s, 3
  br label %_mi_page_start.exit.thread.i

_mi_page_start.exit.thread.i:                     ; preds = %bb.g, %.lr.ph
  %.0.i.i.i.ph.i = phi i64 [ 0, %.lr.ph ], [ %i.x, %bb.g ]
  %i.y = getelementptr i8, ptr %i.p, i64 264
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.m, %i.z
  %i.ab = sdiv exact i64 %i.aa, 80
  %i.ac = shl i64 %i.ab, 16
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 %.0.i.i.i.ph.i
  %i.af = getelementptr i8, ptr %.0.i12, i64 10
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !114
  br label %mi_heap_page_check_owned.exit

_mi_page_start.exit.i:                            ; preds = %bb.f
  %i.ah = icmp ult i32 %i.r, 513
  %spec.select.i.i.i.i = select i1 %i.ah, i64 %i.s, i64 0
  %i.ai = getelementptr i8, ptr %i.p, i64 264
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.m, %i.aj
  %i.al = sdiv exact i64 %i.ak, 80
  %i.am = shl i64 %i.al, 16
  %i.an = getelementptr i8, ptr %i.p, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 %spec.select.i.i.i.i ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.i12, i64 10
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !114 ; 2 uses
  %i.ar = icmp sgt i32 %i.r, -1
  br i1 %i.ar, label %mi_heap_page_check_owned.exit, label %_mi_segment_page_start.exit.i.i, !prof !97

_mi_segment_page_start.exit.i.i:                  ; preds = %_mi_page_start.exit.i
  %i.as = shl nuw nsw i64 %i.u, 16
  br label %mi_heap_page_check_owned.exit

mi_heap_page_check_owned.exit:                    ; preds = %_mi_page_start.exit.thread.i, %_mi_page_start.exit.i, %_mi_segment_page_start.exit.i.i
  %.in.i = phi i16 [ %i.aq, %_mi_segment_page_start.exit.i.i ], [ %i.ag, %_mi_page_start.exit.thread.i ], [ %i.aq, %_mi_page_start.exit.i ]
  %i.at = phi ptr [ %i.ao, %_mi_segment_page_start.exit.i.i ], [ %i.ae, %_mi_page_start.exit.thread.i ], [ %i.ao, %_mi_page_start.exit.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.as, %_mi_segment_page_start.exit.i.i ], [ %i.s, %_mi_page_start.exit.thread.i ], [ %i.s, %_mi_page_start.exit.i ]
  %i.au = zext i16 %.in.i to i64
  %i.av = mul nuw i64 %.0.i.i, %i.au
  %i.aw = getelementptr i8, ptr %i.at, i64 %i.av
  %2 = icmp uge ptr %1, %i.at
  %3 = icmp ult ptr %1, %i.aw
  %i.ax = select i1 %2, i1 %3, i1 false
  br i1 %i.ax, label %mi_heap_visit_pages.exit, label %bb.e, !llvm.loop !19

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %i.ay = add nuw nsw i64 %.02229.i, 1            ; 2 uses
  %exitcond.i = icmp eq i64 %i.ay, 75
  br i1 %exitcond.i, label %mi_heap_visit_pages.exit, label %bb.d, !llvm.loop !20

mi_heap_visit_pages.exit:                         ; preds = %.critedge.i, %mi_heap_page_check_owned.exit, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %mi_heap_page_check_owned.exit ], [ false, %bb.c ], [ false, %.critedge.i ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @mi_check_owned(ptr noundef %0) local_unnamed_addr #22 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %mi_heap_check_owned.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne ptr %i.b, @_mi_heap_empty
  %i.e = ptrtoint ptr %0 to i64
  %i.f = and i64 %i.e, 7
  %.not.i = icmp eq i64 %i.f, 0
  %or.cond.i = and i1 %.not.i, %i.d
  br i1 %or.cond.i, label %bb.c, label %mi_heap_check_owned.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 3024
  %i.h = load i64, ptr %i.g, align 8, !tbaa !170
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %mi_heap_check_owned.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.b, i64 1040
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i, %.preheader.i.i
  %.02229.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.ba, %.critedge.i.i ] ; 2 uses
  %i.k = getelementptr [24 x i8], ptr %i.j, i64 %.02229.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  %.not.i11.i = icmp eq ptr %i.l, null
  br i1 %.not.i11.i, label %.critedge.i.i, label %.lr.ph.i

bb.e:                                             ; preds = %mi_heap_page_check_owned.exit.i
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i, !llvm.loop !19

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.0.i12.i = phi ptr [ %i.n, %bb.e ], [ %i.l, %bb.d ] ; 6 uses
  %i.m = getelementptr i8, ptr %.0.i12.i, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !171  ; 2 uses
  %i.o = ptrtoint ptr %.0.i12.i to i64            ; 3 uses
  %i.p = add i64 %i.o, -1
  %i.q = and i64 %i.p, -33554432
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.s = getelementptr i8, ptr %.0.i12.i, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !65   ; 5 uses
  %i.u = zext i32 %i.t to i64                     ; 4 uses
  %i.v = load i32, ptr %.0.i12.i, align 8, !tbaa !93
  %i.w = zext i32 %i.v to i64
  %i.x = icmp ugt i32 %i.t, 7
  br i1 %i.x, label %bb.f, label %_mi_page_start.exit.thread.i.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.y = icmp ult i32 %i.t, 65
  br i1 %i.y, label %bb.g, label %_mi_page_start.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.z = mul nuw nsw i64 %i.u, 3
  br label %_mi_page_start.exit.thread.i.i

_mi_page_start.exit.thread.i.i:                   ; preds = %bb.g, %.lr.ph.i
  %.0.i.i.i.ph.i.i = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %bb.g ]
  %i.aa = getelementptr i8, ptr %i.r, i64 264
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.o, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 80
  %i.ae = shl i64 %i.ad, 16
  %i.af = getelementptr i8, ptr %i.r, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 %.0.i.i.i.ph.i.i
  %i.ah = getelementptr i8, ptr %.0.i12.i, i64 10
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !114
  br label %mi_heap_page_check_owned.exit.i

_mi_page_start.exit.i.i:                          ; preds = %bb.f
  %i.aj = icmp ult i32 %i.t, 513
  %spec.select.i.i.i.i.i = select i1 %i.aj, i64 %i.u, i64 0
  %i.ak = getelementptr i8, ptr %i.r, i64 264
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.o, %i.al
  %i.an = sdiv exact i64 %i.am, 80
  %i.ao = shl i64 %i.an, 16
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 %spec.select.i.i.i.i.i ; 2 uses
  %i.ar = getelementptr i8, ptr %.0.i12.i, i64 10
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !114 ; 2 uses
  %i.at = icmp sgt i32 %i.t, -1
  br i1 %i.at, label %mi_heap_page_check_owned.exit.i, label %_mi_segment_page_start.exit.i.i.i, !prof !97

_mi_segment_page_start.exit.i.i.i:                ; preds = %_mi_page_start.exit.i.i
  %i.au = shl nuw nsw i64 %i.w, 16
  br label %mi_heap_page_check_owned.exit.i

mi_heap_page_check_owned.exit.i:                  ; preds = %_mi_segment_page_start.exit.i.i.i, %_mi_page_start.exit.i.i, %_mi_page_start.exit.thread.i.i
  %.in.i.i = phi i16 [ %i.as, %_mi_segment_page_start.exit.i.i.i ], [ %i.ai, %_mi_page_start.exit.thread.i.i ], [ %i.as, %_mi_page_start.exit.i.i ]
  %i.av = phi ptr [ %i.aq, %_mi_segment_page_start.exit.i.i.i ], [ %i.ag, %_mi_page_start.exit.thread.i.i ], [ %i.aq, %_mi_page_start.exit.i.i ] ; 2 uses
  %.0.i.i.i = phi i64 [ %i.au, %_mi_segment_page_start.exit.i.i.i ], [ %i.u, %_mi_page_start.exit.thread.i.i ], [ %i.u, %_mi_page_start.exit.i.i ]
  %i.aw = zext i16 %.in.i.i to i64
  %i.ax = mul nuw i64 %.0.i.i.i, %i.aw
  %i.ay = getelementptr i8, ptr %i.av, i64 %i.ax
  %1 = icmp uge ptr %0, %i.av
  %2 = icmp ult ptr %0, %i.ay
  %i.az = select i1 %1, i1 %2, i1 false
  br i1 %i.az, label %mi_heap_check_owned.exit, label %bb.e, !llvm.loop !19

.critedge.i.i:                                    ; preds = %bb.e, %bb.d
  %i.ba = add nuw nsw i64 %.02229.i.i, 1          ; 2 uses
  %exitcond.i.i = icmp eq i64 %i.ba, 75
  br i1 %exitcond.i.i, label %mi_heap_check_owned.exit, label %bb.d, !llvm.loop !20

mi_heap_check_owned.exit:                         ; preds = %.critedge.i.i, %mi_heap_page_check_owned.exit.i, %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %mi_heap_page_check_owned.exit.i ], [ false, %bb.c ], [ false, %.critedge.i.i ]
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @_mi_heap_area_visit_blocks(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i64], align 16             ; 6 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !65   ; 6 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %mi_page_usable_block_size.exit, label %.thread, !prof !96

.thread:                                          ; preds = %bb.c
  %i.j = load i32, ptr %1, align 8, !tbaa !93
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 16
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = add i64 %i.m, -1
  %i.o = and i64 %i.n, -33554432
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = zext i32 %i.h to i64
  br label %bb.f

mi_page_usable_block_size.exit:                   ; preds = %bb.c
  %i.r = zext nneg i32 %i.h to i64                ; 5 uses
  %i.s = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.t = add i64 %i.s, -1
  %i.u = and i64 %i.t, -33554432
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = icmp samesign ugt i32 %i.h, 7
  br i1 %i.w, label %bb.d, label %_mi_page_start.exit

bb.d:                                             ; preds = %mi_page_usable_block_size.exit
  %i.x = icmp samesign ult i32 %i.h, 65
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = mul nuw nsw i64 %i.r, 3
  br label %_mi_page_start.exit

bb.f:                                             ; preds = %.thread, %bb.d
  %.0.i120125131 = phi i64 [ %i.l, %.thread ], [ %i.r, %bb.d ]
  %i.z = phi i64 [ %i.m, %.thread ], [ %i.s, %bb.d ]
  %i.aa = phi ptr [ %i.p, %.thread ], [ %i.v, %bb.d ]
  %i.ab = phi i64 [ %i.q, %.thread ], [ %i.r, %bb.d ]
  %i.ac = icmp ult i32 %i.h, 513
  %spec.select.i.i.i = select i1 %i.ac, i64 %i.ab, i64 0
  br label %_mi_page_start.exit

_mi_page_start.exit:                              ; preds = %mi_page_usable_block_size.exit, %bb.e, %bb.f
  %i.ad = phi ptr [ %i.v, %bb.e ], [ %i.v, %mi_page_usable_block_size.exit ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ae = phi i64 [ %i.s, %bb.e ], [ %i.s, %mi_page_usable_block_size.exit ], [ %i.z, %bb.f ]
  %.0.i.i126 = phi i64 [ %i.r, %bb.e ], [ %i.r, %mi_page_usable_block_size.exit ], [ %.0.i120125131, %bb.f ] ; 11 uses
  %.0.i.i.i = phi i64 [ %i.y, %bb.e ], [ 0, %mi_page_usable_block_size.exit ], [ %spec.select.i.i.i, %bb.f ]
  %i.af = getelementptr i8, ptr %i.ad, i64 264
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ae, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 80
  %i.aj = shl i64 %i.ai, 16
  %i.ak = getelementptr i8, ptr %i.ad, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 %.0.i.i.i ; 4 uses
  %i.am = getelementptr i8, ptr %1, i64 48
  %i.an = load atomic i64, ptr %i.am monotonic, align 8
  %i.ao = inttoptr i64 %i.an to ptr               ; 4 uses
  %i.ap = getelementptr i8, ptr %1, i64 10        ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !114 ; 5 uses
  %i.ar = icmp eq i16 %i.aq, 1
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_mi_page_start.exit
  %i.as = tail call zeroext i1 %2(ptr noundef %i.ao, ptr noundef nonnull %0, ptr noundef %i.al, i64 noundef %.0.i.i126, ptr noundef %3) #52
  br label %.critedge

bb.h:                                             ; preds = %_mi_page_start.exit
  %i.at = zext i16 %i.aq to i32
  %i.au = icmp eq i32 %i.e, %i.at
  br i1 %i.au, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.h
  %.not112.not151.not = icmp eq i16 %i.aq, 0
  br i1 %.not112.not151.not, label %.critedge, label %.lr.ph154

.lr.ph154:                                        ; preds = %.preheader, %bb.i
  %.0102153 = phi i64 [ %i.ax, %bb.i ], [ 0, %.preheader ]
  %.0103152 = phi ptr [ %i.aw, %bb.i ], [ %i.al, %.preheader ] ; 2 uses
  %i.av = tail call zeroext i1 %2(ptr noundef %i.ao, ptr noundef nonnull %0, ptr noundef %.0103152, i64 noundef %.0.i.i126, ptr noundef %3) #52 ; 3 uses
  br i1 %i.av, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph154
  %i.aw = getelementptr i8, ptr %.0103152, i64 %.0.i.i126
  %i.ax = add nuw nsw i64 %.0102153, 1            ; 2 uses
  %i.ay = load i16, ptr %i.ap, align 2, !tbaa !114
  %i.az = zext i16 %i.ay to i64
  %.not112.not = icmp samesign ult i64 %i.ax, %i.az
  br i1 %.not112.not, label %.lr.ph154, label %.critedge, !llvm.loop !521

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  %i.ba = zext i16 %i.aq to i64
  %i.bb = add nuw nsw i64 %i.ba, 63
  %i.bc = lshr i64 %i.bb, 6                       ; 4 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.bd, i1 false)
  %i.be = and i16 %i.aq, 63                       ; 2 uses
  %.not = icmp eq i16 %i.be, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = shl nsw i64 -1, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.a, i64 %i.bc
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !128
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bj = add nsw i64 %.0.i.i126, -1
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 false)
  %i.bl = sub nuw nsw i64 64, %i.bk               ; 2 uses
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = sub i64 %i.bm, %.0.i.i126
  %i.bo = shl i64 %i.bn, 32
  %i.bp = udiv i64 %i.bo, %.0.i.i126
  %i.bq = add nuw i64 %i.bp, 1
  %i.br = getelementptr i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !60 ; 2 uses
  %.not109142 = icmp eq ptr %i.bs, null
  br i1 %.not109142, label %.preheader136, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.bt = ptrtoint ptr %i.al to i64
  br label %bb.m

.preheader136:                                    ; preds = %bb.m, %bb.l
  %.not111146 = icmp eq i64 %i.bc, 0
  br i1 %.not111146, label %.critedge116, label %.lr.ph150

.lr.ph150:                                        ; preds = %.preheader136
  %i.bu = shl nuw nsw i64 %.0.i.i126, 6
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %.096143 = phi ptr [ %i.bs, %.lr.ph ], [ %i.ci, %bb.m ] ; 2 uses
  %i.bv = ptrtoint ptr %.096143 to i64
  %i.bw = sub i64 %i.bv, %i.bt                    ; 2 uses
  %i.bx = mul i64 %i.bw, %i.bq
  %i.by = lshr i64 %i.bx, 32
  %i.bz = add i64 %i.by, %i.bw
  %i.ca = lshr i64 %i.bz, %i.bl                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = and i64 %i.ca, 63
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = getelementptr [8 x i8], ptr %i.a, i64 %i.cb ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !128
  %i.cg = or i64 %i.cf, %i.cd
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !128
  %i.ch = load atomic i64, ptr %.096143 monotonic, align 8 ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr
  %.not109 = icmp eq i64 %i.ch, 0
  br i1 %.not109, label %.preheader136, label %bb.m, !llvm.loop !522

bb.n:                                             ; preds = %.lr.ph150, %.critedge114
  %.089148 = phi i64 [ 0, %.lr.ph150 ], [ %i.cx, %.critedge114 ] ; 2 uses
  %.090147 = phi ptr [ %i.al, %.lr.ph150 ], [ %.3, %.critedge114 ] ; 3 uses
  %i.cj = getelementptr [8 x i8], ptr %i.a, i64 %.089148
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !128 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %.preheader134, label %bb.p

.preheader134:                                    ; preds = %bb.n, %bb.o
  %.088145 = phi i64 [ %i.co, %bb.o ], [ 0, %bb.n ]
  %.191144 = phi ptr [ %i.cn, %bb.o ], [ %.090147, %bb.n ] ; 2 uses
  %i.cm = tail call zeroext i1 %2(ptr noundef %i.ao, ptr noundef nonnull %0, ptr noundef %.191144, i64 noundef %.0.i.i126, ptr noundef %3) #52
  br i1 %i.cm, label %bb.o, label %.critedge116

bb.o:                                             ; preds = %.preheader134
  %i.cn = getelementptr i8, ptr %.191144, i64 %.0.i.i126 ; 2 uses
  %i.co = add nuw nsw i64 %.088145, 1             ; 2 uses
  %exitcond = icmp eq i64 %i.co, 64
  br i1 %exitcond, label %.critedge114, label %.preheader134, !llvm.loop !523

bb.p:                                             ; preds = %bb.n
end_hunk_0
