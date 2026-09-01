Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/io_uring?download=true
inline.NumInlined: 615
inline.NumDeleted: 265
begin_hunk_0_@io_uring_create:bb.a
  %i.h = phi i32 [ %.pre, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %i.i = and i32 %i.h, 8193
  %or.cond = icmp eq i32 %i.i, 8192
  %i.j = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  br i1 %or.cond, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.l = or i32 %i.k, 64                          ; 2 uses
  store i32 %i.l, ptr %i.j, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.m = phi i32 [ %i.l, %bb.f ], [ %i.k, %bb.e ] ; 3 uses
  %i.n = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %i.o = and i32 %i.m, 64
  %i.p = and i32 %i.h, 1
  %i.q = or disjoint i32 %i.o, %i.p
  %or.cond98 = icmp ne i32 %i.q, 0                ; 2 uses
  %i.r = or i32 %i.m, 128
  %i.s = select i1 %or.cond98, i32 %i.r, i32 %i.m ; 3 uses
  %i.t = and i32 %i.s, 64
  %.not73 = icmp eq i32 %i.t, 0                   ; 2 uses
  %i.u = or i32 %i.s, 512
  %i.v = select i1 %.not73, i32 %i.u, i32 %i.s    ; 2 uses
  %i.w = or i1 %or.cond98, %.not73
  %i.x = and i32 %i.h, 3
  %or.cond85 = icmp eq i32 %i.x, 1                ; 2 uses
  %i.y = or i32 %i.v, 256
  %spec.select = select i1 %or.cond85, i32 %i.y, i32 %i.v ; 2 uses
  %i.z = or i1 %i.w, %or.cond85
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  store i32 %spec.select, ptr %i.n, align 4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.aa = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #29, !srcloc !62
  %i.ab = inttoptr i64 %i.aa to ptr               ; 7 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 2
  %.not.i.i.not = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = or i32 %spec.select, 2048
  store i32 %i.af, ptr %i.n, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = tail call zeroext i1 @ns_capable_noaudit(ptr noundef nonnull @init_user_ns, i32 noundef 14) #24
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %i.ab, i64 1992
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = tail call fastcc ptr @get_uid(ptr noundef %i.ak) #27, !srcloc !268 ; 0 uses
  %i.am = getelementptr i8, ptr %i.b, i64 960
  store ptr %i.ak, ptr %i.am, align 64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.an = load i32, ptr %i.b, align 64
  %i.ao = and i32 %i.an, 258
  %.not76 = icmp eq i32 %i.ao, 0
  %spec.select99 = select i1 %.not76, i32 2, i32 3
  %i.ap = getelementptr i8, ptr %i.b, i64 56
  store i32 %spec.select99, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %i.ab, i64 2080
  %i.ar = load ptr, ptr %i.aq, align 32           ; 2 uses
  %.not77 = icmp eq ptr %i.ar, null
  br i1 %.not77, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @io_ctx_restriction_clone(ptr noundef %i.b, ptr noundef nonnull %i.ar) #27, !srcloc !269
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = getelementptr i8, ptr %i.ab, i64 1400   ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.at, ptr elementtype(i32) %i.at) #25, !srcloc !54
  %i.au = load ptr, ptr %i.as, align 8
  %i.av = getelementptr i8, ptr %i.b, i64 968
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = tail call fastcc i32 @io_allocate_scq_urings(ptr noundef %i.b, ptr noundef %0) #30, !srcloc !270 ; 2 uses
  %.not78 = icmp eq i32 %i.aw, 0
  br i1 %.not78, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.ax = tail call i32 @io_sq_offload_create(ptr noundef nonnull %i.b, ptr noundef %0) #24 ; 2 uses
  %.not79 = icmp eq i32 %i.ax, 0
  br i1 %.not79, label %copy_to_user.exit, label %bb.z

copy_to_user.exit:                                ; preds = %bb.o
  %i.ay = getelementptr i8, ptr %0, i64 20
  store i32 262143, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %0, i64 144
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call i64 @_copy_to_user(ptr noundef %i.ba, ptr noundef %0, i64 noundef 120) #24
  %.not80 = icmp eq i64 %i.bb, 0
  br i1 %.not80, label %bb.p, label %bb.z

bb.p:                                             ; preds = %copy_to_user.exit
  %i.bc = load i32, ptr %i.b, align 64
  %i.bd = and i32 %i.bc, 4160
  %or.cond86 = icmp eq i32 %i.bd, 4096
  br i1 %or.cond86, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.be = tail call fastcc ptr @get_task_struct(ptr noundef %i.ab) #27, !srcloc !271 ; 0 uses
  %i.bf = getelementptr i8, ptr %i.b, i64 8
  store ptr %i.ab, ptr %i.bf, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bg = tail call ptr @anon_inode_create_getfile(ptr noundef nonnull @.str.113, ptr noundef nonnull @io_uring_fops, ptr noundef nonnull %i.b, i32 noundef 524290, ptr noundef null) #24 ; 5 uses
  %i.bh = icmp ugt ptr %i.bg, inttoptr (i64 -4096 to ptr)
  br i1 %i.bh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = trunc i64 %i.bi to i32
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.bk = tail call i32 @__io_uring_add_tctx_node(ptr noundef nonnull %i.b) #24 ; 2 uses
  %.not83 = icmp eq i32 %i.bk, 0
  br i1 %.not83, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = and i32 %i.bm, 32768
  %.not84 = icmp eq i32 %i.bn, 0
  br i1 %.not84, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr i8, ptr %i.ab, i64 2072
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call i32 @io_ring_add_registered_file(ptr noundef %i.bp, ptr noundef %i.bg, i32 noundef 0, i32 noundef 16) #24
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.br = tail call fastcc i32 @io_uring_install_fd(ptr noundef %i.bg) #27, !srcloc !272
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.061 = phi i32 [ %i.bq, %bb.v ], [ %i.br, %bb.w ] ; 4 uses
  %i.bs = icmp slt i32 %.061, 0
  br i1 %i.bs, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = load i32, ptr %0, align 8
  %i.bu = getelementptr i8, ptr %0, i64 4
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = load i32, ptr %i.bl, align 8
  tail call fastcc void @trace_io_uring_create(i32 noundef %.061, ptr noundef %i.b, i32 noundef %i.bt, i32 noundef %i.bv, i32 noundef %i.bw) #27, !srcloc !273
  br label %bb.ab

bb.z:                                             ; preds = %copy_to_user.exit, %bb.o, %bb.n, %bb.s
  %.1 = phi i32 [ %i.aw, %bb.n ], [ %i.ax, %bb.o ], [ %i.bj, %bb.s ], [ -14, %copy_to_user.exit ]
  tail call fastcc void @io_ring_ctx_wait_and_kill(ptr noundef nonnull %i.b) #30, !srcloc !274
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x, %bb.t
  %.2 = phi i32 [ %i.bk, %bb.t ], [ %.061, %bb.x ]
  tail call void @fput(ptr noundef %i.bg) #24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.b, %bb.a, %bb.aa, %bb.z, %bb.y
  %.0 = phi i32 [ %i.a, %bb.a ], [ %.1, %bb.z ], [ %.2, %bb.aa ], [ %.061, %bb.y ], [ -12, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc noundef ptr @io_ring_ctx_alloc(ptr nofree noundef readonly captures(none) %0) unnamed_addr #8 align 16 prefalign(16) {
_kzalloc_noprof.exit:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 88), align 8
  %i.b = tail call noalias align 8 dereferenceable_or_null(1408) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef range(i32 3264, 4210688) 3520, i64 noundef 1408) #32 ; 57 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %fls.exit

fls.exit:                                         ; preds = %_kzalloc_noprof.exit
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %i.d = getelementptr i8, ptr %i.b, i64 352      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr i8, ptr %i.b, i64 912      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.g, i32 -1) #29, !srcloc !275
  %i.i = add i32 %i.h, -5                         ; 2 uses
  %i.j = tail call i32 @llvm.smax.i32(i32 %i.i, i32 1)
  %i.k = tail call i32 @llvm.umin.i32(i32 %i.j, i32 8) ; 4 uses
  %i.l = getelementptr i8, ptr %i.b, i64 368      ; 4 uses
  %i.m = shl nuw nsw i32 1, %i.k
  %1 = shl nuw nsw i32 64, %i.k
  %2 = zext nneg i32 %1 to i64
  %i.n = tail call noalias ptr @__kvmalloc_node_noprof(i64 noundef %2, i64 noundef 1, i32 noundef 4197568, i32 noundef -1) #31 ; 2 uses
  store ptr %i.n, ptr %i.l, align 8
  %.not25.i = icmp eq ptr %i.n, null
  br i1 %.not25.i, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %fls.exit
  %i.o = icmp slt i32 %i.i, 2
  br i1 %i.o, label %io_alloc_hash_table.exit, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.p = icmp eq i32 %i.q, 1
  br i1 %i.p, label %io_alloc_hash_table.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01926.i101 = phi i32 [ %i.q, %.lr.ph.i ], [ %i.k, %.lr.ph.i.preheader ]
  %i.q = add nsw i32 %.01926.i101, -1             ; 4 uses
  %i.r = shl nuw nsw i32 1, %i.q                  ; 2 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 6
  %i.u = tail call noalias ptr @__kvmalloc_node_noprof(i64 noundef %i.t, i64 noundef 1, i32 noundef 4197568, i32 noundef -1) #31 ; 2 uses
  store ptr %i.u, ptr %i.l, align 8
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph, %fls.exit
  %.019.lcssa.i = phi i32 [ %i.k, %fls.exit ], [ %i.q, %.lr.ph ]
  %.lcssa.i = phi i32 [ %i.m, %fls.exit ], [ %i.r, %.lr.ph ]
  %i.v = getelementptr i8, ptr %i.b, i64 376
  store i32 %.019.lcssa.i, ptr %i.v, align 8
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %._crit_edge.i
  %.02128.i = phi i32 [ 0, %._crit_edge.i ], [ %4, %bb.a ] ; 2 uses
  %i.w = load ptr, ptr %i.l, align 8
  %3 = sext i32 %.02128.i to i64
  %i.x = getelementptr [64 x i8], ptr %i.w, i64 %3
  store ptr null, ptr %i.x, align 64
  %4 = add nuw i32 %.02128.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %4, %.lcssa.i
  br i1 %exitcond.not.i, label %bb.b, label %bb.a, !llvm.loop !276

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %i.z = tail call i32 @percpu_ref_init(ptr noundef %i.y, ptr noundef nonnull @io_ring_ctx_ref_free, i32 noundef 0, i32 noundef 3264) #24
  %.not90 = icmp eq i32 %i.z, 0
  br i1 %.not90, label %bb.c, label %io_alloc_hash_table.exit

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  store i32 %i.ab, ptr %i.b, align 64
  %i.ac = getelementptr i8, ptr %i.b, i64 496
  store i64 9223372036854775807, ptr %i.ac, align 16
  %i.ad = getelementptr i8, ptr %i.b, i64 608
  store volatile i32 -1, ptr %i.ad, align 32
  %i.ae = getelementptr i8, ptr %i.b, i64 784
  tail call void @__init_waitqueue_head(ptr noundef %i.ae, ptr noundef nonnull @.str.102, ptr noundef nonnull @io_ring_ctx_alloc.__key) #24
  %i.af = getelementptr i8, ptr %i.b, i64 808     ; 3 uses
  store volatile ptr %i.af, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %i.b, i64 816
  store volatile ptr %i.af, ptr %i.ag, align 16
  %i.ah = getelementptr i8, ptr %i.b, i64 712     ; 3 uses
  store volatile ptr %i.ah, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %i.b, i64 720
  store volatile ptr %i.ah, ptr %i.ai, align 16
  %i.aj = getelementptr i8, ptr %i.b, i64 384
  %i.ak = tail call zeroext i1 @io_alloc_cache_init(ptr noundef %i.aj, i32 noundef 32, i32 noundef 72, i32 noundef 0) #24
  %i.al = getelementptr i8, ptr %i.b, i64 408
  %i.am = tail call zeroext i1 @io_alloc_cache_init(ptr noundef %i.al, i32 noundef 128, i32 noundef 288, i32 noundef 16) #24
  %i.an = or i1 %i.ak, %i.am
  %i.ao = getelementptr i8, ptr %i.b, i64 432
  %i.ap = tail call zeroext i1 @io_alloc_cache_init(ptr noundef %i.ao, i32 noundef 128, i32 noundef 200, i32 noundef 24) #24
  %i.aq = or i1 %i.an, %i.ap
  %i.ar = getelementptr i8, ptr %i.b, i64 456
  %i.as = tail call zeroext i1 @io_alloc_cache_init(ptr noundef %i.ar, i32 noundef 128, i32 noundef 144, i32 noundef 144) #24
  %i.at = or i1 %i.aq, %i.as
  %i.au = tail call zeroext i1 @io_futex_cache_init(ptr noundef %i.b) #24
  %i.av = or i1 %i.at, %i.au
  %i.aw = tail call zeroext i1 @io_rsrc_cache_init(ptr noundef %i.b) #24
  %i.ax = or i1 %i.av, %i.aw
  br i1 %i.ax, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr i8, ptr %i.b, i64 1048
  store i32 0, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %i.b, i64 1056
  tail call void @__init_swait_queue_head(ptr noundef %i.az, ptr noundef nonnull @.str.101, ptr noundef nonnull @init_completion.__key) #24
  %i.ba = getelementptr i8, ptr %i.b, i64 936
  store i32 0, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %i.b, i64 940
  store i32 12, ptr %i.bb, align 4
  %i.bc = getelementptr i8, ptr %i.b, i64 944
  store ptr null, ptr %i.bc, align 16
  tail call void @mutex_init_generic(ptr noundef %i.c) #24
  %i.bd = getelementptr i8, ptr %i.b, i64 616
  tail call void @__init_waitqueue_head(ptr noundef %i.bd, ptr noundef nonnull @.str.106, ptr noundef nonnull @io_ring_ctx_alloc.__key.105) #24
  %i.be = getelementptr i8, ptr %i.b, i64 832
  tail call void @__init_waitqueue_head(ptr noundef %i.be, ptr noundef nonnull @.str.108, ptr noundef nonnull @io_ring_ctx_alloc.__key.107) #24
  %i.bf = getelementptr i8, ptr %i.b, i64 704
  store i32 0, ptr %i.bf, align 64
  %i.bg = getelementptr i8, ptr %i.b, i64 640
  store i32 0, ptr %i.bg, align 64
  %i.bh = getelementptr i8, ptr %i.b, i64 120     ; 3 uses
  store volatile ptr %i.bh, ptr %i.bh, align 8
  %i.bi = getelementptr i8, ptr %i.b, i64 128
  store volatile ptr %i.bh, ptr %i.bi, align 64
  %i.bj = getelementptr i8, ptr %i.b, i64 1104    ; 3 uses
  store volatile ptr %i.bj, ptr %i.bj, align 16
  %i.bk = getelementptr i8, ptr %i.b, i64 1112
  store volatile ptr %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %i.b, i64 648     ; 3 uses
  store volatile ptr %i.bl, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %i.b, i64 656
  store volatile ptr %i.bl, ptr %i.bm, align 16
  %i.bn = getelementptr i8, ptr %i.b, i64 664     ; 3 uses
  store volatile ptr %i.bn, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %i.b, i64 672
  store volatile ptr %i.bn, ptr %i.bo, align 32
  %i.bp = getelementptr i8, ptr %i.b, i64 584
  %i.bq = getelementptr i8, ptr %i.b, i64 136
  %i.br = getelementptr i8, ptr %i.b, i64 592     ; 3 uses
  store ptr %i.br, ptr %i.bq, align 8
  store ptr %i.br, ptr %i.bp, align 8
  store ptr null, ptr %i.br, align 16
  %i.bs = getelementptr i8, ptr %i.b, i64 976     ; 3 uses
  store volatile ptr %i.bs, ptr %i.bs, align 16
  %i.bt = getelementptr i8, ptr %i.b, i64 984
  store volatile ptr %i.bs, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %i.b, i64 992
  tail call void @mutex_init_generic(ptr noundef %i.bu) #24
  %i.bv = getelementptr i8, ptr %i.b, i64 240
  store ptr null, ptr %i.bv, align 16
  %i.bw = getelementptr i8, ptr %i.b, i64 728
  store ptr null, ptr %i.bw, align 8
  %i.bx = getelementptr i8, ptr %i.b, i64 896
  store i32 0, ptr %i.bx, align 64
  %i.by = getelementptr i8, ptr %i.b, i64 900
  store i32 33554436, ptr %i.by, align 4
  %i.bz = getelementptr i8, ptr %i.b, i64 904
  store ptr null, ptr %i.bz, align 8
  %i.ca = getelementptr i8, ptr %i.b, i64 736
  store ptr null, ptr %i.ca, align 32
  %i.cb = getelementptr i8, ptr %i.b, i64 248
  store ptr null, ptr %i.cb, align 8
  %i.cc = getelementptr i8, ptr %i.b, i64 488
  store ptr null, ptr %i.cc, align 8
  tail call void @io_napi_init(ptr noundef %i.b) #24
  %i.cd = getelementptr i8, ptr %i.b, i64 1304
  tail call void @mutex_init_generic(ptr noundef %i.cd) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @percpu_ref_exit(ptr noundef %i.y) #24
  br label %io_alloc_hash_table.exit

io_alloc_hash_table.exit:                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %bb.b, %bb.e
  tail call fastcc void @io_free_alloc_caches(ptr noundef %i.b) #27, !srcloc !277
  %i.ce = load ptr, ptr %i.l, align 16
  tail call void @kvfree(ptr noundef %i.ce) #24
  tail call void @xa_destroy(ptr noundef %i.d) #24
  tail call void @xa_destroy(ptr noundef %i.e) #24
  tail call void @kfree(ptr noundef %i.b) #24
  br label %bb.f

bb.f:                                             ; preds = %_kzalloc_noprof.exit, %io_alloc_hash_table.exit, %bb.d
  %.0 = phi ptr [ null, %io_alloc_hash_table.exit ], [ %i.b, %bb.d ], [ null, %_kzalloc_noprof.exit ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @static_key_slow_inc(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable_noaudit(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef ptr @get_uid(ptr noundef returned %0) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #25, !srcloc !67 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i.i, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %i.a, 1
  %i.c = or i32 %i.b, %i.a
  %.not10.i.i.i = icmp sgt i32 %i.c, -1
  br i1 %.not10.i.i.i, label %refcount_inc.exit, label %.sink.split.i.i.i, !prof !31

.sink.split.i.i.i:                                ; preds = %bb.b, %bb.a
  %.sink.i.i.i = phi i32 [ 2, %bb.a ], [ 1, %bb.b ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i.i) #24
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %bb.b, %.sink.split.i.i.i
  ret ptr %0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @io_ctx_restriction_clone(ptr noundef nonnull initializes((856, 880), (889, 893)) %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 856        ; 2 uses
  %i.b = load i64, ptr %1, align 8
  store i64 %i.b, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 864
  %i.d = getelementptr i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.c, ptr noundef align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.e = getelementptr i8, ptr %1, i64 33
  %i.f = load i8, ptr %i.e, align 1
  %i.g = getelementptr i8, ptr %0, i64 889
  store i8 %i.f, ptr %i.g, align 1
  %i.h = getelementptr i8, ptr %1, i64 34
  %i.i = load i8, ptr %i.h, align 2
  %i.j = getelementptr i8, ptr %0, i64 890
  store i8 %i.i, ptr %i.j, align 2
  %i.k = getelementptr i8, ptr %1, i64 35
  %i.l = load i8, ptr %i.k, align 1, !range !106, !noundef !107
  %i.m = getelementptr i8, ptr %0, i64 891        ; 2 uses
  store i8 %i.l, ptr %i.m, align 1
  %i.n = getelementptr i8, ptr %1, i64 36
  %i.o = load i8, ptr %i.n, align 4, !range !106, !noundef !107
  %i.p = getelementptr i8, ptr %0, i64 892        ; 2 uses
  store i8 %i.o, ptr %i.p, align 4
  tail call void @io_bpf_filter_clone(ptr noundef %i.a, ptr noundef %1) #24
  %i.q = getelementptr i8, ptr %0, i64 880
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %0, i64 24
  store volatile ptr %i.t, ptr %i.u, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = load i8, ptr %i.m, align 1, !range !106, !noundef !107
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.e
end_hunk_0
