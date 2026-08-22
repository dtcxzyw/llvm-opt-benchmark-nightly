Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@ma_slot_allocator_alloc:bb.a
; Function Attrs: norecurse nounwind uwtable
define hidden range(i32 -3, 1) i32 @ma_slot_allocator_free(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  %i.c = lshr i32 %i.b, 5                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
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
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.k
  %i.q = load atomic i32, ptr %i.p seq_cst, align 4 ; 2 uses
  %i.r = and i32 %i.q, %i.m
  %i.s = load ptr, ptr %0, align 8
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.k
  %i.u = cmpxchg volatile ptr %i.t, i32 %i.q, i32 %i.r seq_cst seq_cst, align 4
  %.not23 = extractvalue { i32, i1 } %i.u, 1
  br i1 %.not23, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.v = atomicrmw sub ptr %i.j, i32 1 seq_cst, align 8 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.d, %bb.b, %bb.a
  %.2 = phi i32 [ -2, %bb.b ], [ -2, %bb.a ], [ 0, %bb.d ], [ -3, %.critedge ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @ma_job_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_job) align 8 captures(address_is_null) %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 0, i64 104, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  store i16 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 -1, ptr %i.a, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.b, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @ma_job_process(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 8                ; 2 uses
  %i.c = icmp ugt i16 %i.b, 11
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i16 %i.b to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @g_jobVTable, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0) #61
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ -2, %bb.a ], [ -3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @ma_job_queue_config_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.sroa.2.0.insert.ext = zext i32 %1 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -2, 1) i32 @ma_job_queue_get_heap_size(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
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
  store i64 %i.r, ptr %1, align 8
  br label %ma_job_queue_get_heap_layout.exit.thread

ma_job_queue_get_heap_layout.exit.thread:         ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @ma_job_queue_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_job_queue_get_heap_layout.exit.thread, label %ma_zero_memory_default.exit32

ma_zero_memory_default.exit32:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %2, i8 0, i64 192, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
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
  store ptr %1, ptr %i.q, align 8
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = mul nuw nsw i64 %i.l, 104
  %i.s = add nuw nsw i64 %i.p, %i.r
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.s, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.c, %bb.d
  %i.t = load i32, ptr %0, align 4
  store i32 %i.t, ptr %2, align 8
  %i.u = load i32, ptr %i.c, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.u, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8
  %i.y = load i32, ptr %i.c, align 4              ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.z, i8 0, i64 40, i1 false)
  %i.aa = icmp eq i32 %i.y, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.aa
  br i1 %or.cond, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.e

bb.e:                                             ; preds = %ma_zero_memory_default.exit
  %i.ab = lshr i32 %i.y, 5
  %i.ac = and i32 %i.y, 31
  %.not.i.i.i = icmp ne i32 %i.ac, 0
  %i.ad = zext i1 %.not.i.i.i to i32
  %spec.select.i.i.i = add nuw nsw i32 %i.ab, %i.ad
  %i.ae = shl nuw nsw i32 %spec.select.i.i.i, 2
  %narrow.i.i = add nuw nsw i32 %i.ae, 4
  %i.af = and i32 %narrow.i.i, 2147483640
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = zext i32 %i.y to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = add nuw nsw i64 %i.ai, 4
  %i.ak = and i64 %i.aj, 34359738360
  %i.al = add nuw nsw i64 %i.ak, %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 152
  store ptr %1, ptr %i.am, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.al, i1 false)
  store ptr %1, ptr %i.z, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i32 %i.y, ptr %i.ap, align 4
  %i.aq = load i32, ptr %2, align 8
  %i.ar = and i32 %i.aq, 1
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.f, label %ma_semaphore_init.exit

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.av = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.au, ptr noundef null) #61
  %.not.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i, label %bb.g, label %ma_semaphore_init.exit

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ax = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.aw, ptr noundef null) #61
  %.not13.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not13.i.i, label %ma_semaphore_init.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.au) #61 ; 0 uses
  br label %ma_semaphore_init.exit

ma_semaphore_init.exit:                           ; preds = %bb.g, %bb.h, %bb.f, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ba = tail call i32 @ma_slot_allocator_alloc(ptr noundef nonnull %i.z, ptr noundef nonnull %i.az) ; 0 uses
  %i.bb = load ptr, ptr %i.x, align 8
  %i.bc = load i64, ptr %i.az, align 8
  %i.bd = and i64 %i.bc, 65535
  %i.be = getelementptr inbounds nuw [104 x i8], ptr %i.bb, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 -1, ptr %i.bf, align 8
  %i.bg = load i64, ptr %i.az, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bg, ptr %i.bh, align 8
  br label %ma_job_queue_get_heap_layout.exit.thread

ma_job_queue_get_heap_layout.exit.thread:         ; preds = %ma_zero_memory_default.exit, %ma_zero_memory_default.exit32, %bb.b, %bb.a, %ma_semaphore_init.exit
  %.0 = phi i32 [ 0, %ma_semaphore_init.exit ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit32 ], [ -2, %bb.b ], [ -2, %ma_zero_memory_default.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -4, 1) i32 @ma_job_queue_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 4 uses
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
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.s, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %1, align 8
  %i.u = tail call ptr %i.s(i64 noundef %i.q, ptr noundef %i.t) #61, !inline_history !3
  br label %ma_malloc.exit

bb.f:                                             ; preds = %bb.c
  %i.v = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #74
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
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.z, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %1, align 8
  tail call void %i.z(ptr noundef nonnull %.0.i20, ptr noundef %i.aa) #61, !inline_history !4
  br label %ma_free.exit

bb.k:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %.0.i20) #61
  br label %ma_free.exit

bb.l:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i32 1, ptr %i.ab, align 8
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.d, %bb.b, %bb.a, %bb.k, %bb.j, %bb.i, %ma_malloc.exit, %bb.l
  %.013 = phi i32 [ 0, %bb.l ], [ %i.x, %bb.j ], [ -2, %bb.b ], [ -4, %ma_malloc.exit ], [ -4, %bb.d ], [ %i.x, %bb.k ], [ %i.x, %bb.i ], [ -2, %bb.a ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define hidden void @ma_job_queue_uninit(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8
  %i.c = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.e) #61 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.g) #61 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %ma_slot_allocator_uninit.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %ma_slot_allocator_uninit.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %ma_slot_allocator_uninit.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %1, align 8
  tail call void %i.o(ptr noundef nonnull %i.l, ptr noundef %i.p) #61, !inline_history !7
  br label %ma_slot_allocator_uninit.exit
end_hunk_0
begin_hunk_1_@ma_device_post_init:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %ma_calculate_buffer_size_in_frames_from_milliseconds.exit77, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #61
  br i1 %or.cond3, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %10, i8 0, i64 1544, i1 false)
  %i.bk = load ptr, ptr %0, align 8               ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = call i32 %i.bm(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %10) #61, !inline_history !8
  br label %ma_device_get_info.exit

bb.s:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = icmp eq i32 %i.bp, 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.bs = load ptr, ptr %i.br, align 8            ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null                 ; 2 uses
  %i.bu = and i1 %i.bq, %i.bt
  %.019.i = select i1 %i.bu, i32 1, i32 2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %9, i8 0, i64 1544, i1 false)
  br i1 %i.bt, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %9, ptr noundef nonnull align 8 dereferenceable(256) %i.bs, i64 256, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %ma_context_get_device_info.exit27.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 360 ; 2 uses
  %i.bz = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.by) #61 ; 0 uses
  %i.ca = load ptr, ptr %i.bv, align 8
  %i.cb = call i32 %i.ca(ptr noundef nonnull %i.bk, i32 noundef %.019.i, ptr noundef %i.bs, ptr noundef nonnull %9) #61, !inline_history !9
  %i.cc = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.by) #61 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %10, ptr noundef nonnull align 8 dereferenceable(1544) %9, i64 1544, i1 false)
  br label %ma_context_get_device_info.exit27.i

ma_context_get_device_info.exit27.i:              ; preds = %bb.v, %bb.u
  %.0.i26.i = phi i32 [ %i.cb, %bb.v ], [ -3, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #61
  br label %ma_device_get_info.exit

ma_device_get_info.exit:                          ; preds = %bb.r, %ma_context_get_device_info.exit27.i
  %.0.i78 = phi i32 [ %.0.i26.i, %ma_context_get_device_info.exit27.i ], [ %i.bn, %bb.r ]
  %i.cd = icmp eq i32 %.0.i78, 0
  br i1 %i.cd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %ma_device_get_info.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 256
  %i.cg = call i32 @ma_strncpy_s(ptr noundef nonnull %i.ce, i64 noundef 256, ptr noundef nonnull %i.cf, i64 noundef -1) ; 0 uses
  br label %bb.aa

bb.x:                                             ; preds = %ma_device_get_info.exit
  %i.ch = load ptr, ptr %3, align 8
  %i.ci = icmp eq ptr %i.ch, null
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2288 ; 2 uses
  br i1 %i.ci, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ck = call i32 @ma_strncpy_s(ptr noundef nonnull %i.cj, i64 noundef 256, ptr noundef nonnull @.str.10, i64 noundef -1) ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cl = call i32 @ma_strncpy_s(ptr noundef nonnull %i.cj, i64 noundef 256, ptr noundef nonnull @.str.11, i64 noundef -1) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.z, %bb.y, %bb.p
  br i1 %or.cond5, label %bb.ab, label %bb.al

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %10, i8 0, i64 1544, i1 false)
  %i.cm = load ptr, ptr %0, align 8               ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 96
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not.i79 = icmp eq ptr %i.co, null
  br i1 %.not.i79, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = call i32 %i.co(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %10) #61, !inline_history !8
  br label %ma_device_get_info.exit81

bb.ad:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cr = load ptr, ptr %i.cq, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %8, i8 0, i64 1544, i1 false)
  %.not.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %8, ptr noundef nonnull align 8 dereferenceable(256) %i.cr, i64 256, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %ma_context_get_device_info.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 360 ; 2 uses
  %i.cw = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cv) #61 ; 0 uses
  %i.cx = load ptr, ptr %i.cs, align 8
  %i.cy = call i32 %i.cx(ptr noundef nonnull %i.cm, i32 noundef 1, ptr noundef %i.cr, ptr noundef nonnull %8) #61, !inline_history !9
  %i.cz = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cv) #61 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %10, ptr noundef nonnull align 8 dereferenceable(1544) %8, i64 1544, i1 false)
  br label %ma_context_get_device_info.exit.i

ma_context_get_device_info.exit.i:                ; preds = %bb.ag, %bb.af
  %.0.i.i = phi i32 [ %i.cy, %bb.ag ], [ -3, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #61
  br label %ma_device_get_info.exit81

ma_device_get_info.exit81:                        ; preds = %bb.ac, %ma_context_get_device_info.exit.i
  %.0.i80 = phi i32 [ %i.cp, %bb.ac ], [ %.0.i.i, %ma_context_get_device_info.exit.i ]
  %i.da = icmp eq i32 %.0.i80, 0
  br i1 %i.da, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %ma_device_get_info.exit81
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 256
  %i.dd = call i32 @ma_strncpy_s(ptr noundef nonnull %i.db, i64 noundef 256, ptr noundef nonnull %i.dc, i64 noundef -1) ; 0 uses
  br label %bb.al

bb.ai:                                            ; preds = %ma_device_get_info.exit81
  %i.de = load ptr, ptr %2, align 8
  %i.df = icmp eq ptr %i.de, null
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  br i1 %i.df, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dh = call i32 @ma_strncpy_s(ptr noundef nonnull %i.dg, i64 noundef 256, ptr noundef nonnull @.str.12, i64 noundef -1) ; 0 uses
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.di = call i32 @ma_strncpy_s(ptr noundef nonnull %i.dg, i64 noundef 256, ptr noundef nonnull @.str.13, i64 noundef -1) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.ak, %bb.aj, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #61
  br i1 %or.cond3, label %bb.am, label %ma_channel_map_copy.exit.i

bb.am:                                            ; preds = %bb.al
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2548 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %i.dn = load i32, ptr %i.dm, align 4
  store i32 %i.dn, ptr %i.dj, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 2552 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8            ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.ds = load i32, ptr %i.dr, align 8            ; 2 uses
  store i32 %i.ds, ptr %i.do, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dt = phi i32 [ %i.ds, %bb.ap ], [ %i.dp, %bb.ao ] ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 2556 ; 4 uses
  %i.dv = load i8, ptr %i.du, align 4
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.ar, label %ma_channel_map_copy.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.dy = load i32, ptr %i.dx, align 8
  %i.dz = icmp eq i32 %i.dy, %i.dt
  br i1 %i.dz, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %.not227.i = icmp eq i32 %i.dt, 0
  br i1 %.not227.i, label %ma_channel_map_copy.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.eb = zext i32 %i.dt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull readonly align 1 %i.ea, i64 %i.eb, i1 false)
  br label %ma_channel_map_copy.exit.i

bb.au:                                            ; preds = %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = icmp eq i32 %i.ed, 1
  %.not.i.i83 = icmp eq i32 %i.dt, 0              ; 2 uses
  br i1 %i.ee, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  br i1 %.not.i.i83, label %ma_channel_map_copy.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ef = zext i32 %i.dt to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.du, i8 0, i64 %i.ef, i1 false)
  br label %ma_channel_map_copy.exit.i

bb.ax:                                            ; preds = %bb.au
  br i1 %.not.i.i83, label %ma_channel_map_copy.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ax, %.preheader.i.i
  %.024.i.i = phi i32 [ %i.ej, %.preheader.i.i ], [ 0, %bb.ax ] ; 2 uses
  %.01723.i.i = phi ptr [ %i.eh, %.preheader.i.i ], [ %i.du, %bb.ax ] ; 2 uses
  %.01822.i.i = phi i64 [ %i.ei, %.preheader.i.i ], [ 254, %bb.ax ]
  %i.eg = call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.dt, i32 noundef %.024.i.i)
  store i8 %i.eg, ptr %.01723.i.i, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.01723.i.i, i64 1
  %i.ei = add nsw i64 %.01822.i.i, -1             ; 2 uses
  %i.ej = add nuw nsw i32 %.024.i.i, 1            ; 2 uses
  %i.ek = icmp uge i32 %i.ej, %i.dt
  %i.el = icmp eq i64 %i.ei, 0
  %or.cond5.i.i = select i1 %i.ek, i1 true, i1 %i.el
  br i1 %or.cond5.i.i, label %ma_channel_map_copy.exit.i, label %.preheader.i.i

ma_channel_map_copy.exit.i:                       ; preds = %.preheader.i.i, %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.as, %bb.aq, %bb.al
  br i1 %or.cond5, label %bb.ay, label %ma_channel_map_copy.exit166.i

bb.ay:                                            ; preds = %ma_channel_map_copy.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1116 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.eq = load i32, ptr %i.ep, align 4
  store i32 %i.eq, ptr %i.em, align 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8            ; 2 uses
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.ev = load i32, ptr %i.eu, align 8            ; 2 uses
  store i32 %i.ev, ptr %i.er, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ew = phi i32 [ %i.ev, %bb.bb ], [ %i.es, %bb.ba ] ; 7 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 4 uses
  %i.ey = load i8, ptr %i.ex, align 4
  %i.ez = icmp eq i8 %i.ey, 0
  br i1 %i.ez, label %bb.bd, label %ma_channel_map_copy.exit166.i

bb.bd:                                            ; preds = %bb.bc
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.fb = load i32, ptr %i.fa, align 8
  %i.fc = icmp eq i32 %i.fb, %i.ew
  br i1 %i.fc, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %.not228.i = icmp eq i32 %i.ew, 0
  br i1 %.not228.i, label %ma_channel_map_copy.exit166.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.fe = zext i32 %i.ew to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ex, ptr nonnull readonly align 1 %i.fd, i64 %i.fe, i1 false)
  br label %ma_channel_map_copy.exit166.i

bb.bg:                                            ; preds = %bb.bd
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.fg = load i32, ptr %i.ff, align 8
  %i.fh = icmp eq i32 %i.fg, 1
  %.not.i167.i = icmp eq i32 %i.ew, 0             ; 2 uses
  br i1 %i.fh, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not.i167.i, label %ma_channel_map_copy.exit166.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fi = zext i32 %i.ew to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ex, i8 0, i64 %i.fi, i1 false)
  br label %ma_channel_map_copy.exit166.i

bb.bj:                                            ; preds = %bb.bg
  br i1 %.not.i167.i, label %ma_channel_map_copy.exit166.i, label %.preheader.i169.i

.preheader.i169.i:                                ; preds = %bb.bj, %.preheader.i169.i
  %.024.i170.i = phi i32 [ %i.fm, %.preheader.i169.i ], [ 0, %bb.bj ] ; 2 uses
  %.01723.i171.i = phi ptr [ %i.fk, %.preheader.i169.i ], [ %i.ex, %bb.bj ] ; 2 uses
  %.01822.i172.i = phi i64 [ %i.fl, %.preheader.i169.i ], [ 254, %bb.bj ]
  %i.fj = call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.ew, i32 noundef %.024.i170.i)
  store i8 %i.fj, ptr %.01723.i171.i, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %.01723.i171.i, i64 1
  %i.fl = add nsw i64 %.01822.i172.i, -1          ; 2 uses
  %i.fm = add nuw nsw i32 %.024.i170.i, 1         ; 2 uses
  %i.fn = icmp uge i32 %i.fm, %i.ew
  %i.fo = icmp eq i64 %i.fl, 0
  %or.cond5.i173.i = select i1 %i.fn, i1 true, i1 %i.fo
  br i1 %or.cond5.i173.i, label %ma_channel_map_copy.exit166.i, label %.preheader.i169.i

ma_channel_map_copy.exit166.i:                    ; preds = %.preheader.i169.i, %bb.bj, %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.bc, %ma_channel_map_copy.exit.i
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.fq = load i32, ptr %i.fp, align 4            ; 2 uses
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %ma_channel_map_copy.exit166.i
  br i1 %or.cond3, label %.thread.i, label %.thread212.i

.thread.i:                                        ; preds = %bb.bk
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %i.ft = load i32, ptr %i.fs, align 4            ; 3 uses
  store i32 %i.ft, ptr %i.fp, align 4
  br label %bb.bm

.thread212.i:                                     ; preds = %bb.bk
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.fv = load i32, ptr %i.fu, align 4
  store i32 %i.fv, ptr %i.fp, align 4
  br label %bb.cg

bb.bl:                                            ; preds = %ma_channel_map_copy.exit166.i
  br i1 %or.cond3, label %._crit_edge.i, label %bb.cg

._crit_edge.i:                                    ; preds = %bb.bl
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge.i, %.thread.i
  %i.fw = phi i32 [ %i.fq, %._crit_edge.i ], [ %i.ft, %.thread.i ]
  %i.fx = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.ft, %.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #61
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ga, i8 0, i64 80, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.fx, ptr %i.gc, align 16
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.gd, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 2548
  %i.gg = load <2 x i32>, ptr %i.gb, align 4
  %i.gh = load <2 x i32>, ptr %i.gf, align 4
  %i.gi = shufflevector <2 x i32> %i.gg, <2 x i32> %i.gh, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.gi, ptr %6, align 16
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %i.fw, ptr %i.gj, align 4
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 2556
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.gk, ptr %i.gl, align 16
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.gn = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.go = load <2 x i32>, ptr %i.gm, align 8
  store <2 x i32> %i.go, ptr %i.gn, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.gq = load i32, ptr %i.gp, align 8
  store i32 %i.gq, ptr %i.fy, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.gs = load i32, ptr %i.gr, align 8
  store i32 %i.gs, ptr %i.fz, align 16
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.gv = load <2 x ptr>, ptr %i.gt, align 8
  store <2 x ptr> %i.gv, ptr %i.gu, align 16
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gx = load atomic i32, ptr %i.gw seq_cst, align 8
  %.not.i82 = icmp eq i32 %i.gx, 0
  br i1 %.not.i82, label %ma_data_converter_uninit.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gy = load ptr, ptr %0, align 8               ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 288 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 3395
  %i.hb = load i8, ptr %i.ha, align 1
  %.not.i176.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i176.i, label %ma_resampler_uninit.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.he = load ptr, ptr %i.hd, align 8            ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %ma_resampler_uninit.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8            ; 2 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %ma_resampler_uninit.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 3216
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = load ptr, ptr %i.hc, align 8
  call void %i.hh(ptr noundef %i.hk, ptr noundef %i.hl, ptr noundef nonnull %i.gz) #61, !inline_history !10
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 3384
  %i.hn = load i32, ptr %i.hm, align 8
  %.not.i.i.i = icmp eq i32 %i.hn, 0
  br i1 %.not.i.i.i, label %ma_resampler_uninit.exit.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 3376
  %i.hp = load ptr, ptr %i.ho, align 8            ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %ma_resampler_uninit.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gy, i64 312
  %i.hs = load ptr, ptr %i.hr, align 8            ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not9.i.i.i.i, label %ma_resampler_uninit.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ht = load ptr, ptr %i.gz, align 8
  call void %i.hs(ptr noundef nonnull %i.hp, ptr noundef %i.ht) #61, !inline_history !11
  br label %ma_resampler_uninit.exit.i.i

ma_resampler_uninit.exit.i.i:                     ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %i.hv = load i32, ptr %i.hu, align 8
  %.not.i10.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not.i10.i.i, label %ma_channel_converter_uninit.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %ma_resampler_uninit.exit.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.hx = load ptr, ptr %i.hw, align 8            ; 2 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %ma_channel_converter_uninit.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gy, i64 312
  %i.ia = load ptr, ptr %i.hz, align 8            ; 2 uses
  %.not9.i.i12.i.i = icmp eq ptr %i.ia, null
  br i1 %.not9.i.i12.i.i, label %ma_channel_converter_uninit.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ib = load ptr, ptr %i.gz, align 8
  call void %i.ia(ptr noundef nonnull %i.hx, ptr noundef %i.ib) #61, !inline_history !12
  br label %ma_channel_converter_uninit.exit.i.i

ma_channel_converter_uninit.exit.i.i:             ; preds = %bb.bw, %bb.bv, %bb.bu, %ma_resampler_uninit.exit.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 3397
  %i.id = load i8, ptr %i.ic, align 1
  %.not9.i.i = icmp eq i8 %i.id, 0
  br i1 %.not9.i.i, label %ma_data_converter_uninit.exit.i, label %bb.bx

bb.bx:                                            ; preds = %ma_channel_converter_uninit.exit.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 3400
  %i.if = load ptr, ptr %i.ie, align 8            ; 2 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %ma_data_converter_uninit.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gy, i64 312
  %i.ii = load ptr, ptr %i.ih, align 8            ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ii, null
  br i1 %.not9.i.i.i, label %ma_data_converter_uninit.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ij = load ptr, ptr %i.gz, align 8
  call void %i.ii(ptr noundef nonnull %i.if, ptr noundef %i.ij) #61, !inline_history !13
  br label %ma_data_converter_uninit.exit.i

ma_data_converter_uninit.exit.i:                  ; preds = %bb.bz, %bb.by, %bb.bx, %ma_channel_converter_uninit.exit.i.i, %bb.bm
  %i.ik = load ptr, ptr %0, align 8               ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 288 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 3096 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  %i.in = call fastcc i32 @ma_data_converter_get_heap_layout(ptr noundef nonnull readonly %6, ptr noundef %5) ; 2 uses
  %.not.i.i177.i = icmp eq i32 %i.in, 0
  br i1 %.not.i.i177.i, label %bb.ca, label %ma_data_converter_get_heap_size.exit.i.i

ma_data_converter_get_heap_size.exit.i.i:         ; preds = %ma_data_converter_uninit.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  br label %ma_data_converter_init.exit.thread.i

bb.ca:                                            ; preds = %ma_data_converter_uninit.exit.i
  %i.io = load i64, ptr %5, align 8               ; 2 uses
end_hunk_1
begin_hunk_2_@ma_device_id_equal:bb.a
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader.1:                                     ; preds = %.preheader
  %i.c = or disjoint i64 %.012, 1                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.g = load i8, ptr %i.f, align 1
  %.not.1 = icmp eq i8 %i.e, %i.g
  br i1 %.not.1, label %.preheader.2, label %.loopexit

.preheader.2:                                     ; preds = %.preheader.1
  %i.h = or disjoint i64 %.012, 2                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.l = load i8, ptr %i.k, align 1
  %.not.2 = icmp eq i8 %i.j, %i.l
  br i1 %.not.2, label %.preheader.3, label %.loopexit

.preheader.3:                                     ; preds = %.preheader.2
  %i.m = or disjoint i64 %.012, 3                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.q = load i8, ptr %i.p, align 1
  %.not.3 = icmp eq i8 %i.o, %i.q
  br i1 %.not.3, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader.3
  %i.r = add nuw nsw i64 %.012, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.r, 256
  br i1 %exitcond.not.3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.012 = phi i64 [ %i.r, %bb.b ], [ 0, %bb.a ]   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.v = load i8, ptr %i.u, align 1
  %.not = icmp eq i8 %i.t, %i.v
  br i1 %.not, label %.preheader.1, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %bb.b, %bb.a
  %.09 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %.preheader ], [ 0, %.preheader.1 ], [ 0, %.preheader.3 ], [ 0, %.preheader.2 ]
  ret i32 %.09
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @ma_context_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_context_config) align 8 captures(address_is_null) %0) local_unnamed_addr #0 {
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
define hidden range(i32 -203, 1) i32 @ma_context_init(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.ma_context_config, align 8  ; 4 uses
  %i.a = alloca [15 x i32], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %ma_zero_memory_default.exit, label %ma_zero_memory_default.exit113

ma_zero_memory_default.exit113:                   ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %3, i8 0, i64 1024, i1 false)
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %ma_zero_memory_default.exit113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %4, i8 0, i64 240, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %ma_zero_memory_default.exit113
  %.080 = phi ptr [ %4, %bb.b ], [ %2, %ma_zero_memory_default.exit113 ] ; 10 uses
  %.080.sroa.phi253 = getelementptr inbounds nuw i8, ptr %.080, i64 48 ; 2 uses
  %.080.sroa.phi250 = getelementptr inbounds nuw i8, ptr %.080, i64 40 ; 2 uses
  %.080.sroa.phi247 = getelementptr inbounds nuw i8, ptr %.080, i64 56
  %.080.sroa.phi244 = getelementptr inbounds nuw i8, ptr %.080, i64 136
  %.080.sroa.phi = getelementptr inbounds nuw i8, ptr %.080, i64 24
  %.080.sroa.phi239 = getelementptr inbounds nuw i8, ptr %.080, i64 16
  %.080.sroa.phi236 = getelementptr inbounds nuw i8, ptr %.080, i64 8
  %.080.sroa.phi234 = getelementptr inbounds nuw i8, ptr %.080, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 288 ; 4 uses
  %i.e = load ptr, ptr %.080.sroa.phi234, align 8
  %i.f = icmp eq ptr %i.e, null
  %i.g = load ptr, ptr %.080.sroa.phi247, align 8
  %i.h = icmp eq ptr %i.g, null                   ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.e, label %.thread22.i

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %.080.sroa.phi250, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %ma_zero_memory_default.exit

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %.080.sroa.phi253, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %ma_zero_memory_default.exit

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 296
  store ptr @ma__malloc_default, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 304
  store ptr @ma__realloc_default, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 312
  store ptr @ma__free_default, ptr %.sroa.6.0..sroa_idx.i, align 8
  br label %ma_allocation_callbacks_init_copy.exit

bb.h:                                             ; preds = %bb.c
  br i1 %i.h, label %ma_zero_memory_default.exit, label %.thread22.i

.thread22.i:                                      ; preds = %bb.h, %bb.d
  %i.m = load ptr, ptr %.080.sroa.phi250, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread22.i
  %i.o = load ptr, ptr %.080.sroa.phi253, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %ma_zero_memory_default.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread22.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %.080.sroa.phi234, i64 32, i1 false)
  br label %ma_allocation_callbacks_init_copy.exit

ma_allocation_callbacks_init_copy.exit:           ; preds = %bb.j, %bb.g
  %i.q = load ptr, ptr %.080, align 8             ; 2 uses
  %.not105 = icmp eq ptr %i.q, null
  br i1 %.not105, label %bb.k, label %ma_log_init.exit.thread

bb.k:                                             ; preds = %ma_allocation_callbacks_init_copy.exit
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.r, i8 0, i64 104, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = icmp eq ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.w, null                   ; 2 uses
  br i1 %i.u, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  br i1 %i.x, label %bb.m, label %.thread22.i.i

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.n, label %ma_allocation_callbacks_init_copy.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.o, label %ma_allocation_callbacks_init_copy.exit.i

bb.o:                                             ; preds = %bb.n
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr @ma__malloc_default, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr @ma__realloc_default, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 216
  store ptr @ma__free_default, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  br label %ma_allocation_callbacks_init_copy.exit.i

bb.p:                                             ; preds = %bb.k
  br i1 %i.x, label %ma_allocation_callbacks_init_copy.exit.i, label %.thread22.i.i

.thread22.i.i:                                    ; preds = %bb.p, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread22.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %ma_allocation_callbacks_init_copy.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread22.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %ma_allocation_callbacks_init_copy.exit.i

ma_allocation_callbacks_init_copy.exit.i:         ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.ak, i8 0, i64 40, i1 false)
  %i.al = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.ak, ptr noundef null) #61 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i, label %ma_log_init.exit.thread, label %ma_log_init.exit

ma_log_init.exit:                                 ; preds = %ma_allocation_callbacks_init_copy.exit.i
  %i.am = tail call fastcc i32 @ma_result_from_errno(i32 noundef %i.al)
  %i.an = icmp eq i32 %i.am, 0
  %spec.select231 = select i1 %i.an, ptr %i.r, ptr null
  br label %ma_log_init.exit.thread

ma_log_init.exit.thread:                          ; preds = %ma_log_init.exit, %ma_allocation_callbacks_init_copy.exit.i, %ma_allocation_callbacks_init_copy.exit
  %.sink = phi ptr [ %i.q, %ma_allocation_callbacks_init_copy.exit ], [ %spec.select231, %ma_log_init.exit ], [ %i.r, %ma_allocation_callbacks_init_copy.exit.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  store ptr %.sink, ptr %i.ao, align 8
  %i.ap = load i32, ptr %.080.sroa.phi236, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 264
  store i32 %i.ap, ptr %i.aq, align 8
  %i.ar = load i64, ptr %.080.sroa.phi239, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 272
  store i64 %i.ar, ptr %i.as, align 8
  %i.at = load ptr, ptr %.080.sroa.phi, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 280
  store ptr %i.at, ptr %i.au, align 8
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.a, align 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.av, align 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %i.aw, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 12, ptr %i.ax, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 13, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 14, ptr %i.az, align 8
  %i.ba = icmp eq ptr %0, null                    ; 2 uses
  %spec.select = select i1 %i.ba, ptr %i.a, ptr %0
  %spec.select111 = select i1 %i.ba, i32 15, i32 %1 ; 2 uses
  %.not = icmp eq i32 %spec.select111, 0
  br i1 %.not, label %._crit_edge, label %ma_zero_memory_default.exit112.lr.ph

ma_zero_memory_default.exit112.lr.ph:             ; preds = %ma_log_init.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 12 uses
  %wide.trip.count = zext i32 %spec.select111 to i64
  br label %ma_zero_memory_default.exit112

ma_zero_memory_default.exit112:                   ; preds = %ma_zero_memory_default.exit112.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %ma_zero_memory_default.exit112.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %spec.select, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4            ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(104) %3, i8 0, i64 104, i1 false)
  switch i32 %i.bd, label %.thread163 [
    i32 7, label %ma_context_get_log.exit.thread
    i32 8, label %bb.s
    i32 13, label %.thread159
    i32 14, label %bb.t
  ]

bb.s:                                             ; preds = %ma_zero_memory_default.exit112
  br label %ma_context_get_log.exit.thread

bb.t:                                             ; preds = %ma_zero_memory_default.exit112
  br label %ma_context_get_log.exit.thread

ma_context_get_log.exit.thread:                   ; preds = %ma_zero_memory_default.exit112, %bb.s, %bb.t
  %ma_context_init__pulse.sink = phi ptr [ @ma_context_init__null, %bb.t ], [ @ma_context_init__alsa, %bb.s ], [ @ma_context_init__pulse, %ma_zero_memory_default.exit112 ]
  store ptr %ma_context_init__pulse.sink, ptr %3, align 8
  %i.be = load ptr, ptr %i.bb, align 8
  br label %ma_context_get_log.exit.thread162

.thread159:                                       ; preds = %ma_zero_memory_default.exit112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %.080.sroa.phi244, i64 104, i1 false)
  %.pr160 = load ptr, ptr %3, align 8
  %.not106161 = icmp eq ptr %.pr160, null
  %.pre219 = load ptr, ptr %i.bb, align 8         ; 2 uses
  br i1 %.not106161, label %ma_get_backend_name.exit141, label %ma_context_get_log.exit.thread162

.thread163:                                       ; preds = %ma_zero_memory_default.exit112
  %.pre221 = load ptr, ptr %i.bb, align 8         ; 2 uses
  %i.bf = icmp ugt i32 %i.bd, 14
  br i1 %i.bf, label %ma_get_backend_name.exit137, label %bb.v

ma_context_get_log.exit.thread162:                ; preds = %ma_context_get_log.exit.thread, %.thread159
  %i.bg = phi ptr [ %i.be, %ma_context_get_log.exit.thread ], [ %.pre219, %.thread159 ]
  %i.bh = zext nneg i32 %i.bd to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr @gBackendInfo, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bg, i32 noundef 4, ptr noundef nonnull @.str.14, ptr noundef %i.bk) ; 0 uses
  %i.bm = load ptr, ptr %3, align 8
  %i.bn = call i32 %i.bm(ptr noundef nonnull %3, ptr noundef nonnull %.080, ptr noundef nonnull %3) #61
  switch i32 %i.bn, label %ma_context_get_log.exit139 [
    i32 0, label %bb.u
    i32 -208, label %ma_context_get_log.exit135.thread
  ]

ma_context_get_log.exit135.thread:                ; preds = %ma_context_get_log.exit.thread162
  %.pre220 = load ptr, ptr %i.bb, align 8
  br label %bb.v

bb.u:                                             ; preds = %ma_context_get_log.exit.thread162
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 320 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.bo, i8 0, i64 40, i1 false)
  %i.bp = call i32 @pthread_mutex_init(ptr noundef nonnull %i.bo, ptr noundef null) #61 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i, label %ma_mutex_init.exit.thread, label %ma_mutex_init.exit

ma_mutex_init.exit:                               ; preds = %bb.u
  %i.bq = call fastcc i32 @ma_result_from_errno(i32 noundef %i.bp)
  %.not108 = icmp eq i32 %i.bq, 0
  br i1 %.not108, label %ma_mutex_init.exit.thread, label %ma_context_get_log.exit118

ma_context_get_log.exit118:                       ; preds = %ma_mutex_init.exit
  %i.br = load ptr, ptr %i.bb, align 8
  %i.bs = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.br, i32 noundef 2, ptr noundef nonnull @.str.15) ; 0 uses
  br label %ma_mutex_init.exit.thread

ma_mutex_init.exit.thread:                        ; preds = %bb.u, %ma_context_get_log.exit118, %ma_mutex_init.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 360 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.bt, i8 0, i64 40, i1 false)
  %i.bu = call i32 @pthread_mutex_init(ptr noundef nonnull %i.bt, ptr noundef null) #61 ; 2 uses
  %.not.i.i119 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i119, label %ma_mutex_init.exit121.thread, label %ma_mutex_init.exit121

ma_mutex_init.exit121:                            ; preds = %ma_mutex_init.exit.thread
  %i.bv = call fastcc i32 @ma_result_from_errno(i32 noundef %i.bu) ; 2 uses
  %.not109 = icmp eq i32 %i.bv, 0
  br i1 %.not109, label %ma_mutex_init.exit121.thread, label %ma_context_get_log.exit123

ma_context_get_log.exit123:                       ; preds = %ma_mutex_init.exit121
  %i.bw = load ptr, ptr %i.bb, align 8
  %i.bx = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bw, i32 noundef 2, ptr noundef nonnull @.str.16) ; 0 uses
  br label %ma_mutex_init.exit121.thread

bb.v:                                             ; preds = %ma_context_get_log.exit135.thread, %.thread163
  %i.by = phi ptr [ %.pre220, %ma_context_get_log.exit135.thread ], [ %.pre221, %.thread163 ]
  %i.bz = zext nneg i32 %i.bd to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr @gBackendInfo, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  br label %ma_get_backend_name.exit137

ma_get_backend_name.exit137:                      ; preds = %.thread163, %bb.v
  %i.cd = phi ptr [ %i.by, %bb.v ], [ %.pre221, %.thread163 ]
  %.0.i136 = phi ptr [ %i.cc, %bb.v ], [ @.str.9, %.thread163 ]
  %i.ce = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.cd, i32 noundef 4, ptr noundef nonnull @.str.26, ptr noundef %.0.i136) ; 0 uses
  br label %bb.w

ma_context_get_log.exit139:                       ; preds = %ma_context_get_log.exit.thread162
  %i.cf = load ptr, ptr %i.bb, align 8
  br label %ma_get_backend_name.exit141

ma_get_backend_name.exit141:                      ; preds = %.thread159, %ma_context_get_log.exit139
  %i.cg = phi ptr [ %i.cf, %ma_context_get_log.exit139 ], [ %.pre219, %.thread159 ]
  %i.ch = zext nneg i32 %i.bd to i64
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr @gBackendInfo, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.cg, i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef %i.ck) ; 0 uses
  br label %bb.w

ma_mutex_init.exit121.thread:                     ; preds = %ma_mutex_init.exit.thread, %ma_mutex_init.exit121, %ma_context_get_log.exit123
  %.0.i120173 = phi i32 [ 0, %ma_mutex_init.exit121 ], [ %i.bv, %ma_context_get_log.exit123 ], [ 0, %ma_mutex_init.exit.thread ]
  %i.cm = load ptr, ptr %i.bb, align 8
  %i.cn = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.cm, i32 noundef 4, ptr noundef nonnull @.str.17) ; 0 uses
  %i.co = load ptr, ptr %i.bb, align 8
  %i.cp = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.co, i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) ; 0 uses
  %i.cq = load ptr, ptr %i.bb, align 8
  %i.cr = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.cq, i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) ; 0 uses
  %i.cs = load ptr, ptr %i.bb, align 8
  %i.ct = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.cs, i32 noundef 4, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23) ; 0 uses
  %i.cu = load ptr, ptr %i.bb, align 8
  %i.cv = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.cu, i32 noundef 4, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i32 %i.bd, ptr %i.cw, align 8
  br label %ma_zero_memory_default.exit

bb.w:                                             ; preds = %ma_get_backend_name.exit137, %ma_get_backend_name.exit141
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %ma_zero_memory_default.exit112

._crit_edge:                                      ; preds = %bb.w, %ma_log_init.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %3, i8 0, i64 1024, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.f, %bb.i, %bb.h, %bb.e, %._crit_edge, %ma_mutex_init.exit121.thread, %bb.a
  %.2 = phi i32 [ %.0.i120173, %ma_mutex_init.exit121.thread ], [ -2, %bb.a ], [ -203, %._crit_edge ], [ -2, %bb.f ], [ -2, %bb.e ], [ -2, %bb.h ], [ -2, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
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
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.e = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.d, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.317) ; 0 uses
  %i.f = tail call ptr @dlopen(ptr noundef nonnull @.str.317, i32 noundef 2) #61 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ma_context_get_log.exit.1, label %ma_context_get_log.exit234

ma_context_get_log.exit.us.preheader:             ; preds = %bb.a
  %i.h = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.317) ; 0 uses
  %i.i = tail call ptr @dlopen(ptr noundef nonnull @.str.317, i32 noundef 2) #61 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %ma_context_get_log.exit.us.1, label %ma_context_get_log.exit234

ma_context_get_log.exit.us.1:                     ; preds = %ma_context_get_log.exit.us.preheader
  %i.k = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.317) ; 0 uses
  store ptr null, ptr %i.c, align 8
  %i.l = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.318) ; 0 uses
  %i.m = tail call ptr @dlopen(ptr noundef nonnull @.str.318, i32 noundef 2) #61 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.loopexit.loopexit, label %ma_context_get_log.exit234

.loopexit.loopexit:                               ; preds = %ma_context_get_log.exit.us.1
  %i.o = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.318) ; 0 uses
  store ptr null, ptr %i.c, align 8
  br label %ma_free.exit

ma_context_get_log.exit.1:                        ; preds = %ma_context_get_log.exit.preheader
  %i.p = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.d, i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.317) ; 0 uses
  store ptr null, ptr %i.c, align 8
  %i.q = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.r = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.q, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.318) ; 0 uses
  %i.s = tail call ptr @dlopen(ptr noundef nonnull @.str.318, i32 noundef 2) #61 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.loopexit.loopexit423, label %ma_context_get_log.exit234

.loopexit.loopexit423:                            ; preds = %ma_context_get_log.exit.1
  %i.u = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.q, i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.318) ; 0 uses
  store ptr null, ptr %i.c, align 8
  br label %ma_free.exit

ma_context_get_log.exit234:                       ; preds = %ma_context_get_log.exit.preheader, %ma_context_get_log.exit.1, %ma_context_get_log.exit.us.preheader, %ma_context_get_log.exit.us.1
  %.us-phi = phi ptr [ %i.m, %ma_context_get_log.exit.us.1 ], [ %i.i, %ma_context_get_log.exit.us.preheader ], [ %i.f, %ma_context_get_log.exit.preheader ], [ %i.s, %ma_context_get_log.exit.1 ] ; 2 uses
  store ptr %.us-phi, ptr %i.c, align 8
  %i.v = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.w = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.v, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.319) ; 0 uses
  %i.x = tail call ptr @dlsym(ptr noundef nonnull %.us-phi, ptr noundef nonnull @.str.319) #61 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.b, label %ma_context_get_log.exit236

bb.b:                                             ; preds = %ma_context_get_log.exit234
  %i.z = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.v, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.319) ; 0 uses
  br label %ma_context_get_log.exit236

ma_context_get_log.exit236:                       ; preds = %ma_context_get_log.exit234, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.x, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ac = load ptr, ptr %i.c, align 8
  %i.ad = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ab, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.320) ; 0 uses
  %i.ae = tail call ptr @dlsym(ptr noundef %i.ac, ptr noundef nonnull @.str.320) #61 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.c, label %ma_context_get_log.exit239

bb.c:                                             ; preds = %ma_context_get_log.exit236
  %i.ag = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ab, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.320) ; 0 uses
  br label %ma_context_get_log.exit239

ma_context_get_log.exit239:                       ; preds = %ma_context_get_log.exit236, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.ae, ptr %i.ah, align 8
  %i.ai = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ai, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.321) ; 0 uses
  %i.al = tail call ptr @dlsym(ptr noundef %i.aj, ptr noundef nonnull @.str.321) #61 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.d, label %ma_context_get_log.exit242

bb.d:                                             ; preds = %ma_context_get_log.exit239
  %i.an = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ai, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.321) ; 0 uses
  br label %ma_context_get_log.exit242

ma_context_get_log.exit242:                       ; preds = %ma_context_get_log.exit239, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.al, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ap, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.322) ; 0 uses
  %i.as = tail call ptr @dlsym(ptr noundef %i.aq, ptr noundef nonnull @.str.322) #61 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.e, label %ma_context_get_log.exit245

bb.e:                                             ; preds = %ma_context_get_log.exit242
  %i.au = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ap, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.322) ; 0 uses
  br label %ma_context_get_log.exit245

ma_context_get_log.exit245:                       ; preds = %ma_context_get_log.exit242, %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.as, ptr %i.av, align 8
  %i.aw = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ax = load ptr, ptr %i.c, align 8
  %i.ay = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.aw, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.323) ; 0 uses
  %i.az = tail call ptr @dlsym(ptr noundef %i.ax, ptr noundef nonnull @.str.323) #61 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.f, label %ma_context_get_log.exit248

bb.f:                                             ; preds = %ma_context_get_log.exit245
  %i.bb = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.aw, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.323) ; 0 uses
  br label %ma_context_get_log.exit248

ma_context_get_log.exit248:                       ; preds = %ma_context_get_log.exit245, %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.az, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bd, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.324) ; 0 uses
  %i.bg = tail call ptr @dlsym(ptr noundef %i.be, ptr noundef nonnull @.str.324) #61 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.g, label %ma_context_get_log.exit251

bb.g:                                             ; preds = %ma_context_get_log.exit248
  %i.bi = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bd, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.324) ; 0 uses
  br label %ma_context_get_log.exit251

ma_context_get_log.exit251:                       ; preds = %ma_context_get_log.exit248, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.bg, ptr %i.bj, align 8
  %i.bk = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bl = load ptr, ptr %i.c, align 8
  %i.bm = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bk, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.325) ; 0 uses
  %i.bn = tail call ptr @dlsym(ptr noundef %i.bl, ptr noundef nonnull @.str.325) #61 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.h, label %ma_context_get_log.exit254

bb.h:                                             ; preds = %ma_context_get_log.exit251
  %i.bp = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bk, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.325) ; 0 uses
  br label %ma_context_get_log.exit254

ma_context_get_log.exit254:                       ; preds = %ma_context_get_log.exit251, %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %i.bn, ptr %i.bq, align 8
  %i.br = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8
  %i.bt = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.br, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.326) ; 0 uses
  %i.bu = tail call ptr @dlsym(ptr noundef %i.bs, ptr noundef nonnull @.str.326) #61 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.i, label %ma_context_get_log.exit257

bb.i:                                             ; preds = %ma_context_get_log.exit254
  %i.bw = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.br, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.326) ; 0 uses
  br label %ma_context_get_log.exit257

ma_context_get_log.exit257:                       ; preds = %ma_context_get_log.exit254, %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.bu, ptr %i.bx, align 8
  %i.by = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bz = load ptr, ptr %i.c, align 8
  %i.ca = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.by, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.327) ; 0 uses
  %i.cb = tail call ptr @dlsym(ptr noundef %i.bz, ptr noundef nonnull @.str.327) #61 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.j, label %ma_context_get_log.exit260

bb.j:                                             ; preds = %ma_context_get_log.exit257
  %i.cd = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.by, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.327) ; 0 uses
  br label %ma_context_get_log.exit260

ma_context_get_log.exit260:                       ; preds = %ma_context_get_log.exit257, %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr %i.cb, ptr %i.ce, align 8
  %i.cf = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cg = load ptr, ptr %i.c, align 8
  %i.ch = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.cf, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.328) ; 0 uses
  %i.ci = tail call ptr @dlsym(ptr noundef %i.cg, ptr noundef nonnull @.str.328) #61 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.k, label %ma_context_get_log.exit263

bb.k:                                             ; preds = %ma_context_get_log.exit260
  %i.ck = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.cf, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.328) ; 0 uses
  br label %ma_context_get_log.exit263

ma_context_get_log.exit263:                       ; preds = %ma_context_get_log.exit260, %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr %i.ci, ptr %i.cl, align 8
  %i.cm = load ptr, ptr %i.b, align 8             ; 2 uses
end_hunk_2
begin_hunk_3_@ma_context_init__alsa:bb.a
  %i.nw = load ptr, ptr %i.c, align 8
  %i.nx = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.nv, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.472) ; 0 uses
  %i.ny = tail call ptr @dlsym(ptr noundef %i.nw, ptr noundef nonnull @.str.472) #61 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %bb.bb, label %ma_context_get_log.exit388

bb.bb:                                            ; preds = %ma_context_get_log.exit385
  %i.oa = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.nv, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.472) ; 0 uses
  br label %ma_context_get_log.exit388

ma_context_get_log.exit388:                       ; preds = %ma_context_get_log.exit385, %bb.bb
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 856
  store ptr %i.ny, ptr %i.ob, align 8
  %i.oc = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.od = load ptr, ptr %i.c, align 8
  %i.oe = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.oc, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.473) ; 0 uses
  %i.of = tail call ptr @dlsym(ptr noundef %i.od, ptr noundef nonnull @.str.473) #61 ; 2 uses
  %i.og = icmp eq ptr %i.of, null
  br i1 %i.og, label %bb.bc, label %ma_context_get_log.exit391

bb.bc:                                            ; preds = %ma_context_get_log.exit388
  %i.oh = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.oc, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.473) ; 0 uses
  br label %ma_context_get_log.exit391

ma_context_get_log.exit391:                       ; preds = %ma_context_get_log.exit388, %bb.bc
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 864
  store ptr %i.of, ptr %i.oi, align 8
  %i.oj = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ok = load ptr, ptr %i.c, align 8
  %i.ol = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.oj, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.474) ; 0 uses
  %i.om = tail call ptr @dlsym(ptr noundef %i.ok, ptr noundef nonnull @.str.474) #61 ; 2 uses
  %i.on = icmp eq ptr %i.om, null
  br i1 %i.on, label %bb.bd, label %ma_context_get_log.exit394

bb.bd:                                            ; preds = %ma_context_get_log.exit391
  %i.oo = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.oj, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.474) ; 0 uses
  br label %ma_context_get_log.exit394

ma_context_get_log.exit394:                       ; preds = %ma_context_get_log.exit391, %bb.bd
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 872
  store ptr %i.om, ptr %i.op, align 8
  %i.oq = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.or = load ptr, ptr %i.c, align 8
  %i.os = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.oq, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.475) ; 0 uses
  %i.ot = tail call ptr @dlsym(ptr noundef %i.or, ptr noundef nonnull @.str.475) #61 ; 2 uses
  %i.ou = icmp eq ptr %i.ot, null
  br i1 %i.ou, label %bb.be, label %ma_context_get_log.exit397

bb.be:                                            ; preds = %ma_context_get_log.exit394
  %i.ov = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.oq, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.475) ; 0 uses
  br label %ma_context_get_log.exit397

ma_context_get_log.exit397:                       ; preds = %ma_context_get_log.exit394, %bb.be
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 880
  store ptr %i.ot, ptr %i.ow, align 8
  %i.ox = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.oy = load ptr, ptr %i.c, align 8
  %i.oz = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ox, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.476) ; 0 uses
  %i.pa = tail call ptr @dlsym(ptr noundef %i.oy, ptr noundef nonnull @.str.476) #61 ; 2 uses
  %i.pb = icmp eq ptr %i.pa, null
  br i1 %i.pb, label %bb.bf, label %ma_context_get_log.exit400

bb.bf:                                            ; preds = %ma_context_get_log.exit397
  %i.pc = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ox, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.476) ; 0 uses
  br label %ma_context_get_log.exit400

ma_context_get_log.exit400:                       ; preds = %ma_context_get_log.exit397, %bb.bf
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 888
  store ptr %i.pa, ptr %i.pd, align 8
  %i.pe = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.pf = load ptr, ptr %i.c, align 8
  %i.pg = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.pe, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.477) ; 0 uses
  %i.ph = tail call ptr @dlsym(ptr noundef %i.pf, ptr noundef nonnull @.str.477) #61 ; 2 uses
  %i.pi = icmp eq ptr %i.ph, null
  br i1 %i.pi, label %bb.bg, label %ma_context_get_log.exit403

bb.bg:                                            ; preds = %ma_context_get_log.exit400
  %i.pj = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.pe, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.477) ; 0 uses
  br label %ma_context_get_log.exit403

ma_context_get_log.exit403:                       ; preds = %ma_context_get_log.exit400, %bb.bg
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 896
  store ptr %i.ph, ptr %i.pk, align 8
  %i.pl = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.pm = load ptr, ptr %i.c, align 8
  %i.pn = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.pl, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.478) ; 0 uses
  %i.po = tail call ptr @dlsym(ptr noundef %i.pm, ptr noundef nonnull @.str.478) #61 ; 2 uses
  %i.pp = icmp eq ptr %i.po, null
  br i1 %i.pp, label %bb.bh, label %ma_context_get_log.exit406

bb.bh:                                            ; preds = %ma_context_get_log.exit403
  %i.pq = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.pl, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.478) ; 0 uses
  br label %ma_context_get_log.exit406

ma_context_get_log.exit406:                       ; preds = %ma_context_get_log.exit403, %bb.bh
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr %i.po, ptr %i.pr, align 8
  %i.ps = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.pt = load ptr, ptr %i.c, align 8
  %i.pu = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ps, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.479) ; 0 uses
  %i.pv = tail call ptr @dlsym(ptr noundef %i.pt, ptr noundef nonnull @.str.479) #61 ; 2 uses
  %i.pw = icmp eq ptr %i.pv, null
  br i1 %i.pw, label %bb.bi, label %ma_context_get_log.exit409

bb.bi:                                            ; preds = %ma_context_get_log.exit406
  %i.px = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ps, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.479) ; 0 uses
  br label %ma_context_get_log.exit409

ma_context_get_log.exit409:                       ; preds = %ma_context_get_log.exit406, %bb.bi
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 912
  store ptr %i.pv, ptr %i.py, align 8
  %i.pz = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.qa = load ptr, ptr %i.c, align 8
  %i.qb = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.pz, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.480) ; 0 uses
  %i.qc = tail call ptr @dlsym(ptr noundef %i.qa, ptr noundef nonnull @.str.480) #61 ; 2 uses
  %i.qd = icmp eq ptr %i.qc, null
  br i1 %i.qd, label %bb.bj, label %ma_context_get_log.exit412

bb.bj:                                            ; preds = %ma_context_get_log.exit409
  %i.qe = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.pz, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.480) ; 0 uses
  br label %ma_context_get_log.exit412

ma_context_get_log.exit412:                       ; preds = %ma_context_get_log.exit409, %bb.bj
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 920
  store ptr %i.qc, ptr %i.qf, align 8
  %i.qg = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.qh = load ptr, ptr %i.c, align 8
  %i.qi = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.qg, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.481) ; 0 uses
  %i.qj = tail call ptr @dlsym(ptr noundef %i.qh, ptr noundef nonnull @.str.481) #61 ; 2 uses
  %i.qk = icmp eq ptr %i.qj, null
  br i1 %i.qk, label %bb.bk, label %ma_context_get_log.exit415

bb.bk:                                            ; preds = %ma_context_get_log.exit412
  %i.ql = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.qg, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.481) ; 0 uses
  br label %ma_context_get_log.exit415

ma_context_get_log.exit415:                       ; preds = %ma_context_get_log.exit412, %bb.bk
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr %i.qj, ptr %i.qm, align 8
  %i.qn = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.qo = load ptr, ptr %i.c, align 8
  %i.qp = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.qn, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.482) ; 0 uses
  %i.qq = tail call ptr @dlsym(ptr noundef %i.qo, ptr noundef nonnull @.str.482) #61 ; 2 uses
  %i.qr = icmp eq ptr %i.qq, null
  br i1 %i.qr, label %bb.bl, label %ma_context_get_log.exit418

bb.bl:                                            ; preds = %ma_context_get_log.exit415
  %i.qs = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.qn, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.482) ; 0 uses
  br label %ma_context_get_log.exit418

ma_context_get_log.exit418:                       ; preds = %ma_context_get_log.exit415, %bb.bl
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 936
  store ptr %i.qq, ptr %i.qt, align 8
  %i.qu = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.qv = load ptr, ptr %i.c, align 8
  %i.qw = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.qu, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.483) ; 0 uses
  %i.qx = tail call ptr @dlsym(ptr noundef %i.qv, ptr noundef nonnull @.str.483) #61 ; 2 uses
  %i.qy = icmp eq ptr %i.qx, null
  br i1 %i.qy, label %bb.bm, label %ma_context_get_log.exit421

bb.bm:                                            ; preds = %ma_context_get_log.exit418
  %i.qz = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.qu, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.483) ; 0 uses
  br label %ma_context_get_log.exit421

ma_context_get_log.exit421:                       ; preds = %ma_context_get_log.exit418, %bb.bm
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 944
  store ptr %i.qx, ptr %i.ra, align 8
  %i.rb = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.rc = load ptr, ptr %i.c, align 8
  %i.rd = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.rb, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.484) ; 0 uses
  %i.re = tail call ptr @dlsym(ptr noundef %i.rc, ptr noundef nonnull @.str.484) #61 ; 2 uses
  %i.rf = icmp eq ptr %i.re, null
  br i1 %i.rf, label %bb.bn, label %ma_context_get_log.exit424

bb.bn:                                            ; preds = %ma_context_get_log.exit421
  %i.rg = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.rb, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.484) ; 0 uses
  br label %ma_context_get_log.exit424

ma_context_get_log.exit424:                       ; preds = %ma_context_get_log.exit421, %bb.bn
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 952
  store ptr %i.re, ptr %i.rh, align 8
  %i.ri = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.rj = load ptr, ptr %i.c, align 8
  %i.rk = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ri, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.485) ; 0 uses
  %i.rl = tail call ptr @dlsym(ptr noundef %i.rj, ptr noundef nonnull @.str.485) #61 ; 2 uses
  %i.rm = icmp eq ptr %i.rl, null
  br i1 %i.rm, label %bb.bo, label %ma_dlsym.exit425

bb.bo:                                            ; preds = %ma_context_get_log.exit424
  %i.rn = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.ri, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.485) ; 0 uses
  br label %ma_dlsym.exit425

ma_dlsym.exit425:                                 ; preds = %ma_context_get_log.exit424, %bb.bo
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 960
  store ptr %i.rl, ptr %i.ro, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.rq = load i32, ptr %i.rp, align 8
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store i32 %i.rq, ptr %i.rr, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.rs, i8 0, i64 40, i1 false)
  %i.rt = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.rs, ptr noundef null) #61 ; 2 uses
  %.not.i.i = icmp eq i32 %i.rt, 0
  br i1 %.not.i.i, label %ma_mutex_init.exit.thread, label %ma_mutex_init.exit

ma_mutex_init.exit:                               ; preds = %ma_dlsym.exit425
  %i.ru = tail call fastcc i32 @ma_result_from_errno(i32 noundef %i.rt) ; 2 uses
  %.not226 = icmp eq i32 %i.ru, 0
  br i1 %.not226, label %ma_mutex_init.exit.thread, label %ma_context_get_log.exit428

ma_context_get_log.exit428:                       ; preds = %ma_mutex_init.exit
  %i.rv = load ptr, ptr %i.b, align 8
  %i.rw = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.rv, i32 noundef 1, ptr noundef nonnull @.str.486) ; 0 uses
  br label %bb.bp

ma_mutex_init.exit.thread:                        ; preds = %ma_dlsym.exit425, %ma_mutex_init.exit
  store ptr @ma_context_init__alsa, ptr %2, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @ma_context_uninit__alsa, ptr %i.rx, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @ma_context_enumerate_devices__alsa, ptr %i.ry, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @ma_context_get_device_info__alsa, ptr %i.rz, align 8
  %i.sa = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @ma_device_init__alsa, ptr %i.sa, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @ma_device_uninit__alsa, ptr %i.sb, align 8
  %i.sc = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @ma_device_start__alsa, ptr %i.sc, align 8
  %i.sd = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @ma_device_stop__alsa, ptr %i.sd, align 8
  %i.se = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @ma_device_read__alsa, ptr %i.se, align 8
  %i.sf = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @ma_device_write__alsa, ptr %i.sf, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr null, ptr %i.sg, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr @ma_device_data_loop_wakeup__alsa, ptr %i.sh, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %ma_mutex_init.exit.thread, %ma_context_get_log.exit428, %ma_context_get_log.exit228
  %.0224 = phi i32 [ -203, %ma_context_get_log.exit228 ], [ %i.ru, %ma_context_get_log.exit428 ], [ 0, %ma_mutex_init.exit.thread ]
  ret i32 %.0224
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @ma_context_init__null(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 88)) %2) #0 {
bb.a:
  store ptr @ma_context_init__null, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @ma_context_uninit__null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @ma_context_enumerate_devices__null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @ma_context_get_device_info__null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @ma_device_init__null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @ma_device_uninit__null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @ma_device_start__null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @ma_device_stop__null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @ma_device_read__null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @ma_device_write__null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr null, ptr %i.j, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @ma_context_get_log(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @ma_context_uninit(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0) #61 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.e) #61 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.h = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.g) #61 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %ma_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.n, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.k, align 8
  tail call void %i.n(ptr noundef nonnull %i.j, ptr noundef %i.o) #61, !inline_history !4
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.d, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %ma_free.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.u = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.t) #61 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %ma_free.exit, %bb.g, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %bb.g ], [ 0, %ma_free.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @ma_context_sizeof() local_unnamed_addr #1 {
bb.a:
  ret i64 1024
}

; Function Attrs: nounwind uwtable
define hidden i32 @ma_context_enumerate_devices(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #61 ; 0 uses
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #61
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #61 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.i, %bb.c ], [ -2, %bb.a ], [ -3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @ma_context_get_devices(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not42 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %2, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not43 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not43, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %3, align 8
end_hunk_3
begin_hunk_4_@ma_device_init:bb.a
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %i.u
  br i1 %exitcond39.not.i, label %ma__is_channel_map_valid.exit.thread, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %.critedge.loopexit.i, %.critedge.preheader.preheader.i
  %indvars.iv35.i = phi i64 [ 0, %.critedge.preheader.preheader.i ], [ %indvars.iv.next36.i, %.critedge.loopexit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %.critedge.preheader.preheader.i ], [ %indvars.iv.next.i, %.critedge.loopexit.i ] ; 2 uses
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 3 uses
  %.not2528.i = icmp samesign ult i64 %indvars.iv.next36.i, %i.u
  br i1 %.not2528.i, label %.lr.ph.i, label %.critedge.loopexit.i

.lr.ph.i:                                         ; preds = %.critedge.preheader.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv35.i
  %i.w = load i8, ptr %i.v, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next33.i, %i.u
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.i, %.lr.ph.i ], [ %indvars.iv.next33.i, %bb.j ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv32.i
  %i.y = load i8, ptr %i.x, align 1
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
  %i.ab = load i32, ptr %i.aa, align 4            ; 3 uses
  %i.ac = icmp ugt i32 %i.ab, 254
  br i1 %i.ac, label %ma__is_channel_map_valid.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8            ; 4 uses
  %.not.i349 = icmp eq ptr %i.ae, null
  br i1 %.not.i349, label %ma__is_channel_map_valid.exit365.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = load i8, ptr %i.ae, align 1
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
  br i1 %exitcond39.not.i359, label %ma__is_channel_map_valid.exit365.thread, label %.critedge.preheader.i352

.critedge.preheader.i352:                         ; preds = %.critedge.loopexit.i357, %.critedge.preheader.preheader.i351
  %indvars.iv35.i353 = phi i64 [ 0, %.critedge.preheader.preheader.i351 ], [ %indvars.iv.next36.i355, %.critedge.loopexit.i357 ] ; 2 uses
  %indvars.iv.i354 = phi i64 [ 1, %.critedge.preheader.preheader.i351 ], [ %indvars.iv.next.i358, %.critedge.loopexit.i357 ] ; 2 uses
  %indvars.iv.next36.i355 = add nuw nsw i64 %indvars.iv35.i353, 1 ; 3 uses
  %.not2528.i356 = icmp samesign ult i64 %indvars.iv.next36.i355, %i.ah
  br i1 %.not2528.i356, label %.lr.ph.i361, label %.critedge.loopexit.i357

.lr.ph.i361:                                      ; preds = %.critedge.preheader.i352
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv35.i353
  %i.aj = load i8, ptr %i.ai, align 1
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next33.i363 = add nuw nsw i64 %indvars.iv32.i362, 1 ; 2 uses
  %exitcond.not.i364 = icmp eq i64 %indvars.iv.next33.i363, %i.ah
  br i1 %exitcond.not.i364, label %.critedge.loopexit.i357, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i361
  %indvars.iv32.i362 = phi i64 [ %indvars.iv.i354, %.lr.ph.i361 ], [ %indvars.iv.next33.i363, %bb.p ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv32.i362
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.aj, %i.al
  br i1 %i.am, label %ma__is_channel_map_valid.exit, label %bb.p

ma__is_channel_map_valid.exit365.thread:          ; preds = %.critedge.loopexit.i357, %bb.n, %bb.m, %ma__is_channel_map_valid.exit.thread
  store ptr %0, ptr %2, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not320 = icmp eq ptr %i.ba, null
  br i1 %.not320, label %bb.s, label %bb.r

bb.r:                                             ; preds = %ma__is_channel_map_valid.exit365.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 600 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.bb, ptr noundef nonnull align 8 dereferenceable(256) %i.ba, i64 256, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %ma__is_channel_map_valid.exit365.thread, %bb.r
  %.sink = phi ptr [ %i.bb, %bb.r ], [ null, %ma__is_channel_map_valid.exit365.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 592
  store ptr %.sink, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not321 = icmp eq ptr %i.be, null
  br i1 %.not321, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 2032 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.bf, ptr noundef nonnull align 8 dereferenceable(256) %i.be, i64 256, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sink520 = phi ptr [ %i.bf, %bb.t ], [ null, %bb.s ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 2024
  store ptr %.sink520, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load i8, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 397
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 398
  store i8 %i.bl, ptr %i.bm, align 2
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.bo = load i8, ptr %i.bn, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 399
  store i8 %i.bo, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 27 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 400
  store i8 %i.br, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 404
  store atomic volatile i32 1065353216, ptr %i.bt seq_cst, align 4
  %i.bu = load i32, ptr %1, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  store i32 %i.bx, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 560
  store i32 %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 584
  store i32 %i.cd, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 568
  store ptr %i.cg, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 576
  store ptr %i.cj, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 2544
  store i32 %i.cm, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 2548 ; 5 uses
  store i32 %i.cp, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 164 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4            ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 2552 ; 6 uses
  store i32 %i.cs, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 2556 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.cx = icmp eq i32 %i.cs, 0
  br i1 %i.cx, label %ma_channel_map_copy_or_default.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i366 = icmp eq ptr %i.cw, null
  br i1 %.not.i366, label %.preheader.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = zext i32 %i.cs to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr nonnull readonly align 1 %i.cw, i64 %i.cy, i1 false)
  br label %ma_channel_map_copy_or_default.exit

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.024.i.i = phi i32 [ %i.dc, %.preheader.i.i ], [ 0, %bb.v ] ; 2 uses
  %.01723.i.i = phi ptr [ %i.da, %.preheader.i.i ], [ %i.cu, %bb.v ] ; 2 uses
  %.01822.i.i = phi i64 [ %i.db, %.preheader.i.i ], [ 254, %bb.v ]
  %i.cz = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.cs, i32 noundef %.024.i.i)
  store i8 %i.cz, ptr %.01723.i.i, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.01723.i.i, i64 1
  %i.db = add nsw i64 %.01822.i.i, -1             ; 2 uses
  %i.dc = add nuw nsw i32 %.024.i.i, 1            ; 2 uses
  %i.dd = icmp uge i32 %i.dc, %i.cs
  %i.de = icmp eq i64 %i.db, 0
  %or.cond5.i.i = select i1 %i.dd, i1 true, i1 %i.de
  br i1 %or.cond5.i.i, label %ma_channel_map_copy_or_default.exit, label %.preheader.i.i

ma_channel_map_copy_or_default.exit:              ; preds = %.preheader.i.i, %bb.u, %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dg = load i32, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 3088
  store i32 %i.dg, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 3092
  store i32 %i.dj, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 1112
  store i32 %i.dm, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 1116 ; 4 uses
  store i32 %i.dp, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4            ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 1120 ; 5 uses
  store i32 %i.ds, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 1124 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %i.dx = icmp eq i32 %i.ds, 0
  br i1 %i.dx, label %ma_channel_map_copy_or_default.exit373, label %bb.x

bb.x:                                             ; preds = %ma_channel_map_copy_or_default.exit
  %.not.i367 = icmp eq ptr %i.dw, null
  br i1 %.not.i367, label %.preheader.i.i368, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = zext i32 %i.ds to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull readonly align 1 %i.dw, i64 %i.dy, i1 false)
  br label %ma_channel_map_copy_or_default.exit373

.preheader.i.i368:                                ; preds = %bb.x, %.preheader.i.i368
  %.024.i.i369 = phi i32 [ %i.ec, %.preheader.i.i368 ], [ 0, %bb.x ] ; 2 uses
  %.01723.i.i370 = phi ptr [ %i.ea, %.preheader.i.i368 ], [ %i.du, %bb.x ] ; 2 uses
  %.01822.i.i371 = phi i64 [ %i.eb, %.preheader.i.i368 ], [ 254, %bb.x ]
  %i.dz = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.ds, i32 noundef %.024.i.i369)
  store i8 %i.dz, ptr %.01723.i.i370, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.01723.i.i370, i64 1
  %i.eb = add nsw i64 %.01822.i.i371, -1          ; 2 uses
  %i.ec = add nuw nsw i32 %.024.i.i369, 1         ; 2 uses
  %i.ed = icmp uge i32 %i.ec, %i.ds
  %i.ee = icmp eq i64 %i.eb, 0
  %or.cond5.i.i372 = select i1 %i.ed, i1 true, i1 %i.ee
  br i1 %or.cond5.i.i372, label %ma_channel_map_copy_or_default.exit373, label %.preheader.i.i368

ma_channel_map_copy_or_default.exit373:           ; preds = %.preheader.i.i368, %ma_channel_map_copy_or_default.exit, %bb.y
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.eg = load i32, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 1656
  store i32 %i.eg, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 1660
  store i32 %i.ej, ptr %i.ek, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.el, i8 0, i64 40, i1 false)
  %i.em = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.el, ptr noundef null) #61 ; 2 uses
  %.not.i.i = icmp eq i32 %i.em, 0
  br i1 %.not.i.i, label %ma_mutex_init.exit.thread, label %ma_mutex_init.exit

ma_mutex_init.exit:                               ; preds = %ma_channel_map_copy_or_default.exit373
  %i.en = tail call fastcc i32 @ma_result_from_errno(i32 noundef %i.em) ; 2 uses
  %.not322 = icmp eq i32 %i.en, 0
  br i1 %.not322, label %ma_mutex_init.exit.thread, label %ma__is_channel_map_valid.exit

ma_mutex_init.exit.thread:                        ; preds = %ma_channel_map_copy_or_default.exit373, %ma_mutex_init.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ep = tail call i32 @ma_event_init(ptr noundef nonnull %i.eo) ; 2 uses
  %.not323 = icmp eq i32 %i.ep, 0
  br i1 %.not323, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %ma_mutex_init.exit.thread
  %i.eq = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.el) #61 ; 0 uses
  br label %ma__is_channel_map_valid.exit

bb.aa:                                            ; preds = %ma_mutex_init.exit.thread
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.es = tail call i32 @ma_event_init(ptr noundef nonnull %i.er) ; 2 uses
  %.not324 = icmp eq i32 %i.es, 0
  br i1 %.not324, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.eu = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.et) #61 ; 0 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ew = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.ev) #61 ; 0 uses
  %i.ex = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.el) #61 ; 0 uses
  br label %ma__is_channel_map_valid.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.ez = tail call i32 @ma_event_init(ptr noundef nonnull %i.ey) ; 2 uses
  %.not325 = icmp eq i32 %i.ez, 0
  br i1 %.not325, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.fb = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.fa) #61 ; 0 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.fd = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.fc) #61 ; 0 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ff = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.fe) #61 ; 0 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.fh = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.fg) #61 ; 0 uses
  %i.fi = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.el) #61 ; 0 uses
  br label %ma__is_channel_map_valid.exit

bb.ae:                                            ; preds = %bb.ac
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.fj, i8 0, i64 272, i1 false)
  %i.fk = load ptr, ptr %i.az, align 8
  store ptr %i.fk, ptr %3, align 8
  %i.fl = load i32, ptr %i.dl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.fl, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.fo = load i32, ptr %i.dr, align 4
  %i.fp = load <2 x i32>, ptr %i.do, align 8
  store <2 x i32> %i.fp, ptr %i.fn, align 4
  %i.fq = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.fq, ptr %i.fr, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ft = load ptr, ptr %i.dv, align 8
  call void @ma_channel_map_copy_or_default(ptr noundef nonnull %i.fs, i64 noundef 254, ptr noundef %i.ft, i32 noundef %i.fo)
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8            ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 280
  store i32 %i.fv, ptr %i.fw, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4            ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 284
  store i32 %i.fy, ptr %i.fz, align 4
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gb = load i32, ptr %i.ga, align 8            ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.gd = icmp eq i32 %i.gb, 0
  %spec.select = select i1 %i.gd, i32 3, i32 %i.gb ; 2 uses
  store i32 %spec.select, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.ge, i8 0, i64 272, i1 false)
  %i.gf = load ptr, ptr %i.bd, align 8
  store ptr %i.gf, ptr %4, align 8
  %i.gg = load i32, ptr %i.cl, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.gg, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.gj = load i32, ptr %i.cr, align 4
  %i.gk = load <2 x i32>, ptr %i.co, align 8
  store <2 x i32> %i.gk, ptr %i.gi, align 4
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.fq, ptr %i.gl, align 4
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gn = load ptr, ptr %i.cv, align 8
  call void @ma_channel_map_copy_or_default(ptr noundef nonnull %i.gm, i64 noundef 254, ptr noundef %i.gn, i32 noundef %i.gj)
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 280
  store i32 %i.fv, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 284
  store i32 %i.fy, ptr %i.gp, align 4
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 288
  store i32 %spec.select, ptr %i.gq, align 8
  %i.gr = load ptr, ptr %i.i, align 8
  %i.gs = call i32 %i.gr(ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #61 ; 2 uses
  %.not327 = icmp eq i32 %i.gs, 0
  br i1 %.not327, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.gu = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.gt) #61 ; 0 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.gw = call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.gv) #61 ; 0 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.gy = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.gx) #61 ; 0 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ha = call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.gz) #61 ; 0 uses
  %i.hb = call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.el) #61 ; 0 uses
  br label %ma__is_channel_map_valid.exit

bb.ag:                                            ; preds = %bb.ae
  %i.hc = load i32, ptr %1, align 8
  %i.hd = call i32 @ma_device_post_init(ptr noundef nonnull %2, i32 noundef %i.hc, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 2 uses
  %.not328 = icmp eq i32 %i.hd, 0
  br i1 %.not328, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @ma_device_uninit(ptr noundef nonnull %2)
  br label %ma__is_channel_map_valid.exit

bb.ai:                                            ; preds = %bb.ag
  %i.he = load i8, ptr %i.bq, align 1
  %i.hf = icmp eq i8 %i.he, 0
  br i1 %i.hf, label %bb.aj, label %.critedge

bb.aj:                                            ; preds = %bb.ai
  %i.hg = load i32, ptr %i.fu, align 8            ; 2 uses
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.ak, label %ma_calculate_buffer_size_in_frames_from_milliseconds.exit

bb.ak:                                            ; preds = %bb.aj
  %i.hi = load i32, ptr %i.by, align 4            ; 2 uses
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %ma_calculate_buffer_size_in_frames_from_milliseconds.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hk = load i32, ptr %i.fx, align 4
  %i.hl = mul i32 %i.hk, %i.hi
  %i.hm = udiv i32 %i.hl, 1000
  br label %ma_calculate_buffer_size_in_frames_from_milliseconds.exit

ma_calculate_buffer_size_in_frames_from_milliseconds.exit: ; preds = %bb.al, %bb.aj
  %.0 = phi i32 [ %i.hg, %bb.aj ], [ %i.hm, %bb.al ] ; 5 uses
  %i.hn = load i32, ptr %1, align 8               ; 2 uses
  %.off345 = add i32 %i.hn, -2
  %switch346 = icmp ult i32 %.off345, 3
  br i1 %switch346, label %bb.am, label %bb.as

ma_calculate_buffer_size_in_frames_from_milliseconds.exit.thread: ; preds = %bb.ak
  %i.ho = load i32, ptr %1, align 8               ; 2 uses
  %.off345492 = add i32 %i.ho, -2
  %switch346493 = icmp ult i32 %.off345492, 3
  br i1 %switch346493, label %.thread, label %bb.as

.thread:                                          ; preds = %ma_calculate_buffer_size_in_frames_from_milliseconds.exit.thread
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 3420 ; 2 uses
  store i32 0, ptr %i.hp, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 3416
  br label %bb.an

bb.am:                                            ; preds = %ma_calculate_buffer_size_in_frames_from_milliseconds.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 3420 ; 3 uses
  store i32 0, ptr %i.hr, align 4
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 3416 ; 3 uses
  store i32 %.0, ptr %i.hs, align 8
  %i.ht = icmp eq i32 %.0, 0
  br i1 %i.ht, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread, %bb.am
  %i.hu = phi ptr [ %i.hq, %.thread ], [ %i.hs, %bb.am ] ; 2 uses
  %i.hv = phi ptr [ %i.hp, %.thread ], [ %i.hr, %bb.am ]
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 3080
  %i.hx = load i32, ptr %i.hw, align 8            ; 2 uses
  store i32 %i.hx, ptr %i.hu, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.hy = phi i32 [ %i.hx, %bb.an ], [ %.0, %bb.am ]
  %i.hz = phi ptr [ %i.hu, %bb.an ], [ %i.hs, %bb.am ] ; 2 uses
  %i.ia = phi ptr [ %i.hv, %bb.an ], [ %i.hr, %bb.am ]
  %.0494497 = phi i32 [ 0, %bb.an ], [ %.0, %bb.am ]
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ic = load ptr, ptr %i.ib, align 8            ; 2 uses
  %.not8.i = icmp eq ptr %i.ic, null
  br i1 %.not8.i, label %ma_malloc.exit.thread, label %ma_malloc.exit

ma_malloc.exit.thread:                            ; preds = %bb.ao
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 3408
end_hunk_4
begin_hunk_5_@ma_device_uninit:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %ma_resampler_uninit.exit.i60, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = load ptr, ptr %i.dc, align 8
  tail call void %i.dh(ptr noundef %i.dk, ptr noundef %i.dl, ptr noundef nonnull %i.cz) #61, !inline_history !28
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.dn = load i32, ptr %i.dm, align 8
  %.not.i.i57 = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i57, label %ma_resampler_uninit.exit.i60, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %ma_resampler_uninit.exit.i60, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 312
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not9.i.i.i59 = icmp eq ptr %i.ds, null
  br i1 %.not9.i.i.i59, label %ma_resampler_uninit.exit.i60, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = load ptr, ptr %i.cz, align 8
  tail call void %i.ds(ptr noundef nonnull %i.dp, ptr noundef %i.dt) #61, !inline_history !29
  br label %ma_resampler_uninit.exit.i60

ma_resampler_uninit.exit.i60:                     ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.dv = load i32, ptr %i.du, align 8
  %.not.i10.i61 = icmp eq i32 %i.dv, 0
  br i1 %.not.i10.i61, label %ma_channel_converter_uninit.exit.i63, label %bb.ag

bb.ag:                                            ; preds = %ma_resampler_uninit.exit.i60
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1752
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %ma_channel_converter_uninit.exit.i63, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cy, i64 312
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %.not9.i.i12.i62 = icmp eq ptr %i.ea, null
  br i1 %.not9.i.i12.i62, label %ma_channel_converter_uninit.exit.i63, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = load ptr, ptr %i.cz, align 8
  tail call void %i.ea(ptr noundef nonnull %i.dx, ptr noundef %i.eb) #61, !inline_history !30
  br label %ma_channel_converter_uninit.exit.i63

ma_channel_converter_uninit.exit.i63:             ; preds = %bb.ai, %bb.ah, %bb.ag, %ma_resampler_uninit.exit.i60
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1965
  %i.ed = load i8, ptr %i.ec, align 1
  %.not9.i64 = icmp eq i8 %i.ed, 0
  br i1 %.not9.i64, label %ma_data_converter_uninit.exit66, label %bb.aj

bb.aj:                                            ; preds = %ma_channel_converter_uninit.exit.i63
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1968
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %ma_data_converter_uninit.exit66, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cy, i64 312
  %i.ei = load ptr, ptr %i.eh, align 8            ; 2 uses
  %.not9.i.i65 = icmp eq ptr %i.ei, null
  br i1 %.not9.i.i65, label %ma_data_converter_uninit.exit66, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ej = load ptr, ptr %i.cz, align 8
  tail call void %i.ei(ptr noundef nonnull %i.ef, ptr noundef %i.ej) #61, !inline_history !31
  br label %ma_data_converter_uninit.exit66

ma_data_converter_uninit.exit66:                  ; preds = %bb.al, %bb.ak, %bb.aj, %ma_channel_converter_uninit.exit.i63, %ma_data_converter_uninit.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1992
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.not46 = icmp eq ptr %i.el, null
  br i1 %.not46, label %ma_free.exit, label %bb.am

bb.am:                                            ; preds = %ma_data_converter_uninit.exit66
  %i.em = load ptr, ptr %0, align 8               ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 312
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %.not9.i68 = icmp eq ptr %i.eo, null
  br i1 %.not9.i68, label %ma_free.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 288
  %i.eq = load ptr, ptr %i.ep, align 8
  tail call void %i.eo(ptr noundef nonnull %i.el, ptr noundef %i.eq) #61, !inline_history !4
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.an, %bb.am, %ma_data_converter_uninit.exit66
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %.not47 = icmp eq ptr %i.es, null
  br i1 %.not47, label %ma_free.exit71, label %bb.ao

bb.ao:                                            ; preds = %ma_free.exit
  %i.et = load ptr, ptr %0, align 8               ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 312
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %.not9.i70 = icmp eq ptr %i.ev, null
  br i1 %.not9.i70, label %ma_free.exit71, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 288
  %i.ex = load ptr, ptr %i.ew, align 8
  tail call void %i.ev(ptr noundef nonnull %i.es, ptr noundef %i.ex) #61, !inline_history !4
  br label %ma_free.exit71

ma_free.exit71:                                   ; preds = %bb.ap, %bb.ao, %ma_free.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.ez = load ptr, ptr %i.ey, align 8            ; 2 uses
  %.not48 = icmp eq ptr %i.ez, null
  br i1 %.not48, label %ma_free.exit74, label %bb.aq

bb.aq:                                            ; preds = %ma_free.exit71
  %i.fa = load ptr, ptr %0, align 8               ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 312
  %i.fc = load ptr, ptr %i.fb, align 8            ; 2 uses
  %.not9.i73 = icmp eq ptr %i.fc, null
  br i1 %.not9.i73, label %ma_free.exit74, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 288
  %i.fe = load ptr, ptr %i.fd, align 8
  tail call void %i.fc(ptr noundef nonnull %i.ez, ptr noundef %i.fe) #61, !inline_history !4
  br label %ma_free.exit74

ma_free.exit74:                                   ; preds = %bb.ar, %bb.aq, %ma_free.exit71
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.fg = load i8, ptr %i.ff, align 4
  %.not49 = icmp eq i8 %i.fg, 0
  br i1 %.not49, label %ma_zero_memory_default.exit, label %bb.as

bb.as:                                            ; preds = %ma_free.exit74
  %i.fh = load ptr, ptr %0, align 8               ; 10 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 288 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.fi, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 312 ; 2 uses
  %.sroa.481.0.copyload = load ptr, ptr %.sroa.481.0..sroa_idx, align 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %.not.i75 = icmp eq ptr %i.fk, null
  br i1 %.not.i75, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fl = tail call i32 %i.fk(ptr noundef nonnull %i.fh) #61, !inline_history !25 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 320
  %i.fn = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.fm) #61 ; 0 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 360
  %i.fp = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.fo) #61 ; 0 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 416
  %i.fr = load ptr, ptr %i.fq, align 8            ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %ma_free.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ft = load ptr, ptr %.sroa.481.0..sroa_idx, align 8 ; 2 uses
  %.not9.i.i76 = icmp eq ptr %i.ft, null
  br i1 %.not9.i.i76, label %ma_free.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fu = load ptr, ptr %i.fi, align 8
  tail call void %i.ft(ptr noundef nonnull %i.fr, ptr noundef %i.fu) #61, !inline_history !26
  br label %ma_free.exit.i

ma_free.exit.i:                                   ; preds = %bb.aw, %bb.av, %bb.au
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 112
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fh, i64 120
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %bb.ax, label %ma_context_uninit.exit

bb.ax:                                            ; preds = %ma_free.exit.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fh, i64 224
  %i.ga = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.fz) #61 ; 0 uses
  br label %ma_context_uninit.exit

ma_context_uninit.exit:                           ; preds = %ma_free.exit.i, %bb.ax
  %i.gb = load ptr, ptr %0, align 8               ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  %.not9.i79 = icmp eq ptr %.sroa.481.0.copyload, null
  %or.cond = select i1 %i.gc, i1 true, i1 %.not9.i79
  br i1 %or.cond, label %ma_zero_memory_default.exit, label %bb.ay

bb.ay:                                            ; preds = %ma_context_uninit.exit
  tail call void %.sroa.481.0.copyload(ptr noundef nonnull %i.gb, ptr noundef %.sroa.0.0.copyload) #61, !inline_history !4
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.ay, %ma_context_uninit.exit, %ma_free.exit74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3776) %0, i8 0, i64 3776, i1 false)
  br label %ma_device__is_initialized.exit.thread

ma_device__is_initialized.exit.thread:            ; preds = %bb.a, %ma_device__is_initialized.exit, %ma_zero_memory_default.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @ma_silence_pcm_frames(ptr nofree noundef writeonly captures(address) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #21 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %3 to i64
  %i.c = mul i64 %1, %i.b                         ; 2 uses
  %.not18 = icmp eq i64 %i.c, 0
  br i1 %.not18, label %ma_zero_memory_64.exit, label %.lr.ph17.preheader

.lr.ph17.preheader:                               ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 -128, i64 %i.c, i1 false)
  br label %ma_zero_memory_64.exit

bb.c:                                             ; preds = %bb.a
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4
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
  br i1 %.not.i, label %ma_zero_memory_64.exit, label %.lr.ph

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
  %i.s = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.r) #61 ; 0 uses
  store i32 1, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.u = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.t) #61 ; 0 uses
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.r) #61 ; 0 uses
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
  %i.ax = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.x) #61 ; 0 uses
  %i.ay = load i32, ptr %i.w, align 8
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i.i, label %ma_device_get_state.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.ba = call i32 @pthread_cond_wait(ptr noundef nonnull %i.y, ptr noundef nonnull %i.x) #61 ; 0 uses
  %i.bb = load i32, ptr %i.w, align 8
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i.i, label %ma_device_get_state.exit

ma_device_get_state.exit:                         ; preds = %.lr.ph.i.i, %bb.b
  store i32 0, ptr %i.w, align 8
  %i.bd = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.x) #61 ; 0 uses
  store i32 0, ptr %i.z, align 8
  %i.be = load atomic i32, ptr %i.p seq_cst, align 8
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.bb, label %bb.c

bb.c:                                             ; preds = %ma_device_get_state.exit
  %i.bg = load ptr, ptr %0, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not = icmp eq ptr %i.bi, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = call i32 %i.bi(ptr noundef nonnull %0) #61 ; 2 uses
  %.not33 = icmp eq i32 %i.bj, 0
  br i1 %.not33, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.bj, ptr %i.z, align 8
  %i.bk = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ab) #61 ; 0 uses
  store i32 1, ptr %i.aa, align 8
  br label %bb.ba

.thread:                                          ; preds = %bb.c, %bb.d
  store atomic i32 2, ptr %i.p seq_cst, align 8
  %i.bl = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ab) #61 ; 0 uses
  store i32 1, ptr %i.aa, align 8
  %i.bm = call i32 @pthread_cond_signal(ptr noundef nonnull %i.ac) #61 ; 0 uses
  %i.bn = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ab) #61 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %0, ptr %2, align 8
  store i64 0, ptr %i.ad, align 8
  %i.bo = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %ma_device__on_notification_started.exit, label %bb.f

bb.f:                                             ; preds = %.thread
  call void %i.bo(ptr noundef nonnull %2) #61, !inline_history !32
  %.pre.i.i = load ptr, ptr %2, align 8           ; 2 uses
  %.pre4.i.i = load i32, ptr %i.ad, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp ne ptr %i.bq, null
  %i.bs = icmp eq i32 %.pre4.i.i, 1
  %or.cond.i.i = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond.i.i, label %bb.g, label %ma_device__on_notification_started.exit

bb.g:                                             ; preds = %bb.f
  call void %i.bq(ptr noundef nonnull %.pre.i.i) #61, !inline_history !32
  br label %ma_device__on_notification_started.exit

ma_device__on_notification_started.exit:          ; preds = %.thread, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bt = load ptr, ptr %0, align 8               ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not34 = icmp eq ptr %i.bv, null
  br i1 %.not34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %ma_device__on_notification_started.exit
  %i.bw = call i32 %i.bv(ptr noundef nonnull %0) #61 ; 0 uses
  br label %bb.au

bb.i:                                             ; preds = %ma_device__on_notification_started.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #61
  %i.bx = load i32, ptr %i.af, align 8            ; 2 uses
  %.off.i = add i32 %i.bx, -2
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.bz = load ptr, ptr %i.by, align 8
end_hunk_5
begin_hunk_6_@ma_vec3f_normalize:bb.a
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
define hidden { <2 x float>, float } @ma_vec3f_cross(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #35 {
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
define hidden void @ma_atomic_vec3f_init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, <2 x float> %1, float %2) local_unnamed_addr #37 {
bb.a:
  store <2 x float> %1, ptr %0, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %.sroa.23.0..sroa_idx, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.a, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @ma_atomic_vec3f_set(ptr nofree noundef captures(address) %0, <2 x float> %1, float %2) local_unnamed_addr #36 {
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
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !6
  %i.h = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i, label %.loopexit.i

ma_spinlock_lock.exit:                            ; preds = %.loopexit.i, %bb.a
  store <2 x float> %1, ptr %0, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %.sroa.24.0..sroa_idx, align 4
  store atomic volatile i32 0, ptr %i.a release, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @ma_atomic_vec3f_get(ptr nofree noundef captures(address) %0) local_unnamed_addr #8 {
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
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !6
  %i.h = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i, label %.loopexit.i

ma_spinlock_lock.exit:                            ; preds = %.loopexit.i, %bb.a
  %.sroa.03.0.copyload = load <2 x float>, ptr %0, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4
  store atomic volatile i32 0, ptr %i.a release, align 4
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.03.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.24.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @ma_spatializer_listener_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_spatializer_listener_config) align 8 captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #37 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  store i32 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.c, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <4 x float> <float f0x40C90FDA, float f0x40C90FDA, float 0.000000e+00, float 3.433000e+02>, ptr %i.d, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -2, 1) i32 @ma_spatializer_listener_get_heap_size(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_spatializer_listener_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_spatializer_listener_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 8                ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %ma_spatializer_listener_get_heap_layout.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext i32 %i.c to i64
  %i.f = add nuw nsw i64 %i.e, 7
  %i.g = and i64 %i.f, 8589934584
  store i64 %i.g, ptr %1, align 8
  br label %ma_spatializer_listener_get_heap_layout.exit.thread

ma_spatializer_listener_get_heap_layout.exit.thread: ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @ma_spatializer_listener_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_get_default_channel_map_for_spatializer.exit, label %ma_zero_memory_default.exit64

ma_zero_memory_default.exit64:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %2, i8 0, i64 112, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_get_default_channel_map_for_spatializer.exit, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit64
  %i.c = load i32, ptr %0, align 8                ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %ma_get_default_channel_map_for_spatializer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr %1, ptr %i.e, align 8
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = zext i32 %i.c to i64
  %i.g = add nuw nsw i64 %i.f, 7
  %i.h = and i64 %i.g, 8589934584
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.h, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.c, %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %.sroa.23.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store float -1.000000e+00, ptr %.sroa.23.0..sroa_idx.i65, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 76 ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.k, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i32, ptr %i.m, align 8
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
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !6
  %i.v = load atomic volatile i32, ptr %i.k monotonic, align 4
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.loopexit:                                        ; preds = %.loopexit.i.i.i, %bb.e
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.j, align 8
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.23.0..sroa_idx.i65, align 8
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
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !6
  %i.af = load atomic volatile i32, ptr %i.k monotonic, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %.lr.ph.i.i.i74, label %.loopexit.i.i.i72

ma_spatializer_listener_set_direction.exit:       ; preds = %.loopexit.i.i.i72, %.loopexit
  store <2 x float> %i.x, ptr %i.j, align 8
  store float %i.y, ptr %.sroa.23.0..sroa_idx.i65, align 8
  store atomic volatile i32 0, ptr %i.k release, align 4
  br label %bb.f

bb.f:                                             ; preds = %ma_spatializer_listener_set_direction.exit, %ma_zero_memory_default.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = load i32, ptr %0, align 8               ; 7 uses
  br i1 %i.ak, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 11, ptr %1, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 12, ptr %i.an, align 1
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
  store i8 %i.aq, ptr %.01723.i.i, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.01723.i.i, i64 1
  %i.as = add nsw i64 %.01822.i.i, -1             ; 2 uses
  %i.at = add nuw i32 %.024.i.i, 1                ; 2 uses
  %i.au = icmp uge i32 %i.at, %i.al
  %i.av = icmp eq i64 %i.as, 0
  %or.cond5.i.i = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond5.i.i, label %ma_get_default_channel_map_for_spatializer.exit, label %.preheader.i.i

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
define hidden { <2 x float>, float } @ma_spatializer_listener_get_direction(ptr nofree noundef captures(address) %0) local_unnamed_addr #36 {
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
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !6
  %i.j = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.i, label %.loopexit.i.i

ma_atomic_vec3f_get.exit:                         ; preds = %.loopexit.i.i, %bb.b
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.b, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4
  store atomic volatile i32 0, ptr %i.c release, align 4
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.03.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %.sroa.24.0.copyload.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %ma_atomic_vec3f_get.exit
  %.pn = phi { <2 x float>, float } [ %.fca.1.insert.i, %ma_atomic_vec3f_get.exit ], [ { <2 x float> zeroinitializer, float -1.000000e+00 }, %bb.a ]
  ret { <2 x float>, float } %.pn
}

; Function Attrs: nounwind uwtable
define hidden void @ma_spatializer_listener_set_direction(ptr nofree noundef captures(address) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #36 {
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
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !6
  %i.j = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.i, label %.loopexit.i.i

ma_atomic_vec3f_set.exit:                         ; preds = %.loopexit.i.i, %bb.b
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.b, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %3, ptr %.sroa.24.0..sroa_idx.i, align 4
  store atomic volatile i32 0, ptr %i.c release, align 4
  br label %bb.c
end_hunk_6
begin_hunk_7_@ma_spatializer_listener_is_enabled:bb.a
  %i.c = load i32, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @ma_spatializer_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_spatializer_config) align 8 captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.a, align 8
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  store i32 %1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float f0x7F7FFFFF>, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  store <4 x float> <float 1.000000e+00, float f0x40C90FDA, float f0x40C90FDA, float 0.000000e+00>, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store <2 x float> splat (float 1.000000e+00), ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float 2.000000e-01, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 360, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -2, 1) i32 @ma_spatializer_get_heap_size(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_spatializer_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_spatializer_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 8                ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %ma_spatializer_get_heap_layout.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_spatializer_get_heap_layout.exit.thread, label %ma_spatializer_validate_config.exit.i

ma_spatializer_validate_config.exit.i:            ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
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
  store i64 %i.t, ptr %1, align 8
  br label %ma_spatializer_get_heap_layout.exit.thread

ma_spatializer_get_heap_layout.exit.thread:       ; preds = %bb.c, %bb.b, %bb.d, %bb.a, %ma_spatializer_validate_config.exit.i
  %.0 = phi i32 [ 0, %ma_spatializer_validate_config.exit.i ], [ -2, %bb.a ], [ -2, %bb.d ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @ma_spatializer_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #36 {
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
  %i.d = load i32, ptr %0, align 8                ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_spatializer_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %ma_spatializer_get_heap_layout.exit.thread, label %ma_spatializer_validate_config.exit.i

ma_spatializer_validate_config.exit.i:            ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not25.i = icmp eq ptr %i.j, null              ; 2 uses
  %i.k = zext i32 %i.d to i64
  %i.l = add nuw nsw i64 %i.k, 7
  %i.m = and i64 %i.l, 8589934584
  %.sroa.7127.0 = select i1 %.not25.i, i64 4294967295, i64 0
  %i.n = select i1 %.not25.i, i64 0, i64 %i.m     ; 2 uses
  %i.o = zext i32 %i.g to i64                     ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, 4
  %i.r = and i64 %i.q, 34359738360
  %i.s = add nuw nsw i64 %i.n, %i.r               ; 2 uses
  %i.t = shl nuw nsw i64 %i.o, 3
  %i.u = add nuw nsw i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr %1, ptr %i.v, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.u, i1 false)
  %i.w = load i32, ptr %0, align 8
  store i32 %i.w, ptr %2, align 8
  %i.x = load i32, ptr %i.f, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float %i.aj, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load float, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float %i.ap, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load float, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.av = load float, ptr %i.au, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float %i.av, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load float, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 52
  store float %i.bb, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = load float, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 56
  store float %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 60
  store float %i.bh, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bk = load float, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 124
  store float %i.bk, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bn = load float, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 64
  store float %i.bn, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.bq, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %.sroa.23.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  store float -1.000000e+00, ptr %.sroa.23.0..sroa_idx.i110, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 11 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bu, i8 0, i64 20, i1 false)
  store float 1.000000e+00, ptr %i.bv, align 8
  %i.bw = icmp eq i32 %i.ag, 1
  br i1 %i.bw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ma_spatializer_validate_config.exit.i
  %i.bx = atomicrmw volatile xchg ptr %i.bu, i32 1 acquire, align 4
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %.loopexit, label %.preheader.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.bz = atomicrmw volatile xchg ptr %i.bu, i32 1 acquire, align 4
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %.loopexit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d, %.loopexit.i.i.i
  %i.cb = load atomic volatile i32, ptr %i.bu monotonic, align 4
  %i.cc = icmp eq i32 %i.cb, 1
  br i1 %i.cc, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !6
  %i.cd = load atomic volatile i32, ptr %i.bu monotonic, align 4
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.loopexit:                                        ; preds = %.loopexit.i.i.i, %bb.d
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.bt, align 8
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.23.0..sroa_idx.i110, align 8
  store atomic volatile i32 0, ptr %i.bu release, align 4
  %i.cf = fneg <2 x float> %.sroa.03.0.copyload.i.i
  %i.cg = fneg float %.sroa.24.0.copyload.i.i
  %i.ch = atomicrmw volatile xchg ptr %i.bu, i32 1 acquire, align 4
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %ma_spatializer_set_direction.exit, label %.preheader.i.i.i116

.loopexit.i.i.i117:                               ; preds = %.lr.ph.i.i.i119, %.preheader.i.i.i116
  %i.cj = atomicrmw volatile xchg ptr %i.bu, i32 1 acquire, align 4
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %ma_spatializer_set_direction.exit, label %.preheader.i.i.i116

.preheader.i.i.i116:                              ; preds = %.loopexit, %.loopexit.i.i.i117
  %i.cl = load atomic volatile i32, ptr %i.bu monotonic, align 4
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %.lr.ph.i.i.i119, label %.loopexit.i.i.i117

.lr.ph.i.i.i119:                                  ; preds = %.preheader.i.i.i116, %.lr.ph.i.i.i119
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !6
  %i.cn = load atomic volatile i32, ptr %i.bu monotonic, align 4
  %i.co = icmp eq i32 %i.cn, 1
  br i1 %i.co, label %.lr.ph.i.i.i119, label %.loopexit.i.i.i117

ma_spatializer_set_direction.exit:                ; preds = %.loopexit.i.i.i117, %.loopexit
  store <2 x float> %i.cf, ptr %i.bt, align 8
  store float %i.cg, ptr %.sroa.23.0..sroa_idx.i110, align 8
  store atomic volatile i32 0, ptr %i.bu release, align 4
  br label %bb.e

bb.e:                                             ; preds = %ma_spatializer_set_direction.exit, %ma_spatializer_validate_config.exit.i
  %i.cp = load ptr, ptr %i.i, align 8
  %.not105 = icmp eq ptr %i.cp, null
  br i1 %.not105, label %ma_channel_map_copy_or_default.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.7127.0 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cq, ptr %i.cr, align 8
  %i.cs = load i32, ptr %2, align 8               ; 4 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.cv = icmp eq i32 %i.cs, 0
  br i1 %i.cv, label %ma_channel_map_copy_or_default.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %i.cu, null
  br i1 %.not.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr nonnull readonly align 1 %i.cu, i64 %i.ct, i1 false)
  br label %ma_channel_map_copy_or_default.exit

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.i.i
  %.024.i.i = phi i32 [ %i.cz, %.preheader.i.i ], [ 0, %bb.g ] ; 2 uses
  %.01723.i.i = phi ptr [ %i.cx, %.preheader.i.i ], [ %i.cq, %bb.g ] ; 2 uses
  %.01822.i.i = phi i64 [ %i.cy, %.preheader.i.i ], [ %i.ct, %bb.g ]
  %i.cw = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.cs, i32 noundef %.024.i.i)
  store i8 %i.cw, ptr %.01723.i.i, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %.01723.i.i, i64 1
  %i.cy = add nsw i64 %.01822.i.i, -1             ; 2 uses
  %i.cz = add nuw i32 %.024.i.i, 1                ; 2 uses
  %i.da = icmp uge i32 %i.cz, %i.cs
  %i.db = icmp eq i64 %i.cy, 0
  %or.cond5.i.i = select i1 %i.da, i1 true, i1 %i.db
  br i1 %or.cond5.i.i, label %ma_channel_map_copy_or_default.exit, label %.preheader.i.i

ma_channel_map_copy_or_default.exit:              ; preds = %.preheader.i.i, %bb.h, %bb.f, %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 176
  store ptr %i.dc, ptr %i.dd, align 8
  %.val = load i32, ptr %i.f, align 4             ; 4 uses
  %.val109 = load i32, ptr %i.bp, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.de, i8 0, i64 48, i1 false)
  %i.df = icmp eq i32 %.val, 0
  br i1 %i.df, label %ma_spatializer_get_heap_layout.exit.thread, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %ma_channel_map_copy_or_default.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 4 uses
  %.sroa.3.0.insert.ext.i.i = zext i32 %.val109 to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i, 32
  %i.dh = zext i32 %.val to i64                   ; 5 uses
  %i.di = shl nuw nsw i64 %i.dh, 2
  %i.dj = shl nuw nsw i64 %i.dh, 3
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 160
  store ptr %i.dg, ptr %i.dk, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dg, i8 0, i64 %i.dj, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 4 uses
  store ptr %i.dg, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.di
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 4 uses
  store ptr %i.dm, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 140
  store float 1.000000e+00, ptr %i.do, align 4
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift.i.i, %i.dh
  store i64 %.sroa.0.0.insert.insert, ptr %i.de, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i32 -1, ptr %i.dp, align 8
  %xtraiter = and i64 %i.dh, 1
  %i.dq = icmp eq i32 %.val, 1
  br i1 %i.dq, label %.lr.ph.i.epil.preheader, label %ma_zero_memory_default.exit.i.new

ma_zero_memory_default.exit.i.new:                ; preds = %ma_zero_memory_default.exit.i
  %unroll_iter = and i64 %i.dh, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %ma_zero_memory_default.exit.i.new
  %indvars.iv.i = phi i64 [ 0, %ma_zero_memory_default.exit.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %ma_zero_memory_default.exit.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.dr = load ptr, ptr %i.dl, align 8
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.ds, align 4
  %i.dt = load ptr, ptr %i.dn, align 8
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.du, align 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.dv = load ptr, ptr %i.dl, align 8
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i
  store float 1.000000e+00, ptr %i.dw, align 4
  %i.dx = load ptr, ptr %i.dn, align 8
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.next.i
  store float 1.000000e+00, ptr %i.dy, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ma_spatializer_get_heap_layout.exit.thread.loopexit.unr-lcssa, label %.lr.ph.i

ma_spatializer_get_heap_layout.exit.thread.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ma_spatializer_get_heap_layout.exit.thread, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %ma_spatializer_get_heap_layout.exit.thread.loopexit.unr-lcssa, %ma_zero_memory_default.exit.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %ma_zero_memory_default.exit.i ], [ %indvars.iv.next.i.1, %ma_spatializer_get_heap_layout.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod142 = trunc i32 %.val to i1
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.dz = load ptr, ptr %i.dl, align 8
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i.epil.init
  store float 1.000000e+00, ptr %i.ea, align 4
  %i.eb = load ptr, ptr %i.dn, align 8
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i.epil.init
  store float 1.000000e+00, ptr %i.ec, align 4
  br label %ma_spatializer_get_heap_layout.exit.thread

ma_spatializer_get_heap_layout.exit.thread:       ; preds = %.lr.ph.i.epil.preheader, %ma_spatializer_get_heap_layout.exit.thread.loopexit.unr-lcssa, %ma_channel_map_copy_or_default.exit, %bb.c, %bb.b, %ma_zero_memory_default.exit108, %bb.a
  %.0 = phi i32 [ -2, %bb.c ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit108 ], [ -2, %bb.b ], [ -2, %ma_channel_map_copy_or_default.exit ], [ 0, %ma_spatializer_get_heap_layout.exit.thread.loopexit.unr-lcssa ], [ 0, %.lr.ph.i.epil.preheader ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @ma_spatializer_get_direction(ptr nofree noundef captures(address) %0) local_unnamed_addr #36 {
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
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !6
  %i.j = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.i, label %.loopexit.i.i

ma_atomic_vec3f_get.exit:                         ; preds = %.loopexit.i.i, %bb.b
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.b, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4
  store atomic volatile i32 0, ptr %i.c release, align 4
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.03.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %.sroa.24.0.copyload.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %ma_atomic_vec3f_get.exit
  %.pn = phi { <2 x float>, float } [ %.fca.1.insert.i, %ma_atomic_vec3f_get.exit ], [ { <2 x float> zeroinitializer, float -1.000000e+00 }, %bb.a ]
  ret { <2 x float>, float } %.pn
}

; Function Attrs: nounwind uwtable
define hidden void @ma_spatializer_set_direction(ptr nofree noundef captures(address) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #36 {
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
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !6
  %i.j = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.i, label %.loopexit.i.i

ma_atomic_vec3f_set.exit:                         ; preds = %.loopexit.i.i, %bb.b
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.b, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store float %3, ptr %.sroa.24.0..sroa_idx.i, align 4
  store atomic volatile i32 0, ptr %i.c release, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %ma_atomic_vec3f_set.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -4, 1) i32 @ma_spatializer_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8                ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %ma_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
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
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.u, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.f

end_hunk_7
begin_hunk_8_@ma_linear_resampler_get_heap_size:bb.a
  %i.v = add nuw nsw i64 %i.u, 64                 ; 2 uses
  %i.w = add nsw i32 %i.o, -1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = mul nuw nsw i64 %i.v, %i.x
  %i.z = add nuw nsw i64 %i.v, %i.t
  %i.aa = add nuw nsw i64 %i.z, %i.y
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph76.i.i.preheader.i, %._crit_edge.i.i.i
  %i.ab = phi i64 [ %i.t, %._crit_edge.i.i.i ], [ %i.aa, %.lr.ph76.i.i.preheader.i ]
  %i.ac = add nuw nsw i64 %i.ab, 7
  %i.ad = and i64 %i.ac, -8
  %i.ae = add nuw nsw i64 %i.j, %i.ad
  %i.af = and i64 %i.ae, -8
  store i64 %i.af, ptr %1, align 8
  br label %ma_linear_resampler_get_heap_layout.exit.thread

ma_linear_resampler_get_heap_layout.exit.thread:  ; preds = %bb.c, %bb.b, %bb.d, %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -2, %bb.a ], [ -2, %bb.d ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden range(i32 -3, 1) i32 @ma_linear_resampler_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #32 {
bb.a:
  %3 = alloca %struct.ma_linear_resampler_heap_layout, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #61
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_linear_resampler_get_heap_layout.exit.thread, label %ma_zero_memory_default.exit32

ma_zero_memory_default.exit32:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(136) %2, i8 0, i64 136, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_linear_resampler_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit32
  %i.c = load i32, ptr %0, align 8                ; 2 uses
  switch i32 %i.c, label %ma_linear_resampler_get_heap_layout.exit.thread [
    i32 5, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %ma_linear_resampler_get_heap_layout.exit.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = icmp eq i32 %i.c, 5
  %i.i = zext i32 %i.e to i64                     ; 3 uses
  %..i = select i1 %i.h, i64 2, i64 1
  %i.j = shl nuw nsw i64 %i.i, %..i               ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.j, ptr %i.k, align 8
  %storemerge35.i = shl nuw nsw i64 %i.j, 1
  %i.l = add nuw nsw i64 %storemerge35.i, 6       ; 2 uses
  %i.m = and i64 %i.l, 137438953464
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i32, ptr %i.o, align 8
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 8) ; 2 uses
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %i.q, 1                         ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.r, 0
  %i.t = shl nuw nsw i64 %i.i, 2
  %i.u = add nuw nsw i64 %i.t, 4
  %i.v = and i64 %i.u, 34359738360
  %i.w = add nuw nsw i64 %i.v, 40
  %i.x = select i1 %.not.i.i.i, i64 0, i64 %i.w   ; 2 uses
  %.not78.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not78.i.i.i, label %bb.d, label %.lr.ph76.i.i.preheader.i

.lr.ph76.i.i.preheader.i:                         ; preds = %._crit_edge.i.i.i
  %i.y = shl nuw nsw i64 %i.i, 3
  %i.z = add nuw nsw i64 %i.y, 64                 ; 2 uses
  %i.aa = add nsw i32 %i.s, -1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = mul nuw nsw i64 %i.z, %i.ab
  %i.ad = add nuw nsw i64 %i.z, %i.x
  %i.ae = add nuw nsw i64 %i.ad, %i.ac
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph76.i.i.preheader.i, %._crit_edge.i.i.i
  %i.af = phi i64 [ %i.x, %._crit_edge.i.i.i ], [ %i.ae, %.lr.ph76.i.i.preheader.i ]
  %i.ag = add nuw nsw i64 %i.af, 7
  %i.ah = and i64 %i.ag, -8
  %i.ai = add nuw nsw i64 %i.ah, %i.l
  %i.aj = and i64 %i.ai, -8                       ; 2 uses
  store i64 %i.aj, ptr %3, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr %1, ptr %i.ak, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.aj, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.e, %bb.d
  %.sink = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %.sink, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = call fastcc i32 @ma_linear_resampler_set_rate_internal(ptr noundef nonnull %2, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %i.ao, i32 noundef %i.aq, i32 noundef 0) ; 2 uses
  %.not30 = icmp eq i32 %i.ar, 0
  br i1 %.not30, label %bb.f, label %ma_linear_resampler_get_heap_layout.exit.thread

bb.f:                                             ; preds = %ma_zero_memory_default.exit
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 0, ptr %i.at, align 4
  br label %ma_linear_resampler_get_heap_layout.exit.thread

ma_linear_resampler_get_heap_layout.exit.thread:  ; preds = %bb.b, %ma_zero_memory_default.exit32, %bb.c, %ma_zero_memory_default.exit, %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -2, %bb.a ], [ %i.ar, %ma_zero_memory_default.exit ], [ -2, %bb.c ], [ -2, %ma_zero_memory_default.exit32 ], [ -2, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #61
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -3, 1) i32 @ma_linear_resampler_set_rate_internal(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #32 {
bb.a:
  %6 = alloca %struct.ma_lpf_config, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #61
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  %i.c = icmp eq i32 %4, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
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
  store i32 %i.i, ptr %i.f, align 8
  %i.j = udiv i32 %4, %.06.i57                    ; 3 uses
  store i32 %i.j, ptr %i.d, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp ugt i32 %i.l, 8
  br i1 %i.m, label %bb.j, label %bb.e

bb.e:                                             ; preds = %ma_gcf_u32.exit
  %. = tail call i32 @llvm.umax.i32(i32 %i.i, i32 %i.j)
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.j)
  %i.o = uitofp i32 %i.n to double
  %i.p = fmul nnan double %i.o, 5.000000e-01
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load double, ptr %i.q, align 8
  %i.s = fmul double %i.p, %i.r
  %i.t = load <2 x i32>, ptr %0, align 8
  store <2 x i32> %i.t, ptr %6, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %., ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.s, ptr %.sroa.756.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.l, ptr %.sroa.8.0..sroa_idx, align 8
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
  %i.x = load i64, ptr %i.w, align 8
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
  %i.ab = load i32, ptr %i.f, align 8             ; 2 uses
  %i.ac = load i32, ptr %i.d, align 4             ; 6 uses
  %i.ad = udiv i32 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ad, ptr %i.ae, align 8
  %i.af = urem i32 %i.ab, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = udiv i32 %i.ai, %i.e
  %i.ak = urem i32 %i.ai, %i.e
  %i.al = mul i32 %i.aj, %i.ac
  %i.am = mul i32 %i.ak, %i.ac
  %i.an = udiv i32 %i.am, %i.e
  %i.ao = add i32 %i.an, %i.al                    ; 2 uses
  %i.ap = udiv i32 %i.ao, %i.ac
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = add i32 %i.ar, %i.ap
  store i32 %i.as, ptr %i.aq, align 8
  %i.at = urem i32 %i.ao, %i.ac
  store i32 %i.at, ptr %i.ah, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %ma_gcf_u32.exit, %bb.b, %bb.a, %bb.i
  %.046 = phi i32 [ 0, %bb.i ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %ma_gcf_u32.exit ], [ %.0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #61
  ret i32 %.046
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -4, 1) i32 @ma_linear_resampler_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8                ; 2 uses
  switch i32 %i.b, label %ma_free.exit [
    i32 5, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_free.exit, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c
  %i.f = icmp eq i32 %i.b, 5
  %i.g = zext i32 %i.d to i64                     ; 3 uses
  %..i.i = select i1 %i.f, i64 2, i64 1
  %i.h = shl nuw nsw i64 %i.g, %..i.i
  %storemerge35.i.i = shl nuw nsw i64 %i.h, 1
  %i.i = add nuw nsw i64 %storemerge35.i.i, 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = tail call i32 @llvm.umin.i32(i32 %i.k, i32 8) ; 2 uses
  %i.m = and i32 %i.l, 1
  %i.n = lshr i32 %i.l, 1                         ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  %i.o = shl nuw nsw i64 %i.g, 2
  %i.p = add nuw nsw i64 %i.o, 4
  %i.q = and i64 %i.p, 34359738360
  %i.r = add nuw nsw i64 %i.q, 40
  %i.s = select i1 %.not.i.i.i.i, i64 0, i64 %i.r ; 2 uses
  %.not78.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not78.i.i.i.i, label %bb.d, label %.lr.ph76.i.i.preheader.i.i

.lr.ph76.i.i.preheader.i.i:                       ; preds = %._crit_edge.i.i.i.i
  %i.t = shl nuw nsw i64 %i.g, 3
  %i.u = add nuw nsw i64 %i.t, 64                 ; 2 uses
  %i.v = add nsw i32 %i.n, -1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = mul nuw nsw i64 %i.u, %i.w
  %i.y = add nuw nsw i64 %i.s, %i.u
  %i.z = add nuw nsw i64 %i.y, %i.x
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph76.i.i.preheader.i.i, %._crit_edge.i.i.i.i
  %i.aa = phi i64 [ %i.s, %._crit_edge.i.i.i.i ], [ %i.z, %.lr.ph76.i.i.preheader.i.i ]
  %i.ab = add nuw nsw i64 %i.aa, 7
  %i.ac = and i64 %i.ab, -8
  %i.ad = add nuw nsw i64 %i.i, %i.ac
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not8.i = icmp eq ptr %i.ag, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = tail call ptr %i.ag(i64 noundef %i.ae, ptr noundef %i.ah) #61, !inline_history !3
  br label %ma_malloc.exit

bb.g:                                             ; preds = %bb.d
  %i.aj = tail call noalias noundef ptr @malloc(i64 noundef %i.ae) #74
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.f, %bb.g
  %.0.i20 = phi ptr [ %i.ai, %bb.f ], [ %i.aj, %bb.g ] ; 4 uses
  %i.ak = icmp eq ptr %.0.i20, null
  br i1 %i.ak, label %ma_free.exit, label %bb.h

bb.h:                                             ; preds = %ma_malloc.exit
  %i.al = tail call i32 @ma_linear_resampler_init_preallocated(ptr noundef nonnull %0, ptr noundef nonnull %.0.i20, ptr noundef %2) ; 4 uses
  %.not19 = icmp eq i32 %i.al, 0
  br i1 %.not19, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not9.i = icmp eq ptr %i.an, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %1, align 8
  tail call void %i.an(ptr noundef nonnull %.0.i20, ptr noundef %i.ao) #61, !inline_history !4
  br label %ma_free.exit

bb.l:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %.0.i20) #61
  br label %ma_free.exit

bb.m:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i32 1, ptr %i.ap, align 8
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.e, %bb.a, %bb.c, %bb.b, %bb.l, %bb.k, %bb.j, %ma_malloc.exit, %bb.m
  %.013 = phi i32 [ 0, %bb.m ], [ %i.al, %bb.k ], [ -2, %bb.a ], [ -4, %ma_malloc.exit ], [ -4, %bb.e ], [ %i.al, %bb.l ], [ %i.al, %bb.j ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define hidden void @ma_linear_resampler_uninit(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @ma_lpf_uninit(ptr noundef nonnull %i.b, ptr noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ma_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.i, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %1, align 8
  tail call void %i.i(ptr noundef nonnull %i.f, ptr noundef %i.j) #61, !inline_history !4
  br label %ma_free.exit

bb.g:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.f) #61
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden range(i32 -2, 1) i32 @ma_linear_resampler_process_pcm_frames(ptr nofree noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #40 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.am, label %bb.b
end_hunk_8
begin_hunk_9_@ma_data_converter_init_preallocated:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.u, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8
  %.not.i = icmp eq i32 %i.aa, 0                  ; 2 uses
  br i1 %.not.i, label %ma_data_converter_config_is_resampler_required.exit.i, label %ma_data_converter_config_is_resampler_required.exit.thread.i

ma_data_converter_config_is_resampler_required.exit.i: ; preds = %ma_zero_memory_default.exit
  %i.ab = load i32, ptr %i.q, align 8             ; 2 uses
  %i.ac = load i32, ptr %i.t, align 4             ; 2 uses
  %i.ad = icmp ne i32 %i.ab, %i.ac
  %i.ae = zext i1 %i.ad to i32                    ; 2 uses
  %.not14.i = icmp eq i32 %i.ab, %i.ac
  br i1 %.not14.i, label %bb.d, label %ma_data_converter_config_is_resampler_required.exit.thread.i

ma_data_converter_config_is_resampler_required.exit.thread.i: ; preds = %ma_zero_memory_default.exit, %ma_data_converter_config_is_resampler_required.exit.i
  %i.af = phi i32 [ %i.ae, %ma_data_converter_config_is_resampler_required.exit.i ], [ 1, %ma_zero_memory_default.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = load i32, ptr %i.ag, align 8
  %.not10.i = icmp eq i32 %i.ah, 0
  br i1 %.not10.i, label %bb.d, label %ma_data_converter_config_get_mid_format.exit

bb.d:                                             ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i, %ma_data_converter_config_is_resampler_required.exit.i
  %i.ai = phi i32 [ %i.af, %ma_data_converter_config_is_resampler_required.exit.thread.i ], [ %i.ae, %ma_data_converter_config_is_resampler_required.exit.i ] ; 3 uses
  %i.aj = load i32, ptr %i.h, align 4             ; 3 uses
  switch i32 %i.aj, label %bb.e [
    i32 2, label %ma_data_converter_config_get_mid_format.exit
    i32 5, label %ma_data_converter_config_get_mid_format.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %0, align 8
  %switch.selectcmp12.i = icmp eq i32 %i.ak, 2
  %switch.select13.i = select i1 %switch.selectcmp12.i, i32 2, i32 5
  br label %ma_data_converter_config_get_mid_format.exit

ma_data_converter_config_get_mid_format.exit:     ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i, %bb.d, %bb.d, %bb.e
  %i.al = phi i32 [ %i.af, %ma_data_converter_config_is_resampler_required.exit.thread.i ], [ %i.ai, %bb.d ], [ %i.ai, %bb.e ], [ %i.ai, %bb.d ]
  %.0.i = phi i32 [ 5, %ma_data_converter_config_is_resampler_required.exit.thread.i ], [ %i.aj, %bb.d ], [ %switch.select13.i, %bb.e ], [ %i.aj, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #61
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  br i1 %.not.i, label %ma_data_converter_config_is_resampler_required.exit.i.i, label %ma_data_converter_config_is_resampler_required.exit.thread.i.i

ma_data_converter_config_is_resampler_required.exit.i.i: ; preds = %ma_data_converter_config_get_mid_format.exit
  %i.am = load i32, ptr %i.q, align 8, !noalias !728
  %i.an = load i32, ptr %i.t, align 4, !noalias !728
  %.not14.i.i = icmp eq i32 %i.am, %i.an
  br i1 %.not14.i.i, label %bb.f, label %ma_data_converter_config_is_resampler_required.exit.thread.i.i

ma_data_converter_config_is_resampler_required.exit.thread.i.i: ; preds = %ma_data_converter_config_is_resampler_required.exit.i.i, %ma_data_converter_config_get_mid_format.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ap = load i32, ptr %i.ao, align 8, !noalias !728
  %.not10.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not10.i.i, label %bb.f, label %ma_channel_converter_config_init_from_data_converter_config.exit

bb.f:                                             ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i.i, %ma_data_converter_config_is_resampler_required.exit.i.i
  %i.aq = load i32, ptr %i.h, align 4, !noalias !728 ; 3 uses
  switch i32 %i.aq, label %bb.g [
    i32 2, label %ma_channel_converter_config_init_from_data_converter_config.exit
    i32 5, label %ma_channel_converter_config_init_from_data_converter_config.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %0, align 8, !noalias !728
  %switch.selectcmp12.i.i = icmp eq i32 %i.ar, 2
  %switch.select13.i.i = select i1 %switch.selectcmp12.i.i, i32 2, i32 5
  br label %ma_channel_converter_config_init_from_data_converter_config.exit

ma_channel_converter_config_init_from_data_converter_config.exit: ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i.i, %bb.f, %bb.f, %bb.g
  %.0.i.i = phi i32 [ 5, %ma_data_converter_config_is_resampler_required.exit.thread.i.i ], [ %i.aq, %bb.f ], [ %switch.select13.i.i, %bb.g ], [ %i.aq, %bb.f ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.0.i.i, ptr %4, align 8, !alias.scope !728
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.au = load <2 x i32>, ptr %i.k, align 8, !noalias !728
  store <2 x i32> %i.au, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !728
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !728
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load <2 x ptr>, ptr %i.as, align 8, !noalias !728
  store <2 x ptr> %i.av, ptr %.sroa.78.0..sroa_idx.i, align 8, !alias.scope !728
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !728
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.ax, ptr %i.ay, align 8, !alias.scope !728
  %i.az = load <2 x i32>, ptr %i.at, align 4, !noalias !728
  store <2 x i32> %i.az, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !728
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.be = call i32 @ma_channel_converter_init_preallocated(ptr noundef nonnull %4, ptr noundef %i.bc, ptr noundef nonnull %i.bd) ; 2 uses
  %.not79 = icmp eq i32 %i.be, 0
  br i1 %.not79, label %bb.h, label %.critedge

bb.h:                                             ; preds = %ma_channel_converter_config_init_from_data_converter_config.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bg = load i32, ptr %i.bf, align 8
  %.not80 = icmp eq i32 %i.bg, 1
  br i1 %.not80, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 298
  store i8 1, ptr %i.bh, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  %.not81 = icmp eq i32 %i.al, 0
  br i1 %.not81, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %i.bi = load i32, ptr %i.k, align 8, !noalias !731
  %i.bj = load i32, ptr %i.n, align 4, !noalias !731
  %i.bk = load i32, ptr %i.z, align 8, !noalias !731
  %.not.i.i.i92 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i92, label %ma_data_converter_config_is_resampler_required.exit.i.i103, label %ma_data_converter_config_is_resampler_required.exit.thread.i.i93

ma_data_converter_config_is_resampler_required.exit.i.i103: ; preds = %bb.k
  %i.bl = load i32, ptr %i.q, align 8, !noalias !731
  %i.bm = load i32, ptr %i.t, align 4, !noalias !731
  %.not14.i.i104 = icmp eq i32 %i.bl, %i.bm
  br i1 %.not14.i.i104, label %bb.l, label %ma_data_converter_config_is_resampler_required.exit.thread.i.i93

ma_data_converter_config_is_resampler_required.exit.thread.i.i93: ; preds = %ma_data_converter_config_is_resampler_required.exit.i.i103, %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bo = load i32, ptr %i.bn, align 8, !noalias !731
  %.not10.i.i94 = icmp eq i32 %i.bo, 0
  br i1 %.not10.i.i94, label %bb.l, label %ma_resampler_config_init_from_data_converter_config.exit

bb.l:                                             ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i.i93, %ma_data_converter_config_is_resampler_required.exit.i.i103
  %i.bp = load i32, ptr %i.h, align 4, !noalias !731 ; 3 uses
  switch i32 %i.bp, label %bb.m [
    i32 2, label %ma_resampler_config_init_from_data_converter_config.exit
    i32 5, label %ma_resampler_config_init_from_data_converter_config.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.bq = load i32, ptr %0, align 8, !noalias !731
  %switch.selectcmp12.i.i101 = icmp eq i32 %i.bq, 2
  %switch.select13.i.i102 = select i1 %switch.selectcmp12.i.i101, i32 2, i32 5
  br label %ma_resampler_config_init_from_data_converter_config.exit

ma_resampler_config_init_from_data_converter_config.exit: ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i.i93, %bb.l, %bb.l, %bb.m
  %.0.i.i95 = phi i32 [ 5, %ma_data_converter_config_is_resampler_required.exit.thread.i.i93 ], [ %i.bp, %bb.l ], [ %switch.select13.i.i102, %bb.m ], [ %i.bp, %bb.l ] ; 2 uses
  %..i = call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.bj) ; 2 uses
  %i.br = load i32, ptr %i.q, align 8, !noalias !731 ; 2 uses
  %i.bs = load i32, ptr %i.t, align 4, !noalias !731 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bu = load i32, ptr %i.bt, align 8, !noalias !731 ; 2 uses
  store i32 %.0.i.i95, ptr %5, align 8, !alias.scope !731
  %.sroa.4.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %..i, ptr %.sroa.4.0..sroa_idx.i96, align 4, !alias.scope !731
  %.sroa.5.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.br, ptr %.sroa.5.0..sroa_idx.i97, align 8, !alias.scope !731
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.bs, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !731
  %.sroa.7.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.bu, ptr %.sroa.7.0..sroa_idx.i98, align 8, !alias.scope !731
  %.sroa.9.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %.sroa.9.0..sroa_idx.i99, align 4, !alias.scope !731
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 0, ptr %.sroa.10.0..sroa_idx.i100, align 4, !alias.scope !731
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bw = load i32, ptr %i.bv, align 8, !noalias !731
  store i32 %i.bw, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !731
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !731 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.by, ptr %i.bz, align 8, !alias.scope !731
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !731 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.cb, ptr %i.cc, align 8, !alias.scope !731
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %i.cg, i8 0, i64 192, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 280
  store ptr %i.cf, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i32 %.0.i.i95, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 132
  store i32 %..i, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i32 %i.br, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i32 %i.bs, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  switch i32 %i.bu, label %.thread [
    i32 0, label %.thread.i
    i32 1, label %bb.n
  ]

.thread.i:                                        ; preds = %ma_resampler_config_init_from_data_converter_config.exit
  store ptr @g_ma_linear_resampler_vtable, ptr %i.cm, align 8
  store ptr %i.cg, ptr %i.cn, align 8
  br label %bb.o

bb.n:                                             ; preds = %ma_resampler_config_init_from_data_converter_config.exit
  store ptr %i.by, ptr %i.cm, align 8
  store ptr %i.cb, ptr %i.cn, align 8
  %i.co = icmp eq ptr %i.by, null
  br i1 %i.co, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i
  %i.cp = phi ptr [ %i.cg, %.thread.i ], [ %i.cb, %bb.n ]
  %i.cq = phi ptr [ @g_ma_linear_resampler_vtable, %.thread.i ], [ %i.by, %bb.n ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.thread, label %ma_resampler_init_preallocated.exit

ma_resampler_init_preallocated.exit:              ; preds = %bb.o
  %i.cu = call i32 %i.cs(ptr noundef %i.cp, ptr noundef nonnull %5, ptr noundef %i.cf, ptr noundef nonnull %i.cg) #61, !inline_history !674 ; 2 uses
  %.not82 = icmp eq i32 %i.cu, 0
  br i1 %.not82, label %bb.p, label %.thread

.thread:                                          ; preds = %ma_resampler_init_preallocated.exit, %bb.n, %ma_resampler_config_init_from_data_converter_config.exit, %bb.o
  %.175.ph = phi i32 [ %i.cu, %ma_resampler_init_preallocated.exit ], [ -29, %bb.o ], [ -2, %ma_resampler_config_init_from_data_converter_config.exit ], [ -29, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  br label %bb.aq

bb.p:                                             ; preds = %ma_resampler_init_preallocated.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 299
  store i8 1, ptr %i.cv, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 298
  %i.cx = load i8, ptr %i.cw, align 2             ; 2 uses
  %.not113 = icmp eq i8 %i.cx, 0                  ; 2 uses
  br i1 %.not113, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 299
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.db = load i32, ptr %2, align 8
  %i.dc = load i32, ptr %i.j, align 4
  %i.dd = icmp eq i32 %i.db, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 296
  store i8 0, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 297 ; 2 uses
  br i1 %i.dd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.df, align 1
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  store i8 1, ptr %i.df, align 1
  br label %bb.z

bb.v:                                             ; preds = %bb.r, %bb.q
  %i.dg = load i32, ptr %2, align 8
  %.not83 = icmp eq i32 %i.dg, %.0.i
  br i1 %.not83, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 296
  store i8 1, ptr %i.dh, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.di = load i32, ptr %i.j, align 4
  %.not84 = icmp eq i32 %i.di, %.0.i
  br i1 %.not84, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 297
  store i8 1, ptr %i.dj, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.t, %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.dl = load i8, ptr %i.dk, align 8
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 297
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = or i8 %i.do, %i.cx
  %brmerge.not = icmp eq i8 %i.dp, 0
  br i1 %brmerge.not, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 299
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 300
  store i8 1, ptr %i.dt, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac, %bb.ab, %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.dv = load i8, ptr %i.du, align 4
  %.not85 = icmp eq i8 %i.dv, 0
  br i1 %.not85, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 0, ptr %i.dw, align 4
  br label %bb.aq

bb.af:                                            ; preds = %bb.ad
  %i.dx = load i32, ptr %i.m, align 8
  %i.dy = load i32, ptr %i.p, align 4
  %i.dz = icmp ult i32 %i.dx, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 299
  %i.eb = load i8, ptr %i.ea, align 1
  %.not89 = icmp eq i8 %i.eb, 0                   ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 6 uses
  br i1 %i.dz, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  br i1 %.not89, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 4, ptr %i.ec, align 4
  br label %bb.aq

bb.ai:                                            ; preds = %bb.ag
  store i32 2, ptr %i.ec, align 4
  br label %bb.aq

bb.aj:                                            ; preds = %bb.af
  br i1 %.not113, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not89, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 5, ptr %i.ec, align 4
  br label %bb.aq

bb.am:                                            ; preds = %bb.ak
  store i32 2, ptr %i.ec, align 4
  br label %bb.aq

bb.an:                                            ; preds = %bb.aj
  br i1 %.not89, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 3, ptr %i.ec, align 4
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  store i32 1, ptr %i.ec, align 4
  br label %bb.aq

.critedge:                                        ; preds = %ma_channel_converter_config_init_from_data_converter_config.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  br label %bb.aq

bb.aq:                                            ; preds = %.thread, %bb.ae, %bb.am, %bb.al, %bb.ap, %bb.ao, %bb.ah, %bb.ai, %.critedge, %ma_zero_memory_default.exit91, %bb.a
  %.2 = phi i32 [ 0, %bb.ae ], [ -2, %bb.a ], [ %i.be, %.critedge ], [ %.175.ph, %.thread ], [ %i.b, %ma_zero_memory_default.exit91 ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.al ], [ 0, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #61
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden i32 @ma_data_converter_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.ma_data_converter_heap_layout, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #61
  %i.a = call fastcc i32 @ma_data_converter_get_heap_layout(ptr noundef readonly %0, ptr noundef %3) ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
end_hunk_9
begin_hunk_10_@ma_decoder_init__internal:bb.a
.thread:                                          ; preds = %bb.g, %bb.h, %.preheader.i, %bb.c
  %.2.i.ph = phi i32 [ -203, %.preheader.i ], [ -203, %bb.c ], [ -203, %bb.h ], [ %i.y, %bb.g ]
  %i.aj = call i32 %0(ptr noundef %2, i64 noundef 0, i32 noundef 0) #61 ; 0 uses
  %i.ak = load i32, ptr %i.b, align 8
  %.not189 = icmp eq i32 %i.ak, 0
  %spec.select = select i1 %.not189, i32 %.2.i.ph, i32 -203
  br label %.thread12

bb.j:                                             ; preds = %bb.i
  %i.al = call fastcc i32 @ma_decoder__postinit(ptr noundef %1, ptr noundef nonnull %2)
  br label %.thread12

.thread12:                                        ; preds = %.thread, %bb.i, %bb.j
  %.016 = phi i32 [ %i.al, %bb.j ], [ -203, %bb.i ], [ %spec.select, %.thread ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define hidden i32 @ma_decoder_init_memory(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.ma_decoding_backend_config, align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.ma_decoding_backend_config, align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %struct.ma_decoder_config, align 8  ; 21 uses
  %7 = alloca %struct.ma_decoder_config, align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %7, ptr noundef nonnull readonly align 8 dereferenceable(144) %2, i64 144, i1 false)
  br label %ma_decoder_config_init_copy.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %7, i8 0, i64 144, i1 false), !alias.scope !777
  br label %ma_decoder_config_init_copy.exit

ma_decoder_config_init_copy.exit:                 ; preds = %bb.b, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(144) %7, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.c = icmp eq ptr %3, null
  br i1 %i.c, label %ma_decoder__preinit.exit.thread, label %bb.d

bb.d:                                             ; preds = %ma_decoder_config_init_copy.exit
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(488) %i.d, i8 0, i64 488, i1 false)
  store ptr @g_ma_decoder_data_source_vtable, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 -1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i64 -1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store ptr %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 496 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, null                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, null                   ; 4 uses
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %i.t, label %bb.f, label %.thread22.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.v, null
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.y, null
  %or.cond58 = select i1 %i.w, i1 %i.z, i1 false
  br i1 %or.cond58, label %bb.g, label %ma_decoder__preinit.exit.thread

bb.g:                                             ; preds = %bb.f
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 504
  store ptr @ma__malloc_default, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 512
  store ptr @ma__realloc_default, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 520
  store ptr @ma__free_default, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  br label %ma_decoder__preinit.exit

bb.h:                                             ; preds = %bb.d
  br i1 %i.t, label %ma_decoder__preinit.exit.thread, label %.thread22.i.i.i

.thread22.i.i.i:                                  ; preds = %bb.h, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  %or.cond61 = select i1 %i.ac, i1 %i.af, i1 false
  br i1 %or.cond61, label %ma_decoder__preinit.exit.thread, label %bb.i

bb.i:                                             ; preds = %.thread22.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  %i.ag = icmp eq ptr %i.ab, null
  %i.ah = icmp eq ptr %i.ae, null
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br label %ma_decoder__preinit.exit

ma_decoder__preinit.exit:                         ; preds = %bb.i, %bb.g
  %or.cond64 = phi i1 [ %i.ai, %bb.i ], [ true, %bb.g ] ; 3 uses
  %i.aj = icmp eq ptr %0, null
  %i.ak = icmp eq i64 %1, 0
  %or.cond = or i1 %i.aj, %i.ak
  br i1 %or.cond, label %ma_decoder__preinit.exit.thread, label %bb.j

bb.j:                                             ; preds = %ma_decoder__preinit.exit
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = icmp eq ptr %i.an, null                 ; 2 uses
  br i1 %i.ao, label %ma_decoder_init_custom_from_memory__internal.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  %.not21.i = icmp eq i32 %i.aq, 0
  br i1 %.not21.i, label %ma_decoder_init_custom_from_memory__internal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 116
  %i.at = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.au = load i32, ptr %6, align 8
  %i.av = load i32, ptr %i.as, align 4
  %.sroa.3.0.insert.ext.i.i.i = zext i32 %i.av to i64
  %.sroa.3.0.insert.shift.i.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.au to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.aw = zext i32 %i.aq to i64
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i, %.lr.ph.i
  %.01520.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bd, %.critedge.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.01520.i
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  %.not.i38 = icmp eq ptr %i.ay, null
  br i1 %.not.i38, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %ma_decoder_init_from_memory__internal.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %5, align 8
  %i.bc = call i32 %i.ba(ptr noundef %i.at, ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %1, ptr noundef nonnull %5, ptr noundef nonnull %i.n, ptr noundef nonnull %i.b) #61, !inline_history !780
  %.not.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i, label %bb.n, label %ma_decoder_init_from_memory__internal.exit.thread.i

ma_decoder_init_from_memory__internal.exit.thread.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  br label %.critedge.i

.critedge.i:                                      ; preds = %ma_decoder_init_from_memory__internal.exit.thread.i, %bb.k
  %i.bd = add nuw nsw i64 %.01520.i, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %i.aw
  br i1 %exitcond.not, label %ma_decoder_init_custom_from_memory__internal.exit, label %bb.k

ma_decoder_init_custom_from_memory__internal.exit: ; preds = %.critedge.i, %bb.j, %.preheader.i
  %i.be = load i32, ptr %i.al, align 8
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %bb.o, label %ma_decoder__preinit.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %i.b, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr %i.bf, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %i.ay, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.at, ptr %i.bi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  %i.bj = call fastcc i32 @ma_decoder__postinit(ptr noundef %6, ptr noundef nonnull %3) ; 2 uses
  %.not37 = icmp eq i32 %i.bj, 0
  br i1 %.not37, label %bb.z, label %ma_decoder__preinit.exit.thread

bb.o:                                             ; preds = %ma_decoder_init_custom_from_memory__internal.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(488) %i.d, i8 0, i64 488, i1 false)
  store ptr @g_ma_decoder_data_source_vtable, ptr %3, align 8
  store i64 0, ptr %i.e, align 8
  store i64 -1, ptr %i.f, align 8
  store i64 0, ptr %i.g, align 8
  store i64 -1, ptr %i.h, align 8
  store ptr %3, ptr %i.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store ptr @ma_decoder__on_read_memory, ptr %i.k, align 8
  store ptr @ma_decoder__on_seek_memory, ptr %i.l, align 8
  store ptr @ma_decoder__on_tell_memory, ptr %i.m, align 8
  br i1 %i.q, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %i.t, label %bb.q, label %.thread22.i.i.i.i

bb.q:                                             ; preds = %bb.p
  br i1 %or.cond64, label %bb.r, label %ma_decoder__preinit.exit.thread

bb.r:                                             ; preds = %bb.q
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 504
  store ptr @ma__malloc_default, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 512
  store ptr @ma__realloc_default, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 520
  store ptr @ma__free_default, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8
  br label %bb.u

bb.s:                                             ; preds = %bb.o
  %brmerge = select i1 %i.t, i1 true, i1 %or.cond64
  br i1 %brmerge, label %ma_decoder__preinit.exit.thread, label %bb.t

.thread22.i.i.i.i:                                ; preds = %bb.p
  br i1 %or.cond64, label %ma_decoder__preinit.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread22.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 528
  store ptr %0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 536
  store i64 %1, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 544 ; 2 uses
  store i64 0, ptr %i.bm, align 8
  br i1 %i.ao, label %.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.bo = load i32, ptr %i.bn, align 8            ; 2 uses
  %.not28.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not28.i.i, label %.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 116
  %i.br = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.bs = load i32, ptr %6, align 8
  %i.bt = load i32, ptr %i.bq, align 4
  %.sroa.3.0.insert.ext.i.i.i.i = zext i32 %i.bt to i64
  %.sroa.3.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.bs to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %i.bu = zext i32 %i.bo to i64
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i, %.lr.ph.i.i
  %.01625.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cc, %._crit_edge.i.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.01625.i.i
  %i.bw = load ptr, ptr %i.bv, align 8            ; 3 uses
  %.not.i.i41 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i41, label %._crit_edge.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %4, align 8
  %i.bz = call i32 %i.bx(ptr noundef %i.br, ptr noundef nonnull @ma_decoder_internal_on_read__custom, ptr noundef nonnull @ma_decoder_internal_on_seek__custom, ptr noundef nonnull @ma_decoder_internal_on_tell__custom, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.n, ptr noundef nonnull %i.a) #61, !inline_history !781
  %.not.i.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i.i, label %ma_decoder_init__internal.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  %i.ca = load ptr, ptr %i.l, align 8
  %i.cb = call i32 %i.ca(ptr noundef nonnull %3, i64 noundef 0, i32 noundef 0) #61, !inline_history !782 ; 2 uses
  %.not20.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not20.i.i, label %._crit_edge.i.i, label %.thread.i

._crit_edge.i.i:                                  ; preds = %bb.y, %bb.v
  %i.cc = add nuw nsw i64 %.01625.i.i, 1          ; 2 uses
  %exitcond76.not = icmp eq i64 %i.cc, %i.bu
  br i1 %exitcond76.not, label %.thread.i, label %bb.v

ma_decoder_init__internal.exit:                   ; preds = %bb.x
  %i.cd = load ptr, ptr %i.a, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr %i.cd, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %i.bw, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.br, ptr %i.cg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  %i.ch = call fastcc i32 @ma_decoder__postinit(ptr noundef nonnull readonly %6, ptr noundef nonnull %3) ; 2 uses
  %.not36 = icmp eq i32 %i.ch, 0
  br i1 %.not36, label %bb.z, label %ma_decoder__preinit.exit.thread

.thread.i:                                        ; preds = %._crit_edge.i.i, %bb.y, %.preheader.i.i, %bb.u
  %.2.i.ph.i = phi i32 [ -203, %.preheader.i.i ], [ -203, %bb.u ], [ %i.cb, %bb.y ], [ -203, %._crit_edge.i.i ]
  store i64 0, ptr %i.bm, align 8
  br label %ma_decoder__preinit.exit.thread

bb.z:                                             ; preds = %ma_decoder_init__internal.exit, %bb.n
  br label %ma_decoder__preinit.exit.thread

ma_decoder__preinit.exit.thread:                  ; preds = %bb.s, %.thread22.i.i.i.i, %ma_decoder_init_custom_from_memory__internal.exit, %.thread22.i.i.i, %.thread.i, %bb.q, %bb.h, %bb.f, %ma_decoder_config_init_copy.exit, %ma_decoder_init__internal.exit, %bb.n, %ma_decoder__preinit.exit, %bb.z
  %.028 = phi i32 [ -2, %bb.s ], [ -2, %.thread22.i.i.i.i ], [ -2, %ma_decoder__preinit.exit ], [ -203, %ma_decoder_init_custom_from_memory__internal.exit ], [ 0, %bb.z ], [ %i.bj, %bb.n ], [ %i.ch, %ma_decoder_init__internal.exit ], [ -2, %ma_decoder_config_init_copy.exit ], [ -2, %bb.f ], [ -2, %bb.h ], [ -2, %.thread22.i.i.i ], [ %.2.i.ph.i, %.thread.i ], [ -2, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #61
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ma_decoder__postinit(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1) unnamed_addr #8 {
bb.a:
  %2 = alloca %struct.ma_data_converter_heap_layout, align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.ma_data_converter_config, align 8 ; 19 uses
  %i.d = alloca [254 x i8], align 16              ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #61
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(254) %i.d, i8 0, i64 254, i1 false)
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %ma_data_source_get_data_format.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ma_data_source_get_data_format.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 %i.k(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 254) #61, !inline_history !783 ; 2 uses
  %.not36.i.i = icmp eq i32 %i.m, 0
  br i1 %.not36.i.i, label %bb.d, label %ma_data_source_get_data_format.exit.thread.i

ma_data_source_get_data_format.exit.thread.i:     ; preds = %bb.c, %bb.b, %bb.a
  %.0.i.ph.i = phi i32 [ -29, %bb.b ], [ -2, %bb.a ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.a, align 4              ; 3 uses
  %i.o = load i32, ptr %i.b, align 4              ; 4 uses
  %i.p = load i32, ptr %i.c, align 4              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp ugt i32 %i.r, 254
  %i.t = icmp ugt i32 %i.o, 254
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond.i, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %0, align 8                ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  %spec.select.i = select i1 %i.v, i32 %i.n, i32 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 %spec.select.i, ptr %i.w, align 8
  %i.x = load i32, ptr %i.q, align 4              ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  %i.z = select i1 %i.y, i32 %i.o, i32 %i.x       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 140
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  %.sink90.i = select i1 %i.ad, i32 %i.p, i32 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 %.sink90.i, ptr %i.ae, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
end_hunk_10
begin_hunk_11_@drmp3dec_decode_frame:bb.a

.lr.ph35.i.i.i.i:                                 ; preds = %.lr.ph35.i.i.i.i.preheader, %.lr.ph35.i.i.i.i
  %indvars.iv37.i.i.i.i = phi i64 [ %indvars.iv.next38.i.i.i.i, %.lr.ph35.i.i.i.i ], [ %indvars.iv37.i.i.i.i.ph, %.lr.ph35.i.i.i.i.preheader ] ; 3 uses
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %.03449.i.i.i, i64 %indvars.iv37.i.i.i.i ; 2 uses
  %i.azo = load float, ptr %i.azn, align 4        ; 2 uses
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %indvars.iv37.i.i.i.i ; 2 uses
  %i.azq = load float, ptr %i.azp, align 4        ; 2 uses
  %i.azr = fadd float %i.azo, %i.azq
  store float %i.azr, ptr %i.azn, align 4
  %i.azs = fsub float %i.azo, %i.azq
  store float %i.azs, ptr %i.azp, align 4
  %indvars.iv.next38.i.i.i.i = add nuw nsw i64 %indvars.iv37.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i42.i.i.i = icmp eq i64 %indvars.iv.next38.i.i.i.i, %wide.trip.count.i41.i.i.i
  br i1 %exitcond.not.i42.i.i.i, label %drmp3_L3_intensity_stereo_band.exit.i.i.i, label %.lr.ph35.i.i.i.i, !llvm.loop !1076

drmp3_L3_intensity_stereo_band.exit.i.i.i:        ; preds = %.lr.ph35.i.i.i.i, %.lr.ph.i.i.i75.i, %middle.block682, %middle.block670, %._crit_edge.i.i.i73.i, %bb.ea
  %i.azt = load i8, ptr %i.awp, align 1
  %i.azu = zext i8 %i.azt to i64
  %i.azv = getelementptr inbounds nuw [4 x i8], ptr %.03449.i.i.i, i64 %i.azu
  %i.azw = add i32 %.03350.i.i.i, 1               ; 2 uses
  %i.azx = zext i32 %i.azw to i64                 ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %i.awf, i64 %i.azx ; 2 uses
  %i.azz = load i8, ptr %i.azy, align 1           ; 2 uses
  %.not36.i.i.i = icmp eq i8 %i.azz, 0
  br i1 %.not36.i.i.i, label %drmp3_L3_intensity_stereo.exit.i, label %.lr.ph.i35.i.i

drmp3_L3_intensity_stereo.exit.i:                 ; preds = %drmp3_L3_intensity_stereo_band.exit.i.i.i, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %drmp3_L3_midside_stereo.exit.i

bb.ec:                                            ; preds = %._crit_edge.i146
  %i.baa = and i32 %i.atr, 224
  %i.bab = icmp eq i32 %i.baa, 96
  br i1 %i.bab, label %.lr.ph.i77.i, label %drmp3_L3_midside_stereo.exit.i

.lr.ph.i77.i:                                     ; preds = %bb.ec, %.lr.ph.i77.i
  %indvars.iv.i78.i = phi i64 [ %indvars.iv.next.i79.i.1, %.lr.ph.i77.i ], [ 0, %bb.ec ] ; 4 uses
  %i.bac = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv.i78.i ; 2 uses
  %i.bad = load <4 x float>, ptr %i.bac, align 1  ; 2 uses
  %i.bae = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv.i78.i ; 2 uses
  %i.baf = load <4 x float>, ptr %i.bae, align 1  ; 2 uses
  %i.bag = fadd <4 x float> %i.bad, %i.baf
  store <4 x float> %i.bag, ptr %i.bac, align 1
  %i.bah = fsub <4 x float> %i.bad, %i.baf
  store <4 x float> %i.bah, ptr %i.bae, align 1
  %indvars.iv.next.i79.i = or disjoint i64 %indvars.iv.i78.i, 4 ; 3 uses
  %i.bai = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv.next.i79.i ; 2 uses
  %i.baj = load <4 x float>, ptr %i.bai, align 1  ; 2 uses
  %i.bak = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv.next.i79.i ; 2 uses
  %i.bal = load <4 x float>, ptr %i.bak, align 1  ; 2 uses
  %i.bam = fadd <4 x float> %i.baj, %i.bal
  store <4 x float> %i.bam, ptr %i.bai, align 1
  %i.ban = fsub <4 x float> %i.baj, %i.bal
  store <4 x float> %i.ban, ptr %i.bak, align 1
  %indvars.iv.next.i79.i.1 = add nuw nsw i64 %indvars.iv.i78.i, 8
  %i.bao = icmp samesign ult i64 %indvars.iv.next.i79.i, 569
  br i1 %i.bao, label %.lr.ph.i77.i, label %drmp3_L3_midside_stereo.exit.i

drmp3_L3_midside_stereo.exit.i:                   ; preds = %.lr.ph.i77.i, %bb.ec, %drmp3_L3_intensity_stereo.exit.i
  br i1 %i.ol, label %.lr.ph149.i, label %drmp3_L3_decode.exit

.lr.ph149.i:                                      ; preds = %drmp3_L3_midside_stereo.exit.i
  %wide.trip.count217.i = zext nneg i32 %i.oh to i64
  br label %bb.ed

bb.ed:                                            ; preds = %drmp3_L3_change_sign.exit.i, %.lr.ph149.i
  %indvars.iv214.i = phi i64 [ 0, %.lr.ph149.i ], [ %indvars.iv.next215.i, %drmp3_L3_change_sign.exit.i ] ; 6 uses
  %.054148.i = phi ptr [ %i.ok, %.lr.ph149.i ], [ %i.bmc, %drmp3_L3_change_sign.exit.i ] ; 7 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %.054148.i, i64 16
  %i.baq = load i8, ptr %i.bap, align 8
  %.not57.i = icmp eq i8 %i.baq, 0                ; 3 uses
  %i.bar = select i1 %.not57.i, i32 0, i32 2
  %i.bas = load i8, ptr %i.oa, align 2
  %i.bat = lshr i8 %i.bas, 2
  %i.bau = and i8 %i.bat, 3
  %i.bav = zext nneg i8 %i.bau to i32
  %i.baw = load i8, ptr %i.ns, align 1
  %i.bax = zext i8 %i.baw to i32                  ; 2 uses
  %i.bay = lshr i32 %i.bax, 3
  %i.baz = and i32 %i.bay, 1
  %i.bba = lshr i32 %i.bax, 4
  %i.bbb = and i32 %i.bba, 1
  %i.bbc = add nuw nsw i32 %i.baz, %i.bbb
  %i.bbd = mul nuw nsw i32 %i.bbc, 3
  %i.bbe = add nuw nsw i32 %i.bbd, %i.bav
  %i.bbf = icmp eq i32 %i.bbe, 2
  %i.bbg = zext i1 %i.bbf to i32
  %i.bbh = shl nuw nsw i32 %i.bar, %i.bbg         ; 7 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %.054148.i, i64 18
  %i.bbj = load i8, ptr %i.bbi, align 2
  %.not58.i = icmp eq i8 %i.bbj, 0
  br i1 %.not58.i, label %.thread.i149, label %bb.ee

.thread.i149:                                     ; preds = %bb.ed
  %i.bbk = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv214.i
  br label %.preheader.i87.preheader.i

bb.ee:                                            ; preds = %bb.ed
  %i.bbl = add nsw i32 %i.bbh, -1
  %i.bbm = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv214.i ; 4 uses
  %i.bbn = mul nuw nsw i32 %i.bbh, 18
  %i.bbo = zext nneg i32 %i.bbn to i64
  %i.bbp = getelementptr inbounds nuw [4 x i8], ptr %i.bbm, i64 %i.bbo ; 2 uses
  %i.bbq = load ptr, ptr %.054148.i, align 8
  %i.bbr = getelementptr inbounds nuw i8, ptr %.054148.i, i64 17
  %i.bbs = load i8, ptr %i.bbr, align 1
  %i.bbt = zext i8 %i.bbs to i64
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbq, i64 %i.bbt ; 2 uses
  %i.bbv = load i8, ptr %i.bbu, align 1           ; 2 uses
  %.not30.i.i = icmp eq i8 %i.bbv, 0
  br i1 %.not30.i.i, label %bb.eh, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ee, %bb.eg
  %i.bbw = phi i8 [ %i.bdf, %bb.eg ], [ %i.bbv, %bb.ee ] ; 4 uses
  %.033.i.i = phi ptr [ %.lcssa739, %bb.eg ], [ %i.ob, %bb.ee ] ; 2 uses
  %.02232.i.i = phi ptr [ %i.bde, %bb.eg ], [ %i.bbp, %bb.ee ] ; 2 uses
  %.02531.i.i = phi ptr [ %i.bdd, %bb.eg ], [ %i.bbu, %bb.ee ]
  %i.bbx = zext i8 %i.bbw to i32                  ; 3 uses
  %i.bby = zext i8 %i.bbw to i64                  ; 3 uses
  %i.bbz = shl nuw nsw i32 %i.bbx, 1
  %i.bca = zext nneg i32 %i.bbz to i64            ; 4 uses
  %xtraiter790 = and i32 %i.bbx, 1
  %i.bcb = icmp eq i8 %i.bbw, 1
  br i1 %i.bcb, label %.epil.preheader789, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter795 = and i32 %i.bbx, 254
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ef, %.preheader.i.i.new
  %.129.i.i = phi ptr [ %.033.i.i, %.preheader.i.i.new ], [ %i.bcs, %bb.ef ] ; 7 uses
  %.12328.i.i = phi ptr [ %.02232.i.i, %.preheader.i.i.new ], [ %i.bct, %bb.ef ] ; 5 uses
  %niter796 = phi i32 [ 0, %.preheader.i.i.new ], [ %niter796.next.1, %bb.ef ]
  %i.bcc = load float, ptr %.12328.i.i, align 4
  %i.bcd = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 4
  store float %i.bcc, ptr %.129.i.i, align 4
  %i.bce = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i, i64 %i.bby
  %i.bcf = load float, ptr %i.bce, align 4
  %i.bcg = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 8
  store float %i.bcf, ptr %i.bcd, align 4
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i, i64 %i.bca
  %i.bci = load float, ptr %i.bch, align 4
  %i.bcj = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 12
  store float %i.bci, ptr %i.bcg, align 4
  %i.bck = getelementptr inbounds nuw i8, ptr %.12328.i.i, i64 4 ; 3 uses
  %i.bcl = load float, ptr %i.bck, align 4
  %i.bcm = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 16
  store float %i.bcl, ptr %i.bcj, align 4
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %i.bck, i64 %i.bby
  %i.bco = load float, ptr %i.bcn, align 4
  %i.bcp = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 20
  store float %i.bco, ptr %i.bcm, align 4
  %i.bcq = getelementptr inbounds nuw [4 x i8], ptr %i.bck, i64 %i.bca
  %i.bcr = load float, ptr %i.bcq, align 4
  %i.bcs = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 24 ; 3 uses
  store float %i.bcr, ptr %i.bcp, align 4
  %i.bct = getelementptr inbounds nuw i8, ptr %.12328.i.i, i64 8 ; 3 uses
  %niter796.next.1 = add i32 %niter796, 2         ; 2 uses
  %niter796.ncmp.1 = icmp eq i32 %niter796.next.1, %unroll_iter795
  br i1 %niter796.ncmp.1, label %.unr-lcssa, label %bb.ef

.unr-lcssa:                                       ; preds = %bb.ef
  %lcmp.mod791.not = icmp eq i32 %xtraiter790, 0
  br i1 %lcmp.mod791.not, label %bb.eg, label %.epil.preheader789

.epil.preheader789:                               ; preds = %.unr-lcssa, %.preheader.i.i
  %.129.i.i.epil.init = phi ptr [ %.033.i.i, %.preheader.i.i ], [ %i.bcs, %.unr-lcssa ] ; 4 uses
  %.12328.i.i.epil.init = phi ptr [ %.02232.i.i, %.preheader.i.i ], [ %i.bct, %.unr-lcssa ] ; 4 uses
  %lcmp.mod794 = trunc i8 %i.bbw to i1
  tail call void @llvm.assume(i1 %lcmp.mod794)
  %i.bcu = load float, ptr %.12328.i.i.epil.init, align 4
  %i.bcv = getelementptr inbounds nuw i8, ptr %.129.i.i.epil.init, i64 4
  store float %i.bcu, ptr %.129.i.i.epil.init, align 4
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i.epil.init, i64 %i.bby
  %i.bcx = load float, ptr %i.bcw, align 4
  %i.bcy = getelementptr inbounds nuw i8, ptr %.129.i.i.epil.init, i64 8
  store float %i.bcx, ptr %i.bcv, align 4
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i.epil.init, i64 %i.bca
  %i.bda = load float, ptr %i.bcz, align 4
  %i.bdb = getelementptr inbounds nuw i8, ptr %.129.i.i.epil.init, i64 12
  store float %i.bda, ptr %i.bcy, align 4
  %i.bdc = getelementptr inbounds nuw i8, ptr %.12328.i.i.epil.init, i64 4
  br label %bb.eg

bb.eg:                                            ; preds = %.unr-lcssa, %.epil.preheader789
  %.lcssa739 = phi ptr [ %i.bcs, %.unr-lcssa ], [ %i.bdb, %.epil.preheader789 ] ; 2 uses
  %.lcssa738 = phi ptr [ %i.bct, %.unr-lcssa ], [ %i.bdc, %.epil.preheader789 ]
  %i.bdd = getelementptr inbounds nuw i8, ptr %.02531.i.i, i64 3 ; 2 uses
  %i.bde = getelementptr inbounds nuw [4 x i8], ptr %.lcssa738, i64 %i.bca
  %i.bdf = load i8, ptr %i.bdd, align 1           ; 2 uses
  %.not.i84.i = icmp eq i8 %i.bdf, 0
  br i1 %.not.i84.i, label %drmp3_L3_reorder.exit.loopexit.i, label %.preheader.i.i

drmp3_L3_reorder.exit.loopexit.i:                 ; preds = %bb.eg
  %.pre222.i = ptrtoint ptr %.lcssa739 to i64
  br label %bb.eh

bb.eh:                                            ; preds = %drmp3_L3_reorder.exit.loopexit.i, %bb.ee
  %.pre-phi.i = phi i64 [ %.pre222.i, %drmp3_L3_reorder.exit.loopexit.i ], [ %i.oc, %bb.ee ]
  %i.bdg = sub i64 %.pre-phi.i, %i.oc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bbp, ptr nonnull align 4 %i.ob, i64 %i.bdg, i1 false)
  br i1 %.not57.i, label %drmp3_L3_antialias.exit.i.thread, label %.preheader.i87.preheader.i

drmp3_L3_antialias.exit.i.thread:                 ; preds = %bb.eh
  %i.bdh = getelementptr inbounds nuw [1152 x i8], ptr %0, i64 %indvars.iv214.i
  %i.bdi = getelementptr inbounds nuw i8, ptr %.054148.i, i64 15
  %i.bdj = load i8, ptr %i.bdi, align 1
  br label %bb.ej

.preheader.i87.preheader.i:                       ; preds = %bb.eh, %.thread.i149
  %i.bdk = phi ptr [ %i.bbk, %.thread.i149 ], [ %i.bbm, %bb.eh ] ; 5 uses
  %.0271.i = phi i32 [ 31, %.thread.i149 ], [ %i.bbl, %bb.eh ]
  br label %.preheader.i87.i

.preheader.i87.i:                                 ; preds = %.preheader.i87.i, %.preheader.i87.preheader.i
  %.031.i.i = phi ptr [ %i.bdl, %.preheader.i87.i ], [ %i.bdk, %.preheader.i87.preheader.i ] ; 4 uses
  %.02830.i.i = phi i32 [ %i.bej, %.preheader.i87.i ], [ %.0271.i, %.preheader.i87.preheader.i ] ; 2 uses
  %i.bdl = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 72 ; 3 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 56 ; 2 uses
  %i.bdn = load <4 x float>, ptr %i.bdl, align 1  ; 2 uses
  %i.bdo = load <4 x float>, ptr %i.bdm, align 1
  %i.bdp = shufflevector <4 x float> %i.bdo, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.bdq = fmul <4 x float> %i.bdn, <float f0x3F5B84A8, float 8.817420e-01, float f0x3F731ADD, float f0x3F7BBA81>
  %i.bdr = fmul <4 x float> %i.bdp, <float f0x3F03B5FE, float f0x3EF186DA, float f0x3EA07302, float f0x3E3A4774>
  %i.bds = fsub <4 x float> %i.bdq, %i.bdr
  store <4 x float> %i.bds, ptr %i.bdl, align 1
  %i.bdt = fmul <4 x float> %i.bdn, <float f0x3F03B5FE, float f0x3EF186DA, float f0x3EA07302, float f0x3E3A4774>
  %i.bdu = fmul <4 x float> %i.bdp, <float f0x3F5B84A8, float 8.817420e-01, float f0x3F731ADD, float f0x3F7BBA81>
  %i.bdv = fadd <4 x float> %i.bdt, %i.bdu
  %i.bdw = shufflevector <4 x float> %i.bdv, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.bdw, ptr %i.bdm, align 1
  %i.bdx = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 88 ; 2 uses
  %i.bdy = load <4 x float>, ptr %i.bdx, align 1  ; 2 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 40 ; 2 uses
  %i.bea = load <4 x float>, ptr %i.bdz, align 1
  %i.beb = shufflevector <4 x float> %i.bea, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.bec = fmul <4 x float> %i.bdy, <float f0x3F7EDA41, float f0x3F7FC8FD, float f0x3F7FF965, float f0x3F7FFF8D>
  %i.bed = fmul <4 x float> %i.beb, <float f0x3DC1B01D, float f0x3D27CB86, float f0x3C68A114, float 3.699970e-03>
  %i.bee = fsub <4 x float> %i.bec, %i.bed
  store <4 x float> %i.bee, ptr %i.bdx, align 1
  %i.bef = fmul <4 x float> %i.bdy, <float f0x3DC1B01D, float f0x3D27CB86, float f0x3C68A114, float 3.699970e-03>
  %i.beg = fmul <4 x float> %i.beb, <float f0x3F7EDA41, float f0x3F7FC8FD, float f0x3F7FF965, float f0x3F7FFF8D>
  %i.beh = fadd <4 x float> %i.bef, %i.beg
  %i.bei = shufflevector <4 x float> %i.beh, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.bei, ptr %i.bdz, align 1
  %i.bej = add nsw i32 %.02830.i.i, -1
  %i.bek = icmp samesign ugt i32 %.02830.i.i, 1
  br i1 %i.bek, label %.preheader.i87.i, label %drmp3_L3_antialias.exit.i

drmp3_L3_antialias.exit.i:                        ; preds = %.preheader.i87.i
  %i.bel = getelementptr inbounds nuw [1152 x i8], ptr %0, i64 %indvars.iv214.i ; 3 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %.054148.i, i64 15
  %i.ben = load i8, ptr %i.bem, align 1           ; 2 uses
  br i1 %.not57.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %drmp3_L3_antialias.exit.i
  %i.beo = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv214.i
  tail call fastcc void @drmp3_L3_imdct36(ptr noundef nonnull %i.bdk, ptr noundef %i.bel, ptr noundef nonnull @drmp3_L3_imdct_gr.g_mdct_window, i32 noundef range(i32 0, 5) %i.bbh)
  %i.bep = mul nuw nsw i32 %i.bbh, 18
  %i.beq = zext nneg i32 %i.bep to i64
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %i.beo, i64 %i.beq
  %i.bes = mul nuw nsw i32 %i.bbh, 9
  %i.bet = zext nneg i32 %i.bes to i64
  %i.beu = getelementptr inbounds nuw [4 x i8], ptr %i.bel, i64 %i.bet
  br label %bb.ej

bb.ej:                                            ; preds = %drmp3_L3_antialias.exit.i.thread, %bb.ei, %drmp3_L3_antialias.exit.i
  %i.bev = phi i8 [ %i.ben, %bb.ei ], [ %i.ben, %drmp3_L3_antialias.exit.i ], [ %i.bdj, %drmp3_L3_antialias.exit.i.thread ] ; 2 uses
  %i.bew = phi ptr [ %i.bdk, %bb.ei ], [ %i.bdk, %drmp3_L3_antialias.exit.i ], [ %i.bbm, %drmp3_L3_antialias.exit.i.thread ]
  %.015.i.i = phi ptr [ %i.beu, %bb.ei ], [ %i.bel, %drmp3_L3_antialias.exit.i ], [ %i.bdh, %drmp3_L3_antialias.exit.i.thread ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ber, %bb.ei ], [ %i.bdk, %drmp3_L3_antialias.exit.i ], [ %i.bbm, %drmp3_L3_antialias.exit.i.thread ] ; 2 uses
  %i.bex = icmp eq i8 %i.bev, 2
  br i1 %i.bex, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  %i.bey = sub nuw nsw i32 32, %i.bbh
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %bb.ek
  %.016.i.i.i = phi i32 [ %i.bey, %bb.ek ], [ %i.bkp, %bb.el ] ; 2 uses
  %.01215.i.i.i = phi ptr [ %.015.i.i, %bb.ek ], [ %i.bkq, %bb.el ] ; 7 uses
  %.01314.i.i.i = phi ptr [ %.0.i.i, %bb.ek ], [ %i.bkr, %bb.el ] ; 19 uses
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
  %i.bez = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 24 ; 5 uses
  %i.bfa = fneg float %.sroa.0.0.copyload.i.i.i
  %i.bfb = fadd float %.sroa.6.0.copyload.i.i.i, %.sroa.9.0.copyload.i.i.i
  %i.bfc = fadd float %.sroa.12.0.copyload.i.i.i, %.sroa.15.0.copyload.i.i.i ; 2 uses
  %i.bfd = fmul float %i.bfb, f0x3F5DB3D7         ; 2 uses
  %i.bfe = fneg float %i.bfc
  %i.bff = tail call float @llvm.fmuladd.f32(float %i.bfe, float 5.000000e-01, float %i.bfa) ; 2 uses
  %i.bfg = fadd float %i.bfd, %i.bff              ; 2 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 28 ; 4 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 32 ; 6 uses
  %.sroa.18.0.copyload.i.i.i = load float, ptr %.sroa.18.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %i.bfj = fsub float %i.bff, %i.bfd
  %i.bfk = fsub float %i.bfc, %.sroa.0.0.copyload.i.i.i
  %i.bfl = fsub float %.sroa.15.0.copyload.i.i.i, %.sroa.12.0.copyload.i.i.i
  %i.bfm = fsub float %.sroa.9.0.copyload.i.i.i, %.sroa.6.0.copyload.i.i.i ; 2 uses
  %i.bfn = fmul float %i.bfl, f0x3F5DB3D7         ; 2 uses
  %i.bfo = fneg float %i.bfm
  %i.bfp = tail call float @llvm.fmuladd.f32(float %i.bfo, float 5.000000e-01, float %.sroa.18.0.copyload.i.i.i) ; 2 uses
  %i.bfq = fadd float %i.bfn, %i.bfp              ; 2 uses
  %i.bfr = fsub float %i.bfp, %i.bfn
  %i.bfs = fadd float %i.bfm, %.sroa.18.0.copyload.i.i.i
  %i.bft = fmul float %i.bfq, f0x3F4B1934
  %i.bfu = tail call float @llvm.fmuladd.f32(float %i.bfg, float f0x3F1BD7CA, float %i.bft) ; 2 uses
  %i.bfv = fmul float %i.bfq, f0xBF1BD7CA
  %i.bfw = tail call float @llvm.fmuladd.f32(float %i.bfg, float f0x3F4B1934, float %i.bfv)
  %i.bfx = fmul float %i.bfu, f0xBE05A8A8
  %i.bfy = fmul float %i.bfu, f0x3F7DCF55
  %i.bfz = insertelement <4 x float> poison, float %i.bfs, i64 0
  %i.bga = insertelement <4 x float> %i.bfz, float %i.bfr, i64 1
  %i.bgb = shufflevector <4 x float> %i.bga, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bgc = fmul <4 x float> %i.bgb, <float f0xBF6C835E, float f0x3F7DCF55, float f0x3EC3EF15, float f0xBE05A8A8>
  %i.bgd = insertelement <4 x float> poison, float %i.bfk, i64 0
  %i.bge = insertelement <4 x float> %i.bgd, float %i.bfj, i64 1
  %i.bgf = shufflevector <4 x float> %i.bge, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bgg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bgf, <4 x float> <float f0x3EC3EF15, float f0x3E05A8A8, float f0x3F6C835E, float f0x3F7DCF55>, <4 x float> %i.bgc) ; 4 uses
  %i.bgh = extractelement <4 x float> %i.bgg, i64 0 ; 2 uses
  %i.bgi = fmul float %i.bgh, f0xBEC3EF15
  %i.bgj = fmul float %i.bgh, f0x3F6C835E
  %i.bgk = fneg float %.sroa.4.0.copyload.i.i.i
  %i.bgl = fadd float %.sroa.13.0.copyload.i.i.i, %.sroa.16.0.copyload.i.i.i ; 2 uses
  %i.bgm = fneg float %i.bgl
  %i.bgn = tail call float @llvm.fmuladd.f32(float %i.bgm, float 5.000000e-01, float %i.bgk) ; 2 uses
  %.sroa.19.0.copyload.i.i.i = load float, ptr %.sroa.19.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %i.bgo = fsub float %i.bgl, %.sroa.4.0.copyload.i.i.i
  %i.bgp = fsub float %.sroa.16.0.copyload.i.i.i, %.sroa.13.0.copyload.i.i.i
  %i.bgq = fmul float %i.bgp, f0x3F5DB3D7         ; 2 uses
  %i.bgr = insertelement <4 x float> poison, float %i.bgo, i64 0
  %i.bgs = load <2 x float>, ptr %.sroa.7.0..013.sroa_idx.i.i.i, align 4 ; 3 uses
  %i.bgt = load <2 x float>, ptr %.sroa.10.0..013.sroa_idx.i.i.i, align 4 ; 3 uses
  %i.bgu = fadd <2 x float> %i.bgs, %i.bgt        ; 2 uses
  %i.bgv = extractelement <2 x float> %i.bgu, i64 0
  %i.bgw = fmul float %i.bgv, f0x3F5DB3D7         ; 2 uses
  %i.bgx = fadd float %i.bgw, %i.bgn              ; 2 uses
  %i.bgy = fsub float %i.bgn, %i.bgw
  %foldExtExtBinop = fsub <2 x float> %i.bgt, %i.bgs
  %i.bgz = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bha = fneg float %i.bgz
  %i.bhb = tail call float @llvm.fmuladd.f32(float %i.bha, float 5.000000e-01, float %.sroa.19.0.copyload.i.i.i) ; 2 uses
  %i.bhc = fadd float %i.bgq, %i.bhb              ; 2 uses
  %i.bhd = fsub float %i.bhb, %i.bgq
  %i.bhe = fadd float %i.bgz, %.sroa.19.0.copyload.i.i.i
  %i.bhf = fmul float %i.bhc, f0x3F4B1934
  %i.bhg = tail call float @llvm.fmuladd.f32(float %i.bgx, float f0x3F1BD7CA, float %i.bhf) ; 2 uses
  %i.bhh = fmul float %i.bhc, f0xBF1BD7CA
  %i.bhi = tail call float @llvm.fmuladd.f32(float %i.bgx, float f0x3F4B1934, float %i.bhh)
  %i.bhj = fmul float %i.bhg, f0xBE05A8A8
  %i.bhk = fmul float %i.bhg, f0x3F7DCF55
  %i.bhl = insertelement <4 x float> poison, float %i.bhe, i64 0
  %i.bhm = insertelement <4 x float> %i.bhl, float %i.bhd, i64 1
  %i.bhn = shufflevector <4 x float> %i.bhm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bho = fmul <4 x float> %i.bhn, <float f0xBF6C835E, float f0x3F7DCF55, float f0x3EC3EF15, float f0xBE05A8A8>
  %i.bhp = insertelement <4 x float> %i.bgr, float %i.bgy, i64 1
  %i.bhq = shufflevector <4 x float> %i.bhp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bhr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bhq, <4 x float> <float f0x3EC3EF15, float f0x3E05A8A8, float f0x3F6C835E, float f0x3F7DCF55>, <4 x float> %i.bho) ; 4 uses
  %i.bhs = extractelement <4 x float> %i.bhr, i64 0 ; 2 uses
  %i.bht = fmul float %i.bhs, f0xBEC3EF15
  %i.bhu = fmul float %i.bhs, f0x3F6C835E
  %i.bhv = fadd float %.sroa.14.0.copyload.i.i.i, %.sroa.17.0.copyload.i.i.i ; 2 uses
  %i.bhw = fneg float %i.bhv
  %i.bhx = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 16
  %.sroa.5.0.copyload.i.i.i = load float, ptr %.sroa.5.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.20.0.copyload.i.i.i = load float, ptr %.sroa.20.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.01314.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.01215.i.i.i, i64 24, i1 false)
  %i.bhy = load float, ptr %i.bez, align 4        ; 2 uses
  store float %i.bfw, ptr %i.bez, align 4
  %i.bhz = tail call float @llvm.fmuladd.f32(float %i.bhy, float f0x3F7DCF55, float %i.bfx)
  store float %i.bhz, ptr %.sroa.9.0..013.sroa_idx.i.i.i, align 4
  %i.bia = tail call float @llvm.fmuladd.f32(float %i.bhy, float f0x3E05A8A8, float %i.bfy)
  store float %i.bia, ptr %.sroa.14.0..013.sroa_idx.i.i.i, align 4
  %i.bib = load float, ptr %i.bfh, align 4        ; 2 uses
  %i.bic = extractelement <4 x float> %i.bgg, i64 2
  store float %i.bic, ptr %i.bfh, align 4
  %i.bid = tail call float @llvm.fmuladd.f32(float %i.bib, float f0x3F6C835E, float %i.bgi)
end_hunk_11
begin_hunk_12_@jar_xm_load_module:bb.a
  %i.at = icmp ugt i64 %2, 66
  br i1 %i.at, label %bb.h, label %.thread916

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i16                    ; 2 uses
  %.not959 = icmp eq i64 %2, 67
  br i1 %.not959, label %.thread916, label %bb.i

.thread916:                                       ; preds = %bb.h, %.thread909, %bb.g
  %.ph914 = phi i32 [ %i.ah, %bb.h ], [ %.ph907, %.thread909 ], [ %i.ah, %bb.g ]
  %.ph915 = phi i16 [ %i.aw, %bb.h ], [ 0, %.thread909 ], [ 0, %bb.g ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 %.ph915, ptr %i.ax, align 4
  br label %.thread923

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 67
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i16
  %i.bb = shl nuw i16 %i.ba, 8
  %i.bc = or disjoint i16 %i.bb, %i.aw
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 %i.bc, ptr %i.bd, align 4
  %i.be = icmp ugt i64 %2, 68
  br i1 %i.be, label %bb.j, label %.thread923

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i16                    ; 2 uses
  %.not960 = icmp eq i64 %2, 69
  br i1 %.not960, label %.thread923, label %bb.k

.thread923:                                       ; preds = %bb.j, %.thread916, %bb.i
  %.ph921 = phi i32 [ %i.ah, %bb.j ], [ %.ph914, %.thread916 ], [ %i.ah, %bb.i ]
  %.ph922 = phi i16 [ %i.bh, %bb.j ], [ 0, %.thread916 ], [ 0, %bb.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 54 ; 2 uses
  store i16 %.ph922, ptr %i.bi, align 2
  br label %.thread932

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 69
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i16
  %i.bm = shl nuw i16 %i.bl, 8
  %i.bn = or disjoint i16 %i.bm, %i.bh
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 54 ; 6 uses
  store i16 %i.bn, ptr %i.bo, align 2
  %i.bp = icmp ugt i64 %2, 70
  br i1 %i.bp, label %bb.l, label %.thread932

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 70
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i16                    ; 2 uses
  %.not961 = icmp eq i64 %2, 71
  br i1 %.not961, label %.thread932, label %bb.m

.thread932:                                       ; preds = %bb.l, %.thread923, %bb.k
  %.ph929 = phi i32 [ %i.ah, %bb.l ], [ %.ph921, %.thread923 ], [ %i.ah, %bb.k ]
  %.ph930 = phi ptr [ %i.bo, %bb.l ], [ %i.bi, %.thread923 ], [ %i.bo, %bb.k ]
  %.ph931 = phi i16 [ %i.bs, %bb.l ], [ 0, %.thread923 ], [ 0, %bb.k ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i16 %.ph931, ptr %i.bt, align 8
  br label %.thread938

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 71
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = shl nuw i16 %i.bw, 8
  %i.by = or disjoint i16 %i.bx, %i.bs            ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i16 %i.by, ptr %i.bz, align 8
  %i.ca = icmp ugt i64 %2, 72
  br i1 %i.ca, label %bb.n, label %.thread938

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i16                    ; 2 uses
  %.not962 = icmp eq i64 %2, 73
  br i1 %.not962, label %.thread938, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i16
  %i.ch = shl nuw i16 %i.cg, 8
  %i.ci = or disjoint i16 %i.ch, %i.cd
  br label %.thread938

.thread938:                                       ; preds = %bb.m, %.thread932, %bb.n, %bb.o
  %i.cj = phi i32 [ %i.ah, %bb.o ], [ %i.ah, %bb.n ], [ %.ph929, %.thread932 ], [ %i.ah, %bb.m ]
  %i.ck = phi ptr [ %i.bo, %bb.o ], [ %i.bo, %bb.n ], [ %.ph930, %.thread932 ], [ %i.bo, %bb.m ]
  %i.cl = phi i16 [ %i.by, %bb.o ], [ %i.by, %bb.n ], [ %.ph931, %.thread932 ], [ %i.by, %bb.m ] ; 2 uses
  %i.cm = phi ptr [ %i.bz, %bb.o ], [ %i.bz, %bb.n ], [ %i.bt, %.thread932 ], [ %i.bz, %bb.m ]
  %i.cn = phi i16 [ %i.ci, %bb.o ], [ %i.cd, %bb.n ], [ 0, %.thread932 ], [ 0, %bb.m ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 58 ; 3 uses
  store i16 %i.cn, ptr %i.co, align 2
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  store ptr %3, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i16 1, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 62
  store i16 1, ptr %i.cr, align 2
  %i.cs = zext i16 %i.cl to i64
  %i.ct = shl nuw nsw i64 %i.cs, 4
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 %i.ct
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = add i64 %i.cv, 15
  %i.cx = and i64 %i.cw, -16
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store ptr %i.cy, ptr %i.cz, align 8
  %i.da = zext i16 %i.cn to i64
  %i.db = mul nuw nsw i64 %i.da, 272
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.db ; 2 uses
  %i.dd = icmp ugt i64 %2, 74
  br i1 %i.dd, label %bb.p, label %.thread942

bb.p:                                             ; preds = %.thread938
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i16                    ; 2 uses
  %.not963 = icmp eq i64 %2, 75
  br i1 %.not963, label %.thread942, label %bb.q

.thread942:                                       ; preds = %bb.p, %.thread938
  %.ph941 = phi i16 [ %i.dg, %bb.p ], [ 0, %.thread938 ]
  %i.dh = and i16 %.ph941, 1
  %i.di = xor i16 %i.dh, 1
  %i.dj = zext nneg i16 %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.dj, ptr %i.dk, align 8
  br label %.thread947

bb.q:                                             ; preds = %bb.p
  %i.dl = icmp ugt i64 %2, 76
  %i.dm = and i16 %i.dg, 1
  %i.dn = xor i16 %i.dm, 1
  %i.do = zext nneg i16 %i.dn to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.do, ptr %i.dp, align 8
  br i1 %i.dl, label %.split, label %.thread947

.split:                                           ; preds = %bb.q
  %.not1022 = icmp eq i64 %2, 77
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i16                    ; 2 uses
  br i1 %.not1022, label %.thread947, label %bb.r

.thread947:                                       ; preds = %bb.q, %.split, %.thread942
  %.ph946 = phi i16 [ 0, %.thread942 ], [ %i.ds, %.split ], [ 0, %bb.q ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i16 %.ph946, ptr %i.dt, align 4
  br label %.thread951

bb.r:                                             ; preds = %.split
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 77
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = zext i8 %i.dv to i16
  %i.dx = shl nuw i16 %i.dw, 8
  %i.dy = or disjoint i16 %i.dx, %i.ds            ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i16 %i.dy, ptr %i.dz, align 4
  %.not964 = icmp eq i64 %2, 78
  br i1 %.not964, label %.thread951, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 78
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = zext i8 %i.eb to i16                    ; 2 uses
  %i.ed = icmp ugt i64 %2, 79
  br i1 %i.ed, label %bb.t, label %.thread951

bb.t:                                             ; preds = %bb.s
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 79
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = zext i8 %i.ef to i16
  %i.eh = shl nuw i16 %i.eg, 8
  %i.ei = or disjoint i16 %i.eh, %i.ec
  br label %.thread951

.thread951:                                       ; preds = %bb.r, %.thread947, %bb.s, %bb.t
  %i.ej = phi i16 [ %i.dy, %bb.t ], [ %i.dy, %bb.s ], [ %i.dy, %bb.r ], [ %.ph946, %.thread947 ]
  %i.ek = phi i16 [ %i.ei, %bb.t ], [ %i.ec, %bb.s ], [ 0, %bb.r ], [ 0, %.thread947 ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 350
  store i16 %i.ek, ptr %i.el, align 2
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i16 %i.ej, ptr %i.em, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 358
  store i16 %i.ek, ptr %i.en, align 2
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ep = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 80)
  %i.eq = tail call i64 @llvm.umin.i64(i64 %i.ep, i64 256) ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr nonnull readonly align 1 %i.er, i64 %i.eq, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eq
  %i.et = sub nuw nsw i64 256, %i.eq
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.es, i8 0, i64 %i.et, i1 false)
  %i.eu = zext i32 %i.cj to i64
  %i.ev = add nuw nsw i64 %i.eu, 60               ; 2 uses
  %.not1023 = icmp eq i16 %i.cl, 0
  br i1 %.not1023, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre = load i16, ptr %i.co, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.thread951
  %i.ew = phi i16 [ %i.cn, %.thread951 ], [ %.pre, %._crit_edge.loopexit ]
  %.0784.lcssa = phi ptr [ %i.dc, %.thread951 ], [ %i.gp, %._crit_edge.loopexit ]
  %.0778.lcssa = phi i64 [ %i.ev, %.thread951 ], [ %i.lj, %._crit_edge.loopexit ]
  %i.ex = ptrtoint ptr %.0784.lcssa to i64
  %i.ey = add i64 %i.ex, 15
  %i.ez = and i64 %i.ey, -16
  %i.fa = inttoptr i64 %i.ez to ptr               ; 2 uses
  %.not1024 = icmp eq i16 %i.ew, 0
  br i1 %.not1024, label %._crit_edge1020, label %.lr.ph1019

.lr.ph1019:                                       ; preds = %._crit_edge
  %i.fb = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 18)
  %i.fc = tail call i64 @llvm.umin.i64(i64 %i.fb, i64 22) ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.fe = sub nuw nsw i64 22, %i.fc
  br label %bb.bv

.lr.ph:                                           ; preds = %.thread951, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %.thread951 ] ; 2 uses
  %.0778978 = phi i64 [ %i.lj, %.loopexit ], [ %i.ev, %.thread951 ] ; 10 uses
  %.0784977 = phi ptr [ %i.gp, %.loopexit ], [ %i.dc, %.thread951 ] ; 3 uses
  %i.ff = add i64 %.0778978, 7                    ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %2
  br i1 %i.fg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ff
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = zext i8 %i.fi to i16
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.u
  %i.fk = phi i16 [ %i.fj, %bb.u ], [ 0, %.lr.ph ] ; 2 uses
  %i.fl = add i64 %.0778978, 8                    ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %2
  br i1 %i.fm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 %i.fl
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = zext i8 %i.fo to i16
  %i.fq = shl nuw i16 %i.fp, 8
  %i.fr = or disjoint i16 %i.fq, %i.fk
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.fs = phi i16 [ %i.fr, %bb.w ], [ %i.fk, %bb.v ] ; 3 uses
  %i.ft = load ptr, ptr %i.cp, align 8
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %indvars.iv ; 2 uses
  %i.fv = add i64 %.0778978, 5                    ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %2
  br i1 %i.fw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 %i.fv
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = zext i8 %i.fy to i16
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ga = phi i16 [ %i.fz, %bb.y ], [ 0, %bb.x ]  ; 2 uses
  %i.gb = add i64 %.0778978, 6                    ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %2
  br i1 %i.gc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 %i.gb
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = zext i8 %i.ge to i16
  %i.gg = shl nuw i16 %i.gf, 8
  %i.gh = or disjoint i16 %i.gg, %i.ga
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.gi = phi i16 [ %i.gh, %bb.aa ], [ %i.ga, %bb.z ] ; 2 uses
  store i16 %i.gi, ptr %i.fu, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 3 uses
  store ptr %.0784977, ptr %i.gj, align 8
  %i.gk = load i16, ptr %i.ck, align 2
  %i.gl = zext i16 %i.gk to i64
  %i.gm = zext i16 %i.gi to i64
  %i.gn = mul nuw nsw i64 %i.gm, 5
  %i.go = mul nuw nsw i64 %i.gn, %i.gl            ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0784977, i64 %i.go ; 2 uses
  %i.gq = icmp ult i64 %.0778978, %2
  br i1 %i.gq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 %.0778978
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = zext i8 %i.gs to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.gu = phi i32 [ %i.gt, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.gv = add i64 %.0778978, 1                    ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %2
  br i1 %i.gw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 %i.gv
  %i.gy = load i8, ptr %i.gx, align 1
  %i.gz = zext i8 %i.gy to i32
  %i.ha = shl nuw nsw i32 %i.gz, 8
  %i.hb = or disjoint i32 %i.ha, %i.gu
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.hc = phi i32 [ %i.hb, %bb.ae ], [ %i.gu, %bb.ad ]
  %i.hd = add i64 %.0778978, 2                    ; 2 uses
  %i.he = icmp ult i64 %i.hd, %2
  br i1 %i.he, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 %i.hd
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = zext i8 %i.hg to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.hi = phi i32 [ %i.hh, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.hj = add i64 %.0778978, 3                    ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %2
  br i1 %i.hk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 %i.hj
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = zext i8 %i.hm to i32
  %i.ho = shl nuw nsw i32 %i.hn, 8
  %i.hp = or disjoint i32 %i.ho, %i.hi
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.hq = phi i32 [ %i.hp, %bb.ai ], [ %i.hi, %bb.ah ]
  %i.hr = shl nuw i32 %i.hq, 16
  %i.hs = or i32 %i.hr, %i.hc
  %i.ht = zext i32 %i.hs to i64
  %i.hu = add i64 %.0778978, %i.ht                ; 7 uses
  %i.hv = icmp eq i16 %i.fs, 0
  br i1 %i.hv, label %bb.ak, label %.preheader970

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0784977, i8 0, i64 %i.go, i1 false)
  br label %.loopexit

.preheader970:                                    ; preds = %bb.aj, %bb.bu
  %.0774975 = phi i16 [ %i.lg, %bb.bu ], [ 0, %bb.aj ] ; 3 uses
  %.0775974 = phi i16 [ %.5, %bb.bu ], [ 0, %bb.aj ] ; 4 uses
  %i.hw = zext i16 %.0775974 to i64
  %i.hx = add i64 %i.hu, %i.hw                    ; 6 uses
  %i.hy = icmp ult i64 %i.hx, %2
  br i1 %i.hy, label %bb.al, label %.thread952

.thread952:                                       ; preds = %.preheader970
  %i.hz = load ptr, ptr %i.gj, align 8
  %i.ia = zext i16 %.0774975 to i64
  %i.ib = getelementptr inbounds nuw [5 x i8], ptr %i.hz, i64 %i.ia
  br label %bb.bl

bb.al:                                            ; preds = %.preheader970
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 %i.hx
  %i.id = load i8, ptr %i.ic, align 1             ; 3 uses
  %i.ie = load ptr, ptr %i.gj, align 8
  %i.if = zext i16 %.0774975 to i64
  %i.ig = getelementptr inbounds nuw [5 x i8], ptr %i.ie, i64 %i.if ; 11 uses
  %i.ih = zext i8 %i.id to i32                    ; 5 uses
  %.not888 = icmp sgt i8 %i.id, -1
  br i1 %.not888, label %bb.bl, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ii = add nuw i16 %.0775974, 1                ; 2 uses
  %i.ij = and i32 %i.ih, 1
  %.not889 = icmp eq i32 %i.ij, 0
  br i1 %.not889, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ik = zext i16 %i.ii to i64
  %i.il = add i64 %i.hu, %i.ik                    ; 2 uses
  %i.im = icmp ult i64 %i.il, %2
  br i1 %i.im, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 %i.il
  %i.io = load i8, ptr %i.in, align 1
  br label %bb.ap

end_hunk_12
begin_hunk_13_@jar_xm_load_module:bb.a
bb.bi:                                            ; preds = %bb.bh
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 %i.jx
  %i.ka = load i8, ptr %i.jz, align 1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.kb = phi i8 [ %i.ka, %bb.bi ], [ 0, %bb.bh ]
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  store i8 %i.kb, ptr %i.kc, align 1
  %i.kd = add i16 %.4, 1
  br label %bb.bu

bb.bk:                                            ; preds = %bb.bg
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  store i8 0, ptr %i.ke, align 1
  br label %bb.bu

bb.bl:                                            ; preds = %.thread952, %bb.al
  %i.kf = phi ptr [ %i.ib, %.thread952 ], [ %i.ig, %bb.al ] ; 5 uses
  %i.kg = phi i8 [ 0, %.thread952 ], [ %i.id, %bb.al ]
  store i8 %i.kg, ptr %i.kf, align 1
  %i.kh = add i64 %i.hx, 1                        ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %2
  br i1 %i.ki, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 %i.kh
  %i.kk = load i8, ptr %i.kj, align 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.kl = phi i8 [ %i.kk, %bb.bm ], [ 0, %bb.bl ]
  %i.km = getelementptr inbounds nuw i8, ptr %i.kf, i64 1
  store i8 %i.kl, ptr %i.km, align 1
  %i.kn = add i64 %i.hx, 2                        ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %2
  br i1 %i.ko, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 %i.kn
  %i.kq = load i8, ptr %i.kp, align 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %i.kr = phi i8 [ %i.kq, %bb.bo ], [ 0, %bb.bn ]
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kf, i64 2
  store i8 %i.kr, ptr %i.ks, align 1
  %i.kt = add i64 %i.hx, 3                        ; 2 uses
  %i.ku = icmp ult i64 %i.kt, %2
  br i1 %i.ku, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 %i.kt
  %i.kw = load i8, ptr %i.kv, align 1
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.kx = phi i8 [ %i.kw, %bb.bq ], [ 0, %bb.bp ]
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kf, i64 3
  store i8 %i.kx, ptr %i.ky, align 1
  %i.kz = add i64 %i.hx, 4                        ; 2 uses
  %i.la = icmp ult i64 %i.kz, %2
  br i1 %i.la, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 %i.kz
  %i.lc = load i8, ptr %i.lb, align 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.ld = phi i8 [ %i.lc, %bb.bs ], [ 0, %bb.br ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  store i8 %i.ld, ptr %i.le, align 1
  %i.lf = add i16 %.0775974, 5
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bj, %bb.bk, %bb.bt
  %.5 = phi i16 [ %i.kd, %bb.bj ], [ %.4, %bb.bk ], [ %i.lf, %bb.bt ] ; 2 uses
  %i.lg = add i16 %.0774975, 1
  %i.lh = icmp ult i16 %.5, %i.fs
  br i1 %i.lh, label %.preheader970, label %.loopexit

.loopexit:                                        ; preds = %bb.bu, %bb.ak
  %i.li = zext i16 %i.fs to i64
  %i.lj = add i64 %i.hu, %i.li                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lk = load i16, ptr %i.cm, align 8
  %i.ll = zext i16 %i.lk to i64
  %i.lm = icmp samesign ult i64 %indvars.iv.next, %i.ll
  br i1 %i.lm, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge1020:                                  ; preds = %._crit_edge1013, %._crit_edge
  %.1785.lcssa = phi ptr [ %i.fa, %._crit_edge ], [ %.3787.lcssa1166, %._crit_edge1013 ]
  ret ptr %.1785.lcssa

bb.bv:                                            ; preds = %.lr.ph1019, %._crit_edge1013
  %indvars.iv1062 = phi i64 [ 0, %.lr.ph1019 ], [ %indvars.iv.next1063, %._crit_edge1013 ] ; 2 uses
  %.17791016 = phi i64 [ %.0778.lcssa, %.lr.ph1019 ], [ %.3781.lcssa, %._crit_edge1013 ] ; 32 uses
  %.17851015 = phi ptr [ %i.fa, %.lr.ph1019 ], [ %.3787.lcssa1166, %._crit_edge1013 ] ; 3 uses
  %i.ln = load ptr, ptr %i.cz, align 8
  %i.lo = getelementptr inbounds nuw [272 x i8], ptr %i.ln, i64 %indvars.iv1062 ; 30 uses
  %i.lp = add i64 %.17791016, 4                   ; 2 uses
  %i.lq = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.lp)
  %i.lr = tail call i64 @llvm.umin.i64(i64 %i.lq, i64 22) ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 %i.lp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lo, ptr readonly align 1 %i.ls, i64 %i.lr, i1 false)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lr
  %i.lu = sub nuw nsw i64 22, %i.lr
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.lt, i8 0, i64 %i.lu, i1 false)
  %i.lv = add i64 %.17791016, 27                  ; 2 uses
  %i.lw = icmp ult i64 %i.lv, %2
  br i1 %i.lw, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 %i.lv
  %i.ly = load i8, ptr %i.lx, align 1
  %i.lz = zext i8 %i.ly to i16
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %i.ma = phi i16 [ %i.lz, %bb.bw ], [ 0, %bb.bv ] ; 2 uses
  %i.mb = add i64 %.17791016, 28                  ; 2 uses
  %i.mc = icmp ult i64 %i.mb, %2
  br i1 %i.mc, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 %i.mb
  %i.me = load i8, ptr %i.md, align 1
  %i.mf = zext i8 %i.me to i16
  %i.mg = shl nuw i16 %i.mf, 8
  %i.mh = or disjoint i16 %i.mg, %i.ma
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %i.mi = phi i16 [ %i.mh, %bb.by ], [ %i.ma, %bb.bx ] ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lo, i64 24 ; 3 uses
  store i16 %i.mi, ptr %i.mj, align 8
  %.not = icmp eq i16 %i.mi, 0                    ; 2 uses
  br i1 %.not, label %bb.ej, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mk = add i64 %.17791016, 29                  ; 2 uses
  %i.ml = icmp ult i64 %i.mk, %2
  br i1 %i.ml, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 %i.mk
  %i.mn = load i8, ptr %i.mm, align 1
  %i.mo = zext i8 %i.mn to i32
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %i.mp = phi i32 [ %i.mo, %bb.cb ], [ 0, %bb.ca ] ; 2 uses
  %i.mq = add i64 %.17791016, 30                  ; 2 uses
  %i.mr = icmp ult i64 %i.mq, %2
  br i1 %i.mr, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 %i.mq
  %i.mt = load i8, ptr %i.ms, align 1
  %i.mu = zext i8 %i.mt to i32
  %i.mv = shl nuw nsw i32 %i.mu, 8
  %i.mw = or disjoint i32 %i.mv, %i.mp
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %i.mx = phi i32 [ %i.mw, %bb.cd ], [ %i.mp, %bb.cc ]
  %i.my = add i64 %.17791016, 31                  ; 2 uses
  %i.mz = icmp ult i64 %i.my, %2
  br i1 %i.mz, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 %i.my
  %i.nb = load i8, ptr %i.na, align 1
  %i.nc = zext i8 %i.nb to i32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  %i.nd = phi i32 [ %i.nc, %bb.cf ], [ 0, %bb.ce ] ; 2 uses
  %i.ne = add i64 %.17791016, 32                  ; 2 uses
  %i.nf = icmp ult i64 %i.ne, %2
  br i1 %i.nf, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 %i.ne
  %i.nh = load i8, ptr %i.ng, align 1
  %i.ni = zext i8 %i.nh to i32
  %i.nj = shl nuw nsw i32 %i.ni, 8
  %i.nk = or disjoint i32 %i.nj, %i.nd
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch
  %i.nl = phi i32 [ %i.nk, %bb.ch ], [ %i.nd, %bb.cg ]
  %i.nm = shl nuw i32 %i.nl, 16
  %i.nn = or i32 %i.nm, %i.mx
  %i.no = getelementptr inbounds nuw i8, ptr %i.lo, i64 26 ; 2 uses
  %i.np = add i64 %.17791016, 33                  ; 2 uses
  %i.nq = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.np)
  %i.nr = tail call i64 @llvm.umin.i64(i64 %i.nq, i64 96) ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 %i.np
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.no, ptr readonly align 1 %i.ns, i64 %i.nr, i1 false)
  %i.nt = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nr
  %i.nu = sub nuw nsw i64 96, %i.nr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.nt, i8 0, i64 %i.nu, i1 false)
  %i.nv = add i64 %.17791016, 225                 ; 2 uses
  %i.nw = icmp ult i64 %i.nv, %2
  br i1 %i.nw, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 %i.nv
  %i.ny = load i8, ptr %i.nx, align 1
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj
  %i.nz = phi i8 [ %i.ny, %bb.cj ], [ 0, %bb.ci ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.lo, i64 122
  %i.ob = getelementptr inbounds nuw i8, ptr %i.lo, i64 170 ; 2 uses
  store i8 %i.nz, ptr %i.ob, align 2
  %i.oc = add i64 %.17791016, 226                 ; 2 uses
  %i.od = icmp ult i64 %i.oc, %2
  br i1 %i.od, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 %i.oc
  %i.of = load i8, ptr %i.oe, align 1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %i.og = phi i8 [ %i.of, %bb.cl ], [ 0, %bb.ck ] ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.lo, i64 178
  %i.oi = getelementptr inbounds nuw i8, ptr %i.lo, i64 226 ; 3 uses
  store i8 %i.og, ptr %i.oi, align 2
  %.not1025 = icmp eq i8 %i.nz, 0
  br i1 %.not1025, label %.preheader969, label %.lr.ph983

.lr.ph983:                                        ; preds = %bb.cm
  %i.oj = add i64 %.17791016, 129
  br label %bb.cn

.preheader969.loopexit:                           ; preds = %bb.cv
  %.pre1065 = load i8, ptr %i.oi, align 2
  br label %.preheader969

.preheader969:                                    ; preds = %.preheader969.loopexit, %bb.cm
  %i.ok = phi i8 [ %.pre1065, %.preheader969.loopexit ], [ %i.og, %bb.cm ]
  %.not1026 = icmp eq i8 %i.ok, 0
  br i1 %.not1026, label %._crit_edge986, label %.lr.ph985

.lr.ph985:                                        ; preds = %.preheader969
  %i.ol = add i64 %.17791016, 177
  br label %bb.cw

bb.cn:                                            ; preds = %.lr.ph983, %bb.cv
  %indvars.iv1032 = phi i64 [ 0, %.lr.ph983 ], [ %indvars.iv.next1033, %bb.cv ] ; 3 uses
  %i.om = shl nuw nsw i64 %indvars.iv1032, 2
  %i.on = add i64 %i.oj, %i.om                    ; 5 uses
  %i.oo = icmp ult i64 %i.on, %2
  br i1 %i.oo, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 %i.on
  %i.oq = load i8, ptr %i.op, align 1
  %i.or = zext i8 %i.oq to i16
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co
  %i.os = phi i16 [ %i.or, %bb.co ], [ 0, %bb.cn ] ; 2 uses
  %i.ot = add i64 %i.on, 1                        ; 2 uses
  %i.ou = icmp ult i64 %i.ot, %2
  br i1 %i.ou, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 %i.ot
  %i.ow = load i8, ptr %i.ov, align 1
  %i.ox = zext i8 %i.ow to i16
  %i.oy = shl nuw i16 %i.ox, 8
  %i.oz = or disjoint i16 %i.oy, %i.os
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %i.pa = phi i16 [ %i.oz, %bb.cq ], [ %i.os, %bb.cp ]
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %indvars.iv1032 ; 2 uses
  store i16 %i.pa, ptr %i.pb, align 2
  %i.pc = add i64 %i.on, 2                        ; 2 uses
  %i.pd = icmp ult i64 %i.pc, %2
  br i1 %i.pd, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 %i.pc
  %i.pf = load i8, ptr %i.pe, align 1
  %i.pg = zext i8 %i.pf to i16
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %i.ph = phi i16 [ %i.pg, %bb.cs ], [ 0, %bb.cr ] ; 2 uses
  %i.pi = add i64 %i.on, 3                        ; 2 uses
  %i.pj = icmp ult i64 %i.pi, %2
  br i1 %i.pj, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 %i.pi
  %i.pl = load i8, ptr %i.pk, align 1
  %i.pm = zext i8 %i.pl to i16
  %i.pn = shl nuw i16 %i.pm, 8
  %i.po = or disjoint i16 %i.pn, %i.ph
  br label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu
  %i.pp = phi i16 [ %i.po, %bb.cu ], [ %i.ph, %bb.ct ]
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pb, i64 2
  store i16 %i.pp, ptr %i.pq, align 2
  %indvars.iv.next1033 = add nuw nsw i64 %indvars.iv1032, 1 ; 2 uses
  %i.pr = load i8, ptr %i.ob, align 2
  %i.ps = zext i8 %i.pr to i64
  %i.pt = icmp samesign ult i64 %indvars.iv.next1033, %i.ps
  br i1 %i.pt, label %bb.cn, label %.preheader969.loopexit

._crit_edge986:                                   ; preds = %bb.de, %.preheader969
  %i.pu = add i64 %.17791016, 227                 ; 2 uses
  %i.pv = icmp ult i64 %i.pu, %2
  br i1 %i.pv, label %bb.df, label %bb.dg

bb.cw:                                            ; preds = %.lr.ph985, %bb.de
  %indvars.iv1035 = phi i64 [ 0, %.lr.ph985 ], [ %indvars.iv.next1036, %bb.de ] ; 3 uses
  %i.pw = shl nuw nsw i64 %indvars.iv1035, 2
  %i.px = add i64 %i.ol, %i.pw                    ; 5 uses
  %i.py = icmp ult i64 %i.px, %2
  br i1 %i.py, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 %i.px
  %i.qa = load i8, ptr %i.pz, align 1
  %i.qb = zext i8 %i.qa to i16
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx
  %i.qc = phi i16 [ %i.qb, %bb.cx ], [ 0, %bb.cw ] ; 2 uses
  %i.qd = add i64 %i.px, 1                        ; 2 uses
  %i.qe = icmp ult i64 %i.qd, %2
  br i1 %i.qe, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 %i.qd
  %i.qg = load i8, ptr %i.qf, align 1
  %i.qh = zext i8 %i.qg to i16
  %i.qi = shl nuw i16 %i.qh, 8
  %i.qj = or disjoint i16 %i.qi, %i.qc
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %i.qk = phi i16 [ %i.qj, %bb.cz ], [ %i.qc, %bb.cy ]
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv1035 ; 2 uses
  store i16 %i.qk, ptr %i.ql, align 2
  %i.qm = add i64 %i.px, 2                        ; 2 uses
  %i.qn = icmp ult i64 %i.qm, %2
  br i1 %i.qn, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 %i.qm
  %i.qp = load i8, ptr %i.qo, align 1
  %i.qq = zext i8 %i.qp to i16
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db
  %i.qr = phi i16 [ %i.qq, %bb.db ], [ 0, %bb.da ] ; 2 uses
  %i.qs = add i64 %i.px, 3                        ; 2 uses
  %i.qt = icmp ult i64 %i.qs, %2
  br i1 %i.qt, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 %i.qs
  %i.qv = load i8, ptr %i.qu, align 1
  %i.qw = zext i8 %i.qv to i16
  %i.qx = shl nuw i16 %i.qw, 8
  %i.qy = or disjoint i16 %i.qx, %i.qr
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd
  %i.qz = phi i16 [ %i.qy, %bb.dd ], [ %i.qr, %bb.dc ]
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ql, i64 2
  store i16 %i.qz, ptr %i.ra, align 2
  %indvars.iv.next1036 = add nuw nsw i64 %indvars.iv1035, 1 ; 2 uses
  %i.rb = load i8, ptr %i.oi, align 2
  %i.rc = zext i8 %i.rb to i64
  %i.rd = icmp samesign ult i64 %indvars.iv.next1036, %i.rc
  br i1 %i.rd, label %bb.cw, label %._crit_edge986

bb.df:                                            ; preds = %._crit_edge986
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 %i.pu
  %i.rf = load i8, ptr %i.re, align 1
  br label %bb.dg

bb.dg:                                            ; preds = %._crit_edge986, %bb.df
  %i.rg = phi i8 [ %i.rf, %bb.df ], [ 0, %._crit_edge986 ]
  %i.rh = getelementptr inbounds nuw i8, ptr %i.lo, i64 171
  store i8 %i.rg, ptr %i.rh, align 1
  %i.ri = add i64 %.17791016, 228                 ; 2 uses
  %i.rj = icmp ult i64 %i.ri, %2
  br i1 %i.rj, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
end_hunk_13
begin_hunk_14_@jar_xm_load_module:bb.a

bb.fc:                                            ; preds = %bb.fb
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 %i.xu
  %i.xx = load i8, ptr %i.xw, align 1
  %i.xy = zext i8 %i.xx to i32
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fb, %bb.fc
  %i.xz = phi i32 [ %i.xy, %bb.fc ], [ 0, %bb.fb ] ; 2 uses
  %i.ya = add i64 %.2780988, 5                    ; 3 uses
  %i.yb = icmp ult i64 %i.ya, %2                  ; 2 uses
  br i1 %i.yb, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 %i.ya
  %i.yd = load i8, ptr %i.yc, align 1
  %i.ye = zext i8 %i.yd to i32
  %i.yf = shl nuw nsw i32 %i.ye, 8
  %i.yg = or disjoint i32 %i.yf, %i.xz
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fd, %bb.fe
  %i.yh = phi i32 [ %i.yg, %bb.fe ], [ %i.xz, %bb.fd ]
  %i.yi = add i64 %.2780988, 6                    ; 3 uses
  %i.yj = icmp ult i64 %i.yi, %2                  ; 2 uses
  br i1 %i.yj, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 %i.yi
  %i.yl = load i8, ptr %i.yk, align 1
  %i.ym = zext i8 %i.yl to i32
  br label %bb.fh

bb.fh:                                            ; preds = %bb.ff, %bb.fg
  %i.yn = phi i32 [ %i.ym, %bb.fg ], [ 0, %bb.ff ] ; 2 uses
  %i.yo = add i64 %.2780988, 7                    ; 3 uses
  %i.yp = icmp ult i64 %i.yo, %2                  ; 2 uses
  br i1 %i.yp, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 %i.yo
  %i.yr = load i8, ptr %i.yq, align 1
  %i.ys = zext i8 %i.yr to i32
  %i.yt = shl nuw nsw i32 %i.ys, 8
  %i.yu = or disjoint i32 %i.yt, %i.yn
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fh, %bb.fi
  %i.yv = phi i32 [ %i.yu, %bb.fi ], [ %i.yn, %bb.fh ]
  %i.yw = shl nuw i32 %i.yv, 16
  %i.yx = or i32 %i.yw, %i.yh                     ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.wp, i64 32 ; 4 uses
  store i32 %i.yx, ptr %i.yy, align 8
  %i.yz = add i64 %.2780988, 8                    ; 3 uses
  %i.za = icmp ult i64 %i.yz, %2                  ; 2 uses
  br i1 %i.za, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 %i.yz
  %i.zc = load i8, ptr %i.zb, align 1
  %i.zd = zext i8 %i.zc to i32
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fj, %bb.fk
  %i.ze = phi i32 [ %i.zd, %bb.fk ], [ 0, %bb.fj ] ; 2 uses
  %i.zf = add i64 %.2780988, 9                    ; 3 uses
  %i.zg = icmp ult i64 %i.zf, %2                  ; 2 uses
  br i1 %i.zg, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 %i.zf
  %i.zi = load i8, ptr %i.zh, align 1
  %i.zj = zext i8 %i.zi to i32
  %i.zk = shl nuw nsw i32 %i.zj, 8
  %i.zl = or disjoint i32 %i.zk, %i.ze
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fl, %bb.fm
  %i.zm = phi i32 [ %i.zl, %bb.fm ], [ %i.ze, %bb.fl ]
  %i.zn = add i64 %.2780988, 10                   ; 3 uses
  %i.zo = icmp ult i64 %i.zn, %2                  ; 2 uses
  br i1 %i.zo, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.zp = getelementptr inbounds nuw i8, ptr %1, i64 %i.zn
  %i.zq = load i8, ptr %i.zp, align 1
  %i.zr = zext i8 %i.zq to i32
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %i.zs = phi i32 [ %i.zr, %bb.fo ], [ 0, %bb.fn ] ; 2 uses
  %i.zt = add i64 %.2780988, 11                   ; 3 uses
  %i.zu = icmp ult i64 %i.zt, %2                  ; 2 uses
  br i1 %i.zu, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 %i.zt
  %i.zw = load i8, ptr %i.zv, align 1
  %i.zx = zext i8 %i.zw to i32
  %i.zy = shl nuw nsw i32 %i.zx, 8
  %i.zz = or disjoint i32 %i.zy, %i.zs
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fp, %bb.fq
  %i.aaa = phi i32 [ %i.zz, %bb.fq ], [ %i.zs, %bb.fp ]
  %i.aab = shl nuw i32 %i.aaa, 16
  %i.aac = or i32 %i.aab, %i.zm                   ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.wp, i64 36 ; 2 uses
  store i32 %i.aac, ptr %i.aad, align 4
  %i.aae = add i32 %i.aac, %i.yx
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.wp, i64 40 ; 4 uses
  store i32 %i.aae, ptr %i.aaf, align 8
  %i.aag = add i64 %.2780988, 12                  ; 2 uses
  %i.aah = icmp ult i64 %i.aag, %2
  br i1 %i.aah, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 %i.aag
  %i.aaj = load i8, ptr %i.aai, align 1
  %i.aak = zext i8 %i.aaj to i32
  %i.aal = shl nuw nsw i32 %i.aak, 2
  %i.aam = uitofp nneg i32 %i.aal to float
  %i.aan = fmul nnan float %i.aam, 3.906250e-03
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fr, %bb.fs
  %i.aao = phi float [ %i.aan, %bb.fs ], [ 0.000000e+00, %bb.fr ] ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.wp, i64 44
  %i.aaq = fcmp ogt float %i.aao, 1.000000e+00
  %storemerge = select i1 %i.aaq, float 1.000000e+00, float %i.aao
  store float %storemerge, ptr %i.aap, align 4
  %i.aar = add i64 %.2780988, 13                  ; 2 uses
  %i.aas = icmp ult i64 %i.aar, %2
  br i1 %i.aas, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.aat = getelementptr inbounds nuw i8, ptr %1, i64 %i.aar
  %i.aau = load i8, ptr %i.aat, align 1
  br label %bb.fv

bb.fv:                                            ; preds = %bb.ft, %bb.fu
  %i.aav = phi i8 [ %i.aau, %bb.fu ], [ 0, %bb.ft ]
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.wp, i64 48
  store i8 %i.aav, ptr %i.aaw, align 8
  %i.aax = add i64 %.2780988, 14                  ; 2 uses
  %i.aay = icmp ult i64 %i.aax, %2
  br i1 %i.aay, label %bb.fw, label %.thread955

bb.fw:                                            ; preds = %bb.fv
  %i.aaz = getelementptr inbounds nuw i8, ptr %1, i64 %i.aax
  %i.aba = load i8, ptr %i.aaz, align 1
  %i.abb = zext i8 %i.aba to i32                  ; 2 uses
  %i.abc = and i32 %i.abb, 3
  %i.abd = icmp ne i32 %i.abc, 0
  %spec.select = zext i1 %i.abd to i32
  br label %.thread955

.thread955:                                       ; preds = %bb.fw, %bb.fv
  %.sink = phi i32 [ %spec.select, %bb.fw ], [ 0, %bb.fv ]
  %i.abe = phi i32 [ %i.abb, %bb.fw ], [ 0, %bb.fv ] ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.wp, i64 52
  store i32 %.sink, ptr %i.abf, align 4
  %i.abg = and i32 %i.abe, 16
  %.not884 = icmp eq i32 %i.abg, 0
  %i.abh = select i1 %.not884, i8 8, i8 16
  %i.abi = getelementptr inbounds nuw i8, ptr %i.wp, i64 23 ; 2 uses
  store i8 %i.abh, ptr %i.abi, align 1
  %i.abj = trunc nuw i32 %i.abe to i8
  %i.abk = lshr i8 %i.abj, 5
  %i.abl = and i8 %i.abk, 1
  %i.abm = getelementptr inbounds nuw i8, ptr %i.wp, i64 24 ; 2 uses
  store i8 %i.abl, ptr %i.abm, align 8
  %i.abn = add i64 %.2780988, 15                  ; 2 uses
  %i.abo = icmp ult i64 %i.abn, %2
  br i1 %i.abo, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %.thread955
  %i.abp = getelementptr inbounds nuw i8, ptr %1, i64 %i.abn
  %i.abq = load i8, ptr %i.abp, align 1
  %i.abr = uitofp i8 %i.abq to float
  br label %bb.fy

bb.fy:                                            ; preds = %.thread955, %bb.fx
  %i.abs = phi float [ %i.abr, %bb.fx ], [ 0.000000e+00, %.thread955 ]
  %i.abt = fdiv float %i.abs, 2.550000e+02
  %i.abu = getelementptr inbounds nuw i8, ptr %i.wp, i64 56
  store float %i.abt, ptr %i.abu, align 8
  %i.abv = add i64 %.2780988, 16                  ; 2 uses
  %i.abw = icmp ult i64 %i.abv, %2
  br i1 %i.abw, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.abx = getelementptr inbounds nuw i8, ptr %1, i64 %i.abv
  %i.aby = load i8, ptr %i.abx, align 1
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fy, %bb.fz
  %i.abz = phi i8 [ %i.aby, %bb.fz ], [ 0, %bb.fy ]
  %i.aca = getelementptr inbounds nuw i8, ptr %i.wp, i64 60
  store i8 %i.abz, ptr %i.aca, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wp, ptr nonnull readonly align 1 %i.fd, i64 %i.fc, i1 false)
  %i.acb = getelementptr inbounds nuw i8, ptr %i.wp, i64 %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.acb, i8 0, i64 %i.fe, i1 false)
  %i.acc = getelementptr inbounds nuw i8, ptr %i.wp, i64 72
  store ptr %.3787987, ptr %i.acc, align 8
  %i.acd = load i8, ptr %i.abi, align 1
  %i.ace = icmp eq i8 %i.acd, 16
  %i.acf = load i32, ptr %i.xt, align 4           ; 2 uses
  %i.acg = zext i32 %i.acf to i64                 ; 2 uses
  br i1 %i.ace, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.ach = shl nuw nsw i64 %i.acg, 1
  %i.aci = load <2 x i32>, ptr %i.yy, align 8
  %i.acj = lshr <2 x i32> %i.aci, splat (i32 1)
  store <2 x i32> %i.acj, ptr %i.yy, align 8
  %i.ack = load i32, ptr %i.aaf, align 8
  %i.acl = lshr i32 %i.ack, 1
  store i32 %i.acl, ptr %i.aaf, align 8
  %i.acm = lshr i32 %i.acf, 1
  store i32 %i.acm, ptr %i.xt, align 4
  br label %bb.gd

bb.gc:                                            ; preds = %bb.ga
  %i.acn = shl nuw nsw i64 %i.acg, 2
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.pn = phi i64 [ %i.ach, %bb.gb ], [ %i.acn, %bb.gc ]
  %.4788 = getelementptr inbounds nuw i8, ptr %.3787987, i64 %.pn ; 3 uses
  %i.aco = load i8, ptr %i.abm, align 8
  %.not886 = icmp eq i8 %i.aco, 0
  br i1 %.not886, label %bb.gw, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.acp = getelementptr inbounds nuw i8, ptr %i.wp, i64 52
  %i.acq = load i32, ptr %i.acp, align 4
  %.not887 = icmp eq i32 %i.acq, 0
  br i1 %.not887, label %bb.gw, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  br i1 %i.xv, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 %i.xu
  %i.acs = load i8, ptr %i.acr, align 1
  %i.act = zext i8 %i.acs to i32
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gf, %bb.gg
  %i.acu = phi i32 [ %i.act, %bb.gg ], [ 0, %bb.gf ] ; 2 uses
  br i1 %i.yb, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 %i.ya
  %i.acw = load i8, ptr %i.acv, align 1
  %i.acx = zext i8 %i.acw to i32
  %i.acy = shl nuw nsw i32 %i.acx, 8
  %i.acz = or disjoint i32 %i.acy, %i.acu
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gh, %bb.gi
  %i.ada = phi i32 [ %i.acz, %bb.gi ], [ %i.acu, %bb.gh ]
  br i1 %i.yj, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.adb = getelementptr inbounds nuw i8, ptr %1, i64 %i.yi
  %i.adc = load i8, ptr %i.adb, align 1
  %i.add = zext i8 %i.adc to i32
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gj, %bb.gk
  %i.ade = phi i32 [ %i.add, %bb.gk ], [ 0, %bb.gj ] ; 2 uses
  br i1 %i.yp, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.adf = getelementptr inbounds nuw i8, ptr %1, i64 %i.yo
  %i.adg = load i8, ptr %i.adf, align 1
  %i.adh = zext i8 %i.adg to i32
  %i.adi = shl nuw nsw i32 %i.adh, 8
  %i.adj = or disjoint i32 %i.adi, %i.ade
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gl, %bb.gm
  %i.adk = phi i32 [ %i.adj, %bb.gm ], [ %i.ade, %bb.gl ]
  %i.adl = shl nuw i32 %i.adk, 16
  %i.adm = or i32 %i.adl, %i.ada
  %i.adn = tail call i64 @div(i32 noundef %i.adm, i32 noundef 2) #75
  %.sroa.089.0.extract.trunc = trunc i64 %i.adn to i32 ; 2 uses
  store i32 %.sroa.089.0.extract.trunc, ptr %i.yy, align 8
  br i1 %i.za, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 %i.yz
  %i.adp = load i8, ptr %i.ado, align 1
  %i.adq = zext i8 %i.adp to i32
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gn, %bb.go
  %i.adr = phi i32 [ %i.adq, %bb.go ], [ 0, %bb.gn ] ; 2 uses
  br i1 %i.zg, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.ads = getelementptr inbounds nuw i8, ptr %1, i64 %i.zf
  %i.adt = load i8, ptr %i.ads, align 1
  %i.adu = zext i8 %i.adt to i32
  %i.adv = shl nuw nsw i32 %i.adu, 8
  %i.adw = or disjoint i32 %i.adv, %i.adr
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gp, %bb.gq
  %i.adx = phi i32 [ %i.adw, %bb.gq ], [ %i.adr, %bb.gp ]
  br i1 %i.zo, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.ady = getelementptr inbounds nuw i8, ptr %1, i64 %i.zn
  %i.adz = load i8, ptr %i.ady, align 1
  %i.aea = zext i8 %i.adz to i32
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gr, %bb.gs
  %i.aeb = phi i32 [ %i.aea, %bb.gs ], [ 0, %bb.gr ] ; 2 uses
  br i1 %i.zu, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.aec = getelementptr inbounds nuw i8, ptr %1, i64 %i.zt
  %i.aed = load i8, ptr %i.aec, align 1
  %i.aee = zext i8 %i.aed to i32
  %i.aef = shl nuw nsw i32 %i.aee, 8
  %i.aeg = or disjoint i32 %i.aef, %i.aeb
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gt, %bb.gu
  %i.aeh = phi i32 [ %i.aeg, %bb.gu ], [ %i.aeb, %bb.gt ]
  %i.aei = shl nuw i32 %i.aeh, 16
  %i.aej = or i32 %i.aei, %i.adx
  %i.aek = tail call i64 @div(i32 noundef %i.aej, i32 noundef 2) #75
  %.sroa.088.0.extract.trunc = trunc i64 %i.aek to i32 ; 2 uses
  store i32 %.sroa.088.0.extract.trunc, ptr %i.aad, align 4
  %i.ael = add i32 %.sroa.088.0.extract.trunc, %.sroa.089.0.extract.trunc
  store i32 %i.ael, ptr %i.aaf, align 8
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.ge, %bb.gd
  %i.aem = add i64 %.2780988, %.0772              ; 3 uses
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 1 ; 2 uses
  %i.aen = load i16, ptr %i.mj, align 8           ; 2 uses
  %i.aeo = zext i16 %i.aen to i64
  %i.aep = icmp samesign ult i64 %indvars.iv.next1039, %i.aeo
  br i1 %i.aep, label %bb.et, label %.preheader968

._crit_edge1013:                                  ; preds = %._crit_edge1005, %bb.es, %.preheader968
  %.3787.lcssa1166 = phi ptr [ %.4788, %.preheader968 ], [ %.2786, %bb.es ], [ %.4788, %._crit_edge1005 ] ; 2 uses
  %.3781.lcssa = phi i64 [ %i.aem, %.preheader968 ], [ %i.wk, %bb.es ], [ %.5783, %._crit_edge1005 ]
  %indvars.iv.next1063 = add nuw nsw i64 %indvars.iv1062, 1 ; 2 uses
  %i.aeq = load i16, ptr %i.co, align 2
  %i.aer = zext i16 %i.aeq to i64
  %i.aes = icmp samesign ult i64 %indvars.iv.next1063, %i.aer
  br i1 %i.aes, label %bb.bv, label %._crit_edge1020

bb.gx:                                            ; preds = %.lr.ph1012, %._crit_edge1005
  %indvars.iv1059 = phi i64 [ 0, %.lr.ph1012 ], [ %indvars.iv.next1060, %._crit_edge1005 ] ; 2 uses
  %.37811010 = phi i64 [ %i.aem, %.lr.ph1012 ], [ %.5783, %._crit_edge1005 ] ; 5 uses
  %i.aet = load ptr, ptr %i.wn, align 8
  %i.aeu = getelementptr inbounds nuw [80 x i8], ptr %i.aet, i64 %indvars.iv1059 ; 8 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 28 ; 6 uses
  %i.aew = load i32, ptr %i.aev, align 4          ; 11 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeu, i64 24
  %i.aey = load i8, ptr %i.aex, align 8
  %.not880 = icmp eq i8 %i.aey, 0
  br i1 %.not880, label %bb.hl, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.aez = tail call i64 @div(i32 noundef %i.aew, i32 noundef 2) #75 ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.aez to i32
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aeu, i64 23
  %i.afb = load i8, ptr %i.afa, align 1
  %i.afc = icmp eq i8 %i.afb, 16
  %i.afd = icmp sgt i32 %i.aew, 0                 ; 2 uses
  br i1 %i.afc, label %.preheader966, label %.preheader967

.preheader967:                                    ; preds = %bb.gy
  br i1 %i.afd, label %.lr.ph996, label %._crit_edge997

.lr.ph996:                                        ; preds = %.preheader967
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aeu, i64 72 ; 2 uses
  %i.aff = and i64 %i.aez, 4294967295
  %wide.trip.count = zext nneg i32 %i.aew to i64
  br label %bb.hg

.preheader966:                                    ; preds = %bb.gy
  br i1 %i.afd, label %.lr.ph1000, label %._crit_edge1001

.lr.ph1000:                                       ; preds = %.preheader966
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aeu, i64 72 ; 2 uses
  %i.afh = and i64 %i.aez, 4294967295
  %wide.trip.count1047 = zext nneg i32 %i.aew to i64
  br label %bb.gz

._crit_edge1001.loopexit:                         ; preds = %bb.hf
  %.pre1067 = load i32, ptr %i.aev, align 4
end_hunk_14
begin_hunk_15_@jar_mod_fillbuffer:bb.a
  %i.wj = load ptr, ptr %i.fc, align 8
  %i.wk = load i32, ptr %i.fb, align 4
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds [348 x i8], ptr %i.wj, i64 %i.wl
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 24
  store i32 %i.tz, ptr %i.wn, align 4
  %i.wo = load i16, ptr %i.eo, align 8
  %i.wp = zext i16 %i.wo to i64
  %i.wq = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.wp
  %i.wr = load i8, ptr %i.wq, align 1
  %i.ws = zext i8 %i.wr to i32
  %i.wt = load ptr, ptr %i.fc, align 8
  %i.wu = load i32, ptr %i.fb, align 4
  %i.wv = sext i32 %i.wu to i64
  %i.ww = getelementptr inbounds [348 x i8], ptr %i.wt, i64 %i.wv
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 12
  store i32 %i.ws, ptr %i.wx, align 4
  %i.wy = load i16, ptr %i.ep, align 2
  %i.wz = load i16, ptr %i.er, align 8
  %i.xa = udiv i16 %i.wy, %i.wz
  %i.xb = zext i16 %i.xa to i32
  %i.xc = load ptr, ptr %i.fc, align 8
  %i.xd = load i32, ptr %i.fb, align 4
  %i.xe = sext i32 %i.xd to i64
  %i.xf = getelementptr inbounds [348 x i8], ptr %i.xc, i64 %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  store i32 %i.xb, ptr %i.xg, align 4
  %i.xh = load i16, ptr %i.eo, align 8
  %i.xi = zext i16 %i.xh to i32
  %i.xj = load ptr, ptr %i.fc, align 8
  %i.xk = load i32, ptr %i.fb, align 4
  %i.xl = sext i32 %i.xk to i64
  %i.xm = getelementptr inbounds [348 x i8], ptr %i.xj, i64 %i.xl
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 20
  store i32 %i.xi, ptr %i.xn, align 4
  %i.xo = load i8, ptr %i.ex, align 8
  %i.xp = zext i8 %i.xo to i32
  %i.xq = load ptr, ptr %i.fc, align 8
  %i.xr = load i32, ptr %i.fb, align 4
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr inbounds [348 x i8], ptr %i.xq, i64 %i.xs
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 4
  store i32 %i.xp, ptr %i.xu, align 4
  %i.xv = load i8, ptr %i.ev, align 4
  %i.xw = zext i8 %i.xv to i32
  %i.xx = load ptr, ptr %i.fc, align 8
  %i.xy = load i32, ptr %i.fb, align 4
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds [348 x i8], ptr %i.xx, i64 %i.xz
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  store i32 %i.xw, ptr %i.yb, align 4
  %i.yc = getelementptr inbounds nuw i8, ptr %.0311, i64 42
  %i.yd = load i16, ptr %i.yc, align 2
  %i.ye = load ptr, ptr %i.fc, align 8
  %i.yf = load i32, ptr %i.fb, align 4
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr inbounds [348 x i8], ptr %i.ye, i64 %i.yg
  %i.yi = getelementptr inbounds nuw [10 x i8], ptr %i.yh, i64 %.0243308
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 34
  store i16 %i.yd, ptr %i.yj, align 2
  %i.yk = getelementptr inbounds nuw i8, ptr %.0311, i64 41
  %i.yl = load i8, ptr %i.yk, align 1
  %i.ym = zext i8 %i.yl to i16
  %i.yn = load ptr, ptr %i.fc, align 8
  %i.yo = load i32, ptr %i.fb, align 4
  %i.yp = sext i32 %i.yo to i64
  %i.yq = getelementptr inbounds [348 x i8], ptr %i.yn, i64 %i.yp
  %i.yr = getelementptr inbounds nuw [10 x i8], ptr %i.yq, i64 %.0243308
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 36
  store i16 %i.ym, ptr %i.ys, align 2
  %i.yt = load ptr, ptr %i.fc, align 8
  %i.yu = load i32, ptr %i.fb, align 4
  %i.yv = sext i32 %i.yu to i64
  %i.yw = getelementptr inbounds [348 x i8], ptr %i.yt, i64 %i.yv
  %i.yx = getelementptr inbounds nuw [10 x i8], ptr %i.yw, i64 %.0243308
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 30
  store i16 %i.uh, ptr %i.yy, align 2
  %i.yz = getelementptr inbounds nuw i8, ptr %.0311, i64 26
  %i.za = load i8, ptr %i.yz, align 2
  %i.zb = load ptr, ptr %i.fc, align 8
  %i.zc = load i32, ptr %i.fb, align 4
  %i.zd = sext i32 %i.zc to i64
  %i.ze = getelementptr inbounds [348 x i8], ptr %i.zb, i64 %i.zd
  %i.zf = getelementptr inbounds nuw [10 x i8], ptr %i.ze, i64 %.0243308
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 32
  store i8 %i.za, ptr %i.zg, align 2
  %i.zh = getelementptr inbounds nuw i8, ptr %.0311, i64 8
  %i.zi = load i16, ptr %i.zh, align 8
  %i.zj = trunc i16 %i.zi to i8
  %i.zk = load ptr, ptr %i.fc, align 8
  %i.zl = load i32, ptr %i.fb, align 4
  %i.zm = sext i32 %i.zl to i64
  %i.zn = getelementptr inbounds [348 x i8], ptr %i.zk, i64 %i.zm
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 28
  %i.zp = getelementptr inbounds nuw [10 x i8], ptr %i.zo, i64 %.0243308
  store i8 %i.zj, ptr %i.zp, align 2
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dd, %bb.dp, %bb.dq, %bb.do
  %.2236 = phi i32 [ %.1235, %bb.do ], [ %.1235, %bb.dq ], [ %.1235, %bb.dp ], [ %.0234309, %bb.dd ] ; 2 uses
  %.2 = phi i32 [ %.1297, %bb.do ], [ %.1297, %bb.dq ], [ %.1297, %bb.dp ], [ %.0233310, %bb.dd ] ; 2 uses
  %i.zq = add nuw nsw i64 %.0243308, 1            ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.0311, i64 72
  %i.zs = load i16, ptr %i.er, align 8
  %i.zt = zext i16 %i.zs to i64
  %i.zu = icmp samesign ult i64 %i.zq, %i.zt
  br i1 %i.zu, label %bb.dd, label %._crit_edge314

._crit_edge314:                                   ; preds = %bb.dr, %bb.dc
  %.0234.lcssa = phi i32 [ 0, %bb.dc ], [ %.2236, %bb.dr ] ; 3 uses
  %.0233.lcssa = phi i32 [ 0, %bb.dc ], [ %.2, %bb.dr ] ; 3 uses
  br i1 %or.cond3, label %bb.du, label %bb.ds

bb.ds:                                            ; preds = %._crit_edge314
  %i.zv = load i32, ptr %i.fe, align 4            ; 2 uses
  %i.zw = load i32, ptr %i.fb, align 4            ; 2 uses
  %i.zx = load i32, ptr %3, align 8
  %i.zy = icmp slt i32 %i.zw, %i.zx
  br i1 %i.zy, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %i.zz = add nsw i32 %i.zw, 1
  store i32 %i.zz, ptr %i.fb, align 4
  br label %bb.dv

bb.du:                                            ; preds = %._crit_edge314
  %i.aaa = add i32 %.0239320, -1
  br label %bb.dv

bb.dv:                                            ; preds = %bb.ds, %bb.dt, %bb.du
  %.1240 = phi i32 [ %i.aaa, %bb.du ], [ %i.zv, %bb.dt ], [ %i.zv, %bb.ds ]
  %i.aab = trunc i32 %.0234.lcssa to i16          ; 2 uses
  %i.aac = trunc i32 %.0233.lcssa to i16          ; 2 uses
  %i.aad = load i16, ptr %i.ff, align 2
  %.not274 = icmp eq i16 %i.aad, 0                ; 2 uses
  %i.aae = add nsw i32 %.0234.lcssa, %.0232322
  %i.aaf = ashr i32 %i.aae, 1
  %i.aag = add nsw i32 %.0233.lcssa, %.0231321
  %i.aah = ashr i32 %i.aag, 1
  %.3237 = select i1 %.not274, i32 %.0234.lcssa, i32 %i.aaf ; 2 uses
  %.3 = select i1 %.not274, i32 %.0233.lcssa, i32 %i.aah ; 2 uses
  %i.aai = load i16, ptr %i.fg, align 2
  %i.aaj = icmp eq i16 %i.aai, 1                  ; 2 uses
  %i.aak = ashr i32 %.3, 1
  %i.aal = add nsw i32 %i.aak, %.3237             ; 2 uses
  %i.aam = ashr i32 %i.aal, 1
  %.4238 = select i1 %i.aaj, i32 %i.aal, i32 %.3237
  %i.aan = select i1 %i.aaj, i32 %i.aam, i32 0
  %.4 = add nsw i32 %i.aan, %.3
  %i.aao = tail call i32 @llvm.smax.i32(i32 %.4238, i32 -32768)
  %spec.store.select9 = tail call i32 @llvm.smin.i32(i32 %i.aao, i32 32767)
  %i.aap = tail call i32 @llvm.smax.i32(i32 %.4, i32 -32768)
  %spec.store.select10 = tail call i32 @llvm.smin.i32(i32 %i.aap, i32 32767)
  %i.aaq = trunc nsw i32 %spec.store.select9 to i16
  %.idx = shl i64 %.1245319, 2
  %i.aar = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  store i16 %i.aaq, ptr %i.aar, align 2
  %i.aas = trunc nsw i32 %spec.store.select10 to i16
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aar, i64 2
  store i16 %i.aas, ptr %i.aat, align 2
  %i.aau = add nuw i64 %.1245319, 1               ; 2 uses
  %exitcond340.not = icmp eq i64 %i.aau, %2
  br i1 %exitcond340.not, label %._crit_edge325, label %bb.d

._crit_edge325:                                   ; preds = %bb.dv, %.loopexit
  %.0232.in.lcssa = phi i16 [ %i.ef, %.loopexit ], [ %i.aab, %bb.dv ]
  %.0231.in.lcssa = phi i16 [ %i.eh, %.loopexit ], [ %i.aac, %bb.dv ]
  store i16 %.0232.in.lcssa, ptr %i.ee, align 2
  store i16 %.0231.in.lcssa, ptr %i.eg, align 4
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 2416 ; 2 uses
  %i.aaw = load i64, ptr %i.aav, align 8
  %i.aax = add i64 %i.aaw, %2
  store i64 %i.aax, ptr %i.aav, align 8
  br label %bb.dx

._crit_edge330:                                   ; preds = %.lr.ph329.preheader, %.preheader
  %.not269 = icmp eq ptr %3, null
  br i1 %.not269, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %._crit_edge330
  %i.aay = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.aay, align 4
  %i.aaz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.aaz, align 8
  %i.aba = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.aba, align 8
  %i.abb = load i32, ptr %3, align 8              ; 2 uses
  %.not.i291 = icmp eq i32 %i.abb, 0
  br i1 %.not.i291, label %memclear.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.dw
  %i.abc = sext i32 %i.abb to i64
  %i.abd = mul nsw i64 %i.abc, 348
  %i.abe = getelementptr inbounds nuw i8, ptr %3, i64 952
  %i.abf = load ptr, ptr %i.abe, align 8
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.abf, i8 0, i64 range(i64 -747324309504, 747324309157) %i.abd, i1 false)
  br label %memclear.exit

memclear.exit:                                    ; preds = %bb.dw, %.lr.ph.preheader.i
  %i.abg = getelementptr inbounds nuw i8, ptr %3, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(868) %i.abg, i8 0, i64 868, i1 false)
  br label %bb.dx

bb.dx:                                            ; preds = %._crit_edge325, %memclear.exit, %._crit_edge330, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @jar_mod_unload(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #32 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %jar_mod_reset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7048
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %vector.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #61
  br label %vector.ph

vector.ph:                                        ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7072) %0, i8 0, i64 7072, i1 false)
  store i64 48000, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7040
  store <4 x i16> <i16 1, i16 1, i16 16, i16 1>, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4730
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr @periodtable, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.f, align 16 ; 6 uses
  %i.g = sext <8 x i16> %wide.load to <8 x i32>
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %wide.load10 = load <8 x i16>, ptr %i.h, align 2
  %i.i = sext <8 x i16> %wide.load10 to <8 x i32>
  %i.j = sub nsw <8 x i32> %i.g, %i.i
  %i.k = sdiv <8 x i32> %i.j, splat (i32 -8)
  %i.l = trunc nsw <8 x i32> %i.k to <8 x i16>    ; 6 uses
  %i.m = shl nuw nsw i64 %index, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.o = add <8 x i16> %wide.load, %i.l
  %i.p = shl nsw <8 x i16> %i.l, splat (i16 1)
  %i.q = mul nsw <8 x i16> %i.l, splat (i16 3)
  %i.r = shl nsw <8 x i16> %i.l, splat (i16 2)
  %i.s = mul <8 x i16> %i.l, splat (i16 5)
  %i.t = shufflevector <8 x i16> %wide.load, <8 x i16> %i.o, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.u = shufflevector <8 x i16> %i.p, <8 x i16> %i.q, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.v = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.w = add <16 x i16> %i.u, %i.v
  %i.x = shufflevector <8 x i16> %i.r, <8 x i16> %i.s, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.y = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.z = add <16 x i16> %i.x, %i.y
  %i.aa = shufflevector <8 x i16> %i.l, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ab = mul <16 x i16> %i.aa, <i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>
  %i.ac = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ad = add <16 x i16> %i.ab, %i.ac
  %i.ae = shufflevector <16 x i16> %i.t, <16 x i16> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.af = shufflevector <16 x i16> %i.z, <16 x i16> %i.ad, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i16> %i.ae, <32 x i16> %i.af, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec, ptr %i.n, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, 136
  br i1 %i.ag, label %.preheader.i.i, label %vector.body, !llvm.loop !1114

.preheader.i.i:                                   ; preds = %vector.body
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6906
  store <8 x i16> splat (i16 11), ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 6922
  store <8 x i16> splat (i16 10), ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 6938
  store <8 x i16> splat (i16 9), ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 6954
  store <8 x i16> splat (i16 9), ptr %i.ak, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 6970
  store <8 x i16> splat (i16 8), ptr %i.al, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 6986
  store <8 x i16> splat (i16 8), ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 7002
  store <8 x i16> splat (i16 7), ptr %i.an, align 2
  br label %jar_mod_reset.exit

jar_mod_reset.exit:                               ; preds = %.preheader.i.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i64 0, 33554432) i64 @jar_mod_load_file(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7048 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #61
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.170) ; 6 uses
  %.not27 = icmp eq ptr %i.c, null
  br i1 %.not27, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @fseek(ptr noundef nonnull %i.c, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.e = tail call i64 @ftell(ptr noundef nonnull %i.c) ; 6 uses
  %i.f = tail call i32 @fseek(ptr noundef nonnull %i.c, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.g = add i64 %i.e, -1
  %or.cond = icmp ult i64 %i.g, 33554431
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %calloc = tail call ptr @calloc(i64 1, i64 %i.e) ; 2 uses
  store ptr %calloc, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7056
  store i64 %i.e, ptr %i.h, align 8
  %i.i = tail call i64 @fread(ptr noundef %calloc, i64 noundef %i.e, i64 noundef 1, ptr noundef nonnull %i.c) ; 0 uses
  %i.j = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = trunc nuw nsw i64 %i.e to i32
  %i.m = tail call fastcc zeroext i1 @jar_mod_load(ptr noundef nonnull %0, ptr noundef %i.k, i32 noundef %i.l)
  %spec.select = select i1 %i.m, i64 %i.e, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.c ], [ %spec.select, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @jar_mod_load(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #18 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 4 uses
  %i.c = icmp ne ptr %1, null
  %i.d = icmp ne ptr %0, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %vector.memcheck, label %.loopexit

vector.memcheck:                                  ; preds = %bb.a
  %i.e = ptrtoaddr ptr %0 to i64
  %i.f = ptrtoaddr ptr %1 to i64
  %i.g = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.g, -32
  br i1 %diff.check, label %.preheader128, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load = load <16 x i8>, ptr %1, align 1
  %wide.load179 = load <16 x i8>, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <16 x i8> %wide.load, ptr %0, align 1
  store <16 x i8> %wide.load179, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.j, align 1
  %wide.load179.1 = load <16 x i8>, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i8> %wide.load.1, ptr %i.l, align 1
  store <16 x i8> %wide.load179.1, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.n, align 1
  %wide.load179.2 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <16 x i8> %wide.load.2, ptr %i.p, align 1
  store <16 x i8> %wide.load179.2, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load.3 = load <16 x i8>, ptr %i.r, align 1
  %wide.load179.3 = load <16 x i8>, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <16 x i8> %wide.load.3, ptr %i.t, align 1
  store <16 x i8> %wide.load179.3, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144
  %wide.load.4 = load <16 x i8>, ptr %i.v, align 1
  %wide.load179.4 = load <16 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <16 x i8> %wide.load.4, ptr %i.x, align 1
  store <16 x i8> %wide.load179.4, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 176
  %wide.load.5 = load <16 x i8>, ptr %i.z, align 1
  %wide.load179.5 = load <16 x i8>, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <16 x i8> %wide.load.5, ptr %i.ab, align 1
  store <16 x i8> %wide.load179.5, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 208
  %wide.load.6 = load <16 x i8>, ptr %i.ad, align 1
  %wide.load179.6 = load <16 x i8>, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <16 x i8> %wide.load.6, ptr %i.af, align 1
  store <16 x i8> %wide.load179.6, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 240
  %wide.load.7 = load <16 x i8>, ptr %i.ah, align 1
  %wide.load179.7 = load <16 x i8>, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <16 x i8> %wide.load.7, ptr %i.aj, align 1
  store <16 x i8> %wide.load179.7, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 272
  %wide.load.8 = load <16 x i8>, ptr %i.al, align 1
  %wide.load179.8 = load <16 x i8>, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <16 x i8> %wide.load.8, ptr %i.an, align 1
  store <16 x i8> %wide.load179.8, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 304
  %wide.load.9 = load <16 x i8>, ptr %i.ap, align 1
  %wide.load179.9 = load <16 x i8>, ptr %i.aq, align 1
end_hunk_15
begin_hunk_16_@jar_mod_load:bb.a
  store <16 x i8> %wide.load.27, ptr %i.dl, align 1
  store <16 x i8> %wide.load179.27, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 912
  %wide.load.28 = load <16 x i8>, ptr %i.dn, align 1
  %wide.load179.28 = load <16 x i8>, ptr %i.do, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 912
  store <16 x i8> %wide.load.28, ptr %i.dp, align 1
  store <16 x i8> %wide.load179.28, ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 944
  %wide.load.29 = load <16 x i8>, ptr %i.dr, align 1
  %wide.load179.29 = load <16 x i8>, ptr %i.ds, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 944
  store <16 x i8> %wide.load.29, ptr %i.dt, align 1
  store <16 x i8> %wide.load179.29, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 976
  %wide.load.30 = load <16 x i8>, ptr %i.dv, align 1
  %wide.load179.30 = load <16 x i8>, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 976
  store <16 x i8> %wide.load.30, ptr %i.dx, align 1
  store <16 x i8> %wide.load179.30, ptr %i.dy, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %wide.load.31 = load <16 x i8>, ptr %i.dz, align 1
  %wide.load179.31 = load <16 x i8>, ptr %i.ea, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store <16 x i8> %wide.load.31, ptr %i.eb, align 1
  store <16 x i8> %wide.load179.31, ptr %i.ec, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %wide.load.32 = load <16 x i8>, ptr %i.ed, align 1
  %wide.load179.32 = load <16 x i8>, ptr %i.ee, align 1
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store <16 x i8> %wide.load.32, ptr %i.ef, align 1
  store <16 x i8> %wide.load179.32, ptr %i.eg, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %wide.load181 = load <4 x i8>, ptr %i.eh, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store <4 x i8> %wide.load181, ptr %i.ei, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 1060
  %wide.load181.1 = load <4 x i8>, ptr %i.ej, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1060
  store <4 x i8> %wide.load181.1, ptr %i.ek, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %wide.load181.2 = load <4 x i8>, ptr %i.el, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store <4 x i8> %wide.load181.2, ptr %i.em, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 1068
  %wide.load181.3 = load <4 x i8>, ptr %i.en, align 1
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1068
  store <4 x i8> %wide.load181.3, ptr %i.eo, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %wide.load181.4 = load <4 x i8>, ptr %i.ep, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store <4 x i8> %wide.load181.4, ptr %i.eq, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 1076
  %wide.load181.5 = load <4 x i8>, ptr %i.er, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 1076
  store <4 x i8> %wide.load181.5, ptr %i.es, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %wide.load181.6 = load <4 x i8>, ptr %i.et, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store <4 x i8> %wide.load181.6, ptr %i.eu, align 1
  br label %memcopy.exit

.preheader128:                                    ; preds = %vector.memcheck, %.preheader128
  %.08.i = phi i64 [ %i.fk, %.preheader128 ], [ 0, %vector.memcheck ] ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 %.08.i
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %.08.i
  store i8 %i.ew, ptr %i.ex, align 1
  %i.ey = or disjoint i64 %.08.i, 1               ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ey
  store i8 %i.fa, ptr %i.fb, align 1
  %i.fc = or disjoint i64 %.08.i, 2               ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %i.fc
  store i8 %i.fe, ptr %i.ff, align 1
  %i.fg = or disjoint i64 %.08.i, 3               ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 %i.fg
  store i8 %i.fi, ptr %i.fj, align 1
  %i.fk = add nuw nsw i64 %.08.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.fk, 1084
  br i1 %exitcond.not.i.3, label %memcopy.exit, label %.preheader128, !llvm.loop !1115

memcopy.exit:                                     ; preds = %.preheader128, %vector.body
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 4728 ; 6 uses
  store i16 0, ptr %i.fl, align 8
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @modlist, i64 8), align 8 ; 2 uses
  %.not132 = icmp eq i32 %i.fm, 0
  br i1 %.not132, label %iter.check192, label %.lr.ph

.lr.ph:                                           ; preds = %memcopy.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.fo = load i8, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1081
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1082
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1083
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %memcompare.exit.thread
  %i.fs = phi i16 [ 0, %.lr.ph ], [ %i.gg, %memcompare.exit.thread ] ; 4 uses
  %i.ft = phi i32 [ %i.fm, %.lr.ph ], [ %i.gl, %memcompare.exit.thread ]
  %i.fu = phi ptr [ @modlist, %.lr.ph ], [ %i.gj, %memcompare.exit.thread ] ; 4 uses
  %.098133 = phi i16 [ 0, %.lr.ph ], [ %i.gh, %memcompare.exit.thread ]
  %i.fv = load i8, ptr %i.fu, align 1
  %.not.i = icmp eq i8 %i.fo, %i.fv
  br i1 %.not.i, label %bb.c, label %memcompare.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.fw = load i8, ptr %i.fp, align 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  %i.fy = load i8, ptr %i.fx, align 1
  %.not.1.i = icmp eq i8 %i.fw, %i.fy
  br i1 %.not.1.i, label %bb.d, label %memcompare.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.fz = load i8, ptr %i.fq, align 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 2
  %i.gb = load i8, ptr %i.ga, align 1
  %.not.2.i = icmp eq i8 %i.fz, %i.gb
  br i1 %.not.2.i, label %memcompare.exit, label %memcompare.exit.thread

memcompare.exit:                                  ; preds = %bb.d
  %i.gc = load i8, ptr %i.fr, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fu, i64 3
  %i.ge = load i8, ptr %i.gd, align 1
  %.not.3.i.not = icmp eq i8 %i.gc, %i.ge
  br i1 %.not.3.i.not, label %bb.e, label %memcompare.exit.thread

bb.e:                                             ; preds = %memcompare.exit
  %i.gf = trunc i32 %i.ft to i16                  ; 2 uses
  store i16 %i.gf, ptr %i.fl, align 8
  br label %memcompare.exit.thread

memcompare.exit.thread:                           ; preds = %bb.c, %bb.d, %bb.b, %bb.e, %memcompare.exit
  %i.gg = phi i16 [ %i.fs, %bb.c ], [ %i.fs, %bb.d ], [ %i.fs, %bb.b ], [ %i.gf, %bb.e ], [ %i.fs, %memcompare.exit ] ; 2 uses
  %i.gh = add i16 %.098133, 1                     ; 2 uses
  %i.gi = zext i16 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [12 x i8], ptr @modlist, i64 %i.gi ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load i32, ptr %i.gk, align 4            ; 2 uses
  %.not = icmp eq i32 %i.gl, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %memcompare.exit.thread
  %i.gm = icmp eq i16 %i.gg, 0
  br i1 %i.gm, label %iter.check192, label %bb.f

iter.check192:                                    ; preds = %memcopy.exit, %._crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store <4 x i8> <i8 77, i8 46, i8 75, i8 46>, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 470 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 950
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 486
  %wide.load187 = load <16 x i8>, ptr %i.go, align 2
  %wide.load188 = load <16 x i8>, ptr %i.gq, align 2
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 966
  store <16 x i8> %wide.load187, ptr %i.gp, align 2
  store <16 x i8> %wide.load188, ptr %i.gr, align 2
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 502
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 518
  %wide.load187.1 = load <16 x i8>, ptr %i.gs, align 2
  %wide.load188.1 = load <16 x i8>, ptr %i.gt, align 2
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 982
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 998
  store <16 x i8> %wide.load187.1, ptr %i.gu, align 2
  store <16 x i8> %wide.load188.1, ptr %i.gv, align 2
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 534
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 550
  %wide.load187.2 = load <16 x i8>, ptr %i.gw, align 2
  %wide.load188.2 = load <16 x i8>, ptr %i.gx, align 2
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1014
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1030
  store <16 x i8> %wide.load187.2, ptr %i.gy, align 2
  store <16 x i8> %wide.load188.2, ptr %i.gz, align 2
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 566
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 582
  %wide.load187.3 = load <16 x i8>, ptr %i.ha, align 2
  %wide.load188.3 = load <16 x i8>, ptr %i.hb, align 2
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 1046
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1062
  store <16 x i8> %wide.load187.3, ptr %i.hc, align 2
  store <16 x i8> %wide.load188.3, ptr %i.hd, align 2
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 598
  %wide.load198 = load <2 x i8>, ptr %i.he, align 2
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 1078
  store <2 x i8> %wide.load198, ptr %i.hf, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(480) %i.go, i8 0, i64 480, i1 false)
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 600
  store i16 4, ptr %i.fl, align 8
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 1084
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %iter.check192
  %.0 = phi ptr [ %i.hh, %bb.f ], [ %i.hg, %iter.check192 ] ; 2 uses
  %.not111 = icmp ult ptr %.0, %i.b
  br i1 %.not111, label %.preheader127, label %.loopexit

.preheader127:                                    ; preds = %bb.g
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 2 uses
  br label %.preheader125

.preheader125:                                    ; preds = %bb.l, %.preheader127
  %indvars.iv150 = phi i64 [ 0, %.preheader127 ], [ %indvars.iv.next151.1, %bb.l ] ; 3 uses
  %.1136 = phi ptr [ %.0, %.preheader127 ], [ %.2.1, %bb.l ]
  %.096135 = phi i64 [ 0, %.preheader127 ], [ %indvars.iv.1, %bb.l ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 %indvars.iv150
  br label %bb.h

.preheader:                                       ; preds = %bb.l
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.hl, i8 0, i64 248, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.m

bb.h:                                             ; preds = %.preheader125, %bb.i
  %indvars.iv = phi i64 [ %.096135, %.preheader125 ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %.2 = phi ptr [ %.1136, %.preheader125 ], [ %i.ht, %bb.i ] ; 3 uses
  %i.hn = load i8, ptr %i.hk, align 1
  %i.ho = zext i8 %i.hn to i64
  %.not114 = icmp samesign ugt i64 %indvars.iv, %i.ho
  br i1 %.not114, label %.preheader125.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv
  store ptr %.2, ptr %i.hp, align 8
  %i.hq = load i16, ptr %i.fl, align 8
  %i.hr = zext i16 %i.hq to i64
  %i.hs = shl nuw nsw i64 %i.hr, 8
  %i.ht = getelementptr inbounds nuw i8, ptr %.2, i64 %i.hs ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not115 = icmp ult ptr %i.ht, %i.b
  br i1 %.not115, label %bb.h, label %.loopexit

.preheader125.1:                                  ; preds = %bb.h
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hi, i64 %indvars.iv150
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.preheader125.1
  %indvars.iv.1 = phi i64 [ %indvars.iv, %.preheader125.1 ], [ %indvars.iv.next.1, %bb.k ] ; 4 uses
  %.2.1 = phi ptr [ %.2, %.preheader125.1 ], [ %i.ic, %bb.k ] ; 4 uses
  %i.hw = load i8, ptr %i.hv, align 1
  %i.hx = zext i8 %i.hw to i64
  %.not114.1 = icmp samesign ugt i64 %indvars.iv.1, %i.hx
  br i1 %.not114.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv.1
  store ptr %.2.1, ptr %i.hy, align 8
  %i.hz = load i16, ptr %i.fl, align 8
  %i.ia = zext i16 %i.hz to i64
  %i.ib = shl nuw nsw i64 %i.ia, 8
  %i.ic = getelementptr inbounds nuw i8, ptr %.2.1, i64 %i.ib ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %.not115.1 = icmp ult ptr %i.ic, %i.b
  br i1 %.not115.1, label %bb.j, label %.loopexit

bb.l:                                             ; preds = %bb.j
  %indvars.iv.next151.1 = add nuw nsw i64 %indvars.iv150, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next151.1, 128
  br i1 %exitcond.not.1, label %.preheader, label %.preheader125

bb.m:                                             ; preds = %.preheader, %bb.q
  %indvars.iv156 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next157, %bb.q ] ; 2 uses
  %.3140 = phi ptr [ %.2.1, %.preheader ], [ %.4, %bb.q ] ; 3 uses
  %.095139 = phi ptr [ %i.hm, %.preheader ], [ %i.ja, %bb.q ] ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.095139, i64 22 ; 3 uses
  %i.ie = load i16, ptr %i.id, align 1
  %rev = tail call i16 @llvm.bswap.i16(i16 %i.ie)
  %i.if = shl i16 %rev, 1                         ; 2 uses
  store i16 %i.if, ptr %i.id, align 1
  %i.ig = getelementptr inbounds nuw i8, ptr %.095139, i64 26 ; 3 uses
  %i.ih = load i16, ptr %i.ig, align 1
  %rev112 = tail call i16 @llvm.bswap.i16(i16 %i.ih)
  %i.ii = shl i16 %rev112, 1
  store i16 %i.ii, ptr %i.ig, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %.095139, i64 28 ; 4 uses
  %i.ik = load i16, ptr %i.ij, align 1
  %rev113 = tail call i16 @llvm.bswap.i16(i16 %i.ik)
  %i.il = shl i16 %rev113, 1
  store i16 %i.il, ptr %i.ij, align 1
  %i.im = icmp eq i16 %i.if, 0
  br i1 %i.im, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv156
  store ptr %.3140, ptr %i.in, align 8
  %i.io = load i16, ptr %i.id, align 1            ; 3 uses
  %i.ip = zext i16 %i.io to i32
  %i.iq = zext i16 %i.io to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %.3140, i64 %i.iq ; 2 uses
  %i.is = load i16, ptr %i.ij, align 1
  %i.it = zext i16 %i.is to i32
  %i.iu = load i16, ptr %i.ig, align 1            ; 2 uses
  %i.iv = zext i16 %i.iu to i32
  %i.iw = add nuw nsw i32 %i.iv, %i.it
  %i.ix = icmp samesign ugt i32 %i.iw, %i.ip
  br i1 %i.ix, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.iy = sub i16 %i.io, %i.iu
  store i16 %i.iy, ptr %i.ij, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.iz = icmp ugt ptr %i.ir, %i.b
  br i1 %i.iz, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.4 = phi ptr [ %.3140, %bb.m ], [ %i.ir, %bb.p ]
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.095139, i64 30
  %exitcond159.not = icmp eq i64 %indvars.iv.next157, 31
  br i1 %exitcond159.not, label %bb.r, label %bb.m

bb.r:                                             ; preds = %bb.q
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 2368
  store i16 0, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 2370
  store i16 0, ptr %i.jc, align 2
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 1084
  store i8 6, ptr %i.jd, align 4
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 2376
  store i8 125, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store i64 0, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.jh = load i64, ptr %i.jg, align 8            ; 2 uses
  %i.ji = mul i64 %i.jh, 30
  %i.jj = udiv i64 %i.ji, 250                     ; 2 uses
  %i.jk = add nuw nsw i64 %i.jj, 1
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 2384
  store i64 %i.jk, ptr %i.jl, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 2400
  store i64 %i.jj, ptr %i.jm, align 8
  %i.jn = udiv i64 3546894, %i.jh
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 2408
  store i64 %i.jn, ptr %i.jo, align 8
  %i.jp = load i16, ptr %i.fl, align 8            ; 3 uses
  %.not145 = icmp eq i16 %i.jp, 0
  br i1 %.not145, label %._crit_edge144, label %.lr.ph143

.lr.ph143:                                        ; preds = %bb.r
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 2424 ; 5 uses
  %wide.trip.count = zext i16 %i.jp to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.jr = icmp ult i16 %i.jp, 4
  br i1 %i.jr, label %.epil.preheader, label %.lr.ph143.new

.lr.ph143.new:                                    ; preds = %.lr.ph143
  %unroll_iter = and i64 %wide.trip.count, 65532
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph143.new
  %indvars.iv160 = phi i64 [ 0, %.lr.ph143.new ], [ %indvars.iv.next161.3, %bb.s ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph143.new ], [ %niter.next.3, %bb.s ]
  %i.js = getelementptr inbounds nuw [72 x i8], ptr %i.jq, i64 %indvars.iv160 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 26
  store i8 0, ptr %i.jt, align 2
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  store i16 0, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw [72 x i8], ptr %i.jq, i64 %indvars.iv160 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 98
  store i8 0, ptr %i.jw, align 2
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 96
  store i16 0, ptr %i.jx, align 8
  %i.jy = getelementptr inbounds nuw [72 x i8], ptr %i.jq, i64 %indvars.iv160 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 170
  store i8 0, ptr %i.jz, align 2
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 168
  store i16 0, ptr %i.ka, align 8
  %i.kb = getelementptr inbounds nuw [72 x i8], ptr %i.jq, i64 %indvars.iv160 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 242
  store i8 0, ptr %i.kc, align 2
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 240
  store i16 0, ptr %i.kd, align 8
  %indvars.iv.next161.3 = add nuw nsw i64 %indvars.iv160, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge144.loopexit.unr-lcssa, label %bb.s

._crit_edge144.loopexit.unr-lcssa:                ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge144, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge144.loopexit.unr-lcssa, %.lr.ph143
  %indvars.iv160.epil.init = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next161.3, %._crit_edge144.loopexit.unr-lcssa ]
  %lcmp.mod207 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod207)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %indvars.iv160.epil = phi i64 [ %indvars.iv160.epil.init, %.epil.preheader ], [ %indvars.iv.next161.epil, %bb.t ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.t ]
  %i.ke = getelementptr inbounds nuw [72 x i8], ptr %i.jq, i64 %indvars.iv160.epil ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 26
  store i8 0, ptr %i.kf, align 2
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  store i16 0, ptr %i.kg, align 8
  %indvars.iv.next161.epil = add nuw nsw i64 %indvars.iv160.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge144, label %bb.t, !llvm.loop !1116

._crit_edge144:                                   ; preds = %._crit_edge144.loopexit.unr-lcssa, %bb.t, %bb.r
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 7034
  store i16 1, ptr %i.kh, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.k, %bb.p, %bb.a, %bb.g, %._crit_edge144
  %.0103 = phi i1 [ false, %bb.a ], [ false, %bb.g ], [ false, %bb.p ], [ true, %._crit_edge144 ], [ false, %bb.k ], [ false, %bb.i ]
  ret i1 %.0103
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @jar_mod_current_samples(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.b = load i64, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @jar_mod_max_samples(ptr noundef %0) local_unnamed_addr #23 {
.lr.ph.preheader:
  %i.a = alloca [2 x i16], align 2                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7064 ; 3 uses
  %i.c = load i16, ptr %i.b, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  call void @jar_mod_fillbuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef null)
  %i.d = load i16, ptr %i.b, align 8              ; 2 uses
  %.not = icmp ugt i16 %i.d, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7048 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not15.i = icmp eq ptr %i.h, null
  br i1 %.not15.i, label %jar_mod_seek_start.exit, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7056 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7072) %0, i8 0, i64 7072, i1 false)
  store i64 48000, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 7040
  store <4 x i16> <i16 1, i16 1, i16 16, i16 1>, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4730
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr @periodtable, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.n, align 16 ; 6 uses
  %i.o = sext <8 x i16> %wide.load to <8 x i32>
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %wide.load9 = load <8 x i16>, ptr %i.p, align 2
  %i.q = sext <8 x i16> %wide.load9 to <8 x i32>
  %i.r = sub nsw <8 x i32> %i.o, %i.q
  %i.s = sdiv <8 x i32> %i.r, splat (i32 -8)
  %i.t = trunc nsw <8 x i32> %i.s to <8 x i16>    ; 6 uses
  %i.u = shl nuw nsw i64 %index, 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.u
  %i.w = add <8 x i16> %wide.load, %i.t
  %i.x = shl nsw <8 x i16> %i.t, splat (i16 1)
  %i.y = mul nsw <8 x i16> %i.t, splat (i16 3)
  %i.z = shl nsw <8 x i16> %i.t, splat (i16 2)
  %i.aa = mul <8 x i16> %i.t, splat (i16 5)
  %i.ab = shufflevector <8 x i16> %wide.load, <8 x i16> %i.w, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ac = shufflevector <8 x i16> %i.x, <8 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ad = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ae = add <16 x i16> %i.ac, %i.ad
  %i.af = shufflevector <8 x i16> %i.z, <8 x i16> %i.aa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ag = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ah = add <16 x i16> %i.af, %i.ag
  %i.ai = shufflevector <8 x i16> %i.t, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aj = mul <16 x i16> %i.ai, <i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>
  %i.ak = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.al = add <16 x i16> %i.aj, %i.ak
  %i.am = shufflevector <16 x i16> %i.ab, <16 x i16> %i.ae, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.an = shufflevector <16 x i16> %i.ah, <16 x i16> %i.al, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i16> %i.am, <32 x i16> %i.an, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec, ptr %i.v, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, 136
  br i1 %i.ao, label %.preheader.i.i.i, label %vector.body, !llvm.loop !1117

.preheader.i.i.i:                                 ; preds = %vector.body
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 6906
  store <8 x i16> splat (i16 11), ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 6922
  store <8 x i16> splat (i16 10), ptr %i.aq, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 6938
  store <8 x i16> splat (i16 9), ptr %i.ar, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 6954
  store <8 x i16> splat (i16 9), ptr %i.as, align 2
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 6970
  store <8 x i16> splat (i16 8), ptr %i.at, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6986
  store <8 x i16> splat (i16 8), ptr %i.au, align 2
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 7002
  store <8 x i16> splat (i16 7), ptr %i.av, align 2
  %i.aw = trunc i64 %i.j to i32
  %i.ax = call fastcc zeroext i1 @jar_mod_load(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i32 noundef %i.aw) ; 0 uses
  store ptr %i.h, ptr %i.g, align 8
  store i64 %i.j, ptr %i.i, align 8
  store i16 %i.d, ptr %i.b, align 8
  br label %jar_mod_seek_start.exit

jar_mod_seek_start.exit:                          ; preds = %._crit_edge, %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i64 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @jar_mod_seek_start(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #23 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7048 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not15 = icmp eq ptr %i.b, null
  br i1 %.not15, label %bb.c, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7056 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7064 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7072) %0, i8 0, i64 7072, i1 false)
  store i64 48000, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7040
  store <4 x i16> <i16 1, i16 1, i16 16, i16 1>, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4730
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr @periodtable, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.j, align 16 ; 6 uses
  %i.k = sext <8 x i16> %wide.load to <8 x i32>
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %wide.load17 = load <8 x i16>, ptr %i.l, align 2
  %i.m = sext <8 x i16> %wide.load17 to <8 x i32>
  %i.n = sub nsw <8 x i32> %i.k, %i.m
  %i.o = sdiv <8 x i32> %i.n, splat (i32 -8)
  %i.p = trunc nsw <8 x i32> %i.o to <8 x i16>    ; 6 uses
  %i.q = shl nuw nsw i64 %index, 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  %i.s = add <8 x i16> %wide.load, %i.p
  %i.t = shl nsw <8 x i16> %i.p, splat (i16 1)
  %i.u = mul nsw <8 x i16> %i.p, splat (i16 3)
  %i.v = shl nsw <8 x i16> %i.p, splat (i16 2)
  %i.w = mul <8 x i16> %i.p, splat (i16 5)
  %i.x = shufflevector <8 x i16> %wide.load, <8 x i16> %i.s, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.y = shufflevector <8 x i16> %i.t, <8 x i16> %i.u, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.z = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aa = add <16 x i16> %i.y, %i.z
  %i.ab = shufflevector <8 x i16> %i.v, <8 x i16> %i.w, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ac = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ad = add <16 x i16> %i.ab, %i.ac
  %i.ae = shufflevector <8 x i16> %i.p, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.af = mul <16 x i16> %i.ae, <i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>
  %i.ag = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ah = add <16 x i16> %i.af, %i.ag
  %i.ai = shufflevector <16 x i16> %i.x, <16 x i16> %i.aa, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aj = shufflevector <16 x i16> %i.ad, <16 x i16> %i.ah, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i16> %i.ai, <32 x i16> %i.aj, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec, ptr %i.r, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, 136
  br i1 %i.ak, label %.preheader.i.i, label %vector.body, !llvm.loop !1118

.preheader.i.i:                                   ; preds = %vector.body
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 6906
  store <8 x i16> splat (i16 11), ptr %i.al, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 6922
  store <8 x i16> splat (i16 10), ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 6938
  store <8 x i16> splat (i16 9), ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 6954
  store <8 x i16> splat (i16 9), ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 6970
  store <8 x i16> splat (i16 8), ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 6986
  store <8 x i16> splat (i16 8), ptr %i.aq, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 7002
  store <8 x i16> splat (i16 7), ptr %i.ar, align 2
  %i.as = trunc i64 %i.d to i32
  %i.at = tail call fastcc zeroext i1 @jar_mod_load(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.as) ; 0 uses
  store ptr %i.b, ptr %i.a, align 8
  store i64 %i.d, ptr %i.c, align 8
  store i16 %i.f, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @InitAudioDevice() local_unnamed_addr #8 {
bb.a:
  %0 = alloca %struct.ma_context_config, align 8  ; 4 uses
  %1 = alloca %struct.ma_device_config, align 8   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %0, i8 0, i64 240, i1 false), !alias.scope !1119
  %i.a = call i32 @ma_context_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull @AUDIO)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.221) #61
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #61
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.b, i8 0, i64 288, i1 false), !alias.scope !1122
  store i32 1, ptr %1, align 8, !alias.scope !1122
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.91.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false), !alias.scope !1122
  store i32 4, ptr %.sroa.91.0..sroa_idx.i, align 8, !alias.scope !1122
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i32 2, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @OnSendAudioDataToDevice, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 1, ptr %i.j, align 1
  %i.k = call i32 @ma_device_init(ptr noundef nonnull @AUDIO, ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1024))
  %.not3 = icmp eq i32 %i.k, 0
  br i1 %.not3, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.222) #61
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 8), align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 %i.l(ptr noundef nonnull @AUDIO) #61, !inline_history !25 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 320)) #61 ; 0 uses
  %i.o = call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 360)) #61 ; 0 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 416), align 8 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %ma_free.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 312), align 8 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.r, null
  br i1 %.not9.i.i, label %ma_free.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 288), align 8
  call void %i.r(ptr noundef nonnull %i.p, ptr noundef %i.s) #61, !inline_history !26
  br label %ma_free.exit.i

ma_free.exit.i:                                   ; preds = %bb.h, %bb.g, %bb.f
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 112), align 8
  %i.u = icmp eq ptr %i.t, getelementptr inbounds nuw (i8, ptr @AUDIO, i64 120)
  br i1 %i.u, label %bb.i, label %ma_context_uninit.exit

bb.i:                                             ; preds = %ma_free.exit.i
  %i.v = call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 224)) #61 ; 0 uses
  br label %ma_context_uninit.exit

bb.j:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800), i8 0, i64 40, i1 false)
  %i.w = call i32 @pthread_mutex_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800), ptr noundef null) #61 ; 2 uses
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %ma_mutex_init.exit.thread, label %ma_mutex_init.exit

ma_mutex_init.exit:                               ; preds = %bb.j
  %i.x = call fastcc i32 @ma_result_from_errno(i32 noundef %i.w)
  %.not4 = icmp eq i32 %i.x, 0
  br i1 %.not4, label %ma_mutex_init.exit.thread, label %bb.k

bb.k:                                             ; preds = %ma_mutex_init.exit
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.223) #61
  call void @ma_device_uninit(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1024))
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 8), align 8 ; 2 uses
  %.not.i6 = icmp eq ptr %i.y, null
  br i1 %.not.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = call i32 %i.y(ptr noundef nonnull @AUDIO) #61, !inline_history !25 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 320)) #61 ; 0 uses
  %i.ab = call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 360)) #61 ; 0 uses
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 416), align 8 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %ma_free.exit.i8, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 312), align 8 ; 2 uses
  %.not9.i.i7 = icmp eq ptr %i.ae, null
  br i1 %.not9.i.i7, label %ma_free.exit.i8, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 288), align 8
  call void %i.ae(ptr noundef nonnull %i.ac, ptr noundef %i.af) #61, !inline_history !26
  br label %ma_free.exit.i8

ma_free.exit.i8:                                  ; preds = %bb.o, %bb.n, %bb.m
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 112), align 8
  %i.ah = icmp eq ptr %i.ag, getelementptr inbounds nuw (i8, ptr @AUDIO, i64 120)
  br i1 %i.ah, label %bb.p, label %ma_context_uninit.exit

bb.p:                                             ; preds = %ma_free.exit.i8
  %i.ai = call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 224)) #61 ; 0 uses
  br label %ma_context_uninit.exit

ma_mutex_init.exit.thread:                        ; preds = %bb.j, %ma_mutex_init.exit
  %i.aj = call i32 @ma_device_start(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1024))
  %.not5 = icmp eq i32 %i.aj, 0
  br i1 %.not5, label %bb.w, label %bb.q

end_hunk_16
begin_hunk_17_@StopMusicStream:bb.a
bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ac, i8 0, i64 52, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 316
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.ad, i8 0, i64 88, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  store i64 %i.ag, ptr %i.ah, align 8
  br label %drwav_seek_to_first_pcm_frame.exit

bb.j:                                             ; preds = %StopAudioStream.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i32 @stb_vorbis_seek_start(ptr noundef %i.aj) ; 0 uses
  br label %drwav_seek_to_first_pcm_frame.exit

bb.k:                                             ; preds = %StopAudioStream.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8            ; 13 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32264
  %i.ao = load i64, ptr %i.an, align 8            ; 4 uses
  %i.ap = icmp ult i64 %i.ao, 2147483648
  br i1 %i.ap, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aq = trunc nuw nsw i64 %i.ao to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 22944
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 22960
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call i32 %i.as(ptr noundef %i.au, i32 noundef range(i32 0, -2147483648) %i.aq, i32 noundef 0) #61, !inline_history !1097
  %.not.i.i.i2 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i2, label %drwav_seek_to_first_pcm_frame.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 32248
  store i64 %i.ao, ptr %i.aw, align 8
  br label %drmp3__on_seek_64.exit.i

bb.n:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 22944 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 22960 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call i32 %i.ay(ptr noundef %i.ba, i32 noundef 2147483647, i32 noundef 0) #61, !inline_history !1097
  %.not.i18.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i18.i.i, label %drwav_seek_to_first_pcm_frame.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 32248 ; 5 uses
  store i64 2147483647, ptr %i.bc, align 8
  %i.bd = add i64 %i.ao, -2147483647              ; 3 uses
  %i.be = icmp ult i64 %i.bd, 2147483648
  br i1 %i.be, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.o, %.lr.ph.i.i
  %.lcssa.i = phi i64 [ %i.bd, %.lr.ph.i.i ], [ %i.br, %bb.o ] ; 2 uses
  %i.bf = trunc nuw nsw i64 %.lcssa.i to i32
  %i.bg = load ptr, ptr %i.ax, align 8
  %i.bh = load ptr, ptr %i.az, align 8
  %i.bi = tail call i32 %i.bg(ptr noundef %i.bh, i32 noundef range(i32 0, -2147483648) %i.bf, i32 noundef 1) #61, !inline_history !1097
  %.not.i21.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i21.i.i, label %drwav_seek_to_first_pcm_frame.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %._crit_edge.i
  %i.bj = load i64, ptr %i.bc, align 8
  %i.bk = add i64 %i.bj, %.lcssa.i
  store i64 %i.bk, ptr %i.bc, align 8
  br label %drmp3__on_seek_64.exit.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.o
  %i.bl = phi i64 [ %i.br, %bb.o ], [ %i.bd, %.lr.ph.i.i ]
  %i.bm = load ptr, ptr %i.ax, align 8
  %i.bn = load ptr, ptr %i.az, align 8
  %i.bo = tail call i32 %i.bm(ptr noundef %i.bn, i32 noundef 2147483647, i32 noundef 1) #61, !inline_history !1097
  %.not.i24.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i24.i.i, label %drwav_seek_to_first_pcm_frame.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.bp = load i64, ptr %i.bc, align 8
  %i.bq = add i64 %i.bp, 2147483647
  store i64 %i.bq, ptr %i.bc, align 8
  %i.br = add i64 %i.bl, -2147483647              ; 3 uses
  %i.bs = icmp ult i64 %i.br, 2147483648
  br i1 %i.bs, label %._crit_edge.i, label %.lr.ph.i

drmp3__on_seek_64.exit.i:                         ; preds = %.thread.i.i, %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.am, i64 23016
  store i32 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 23020
  store i32 0, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.am, i64 32240
  store i64 0, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.am, i64 32312
  store i64 0, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 32344
  store i32 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.am, i64 6152
  store i8 0, ptr %i.by, align 8
  br label %drwav_seek_to_first_pcm_frame.exit

bb.p:                                             ; preds = %StopAudioStream.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8            ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 272
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not.i3 = icmp eq ptr %i.cc, null
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 296
  %i.ce = load i32, ptr %i.cd, align 8            ; 2 uses
  br i1 %.not.i3, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = zext i32 %i.ce to i64
  %i.cg = tail call i32 @fseek(ptr noundef nonnull %i.cc, i64 noundef %i.cf, i32 noundef 0) ; 0 uses
  br label %qoaplay_rewind.exit

bb.r:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 292
  store i32 %i.ce, ptr %i.ch, align 4
  br label %qoaplay_rewind.exit

qoaplay_rewind.exit:                              ; preds = %bb.q, %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 300
  store i32 0, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 320
  store i32 0, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 324
  store i32 0, ptr %i.ck, align 4
  br label %drwav_seek_to_first_pcm_frame.exit

bb.s:                                             ; preds = %StopAudioStream.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8            ; 10 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 54 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 2
  %.not.i4 = icmp eq i16 %i.co, 0
  br i1 %.not.i4, label %jar_xm_reset.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 416
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i5
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i5 ], [ %indvars.iv.next.i, %bb.t ] ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw [256 x i8], ptr %i.cq, i64 %indvars.iv.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 52
  store float 0.000000e+00, ptr %i.cs, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ct = load i16, ptr %i.cn, align 2
  %i.cu = zext i16 %i.ct to i64
  %i.cv = icmp samesign ult i64 %indvars.iv.next.i, %i.cu
  br i1 %i.cv, label %bb.t, label %jar_xm_reset.exit

jar_xm_reset.exit:                                ; preds = %bb.t, %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 384
  store i64 0, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 373
  store i8 0, ptr %i.cx, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 372
  store i8 0, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 374
  store i16 0, ptr %i.cz, align 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 348
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 356
  %i.dc = load <2 x i16>, ptr %i.da, align 4
  store <2 x i16> %i.dc, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cm, i64 352
  %i.de = load float, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cm, i64 360
  store float %i.de, ptr %i.df, align 8
  br label %drwav_seek_to_first_pcm_frame.exit

bb.u:                                             ; preds = %StopAudioStream.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8            ; 16 uses
  %.not.i7 = icmp eq ptr %i.dh, null
  br i1 %.not.i7, label %drwav_seek_to_first_pcm_frame.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 7048 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8            ; 3 uses
  %.not15.i = icmp eq ptr %i.dj, null
  br i1 %.not15.i, label %drwav_seek_to_first_pcm_frame.exit, label %vector.ph

vector.ph:                                        ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 7056 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8            ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 7064 ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 2360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7072) %i.dh, i8 0, i64 7072, i1 false)
  store i64 48000, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 7040
  store <4 x i16> <i16 1, i16 1, i16 16, i16 1>, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 4730
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr @periodtable, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.dr, align 16 ; 6 uses
  %i.ds = sext <8 x i16> %wide.load to <8 x i32>
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %wide.load15 = load <8 x i16>, ptr %i.dt, align 2
  %i.du = sext <8 x i16> %wide.load15 to <8 x i32>
  %i.dv = sub nsw <8 x i32> %i.ds, %i.du
  %i.dw = sdiv <8 x i32> %i.dv, splat (i32 -8)
  %i.dx = trunc nsw <8 x i32> %i.dw to <8 x i16>  ; 6 uses
  %i.dy = shl nuw nsw i64 %index, 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dy
  %i.ea = add <8 x i16> %wide.load, %i.dx
  %i.eb = shl nsw <8 x i16> %i.dx, splat (i16 1)
  %i.ec = mul nsw <8 x i16> %i.dx, splat (i16 3)
  %i.ed = shl nsw <8 x i16> %i.dx, splat (i16 2)
  %i.ee = mul <8 x i16> %i.dx, splat (i16 5)
  %i.ef = shufflevector <8 x i16> %wide.load, <8 x i16> %i.ea, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eg = shufflevector <8 x i16> %i.eb, <8 x i16> %i.ec, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eh = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ei = add <16 x i16> %i.eg, %i.eh
  %i.ej = shufflevector <8 x i16> %i.ed, <8 x i16> %i.ee, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ek = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.el = add <16 x i16> %i.ej, %i.ek
  %i.em = shufflevector <8 x i16> %i.dx, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.en = mul <16 x i16> %i.em, <i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>
  %i.eo = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ep = add <16 x i16> %i.en, %i.eo
  %i.eq = shufflevector <16 x i16> %i.ef, <16 x i16> %i.ei, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.er = shufflevector <16 x i16> %i.el, <16 x i16> %i.ep, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i16> %i.eq, <32 x i16> %i.er, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec, ptr %i.dz, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.es = icmp eq i64 %index.next, 136
  br i1 %i.es, label %.preheader.i.i.i, label %vector.body, !llvm.loop !1180

.preheader.i.i.i:                                 ; preds = %vector.body
  %i.et = getelementptr inbounds nuw i8, ptr %i.dh, i64 6906
  store <8 x i16> splat (i16 11), ptr %i.et, align 2
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dh, i64 6922
  store <8 x i16> splat (i16 10), ptr %i.eu, align 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dh, i64 6938
  store <8 x i16> splat (i16 9), ptr %i.ev, align 2
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dh, i64 6954
  store <8 x i16> splat (i16 9), ptr %i.ew, align 2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dh, i64 6970
  store <8 x i16> splat (i16 8), ptr %i.ex, align 2
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dh, i64 6986
  store <8 x i16> splat (i16 8), ptr %i.ey, align 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dh, i64 7002
  store <8 x i16> splat (i16 7), ptr %i.ez, align 2
  %i.fa = trunc i64 %i.dl to i32
  %i.fb = tail call fastcc zeroext i1 @jar_mod_load(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.dj, i32 noundef %i.fa) ; 0 uses
  store ptr %i.dj, ptr %i.di, align 8
  store i64 %i.dl, ptr %i.dk, align 8
  store i16 %i.dn, ptr %i.dm, align 8
  br label %drwav_seek_to_first_pcm_frame.exit

drwav_seek_to_first_pcm_frame.exit:               ; preds = %.lr.ph.i, %.preheader.i.i.i, %bb.v, %bb.u, %drmp3__on_seek_64.exit.i, %._crit_edge.i, %bb.n, %bb.l, %bb.i, %bb.e, %bb.d, %StopAudioStream.exit, %jar_xm_reset.exit, %qoaplay_rewind.exit, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define void @UnloadAudioStream(ptr nofree noundef readonly byval(%struct.AudioStream) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @UnloadAudioBuffer(ptr noundef %i.a)
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.300) #61
  ret void
}

; Function Attrs: nounwind uwtable
define void @PlayMusicStream(ptr nofree noundef readonly byval(%struct.Music) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i.i, label %PlayAudioStream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 356
  store i8 1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 357
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 372
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 376
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 364
  store i8 1, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 365
  store i8 1, ptr %i.g, align 1
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %PlayAudioStream.exit

PlayAudioStream.exit:                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @PlayAudioStream(ptr nofree noundef readonly byval(%struct.AudioStream) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %PlayAudioBuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  store i8 1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 357
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  store i8 1, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 365
  store i8 1, ptr %i.h, align 1
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %PlayAudioBuffer.exit

PlayAudioBuffer.exit:                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @PauseMusicStream(ptr nofree noundef readonly byval(%struct.Music) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i.i, label %PauseAudioStream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 357
  store i8 1, ptr %i.b, align 1
  %i.c = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %PauseAudioStream.exit

PauseAudioStream.exit:                            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @PauseAudioStream(ptr nofree noundef readonly byval(%struct.AudioStream) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %PauseAudioBuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 357
  store i8 1, ptr %i.c, align 1
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %PauseAudioBuffer.exit

PauseAudioBuffer.exit:                            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @ResumeMusicStream(ptr nofree noundef readonly byval(%struct.Music) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i.i, label %ResumeAudioStream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 357
  store i8 0, ptr %i.b, align 1
  %i.c = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %ResumeAudioStream.exit

ResumeAudioStream.exit:                           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @ResumeAudioStream(ptr nofree noundef readonly byval(%struct.AudioStream) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %ResumeAudioBuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 357
  store i8 0, ptr %i.c, align 1
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
end_hunk_17
begin_hunk_18_@ma_device_init_by_type__alsa:bb.a
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 440
  %i.vd = load ptr, ptr %i.vc, align 8
  %i.ve = call i32 %i.vd(ptr noundef %i.bj) #61   ; 0 uses
  %i.vf = load ptr, ptr %0, align 8               ; 2 uses
  %i.vg = icmp eq ptr %i.vf, null
  br i1 %i.vg, label %ma_device_get_log.exit499, label %bb.cv

bb.cv:                                            ; preds = %ma_device_get_context.exit.i497
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 112
  %i.vi = load ptr, ptr %i.vh, align 8
  br label %ma_device_get_log.exit499

ma_device_get_log.exit499:                        ; preds = %ma_device_get_context.exit.i497, %bb.cv
  %.0.i1.i498 = phi ptr [ %i.vi, %bb.cv ], [ null, %ma_device_get_context.exit.i497 ]
  %i.vj = call i32 @ma_log_post(ptr noundef %.0.i1.i498, i32 noundef 1, ptr noundef nonnull @.str.530) ; 0 uses
  br label %ma_log_post.exit

bb.cw:                                            ; preds = %ma_malloc.exit
  %i.vk = call i32 @eventfd(i32 noundef 0, i32 noundef 0) #61 ; 6 uses
  %i.vl = icmp slt i32 %i.vk, 0
  br i1 %i.vl, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.vm = load ptr, ptr %0, align 8               ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 312
  %i.vo = load ptr, ptr %i.vn, align 8            ; 2 uses
  %.not9.i501 = icmp eq ptr %i.vo, null
  br i1 %.not9.i501, label %ma_device_get_context.exit.i503, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vm, i64 288
  %i.vq = load ptr, ptr %i.vp, align 8
  call void %i.vo(ptr noundef nonnull %i.uz, ptr noundef %i.vq) #61, !inline_history !4
  %.pre598 = load ptr, ptr %0, align 8
  br label %ma_device_get_context.exit.i503

ma_device_get_context.exit.i503:                  ; preds = %bb.cy, %bb.cx
  %i.vr = phi ptr [ %.pre598, %bb.cy ], [ %i.vm, %bb.cx ]
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 440
  %i.vt = load ptr, ptr %i.vs, align 8
  %i.vu = call i32 %i.vt(ptr noundef %i.bj) #61   ; 0 uses
  %i.vv = load ptr, ptr %0, align 8               ; 2 uses
  %i.vw = icmp eq ptr %i.vv, null
  br i1 %i.vw, label %ma_device_get_log.exit505, label %bb.cz

bb.cz:                                            ; preds = %ma_device_get_context.exit.i503
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 112
  %i.vy = load ptr, ptr %i.vx, align 8
  br label %ma_device_get_log.exit505

ma_device_get_log.exit505:                        ; preds = %ma_device_get_context.exit.i503, %bb.cz
  %.0.i1.i504 = phi ptr [ %i.vy, %bb.cz ], [ null, %ma_device_get_context.exit.i503 ]
  %i.vz = call i32 @ma_log_post(ptr noundef %.0.i1.i504, i32 noundef 1, ptr noundef nonnull @.str.531) ; 0 uses
  %i.wa = tail call ptr @__errno_location() #75
  %i.wb = load i32, ptr %i.wa, align 4
  %i.wc = call fastcc i32 @ma_result_from_errno(i32 noundef %i.wb)
  br label %ma_log_post.exit

bb.da:                                            ; preds = %bb.cw
  store i32 %i.vk, ptr %i.uz, align 4
  %i.wd = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  store i16 1, ptr %i.wd, align 4
  %i.we = getelementptr inbounds nuw i8, ptr %i.uz, i64 6
  store i16 0, ptr %i.we, align 2
  %i.wf = load ptr, ptr %0, align 8
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 936
  %i.wh = load ptr, ptr %i.wg, align 8
  %i.wi = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.wj = call i32 %i.wh(ptr noundef %i.bj, ptr noundef nonnull %i.wi, i32 noundef %i.uh) #61 ; 3 uses
  %i.wk = icmp slt i32 %i.wj, 1
  br i1 %i.wk, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  %i.wl = call i32 @close(i32 noundef %i.vk) #61  ; 0 uses
  %i.wm = load ptr, ptr %0, align 8               ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 312
  %i.wo = load ptr, ptr %i.wn, align 8            ; 2 uses
  %.not9.i507 = icmp eq ptr %i.wo, null
  br i1 %.not9.i507, label %ma_device_get_context.exit.i509, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wm, i64 288
  %i.wq = load ptr, ptr %i.wp, align 8
  call void %i.wo(ptr noundef nonnull %i.uz, ptr noundef %i.wq) #61, !inline_history !4
  %.pre597 = load ptr, ptr %0, align 8
  br label %ma_device_get_context.exit.i509

ma_device_get_context.exit.i509:                  ; preds = %bb.dc, %bb.db
  %i.wr = phi ptr [ %.pre597, %bb.dc ], [ %i.wm, %bb.db ]
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 440
  %i.wt = load ptr, ptr %i.ws, align 8
  %i.wu = call i32 %i.wt(ptr noundef %i.bj) #61   ; 0 uses
  %i.wv = load ptr, ptr %0, align 8               ; 2 uses
  %i.ww = icmp eq ptr %i.wv, null
  br i1 %i.ww, label %ma_device_get_log.exit511, label %bb.dd

bb.dd:                                            ; preds = %ma_device_get_context.exit.i509
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 112
  %i.wy = load ptr, ptr %i.wx, align 8
  br label %ma_device_get_log.exit511

ma_device_get_log.exit511:                        ; preds = %ma_device_get_context.exit.i509, %bb.dd
  %.0.i1.i510 = phi ptr [ %i.wy, %bb.dd ], [ null, %ma_device_get_context.exit.i509 ]
  %i.wz = call i32 @ma_log_post(ptr noundef %.0.i1.i510, i32 noundef 1, ptr noundef nonnull @.str.532) ; 0 uses
  br label %ma_log_post.exit

bb.de:                                            ; preds = %bb.da
  %i.xa = icmp eq i32 %3, 2                       ; 2 uses
  br i1 %i.xa, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 3460
  store i32 %i.wj, ptr %i.xb, align 4
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 3448
  store ptr %i.uz, ptr %i.xc, align 8
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 3468
  store i32 %i.vk, ptr %i.xd, align 4
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 3456
  store i32 %i.wj, ptr %i.xe, align 8
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 3440
  store ptr %i.uz, ptr %i.xf, align 8
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 3464
  store i32 %i.vk, ptr %i.xg, align 8
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.xh = load ptr, ptr %0, align 8
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 768
  %i.xj = load ptr, ptr %i.xi, align 8
  %i.xk = call i32 %i.xj(ptr noundef %i.bj) #61   ; 2 uses
  %i.xl = icmp slt i32 %i.xk, 0
  br i1 %i.xl, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.xm = call i32 @close(i32 noundef %i.vk) #61  ; 0 uses
  %i.xn = load ptr, ptr %0, align 8               ; 3 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 312
  %i.xp = load ptr, ptr %i.xo, align 8            ; 2 uses
  %.not9.i513 = icmp eq ptr %i.xp, null
  br i1 %.not9.i513, label %ma_device_get_context.exit.i515, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 288
  %i.xr = load ptr, ptr %i.xq, align 8
  call void %i.xp(ptr noundef nonnull %i.uz, ptr noundef %i.xr) #61, !inline_history !4
  %.pre596 = load ptr, ptr %0, align 8
  br label %ma_device_get_context.exit.i515

ma_device_get_context.exit.i515:                  ; preds = %bb.dj, %bb.di
  %i.xs = phi ptr [ %.pre596, %bb.dj ], [ %i.xn, %bb.di ]
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 440
  %i.xu = load ptr, ptr %i.xt, align 8
  %i.xv = call i32 %i.xu(ptr noundef %i.bj) #61   ; 0 uses
  %i.xw = load ptr, ptr %0, align 8               ; 2 uses
  %i.xx = icmp eq ptr %i.xw, null
  br i1 %i.xx, label %ma_device_get_log.exit517, label %bb.dk

bb.dk:                                            ; preds = %ma_device_get_context.exit.i515
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 112
  %i.xz = load ptr, ptr %i.xy, align 8
  br label %ma_device_get_log.exit517

ma_device_get_log.exit517:                        ; preds = %ma_device_get_context.exit.i515, %bb.dk
  %.0.i1.i516 = phi ptr [ %i.xz, %bb.dk ], [ null, %ma_device_get_context.exit.i515 ]
  %i.ya = call i32 @ma_log_post(ptr noundef %.0.i1.i516, i32 noundef 1, ptr noundef nonnull @.str.533) ; 0 uses
  %i.yb = sub nsw i32 0, %i.xk
  %i.yc = call fastcc i32 @ma_result_from_errno(i32 noundef %i.yb)
  br label %ma_log_post.exit

bb.dl:                                            ; preds = %bb.dh
  br i1 %i.xa, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 3432
  store ptr %i.bj, ptr %i.yd, align 8
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 3473
  store i8 0, ptr %i.ye, align 1
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 3424
  store ptr %i.bj, ptr %i.yf, align 8
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 3472
  store i8 0, ptr %i.yg, align 8
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  store i32 %switch.ext, ptr %i.h, align 4
  store i32 %i.ix, ptr %i.hz, align 8
  store i32 %i.ka, ptr %i.jc, align 4
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
  store i32 %i.mc, ptr %i.yk, align 8
  store i32 %i.ky, ptr %i.kb, align 8
  br label %ma_log_post.exit

ma_log_post.exit:                                 ; preds = %ma_device_get_context.exit.i372, %ma_device_get_context.exit.i, %bb.bf, %bb.ba, %bb.av, %bb.aq, %._crit_edge.i381, %ma_device_get_log.exit374, %._crit_edge.i, %ma_device_get_log.exit, %bb.a, %ma_channel_map_copy.exit, %ma_device_get_log.exit517, %ma_device_get_log.exit511, %ma_device_get_log.exit505, %ma_device_get_log.exit499, %ma_device_get_log.exit493, %ma_device_get_log.exit475, %ma_device_get_log.exit469, %ma_device_get_log.exit463, %ma_device_get_log.exit457, %ma_device_get_log.exit451, %ma_device_get_log.exit445, %ma_device_get_log.exit434, %ma_device_get_log.exit404, %ma_log_post.exit398, %ma_log_post.exit368, %ma_log_post.exit353
  %.6 = phi i32 [ %i.dv, %ma_log_post.exit368 ], [ %i.y, %bb.a ], [ %i.co, %ma_log_post.exit353 ], [ %i.hi, %ma_log_post.exit398 ], [ -200, %ma_device_get_log.exit404 ], [ %i.mx, %ma_device_get_log.exit434 ], [ -4, %ma_device_get_log.exit445 ], [ %i.on, %ma_device_get_log.exit451 ], [ %i.pv, %ma_device_get_log.exit457 ], [ %i.so, %ma_device_get_log.exit475 ], [ -1, %ma_device_get_log.exit493 ], [ -4, %ma_device_get_log.exit499 ], [ %i.wc, %ma_device_get_log.exit505 ], [ -1, %ma_device_get_log.exit511 ], [ %i.yc, %ma_device_get_log.exit517 ], [ 0, %ma_channel_map_copy.exit ], [ %i.qy, %ma_device_get_log.exit463 ], [ %i.rt, %ma_device_get_log.exit469 ], [ %i.ly, %bb.bf ], [ %i.kx, %bb.ba ], [ %i.jz, %bb.av ], [ %i.iw, %bb.aq ], [ -4, %._crit_edge.i ], [ -200, %._crit_edge.i381 ], [ -4, %ma_device_get_log.exit ], [ -4, %ma_device_get_context.exit.i ], [ -200, %ma_device_get_log.exit374 ], [ -200, %ma_device_get_context.exit.i372 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
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

declare i32 @close(i32 noundef) local_unnamed_addr #54

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #54

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #59

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.h = tail call i32 @poll(ptr noundef %2, i64 noundef %i.c, i32 noundef -1) #61
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %ma_log_post.exit.us, label %.split69.us

ma_log_post.exit.us:                              ; preds = %.split.us.preheader, %ma_log_post.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.j = tail call i32 @poll(ptr noundef %2, i64 noundef %i.c, i32 noundef -1) #61
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %ma_log_post.exit.us, label %.split69.us

.split:                                           ; preds = %bb.a, %ma_log_post.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.l = call i32 @poll(ptr noundef %2, i64 noundef %i.c, i32 noundef -1) #61
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %ma_device_get_context.exit.i, label %bb.e

ma_device_get_context.exit.i:                     ; preds = %.split
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %ma_log_post.exit, label %ma_device_get_log.exit

ma_device_get_log.exit:                           ; preds = %ma_device_get_context.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %ma_log_post.exit, label %bb.b

bb.b:                                             ; preds = %ma_device_get_log.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 104 ; 2 uses
  %i.t = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.s) #61 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %.not21.i = icmp eq i32 %i.v, 0
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.w = phi i32 [ %i.ab, %bb.d ], [ %i.v, %bb.b ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.y(ptr noundef %i.aa, i32 noundef 2, ptr noundef nonnull @.str.551) #61, !inline_history !5
  %.pre.i = load i32, ptr %i.u, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ab = phi i32 [ %i.w, %.lr.ph.i ], [ %.pre.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = icmp samesign ult i64 %indvars.iv.next.i, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d, %bb.b
  %i.ae = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.s) #61 ; 0 uses
  br label %ma_log_post.exit

bb.e:                                             ; preds = %.split
  %i.af = load i16, ptr %i.d, align 2
  %i.ag = and i16 %i.af, 1
  %.not = icmp eq i16 %i.ag, 0
  br i1 %.not, label %bb.m, label %.split69.us

.split69.us:                                      ; preds = %bb.e, %ma_log_post.exit.us, %.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  %i.ah = load i32, ptr %2, align 4
  %i.ai = call i64 @read(i32 noundef %i.ah, ptr noundef nonnull %i.b, i64 noundef 8) #61
  %i.aj = and i64 %i.ai, 2147483648
  %.not28 = icmp eq i64 %i.aj, 0
  br i1 %.not28, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.split69.us
  br i1 %i.g, label %ma_log_post.exit40, label %ma_device_get_context.exit.i29

ma_device_get_context.exit.i29:                   ; preds = %bb.f
  %i.ak = load ptr, ptr %0, align 8               ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %ma_log_post.exit40, label %ma_device_get_log.exit31

ma_device_get_log.exit31:                         ; preds = %ma_device_get_context.exit.i29
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.an = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %ma_log_post.exit40, label %bb.g

bb.g:                                             ; preds = %ma_device_get_log.exit31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 104 ; 2 uses
  %i.aq = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ap) #61 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 64 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %.not21.i32 = icmp eq i32 %i.as, 0
  br i1 %.not21.i32, label %._crit_edge.i38, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.g, %bb.i
  %i.at = phi i32 [ %i.ay, %bb.i ], [ %i.as, %bb.g ]
  %indvars.iv.i34 = phi i64 [ %indvars.iv.next.i37, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %indvars.iv.i34 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i35 = icmp eq ptr %i.av, null
  br i1 %.not.i35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.av(ptr noundef %i.ax, i32 noundef 1, ptr noundef nonnull @.str.552) #61, !inline_history !5
  %.pre.i36 = load i32, ptr %i.ar, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i33
  %i.ay = phi i32 [ %i.at, %.lr.ph.i33 ], [ %.pre.i36, %bb.h ] ; 2 uses
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i34, 1 ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next.i37, %i.az
  br i1 %i.ba, label %.lr.ph.i33, label %._crit_edge.i38

._crit_edge.i38:                                  ; preds = %bb.i, %bb.g
  %i.bb = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ap) #61 ; 0 uses
  br label %ma_log_post.exit40

ma_log_post.exit40:                               ; preds = %bb.f, %ma_device_get_context.exit.i29, %ma_device_get_log.exit31, %._crit_edge.i38
  %i.bc = tail call ptr @__errno_location() #75
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = call fastcc i32 @ma_result_from_errno(i32 noundef %i.bd)
  br label %bb.l

bb.j:                                             ; preds = %.split69.us
  br i1 %i.g, label %ma_device_get_log.exit43, label %ma_device_get_context.exit.i41

ma_device_get_context.exit.i41:                   ; preds = %bb.j
  %i.bf = load ptr, ptr %0, align 8               ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %ma_device_get_log.exit43, label %bb.k

bb.k:                                             ; preds = %ma_device_get_context.exit.i41
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %ma_device_get_log.exit43
end_hunk_18
begin_hunk_19_@drwav__read_cue_to_metadata_obj:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.q
  store ptr %i.x, ptr %i.r, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr %i.w, ptr %i.y, align 8
  %i.z = load i32, ptr %i.j, align 8
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = load ptr, ptr %i.e, align 8
  %i.ak = call i64 %i.ai(ptr noundef %i.aj, ptr noundef nonnull %i.b, i64 noundef 24) #61, !inline_history !1223 ; 2 uses
  %i.al = add i64 %i.ak, %.04245                  ; 3 uses
  %i.am = icmp eq i64 %i.ak, 24
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.an = load i32, ptr %i.b, align 16
  %i.ao = load ptr, ptr %i.y, align 8
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %indvars.iv
  store i32 %i.an, ptr %i.ap, align 4
  %i.aq = load i32, ptr %i.aa, align 4
  %i.ar = load ptr, ptr %i.y, align 8
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.aq, ptr %i.at, align 4
  %i.au = load i8, ptr %i.ab, align 8
  %i.av = load ptr, ptr %i.y, align 8
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i8 %i.au, ptr %i.ax, align 4
  %i.ay = load i8, ptr %i.ac, align 1
  %i.az = load ptr, ptr %i.y, align 8
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 9
  store i8 %i.ay, ptr %i.bb, align 1
  %i.bc = load i8, ptr %i.ad, align 2
  %i.bd = load ptr, ptr %i.y, align 8
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  store i8 %i.bc, ptr %i.bf, align 2
  %i.bg = load i8, ptr %i.ae, align 1
  %i.bh = load ptr, ptr %i.y, align 8
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 11
  store i8 %i.bg, ptr %i.bj, align 1
  %i.bk = load i32, ptr %i.af, align 4
  %i.bl = load ptr, ptr %i.y, align 8
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 %i.bk, ptr %i.bn, align 4
  %i.bo = load i32, ptr %i.ag, align 16
  %i.bp = load ptr, ptr %i.y, align 8
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i32 %i.bo, ptr %i.br, align 4
  %i.bs = load i32, ptr %i.ah, align 4
  %i.bt = load ptr, ptr %i.y, align 8
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  store i32 %i.bs, ptr %i.bv, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bw = load i32, ptr %i.j, align 8
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp samesign ult i64 %indvars.iv.next, %i.bx
  br i1 %i.by, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.b, %bb.d, %bb.c, %bb.f, %bb.a
  %.036 = phi i64 [ 0, %bb.a ], [ 4, %bb.d ], [ %i.al, %bb.f ], [ %i.g, %bb.b ], [ 4, %bb.c ], [ %i.al, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i64 %.036
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @drwav__read_bext_to_metadata_obj(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 602, 0) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [602 x i8], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i64 %i.b(ptr noundef %i.d, ptr noundef nonnull %i.a, i64 noundef 602) #61, !inline_history !1223 ; 2 uses
  %i.f = icmp eq i64 %i.e, 602
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store i32 32, ptr %1, align 8
  %i.g = load i8, ptr %i.a, align 16
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %drwav_buffer_reader_seek.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 3 uses
  %.045.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.a, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.045.i.i, i64 1 ; 2 uses
  %i.i = add nuw nsw i64 %.06.i.i, 1              ; 3 uses
  %i.j = load i8, ptr %i.h, align 1
  %i.k = icmp ne i8 %i.j, 0
  %i.l = icmp samesign ult i64 %.06.i.i, 255
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph.i.i, label %drwav__strlen_clamped.exit.i

drwav__strlen_clamped.exit.i:                     ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.06.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store ptr %i.q, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.a, i64 %i.i, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i8 0, ptr %i.r, align 1
  br label %drwav_buffer_reader_seek.exit

drwav_buffer_reader_seek.exit:                    ; preds = %bb.b, %drwav__strlen_clamped.exit.i
  %.0.i = phi ptr [ %i.o, %drwav__strlen_clamped.exit.i ], [ null, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 3 uses
  %i.u = load i8, ptr %i.t, align 16
  %.not.i.i44 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i44, label %drwav_buffer_reader_seek.exit52, label %.lr.ph.i.i45

.lr.ph.i.i45:                                     ; preds = %drwav_buffer_reader_seek.exit, %.lr.ph.i.i45
  %.06.i.i46 = phi i64 [ %i.w, %.lr.ph.i.i45 ], [ 0, %drwav_buffer_reader_seek.exit ] ; 3 uses
  %.045.i.i47 = phi ptr [ %i.v, %.lr.ph.i.i45 ], [ %i.t, %drwav_buffer_reader_seek.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.045.i.i47, i64 1 ; 2 uses
  %i.w = add nuw nsw i64 %.06.i.i46, 1            ; 3 uses
  %i.x = load i8, ptr %i.v, align 1
  %i.y = icmp ne i8 %i.x, 0
  %i.z = icmp samesign ult i64 %.06.i.i46, 31
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %.lr.ph.i.i45, label %drwav__strlen_clamped.exit.i48

drwav__strlen_clamped.exit.i48:                   ; preds = %.lr.ph.i.i45
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.06.i.i46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store ptr %i.ae, ptr %i.ab, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.t, i64 %i.w, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.w
  store i8 0, ptr %i.af, align 1
  br label %drwav_buffer_reader_seek.exit52

drwav_buffer_reader_seek.exit52:                  ; preds = %drwav_buffer_reader_seek.exit, %drwav__strlen_clamped.exit.i48
  %.0.i49 = phi ptr [ %i.ac, %drwav__strlen_clamped.exit.i48 ], [ null, %drwav_buffer_reader_seek.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.0.i49, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 16
  %.not.i.i53 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i53, label %drwav_buffer_reader_seek.exit61, label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %drwav_buffer_reader_seek.exit52, %.lr.ph.i.i54
  %.06.i.i55 = phi i64 [ %i.ak, %.lr.ph.i.i54 ], [ 0, %drwav_buffer_reader_seek.exit52 ] ; 3 uses
  %.045.i.i56 = phi ptr [ %i.aj, %.lr.ph.i.i54 ], [ %i.ah, %drwav_buffer_reader_seek.exit52 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.045.i.i56, i64 1 ; 2 uses
  %i.ak = add nuw nsw i64 %.06.i.i55, 1           ; 3 uses
  %i.al = load i8, ptr %i.aj, align 1
  %i.am = icmp ne i8 %i.al, 0
  %i.an = icmp samesign ult i64 %.06.i.i55, 31
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph.i.i54, label %drwav__strlen_clamped.exit.i57

drwav__strlen_clamped.exit.i57:                   ; preds = %.lr.ph.i.i54
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.06.i.i55
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store ptr %i.as, ptr %i.ap, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aq, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.ah, i64 %i.ak, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ak
  store i8 0, ptr %i.at, align 1
  br label %drwav_buffer_reader_seek.exit61

drwav_buffer_reader_seek.exit61:                  ; preds = %drwav_buffer_reader_seek.exit52, %drwav__strlen_clamped.exit.i57
  %.0.i58 = phi ptr [ %i.aq, %drwav__strlen_clamped.exit.i57 ], [ null, %drwav_buffer_reader_seek.exit52 ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.0.i58, ptr %i.au, align 8
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
  store i64 %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 346
  %i.bf = load i16, ptr %i.be, align 2
  store i16 %i.bf, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  store ptr %i.bi, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.bh, ptr %i.bj, align 8
  %i.bk = icmp eq ptr %i.bh, null
  br i1 %i.bk, label %drwav_buffer_reader_read.exit, label %bb.c

bb.c:                                             ; preds = %drwav_buffer_reader_seek.exit61
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bh, ptr noundef nonnull align 4 dereferenceable(64) %i.bl, i64 64, i1 false)
  br label %drwav_buffer_reader_read.exit

drwav_buffer_reader_read.exit:                    ; preds = %drwav_buffer_reader_seek.exit61, %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 412
  %i.bo = load <4 x i16>, ptr %i.bn, align 4
  store <4 x i16> %i.bo, ptr %i.bm, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 420
  %i.br = load i16, ptr %i.bq, align 4
  store i16 %i.br, ptr %i.bp, align 8
  %i.bs = add i64 %2, -602                        ; 2 uses
  %.not = icmp eq i64 %i.bs, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %drwav_buffer_reader_read.exit
  %i.bt = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 %2
  %i.bv = getelementptr i8, ptr %i.bu, i64 -601
  store ptr %i.bv, ptr %i.bg, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store ptr %i.bt, ptr %i.bw, align 8
  %i.bx = load ptr, ptr %0, align 8
  %i.by = load ptr, ptr %i.c, align 8
  %i.bz = call i64 %i.bx(ptr noundef %i.by, ptr noundef %i.bt, i64 noundef range(i64 0, -602) %i.bs) #61, !inline_history !1223
  %i.ca = add i64 %i.bz, 602                      ; 2 uses
  %i.cb = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1
  %.not3.i = icmp eq i8 %i.cc, 0
  br i1 %.not3.i, label %.sink.split, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %scevgep.i = getelementptr i8, ptr %i.cb, i64 1
  %strlen.i = call i64 @strlen(ptr nonnull readonly dereferenceable(1) %scevgep.i)
  %i.cd = trunc i64 %strlen.i to i32
  %i.ce = add i32 %i.cd, 1
  br label %.sink.split

bb.e:                                             ; preds = %drwav_buffer_reader_read.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr null, ptr %i.cf, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph.preheader.i, %bb.d, %bb.e
  %.sink = phi i32 [ 0, %bb.e ], [ 0, %bb.d ], [ %i.ce, %.lr.ph.preheader.i ]
  %.1.ph = phi i64 [ 602, %bb.e ], [ %i.ca, %bb.d ], [ %i.ca, %.lr.ph.preheader.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %.sink, ptr %i.cg, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi i64 [ %i.e, %bb.a ], [ %.1.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @drwav__read_list_label_or_note_to_metadata_obj(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef range(i64 4, 4294967296) %2, i32 noundef range(i32 64, 129) %3) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i64 %i.b(ptr noundef %i.d, ptr noundef nonnull %i.a, i64 noundef 4) #61, !inline_history !1223 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i32 %3, ptr %1, align 8
  %i.g = load i32, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.g, ptr %i.h, align 8
  %i.i = trunc nuw i64 %2 to i32                  ; 2 uses
  %i.j = add i32 %i.i, -4                         ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.i, -5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.k, ptr %i.l, align 4
  %i.m = zext i32 %i.j to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.o, ptr %i.q, align 8
  %i.r = load ptr, ptr %0, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = call i64 %i.r(ptr noundef %i.s, ptr noundef %i.o, i64 noundef range(i64 0, -602) %i.m) #61, !inline_history !1223
  %i.u = add i64 %i.t, 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ 4, %bb.d ], [ %i.u, %bb.c ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @drwav__read_list_labelled_cue_region_to_metadata_obj(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef range(i64 20, 4294967296) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i64 %i.b(ptr noundef %i.d, ptr noundef nonnull %i.a, i64 noundef 20) #61, !inline_history !1223 ; 2 uses
  %i.f = icmp eq i64 %i.e, 20
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i32 256, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x i32>, ptr %i.a, align 16
  store <2 x i32> %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load <4 x i8>, ptr %i.i, align 8
  store <4 x i8> %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load <4 x i16>, ptr %i.l, align 4
  store <4 x i16> %i.n, ptr %i.m, align 4
  %i.o = trunc nuw i64 %2 to i32                  ; 2 uses
  %i.p = add i32 %i.o, -20                        ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = add i32 %i.o, -21
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.q, ptr %i.r, align 4
  %i.s = zext i32 %i.p to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store ptr %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.u, ptr %i.w, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = load ptr, ptr %i.c, align 8
  %i.z = call i64 %i.x(ptr noundef %i.y, ptr noundef %i.u, i64 noundef range(i64 0, -602) %i.s) #61, !inline_history !1223
  %i.aa = add i64 %i.z, 20
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 0, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr null, ptr %i.ac, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ 20, %bb.d ], [ %i.aa, %bb.c ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @drwav__metadata_process_info_text_chunk(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i32 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = trunc nuw i64 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c
end_hunk_19
