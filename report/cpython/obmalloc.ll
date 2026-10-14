Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/obmalloc?download=true
inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@mi_process_init:bb.a

mi_atomic_once.exit:                              ; preds = %bb.a
  %i.c = cmpxchg ptr @mi_process_init.process_init, i64 0, i64 1 acq_rel acquire, align 8
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %bb.b, label %mi_atomic_once.exit.thread

bb.b:                                             ; preds = %mi_atomic_once.exit
  store i8 1, ptr @_mi_process_is_initialized, align 1, !tbaa !142
  %i.e = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #57, !srcloc !99
  %i.f = ptrtoint ptr %i.e to i64
  tail call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.18, i64 noundef %i.f)
  %.b.i = load i1, ptr @mi_process_setup_auto_thread_done.tls_initialized, align 1
  br i1 %.b.i, label %mi_process_setup_auto_thread_done.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @mi_process_setup_auto_thread_done.tls_initialized, align 1
  %i.g = tail call i32 @pthread_key_create(ptr noundef nonnull @_mi_heap_default_key, ptr noundef nonnull @mi_pthread_done) #52 ; 0 uses
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  store ptr @_mi_heap_main, ptr %i.h, align 8, !tbaa !95
  %i.i = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !54 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.i, -1
  br i1 %.not.i.i.i, label %mi_process_setup_auto_thread_done.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @pthread_setspecific(i32 noundef %i.i, ptr noundef nonnull @_mi_heap_main) #52 ; 0 uses
  br label %mi_process_setup_auto_thread_done.exit

mi_process_setup_auto_thread_done.exit:           ; preds = %bb.b, %bb.c, %bb.d
  %i.k = tail call i64 @sysconf(i32 noundef 30) #52 ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %mi_process_setup_auto_thread_done.exit
  store i64 %i.k, ptr @mi_os_mem_config.0, align 8, !tbaa !121
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %mi_process_setup_auto_thread_done.exit
  store i1 true, ptr @mi_os_mem_config.1, align 8
  %i.m = tail call i64 (i64, ...) @syscall(i64 noundef 2, ptr noundef nonnull @.str.156, i32 noundef 0, i32 noundef 0) #52
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.g, label %_mi_os_init.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.p = call i64 (i64, ...) @syscall(i64 noundef 0, i32 noundef range(i32 0, -2147483648) %i.n, ptr noundef nonnull %i.a, i64 noundef 32) #52
  %i.q = call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef range(i32 0, -2147483648) %i.n) #52 ; 0 uses
  %i.r = icmp slt i64 %i.p, 1
  %i.s = load i8, ptr %i.a, align 16
  %i.t = and i8 %i.s, -2
  %i.u = icmp eq i8 %i.t, 48
  %.0.i.i.i = select i1 %i.r, i1 true, i1 %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  %i.v = zext i1 %.0.i.i.i to i8
  br label %_mi_os_init.exit

_mi_os_init.exit:                                 ; preds = %bb.f, %bb.g
  %.1.i.i.i = phi i8 [ %i.v, %bb.g ], [ 1, %bb.f ]
  store i8 %.1.i.i.i, ptr @mi_os_mem_config.3, align 8, !tbaa !136
  call fastcc void @mi_heap_main_init()
  call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.19, i32 noundef 0)
  call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21)
  call void @mi_process_init(), !inline_history !173
  %i.w = call fastcc zeroext i1 @_mi_heap_init(), !inline_history !173
  br i1 %i.w, label %mi_thread_init.exit, label %bb.h

bb.h:                                             ; preds = %_mi_os_init.exit
  %i.x = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.y = add i64 %i.x, 1                          ; 2 uses
  %i.z = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.0.i.i.i.i = phi i64 [ %i.z, %bb.h ], [ %i.ad, %bb.j ] ; 2 uses
  %i.aa = icmp slt i64 %.0.i.i.i.i, %i.y
  br i1 %i.aa, label %bb.j, label %_mi_stat_increase.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ab = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i.i, i64 %i.y release monotonic, align 8 ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  %i.ad = extractvalue { i64, i1 } %i.ab, 0
  br i1 %i.ac, label %_mi_stat_increase.exit.i, label %bb.i, !llvm.loop !10

_mi_stat_increase.exit.i:                         ; preds = %bb.j, %bb.i
  %i.ae = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 288), i64 1 monotonic, align 8 ; 0 uses
  %i.af = atomicrmw add ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_thread_init.exit

mi_thread_init.exit:                              ; preds = %_mi_os_init.exit, %_mi_stat_increase.exit.i
  call void @mi_process_init(), !inline_history !535
  %i.ag = call fastcc zeroext i1 @_mi_heap_init(), !inline_history !535
  br i1 %i.ag, label %mi_stats_get_default.exit, label %bb.k

bb.k:                                             ; preds = %mi_thread_init.exit
  %i.ah = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.ai = add i64 %i.ah, 1                        ; 2 uses
  %i.aj = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.0.i.i.i14 = phi i64 [ %i.aj, %bb.k ], [ %i.an, %bb.m ] ; 2 uses
  %i.ak = icmp slt i64 %.0.i.i.i14, %i.ai
  br i1 %i.ak, label %bb.m, label %_mi_stat_increase.exit

bb.m:                                             ; preds = %bb.l
  %i.al = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i14, i64 %i.ai release monotonic, align 8 ; 2 uses
  %i.am = extractvalue { i64, i1 } %i.al, 1
  %i.an = extractvalue { i64, i1 } %i.al, 0
  br i1 %i.am, label %_mi_stat_increase.exit, label %bb.l, !llvm.loop !10

_mi_stat_increase.exit:                           ; preds = %bb.l, %bb.m
  %i.ao = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 288), i64 1 monotonic, align 8 ; 0 uses
  %i.ap = atomicrmw add ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_stats_get_default.exit

mi_stats_get_default.exit:                        ; preds = %mi_thread_init.exit, %_mi_stat_increase.exit
  %i.aq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !95
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72
  %i.at = getelementptr i8, ptr %i.as, i64 968    ; 2 uses
  %.not.i9 = icmp eq ptr %i.at, @_mi_stats_main
  br i1 %.not.i9, label %bb.o, label %bb.n

bb.n:                                             ; preds = %mi_stats_get_default.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.at, i8 0, i64 640, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %mi_stats_get_default.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(640) @_mi_stats_main, i8 0, i64 640, i1 false)
  %i.au = load i64, ptr @mi_process_start, align 8, !tbaa !128
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.p, label %mi_stats_reset.exit

bb.p:                                             ; preds = %bb.o
  %i.aw = load i64, ptr @mi_clock_diff, align 8, !tbaa !128
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.q, label %_mi_clock_start.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #52
  %i.ay = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #52 ; 0 uses
  %i.az = load i64, ptr %2, align 8, !tbaa !153
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !154
  %.neg.i = sdiv i64 %i.bb, -1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #52
  %i.bc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #52 ; 0 uses
  %i.bd = load i64, ptr %1, align 8, !tbaa !153
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !154
  %i.bg = sdiv i64 %i.bf, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #52
  %reass.add.i = sub i64 %i.bd, %i.az
  %reass.mul.i = mul i64 %reass.add.i, 1000
  %.neg2.i = add nsw i64 %i.bg, %.neg.i
  %i.bh = add i64 %.neg2.i, %reass.mul.i
  store i64 %i.bh, ptr @mi_clock_diff, align 8, !tbaa !128
  br label %_mi_clock_start.exit

_mi_clock_start.exit:                             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #52
  %i.bi = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #52 ; 0 uses
  %i.bj = load i64, ptr %0, align 8, !tbaa !153
  %i.bk = mul i64 %i.bj, 1000
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !154
  %i.bn = sdiv i64 %i.bm, 1000000
  %i.bo = add i64 %i.bn, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #52
  store i64 %i.bo, ptr @mi_process_start, align 8, !tbaa !128
  br label %mi_stats_reset.exit

mi_stats_reset.exit:                              ; preds = %bb.o, %_mi_clock_start.exit
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 232), align 8, !tbaa !133
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.r, label %mi_option_is_enabled.exit, !prof !61

bb.r:                                             ; preds = %mi_stats_reset.exit
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 224)), !inline_history !141
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %mi_stats_reset.exit, %bb.r
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 224), align 16, !tbaa !135 ; 2 uses
  %.not16 = icmp eq i64 %i.br, 0
  br i1 %.not16, label %mi_reserve_huge_os_pages_interleave.exit, label %bb.s

bb.s:                                             ; preds = %mi_option_is_enabled.exit
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 232), align 8, !tbaa !133
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.t, label %mi_option_get_clamp.exit, !prof !61

bb.t:                                             ; preds = %bb.s
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 224)), !inline_history !134
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 224), align 16, !tbaa !135
  br label %mi_option_get_clamp.exit

mi_option_get_clamp.exit:                         ; preds = %bb.s, %bb.t
  %i.bu = phi i64 [ %i.br, %bb.s ], [ %.pre, %bb.t ] ; 2 uses
  %i.bv = call i64 @llvm.smin.i64(i64 %i.bu, i64 131072) ; 2 uses
  %i.bw = call i64 @llvm.smax.i64(i64 %i.bv, i64 0) ; 5 uses
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 264), align 8, !tbaa !133
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.u, label %mi_option_get.exit, !prof !61

bb.u:                                             ; preds = %mi_option_get_clamp.exit
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 256)), !inline_history !134
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %mi_option_get_clamp.exit, %bb.u
  %i.bz = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 256), align 16, !tbaa !135 ; 2 uses
  %.not = icmp eq i64 %i.bz, -1
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %mi_option_get.exit
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = mul nuw nsw i64 %i.bw, 500
  %i.cc = call range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %i.bw, i32 noundef %i.ca, i64 noundef %i.cb, i1 noundef zeroext false, ptr noundef null) ; 0 uses
  br label %mi_reserve_huge_os_pages_interleave.exit

bb.w:                                             ; preds = %mi_option_get.exit
  %i.cd = mul nuw nsw i64 %i.bw, 500
  %i.ce = icmp slt i64 %i.bu, 1
  br i1 %i.ce, label %mi_reserve_huge_os_pages_interleave.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = load atomic i64, ptr @_mi_numa_node_count monotonic, align 8 ; 2 uses
  %.not.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i, label %bb.y, label %_mi_os_numa_node_count.exit.i, !prof !61

bb.y:                                             ; preds = %bb.x
  %i.cg = call i64 @_mi_os_numa_node_count_get()
  br label %_mi_os_numa_node_count.exit.i

_mi_os_numa_node_count.exit.i:                    ; preds = %bb.y, %bb.x
  %spec.store.select.i = phi i64 [ %i.cf, %bb.x ], [ %i.cg, %bb.y ] ; 4 uses
  %i.ch = udiv i64 %i.bw, %spec.store.select.i
  %i.ci = urem i64 %i.bw, %spec.store.select.i
  %i.cj = udiv i64 %i.cd, %spec.store.select.i
  %i.ck = add nuw nsw i64 %i.cj, 50
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %_mi_os_numa_node_count.exit.i
  %.03349.i = phi i64 [ 0, %_mi_os_numa_node_count.exit.i ], [ %i.cp, %bb.aa ] ; 3 uses
  %.03648.i = phi i64 [ %i.bv, %_mi_os_numa_node_count.exit.i ], [ %.137.i, %bb.aa ] ; 2 uses
  %i.cl = icmp ult i64 %.03349.i, %i.ci
  %i.cm = zext i1 %i.cl to i64
  %spec.select.i = add nuw nsw i64 %i.ch, %i.cm   ; 3 uses
  %i.cn = trunc i64 %.03349.i to i32
  %i.co = call range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %spec.select.i, i32 noundef %i.cn, i64 noundef %i.ck, i1 noundef zeroext false, ptr noundef null)
  %.not43.i = icmp eq i32 %i.co, 0
  br i1 %.not43.i, label %bb.aa, label %mi_reserve_huge_os_pages_interleave.exit

bb.aa:                                            ; preds = %bb.z
  %.137.i = call i64 @llvm.usub.sat.i64(i64 %.03648.i, i64 %spec.select.i)
  %i.cp = add nuw i64 %.03349.i, 1                ; 2 uses
  %i.cq = icmp uge i64 %i.cp, %spec.store.select.i
  %i.cr = icmp ule i64 %.03648.i, %spec.select.i
  %.not46.i = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %.not46.i, label %mi_reserve_huge_os_pages_interleave.exit, label %bb.z, !llvm.loop !15

mi_reserve_huge_os_pages_interleave.exit:         ; preds = %bb.aa, %bb.z, %bb.w, %bb.v, %mi_option_is_enabled.exit
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 296), align 8, !tbaa !133
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.ab, label %mi_option_is_enabled.exit11, !prof !61

bb.ab:                                            ; preds = %mi_reserve_huge_os_pages_interleave.exit
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 288)), !inline_history !141
  br label %mi_option_is_enabled.exit11

mi_option_is_enabled.exit11:                      ; preds = %mi_reserve_huge_os_pages_interleave.exit, %bb.ab
  %i.cu = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 288), align 16, !tbaa !135 ; 2 uses
  %.not17 = icmp eq i64 %i.cu, 0
  br i1 %.not17, label %mi_atomic_once.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %mi_option_is_enabled.exit11
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 296), align 8, !tbaa !133
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.ad, label %mi_option_get.exit13, !prof !61

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 288)), !inline_history !134
  %.pr = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 288), align 16, !tbaa !135
  br label %mi_option_get.exit13

mi_option_get.exit13:                             ; preds = %bb.ac, %bb.ad
  %i.cx = phi i64 [ %i.cu, %bb.ac ], [ %.pr, %bb.ad ] ; 2 uses
  %i.cy = icmp sgt i64 %i.cx, 0
  br i1 %i.cy, label %bb.ae, label %mi_atomic_once.exit.thread

bb.ae:                                            ; preds = %mi_option_get.exit13
  %i.cz = shl i64 %i.cx, 10
  %i.da = call range(i32 0, 13) i32 @mi_reserve_os_memory_ex(i64 noundef %i.cz, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef null) ; 0 uses
  br label %mi_atomic_once.exit.thread

mi_atomic_once.exit.thread:                       ; preds = %bb.a, %mi_option_get.exit13, %bb.ae, %mi_atomic_once.exit, %mi_option_is_enabled.exit11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @_mi_heap_init() unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.mi_memid_s, align 8         ; 6 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.c = icmp ne ptr %i.b, @_mi_heap_empty        ; 2 uses
  br i1 %i.c, label %_mi_heap_set_default_direct.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2848), align 8, !tbaa !167 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_mi_is_main_thread.exit.thread, label %_mi_is_main_thread.exit

_mi_is_main_thread.exit:                          ; preds = %bb.b
  %i.f = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #57, !srcloc !99
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %_mi_is_main_thread.exit.thread, label %bb.d

_mi_is_main_thread.exit.thread:                   ; preds = %bb.b, %_mi_is_main_thread.exit
  tail call fastcc void @mi_heap_main_init()
  store ptr @_mi_heap_main, ptr %i.a, align 8, !tbaa !95
  %i.i = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !54 ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, -1
  br i1 %.not.i.i, label %_mi_heap_set_default_direct.exit, label %bb.c

bb.c:                                             ; preds = %_mi_is_main_thread.exit.thread
  %i.j = tail call i32 @pthread_setspecific(i32 noundef %i.i, ptr noundef nonnull @_mi_heap_main) #52 ; 0 uses
  br label %_mi_heap_set_default_direct.exit

bb.d:                                             ; preds = %_mi_is_main_thread.exit
  %i.k = load atomic ptr, ptr @td_cache monotonic, align 16
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = atomicrmw xchg ptr @td_cache, ptr null acq_rel, align 8 ; 2 uses
  %.not27.i = icmp eq ptr %i.l, null
  br i1 %.not27.i, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 8) monotonic, align 8
  %.not.1.i = icmp eq ptr %i.m, null
  br i1 %.not.1.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 8), ptr null acq_rel, align 8 ; 2 uses
  %.not27.1.i = icmp eq ptr %i.n, null
  br i1 %.not27.1.i, label %bb.h, label %.loopexit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 16) monotonic, align 16
  %.not.2.i = icmp eq ptr %i.o, null
  br i1 %.not.2.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 16), ptr null acq_rel, align 8 ; 2 uses
  %.not27.2.i = icmp eq ptr %i.p, null
  br i1 %.not27.2.i, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.q = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 24) monotonic, align 8
  %.not.3.i = icmp eq ptr %i.q, null
  br i1 %.not.3.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 24), ptr null acq_rel, align 8 ; 2 uses
  %.not27.3.i = icmp eq ptr %i.r, null
  br i1 %.not27.3.i, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.s = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 32) monotonic, align 16
  %.not.4.i = icmp eq ptr %i.s, null
  br i1 %.not.4.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 32), ptr null acq_rel, align 8 ; 2 uses
  %.not27.4.i = icmp eq ptr %i.t, null
  br i1 %.not27.4.i, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.u = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 40) monotonic, align 8
  %.not.5.i = icmp eq ptr %i.u, null
  br i1 %.not.5.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 40), ptr null acq_rel, align 8 ; 2 uses
  %.not27.5.i = icmp eq ptr %i.v, null
  br i1 %.not27.5.i, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.w = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 48) monotonic, align 16
  %.not.6.i = icmp eq ptr %i.w, null
  br i1 %.not.6.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 48), ptr null acq_rel, align 8 ; 2 uses
  %.not27.6.i = icmp eq ptr %i.x, null
  br i1 %.not27.6.i, label %bb.r, label %.loopexit.i

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.y = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 56) monotonic, align 8
  %.not.7.i = icmp eq ptr %i.y, null
  br i1 %.not.7.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 56), ptr null acq_rel, align 8 ; 2 uses
  %.not27.7.i = icmp eq ptr %i.z, null
  br i1 %.not27.7.i, label %bb.t, label %.loopexit.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aa = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 64) monotonic, align 16
  %.not.8.i = icmp eq ptr %i.aa, null
  br i1 %.not.8.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ab = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 64), ptr null acq_rel, align 8 ; 2 uses
  %.not27.8.i = icmp eq ptr %i.ab, null
  br i1 %.not27.8.i, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ac = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 72) monotonic, align 8
  %.not.9.i = icmp eq ptr %i.ac, null
  br i1 %.not.9.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ad = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 72), ptr null acq_rel, align 8 ; 2 uses
  %.not27.9.i = icmp eq ptr %i.ad, null
  br i1 %.not27.9.i, label %bb.x, label %.loopexit.i

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ae = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 80) monotonic, align 16
  %.not.10.i = icmp eq ptr %i.ae, null
  br i1 %.not.10.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.af = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 80), ptr null acq_rel, align 8 ; 2 uses
  %.not27.10.i = icmp eq ptr %i.af, null
  br i1 %.not27.10.i, label %bb.z, label %.loopexit.i

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ag = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 88) monotonic, align 8
  %.not.11.i = icmp eq ptr %i.ag, null
  br i1 %.not.11.i, label %bb.ab, label %bb.aa

end_hunk_0
