Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/init?download=true
inline.NumInlined: 106
inline.NumDeleted: 25
begin_hunk_0_@mi_subproc_new:bb.a
mi_lock_acquire.exit:                             ; preds = %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = load ptr, ptr @subprocs, align 8, !tbaa !47 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !48
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %mi_lock_acquire.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.h, ptr %i.u, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %mi_lock_acquire.exit
  store ptr %i.h, ptr @subprocs, align 8, !tbaa !47
  %i.v = call i32 @pthread_mutex_unlock(ptr noundef nonnull @subprocs_lock) #13 ; 0 uses
  %i.w = call ptr @_mi_heap_new_for_subproc(ptr noundef nonnull %i.h, ptr noundef null, i1 noundef zeroext true) #13
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %mi_subproc_destroy.exit

bb.h:                                             ; preds = %bb.g
  %i.y = icmp eq ptr %i.h, @subproc_main
  br i1 %i.y, label %mi_subproc_destroy.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @mi_subproc_unsafe_destroy(ptr noundef nonnull %i.h, i1 noundef zeroext true) #14
  br label %mi_subproc_destroy.exit

mi_subproc_destroy.exit:                          ; preds = %bb.g, %bb.i, %bb.h, %_mi_subproc.exit
  %.sroa.018.1 = phi ptr [ null, %bb.i ], [ null, %_mi_subproc.exit ], [ null, %bb.h ], [ %i.h, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  ret ptr %.sroa.018.1
}

; Function Attrs: noinline nooutline nounwind uwtable
define hidden void @mi_thread_init() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc ptr @mi_thread_init_ex(ptr noundef null) #14, !inline_history !50 ; 0 uses
  ret void
}

declare ptr @_mi_meta_zalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @_mi_heap_new_for_subproc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nooutline nounwind uwtable
define hidden void @mi_subproc_destroy(ptr %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @subproc_main
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_subproc_unsafe_destroy(ptr noundef nonnull %0, i1 noundef zeroext true) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc void @mi_subproc_unsafe_destroy(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.c, label %mi_lock_acquire.exit.split

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @subprocs_lock) #13 ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %mi_lock_acquire.exit.split.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.b, ptr noundef nonnull @.str.5, i32 noundef %i.b) #13
  br label %mi_lock_acquire.exit.split.us

mi_lock_acquire.exit.split.us:                    ; preds = %bb.d, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !48   ; 4 uses
  %.not40.us = icmp eq ptr %i.e, null
  %.pre46 = load ptr, ptr %i.d, align 8, !tbaa !49 ; 3 uses
  br i1 %.not40.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %mi_lock_acquire.exit.split.us
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.pre46, ptr %i.f, align 8, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %mi_lock_acquire.exit.split.us
  %.not41.us = icmp eq ptr %.pre46, null
  br i1 %.not41.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %.pre46, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !48
  br label %.split.us

bb.h:                                             ; preds = %bb.f
  store ptr %i.e, ptr @subprocs, align 8, !tbaa !47
  br label %.split.us

.split.us:                                        ; preds = %bb.h, %bb.g
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @subprocs_lock) #13 ; 0 uses
  br label %.split

.split:                                           ; preds = %bb.m, %bb.l, %.split.us
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 4 uses
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #13 ; 3 uses
  %.not.i42 = icmp eq i32 %i.j, 0
  br i1 %.not.i42, label %mi_lock_acquire.exit43, label %bb.i

bb.i:                                             ; preds = %.split
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.j, ptr noundef nonnull @.str.5, i32 noundef %i.j) #13
  br label %mi_lock_acquire.exit43

mi_lock_acquire.exit43:                           ; preds = %.split, %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !51   ; 2 uses
  %.not3744 = icmp eq ptr %i.m, null
  br i1 %.not3744, label %._crit_edge, label %.lr.ph

mi_lock_acquire.exit.split:                       ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !48   ; 4 uses
  %.not40 = icmp eq ptr %i.p, null
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !49  ; 3 uses
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %mi_lock_acquire.exit.split
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.pre, ptr %i.q, align 8, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %mi_lock_acquire.exit.split
  %.not41 = icmp eq ptr %.pre, null
  br i1 %.not41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr %i.p, ptr %i.r, align 8, !tbaa !48
  br label %.split

bb.m:                                             ; preds = %bb.k
  store ptr %i.p, ptr @subprocs, align 8, !tbaa !47
  br label %.split

.lr.ph:                                           ; preds = %mi_lock_acquire.exit43, %bb.o
  %.03245 = phi ptr [ %i.t, %bb.o ], [ %i.m, %mi_lock_acquire.exit43 ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03245, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52   ; 2 uses
  %i.u = load atomic ptr, ptr %i.l seq_cst, align 8, !tbaa !53
  %.not39 = icmp eq ptr %.03245, %i.u
  br i1 %.not39, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  tail call void @_mi_heap_force_destroy(ptr noundef nonnull %.03245, i1 noundef zeroext false) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph
  %.not37 = icmp eq ptr %i.t, null
  br i1 %.not37, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.o, %mi_lock_acquire.exit43
  %i.v = load atomic ptr, ptr %i.l seq_cst, align 8, !tbaa !53
  %.not38 = icmp eq ptr %i.v, null
  br i1 %.not38, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.w = load atomic ptr, ptr %i.l seq_cst, align 8, !tbaa !53
  tail call void @_mi_heap_force_destroy(ptr noundef %i.w, i1 noundef zeroext false) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #13 ; 0 uses
  %i.y = icmp eq ptr %0, @subproc_main
  br i1 %i.y, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_mi_arenas_unsafe_destroy_all(ptr noundef nonnull %0) #13
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1488
  tail call void @_mi_stats_merge_into(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @subproc_main, i64 1488), ptr noundef nonnull %i.z) #13
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.ab = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.aa) #13 ; 0 uses
  %i.ac = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.i) #13 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1456
  tail call void @_mi_meta_free(ptr noundef %i.ae, ptr noundef nonnull %0, i64 noundef 5856, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.af) #13
  br label %bb.s

.critedge:                                        ; preds = %bb.q
  tail call void @_mi_thread_locals_done() #13
  tail call void @_mi_arenas_unsafe_destroy_all(ptr noundef nonnull %0) #13
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.ag = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %2) #13 ; 0 uses
  %i.ah = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.i) #13 ; 0 uses
  tail call void @_mi_page_map_unsafe_destroy() #13
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %.critedge, %bb.r
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @mi_subproc_add_current_thread(ptr nofree captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.c = load atomic ptr, ptr %i.b seq_cst, align 8, !tbaa !53
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %mi_theap_is_initialized.exit.thread, label %mi_theap_is_initialized.exit

mi_theap_is_initialized.exit:                     ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load atomic ptr, ptr %i.g monotonic, align 8
  %.not11 = icmp eq ptr %i.h, null
  br i1 %.not11, label %mi_theap_is_initialized.exit.thread, label %bb.d

bb.d:                                             ; preds = %mi_theap_is_initialized.exit
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %.not10 = icmp eq ptr %i.k, %0
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str, ptr noundef %i.k) #13
  br label %bb.g

mi_theap_is_initialized.exit.thread:              ; preds = %bb.c, %mi_theap_is_initialized.exit
  %i.l = load atomic ptr, ptr %i.b seq_cst, align 8, !tbaa !53
  %i.m = tail call fastcc ptr @mi_thread_init_ex(ptr noundef %i.l) #14 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %mi_theap_is_initialized.exit.thread, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

declare void @_mi_warning_message(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nooutline nounwind uwtable
define internal fastcc ptr @mi_thread_init_ex(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.mi_memid_s, align 8         ; 5 uses
  %i.a = tail call zeroext i1 @_mi_atomic_once_enter(ptr noundef nonnull @mi_process_init._mi_once) #13, !inline_history !56
  br i1 %i.a, label %.lr.ph, label %mi_process_init.exit

.lr.ph:                                           ; preds = %bb.a
  tail call fastcc void @mi_process_init_once() #14, !inline_history !56
  tail call void @_mi_atomic_once_release(ptr noundef nonnull @mi_process_init._mi_once) #13, !inline_history !56
  br label %mi_process_init.exit

mi_process_init.exit:                             ; preds = %.lr.ph, %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 5 uses
  %.not.i = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %.not.i, label %mi_theap_is_initialized.exit.thread.i, label %mi_theap_is_initialized.exit

mi_theap_is_initialized.exit:                     ; preds = %mi_process_init.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %mi_theap_is_initialized.exit.i, label %_mi_thread_init_theap_default.exit

mi_theap_is_initialized.exit.i:                   ; preds = %mi_theap_is_initialized.exit
  %i.f = load atomic ptr, ptr %i.d monotonic, align 8
  %.not.i8 = icmp eq ptr %i.f, null
  br i1 %.not.i8, label %mi_theap_is_initialized.exit.thread.i, label %bb.r

mi_theap_is_initialized.exit.thread.i:            ; preds = %mi_process_init.exit, %mi_theap_is_initialized.exit.i
  %i.g = load i64, ptr @mi_process_tld_main, align 64, !tbaa !37 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_mi_is_main_thread.exit.i, label %bb.b

bb.b:                                             ; preds = %mi_theap_is_initialized.exit.thread.i
  %i.i = tail call ptr @llvm.thread.pointer.p0()
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = icmp eq i64 %i.g, %i.j
  br label %_mi_is_main_thread.exit.i

_mi_is_main_thread.exit.i:                        ; preds = %bb.b, %mi_theap_is_initialized.exit.thread.i
  %i.l = phi i1 [ true, %mi_theap_is_initialized.exit.thread.i ], [ %i.k, %bb.b ]
  %i.m = icmp eq ptr %0, null                     ; 2 uses
  %or.cond.i = and i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_mi_is_main_thread.exit.i
  %i.n = load ptr, ptr @mi_process_heap_main, align 64, !tbaa !30
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %mi_heap_main_init.exit.i, !prof !29

bb.d:                                             ; preds = %bb.c
  store ptr @subproc_main, ptr @mi_process_heap_main, align 64, !tbaa !30
  store ptr @mi_theap_main, ptr getelementptr inbounds nuw (i8, ptr @mi_process_heap_main, i64 56), align 8, !tbaa !35
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @mi_process_heap_main, i64 32), align 32, !tbaa !36
  tail call fastcc void @mi_theap_main_init() #14
  tail call fastcc void @mi_subproc_main_init() #14
  %i.p = load i64, ptr @mi_process_tld_main, align 64, !tbaa !37
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.e, label %mi_tld_main_init.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @llvm.thread.pointer.p0()
  %i.s = ptrtoint ptr %i.r to i64
  store i64 %i.s, ptr @mi_process_tld_main, align 64, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @mi_process_tld_main, i64 40), i8 0, i64 40, i1 false)
  br label %mi_tld_main_init.exit.i.i

mi_tld_main_init.exit.i.i:                        ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @mi_process_heap_main, i64 64), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @mi_process_heap_main, i64 712), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @mi_process_heap_main, i64 2032), i8 0, i64 40, i1 false)
  br label %mi_heap_main_init.exit.i

bb.f:                                             ; preds = %_mi_is_main_thread.exit.i
  br i1 %i.m, label %bb.g, label %mi_heap_main.exit.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i, label %_mi_subproc.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_mi_subproc.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  br label %_mi_subproc.exit.i.i

_mi_subproc.exit.i.i:                             ; preds = %bb.i, %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.w, %bb.i ], [ @subproc_main, %bb.h ], [ @subproc_main, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1368 ; 2 uses
  %i.y = load atomic ptr, ptr %i.x acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %bb.j, label %mi_heap_main.exit.i, !prof !29

bb.j:                                             ; preds = %_mi_subproc.exit.i.i
  %i.z = icmp eq ptr %.0.i.i.i, @subproc_main
  br i1 %i.z, label %bb.k, label %mi_heap_main.exit.i

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @mi_heap_main_init() #14
  %i.aa = load atomic ptr, ptr %i.x acquire, align 8
  br label %mi_heap_main.exit.i

mi_heap_main.exit.i:                              ; preds = %bb.k, %bb.j, %_mi_subproc.exit.i.i, %bb.f
  %.020.i = phi ptr [ %0, %bb.f ], [ %i.y, %_mi_subproc.exit.i.i ], [ %i.aa, %bb.k ], [ @mi_process_heap_main, %bb.j ] ; 6 uses
  %i.ab = tail call ptr @llvm.thread.pointer.p0()
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.020.i, i64 64 ; 3 uses
  %i.ae = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ad) #13 ; 3 uses
  %.not.i.i30.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i30.i, label %mi_lock_acquire.exit.i.i, label %bb.l

bb.l:                                             ; preds = %mi_heap_main.exit.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.ae, ptr noundef nonnull @.str.5, i32 noundef %i.ae) #13
  br label %mi_lock_acquire.exit.i.i

mi_lock_acquire.exit.i.i:                         ; preds = %bb.l, %mi_heap_main.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %.020.i, i64 56
  %.011.i.i = load ptr, ptr %i.af, align 8, !tbaa !23 ; 2 uses
  %.not12.i.i = icmp eq ptr %.011.i.i, null
  br i1 %.not12.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %mi_lock_acquire.exit.i.i, %bb.m
  %.013.i.i = phi ptr [ %.0.i.i, %bb.m ], [ %.011.i.i, %mi_lock_acquire.exit.i.i ] ; 3 uses
  %i.ag = load ptr, ptr %.013.i.i, align 8, !tbaa !24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.ai = icmp eq i64 %i.ah, %i.ac
  br i1 %i.ai, label %mi_heap_check_for_existing_theap.exit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 248
  %.0.i.i = load ptr, ptr %i.aj, align 8, !tbaa !23 ; 2 uses
  %.not.i31.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i31.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !57

mi_heap_check_for_existing_theap.exit.i:          ; preds = %.lr.ph.i.i
  %i.ak = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ad) #13 ; 0 uses
  br label %mi_heap_main_init.exit.i

.loopexit.i:                                      ; preds = %bb.m, %mi_lock_acquire.exit.i.i
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ad) #13 ; 0 uses
  %i.am = load ptr, ptr %.020.i, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.an = call ptr @_mi_meta_zalloc(ptr noundef %i.am, i64 noundef 112, ptr noundef nonnull %1) #13 ; 10 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %mi_tld_alloc.exit.thread.i, label %bb.n

mi_tld_alloc.exit.thread.i:                       ; preds = %.loopexit.i
  call void (i32, ptr, ...) @_mi_error_message(i32 noundef 12, ptr noundef nonnull @.str.6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %_mi_thread_init_theap_default.exit

bb.n:                                             ; preds = %.loopexit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i8 0, i64 48, i1 false)
  store ptr %i.am, ptr %i.ar, align 8, !tbaa !25
  %i.as = call i32 @_mi_os_numa_node() #13
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 %i.as, ptr %i.at, align 8, !tbaa !58
  store i64 %i.ac, ptr %i.an, align 8, !tbaa !37
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1432
  %i.aw = atomicrmw add ptr %i.av, i64 1 monotonic, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !59
  %i.ay = call zeroext i1 @_mi_prim_thread_is_in_threadpool() #13
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 81
  %i.ba = zext i1 %i.ay to i8
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !60
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1424
  %i.bd = atomicrmw add ptr %i.bc, i64 1 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.be = call ptr @_mi_theap_create(ptr noundef nonnull %.020.i, ptr noundef nonnull %i.an) #13 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.o, label %mi_heap_main_init.exit.i

bb.o:                                             ; preds = %bb.n
  call fastcc void @mi_tld_free(ptr noundef nonnull %i.an) #14
  br label %_mi_thread_init_theap_default.exit

mi_heap_main_init.exit.i:                         ; preds = %bb.n, %mi_heap_check_for_existing_theap.exit.i, %mi_tld_main_init.exit.i.i, %bb.c
  %.124.i = phi ptr [ %.020.i, %bb.n ], [ %.020.i, %mi_heap_check_for_existing_theap.exit.i ], [ @mi_process_heap_main, %bb.c ], [ @mi_process_heap_main, %mi_tld_main_init.exit.i.i ] ; 3 uses
  %.121.i = phi ptr [ %i.be, %bb.n ], [ %.013.i.i, %mi_heap_check_for_existing_theap.exit.i ], [ @mi_theap_main, %bb.c ], [ @mi_theap_main, %mi_tld_main_init.exit.i.i ] ; 6 uses
  store ptr %.121.i, ptr %i.b, align 8, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %.121.i, i64 8
  %i.bh = load atomic ptr, ptr %i.bg monotonic, align 8
  %.not.i33.i = icmp eq ptr %i.bh, null
  br i1 %.not.i33.i, label %_mi_theap_default_set.exit.i, label %bb.p

bb.p:                                             ; preds = %mi_heap_main_init.exit.i
  call void @_mi_prim_thread_associate_default_theap(ptr noundef nonnull %.121.i) #13
  br label %_mi_theap_default_set.exit.i

_mi_theap_default_set.exit.i:                     ; preds = %bb.p, %mi_heap_main_init.exit.i
  %i.bi = call zeroext i1 @_mi_heap_theap_set(ptr noundef %.124.i, ptr noundef nonnull %.121.i) #13 ; 0 uses
  %i.bj = icmp eq ptr %.124.i, null
  br i1 %i.bj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_mi_theap_default_set.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.124.i, i64 32
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !36
  %i.bm = call ptr @_mi_thread_local_get(i64 noundef %i.bl) #13 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %mi_theap_is_initialized.exit.i, %_mi_theap_default_set.exit.i
  %.1.i.ph = phi ptr [ %.121.i, %_mi_theap_default_set.exit.i ], [ %i.c, %mi_theap_is_initialized.exit.i ], [ %.121.i, %bb.q ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 16
  %i.bo = load atomic ptr, ptr %i.bn monotonic, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1640
  call void @__mi_stat_increase_mt(ptr noundef nonnull %i.bp, i64 noundef 1) #13
  br label %_mi_thread_init_theap_default.exit

_mi_thread_init_theap_default.exit:               ; preds = %bb.o, %mi_tld_alloc.exit.thread.i, %mi_theap_is_initialized.exit, %bb.r
  %.0 = phi ptr [ %.1.i.ph, %bb.r ], [ %i.c, %mi_theap_is_initialized.exit ], [ null, %mi_tld_alloc.exit.thread.i ], [ null, %bb.o ]
  ret ptr %.0
}

; Function Attrs: nooutline nounwind uwtable
define hidden zeroext i1 @mi_subproc_visit_heaps(ptr %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.b) #13 ; 3 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %mi_lock_acquire.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.c, ptr noundef nonnull @.str.5, i32 noundef %i.c) #13
  br label %mi_lock_acquire.exit

mi_lock_acquire.exit:                             ; preds = %bb.b, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %.016 = load ptr, ptr %i.d, align 8, !tbaa !61  ; 2 uses
  %.not = icmp eq ptr %.016, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %mi_lock_acquire.exit
  %.1.lcssa = phi i1 [ true, %mi_lock_acquire.exit ], [ %i.f, %.lr.ph ]
  %i.e = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #13 ; 0 uses
  br label %bb.d

.lr.ph:                                           ; preds = %mi_lock_acquire.exit, %.lr.ph
  %.017 = phi ptr [ %.0, %.lr.ph ], [ %.016, %mi_lock_acquire.exit ] ; 2 uses
  %i.f = tail call zeroext i1 %1(ptr noundef nonnull %.017, ptr noundef %2) #13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.017, i64 16
  %.0 = load ptr, ptr %i.g, align 8, !tbaa !61    ; 2 uses
  %i.h = icmp ne ptr %.0, null
  %i.i = select i1 %i.h, i1 %i.f, i1 false
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !62

bb.d:                                             ; preds = %bb.a, %._crit_edge
  %.014 = phi i1 [ %.1.lcssa, %._crit_edge ], [ false, %bb.a ]
  ret i1 %.014
}

; Function Attrs: mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @_mi_is_main_thread() local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr @mi_process_tld_main, align 64, !tbaa !37 ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @llvm.thread.pointer.p0()
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = icmp eq i64 %i.a, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ true, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @_mi_thread_init() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @mi_thread_init_ex(ptr noundef null) #14
  ret ptr %i.a
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @mi_thread_done() local_unnamed_addr #2 {
bb.a:
  tail call void @_mi_thread_done(ptr noundef null) #14
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_thread_done(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %mi_theap_is_initialized.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %mi_theap_is_initialized.exit.thread, label %mi_theap_is_initialized.exit

mi_theap_is_initialized.exit:                     ; preds = %bb.a, %bb.b
  %.011 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.011, i64 8
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %mi_theap_is_initialized.exit.thread, label %bb.c

bb.c:                                             ; preds = %mi_theap_is_initialized.exit
  %i.f = load ptr, ptr %.011, align 8, !tbaa !24  ; 6 uses
  tail call void @_mi_thread_locals_thread_done() #13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1640
  tail call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.i, i64 noundef 1) #13
  %i.j = load i64, ptr %i.f, align 8, !tbaa !37
  %i.k = tail call ptr @llvm.thread.pointer.p0()
  %i.l = ptrtoint ptr %i.k to i64
  %.not = icmp eq i64 %i.j, %i.l
  br i1 %.not, label %bb.d, label %mi_theap_is_initialized.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  %i.n = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.m) #13 ; 3 uses
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %mi_lock_acquire.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.n, ptr noundef nonnull @.str.5, i32 noundef %i.n) #13
  br label %mi_lock_acquire.exit.i

mi_lock_acquire.exit.i:                           ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63   ; 2 uses
  %.not2327.i = icmp eq ptr %i.p, null
  br i1 %.not2327.i, label %._crit_edge.i, label %.lr.ph.i

bb.f:                                             ; preds = %._crit_edge.i
  store ptr @_mi_theap_empty, ptr %i.x, align 8, !tbaa !23
  tail call void @_mi_theap_incref(ptr noundef nonnull @_mi_theap_empty) #13
  tail call void @_mi_theap_decref(ptr noundef %i.y) #13
  br label %_mi_theap_cached_set.exit.i

_mi_theap_cached_set.exit.i:                      ; preds = %._crit_edge.i, %bb.f
  tail call void @_mi_tld_detach_theaps(ptr noundef nonnull %i.f) #13
  %i.q = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.m) #13 ; 3 uses
  %.not.i25.i = icmp eq i32 %i.q, 0
  br i1 %.not.i25.i, label %mi_lock_acquire.exit26.i, label %bb.g

bb.g:                                             ; preds = %_mi_theap_cached_set.exit.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.q, ptr noundef nonnull @.str.5, i32 noundef %i.q) #13
  br label %mi_lock_acquire.exit26.i

mi_lock_acquire.exit26.i:                         ; preds = %bb.g, %_mi_theap_cached_set.exit.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !63   ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !63
  %.not29.i = icmp eq ptr %i.r, null
  br i1 %.not29.i, label %mi_thread_theaps_done.exit, label %.lr.ph32.i

.lr.ph.i:                                         ; preds = %mi_lock_acquire.exit.i, %.lr.ph.i
  %.02228.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.p, %mi_lock_acquire.exit.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.02228.i, i64 232
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64   ; 2 uses
  tail call void @_mi_theap_collect_abandon(ptr noundef nonnull %.02228.i) #13
  %.not23.i = icmp eq ptr %i.t, null
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !65

._crit_edge.i:                                    ; preds = %.lr.ph.i, %mi_lock_acquire.exit.i
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.m) #13 ; 0 uses
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  store ptr @_mi_theap_empty, ptr %i.v, align 8, !tbaa !23
  %i.w = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_mi_theap_empty, i64 8) monotonic, align 8 ; 0 uses
  %i.x = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_cached) ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23   ; 2 uses
  %i.z = icmp eq ptr %i.y, @_mi_theap_empty
  br i1 %i.z, label %_mi_theap_cached_set.exit.i, label %bb.f

.lr.ph32.i:                                       ; preds = %mi_lock_acquire.exit26.i, %.lr.ph32.i
  %.02030.i = phi ptr [ %i.ab, %.lr.ph32.i ], [ %i.r, %mi_lock_acquire.exit26.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02030.i, i64 232 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64 ; 2 uses
  store ptr null, ptr %.02030.i, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  tail call void @_mi_theap_decref(ptr noundef nonnull %.02030.i) #13
  %.not.i8 = icmp eq ptr %i.ab, null
  br i1 %.not.i8, label %mi_thread_theaps_done.exit, label %.lr.ph32.i, !llvm.loop !66

mi_thread_theaps_done.exit:                       ; preds = %.lr.ph32.i, %mi_lock_acquire.exit26.i
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.m) #13 ; 0 uses
  tail call fastcc void @mi_tld_free(ptr noundef nonnull %i.f) #14
  br label %mi_theap_is_initialized.exit.thread

mi_theap_is_initialized.exit.thread:              ; preds = %bb.b, %mi_thread_theaps_done.exit, %bb.c, %mi_theap_is_initialized.exit
  ret void
}

declare void @_mi_thread_locals_thread_done() local_unnamed_addr #3

declare void @__mi_stat_decrease_mt(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nooutline nounwind uwtable
define internal fastcc void @mi_tld_free(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %i.a, label %bb.c, label %bb.b
end_hunk_0
