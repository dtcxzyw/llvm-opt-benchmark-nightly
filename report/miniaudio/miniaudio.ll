Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_slot_allocator_alloc:bb.a
; Function Attrs: norecurse nounwind uwtable
define range(i32 -3, 1) i32 @ma_slot_allocator_free(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  %i.c = lshr i32 %i.b, 5                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %i.f = lshr i32 %i.e, 5
  %i.g = and i32 %i.e, 31
  %.not.i = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not.i to i32
  %spec.select.i24 = add nuw nsw i32 %i.f, %i.h
  %.not = icmp samesign ult i32 %i.c, %spec.select.i24
  br i1 %.not, label %.critedge.preheader, label %.loopexit

.critedge.preheader:                              ; preds = %bb.b
  %i.i = and i32 %i.b, 31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = zext nneg i32 %i.c to i64                ; 2 uses
  %i.l = shl nuw i32 1, %i.i
  %i.m = xor i32 %i.l, -1
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %bb.c
  %i.n = load atomic i32, ptr %i.j seq_cst, align 8
  %.not22 = icmp eq i32 %i.n, 0
  br i1 %.not22, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.o = load ptr, ptr %0, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.k
  %i.q = load atomic i32, ptr %i.p seq_cst, align 4 ; 2 uses
  %i.r = and i32 %i.q, %i.m
  %i.s = load ptr, ptr %0, align 8, !tbaa !65
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.k
  %i.u = cmpxchg volatile ptr %i.t, i32 %i.q, i32 %i.r seq_cst seq_cst, align 4
  %.not23 = extractvalue { i32, i1 } %i.u, 1
  br i1 %.not23, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.v = atomicrmw sub ptr %i.j, i32 1 seq_cst, align 8 ; 0 uses
  br label %.loopexit, !llvm.loop !73

.loopexit:                                        ; preds = %.critedge, %bb.d, %bb.b, %bb.a
  %.2 = phi i32 [ -2, %bb.b ], [ -2, %bb.a ], [ 0, %bb.d ], [ -3, %.critedge ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_job_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_job) align 8 captures(address_is_null) %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 0, i64 104, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  store i16 %1, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 -1, ptr %i.a, align 2, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.b, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ma_job_process(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.c = icmp ugt i16 %i.b, 11
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i16 %i.b to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @g_jobVTable, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0) #55
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ -2, %bb.a ], [ -3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @ma_job_queue_config_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.sroa.2.0.insert.ext = zext i32 %1 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_job_queue_get_heap_size(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !59
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !76   ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = lshr i32 %i.d, 5
  %i.g = and i32 %i.d, 31
  %.not.i.i.i.i = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not.i.i.i.i to i32
  %spec.select.i.i.i.i = add nuw nsw i32 %i.f, %i.h
  %i.i = shl nuw nsw i32 %spec.select.i.i.i.i, 2
  %narrow.i.i.i = add nuw nsw i32 %i.i, 4
  %i.j = and i32 %narrow.i.i.i, 2147483640
  %i.k = zext nneg i32 %i.j to i64
  %i.l = zext i32 %i.d to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 4
  %i.o = and i64 %i.n, 34359738360
  %i.p = mul nuw nsw i64 %i.l, 104
  %i.q = add nuw nsw i64 %i.o, %i.p
  %i.r = add nuw nsw i64 %i.q, %i.k
  store i64 %i.r, ptr %1, align 8, !tbaa !59
  br label %ma_job_queue_get_heap_layout.exit.thread

ma_job_queue_get_heap_layout.exit.thread:         ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @ma_job_queue_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_job_queue_get_heap_layout.exit.thread, label %ma_zero_memory_default.exit32

ma_zero_memory_default.exit32:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %2, i8 0, i64 192, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !76   ; 5 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %i.d, 5
  %i.g = and i32 %i.d, 31
  %.not.i.i.i.i = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not.i.i.i.i to i32
  %spec.select.i.i.i.i = add nuw nsw i32 %i.f, %i.h
  %i.i = shl nuw nsw i32 %spec.select.i.i.i.i, 2
  %narrow.i.i.i = add nuw nsw i32 %i.i, 4
  %i.j = and i32 %narrow.i.i.i, 2147483640
  %i.k = zext nneg i32 %i.j to i64
  %i.l = zext i32 %i.d to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 4
  %i.o = and i64 %i.n, 34359738360
  %i.p = add nuw nsw i64 %i.o, %i.k               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 176
  store ptr %1, ptr %i.q, align 8, !tbaa !78
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = mul nuw nsw i64 %i.l, 104
  %i.s = add nuw nsw i64 %i.p, %i.r
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.s, i1 false)
  %.pre = load i32, ptr %i.c, align 4, !tbaa !76
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.c, %bb.d
  %i.t = phi i32 [ %i.d, %bb.c ], [ %.pre, %bb.d ] ; 6 uses
  %i.u = load i32, ptr %0, align 4, !tbaa !81
  store i32 %i.u, ptr %2, align 8, !tbaa !82
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.t, ptr %i.v, align 4, !tbaa !83
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !84
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.y, i8 0, i64 40, i1 false)
  %i.z = icmp eq i32 %i.t, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.z
  br i1 %or.cond, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.e

bb.e:                                             ; preds = %ma_zero_memory_default.exit
  %i.aa = lshr i32 %i.t, 5
  %i.ab = and i32 %i.t, 31
  %.not.i.i.i = icmp ne i32 %i.ab, 0
  %i.ac = zext i1 %.not.i.i.i to i32
  %spec.select.i.i.i = add nuw nsw i32 %i.aa, %i.ac
  %i.ad = shl nuw nsw i32 %spec.select.i.i.i, 2
  %narrow.i.i = add nuw nsw i32 %i.ad, 4
  %i.ae = and i32 %narrow.i.i, 2147483640
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = zext i32 %i.t to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 4
  %i.aj = and i64 %i.ai, 34359738360
  %i.ak = add nuw nsw i64 %i.aj, %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 152
  store ptr %1, ptr %i.al, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.ak, i1 false)
  store ptr %1, ptr %i.y, align 8, !tbaa !65
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 128
  store ptr %i.am, ptr %i.an, align 8, !tbaa !66
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i32 %i.t, ptr %i.ao, align 4, !tbaa !67
  %i.ap = load i32, ptr %2, align 8, !tbaa !82
  %i.aq = and i32 %i.ap, 1
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %ma_semaphore_init.exit

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.as, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.au = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.at, ptr noundef null) #55
  %.not.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i, label %bb.g, label %ma_semaphore_init.exit

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aw = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.av, ptr noundef null) #55
  %.not13.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not13.i.i, label %ma_semaphore_init.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.at) #55 ; 0 uses
  br label %ma_semaphore_init.exit

ma_semaphore_init.exit:                           ; preds = %bb.g, %bb.h, %bb.f, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.az = tail call i32 @ma_slot_allocator_alloc(ptr noundef nonnull %i.y, ptr noundef nonnull %i.ay) ; 0 uses
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !84
  %i.bb = load i64, ptr %i.ay, align 8, !tbaa !85 ; 2 uses
  %i.bc = and i64 %i.bb, 65535
  %i.bd = getelementptr inbounds nuw [104 x i8], ptr %i.ba, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 -1, ptr %i.be, align 8, !tbaa !74
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bb, ptr %i.bf, align 8, !tbaa !86
  br label %ma_job_queue_get_heap_layout.exit.thread

ma_job_queue_get_heap_layout.exit.thread:         ; preds = %ma_zero_memory_default.exit, %ma_zero_memory_default.exit32, %bb.b, %bb.a, %ma_semaphore_init.exit
  %.0 = phi i32 [ 0, %ma_semaphore_init.exit ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit32 ], [ -2, %bb.b ], [ -2, %ma_zero_memory_default.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @ma_job_queue_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !76   ; 4 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i32 %i.c, 5
  %i.f = and i32 %i.c, 31
  %.not.i.i.i.i.i = icmp ne i32 %i.f, 0
  %i.g = zext i1 %.not.i.i.i.i.i to i32
  %spec.select.i.i.i.i.i = add nuw nsw i32 %i.e, %i.g
  %i.h = shl nuw nsw i32 %spec.select.i.i.i.i.i, 2
  %narrow.i.i.i.i = add nuw nsw i32 %i.h, 4
  %i.i = and i32 %narrow.i.i.i.i, 2147483640
  %i.j = zext nneg i32 %i.i to i64
  %i.k = zext i32 %i.c to i64                     ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = add nuw nsw i64 %i.l, 4
  %i.n = and i64 %i.m, 34359738360
  %i.o = mul nuw nsw i64 %i.k, 104
  %i.p = add nuw nsw i64 %i.n, %i.o
  %i.q = add nuw nsw i64 %i.p, %i.j               ; 2 uses
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22   ; 2 uses
  %.not8.i = icmp eq ptr %i.s, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %1, align 8, !tbaa !25
  %i.u = tail call ptr %i.s(i64 noundef %i.q, ptr noundef %i.t) #55, !inline_history !26
  br label %ma_malloc.exit

bb.f:                                             ; preds = %bb.c
  %i.v = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #67
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.e, %bb.f
  %.0.i20 = phi ptr [ %i.u, %bb.e ], [ %i.v, %bb.f ] ; 4 uses
  %i.w = icmp eq ptr %.0.i20, null
  br i1 %i.w, label %ma_free.exit, label %bb.g

bb.g:                                             ; preds = %ma_malloc.exit
  %i.x = tail call i32 @ma_job_queue_init_preallocated(ptr noundef nonnull %0, ptr noundef nonnull %.0.i20, ptr noundef %2) ; 4 uses
  %.not19 = icmp eq i32 %i.x, 0
  br i1 %.not19, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 2 uses
  %.not9.i = icmp eq ptr %i.z, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %1, align 8, !tbaa !25
  tail call void %i.z(ptr noundef nonnull %.0.i20, ptr noundef %i.aa) #55, !inline_history !32
  br label %ma_free.exit

bb.k:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %.0.i20) #55
  br label %ma_free.exit

bb.l:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i32 1, ptr %i.ab, align 8, !tbaa !87
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.d, %bb.b, %bb.a, %bb.k, %bb.j, %bb.i, %ma_malloc.exit, %bb.l
  %.013 = phi i32 [ 0, %bb.l ], [ %i.x, %bb.j ], [ -2, %bb.b ], [ -4, %ma_malloc.exit ], [ -4, %bb.d ], [ %i.x, %bb.k ], [ %i.x, %bb.i ], [ -2, %bb.a ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define void @ma_job_queue_uninit(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !82
  %i.c = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.e) #55 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.g) #55 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load i32, ptr %i.i, align 8, !tbaa !68
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %ma_slot_allocator_uninit.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %ma_slot_allocator_uninit.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %ma_slot_allocator_uninit.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %1, align 8, !tbaa !25
  tail call void %i.o(ptr noundef nonnull %i.l, ptr noundef %i.p) #55, !inline_history !88
  br label %ma_slot_allocator_uninit.exit

end_hunk_0
begin_hunk_1_@ma_device_post_init:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %ma_calculate_buffer_size_in_frames_from_milliseconds.exit77, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #55
  br i1 %or.cond3, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %10, i8 0, i64 1544, i1 false)
  %i.bg = load ptr, ptr %0, align 8, !tbaa !132   ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !133 ; 2 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = call i32 %i.bi(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %10) #55, !inline_history !136
  br label %ma_device_get_info.exit

bb.s:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !137
  %i.bm = icmp eq i32 %i.bl, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !138 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null                 ; 2 uses
  %i.bq = and i1 %i.bm, %i.bp
  %.019.i = select i1 %i.bq, i32 1, i32 2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %9, i8 0, i64 1544, i1 false)
  br i1 %i.bp, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %9, ptr noundef nonnull align 8 dereferenceable(256) %i.bo, i64 256, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !139
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %ma_context_get_device_info.exit27.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 360 ; 2 uses
  %i.bv = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bu) #55 ; 0 uses
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !139
  %i.bx = call i32 %i.bw(ptr noundef nonnull %i.bg, i32 noundef %.019.i, ptr noundef %i.bo, ptr noundef nonnull %9) #55, !inline_history !140
  %i.by = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bu) #55 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %10, ptr noundef nonnull align 8 dereferenceable(1544) %9, i64 1544, i1 false), !tbaa.struct !141
  br label %ma_context_get_device_info.exit27.i

ma_context_get_device_info.exit27.i:              ; preds = %bb.v, %bb.u
  %.0.i26.i = phi i32 [ %i.bx, %bb.v ], [ -3, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #55
  br label %ma_device_get_info.exit

ma_device_get_info.exit:                          ; preds = %bb.r, %ma_context_get_device_info.exit27.i
  %.0.i78 = phi i32 [ %.0.i26.i, %ma_context_get_device_info.exit27.i ], [ %i.bj, %bb.r ]
  %i.bz = icmp eq i32 %.0.i78, 0
  br i1 %i.bz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %ma_device_get_info.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 256
  %i.cc = call i32 @ma_strncpy_s(ptr noundef nonnull %i.ca, i64 noundef 256, ptr noundef nonnull %i.cb, i64 noundef -1) ; 0 uses
  br label %bb.aa

bb.x:                                             ; preds = %ma_device_get_info.exit
  %i.cd = load ptr, ptr %3, align 8, !tbaa !142
  %i.ce = icmp eq ptr %i.cd, null
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2288 ; 2 uses
  br i1 %i.ce, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cg = call i32 @ma_strncpy_s(ptr noundef nonnull %i.cf, i64 noundef 256, ptr noundef nonnull @.str.10, i64 noundef -1) ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ch = call i32 @ma_strncpy_s(ptr noundef nonnull %i.cf, i64 noundef 256, ptr noundef nonnull @.str.11, i64 noundef -1) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.z, %bb.y, %bb.p
  br i1 %or.cond5, label %bb.ab, label %bb.al

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %10, i8 0, i64 1544, i1 false)
  %i.ci = load ptr, ptr %0, align 8, !tbaa !132   ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !133 ; 2 uses
  %.not.i79 = icmp eq ptr %i.ck, null
  br i1 %.not.i79, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = call i32 %i.ck(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %10) #55, !inline_history !136
  br label %ma_device_get_info.exit81

bb.ad:                                            ; preds = %bb.ab
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !143 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %8, i8 0, i64 1544, i1 false)
  %.not.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %8, ptr noundef nonnull align 8 dereferenceable(256) %i.cn, i64 256, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !139
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %ma_context_get_device_info.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 360 ; 2 uses
  %i.cs = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cr) #55 ; 0 uses
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !139
  %i.cu = call i32 %i.ct(ptr noundef nonnull %i.ci, i32 noundef 1, ptr noundef %i.cn, ptr noundef nonnull %8) #55, !inline_history !140
  %i.cv = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cr) #55 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %10, ptr noundef nonnull align 8 dereferenceable(1544) %8, i64 1544, i1 false), !tbaa.struct !141
  br label %ma_context_get_device_info.exit.i

ma_context_get_device_info.exit.i:                ; preds = %bb.ag, %bb.af
  %.0.i.i = phi i32 [ %i.cu, %bb.ag ], [ -3, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #55
  br label %ma_device_get_info.exit81

ma_device_get_info.exit81:                        ; preds = %bb.ac, %ma_context_get_device_info.exit.i
  %.0.i80 = phi i32 [ %i.cl, %bb.ac ], [ %.0.i.i, %ma_context_get_device_info.exit.i ]
  %i.cw = icmp eq i32 %.0.i80, 0
  br i1 %i.cw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %ma_device_get_info.exit81
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 256
  %i.cz = call i32 @ma_strncpy_s(ptr noundef nonnull %i.cx, i64 noundef 256, ptr noundef nonnull %i.cy, i64 noundef -1) ; 0 uses
  br label %bb.al

bb.ai:                                            ; preds = %ma_device_get_info.exit81
  %i.da = load ptr, ptr %2, align 8, !tbaa !142
  %i.db = icmp eq ptr %i.da, null
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  br i1 %i.db, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dd = call i32 @ma_strncpy_s(ptr noundef nonnull %i.dc, i64 noundef 256, ptr noundef nonnull @.str.12, i64 noundef -1) ; 0 uses
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.de = call i32 @ma_strncpy_s(ptr noundef nonnull %i.dc, i64 noundef 256, ptr noundef nonnull @.str.13, i64 noundef -1) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.ak, %bb.aj, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #55
  br i1 %or.cond3, label %bb.am, label %ma_channel_map_copy.exit.i

bb.am:                                            ; preds = %bb.al
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 2548 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !144
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !105
  store i32 %i.dj, ptr %i.df, align 4, !tbaa !144
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 2552 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !145 ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !120 ; 2 uses
  store i32 %i.do, ptr %i.dk, align 8, !tbaa !145
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dp = phi i32 [ %i.do, %bb.ap ], [ %i.dl, %bb.ao ] ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2556 ; 4 uses
  %i.dr = load i8, ptr %i.dq, align 4, !tbaa !9
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.ar, label %ma_channel_map_copy.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !120
  %i.dv = icmp eq i32 %i.du, %i.dp
  br i1 %i.dv, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %.not227.i = icmp eq i32 %i.dp, 0
  br i1 %.not227.i, label %ma_channel_map_copy.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.dx = zext i32 %i.dp to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr nonnull readonly align 1 %i.dw, i64 %i.dx, i1 false)
  br label %ma_channel_map_copy.exit.i

bb.au:                                            ; preds = %bb.ar
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !146
  %i.ea = icmp eq i32 %i.dz, 1
  %.not.i.i83 = icmp eq i32 %i.dp, 0              ; 2 uses
  br i1 %i.ea, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  br i1 %.not.i.i83, label %ma_channel_map_copy.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eb = zext i32 %i.dp to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dq, i8 0, i64 %i.eb, i1 false)
  br label %ma_channel_map_copy.exit.i

bb.ax:                                            ; preds = %bb.au
  br i1 %.not.i.i83, label %ma_channel_map_copy.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ax, %.preheader.i.i
  %.024.i.i = phi i32 [ %i.ef, %.preheader.i.i ], [ 0, %bb.ax ] ; 2 uses
  %.01723.i.i = phi ptr [ %i.ed, %.preheader.i.i ], [ %i.dq, %bb.ax ] ; 2 uses
  %.01822.i.i = phi i64 [ %i.ee, %.preheader.i.i ], [ 254, %bb.ax ]
  %i.ec = call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.dp, i32 noundef %.024.i.i)
  store i8 %i.ec, ptr %.01723.i.i, align 1, !tbaa !9
  %i.ed = getelementptr inbounds nuw i8, ptr %.01723.i.i, i64 1
  %i.ee = add nsw i64 %.01822.i.i, -1             ; 2 uses
  %i.ef = add nuw nsw i32 %.024.i.i, 1            ; 2 uses
  %i.eg = icmp uge i32 %i.ef, %i.dp
  %i.eh = icmp eq i64 %i.ee, 0
  %or.cond5.i.i = select i1 %i.eg, i1 true, i1 %i.eh
  br i1 %or.cond5.i.i, label %ma_channel_map_copy.exit.i, label %.preheader.i.i, !llvm.loop !147

ma_channel_map_copy.exit.i:                       ; preds = %.preheader.i.i, %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.as, %bb.aq, %bb.al
  br i1 %or.cond5, label %bb.ay, label %ma_channel_map_copy.exit166.i

bb.ay:                                            ; preds = %ma_channel_map_copy.exit.i
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1116 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !148
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.em = load i32, ptr %i.el, align 4, !tbaa !127
  store i32 %i.em, ptr %i.ei, align 4, !tbaa !148
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !149 ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !128 ; 2 uses
  store i32 %i.er, ptr %i.en, align 8, !tbaa !149
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.es = phi i32 [ %i.er, %bb.bb ], [ %i.eo, %bb.ba ] ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 4 uses
  %i.eu = load i8, ptr %i.et, align 4, !tbaa !9
  %i.ev = icmp eq i8 %i.eu, 0
  br i1 %i.ev, label %bb.bd, label %ma_channel_map_copy.exit166.i

bb.bd:                                            ; preds = %bb.bc
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !128
  %i.ey = icmp eq i32 %i.ex, %i.es
  br i1 %i.ey, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %.not228.i = icmp eq i32 %i.es, 0
  br i1 %.not228.i, label %ma_channel_map_copy.exit166.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.fa = zext i32 %i.es to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.et, ptr nonnull readonly align 1 %i.ez, i64 %i.fa, i1 false)
  br label %ma_channel_map_copy.exit166.i

bb.bg:                                            ; preds = %bb.bd
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !150
  %i.fd = icmp eq i32 %i.fc, 1
  %.not.i167.i = icmp eq i32 %i.es, 0             ; 2 uses
  br i1 %i.fd, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not.i167.i, label %ma_channel_map_copy.exit166.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fe = zext i32 %i.es to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.et, i8 0, i64 %i.fe, i1 false)
  br label %ma_channel_map_copy.exit166.i

bb.bj:                                            ; preds = %bb.bg
  br i1 %.not.i167.i, label %ma_channel_map_copy.exit166.i, label %.preheader.i169.i

.preheader.i169.i:                                ; preds = %bb.bj, %.preheader.i169.i
  %.024.i170.i = phi i32 [ %i.fi, %.preheader.i169.i ], [ 0, %bb.bj ] ; 2 uses
  %.01723.i171.i = phi ptr [ %i.fg, %.preheader.i169.i ], [ %i.et, %bb.bj ] ; 2 uses
  %.01822.i172.i = phi i64 [ %i.fh, %.preheader.i169.i ], [ 254, %bb.bj ]
  %i.ff = call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.es, i32 noundef %.024.i170.i)
  store i8 %i.ff, ptr %.01723.i171.i, align 1, !tbaa !9
  %i.fg = getelementptr inbounds nuw i8, ptr %.01723.i171.i, i64 1
  %i.fh = add nsw i64 %.01822.i172.i, -1          ; 2 uses
  %i.fi = add nuw nsw i32 %.024.i170.i, 1         ; 2 uses
  %i.fj = icmp uge i32 %i.fi, %i.es
  %i.fk = icmp eq i64 %i.fh, 0
  %or.cond5.i173.i = select i1 %i.fj, i1 true, i1 %i.fk
  br i1 %or.cond5.i173.i, label %ma_channel_map_copy.exit166.i, label %.preheader.i169.i, !llvm.loop !147

ma_channel_map_copy.exit166.i:                    ; preds = %.preheader.i169.i, %bb.bj, %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.bc, %ma_channel_map_copy.exit.i
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !151 ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %ma_channel_map_copy.exit166.i
  br i1 %or.cond3, label %.thread.i, label %.thread212.i

.thread.i:                                        ; preds = %bb.bk
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !121 ; 3 uses
  store i32 %i.fp, ptr %i.fl, align 4, !tbaa !151
  br label %bb.bm

.thread212.i:                                     ; preds = %bb.bk
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !129
  store i32 %i.fr, ptr %i.fl, align 4, !tbaa !151
  br label %bb.cg

bb.bl:                                            ; preds = %ma_channel_map_copy.exit166.i
  br i1 %or.cond3, label %._crit_edge.i, label %bb.cg

._crit_edge.i:                                    ; preds = %bb.bl
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !121
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge.i, %.thread.i
  %i.fs = phi i32 [ %i.fm, %._crit_edge.i ], [ %i.fp, %.thread.i ]
  %i.ft = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.fp, %.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fw, i8 0, i64 80, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.ft, ptr %i.fy, align 16, !tbaa !152
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !157
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 2548
  %i.gc = load <2 x i32>, ptr %i.fx, align 4, !tbaa !8
  %i.gd = load <2 x i32>, ptr %i.gb, align 4, !tbaa !8
  %i.ge = shufflevector <2 x i32> %i.gc, <2 x i32> %i.gd, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.ge, ptr %6, align 16, !tbaa !8
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %i.fs, ptr %i.gf, align 4, !tbaa !158
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 2556
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.gg, ptr %i.gh, align 16, !tbaa !159
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.gk = load <2 x i32>, ptr %i.gi, align 8, !tbaa !8
  store <2 x i32> %i.gk, ptr %i.gj, align 4, !tbaa !8
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !160
  store i32 %i.gm, ptr %i.fu, align 8, !tbaa !161
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !162
  store i32 %i.go, ptr %i.fv, align 16, !tbaa !163
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.gr = load <2 x ptr>, ptr %i.gp, align 8, !tbaa !33
  store <2 x ptr> %i.gr, ptr %i.gq, align 16, !tbaa !33
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gt = load atomic i32, ptr %i.gs seq_cst, align 8
  %.not.i82 = icmp eq i32 %i.gt, 0
  br i1 %.not.i82, label %ma_data_converter_uninit.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gu = load ptr, ptr %0, align 8, !tbaa !132   ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 288 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 3395
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !164
  %.not.i176.i = icmp eq i8 %i.gx, 0
  br i1 %.not.i176.i, label %ma_resampler_uninit.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !165 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %ma_resampler_uninit.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !166 ; 2 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %ma_resampler_uninit.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 3216
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !168
  %i.hh = load ptr, ptr %i.gy, align 8, !tbaa !169
  call void %i.hd(ptr noundef %i.hg, ptr noundef %i.hh, ptr noundef nonnull %i.gv) #55, !inline_history !170
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 3384
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !171
  %.not.i.i.i = icmp eq i32 %i.hj, 0
  br i1 %.not.i.i.i, label %ma_resampler_uninit.exit.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 3376
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !172 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %ma_resampler_uninit.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gu, i64 312
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not9.i.i.i.i, label %ma_resampler_uninit.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hp = load ptr, ptr %i.gv, align 8, !tbaa !25
  call void %i.ho(ptr noundef nonnull %i.hl, ptr noundef %i.hp) #55, !inline_history !173
  br label %ma_resampler_uninit.exit.i.i

ma_resampler_uninit.exit.i.i:                     ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !174
  %.not.i10.i.i = icmp eq i32 %i.hr, 0
  br i1 %.not.i10.i.i, label %ma_channel_converter_uninit.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %ma_resampler_uninit.exit.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !175 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %ma_channel_converter_uninit.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gu, i64 312
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i12.i.i = icmp eq ptr %i.hw, null
  br i1 %.not9.i.i12.i.i, label %ma_channel_converter_uninit.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hx = load ptr, ptr %i.gv, align 8, !tbaa !25
  call void %i.hw(ptr noundef nonnull %i.ht, ptr noundef %i.hx) #55, !inline_history !176
  br label %ma_channel_converter_uninit.exit.i.i

ma_channel_converter_uninit.exit.i.i:             ; preds = %bb.bw, %bb.bv, %bb.bu, %ma_resampler_uninit.exit.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 3397
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !177
  %.not9.i.i = icmp eq i8 %i.hz, 0
  br i1 %.not9.i.i, label %ma_data_converter_uninit.exit.i, label %bb.bx

bb.bx:                                            ; preds = %ma_channel_converter_uninit.exit.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 3400
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !178 ; 2 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %ma_data_converter_uninit.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.id = getelementptr inbounds nuw i8, ptr %i.gu, i64 312
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not9.i.i.i, label %ma_data_converter_uninit.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.if = load ptr, ptr %i.gv, align 8, !tbaa !25
  call void %i.ie(ptr noundef nonnull %i.ib, ptr noundef %i.if) #55, !inline_history !179
  br label %ma_data_converter_uninit.exit.i

ma_data_converter_uninit.exit.i:                  ; preds = %bb.bz, %bb.by, %bb.bx, %ma_channel_converter_uninit.exit.i.i, %bb.bm
  %i.ig = load ptr, ptr %0, align 8, !tbaa !132   ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 288 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 3096 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.ij = call fastcc i32 @ma_data_converter_get_heap_layout(ptr noundef nonnull readonly %6, ptr noundef %5) ; 2 uses
  %.not.i.i177.i = icmp eq i32 %i.ij, 0
  br i1 %.not.i.i177.i, label %bb.ca, label %ma_data_converter_get_heap_size.exit.i.i

ma_data_converter_get_heap_size.exit.i.i:         ; preds = %ma_data_converter_uninit.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %ma_data_converter_init.exit.thread.i

bb.ca:                                            ; preds = %ma_data_converter_uninit.exit.i
  %i.ik = load i64, ptr %5, align 8, !tbaa !180   ; 2 uses
end_hunk_1
begin_hunk_2_@ma_device_id_equal:bb.a
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader.1:                                     ; preds = %.preheader
  %i.c = or disjoint i64 %.012, 1                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.g = load i8, ptr %i.f, align 1, !tbaa !9
  %.not.1 = icmp eq i8 %i.e, %i.g
  br i1 %.not.1, label %.preheader.2, label %.loopexit

.preheader.2:                                     ; preds = %.preheader.1
  %i.h = or disjoint i64 %.012, 2                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9
  %.not.2 = icmp eq i8 %i.j, %i.l
  br i1 %.not.2, label %.preheader.3, label %.loopexit

.preheader.3:                                     ; preds = %.preheader.2
  %i.m = or disjoint i64 %.012, 3                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9
  %.not.3 = icmp eq i8 %i.o, %i.q
  br i1 %.not.3, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader.3
  %i.r = add nuw nsw i64 %.012, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.r, 256
  br i1 %exitcond.not.3, label %.loopexit, label %.preheader, !llvm.loop !204

.preheader:                                       ; preds = %bb.a, %bb.b
  %.012 = phi i64 [ %i.r, %bb.b ], [ 0, %bb.a ]   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  %i.t = load i8, ptr %i.s, align 1, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9
  %.not = icmp eq i8 %i.t, %i.v
  br i1 %.not, label %.preheader.1, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %bb.b, %bb.a
  %.09 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %.preheader ], [ 0, %.preheader.1 ], [ 0, %.preheader.3 ], [ 0, %.preheader.2 ]
  ret i32 %.09
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_context_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_context_config) align 8 captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %0, i8 0, i64 240, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -203, 1) i32 @ma_context_init(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.ma_context_config, align 8  ; 4 uses
  %i.a = alloca [15 x i32], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %ma_zero_memory_default.exit, label %ma_zero_memory_default.exit114

ma_zero_memory_default.exit114:                   ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %3, i8 0, i64 1024, i1 false)
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %ma_zero_memory_default.exit114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %4, i8 0, i64 240, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %ma_zero_memory_default.exit114
  %.081 = phi ptr [ %4, %bb.b ], [ %2, %ma_zero_memory_default.exit114 ] ; 10 uses
  %.081.sroa.phi254 = getelementptr inbounds nuw i8, ptr %.081, i64 48 ; 2 uses
  %.081.sroa.phi251 = getelementptr inbounds nuw i8, ptr %.081, i64 40 ; 2 uses
  %.081.sroa.phi248 = getelementptr inbounds nuw i8, ptr %.081, i64 56
  %.081.sroa.phi245 = getelementptr inbounds nuw i8, ptr %.081, i64 136
  %.081.sroa.phi = getelementptr inbounds nuw i8, ptr %.081, i64 24
  %.081.sroa.phi240 = getelementptr inbounds nuw i8, ptr %.081, i64 16
  %.081.sroa.phi237 = getelementptr inbounds nuw i8, ptr %.081, i64 8
  %.081.sroa.phi235 = getelementptr inbounds nuw i8, ptr %.081, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 288 ; 4 uses
  %i.e = load ptr, ptr %.081.sroa.phi235, align 8, !tbaa !25
  %i.f = icmp eq ptr %i.e, null
  %i.g = load ptr, ptr %.081.sroa.phi248, align 8, !tbaa !31
  %i.h = icmp eq ptr %i.g, null                   ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.e, label %.thread22.i

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %.081.sroa.phi251, align 8, !tbaa !22
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %ma_zero_memory_default.exit

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %.081.sroa.phi254, align 8, !tbaa !34
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %ma_zero_memory_default.exit

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.d, align 8, !tbaa !33
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 296
  store ptr @ma__malloc_default, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 304
  store ptr @ma__realloc_default, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 312
  store ptr @ma__free_default, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !33
  br label %ma_allocation_callbacks_init_copy.exit

bb.h:                                             ; preds = %bb.c
  br i1 %i.h, label %ma_zero_memory_default.exit, label %.thread22.i

.thread22.i:                                      ; preds = %bb.h, %bb.d
  %i.m = load ptr, ptr %.081.sroa.phi251, align 8, !tbaa !22
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread22.i
  %i.o = load ptr, ptr %.081.sroa.phi254, align 8, !tbaa !34
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %ma_zero_memory_default.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread22.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %.081.sroa.phi235, i64 32, i1 false), !tbaa.struct !35
  br label %ma_allocation_callbacks_init_copy.exit

ma_allocation_callbacks_init_copy.exit:           ; preds = %bb.j, %bb.g
  %i.q = load ptr, ptr %.081, align 8, !tbaa !205 ; 2 uses
  %.not106 = icmp eq ptr %i.q, null
  br i1 %.not106, label %bb.k, label %ma_log_init.exit.thread

bb.k:                                             ; preds = %ma_allocation_callbacks_init_copy.exit
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.r, i8 0, i64 104, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.u = icmp eq ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = icmp eq ptr %i.w, null                   ; 2 uses
  br i1 %i.u, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  br i1 %i.x, label %bb.m, label %.thread22.i.i

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.n, label %ma_allocation_callbacks_init_copy.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.o, label %ma_allocation_callbacks_init_copy.exit.i

bb.o:                                             ; preds = %bb.n
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr @ma__malloc_default, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr @ma__realloc_default, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 216
  store ptr @ma__free_default, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !33
  br label %ma_allocation_callbacks_init_copy.exit.i

bb.p:                                             ; preds = %bb.k
  br i1 %i.x, label %ma_allocation_callbacks_init_copy.exit.i, label %.thread22.i.i

.thread22.i.i:                                    ; preds = %bb.p, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread22.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %ma_allocation_callbacks_init_copy.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread22.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false), !tbaa.struct !35
  br label %ma_allocation_callbacks_init_copy.exit.i

ma_allocation_callbacks_init_copy.exit.i:         ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.ak, i8 0, i64 40, i1 false)
  %i.al = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.ak, ptr noundef null) #55 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i, label %ma_log_init.exit.thread, label %ma_log_init.exit

ma_log_init.exit:                                 ; preds = %ma_allocation_callbacks_init_copy.exit.i
  %i.am = tail call fastcc i32 @ma_result_from_errno(i32 noundef %i.al)
  %i.an = icmp eq i32 %i.am, 0
  %spec.select232 = select i1 %i.an, ptr %i.r, ptr null
  br label %ma_log_init.exit.thread

ma_log_init.exit.thread:                          ; preds = %ma_log_init.exit, %ma_allocation_callbacks_init_copy.exit.i, %ma_allocation_callbacks_init_copy.exit
  %.sink = phi ptr [ %i.q, %ma_allocation_callbacks_init_copy.exit ], [ %spec.select232, %ma_log_init.exit ], [ %i.r, %ma_allocation_callbacks_init_copy.exit.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  store ptr %.sink, ptr %i.ao, align 8, !tbaa !209
  %i.ap = load i32, ptr %.081.sroa.phi237, align 8, !tbaa !210
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 264
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !211
  %i.ar = load i64, ptr %.081.sroa.phi240, align 8, !tbaa !212
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 272
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !213
  %i.at = load ptr, ptr %.081.sroa.phi, align 8, !tbaa !214
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 280
  store ptr %i.at, ptr %i.au, align 8, !tbaa !215
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.a, align 16, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.av, align 16, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %i.aw, align 16, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 12, ptr %i.ax, align 16, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 13, ptr %i.ay, align 4, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 14, ptr %i.az, align 8, !tbaa !8
  %i.ba = icmp eq ptr %0, null                    ; 2 uses
  %spec.select = select i1 %i.ba, ptr %i.a, ptr %0
  %spec.select112 = select i1 %i.ba, i32 15, i32 %1 ; 2 uses
  %.not = icmp eq i32 %spec.select112, 0
  br i1 %.not, label %._crit_edge, label %ma_zero_memory_default.exit113.lr.ph

ma_zero_memory_default.exit113.lr.ph:             ; preds = %ma_log_init.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 12 uses
  %wide.trip.count = zext i32 %spec.select112 to i64
  br label %ma_zero_memory_default.exit113

ma_zero_memory_default.exit113:                   ; preds = %ma_zero_memory_default.exit113.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %ma_zero_memory_default.exit113.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %spec.select, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8  ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(104) %3, i8 0, i64 104, i1 false)
  switch i32 %i.bd, label %.thread164 [
    i32 7, label %ma_context_get_log.exit.thread
    i32 8, label %bb.s
    i32 9, label %bb.t
    i32 13, label %.thread160
    i32 14, label %bb.u
  ]

bb.s:                                             ; preds = %ma_zero_memory_default.exit113
  br label %ma_context_get_log.exit.thread

bb.t:                                             ; preds = %ma_zero_memory_default.exit113
  br label %ma_context_get_log.exit.thread

bb.u:                                             ; preds = %ma_zero_memory_default.exit113
  br label %ma_context_get_log.exit.thread

ma_context_get_log.exit.thread:                   ; preds = %ma_zero_memory_default.exit113, %bb.s, %bb.t, %bb.u
  %ma_context_init__pulse.sink = phi ptr [ @ma_context_init__null, %bb.u ], [ @ma_context_init__alsa, %bb.s ], [ @ma_context_init__jack, %bb.t ], [ @ma_context_init__pulse, %ma_zero_memory_default.exit113 ]
  store ptr %ma_context_init__pulse.sink, ptr %3, align 8, !tbaa !216
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !209
  br label %ma_context_get_log.exit.thread163

.thread160:                                       ; preds = %ma_zero_memory_default.exit113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %.081.sroa.phi245, i64 104, i1 false), !tbaa.struct !217
  %.pr161 = load ptr, ptr %3, align 8, !tbaa !216
  %.not107162 = icmp eq ptr %.pr161, null
  %.pre220 = load ptr, ptr %i.bb, align 8, !tbaa !209 ; 2 uses
  br i1 %.not107162, label %ma_get_backend_name.exit142, label %ma_context_get_log.exit.thread163

.thread164:                                       ; preds = %ma_zero_memory_default.exit113
  %.pre222 = load ptr, ptr %i.bb, align 8, !tbaa !209 ; 2 uses
  %i.bf = icmp ugt i32 %i.bd, 14
  br i1 %i.bf, label %ma_get_backend_name.exit138, label %bb.w

ma_context_get_log.exit.thread163:                ; preds = %ma_context_get_log.exit.thread, %.thread160
  %i.bg = phi ptr [ %i.be, %ma_context_get_log.exit.thread ], [ %.pre220, %.thread160 ]
  %i.bh = zext nneg i32 %i.bd to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr @gBackendInfo, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !97
  %i.bl = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bg, i32 noundef 4, ptr noundef nonnull @.str.14, ptr noundef %i.bk) ; 0 uses
  %i.bm = load ptr, ptr %3, align 8, !tbaa !216
  %i.bn = call i32 %i.bm(ptr noundef nonnull %3, ptr noundef nonnull %.081, ptr noundef nonnull %3) #55
  switch i32 %i.bn, label %ma_context_get_log.exit140 [
    i32 0, label %bb.v
    i32 -208, label %ma_context_get_log.exit136.thread
  ]

ma_context_get_log.exit136.thread:                ; preds = %ma_context_get_log.exit.thread163
  %.pre221 = load ptr, ptr %i.bb, align 8, !tbaa !209
  br label %bb.w

bb.v:                                             ; preds = %ma_context_get_log.exit.thread163
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 320 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.bo, i8 0, i64 40, i1 false)
  %i.bp = call i32 @pthread_mutex_init(ptr noundef nonnull %i.bo, ptr noundef null) #55 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i, label %ma_mutex_init.exit.thread, label %ma_mutex_init.exit

ma_mutex_init.exit:                               ; preds = %bb.v
  %i.bq = call fastcc i32 @ma_result_from_errno(i32 noundef %i.bp)
  %.not109 = icmp eq i32 %i.bq, 0
  br i1 %.not109, label %ma_mutex_init.exit.thread, label %ma_context_get_log.exit119

ma_context_get_log.exit119:                       ; preds = %ma_mutex_init.exit
  %i.br = load ptr, ptr %i.bb, align 8, !tbaa !209
  %i.bs = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.br, i32 noundef 2, ptr noundef nonnull @.str.15) ; 0 uses
  br label %ma_mutex_init.exit.thread

ma_mutex_init.exit.thread:                        ; preds = %bb.v, %ma_context_get_log.exit119, %ma_mutex_init.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 360 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.bt, i8 0, i64 40, i1 false)
  %i.bu = call i32 @pthread_mutex_init(ptr noundef nonnull %i.bt, ptr noundef null) #55 ; 2 uses
  %.not.i.i120 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i120, label %ma_mutex_init.exit122.thread, label %ma_mutex_init.exit122

ma_mutex_init.exit122:                            ; preds = %ma_mutex_init.exit.thread
  %i.bv = call fastcc i32 @ma_result_from_errno(i32 noundef %i.bu) ; 2 uses
  %.not110 = icmp eq i32 %i.bv, 0
  br i1 %.not110, label %ma_mutex_init.exit122.thread, label %ma_context_get_log.exit124

ma_context_get_log.exit124:                       ; preds = %ma_mutex_init.exit122
  %i.bw = load ptr, ptr %i.bb, align 8, !tbaa !209
  %i.bx = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bw, i32 noundef 2, ptr noundef nonnull @.str.16) ; 0 uses
  br label %ma_mutex_init.exit122.thread

bb.w:                                             ; preds = %ma_context_get_log.exit136.thread, %.thread164
  %i.by = phi ptr [ %.pre221, %ma_context_get_log.exit136.thread ], [ %.pre222, %.thread164 ]
  %i.bz = zext nneg i32 %i.bd to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr @gBackendInfo, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !97
  br label %ma_get_backend_name.exit138

ma_get_backend_name.exit138:                      ; preds = %.thread164, %bb.w
  %i.cd = phi ptr [ %i.by, %bb.w ], [ %.pre222, %.thread164 ]
  %.0.i137 = phi ptr [ %i.cc, %bb.w ], [ @.str.9, %.thread164 ]
  %i.ce = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.cd, i32 noundef 4, ptr noundef nonnull @.str.26, ptr noundef %.0.i137) ; 0 uses
  br label %bb.x

ma_context_get_log.exit140:                       ; preds = %ma_context_get_log.exit.thread163
  %i.cf = load ptr, ptr %i.bb, align 8, !tbaa !209
  br label %ma_get_backend_name.exit142

ma_get_backend_name.exit142:                      ; preds = %.thread160, %ma_context_get_log.exit140
  %i.cg = phi ptr [ %i.cf, %ma_context_get_log.exit140 ], [ %.pre220, %.thread160 ]
  %i.ch = zext nneg i32 %i.bd to i64
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr @gBackendInfo, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !97
  %i.cl = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.cg, i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef %i.ck) ; 0 uses
  br label %bb.x

ma_mutex_init.exit122.thread:                     ; preds = %ma_mutex_init.exit.thread, %ma_mutex_init.exit122, %ma_context_get_log.exit124
  %.0.i121174 = phi i32 [ 0, %ma_mutex_init.exit122 ], [ %i.bv, %ma_context_get_log.exit124 ], [ 0, %ma_mutex_init.exit.thread ]
  %i.cm = load ptr, ptr %i.bb, align 8, !tbaa !209
  %i.cn = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.cm, i32 noundef 4, ptr noundef nonnull @.str.17) ; 0 uses
  %i.co = load ptr, ptr %i.bb, align 8, !tbaa !209
  %i.cp = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.co, i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) ; 0 uses
  %i.cq = load ptr, ptr %i.bb, align 8, !tbaa !209
  %i.cr = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.cq, i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) ; 0 uses
  %i.cs = load ptr, ptr %i.bb, align 8, !tbaa !209
  %i.ct = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.cs, i32 noundef 4, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23) ; 0 uses
  %i.cu = load ptr, ptr %i.bb, align 8, !tbaa !209
  %i.cv = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.cu, i32 noundef 4, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i32 %i.bd, ptr %i.cw, align 8, !tbaa !218
  br label %ma_zero_memory_default.exit

bb.x:                                             ; preds = %ma_get_backend_name.exit138, %ma_get_backend_name.exit142
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %ma_zero_memory_default.exit113, !llvm.loop !219

._crit_edge:                                      ; preds = %bb.x, %ma_log_init.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %3, i8 0, i64 1024, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.f, %bb.i, %bb.h, %bb.e, %._crit_edge, %ma_mutex_init.exit122.thread, %bb.a
  %.2 = phi i32 [ %.0.i121174, %ma_mutex_init.exit122.thread ], [ -2, %bb.a ], [ -203, %._crit_edge ], [ -2, %bb.f ], [ -2, %bb.e ], [ -2, %bb.h ], [ -2, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -400, 1) i32 @ma_context_init__pulse(ptr nofree noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 63 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 66 uses
  br i1 %i.a, label %ma_context_get_log.exit.us.preheader, label %ma_context_get_log.exit.preheader

ma_context_get_log.exit.preheader:                ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !209  ; 2 uses
  %i.e = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.d, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.203) ; 0 uses
  %i.f = tail call ptr @dlopen(ptr noundef nonnull @.str.203, i32 noundef 2) #55 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ma_context_get_log.exit.1, label %ma_context_get_log.exit234

ma_context_get_log.exit.us.preheader:             ; preds = %bb.a
  %i.h = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.203) ; 0 uses
  %i.i = tail call ptr @dlopen(ptr noundef nonnull @.str.203, i32 noundef 2) #55 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %ma_context_get_log.exit.us.1, label %ma_context_get_log.exit234

ma_context_get_log.exit.us.1:                     ; preds = %ma_context_get_log.exit.us.preheader
  %i.k = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.203) ; 0 uses
  store ptr null, ptr %i.c, align 8, !tbaa !9
  %i.l = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.204) ; 0 uses
  %i.m = tail call ptr @dlopen(ptr noundef nonnull @.str.204, i32 noundef 2) #55 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.loopexit.loopexit, label %ma_context_get_log.exit234

.loopexit.loopexit:                               ; preds = %ma_context_get_log.exit.us.1
  %i.o = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.204) ; 0 uses
  store ptr null, ptr %i.c, align 8, !tbaa !9
  br label %ma_free.exit

ma_context_get_log.exit.1:                        ; preds = %ma_context_get_log.exit.preheader
  %i.p = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.d, i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.203) ; 0 uses
  store ptr null, ptr %i.c, align 8, !tbaa !9
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !209  ; 2 uses
  %i.r = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.q, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.204) ; 0 uses
  %i.s = tail call ptr @dlopen(ptr noundef nonnull @.str.204, i32 noundef 2) #55 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.loopexit.loopexit423, label %ma_context_get_log.exit234

.loopexit.loopexit423:                            ; preds = %ma_context_get_log.exit.1
  %i.u = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.q, i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.204) ; 0 uses
  store ptr null, ptr %i.c, align 8, !tbaa !9
  br label %ma_free.exit

ma_context_get_log.exit234:                       ; preds = %ma_context_get_log.exit.preheader, %ma_context_get_log.exit.1, %ma_context_get_log.exit.us.preheader, %ma_context_get_log.exit.us.1
  %.us-phi = phi ptr [ %i.m, %ma_context_get_log.exit.us.1 ], [ %i.i, %ma_context_get_log.exit.us.preheader ], [ %i.f, %ma_context_get_log.exit.preheader ], [ %i.s, %ma_context_get_log.exit.1 ] ; 2 uses
  store ptr %.us-phi, ptr %i.c, align 8, !tbaa !9
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !209  ; 2 uses
  %i.w = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.v, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.205) ; 0 uses
  %i.x = tail call ptr @dlsym(ptr noundef nonnull %.us-phi, ptr noundef nonnull @.str.205) #55 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.b, label %ma_context_get_log.exit236

bb.b:                                             ; preds = %ma_context_get_log.exit234
  %i.z = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.v, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.205) ; 0 uses
  br label %ma_context_get_log.exit236

ma_context_get_log.exit236:                       ; preds = %ma_context_get_log.exit234, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !9
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.ad = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ab, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.206) ; 0 uses
  %i.ae = tail call ptr @dlsym(ptr noundef %i.ac, ptr noundef nonnull @.str.206) #55 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.c, label %ma_context_get_log.exit239

bb.c:                                             ; preds = %ma_context_get_log.exit236
  %i.ag = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ab, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.206) ; 0 uses
  br label %ma_context_get_log.exit239

ma_context_get_log.exit239:                       ; preds = %ma_context_get_log.exit236, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !9
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.ak = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ai, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.207) ; 0 uses
  %i.al = tail call ptr @dlsym(ptr noundef %i.aj, ptr noundef nonnull @.str.207) #55 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.d, label %ma_context_get_log.exit242

bb.d:                                             ; preds = %ma_context_get_log.exit239
  %i.an = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ai, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.207) ; 0 uses
  br label %ma_context_get_log.exit242

ma_context_get_log.exit242:                       ; preds = %ma_context_get_log.exit239, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !9
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.ar = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ap, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.208) ; 0 uses
  %i.as = tail call ptr @dlsym(ptr noundef %i.aq, ptr noundef nonnull @.str.208) #55 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.e, label %ma_context_get_log.exit245

bb.e:                                             ; preds = %ma_context_get_log.exit242
  %i.au = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ap, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.208) ; 0 uses
  br label %ma_context_get_log.exit245

ma_context_get_log.exit245:                       ; preds = %ma_context_get_log.exit242, %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.as, ptr %i.av, align 8, !tbaa !9
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.ay = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.aw, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.209) ; 0 uses
  %i.az = tail call ptr @dlsym(ptr noundef %i.ax, ptr noundef nonnull @.str.209) #55 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.f, label %ma_context_get_log.exit248

bb.f:                                             ; preds = %ma_context_get_log.exit245
  %i.bb = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.aw, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.209) ; 0 uses
  br label %ma_context_get_log.exit248

ma_context_get_log.exit248:                       ; preds = %ma_context_get_log.exit245, %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !9
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.bf = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bd, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.210) ; 0 uses
  %i.bg = tail call ptr @dlsym(ptr noundef %i.be, ptr noundef nonnull @.str.210) #55 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.g, label %ma_context_get_log.exit251

bb.g:                                             ; preds = %ma_context_get_log.exit248
  %i.bi = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bd, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.210) ; 0 uses
  br label %ma_context_get_log.exit251

ma_context_get_log.exit251:                       ; preds = %ma_context_get_log.exit248, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !9
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.bm = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bk, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.211) ; 0 uses
  %i.bn = tail call ptr @dlsym(ptr noundef %i.bl, ptr noundef nonnull @.str.211) #55 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.h, label %ma_context_get_log.exit254

bb.h:                                             ; preds = %ma_context_get_log.exit251
  %i.bp = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bk, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.211) ; 0 uses
  br label %ma_context_get_log.exit254

ma_context_get_log.exit254:                       ; preds = %ma_context_get_log.exit251, %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !9
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.bt = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.br, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.212) ; 0 uses
  %i.bu = tail call ptr @dlsym(ptr noundef %i.bs, ptr noundef nonnull @.str.212) #55 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.i, label %ma_context_get_log.exit257

bb.i:                                             ; preds = %ma_context_get_log.exit254
  %i.bw = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.br, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.212) ; 0 uses
  br label %ma_context_get_log.exit257

ma_context_get_log.exit257:                       ; preds = %ma_context_get_log.exit254, %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.bu, ptr %i.bx, align 8, !tbaa !9
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.bz = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.ca = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.by, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.213) ; 0 uses
  %i.cb = tail call ptr @dlsym(ptr noundef %i.bz, ptr noundef nonnull @.str.213) #55 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.j, label %ma_context_get_log.exit260

bb.j:                                             ; preds = %ma_context_get_log.exit257
  %i.cd = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.by, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.213) ; 0 uses
  br label %ma_context_get_log.exit260

ma_context_get_log.exit260:                       ; preds = %ma_context_get_log.exit257, %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr %i.cb, ptr %i.ce, align 8, !tbaa !9
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.ch = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.cf, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.214) ; 0 uses
  %i.ci = tail call ptr @dlsym(ptr noundef %i.cg, ptr noundef nonnull @.str.214) #55 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.k, label %ma_context_get_log.exit263

bb.k:                                             ; preds = %ma_context_get_log.exit260
  %i.ck = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.cf, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.214) ; 0 uses
  br label %ma_context_get_log.exit263

ma_context_get_log.exit263:                       ; preds = %ma_context_get_log.exit260, %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr %i.ci, ptr %i.cl, align 8, !tbaa !9
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
end_hunk_2
begin_hunk_3_@ma_context_init__alsa:bb.a
  %i.nw = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.nx = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.nv, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.358) ; 0 uses
  %i.ny = tail call ptr @dlsym(ptr noundef %i.nw, ptr noundef nonnull @.str.358) #55 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %bb.bb, label %ma_context_get_log.exit388

bb.bb:                                            ; preds = %ma_context_get_log.exit385
  %i.oa = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.nv, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.358) ; 0 uses
  br label %ma_context_get_log.exit388

ma_context_get_log.exit388:                       ; preds = %ma_context_get_log.exit385, %bb.bb
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 856
  store ptr %i.ny, ptr %i.ob, align 8, !tbaa !9
  %i.oc = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.od = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.oe = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.oc, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.359) ; 0 uses
  %i.of = tail call ptr @dlsym(ptr noundef %i.od, ptr noundef nonnull @.str.359) #55 ; 2 uses
  %i.og = icmp eq ptr %i.of, null
  br i1 %i.og, label %bb.bc, label %ma_context_get_log.exit391

bb.bc:                                            ; preds = %ma_context_get_log.exit388
  %i.oh = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.oc, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.359) ; 0 uses
  br label %ma_context_get_log.exit391

ma_context_get_log.exit391:                       ; preds = %ma_context_get_log.exit388, %bb.bc
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 864
  store ptr %i.of, ptr %i.oi, align 8, !tbaa !9
  %i.oj = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.ok = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.ol = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.oj, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.360) ; 0 uses
  %i.om = tail call ptr @dlsym(ptr noundef %i.ok, ptr noundef nonnull @.str.360) #55 ; 2 uses
  %i.on = icmp eq ptr %i.om, null
  br i1 %i.on, label %bb.bd, label %ma_context_get_log.exit394

bb.bd:                                            ; preds = %ma_context_get_log.exit391
  %i.oo = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.oj, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.360) ; 0 uses
  br label %ma_context_get_log.exit394

ma_context_get_log.exit394:                       ; preds = %ma_context_get_log.exit391, %bb.bd
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 872
  store ptr %i.om, ptr %i.op, align 8, !tbaa !9
  %i.oq = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.or = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.os = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.oq, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.361) ; 0 uses
  %i.ot = tail call ptr @dlsym(ptr noundef %i.or, ptr noundef nonnull @.str.361) #55 ; 2 uses
  %i.ou = icmp eq ptr %i.ot, null
  br i1 %i.ou, label %bb.be, label %ma_context_get_log.exit397

bb.be:                                            ; preds = %ma_context_get_log.exit394
  %i.ov = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.oq, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.361) ; 0 uses
  br label %ma_context_get_log.exit397

ma_context_get_log.exit397:                       ; preds = %ma_context_get_log.exit394, %bb.be
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 880
  store ptr %i.ot, ptr %i.ow, align 8, !tbaa !9
  %i.ox = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.oy = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.oz = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ox, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.362) ; 0 uses
  %i.pa = tail call ptr @dlsym(ptr noundef %i.oy, ptr noundef nonnull @.str.362) #55 ; 2 uses
  %i.pb = icmp eq ptr %i.pa, null
  br i1 %i.pb, label %bb.bf, label %ma_context_get_log.exit400

bb.bf:                                            ; preds = %ma_context_get_log.exit397
  %i.pc = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ox, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.362) ; 0 uses
  br label %ma_context_get_log.exit400

ma_context_get_log.exit400:                       ; preds = %ma_context_get_log.exit397, %bb.bf
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 888
  store ptr %i.pa, ptr %i.pd, align 8, !tbaa !9
  %i.pe = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.pf = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.pg = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.pe, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.363) ; 0 uses
  %i.ph = tail call ptr @dlsym(ptr noundef %i.pf, ptr noundef nonnull @.str.363) #55 ; 2 uses
  %i.pi = icmp eq ptr %i.ph, null
  br i1 %i.pi, label %bb.bg, label %ma_context_get_log.exit403

bb.bg:                                            ; preds = %ma_context_get_log.exit400
  %i.pj = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.pe, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.363) ; 0 uses
  br label %ma_context_get_log.exit403

ma_context_get_log.exit403:                       ; preds = %ma_context_get_log.exit400, %bb.bg
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 896
  store ptr %i.ph, ptr %i.pk, align 8, !tbaa !9
  %i.pl = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.pm = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.pn = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.pl, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.364) ; 0 uses
  %i.po = tail call ptr @dlsym(ptr noundef %i.pm, ptr noundef nonnull @.str.364) #55 ; 2 uses
  %i.pp = icmp eq ptr %i.po, null
  br i1 %i.pp, label %bb.bh, label %ma_context_get_log.exit406

bb.bh:                                            ; preds = %ma_context_get_log.exit403
  %i.pq = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.pl, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.364) ; 0 uses
  br label %ma_context_get_log.exit406

ma_context_get_log.exit406:                       ; preds = %ma_context_get_log.exit403, %bb.bh
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr %i.po, ptr %i.pr, align 8, !tbaa !9
  %i.ps = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.pt = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.pu = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ps, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.365) ; 0 uses
  %i.pv = tail call ptr @dlsym(ptr noundef %i.pt, ptr noundef nonnull @.str.365) #55 ; 2 uses
  %i.pw = icmp eq ptr %i.pv, null
  br i1 %i.pw, label %bb.bi, label %ma_context_get_log.exit409

bb.bi:                                            ; preds = %ma_context_get_log.exit406
  %i.px = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ps, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.365) ; 0 uses
  br label %ma_context_get_log.exit409

ma_context_get_log.exit409:                       ; preds = %ma_context_get_log.exit406, %bb.bi
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 912
  store ptr %i.pv, ptr %i.py, align 8, !tbaa !9
  %i.pz = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.qa = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.qb = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.pz, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.366) ; 0 uses
  %i.qc = tail call ptr @dlsym(ptr noundef %i.qa, ptr noundef nonnull @.str.366) #55 ; 2 uses
  %i.qd = icmp eq ptr %i.qc, null
  br i1 %i.qd, label %bb.bj, label %ma_context_get_log.exit412

bb.bj:                                            ; preds = %ma_context_get_log.exit409
  %i.qe = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.pz, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.366) ; 0 uses
  br label %ma_context_get_log.exit412

ma_context_get_log.exit412:                       ; preds = %ma_context_get_log.exit409, %bb.bj
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 920
  store ptr %i.qc, ptr %i.qf, align 8, !tbaa !9
  %i.qg = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.qh = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.qi = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.qg, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.367) ; 0 uses
  %i.qj = tail call ptr @dlsym(ptr noundef %i.qh, ptr noundef nonnull @.str.367) #55 ; 2 uses
  %i.qk = icmp eq ptr %i.qj, null
  br i1 %i.qk, label %bb.bk, label %ma_context_get_log.exit415

bb.bk:                                            ; preds = %ma_context_get_log.exit412
  %i.ql = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.qg, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.367) ; 0 uses
  br label %ma_context_get_log.exit415

ma_context_get_log.exit415:                       ; preds = %ma_context_get_log.exit412, %bb.bk
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr %i.qj, ptr %i.qm, align 8, !tbaa !9
  %i.qn = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.qo = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.qp = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.qn, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.368) ; 0 uses
  %i.qq = tail call ptr @dlsym(ptr noundef %i.qo, ptr noundef nonnull @.str.368) #55 ; 2 uses
  %i.qr = icmp eq ptr %i.qq, null
  br i1 %i.qr, label %bb.bl, label %ma_context_get_log.exit418

bb.bl:                                            ; preds = %ma_context_get_log.exit415
  %i.qs = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.qn, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.368) ; 0 uses
  br label %ma_context_get_log.exit418

ma_context_get_log.exit418:                       ; preds = %ma_context_get_log.exit415, %bb.bl
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 936
  store ptr %i.qq, ptr %i.qt, align 8, !tbaa !9
  %i.qu = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.qv = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.qw = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.qu, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.369) ; 0 uses
  %i.qx = tail call ptr @dlsym(ptr noundef %i.qv, ptr noundef nonnull @.str.369) #55 ; 2 uses
  %i.qy = icmp eq ptr %i.qx, null
  br i1 %i.qy, label %bb.bm, label %ma_context_get_log.exit421

bb.bm:                                            ; preds = %ma_context_get_log.exit418
  %i.qz = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.qu, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.369) ; 0 uses
  br label %ma_context_get_log.exit421

ma_context_get_log.exit421:                       ; preds = %ma_context_get_log.exit418, %bb.bm
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 944
  store ptr %i.qx, ptr %i.ra, align 8, !tbaa !9
  %i.rb = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.rc = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.rd = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.rb, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.370) ; 0 uses
  %i.re = tail call ptr @dlsym(ptr noundef %i.rc, ptr noundef nonnull @.str.370) #55 ; 2 uses
  %i.rf = icmp eq ptr %i.re, null
  br i1 %i.rf, label %bb.bn, label %ma_context_get_log.exit424

bb.bn:                                            ; preds = %ma_context_get_log.exit421
  %i.rg = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.rb, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.370) ; 0 uses
  br label %ma_context_get_log.exit424

ma_context_get_log.exit424:                       ; preds = %ma_context_get_log.exit421, %bb.bn
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 952
  store ptr %i.re, ptr %i.rh, align 8, !tbaa !9
  %i.ri = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.rj = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.rk = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ri, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.371) ; 0 uses
  %i.rl = tail call ptr @dlsym(ptr noundef %i.rj, ptr noundef nonnull @.str.371) #55 ; 2 uses
  %i.rm = icmp eq ptr %i.rl, null
  br i1 %i.rm, label %bb.bo, label %ma_dlsym.exit425

bb.bo:                                            ; preds = %ma_context_get_log.exit424
  %i.rn = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ri, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.371) ; 0 uses
  br label %ma_dlsym.exit425

ma_dlsym.exit425:                                 ; preds = %ma_context_get_log.exit424, %bb.bo
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 960
  store ptr %i.rl, ptr %i.ro, align 8, !tbaa !9
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.rq = load i32, ptr %i.rp, align 8, !tbaa !233
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store i32 %i.rq, ptr %i.rr, align 8, !tbaa !9
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.rs, i8 0, i64 40, i1 false)
  %i.rt = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.rs, ptr noundef null) #55 ; 2 uses
  %.not.i.i = icmp eq i32 %i.rt, 0
  br i1 %.not.i.i, label %ma_mutex_init.exit.thread, label %ma_mutex_init.exit

ma_mutex_init.exit:                               ; preds = %ma_dlsym.exit425
  %i.ru = tail call fastcc i32 @ma_result_from_errno(i32 noundef %i.rt) ; 2 uses
  %.not226 = icmp eq i32 %i.ru, 0
  br i1 %.not226, label %ma_mutex_init.exit.thread, label %ma_context_get_log.exit428

ma_context_get_log.exit428:                       ; preds = %ma_mutex_init.exit
  %i.rv = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.rw = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.rv, i32 noundef 1, ptr noundef nonnull @.str.372) ; 0 uses
  br label %bb.bp

ma_mutex_init.exit.thread:                        ; preds = %ma_dlsym.exit425, %ma_mutex_init.exit
  store ptr @ma_context_init__alsa, ptr %2, align 8, !tbaa !223
  %i.rx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @ma_context_uninit__alsa, ptr %i.rx, align 8, !tbaa !224
  %i.ry = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @ma_context_enumerate_devices__alsa, ptr %i.ry, align 8, !tbaa !225
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @ma_context_get_device_info__alsa, ptr %i.rz, align 8, !tbaa !226
  %i.sa = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @ma_device_init__alsa, ptr %i.sa, align 8, !tbaa !227
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @ma_device_uninit__alsa, ptr %i.sb, align 8, !tbaa !228
  %i.sc = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @ma_device_start__alsa, ptr %i.sc, align 8, !tbaa !229
  %i.sd = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @ma_device_stop__alsa, ptr %i.sd, align 8, !tbaa !230
  %i.se = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @ma_device_read__alsa, ptr %i.se, align 8, !tbaa !234
  %i.sf = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @ma_device_write__alsa, ptr %i.sf, align 8, !tbaa !235
  %i.sg = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr null, ptr %i.sg, align 8, !tbaa !231
  %i.sh = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr @ma_device_data_loop_wakeup__alsa, ptr %i.sh, align 8, !tbaa !232
  br label %bb.bp

bb.bp:                                            ; preds = %ma_mutex_init.exit.thread, %ma_context_get_log.exit428, %ma_context_get_log.exit228
  %.0224 = phi i32 [ -203, %ma_context_get_log.exit228 ], [ %i.ru, %ma_context_get_log.exit428 ], [ 0, %ma_mutex_init.exit.thread ]
  ret i32 %.0224
}

; Function Attrs: nounwind uwtable
define internal range(i32 -203, 1) i32 @ma_context_init__jack(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #8 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = icmp eq ptr %0, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 21 uses
  br i1 %i.c, label %ma_context_get_log.exit.us.preheader, label %ma_context_get_log.exit.preheader

ma_context_get_log.exit.preheader:                ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !209  ; 2 uses
  %i.g = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.f, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.448) ; 0 uses
  %i.h = tail call ptr @dlopen(ptr noundef nonnull @.str.448, i32 noundef 2) #55 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ma_context_get_log.exit.1, label %ma_context_get_log.exit86

ma_context_get_log.exit.us.preheader:             ; preds = %bb.a
  %i.j = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.448) ; 0 uses
  %i.k = tail call ptr @dlopen(ptr noundef nonnull @.str.448, i32 noundef 2) #55 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ma_context_get_log.exit.us.1, label %ma_context_get_log.exit86

ma_context_get_log.exit.us.1:                     ; preds = %ma_context_get_log.exit.us.preheader
  %i.m = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.448) ; 0 uses
  store ptr null, ptr %i.e, align 8, !tbaa !9
  %i.n = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.449) ; 0 uses
  %i.o = tail call ptr @dlopen(ptr noundef nonnull @.str.449, i32 noundef 2) #55 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.loopexit.loopexit, label %ma_context_get_log.exit86

.loopexit.loopexit:                               ; preds = %ma_context_get_log.exit.us.1
  %i.q = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.449) ; 0 uses
  store ptr null, ptr %i.e, align 8, !tbaa !9
  br label %.loopexit.thread

ma_context_get_log.exit.1:                        ; preds = %ma_context_get_log.exit.preheader
  %i.r = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.f, i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.448) ; 0 uses
  store ptr null, ptr %i.e, align 8, !tbaa !9
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !209  ; 2 uses
  %i.t = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.s, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.449) ; 0 uses
  %i.u = tail call ptr @dlopen(ptr noundef nonnull @.str.449, i32 noundef 2) #55 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.loopexit.loopexit144, label %ma_context_get_log.exit86

.loopexit.loopexit144:                            ; preds = %ma_context_get_log.exit.1
  %i.w = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.s, i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.449) ; 0 uses
  store ptr null, ptr %i.e, align 8, !tbaa !9
  br label %.loopexit.thread

ma_context_get_log.exit86:                        ; preds = %ma_context_get_log.exit.preheader, %ma_context_get_log.exit.1, %ma_context_get_log.exit.us.preheader, %ma_context_get_log.exit.us.1
  %.us-phi = phi ptr [ %i.o, %ma_context_get_log.exit.us.1 ], [ %i.k, %ma_context_get_log.exit.us.preheader ], [ %i.h, %ma_context_get_log.exit.preheader ], [ %i.u, %ma_context_get_log.exit.1 ] ; 2 uses
  store ptr %.us-phi, ptr %i.e, align 8, !tbaa !9
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !209  ; 2 uses
  %i.y = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.x, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.450) ; 0 uses
  %i.z = tail call ptr @dlsym(ptr noundef nonnull %.us-phi, ptr noundef nonnull @.str.450) #55 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.b, label %ma_context_get_log.exit88

bb.b:                                             ; preds = %ma_context_get_log.exit86
  %i.ab = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.x, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.450) ; 0 uses
  br label %ma_context_get_log.exit88

ma_context_get_log.exit88:                        ; preds = %ma_context_get_log.exit86, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !9
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !209 ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.af = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ad, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.451) ; 0 uses
  %i.ag = tail call ptr @dlsym(ptr noundef %i.ae, ptr noundef nonnull @.str.451) #55 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.c, label %ma_context_get_log.exit91

bb.c:                                             ; preds = %ma_context_get_log.exit88
  %i.ai = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ad, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.451) ; 0 uses
  br label %ma_context_get_log.exit91

ma_context_get_log.exit91:                        ; preds = %ma_context_get_log.exit88, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !9
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !209 ; 2 uses
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.am = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ak, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.452) ; 0 uses
  %i.an = tail call ptr @dlsym(ptr noundef %i.al, ptr noundef nonnull @.str.452) #55 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.d, label %ma_context_get_log.exit94

bb.d:                                             ; preds = %ma_context_get_log.exit91
  %i.ap = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ak, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.452) ; 0 uses
  br label %ma_context_get_log.exit94

ma_context_get_log.exit94:                        ; preds = %ma_context_get_log.exit91, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !9
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !209 ; 2 uses
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.at = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ar, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.453) ; 0 uses
  %i.au = tail call ptr @dlsym(ptr noundef %i.as, ptr noundef nonnull @.str.453) #55 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %ma_context_get_log.exit97

bb.e:                                             ; preds = %ma_context_get_log.exit94
  %i.aw = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ar, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.453) ; 0 uses
  br label %ma_context_get_log.exit97

ma_context_get_log.exit97:                        ; preds = %ma_context_get_log.exit94, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !9
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !209 ; 2 uses
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.ba = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ay, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.454) ; 0 uses
  %i.bb = tail call ptr @dlsym(ptr noundef %i.az, ptr noundef nonnull @.str.454) #55 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.f, label %ma_context_get_log.exit100

bb.f:                                             ; preds = %ma_context_get_log.exit97
  %i.bd = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ay, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.454) ; 0 uses
  br label %ma_context_get_log.exit100

ma_context_get_log.exit100:                       ; preds = %ma_context_get_log.exit97, %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !9
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !209 ; 2 uses
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.bh = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bf, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.455) ; 0 uses
  %i.bi = tail call ptr @dlsym(ptr noundef %i.bg, ptr noundef nonnull @.str.455) #55 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.g, label %ma_context_get_log.exit103

bb.g:                                             ; preds = %ma_context_get_log.exit100
  %i.bk = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bf, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.455) ; 0 uses
  br label %ma_context_get_log.exit103

ma_context_get_log.exit103:                       ; preds = %ma_context_get_log.exit100, %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !9
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !209 ; 2 uses
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.bo = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bm, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.456) ; 0 uses
  %i.bp = tail call ptr @dlsym(ptr noundef %i.bn, ptr noundef nonnull @.str.456) #55 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.h, label %ma_context_get_log.exit106

bb.h:                                             ; preds = %ma_context_get_log.exit103
  %i.br = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bm, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.456) ; 0 uses
  br label %ma_context_get_log.exit106

ma_context_get_log.exit106:                       ; preds = %ma_context_get_log.exit103, %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %i.bp, ptr %i.bs, align 8, !tbaa !9
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !209 ; 2 uses
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.bv = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bt, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.457) ; 0 uses
  %i.bw = tail call ptr @dlsym(ptr noundef %i.bu, ptr noundef nonnull @.str.457) #55 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
end_hunk_3
begin_hunk_4_@ma_device_init:bb.a
  br i1 %i.p, label %ma__is_channel_map_valid.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !260  ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %ma__is_channel_map_valid.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9
  %.not24.i = icmp eq i8 %i.s, 0
  br i1 %.not24.i, label %ma__is_channel_map_valid.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = icmp eq i32 %i.o, 0
  br i1 %i.t, label %ma__is_channel_map_valid.exit, label %.critedge.preheader.preheader.i

.critedge.preheader.preheader.i:                  ; preds = %bb.i
  %i.u = zext nneg i32 %i.o to i64                ; 3 uses
  br label %.critedge.preheader.i

.critedge.loopexit.i:                             ; preds = %bb.j, %.critedge.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %i.u
  br i1 %exitcond39.not.i, label %ma__is_channel_map_valid.exit.thread, label %.critedge.preheader.i, !llvm.loop !261

.critedge.preheader.i:                            ; preds = %.critedge.loopexit.i, %.critedge.preheader.preheader.i
  %indvars.iv35.i = phi i64 [ 0, %.critedge.preheader.preheader.i ], [ %indvars.iv.next36.i, %.critedge.loopexit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %.critedge.preheader.preheader.i ], [ %indvars.iv.next.i, %.critedge.loopexit.i ] ; 2 uses
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 3 uses
  %.not2528.i = icmp samesign ult i64 %indvars.iv.next36.i, %i.u
  br i1 %.not2528.i, label %.lr.ph.i, label %.critedge.loopexit.i

.lr.ph.i:                                         ; preds = %.critedge.preheader.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv35.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next33.i, %i.u
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %bb.k, !llvm.loop !262

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.i, %.lr.ph.i ], [ %indvars.iv.next33.i, %bb.j ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv32.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.w, %i.y
  br i1 %i.z, label %ma__is_channel_map_valid.exit, label %bb.j

ma__is_channel_map_valid.exit.thread:             ; preds = %.critedge.loopexit.i, %bb.h, %bb.g, %bb.e
  switch i32 %i.l, label %ma__is_channel_map_valid.exit365.thread [
    i32 1, label %bb.l
    i32 3, label %bb.l
    i32 4, label %bb.l
  ]

bb.l:                                             ; preds = %ma__is_channel_map_valid.exit.thread, %ma__is_channel_map_valid.exit.thread, %ma__is_channel_map_valid.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !263 ; 3 uses
  %i.ac = icmp ugt i32 %i.ab, 254
  br i1 %i.ac, label %ma__is_channel_map_valid.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !264 ; 4 uses
  %.not.i349 = icmp eq ptr %i.ae, null
  br i1 %.not.i349, label %ma__is_channel_map_valid.exit365.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !9
  %.not24.i350 = icmp eq i8 %i.af, 0
  br i1 %.not24.i350, label %ma__is_channel_map_valid.exit365.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = icmp eq i32 %i.ab, 0
  br i1 %i.ag, label %ma__is_channel_map_valid.exit, label %.critedge.preheader.preheader.i351

.critedge.preheader.preheader.i351:               ; preds = %bb.o
  %i.ah = zext nneg i32 %i.ab to i64              ; 3 uses
  br label %.critedge.preheader.i352

.critedge.loopexit.i357:                          ; preds = %bb.p, %.critedge.preheader.i352
  %indvars.iv.next.i358 = add nuw nsw i64 %indvars.iv.i354, 1
  %exitcond39.not.i359 = icmp eq i64 %indvars.iv.next36.i355, %i.ah
  br i1 %exitcond39.not.i359, label %ma__is_channel_map_valid.exit365.thread, label %.critedge.preheader.i352, !llvm.loop !261

.critedge.preheader.i352:                         ; preds = %.critedge.loopexit.i357, %.critedge.preheader.preheader.i351
  %indvars.iv35.i353 = phi i64 [ 0, %.critedge.preheader.preheader.i351 ], [ %indvars.iv.next36.i355, %.critedge.loopexit.i357 ] ; 2 uses
  %indvars.iv.i354 = phi i64 [ 1, %.critedge.preheader.preheader.i351 ], [ %indvars.iv.next.i358, %.critedge.loopexit.i357 ] ; 2 uses
  %indvars.iv.next36.i355 = add nuw nsw i64 %indvars.iv35.i353, 1 ; 3 uses
  %.not2528.i356 = icmp samesign ult i64 %indvars.iv.next36.i355, %i.ah
  br i1 %.not2528.i356, label %.lr.ph.i361, label %.critedge.loopexit.i357

.lr.ph.i361:                                      ; preds = %.critedge.preheader.i352
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv35.i353
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !9
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next33.i363 = add nuw nsw i64 %indvars.iv32.i362, 1 ; 2 uses
  %exitcond.not.i364 = icmp eq i64 %indvars.iv.next33.i363, %i.ah
  br i1 %exitcond.not.i364, label %.critedge.loopexit.i357, label %bb.q, !llvm.loop !262

bb.q:                                             ; preds = %bb.p, %.lr.ph.i361
  %indvars.iv32.i362 = phi i64 [ %indvars.iv.i354, %.lr.ph.i361 ], [ %indvars.iv.next33.i363, %bb.p ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv32.i362
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9
  %i.am = icmp eq i8 %i.aj, %i.al
  br i1 %i.am, label %ma__is_channel_map_valid.exit, label %bb.p

ma__is_channel_map_valid.exit365.thread:          ; preds = %.critedge.loopexit.i357, %bb.n, %bb.m, %ma__is_channel_map_valid.exit.thread
  store ptr %0, ptr %2, align 8, !tbaa !132
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !265
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !266
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !33
  store <2 x ptr> %i.as, ptr %i.ar, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !267
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.au, ptr %i.av, align 8, !tbaa !268
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !269 ; 2 uses
  %.not320 = icmp eq ptr %i.ax, null
  br i1 %.not320, label %bb.s, label %bb.r

bb.r:                                             ; preds = %ma__is_channel_map_valid.exit365.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 600 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ay, ptr noundef nonnull align 8 dereferenceable(256) %i.ax, i64 256, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %ma__is_channel_map_valid.exit365.thread, %bb.r
  %.sink = phi ptr [ %i.ay, %bb.r ], [ null, %ma__is_channel_map_valid.exit365.thread ]
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 592
  store ptr %.sink, ptr %i.az, align 8, !tbaa !143
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !270 ; 2 uses
  %.not321 = icmp eq ptr %i.bb, null
  br i1 %.not321, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 2032 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.bc, ptr noundef nonnull align 8 dereferenceable(256) %i.bb, i64 256, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sink520 = phi ptr [ %i.bc, %bb.t ], [ null, %bb.s ]
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 2024
  store ptr %.sink520, ptr %i.bd, align 8, !tbaa !138
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 397
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.bh = load <4 x i8>, ptr %i.be, align 8, !tbaa !9
  store <4 x i8> %i.bh, ptr %i.bf, align 1, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 404
  store atomic volatile i32 1065353216, ptr %i.bi seq_cst, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.bm = load <2 x i32>, ptr %1, align 8, !tbaa !8
  store <2 x i32> %i.bm, ptr %i.bj, align 8, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !271
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 560
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !160
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !272
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 584
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !162
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 568
  %i.bv = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !33
  store <2 x ptr> %i.bv, ptr %i.bu, align 8, !tbaa !33
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !273
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 2544
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !274
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 2548 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 164 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 2552 ; 5 uses
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !259 ; 4 uses
  %i.ce = load <2 x i32>, ptr %i.bz, align 8, !tbaa !8
  store <2 x i32> %i.ce, ptr %i.ca, align 4, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 2556 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !260 ; 2 uses
  %i.ci = icmp eq i32 %i.cd, 0
  br i1 %i.ci, label %ma_channel_map_copy_or_default.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i366 = icmp eq ptr %i.ch, null
  br i1 %.not.i366, label %.preheader.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = zext i32 %i.cd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr nonnull readonly align 1 %i.ch, i64 %i.cj, i1 false)
  br label %ma_channel_map_copy_or_default.exit

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.024.i.i = phi i32 [ %i.cn, %.preheader.i.i ], [ 0, %bb.v ] ; 2 uses
  %.01723.i.i = phi ptr [ %i.cl, %.preheader.i.i ], [ %i.cf, %bb.v ] ; 2 uses
  %.01822.i.i = phi i64 [ %i.cm, %.preheader.i.i ], [ 254, %bb.v ]
  %i.ck = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.cd, i32 noundef %.024.i.i)
  store i8 %i.ck, ptr %.01723.i.i, align 1, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %.01723.i.i, i64 1
  %i.cm = add nsw i64 %.01822.i.i, -1             ; 2 uses
  %i.cn = add nuw nsw i32 %.024.i.i, 1            ; 2 uses
  %i.co = icmp uge i32 %i.cn, %i.cd
  %i.cp = icmp eq i64 %i.cm, 0
  %or.cond5.i.i = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond5.i.i, label %ma_channel_map_copy_or_default.exit, label %.preheader.i.i, !llvm.loop !147

ma_channel_map_copy_or_default.exit:              ; preds = %.preheader.i.i, %bb.u, %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 3088
  %i.cs = load <2 x i32>, ptr %i.cq, align 8, !tbaa !8
  store <2 x i32> %i.cs, ptr %i.cr, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !275
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 1112
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !276
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 1116 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 1120 ; 4 uses
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !263 ; 4 uses
  %i.db = load <2 x i32>, ptr %i.cw, align 8, !tbaa !8
  store <2 x i32> %i.db, ptr %i.cx, align 4, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 1124 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !264 ; 2 uses
  %i.df = icmp eq i32 %i.da, 0
  br i1 %i.df, label %ma_channel_map_copy_or_default.exit373, label %bb.x

bb.x:                                             ; preds = %ma_channel_map_copy_or_default.exit
  %.not.i367 = icmp eq ptr %i.de, null
  br i1 %.not.i367, label %.preheader.i.i368, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = zext i32 %i.da to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr nonnull readonly align 1 %i.de, i64 %i.dg, i1 false)
  br label %ma_channel_map_copy_or_default.exit373

.preheader.i.i368:                                ; preds = %bb.x, %.preheader.i.i368
  %.024.i.i369 = phi i32 [ %i.dk, %.preheader.i.i368 ], [ 0, %bb.x ] ; 2 uses
  %.01723.i.i370 = phi ptr [ %i.di, %.preheader.i.i368 ], [ %i.dc, %bb.x ] ; 2 uses
  %.01822.i.i371 = phi i64 [ %i.dj, %.preheader.i.i368 ], [ 254, %bb.x ]
  %i.dh = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.da, i32 noundef %.024.i.i369)
  store i8 %i.dh, ptr %.01723.i.i370, align 1, !tbaa !9
  %i.di = getelementptr inbounds nuw i8, ptr %.01723.i.i370, i64 1
  %i.dj = add nsw i64 %.01822.i.i371, -1          ; 2 uses
  %i.dk = add nuw nsw i32 %.024.i.i369, 1         ; 2 uses
  %i.dl = icmp uge i32 %i.dk, %i.da
  %i.dm = icmp eq i64 %i.dj, 0
  %or.cond5.i.i372 = select i1 %i.dl, i1 true, i1 %i.dm
  br i1 %or.cond5.i.i372, label %ma_channel_map_copy_or_default.exit373, label %.preheader.i.i368, !llvm.loop !147

ma_channel_map_copy_or_default.exit373:           ; preds = %.preheader.i.i368, %ma_channel_map_copy_or_default.exit, %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 1656
  %i.dp = load <2 x i32>, ptr %i.dn, align 8, !tbaa !8
  store <2 x i32> %i.dp, ptr %i.do, align 8, !tbaa !8
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.dq, i8 0, i64 40, i1 false)
  %i.dr = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.dq, ptr noundef null) #55 ; 2 uses
  %.not.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i, label %ma_mutex_init.exit.thread, label %ma_mutex_init.exit

ma_mutex_init.exit:                               ; preds = %ma_channel_map_copy_or_default.exit373
  %i.ds = tail call fastcc i32 @ma_result_from_errno(i32 noundef %i.dr) ; 2 uses
  %.not322 = icmp eq i32 %i.ds, 0
  br i1 %.not322, label %ma_mutex_init.exit.thread, label %ma__is_channel_map_valid.exit

ma_mutex_init.exit.thread:                        ; preds = %ma_channel_map_copy_or_default.exit373, %ma_mutex_init.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.du = tail call i32 @ma_event_init(ptr noundef nonnull %i.dt) ; 2 uses
  %.not323 = icmp eq i32 %i.du, 0
  br i1 %.not323, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %ma_mutex_init.exit.thread
  %i.dv = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.dq) #55 ; 0 uses
  br label %ma__is_channel_map_valid.exit

bb.aa:                                            ; preds = %ma_mutex_init.exit.thread
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.dx = tail call i32 @ma_event_init(ptr noundef nonnull %i.dw) ; 2 uses
  %.not324 = icmp eq i32 %i.dx, 0
  br i1 %.not324, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.dz = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.dy) #55 ; 0 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.eb = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.ea) #55 ; 0 uses
  %i.ec = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.dq) #55 ; 0 uses
  br label %ma__is_channel_map_valid.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.ee = tail call i32 @ma_event_init(ptr noundef nonnull %i.ed) ; 2 uses
  %.not325 = icmp eq i32 %i.ee, 0
  br i1 %.not325, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.eg = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.ef) #55 ; 0 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ei = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.eh) #55 ; 0 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ek = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.ej) #55 ; 0 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.em = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.el) #55 ; 0 uses
  %i.en = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.dq) #55 ; 0 uses
  br label %ma__is_channel_map_valid.exit

bb.ae:                                            ; preds = %bb.ac
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.eo, i8 0, i64 272, i1 false)
  %i.ep = load ptr, ptr %i.aw, align 8, !tbaa !269
  store ptr %i.ep, ptr %3, align 8, !tbaa !142
  %i.eq = load i32, ptr %i.ct, align 8, !tbaa !275
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.eq, ptr %i.er, align 8, !tbaa !277
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.et = load i32, ptr %i.cy, align 4, !tbaa !263
  %i.eu = load <2 x i32>, ptr %i.cw, align 8, !tbaa !8
  store <2 x i32> %i.eu, ptr %i.es, align 4, !tbaa !8
  %i.ev = load i32, ptr %i.bk, align 4, !tbaa !278 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !104
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ey = load ptr, ptr %i.dd, align 8, !tbaa !264
  call void @ma_channel_map_copy_or_default(ptr noundef nonnull %i.ex, i64 noundef 254, ptr noundef %i.ey, i32 noundef %i.et)
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !279 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 280
  store i32 %i.fa, ptr %i.fb, align 8, !tbaa !122
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !280 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 284
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !126
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !281 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.fi = icmp eq i32 %i.fg, 0
  %spec.select = select i1 %i.fi, i32 3, i32 %i.fg ; 2 uses
  store i32 %spec.select, ptr %i.fh, align 8, !tbaa !124
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.fj, i8 0, i64 272, i1 false)
  %i.fk = load ptr, ptr %i.ba, align 8, !tbaa !270
  store ptr %i.fk, ptr %4, align 8, !tbaa !142
  %i.fl = load i32, ptr %i.bw, align 8, !tbaa !273
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.fl, ptr %i.fm, align 8, !tbaa !277
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fo = load i32, ptr %i.cb, align 4, !tbaa !259
  %i.fp = load <2 x i32>, ptr %i.bz, align 8, !tbaa !8
  store <2 x i32> %i.fp, ptr %i.fn, align 4, !tbaa !8
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.ev, ptr %i.fq, align 4, !tbaa !104
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fs = load ptr, ptr %i.cg, align 8, !tbaa !260
  call void @ma_channel_map_copy_or_default(ptr noundef nonnull %i.fr, i64 noundef 254, ptr noundef %i.fs, i32 noundef %i.fo)
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 280
  store i32 %i.fa, ptr %i.ft, align 8, !tbaa !122
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 284
  store i32 %i.fd, ptr %i.fu, align 4, !tbaa !126
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 288
  store i32 %spec.select, ptr %i.fv, align 8, !tbaa !124
  %i.fw = load ptr, ptr %i.i, align 8, !tbaa !258
  %i.fx = call i32 %i.fw(ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #55 ; 2 uses
  %.not327 = icmp eq i32 %i.fx, 0
  br i1 %.not327, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.fz = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.fy) #55 ; 0 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.gb = call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.ga) #55 ; 0 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.gd = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.gc) #55 ; 0 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.gf = call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.ge) #55 ; 0 uses
  %i.gg = call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.dq) #55 ; 0 uses
  br label %ma__is_channel_map_valid.exit

bb.ag:                                            ; preds = %bb.ae
  %i.gh = load i32, ptr %1, align 8, !tbaa !247
  %i.gi = call i32 @ma_device_post_init(ptr noundef nonnull %2, i32 noundef %i.gh, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 2 uses
  %.not328 = icmp eq i32 %i.gi, 0
  br i1 %.not328, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @ma_device_uninit(ptr noundef nonnull %2)
  br label %ma__is_channel_map_valid.exit

bb.ai:                                            ; preds = %bb.ag
  %i.gj = load i8, ptr %i.bg, align 1, !tbaa !282
  %i.gk = icmp eq i8 %i.gj, 0
  br i1 %i.gk, label %bb.aj, label %.critedge

bb.aj:                                            ; preds = %bb.ai
  %i.gl = load i32, ptr %i.ez, align 8, !tbaa !279 ; 2 uses
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.ak, label %ma_calculate_buffer_size_in_frames_from_milliseconds.exit

bb.ak:                                            ; preds = %bb.aj
  %i.gn = load i32, ptr %i.bl, align 4, !tbaa !151 ; 2 uses
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %ma_calculate_buffer_size_in_frames_from_milliseconds.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gp = load i32, ptr %i.fc, align 4, !tbaa !280
  %i.gq = mul i32 %i.gp, %i.gn
  %i.gr = udiv i32 %i.gq, 1000
  br label %ma_calculate_buffer_size_in_frames_from_milliseconds.exit

ma_calculate_buffer_size_in_frames_from_milliseconds.exit: ; preds = %bb.al, %bb.aj
  %.0 = phi i32 [ %i.gl, %bb.aj ], [ %i.gr, %bb.al ] ; 5 uses
  %i.gs = load i32, ptr %1, align 8, !tbaa !247   ; 2 uses
  %.off345 = add i32 %i.gs, -2
  %switch346 = icmp ult i32 %.off345, 3
  br i1 %switch346, label %bb.am, label %bb.as

ma_calculate_buffer_size_in_frames_from_milliseconds.exit.thread: ; preds = %bb.ak
  %i.gt = load i32, ptr %1, align 8, !tbaa !247   ; 2 uses
  %.off345492 = add i32 %i.gt, -2
  %switch346493 = icmp ult i32 %.off345492, 3
  br i1 %switch346493, label %.thread, label %bb.as

.thread:                                          ; preds = %ma_calculate_buffer_size_in_frames_from_milliseconds.exit.thread
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 3420 ; 2 uses
  store i32 0, ptr %i.gu, align 4, !tbaa !283
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 3416
  br label %bb.an

bb.am:                                            ; preds = %ma_calculate_buffer_size_in_frames_from_milliseconds.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 3420 ; 3 uses
  store i32 0, ptr %i.gw, align 4, !tbaa !283
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 3416 ; 3 uses
  store i32 %.0, ptr %i.gx, align 8, !tbaa !284
  %i.gy = icmp eq i32 %.0, 0
  br i1 %i.gy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread, %bb.am
  %i.gz = phi ptr [ %i.gv, %.thread ], [ %i.gx, %bb.am ] ; 2 uses
  %i.ha = phi ptr [ %i.gu, %.thread ], [ %i.gw, %bb.am ]
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 3080
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !123 ; 2 uses
  store i32 %i.hc, ptr %i.gz, align 8, !tbaa !284
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.hd = phi i32 [ %i.hc, %bb.an ], [ %.0, %bb.am ]
  %i.he = phi ptr [ %i.gz, %bb.an ], [ %i.gx, %bb.am ] ; 2 uses
  %i.hf = phi ptr [ %i.ha, %bb.an ], [ %i.gw, %bb.am ]
  %.0494497 = phi i32 [ 0, %bb.an ], [ %.0, %bb.am ]
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !22 ; 2 uses
  %.not8.i = icmp eq ptr %i.hh, null
  br i1 %.not8.i, label %ma_malloc.exit.thread, label %ma_malloc.exit

ma_malloc.exit.thread:                            ; preds = %bb.ao
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 3408
end_hunk_4
begin_hunk_5_@ma_device_uninit:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !166 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %ma_resampler_uninit.exit.i60, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !168
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !169
  tail call void %i.dh(ptr noundef %i.dk, ptr noundef %i.dl, ptr noundef nonnull %i.cz) #55, !inline_history !311
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !171
  %.not.i.i57 = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i57, label %ma_resampler_uninit.exit.i60, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !172 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %ma_resampler_uninit.exit.i60, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 312
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i.i59 = icmp eq ptr %i.ds, null
  br i1 %.not9.i.i.i59, label %ma_resampler_uninit.exit.i60, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = load ptr, ptr %i.cz, align 8, !tbaa !25
  tail call void %i.ds(ptr noundef nonnull %i.dp, ptr noundef %i.dt) #55, !inline_history !312
  br label %ma_resampler_uninit.exit.i60

ma_resampler_uninit.exit.i60:                     ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !174
  %.not.i10.i61 = icmp eq i32 %i.dv, 0
  br i1 %.not.i10.i61, label %ma_channel_converter_uninit.exit.i63, label %bb.ag

bb.ag:                                            ; preds = %ma_resampler_uninit.exit.i60
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1752
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !175 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %ma_channel_converter_uninit.exit.i63, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cy, i64 312
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i12.i62 = icmp eq ptr %i.ea, null
  br i1 %.not9.i.i12.i62, label %ma_channel_converter_uninit.exit.i63, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = load ptr, ptr %i.cz, align 8, !tbaa !25
  tail call void %i.ea(ptr noundef nonnull %i.dx, ptr noundef %i.eb) #55, !inline_history !313
  br label %ma_channel_converter_uninit.exit.i63

ma_channel_converter_uninit.exit.i63:             ; preds = %bb.ai, %bb.ah, %bb.ag, %ma_resampler_uninit.exit.i60
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1965
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !177
  %.not9.i64 = icmp eq i8 %i.ed, 0
  br i1 %.not9.i64, label %ma_data_converter_uninit.exit66, label %bb.aj

bb.aj:                                            ; preds = %ma_channel_converter_uninit.exit.i63
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1968
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !178 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %ma_data_converter_uninit.exit66, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cy, i64 312
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i65 = icmp eq ptr %i.ei, null
  br i1 %.not9.i.i65, label %ma_data_converter_uninit.exit66, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ej = load ptr, ptr %i.cz, align 8, !tbaa !25
  tail call void %i.ei(ptr noundef nonnull %i.ef, ptr noundef %i.ej) #55, !inline_history !314
  br label %ma_data_converter_uninit.exit66

ma_data_converter_uninit.exit66:                  ; preds = %bb.al, %bb.ak, %bb.aj, %ma_channel_converter_uninit.exit.i63, %ma_data_converter_uninit.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1992
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !186 ; 2 uses
  %.not46 = icmp eq ptr %i.el, null
  br i1 %.not46, label %ma_free.exit, label %bb.am

bb.am:                                            ; preds = %ma_data_converter_uninit.exit66
  %i.em = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 312
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !31 ; 2 uses
  %.not9.i68 = icmp eq ptr %i.eo, null
  br i1 %.not9.i68, label %ma_free.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 288
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !25
  tail call void %i.eo(ptr noundef nonnull %i.el, ptr noundef %i.eq) #55, !inline_history !32
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.an, %bb.am, %ma_data_converter_uninit.exit66
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !285 ; 2 uses
  %.not47 = icmp eq ptr %i.es, null
  br i1 %.not47, label %ma_free.exit71, label %bb.ao

bb.ao:                                            ; preds = %ma_free.exit
  %i.et = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 312
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !31 ; 2 uses
  %.not9.i70 = icmp eq ptr %i.ev, null
  br i1 %.not9.i70, label %ma_free.exit71, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 288
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !25
  tail call void %i.ev(ptr noundef nonnull %i.es, ptr noundef %i.ex) #55, !inline_history !32
  br label %ma_free.exit71

ma_free.exit71:                                   ; preds = %bb.ap, %bb.ao, %ma_free.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !289 ; 2 uses
  %.not48 = icmp eq ptr %i.ez, null
  br i1 %.not48, label %ma_free.exit74, label %bb.aq

bb.aq:                                            ; preds = %ma_free.exit71
  %i.fa = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 312
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !31 ; 2 uses
  %.not9.i73 = icmp eq ptr %i.fc, null
  br i1 %.not9.i73, label %ma_free.exit74, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 288
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !25
  tail call void %i.fc(ptr noundef nonnull %i.ez, ptr noundef %i.fe) #55, !inline_history !32
  br label %ma_free.exit74

ma_free.exit74:                                   ; preds = %bb.ar, %bb.aq, %ma_free.exit71
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.fg = load i8, ptr %i.ff, align 4, !tbaa !306
  %.not49 = icmp eq i8 %i.fg, 0
  br i1 %.not49, label %ma_zero_memory_default.exit, label %bb.as

bb.as:                                            ; preds = %ma_free.exit74
  %i.fh = load ptr, ptr %0, align 8, !tbaa !132   ; 10 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 288 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.fi, align 8, !tbaa !33
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 312 ; 2 uses
  %.sroa.481.0.copyload = load ptr, ptr %.sroa.481.0..sroa_idx, align 8, !tbaa !33 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !239 ; 2 uses
  %.not.i75 = icmp eq ptr %i.fk, null
  br i1 %.not.i75, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fl = tail call i32 %i.fk(ptr noundef nonnull %i.fh) #55, !inline_history !303 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 320
  %i.fn = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.fm) #55 ; 0 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 360
  %i.fp = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.fo) #55 ; 0 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 416
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !240 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %ma_free.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ft = load ptr, ptr %.sroa.481.0..sroa_idx, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i76 = icmp eq ptr %i.ft, null
  br i1 %.not9.i.i76, label %ma_free.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fu = load ptr, ptr %i.fi, align 8, !tbaa !25
  tail call void %i.ft(ptr noundef nonnull %i.fr, ptr noundef %i.fu) #55, !inline_history !304
  br label %ma_free.exit.i

ma_free.exit.i:                                   ; preds = %bb.aw, %bb.av, %bb.au
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 112
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !209
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fh, i64 120
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %bb.ax, label %ma_context_uninit.exit

bb.ax:                                            ; preds = %ma_free.exit.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fh, i64 224
  %i.ga = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.fz) #55 ; 0 uses
  br label %ma_context_uninit.exit

ma_context_uninit.exit:                           ; preds = %ma_free.exit.i, %bb.ax
  %i.gb = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  %.not9.i79 = icmp eq ptr %.sroa.481.0.copyload, null
  %or.cond = select i1 %i.gc, i1 true, i1 %.not9.i79
  br i1 %or.cond, label %ma_zero_memory_default.exit, label %bb.ay

bb.ay:                                            ; preds = %ma_context_uninit.exit
  tail call void %.sroa.481.0.copyload(ptr noundef nonnull %i.gb, ptr noundef %.sroa.0.0.copyload) #55, !inline_history !32
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.ay, %ma_context_uninit.exit, %ma_free.exit74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3776) %0, i8 0, i64 3776, i1 false)
  br label %ma_device__is_initialized.exit.thread

ma_device__is_initialized.exit.thread:            ; preds = %bb.a, %ma_device__is_initialized.exit, %ma_zero_memory_default.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @ma_silence_pcm_frames(ptr nofree noundef writeonly captures(address) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #21 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %3 to i64
  %i.c = mul i64 %1, %i.b                         ; 2 uses
  %.not18 = icmp eq i64 %i.c, 0
  br i1 %.not18, label %ma_zero_memory_64.exit, label %.lr.ph17.preheader

.lr.ph17.preheader:                               ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 -128, i64 %i.c, i1 false), !tbaa !9
  br label %ma_zero_memory_64.exit

bb.c:                                             ; preds = %bb.a
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8
  %i.g = mul i32 %i.f, %3
  %i.h = zext i32 %i.g to i64
  %i.i = mul i64 %1, %i.h                         ; 2 uses
  %.not.i13 = icmp eq i64 %i.i, 0
  br i1 %.not.i13, label %ma_zero_memory_64.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %ma_zero_memory_default.exit.i
  %.0.i15 = phi ptr [ %i.k, %ma_zero_memory_default.exit.i ], [ %0, %bb.c ] ; 3 uses
  %.08.i14 = phi i64 [ %i.j, %ma_zero_memory_default.exit.i ], [ %i.i, %bb.c ] ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %.08.i14, i64 4294967295) ; 3 uses
  %.not = icmp eq ptr %.0.i15, null
  br i1 %.not, label %ma_zero_memory_default.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15, i8 0, i64 %spec.store.select.i, i1 false)
  br label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.d, %.lr.ph
  %i.j = sub i64 %.08.i14, %spec.store.select.i   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i15, i64 %spec.store.select.i
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %ma_zero_memory_64.exit, label %.lr.ph, !llvm.loop !286

ma_zero_memory_64.exit:                           ; preds = %ma_zero_memory_default.exit.i, %.lr.ph17.preheader, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @ma_worker_thread(ptr noundef %0) #8 {
bb.a:
  %1 = alloca %struct.ma_device_notification, align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [4096 x i8], align 16             ; 15 uses
  %i.e = alloca [4096 x i8], align 16             ; 6 uses
  %i.f = alloca [4096 x i8], align 16             ; 7 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca [4096 x i8], align 16             ; 6 uses
  %i.i = alloca [4096 x i8], align 16             ; 11 uses
  %i.j = alloca i64, align 8                      ; 9 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 9 uses
  %i.m = alloca i64, align 8                      ; 9 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.ma_device_notification, align 8 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store atomic i32 1, ptr %i.p seq_cst, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.s = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.r) #55 ; 0 uses
  store i32 1, ptr %i.q, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.u = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.t) #55 ; 0 uses
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.r) #55 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2812 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2548 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2552 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1116 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 399 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 398
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ba, %bb.a
  %i.ax = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.x) #55 ; 0 uses
  %i.ay = load i32, ptr %i.w, align 8, !tbaa !48
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i.i, label %ma_device_get_state.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.ba = call i32 @pthread_cond_wait(ptr noundef nonnull %i.y, ptr noundef nonnull %i.x) #55 ; 0 uses
  %i.bb = load i32, ptr %i.w, align 8, !tbaa !48
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i.i, label %ma_device_get_state.exit, !llvm.loop !50

ma_device_get_state.exit:                         ; preds = %.lr.ph.i.i, %bb.b
  store i32 0, ptr %i.w, align 8, !tbaa !48
  %i.bd = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.x) #55 ; 0 uses
  store i32 0, ptr %i.z, align 8, !tbaa !315
  %i.be = load atomic i32, ptr %i.p seq_cst, align 8
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.bb, label %bb.c

bb.c:                                             ; preds = %ma_device_get_state.exit
  %i.bg = load ptr, ptr %0, align 8, !tbaa !132
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !316 ; 2 uses
  %.not = icmp eq ptr %i.bi, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = call i32 %i.bi(ptr noundef nonnull %0) #55 ; 2 uses
  %.not33 = icmp eq i32 %i.bj, 0
  br i1 %.not33, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.bj, ptr %i.z, align 8, !tbaa !315
  %i.bk = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ab) #55 ; 0 uses
  store i32 1, ptr %i.aa, align 8, !tbaa !48
  br label %bb.ba

.thread:                                          ; preds = %bb.c, %bb.d
  store atomic i32 2, ptr %i.p seq_cst, align 8
  %i.bl = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ab) #55 ; 0 uses
  store i32 1, ptr %i.aa, align 8, !tbaa !48
  %i.bm = call i32 @pthread_cond_signal(ptr noundef nonnull %i.ac) #55 ; 0 uses
  %i.bn = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ab) #55 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %0, ptr %2, align 8
  store i64 0, ptr %i.ad, align 8
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !317 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %ma_device__on_notification_started.exit, label %bb.f

bb.f:                                             ; preds = %.thread
  call void %i.bo(ptr noundef nonnull %2) #55, !inline_history !318
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !319 ; 2 uses
  %.pre4.i.i = load i32, ptr %i.ad, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !268 ; 2 uses
  %i.br = icmp ne ptr %i.bq, null
  %i.bs = icmp eq i32 %.pre4.i.i, 1
  %or.cond.i.i = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond.i.i, label %bb.g, label %ma_device__on_notification_started.exit

bb.g:                                             ; preds = %bb.f
  call void %i.bq(ptr noundef nonnull %.pre.i.i) #55, !inline_history !318
  br label %ma_device__on_notification_started.exit

ma_device__on_notification_started.exit:          ; preds = %.thread, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bt = load ptr, ptr %0, align 8, !tbaa !132   ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !292 ; 2 uses
  %.not34 = icmp eq ptr %i.bv, null
  br i1 %.not34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %ma_device__on_notification_started.exit
  %i.bw = call i32 %i.bv(ptr noundef nonnull %0) #55 ; 0 uses
  br label %bb.au

bb.i:                                             ; preds = %ma_device__on_notification_started.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #55
  %i.bx = load i32, ptr %i.af, align 8, !tbaa !137 ; 2 uses
  %.off.i = add i32 %i.bx, -2
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !290
end_hunk_5
begin_hunk_6_@ma_worker_thread:bb.a
  call void %i.na(ptr noundef nonnull %i.my) #55, !inline_history !345
  br label %ma_device__on_notification_stopped.exit

ma_device__on_notification_stopped.exit:          ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %ma_device_get_state.exit45

ma_device_get_state.exit45:                       ; preds = %ma_device__on_notification_stopped.exit, %bb.av
  %i.nc = load atomic i32, ptr %i.p seq_cst, align 8
  %i.nd = icmp eq i32 %i.nc, 0
  br i1 %i.nd, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %ma_device_get_state.exit45
  store atomic i32 1, ptr %i.p seq_cst, align 8
  %i.ne = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.r) #55 ; 0 uses
  store i32 1, ptr %i.q, align 8, !tbaa !48
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.e
  %.sink107 = phi ptr [ %i.t, %bb.az ], [ %i.ac, %bb.e ]
  %.sink = phi ptr [ %i.r, %bb.az ], [ %i.ab, %bb.e ]
  %i.nf = call i32 @pthread_cond_signal(ptr noundef nonnull %.sink107) #55 ; 0 uses
  %i.ng = call i32 @pthread_mutex_unlock(ptr noundef nonnull %.sink) #55 ; 0 uses
  br label %bb.b

bb.bb:                                            ; preds = %ma_device_get_state.exit, %ma_device_get_state.exit45
  ret ptr null
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @ma_duplex_rb_init(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #8 {
bb.a:
  %i.a = mul i32 %4, 5                            ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp eq i32 %3, 0
  %i.d = icmp eq i32 %2, 0
  %or.cond.i = or i1 %i.d, %i.c
  %i.e = icmp eq i32 %4, 0
  %or.cond3.i = or i1 %or.cond.i, %i.e
  br i1 %or.cond3.i, label %ma_calculate_frame_count_after_resampling.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, %3
  br i1 %i.f, label %ma_calculate_frame_count_after_resampling.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext i32 %2 to i64                       ; 2 uses
  %i.h = mul nuw i64 %i.b, %i.g
  %i.i = zext i32 %3 to i64
  %i.j = udiv i64 %i.h, %i.i                      ; 3 uses
  %i.k = udiv i32 %3, %2
  %i.l = zext i32 %i.k to i64
  %i.m = mul i64 %i.j, %i.l
  %i.n = udiv i64 %i.m, %i.g
  %i.o = urem i32 %3, %2
  %i.p = zext i32 %i.o to i64
  %i.q = mul i64 %i.j, %i.p
  %i.r = add i64 %i.q, %i.n
  %.not.i = icmp ule i64 %i.r, %i.b
  %i.s = zext i1 %.not.i to i64
  %spec.select.i = add nuw i64 %i.j, %i.s
  %i.t = trunc i64 %spec.select.i to i32
  br label %ma_calculate_frame_count_after_resampling.exit

ma_calculate_frame_count_after_resampling.exit:   ; preds = %bb.b, %bb.c
  %.025.i = phi i32 [ %i.t, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.u = icmp eq i32 %.025.i, 0
  %i.v = icmp eq ptr %6, null
  %or.cond = or i1 %i.v, %i.u
  br i1 %or.cond, label %ma_calculate_frame_count_after_resampling.exit.thread, label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %ma_calculate_frame_count_after_resampling.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(152) %6, i8 0, i64 152, i1 false)
  %i.w = zext i32 %0 to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8    ; 2 uses
  %i.z = mul i32 %i.y, %1                         ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %ma_calculate_frame_count_after_resampling.exit.thread, label %bb.d

bb.d:                                             ; preds = %ma_zero_memory_default.exit.i.i
  %i.ab = mul i32 %i.z, %.025.i                   ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 3 uses
  %i.ad = add i32 %i.ab, -2147483617
  %i.ae = icmp ult i32 %i.ad, -2147483616
  br i1 %i.ae, label %ma_calculate_frame_count_after_resampling.exit.thread, label %ma_zero_memory_default.exit42.i

ma_zero_memory_default.exit42.i:                  ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ac, i8 0, i64 64, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.ag = icmp eq ptr %5, null
  br i1 %i.ag, label %ma_allocation_callbacks_init_copy.exit.i.thread, label %bb.e

bb.e:                                             ; preds = %ma_zero_memory_default.exit42.i
  %i.ah = load ptr, ptr %5, align 8, !tbaa !25
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31
  %i.al = icmp eq ptr %i.ak, null                 ; 2 uses
  br i1 %i.ai, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.al, label %bb.g, label %.thread22.i.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !22
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.h, label %ma_calculate_frame_count_after_resampling.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %ma_allocation_callbacks_init_copy.exit.i.thread, label %ma_calculate_frame_count_after_resampling.exit.thread

bb.i:                                             ; preds = %bb.e
  br i1 %i.al, label %ma_calculate_frame_count_after_resampling.exit.thread, label %.thread22.i.i

.thread22.i.i:                                    ; preds = %bb.i, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !22
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.j, label %ma_allocation_callbacks_init_copy.exit.i

bb.j:                                             ; preds = %.thread22.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !34
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %ma_calculate_frame_count_after_resampling.exit.thread, label %ma_allocation_callbacks_init_copy.exit.i

ma_allocation_callbacks_init_copy.exit.i.thread:  ; preds = %bb.h, %ma_zero_memory_default.exit42.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 112
  store ptr @ma__malloc_default, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store ptr @ma__realloc_default, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 128
  store ptr @ma__free_default, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  store i32 %i.ab, ptr %i.ay, align 8, !tbaa !346
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 84
  store i32 1, ptr %i.az, align 4, !tbaa !347
  %i.ba = add nuw nsw i32 %i.ab, 31
  %i.bb = and i32 %i.ba, 2147483616               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !348
  br label %bb.k

ma_allocation_callbacks_init_copy.exit.i:         ; preds = %.thread22.i.i, %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !35
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 112
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !22 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  store i32 %i.ab, ptr %i.bd, align 8, !tbaa !346
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 84
  store i32 1, ptr %i.be, align 4, !tbaa !347
  %i.bf = add nuw nsw i32 %i.ab, 31
  %i.bg = and i32 %i.bf, 2147483616               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !348
  %.not8.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not8.i.i.i, label %ma_aligned_malloc.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %ma_allocation_callbacks_init_copy.exit.i.thread, %ma_allocation_callbacks_init_copy.exit.i
  %.in = phi i32 [ %i.bb, %ma_allocation_callbacks_init_copy.exit.i.thread ], [ %i.bg, %ma_allocation_callbacks_init_copy.exit.i ]
  %i.bi = phi ptr [ %i.ay, %ma_allocation_callbacks_init_copy.exit.i.thread ], [ %i.bd, %ma_allocation_callbacks_init_copy.exit.i ]
  %i.bj = phi ptr [ @ma__malloc_default, %ma_allocation_callbacks_init_copy.exit.i.thread ], [ %.pre, %ma_allocation_callbacks_init_copy.exit.i ]
  %i.bk = zext nneg i32 %.in to i64               ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, 39
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.bn = tail call ptr %i.bj(i64 noundef %i.bl, ptr noundef %i.bm) #55, !inline_history !349 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %ma_aligned_malloc.exit.thread.i, label %ma_aligned_malloc.exit.i

ma_aligned_malloc.exit.thread.i:                  ; preds = %bb.k, %ma_allocation_callbacks_init_copy.exit.i
  store ptr null, ptr %i.ac, align 8, !tbaa !309
  br label %ma_calculate_frame_count_after_resampling.exit.thread

ma_aligned_malloc.exit.i:                         ; preds = %bb.k
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = add i64 %i.bp, 39
  %i.br = and i64 %i.bq, -32                      ; 2 uses
  %i.bs = inttoptr i64 %i.br to ptr               ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8
  store ptr %i.bn, ptr %i.bt, align 8, !tbaa !33
  store ptr %i.bs, ptr %i.ac, align 8, !tbaa !309
  %.not39.i = icmp eq i64 %i.br, 0
  br i1 %.not39.i, label %ma_calculate_frame_count_after_resampling.exit.thread, label %bb.l

bb.l:                                             ; preds = %ma_aligned_malloc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 32 %i.bs, i8 0, i64 %i.bk, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 100
  store i8 1, ptr %i.bu, align 4, !tbaa !308
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 136
  store i32 %0, ptr %i.bv, align 8, !tbaa !350
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 140
  store i32 %1, ptr %i.bw, align 4, !tbaa !351
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 144
  store i32 0, ptr %i.bx, align 8, !tbaa !352
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.by, i8 0, i64 64, i1 false)
  store ptr @ma_gRBDataSourceVTable, ptr %6, align 8, !tbaa !353
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 -1, ptr %i.bz, align 8, !tbaa !354
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 -1, ptr %i.ca, align 8, !tbaa !355
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %6, ptr %i.cb, align 8, !tbaa !356
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  %i.cd = shl i32 %4, 1
  %i.ce = mul i32 %i.cd, %1
  %i.cf = mul i32 %i.ce, %i.y
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 92
  %i.ci = load atomic i32, ptr %i.ch seq_cst, align 4 ; 2 uses
  %i.cj = and i32 %i.ci, -2147483648              ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.cl = load atomic i32, ptr %i.ck seq_cst, align 8 ; 2 uses
  %i.cm = and i32 %i.cl, 2147483647               ; 2 uses
  %i.cn = and i32 %i.cl, -2147483648              ; 2 uses
  %i.co = icmp eq i32 %i.cj, %i.cn
  br i1 %i.co, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cp = zext nneg i32 %i.cm to i64
  %i.cq = add nuw nsw i64 %i.cp, %i.cg            ; 2 uses
  %i.cr = load i32, ptr %i.bi, align 8, !tbaa !346 ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %.not.i.i15 = icmp samesign ult i64 %i.cq, %i.cs
  %i.ct = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %.not.i.i15, label %ma_pcm_rb_seek_write.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = sub i32 %i.ct, %i.cr
  %i.cv = xor i32 %i.cj, -2147483648
  br label %ma_pcm_rb_seek_write.exit

bb.o:                                             ; preds = %bb.l
  %i.cw = and i32 %i.ci, 2147483647
  %i.cx = zext nneg i32 %i.cm to i64
  %i.cy = add nuw nsw i64 %i.cx, %i.cg
  %i.cz = zext nneg i32 %i.cw to i64
  %spec.select30.i.i = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.cz)
  %spec.select.i.i = trunc nuw nsw i64 %spec.select30.i.i to i32
  br label %ma_pcm_rb_seek_write.exit

ma_pcm_rb_seek_write.exit:                        ; preds = %bb.m, %bb.n, %bb.o
  %.020.i.i = phi i32 [ %i.cv, %bb.n ], [ %i.cn, %bb.o ], [ %i.cj, %bb.m ]
  %.019.i.i = phi i32 [ %i.cu, %bb.n ], [ %spec.select.i.i, %bb.o ], [ %i.ct, %bb.m ]
  %i.da = or i32 %.019.i.i, %.020.i.i
  %i.db = atomicrmw xchg ptr %i.ck, i32 %i.da seq_cst, align 8 ; 0 uses
  br label %ma_calculate_frame_count_after_resampling.exit.thread

ma_calculate_frame_count_after_resampling.exit.thread: ; preds = %bb.i, %bb.g, %bb.h, %ma_aligned_malloc.exit.i, %bb.d, %bb.j, %ma_aligned_malloc.exit.thread.i, %ma_zero_memory_default.exit.i.i, %bb.a, %ma_calculate_frame_count_after_resampling.exit, %ma_pcm_rb_seek_write.exit
  %.0 = phi i32 [ 0, %ma_pcm_rb_seek_write.exit ], [ -2, %ma_calculate_frame_count_after_resampling.exit ], [ -2, %bb.a ], [ -4, %ma_aligned_malloc.exit.thread.i ], [ -2, %ma_zero_memory_default.exit.i.i ], [ -2, %bb.i ], [ -2, %bb.g ], [ -2, %bb.h ], [ -4, %ma_aligned_malloc.exit.i ], [ -2, %bb.d ], [ -2, %bb.j ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @ma_device_get_log(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_context_get_log.exit, label %ma_device_get_context.exit

ma_device_get_context.exit:                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !132    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ma_context_get_log.exit, label %bb.b

bb.b:                                             ; preds = %ma_device_get_context.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !209
  br label %ma_context_get_log.exit

ma_context_get_log.exit:                          ; preds = %bb.a, %ma_device_get_context.exit, %bb.b
  %.0.i1 = phi ptr [ %i.e, %bb.b ], [ null, %ma_device_get_context.exit ], [ null, %bb.a ]
  ret ptr %.0.i1
}

; Function Attrs: nounwind uwtable
define i32 @ma_device_get_name(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.ma_device_info, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %.not = icmp eq ptr %4, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %4, align 8, !tbaa !59
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp ne ptr %2, null                     ; 2 uses
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %2, align 1, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = call i32 @ma_device_get_info(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) ; 2 uses
  %.not22 = icmp eq i32 %i.c, 0
  br i1 %.not22, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  br i1 %i.a, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.e = call i32 @ma_strncpy_s(ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull %i.d, i64 noundef -1) ; 0 uses
  br i1 %.not, label %bb.j, label %.sink.split

bb.h:                                             ; preds = %bb.f
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 256
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.i
  %.sink25 = phi ptr [ %i.f, %bb.i ], [ %2, %bb.g ]
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink25) #66
  store i64 %i.g, ptr %4, align 8, !tbaa !59
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.g, %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @ma_get_format_name(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 6
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ma_device_init__pulse.65, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.168, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @ma_channel_map_to_string(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #23 {
bb.a:
  %.not56 = icmp eq i32 %1, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp eq ptr %0, null
  %.not39.not = icmp eq ptr %2, null              ; 2 uses
  br i1 %i.a, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not39.not, label %ma_channel_map_get_channel.exit.us.us, label %ma_channel_map_get_channel.exit.us

ma_channel_map_get_channel.exit.us.us:            ; preds = %.lr.ph.split.us, %ma_channel_map_get_channel.exit.us.us
  %.045.us.us = phi i32 [ %i.f, %ma_channel_map_get_channel.exit.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.03344.us.us = phi i64 [ %spec.select, %ma_channel_map_get_channel.exit.us.us ], [ 0, %.lr.ph.split.us ]
  %i.b = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %1, i32 noundef %.045.us.us)
  %i.c = tail call ptr @ma_channel_position_to_string(i8 noundef zeroext %i.b)
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #66
  %i.e = add i64 %i.d, %.03344.us.us
  %i.f = add nuw i32 %.045.us.us, 1               ; 3 uses
  %i.g = icmp ult i32 %i.f, %1
  %i.h = zext i1 %i.g to i64
  %spec.select = add i64 %i.e, %i.h               ; 2 uses
  %exitcond67.not = icmp eq i32 %i.f, %1
  br i1 %exitcond67.not, label %._crit_edge.thread, label %ma_channel_map_get_channel.exit.us.us, !llvm.loop !357

ma_channel_map_get_channel.exit.us:               ; preds = %.lr.ph.split.us, %bb.f
  %.045.us = phi i32 [ %i.o, %bb.f ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.03344.us = phi i64 [ %.1.us, %bb.f ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.i = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %1, i32 noundef %.045.us)
  %i.j = tail call ptr @ma_channel_position_to_string(i8 noundef zeroext %i.i) ; 2 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #66 ; 2 uses
  %i.l = add i64 %i.k, %.03344.us                 ; 4 uses
  %i.m = icmp ugt i64 %3, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %ma_channel_map_get_channel.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %.03344.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.j, i64 %i.k, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %ma_channel_map_get_channel.exit.us
  %i.o = add nuw i32 %.045.us, 1                  ; 3 uses
  %i.p = icmp ult i32 %i.o, %1
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = add i64 %i.l, 1                          ; 3 uses
  %i.r = icmp ugt i64 %3, %i.q
end_hunk_6
begin_hunk_7_@ma_vec3f_normalize:bb.a
  %i.f = insertelement <2 x float> poison, float %i.e, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %0, %i.g
  %i.i = fmul float %1, %i.e
  %i.j = insertvalue { <2 x float>, float } poison, <2 x float> %i.h, 0
  %i.k = insertvalue { <2 x float>, float } %i.j, float %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.fca.1.insert.merged = phi { <2 x float>, float } [ %i.k, %bb.b ], [ zeroinitializer, %bb.a ]
  ret { <2 x float>, float } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @ma_vec3f_cross(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #35 {
bb.a:
  %.sroa.013.4.vec.extract = extractelement <2 x float> %0, i64 1
  %.sroa.05.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.a = fneg float %.sroa.05.4.vec.extract
  %i.b = fmul float %1, %i.a
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.013.4.vec.extract, float %3, float %i.b)
  %i.d = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.e = insertelement <2 x float> %i.d, float %3, i64 0
  %i.f = fneg <2 x float> %i.e
  %i.g = fmul <2 x float> %0, %i.f
  %i.h = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.i = insertelement <2 x float> %i.h, float %1, i64 0
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> %2, <2 x float> %i.g) ; 2 uses
  %.sroa.03.0.vec.insert.i = insertelement <2 x float> poison, float %i.c, i64 0
  %i.k = shufflevector <2 x float> %.sroa.03.0.vec.insert.i, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.k, 0
  %i.l = extractelement <2 x float> %i.j, i64 1
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.l, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_atomic_vec3f_init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, <2 x float> %1, float %2) local_unnamed_addr #37 {
bb.a:
  store <2 x float> %1, ptr %0, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !336
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.a, align 4, !tbaa !1113
  ret void
}

; Function Attrs: nounwind uwtable
define void @ma_atomic_vec3f_set(ptr nofree noundef captures(address) %0, <2 x float> %1, float %2) local_unnamed_addr #36 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.b = atomicrmw volatile xchg ptr %i.a, i32 1 acquire, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %ma_spinlock_lock.exit, label %.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i
  %i.d = atomicrmw volatile xchg ptr %i.a, i32 1 acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_spinlock_lock.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.loopexit.i
  %i.f = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !46
  %i.h = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !47

ma_spinlock_lock.exit:                            ; preds = %.loopexit.i, %bb.a
  store <2 x float> %1, ptr %0, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !336
  store atomic volatile i32 0, ptr %i.a release, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define { <2 x float>, float } @ma_atomic_vec3f_get(ptr nofree noundef captures(address) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.b = atomicrmw volatile xchg ptr %i.a, i32 1 acquire, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %ma_spinlock_lock.exit, label %.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i
  %i.d = atomicrmw volatile xchg ptr %i.a, i32 1 acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_spinlock_lock.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.loopexit.i
  %i.f = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !46
  %i.h = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !47

ma_spinlock_lock.exit:                            ; preds = %.loopexit.i, %bb.a
  %.sroa.03.0.copyload = load <2 x float>, ptr %0, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !336
  store atomic volatile i32 0, ptr %i.a release, align 4
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.03.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.24.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_spatializer_listener_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_spatializer_listener_config) align 8 captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #37 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  store i32 %1, ptr %0, align 8, !tbaa !1116
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !1118
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !1119
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.c, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !336
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <4 x float> <float f0x40C90FDA, float f0x40C90FDA, float 0.000000e+00, float 3.433000e+02>, ptr %i.d, align 4, !tbaa !336
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_spatializer_listener_get_heap_size(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_spatializer_listener_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !59
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_spatializer_listener_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 8, !tbaa !1116   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %ma_spatializer_listener_get_heap_layout.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext i32 %i.c to i64
  %i.f = add nuw nsw i64 %i.e, 7
  %i.g = and i64 %i.f, 8589934584
  store i64 %i.g, ptr %1, align 8, !tbaa !59
  br label %ma_spatializer_listener_get_heap_layout.exit.thread

ma_spatializer_listener_get_heap_layout.exit.thread: ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @ma_spatializer_listener_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_get_default_channel_map_for_spatializer.exit, label %ma_zero_memory_default.exit64

ma_zero_memory_default.exit64:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %2, i8 0, i64 112, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_get_default_channel_map_for_spatializer.exit, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit64
  %i.c = load i32, ptr %0, align 8, !tbaa !1116   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %ma_get_default_channel_map_for_spatializer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr %1, ptr %i.e, align 8, !tbaa !1120
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = zext i32 %i.c to i64
  %i.g = add nuw nsw i64 %i.f, 7
  %i.h = and i64 %i.g, 8589934584
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.h, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.c, %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !1122
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %.sroa.23.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store float -1.000000e+00, ptr %.sroa.23.0..sroa_idx.i65, align 8, !tbaa !336
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 76 ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.k, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.l, align 8, !tbaa !1123
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1124
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %ma_zero_memory_default.exit
  %i.p = atomicrmw volatile xchg ptr %i.k, i32 1 acquire, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.loopexit, label %.preheader.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.r = atomicrmw volatile xchg ptr %i.k, i32 1 acquire, align 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.loopexit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.e, %.loopexit.i.i.i
  %i.t = load atomic volatile i32, ptr %i.k monotonic, align 4
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !46
  %i.v = load atomic volatile i32, ptr %i.k monotonic, align 4
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %.lr.ph.i.i.i, label %.loopexit.i.i.i, !llvm.loop !47

.loopexit:                                        ; preds = %.loopexit.i.i.i, %bb.e
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.j, align 8
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.23.0..sroa_idx.i65, align 8, !tbaa !336
  store atomic volatile i32 0, ptr %i.k release, align 4
  %i.x = fneg <2 x float> %.sroa.03.0.copyload.i.i
  %i.y = fneg float %.sroa.24.0.copyload.i.i
  %i.z = atomicrmw volatile xchg ptr %i.k, i32 1 acquire, align 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %ma_spatializer_listener_set_direction.exit, label %.preheader.i.i.i71

.loopexit.i.i.i72:                                ; preds = %.lr.ph.i.i.i74, %.preheader.i.i.i71
  %i.ab = atomicrmw volatile xchg ptr %i.k, i32 1 acquire, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %ma_spatializer_listener_set_direction.exit, label %.preheader.i.i.i71

.preheader.i.i.i71:                               ; preds = %.loopexit, %.loopexit.i.i.i72
  %i.ad = load atomic volatile i32, ptr %i.k monotonic, align 4
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %.lr.ph.i.i.i74, label %.loopexit.i.i.i72

.lr.ph.i.i.i74:                                   ; preds = %.preheader.i.i.i71, %.lr.ph.i.i.i74
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !46
  %i.af = load atomic volatile i32, ptr %i.k monotonic, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %.lr.ph.i.i.i74, label %.loopexit.i.i.i72, !llvm.loop !47

ma_spatializer_listener_set_direction.exit:       ; preds = %.loopexit.i.i.i72, %.loopexit
  store <2 x float> %i.x, ptr %i.j, align 8
  store float %i.y, ptr %.sroa.23.0..sroa_idx.i65, align 8, !tbaa !336
  store atomic volatile i32 0, ptr %i.k release, align 4
  br label %bb.f

bb.f:                                             ; preds = %ma_spatializer_listener_set_direction.exit, %ma_zero_memory_default.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.ah, align 8, !tbaa !1125
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1118 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = load i32, ptr %0, align 8, !tbaa !1116  ; 7 uses
  br i1 %i.ak, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 11, ptr %1, align 1, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 12, ptr %i.an, align 1, !tbaa !9
  br label %ma_get_default_channel_map_for_spatializer.exit

bb.i:                                             ; preds = %bb.g
  %i.ao = icmp eq i32 %i.al, 0
  %or.cond.i.i = or i1 %.not, %i.ao
  br i1 %or.cond.i.i, label %ma_get_default_channel_map_for_spatializer.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.i
  %i.ap = zext i32 %i.al to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.024.i.i = phi i32 [ %i.at, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %.01723.i.i = phi ptr [ %i.ar, %.preheader.i.i ], [ %1, %.preheader.i.i.preheader ] ; 2 uses
  %.01822.i.i = phi i64 [ %i.as, %.preheader.i.i ], [ %i.ap, %.preheader.i.i.preheader ]
  %i.aq = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.al, i32 noundef %.024.i.i)
  store i8 %i.aq, ptr %.01723.i.i, align 1, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %.01723.i.i, i64 1
  %i.as = add nsw i64 %.01822.i.i, -1             ; 2 uses
  %i.at = add nuw i32 %.024.i.i, 1                ; 2 uses
  %i.au = icmp uge i32 %i.at, %i.al
  %i.av = icmp eq i64 %i.as, 0
  %or.cond5.i.i = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond5.i.i, label %ma_get_default_channel_map_for_spatializer.exit, label %.preheader.i.i, !llvm.loop !147

bb.j:                                             ; preds = %bb.f
  %i.aw = icmp eq i32 %i.al, 0
  %or.cond.i75 = or i1 %.not, %i.aw
  br i1 %or.cond.i75, label %ma_get_default_channel_map_for_spatializer.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = zext i32 %i.al to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.aj, i64 %i.ax, i1 false)
  br label %ma_get_default_channel_map_for_spatializer.exit

ma_get_default_channel_map_for_spatializer.exit:  ; preds = %.preheader.i.i, %bb.b, %ma_zero_memory_default.exit64, %bb.k, %bb.j, %bb.i, %bb.h, %bb.a
  %.0 = phi i32 [ 0, %bb.k ], [ -2, %bb.a ], [ -2, %bb.b ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ -2, %ma_zero_memory_default.exit64 ], [ 0, %.preheader.i.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define { <2 x float>, float } @ma_spatializer_listener_get_direction(ptr nofree noundef captures(address) %0) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  %i.d = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_atomic_vec3f_get.exit, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader.i.i
  %i.f = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_atomic_vec3f_get.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.loopexit.i.i
  %i.h = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !46
  %i.j = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !47

ma_atomic_vec3f_get.exit:                         ; preds = %.loopexit.i.i, %bb.b
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.b, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !336
  store atomic volatile i32 0, ptr %i.c release, align 4
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.03.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %.sroa.24.0.copyload.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %ma_atomic_vec3f_get.exit
  %.pn = phi { <2 x float>, float } [ %.fca.1.insert.i, %ma_atomic_vec3f_get.exit ], [ { <2 x float> zeroinitializer, float -1.000000e+00 }, %bb.a ]
  ret { <2 x float>, float } %.pn
}

; Function Attrs: nounwind uwtable
define void @ma_spatializer_listener_set_direction(ptr nofree noundef captures(address) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.03.0.vec.insert.i = insertelement <2 x float> poison, float %1, i64 0
  %.sroa.03.4.vec.insert.i = insertelement <2 x float> %.sroa.03.0.vec.insert.i, float %2, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  %i.d = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_atomic_vec3f_set.exit, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader.i.i
  %i.f = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_atomic_vec3f_set.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.loopexit.i.i
  %i.h = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !46
  %i.j = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !47

ma_atomic_vec3f_set.exit:                         ; preds = %.loopexit.i.i, %bb.b
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.b, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %3, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !336
  store atomic volatile i32 0, ptr %i.c release, align 4
  br label %bb.c
end_hunk_7
begin_hunk_8_@ma_spatializer_listener_get_world_up:bb.a
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.b, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.3.0.copyload = load float, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !336
  %i.c = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.04.0.copyload, 0
  %i.d = insertvalue { <2 x float>, float } %i.c, float %.sroa.3.0.copyload, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.fca.1.insert.merged = phi { <2 x float>, float } [ %i.d, %bb.b ], [ { <2 x float> <float 0.000000e+00, float 1.000000e+00>, float 0.000000e+00 }, %bb.a ]
  ret { <2 x float>, float } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_spatializer_listener_set_enabled(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %1, ptr %i.b, align 8, !tbaa !1123
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ma_spatializer_listener_is_enabled(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1123
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_spatializer_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_spatializer_config) align 8 captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.a, align 8
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  store i32 %1, ptr %0, align 8, !tbaa !1131
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.b, align 4, !tbaa !1133
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !1134
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.d, align 8, !tbaa !1135
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !1136
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !1137
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float f0x7F7FFFFF>, ptr %i.g, align 4, !tbaa !336
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  store <4 x float> <float 1.000000e+00, float f0x40C90FDA, float f0x40C90FDA, float 0.000000e+00>, ptr %i.h, align 4, !tbaa !336
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store <2 x float> splat (float 1.000000e+00), ptr %i.i, align 4, !tbaa !336
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float 2.000000e-01, ptr %i.j, align 4, !tbaa !1138
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 360, ptr %i.k, align 8, !tbaa !1139
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_spatializer_get_heap_size(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_spatializer_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !59
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_spatializer_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 8, !tbaa !1131   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %ma_spatializer_get_heap_layout.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1133 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_spatializer_get_heap_layout.exit.thread, label %ma_spatializer_validate_config.exit.i

ma_spatializer_validate_config.exit.i:            ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1134
  %.not25.i = icmp eq ptr %i.i, null
  %i.j = zext i32 %i.c to i64
  %i.k = add nuw nsw i64 %i.j, 7
  %i.l = and i64 %i.k, 8589934584
  %i.m = select i1 %.not25.i, i64 0, i64 %i.l
  %i.n = zext i32 %i.f to i64                     ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 4
  %i.q = and i64 %i.p, 34359738360
  %i.r = shl nuw nsw i64 %i.n, 3
  %i.s = add nuw nsw i64 %i.q, %i.r
  %i.t = add nuw nsw i64 %i.s, %i.m
  store i64 %i.t, ptr %1, align 8, !tbaa !59
  br label %ma_spatializer_get_heap_layout.exit.thread

ma_spatializer_get_heap_layout.exit.thread:       ; preds = %bb.c, %bb.b, %bb.d, %bb.a, %ma_spatializer_validate_config.exit.i
  %.0 = phi i32 [ 0, %ma_spatializer_validate_config.exit.i ], [ -2, %bb.a ], [ -2, %bb.d ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @ma_spatializer_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_spatializer_get_heap_layout.exit.thread, label %ma_zero_memory_default.exit108

ma_zero_memory_default.exit108:                   ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(200) %2, i8 0, i64 200, i1 false)
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %ma_spatializer_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit108
  %i.d = load i32, ptr %0, align 8, !tbaa !1131   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_spatializer_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1133 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %ma_spatializer_get_heap_layout.exit.thread, label %ma_spatializer_validate_config.exit.i

ma_spatializer_validate_config.exit.i:            ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1134
  %.not25.i = icmp eq ptr %i.j, null              ; 2 uses
  %i.k = zext i32 %i.d to i64
  %i.l = add nuw nsw i64 %i.k, 7
  %i.m = and i64 %i.l, 8589934584
  %.sroa.5.0 = select i1 %.not25.i, i64 4294967295, i64 0
  %i.n = select i1 %.not25.i, i64 0, i64 %i.m     ; 2 uses
  %i.o = zext i32 %i.g to i64                     ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, 4
  %i.r = and i64 %i.q, 34359738360
  %i.s = add nuw nsw i64 %i.n, %i.r               ; 2 uses
  %i.t = shl nuw nsw i64 %i.o, 3
  %i.u = add nuw nsw i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr %1, ptr %i.v, align 8, !tbaa !1140
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.u, i1 false)
  %i.w = load <2 x i32>, ptr %0, align 8, !tbaa !8
  store <2 x i32> %i.w, ptr %2, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load <2 x i32>, ptr %i.x, align 8, !tbaa !8
  store <2 x i32> %i.z, ptr %i.y, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !1137 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !1142
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.af = load <4 x float>, ptr %i.ad, align 4, !tbaa !336
  store <4 x float> %i.af, ptr %i.ae, align 4, !tbaa !336
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ai = load <4 x float>, ptr %i.ag, align 4, !tbaa !336
  store <4 x float> %i.ai, ptr %i.ah, align 4, !tbaa !336
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.am = load float, ptr %i.al, align 4, !tbaa !1138
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 124
  store float %i.am, ptr %i.an, align 4, !tbaa !1143
  %i.ao = load <2 x float>, ptr %i.aj, align 4, !tbaa !336
  store <2 x float> %i.ao, ptr %i.ak, align 4, !tbaa !336
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1139
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !1144
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %.sroa.23.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  store float -1.000000e+00, ptr %.sroa.23.0..sroa_idx.i110, align 8, !tbaa !336
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 11 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.au, i8 0, i64 20, i1 false)
  store float 1.000000e+00, ptr %i.av, align 8, !tbaa !1145
  %i.aw = icmp eq i32 %i.ab, 1
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ma_spatializer_validate_config.exit.i
  %i.ax = atomicrmw volatile xchg ptr %i.au, i32 1 acquire, align 4
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.az = atomicrmw volatile xchg ptr %i.au, i32 1 acquire, align 4
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d, %.loopexit.i.i.i
  %i.bb = load atomic volatile i32, ptr %i.au monotonic, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !46
  %i.bd = load atomic volatile i32, ptr %i.au monotonic, align 4
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %.lr.ph.i.i.i, label %.loopexit.i.i.i, !llvm.loop !47

.loopexit:                                        ; preds = %.loopexit.i.i.i, %bb.d
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.at, align 8
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.23.0..sroa_idx.i110, align 8, !tbaa !336
  store atomic volatile i32 0, ptr %i.au release, align 4
  %i.bf = fneg <2 x float> %.sroa.03.0.copyload.i.i
  %i.bg = fneg float %.sroa.24.0.copyload.i.i
  %i.bh = atomicrmw volatile xchg ptr %i.au, i32 1 acquire, align 4
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %ma_spatializer_set_direction.exit, label %.preheader.i.i.i116

.loopexit.i.i.i117:                               ; preds = %.lr.ph.i.i.i119, %.preheader.i.i.i116
  %i.bj = atomicrmw volatile xchg ptr %i.au, i32 1 acquire, align 4
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %ma_spatializer_set_direction.exit, label %.preheader.i.i.i116

.preheader.i.i.i116:                              ; preds = %.loopexit, %.loopexit.i.i.i117
  %i.bl = load atomic volatile i32, ptr %i.au monotonic, align 4
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %.lr.ph.i.i.i119, label %.loopexit.i.i.i117

.lr.ph.i.i.i119:                                  ; preds = %.preheader.i.i.i116, %.lr.ph.i.i.i119
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !46
  %i.bn = load atomic volatile i32, ptr %i.au monotonic, align 4
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %.lr.ph.i.i.i119, label %.loopexit.i.i.i117, !llvm.loop !47

ma_spatializer_set_direction.exit:                ; preds = %.loopexit.i.i.i117, %.loopexit
  store <2 x float> %i.bf, ptr %i.at, align 8
  store float %i.bg, ptr %.sroa.23.0..sroa_idx.i110, align 8, !tbaa !336
  store atomic volatile i32 0, ptr %i.au release, align 4
  br label %bb.e

bb.e:                                             ; preds = %ma_spatializer_set_direction.exit, %ma_spatializer_validate_config.exit.i
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !1134 ; 2 uses
  %.not105 = icmp eq ptr %i.bp, null
  br i1 %.not105, label %ma_channel_map_copy_or_default.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.5.0 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !1146
  %i.bs = load i32, ptr %2, align 8, !tbaa !1147  ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %ma_channel_map_copy_or_default.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = zext i32 %i.bs to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull readonly align 1 %i.bp, i64 %i.bu, i1 false)
  br label %ma_channel_map_copy_or_default.exit

ma_channel_map_copy_or_default.exit:              ; preds = %bb.g, %bb.f, %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 176
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !1148
  %.val = load i32, ptr %i.f, align 4, !tbaa !1133 ; 3 uses
  %.val109 = load i32, ptr %i.ap, align 8, !tbaa !1139
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.by, i8 0, i64 48, i1 false)
  %i.bz = icmp eq i32 %.val, 0
  br i1 %i.bz, label %ma_spatializer_get_heap_layout.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %ma_channel_map_copy_or_default.exit
  %.sroa.3.0.insert.ext.i.i = zext i32 %.val109 to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i, 32
  %i.ca = zext i32 %.val to i64                   ; 6 uses
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = shl nuw nsw i64 %i.ca, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 160
  store ptr %i.bx, ptr %i.cd, align 8, !tbaa !997
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bx, i8 0, i64 %i.cc, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 144
  store ptr %i.bx, ptr %i.ce, align 8, !tbaa !999
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cb ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 152
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !1000
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 140
  store float 1.000000e+00, ptr %i.ch, align 4, !tbaa !1001
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift.i.i, %i.ca
  store i64 %.sroa.0.0.insert.insert, ptr %i.by, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i32 -1, ptr %i.ci, align 8, !tbaa !1002
  %min.iters.check = icmp ult i32 %.val, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.ca, 4294967288              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.cj, align 4, !tbaa !336
  store <4 x float> splat (float 1.000000e+00), ptr %i.ck, align 4, !tbaa !336
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.cl, align 4, !tbaa !336
  store <4 x float> splat (float 1.000000e+00), ptr %i.cm, align 4, !tbaa !336
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !1149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ca
  br i1 %cmp.n, label %ma_spatializer_get_heap_layout.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.co, align 4, !tbaa !336
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.cp, align 4, !tbaa !336
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ca
  br i1 %exitcond.not.i, label %ma_spatializer_get_heap_layout.exit.thread, label %.lr.ph.i, !llvm.loop !1150

ma_spatializer_get_heap_layout.exit.thread:       ; preds = %.lr.ph.i, %middle.block, %ma_channel_map_copy_or_default.exit, %bb.b, %bb.c, %ma_zero_memory_default.exit108, %bb.a
  %.0 = phi i32 [ -2, %bb.b ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit108 ], [ -2, %bb.c ], [ -2, %ma_channel_map_copy_or_default.exit ], [ 0, %middle.block ], [ 0, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define { <2 x float>, float } @ma_spatializer_get_direction(ptr nofree noundef captures(address) %0) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.d = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_atomic_vec3f_get.exit, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader.i.i
  %i.f = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_atomic_vec3f_get.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.loopexit.i.i
  %i.h = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !46
  %i.j = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !47

ma_atomic_vec3f_get.exit:                         ; preds = %.loopexit.i.i, %bb.b
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.b, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !336
  store atomic volatile i32 0, ptr %i.c release, align 4
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.03.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %.sroa.24.0.copyload.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %ma_atomic_vec3f_get.exit
  %.pn = phi { <2 x float>, float } [ %.fca.1.insert.i, %ma_atomic_vec3f_get.exit ], [ { <2 x float> zeroinitializer, float -1.000000e+00 }, %bb.a ]
  ret { <2 x float>, float } %.pn
}

; Function Attrs: nounwind uwtable
define void @ma_spatializer_set_direction(ptr nofree noundef captures(address) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.03.0.vec.insert.i = insertelement <2 x float> poison, float %1, i64 0
  %.sroa.03.4.vec.insert.i = insertelement <2 x float> %.sroa.03.0.vec.insert.i, float %2, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.d = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_atomic_vec3f_set.exit, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader.i.i
  %i.f = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_atomic_vec3f_set.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.loopexit.i.i
  %i.h = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !46
  %i.j = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !47

ma_atomic_vec3f_set.exit:                         ; preds = %.loopexit.i.i, %bb.b
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.b, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store float %3, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !336
  store atomic volatile i32 0, ptr %i.c release, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %ma_atomic_vec3f_set.exit
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @ma_spatializer_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !1131   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1133 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %ma_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1134
  %.not25.i.i = icmp eq ptr %i.h, null
  %i.i = zext i32 %i.b to i64
  %i.j = add nuw nsw i64 %i.i, 7
  %i.k = and i64 %i.j, 8589934584
  %i.l = select i1 %.not25.i.i, i64 0, i64 %i.k
  %i.m = zext i32 %i.e to i64                     ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = add nuw nsw i64 %i.n, 4
  %i.p = and i64 %i.o, 34359738360
  %i.q = shl nuw nsw i64 %i.m, 3
  %i.r = add nuw nsw i64 %i.p, %i.q
  %i.s = add nuw nsw i64 %i.r, %i.l               ; 2 uses
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22   ; 2 uses
  %.not8.i = icmp eq ptr %i.u, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %1, align 8, !tbaa !25
  %i.w = tail call ptr %i.u(i64 noundef %i.s, ptr noundef %i.v) #55, !inline_history !26
  br label %ma_malloc.exit

bb.g:                                             ; preds = %bb.d
  %i.x = tail call noalias noundef ptr @malloc(i64 noundef %i.s) #67
end_hunk_8
begin_hunk_9_@ma_linear_resampler_get_heap_size:bb.a
  %i.t = add nuw nsw i64 %i.j, 64                 ; 2 uses
  %i.u = add nsw i32 %i.p, -1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = mul nuw nsw i64 %i.t, %i.v
  %i.x = add nuw nsw i64 %.promoted57.i.i, %i.t
  %i.y = add nuw nsw i64 %i.x, %i.w
  br label %bb.f

bb.f:                                             ; preds = %cdce.end.i.preheader.i.i, %bb.e
  %i.z = phi i64 [ %.promoted57.i.i, %bb.e ], [ %i.y, %cdce.end.i.preheader.i.i ]
  %i.aa = add nuw nsw i64 %i.z, 7
  %i.ab = and i64 %i.aa, -8
  %i.ac = add nuw nsw i64 %i.k, %i.ab
  %i.ad = and i64 %i.ac, -8
  store i64 %i.ad, ptr %1, align 8, !tbaa !59
  br label %ma_linear_resampler_get_heap_layout.exit.thread

ma_linear_resampler_get_heap_layout.exit.thread:  ; preds = %bb.c, %bb.b, %bb.d, %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -2, %bb.a ], [ -2, %bb.d ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -3, 1) i32 @ma_linear_resampler_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #32 {
bb.a:
  %3 = alloca %struct.ma_linear_resampler_heap_layout, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_linear_resampler_get_heap_layout.exit.thread, label %ma_zero_memory_default.exit32

ma_zero_memory_default.exit32:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(136) %2, i8 0, i64 136, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_linear_resampler_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit32
  %i.c = load i32, ptr %0, align 8, !tbaa !1243   ; 2 uses
  switch i32 %i.c, label %ma_linear_resampler_get_heap_layout.exit.thread [
    i32 5, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1245 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %ma_linear_resampler_get_heap_layout.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i32 %i.c, 5                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = zext i32 %i.e to i64                     ; 3 uses
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = shl nuw nsw i64 %i.i, 2                  ; 3 uses
  %i.l = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  %.sink43.i = select i1 %i.g, i64 %i.k, i64 %i.j ; 2 uses
  %storemerge35.i = select i1 %i.g, i64 %i.l, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sink43.i, ptr %i.m, align 8, !tbaa !1250
  %i.n = add nuw nsw i64 %storemerge35.i, 6       ; 2 uses
  %i.o = and i64 %i.n, 68719476728
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !1252
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1248
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.r, i32 8) ; 2 uses
  %i.t = and i32 %i.s, 1
  %i.u = lshr i32 %i.s, 1                         ; 2 uses
  %.not.i37.i = icmp eq i32 %i.t, 0
  %i.v = add nuw nsw i64 %i.k, 4
  %i.w = and i64 %i.v, 34359738360
  %i.x = add nuw nsw i64 %i.w, 40
  %.promoted57.i.i = select i1 %.not.i37.i, i64 0, i64 %i.x ; 2 uses
  %.not82.i.i = icmp eq i32 %i.u, 0
  br i1 %.not82.i.i, label %bb.e, label %cdce.end.i.preheader.i.i

cdce.end.i.preheader.i.i:                         ; preds = %bb.d
  %i.y = add nuw nsw i64 %i.l, 64                 ; 2 uses
  %i.z = add nsw i32 %i.u, -1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = mul nuw nsw i64 %i.y, %i.aa
  %i.ac = add nuw nsw i64 %.promoted57.i.i, %i.y
  %i.ad = add nuw nsw i64 %i.ac, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %cdce.end.i.preheader.i.i, %bb.d
  %i.ae = phi i64 [ %.promoted57.i.i, %bb.d ], [ %i.ad, %cdce.end.i.preheader.i.i ]
  %i.af = add nuw nsw i64 %i.ae, 7
  %i.ag = and i64 %i.af, -8
  %i.ah = add nuw nsw i64 %i.ag, %i.n
  %i.ai = and i64 %i.ah, -8                       ; 2 uses
  store i64 %i.ai, ptr %3, align 8, !tbaa !1253
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !1254
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr %1, ptr %i.aj, align 8, !tbaa !1255
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.ai, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.f, %bb.e
  %.sink = getelementptr inbounds nuw i8, ptr %1, i64 %.sink43.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.ak, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %.sink, ptr %i.al, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1246
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !1247
  %i.aq = call fastcc i32 @ma_linear_resampler_set_rate_internal(ptr noundef nonnull %2, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %i.an, i32 noundef %i.ap, i32 noundef 0) ; 2 uses
  %.not30 = icmp eq i32 %i.aq, 0
  br i1 %.not30, label %bb.g, label %ma_linear_resampler_get_heap_layout.exit.thread

bb.g:                                             ; preds = %ma_zero_memory_default.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 1, ptr %i.ar, align 8, !tbaa !1257
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 0, ptr %i.as, align 4, !tbaa !1258
  br label %ma_linear_resampler_get_heap_layout.exit.thread

ma_linear_resampler_get_heap_layout.exit.thread:  ; preds = %bb.b, %ma_zero_memory_default.exit32, %bb.c, %ma_zero_memory_default.exit, %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -2, %bb.a ], [ %i.aq, %ma_zero_memory_default.exit ], [ -2, %bb.c ], [ -2, %ma_zero_memory_default.exit32 ], [ -2, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -3, 1) i32 @ma_linear_resampler_set_rate_internal(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #32 {
bb.a:
  %6 = alloca %struct.ma_lpf_config, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  %i.c = icmp eq i32 %4, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1259 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %.0.i58 = phi i32 [ %3, %bb.c ], [ %.06.i57, %bb.d ]
  %.06.i57 = phi i32 [ %4, %bb.c ], [ %i.g, %bb.d ] ; 4 uses
  %i.g = urem i32 %.0.i58, %.06.i57               ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %ma_gcf_u32.exit, label %bb.d

ma_gcf_u32.exit:                                  ; preds = %bb.d
  %i.i = udiv i32 %3, %.06.i57                    ; 3 uses
  store i32 %i.i, ptr %i.f, align 8, !tbaa !1260
  %i.j = udiv i32 %4, %.06.i57                    ; 3 uses
  store i32 %i.j, ptr %i.d, align 4, !tbaa !1259
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1261 ; 2 uses
  %i.m = icmp ugt i32 %i.l, 8
  br i1 %i.m, label %bb.j, label %bb.e

bb.e:                                             ; preds = %ma_gcf_u32.exit
  %. = tail call i32 @llvm.umax.i32(i32 %i.i, i32 %i.j)
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.j)
  %i.o = uitofp i32 %i.n to double
  %i.p = fmul nnan double %i.o, 5.000000e-01
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !1262
  %i.s = fmul double %i.p, %i.r
  %i.t = load <2 x i32>, ptr %0, align 8, !tbaa !8
  store <2 x i32> %i.t, ptr %6, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %., ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.s, ptr %.sroa.756.0..sroa_idx, align 8, !tbaa !774
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.l, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = call fastcc range(i32 -3, 1) i32 @ma_lpf_reinit__internal(ptr noundef nonnull readonly %6, ptr noundef null, ptr noundef nonnull %i.u, i32 noundef 0)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1252
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.z, i8 0, i64 56, i1 false)
  %i.aa = call fastcc i32 @ma_lpf_reinit__internal(ptr noundef nonnull readonly %6, ptr noundef %i.y, ptr noundef nonnull %i.z, i32 noundef 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i32 [ %i.v, %bb.f ], [ %i.aa, %bb.g ] ; 2 uses
  %.not54 = icmp eq i32 %.0, 0
  br i1 %.not54, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !1260 ; 2 uses
  %i.ac = load i32, ptr %i.d, align 4, !tbaa !1259 ; 6 uses
  %i.ad = udiv i32 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !1263
  %i.af = urem i32 %i.ab, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !1264
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !1258 ; 2 uses
  %i.aj = udiv i32 %i.ai, %i.e
  %i.ak = urem i32 %i.ai, %i.e
  %i.al = mul i32 %i.aj, %i.ac
  %i.am = mul i32 %i.ak, %i.ac
  %i.an = udiv i32 %i.am, %i.e
  %i.ao = add i32 %i.an, %i.al                    ; 2 uses
  %i.ap = udiv i32 %i.ao, %i.ac
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1257
  %i.as = add i32 %i.ar, %i.ap
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !1257
  %i.at = urem i32 %i.ao, %i.ac
  store i32 %i.at, ptr %i.ah, align 4, !tbaa !1258
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %ma_gcf_u32.exit, %bb.b, %bb.a, %bb.i
  %.046 = phi i32 [ 0, %bb.i ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %ma_gcf_u32.exit ], [ %.0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  ret i32 %.046
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @ma_linear_resampler_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !1243   ; 2 uses
  switch i32 %i.b, label %ma_free.exit [
    i32 5, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1245 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %i.b, 5
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %i.i = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  %storemerge35.i.i = select i1 %i.f, i64 %i.i, i64 %i.h
  %i.j = add nuw nsw i64 %storemerge35.i.i, 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1248
  %i.m = tail call i32 @llvm.umin.i32(i32 %i.l, i32 8) ; 2 uses
  %i.n = and i32 %i.m, 1
  %i.o = lshr i32 %i.m, 1                         ; 2 uses
  %.not.i37.i.i = icmp eq i32 %i.n, 0
  %i.p = add nuw nsw i64 %i.h, 4
  %i.q = and i64 %i.p, 34359738360
  %i.r = add nuw nsw i64 %i.q, 40
  %.promoted57.i.i.i = select i1 %.not.i37.i.i, i64 0, i64 %i.r ; 2 uses
  %.not82.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not82.i.i.i, label %bb.e, label %cdce.end.i.preheader.i.i.i

cdce.end.i.preheader.i.i.i:                       ; preds = %bb.d
  %i.s = add nuw nsw i64 %i.i, 64                 ; 2 uses
  %i.t = add nsw i32 %i.o, -1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.s, %i.u
  %i.w = add nuw nsw i64 %.promoted57.i.i.i, %i.s
  %i.x = add nuw nsw i64 %i.w, %i.v
  br label %bb.e

bb.e:                                             ; preds = %cdce.end.i.preheader.i.i.i, %bb.d
  %i.y = phi i64 [ %.promoted57.i.i.i, %bb.d ], [ %i.x, %cdce.end.i.preheader.i.i.i ]
  %i.z = add nuw nsw i64 %i.y, 7
  %i.aa = and i64 %i.z, -8
  %i.ab = add nuw nsw i64 %i.j, %i.aa
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22 ; 2 uses
  %.not8.i = icmp eq ptr %i.ae, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %1, align 8, !tbaa !25
  %i.ag = tail call ptr %i.ae(i64 noundef %i.ac, ptr noundef %i.af) #55, !inline_history !26
  br label %ma_malloc.exit

bb.h:                                             ; preds = %bb.e
  %i.ah = tail call noalias noundef ptr @malloc(i64 noundef %i.ac) #67
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.g, %bb.h
  %.0.i20 = phi ptr [ %i.ag, %bb.g ], [ %i.ah, %bb.h ] ; 4 uses
  %i.ai = icmp eq ptr %.0.i20, null
  br i1 %i.ai, label %ma_free.exit, label %bb.i

bb.i:                                             ; preds = %ma_malloc.exit
  %i.aj = tail call i32 @ma_linear_resampler_init_preallocated(ptr noundef nonnull %0, ptr noundef nonnull %.0.i20, ptr noundef %2) ; 4 uses
  %.not19 = icmp eq i32 %i.aj, 0
  br i1 %.not19, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31 ; 2 uses
  %.not9.i = icmp eq ptr %i.al, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %1, align 8, !tbaa !25
  tail call void %i.al(ptr noundef nonnull %.0.i20, ptr noundef %i.am) #55, !inline_history !32
  br label %ma_free.exit

bb.m:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %.0.i20) #55
  br label %ma_free.exit

bb.n:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i32 1, ptr %i.an, align 8, !tbaa !1265
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.f, %bb.a, %bb.c, %bb.b, %bb.m, %bb.l, %bb.k, %ma_malloc.exit, %bb.n
  %.013 = phi i32 [ 0, %bb.n ], [ %i.aj, %bb.l ], [ -2, %bb.a ], [ -4, %ma_malloc.exit ], [ -4, %bb.f ], [ %i.aj, %bb.m ], [ %i.aj, %bb.k ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define void @ma_linear_resampler_uninit(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @ma_lpf_uninit(ptr noundef nonnull %i.b, ptr noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1265
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1255 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ma_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %.not9.i = icmp eq ptr %i.i, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %1, align 8, !tbaa !25
  tail call void %i.i(ptr noundef nonnull %i.f, ptr noundef %i.j) #55, !inline_history !32
  br label %ma_free.exit

bb.g:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.f) #55
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -2, 1) i32 @ma_linear_resampler_process_pcm_frames(ptr nofree noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #40 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_9
begin_hunk_10_@ma_data_converter_init_preallocated:bb.a
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.b, %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !1435   ; 3 uses
  store i32 %i.g, ptr %2, align 8, !tbaa !1448
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1436 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !1449
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1437 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 %i.l, ptr %i.m, align 8, !tbaa !1450
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1438 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 %i.o, ptr %i.p, align 4, !tbaa !1451
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !152  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.r, ptr %i.s, align 8, !tbaa !1452
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !158  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.u, ptr %i.v, align 4, !tbaa !1453
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1430
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.x, ptr %i.y, align 8, !tbaa !1454
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1431
  %.not.i = icmp eq i32 %i.aa, 0                  ; 2 uses
  br i1 %.not.i, label %ma_data_converter_config_is_resampler_required.exit.i, label %ma_data_converter_config_is_resampler_required.exit.thread.i

ma_data_converter_config_is_resampler_required.exit.i: ; preds = %ma_zero_memory_default.exit
  %i.ab = icmp ne i32 %i.r, %i.u
  %i.ac = zext i1 %i.ab to i32                    ; 2 uses
  %.not14.i = icmp eq i32 %i.r, %i.u
  br i1 %.not14.i, label %bb.d, label %ma_data_converter_config_is_resampler_required.exit.thread.i

ma_data_converter_config_is_resampler_required.exit.thread.i: ; preds = %ma_zero_memory_default.exit, %ma_data_converter_config_is_resampler_required.exit.i
  %i.ad = phi i32 [ %i.ac, %ma_data_converter_config_is_resampler_required.exit.i ], [ 1, %ma_zero_memory_default.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !161
  %.not10.i = icmp eq i32 %i.af, 0
  br i1 %.not10.i, label %bb.d, label %ma_data_converter_config_get_mid_format.exit

bb.d:                                             ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i, %ma_data_converter_config_is_resampler_required.exit.i
  %i.ag = phi i32 [ %i.ad, %ma_data_converter_config_is_resampler_required.exit.thread.i ], [ %i.ac, %ma_data_converter_config_is_resampler_required.exit.i ] ; 3 uses
  switch i32 %i.i, label %bb.e [
    i32 2, label %ma_data_converter_config_get_mid_format.exit
    i32 5, label %ma_data_converter_config_get_mid_format.exit
  ]

bb.e:                                             ; preds = %bb.d
  %switch.selectcmp12.i = icmp eq i32 %i.g, 2
  %switch.select13.i = select i1 %switch.selectcmp12.i, i32 2, i32 5
  br label %ma_data_converter_config_get_mid_format.exit

ma_data_converter_config_get_mid_format.exit:     ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i, %bb.d, %bb.d, %bb.e
  %i.ah = phi i32 [ %i.ad, %ma_data_converter_config_is_resampler_required.exit.thread.i ], [ %i.ag, %bb.d ], [ %i.ag, %bb.e ], [ %i.ag, %bb.d ]
  %.0.i = phi i32 [ 5, %ma_data_converter_config_is_resampler_required.exit.thread.i ], [ %i.i, %bb.d ], [ %switch.select13.i, %bb.e ], [ %i.i, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  %.not14.i.i = icmp eq i32 %i.r, %i.u
  %or.cond = select i1 %.not.i, i1 %.not14.i.i, i1 false
  br i1 %or.cond, label %bb.f, label %ma_data_converter_config_is_resampler_required.exit.thread.i.i

ma_data_converter_config_is_resampler_required.exit.thread.i.i: ; preds = %ma_data_converter_config_get_mid_format.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !161, !noalias !1455
  %.not10.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not10.i.i, label %bb.f, label %ma_channel_converter_config_init_from_data_converter_config.exit

bb.f:                                             ; preds = %ma_data_converter_config_get_mid_format.exit, %ma_data_converter_config_is_resampler_required.exit.thread.i.i
  switch i32 %i.i, label %bb.g [
    i32 2, label %ma_channel_converter_config_init_from_data_converter_config.exit
    i32 5, label %ma_channel_converter_config_init_from_data_converter_config.exit
  ]

bb.g:                                             ; preds = %bb.f
  %switch.selectcmp12.i.i = icmp eq i32 %i.g, 2
  %switch.select13.i.i = select i1 %switch.selectcmp12.i.i, i32 2, i32 5
  br label %ma_channel_converter_config_init_from_data_converter_config.exit

ma_channel_converter_config_init_from_data_converter_config.exit: ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i.i, %bb.f, %bb.f, %bb.g
  %.0.i.i = phi i32 [ 5, %ma_data_converter_config_is_resampler_required.exit.thread.i.i ], [ %i.i, %bb.f ], [ %switch.select13.i.i, %bb.g ], [ %i.i, %bb.f ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.0.i.i, ptr %4, align 8, !tbaa !8, !alias.scope !1455
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.l, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !8, !alias.scope !1455
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.o, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !8, !alias.scope !1455
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !1455
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !520, !noalias !1455
  store <2 x ptr> %i.am, ptr %.sroa.78.0..sroa_idx.i, align 8, !tbaa !520, !alias.scope !1455
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1442, !noalias !1455
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !1353, !alias.scope !1455
  %i.aq = load <2 x i32>, ptr %i.al, align 4, !tbaa !8, !noalias !1455
  store <2 x i32> %i.aq, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !8, !alias.scope !1455
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !800
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = call i32 @ma_channel_converter_init_preallocated(ptr noundef nonnull %4, ptr noundef %i.at, ptr noundef nonnull %i.au) ; 2 uses
  %.not79 = icmp eq i32 %i.av, 0
  br i1 %.not79, label %bb.h, label %.critedge

bb.h:                                             ; preds = %ma_channel_converter_config_init_from_data_converter_config.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1458
  %.not80 = icmp eq i32 %i.ax, 1
  br i1 %.not80, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 298
  store i8 1, ptr %i.ay, align 2, !tbaa !1459
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %.not81 = icmp eq i32 %i.ah, 0
  br i1 %.not81, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  %i.az = load i32, ptr %i.k, align 8, !tbaa !1437, !noalias !1460
  %i.ba = load i32, ptr %i.n, align 4, !tbaa !1438, !noalias !1460
  %i.bb = load i32, ptr %i.z, align 8, !tbaa !1431, !noalias !1460
  %.not.i.i.i92 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i92, label %ma_data_converter_config_is_resampler_required.exit.i.i103, label %ma_data_converter_config_is_resampler_required.exit.thread.i.i93

ma_data_converter_config_is_resampler_required.exit.i.i103: ; preds = %bb.k
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !152, !noalias !1460
  %i.bd = load i32, ptr %i.t, align 4, !tbaa !158, !noalias !1460
  %.not14.i.i104 = icmp eq i32 %i.bc, %i.bd
  br i1 %.not14.i.i104, label %bb.l, label %ma_data_converter_config_is_resampler_required.exit.thread.i.i93

ma_data_converter_config_is_resampler_required.exit.thread.i.i93: ; preds = %ma_data_converter_config_is_resampler_required.exit.i.i103, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !161, !noalias !1460
  %.not10.i.i94 = icmp eq i32 %i.bf, 0
  br i1 %.not10.i.i94, label %bb.l, label %ma_resampler_config_init_from_data_converter_config.exit

bb.l:                                             ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i.i93, %ma_data_converter_config_is_resampler_required.exit.i.i103
  %i.bg = load i32, ptr %i.h, align 4, !tbaa !1436, !noalias !1460 ; 3 uses
  switch i32 %i.bg, label %bb.m [
    i32 2, label %ma_resampler_config_init_from_data_converter_config.exit
    i32 5, label %ma_resampler_config_init_from_data_converter_config.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.bh = load i32, ptr %0, align 8, !tbaa !1435, !noalias !1460
  %switch.selectcmp12.i.i101 = icmp eq i32 %i.bh, 2
  %switch.select13.i.i102 = select i1 %switch.selectcmp12.i.i101, i32 2, i32 5
  br label %ma_resampler_config_init_from_data_converter_config.exit

ma_resampler_config_init_from_data_converter_config.exit: ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i.i93, %bb.l, %bb.l, %bb.m
  %.0.i.i95 = phi i32 [ 5, %ma_data_converter_config_is_resampler_required.exit.thread.i.i93 ], [ %i.bg, %bb.l ], [ %switch.select13.i.i102, %bb.m ], [ %i.bg, %bb.l ] ; 2 uses
  %..i = call i32 @llvm.umin.i32(i32 %i.az, i32 %i.ba) ; 2 uses
  %i.bi = load i32, ptr %i.q, align 8, !tbaa !152, !noalias !1460 ; 2 uses
  %i.bj = load i32, ptr %i.t, align 4, !tbaa !158, !noalias !1460 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !161, !noalias !1460 ; 2 uses
  store i32 %.0.i.i95, ptr %5, align 8, !tbaa !8, !alias.scope !1460
  %.sroa.4.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %..i, ptr %.sroa.4.0..sroa_idx.i96, align 4, !tbaa !8, !alias.scope !1460
  %.sroa.5.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.bi, ptr %.sroa.5.0..sroa_idx.i97, align 8, !tbaa !8, !alias.scope !1460
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.bj, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !8, !alias.scope !1460
  %.sroa.7.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.bl, ptr %.sroa.7.0..sroa_idx.i98, align 8, !tbaa !8, !alias.scope !1460
  %.sroa.9.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %.sroa.9.0..sroa_idx.i99, align 4, !alias.scope !1460
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 0, ptr %.sroa.10.0..sroa_idx.i100, align 4, !alias.scope !1460
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !8, !noalias !1460
  store i32 %i.bn, ptr %.sroa.913.0..sroa_idx.i, align 8, !tbaa !8, !alias.scope !1460
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1446, !noalias !1460 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !1306, !alias.scope !1460
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1447, !noalias !1460 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !1307, !alias.scope !1460
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !790
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %i.bx, i8 0, i64 192, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 280
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !172
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i32 %.0.i.i95, ptr %i.bz, align 8, !tbaa !1463
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 132
  store i32 %..i, ptr %i.ca, align 4, !tbaa !1464
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i32 %i.bi, ptr %i.cb, align 8, !tbaa !1314
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i32 %i.bj, ptr %i.cc, align 4, !tbaa !1315
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  switch i32 %i.bl, label %.thread [
    i32 0, label %.thread.i
    i32 1, label %bb.n
  ]

.thread.i:                                        ; preds = %ma_resampler_config_init_from_data_converter_config.exit
  store ptr @g_ma_linear_resampler_vtable, ptr %i.cd, align 8, !tbaa !33
  store ptr %i.bx, ptr %i.ce, align 8, !tbaa !33
  br label %bb.o

bb.n:                                             ; preds = %ma_resampler_config_init_from_data_converter_config.exit
  store ptr %i.bp, ptr %i.cd, align 8, !tbaa !33
  store ptr %i.bs, ptr %i.ce, align 8, !tbaa !33
  %i.cf = icmp eq ptr %i.bp, null
  br i1 %i.cf, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i
  %i.cg = phi ptr [ %i.bx, %.thread.i ], [ %i.bs, %bb.n ]
  %i.ch = phi ptr [ @g_ma_linear_resampler_vtable, %.thread.i ], [ %i.bp, %bb.n ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1309 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %.thread, label %ma_resampler_init_preallocated.exit

ma_resampler_init_preallocated.exit:              ; preds = %bb.o
  %i.cl = call i32 %i.cj(ptr noundef %i.cg, ptr noundef nonnull %5, ptr noundef %i.bw, ptr noundef nonnull %i.bx) #55, !inline_history !1311 ; 2 uses
  %.not82 = icmp eq i32 %i.cl, 0
  br i1 %.not82, label %bb.p, label %.thread

.thread:                                          ; preds = %ma_resampler_init_preallocated.exit, %bb.n, %ma_resampler_config_init_from_data_converter_config.exit, %bb.o
  %.175.ph = phi i32 [ %i.cl, %ma_resampler_init_preallocated.exit ], [ -29, %bb.o ], [ -2, %ma_resampler_config_init_from_data_converter_config.exit ], [ -29, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.aq

bb.p:                                             ; preds = %ma_resampler_init_preallocated.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 299
  store i8 1, ptr %i.cm, align 1, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 298
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !1459 ; 2 uses
  %.not113 = icmp eq i8 %i.co, 0                  ; 2 uses
  br i1 %.not113, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 299
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !164
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cs = load i32, ptr %2, align 8, !tbaa !1448
  %i.ct = load i32, ptr %i.j, align 4, !tbaa !1449
  %i.cu = icmp eq i32 %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 296
  store i8 0, ptr %i.cv, align 8, !tbaa !1465
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 297 ; 2 uses
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.cw, align 1, !tbaa !1466
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  store i8 1, ptr %i.cw, align 1, !tbaa !1466
  br label %bb.z

bb.v:                                             ; preds = %bb.r, %bb.q
  %i.cx = load i32, ptr %2, align 8, !tbaa !1448
  %.not83 = icmp eq i32 %i.cx, %.0.i
  br i1 %.not83, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 296
  store i8 1, ptr %i.cy, align 8, !tbaa !1465
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cz = load i32, ptr %i.j, align 4, !tbaa !1449
  %.not84 = icmp eq i32 %i.cz, %.0.i
  br i1 %.not84, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 297
  store i8 1, ptr %i.da, align 1, !tbaa !1466
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.t, %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !1465
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 297
  %i.df = load i8, ptr %i.de, align 1, !tbaa !1466
  %i.dg = or i8 %i.df, %i.co
  %brmerge.not = icmp eq i8 %i.dg, 0
  br i1 %brmerge.not, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 299
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !164
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 300
  store i8 1, ptr %i.dk, align 4, !tbaa !1467
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac, %bb.ab, %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !1467
  %.not85 = icmp eq i8 %i.dm, 0
  br i1 %.not85, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 0, ptr %i.dn, align 4, !tbaa !1468
  br label %bb.aq

bb.af:                                            ; preds = %bb.ad
  %i.do = load i32, ptr %i.m, align 8, !tbaa !1450
  %i.dp = load i32, ptr %i.p, align 4, !tbaa !1451
  %i.dq = icmp ult i32 %i.do, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 299
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !164
  %.not89 = icmp eq i8 %i.ds, 0                   ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 6 uses
  br i1 %i.dq, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  br i1 %.not89, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 4, ptr %i.dt, align 4, !tbaa !1468
  br label %bb.aq

bb.ai:                                            ; preds = %bb.ag
  store i32 2, ptr %i.dt, align 4, !tbaa !1468
  br label %bb.aq

bb.aj:                                            ; preds = %bb.af
  br i1 %.not113, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not89, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 5, ptr %i.dt, align 4, !tbaa !1468
  br label %bb.aq

bb.am:                                            ; preds = %bb.ak
  store i32 2, ptr %i.dt, align 4, !tbaa !1468
  br label %bb.aq

bb.an:                                            ; preds = %bb.aj
  br i1 %.not89, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 3, ptr %i.dt, align 4, !tbaa !1468
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  store i32 1, ptr %i.dt, align 4, !tbaa !1468
  br label %bb.aq

.critedge:                                        ; preds = %ma_channel_converter_config_init_from_data_converter_config.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %bb.aq

bb.aq:                                            ; preds = %.thread, %bb.ae, %bb.am, %bb.al, %bb.ap, %bb.ao, %bb.ah, %bb.ai, %.critedge, %ma_zero_memory_default.exit91, %bb.a
  %.2 = phi i32 [ 0, %bb.ae ], [ -2, %bb.a ], [ %i.av, %.critedge ], [ %.175.ph, %.thread ], [ %i.b, %ma_zero_memory_default.exit91 ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.al ], [ 0, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i32 @ma_data_converter_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.ma_data_converter_heap_layout, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.a = call fastcc i32 @ma_data_converter_get_heap_layout(ptr noundef readonly %0, ptr noundef %3) ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
end_hunk_10
begin_hunk_11_@ma_rb_available_read:bb.a
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4 ; 2 uses
  %i.d = and i32 %i.c, 2147483647                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load atomic i32, ptr %i.e seq_cst, align 8 ; 2 uses
  %i.g = and i32 %i.f, 2147483647                 ; 2 uses
  %i.h = xor i32 %i.f, %i.c
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = sub nsw i32 %i.g, %i.d
  br label %ma_rb_pointer_distance.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !346
  %i.m = sub nsw i32 %i.g, %i.d
  %i.n = add i32 %i.m, %i.l
  br label %ma_rb_pointer_distance.exit

ma_rb_pointer_distance.exit:                      ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.n, %bb.d ], [ %i.j, %bb.c ]
  %. = tail call i32 @llvm.smax.i32(i32 %.0.i, i32 0)
  br label %bb.e

bb.e:                                             ; preds = %ma_rb_pointer_distance.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %., %ma_rb_pointer_distance.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define i32 @ma_rb_available_write(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !346
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load atomic i32, ptr %i.d seq_cst, align 4 ; 2 uses
  %i.f = and i32 %i.e, 2147483647                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load atomic i32, ptr %i.g seq_cst, align 8 ; 2 uses
  %i.i = and i32 %i.h, 2147483647                 ; 2 uses
  %i.j = xor i32 %i.h, %i.e
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nsw i32 %i.i, %i.f
  br label %ma_rb_pointer_distance.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.b, align 8, !tbaa !346
  %i.n = sub nsw i32 %i.i, %i.f
  %i.o = add i32 %i.n, %i.m
  br label %ma_rb_pointer_distance.exit

ma_rb_pointer_distance.exit:                      ; preds = %bb.c, %bb.d
  %.0.i4 = phi i32 [ %i.o, %bb.d ], [ %i.l, %bb.c ]
  %i.p = sub i32 %i.c, %.0.i4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %ma_rb_pointer_distance.exit
  %.0 = phi i32 [ %i.p, %ma_rb_pointer_distance.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 0, 4294967296) i64 @ma_rb_get_subbuffer_size(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !346
  %i.d = zext i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 0, 4294967296) i64 @ma_rb_get_subbuffer_stride(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !348  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !346
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0.shrunk = phi i32 [ 0, %bb.a ], [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  %.0 = zext i32 %.0.shrunk to i64
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ma_rb_get_subbuffer_offset(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !348  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %ma_rb_get_subbuffer_stride.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !346
  br label %ma_rb_get_subbuffer_stride.exit

ma_rb_get_subbuffer_stride.exit:                  ; preds = %bb.b, %bb.c
  %.0.shrunk.i = phi i32 [ %i.c, %bb.b ], [ %i.f, %bb.c ]
  %.0.i = zext i32 %.0.shrunk.i to i64
  %i.g = mul i64 %1, %.0.i
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %ma_rb_get_subbuffer_stride.exit
  %.0 = phi i64 [ %i.g, %ma_rb_get_subbuffer_stride.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ma_rb_get_subbuffer_ptr(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readnone captures(ret: address, provenance) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !348  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %ma_rb_get_subbuffer_offset.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !346
  br label %ma_rb_get_subbuffer_offset.exit

ma_rb_get_subbuffer_offset.exit:                  ; preds = %bb.b, %bb.c
  %.0.shrunk.i.i = phi i32 [ %i.c, %bb.b ], [ %i.f, %bb.c ]
  %.0.i.i = zext i32 %.0.shrunk.i.i to i64
  %i.g = mul i64 %1, %.0.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %ma_rb_get_subbuffer_offset.exit
  %.0 = phi ptr [ %i.h, %ma_rb_get_subbuffer_offset.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @ma_pcm_rb_init_ex(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr noundef %7) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %7, null
  br i1 %i.a, label %bb.d, label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(152) %7, i8 0, i64 152, i1 false)
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8
  %i.e = mul i32 %i.d, %1                         ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit
  %i.g = mul i32 %i.e, %2
  %i.h = zext i32 %i.g to i64
  %i.i = zext i32 %3 to i64
  %i.j = mul i32 %i.e, %4
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.m = tail call i32 @ma_rb_init_ex(i64 noundef %i.h, i64 noundef %i.i, i64 noundef %i.k, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %i.l) ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 136
  store i32 %0, ptr %i.n, align 8, !tbaa !350
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 140
  store i32 %1, ptr %i.o, align 4, !tbaa !351
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i32 0, ptr %i.p, align 8, !tbaa !352
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.q, i8 0, i64 64, i1 false)
  store ptr @ma_gRBDataSourceVTable, ptr %7, align 8, !tbaa !353
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 -1, ptr %i.r, align 8, !tbaa !354
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 -1, ptr %i.s, align 8, !tbaa !355
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %7, ptr %i.t, align 8, !tbaa !356
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %ma_zero_memory_default.exit, %bb.a
  %.1 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit ], [ %i.m, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @ma_data_source_config_init() local_unnamed_addr #1 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_data_source_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %1, i8 0, i64 72, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit
  %i.c = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %1, align 8, !tbaa !353
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 -1, ptr %i.e, align 8, !tbaa !354
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 -1, ptr %i.f, align 8, !tbaa !355
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %1, ptr %i.g, align 8, !tbaa !356
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %ma_zero_memory_default.exit, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @ma_pcm_rb_init(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %5, null
  br i1 %i.a, label %ma_pcm_rb_init_ex.exit, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(152) %5, i8 0, i64 152, i1 false)
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8
  %i.e = mul i32 %i.d, %1                         ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %ma_pcm_rb_init_ex.exit, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.g = mul i32 %i.e, %2
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.j = tail call i32 @ma_rb_init_ex(i64 noundef %i.h, i64 noundef 1, i64 noundef 0, ptr noundef %3, ptr noundef readonly %4, ptr noundef nonnull %i.i) ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %ma_pcm_rb_init_ex.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i32 %0, ptr %i.k, align 8, !tbaa !350
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 140
  store i32 %1, ptr %i.l, align 4, !tbaa !351
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 144
  store i32 0, ptr %i.m, align 8, !tbaa !352
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.n, i8 0, i64 64, i1 false)
  store ptr @ma_gRBDataSourceVTable, ptr %5, align 8, !tbaa !353
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 -1, ptr %i.o, align 8, !tbaa !354
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 -1, ptr %i.p, align 8, !tbaa !355
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %5, ptr %i.q, align 8, !tbaa !356
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %ma_pcm_rb_init_ex.exit

ma_pcm_rb_init_ex.exit:                           ; preds = %bb.a, %ma_zero_memory_default.exit.i, %bb.b, %bb.c
  %.1.i = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit.i ], [ %i.j, %bb.b ]
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define void @ma_pcm_rb_uninit(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_rb_uninit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.c = load i8, ptr %i.b, align 4, !tbaa !308
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %ma_rb_uninit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !309
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ma_rb_uninit.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i.i, label %ma_rb_uninit.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !25
  tail call void %i.k(ptr noundef nonnull %i.h, ptr noundef %i.l) #55, !inline_history !1493
  br label %ma_rb_uninit.exit

ma_rb_uninit.exit:                                ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @ma_data_source_uninit(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @ma_pcm_rb_reset(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.c = atomicrmw xchg ptr %i.b, i32 0 seq_cst, align 4 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = atomicrmw xchg ptr %i.d, i32 0 seq_cst, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define range(i32 -2, 1) i32 @ma_pcm_rb_acquire_read(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %ma_rb_acquire_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !350
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !351
  %i.h = zext i32 %i.e to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = mul i32 %i.g, %i.c
  %i.l = mul i32 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = icmp eq ptr %2, null
  br i1 %i.n, label %ma_rb_acquire_read.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load atomic i32, ptr %i.o seq_cst, align 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.r = load atomic i32, ptr %i.q seq_cst, align 4 ; 2 uses
  %i.s = and i32 %i.r, 2147483647
  %i.t = xor i32 %i.r, %i.p
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = and i32 %i.p, 2147483647
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load i32, ptr %i.w, align 8, !tbaa !346
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.pn.i = phi i32 [ %i.v, %bb.d ], [ %i.x, %bb.e ]
  %.022.in.i = sub i32 %.pn.i, %i.s
  %i.y = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %.022.in.i)
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !309
  %i.aa = load atomic i32, ptr %i.q seq_cst, align 4
  %i.ab = and i32 %i.aa, 2147483647
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  store ptr %i.ad, ptr %2, align 8, !tbaa !33
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !350
  %i.af = load i32, ptr %i.f, align 4, !tbaa !351
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8
  %i.aj = mul i32 %i.ai, %i.af
  %i.ak = udiv i32 %i.y, %i.aj
  store i32 %i.ak, ptr %1, align 4, !tbaa !8
  br label %ma_rb_acquire_read.exit

ma_rb_acquire_read.exit:                          ; preds = %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define range(i32 -2, 1) i32 @ma_pcm_rb_commit_read(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_rb_commit_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !350
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.e = load i32, ptr %i.d, align 4, !tbaa !351
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  %i.i = mul i32 %i.e, %1
  %i.j = mul i32 %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.l = load atomic i32, ptr %i.k seq_cst, align 4 ; 2 uses
  %i.m = and i32 %i.l, 2147483647
  %i.n = add i32 %i.m, %i.j                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load i32, ptr %i.o, align 8, !tbaa !346  ; 2 uses
  %i.q = icmp ugt i32 %i.n, %i.p
  br i1 %i.q, label %ma_rb_commit_read.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = and i32 %i.l, -2147483648                ; 2 uses
  %i.s = icmp eq i32 %i.n, %i.p
  %i.t = xor i32 %i.r, -2147483648
  %i.u = or i32 %i.n, %i.r
  %i.v = select i1 %i.s, i32 %i.t, i32 %i.u
  %i.w = atomicrmw xchg ptr %i.k, i32 %i.v seq_cst, align 4 ; 0 uses
  br label %ma_rb_commit_read.exit

ma_rb_commit_read.exit:                           ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %bb.c ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define range(i32 -2, 1) i32 @ma_pcm_rb_acquire_write(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_rb_acquire_write.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !350
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !351
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !8
  %i.j = mul i32 %i.f, %i.b
  %i.k = mul i32 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = icmp eq ptr %2, null
end_hunk_11
begin_hunk_12_@ma_dr_wav_seek_to_pcm_frame:bb.a
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !1636
  %i.ay = zext i16 %i.ax to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.i92 = phi i32 [ %i.av, %bb.s ], [ %i.ay, %bb.t ] ; 5 uses
  %i.az = and i16 %i.l, -2
  %switch.i = icmp eq i16 %i.az, 6
  br i1 %switch.i, label %bb.v, label %ma_dr_wav_get_bytes_per_pcm_frame.exit

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !1635
  %i.bc = zext i16 %i.bb to i32
  %.not.i93 = icmp ne i32 %.0.i92, %i.bc
  %i.bd = icmp eq i32 %.0.i92, 0
  %or.cond = or i1 %i.bd, %.not.i93
  br i1 %or.cond, label %.critedge, label %bb.w

ma_dr_wav_get_bytes_per_pcm_frame.exit:           ; preds = %bb.u
  %.old = icmp eq i32 %.0.i92, 0
  br i1 %.old, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v, %ma_dr_wav_get_bytes_per_pcm_frame.exit
  %i.be = zext nneg i32 %.0.i92 to i64            ; 2 uses
  %i.bf = mul i64 %i.i, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1702
  %i.bi = sub i64 %i.bf, %i.bh                    ; 2 uses
  %i.bj = mul i64 %spec.select, %i.be             ; 3 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bl = sub nuw i64 %i.bj, %i.bi
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bm = tail call fastcc i32 @ma_dr_wav_seek_to_first_pcm_frame(ptr noundef %0)
  %.not85 = icmp eq i32 %i.bm, 0
  br i1 %.not85, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0 = phi i64 [ %i.bl, %bb.x ], [ %i.bj, %bb.y ] ; 2 uses
  %.not86101 = icmp eq i64 %.0, 0
  br i1 %.not86101, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ab
  %.1102 = phi i64 [ %.0, %.lr.ph ], [ %i.ca, %bb.ab ] ; 2 uses
  %i.bp = tail call i64 @llvm.umin.i64(i64 %.1102, i64 2147483647) ; 3 uses
  %i.bq = trunc nuw nsw i64 %i.bp to i32          ; 2 uses
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !1610
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !1612
  %i.bt = tail call i32 %i.br(ptr noundef %i.bs, i32 noundef %i.bq, i32 noundef 1) #55
  %.not87.not = icmp eq i32 %i.bt, 0
  br i1 %.not87.not, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bu = udiv i32 %i.bq, %.0.i92
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = load i64, ptr %i.bo, align 8, !tbaa !1698
  %i.bx = add i64 %i.bw, %i.bv
  store i64 %i.bx, ptr %i.bo, align 8, !tbaa !1698
  %i.by = load i64, ptr %i.bg, align 8, !tbaa !1702
  %i.bz = sub i64 %i.by, %i.bp
  store i64 %i.bz, ptr %i.bg, align 8, !tbaa !1702
  %i.ca = sub i64 %.1102, %i.bp                   ; 2 uses
  %.not86 = icmp eq i64 %i.ca, 0
  br i1 %.not86, label %.critedge, label %bb.aa, !llvm.loop !1704

.critedge.sink.split:                             ; preds = %bb.q, %bb.m
  %.6.ph = phi i32 [ 1, %bb.m ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.critedge

.critedge:                                        ; preds = %bb.ab, %bb.aa, %.critedge.sink.split, %bb.z, %bb.v, %bb.y, %ma_dr_wav_get_bytes_per_pcm_frame.exit, %bb.g, %bb.k, %bb.d, %bb.c, %bb.a, %bb.b
  %.6 = phi i32 [ 0, %bb.g ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.k ], [ 1, %bb.z ], [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.y ], [ %.6.ph, %.critedge.sink.split ], [ 0, %ma_dr_wav_get_bytes_per_pcm_frame.exit ], [ 0, %bb.v ], [ 1, %bb.ab ], [ 0, %bb.aa ]
  ret i32 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_wav_get_cursor_in_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !69
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %ma_dr_wav_get_cursor_in_pcm_frames.exit

ma_dr_wav_get_cursor_in_pcm_frames.exit:          ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1698
  store i64 %i.d, ptr %1, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %ma_dr_wav_get_cursor_in_pcm_frames.exit
  %.1 = phi i32 [ 0, %ma_dr_wav_get_cursor_in_pcm_frames.exit ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_dr_wav_get_cursor_in_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !69
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1698
  store i64 %i.d, ptr %1, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_wav_get_length_in_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !69
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %ma_dr_wav_get_length_in_pcm_frames.exit

ma_dr_wav_get_length_in_pcm_frames.exit:          ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1697
  store i64 %i.d, ptr %1, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %ma_dr_wav_get_length_in_pcm_frames.exit
  %.1 = phi i32 [ 0, %ma_dr_wav_get_length_in_pcm_frames.exit ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_dr_wav_get_length_in_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !69
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1697
  store i64 %i.d, ptr %1, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -10, 1) i32 @ma_flac_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %6, null
  br i1 %i.a, label %ma_flac_init_internal.exit, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %6, i8 0, i64 120, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  store i32 5, ptr %i.b, align 8, !tbaa !1705
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.c = load i32, ptr %4, align 4, !tbaa !81     ; 2 uses
  switch i32 %i.c, label %bb.d [
    i32 5, label %bb.c
    i32 2, label %bb.c
    i32 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  store i32 %i.c, ptr %i.b, align 8, !tbaa !1705
  br label %bb.d

bb.d:                                             ; preds = %ma_zero_memory_default.exit.i, %bb.b, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  store ptr @g_ma_flac_ds_vtable, ptr %6, align 8, !tbaa !353
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 -1, ptr %i.e, align 8, !tbaa !354
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 -1, ptr %i.f, align 8, !tbaa !355
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %6, ptr %i.g, align 8, !tbaa !356
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = icmp eq ptr %0, null
  %i.j = icmp eq ptr %1, null
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %ma_flac_init_internal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %0, ptr %i.k, align 8, !tbaa !1707
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %1, ptr %i.l, align 8, !tbaa !1708
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %2, ptr %i.m, align 8, !tbaa !1709
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 96
  store ptr %3, ptr %i.n, align 8, !tbaa !1710
  %i.o = tail call fastcc ptr @ma_dr_flac_open_with_metadata_private(ptr noundef nonnull @ma_flac_dr_callback__read, ptr noundef nonnull @ma_flac_dr_callback__seek, ptr noundef nonnull @ma_flac_dr_callback__tell, ptr noundef null, i32 noundef 2, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef readonly %5) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 112
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1711
  %i.q = icmp eq ptr %i.o, null
  %. = select i1 %i.q, i32 -10, i32 0
  br label %ma_flac_init_internal.exit

ma_flac_init_internal.exit:                       ; preds = %bb.a, %bb.e, %bb.d
  %.0 = phi i32 [ -2, %bb.d ], [ %., %bb.e ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @ma_dr_flac_open(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc ptr @ma_dr_flac_open_with_metadata_private(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 2, ptr noundef %3, ptr noundef %3, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal i64 @ma_flac_dr_callback__read(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1707
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1710
  %i.f = call i32 %i.c(ptr noundef %i.e, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a) #55 ; 0 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ma_flac_dr_callback__seek(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #8 {
bb.a:
  %switch.selectcmp = icmp eq i32 %2, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  %switch.selectcmp10 = icmp eq i32 %2, 1
  %switch.select11 = select i1 %switch.selectcmp10, i32 1, i32 %switch.select
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1708
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1710
  %i.e = sext i32 %1 to i64
  %i.f = tail call i32 %i.b(ptr noundef %i.d, i64 noundef %i.e, i32 noundef %switch.select11) #55
  %.not = icmp eq i32 %i.f, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ma_flac_dr_callback__tell(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1709 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1710
  %i.f = tail call i32 %i.b(ptr noundef %i.e, ptr noundef %1) #55
  %.not = icmp eq i32 %i.f, 0
  %. = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -10, 1) i32 @ma_flac_init_file(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %ma_flac_init_internal.exit, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %3, i8 0, i64 120, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  store i32 5, ptr %i.b, align 8, !tbaa !1705
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.c = load i32, ptr %1, align 4, !tbaa !81     ; 2 uses
  switch i32 %i.c, label %bb.d [
    i32 5, label %bb.c
    i32 2, label %bb.c
    i32 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  store i32 %i.c, ptr %i.b, align 8, !tbaa !1705
  br label %bb.d

bb.d:                                             ; preds = %ma_zero_memory_default.exit.i, %bb.b, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  store ptr @g_ma_flac_ds_vtable, ptr %3, align 8, !tbaa !353
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -1, ptr %i.e, align 8, !tbaa !354
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 -1, ptr %i.f, align 8, !tbaa !355
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %3, ptr %i.g, align 8, !tbaa !356
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = icmp eq ptr %0, null
  br i1 %i.i, label %ma_dr_flac_open_file.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noalias ptr @fopen(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.176) ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %ma_dr_flac_open_file.exit, label %ma_fopen.exit.i

ma_fopen.exit.i:                                  ; preds = %bb.e
  %i.l = tail call fastcc ptr @ma_dr_flac_open_with_metadata_private(ptr noundef nonnull @ma_dr_flac__on_read_stdio, ptr noundef nonnull @ma_dr_flac__on_seek_stdio, ptr noundef nonnull @ma_dr_flac__on_tell_stdio, ptr noundef null, i32 noundef 2, ptr noundef nonnull %i.j, ptr noundef nonnull %i.j, ptr noundef readonly %2) ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %ma_dr_flac_open_file.exit

bb.f:                                             ; preds = %ma_fopen.exit.i
  %i.n = tail call i32 @fclose(ptr noundef nonnull %i.j) ; 0 uses
  br label %ma_dr_flac_open_file.exit

ma_dr_flac_open_file.exit:                        ; preds = %bb.d, %bb.e, %ma_fopen.exit.i, %bb.f
  %.0.i9 = phi ptr [ %i.l, %ma_fopen.exit.i ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 112
  store ptr %.0.i9, ptr %i.o, align 8, !tbaa !1711
  %i.p = icmp eq ptr %.0.i9, null
  %. = select i1 %i.p, i32 -10, i32 0
  br label %ma_flac_init_internal.exit

ma_flac_init_internal.exit:                       ; preds = %bb.a, %ma_dr_flac_open_file.exit
  %.0 = phi i32 [ %., %ma_dr_flac_open_file.exit ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @ma_dr_flac_open_file(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_fopen.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.176) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ma_fopen.exit.thread, label %ma_fopen.exit

ma_fopen.exit:                                    ; preds = %bb.b
  %i.d = tail call fastcc ptr @ma_dr_flac_open_with_metadata_private(ptr noundef nonnull @ma_dr_flac__on_read_stdio, ptr noundef nonnull @ma_dr_flac__on_seek_stdio, ptr noundef nonnull @ma_dr_flac__on_tell_stdio, ptr noundef null, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef readonly %1) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %ma_fopen.exit.thread

bb.c:                                             ; preds = %ma_fopen.exit
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %ma_fopen.exit.thread

ma_fopen.exit.thread:                             ; preds = %bb.b, %bb.a, %ma_fopen.exit, %bb.c
  %.0 = phi ptr [ %i.d, %ma_fopen.exit ], [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -10, 1) i32 @ma_flac_init_file_w(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %ma_flac_init_internal.exit, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %3, i8 0, i64 120, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  store i32 5, ptr %i.c, align 8, !tbaa !1705
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.d = load i32, ptr %1, align 4, !tbaa !81     ; 2 uses
  switch i32 %i.d, label %bb.d [
    i32 5, label %bb.c
    i32 2, label %bb.c
    i32 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  store i32 %i.d, ptr %i.c, align 8, !tbaa !1705
  br label %bb.d

bb.d:                                             ; preds = %ma_zero_memory_default.exit.i, %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  store ptr @g_ma_flac_ds_vtable, ptr %3, align 8, !tbaa !353
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -1, ptr %i.f, align 8, !tbaa !354
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 -1, ptr %i.g, align 8, !tbaa !355
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %3, ptr %i.h, align 8, !tbaa !356
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.j = call i32 @ma_wfopen(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull @.str.177, ptr noundef readonly %2)
  %.not.i9 = icmp eq i32 %i.j, 0
  br i1 %.not.i9, label %bb.e, label %ma_dr_flac_open_file_w.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.l = call fastcc ptr @ma_dr_flac_open_with_metadata_private(ptr noundef nonnull @ma_dr_flac__on_read_stdio, ptr noundef nonnull @ma_dr_flac__on_seek_stdio, ptr noundef nonnull @ma_dr_flac__on_tell_stdio, ptr noundef null, i32 noundef 2, ptr noundef %i.k, ptr noundef %i.k, ptr noundef readonly %2) ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %ma_dr_flac_open_file_w.exit

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 @fclose(ptr noundef %i.k)       ; 0 uses
  br label %ma_dr_flac_open_file_w.exit

ma_dr_flac_open_file_w.exit:                      ; preds = %bb.d, %bb.e, %bb.f
  %.0.i10 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 112
  store ptr %.0.i10, ptr %i.o, align 8, !tbaa !1711
  %i.p = icmp eq ptr %.0.i10, null
  %. = select i1 %i.p, i32 -10, i32 0
  br label %ma_flac_init_internal.exit

ma_flac_init_internal.exit:                       ; preds = %bb.a, %ma_dr_flac_open_file_w.exit
  %.0 = phi i32 [ %., %ma_dr_flac_open_file_w.exit ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @ma_dr_flac_open_file_w(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.b = call i32 @ma_wfopen(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull @.str.177, ptr noundef %1)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.d = call fastcc ptr @ma_dr_flac_open_with_metadata_private(ptr noundef nonnull @ma_dr_flac__on_read_stdio, ptr noundef nonnull @ma_dr_flac__on_seek_stdio, ptr noundef nonnull @ma_dr_flac__on_tell_stdio, ptr noundef null, i32 noundef 2, ptr noundef %i.c, ptr noundef %i.c, ptr noundef readonly %1) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @fclose(ptr noundef %i.c)       ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -10, 1) i32 @ma_flac_init_memory(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.ma_dr_flac__memory_stream, align 8 ; 8 uses
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %ma_flac_init_internal.exit, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %4, i8 0, i64 120, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  store i32 5, ptr %i.b, align 8, !tbaa !1705
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.c = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  switch i32 %i.c, label %bb.d [
    i32 5, label %bb.c
    i32 2, label %bb.c
    i32 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  store i32 %i.c, ptr %i.b, align 8, !tbaa !1705
  br label %bb.d

bb.d:                                             ; preds = %ma_zero_memory_default.exit.i, %bb.b, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  store ptr @g_ma_flac_ds_vtable, ptr %4, align 8, !tbaa !353
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -1, ptr %i.e, align 8, !tbaa !354
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -1, ptr %i.f, align 8, !tbaa !355
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %4, ptr %i.g, align 8, !tbaa !356
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  store ptr %0, ptr %5, align 8, !tbaa !1712
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %i.i, align 8, !tbaa !1713
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !1714
  %i.k = call fastcc ptr @ma_dr_flac_open_with_metadata_private(ptr noundef nonnull @ma_dr_flac__on_read_memory, ptr noundef nonnull @ma_dr_flac__on_seek_memory, ptr noundef nonnull @ma_dr_flac__on_tell_memory, ptr noundef null, i32 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef readonly %3) ; 6 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ma_dr_flac_open_memory.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 248 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1715
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1716
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1721
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.m, ptr %i.s, align 8, !tbaa !1722
  br label %ma_dr_flac_open_memory.exit

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 328
  store ptr %i.m, ptr %i.t, align 8, !tbaa !1725
  br label %ma_dr_flac_open_memory.exit

ma_dr_flac_open_memory.exit:                      ; preds = %bb.d, %bb.f, %bb.g
  %. = phi i32 [ -10, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %i.k, ptr %i.u, align 8, !tbaa !1711
  br label %ma_flac_init_internal.exit

ma_flac_init_internal.exit:                       ; preds = %bb.a, %ma_dr_flac_open_memory.exit
  %.0 = phi i32 [ %., %ma_dr_flac_open_memory.exit ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @ma_dr_flac_open_memory(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.ma_dr_flac__memory_stream, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  store ptr %0, ptr %3, align 8, !tbaa !1712
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !1713
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !1714
  %i.c = call fastcc ptr @ma_dr_flac_open_with_metadata_private(ptr noundef nonnull @ma_dr_flac__on_read_memory, ptr noundef nonnull @ma_dr_flac__on_seek_memory, ptr noundef nonnull @ma_dr_flac__on_tell_memory, ptr noundef null, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef readonly %2) ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !1715
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1716
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1721
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.e, ptr %i.k, align 8, !tbaa !1722
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  store ptr %i.e, ptr %i.l, align 8, !tbaa !1725
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define void @ma_flac_uninit(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_dr_flac_close.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1711 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %ma_dr_flac_close.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1726
  %i.g = icmp eq ptr %i.f, @ma_dr_flac__on_read_stdio
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1725
  %i.j = tail call i32 @fclose(ptr noundef %i.i)  ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1716
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1721 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1727
  %i.q = icmp eq ptr %i.p, @ma_dr_flac__on_read_stdio
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1722
  %i.t = tail call i32 @fclose(ptr noundef %i.s)  ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31   ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %ma_dr_flac_close.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25
  tail call void %i.v(ptr noundef nonnull %i.c, ptr noundef %i.x) #55, !inline_history !1728
  br label %ma_dr_flac_close.exit

ma_dr_flac_close.exit:                            ; preds = %bb.i, %bb.h, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @ma_dr_flac_close(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_dr_flac__free_from_callbacks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1726
  %i.d = icmp eq ptr %i.c, @ma_dr_flac__on_read_stdio
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1725
  %i.g = tail call i32 @fclose(ptr noundef %i.f)  ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1716
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1721 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1727
  %i.n = icmp eq ptr %i.m, @ma_dr_flac__on_read_stdio
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1722
  %i.q = tail call i32 @fclose(ptr noundef %i.p)  ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %ma_dr_flac__free_from_callbacks.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  tail call void %i.s(ptr noundef nonnull %0, ptr noundef %i.u) #55, !inline_history !1729
  br label %ma_dr_flac__free_from_callbacks.exit

ma_dr_flac__free_from_callbacks.exit:             ; preds = %bb.h, %bb.g, %bb.a
  ret void
end_hunk_12
begin_hunk_13_@ma_dr_flac_seek_to_pcm_frame:bb.a
  %i.fx = trunc nuw i64 %.01627.i.i to i32
  %i.fy = sub i32 %i.fp, %i.fx
  store i32 %i.fy, ptr %i.f, align 8, !tbaa !1732
  br label %ma_dr_flac__seek_forward_by_pcm_frames.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.fz = add i64 %.028.i.i, %i.fu
  %i.ga = sub nuw i64 %.01627.i.i, %i.fu
  store i32 0, ptr %i.f, align 8, !tbaa !1732
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i.i

ma_dr_flac__read_and_decode_next_flac_frame.exit.i.i: ; preds = %bb.am, %bb.ao
  %.117.i.i = phi i64 [ %i.ga, %bb.ao ], [ %.01627.i.i, %bb.am ] ; 2 uses
  %.1.i92.i = phi i64 [ %i.fz, %bb.ao ], [ %.028.i.i, %bb.am ] ; 2 uses
  %.not.i93.i = icmp eq i64 %.117.i.i, 0
  br i1 %.not.i93.i, label %ma_dr_flac__seek_forward_by_pcm_frames.exit.i, label %bb.al, !llvm.loop !1734

ma_dr_flac__seek_forward_by_pcm_frames.exit.i:    ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i.i, %bb.am, %.preheader.i94.i, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i.i
  %.025.i.i = phi i64 [ %.028.i.i, %bb.am ], [ %i.fw, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i.i ], [ %.028.i.i, %.preheader.i94.i ], [ %.1.i92.i, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i.i ] ; 2 uses
  %i.gb = load i64, ptr %i.b, align 8, !tbaa !1735
  %i.gc = add i64 %i.gb, %.025.i.i
  store i64 %i.gc, ptr %i.b, align 8, !tbaa !1735
  %.not274 = icmp eq i64 %.025.i.i, %i.fo
  br i1 %.not274, label %.critedge85.thread99, label %.critedge85.thread

bb.ap:                                            ; preds = %bb.ai
  %i.gd = tail call fastcc range(i32 -100, 1) i32 @ma_dr_flac__seek_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.gd, label %.critedge85.thread [
    i32 0, label %bb.ar
    i32 -100, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.aj
  %.259.i = phi i64 [ %.057133.i, %bb.aq ], [ %.057133.i, %bb.aj ], [ %i.fh, %bb.ap ]
  %i.ge = load i8, ptr %i.s, align 1, !tbaa !1733
  %i.gf = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.j, i8 noundef zeroext %i.ge, ptr noundef %i.t)
  %.not77.i = icmp eq i32 %i.gf, 0
  br i1 %.not77.i, label %.critedge85.thread, label %.lr.ph134.i

bb.as:                                            ; preds = %.critedge
  %i.gg = load i8, ptr %i.h, align 8              ; 2 uses
  %i.gh = and i8 %i.gg, 1
  %.not73 = icmp eq i8 %i.gh, 0
  br i1 %.not73, label %bb.at, label %.critedge83

bb.at:                                            ; preds = %bb.as
  %i.gi = tail call fastcc i32 @ma_dr_flac__seek_to_pcm_frame__seek_table(ptr noundef %0, i64 noundef %spec.select)
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %..critedge83_crit_edge, label %.critedge85.thread99

..critedge83_crit_edge:                           ; preds = %bb.at
  %.pre = load i8, ptr %i.h, align 8
  br label %.critedge83

.critedge83:                                      ; preds = %..critedge83_crit_edge, %bb.as
  %i.gk = phi i8 [ %.pre, %..critedge83_crit_edge ], [ %i.gg, %bb.as ] ; 3 uses
  %i.gl = and i8 %i.gk, 2
  %.not75 = icmp eq i8 %i.gl, 0
  br i1 %.not75, label %bb.au, label %.critedge87

bb.au:                                            ; preds = %.critedge83
  %i.gm = load i64, ptr %i.d, align 8, !tbaa !1923
  %.not76 = icmp eq i64 %i.gm, 0
  br i1 %.not76, label %.critedge87, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gn = tail call fastcc i32 @ma_dr_flac__seek_to_pcm_frame__binary_search(ptr noundef %0, i64 noundef %spec.select)
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %..critedge87_crit_edge, label %.critedge85.thread99

..critedge87_crit_edge:                           ; preds = %bb.av
  %.pre219 = load i8, ptr %i.h, align 8
  br label %.critedge87

.critedge87:                                      ; preds = %..critedge87_crit_edge, %bb.au, %.critedge83
  %i.gp = phi i8 [ %.pre219, %..critedge87_crit_edge ], [ %i.gk, %bb.au ], [ %i.gk, %.critedge83 ]
  %i.gq = and i8 %i.gp, 4
  %.not78 = icmp eq i8 %i.gq, 0
  br i1 %.not78, label %.critedge85, label %.critedge85.thread

.critedge85:                                      ; preds = %.critedge87
  %i.gr = tail call fastcc i32 @ma_dr_flac__seek_to_pcm_frame__brute_force(ptr noundef %0, i64 noundef %spec.select)
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %.critedge85.thread, label %.critedge85.thread99

.critedge85.thread99:                             ; preds = %bb.ak, %bb.av, %bb.at, %.critedge85, %ma_dr_flac__seek_forward_by_pcm_frames.exit.i, %bb.ah
  store i64 %spec.select, ptr %i.b, align 8, !tbaa !1735
  br i1 %ret.known.tr162, label %bb.aw, label %.loopexit.thread

.critedge85.thread.sink.split:                    ; preds = %bb.o, %bb.s
  %.sink = phi i64 [ %i.cy, %bb.s ], [ %i.bh, %bb.o ]
  store i64 %.sink, ptr %i.bg, align 8, !tbaa !1924
  br label %.critedge85.thread

.critedge85.thread:                               ; preds = %.lr.ph315, %.lr.ph35.i85.i, %bb.aj, %bb.ap, %bb.ar, %.lr.ph35.i.i, %.critedge85.thread.sink.split, %ma_dr_flac__seek_forward_by_pcm_frames.exit.i, %bb.ag, %bb.ab, %bb.aa, %bb.l, %bb.m, %.preheader.i.i90._crit_edge, %._crit_edge36.i.i, %bb.p, %bb.o, %ma_dr_flac_oggbs__seek_physical.exit90.i, %.preheader.i, %._crit_edge36.i81.i, %.critedge87, %.critedge85
  %i.gt = tail call i32 @ma_dr_flac_seek_to_pcm_frame(ptr noundef nonnull %0, i64 noundef %i.w)
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %tailrecurse, label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.b, %.critedge85.thread
  %.3 = phi i32 [ 0, %bb.b ], [ 1, %tailrecurse ], [ 0, %.critedge85.thread ]
  br i1 %ret.known.tr162, label %bb.aw, label %.loopexit.thread

bb.aw:                                            ; preds = %ma_dr_flac__seek_to_first_frame.exit, %.critedge85.thread99, %.split235, %.split, %.loopexit
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.a, %ma_dr_flac__seek_to_first_frame.exit, %.critedge85.thread99, %.split235, %.split, %.loopexit, %bb.aw
  %i.gv = phi i32 [ 0, %bb.aw ], [ %.3, %.loopexit ], [ %.1.i.i, %ma_dr_flac__seek_to_first_frame.exit ], [ 1, %.split ], [ 1, %.split235 ], [ 1, %.critedge85.thread99 ], [ 0, %bb.a ]
  ret i32 %i.gv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @ma_flac_get_cursor_in_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #45 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !69
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1711
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1735
  store i64 %i.f, ptr %1, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @ma_flac_get_length_in_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #45 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !69
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1711
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1923
  store i64 %i.f, ptr %1, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -10, 1) i32 @ma_mp3_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %7 = alloca %struct.ma_dr_mp3dec_frame_info, align 4 ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 11 uses
  %i.f = alloca [3 x i8], align 1                 ; 6 uses
  %i.g = alloca [32 x i8], align 16               ; 8 uses
  %i.h = alloca [10 x i8], align 1                ; 9 uses
  %8 = alloca %struct.ma_dr_mp3_bs, align 8       ; 7 uses
  %9 = alloca [4 x %struct.ma_dr_mp3_L3_gr_info], align 16 ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = icmp eq ptr %6, null
  br i1 %i.j, label %ma_mp3_init_internal.exit, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32504) %6, i8 0, i64 32504, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  store i32 5, ptr %i.k, align 8, !tbaa !1938
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.l = load i32, ptr %4, align 4, !tbaa !81     ; 2 uses
  switch i32 %i.l, label %bb.d [
    i32 5, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  store i32 %i.l, ptr %i.k, align 8, !tbaa !1938
  br label %bb.d

bb.d:                                             ; preds = %ma_zero_memory_default.exit.i, %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.m, i8 0, i64 64, i1 false)
  store ptr @g_ma_mp3_ds_vtable, ptr %6, align 8, !tbaa !353
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 -1, ptr %i.n, align 8, !tbaa !354
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 -1, ptr %i.o, align 8, !tbaa !355
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %6, ptr %i.p, align 8, !tbaa !356
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.r = icmp eq ptr %0, null
  %i.s = icmp eq ptr %1, null
  %or.cond = or i1 %i.r, %i.s
  br i1 %or.cond, label %ma_mp3_init_internal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 4 uses
  store ptr %0, ptr %i.t, align 8, !tbaa !1944
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 7 uses
  store ptr %1, ptr %i.u, align 8, !tbaa !1945
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  store ptr %2, ptr %i.v, align 8, !tbaa !1946
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 11 uses
  store ptr %3, ptr %i.w, align 8, !tbaa !1947
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %i.x, i8 0, i64 32376, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 6264 ; 2 uses
  store i8 0, ptr %i.y, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 23048
  store ptr @ma_mp3_dr_callback__read, ptr %i.z, align 8, !tbaa !1948
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 23056
  store ptr @ma_mp3_dr_callback__seek, ptr %i.aa, align 8, !tbaa !1949
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 23064
  store ptr null, ptr %i.ab, align 8, !tbaa !1950
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 23072
  store ptr %6, ptr %i.ac, align 8, !tbaa !1951
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 23080
  store ptr %6, ptr %i.ad, align 8, !tbaa !1952
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 23088 ; 3 uses
  %.not.i.i27 = icmp eq ptr %5, null              ; 3 uses
  br i1 %.not.i.i27, label %.thread365.i, label %ma_dr_mp3_copy_allocation_callbacks_or_defaults.exit.i

.thread365.i:                                     ; preds = %bb.e
  store ptr null, ptr %i.ae, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx361.i = getelementptr inbounds nuw i8, ptr %6, i64 23096
  store ptr @ma_dr_mp3__malloc_default, ptr %.sroa.5.0..sroa_idx361.i, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx362.i = getelementptr inbounds nuw i8, ptr %6, i64 23104
  store ptr @ma_dr_mp3__realloc_default, ptr %.sroa.6.0..sroa_idx362.i, align 8, !tbaa !33
  %.sroa.7.0..sroa_idx363.i = getelementptr inbounds nuw i8, ptr %6, i64 23112 ; 2 uses
  store ptr @ma_dr_mp3__free_default, ptr %.sroa.7.0..sroa_idx363.i, align 8, !tbaa !33
  br label %bb.g

ma_dr_mp3_copy_allocation_callbacks_or_defaults.exit.i: ; preds = %bb.e
  %.sroa.5.0..sroa_idx322.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.6.0..sroa_idx324.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.6.0.copyload325.i = load ptr, ptr %.sroa.6.0..sroa_idx324.i, align 8, !tbaa !33 ; 2 uses
  %.sroa.7.0..sroa_idx326.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.7.0.copyload327.i = load ptr, ptr %.sroa.7.0..sroa_idx326.i, align 8, !tbaa !33 ; 2 uses
  %.sroa.5.0.copyload323.i = load ptr, ptr %.sroa.5.0..sroa_idx322.i, align 8, !tbaa !33
  %i.af = load <2 x ptr>, ptr %5, align 8, !tbaa !33
  store <2 x ptr> %i.af, ptr %i.ae, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 23104
  store ptr %.sroa.6.0.copyload325.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !33
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 23112 ; 2 uses
  store ptr %.sroa.7.0.copyload327.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !33
  %i.ag = icmp eq ptr %.sroa.7.0.copyload327.i, null
  br i1 %i.ag, label %ma_dr_mp3_init_internal.exit.thread, label %bb.f

bb.f:                                             ; preds = %ma_dr_mp3_copy_allocation_callbacks_or_defaults.exit.i
  %i.ah = icmp eq ptr %.sroa.5.0.copyload323.i, null
  %i.ai = icmp eq ptr %.sroa.6.0.copyload325.i, null
  %or.cond368.i = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond368.i, label %ma_dr_mp3_init_internal.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread365.i
  %.sroa.7.0..sroa_idx364367.i = phi ptr [ %.sroa.7.0..sroa_idx363.i, %.thread365.i ], [ %.sroa.7.0..sroa_idx.i, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32360 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !1953
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 32368 ; 2 uses
  store i64 -1, ptr %i.ak, align 8, !tbaa !1954
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 32376 ; 5 uses
  store i64 0, ptr %i.al, align 8, !tbaa !1955
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 32396 ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !1956
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 32400 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !1957
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 32408 ; 2 uses
  store i64 -1, ptr %i.ao, align 8, !tbaa !1958
  %i.ap = tail call i32 %1(ptr noundef %3, i64 noundef 0, i32 noundef 2) #55, !inline_history !1959
  %.not.i42.not = icmp eq i32 %i.ap, 0
  br i1 %.not.i42.not, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !1946
  %i.ar = load ptr, ptr %i.w, align 8, !tbaa !1947
  %i.as = call i32 %i.aq(ptr noundef %i.ar, ptr noundef nonnull %i.e) #55, !inline_history !1960
  %.not.i40.not = icmp eq i32 %i.as, 0
  br i1 %.not.i40.not, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.at = load i64, ptr %i.e, align 8, !tbaa !69  ; 2 uses
  %i.au = icmp sgt i64 %i.at, 128
  br i1 %i.au, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #55
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !1945
  %i.aw = load ptr, ptr %i.w, align 8, !tbaa !1947
  %i.ax = call i32 %i.av(ptr noundef %i.aw, i64 noundef -128, i32 noundef 2) #55, !inline_history !1959
  %.not.i38.not = icmp eq i32 %i.ax, 0
  br i1 %.not.i38.not, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pr.i.pre = load i64, ptr %i.e, align 8, !tbaa !69
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !1944
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !1947
  %i.ba = call i32 %i.ay(ptr noundef %i.az, ptr noundef nonnull %i.f, i64 noundef 3, ptr noundef nonnull %i.a) #55, !inline_history !1961 ; 0 uses
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.bc = icmp eq i64 %i.bb, 3
  %i.bd = load i8, ptr %i.f, align 1
  %i.be = icmp eq i8 %i.bd, 84
  %or.cond9.i = select i1 %i.bc, i1 %i.be, i1 false
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 65
  %or.cond13.i = select i1 %or.cond9.i, i1 %i.bh, i1 false
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = icmp eq i8 %i.bj, 71
  %or.cond17.i = select i1 %or.cond13.i, i1 %i.bk, i1 false
  %.pr.i.pre48 = load i64, ptr %i.e, align 8, !tbaa !69 ; 2 uses
  br i1 %or.cond17.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = add nsw i64 %.pr.i.pre48, -128          ; 2 uses
  store i64 %i.bl, ptr %i.e, align 8, !tbaa !69
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l, %bb.k
  %.pr.i = phi i64 [ %.pr.i.pre, %._crit_edge ], [ %i.bl, %bb.l ], [ %.pr.i.pre48, %bb.k ]
  %.0265.i = phi i64 [ -32, %._crit_edge ], [ -160, %bb.l ], [ -32, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #55
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.bm = phi i64 [ %i.at, %bb.i ], [ %.pr.i, %bb.m ]
  %.1266.i = phi i64 [ -32, %bb.i ], [ %.0265.i, %bb.m ]
  %i.bn = icmp sgt i64 %i.bm, 32
  br i1 %i.bn, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #55
  %i.bo = load ptr, ptr %i.u, align 8, !tbaa !1945
  %i.bp = load ptr, ptr %i.w, align 8, !tbaa !1947
  %i.bq = call i32 %i.bo(ptr noundef %i.bp, i64 noundef %.1266.i, i32 noundef 2) #55, !inline_history !1959
  %.not.i36.not = icmp eq i32 %i.bq, 0
  br i1 %.not.i36.not, label %bb.p, label %ma_dr_mp3_free.exit.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.br = load ptr, ptr %i.t, align 8, !tbaa !1944
  %i.bs = load ptr, ptr %i.w, align 8, !tbaa !1947
  %i.bt = call i32 %i.br(ptr noundef %i.bs, ptr noundef nonnull %i.g, i64 noundef 32, ptr noundef nonnull %i.b) #55, !inline_history !1961 ; 0 uses
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  %i.bv = icmp eq i64 %i.bu, 32
  %i.bw = load <8 x i8>, ptr %i.g, align 16
  %.fr = freeze <8 x i8> %i.bw
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.bx = icmp eq i64 %.fr.scalar, 6360568394642968641
  %op.rdx = select i1 %i.bx, i1 %i.bv, i1 false
  br i1 %op.rdx, label %bb.q, label %ma_dr_mp3_free.exit.i

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !9
  %i.ca = sext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 25
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.cd = sext i8 %i.cc to i64
  %i.ce = shl nsw i64 %i.cd, 8
  %i.cf = or i64 %i.ce, %i.ca
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 26
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !9
  %i.ci = sext i8 %i.ch to i64
  %i.cj = shl nsw i64 %i.ci, 16
  %i.ck = or i64 %i.cf, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 27
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !9
  %i.cn = sext i8 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 24
  %i.cp = or i64 %i.ck, %i.co
  %i.cq = add nsw i64 %i.cp, 32
end_hunk_13
begin_hunk_14_@ma_mp3_init:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #55
  %.not300.i = icmp eq i32 %.0248.i, -1
  br i1 %.not300.i, label %bb.az, label %bb.ay

.thread334.i:                                     ; preds = %.thread332.i, %ma_dr_mp3_bs_get_bits.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #55
  br label %bb.az

bb.av:                                            ; preds = %.critedge304.i
  %i.hq = getelementptr inbounds nuw i8, ptr %6, i64 32448
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !1972 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %ma_dr_mp3_init_internal.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ht = load ptr, ptr %.sroa.7.0..sroa_idx364367.i, align 8, !tbaa !31 ; 2 uses
  %.not.i320.i = icmp eq ptr %i.ht, null
  br i1 %.not.i320.i, label %ma_dr_mp3_init_internal.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hu = load ptr, ptr %i.ae, align 8, !tbaa !25
  call void %i.ht(ptr noundef nonnull %i.hr, ptr noundef %i.hu) #55, !inline_history !1973
  br label %ma_dr_mp3_init_internal.exit.thread

bb.ay:                                            ; preds = %bb.au
  %i.hv = mul i32 %.0248.i, %i.eo
  %i.hw = zext i32 %i.hv to i64
  store i64 %i.hw, ptr %i.ao, align 8, !tbaa !1958
  br label %bb.az

ma_dr_mp3_init_internal.exit.thread:              ; preds = %bb.w, %ma_dr_mp3_copy_allocation_callbacks_or_defaults.exit.i, %bb.ab, %bb.f, %bb.av, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  br label %ma_mp3_init_internal.exit

bb.az:                                            ; preds = %bb.ay, %bb.au, %.thread334.i
  %i.hx = getelementptr inbounds nuw i8, ptr %6, i64 23120
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 23040
  %i.hz = load <2 x i32>, ptr %i.hx, align 8, !tbaa !8
  store <2 x i32> %i.hz, ptr %i.hy, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  %i.ia = getelementptr i8, ptr %4, i64 4
  %.val = load i32, ptr %i.ia, align 4, !tbaa !76 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #55
  store i32 %.val, ptr %i.i, align 4, !tbaa !8
  %.not.i.i = icmp eq i32 %.val, 0
  br i1 %.not.i.i, label %ma_mp3_post_init.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ib = zext i32 %.val to i64
  %i.ic = mul nuw nsw i64 %i.ib, 24               ; 2 uses
  br i1 %.not.i.i27, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !22 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not8.i.i.i, label %ma_mp3_post_init.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.if = load ptr, ptr %5, align 8, !tbaa !25
  %i.ig = call ptr %i.ie(i64 noundef %i.ic, ptr noundef %i.if) #55, !inline_history !1974
  br label %ma_malloc.exit.i.i

bb.bd:                                            ; preds = %bb.ba
  %i.ih = call noalias noundef ptr @malloc(i64 noundef %i.ic) #67
  br label %ma_malloc.exit.i.i

ma_malloc.exit.i.i:                               ; preds = %bb.bd, %bb.bc
  %.0.i.i.i = phi ptr [ %i.ig, %bb.bc ], [ %i.ih, %bb.bd ] ; 6 uses
  %i.ii = icmp eq ptr %.0.i.i.i, null
  br i1 %i.ii, label %ma_mp3_post_init.exit, label %bb.be

bb.be:                                            ; preds = %ma_malloc.exit.i.i
  %i.ij = call i32 @ma_dr_mp3_calculate_seek_points(ptr noundef nonnull %i.x, ptr noundef nonnull %i.i, ptr noundef nonnull %.0.i.i.i)
  %.not19.not.i.i = icmp eq i32 %i.ij, 0
  br i1 %.not19.not.i.i, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  br i1 %.not.i.i27, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not9.i.i.i, label %ma_mp3_post_init.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.im = load ptr, ptr %5, align 8, !tbaa !25
  call void %i.il(ptr noundef nonnull %.0.i.i.i, ptr noundef %i.im) #55, !inline_history !1975
  br label %ma_mp3_post_init.exit

bb.bi:                                            ; preds = %bb.bf
  call void @free(ptr noundef nonnull %.0.i.i.i) #55
  br label %ma_mp3_post_init.exit

bb.bj:                                            ; preds = %bb.be
  %i.in = load i32, ptr %i.i, align 4, !tbaa !8   ; 3 uses
  %i.io = icmp eq i32 %i.in, 0
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 32392
  %i.iq = getelementptr inbounds nuw i8, ptr %6, i64 32384
  %.17.i.i.i = select i1 %i.io, ptr null, ptr %.0.i.i.i
  store i32 %i.in, ptr %i.ip, align 8, !tbaa !1976
  store ptr %.17.i.i.i, ptr %i.iq, align 8, !tbaa !1977
  %i.ir = getelementptr inbounds nuw i8, ptr %6, i64 32488
  store i32 %i.in, ptr %i.ir, align 8, !tbaa !1978
  %i.is = getelementptr inbounds nuw i8, ptr %6, i64 32496
  store ptr %.0.i.i.i, ptr %i.is, align 8, !tbaa !1979
  br label %ma_mp3_post_init.exit

ma_mp3_post_init.exit:                            ; preds = %bb.az, %bb.bb, %ma_malloc.exit.i.i, %bb.bg, %bb.bh, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #55
  br label %ma_mp3_init_internal.exit

ma_mp3_init_internal.exit:                        ; preds = %ma_dr_mp3_init_internal.exit.thread, %bb.a, %ma_mp3_post_init.exit, %bb.d
  %.1 = phi i32 [ -2, %bb.d ], [ -10, %ma_dr_mp3_init_internal.exit.thread ], [ 0, %ma_mp3_post_init.exit ], [ -2, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ma_dr_mp3_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %0, i8 0, i64 32376, i1 false)
  %i.c = tail call fastcc i32 @ma_dr_mp3_init_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %5, ptr noundef %6)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @ma_mp3_dr_callback__read(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1944
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1947
  %i.f = call i32 %i.c(ptr noundef %i.e, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a) #55 ; 0 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ma_mp3_dr_callback__seek(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #8 {
bb.a:
  %switch.selectcmp = icmp eq i32 %2, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 1
  %switch.selectcmp10 = icmp eq i32 %2, 0
  %switch.select11 = select i1 %switch.selectcmp10, i32 0, i32 %switch.select
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1945
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1947
  %i.e = sext i32 %1 to i64
  %i.f = tail call i32 %i.b(ptr noundef %i.d, i64 noundef %i.e, i32 noundef %switch.select11) #55
  %.not = icmp eq i32 %i.f, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define range(i32 -10, 1) i32 @ma_mp3_init_file(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %ma_mp3_init_internal.exit, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32504) %3, i8 0, i64 32504, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  store i32 5, ptr %i.c, align 8, !tbaa !1938
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.d = load i32, ptr %1, align 4, !tbaa !81     ; 2 uses
  switch i32 %i.d, label %bb.d [
    i32 5, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  store i32 %i.d, ptr %i.c, align 8, !tbaa !1938
  br label %bb.d

bb.d:                                             ; preds = %ma_zero_memory_default.exit.i, %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  store ptr @g_ma_mp3_ds_vtable, ptr %3, align 8, !tbaa !353
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -1, ptr %i.f, align 8, !tbaa !354
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 -1, ptr %i.g, align 8, !tbaa !355
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %3, ptr %i.h, align 8, !tbaa !356
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.k = tail call i32 @ma_dr_mp3_init_file(ptr noundef nonnull %i.j, ptr noundef %0, ptr noundef %2)
  %.not12.not = icmp eq i32 %i.k, 0
  br i1 %.not12.not, label %ma_mp3_init_internal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.l, align 4, !tbaa !76  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i32 %.val, ptr %i.a, align 4, !tbaa !8
  %.not.i.i = icmp eq i32 %.val, 0
  br i1 %.not.i.i, label %ma_mp3_post_init.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = zext i32 %.val to i64
  %i.n = mul nuw nsw i64 %i.m, 24                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %2, null              ; 2 uses
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22   ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not8.i.i.i, label %ma_mp3_post_init.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %2, align 8, !tbaa !25
  %i.r = tail call ptr %i.p(i64 noundef %i.n, ptr noundef %i.q) #55, !inline_history !1974
  br label %ma_malloc.exit.i.i

bb.i:                                             ; preds = %bb.f
  %i.s = tail call noalias noundef ptr @malloc(i64 noundef %i.n) #67
  br label %ma_malloc.exit.i.i

ma_malloc.exit.i.i:                               ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.r, %bb.h ], [ %i.s, %bb.i ] ; 6 uses
  %i.t = icmp eq ptr %.0.i.i.i, null
  br i1 %i.t, label %ma_mp3_post_init.exit, label %bb.j

bb.j:                                             ; preds = %ma_malloc.exit.i.i
  %i.u = call i32 @ma_dr_mp3_calculate_seek_points(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %.0.i.i.i)
  %.not19.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not19.not.i.i, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not9.i.i.i, label %ma_mp3_post_init.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = load ptr, ptr %2, align 8, !tbaa !25
  call void %i.w(ptr noundef nonnull %.0.i.i.i, ptr noundef %i.x) #55, !inline_history !1975
  br label %ma_mp3_post_init.exit

bb.n:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %.0.i.i.i) #55
  br label %ma_mp3_post_init.exit

bb.o:                                             ; preds = %bb.j
  %i.y = load i32, ptr %i.a, align 4, !tbaa !8    ; 3 uses
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32392
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32384
  %.17.i.i.i = select i1 %i.z, ptr null, ptr %.0.i.i.i
  store i32 %i.y, ptr %i.aa, align 8, !tbaa !1976
  store ptr %.17.i.i.i, ptr %i.ab, align 8, !tbaa !1977
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32488
  store i32 %i.y, ptr %i.ac, align 8, !tbaa !1978
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32496
  store ptr %.0.i.i.i, ptr %i.ad, align 8, !tbaa !1979
  br label %ma_mp3_post_init.exit

ma_mp3_post_init.exit:                            ; preds = %bb.e, %bb.g, %ma_malloc.exit.i.i, %bb.l, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_mp3_init_internal.exit

ma_mp3_init_internal.exit:                        ; preds = %bb.a, %ma_mp3_post_init.exit, %bb.d
  %.1 = phi i32 [ -10, %bb.d ], [ 0, %ma_mp3_post_init.exit ], [ -2, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ma_dr_mp3_init_file(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.ma_dr_mp3dec_frame_info, align 4 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [3 x i8], align 1                 ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 8 uses
  %i.d = alloca [10 x i8], align 1                ; 9 uses
  %4 = alloca %struct.ma_dr_mp3_bs, align 8       ; 7 uses
  %5 = alloca [4 x %struct.ma_dr_mp3_L3_gr_info], align 16 ; 4 uses
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %ma_dr_mp3_init_file_with_metadata.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %0, i8 0, i64 32376, i1 false)
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %ma_dr_mp3_init_file_with_metadata.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noalias ptr @fopen(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.176) ; 13 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %ma_dr_mp3_init_file_with_metadata.exit, label %ma_fopen.exit.i

ma_fopen.exit.i:                                  ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 22936
  store ptr @ma_dr_mp3__on_read_stdio, ptr %i.j, align 8, !tbaa !1948
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 22944
  store ptr @ma_dr_mp3__on_seek_stdio, ptr %i.k, align 8, !tbaa !1949
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 22952
  store ptr null, ptr %i.l, align 8, !tbaa !1950
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 22960
  store ptr %i.g, ptr %i.m, align 8, !tbaa !1951
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 22968
  store ptr null, ptr %i.n, align 8, !tbaa !1952
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 22976 ; 3 uses
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %.thread365.i, label %ma_dr_mp3_copy_allocation_callbacks_or_defaults.exit.i

.thread365.i:                                     ; preds = %ma_fopen.exit.i
  store ptr null, ptr %i.o, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx361.i = getelementptr inbounds nuw i8, ptr %0, i64 22984
  store ptr @ma_dr_mp3__malloc_default, ptr %.sroa.5.0..sroa_idx361.i, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx362.i = getelementptr inbounds nuw i8, ptr %0, i64 22992
  store ptr @ma_dr_mp3__realloc_default, ptr %.sroa.6.0..sroa_idx362.i, align 8, !tbaa !33
  %.sroa.7.0..sroa_idx363.i = getelementptr inbounds nuw i8, ptr %0, i64 23000 ; 2 uses
  store ptr @ma_dr_mp3__free_default, ptr %.sroa.7.0..sroa_idx363.i, align 8, !tbaa !33
  br label %bb.e

ma_dr_mp3_copy_allocation_callbacks_or_defaults.exit.i: ; preds = %ma_fopen.exit.i
  %.sroa.5.0..sroa_idx322.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0..sroa_idx324.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload325.i = load ptr, ptr %.sroa.6.0..sroa_idx324.i, align 8, !tbaa !33 ; 2 uses
  %.sroa.7.0..sroa_idx326.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.7.0.copyload327.i = load ptr, ptr %.sroa.7.0..sroa_idx326.i, align 8, !tbaa !33 ; 2 uses
  %.sroa.5.0.copyload323.i = load ptr, ptr %.sroa.5.0..sroa_idx322.i, align 8, !tbaa !33
  %i.p = load <2 x ptr>, ptr %2, align 8, !tbaa !33
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 22992
  store ptr %.sroa.6.0.copyload325.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !33
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 23000 ; 2 uses
  store ptr %.sroa.7.0.copyload327.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !33
  %i.q = icmp eq ptr %.sroa.7.0.copyload327.i, null
  br i1 %i.q, label %bb.ar, label %bb.d

bb.d:                                             ; preds = %ma_dr_mp3_copy_allocation_callbacks_or_defaults.exit.i
  %i.r = icmp eq ptr %.sroa.5.0.copyload323.i, null
  %i.s = icmp eq ptr %.sroa.6.0.copyload325.i, null
  %or.cond368.i = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond368.i, label %bb.ar, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread365.i
  %.sroa.7.0..sroa_idx364367.i = phi ptr [ %.sroa.7.0..sroa_idx363.i, %.thread365.i ], [ %.sroa.7.0..sroa_idx.i, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32248 ; 3 uses
  store i64 0, ptr %i.t, align 8, !tbaa !1953
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32256 ; 2 uses
  store i64 -1, ptr %i.u, align 8, !tbaa !1954
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32264 ; 5 uses
  store i64 0, ptr %i.v, align 8, !tbaa !1955
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32284 ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !1956
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32288 ; 2 uses
  store i32 0, ptr %i.x, align 8, !tbaa !1957
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32296 ; 2 uses
  store i64 -1, ptr %i.y, align 8, !tbaa !1958
  %i.z = tail call i32 @fseek(ptr noundef nonnull %i.g, i64 noundef 0, i32 noundef 2)
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call i64 @ftell(ptr noundef nonnull %i.g) ; 5 uses
  %i.ab = icmp sgt i64 %i.aa, 128
  br i1 %i.ab, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.ac = tail call i32 @fseek(ptr noundef nonnull %i.g, i64 noundef -128, i32 noundef 2)
  %.not11 = icmp eq i32 %i.ac, 0
  br i1 %.not11, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = call noundef i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 3, ptr noundef nonnull %i.g)
  %i.ae = icmp eq i64 %i.ad, 3
end_hunk_14
begin_hunk_15_@ma_dr_mp3_init_file:bb.a

bb.z:                                             ; preds = %bb.y
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 3
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !9
  %i.dx = icmp eq i8 %i.dw, 103
  br label %.thread332.i

bb.aa:                                            ; preds = %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !9
  %i.ea = icmp eq i8 %i.dz, 110
  br i1 %i.ea, label %bb.ab, label %.thread332.i

bb.ab:                                            ; preds = %bb.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !9
  %i.ed = icmp eq i8 %i.ec, 102
  br i1 %i.ed, label %bb.ac, label %.thread332.i

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !9
  %i.eg = icmp eq i8 %i.ef, 111
  br label %.thread332.i

.thread332.i:                                     ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %i.eh = phi i1 [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.w ], [ false, %bb.ac ], [ %i.dx, %bb.z ], [ false, %bb.x ], [ false, %bb.y ] ; 2 uses
  %i.ei = phi i1 [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.w ], [ %i.eg, %bb.ac ], [ false, %bb.z ], [ false, %bb.x ], [ false, %bb.y ] ; 2 uses
  %or.cond59.i = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %or.cond59.i, label %bb.ad, label %.thread334.i

bb.ad:                                            ; preds = %.thread332.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dn, i64 7
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !9
  %i.el = zext i8 %i.ek to i32                    ; 4 uses
  %i.em = and i32 %i.el, 1
  %.not294.i = icmp eq i32 %i.em, 0
  br i1 %.not294.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.en = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.eo = load i32, ptr %i.en, align 1
  %i.ep = call i32 @llvm.bswap.i32(i32 %i.eo)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.eq = phi i64 [ 12, %bb.ae ], [ 8, %bb.ad ]
  %.0248.i = phi i32 [ %i.ep, %bb.ae ], [ -1, %bb.ad ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.eq
  %i.es = shl nuw nsw i32 %i.el, 1
  %i.et = and i32 %i.es, 4
  %spec.select305.idx.i = zext nneg i32 %i.et to i64
  %spec.select305.i = getelementptr inbounds nuw i8, ptr %i.er, i64 %spec.select305.idx.i
  %i.eu = and i32 %i.el, 4
  %.not296.i = icmp eq i32 %i.eu, 0
  %.2258.idx.i = select i1 %.not296.i, i64 0, i64 100
  %.2258.i = getelementptr inbounds nuw i8, ptr %spec.select305.i, i64 %.2258.idx.i
  %i.ev = lshr i32 %i.el, 1
  %i.ew = and i32 %i.ev, 4
  %.3259.idx.i = zext nneg i32 %i.ew to i64
  %.3259.i = getelementptr inbounds nuw i8, ptr %.2258.i, i64 %.3259.idx.i ; 4 uses
  %i.ex = load i8, ptr %.3259.i, align 1, !tbaa !9
  %.not298.i = icmp eq i8 %i.ex, 0
  br i1 %.not298.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ey = getelementptr inbounds nuw i8, ptr %.3259.i, i64 21 ; 2 uses
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.cy to i64
  %reass.sub = sub i64 %i.ez, %i.fa
  %i.fb = add i64 %reass.sub, 14
  %i.fc = sext i32 %i.da to i64
  %i.fd = icmp slt i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fe = load i8, ptr %i.ey, align 1, !tbaa !9
  %i.ff = zext i8 %i.fe to i32
  %i.fg = shl nuw nsw i32 %i.ff, 4
  %i.fh = getelementptr inbounds nuw i8, ptr %.3259.i, i64 22
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !9
  %i.fj = zext i8 %i.fi to i32                    ; 2 uses
  %i.fk = lshr i32 %i.fj, 4
  %i.fl = add nuw nsw i32 %i.fg, 529
  %i.fm = add nuw nsw i32 %i.fl, %i.fk
  %i.fn = shl nuw nsw i32 %i.fj, 8
  %i.fo = and i32 %i.fn, 3840
  %i.fp = getelementptr inbounds nuw i8, ptr %.3259.i, i64 23
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !9
  %i.fr = zext i8 %i.fq to i32
  %i.fs = or disjoint i32 %i.fo, %i.fr
  %spec.store.select60.i = call i32 @llvm.usub.sat.i32(i32 %i.fs, i32 529)
  store i32 %i.fm, ptr %i.w, align 4, !tbaa !1956
  store i32 %spec.store.select60.i, ptr %i.x, align 8, !tbaa !1957
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  br i1 %i.eh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 32304
  store i32 1, ptr %i.ft, align 8, !tbaa !1969
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.ei, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 32308
  store i32 1, ptr %i.fu, align 4, !tbaa !1970
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 23020
  store i32 0, ptr %i.fv, align 4, !tbaa !1971
  %i.fw = zext i32 %i.da to i64
  %i.fx = load i64, ptr %i.v, align 8, !tbaa !1955
  %i.fy = add i64 %i.fx, %i.fw                    ; 2 uses
  store i64 %i.fy, ptr %i.v, align 8, !tbaa !1955
  store i64 %i.fy, ptr %i.t, align 8, !tbaa !1953
  store i8 0, ptr %i.i, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %.not300.i = icmp eq i32 %.0248.i, -1
  br i1 %.not300.i, label %ma_dr_mp3_init_internal.exit, label %bb.aq

.thread334.i:                                     ; preds = %.thread332.i, %ma_dr_mp3_bs_get_bits.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %ma_dr_mp3_init_internal.exit

bb.an:                                            ; preds = %.critedge304.i
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 32336
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !1972 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gc = load ptr, ptr %.sroa.7.0..sroa_idx364367.i, align 8, !tbaa !31 ; 2 uses
  %.not.i320.i = icmp eq ptr %i.gc, null
  br i1 %.not.i320.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gd = load ptr, ptr %i.o, align 8, !tbaa !25
  call void %i.gc(ptr noundef nonnull %i.ga, ptr noundef %i.gd) #55, !inline_history !1973
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  %i.ge = mul i32 %.0248.i, %i.cx
  %i.gf = zext i32 %i.ge to i64
  store i64 %i.gf, ptr %i.y, align 8, !tbaa !1958
  br label %ma_dr_mp3_init_internal.exit

ma_dr_mp3_init_internal.exit:                     ; preds = %.thread334.i, %bb.am, %bb.aq
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 23008
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 22928
  %i.gi = load <2 x i32>, ptr %i.gg, align 8, !tbaa !8
  store <2 x i32> %i.gi, ptr %i.gh, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %ma_dr_mp3_init_file_with_metadata.exit

bb.ar:                                            ; preds = %bb.ap, %ma_dr_mp3_copy_allocation_callbacks_or_defaults.exit.i, %bb.t, %bb.d, %bb.an, %bb.ao, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.gj = call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  br label %ma_dr_mp3_init_file_with_metadata.exit

ma_dr_mp3_init_file_with_metadata.exit:           ; preds = %ma_dr_mp3_init_internal.exit, %bb.a, %bb.b, %bb.c, %bb.ar
  %.0.i = phi i32 [ 1, %ma_dr_mp3_init_internal.exit ], [ 0, %bb.a ], [ 0, %bb.ar ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 -10, 1) i32 @ma_mp3_init_file_w(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %ma_mp3_init_internal.exit, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32504) %3, i8 0, i64 32504, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  store i32 5, ptr %i.c, align 8, !tbaa !1938
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.d = load i32, ptr %1, align 4, !tbaa !81     ; 2 uses
  switch i32 %i.d, label %bb.d [
    i32 5, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  store i32 %i.d, ptr %i.c, align 8, !tbaa !1938
  br label %bb.d

bb.d:                                             ; preds = %ma_zero_memory_default.exit.i, %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  store ptr @g_ma_mp3_ds_vtable, ptr %3, align 8, !tbaa !353
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -1, ptr %i.f, align 8, !tbaa !354
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 -1, ptr %i.g, align 8, !tbaa !355
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %3, ptr %i.h, align 8, !tbaa !356
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.k = tail call i32 @ma_dr_mp3_init_file_w(ptr noundef nonnull %i.j, ptr noundef %0, ptr noundef %2)
  %.not12.not = icmp eq i32 %i.k, 0
  br i1 %.not12.not, label %ma_mp3_init_internal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.l, align 4, !tbaa !76  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i32 %.val, ptr %i.a, align 4, !tbaa !8
  %.not.i.i = icmp eq i32 %.val, 0
  br i1 %.not.i.i, label %ma_mp3_post_init.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = zext i32 %.val to i64
  %i.n = mul nuw nsw i64 %i.m, 24                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %2, null              ; 2 uses
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22   ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not8.i.i.i, label %ma_mp3_post_init.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %2, align 8, !tbaa !25
  %i.r = tail call ptr %i.p(i64 noundef %i.n, ptr noundef %i.q) #55, !inline_history !1974
  br label %ma_malloc.exit.i.i

bb.i:                                             ; preds = %bb.f
  %i.s = tail call noalias noundef ptr @malloc(i64 noundef %i.n) #67
  br label %ma_malloc.exit.i.i

ma_malloc.exit.i.i:                               ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.r, %bb.h ], [ %i.s, %bb.i ] ; 6 uses
  %i.t = icmp eq ptr %.0.i.i.i, null
  br i1 %i.t, label %ma_mp3_post_init.exit, label %bb.j

bb.j:                                             ; preds = %ma_malloc.exit.i.i
  %i.u = call i32 @ma_dr_mp3_calculate_seek_points(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %.0.i.i.i)
  %.not19.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not19.not.i.i, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not9.i.i.i, label %ma_mp3_post_init.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = load ptr, ptr %2, align 8, !tbaa !25
  call void %i.w(ptr noundef nonnull %.0.i.i.i, ptr noundef %i.x) #55, !inline_history !1975
  br label %ma_mp3_post_init.exit

bb.n:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %.0.i.i.i) #55
  br label %ma_mp3_post_init.exit

bb.o:                                             ; preds = %bb.j
  %i.y = load i32, ptr %i.a, align 4, !tbaa !8    ; 3 uses
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32392
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32384
  %.17.i.i.i = select i1 %i.z, ptr null, ptr %.0.i.i.i
  store i32 %i.y, ptr %i.aa, align 8, !tbaa !1976
  store ptr %.17.i.i.i, ptr %i.ab, align 8, !tbaa !1977
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32488
  store i32 %i.y, ptr %i.ac, align 8, !tbaa !1978
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32496
  store ptr %.0.i.i.i, ptr %i.ad, align 8, !tbaa !1979
  br label %ma_mp3_post_init.exit

ma_mp3_post_init.exit:                            ; preds = %bb.e, %bb.g, %ma_malloc.exit.i.i, %bb.l, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_mp3_init_internal.exit

ma_mp3_init_internal.exit:                        ; preds = %bb.a, %ma_mp3_post_init.exit, %bb.d
  %.1 = phi i32 [ -10, %bb.d ], [ 0, %ma_mp3_post_init.exit ], [ -2, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ma_dr_mp3_init_file_w(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.ma_dr_mp3dec_frame_info, align 4 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [3 x i8], align 1                 ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 8 uses
  %i.d = alloca [10 x i8], align 1                ; 9 uses
  %4 = alloca %struct.ma_dr_mp3_bs, align 8       ; 7 uses
  %5 = alloca [4 x %struct.ma_dr_mp3_L3_gr_info], align 16 ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %ma_dr_mp3_init_file_with_metadata_w.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %0, i8 0, i64 32376, i1 false)
  %i.g = call i32 @ma_wfopen(ptr noundef nonnull %i.e, ptr noundef %1, ptr noundef nonnull @.str.177, ptr noundef readonly %2)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %ma_dr_mp3_init_file_with_metadata_w.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !27   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 22936
  store ptr @ma_dr_mp3__on_read_stdio, ptr %i.j, align 8, !tbaa !1948
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 22944
  store ptr @ma_dr_mp3__on_seek_stdio, ptr %i.k, align 8, !tbaa !1949
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 22952
  store ptr null, ptr %i.l, align 8, !tbaa !1950
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 22960
  store ptr %i.h, ptr %i.m, align 8, !tbaa !1951
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 22968
  store ptr null, ptr %i.n, align 8, !tbaa !1952
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 22976 ; 3 uses
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %.thread365.i, label %ma_dr_mp3_copy_allocation_callbacks_or_defaults.exit.i

.thread365.i:                                     ; preds = %bb.c
  store ptr null, ptr %i.o, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx361.i = getelementptr inbounds nuw i8, ptr %0, i64 22984
  store ptr @ma_dr_mp3__malloc_default, ptr %.sroa.5.0..sroa_idx361.i, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx362.i = getelementptr inbounds nuw i8, ptr %0, i64 22992
  store ptr @ma_dr_mp3__realloc_default, ptr %.sroa.6.0..sroa_idx362.i, align 8, !tbaa !33
  %.sroa.7.0..sroa_idx363.i = getelementptr inbounds nuw i8, ptr %0, i64 23000 ; 2 uses
  store ptr @ma_dr_mp3__free_default, ptr %.sroa.7.0..sroa_idx363.i, align 8, !tbaa !33
  br label %bb.e

ma_dr_mp3_copy_allocation_callbacks_or_defaults.exit.i: ; preds = %bb.c
  %.sroa.5.0..sroa_idx322.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0..sroa_idx324.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload325.i = load ptr, ptr %.sroa.6.0..sroa_idx324.i, align 8, !tbaa !33 ; 2 uses
  %.sroa.7.0..sroa_idx326.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.7.0.copyload327.i = load ptr, ptr %.sroa.7.0..sroa_idx326.i, align 8, !tbaa !33 ; 2 uses
  %.sroa.5.0.copyload323.i = load ptr, ptr %.sroa.5.0..sroa_idx322.i, align 8, !tbaa !33
  %i.p = load <2 x ptr>, ptr %2, align 8, !tbaa !33
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 22992
  store ptr %.sroa.6.0.copyload325.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !33
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 23000 ; 2 uses
  store ptr %.sroa.7.0.copyload327.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !33
  %i.q = icmp eq ptr %.sroa.7.0.copyload327.i, null
  br i1 %i.q, label %bb.ar, label %bb.d

bb.d:                                             ; preds = %ma_dr_mp3_copy_allocation_callbacks_or_defaults.exit.i
  %i.r = icmp eq ptr %.sroa.5.0.copyload323.i, null
  %i.s = icmp eq ptr %.sroa.6.0.copyload325.i, null
  %or.cond368.i = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond368.i, label %bb.ar, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread365.i
  %.sroa.7.0..sroa_idx364367.i = phi ptr [ %.sroa.7.0..sroa_idx363.i, %.thread365.i ], [ %.sroa.7.0..sroa_idx.i, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32248 ; 3 uses
  store i64 0, ptr %i.t, align 8, !tbaa !1953
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32256 ; 2 uses
  store i64 -1, ptr %i.u, align 8, !tbaa !1954
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32264 ; 5 uses
  store i64 0, ptr %i.v, align 8, !tbaa !1955
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32284 ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !1956
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32288 ; 2 uses
  store i32 0, ptr %i.x, align 8, !tbaa !1957
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32296 ; 2 uses
  store i64 -1, ptr %i.y, align 8, !tbaa !1958
  %i.z = call i32 @fseek(ptr noundef %i.h, i64 noundef 0, i32 noundef 2)
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aa = call i64 @ftell(ptr noundef %i.h)       ; 5 uses
  %i.ab = icmp sgt i64 %i.aa, 128
  br i1 %i.ab, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.ac = call i32 @fseek(ptr noundef %i.h, i64 noundef -128, i32 noundef 2)
  %.not12 = icmp eq i32 %i.ac, 0
  br i1 %.not12, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = call noundef i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 3, ptr noundef %i.h)
  %i.ae = icmp eq i64 %i.ad, 3
  %i.af = load i8, ptr %i.b, align 1
end_hunk_15
begin_hunk_16_@ma_dr_mp3_init_file_w:bb.a
bb.z:                                             ; preds = %bb.y
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 3
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !9
  %i.dx = icmp eq i8 %i.dw, 103
  br label %.thread332.i

bb.aa:                                            ; preds = %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !9
  %i.ea = icmp eq i8 %i.dz, 110
  br i1 %i.ea, label %bb.ab, label %.thread332.i

bb.ab:                                            ; preds = %bb.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !9
  %i.ed = icmp eq i8 %i.ec, 102
  br i1 %i.ed, label %bb.ac, label %.thread332.i

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !9
  %i.eg = icmp eq i8 %i.ef, 111
  br label %.thread332.i

.thread332.i:                                     ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %i.eh = phi i1 [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.w ], [ false, %bb.ac ], [ %i.dx, %bb.z ], [ false, %bb.x ], [ false, %bb.y ] ; 2 uses
  %i.ei = phi i1 [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.w ], [ %i.eg, %bb.ac ], [ false, %bb.z ], [ false, %bb.x ], [ false, %bb.y ] ; 2 uses
  %or.cond59.i = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %or.cond59.i, label %bb.ad, label %.thread334.i

bb.ad:                                            ; preds = %.thread332.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dn, i64 7
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !9
  %i.el = zext i8 %i.ek to i32                    ; 4 uses
  %i.em = and i32 %i.el, 1
  %.not294.i = icmp eq i32 %i.em, 0
  br i1 %.not294.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.en = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.eo = load i32, ptr %i.en, align 1
  %i.ep = call i32 @llvm.bswap.i32(i32 %i.eo)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.eq = phi i64 [ 12, %bb.ae ], [ 8, %bb.ad ]
  %.0248.i = phi i32 [ %i.ep, %bb.ae ], [ -1, %bb.ad ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.eq
  %i.es = shl nuw nsw i32 %i.el, 1
  %i.et = and i32 %i.es, 4
  %spec.select305.idx.i = zext nneg i32 %i.et to i64
  %spec.select305.i = getelementptr inbounds nuw i8, ptr %i.er, i64 %spec.select305.idx.i
  %i.eu = and i32 %i.el, 4
  %.not296.i = icmp eq i32 %i.eu, 0
  %.2258.idx.i = select i1 %.not296.i, i64 0, i64 100
  %.2258.i = getelementptr inbounds nuw i8, ptr %spec.select305.i, i64 %.2258.idx.i
  %i.ev = lshr i32 %i.el, 1
  %i.ew = and i32 %i.ev, 4
  %.3259.idx.i = zext nneg i32 %i.ew to i64
  %.3259.i = getelementptr inbounds nuw i8, ptr %.2258.i, i64 %.3259.idx.i ; 4 uses
  %i.ex = load i8, ptr %.3259.i, align 1, !tbaa !9
  %.not298.i = icmp eq i8 %i.ex, 0
  br i1 %.not298.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ey = getelementptr inbounds nuw i8, ptr %.3259.i, i64 21 ; 2 uses
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.cy to i64
  %reass.sub = sub i64 %i.ez, %i.fa
  %i.fb = add i64 %reass.sub, 14
  %i.fc = sext i32 %i.da to i64
  %i.fd = icmp slt i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fe = load i8, ptr %i.ey, align 1, !tbaa !9
  %i.ff = zext i8 %i.fe to i32
  %i.fg = shl nuw nsw i32 %i.ff, 4
  %i.fh = getelementptr inbounds nuw i8, ptr %.3259.i, i64 22
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !9
  %i.fj = zext i8 %i.fi to i32                    ; 2 uses
  %i.fk = lshr i32 %i.fj, 4
  %i.fl = add nuw nsw i32 %i.fg, 529
  %i.fm = add nuw nsw i32 %i.fl, %i.fk
  %i.fn = shl nuw nsw i32 %i.fj, 8
  %i.fo = and i32 %i.fn, 3840
  %i.fp = getelementptr inbounds nuw i8, ptr %.3259.i, i64 23
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !9
  %i.fr = zext i8 %i.fq to i32
  %i.fs = or disjoint i32 %i.fo, %i.fr
  %spec.store.select60.i = call i32 @llvm.usub.sat.i32(i32 %i.fs, i32 529)
  store i32 %i.fm, ptr %i.w, align 4, !tbaa !1956
  store i32 %spec.store.select60.i, ptr %i.x, align 8, !tbaa !1957
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  br i1 %i.eh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 32304
  store i32 1, ptr %i.ft, align 8, !tbaa !1969
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.ei, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 32308
  store i32 1, ptr %i.fu, align 4, !tbaa !1970
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 23020
  store i32 0, ptr %i.fv, align 4, !tbaa !1971
  %i.fw = zext i32 %i.da to i64
  %i.fx = load i64, ptr %i.v, align 8, !tbaa !1955
  %i.fy = add i64 %i.fx, %i.fw                    ; 2 uses
  store i64 %i.fy, ptr %i.v, align 8, !tbaa !1955
  store i64 %i.fy, ptr %i.t, align 8, !tbaa !1953
  store i8 0, ptr %i.i, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %.not300.i = icmp eq i32 %.0248.i, -1
  br i1 %.not300.i, label %ma_dr_mp3_init_internal.exit, label %bb.aq

.thread334.i:                                     ; preds = %.thread332.i, %ma_dr_mp3_bs_get_bits.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %ma_dr_mp3_init_internal.exit

bb.an:                                            ; preds = %.critedge304.i
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 32336
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !1972 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gc = load ptr, ptr %.sroa.7.0..sroa_idx364367.i, align 8, !tbaa !31 ; 2 uses
  %.not.i320.i = icmp eq ptr %i.gc, null
  br i1 %.not.i320.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gd = load ptr, ptr %i.o, align 8, !tbaa !25
  call void %i.gc(ptr noundef nonnull %i.ga, ptr noundef %i.gd) #55, !inline_history !1973
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  %i.ge = mul i32 %.0248.i, %i.cx
  %i.gf = zext i32 %i.ge to i64
  store i64 %i.gf, ptr %i.y, align 8, !tbaa !1958
  br label %ma_dr_mp3_init_internal.exit

ma_dr_mp3_init_internal.exit:                     ; preds = %.thread334.i, %bb.am, %bb.aq
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 23008
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 22928
  %i.gi = load <2 x i32>, ptr %i.gg, align 8, !tbaa !8
  store <2 x i32> %i.gi, ptr %i.gh, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %ma_dr_mp3_init_file_with_metadata_w.exit

bb.ar:                                            ; preds = %bb.ap, %ma_dr_mp3_copy_allocation_callbacks_or_defaults.exit.i, %bb.t, %bb.d, %bb.an, %bb.ao, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.gj = call i32 @fclose(ptr noundef %i.h)      ; 0 uses
  br label %ma_dr_mp3_init_file_with_metadata_w.exit

ma_dr_mp3_init_file_with_metadata_w.exit:         ; preds = %ma_dr_mp3_init_internal.exit, %bb.a, %bb.b, %bb.ar
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.ar ], [ 1, %ma_dr_mp3_init_internal.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 -10, 1) i32 @ma_mp3_init_memory(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp eq ptr %4, null
  br i1 %i.b, label %ma_mp3_init_internal.exit, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32504) %4, i8 0, i64 32504, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  store i32 5, ptr %i.c, align 8, !tbaa !1938
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.d = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  switch i32 %i.d, label %bb.d [
    i32 5, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  store i32 %i.d, ptr %i.c, align 8, !tbaa !1938
  br label %bb.d

bb.d:                                             ; preds = %ma_zero_memory_default.exit.i, %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  store ptr @g_ma_mp3_ds_vtable, ptr %4, align 8, !tbaa !353
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -1, ptr %i.f, align 8, !tbaa !354
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -1, ptr %i.g, align 8, !tbaa !355
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %4, ptr %i.h, align 8, !tbaa !356
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %i.j, i8 0, i64 32376, i1 false)
  %i.k = icmp eq ptr %0, null
  %i.l = icmp eq i64 %1, 0
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %ma_mp3_init_internal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32464
  store ptr %0, ptr %i.m, align 8, !tbaa !1962
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32472 ; 2 uses
  store i64 %1, ptr %i.n, align 8, !tbaa !1963
  %i.o = tail call fastcc i32 @ma_dr_mp3_init_internal(ptr noundef nonnull %i.j, ptr noundef nonnull @ma_dr_mp3__on_read_memory, ptr noundef nonnull @ma_dr_mp3__on_seek_memory, ptr noundef nonnull @ma_dr_mp3__on_tell_memory, ptr noundef null, ptr noundef nonnull %i.j, ptr noundef null, ptr noundef readonly %3)
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %ma_mp3_init_internal.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32368
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1954 ; 2 uses
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.g, label %ma_dr_mp3_init_memory.exit

bb.g:                                             ; preds = %bb.f
  store i64 %i.r, ptr %i.n, align 8, !tbaa !1963
  br label %ma_dr_mp3_init_memory.exit

ma_dr_mp3_init_memory.exit:                       ; preds = %bb.f, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32376
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1955
  %i.v = icmp ugt i64 %i.u, 4294967295
  br i1 %i.v, label %ma_mp3_init_internal.exit, label %bb.h

bb.h:                                             ; preds = %ma_dr_mp3_init_memory.exit
  %i.w = getelementptr i8, ptr %2, i64 4
  %.val = load i32, ptr %i.w, align 4, !tbaa !76  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i32 %.val, ptr %i.a, align 4, !tbaa !8
  %.not.i.i = icmp eq i32 %.val, 0
  br i1 %.not.i.i, label %ma_mp3_post_init.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = zext i32 %.val to i64
  %i.y = mul nuw nsw i64 %i.x, 24                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %3, null              ; 2 uses
  br i1 %.not.i.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22  ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not8.i.i.i, label %ma_mp3_post_init.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %3, align 8, !tbaa !25
  %i.ac = tail call ptr %i.aa(i64 noundef %i.y, ptr noundef %i.ab) #55, !inline_history !1974
  br label %ma_malloc.exit.i.i

bb.l:                                             ; preds = %bb.i
  %i.ad = tail call noalias noundef ptr @malloc(i64 noundef %i.y) #67
  br label %ma_malloc.exit.i.i

ma_malloc.exit.i.i:                               ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi ptr [ %i.ac, %bb.k ], [ %i.ad, %bb.l ] ; 6 uses
  %i.ae = icmp eq ptr %.0.i.i.i, null
  br i1 %i.ae, label %ma_mp3_post_init.exit, label %bb.m

bb.m:                                             ; preds = %ma_malloc.exit.i.i
  %i.af = call i32 @ma_dr_mp3_calculate_seek_points(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %.0.i.i.i)
  %.not19.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not19.not.i.i, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not9.i.i.i, label %ma_mp3_post_init.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = load ptr, ptr %3, align 8, !tbaa !25
  call void %i.ah(ptr noundef nonnull %.0.i.i.i, ptr noundef %i.ai) #55, !inline_history !1975
  br label %ma_mp3_post_init.exit

bb.q:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %.0.i.i.i) #55
  br label %ma_mp3_post_init.exit

bb.r:                                             ; preds = %bb.m
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !8   ; 3 uses
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32392
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32384
  %.17.i.i.i = select i1 %i.ak, ptr null, ptr %.0.i.i.i
  store i32 %i.aj, ptr %i.al, align 8, !tbaa !1976
  store ptr %.17.i.i.i, ptr %i.am, align 8, !tbaa !1977
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32488
  store i32 %i.aj, ptr %i.an, align 8, !tbaa !1978
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 32496
  store ptr %.0.i.i.i, ptr %i.ao, align 8, !tbaa !1979
  br label %ma_mp3_post_init.exit

ma_mp3_post_init.exit:                            ; preds = %bb.h, %bb.j, %ma_malloc.exit.i.i, %bb.o, %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_mp3_init_internal.exit

ma_mp3_init_internal.exit:                        ; preds = %bb.d, %bb.e, %bb.a, %ma_mp3_post_init.exit, %ma_dr_mp3_init_memory.exit
  %.1 = phi i32 [ -10, %ma_dr_mp3_init_memory.exit ], [ 0, %ma_mp3_post_init.exit ], [ -2, %bb.a ], [ -10, %bb.e ], [ -10, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ma_dr_mp3_init_memory(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_dr_mp3_init_memory_with_metadata.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %0, i8 0, i64 32376, i1 false)
  %i.b = icmp eq ptr %1, null
  %i.c = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %ma_dr_mp3_init_memory_with_metadata.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32352
  store ptr %1, ptr %i.d, align 8, !tbaa !1962
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32360 ; 2 uses
  store i64 %2, ptr %i.e, align 8, !tbaa !1963
  %i.f = tail call fastcc i32 @ma_dr_mp3_init_internal(ptr noundef %0, ptr noundef nonnull @ma_dr_mp3__on_read_memory, ptr noundef nonnull @ma_dr_mp3__on_seek_memory, ptr noundef nonnull @ma_dr_mp3__on_tell_memory, ptr noundef null, ptr noundef nonnull %0, ptr noundef null, ptr noundef readonly %3)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_dr_mp3_init_memory_with_metadata.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32256
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1954 ; 2 uses
  %i.j = icmp ult i64 %i.i, 4294967296
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.i, ptr %i.e, align 8, !tbaa !1963
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32264
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1955
  %i.m = icmp ult i64 %i.l, 4294967296
  %..i = zext i1 %i.m to i32
  br label %ma_dr_mp3_init_memory_with_metadata.exit

ma_dr_mp3_init_memory_with_metadata.exit:         ; preds = %bb.a, %bb.b, %bb.c, %bb.f
  %.0.i = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %..i, %bb.f ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define void @ma_mp3_uninit(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 23048
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1948
  %i.d = icmp eq ptr %i.c, @ma_dr_mp3__on_read_stdio
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 23072 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1951 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  store ptr null, ptr %i.e, align 8, !tbaa !1951
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32448
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1972 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 23088
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %ma_dr_mp3_uninit.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 23112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31   ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %ma_dr_mp3_uninit.exit, label %bb.g
end_hunk_16
begin_hunk_17_@ma_noise_read_pcm_frames:bb.a
bb.at:                                            ; preds = %.preheader139, %bb.at
  %indvars.iv280 = phi i64 [ 0, %.preheader139 ], [ %indvars.iv.next281, %bb.at ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.yc = load i32, ptr %i.xb, align 8, !tbaa !61
  %i.yd = mul i32 %i.yc, 48271
  %i.ye = urem i32 %i.yd, 2147483647              ; 2 uses
  store i32 %i.ye, ptr %i.xb, align 8, !tbaa !61
  %i.yf = uitofp nneg i32 %i.ye to double
  %i.yg = fdiv double %i.yf, f0x41DFFFFFFFC00000
  %i.yh = load ptr, ptr %i.xc, align 8, !tbaa !9
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %indvars.iv280 ; 2 uses
  %i.yj = load double, ptr %i.yi, align 8, !tbaa !774
  %i.yk = fadd double %i.yj, %i.yg
  %i.yl = fdiv double %i.yk, 1.005000e+00         ; 2 uses
  store double %i.yl, ptr %i.yi, align 8, !tbaa !774
  %i.ym = fdiv double %i.yl, 2.000000e+01
  %i.yn = load double, ptr %i.xd, align 8, !tbaa !2214
  %i.yo = fmul double %i.yn, %i.ym
  %i.yp = fptrunc double %i.yo to float
  store float %i.yp, ptr %i.b, align 4, !tbaa !336
  %i.yq = trunc nuw i64 %indvars.iv280 to i32
  %i.yr = mul i32 %i.wx, %i.yq
  %i.ys = zext i32 %i.yr to i64
  %i.yt = getelementptr i8, ptr %i.yb, i64 %i.ys
  %i.yu = load i32, ptr %i.sz, align 8, !tbaa !2217
  call void @ma_pcm_convert(ptr noundef %i.yt, i32 noundef %i.yu, ptr noundef nonnull %i.b, i32 noundef 5, i64 noundef 1, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next281, %wide.trip.count283
  br i1 %exitcond284.not, label %bb.au, label %bb.at, !llvm.loop !2262

bb.au:                                            ; preds = %bb.at
  %i.yv = add nuw i64 %.592.i44177, 1             ; 2 uses
  %exitcond285.not = icmp eq i64 %i.yv, %2
  br i1 %exitcond285.not, label %ma_noise_read_pcm_frames__white.exit, label %.preheader139, !llvm.loop !2263

.ma_noise_read_pcm_frames__white.exit.loopexit116_crit_edge: ; preds = %bb.i
  store i32 %i.ao, ptr %i.s, align 8, !tbaa !61
  br label %ma_noise_read_pcm_frames__white.exit

.ma_noise_read_pcm_frames__white.exit.loopexit118_crit_edge: ; preds = %.loopexit
  store i32 %i.y, ptr %i.s, align 8, !tbaa !61
  br label %ma_noise_read_pcm_frames__white.exit

.ma_noise_read_pcm_frames__white.exit.loopexit121_crit_edge: ; preds = %bb.l
  store i32 %i.by, ptr %i.ax, align 8, !tbaa !61
  br label %ma_noise_read_pcm_frames__white.exit

.ma_noise_read_pcm_frames__white.exit.loopexit123_crit_edge: ; preds = %.loopexit515
  store i32 %i.be, ptr %i.ax, align 8, !tbaa !61
  br label %ma_noise_read_pcm_frames__white.exit

.ma_noise_read_pcm_frames__white.exit.loopexit146_crit_edge: ; preds = %bb.am
  store i32 %i.ui, ptr %i.tg, align 8, !tbaa !61
  br label %ma_noise_read_pcm_frames__white.exit

.ma_noise_read_pcm_frames__white.exit.loopexit148_crit_edge: ; preds = %.loopexit518
  store i32 %i.tm, ptr %i.tg, align 8, !tbaa !61
  br label %ma_noise_read_pcm_frames__white.exit

.ma_noise_read_pcm_frames__white.exit.loopexit151_crit_edge: ; preds = %bb.ap
  store i32 %i.wf, ptr %i.uy, align 8, !tbaa !61
  br label %ma_noise_read_pcm_frames__white.exit

.ma_noise_read_pcm_frames__white.exit.loopexit153_crit_edge: ; preds = %.loopexit519
  store i32 %i.vf, ptr %i.uy, align 8, !tbaa !61
  br label %ma_noise_read_pcm_frames__white.exit

ma_noise_read_pcm_frames__white.exit:             ; preds = %bb.as, %bb.au, %.loopexit517, %bb.ab, %.loopexit516, %bb.w, %bb.af, %bb.ai, %bb.o, %bb.q, %.ma_noise_read_pcm_frames__white.exit.loopexit153_crit_edge, %.ma_noise_read_pcm_frames__white.exit.loopexit151_crit_edge, %.ma_noise_read_pcm_frames__white.exit.loopexit148_crit_edge, %.ma_noise_read_pcm_frames__white.exit.loopexit146_crit_edge, %.ma_noise_read_pcm_frames__white.exit.loopexit123_crit_edge, %.ma_noise_read_pcm_frames__white.exit.loopexit121_crit_edge, %.ma_noise_read_pcm_frames__white.exit.loopexit118_crit_edge, %.ma_noise_read_pcm_frames__white.exit.loopexit116_crit_edge, %bb.d
  br i1 %.not, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %ma_noise_read_pcm_frames__white.exit
  store i64 %2, ptr %3, align 8, !tbaa !69
  br label %bb.aw

bb.aw:                                            ; preds = %ma_noise_read_pcm_frames__white.exit, %bb.av, %bb.e, %bb.c
  %.019 = phi i32 [ 0, %ma_noise_read_pcm_frames__white.exit ], [ -2, %bb.c ], [ -3, %bb.e ], [ 0, %bb.av ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_resource_manager_pipeline_notifications_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_resource_manager_pipeline_notifications) align 8 captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_resource_manager_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_resource_manager_config) align 8 captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 104, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1024, ptr %i.b, align 8, !tbaa !2264
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.91.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  store i32 4, ptr %.sroa.91.0..sroa_idx, align 8, !tbaa !8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 0, ptr %.sroa.10.0..sroa_idx, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.d, align 4, !tbaa !2266
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -51, 1) i32 @ma_resource_manager_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %2 = alloca %struct.ma_job_queue_config, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_job_queue_init.exit.thread, label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1144) %1, i8 0, i64 1144, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_job_queue_init.exit.thread, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !2267
  %i.e = icmp ugt i32 %i.d, 64
  br i1 %i.e, label %ma_job_queue_init.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(152) %0, i64 152, i1 false), !tbaa.struct !2268
  %i.f = load ptr, ptr %0, align 8, !tbaa !25
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.j = icmp eq ptr %i.i, null                   ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.j, label %bb.e, label %.thread22.i

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %ma_allocation_callbacks_init_copy.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %ma_allocation_callbacks_init_copy.exit

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %1, align 8, !tbaa !33
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @ma__malloc_default, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @ma__realloc_default, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @ma__free_default, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !33
  br label %ma_allocation_callbacks_init_copy.exit

bb.h:                                             ; preds = %bb.c
  br i1 %i.j, label %ma_allocation_callbacks_init_copy.exit, label %.thread22.i

.thread22.i:                                      ; preds = %bb.h, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread22.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %ma_allocation_callbacks_init_copy.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread22.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !35
  br label %ma_allocation_callbacks_init_copy.exit

ma_allocation_callbacks_init_copy.exit:           ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2269
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.k, label %bb.s

bb.k:                                             ; preds = %ma_allocation_callbacks_init_copy.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1000 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.z, i8 0, i64 104, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %i.ab = load ptr, ptr %1, align 8, !tbaa !25
  %i.ac = icmp eq ptr %i.ab, null
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.af = icmp eq ptr %i.ae, null                 ; 2 uses
  br i1 %i.ac, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  br i1 %i.af, label %bb.m, label %.thread22.i.i

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.n, label %ma_allocation_callbacks_init_copy.exit.i

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.o, label %ma_allocation_callbacks_init_copy.exit.i

bb.o:                                             ; preds = %bb.n
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1080
  store ptr @ma__malloc_default, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1088
  store ptr @ma__realloc_default, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1096
  store ptr @ma__free_default, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !33
  br label %ma_allocation_callbacks_init_copy.exit.i

bb.p:                                             ; preds = %bb.k
  br i1 %i.af, label %ma_allocation_callbacks_init_copy.exit.i, label %.thread22.i.i

.thread22.i.i:                                    ; preds = %bb.p, %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !22
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread22.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %ma_allocation_callbacks_init_copy.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread22.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !35
  br label %ma_allocation_callbacks_init_copy.exit.i

ma_allocation_callbacks_init_copy.exit.i:         ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.as, i8 0, i64 40, i1 false)
  %i.at = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.as, ptr noundef null) #55 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i, label %.sink.split, label %ma_log_init.exit

ma_log_init.exit:                                 ; preds = %ma_allocation_callbacks_init_copy.exit.i
  %i.au = tail call fastcc i32 @ma_result_from_errno(i32 noundef %i.at)
  %i.av = icmp eq i32 %i.au, 0
  %spec.select = select i1 %i.av, ptr %i.z, ptr null
  br label %.sink.split

.sink.split:                                      ; preds = %ma_log_init.exit, %ma_allocation_callbacks_init_copy.exit.i
  %.sink = phi ptr [ %spec.select, %ma_log_init.exit ], [ %i.z, %ma_allocation_callbacks_init_copy.exit.i ]
  store ptr %.sink, ptr %i.w, align 8, !tbaa !2269
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %ma_allocation_callbacks_init_copy.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2272
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 2 uses
  store ptr @ma_default_vfs_open, ptr %i.az, align 8, !tbaa !1559
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 912
  store ptr @ma_default_vfs_open_w, ptr %i.ba, align 8, !tbaa !1561
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 920
  store ptr @ma_default_vfs_close, ptr %i.bb, align 8, !tbaa !1562
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 928
  store ptr @ma_default_vfs_read, ptr %i.bc, align 8, !tbaa !1563
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 936
  store ptr @ma_default_vfs_write, ptr %i.bd, align 8, !tbaa !1564
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 944
  store ptr @ma_default_vfs_seek, ptr %i.be, align 8, !tbaa !1565
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 952
  store ptr @ma_default_vfs_tell, ptr %i.bf, align 8, !tbaa !1566
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 960
  store ptr @ma_default_vfs_info, ptr %i.bg, align 8, !tbaa !1567
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 2 uses
  %i.bi = load ptr, ptr %1, align 8, !tbaa !25
  %i.bj = icmp eq ptr %i.bi, null
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !31
  %i.bm = icmp eq ptr %i.bl, null                 ; 2 uses
  br i1 %i.bj, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  br i1 %i.bm, label %bb.v, label %.thread22.i.i92

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !22
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.w, label %ma_default_vfs_init.exit

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !34
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.x, label %ma_default_vfs_init.exit

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %i.bh, align 8, !tbaa !33
  %.sroa.4.0..sroa_idx.i.i95 = getelementptr inbounds nuw i8, ptr %1, i64 976
  store ptr @ma__malloc_default, ptr %.sroa.4.0..sroa_idx.i.i95, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx.i.i96 = getelementptr inbounds nuw i8, ptr %1, i64 984
  store ptr @ma__realloc_default, ptr %.sroa.5.0..sroa_idx.i.i96, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx.i.i97 = getelementptr inbounds nuw i8, ptr %1, i64 992
  store ptr @ma__free_default, ptr %.sroa.6.0..sroa_idx.i.i97, align 8, !tbaa !33
  br label %ma_default_vfs_init.exit

bb.y:                                             ; preds = %bb.t
  br i1 %i.bm, label %ma_default_vfs_init.exit, label %.thread22.i.i92

.thread22.i.i92:                                  ; preds = %bb.y, %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !22
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread22.i.i92
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !34
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %ma_default_vfs_init.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread22.i.i92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !35
  br label %ma_default_vfs_init.exit

ma_default_vfs_init.exit:                         ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !2272
  br label %bb.ab

bb.ab:                                            ; preds = %ma_default_vfs_init.exit, %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !2273 ; 3 uses
  %i.cb = and i32 %i.ca, 2
  %.not81 = icmp eq i32 %i.cb, 0
  br i1 %.not81, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = or i32 %i.ca, 1                         ; 2 uses
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !2273
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !2274
  %.not82 = icmp eq i32 %i.ce, 0
  br i1 %.not82, label %bb.ad, label %ma_job_queue_init.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cf = phi i32 [ %i.cc, %bb.ac ], [ %i.ca, %bb.ab ]
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !2275 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !76
  store i32 0, ptr %2, align 4, !tbaa !81
  %i.cj = and i32 %i.cf, 1
  %.not83 = icmp eq i32 %i.cj, 0
  br i1 %.not83, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !2274
  %.not84 = icmp eq i32 %i.cl, 0
  br i1 %.not84, label %bb.af, label %ma_job_queue_init.exit.thread

bb.af:                                            ; preds = %bb.ae
  store i32 1, ptr %2, align 4, !tbaa !81
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 4 uses
  %i.cn = icmp eq i32 %i.ch, 0
  br i1 %i.cn, label %ma_job_queue_init.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !22 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.cp, null
  br i1 %.not8.i.i, label %ma_job_queue_init.exit.thread, label %ma_malloc.exit.i

ma_malloc.exit.i:                                 ; preds = %bb.ah
  %i.cq = zext i32 %i.ch to i64                   ; 2 uses
  %i.cr = shl nuw nsw i64 %i.cq, 2
  %i.cs = add nuw nsw i64 %i.cr, 4
  %i.ct = and i64 %i.cs, 34359738360
  %i.cu = mul nuw nsw i64 %i.cq, 104
  %i.cv = add nuw nsw i64 %i.ct, %i.cu
  %i.cw = lshr i32 %i.ch, 5
  %i.cx = and i32 %i.ch, 31
  %.not.i.i.i.i.i.i = icmp ne i32 %i.cx, 0
  %i.cy = zext i1 %.not.i.i.i.i.i.i to i32
  %spec.select.i.i.i.i.i.i = add nuw nsw i32 %i.cw, %i.cy
  %i.cz = shl nuw nsw i32 %spec.select.i.i.i.i.i.i, 2
  %narrow.i.i.i.i.i = add nuw nsw i32 %i.cz, 4
  %i.da = and i32 %narrow.i.i.i.i.i, 2147483640
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = add nuw nsw i64 %i.cv, %i.db
  %i.dd = load ptr, ptr %1, align 8, !tbaa !25
  %i.de = tail call ptr %i.cp(i64 noundef %i.dc, ptr noundef %i.dd) #55, !inline_history !2276 ; 3 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %ma_job_queue_init.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %ma_malloc.exit.i
  %i.dg = call i32 @ma_job_queue_init_preallocated(ptr noundef nonnull readonly %2, ptr noundef nonnull %i.de, ptr noundef nonnull %i.cm) ; 3 uses
  %.not19.i = icmp eq i32 %i.dg, 0
  br i1 %.not19.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.di, null
  br i1 %.not9.i.i, label %ma_job_queue_init.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dj = load ptr, ptr %1, align 8, !tbaa !25
  call void %i.di(ptr noundef nonnull %i.de, ptr noundef %i.dj) #55, !inline_history !2277
  br label %ma_job_queue_init.exit.thread

bb.al:                                            ; preds = %bb.ai
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 896
  store i32 1, ptr %i.dk, align 8, !tbaa !87
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !2278
  %.not86 = icmp eq ptr %i.dm, null
  br i1 %.not86, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !2279 ; 2 uses
  %.not87 = icmp eq i32 %i.do, 0
  br i1 %.not87, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dp = zext i32 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 3                ; 2 uses
  %i.dr = load ptr, ptr %i.co, align 8, !tbaa !22 ; 2 uses
  %.not8.i = icmp eq ptr %i.dr, null
  br i1 %.not8.i, label %ma_malloc.exit, label %bb.ao

end_hunk_17
begin_hunk_18_@ma_engine_node_init_preallocated:bb.a

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !2499   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ma_engine_get_listener_count.exit.thread, label %ma_engine_get_listener_count.exit

ma_engine_get_listener_count.exit:                ; preds = %bb.c
  %i.j = zext i8 %i.g to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 780
  %i.l = load i32, ptr %i.k, align 4, !tbaa !2515
  %.not92 = icmp ugt i32 %i.l, %i.j
  br i1 %.not92, label %bb.d, label %ma_engine_get_listener_count.exit.thread

bb.d:                                             ; preds = %ma_engine_get_listener_count.exit, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 944
  store ptr %1, ptr %i.m, align 8, !tbaa !2516
  %i.n = load i64, ptr %3, align 8, !tbaa !1328   ; 2 uses
  %i.o = icmp ne ptr %1, null
  %i.p = icmp ne i64 %i.n, 0
  %or.cond.i = and i1 %i.o, %i.p
  br i1 %or.cond.i, label %bb.e, label %ma_zero_memory_default.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.n, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.d, %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !2499   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !2519
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !2509 ; 2 uses
  %.not93 = icmp eq i32 %i.t, 0
  br i1 %.not93, label %bb.f, label %ma_engine_get_sample_rate.exit

bb.f:                                             ; preds = %ma_zero_memory_default.exit
  %i.u = icmp eq ptr %i.q, null
  br i1 %i.u, label %ma_engine_get_sample_rate.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 776
  %i.w = load i32, ptr %i.v, align 8, !tbaa !2510
  br label %ma_engine_get_sample_rate.exit

ma_engine_get_sample_rate.exit:                   ; preds = %bb.g, %bb.f, %ma_zero_memory_default.exit
  %i.x = phi i32 [ %i.t, %ma_zero_memory_default.exit ], [ %i.w, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  store i32 %i.x, ptr %i.y, align 8, !tbaa !2520
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 372
  %i.ab = load <2 x i32>, ptr %i.z, align 8, !tbaa !8
  store <2 x i32> %i.ab, ptr %i.aa, align 4, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 880
  store atomic volatile i32 1065353216, ptr %i.ac seq_cst, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 884
  store <2 x float> splat (float 1.000000e+00), ptr %i.ad, align 4, !tbaa !336
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 892
  store float 1.000000e+00, ptr %i.ae, align 4, !tbaa !2521
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 2 uses
  %i.ah = load <2 x i8>, ptr %i.af, align 8, !tbaa !9
  %i.ai = zext <2 x i8> %i.ah to <2 x i32>
  store <2 x i32> %i.ai, ptr %i.ag, align 8, !tbaa !8
  %i.aj = load i8, ptr %i.f, align 2, !tbaa !2514
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 904
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !2522
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 912
  store atomic volatile i32 1065353216, ptr %i.am seq_cst, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 916
  store atomic volatile i32 1065353216, ptr %i.an seq_cst, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 920
  store atomic i64 -1, ptr %i.ao seq_cst, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 928
  store atomic i64 -1, ptr %i.ap seq_cst, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !2511 ; 2 uses
  %.not94 = icmp eq i32 %i.ar, 0
  br i1 %.not94, label %bb.h, label %ma_engine_get_channels.exit

bb.h:                                             ; preds = %ma_engine_get_sample_rate.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !2499  ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %ma_engine_get_channels.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 380
  %i.av = load i32, ptr %i.au, align 4, !tbaa !2404
  %.not.i.not.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.not.i.i, label %ma_engine_get_channels.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 392
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2411
  %i.ay = getelementptr i8, ptr %i.ax, i64 9
  %.val.i.i.i = load i8, ptr %i.ay, align 1, !tbaa !2420
  %i.az = zext i8 %.val.i.i.i to i32
  br label %ma_engine_get_channels.exit

ma_engine_get_channels.exit:                      ; preds = %bb.j, %bb.i, %bb.h, %ma_engine_get_sample_rate.exit
  %i.ba = phi i32 [ %i.ar, %ma_engine_get_sample_rate.exit ], [ 0, %bb.h ], [ %i.az, %bb.j ], [ 0, %bb.i ]
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !2512 ; 2 uses
  %.not95 = icmp eq i32 %i.bc, 0
  br i1 %.not95, label %bb.k, label %ma_engine_get_channels.exit112

bb.k:                                             ; preds = %ma_engine_get_channels.exit
  %i.bd = load ptr, ptr %0, align 8, !tbaa !2499  ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %ma_engine_get_channels.exit112, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 380
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !2404
  %.not.i.not.i.i109 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.not.i.i109, label %ma_engine_get_channels.exit112, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 392
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2411
  %i.bj = getelementptr i8, ptr %i.bi, i64 9
  %.val.i.i.i110 = load i8, ptr %i.bj, align 1, !tbaa !2420
  %i.bk = zext i8 %.val.i.i.i110 to i32
  br label %ma_engine_get_channels.exit112

ma_engine_get_channels.exit112:                   ; preds = %bb.m, %bb.l, %bb.k, %ma_engine_get_channels.exit
  %i.bl = phi i32 [ %i.bc, %ma_engine_get_channels.exit ], [ 0, %bb.k ], [ %i.bk, %bb.m ], [ 0, %bb.l ]
  store i32 %i.bl, ptr %i.b, align 4, !tbaa !8
  %i.bm = icmp eq ptr %i.q, null
  br i1 %i.bm, label %ma_engine_get_sample_rate.exit114, label %bb.n

bb.n:                                             ; preds = %ma_engine_get_channels.exit112
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 776
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !2510
  br label %ma_engine_get_sample_rate.exit114

ma_engine_get_sample_rate.exit114:                ; preds = %ma_engine_get_channels.exit112, %bb.n
  %.0.i113 = phi i32 [ %i.bo, %bb.n ], [ 0, %ma_engine_get_channels.exit112 ]
  %.not96 = icmp eq i32 %i.x, %.0.i113
  br i1 %.not96, label %ma_engine_node_base_node_config_init.exit, label %bb.o

bb.o:                                             ; preds = %ma_engine_get_sample_rate.exit114
  store i32 0, ptr %i.ag, align 8, !tbaa !2523
  br label %ma_engine_node_base_node_config_init.exit

ma_engine_node_base_node_config_init.exit:        ; preds = %bb.o, %ma_engine_get_sample_rate.exit114
  %i.bp = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.bp, align 8, !tbaa !2502
  %i.bq = icmp eq i32 %.val, 0                    ; 2 uses
  %.sroa.9133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %.sroa.9133.0..sroa_idx, align 4
  %g_ma_engine_node_vtable__sound.g_ma_engine_node_vtable__group = select i1 %i.bq, ptr @g_ma_engine_node_vtable__sound, ptr @g_ma_engine_node_vtable__group
  %. = zext i1 %i.bq to i32
  store ptr %g_ma_engine_node_vtable__sound.g_ma_engine_node_vtable__group, ptr %4, align 8, !tbaa !33
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %., ptr %.sroa.4130.0..sroa_idx, align 8, !tbaa !8
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 255, ptr %.sroa.5131.0..sroa_idx, align 4, !tbaa !8
  %.sroa.7132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 255, ptr %.sroa.7132.0..sroa_idx, align 8, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.a, ptr %i.br, align 8, !tbaa !2389
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.b, ptr %i.bs, align 8, !tbaa !2388
  %i.bt = load ptr, ptr %0, align 8, !tbaa !2499
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !1336
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv
  %i.bx = call i32 @ma_node_init_preallocated(ptr noundef %i.bt, ptr noundef nonnull %4, ptr noundef %i.bw, ptr noundef nonnull %2) ; 2 uses
  %.not97 = icmp eq i32 %i.bx, 0
  br i1 %.not97, label %bb.p, label %ma_engine_get_listener_count.exit.thread

bb.p:                                             ; preds = %ma_engine_node_base_node_config_init.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.by, i64 48, i1 false), !tbaa.struct !2035
  store i32 5, ptr %5, align 8, !tbaa !252
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !253
  %i.cb = load i32, ptr %i.y, align 8, !tbaa !2520 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.cb, ptr %i.cc, align 8, !tbaa !254
  %i.cd = load ptr, ptr %i.r, align 8, !tbaa !2519 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %ma_engine_get_sample_rate.exit116, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 776
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !2510
  br label %ma_engine_get_sample_rate.exit116

ma_engine_get_sample_rate.exit116:                ; preds = %bb.p, %bb.q
  %.0.i115 = phi i32 [ %i.cg, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %.0.i115, ptr %i.ch, align 4, !tbaa !255
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !1331
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 424 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %i.cl, i8 0, i64 192, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 600 ; 2 uses
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !172
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 448
  store i32 5, ptr %i.cn, align 8, !tbaa !1463
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 452
  store i32 %i.bz, ptr %i.co, align 4, !tbaa !1464
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 456
  store i32 %i.cb, ptr %i.cp, align 8, !tbaa !1314
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 460
  store i32 %.0.i115, ptr %i.cq, align 4, !tbaa !1315
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 432 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 440 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false)
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !256
  switch i32 %i.cu, label %ma_resampler_uninit.exit [
    i32 0, label %.thread.i
    i32 1, label %bb.r
  ]

.thread.i:                                        ; preds = %ma_engine_get_sample_rate.exit116
  store ptr @g_ma_linear_resampler_vtable, ptr %i.cr, align 8, !tbaa !33
  store ptr %i.cl, ptr %i.cs, align 8, !tbaa !33
  br label %bb.s

bb.r:                                             ; preds = %ma_engine_get_sample_rate.exit116
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1306 ; 3 uses
  store ptr %i.cw, ptr %i.cr, align 8, !tbaa !33
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1307 ; 2 uses
  store ptr %i.cy, ptr %i.cs, align 8, !tbaa !33
  %i.cz = icmp eq ptr %i.cw, null
  br i1 %i.cz, label %ma_resampler_uninit.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread.i
  %i.da = phi ptr [ %i.cl, %.thread.i ], [ %i.cy, %bb.r ]
  %i.db = phi ptr [ @g_ma_linear_resampler_vtable, %.thread.i ], [ %i.cw, %bb.r ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1309 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %ma_resampler_uninit.exit, label %ma_resampler_init_preallocated.exit

ma_resampler_init_preallocated.exit:              ; preds = %bb.s
  %i.df = call i32 %i.dd(ptr noundef %i.da, ptr noundef nonnull %5, ptr noundef %i.ck, ptr noundef nonnull %i.cl) #55, !inline_history !1311 ; 2 uses
  %.not98 = icmp eq i32 %i.df, 0
  br i1 %.not98, label %bb.t, label %ma_resampler_uninit.exit

bb.t:                                             ; preds = %ma_resampler_init_preallocated.exit
  %i.dg = load i32, ptr %i.a, align 4, !tbaa !8   ; 3 uses
  %i.dh = load ptr, ptr %i.r, align 8, !tbaa !2519 ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %ma_engine_get_sample_rate.exit119, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 776
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !2510
  br label %ma_engine_get_sample_rate.exit119

ma_engine_get_sample_rate.exit119:                ; preds = %bb.t, %bb.u
  %.0.i118 = phi i32 [ %i.dk, %bb.u ], [ 0, %bb.t ]
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 404
  store i32 0, ptr %i.dm, align 4
  %.sroa.0.sroa.3.0.insert.ext.i = zext i32 %i.dg to i64
  %.sroa.0.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.3.0.insert.ext.i, 32
  %.sroa.0136.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i, 5
  store i64 %.sroa.0136.sroa.0.0.insert.insert, ptr %i.dl, align 8
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 392
  store i32 %.0.i118, ptr %.sroa.5137.0..sroa_idx, align 8, !tbaa !8
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 396
  store <2 x float> splat (float 1.000000e+00), ptr %i.dn, align 4, !tbaa !336
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, i8 0, i64 16, i1 false)
  %.val107.val = load i32, ptr %i.b, align 4, !tbaa !8
  store i32 %i.dg, ptr %6, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.val107.val, ptr %.sroa.4.0..sroa_idx128, align 4, !tbaa !8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !520
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float f0x7F7FFFFF>, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !336
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 44
  store <4 x float> <float 1.000000e+00, float f0x40C90FDA, float f0x40C90FDA, float 0.000000e+00>, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !336
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 60
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !336
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 68
  store float 2.000000e-01, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !336
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store i64 360, ptr %.sroa.20.0..sroa_idx, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 1284
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !2524
  store i32 %i.dq, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !1139
  %i.dr = icmp eq i32 %i.dg, 2
  br i1 %i.dr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %ma_engine_get_sample_rate.exit119
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1134
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %ma_engine_get_sample_rate.exit119
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !1332
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 616 ; 2 uses
  %i.dw = call i32 @ma_spatializer_init_preallocated(ptr noundef nonnull %6, ptr noundef %i.du, ptr noundef nonnull %i.dv) ; 2 uses
  %.not100 = icmp eq i32 %i.dw, 0
  br i1 %.not100, label %bb.x, label %ma_fader_init.exit

bb.x:                                             ; preds = %bb.w
  %i.dx = load i32, ptr %i.b, align 4, !tbaa !8
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 816
  store i32 5, ptr %i.dy, align 8, !tbaa !1055
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 820
  store i32 %i.dx, ptr %i.dz, align 4, !tbaa !1054
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 824
  store i32 0, ptr %i.ea, align 8, !tbaa !1051
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 828
  store float 0.000000e+00, ptr %i.eb, align 4, !tbaa !1053
  %i.ec = load i32, ptr %i.z, align 8, !tbaa !2513 ; 2 uses
  %.not102 = icmp eq i32 %i.ec, 0
  br i1 %.not102, label %ma_engine_get_listener_count.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ed = load i32, ptr %i.a, align 4, !tbaa !8
  %.sroa.3.0.insert.ext.i = zext i32 %i.ec to i64
  %.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.3.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ed to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %7, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !1333
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 832
  %i.ei = call i32 @ma_gainer_init_preallocated(ptr noundef nonnull %7, ptr noundef %i.eg, ptr noundef nonnull %i.eh) ; 2 uses
  %.not103 = icmp eq i32 %i.ei, 0
  br i1 %.not103, label %ma_engine_get_listener_count.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @ma_spatializer_uninit(ptr noundef nonnull %i.dv, ptr noundef null)
  br label %ma_fader_init.exit

ma_fader_init.exit:                               ; preds = %bb.w, %bb.z
  %.1 = phi i32 [ %i.ei, %bb.z ], [ %i.dw, %bb.w ] ; 5 uses
  %i.ej = load ptr, ptr %i.cr, align 8, !tbaa !165 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %ma_resampler_uninit.exit, label %bb.aa

bb.aa:                                            ; preds = %ma_fader_init.exit
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !166 ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %ma_resampler_uninit.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eo = load ptr, ptr %i.cs, align 8, !tbaa !168
  %i.ep = load ptr, ptr %i.cl, align 8, !tbaa !169
  call void %i.em(ptr noundef %i.eo, ptr noundef %i.ep, ptr noundef null) #55, !inline_history !359
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !171
  %.not.i127 = icmp eq i32 %i.er, 0
  br i1 %.not.i127, label %ma_resampler_uninit.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.es = load ptr, ptr %i.cm, align 8, !tbaa !172 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %ma_resampler_uninit.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @free(ptr noundef nonnull %i.es) #55
  br label %ma_resampler_uninit.exit

ma_resampler_uninit.exit:                         ; preds = %bb.s, %ma_engine_get_sample_rate.exit116, %bb.r, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %ma_fader_init.exit, %ma_resampler_init_preallocated.exit
  %.2 = phi i32 [ %i.df, %ma_resampler_init_preallocated.exit ], [ %.1, %bb.ad ], [ %.1, %ma_fader_init.exit ], [ %.1, %bb.aa ], [ %.1, %bb.ab ], [ %.1, %bb.ac ], [ -29, %bb.s ], [ -2, %ma_engine_get_sample_rate.exit116 ], [ -29, %bb.r ]
  call void @ma_node_uninit(ptr noundef nonnull %2, ptr noundef null)
  br label %ma_engine_get_listener_count.exit.thread

ma_engine_get_listener_count.exit.thread:         ; preds = %bb.c, %ma_resampler_uninit.exit, %ma_engine_node_base_node_config_init.exit, %bb.x, %bb.y, %ma_engine_get_listener_count.exit, %ma_zero_memory_default.exit105, %bb.a
  %.0 = phi i32 [ -2, %ma_engine_get_listener_count.exit ], [ -2, %bb.a ], [ %i.e, %ma_zero_memory_default.exit105 ], [ 0, %bb.x ], [ 0, %bb.y ], [ %i.bx, %ma_engine_node_base_node_config_init.exit ], [ %.2, %ma_resampler_uninit.exit ], [ -2, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ma_engine_get_listener_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
end_hunk_18
begin_hunk_19_@ma_engine_play_sound:bb.a
; Function Attrs: nounwind uwtable
define i32 @ma_sound_init_from_file_internal(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef initializes((1016, 1024)) %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.ma_sound_config, align 8    ; 6 uses
  %4 = alloca %struct.ma_resource_manager_pipeline_notifications, align 8 ; 5 uses
  %5 = alloca %struct.ma_resource_manager_data_source_config, align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !2603 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = load i32, ptr %i.c, align 8, !tbaa !2613
  %.not = icmp eq i32 %i.d, 0
  %spec.select.v = select i1 %.not, i32 8, i32 40
  %spec.select = or i32 %spec.select.v, %i.b      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %.not8.i = icmp eq ptr %i.g, null
  br i1 %.not8.i, label %ma_malloc.exit.thread, label %ma_malloc.exit

ma_malloc.exit.thread:                            ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1016
  store ptr null, ptr %i.h, align 8, !tbaa !2593
  br label %ma_fence_release.exit

ma_malloc.exit:                                   ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.j = tail call ptr %i.g(i64 noundef 744, ptr noundef %i.i) #55, !inline_history !26 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1016 ; 6 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !2593
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %ma_fence_release.exit, label %bb.b

bb.b:                                             ; preds = %ma_malloc.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !tbaa.struct !35
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2605 ; 3 uses
  %i.p = icmp ne ptr %i.o, null
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null                   ; 2 uses
  %or.cond = select i1 %i.p, i1 %i.s, i1 false
  br i1 %or.cond, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  store ptr %i.o, ptr %i.q, align 8, !tbaa !2317
  br label %.preheader.i

bb.c:                                             ; preds = %bb.b
  br i1 %i.s, label %ma_fence_acquire.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.thread
  %i.t = phi ptr [ %i.o, %.thread ], [ %i.r, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i
  %i.v = load atomic i32, ptr %i.u seq_cst, align 8 ; 2 uses
  %i.w = add i32 %i.v, 1                          ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %ma_fence_acquire.exit.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = cmpxchg weak ptr %i.u, i32 %i.v, i32 %i.w seq_cst seq_cst, align 8 ; 2 uses
  %i.z = extractvalue { i32, i1 } %i.y, 1
  %i.aa = extractvalue { i32, i1 } %i.y, 0
  %.not.i = icmp eq i32 %i.aa, 2147483647
  %or.cond68 = select i1 %i.z, i1 true, i1 %.not.i
  br i1 %or.cond68, label %ma_fence_acquire.exit.loopexit, label %bb.d

ma_fence_acquire.exit.loopexit:                   ; preds = %bb.d, %bb.e
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !2593
  br label %ma_fence_acquire.exit

ma_fence_acquire.exit:                            ; preds = %ma_fence_acquire.exit.loopexit, %bb.c
  %i.ab = phi ptr [ %.pre, %ma_fence_acquire.exit.loopexit ], [ %i.j, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.af = load <2 x ptr>, ptr %1, align 8, !tbaa !33
  store <2 x ptr> %i.af, ptr %5, align 16, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 %spec.select, ptr %i.ag, align 16, !tbaa !2316
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %i.ah, align 16, !tbaa !2310
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !tbaa !69
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = load <2 x i64>, ptr %i.al, align 8, !tbaa !69
  store <2 x i64> %i.am, ptr %i.ac, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !2536
  store i64 %i.ao, ptr %i.ad, align 8, !tbaa !2308
  %i.ap = lshr i32 %spec.select, 5
  %.lobit = and i32 %i.ap, 1                      ; 2 uses
  store i32 %.lobit, ptr %i.ae, align 4, !tbaa !2309
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2551 ; 3 uses
  %i.as = icmp eq ptr %i.ab, null
  br i1 %i.as, label %ma_free.exit, label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %ma_fence_acquire.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(744) %i.ab, i8 0, i64 744, i1 false)
  %i.at = icmp eq ptr %i.ar, null
  br i1 %i.at, label %ma_resource_manager_data_source_init_ex.exit.thread, label %bb.f

bb.f:                                             ; preds = %ma_zero_memory_default.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 728
  %.not.i.i = icmp eq i32 %.lobit, 0
  %i.av = or i32 %i.b, 40
  %spec.select69 = select i1 %.not.i.i, i32 %spec.select, i32 %i.av
  store i32 %spec.select69, ptr %i.au, align 8, !tbaa !2375
  %i.aw = and i32 %i.b, 1
  %.not13.i = icmp eq i32 %i.aw, 0
  br i1 %.not13.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = call i32 @ma_resource_manager_data_stream_init_ex(ptr noundef nonnull %i.ar, ptr noundef nonnull readonly %5, ptr noundef nonnull %i.ab)
  br label %ma_resource_manager_data_source_init_ex.exit

bb.h:                                             ; preds = %bb.f
  %i.ay = call fastcc i32 @ma_resource_manager_data_buffer_init_ex_internal(ptr noundef nonnull %i.ar, ptr noundef nonnull readonly %5, i32 noundef 0, ptr noundef nonnull %i.ab)
  br label %ma_resource_manager_data_source_init_ex.exit

ma_resource_manager_data_source_init_ex.exit:     ; preds = %bb.g, %bb.h
  %.0.i51 = phi i32 [ %i.ay, %bb.h ], [ %i.ax, %bb.g ] ; 2 uses
  %.not47 = icmp eq i32 %.0.i51, 0
  br i1 %.not47, label %bb.k, label %ma_resource_manager_data_source_init_ex.exit.thread

ma_resource_manager_data_source_init_ex.exit.thread: ; preds = %ma_zero_memory_default.exit.i.i, %ma_resource_manager_data_source_init_ex.exit
  %.0.i5165.ph = phi i32 [ -2, %ma_zero_memory_default.exit.i.i ], [ %.0.i51, %ma_resource_manager_data_source_init_ex.exit ] ; 3 uses
  %.pr66 = load ptr, ptr %i.k, align 8, !tbaa !2593 ; 2 uses
  %i.az = icmp eq ptr %.pr66, null
  br i1 %i.az, label %ma_free.exit, label %bb.i

bb.i:                                             ; preds = %ma_resource_manager_data_source_init_ex.exit.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !31 ; 2 uses
  %.not9.i = icmp eq ptr %i.bb, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !25
  call void %i.bb(ptr noundef nonnull %.pr66, ptr noundef %i.bc) #55, !inline_history !32
  br label %ma_free.exit

bb.k:                                             ; preds = %ma_resource_manager_data_source_init_ex.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1008
  store i8 1, ptr %i.bd, align 8, !tbaa !2592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %1, i64 208, i1 false), !tbaa.struct !2614
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.be = load ptr, ptr %i.k, align 8, !tbaa !2593
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !2615
  %i.bg = call fastcc i32 @ma_sound_init_from_data_source_internal(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %2) ; 2 uses
  %.not48 = icmp eq i32 %i.bg, 0
  br i1 %.not48, label %ma_free.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.k, align 8, !tbaa !2593 ; 4 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %ma_zero_memory_default.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 728
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !2375
  %i.bl = and i32 %i.bk, 1
  %.not.i53 = icmp eq i32 %i.bl, 0
  br i1 %.not.i53, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = call i32 @ma_resource_manager_data_stream_uninit(ptr noundef nonnull %i.bh) ; 0 uses
  br label %ma_resource_manager_data_source_uninit.exit

bb.o:                                             ; preds = %bb.m
  %i.bn = call i32 @ma_resource_manager_data_buffer_uninit(ptr noundef nonnull %i.bh) ; 0 uses
  br label %ma_resource_manager_data_source_uninit.exit

ma_resource_manager_data_source_uninit.exit:      ; preds = %bb.n, %bb.o
  %.pr = load ptr, ptr %i.k, align 8, !tbaa !2593 ; 2 uses
  %i.bo = icmp eq ptr %.pr, null
  br i1 %i.bo, label %ma_zero_memory_default.exit, label %bb.p

bb.p:                                             ; preds = %ma_resource_manager_data_source_uninit.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !31 ; 2 uses
  %.not9.i56 = icmp eq ptr %i.bq, null
  br i1 %.not9.i56, label %ma_zero_memory_default.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !25
  call void %i.bq(ptr noundef nonnull %.pr, ptr noundef %i.br) #55, !inline_history !32
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.l, %ma_resource_manager_data_source_uninit.exit, %bb.p, %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %2, i8 0, i64 1024, i1 false)
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %ma_fence_acquire.exit, %bb.j, %bb.i, %ma_resource_manager_data_source_init_ex.exit.thread, %bb.k, %ma_zero_memory_default.exit
  %.039 = phi i32 [ 0, %bb.k ], [ %i.bg, %ma_zero_memory_default.exit ], [ %.0.i5165.ph, %ma_resource_manager_data_source_init_ex.exit.thread ], [ %.0.i5165.ph, %bb.i ], [ %.0.i5165.ph, %bb.j ], [ -2, %ma_fence_acquire.exit ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  %i.bs = load ptr, ptr %i.q, align 8, !tbaa !2317 ; 5 uses
  %.not49 = icmp eq ptr %i.bs, null
  br i1 %.not49, label %ma_fence_release.exit, label %.preheader.i58

.preheader.i58:                                   ; preds = %ma_free.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 96 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %.preheader.i58
  %i.bu = load atomic i32, ptr %i.bt seq_cst, align 8 ; 3 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %ma_fence_release.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = add i32 %i.bu, -1                       ; 2 uses
  %i.bx = cmpxchg weak ptr %i.bt, i32 %i.bu, i32 %i.bw seq_cst seq_cst, align 8 ; 2 uses
  %i.by = extractvalue { i32, i1 } %i.bx, 1
  br i1 %i.by, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = icmp eq i32 %i.bw, 0
  br i1 %i.bz, label %ma_event_signal.exit.i, label %ma_fence_release.exit

ma_event_signal.exit.i:                           ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.cb = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ca) #55 ; 0 uses
  store i32 1, ptr %i.bs, align 8, !tbaa !48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.cd = call i32 @pthread_cond_signal(ptr noundef nonnull %i.cc) #55 ; 0 uses
  %i.ce = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ca) #55 ; 0 uses
  br label %ma_fence_release.exit

bb.u:                                             ; preds = %bb.s
  %i.cf = extractvalue { i32, i1 } %i.bx, 0
  %.not.i59 = icmp eq i32 %i.cf, 0
  br i1 %.not.i59, label %ma_fence_release.exit, label %bb.r

ma_fence_release.exit:                            ; preds = %bb.u, %bb.r, %ma_event_signal.exit.i, %bb.t, %ma_malloc.exit.thread, %ma_free.exit, %ma_malloc.exit
  %.040 = phi i32 [ -4, %ma_malloc.exit ], [ -4, %ma_malloc.exit.thread ], [ %.039, %ma_free.exit ], [ %.039, %ma_event_signal.exit.i ], [ %.039, %bb.t ], [ %.039, %bb.r ], [ %.039, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret i32 %.040
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ma_sound_init_from_data_source_internal(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef initializes((952, 960)) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.ma_engine_node_heap_layout, align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.ma_engine_node_config, align 8 ; 16 uses
  %.sroa.9 = alloca [54 x i8], align 2            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2615 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 952 ; 5 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !2594
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  %.0 = zext i1 %.not to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !2603 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.9, i8 0, i64 6, i1 false), !alias.scope !2616
  %i.j = lshr i32 %i.i, 13
  %i.k = trunc i32 %i.j to i8
  %i.l = and i8 %i.k, 1
  %i.m = lshr i32 %i.i, 14
  %i.n = trunc i32 %i.m to i8
  %i.o = and i8 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %.sroa.9.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.9.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !tbaa.struct !2035
  store ptr %0, ptr %4, align 8, !tbaa !2619
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.q, align 4
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 %i.l, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !9
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 %i.o, ptr %.sroa.8.0..sroa_idx, align 1, !tbaa !9
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(54) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(54) %.sroa.9, i64 54, i1 false), !tbaa.struct !2620
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !2621 ; 2 uses
  store i32 %i.s, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !2511
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !2622 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 %i.u, ptr %i.v, align 8, !tbaa !2512
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.x = load i32, ptr %i.w, align 4, !tbaa !2623 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i32 %i.x, ptr %i.y, align 8, !tbaa !2513
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !2534
  store i32 %i.aa, ptr %.sroa.684.0..sroa_idx, align 4, !tbaa !2508
  %i.ab = icmp eq i32 %i.x, 0
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !2550
  store i32 %i.ad, ptr %i.y, align 8, !tbaa !2513
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !353
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1496 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %ma_data_source_get_data_format.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = call i32 %i.ah(ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null, i64 noundef 0) #55, !inline_history !1498 ; 2 uses
  %.not36.i = icmp eq i32 %i.aj, 0
  br i1 %.not36.i, label %bb.f, label %ma_data_source_get_data_format.exit.thread

ma_data_source_get_data_format.exit.thread:       ; preds = %bb.e, %bb.d
  %.0.i.ph = phi i32 [ -29, %bb.d ], [ %i.aj, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %ma_sound_set_looping.exit

bb.f:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !8   ; 5 uses
  store i32 %i.ak, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !8
  %i.al = load i32, ptr %i.d, align 4, !tbaa !8
  store i32 %i.al, ptr %i.ae, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  %i.am = icmp eq i32 %i.ak, 0
  br i1 %i.am, label %ma_sound_set_looping.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = icmp eq i32 %i.u, -1
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.ak, ptr %i.v, align 8, !tbaa !2512
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c
  %i.ao = phi i32 [ %i.ak, %bb.g ], [ %i.ak, %bb.h ], [ %i.s, %bb.c ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.aq = call fastcc i32 @ma_engine_node_get_heap_layout(ptr noundef nonnull readonly %4, ptr noundef %3) ; 2 uses
  %.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i, label %bb.j, label %ma_engine_node_get_heap_size.exit.i

ma_engine_node_get_heap_size.exit.i:              ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %ma_sound_set_looping.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = load i64, ptr %3, align 8, !tbaa !1328  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %.not18.i = icmp eq i64 %i.ar, 0
  br i1 %.not18.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !22 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.at, null
  br i1 %.not8.i.i, label %ma_sound_set_looping.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.av = call ptr %i.at(i64 noundef %i.ar, ptr noundef %i.au) #55, !inline_history !2624 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %ma_sound_set_looping.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = call i32 @ma_engine_node_init_preallocated(ptr noundef nonnull readonly %4, ptr noundef nonnull %i.av, ptr noundef nonnull %2) ; 3 uses
  %.not19.i = icmp eq i32 %i.ax, 0
  br i1 %.not19.i, label %bb.p, label %bb.n

.thread.i:                                        ; preds = %bb.j
  %i.ay = call i32 @ma_engine_node_init_preallocated(ptr noundef nonnull readonly %4, ptr noundef null, ptr noundef nonnull %2) ; 2 uses
  %.not1930.i = icmp eq i32 %i.ay, 0
  br i1 %.not1930.i, label %bb.p, label %ma_sound_set_looping.exit
end_hunk_19
begin_hunk_20_@ma_sound_init_from_file_w:bb.a
  br i1 %.not.i, label %ma_sound_init_ex.exit, label %bb.e

bb.e:                                             ; preds = %ma_zero_memory_default.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 976
  %i.m = load <2 x ptr>, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !33
  store <2 x ptr> %i.m, ptr %i.l, align 8, !tbaa !33
  %i.n = call i32 @ma_sound_init_from_file_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %6, ptr noundef nonnull %5)
  br label %ma_sound_init_ex.exit

ma_sound_init_ex.exit:                            ; preds = %bb.e, %ma_zero_memory_default.exit.i.i, %ma_sound_config_init_2.exit, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ -2, %ma_sound_config_init_2.exit ], [ -2, %ma_zero_memory_default.exit.i.i ], [ %i.n, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_sound_init_copy(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.ma_resource_manager_data_source_config, align 8 ; 9 uses
  %6 = alloca %struct.ma_sound_config, align 8    ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %ma_free.exit, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %4, i8 0, i64 1024, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 960
  store i64 -1, ptr %i.b, align 8, !tbaa !2606
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1016 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2593
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %.not8.i = icmp eq ptr %i.j, null
  br i1 %.not8.i, label %ma_free.exit, label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.c
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.l = tail call ptr %i.j(i64 noundef 744, ptr noundef %i.k) #55, !inline_history !26 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 1016 ; 5 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !2593
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %ma_free.exit, label %bb.d

bb.d:                                             ; preds = %ma_malloc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2551 ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !2593 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %ma_resource_manager_data_source_init_copy.exit.thread, label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 728 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !2375
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(744) %i.l, i8 0, i64 744, i1 false)
  %i.u = icmp eq ptr %i.p, null
  br i1 %i.u, label %ma_resource_manager_data_source_init_copy.exit.thread, label %bb.e

bb.e:                                             ; preds = %ma_zero_memory_default.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 728
  store i32 %i.t, ptr %i.v, align 8, !tbaa !2375
  %i.w = load i32, ptr %i.s, align 8, !tbaa !2375
  %i.x = and i32 %i.w, 1
  %.not12.i = icmp eq i32 %i.x, 0
  br i1 %.not12.i, label %ma_resource_manager_data_source_init_copy.exit, label %ma_resource_manager_data_source_init_copy.exit.thread

ma_resource_manager_data_source_init_copy.exit:   ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  store i64 -1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !69
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !69
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !69
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.86.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i32 0, ptr %.sroa.86.0..sroa_idx.i.i, align 4, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.z = load i32, ptr %i.y, align 8, !tbaa !2325
  store i32 %i.z, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !tbaa !2316
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2324
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !2334
  %i.ad = call fastcc i32 @ma_resource_manager_data_buffer_init_ex_internal(ptr noundef nonnull %i.p, ptr noundef nonnull %5, i32 noundef %i.ac, ptr noundef nonnull %i.l) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  %.not36 = icmp eq i32 %i.ad, 0
  br i1 %.not36, label %ma_sound_config_init_2.exit, label %ma_resource_manager_data_source_init_copy.exit.thread

ma_resource_manager_data_source_init_copy.exit.thread: ; preds = %ma_zero_memory_default.exit.i.i, %bb.e, %bb.d, %ma_resource_manager_data_source_init_copy.exit
  %.0.i3954 = phi i32 [ %i.ad, %ma_resource_manager_data_source_init_copy.exit ], [ -2, %ma_zero_memory_default.exit.i.i ], [ -3, %bb.e ], [ -2, %bb.d ] ; 3 uses
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !2593 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %ma_free.exit, label %bb.f

bb.f:                                             ; preds = %ma_resource_manager_data_source_init_copy.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %.not9.i = icmp eq ptr %i.ah, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !25
  call void %i.ah(ptr noundef nonnull %i.ae, ptr noundef %i.ai) #55, !inline_history !32
  br label %ma_free.exit

ma_sound_config_init_2.exit:                      ; preds = %ma_resource_manager_data_source_init_copy.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %6, i8 0, i64 44, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx, i8 0, i64 48, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %.sroa.748.112.copyload = load i32, ptr %i.ak, align 8, !tbaa !8
  %.sroa.9.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1316
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.112..sroa_idx, i64 16, i1 false)
  %.sroa.10.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1332
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.112..sroa_idx, i64 20, i1 false)
  %.sroa.11.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 44
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 -1, ptr %.sroa.546.0..sroa_idx, align 8, !tbaa !69
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !69
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 -1, ptr %.sroa.647.0..sroa_idx, align 8, !tbaa !69
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i32 %.sroa.748.112.copyload, ptr %.sroa.748.0..sroa_idx, align 8, !tbaa !8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.al = load <2 x i32>, ptr %.sroa.11.112..sroa_idx, align 8
  store <2 x i32> %i.al, ptr %.sroa.11.0..sroa_idx, align 8
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !2593
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !2615
  store i32 %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !2603
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %3, ptr %i.ao, align 8, !tbaa !2604
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !2637
  store i32 %i.aq, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !2534
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 372
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !2638
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 %i.as, ptr %i.at, align 4, !tbaa !2623
  %i.au = call fastcc i32 @ma_sound_init_from_data_source_internal(ptr noundef nonnull %0, ptr noundef %6, ptr noundef nonnull %4) ; 2 uses
  %.not37 = icmp eq i32 %i.au, 0
  br i1 %.not37, label %bb.n, label %bb.h

bb.h:                                             ; preds = %ma_sound_config_init_2.exit
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !2593 ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %ma_zero_memory_default.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 728
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !2375
  %i.az = and i32 %i.ay, 1
  %.not.i41 = icmp eq i32 %i.az, 0
  br i1 %.not.i41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = call i32 @ma_resource_manager_data_stream_uninit(ptr noundef nonnull %i.av) ; 0 uses
  br label %ma_resource_manager_data_source_uninit.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = call i32 @ma_resource_manager_data_buffer_uninit(ptr noundef nonnull %i.av) ; 0 uses
  br label %ma_resource_manager_data_source_uninit.exit

ma_resource_manager_data_source_uninit.exit:      ; preds = %bb.j, %bb.k
  %.pr = load ptr, ptr %i.m, align 8, !tbaa !2593 ; 2 uses
  %i.bc = icmp eq ptr %.pr, null
  br i1 %i.bc, label %ma_zero_memory_default.exit, label %bb.l

bb.l:                                             ; preds = %ma_resource_manager_data_source_uninit.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31 ; 2 uses
  %.not9.i44 = icmp eq ptr %i.be, null
  br i1 %.not9.i44, label %ma_zero_memory_default.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !25
  call void %i.be(ptr noundef nonnull %.pr, ptr noundef %i.bf) #55, !inline_history !32
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.h, %ma_resource_manager_data_source_uninit.exit, %bb.l, %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %4, i8 0, i64 1024, i1 false)
  br label %ma_free.exit

bb.n:                                             ; preds = %ma_sound_config_init_2.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 1008
  store i8 1, ptr %i.bg, align 8, !tbaa !2592
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.c, %ma_zero_memory_default.exit.i, %bb.a, %bb.g, %bb.f, %ma_resource_manager_data_source_init_copy.exit.thread, %ma_malloc.exit, %bb.b, %bb.n, %ma_zero_memory_default.exit
  %.0 = phi i32 [ 0, %bb.n ], [ %.0.i3954, %bb.g ], [ -2, %ma_zero_memory_default.exit.i ], [ -3, %bb.b ], [ -2, %bb.a ], [ %i.au, %ma_zero_memory_default.exit ], [ -4, %ma_malloc.exit ], [ %.0.i3954, %ma_resource_manager_data_source_init_copy.exit.thread ], [ %.0.i3954, %bb.f ], [ -4, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_sound_init_from_data_source(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.ma_sound_config, align 8    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2639)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %5, i8 0, i64 208, i1 false), !alias.scope !2639
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2505, !noalias !2639
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.d, i64 48, i1 false), !tbaa.struct !2035
  br label %ma_sound_config_init_2.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 112
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.0..sroa_idx.i, i8 0, i64 20, i1 false), !alias.scope !2639
  store i32 5, ptr %i.e, align 8, !tbaa !8, !alias.scope !2639
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !2639
  %.sroa.93.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i32 0, ptr %.sroa.93.0..sroa_idx.i, align 8, !tbaa !2532, !alias.scope !2639
  br label %ma_sound_config_init_2.exit

ma_sound_config_init_2.exit:                      ; preds = %bb.b, %bb.c
  %.sink.i = phi i32 [ 0, %bb.c ], [ %i.b, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 %.sink.i, ptr %i.f, align 4, !tbaa !2534, !alias.scope !2639
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 -1, ptr %i.g, align 8, !tbaa !2535, !alias.scope !2639
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 -1, ptr %i.h, align 8, !tbaa !2536, !alias.scope !2639
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %i.i, align 8, !tbaa !2615
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 %2, ptr %i.j, align 8, !tbaa !2603
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %3, ptr %i.k, align 8, !tbaa !2604
  %i.l = icmp eq ptr %4, null
  br i1 %i.l, label %ma_sound_init_ex.exit, label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %ma_sound_config_init_2.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %4, i8 0, i64 1024, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 960
  store i64 -1, ptr %i.m, align 8, !tbaa !2606
  br i1 %.not.i, label %ma_sound_init_ex.exit, label %bb.d

bb.d:                                             ; preds = %ma_zero_memory_default.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = call fastcc i32 @ma_sound_init_from_data_source_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %5, ptr noundef nonnull %4)
  br label %ma_sound_init_ex.exit

ma_sound_init_ex.exit:                            ; preds = %ma_sound_config_init_2.exit, %ma_zero_memory_default.exit.i.i, %bb.d
  %.0.i = phi i32 [ %i.o, %bb.d ], [ -2, %ma_zero_memory_default.exit.i.i ], [ -2, %ma_sound_config_init_2.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ma_sound_get_engine(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2590
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ma_sound_get_data_source(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2594
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define range(i32 0, 2) i32 @ma_sound_is_playing(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_node_get_state_by_time.exit, label %ma_sound_get_engine.exit

ma_sound_get_engine.exit:                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2590 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %ma_node_get_state.exit.i.i, label %bb.b

bb.b:                                             ; preds = %ma_sound_get_engine.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8
  br label %ma_node_get_state.exit.i.i

ma_node_get_state.exit.i.i:                       ; preds = %bb.b, %ma_sound_get_engine.exit
  %.0.i.i = phi i64 [ %i.f, %bb.b ], [ 0, %ma_sound_get_engine.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load atomic i32, ptr %i.g seq_cst, align 8
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %ma_node_get_state_by_time.exit, label %ma_node_get_state_time.exit.i.i

ma_node_get_state_time.exit.i.i:                  ; preds = %ma_node_get_state.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load atomic i64, ptr %i.j seq_cst, align 8
  %i.l = icmp ult i64 %i.k, %.0.i.i
  br i1 %i.l, label %ma_node_get_state_by_time.exit, label %ma_node_get_state_time.exit10.i.i

ma_node_get_state_time.exit10.i.i:                ; preds = %ma_node_get_state_time.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load atomic i64, ptr %i.m seq_cst, align 8
  %i.o = icmp ule i64 %i.n, %.0.i.i
  %i.p = zext i1 %i.o to i32
  br label %ma_node_get_state_by_time.exit

ma_node_get_state_by_time.exit:                   ; preds = %ma_node_get_state_time.exit10.i.i, %ma_node_get_state_time.exit.i.i, %ma_node_get_state.exit.i.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %ma_node_get_state.exit.i.i ], [ 0, %ma_node_get_state_time.exit.i.i ], [ %i.p, %ma_node_get_state_time.exit10.i.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define range(i32 -2, 1) i32 @ma_sound_stop(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %ma_node_set_state.exit

ma_node_set_state.exit:                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = atomicrmw xchg ptr %i.b, i32 1 seq_cst, align 8 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %ma_node_set_state.exit
  %.0 = phi i32 [ 0, %ma_node_set_state.exit ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: norecurse nounwind uwtable
define range(i32 -2, 1) i32 @ma_sound_stop_with_fade_in_pcm_frames(ptr nofree noundef captures(address) %0, i64 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %ma_sound_get_engine.exit

ma_sound_get_engine.exit:                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2590 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %ma_sound_get_engine.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %ma_sound_get_engine.exit
  %.0.i.i = phi i64 [ %i.f, %bb.b ], [ 0, %ma_sound_get_engine.exit ]
  %i.g = add i64 %.0.i.i, %1                      ; 3 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %ma_sound_set_stop_time_with_fade_in_pcm_frames.exit, label %ma_sound_set_fade_start_in_pcm_frames.exit.i

ma_sound_set_fade_start_in_pcm_frames.exit.i:     ; preds = %bb.c
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.g) ; 2 uses
  %i.h = sub i64 %i.g, %spec.select.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 912
  store atomic volatile i32 -1082130432, ptr %i.i seq_cst, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 916
  store atomic volatile i32 0, ptr %i.j seq_cst, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 920
  store atomic i64 %spec.select.i, ptr %i.k seq_cst, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 928
end_hunk_20
begin_hunk_21_@ma_dr_flac_open_with_metadata_private:bb.a
  call void %.sroa.83.0(ptr noundef nonnull %.0.i435.i, ptr noundef %.sroa.0.0) #55, !inline_history !2835
  br label %.loopexit312

bb.bd:                                            ; preds = %bb.bb
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 4 ; 2 uses
  store ptr %i.gb, ptr %i.dq, align 8, !tbaa !9
  %.not233.i = icmp eq i32 %i.fx, 0
  br i1 %.not233.i, label %ma_dr_flac__free_from_callbacks.exit425.i.sink.split, label %.lr.ph220.i

.lr.ph220.i:                                      ; preds = %bb.bd, %bb.bh
  %.0313218.i = phi i32 [ %i.gm, %bb.bh ], [ 0, %bb.bd ]
  %.0314217.i = phi ptr [ %i.gl, %bb.bh ], [ %i.gb, %bb.bd ] ; 3 uses
  %i.gc = ptrtoint ptr %.0314217.i to i64
  %i.gd = sub i64 %i.fr, %i.gc
  %i.ge = icmp slt i64 %i.gd, 4
  br i1 %i.ge, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph220.i
  call void %.sroa.83.0(ptr noundef nonnull %.0.i435.i, ptr noundef %.sroa.0.0) #55, !inline_history !2835
  br label %.loopexit312

bb.bf:                                            ; preds = %.lr.ph220.i
  %i.gf = load i32, ptr %.0314217.i, align 1
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0314217.i, i64 4 ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = sub i64 %i.fr, %i.gi
  %i.gk = icmp slt i64 %i.gj, %i.gg
  br i1 %i.gk, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void %.sroa.83.0(ptr noundef nonnull %.0.i435.i, ptr noundef %.sroa.0.0) #55, !inline_history !2835
  br label %.loopexit312

bb.bh:                                            ; preds = %bb.bf
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gg
  %i.gm = add nuw i32 %.0313218.i, 1              ; 2 uses
  %exitcond319.not.i = icmp eq i32 %i.gm, %i.fx
  br i1 %exitcond319.not.i, label %ma_dr_flac__free_from_callbacks.exit425.i.sink.split, label %.lr.ph220.i, !llvm.loop !2841

bb.bi:                                            ; preds = %bb.aa
  %i.gn = icmp samesign ult i32 %i.eh, 396
  br i1 %i.gn, label %.loopexit312, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br i1 %.not.i138, label %ma_dr_flac__free_from_callbacks.exit425.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.go = zext nneg i32 %i.eh to i64              ; 5 uses
  br i1 %.not.i470.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gp = call ptr %.sroa.57.0(i64 noundef %i.go, ptr noundef %.sroa.0.0) #55, !inline_history !2834
  br label %ma_dr_flac__malloc_from_callbacks.exit453.i

bb.bm:                                            ; preds = %bb.bk
  br i1 %.not12.i472.i, label %.loopexit312, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gq = call ptr %.sroa.70.0(ptr noundef null, i64 noundef %i.go, ptr noundef %.sroa.0.0) #55, !inline_history !2834
  br label %ma_dr_flac__malloc_from_callbacks.exit453.i

ma_dr_flac__malloc_from_callbacks.exit453.i:      ; preds = %bb.bn, %bb.bl
  %.0.i451.i = phi ptr [ %i.gq, %bb.bn ], [ %i.gp, %bb.bl ] ; 14 uses
  %i.gr = icmp eq ptr %.0.i451.i, null
  br i1 %i.gr, label %.loopexit312, label %bb.bo

bb.bo:                                            ; preds = %ma_dr_flac__malloc_from_callbacks.exit453.i
  %i.gs = call i64 %.0116(ptr noundef %.0113, ptr noundef nonnull %.0.i451.i, i64 noundef %i.go) #55, !inline_history !2828
  %.not397.i = icmp eq i64 %i.gs, %i.go
  br i1 %.not397.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void %.sroa.83.0(ptr noundef nonnull %.0.i451.i, ptr noundef %.sroa.0.0) #55, !inline_history !2835
  br label %.loopexit312

bb.bq:                                            ; preds = %bb.bo
  store ptr %.0.i451.i, ptr %i.dl, align 8, !tbaa !2833
  store i32 %i.eh, ptr %i.dj, align 4, !tbaa !2831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.dm, ptr noundef nonnull align 1 dereferenceable(128) %.0.i451.i, i64 128, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i451.i, i64 128
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !69
  %i.gv = call i64 @llvm.bswap.i64(i64 %i.gu)
  store i64 %i.gv, ptr %i.dy, align 8, !tbaa !9
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i451.i, i64 136
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !9
  %.lobit.i141 = lshr i8 %i.gx, 7
  %i.gy = zext nneg i8 %.lobit.i141 to i32
  store i32 %i.gy, ptr %i.dz, align 8, !tbaa !9
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.i451.i, i64 395
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !9   ; 4 uses
  store i8 %i.ha, ptr %i.ea, align 4, !tbaa !9
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i451.i, i64 396 ; 2 uses
  store ptr null, ptr %i.eb, align 8, !tbaa !9
  %i.hc = zext i8 %i.ha to i64
  %i.hd = mul nuw nsw i64 %i.hc, 36               ; 2 uses
  %.not398201.not.i = icmp eq i8 %i.ha, 0
  br i1 %.not398201.not.i, label %._crit_edge.i, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %bb.bq
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i451.i, i64 %i.go
  %i.hf = ptrtoint ptr %i.he to i64               ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bv, %.lr.ph.i142
  %.0303204.i = phi i8 [ 0, %.lr.ph.i142 ], [ %i.hu, %bb.bv ]
  %.0305203.i = phi i64 [ %i.hd, %.lr.ph.i142 ], [ %i.hs, %bb.bv ]
  %.0308202.i = phi ptr [ %i.hb, %.lr.ph.i142 ], [ %i.ht, %bb.bv ] ; 3 uses
  %i.hg = ptrtoint ptr %.0308202.i to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = icmp slt i64 %i.hh, 36
  br i1 %i.hi, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void %.sroa.83.0(ptr noundef nonnull %.0.i451.i, ptr noundef %.sroa.0.0) #55, !inline_history !2835
  br label %.loopexit312

bb.bt:                                            ; preds = %bb.br
  %i.hj = getelementptr inbounds nuw i8, ptr %.0308202.i, i64 35
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !9
  %i.hl = getelementptr inbounds nuw i8, ptr %.0308202.i, i64 36 ; 2 uses
  %i.hm = zext i8 %i.hk to i64                    ; 2 uses
  %i.hn = mul nuw nsw i64 %i.hm, 12               ; 2 uses
  %i.ho = ptrtoint ptr %i.hl to i64
  %i.hp = sub i64 %i.hf, %i.ho
  %i.hq = icmp slt i64 %i.hp, %i.hn
  br i1 %i.hq, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void %.sroa.83.0(ptr noundef nonnull %.0.i451.i, ptr noundef %.sroa.0.0) #55, !inline_history !2835
  br label %.loopexit312

bb.bv:                                            ; preds = %bb.bt
  %i.hr = shl nuw nsw i64 %i.hm, 4
  %i.hs = add i64 %i.hr, %.0305203.i              ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hn
  %i.hu = add nuw i8 %.0303204.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i8 %i.hu, %i.ha
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.br, !llvm.loop !2842

._crit_edge.i:                                    ; preds = %bb.bv, %bb.bq
  %.0305.lcssa.i = phi i64 [ %i.hd, %bb.bq ], [ %i.hs, %bb.bv ] ; 2 uses
  br i1 %.not.i470.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge.i
  %i.hv = call ptr %.sroa.57.0(i64 noundef %.0305.lcssa.i, ptr noundef %.sroa.0.0) #55, !inline_history !2834
  br label %ma_dr_flac__malloc_from_callbacks.exit463.i

bb.bx:                                            ; preds = %._crit_edge.i
  br i1 %.not12.i472.i, label %ma_dr_flac__malloc_from_callbacks.exit463.thread.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hw = call ptr %.sroa.70.0(ptr noundef null, i64 noundef %.0305.lcssa.i, ptr noundef %.sroa.0.0) #55, !inline_history !2834
  br label %ma_dr_flac__malloc_from_callbacks.exit463.i

ma_dr_flac__malloc_from_callbacks.exit463.i:      ; preds = %bb.by, %bb.bw
  %.0.i461.i = phi ptr [ %i.hw, %bb.by ], [ %i.hv, %bb.bw ] ; 4 uses
  %.not399.i = icmp eq ptr %.0.i461.i, null
  br i1 %.not399.i, label %ma_dr_flac__malloc_from_callbacks.exit463.thread.i, label %.preheader123.i

.preheader123.i:                                  ; preds = %ma_dr_flac__malloc_from_callbacks.exit463.i
  %i.hx = load i8, ptr %i.ea, align 4, !tbaa !9
  %.not231.i = icmp eq i8 %i.hx, 0
  br i1 %.not231.i, label %.loopexit311, label %.lr.ph216.i

ma_dr_flac__malloc_from_callbacks.exit463.thread.i: ; preds = %bb.bx, %ma_dr_flac__malloc_from_callbacks.exit463.i
  call void %.sroa.83.0(ptr noundef nonnull %.0.i451.i, ptr noundef %.sroa.0.0) #55, !inline_history !2835
  br label %.loopexit312

.lr.ph216.i:                                      ; preds = %.preheader123.i, %._crit_edge210.i
  %.0300215.i = phi ptr [ %.1301.lcssa.i, %._crit_edge210.i ], [ %.0.i461.i, %.preheader123.i ] ; 2 uses
  %.1304214.i = phi i8 [ %i.ip, %._crit_edge210.i ], [ 0, %.preheader123.i ]
  %.3311213.i = phi ptr [ %.4312.lcssa.i, %._crit_edge210.i ], [ %i.hb, %.preheader123.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %.0300215.i, ptr noundef nonnull align 1 dereferenceable(36) %.3311213.i, i64 36, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %.3311213.i, i64 35
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !9   ; 5 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.3311213.i, i64 36 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0300215.i, i64 36 ; 3 uses
  %.not232.i = icmp eq i8 %i.hz, 0
  br i1 %.not232.i, label %._crit_edge210.i, label %.lr.ph209.i.preheader

.lr.ph209.i.preheader:                            ; preds = %.lr.ph216.i
  %xtraiter = and i8 %i.hz, 1
  %i.ic = icmp eq i8 %i.hz, 1
  br i1 %i.ic, label %.lr.ph209.i.epil.preheader, label %.lr.ph209.i.preheader.new

.lr.ph209.i.preheader.new:                        ; preds = %.lr.ph209.i.preheader
  %unroll_iter = and i8 %i.hz, -2
  br label %.lr.ph209.i

.lr.ph209.i:                                      ; preds = %.lr.ph209.i, %.lr.ph209.i.preheader.new
  %.1301207.i = phi ptr [ %i.ib, %.lr.ph209.i.preheader.new ], [ %i.ii, %.lr.ph209.i ] ; 5 uses
  %.4312205.i = phi ptr [ %i.ia, %.lr.ph209.i.preheader.new ], [ %i.ih, %.lr.ph209.i ] ; 3 uses
  %niter = phi i8 [ 0, %.lr.ph209.i.preheader.new ], [ %niter.next.1, %.lr.ph209.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1301207.i, ptr noundef nonnull align 1 dereferenceable(12) %.4312205.i, i64 12, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %.4312205.i, i64 12
  %i.ie = getelementptr inbounds nuw i8, ptr %.1301207.i, i64 16 ; 3 uses
  %i.if = load i64, ptr %.1301207.i, align 8, !tbaa !2843
  %i.ig = call i64 @llvm.bswap.i64(i64 %i.if)
  store i64 %i.ig, ptr %.1301207.i, align 8, !tbaa !2843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ie, ptr noundef nonnull align 1 dereferenceable(12) %i.id, i64 12, i1 false)
  %i.ih = getelementptr inbounds nuw i8, ptr %.4312205.i, i64 24 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.1301207.i, i64 32 ; 3 uses
  %i.ij = load i64, ptr %i.ie, align 8, !tbaa !2843
  %i.ik = call i64 @llvm.bswap.i64(i64 %i.ij)
  store i64 %i.ik, ptr %i.ie, align 8, !tbaa !2843
  %niter.next.1 = add nuw i8 %niter, 2            ; 2 uses
  %niter.ncmp.1 = icmp eq i8 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge210.i.loopexit.unr-lcssa, label %.lr.ph209.i, !llvm.loop !2845

._crit_edge210.i.loopexit.unr-lcssa:              ; preds = %.lr.ph209.i
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge210.i, label %.lr.ph209.i.epil.preheader

.lr.ph209.i.epil.preheader:                       ; preds = %._crit_edge210.i.loopexit.unr-lcssa, %.lr.ph209.i.preheader
  %.1301207.i.epil.init = phi ptr [ %i.ib, %.lr.ph209.i.preheader ], [ %i.ii, %._crit_edge210.i.loopexit.unr-lcssa ] ; 4 uses
  %.4312205.i.epil.init = phi ptr [ %i.ia, %.lr.ph209.i.preheader ], [ %i.ih, %._crit_edge210.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod838 = trunc i8 %i.hz to i1
  call void @llvm.assume(i1 %lcmp.mod838)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1301207.i.epil.init, ptr noundef nonnull align 1 dereferenceable(12) %.4312205.i.epil.init, i64 12, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %.4312205.i.epil.init, i64 12
  %i.im = getelementptr inbounds nuw i8, ptr %.1301207.i.epil.init, i64 16
  %i.in = load i64, ptr %.1301207.i.epil.init, align 8, !tbaa !2843
  %i.io = call i64 @llvm.bswap.i64(i64 %i.in)
  store i64 %i.io, ptr %.1301207.i.epil.init, align 8, !tbaa !2843
  br label %._crit_edge210.i

._crit_edge210.i:                                 ; preds = %.lr.ph209.i.epil.preheader, %._crit_edge210.i.loopexit.unr-lcssa, %.lr.ph216.i
  %.4312.lcssa.i = phi ptr [ %i.ia, %.lr.ph216.i ], [ %i.ih, %._crit_edge210.i.loopexit.unr-lcssa ], [ %i.il, %.lr.ph209.i.epil.preheader ]
  %.1301.lcssa.i = phi ptr [ %i.ib, %.lr.ph216.i ], [ %i.ii, %._crit_edge210.i.loopexit.unr-lcssa ], [ %i.im, %.lr.ph209.i.epil.preheader ]
  %i.ip = add nuw i8 %.1304214.i, 1               ; 2 uses
  %i.iq = load i8, ptr %i.ea, align 4, !tbaa !9
  %i.ir = icmp ult i8 %i.ip, %i.iq
  br i1 %i.ir, label %.lr.ph216.i, label %.loopexit311, !llvm.loop !2846

.loopexit311:                                     ; preds = %._crit_edge210.i, %.preheader123.i
  store ptr %.0.i461.i, ptr %i.eb, align 8, !tbaa !9
  call void %.sroa.83.0(ptr noundef nonnull %.0.i451.i, ptr noundef %.sroa.0.0) #55, !inline_history !2835
  br label %ma_dr_flac__free_from_callbacks.exit425.i.sink.split

bb.bz:                                            ; preds = %bb.aa
  %i.is = icmp samesign ult i32 %i.eh, 32
  br i1 %i.is, label %.loopexit312, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br i1 %.not.i138, label %ma_dr_flac__free_from_callbacks.exit425.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.it = call i64 %.0116(ptr noundef %.0113, ptr noundef nonnull %i.dm, i64 noundef 4) #55, !inline_history !2828
  %.not383.i = icmp eq i64 %i.it, 4
  br i1 %.not383.i, label %bb.cc, label %.loopexit312

bb.cc:                                            ; preds = %bb.cb
  %i.iu = load i32, ptr %i.dm, align 8, !tbaa !9
  %i.iv = call i32 @llvm.bswap.i32(i32 %i.iu)
  store i32 %i.iv, ptr %i.dm, align 8, !tbaa !9
  %i.iw = call i64 %.0116(ptr noundef %.0113, ptr noundef nonnull %i.dn, i64 noundef 4) #55, !inline_history !2828
  %.not384.i = icmp eq i64 %i.iw, 4
  br i1 %.not384.i, label %bb.cd, label %.loopexit312

bb.cd:                                            ; preds = %bb.cc
  %i.ix = add nsw i32 %i.eh, -8                   ; 2 uses
  %i.iy = load i32, ptr %i.dn, align 4, !tbaa !9
  %i.iz = call i32 @llvm.bswap.i32(i32 %i.iy)     ; 2 uses
  store i32 %i.iz, ptr %i.dn, align 4, !tbaa !9
  %i.ja = add i32 %i.iz, 1
  %i.jb = zext i32 %i.ja to i64                   ; 2 uses
  br i1 %.not.i470.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jc = call ptr %.sroa.57.0(i64 noundef %i.jb, ptr noundef %.sroa.0.0) #55, !inline_history !2834
  br label %ma_dr_flac__malloc_from_callbacks.exit473.i

bb.cf:                                            ; preds = %bb.cd
  br i1 %.not12.i472.i, label %.loopexit312, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jd = call ptr %.sroa.70.0(ptr noundef null, i64 noundef %i.jb, ptr noundef %.sroa.0.0) #55, !inline_history !2834
  br label %ma_dr_flac__malloc_from_callbacks.exit473.i

ma_dr_flac__malloc_from_callbacks.exit473.i:      ; preds = %bb.cg, %bb.ce
  %.0.i471.i = phi ptr [ %i.jd, %bb.cg ], [ %i.jc, %bb.ce ] ; 7 uses
  %i.je = icmp eq ptr %.0.i471.i, null
  br i1 %i.je, label %.loopexit312, label %bb.ch

bb.ch:                                            ; preds = %ma_dr_flac__malloc_from_callbacks.exit473.i
  %i.jf = load i32, ptr %i.dn, align 4, !tbaa !9  ; 2 uses
  %i.jg = icmp ult i32 %i.ix, %i.jf
  br i1 %i.jg, label %ma_dr_flac__free_from_callbacks.exit499.i.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jh = zext nneg i32 %i.jf to i64
  %i.ji = call i64 %.0116(ptr noundef %.0113, ptr noundef nonnull %.0.i471.i, i64 noundef %i.jh) #55, !inline_history !2828 ; 2 uses
  %i.jj = load i32, ptr %i.dn, align 4, !tbaa !9  ; 2 uses
  %i.jk = zext i32 %i.jj to i64
  %.not385.i = icmp eq i64 %i.ji, %i.jk
  br i1 %.not385.i, label %bb.cj, label %ma_dr_flac__free_from_callbacks.exit499.i.thread

bb.cj:                                            ; preds = %bb.ci
  %i.jl = sub i32 %i.ix, %i.jj                    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.i471.i, i64 %i.ji
  store i8 0, ptr %i.jm, align 1, !tbaa !9
  store ptr %.0.i471.i, ptr %i.do, align 8, !tbaa !9
  %i.jn = icmp ult i32 %i.jl, 4
  br i1 %i.jn, label %ma_dr_flac__free_from_callbacks.exit499.i.thread, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jo = call i64 %.0116(ptr noundef %.0113, ptr noundef nonnull %i.dp, i64 noundef 4) #55, !inline_history !2828
  %.not386.i = icmp eq i64 %i.jo, 4
  br i1 %.not386.i, label %bb.cl, label %ma_dr_flac__free_from_callbacks.exit499.i.thread

bb.cl:                                            ; preds = %bb.ck
  %i.jp = add i32 %i.jl, -4                       ; 2 uses
  %i.jq = load i32, ptr %i.dp, align 8, !tbaa !9
  %i.jr = call i32 @llvm.bswap.i32(i32 %i.jq)     ; 2 uses
  store i32 %i.jr, ptr %i.dp, align 8, !tbaa !9
  %i.js = add i32 %i.jr, 1
  %i.jt = zext i32 %i.js to i64                   ; 2 uses
  br i1 %.not.i470.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ju = call ptr %.sroa.57.0(i64 noundef %i.jt, ptr noundef %.sroa.0.0) #55, !inline_history !2834
  br label %ma_dr_flac__malloc_from_callbacks.exit477.i

bb.cn:                                            ; preds = %bb.cl
  br i1 %.not12.i472.i, label %ma_dr_flac__free_from_callbacks.exit499.i.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.jv = call ptr %.sroa.70.0(ptr noundef null, i64 noundef %i.jt, ptr noundef %.sroa.0.0) #55, !inline_history !2834
  br label %ma_dr_flac__malloc_from_callbacks.exit477.i

ma_dr_flac__malloc_from_callbacks.exit477.i:      ; preds = %bb.co, %bb.cm
  %.0.i475.i = phi ptr [ %i.jv, %bb.co ], [ %i.ju, %bb.cm ] ; 6 uses
  %i.jw = icmp eq ptr %.0.i475.i, null
  br i1 %i.jw, label %ma_dr_flac__free_from_callbacks.exit499.i.thread, label %bb.cp

bb.cp:                                            ; preds = %ma_dr_flac__malloc_from_callbacks.exit477.i
  %i.jx = load i32, ptr %i.dp, align 8, !tbaa !9  ; 2 uses
  %i.jy = icmp ult i32 %i.jp, %i.jx
  br i1 %i.jy, label %ma_dr_flac__free_from_callbacks.exit499.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jz = zext i32 %i.jx to i64
  %i.ka = call i64 %.0116(ptr noundef %.0113, ptr noundef nonnull %.0.i475.i, i64 noundef %i.jz) #55, !inline_history !2828 ; 2 uses
  %i.kb = load i32, ptr %i.dp, align 8, !tbaa !9  ; 2 uses
  %i.kc = zext i32 %i.kb to i64
  %.not387.i = icmp eq i64 %i.ka, %i.kc
  br i1 %.not387.i, label %bb.cr, label %ma_dr_flac__free_from_callbacks.exit499.i

bb.cr:                                            ; preds = %bb.cq
  %i.kd = sub i32 %i.jp, %i.kb                    ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i475.i, i64 %i.ka
  store i8 0, ptr %i.ke, align 1, !tbaa !9
  store ptr %.0.i475.i, ptr %i.dq, align 8, !tbaa !9
  %i.kf = icmp ult i32 %i.kd, 4
  br i1 %i.kf, label %ma_dr_flac__free_from_callbacks.exit499.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.kg = call i64 %.0116(ptr noundef %.0113, ptr noundef nonnull %i.dr, i64 noundef 4) #55, !inline_history !2828
  %.not388.i = icmp eq i64 %i.kg, 4
  br i1 %.not388.i, label %bb.ct, label %ma_dr_flac__free_from_callbacks.exit499.i

bb.ct:                                            ; preds = %bb.cs
  %i.kh = load i32, ptr %i.dr, align 8, !tbaa !9
  %i.ki = call i32 @llvm.bswap.i32(i32 %i.kh)
  store i32 %i.ki, ptr %i.dr, align 8, !tbaa !9
  %i.kj = and i32 %i.kd, -4                       ; 4 uses
  %i.kk = icmp eq i32 %i.kj, 4
  br i1 %i.kk, label %ma_dr_flac__free_from_callbacks.exit499.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kl = call i64 %.0116(ptr noundef %.0113, ptr noundef nonnull %i.ds, i64 noundef 4) #55, !inline_history !2828
  %.not389.i = icmp eq i64 %i.kl, 4
  br i1 %.not389.i, label %bb.cv, label %ma_dr_flac__free_from_callbacks.exit499.i

bb.cv:                                            ; preds = %bb.cu
  %i.km = load i32, ptr %i.ds, align 4, !tbaa !9
  %i.kn = call i32 @llvm.bswap.i32(i32 %i.km)
  store i32 %i.kn, ptr %i.ds, align 4, !tbaa !9
  %i.ko = icmp eq i32 %i.kj, 8
  br i1 %i.ko, label %ma_dr_flac__free_from_callbacks.exit499.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kp = call i64 %.0116(ptr noundef %.0113, ptr noundef nonnull %i.dt, i64 noundef 4) #55, !inline_history !2828
  %.not390.i = icmp eq i64 %i.kp, 4
  br i1 %.not390.i, label %bb.cx, label %ma_dr_flac__free_from_callbacks.exit499.i

bb.cx:                                            ; preds = %bb.cw
  %i.kq = load i32, ptr %i.dt, align 8, !tbaa !9
  %i.kr = call i32 @llvm.bswap.i32(i32 %i.kq)
  store i32 %i.kr, ptr %i.dt, align 8, !tbaa !9
  %i.ks = icmp eq i32 %i.kj, 12
  br i1 %i.ks, label %ma_dr_flac__free_from_callbacks.exit499.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kt = call i64 %.0116(ptr noundef %.0113, ptr noundef nonnull %i.du, i64 noundef 4) #55, !inline_history !2828
  %.not391.i = icmp eq i64 %i.kt, 4
  br i1 %.not391.i, label %bb.cz, label %ma_dr_flac__free_from_callbacks.exit499.i

bb.cz:                                            ; preds = %bb.cy
  %i.ku = load i32, ptr %i.du, align 4, !tbaa !9
end_hunk_21
begin_hunk_22_@ma_dr_mp3dec_decode_frame:bb.a

.lr.ph35.i.i.i.i:                                 ; preds = %.lr.ph35.i.i.i.i.preheader, %.lr.ph35.i.i.i.i
  %indvars.iv37.i.i.i.i = phi i64 [ %indvars.iv.next38.i.i.i.i, %.lr.ph35.i.i.i.i ], [ %indvars.iv37.i.i.i.i.ph, %.lr.ph35.i.i.i.i.preheader ] ; 3 uses
  %i.aze = getelementptr inbounds nuw [4 x i8], ptr %.03449.i.i.i, i64 %indvars.iv37.i.i.i.i ; 2 uses
  %i.azf = load float, ptr %i.aze, align 4, !tbaa !336 ; 2 uses
  %i.azg = getelementptr inbounds nuw [4 x i8], ptr %i.ayj, i64 %indvars.iv37.i.i.i.i ; 2 uses
  %i.azh = load float, ptr %i.azg, align 4, !tbaa !336 ; 2 uses
  %i.azi = fadd float %i.azf, %i.azh
  store float %i.azi, ptr %i.aze, align 4, !tbaa !336
  %i.azj = fsub float %i.azf, %i.azh
  store float %i.azj, ptr %i.azg, align 4, !tbaa !336
  %indvars.iv.next38.i.i.i.i = add nuw nsw i64 %indvars.iv37.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i42.i.i.i = icmp eq i64 %indvars.iv.next38.i.i.i.i, %wide.trip.count.i41.i.i.i
  br i1 %exitcond.not.i42.i.i.i, label %ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i, label %.lr.ph35.i.i.i.i, !llvm.loop !2917

ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i:    ; preds = %.lr.ph35.i.i.i.i, %.lr.ph.i.i.i77.i, %middle.block669, %middle.block657, %._crit_edge.i.i.i75.i, %bb.ea
  %i.azk = load i8, ptr %i.awg, align 1, !tbaa !9
  %i.azl = zext i8 %i.azk to i64
  %i.azm = getelementptr inbounds nuw [4 x i8], ptr %.03449.i.i.i, i64 %i.azl
  %i.azn = add i32 %.03350.i.i.i, 1               ; 2 uses
  %i.azo = zext i32 %i.azn to i64                 ; 2 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %i.avw, i64 %i.azo ; 2 uses
  %i.azq = load i8, ptr %i.azp, align 1, !tbaa !9 ; 2 uses
  %.not36.i.i.i = icmp eq i8 %i.azq, 0
  br i1 %.not36.i.i.i, label %ma_dr_mp3_L3_intensity_stereo.exit.i, label %.lr.ph.i35.i.i, !llvm.loop !2918

ma_dr_mp3_L3_intensity_stereo.exit.i:             ; preds = %ma_dr_mp3_L3_intensity_stereo_band.exit.i.i.i, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_dr_mp3_L3_midside_stereo.exit.i

bb.ec:                                            ; preds = %._crit_edge.i146
  %i.azr = and i32 %i.ati, 224
  %i.azs = icmp eq i32 %i.azr, 96
  br i1 %i.azs, label %.lr.ph.i80.i, label %ma_dr_mp3_L3_midside_stereo.exit.i

.lr.ph.i80.i:                                     ; preds = %bb.ec, %.lr.ph.i80.i
  %indvars.iv.i81.i = phi i64 [ %indvars.iv.next.i82.i.1, %.lr.ph.i80.i ], [ 0, %bb.ec ] ; 4 uses
  %i.azt = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv.i81.i ; 2 uses
  %i.azu = load <4 x float>, ptr %i.azt, align 1, !tbaa !9 ; 2 uses
  %i.azv = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv.i81.i ; 2 uses
  %i.azw = load <4 x float>, ptr %i.azv, align 1, !tbaa !9 ; 2 uses
  %i.azx = fadd <4 x float> %i.azu, %i.azw
  store <4 x float> %i.azx, ptr %i.azt, align 1, !tbaa !9
  %i.azy = fsub <4 x float> %i.azu, %i.azw
  store <4 x float> %i.azy, ptr %i.azv, align 1, !tbaa !9
  %indvars.iv.next.i82.i = or disjoint i64 %indvars.iv.i81.i, 4 ; 3 uses
  %i.azz = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv.next.i82.i ; 2 uses
  %i.baa = load <4 x float>, ptr %i.azz, align 1, !tbaa !9 ; 2 uses
  %i.bab = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv.next.i82.i ; 2 uses
  %i.bac = load <4 x float>, ptr %i.bab, align 1, !tbaa !9 ; 2 uses
  %i.bad = fadd <4 x float> %i.baa, %i.bac
  store <4 x float> %i.bad, ptr %i.azz, align 1, !tbaa !9
  %i.bae = fsub <4 x float> %i.baa, %i.bac
  store <4 x float> %i.bae, ptr %i.bab, align 1, !tbaa !9
  %indvars.iv.next.i82.i.1 = add nuw nsw i64 %indvars.iv.i81.i, 8
  %i.baf = icmp samesign ult i64 %indvars.iv.next.i82.i, 569
  br i1 %i.baf, label %.lr.ph.i80.i, label %ma_dr_mp3_L3_midside_stereo.exit.i, !llvm.loop !2915

ma_dr_mp3_L3_midside_stereo.exit.i:               ; preds = %.lr.ph.i80.i, %bb.ec, %ma_dr_mp3_L3_intensity_stereo.exit.i
  br i1 %i.ol, label %.lr.ph152.i, label %ma_dr_mp3_L3_decode.exit

.lr.ph152.i:                                      ; preds = %ma_dr_mp3_L3_midside_stereo.exit.i
  %wide.trip.count220.i = zext nneg i32 %i.oh to i64
  br label %bb.ed

bb.ed:                                            ; preds = %ma_dr_mp3_L3_change_sign.exit.i, %.lr.ph152.i
  %indvars.iv217.i = phi i64 [ 0, %.lr.ph152.i ], [ %indvars.iv.next218.i, %ma_dr_mp3_L3_change_sign.exit.i ] ; 6 uses
  %.054151.i = phi ptr [ %i.ok, %.lr.ph152.i ], [ %i.blt, %ma_dr_mp3_L3_change_sign.exit.i ] ; 7 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %.054151.i, i64 16
  %i.bah = load i8, ptr %i.bag, align 8, !tbaa !2919
  %.not57.i = icmp eq i8 %i.bah, 0                ; 3 uses
  %i.bai = select i1 %.not57.i, i32 0, i32 2
  %i.baj = load i8, ptr %i.oa, align 2, !tbaa !9
  %i.bak = lshr i8 %i.baj, 2
  %i.bal = and i8 %i.bak, 3
  %i.bam = zext nneg i8 %i.bal to i32
  %i.ban = load i8, ptr %i.ns, align 1, !tbaa !9
  %i.bao = zext i8 %i.ban to i32                  ; 2 uses
  %i.bap = lshr i32 %i.bao, 3
  %i.baq = and i32 %i.bap, 1
  %i.bar = lshr i32 %i.bao, 4
  %i.bas = and i32 %i.bar, 1
  %i.bat = add nuw nsw i32 %i.baq, %i.bas
  %i.bau = mul nuw nsw i32 %i.bat, 3
  %i.bav = add nuw nsw i32 %i.bau, %i.bam
  %i.baw = icmp eq i32 %i.bav, 2
  %i.bax = zext i1 %i.baw to i32
  %i.bay = shl nuw nsw i32 %i.bai, %i.bax         ; 7 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %.054151.i, i64 18
  %i.bba = load i8, ptr %i.baz, align 2, !tbaa !2878
  %.not58.i = icmp eq i8 %i.bba, 0
  br i1 %.not58.i, label %.thread.i148, label %bb.ee

.thread.i148:                                     ; preds = %bb.ed
  %i.bbb = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv217.i
  br label %.preheader.i90.preheader.i

bb.ee:                                            ; preds = %bb.ed
  %i.bbc = add nsw i32 %i.bay, -1
  %i.bbd = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv217.i ; 4 uses
  %i.bbe = mul nuw nsw i32 %i.bay, 18
  %i.bbf = zext nneg i32 %i.bbe to i64
  %i.bbg = getelementptr inbounds nuw [4 x i8], ptr %i.bbd, i64 %i.bbf ; 2 uses
  %i.bbh = load ptr, ptr %.054151.i, align 8, !tbaa !2892
  %i.bbi = getelementptr inbounds nuw i8, ptr %.054151.i, i64 17
  %i.bbj = load i8, ptr %i.bbi, align 1, !tbaa !2879
  %i.bbk = zext i8 %i.bbj to i64
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbh, i64 %i.bbk ; 2 uses
  %i.bbm = load i8, ptr %i.bbl, align 1, !tbaa !9 ; 2 uses
  %.not30.i.i = icmp eq i8 %i.bbm, 0
  br i1 %.not30.i.i, label %bb.eh, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ee, %bb.eg
  %i.bbn = phi i8 [ %i.bcw, %bb.eg ], [ %i.bbm, %bb.ee ] ; 4 uses
  %.033.i.i = phi ptr [ %.lcssa726, %bb.eg ], [ %i.ob, %bb.ee ] ; 2 uses
  %.02232.i.i = phi ptr [ %i.bcv, %bb.eg ], [ %i.bbg, %bb.ee ] ; 2 uses
  %.02531.i.i = phi ptr [ %i.bcu, %bb.eg ], [ %i.bbl, %bb.ee ]
  %i.bbo = zext i8 %i.bbn to i32                  ; 3 uses
  %i.bbp = zext i8 %i.bbn to i64                  ; 3 uses
  %i.bbq = shl nuw nsw i32 %i.bbo, 1
  %i.bbr = zext nneg i32 %i.bbq to i64            ; 4 uses
  %xtraiter777 = and i32 %i.bbo, 1
  %i.bbs = icmp eq i8 %i.bbn, 1
  br i1 %i.bbs, label %.epil.preheader776, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter782 = and i32 %i.bbo, 254
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ef, %.preheader.i.i.new
  %.129.i.i = phi ptr [ %.033.i.i, %.preheader.i.i.new ], [ %i.bcj, %bb.ef ] ; 7 uses
  %.12328.i.i = phi ptr [ %.02232.i.i, %.preheader.i.i.new ], [ %i.bck, %bb.ef ] ; 5 uses
  %niter783 = phi i32 [ 0, %.preheader.i.i.new ], [ %niter783.next.1, %bb.ef ]
  %i.bbt = load float, ptr %.12328.i.i, align 4, !tbaa !336
  %i.bbu = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 4
  store float %i.bbt, ptr %.129.i.i, align 4, !tbaa !336
  %i.bbv = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i, i64 %i.bbp
  %i.bbw = load float, ptr %i.bbv, align 4, !tbaa !336
  %i.bbx = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 8
  store float %i.bbw, ptr %i.bbu, align 4, !tbaa !336
  %i.bby = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i, i64 %i.bbr
  %i.bbz = load float, ptr %i.bby, align 4, !tbaa !336
  %i.bca = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 12
  store float %i.bbz, ptr %i.bbx, align 4, !tbaa !336
  %i.bcb = getelementptr inbounds nuw i8, ptr %.12328.i.i, i64 4 ; 3 uses
  %i.bcc = load float, ptr %i.bcb, align 4, !tbaa !336
  %i.bcd = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 16
  store float %i.bcc, ptr %i.bca, align 4, !tbaa !336
  %i.bce = getelementptr inbounds nuw [4 x i8], ptr %i.bcb, i64 %i.bbp
  %i.bcf = load float, ptr %i.bce, align 4, !tbaa !336
  %i.bcg = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 20
  store float %i.bcf, ptr %i.bcd, align 4, !tbaa !336
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %i.bcb, i64 %i.bbr
  %i.bci = load float, ptr %i.bch, align 4, !tbaa !336
  %i.bcj = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 24 ; 3 uses
  store float %i.bci, ptr %i.bcg, align 4, !tbaa !336
  %i.bck = getelementptr inbounds nuw i8, ptr %.12328.i.i, i64 8 ; 3 uses
  %niter783.next.1 = add i32 %niter783, 2         ; 2 uses
  %niter783.ncmp.1 = icmp eq i32 %niter783.next.1, %unroll_iter782
  br i1 %niter783.ncmp.1, label %.unr-lcssa, label %bb.ef, !llvm.loop !2920

.unr-lcssa:                                       ; preds = %bb.ef
  %lcmp.mod778.not = icmp eq i32 %xtraiter777, 0
  br i1 %lcmp.mod778.not, label %bb.eg, label %.epil.preheader776

.epil.preheader776:                               ; preds = %.unr-lcssa, %.preheader.i.i
  %.129.i.i.epil.init = phi ptr [ %.033.i.i, %.preheader.i.i ], [ %i.bcj, %.unr-lcssa ] ; 4 uses
  %.12328.i.i.epil.init = phi ptr [ %.02232.i.i, %.preheader.i.i ], [ %i.bck, %.unr-lcssa ] ; 4 uses
  %lcmp.mod781 = trunc i8 %i.bbn to i1
  tail call void @llvm.assume(i1 %lcmp.mod781)
  %i.bcl = load float, ptr %.12328.i.i.epil.init, align 4, !tbaa !336
  %i.bcm = getelementptr inbounds nuw i8, ptr %.129.i.i.epil.init, i64 4
  store float %i.bcl, ptr %.129.i.i.epil.init, align 4, !tbaa !336
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i.epil.init, i64 %i.bbp
  %i.bco = load float, ptr %i.bcn, align 4, !tbaa !336
  %i.bcp = getelementptr inbounds nuw i8, ptr %.129.i.i.epil.init, i64 8
  store float %i.bco, ptr %i.bcm, align 4, !tbaa !336
  %i.bcq = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i.epil.init, i64 %i.bbr
  %i.bcr = load float, ptr %i.bcq, align 4, !tbaa !336
  %i.bcs = getelementptr inbounds nuw i8, ptr %.129.i.i.epil.init, i64 12
  store float %i.bcr, ptr %i.bcp, align 4, !tbaa !336
  %i.bct = getelementptr inbounds nuw i8, ptr %.12328.i.i.epil.init, i64 4
  br label %bb.eg

bb.eg:                                            ; preds = %.unr-lcssa, %.epil.preheader776
  %.lcssa726 = phi ptr [ %i.bcj, %.unr-lcssa ], [ %i.bcs, %.epil.preheader776 ] ; 2 uses
  %.lcssa725 = phi ptr [ %i.bck, %.unr-lcssa ], [ %i.bct, %.epil.preheader776 ]
  %i.bcu = getelementptr inbounds nuw i8, ptr %.02531.i.i, i64 3 ; 2 uses
  %i.bcv = getelementptr inbounds nuw [4 x i8], ptr %.lcssa725, i64 %i.bbr
  %i.bcw = load i8, ptr %i.bcu, align 1, !tbaa !9 ; 2 uses
  %.not.i87.i = icmp eq i8 %i.bcw, 0
  br i1 %.not.i87.i, label %ma_dr_mp3_L3_reorder.exit.loopexit.i, label %.preheader.i.i, !llvm.loop !2921

ma_dr_mp3_L3_reorder.exit.loopexit.i:             ; preds = %bb.eg
  %.pre225.i = ptrtoint ptr %.lcssa726 to i64
  br label %bb.eh

bb.eh:                                            ; preds = %ma_dr_mp3_L3_reorder.exit.loopexit.i, %bb.ee
  %.pre-phi.i = phi i64 [ %.pre225.i, %ma_dr_mp3_L3_reorder.exit.loopexit.i ], [ %i.oc, %bb.ee ]
  %i.bcx = sub i64 %.pre-phi.i, %i.oc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bbg, ptr nonnull align 4 %i.ob, i64 %i.bcx, i1 false)
  br i1 %.not57.i, label %ma_dr_mp3_L3_antialias.exit.i.thread, label %.preheader.i90.preheader.i

ma_dr_mp3_L3_antialias.exit.i.thread:             ; preds = %bb.eh
  %i.bcy = getelementptr inbounds nuw [1152 x i8], ptr %0, i64 %indvars.iv217.i
  %i.bcz = getelementptr inbounds nuw i8, ptr %.054151.i, i64 15
  %i.bda = load i8, ptr %i.bcz, align 1, !tbaa !2922
  br label %bb.ej

.preheader.i90.preheader.i:                       ; preds = %bb.eh, %.thread.i148
  %i.bdb = phi ptr [ %i.bbb, %.thread.i148 ], [ %i.bbd, %bb.eh ] ; 5 uses
  %.0275.i = phi i32 [ 31, %.thread.i148 ], [ %i.bbc, %bb.eh ]
  br label %.preheader.i90.i

.preheader.i90.i:                                 ; preds = %.preheader.i90.i, %.preheader.i90.preheader.i
  %.031.i.i = phi ptr [ %i.bdc, %.preheader.i90.i ], [ %i.bdb, %.preheader.i90.preheader.i ] ; 4 uses
  %.02830.i.i = phi i32 [ %i.bea, %.preheader.i90.i ], [ %.0275.i, %.preheader.i90.preheader.i ] ; 2 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 72 ; 3 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 56 ; 2 uses
  %i.bde = load <4 x float>, ptr %i.bdc, align 1, !tbaa !9 ; 2 uses
  %i.bdf = load <4 x float>, ptr %i.bdd, align 1, !tbaa !9
  %i.bdg = shufflevector <4 x float> %i.bdf, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.bdh = fmul <4 x float> %i.bde, <float f0x3F5B84A8, float 8.817420e-01, float f0x3F731ADD, float f0x3F7BBA81>
  %i.bdi = fmul <4 x float> %i.bdg, <float f0x3F03B5FE, float f0x3EF186DA, float f0x3EA07302, float f0x3E3A4774>
  %i.bdj = fsub <4 x float> %i.bdh, %i.bdi
  store <4 x float> %i.bdj, ptr %i.bdc, align 1, !tbaa !9
  %i.bdk = fmul <4 x float> %i.bde, <float f0x3F03B5FE, float f0x3EF186DA, float f0x3EA07302, float f0x3E3A4774>
  %i.bdl = fmul <4 x float> %i.bdg, <float f0x3F5B84A8, float 8.817420e-01, float f0x3F731ADD, float f0x3F7BBA81>
  %i.bdm = fadd <4 x float> %i.bdk, %i.bdl
  %i.bdn = shufflevector <4 x float> %i.bdm, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.bdn, ptr %i.bdd, align 1, !tbaa !9
  %i.bdo = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 88 ; 2 uses
  %i.bdp = load <4 x float>, ptr %i.bdo, align 1, !tbaa !9 ; 2 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 40 ; 2 uses
  %i.bdr = load <4 x float>, ptr %i.bdq, align 1, !tbaa !9
  %i.bds = shufflevector <4 x float> %i.bdr, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.bdt = fmul <4 x float> %i.bdp, <float f0x3F7EDA41, float f0x3F7FC8FD, float f0x3F7FF965, float f0x3F7FFF8D>
  %i.bdu = fmul <4 x float> %i.bds, <float f0x3DC1B01D, float f0x3D27CB86, float f0x3C68A114, float 3.699970e-03>
  %i.bdv = fsub <4 x float> %i.bdt, %i.bdu
  store <4 x float> %i.bdv, ptr %i.bdo, align 1, !tbaa !9
  %i.bdw = fmul <4 x float> %i.bdp, <float f0x3DC1B01D, float f0x3D27CB86, float f0x3C68A114, float 3.699970e-03>
  %i.bdx = fmul <4 x float> %i.bds, <float f0x3F7EDA41, float f0x3F7FC8FD, float f0x3F7FF965, float f0x3F7FFF8D>
  %i.bdy = fadd <4 x float> %i.bdw, %i.bdx
  %i.bdz = shufflevector <4 x float> %i.bdy, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.bdz, ptr %i.bdq, align 1, !tbaa !9
  %i.bea = add nsw i32 %.02830.i.i, -1
  %i.beb = icmp samesign ugt i32 %.02830.i.i, 1
  br i1 %i.beb, label %.preheader.i90.i, label %ma_dr_mp3_L3_antialias.exit.i, !llvm.loop !2923

ma_dr_mp3_L3_antialias.exit.i:                    ; preds = %.preheader.i90.i
  %i.bec = getelementptr inbounds nuw [1152 x i8], ptr %0, i64 %indvars.iv217.i ; 3 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %.054151.i, i64 15
  %i.bee = load i8, ptr %i.bed, align 1, !tbaa !2922 ; 2 uses
  br i1 %.not57.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %ma_dr_mp3_L3_antialias.exit.i
  %i.bef = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv217.i
  tail call fastcc void @ma_dr_mp3_L3_imdct36(ptr noundef nonnull %i.bdb, ptr noundef %i.bec, ptr noundef nonnull @ma_dr_mp3_L3_imdct_gr.g_mdct_window, i32 noundef range(i32 0, 5) %i.bay)
  %i.beg = mul nuw nsw i32 %i.bay, 18
  %i.beh = zext nneg i32 %i.beg to i64
  %i.bei = getelementptr inbounds nuw [4 x i8], ptr %i.bef, i64 %i.beh
  %i.bej = mul nuw nsw i32 %i.bay, 9
  %i.bek = zext nneg i32 %i.bej to i64
  %i.bel = getelementptr inbounds nuw [4 x i8], ptr %i.bec, i64 %i.bek
  br label %bb.ej

bb.ej:                                            ; preds = %ma_dr_mp3_L3_antialias.exit.i.thread, %bb.ei, %ma_dr_mp3_L3_antialias.exit.i
  %i.bem = phi i8 [ %i.bee, %bb.ei ], [ %i.bee, %ma_dr_mp3_L3_antialias.exit.i ], [ %i.bda, %ma_dr_mp3_L3_antialias.exit.i.thread ] ; 2 uses
  %i.ben = phi ptr [ %i.bdb, %bb.ei ], [ %i.bdb, %ma_dr_mp3_L3_antialias.exit.i ], [ %i.bbd, %ma_dr_mp3_L3_antialias.exit.i.thread ]
  %.015.i.i = phi ptr [ %i.bel, %bb.ei ], [ %i.bec, %ma_dr_mp3_L3_antialias.exit.i ], [ %i.bcy, %ma_dr_mp3_L3_antialias.exit.i.thread ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bei, %bb.ei ], [ %i.bdb, %ma_dr_mp3_L3_antialias.exit.i ], [ %i.bbd, %ma_dr_mp3_L3_antialias.exit.i.thread ] ; 2 uses
  %i.beo = icmp eq i8 %i.bem, 2
  br i1 %i.beo, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  %i.bep = sub nuw nsw i32 32, %i.bay
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %bb.ek
  %.016.i.i.i = phi i32 [ %i.bep, %bb.ek ], [ %i.bkg, %bb.el ] ; 2 uses
  %.01215.i.i.i = phi ptr [ %.015.i.i, %bb.ek ], [ %i.bkh, %bb.el ] ; 7 uses
  %.01314.i.i.i = phi ptr [ %.0.i.i, %bb.ek ], [ %i.bki, %bb.el ] ; 19 uses
  %.sroa.0.0.copyload.i.i.i = load float, ptr %.01314.i.i.i, align 4 ; 2 uses
  %.sroa.4.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 4
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.5.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 8
  %.sroa.6.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 12
  %.sroa.6.0.copyload.i.i.i = load float, ptr %.sroa.6.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.7.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 16
  %.sroa.9.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 24 ; 2 uses
  %.sroa.9.0.copyload.i.i.i = load float, ptr %.sroa.9.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.10.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 28 ; 2 uses
  %.sroa.11.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 32
  %.sroa.12.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 36
  %.sroa.12.0.copyload.i.i.i = load float, ptr %.sroa.12.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.13.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 40 ; 2 uses
  %.sroa.13.0.copyload.i.i.i = load float, ptr %.sroa.13.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.14.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 44 ; 2 uses
  %.sroa.14.0.copyload.i.i.i = load float, ptr %.sroa.14.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.15.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 48 ; 2 uses
  %.sroa.15.0.copyload.i.i.i = load float, ptr %.sroa.15.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.16.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 52 ; 2 uses
  %.sroa.16.0.copyload.i.i.i = load float, ptr %.sroa.16.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.17.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 56 ; 2 uses
  %.sroa.17.0.copyload.i.i.i = load float, ptr %.sroa.17.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.18.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 60
  %.sroa.19.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 64 ; 2 uses
  %.sroa.20.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 68 ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 24 ; 5 uses
  %i.ber = fneg float %.sroa.0.0.copyload.i.i.i
  %i.bes = fadd float %.sroa.6.0.copyload.i.i.i, %.sroa.9.0.copyload.i.i.i
  %i.bet = fadd float %.sroa.12.0.copyload.i.i.i, %.sroa.15.0.copyload.i.i.i ; 2 uses
  %i.beu = fmul float %i.bes, f0x3F5DB3D7         ; 2 uses
  %i.bev = fneg float %i.bet
  %i.bew = tail call float @llvm.fmuladd.f32(float %i.bev, float 5.000000e-01, float %i.ber) ; 2 uses
  %i.bex = fadd float %i.beu, %i.bew              ; 2 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 28 ; 4 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 32 ; 6 uses
  %.sroa.18.0.copyload.i.i.i = load float, ptr %.sroa.18.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %i.bfa = fsub float %i.bew, %i.beu
  %i.bfb = fsub float %i.bet, %.sroa.0.0.copyload.i.i.i
  %i.bfc = fsub float %.sroa.15.0.copyload.i.i.i, %.sroa.12.0.copyload.i.i.i
  %i.bfd = fsub float %.sroa.9.0.copyload.i.i.i, %.sroa.6.0.copyload.i.i.i ; 2 uses
  %i.bfe = fmul float %i.bfc, f0x3F5DB3D7         ; 2 uses
  %i.bff = fneg float %i.bfd
  %i.bfg = tail call float @llvm.fmuladd.f32(float %i.bff, float 5.000000e-01, float %.sroa.18.0.copyload.i.i.i) ; 2 uses
  %i.bfh = fadd float %i.bfe, %i.bfg              ; 2 uses
  %i.bfi = fsub float %i.bfg, %i.bfe
  %i.bfj = fadd float %i.bfd, %.sroa.18.0.copyload.i.i.i
  %i.bfk = fmul float %i.bfh, f0x3F4B1934
  %i.bfl = tail call float @llvm.fmuladd.f32(float %i.bex, float f0x3F1BD7CA, float %i.bfk) ; 2 uses
  %i.bfm = fmul float %i.bfh, f0xBF1BD7CA
  %i.bfn = tail call float @llvm.fmuladd.f32(float %i.bex, float f0x3F4B1934, float %i.bfm)
  %i.bfo = fmul float %i.bfl, f0xBE05A8A8
  %i.bfp = fmul float %i.bfl, f0x3F7DCF55
  %i.bfq = insertelement <4 x float> poison, float %i.bfj, i64 0
  %i.bfr = insertelement <4 x float> %i.bfq, float %i.bfi, i64 1
  %i.bfs = shufflevector <4 x float> %i.bfr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bft = fmul <4 x float> %i.bfs, <float f0xBF6C835E, float f0x3F7DCF55, float f0x3EC3EF15, float f0xBE05A8A8>
  %i.bfu = insertelement <4 x float> poison, float %i.bfb, i64 0
  %i.bfv = insertelement <4 x float> %i.bfu, float %i.bfa, i64 1
  %i.bfw = shufflevector <4 x float> %i.bfv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bfx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bfw, <4 x float> <float f0x3EC3EF15, float f0x3E05A8A8, float f0x3F6C835E, float f0x3F7DCF55>, <4 x float> %i.bft) ; 4 uses
  %i.bfy = extractelement <4 x float> %i.bfx, i64 0 ; 2 uses
  %i.bfz = fmul float %i.bfy, f0xBEC3EF15
  %i.bga = fmul float %i.bfy, f0x3F6C835E
  %i.bgb = fneg float %.sroa.4.0.copyload.i.i.i
  %i.bgc = fadd float %.sroa.13.0.copyload.i.i.i, %.sroa.16.0.copyload.i.i.i ; 2 uses
  %i.bgd = fneg float %i.bgc
  %i.bge = tail call float @llvm.fmuladd.f32(float %i.bgd, float 5.000000e-01, float %i.bgb) ; 2 uses
  %.sroa.19.0.copyload.i.i.i = load float, ptr %.sroa.19.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %i.bgf = fsub float %i.bgc, %.sroa.4.0.copyload.i.i.i
  %i.bgg = fsub float %.sroa.16.0.copyload.i.i.i, %.sroa.13.0.copyload.i.i.i
  %i.bgh = fmul float %i.bgg, f0x3F5DB3D7         ; 2 uses
  %i.bgi = insertelement <4 x float> poison, float %i.bgf, i64 0
  %i.bgj = load <2 x float>, ptr %.sroa.7.0..013.sroa_idx.i.i.i, align 4 ; 3 uses
  %i.bgk = load <2 x float>, ptr %.sroa.10.0..013.sroa_idx.i.i.i, align 4 ; 3 uses
  %i.bgl = fadd <2 x float> %i.bgj, %i.bgk        ; 2 uses
  %i.bgm = extractelement <2 x float> %i.bgl, i64 0
  %i.bgn = fmul float %i.bgm, f0x3F5DB3D7         ; 2 uses
  %i.bgo = fadd float %i.bgn, %i.bge              ; 2 uses
  %i.bgp = fsub float %i.bge, %i.bgn
  %foldExtExtBinop = fsub <2 x float> %i.bgk, %i.bgj
  %i.bgq = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bgr = fneg float %i.bgq
  %i.bgs = tail call float @llvm.fmuladd.f32(float %i.bgr, float 5.000000e-01, float %.sroa.19.0.copyload.i.i.i) ; 2 uses
  %i.bgt = fadd float %i.bgh, %i.bgs              ; 2 uses
  %i.bgu = fsub float %i.bgs, %i.bgh
  %i.bgv = fadd float %i.bgq, %.sroa.19.0.copyload.i.i.i
  %i.bgw = fmul float %i.bgt, f0x3F4B1934
  %i.bgx = tail call float @llvm.fmuladd.f32(float %i.bgo, float f0x3F1BD7CA, float %i.bgw) ; 2 uses
  %i.bgy = fmul float %i.bgt, f0xBF1BD7CA
  %i.bgz = tail call float @llvm.fmuladd.f32(float %i.bgo, float f0x3F4B1934, float %i.bgy)
  %i.bha = fmul float %i.bgx, f0xBE05A8A8
  %i.bhb = fmul float %i.bgx, f0x3F7DCF55
  %i.bhc = insertelement <4 x float> poison, float %i.bgv, i64 0
  %i.bhd = insertelement <4 x float> %i.bhc, float %i.bgu, i64 1
  %i.bhe = shufflevector <4 x float> %i.bhd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bhf = fmul <4 x float> %i.bhe, <float f0xBF6C835E, float f0x3F7DCF55, float f0x3EC3EF15, float f0xBE05A8A8>
  %i.bhg = insertelement <4 x float> %i.bgi, float %i.bgp, i64 1
  %i.bhh = shufflevector <4 x float> %i.bhg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bhi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bhh, <4 x float> <float f0x3EC3EF15, float f0x3E05A8A8, float f0x3F6C835E, float f0x3F7DCF55>, <4 x float> %i.bhf) ; 4 uses
  %i.bhj = extractelement <4 x float> %i.bhi, i64 0 ; 2 uses
  %i.bhk = fmul float %i.bhj, f0xBEC3EF15
  %i.bhl = fmul float %i.bhj, f0x3F6C835E
  %i.bhm = fadd float %.sroa.14.0.copyload.i.i.i, %.sroa.17.0.copyload.i.i.i ; 2 uses
  %i.bhn = fneg float %i.bhm
  %i.bho = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 16
  %.sroa.5.0.copyload.i.i.i = load float, ptr %.sroa.5.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.20.0.copyload.i.i.i = load float, ptr %.sroa.20.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.01314.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.01215.i.i.i, i64 24, i1 false)
  %i.bhp = load float, ptr %i.beq, align 4, !tbaa !336 ; 2 uses
  store float %i.bfn, ptr %i.beq, align 4, !tbaa !336
  %i.bhq = tail call float @llvm.fmuladd.f32(float %i.bhp, float f0x3F7DCF55, float %i.bfo)
  store float %i.bhq, ptr %.sroa.9.0..013.sroa_idx.i.i.i, align 4, !tbaa !336
  %i.bhr = tail call float @llvm.fmuladd.f32(float %i.bhp, float f0x3E05A8A8, float %i.bfp)
  store float %i.bhr, ptr %.sroa.14.0..013.sroa_idx.i.i.i, align 4, !tbaa !336
  %i.bhs = load float, ptr %i.bey, align 4, !tbaa !336 ; 2 uses
  %i.bht = extractelement <4 x float> %i.bfx, i64 2
  store float %i.bht, ptr %i.bey, align 4, !tbaa !336
  %i.bhu = tail call float @llvm.fmuladd.f32(float %i.bhs, float f0x3F6C835E, float %i.bfz)
end_hunk_22
begin_hunk_23_@ma_resource_manager_data_buffer_node_decode_next_page:bb.a
  %.fr = freeze i32 %i.c                          ; 2 uses
  %i.d = urem i32 %.fr, 1000
  %i.e = sub nuw i32 %.fr, %i.d
  %i.f = zext i32 %i.e to i64                     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load atomic i32, ptr %i.g seq_cst, align 8
  switch i32 %i.h, label %bb.q [
    i32 2, label %bb.b
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9    ; 2 uses
  %i.m = sub i64 %i.j, %i.l
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.f) ; 2 uses
  %.not50 = icmp eq i64 %spec.select, 0
  br i1 %.not50, label %ma_paged_audio_buffer_data_free_page.exit57, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8
  %i.w = mul i32 %i.v, %i.s
  %i.x = zext i32 %i.w to i64
  %i.y = mul i64 %i.l, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.y
  %i.aa = call i32 @ma_decoder_read_pcm_frames(ptr noundef nonnull %2, ptr noundef %i.z, i64 noundef %spec.select, ptr noundef nonnull %i.a) ; 2 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %.not51 = icmp eq i64 %i.ab, 0
  br i1 %.not51, label %ma_paged_audio_buffer_data_free_page.exit57, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !9
  %i.ad = add i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.k, align 8, !tbaa !9
  br label %ma_paged_audio_buffer_data_free_page.exit57

bb.e:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1532
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1536
  %i.ai = zext i32 %i.af to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !8
  %i.al = mul i32 %i.ak, %i.ah
  %i.am = zext i32 %i.al to i64
  %i.an = mul nuw i64 %i.am, %i.f                 ; 2 uses
  %i.ao = add nuw nsw i64 %i.an, 24               ; 2 uses
  %i.ap = icmp ugt i64 %i.an, 4294967271
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq ptr %0, null                ; 2 uses
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ar, null
  br i1 %.not8.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %0, align 8, !tbaa !25
  %i.at = tail call ptr %i.ar(i64 noundef %i.ao, ptr noundef %i.as) #55, !inline_history !1543
  br label %ma_malloc.exit.i

bb.i:                                             ; preds = %bb.f
  %i.au = tail call noalias noundef ptr @malloc(i64 noundef %i.ao) #67
  br label %ma_malloc.exit.i

ma_malloc.exit.i:                                 ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.at, %bb.h ], [ %i.au, %bb.i ] ; 7 uses
  %i.av = icmp eq ptr %.0.i.i, null
  br i1 %i.av, label %.critedge, label %bb.j

bb.j:                                             ; preds = %ma_malloc.exit.i
  store ptr null, ptr %.0.i.i, align 8, !tbaa !1542
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  store i64 %i.f, ptr %i.aw, align 8, !tbaa !1539
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ay = call i32 @ma_decoder_read_pcm_frames(ptr noundef nonnull %2, ptr noundef nonnull %i.ax, i64 noundef %i.f, ptr noundef nonnull %i.a)
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = load i64, ptr %i.a, align 8             ; 5 uses
  %i.bb = icmp ne i64 %i.ba, 0
  %or.cond = select i1 %i.az, i1 %i.bb, i1 false
  br i1 %or.cond, label %.preheader.i, label %bb.m

.preheader.i:                                     ; preds = %bb.j
  store i64 %i.ba, ptr %i.aw, align 8, !tbaa !1539
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bd = ptrtoint ptr %.0.i.i to i64             ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader.i
  %i.be = load atomic volatile i64, ptr %i.bc seq_cst, align 8 ; 2 uses
  %i.bf = cmpxchg weak volatile ptr %i.bc, i64 %i.be, i64 %i.bd seq_cst seq_cst, align 8
  %i.bg = extractvalue { i64, i1 } %i.bf, 1
  br i1 %i.bg, label %bb.l, label %bb.k

bb.l:                                             ; preds = %bb.k
  %i.bh = inttoptr i64 %i.be to ptr
  %i.bi = atomicrmw volatile xchg ptr %i.bh, i64 %i.bd seq_cst, align 8 ; 0 uses
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !9
  %i.bm = add i64 %i.bl, %i.bj
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !9
  br label %ma_paged_audio_buffer_data_free_page.exit57

bb.m:                                             ; preds = %bb.j
  br i1 %.not.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i55 = icmp eq ptr %i.bo, null
  br i1 %.not9.i.i55, label %ma_paged_audio_buffer_data_free_page.exit57, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %0, align 8, !tbaa !25
  call void %i.bo(ptr noundef nonnull %.0.i.i, ptr noundef %i.bp) #55, !inline_history !2996
  br label %ma_paged_audio_buffer_data_free_page.exit57

bb.p:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %.0.i.i) #55
  br label %ma_paged_audio_buffer_data_free_page.exit57

bb.q:                                             ; preds = %bb.a
  %i.bq = icmp eq ptr %0, null
  br i1 %i.bq, label %ma_resource_manager_get_log.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !2269
  br label %ma_resource_manager_get_log.exit

ma_resource_manager_get_log.exit:                 ; preds = %bb.q, %bb.r
  %.0.i58 = phi ptr [ %i.bs, %bb.r ], [ null, %bb.q ]
  %i.bt = load atomic i32, ptr %i.g seq_cst, align 8
  %i.bu = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %.0.i58, i32 noundef 1, ptr noundef nonnull @.str.185, i32 noundef %i.bt) ; 0 uses
  br label %.critedge

ma_paged_audio_buffer_data_free_page.exit57:      ; preds = %bb.b, %bb.l, %bb.n, %bb.o, %bb.p, %bb.d, %bb.c
  %i.bv = phi i64 [ %i.ba, %bb.p ], [ 1, %bb.d ], [ 0, %bb.c ], [ %i.bj, %bb.l ], [ %i.ba, %bb.n ], [ %i.ba, %bb.o ], [ 0, %bb.b ]
  %.3 = phi i32 [ -17, %bb.p ], [ %i.aa, %bb.d ], [ %i.aa, %bb.c ], [ 0, %bb.l ], [ -17, %bb.n ], [ -17, %bb.o ], [ 0, %bb.b ] ; 2 uses
  %i.bw = icmp eq i32 %.3, 0
  %i.bx = icmp eq i64 %i.bv, 0
  %or.cond3 = select i1 %i.bw, i1 %i.bx, i1 false
  %spec.store.select = select i1 %or.cond3, i32 -17, i32 %.3
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %ma_malloc.exit.i, %bb.g, %ma_paged_audio_buffer_data_free_page.exit57, %ma_resource_manager_get_log.exit
  %.143 = phi i32 [ -1, %ma_resource_manager_get_log.exit ], [ %spec.store.select, %ma_paged_audio_buffer_data_free_page.exit57 ], [ -4, %bb.g ], [ -4, %ma_malloc.exit.i ], [ -4, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i32 %.143
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ma_resource_manager_data_buffer_init_connector(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.ma_decoder_config, align 8  ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2324
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load atomic i32, ptr %i.d seq_cst, align 8 ; 2 uses
  switch i32 %i.e, label %ma_fence_release.exit [
    i32 -19, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !2324
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load atomic i32, ptr %i.g seq_cst, align 8
  switch i32 %i.h, label %ma_fence_release.exit [
    i32 1, label %ma_audio_buffer_init.exit
    i32 2, label %bb.c
    i32 3, label %ma_paged_audio_buffer_init.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !2324 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.l = load <2 x i32>, ptr %i.k, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9    ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(151) %i.p, i8 0, i64 151, i1 false)
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %ma_fence_release.exit, label %ma_allocation_callbacks_init_copy.exit.i.i

ma_allocation_callbacks_init_copy.exit.i.i:       ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.r, i8 0, i64 80, i1 false)
  store ptr @g_ma_audio_buffer_ref_data_source_vtable, ptr %i.p, align 8, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 -1, ptr %i.s, align 8, !tbaa !354
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 -1, ptr %i.t, align 8, !tbaa !355
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.p, ptr %i.u, align 8, !tbaa !356
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  store <2 x i32> %i.l, ptr %i.w, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.aa, align 8
  store ptr @ma__malloc_default, ptr %.sroa.17.32..sroa_idx, align 8, !tbaa !33
  %.sroa.20.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @ma__realloc_default, ptr %.sroa.20.32..sroa_idx, align 8, !tbaa !33
  %.sroa.23.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @ma__free_default, ptr %.sroa.23.32..sroa_idx, align 8, !tbaa !33
  store i64 0, ptr %i.x, align 8, !tbaa !1518
  store i64 %i.n, ptr %i.y, align 8, !tbaa !1519
  store ptr %i.o, ptr %i.z, align 8, !tbaa !1520
  br label %ma_audio_buffer_init.exit.thread

ma_paged_audio_buffer_init.exit:                  ; preds = %bb.b
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !2324 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ae, i8 0, i64 64, i1 false)
  store ptr @g_ma_paged_audio_buffer_data_source_vtable, ptr %i.ad, align 8, !tbaa !353
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 -1, ptr %i.af, align 8, !tbaa !354
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 -1, ptr %i.ag, align 8, !tbaa !355
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !356
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.ac, ptr %i.aj, align 8, !tbaa !1544
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !1546
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  br label %ma_audio_buffer_init.exit.thread

ma_audio_buffer_init.exit:                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2320 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !2987, !noalias !2997
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.666.0..sroa_idx, i8 0, i64 20, i1 false)
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.868.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2280, !noalias !2997
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.av = load i32, ptr %i.au, align 8, !tbaa !2281, !noalias !2997
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2283, !noalias !2997
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %.sroa.767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.767.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i64 48, i1 false)
  %i.az = load <2 x i32>, ptr %i.ap, align 8, !tbaa !8, !noalias !2997
  store <2 x i32> %i.az, ptr %4, align 8, !tbaa !8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ar, ptr %.sroa.565.0..sroa_idx, align 8, !tbaa !8
  %.sroa.969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i32 0, ptr %.sroa.969.0..sroa_idx, align 8, !tbaa !8
  %.sroa.1070.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 116
  store i32 0, ptr %.sroa.1070.0..sroa_idx, align 4, !tbaa !8
  %.sroa.1171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %i.at, ptr %.sroa.1171.0..sroa_idx, align 8, !tbaa !1594
  %.sroa.1272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i32 %i.av, ptr %.sroa.1272.0..sroa_idx, align 8, !tbaa !8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 132
  store i32 0, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.1373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 136
  store ptr %i.ax, ptr %.sroa.1373.0..sroa_idx, align 8, !tbaa !33
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !2324 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bg = call i32 @ma_decoder_init_memory(ptr noundef %i.bc, i64 noundef %i.be, ptr noundef nonnull %4, ptr noundef nonnull %i.bf) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %ma_audio_buffer_init.exit.thread, label %ma_fence_release.exit

ma_audio_buffer_init.exit.thread:                 ; preds = %ma_allocation_callbacks_init_copy.exit.i.i, %ma_paged_audio_buffer_init.exit, %ma_audio_buffer_init.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !2304 ; 6 uses
  %.not = icmp eq i64 %i.bj, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !2306 ; 6 uses
  %.not42 = icmp eq i64 %i.bl, -1
  %or.cond = select i1 %.not, i1 %.not42, i1 false
  %i.bm = icmp ult i64 %i.bl, %i.bj
  %or.cond98 = select i1 %or.cond, i1 true, i1 %i.bm
  br i1 %or.cond98, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.d

bb.d:                                             ; preds = %ma_audio_buffer_init.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.bn = load ptr, ptr %0, align 8, !tbaa !353
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1510 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = call i32 %i.bp(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #55, !inline_history !2365
  %.not.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bj, ptr %i.bs, align 8, !tbaa !1502
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bl, ptr %i.bt, align 8, !tbaa !354
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.bu, align 8, !tbaa !1504
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.bv, align 8, !tbaa !355
  br label %ma_data_source_set_range_in_pcm_frames.exit

bb.g:                                             ; preds = %bb.e
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !69
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.bz = call i64 @llvm.umax.i64(i64 %i.bw, i64 %i.by) ; 2 uses
  store i64 %i.bj, ptr %i.bx, align 8, !tbaa !1502
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bl, ptr %i.ca, align 8, !tbaa !354
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.cb, align 8, !tbaa !1504
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.cc, align 8, !tbaa !355
  %i.cd = icmp ult i64 %i.bz, %i.bj
  br i1 %i.cd, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ce = load ptr, ptr %0, align 8, !tbaa !353
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1501 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = call i32 %i.cg(ptr noundef nonnull %0, i64 noundef %i.bj) #55, !inline_history !2366 ; 0 uses
  br label %ma_data_source_set_range_in_pcm_frames.exit

bb.j:                                             ; preds = %bb.g
  %i.cj = icmp ugt i64 %i.bz, %i.bl
  br i1 %i.cj, label %bb.k, label %ma_data_source_set_range_in_pcm_frames.exit

bb.k:                                             ; preds = %bb.j
  %i.ck = load ptr, ptr %0, align 8, !tbaa !353
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1501 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = call i32 %i.cm(ptr noundef nonnull %0, i64 noundef %i.bl) #55, !inline_history !2366 ; 0 uses
  br label %ma_data_source_set_range_in_pcm_frames.exit

ma_data_source_set_range_in_pcm_frames.exit:      ; preds = %ma_audio_buffer_init.exit.thread, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !2307 ; 3 uses
  %.not43 = icmp eq i64 %i.cq, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !2308 ; 5 uses
  %.not44 = icmp eq i64 %i.cs, -1
  %or.cond99 = select i1 %.not43, i1 %.not44, i1 false
  %i.ct = icmp ult i64 %i.cs, %i.cq
  %or.cond100 = select i1 %or.cond99, i1 true, i1 %i.ct
  br i1 %or.cond100, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %bb.m

bb.m:                                             ; preds = %ma_data_source_set_range_in_pcm_frames.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !354 ; 2 uses
  %i.cw = icmp ugt i64 %i.cs, %i.cv
  %i.cx = icmp ne i64 %i.cs, -1                   ; 2 uses
  %or.cond.i48 = and i1 %i.cx, %i.cw
  br i1 %or.cond.i48, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cq, ptr %i.cy, align 8, !tbaa !1504
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !1502
  %i.dc = sub i64 %i.cv, %i.db
  %i.dd = call i64 @llvm.umin.i64(i64 %i.cs, i64 %i.dc)
  %spec.store.select.i = select i1 %i.cx, i64 %i.dd, i64 -1
  store i64 %spec.store.select.i, ptr %i.cz, align 8
  br label %ma_data_source_set_loop_point_in_pcm_frames.exit

ma_data_source_set_loop_point_in_pcm_frames.exit: ; preds = %ma_data_source_set_range_in_pcm_frames.exit, %bb.n, %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.df = load i32, ptr %i.de, align 4, !tbaa !2309 ; 3 uses
  %.not45 = icmp eq i32 %i.df, 0
  br i1 %.not45, label %ma_data_source_set_looping.exit, label %bb.o

bb.o:                                             ; preds = %ma_data_source_set_loop_point_in_pcm_frames.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dh = atomicrmw xchg ptr %i.dg, i32 %i.df seq_cst, align 8 ; 0 uses
  %i.di = load ptr, ptr %0, align 8, !tbaa !353
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1514 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %ma_data_source_set_looping.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = call i32 %i.dk(ptr noundef nonnull %0, i32 noundef %i.df) #55, !inline_history !2341 ; 0 uses
  br label %ma_data_source_set_looping.exit

ma_data_source_set_looping.exit:                  ; preds = %bb.p, %bb.o, %ma_data_source_set_loop_point_in_pcm_frames.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 124
  store atomic i32 1, ptr %i.dn seq_cst, align 4
  %.not46 = icmp eq ptr %2, null
  br i1 %.not46, label %ma_async_notification_signal.exit, label %bb.q
end_hunk_23
begin_hunk_24_@ma_device_init_by_type__alsa:bb.a
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 440
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !9
  %i.ve = call i32 %i.vd(ptr noundef %i.bj) #55   ; 0 uses
  %i.vf = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.vg = icmp eq ptr %i.vf, null
  br i1 %i.vg, label %ma_device_get_log.exit499, label %bb.cv

bb.cv:                                            ; preds = %ma_device_get_context.exit.i497
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 112
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !209
  br label %ma_device_get_log.exit499

ma_device_get_log.exit499:                        ; preds = %ma_device_get_context.exit.i497, %bb.cv
  %.0.i1.i498 = phi ptr [ %i.vi, %bb.cv ], [ null, %ma_device_get_context.exit.i497 ]
  %i.vj = call i32 @ma_log_post(ptr noundef %.0.i1.i498, i32 noundef 1, ptr noundef nonnull @.str.417) ; 0 uses
  br label %ma_log_post.exit

bb.cw:                                            ; preds = %ma_malloc.exit
  %i.vk = call i32 @eventfd(i32 noundef 0, i32 noundef 0) #55 ; 6 uses
  %i.vl = icmp slt i32 %i.vk, 0
  br i1 %i.vl, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.vm = load ptr, ptr %0, align 8, !tbaa !132   ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 312
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !31 ; 2 uses
  %.not9.i501 = icmp eq ptr %i.vo, null
  br i1 %.not9.i501, label %ma_device_get_context.exit.i503, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vm, i64 288
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !25
  call void %i.vo(ptr noundef nonnull %i.uz, ptr noundef %i.vq) #55, !inline_history !32
  %.pre598 = load ptr, ptr %0, align 8, !tbaa !132
  br label %ma_device_get_context.exit.i503

ma_device_get_context.exit.i503:                  ; preds = %bb.cy, %bb.cx
  %i.vr = phi ptr [ %.pre598, %bb.cy ], [ %i.vm, %bb.cx ]
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 440
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !9
  %i.vu = call i32 %i.vt(ptr noundef %i.bj) #55   ; 0 uses
  %i.vv = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.vw = icmp eq ptr %i.vv, null
  br i1 %i.vw, label %ma_device_get_log.exit505, label %bb.cz

bb.cz:                                            ; preds = %ma_device_get_context.exit.i503
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 112
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !209
  br label %ma_device_get_log.exit505

ma_device_get_log.exit505:                        ; preds = %ma_device_get_context.exit.i503, %bb.cz
  %.0.i1.i504 = phi ptr [ %i.vy, %bb.cz ], [ null, %ma_device_get_context.exit.i503 ]
  %i.vz = call i32 @ma_log_post(ptr noundef %.0.i1.i504, i32 noundef 1, ptr noundef nonnull @.str.418) ; 0 uses
  %i.wa = tail call ptr @__errno_location() #68
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !8
  %i.wc = call fastcc i32 @ma_result_from_errno(i32 noundef %i.wb)
  br label %ma_log_post.exit

bb.da:                                            ; preds = %bb.cw
  store i32 %i.vk, ptr %i.uz, align 4, !tbaa !3073
  %i.wd = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  store i16 1, ptr %i.wd, align 4, !tbaa !3089
  %i.we = getelementptr inbounds nuw i8, ptr %i.uz, i64 6
  store i16 0, ptr %i.we, align 2, !tbaa !3090
  %i.wf = load ptr, ptr %0, align 8, !tbaa !132
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 936
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !9
  %i.wi = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.wj = call i32 %i.wh(ptr noundef %i.bj, ptr noundef nonnull %i.wi, i32 noundef %i.uh) #55 ; 3 uses
  %i.wk = icmp slt i32 %i.wj, 1
  br i1 %i.wk, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  %i.wl = call i32 @close(i32 noundef %i.vk) #55  ; 0 uses
  %i.wm = load ptr, ptr %0, align 8, !tbaa !132   ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 312
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !31 ; 2 uses
  %.not9.i507 = icmp eq ptr %i.wo, null
  br i1 %.not9.i507, label %ma_device_get_context.exit.i509, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wm, i64 288
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !25
  call void %i.wo(ptr noundef nonnull %i.uz, ptr noundef %i.wq) #55, !inline_history !32
  %.pre597 = load ptr, ptr %0, align 8, !tbaa !132
  br label %ma_device_get_context.exit.i509

ma_device_get_context.exit.i509:                  ; preds = %bb.dc, %bb.db
  %i.wr = phi ptr [ %.pre597, %bb.dc ], [ %i.wm, %bb.db ]
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 440
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !9
  %i.wu = call i32 %i.wt(ptr noundef %i.bj) #55   ; 0 uses
  %i.wv = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.ww = icmp eq ptr %i.wv, null
  br i1 %i.ww, label %ma_device_get_log.exit511, label %bb.dd

bb.dd:                                            ; preds = %ma_device_get_context.exit.i509
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 112
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !209
  br label %ma_device_get_log.exit511

ma_device_get_log.exit511:                        ; preds = %ma_device_get_context.exit.i509, %bb.dd
  %.0.i1.i510 = phi ptr [ %i.wy, %bb.dd ], [ null, %ma_device_get_context.exit.i509 ]
  %i.wz = call i32 @ma_log_post(ptr noundef %.0.i1.i510, i32 noundef 1, ptr noundef nonnull @.str.419) ; 0 uses
  br label %ma_log_post.exit

bb.de:                                            ; preds = %bb.da
  %i.xa = icmp eq i32 %3, 2                       ; 2 uses
  br i1 %i.xa, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 3460
  store i32 %i.wj, ptr %i.xb, align 4, !tbaa !9
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 3448
  store ptr %i.uz, ptr %i.xc, align 8, !tbaa !9
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 3468
  store i32 %i.vk, ptr %i.xd, align 4, !tbaa !9
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 3456
  store i32 %i.wj, ptr %i.xe, align 8, !tbaa !9
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 3440
  store ptr %i.uz, ptr %i.xf, align 8, !tbaa !9
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 3464
  store i32 %i.vk, ptr %i.xg, align 8, !tbaa !9
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.xh = load ptr, ptr %0, align 8, !tbaa !132
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 768
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !9
  %i.xk = call i32 %i.xj(ptr noundef %i.bj) #55   ; 2 uses
  %i.xl = icmp slt i32 %i.xk, 0
  br i1 %i.xl, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.xm = call i32 @close(i32 noundef %i.vk) #55  ; 0 uses
  %i.xn = load ptr, ptr %0, align 8, !tbaa !132   ; 3 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 312
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !31 ; 2 uses
  %.not9.i513 = icmp eq ptr %i.xp, null
  br i1 %.not9.i513, label %ma_device_get_context.exit.i515, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 288
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !25
  call void %i.xp(ptr noundef nonnull %i.uz, ptr noundef %i.xr) #55, !inline_history !32
  %.pre596 = load ptr, ptr %0, align 8, !tbaa !132
  br label %ma_device_get_context.exit.i515

ma_device_get_context.exit.i515:                  ; preds = %bb.dj, %bb.di
  %i.xs = phi ptr [ %.pre596, %bb.dj ], [ %i.xn, %bb.di ]
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 440
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !9
  %i.xv = call i32 %i.xu(ptr noundef %i.bj) #55   ; 0 uses
  %i.xw = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.xx = icmp eq ptr %i.xw, null
  br i1 %i.xx, label %ma_device_get_log.exit517, label %bb.dk

bb.dk:                                            ; preds = %ma_device_get_context.exit.i515
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 112
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !209
  br label %ma_device_get_log.exit517

ma_device_get_log.exit517:                        ; preds = %ma_device_get_context.exit.i515, %bb.dk
  %.0.i1.i516 = phi ptr [ %i.xz, %bb.dk ], [ null, %ma_device_get_context.exit.i515 ]
  %i.ya = call i32 @ma_log_post(ptr noundef %.0.i1.i516, i32 noundef 1, ptr noundef nonnull @.str.420) ; 0 uses
  %i.yb = sub nsw i32 0, %i.xk
  %i.yc = call fastcc i32 @ma_result_from_errno(i32 noundef %i.yb)
  br label %ma_log_post.exit

bb.dl:                                            ; preds = %bb.dh
  br i1 %i.xa, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 3432
  store ptr %i.bj, ptr %i.yd, align 8, !tbaa !9
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 3473
  store i8 0, ptr %i.ye, align 1, !tbaa !9
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 3424
  store ptr %i.bj, ptr %i.yf, align 8, !tbaa !9
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 3472
  store i8 0, ptr %i.yg, align 8, !tbaa !9
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  store i32 %switch.ext, ptr %i.h, align 4, !tbaa !101
  store i32 %i.ix, ptr %i.hz, align 8, !tbaa !103
  store i32 %i.ka, ptr %i.jc, align 4, !tbaa !104
  %.not553 = icmp eq i32 %i.ix, 0
  br i1 %.not553, label %ma_channel_map_copy.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.yh = call i32 @llvm.umin.i32(i32 %i.ix, i32 254)
  %i.yi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.yj = zext nneg i32 %i.yh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yi, ptr nonnull readonly align 16 %i.b, i64 %i.yj, i1 false)
  br label %ma_channel_map_copy.exit

ma_channel_map_copy.exit:                         ; preds = %bb.do, %bb.dp
  %i.yk = getelementptr inbounds nuw i8, ptr %2, i64 280
  store i32 %i.mc, ptr %i.yk, align 8, !tbaa !122
  store i32 %i.ky, ptr %i.kb, align 8, !tbaa !124
  br label %ma_log_post.exit

ma_log_post.exit:                                 ; preds = %ma_device_get_context.exit.i372, %ma_device_get_context.exit.i, %bb.bf, %bb.ba, %bb.av, %bb.aq, %._crit_edge.i381, %ma_device_get_log.exit374, %._crit_edge.i, %ma_device_get_log.exit, %bb.a, %ma_channel_map_copy.exit, %ma_device_get_log.exit517, %ma_device_get_log.exit511, %ma_device_get_log.exit505, %ma_device_get_log.exit499, %ma_device_get_log.exit493, %ma_device_get_log.exit475, %ma_device_get_log.exit469, %ma_device_get_log.exit463, %ma_device_get_log.exit457, %ma_device_get_log.exit451, %ma_device_get_log.exit445, %ma_device_get_log.exit434, %ma_device_get_log.exit404, %ma_log_post.exit398, %ma_log_post.exit368, %ma_log_post.exit353
  %.6 = phi i32 [ %i.dv, %ma_log_post.exit368 ], [ %i.y, %bb.a ], [ %i.co, %ma_log_post.exit353 ], [ %i.hi, %ma_log_post.exit398 ], [ -200, %ma_device_get_log.exit404 ], [ %i.mx, %ma_device_get_log.exit434 ], [ -4, %ma_device_get_log.exit445 ], [ %i.on, %ma_device_get_log.exit451 ], [ %i.pv, %ma_device_get_log.exit457 ], [ %i.so, %ma_device_get_log.exit475 ], [ -1, %ma_device_get_log.exit493 ], [ -4, %ma_device_get_log.exit499 ], [ %i.wc, %ma_device_get_log.exit505 ], [ -1, %ma_device_get_log.exit511 ], [ %i.yc, %ma_device_get_log.exit517 ], [ 0, %ma_channel_map_copy.exit ], [ %i.qy, %ma_device_get_log.exit463 ], [ %i.rt, %ma_device_get_log.exit469 ], [ %i.ly, %bb.bf ], [ %i.kx, %bb.ba ], [ %i.jz, %bb.av ], [ %i.iw, %bb.aq ], [ -4, %._crit_edge.i ], [ -200, %._crit_edge.i381 ], [ -4, %ma_device_get_log.exit ], [ -4, %ma_device_get_context.exit.i ], [ -200, %ma_device_get_log.exit374 ], [ -200, %ma_device_get_context.exit.i372 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i32 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc zeroext range(i8 0, 20) i8 @ma_convert_alsa_channel_position_to_ma_channel(i32 noundef %0) unnamed_addr #1 {
bb.a:
  %switch.tableidx = add i32 %0, -2               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 26
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ma_convert_alsa_channel_position_to_ma_channel, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: nounwind
declare i32 @eventfd(i32 noundef, i32 noundef) local_unnamed_addr #13

declare i32 @close(i32 noundef) local_unnamed_addr #51

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #51

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #53

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -302, 1) i32 @ma_device_wait__alsa(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %3, i16 noundef signext range(i16 1, 5) %4) unnamed_addr #8 {
bb.a:
  %i.a = alloca i16, align 2                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = sext i32 %3 to i64                       ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = add nsw i32 %3, -1
  %i.g = icmp eq ptr %0, null                     ; 3 uses
  br i1 %i.g, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.h = tail call i32 @poll(ptr noundef %2, i64 noundef %i.c, i32 noundef -1) #55
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %ma_log_post.exit.us, label %.split69.us

ma_log_post.exit.us:                              ; preds = %.split.us.preheader, %ma_log_post.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.j = tail call i32 @poll(ptr noundef %2, i64 noundef %i.c, i32 noundef -1) #55
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %ma_log_post.exit.us, label %.split69.us

.split:                                           ; preds = %bb.a, %ma_log_post.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.l = call i32 @poll(ptr noundef %2, i64 noundef %i.c, i32 noundef -1) #55
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %ma_device_get_context.exit.i, label %bb.e

ma_device_get_context.exit.i:                     ; preds = %.split
  %i.n = load ptr, ptr %0, align 8, !tbaa !132    ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %ma_log_post.exit, label %ma_device_get_log.exit

ma_device_get_log.exit:                           ; preds = %ma_device_get_context.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !209  ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %ma_log_post.exit, label %bb.b

bb.b:                                             ; preds = %ma_device_get_log.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 104 ; 2 uses
  %i.t = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.s) #55 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !36   ; 2 uses
  %.not21.i = icmp eq i32 %i.v, 0
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.w = phi i32 [ %i.ab, %bb.d ], [ %i.v, %bb.b ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43
  call void %i.y(ptr noundef %i.aa, i32 noundef 2, ptr noundef nonnull @.str.438) #55, !inline_history !45
  %.pre.i = load i32, ptr %i.u, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ab = phi i32 [ %i.w, %.lr.ph.i ], [ %.pre.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = icmp samesign ult i64 %indvars.iv.next.i, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !44

._crit_edge.i:                                    ; preds = %bb.d, %bb.b
  %i.ae = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.s) #55 ; 0 uses
  br label %ma_log_post.exit

bb.e:                                             ; preds = %.split
  %i.af = load i16, ptr %i.d, align 2, !tbaa !3090
  %i.ag = and i16 %i.af, 1
  %.not = icmp eq i16 %i.ag, 0
  br i1 %.not, label %bb.m, label %.split69.us

.split69.us:                                      ; preds = %bb.e, %ma_log_post.exit.us, %.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.ah = load i32, ptr %2, align 4, !tbaa !3073
  %i.ai = call i64 @read(i32 noundef %i.ah, ptr noundef nonnull %i.b, i64 noundef 8) #55
  %i.aj = and i64 %i.ai, 2147483648
  %.not28 = icmp eq i64 %i.aj, 0
  br i1 %.not28, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.split69.us
  br i1 %i.g, label %ma_log_post.exit40, label %ma_device_get_context.exit.i29

ma_device_get_context.exit.i29:                   ; preds = %bb.f
  %i.ak = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %ma_log_post.exit40, label %ma_device_get_log.exit31

ma_device_get_log.exit31:                         ; preds = %ma_device_get_context.exit.i29
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !209 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %ma_log_post.exit40, label %bb.g

bb.g:                                             ; preds = %ma_device_get_log.exit31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 104 ; 2 uses
  %i.aq = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ap) #55 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 64 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !36 ; 2 uses
  %.not21.i32 = icmp eq i32 %i.as, 0
  br i1 %.not21.i32, label %._crit_edge.i38, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.g, %bb.i
  %i.at = phi i32 [ %i.ay, %bb.i ], [ %i.as, %bb.g ]
  %indvars.iv.i34 = phi i64 [ %indvars.iv.next.i37, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %indvars.iv.i34 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %.not.i35 = icmp eq ptr %i.av, null
  br i1 %.not.i35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !43
  call void %i.av(ptr noundef %i.ax, i32 noundef 1, ptr noundef nonnull @.str.439) #55, !inline_history !45
  %.pre.i36 = load i32, ptr %i.ar, align 8, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i33
  %i.ay = phi i32 [ %i.at, %.lr.ph.i33 ], [ %.pre.i36, %bb.h ] ; 2 uses
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i34, 1 ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next.i37, %i.az
  br i1 %i.ba, label %.lr.ph.i33, label %._crit_edge.i38, !llvm.loop !44

._crit_edge.i38:                                  ; preds = %bb.i, %bb.g
  %i.bb = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ap) #55 ; 0 uses
  br label %ma_log_post.exit40

ma_log_post.exit40:                               ; preds = %bb.f, %ma_device_get_context.exit.i29, %ma_device_get_log.exit31, %._crit_edge.i38
  %i.bc = tail call ptr @__errno_location() #68
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8
  %i.be = call fastcc i32 @ma_result_from_errno(i32 noundef %i.bd)
  br label %bb.l

bb.j:                                             ; preds = %.split69.us
  br i1 %i.g, label %ma_device_get_log.exit43, label %ma_device_get_context.exit.i41

ma_device_get_context.exit.i41:                   ; preds = %bb.j
  %i.bf = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %ma_device_get_log.exit43, label %bb.k

bb.k:                                             ; preds = %ma_device_get_context.exit.i41
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !209
  br label %ma_device_get_log.exit43
end_hunk_24
begin_hunk_25_@ma_decoding_backend_init_file__wav:bb.a

ma_free.exit:                                     ; preds = %bb.b, %bb.i, %bb.h, %bb.g, %ma_malloc.exit, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ %i.g, %bb.i ], [ -4, %ma_malloc.exit ], [ %i.g, %bb.g ], [ %i.g, %bb.h ], [ -4, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -10, 1) i32 @ma_decoding_backend_init_file_w__wav(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(none) %4) #8 {
bb.a:
  %.not.i = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not8.i = icmp eq ptr %i.b, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %3, align 8, !tbaa !25
  %i.d = tail call ptr %i.b(i64 noundef 520, ptr noundef %i.c) #55, !inline_history !26
  br label %ma_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef dereferenceable_or_null(520) ptr @malloc(i64 noundef 520) #67
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 5 uses
  %i.f = icmp eq ptr %.0.i, null
  br i1 %i.f, label %ma_free.exit, label %bb.e

bb.e:                                             ; preds = %ma_malloc.exit
  %i.g = tail call i32 @ma_wav_init_file_w(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %.0.i) ; 4 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %.not9.i = icmp eq ptr %i.i, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr %3, align 8, !tbaa !25
  tail call void %i.i(ptr noundef nonnull %.0.i, ptr noundef %i.j) #55, !inline_history !32
  br label %ma_free.exit

bb.i:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %.0.i) #55
  br label %ma_free.exit

bb.j:                                             ; preds = %bb.e
  store ptr %.0.i, ptr %4, align 8, !tbaa !33
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.b, %bb.i, %bb.h, %bb.g, %ma_malloc.exit, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ %i.g, %bb.i ], [ -4, %ma_malloc.exit ], [ %i.g, %bb.g ], [ %i.g, %bb.h ], [ -4, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -10, 1) i32 @ma_decoding_backend_init_memory__wav(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(none) %5) #8 {
bb.a:
  %.not.i = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not8.i = icmp eq ptr %i.b, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %4, align 8, !tbaa !25
  %i.d = tail call ptr %i.b(i64 noundef 520, ptr noundef %i.c) #55, !inline_history !26
  br label %ma_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef dereferenceable_or_null(520) ptr @malloc(i64 noundef 520) #67
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 5 uses
  %i.f = icmp eq ptr %.0.i, null
  br i1 %i.f, label %ma_free.exit, label %bb.e

bb.e:                                             ; preds = %ma_malloc.exit
  %i.g = tail call i32 @ma_wav_init_memory(ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %.0.i) ; 4 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %.not9.i = icmp eq ptr %i.i, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr %4, align 8, !tbaa !25
  tail call void %i.i(ptr noundef nonnull %.0.i, ptr noundef %i.j) #55, !inline_history !32
  br label %ma_free.exit

bb.i:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %.0.i) #55
  br label %ma_free.exit

bb.j:                                             ; preds = %bb.e
  store ptr %.0.i, ptr %5, align 8, !tbaa !33
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.b, %bb.i, %bb.h, %bb.g, %ma_malloc.exit, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ %i.g, %bb.i ], [ -4, %ma_malloc.exit ], [ %i.g, %bb.g ], [ %i.g, %bb.h ], [ -4, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ma_decoding_backend_uninit__wav(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) #8 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = tail call i32 @ma_dr_wav_uninit(ptr noundef nonnull readonly %i.b) ; 0 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %.not9.i = icmp eq ptr %i.e, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %2, align 8, !tbaa !25
  tail call void %i.e(ptr noundef nonnull %1, ptr noundef %i.f) #55, !inline_history !32
  br label %ma_free.exit

bb.e:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %1) #55
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -10, 1) i32 @ma_decoding_backend_init__flac(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(none) %7) #8 {
bb.a:
  %.not.i = icmp eq ptr %6, null                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not8.i = icmp eq ptr %i.b, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %6, align 8, !tbaa !25
  %i.d = tail call ptr %i.b(i64 noundef 120, ptr noundef %i.c) #55, !inline_history !26
  br label %ma_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #67
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 20 uses
  %i.f = icmp eq ptr %.0.i, null
  br i1 %i.f, label %ma_free.exit, label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %ma_malloc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %.0.i, i8 0, i64 120, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 104 ; 2 uses
  store i32 5, ptr %i.g, align 8, !tbaa !1705
  %.not.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %ma_zero_memory_default.exit.i.i
  %i.h = load i32, ptr %5, align 4, !tbaa !81     ; 2 uses
  switch i32 %i.h, label %bb.g [
    i32 5, label %bb.f
    i32 2, label %bb.f
    i32 4, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  store i32 %i.h, ptr %i.g, align 8, !tbaa !1705
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %ma_zero_memory_default.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  store ptr @g_ma_flac_ds_vtable, ptr %.0.i, align 8, !tbaa !353
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i64 -1, ptr %i.j, align 8, !tbaa !354
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store i64 -1, ptr %i.k, align 8, !tbaa !355
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store ptr %.0.i, ptr %i.l, align 8, !tbaa !356
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = icmp eq ptr %1, null
  %i.o = icmp eq ptr %2, null
  %or.cond.i = or i1 %i.n, %i.o
  br i1 %or.cond.i, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  store ptr %1, ptr %i.p, align 8, !tbaa !1707
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  store ptr %2, ptr %i.q, align 8, !tbaa !1708
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 88
  store ptr %3, ptr %i.r, align 8, !tbaa !1709
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 96
  store ptr %4, ptr %i.s, align 8, !tbaa !1710
  %i.t = tail call fastcc ptr @ma_dr_flac_open_with_metadata_private(ptr noundef nonnull @ma_flac_dr_callback__read, ptr noundef nonnull @ma_flac_dr_callback__seek, ptr noundef nonnull @ma_flac_dr_callback__tell, ptr noundef null, i32 noundef 2, ptr noundef nonnull %.0.i, ptr noundef nonnull %.0.i, ptr noundef readonly %6) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 112
  store ptr %i.t, ptr %i.u, align 8, !tbaa !1711
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %select.unfold, label %ma_flac_init.exit

select.unfold:                                    ; preds = %bb.h, %bb.g
  %.0.i17.ph = phi i32 [ -2, %bb.g ], [ -10, %bb.h ] ; 3 uses
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %select.unfold
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 2 uses
  %.not9.i = icmp eq ptr %i.x, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %6, align 8, !tbaa !25
  tail call void %i.x(ptr noundef nonnull %.0.i, ptr noundef %i.y) #55, !inline_history !32
  br label %ma_free.exit

bb.k:                                             ; preds = %select.unfold
  tail call void @free(ptr noundef nonnull %.0.i) #55
  br label %ma_free.exit

ma_flac_init.exit:                                ; preds = %bb.h
  store ptr %.0.i, ptr %7, align 8, !tbaa !33
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.b, %bb.k, %bb.j, %bb.i, %ma_malloc.exit, %ma_flac_init.exit
  %.0 = phi i32 [ 0, %ma_flac_init.exit ], [ %.0.i17.ph, %bb.k ], [ -4, %ma_malloc.exit ], [ %.0.i17.ph, %bb.i ], [ %.0.i17.ph, %bb.j ], [ -4, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -10, 1) i32 @ma_decoding_backend_init_file__flac(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(none) %4) #8 {
bb.a:
  %.not.i = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not8.i = icmp eq ptr %i.b, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %3, align 8, !tbaa !25
  %i.d = tail call ptr %i.b(i64 noundef 120, ptr noundef %i.c) #55, !inline_history !26
  br label %ma_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #67
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 15 uses
  %i.f = icmp eq ptr %.0.i, null
  br i1 %i.f, label %ma_free.exit, label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %ma_malloc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %.0.i, i8 0, i64 120, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 104 ; 2 uses
  store i32 5, ptr %i.g, align 8, !tbaa !1705
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %ma_zero_memory_default.exit.i.i
  %i.h = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  switch i32 %i.h, label %bb.g [
    i32 5, label %bb.f
    i32 2, label %bb.f
    i32 4, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  store i32 %i.h, ptr %i.g, align 8, !tbaa !1705
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %ma_zero_memory_default.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  store ptr @g_ma_flac_ds_vtable, ptr %.0.i, align 8, !tbaa !353
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i64 -1, ptr %i.j, align 8, !tbaa !354
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store i64 -1, ptr %i.k, align 8, !tbaa !355
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store ptr %.0.i, ptr %i.l, align 8, !tbaa !356
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = icmp eq ptr %1, null
  br i1 %i.n, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call noalias ptr @fopen(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.176) ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.j, label %ma_fopen.exit.i.i

ma_fopen.exit.i.i:                                ; preds = %bb.h
  %i.q = tail call fastcc ptr @ma_dr_flac_open_with_metadata_private(ptr noundef nonnull @ma_dr_flac__on_read_stdio, ptr noundef nonnull @ma_dr_flac__on_seek_stdio, ptr noundef nonnull @ma_dr_flac__on_tell_stdio, ptr noundef null, i32 noundef 2, ptr noundef nonnull %i.o, ptr noundef nonnull %i.o, ptr noundef readonly %3) ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.i, label %bb.n

bb.i:                                             ; preds = %ma_fopen.exit.i.i
  %i.s = tail call i32 @fclose(ptr noundef nonnull %i.o) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 112
  store ptr null, ptr %i.t, align 8, !tbaa !1711
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31   ; 2 uses
  %.not9.i = icmp eq ptr %i.v, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load ptr, ptr %3, align 8, !tbaa !25
  tail call void %i.v(ptr noundef nonnull %.0.i, ptr noundef %i.w) #55, !inline_history !32
  br label %ma_free.exit

bb.m:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %.0.i) #55
  br label %ma_free.exit

bb.n:                                             ; preds = %ma_fopen.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 112
  store ptr %i.q, ptr %i.x, align 8, !tbaa !1711
  store ptr %.0.i, ptr %4, align 8, !tbaa !33
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.b, %bb.m, %bb.l, %bb.k, %ma_malloc.exit, %bb.n
  %.0 = phi i32 [ 0, %bb.n ], [ -10, %bb.m ], [ -4, %ma_malloc.exit ], [ -10, %bb.k ], [ -10, %bb.l ], [ -4, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -10, 1) i32 @ma_decoding_backend_init_file_w__flac(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(none) %4) #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.not.i = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %.not8.i = icmp eq ptr %i.c, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %3, align 8, !tbaa !25
  %i.e = tail call ptr %i.c(i64 noundef 120, ptr noundef %i.d) #55, !inline_history !26
  br label %ma_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #67
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 15 uses
  %i.g = icmp eq ptr %.0.i, null
  br i1 %i.g, label %ma_free.exit, label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %ma_malloc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %.0.i, i8 0, i64 120, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 104 ; 2 uses
  store i32 5, ptr %i.h, align 8, !tbaa !1705
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %ma_zero_memory_default.exit.i.i
  %i.i = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  switch i32 %i.i, label %bb.g [
    i32 5, label %bb.f
    i32 2, label %bb.f
    i32 4, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  store i32 %i.i, ptr %i.h, align 8, !tbaa !1705
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %ma_zero_memory_default.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.j, i8 0, i64 64, i1 false)
  store ptr @g_ma_flac_ds_vtable, ptr %.0.i, align 8, !tbaa !353
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i64 -1, ptr %i.k, align 8, !tbaa !354
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store i64 -1, ptr %i.l, align 8, !tbaa !355
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store ptr %.0.i, ptr %i.m, align 8, !tbaa !356
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.o = call i32 @ma_wfopen(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull @.str.177, ptr noundef readonly %3)
  %.not.i9.i = icmp eq i32 %i.o, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.q = call fastcc ptr @ma_dr_flac_open_with_metadata_private(ptr noundef nonnull @ma_dr_flac__on_read_stdio, ptr noundef nonnull @ma_dr_flac__on_seek_stdio, ptr noundef nonnull @ma_dr_flac__on_tell_stdio, ptr noundef null, i32 noundef 2, ptr noundef %i.p, ptr noundef %i.p, ptr noundef readonly %3) ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.s = call i32 @fclose(ptr noundef %i.p)       ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 112
  store ptr null, ptr %i.t, align 8, !tbaa !1711
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31   ; 2 uses
  %.not9.i = icmp eq ptr %i.v, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load ptr, ptr %3, align 8, !tbaa !25
  call void %i.v(ptr noundef nonnull %.0.i, ptr noundef %i.w) #55, !inline_history !32
  br label %ma_free.exit

bb.m:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %.0.i) #55
  br label %ma_free.exit

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 112
  store ptr %i.q, ptr %i.x, align 8, !tbaa !1711
  store ptr %.0.i, ptr %4, align 8, !tbaa !33
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.b, %bb.m, %bb.l, %bb.k, %ma_malloc.exit, %bb.n
  %.0 = phi i32 [ 0, %bb.n ], [ -10, %bb.m ], [ -4, %ma_malloc.exit ], [ -10, %bb.k ], [ -10, %bb.l ], [ -4, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -10, 1) i32 @ma_decoding_backend_init_memory__flac(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(none) %5) #8 {
bb.a:
  %6 = alloca %struct.ma_dr_flac__memory_stream, align 8 ; 9 uses
  %.not.i = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not8.i = icmp eq ptr %i.b, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %4, align 8, !tbaa !25
  %i.d = tail call ptr %i.b(i64 noundef 120, ptr noundef %i.c) #55, !inline_history !26
  br label %ma_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #67
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 15 uses
  %i.f = icmp eq ptr %.0.i, null
  br i1 %i.f, label %ma_free.exit, label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %ma_malloc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %.0.i, i8 0, i64 120, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 104 ; 2 uses
  store i32 5, ptr %i.g, align 8, !tbaa !1705
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %ma_zero_memory_default.exit.i.i
  %i.h = load i32, ptr %3, align 4, !tbaa !81     ; 2 uses
  switch i32 %i.h, label %bb.g [
    i32 5, label %bb.f
    i32 2, label %bb.f
    i32 4, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  store i32 %i.h, ptr %i.g, align 8, !tbaa !1705
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %ma_zero_memory_default.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  store ptr @g_ma_flac_ds_vtable, ptr %.0.i, align 8, !tbaa !353
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i64 -1, ptr %i.j, align 8, !tbaa !354
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store i64 -1, ptr %i.k, align 8, !tbaa !355
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store ptr %.0.i, ptr %i.l, align 8, !tbaa !356
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  store ptr %1, ptr %6, align 8, !tbaa !1712
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.n, align 8, !tbaa !1713
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.o, align 8, !tbaa !1714
  %i.p = call fastcc ptr @ma_dr_flac_open_with_metadata_private(ptr noundef nonnull @ma_dr_flac__on_read_memory, ptr noundef nonnull @ma_dr_flac__on_seek_memory, ptr noundef nonnull @ma_dr_flac__on_tell_memory, ptr noundef null, i32 noundef 2, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef readonly %4) ; 6 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 248 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1715
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1716
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 288
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1721
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.r, ptr %i.x, align 8, !tbaa !1722
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 328
  store ptr %i.r, ptr %i.y, align 8, !tbaa !1725
  br label %bb.o

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 112
  store ptr null, ptr %i.z, align 8, !tbaa !1711
  br i1 %.not.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31 ; 2 uses
  %.not9.i = icmp eq ptr %i.ab, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = load ptr, ptr %4, align 8, !tbaa !25
  call void %i.ab(ptr noundef nonnull %.0.i, ptr noundef %i.ac) #55, !inline_history !32
  br label %ma_free.exit

bb.n:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %.0.i) #55
  br label %ma_free.exit

bb.o:                                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 112
  store ptr %i.p, ptr %i.ad, align 8, !tbaa !1711
  store ptr %.0.i, ptr %5, align 8, !tbaa !33
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.b, %bb.n, %bb.m, %bb.l, %ma_malloc.exit, %bb.o
  %.0 = phi i32 [ 0, %bb.o ], [ -10, %bb.n ], [ -4, %ma_malloc.exit ], [ -10, %bb.l ], [ -10, %bb.m ], [ -4, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ma_decoding_backend_uninit__flac(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) #8 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1711 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1726
  %i.g = icmp eq ptr %i.f, @ma_dr_flac__on_read_stdio
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1725
  %i.j = tail call i32 @fclose(ptr noundef %i.i)  ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1716
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1721 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1727
  %i.q = icmp eq ptr %i.p, @ma_dr_flac__on_read_stdio
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1722
  %i.t = tail call i32 @fclose(ptr noundef %i.s)  ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25
  tail call void %i.v(ptr noundef nonnull %i.c, ptr noundef %i.x) #55, !inline_history !3131
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.h, %bb.i
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 2 uses
  %.not9.i = icmp eq ptr %i.z, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr %2, align 8, !tbaa !25
  tail call void %i.z(ptr noundef nonnull %1, ptr noundef %i.aa) #55, !inline_history !32
  br label %ma_free.exit

bb.m:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %1) #55
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.a, %bb.k, %bb.l, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -10, 1) i32 @ma_decoding_backend_init__mp3(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(none) %7) #8 {
bb.a:
  %.not.i = icmp eq ptr %6, null                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not8.i = icmp eq ptr %i.b, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %6, align 8, !tbaa !25
  %i.d = tail call ptr %i.b(i64 noundef 32504, ptr noundef %i.c) #55, !inline_history !26
  br label %ma_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef dereferenceable_or_null(32504) ptr @malloc(i64 noundef 32504) #67
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 5 uses
  %i.f = icmp eq ptr %.0.i, null
  br i1 %i.f, label %ma_free.exit, label %bb.e

bb.e:                                             ; preds = %ma_malloc.exit
  %i.g = tail call i32 @ma_mp3_init(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %.0.i) ; 4 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %.not9.i = icmp eq ptr %i.i, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr %6, align 8, !tbaa !25
  tail call void %i.i(ptr noundef nonnull %.0.i, ptr noundef %i.j) #55, !inline_history !32
  br label %ma_free.exit

bb.i:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %.0.i) #55
  br label %ma_free.exit

bb.j:                                             ; preds = %bb.e
end_hunk_25
begin_hunk_26_@ma_dr_wav__read_cue_to_metadata_obj:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.q
  store ptr %i.x, ptr %i.r, align 8, !tbaa !3169
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr %i.w, ptr %i.y, align 8, !tbaa !9
  %i.z = load i32, ptr %i.j, align 8, !tbaa !9
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 10 uses
  %.04245 = phi i64 [ 4, %.lr.ph ], [ %i.al, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.ai = load ptr, ptr %0, align 8, !tbaa !2674
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !2677
  %i.ak = call i64 %i.ai(ptr noundef %i.aj, ptr noundef nonnull %i.b, i64 noundef 24) #55, !inline_history !3165 ; 2 uses
  %i.al = add i64 %i.ak, %.04245                  ; 3 uses
  %i.am = icmp eq i64 %i.ak, 24
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.an = load i32, ptr %i.b, align 16
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %indvars.iv
  store i32 %i.an, ptr %i.ap, align 4, !tbaa !3182
  %i.aq = load i32, ptr %i.aa, align 4
  %i.ar = load ptr, ptr %i.y, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.aq, ptr %i.at, align 4, !tbaa !3184
  %i.au = load i8, ptr %i.ab, align 8, !tbaa !9
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i8 %i.au, ptr %i.ax, align 4, !tbaa !9
  %i.ay = load i8, ptr %i.ac, align 1, !tbaa !9
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 9
  store i8 %i.ay, ptr %i.bb, align 1, !tbaa !9
  %i.bc = load i8, ptr %i.ad, align 2, !tbaa !9
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  store i8 %i.bc, ptr %i.bf, align 2, !tbaa !9
  %i.bg = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.bh = load ptr, ptr %i.y, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 11
  store i8 %i.bg, ptr %i.bj, align 1, !tbaa !9
  %i.bk = load i32, ptr %i.af, align 4
  %i.bl = load ptr, ptr %i.y, align 8, !tbaa !9
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 %i.bk, ptr %i.bn, align 4, !tbaa !3185
  %i.bo = load i32, ptr %i.ag, align 16
  %i.bp = load ptr, ptr %i.y, align 8, !tbaa !9
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i32 %i.bo, ptr %i.br, align 4, !tbaa !3186
  %i.bs = load i32, ptr %i.ah, align 4
  %i.bt = load ptr, ptr %i.y, align 8, !tbaa !9
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  store i32 %i.bs, ptr %i.bv, align 4, !tbaa !3187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bw = load i32, ptr %i.j, align 8, !tbaa !9
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp samesign ult i64 %indvars.iv.next, %i.bx
  br i1 %i.by, label %bb.e, label %.loopexit, !llvm.loop !3188

.loopexit:                                        ; preds = %bb.g, %bb.b, %bb.d, %bb.c, %bb.f, %bb.a
  %.036 = phi i64 [ 0, %bb.a ], [ 4, %bb.d ], [ %i.al, %bb.f ], [ %i.g, %bb.b ], [ 4, %bb.c ], [ %i.al, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i64 %.036
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ma_dr_wav__read_bext_to_metadata_obj(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 602, 0) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [602 x i8], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.b = load ptr, ptr %0, align 8, !tbaa !2674
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2677
  %i.e = call i64 %i.b(ptr noundef %i.d, ptr noundef nonnull %i.a, i64 noundef 602) #55, !inline_history !3165 ; 2 uses
  %i.f = icmp eq i64 %i.e, 602
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store i32 32, ptr %1, align 8, !tbaa !2342
  %i.g = load i8, ptr %i.a, align 16, !tbaa !9
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %ma_dr_wav_buffer_reader_seek.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 3 uses
  %.045.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.a, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.045.i.i, i64 1 ; 2 uses
  %i.i = add nuw nsw i64 %.06.i.i, 1              ; 3 uses
  %i.j = load i8, ptr %i.h, align 1, !tbaa !9
  %i.k = icmp ne i8 %i.j, 0
  %i.l = icmp samesign ult i64 %.06.i.i, 255
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph.i.i, label %ma_dr_wav__strlen_clamped.exit.i, !llvm.loop !3189

ma_dr_wav__strlen_clamped.exit.i:                 ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3169 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.06.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store ptr %i.q, ptr %i.n, align 8, !tbaa !3169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.a, i64 %i.i, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i8 0, ptr %i.r, align 1, !tbaa !9
  br label %ma_dr_wav_buffer_reader_seek.exit

ma_dr_wav_buffer_reader_seek.exit:                ; preds = %bb.b, %ma_dr_wav__strlen_clamped.exit.i
  %.0.i = phi ptr [ %i.o, %ma_dr_wav__strlen_clamped.exit.i ], [ null, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i, ptr %i.s, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 3 uses
  %i.u = load i8, ptr %i.t, align 16, !tbaa !9
  %.not.i.i44 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i44, label %ma_dr_wav_buffer_reader_seek.exit52, label %.lr.ph.i.i45

.lr.ph.i.i45:                                     ; preds = %ma_dr_wav_buffer_reader_seek.exit, %.lr.ph.i.i45
  %.06.i.i46 = phi i64 [ %i.w, %.lr.ph.i.i45 ], [ 0, %ma_dr_wav_buffer_reader_seek.exit ] ; 3 uses
  %.045.i.i47 = phi ptr [ %i.v, %.lr.ph.i.i45 ], [ %i.t, %ma_dr_wav_buffer_reader_seek.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.045.i.i47, i64 1 ; 2 uses
  %i.w = add nuw nsw i64 %.06.i.i46, 1            ; 3 uses
  %i.x = load i8, ptr %i.v, align 1, !tbaa !9
  %i.y = icmp ne i8 %i.x, 0
  %i.z = icmp samesign ult i64 %.06.i.i46, 31
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %.lr.ph.i.i45, label %ma_dr_wav__strlen_clamped.exit.i48, !llvm.loop !3189

ma_dr_wav__strlen_clamped.exit.i48:               ; preds = %.lr.ph.i.i45
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3169 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.06.i.i46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !3169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.t, i64 %i.w, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.w
  store i8 0, ptr %i.af, align 1, !tbaa !9
  br label %ma_dr_wav_buffer_reader_seek.exit52

ma_dr_wav_buffer_reader_seek.exit52:              ; preds = %ma_dr_wav_buffer_reader_seek.exit, %ma_dr_wav__strlen_clamped.exit.i48
  %.0.i49 = phi ptr [ %i.ac, %ma_dr_wav__strlen_clamped.exit.i48 ], [ null, %ma_dr_wav_buffer_reader_seek.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.0.i49, ptr %i.ag, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 16, !tbaa !9
  %.not.i.i53 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i53, label %ma_dr_wav_buffer_reader_seek.exit61, label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %ma_dr_wav_buffer_reader_seek.exit52, %.lr.ph.i.i54
  %.06.i.i55 = phi i64 [ %i.ak, %.lr.ph.i.i54 ], [ 0, %ma_dr_wav_buffer_reader_seek.exit52 ] ; 3 uses
  %.045.i.i56 = phi ptr [ %i.aj, %.lr.ph.i.i54 ], [ %i.ah, %ma_dr_wav_buffer_reader_seek.exit52 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.045.i.i56, i64 1 ; 2 uses
  %i.ak = add nuw nsw i64 %.06.i.i55, 1           ; 3 uses
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.am = icmp ne i8 %i.al, 0
  %i.an = icmp samesign ult i64 %.06.i.i55, 31
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph.i.i54, label %ma_dr_wav__strlen_clamped.exit.i57, !llvm.loop !3189

ma_dr_wav__strlen_clamped.exit.i57:               ; preds = %.lr.ph.i.i54
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !3169 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.06.i.i55
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !3169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aq, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.ah, i64 %i.ak, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ak
  store i8 0, ptr %i.at, align 1, !tbaa !9
  br label %ma_dr_wav_buffer_reader_seek.exit61

ma_dr_wav_buffer_reader_seek.exit61:              ; preds = %ma_dr_wav_buffer_reader_seek.exit52, %ma_dr_wav__strlen_clamped.exit.i57
  %.0.i58 = phi ptr [ %i.aq, %ma_dr_wav__strlen_clamped.exit.i57 ], [ null, %ma_dr_wav_buffer_reader_seek.exit52 ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.0.i58, ptr %i.au, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.av, ptr noundef nonnull align 16 dereferenceable(10) %i.aw, i64 10, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 330
  %i.az = load i64, ptr %i.ay, align 2
  store i64 %i.az, ptr %i.ax, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 338
  %i.bb = load i64, ptr %i.ba, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 346
  %i.bf = load i16, ptr %i.be, align 2
  store i16 %i.bf, ptr %i.bd, align 8, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3169 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !3169
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !9
  %i.bk = icmp eq ptr %i.bh, null
  br i1 %i.bk, label %ma_dr_wav_buffer_reader_read.exit, label %bb.c

bb.c:                                             ; preds = %ma_dr_wav_buffer_reader_seek.exit61
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bh, ptr noundef nonnull align 4 dereferenceable(64) %i.bl, i64 64, i1 false)
  br label %ma_dr_wav_buffer_reader_read.exit

ma_dr_wav_buffer_reader_read.exit:                ; preds = %ma_dr_wav_buffer_reader_seek.exit61, %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 412
  %i.bo = load <4 x i16>, ptr %i.bn, align 4
  store <4 x i16> %i.bo, ptr %i.bm, align 8, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 420
  %i.br = load i16, ptr %i.bq, align 4
  store i16 %i.br, ptr %i.bp, align 8, !tbaa !20
  %i.bs = add i64 %2, -602                        ; 2 uses
  %.not = icmp eq i64 %i.bs, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %ma_dr_wav_buffer_reader_read.exit
  %i.bt = load ptr, ptr %i.bg, align 8, !tbaa !3169 ; 3 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 %2
  %i.bv = getelementptr i8, ptr %i.bu, i64 -601
  store ptr %i.bv, ptr %i.bg, align 8, !tbaa !3169
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !9
  %i.bx = load ptr, ptr %0, align 8, !tbaa !2674
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !2677
  %i.bz = call i64 %i.bx(ptr noundef %i.by, ptr noundef %i.bt, i64 noundef range(i64 0, -602) %i.bs) #55, !inline_history !3165
  %i.ca = add i64 %i.bz, 602                      ; 2 uses
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !9  ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9
  %.not3.i = icmp eq i8 %i.cc, 0
  br i1 %.not3.i, label %.sink.split, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %scevgep.i = getelementptr i8, ptr %i.cb, i64 1
  %strlen.i = call i64 @strlen(ptr nonnull readonly dereferenceable(1) %scevgep.i)
  %i.cd = trunc i64 %strlen.i to i32
  %i.ce = add i32 %i.cd, 1
  br label %.sink.split

bb.e:                                             ; preds = %ma_dr_wav_buffer_reader_read.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr null, ptr %i.cf, align 8, !tbaa !9
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph.preheader.i, %bb.d, %bb.e
  %.sink = phi i32 [ 0, %bb.e ], [ 0, %bb.d ], [ %i.ce, %.lr.ph.preheader.i ]
  %.1.ph = phi i64 [ 602, %bb.e ], [ %i.ca, %bb.d ], [ %i.ca, %.lr.ph.preheader.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %.sink, ptr %i.cg, align 8, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi i64 [ %i.e, %bb.a ], [ %.1.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ma_dr_wav__read_list_label_or_note_to_metadata_obj(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef range(i64 4, 4294967296) %2, i32 noundef range(i32 64, 129) %3) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.b = load ptr, ptr %0, align 8, !tbaa !2674
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2677
  %i.e = call i64 %i.b(ptr noundef %i.d, ptr noundef nonnull %i.a, i64 noundef 4) #55, !inline_history !3165 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i32 %3, ptr %1, align 8, !tbaa !2342
  %i.g = load i32, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.g, ptr %i.h, align 8, !tbaa !9
  %i.i = trunc nuw i64 %2 to i32                  ; 2 uses
  %i.j = add i32 %i.i, -4                         ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.i, -5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.k, ptr %i.l, align 4, !tbaa !9
  %i.m = zext i32 %i.j to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3169 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.p, ptr %i.n, align 8, !tbaa !3169
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.o, ptr %i.q, align 8, !tbaa !9
  %i.r = load ptr, ptr %0, align 8, !tbaa !2674
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !2677
  %i.t = call i64 %i.r(ptr noundef %i.s, ptr noundef %i.o, i64 noundef range(i64 0, -602) %i.m) #55, !inline_history !3165
  %i.u = add i64 %i.t, 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.w, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ 4, %bb.d ], [ %i.u, %bb.c ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ma_dr_wav__read_list_labelled_cue_region_to_metadata_obj(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef range(i64 20, 4294967296) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.b = load ptr, ptr %0, align 8, !tbaa !2674
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2677
  %i.e = call i64 %i.b(ptr noundef %i.d, ptr noundef nonnull %i.a, i64 noundef 20) #55, !inline_history !3165 ; 2 uses
  %i.f = icmp eq i64 %i.e, 20
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i32 256, ptr %1, align 8, !tbaa !2342
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x i32>, ptr %i.a, align 16
  store <2 x i32> %i.h, ptr %i.g, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load <4 x i8>, ptr %i.i, align 8, !tbaa !9
  store <4 x i8> %i.k, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load <4 x i16>, ptr %i.l, align 4
  store <4 x i16> %i.n, ptr %i.m, align 4, !tbaa !9
  %i.o = trunc nuw i64 %2 to i32                  ; 2 uses
  %i.p = add i32 %i.o, -20                        ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = add i32 %i.o, -21
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.q, ptr %i.r, align 4, !tbaa !9
  %i.s = zext i32 %i.p to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3169 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store ptr %i.v, ptr %i.t, align 8, !tbaa !3169
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.u, ptr %i.w, align 8, !tbaa !9
  %i.x = load ptr, ptr %0, align 8, !tbaa !2674
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !2677
  %i.z = call i64 %i.x(ptr noundef %i.y, ptr noundef %i.u, i64 noundef range(i64 0, -602) %i.s) #55, !inline_history !3165
  %i.aa = add i64 %i.z, 20
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 0, ptr %i.ab, align 4, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr null, ptr %i.ac, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ 20, %bb.d ], [ %i.aa, %bb.c ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ma_dr_wav__metadata_process_info_text_chunk(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i32 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = trunc nuw i64 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !2687
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c
end_hunk_26
