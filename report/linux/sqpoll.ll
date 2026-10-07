Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/sqpoll?download=true
inline.NumInlined: 160
inline.NumDeleted: 69
begin_hunk_0_@io_sq_offload_create:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %i.f = tail call i64 @fdget(i32 noundef %i.e) #15 ; 3 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %fdput.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = tail call zeroext i1 @io_is_uring_fops(ptr noundef %i.h) #15 ; 2 uses
  %i.j = and i64 %i.f, 1
  %.not.i78 = icmp eq i64 %i.j, 0
  br i1 %.not.i78, label %fdput.exit, label %.split, !prof !38

.split:                                           ; preds = %bb.c
  tail call void @fput(ptr noundef %i.h) #15
  br i1 %i.i, label %bb.d, label %fdput.exit.thread

fdput.exit:                                       ; preds = %bb.c
  br i1 %i.i, label %bb.d, label %fdput.exit.thread

bb.d:                                             ; preds = %.split, %fdput.exit, %bb.a
  %i.k = load i32, ptr %0, align 64
  %i.l = and i32 %i.k, 2
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @security_uring_sqpoll() #15 ; 2 uses
  %.not68 = icmp eq i32 %i.m, 0
  br i1 %.not68, label %bb.f, label %fdput.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 32
  %.not.i79 = icmp eq i32 %i.p, 0
  br i1 %.not.i79, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %1, i64 24
  %.val.i = load i32, ptr %i.q, align 8
  %i.r = tail call i64 @fdget(i32 noundef %.val.i) #15 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %io_get_sq_data.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = and i64 %i.r, -4
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = tail call zeroext i1 @io_is_uring_fops(ptr noundef %i.t) #15
  br i1 %i.u, label %bb.i, label %refcount_inc.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.t, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 776
  %i.y = load ptr, ptr %i.x, align 8              ; 7 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %refcount_inc.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %i.y, i64 92
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #13, !srcloc !11
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr i8, ptr %i.ac, i64 1532
  %i.ae = load i32, ptr %i.ad, align 4
  %.not8.i.i = icmp eq i32 %i.aa, %i.ae
  br i1 %.not8.i.i, label %bb.k, label %refcount_inc.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.af = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.y, i32 1, ptr nonnull elementtype(i32) %i.y) #14, !srcloc !24 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ag = add i32 %i.af, 1
  %i.ah = or i32 %i.ag, %i.af
  %.not10.i.i.i.i.i = icmp sgt i32 %i.ah, -1
  br i1 %.not10.i.i.i.i.i, label %refcount_inc.exit.i.i, label %.sink.split.i.i.i.i.i, !prof !23

.sink.split.i.i.i.i.i:                            ; preds = %bb.l, %bb.k
  %.sink.i.i.i.i.i = phi i32 [ 2, %bb.k ], [ 1, %bb.l ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.y, i32 noundef %.sink.i.i.i.i.i) #15
  br label %refcount_inc.exit.i.i

refcount_inc.exit.i.i:                            ; preds = %.sink.split.i.i.i.i.i, %bb.l, %bb.j, %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.y, %.sink.split.i.i.i.i.i ], [ inttoptr (i64 -22 to ptr), %bb.i ], [ inttoptr (i64 -1 to ptr), %bb.j ], [ inttoptr (i64 -22 to ptr), %bb.h ], [ %i.y, %bb.l ] ; 4 uses
  %i.ai = and i64 %i.r, 1
  %.not.i9.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i9.i.i, label %io_attach_sq_data.exit.i, label %bb.m, !prof !38

bb.m:                                             ; preds = %refcount_inc.exit.i.i
  tail call void @fput(ptr noundef %i.t) #15
  br label %io_attach_sq_data.exit.i

io_attach_sq_data.exit.i:                         ; preds = %bb.m, %refcount_inc.exit.i.i
  %i.aj = icmp ugt ptr %.0.i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.aj, label %io_attach_sq_data.exit.thread.i, label %io_get_sq_data.exit

io_attach_sq_data.exit.thread.i:                  ; preds = %io_attach_sq_data.exit.i
  %.not23.i = icmp eq ptr %.0.i.i, inttoptr (i64 -1 to ptr)
  br i1 %.not23.i, label %bb.n, label %io_get_sq_data.exit

bb.n:                                             ; preds = %io_attach_sq_data.exit.thread.i, %bb.f
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 16), align 16
  %i.al = tail call noalias noundef align 8 dereferenceable_or_null(144) ptr @__kmalloc_cache_noprof(ptr noundef %i.ak, i32 noundef 3520, i64 noundef 144) #17 ; 10 uses
  %.not24.i = icmp eq ptr %i.al, null
  br i1 %.not24.i, label %io_get_sq_data.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr i8, ptr %i.al, i64 4
  store volatile i32 0, ptr %i.am, align 4
  store volatile i32 1, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %i.al, i64 32     ; 3 uses
  store volatile ptr %i.an, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %i.al, i64 40
  store volatile ptr %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr i8, ptr %i.al, i64 8
  tail call void @mutex_init_generic(ptr noundef %i.ap) #15
  %i.aq = getelementptr i8, ptr %i.al, i64 56
  tail call void @__init_waitqueue_head(ptr noundef %i.aq, ptr noundef nonnull @.str.4, ptr noundef nonnull @io_get_sq_data.__key.3) #15
  %i.ar = getelementptr i8, ptr %i.al, i64 112
  store i32 0, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %i.al, i64 120
  tail call void @__init_swait_queue_head(ptr noundef %i.as, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #15
  br label %io_get_sq_data.exit

io_get_sq_data.exit:                              ; preds = %io_attach_sq_data.exit.i, %io_attach_sq_data.exit.thread.i, %bb.o
  %.085 = phi i1 [ false, %io_attach_sq_data.exit.thread.i ], [ false, %bb.o ], [ true, %io_attach_sq_data.exit.i ]
  %.0.i80 = phi ptr [ %.0.i.i, %io_attach_sq_data.exit.thread.i ], [ %i.al, %bb.o ], [ %.0.i.i, %io_attach_sq_data.exit.i ] ; 16 uses
  %i.at = icmp ugt ptr %.0.i80, inttoptr (i64 -4096 to ptr)
  br i1 %i.at, label %io_get_sq_data.exit.thread, label %bb.p

io_get_sq_data.exit.thread:                       ; preds = %bb.n, %bb.g, %io_get_sq_data.exit
  %.0.i8095 = phi ptr [ %.0.i80, %io_get_sq_data.exit ], [ inttoptr (i64 -12 to ptr), %bb.n ], [ inttoptr (i64 -6 to ptr), %bb.g ]
  %i.au = ptrtoint ptr %.0.i8095 to i64
  %i.av = trunc i64 %i.au to i32
  br label %.thread116

bb.p:                                             ; preds = %io_get_sq_data.exit
  %i.aw = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #13, !srcloc !11
  %i.ax = inttoptr i64 %i.aw to ptr               ; 4 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 1992
  %i.az = load ptr, ptr %i.ay, align 8            ; 5 uses
  %.not.i.i81 = icmp eq ptr %i.az, null
  br i1 %.not.i.i81, label %get_cred.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr i8, ptr %i.az, i64 168
  store i32 0, ptr %i.ba, align 8
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.az, i64 1, ptr nonnull elementtype(i64) %i.az) #14, !srcloc !39
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %bb.p, %bb.q
  %i.bb = getelementptr i8, ptr %0, i64 768
  store ptr %i.az, ptr %i.bb, align 64
  %i.bc = getelementptr i8, ptr %0, i64 776       ; 2 uses
  store ptr %.0.i80, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = tail call i64 @__msecs_to_jiffies(i32 noundef %i.be) #15
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  %i.bh = getelementptr i8, ptr %0, i64 60
  %.not69.a = icmp eq i32 %i.bg, 0
  %spec.select = select i1 %.not69.a, i32 1000, i32 %i.bg
  store i32 %spec.select, ptr %i.bh, align 4
  tail call void @io_sq_thread_park(ptr noundef %.0.i80) #16
  %i.bi = getelementptr i8, ptr %0, i64 808       ; 5 uses
  %i.bj = getelementptr i8, ptr %.0.i80, i64 32   ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store ptr %i.bi, ptr %i.bl, align 8
  store ptr %i.bk, ptr %i.bi, align 8
  %i.bm = getelementptr i8, ptr %0, i64 816
  store ptr %i.bj, ptr %i.bm, align 16
  store volatile ptr %i.bi, ptr %i.bj, align 8
  %.not18.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not18.i, label %io_sqd_update_thread_idle.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %get_cred.exit, %.lr.ph.i
  %.pn20.i = phi ptr [ %.pn.i, %.lr.ph.i ], [ %i.bi, %get_cred.exit ] ; 2 uses
  %.01619.i = phi i32 [ %i.bp, %.lr.ph.i ], [ 0, %get_cred.exit ]
  %i.bn = getelementptr i8, ptr %.pn20.i, i64 -748
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = tail call i32 @llvm.umax.i32(i32 %.01619.i, i32 %i.bo) ; 2 uses
  %.pn.i = load ptr, ptr %.pn20.i, align 8        ; 2 uses
  %.not.i82 = icmp eq ptr %.pn.i, %i.bj
  br i1 %.not.i82, label %io_sqd_update_thread_idle.exit, label %.lr.ph.i, !llvm.loop !0

io_sqd_update_thread_idle.exit:                   ; preds = %.lr.ph.i, %get_cred.exit
  %.016.lcssa.i = phi i32 [ 0, %get_cred.exit ], [ %i.bp, %.lr.ph.i ]
  %i.bq = getelementptr i8, ptr %.0.i80, i64 80
  store i32 %.016.lcssa.i, ptr %i.bq, align 8
  br i1 %.085, label %bb.r, label %bb.s

bb.r:                                             ; preds = %io_sqd_update_thread_idle.exit
  %i.br = getelementptr i8, ptr %.0.i80, i64 48
  %i.bs = load ptr, ptr %i.br, align 8
  %.not70 = icmp eq ptr %i.bs, null
  tail call void @io_sq_thread_unpark(ptr noundef %.0.i80) #16
  br i1 %.not70, label %.thread116, label %fdput.exit.thread

bb.s:                                             ; preds = %io_sqd_update_thread_idle.exit
  tail call void @io_sq_thread_unpark(ptr noundef %.0.i80) #16
  %i.bt = load i32, ptr %i.n, align 8
  %i.bu = and i32 %i.bt, 4
  %.not71 = icmp eq i32 %i.bu, 0
  br i1 %.not71, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store i64 0, ptr %2, align 8, !annotation !30
  %i.bv = getelementptr i8, ptr %1, i64 12
  %i.bw = load i32, ptr %i.bv, align 4            ; 3 uses
  %i.bx = load i32, ptr @nr_cpu_ids, align 4
  %.not72 = icmp ult i32 %i.bw, %i.bx
  br i1 %.not72, label %arch_test_bit.exit77, label %.thread105

arch_test_bit.exit77:                             ; preds = %bb.t
  %i.by = zext i32 %i.bw to i64                   ; 2 uses
  %i.bz = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.by) #14, !srcloc !40 ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 2
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = trunc nuw i8 %i.bz to i1
  br i1 %i.cb, label %arch_test_bit.exit, label %.thread105

arch_test_bit.exit:                               ; preds = %arch_test_bit.exit77
  call void @cpuset_cpus_allowed(ptr noundef %i.ax, ptr noundef nonnull %2) #15
  %i.cc = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %2, i64 range(i64 0, 4294967296) %i.by) #14, !srcloc !40 ; 2 uses
  %i.cd = icmp ult i8 %i.cc, 2
  call void @llvm.assume(i1 %i.cd)
  %i.ce = trunc nuw i8 %i.cc to i1
  br i1 %i.ce, label %bb.u, label %.thread105

.thread105:                                       ; preds = %arch_test_bit.exit77, %bb.t, %arch_test_bit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.ab

bb.u:                                             ; preds = %arch_test_bit.exit
  %i.cf = getelementptr i8, ptr %.0.i80, i64 84
  store i32 %i.bw, ptr %i.cf, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cg = getelementptr i8, ptr %.0.i80, i64 84
  store i32 -1, ptr %i.cg, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ch = getelementptr i8, ptr %i.ax, i64 1528
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = getelementptr i8, ptr %.0.i80, i64 88
  store i32 %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr i8, ptr %i.ax, i64 1532
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = getelementptr i8, ptr %.0.i80, i64 92
  store i32 %i.cl, ptr %i.cm, align 4
  %i.cn = call ptr @create_io_thread(ptr noundef nonnull @io_sq_thread, ptr noundef %.0.i80, i32 noundef -1) #15 ; 8 uses
  %i.co = icmp ugt ptr %i.cn, inttoptr (i64 -4096 to ptr)
  br i1 %i.co, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = trunc i64 %i.cp to i32
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.cr = getelementptr i8, ptr %.0.i80, i64 8    ; 2 uses
  call void @mutex_lock(ptr noundef %i.cr) #15
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !41
  %i.cs = getelementptr i8, ptr %.0.i80, i64 48
  store volatile ptr %i.cn, ptr %i.cs, align 8
  call void @mutex_unlock(ptr noundef %i.cr) #15
  %i.ct = call fastcc ptr @get_task_struct(ptr noundef %i.cn) #16, !srcloc !42 ; 0 uses
  %i.cu = call ptr @io_uring_alloc_task_context(ptr noundef %i.cn, ptr noundef %0) #15
  %.fr = freeze ptr %i.cu                         ; 3 uses
  %i.cv = icmp ugt ptr %.fr, inttoptr (i64 -4096 to ptr)
  br i1 %i.cv, label %bb.z, label %.thread109

.thread109:                                       ; preds = %bb.y
  %i.cw = getelementptr i8, ptr %i.cn, i64 2072
  store ptr %.fr, ptr %i.cw, align 8
  call void @wake_up_new_task(ptr noundef %i.cn) #15
  br label %fdput.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.cx = ptrtoint ptr %.fr to i64
  %i.cy = trunc i64 %i.cx to i32                  ; 2 uses
  call void @wake_up_new_task(ptr noundef %i.cn) #15
  %.not73 = icmp eq i32 %i.cy, 0
  br i1 %.not73, label %fdput.exit.thread, label %.thread116

bb.aa:                                            ; preds = %bb.d
  %i.cz = getelementptr i8, ptr %1, i64 8
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = and i32 %i.da, 4
  %.not67 = icmp eq i32 %i.db, 0
  br i1 %.not67, label %fdput.exit.thread, label %.thread116

bb.ab:                                            ; preds = %bb.x, %.thread105
  %.260 = phi i32 [ -22, %.thread105 ], [ %i.cq, %bb.x ]
  %i.dc = load ptr, ptr %i.bc, align 8
  %i.dd = getelementptr i8, ptr %i.dc, i64 112
  call void @complete(ptr noundef %i.dd) #15
  br label %.thread116

.thread116:                                       ; preds = %bb.z, %bb.r, %io_get_sq_data.exit.thread, %bb.aa, %bb.ab
  %.361 = phi i32 [ %.260, %bb.ab ], [ -22, %bb.aa ], [ %i.cy, %bb.z ], [ -6, %bb.r ], [ %i.av, %io_get_sq_data.exit.thread ]
  call void @io_sq_thread_finish(ptr noundef %0) #16
  br label %fdput.exit.thread

fdput.exit.thread:                                ; preds = %bb.z, %.thread109, %bb.r, %bb.e, %bb.b, %bb.aa, %.split, %fdput.exit, %.thread116
  %.3 = phi i32 [ -6, %bb.b ], [ -22, %.split ], [ %.361, %.thread116 ], [ -22, %fdput.exit ], [ 0, %bb.aa ], [ 0, %bb.r ], [ %i.m, %bb.e ], [ 0, %.thread109 ], [ 0, %bb.z ]
  ret i32 %.3
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @io_is_uring_fops(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_uring_sqpoll() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpuset_cpus_allowed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @create_io_thread(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone noreturn nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @io_sq_thread(ptr noundef %0) #5 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.ksignal, align 8            ; 5 uses
  %2 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %3 = alloca %struct.wait_queue_entry, align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #13, !srcloc !11
  %i.m = inttoptr i64 %i.l to ptr                 ; 33 uses
  store i64 0, ptr %3, align 8
  store ptr %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @autoremove_wake_function, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.m, i64 2072     ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr i8, ptr %0, i64 8          ; 2 uses
  call void @mutex_lock(ptr noundef %i.s) #15
  %i.t = getelementptr i8, ptr %0, i64 48
  store volatile ptr null, ptr %i.t, align 8
  call fastcc void @put_task_struct(ptr noundef %i.m) #16, !srcloc !48
  br label %io_run_task_work.exit

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.v) #15 ; 0 uses
  call void @__set_task_comm(ptr noundef %i.m, ptr noundef nonnull %i.j, i1 noundef zeroext false) #15
  %i.x = getelementptr i8, ptr %i.m, i64 1528
  %i.y = load i32, ptr %i.x, align 8
  store i32 %i.y, ptr %i.u, align 8
  %i.z = getelementptr i8, ptr %0, i64 84         ; 5 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 3 uses
  %.not117 = icmp eq i32 %i.aa, -1
  br i1 %.not117, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = and i32 %i.aa, 63
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr [8 x i8], ptr @cpu_bit_bitmap, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = lshr i32 %i.aa, 6
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr [8 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = call i32 @set_cpus_allowed_ptr(ptr noundef %i.m, ptr noundef %i.ai) #15 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ak = call i32 @set_cpus_allowed_ptr(ptr noundef %i.m, ptr noundef nonnull @__cpu_online_mask) #15 ; 0 uses
  %i.al = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #14, !srcloc !49
  store i32 %i.al, ptr %i.z, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.am = getelementptr i8, ptr %i.m, i64 2192    ; 2 uses
  %i.an = load ptr, ptr %i.am, align 16           ; 2 uses
  %i.ao = icmp ne ptr %i.an, null
  %i.ap = load i32, ptr @audit_enabled, align 4
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %i.ar, label %bb.g, label %audit_uring_entry.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  call void @__audit_uring_entry(i8 noundef zeroext 0) #15
  %.pr = load ptr, ptr %i.am, align 16
  br label %audit_uring_entry.exit

audit_uring_entry.exit:                           ; preds = %bb.f, %bb.g
  %i.as = phi ptr [ %i.an, %bb.f ], [ %.pr, %bb.g ]
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %audit_uring_exit.exit, label %bb.h, !prof !23

bb.h:                                             ; preds = %audit_uring_entry.exit
  call void @__audit_uring_exit(i32 noundef 1, i64 noundef 0) #15
  br label %audit_uring_exit.exit

audit_uring_exit.exit:                            ; preds = %audit_uring_entry.exit, %bb.h
  %i.at = getelementptr i8, ptr %0, i64 8         ; 9 uses
  call void @mutex_lock(ptr noundef %i.at) #15
  %i.au = getelementptr i8, ptr %0, i64 104       ; 4 uses
  %i.av = getelementptr i8, ptr %0, i64 4         ; 3 uses
  %i.aw = getelementptr i8, ptr %0, i64 56        ; 4 uses
  %i.ax = getelementptr i8, ptr %0, i64 80        ; 3 uses
  %i.ay = getelementptr i8, ptr %0, i64 32        ; 14 uses
  %i.az = getelementptr i8, ptr %0, i64 40
  %i.ba = getelementptr i8, ptr %i.m, i64 1992    ; 3 uses
  %i.bb = getelementptr i8, ptr %i.m, i64 2184    ; 4 uses
  %i.bc = getelementptr i8, ptr %0, i64 96        ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.backedge, %audit_uring_exit.exit
  %.0108 = phi i64 [ 0, %audit_uring_exit.exit ], [ %.0108.be, %.backedge ]
  %i.bd = load volatile i64, ptr %i.au, align 8
  %.not176 = icmp eq i64 %i.bd, 0
  br i1 %.not176, label %test_tsk_thread_flag.exit.i, label %signal_pending.exit.thread

test_tsk_thread_flag.exit.i:                      ; preds = %bb.i
  %i.be = load volatile i64, ptr %i.m, align 16
  %i.bf = and i64 %i.be, 4
  %.not.i136 = icmp eq i64 %i.bf, 0
  br i1 %.not.i136, label %signal_pending.exit, label %signal_pending.exit.thread, !prof !23

signal_pending.exit:                              ; preds = %test_tsk_thread_flag.exit.i
  %i.bg = load volatile i64, ptr %i.m, align 16
  %i.bh = and i64 %i.bg, 2
  %.not118 = icmp eq i64 %i.bh, 0
  br i1 %.not118, label %bb.p, label %signal_pending.exit.thread

signal_pending.exit.thread:                       ; preds = %test_tsk_thread_flag.exit.i, %signal_pending.exit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, i8 0, i64 88, i1 false), !annotation !30
  %i.bi = load volatile i64, ptr %i.au, align 8
  %i.bj = and i64 %i.bi, 2
  %.not49.i = icmp eq i64 %i.bj, 0
  br i1 %.not49.i, label %test_tsk_thread_flag.exit.i.i, label %signal_pending.exit.thread.i

test_tsk_thread_flag.exit.i.i:                    ; preds = %signal_pending.exit.thread
  %i.bk = load volatile i64, ptr %i.m, align 16
  %i.bl = and i64 %i.bk, 4
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %signal_pending.exit.i, label %signal_pending.exit.thread.i, !prof !23

signal_pending.exit.i:                            ; preds = %test_tsk_thread_flag.exit.i.i
  %i.bm = load volatile i64, ptr %i.m, align 16
  %i.bn = and i64 %i.bm, 2
  %.not.i139 = icmp eq i64 %i.bn, 0
  br i1 %.not.i139, label %.split, label %signal_pending.exit.thread.i

signal_pending.exit.thread.i:                     ; preds = %signal_pending.exit.i, %test_tsk_thread_flag.exit.i.i, %signal_pending.exit.thread
  call void @mutex_unlock(ptr noundef %i.at) #15
  %i.bo = load volatile i64, ptr %i.m, align 16
  %i.bp = and i64 %i.bo, 4
  %.not.i38.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i38.i, label %signal_pending.exit43.i, label %signal_pending.exit43.thread.i, !prof !23

signal_pending.exit43.i:                          ; preds = %signal_pending.exit.thread.i
  %i.bq = load volatile i64, ptr %i.m, align 16
  %i.br = and i64 %i.bq, 2
  %.not32.i = icmp eq i64 %i.br, 0
  br i1 %.not32.i, label %bb.j, label %signal_pending.exit43.thread.i

signal_pending.exit43.thread.i:                   ; preds = %signal_pending.exit43.i, %signal_pending.exit.thread.i
  %i.bs = call zeroext i1 @get_signal(ptr noundef nonnull %1) #15
  br label %bb.j

bb.j:                                             ; preds = %signal_pending.exit43.thread.i, %signal_pending.exit43.i
  %.0.i137 = phi i1 [ %i.bs, %signal_pending.exit43.thread.i ], [ false, %signal_pending.exit43.i ]
  %i.bt = call i32 @__SCT__might_resched() #15    ; 0 uses
  %i.bu = load volatile i32, ptr %i.av, align 4
  %.not33.i = icmp eq i32 %i.bu, 0
  br i1 %.not33.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !30
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bv = call i64 @prepare_to_wait_event(ptr noundef %i.aw, ptr noundef nonnull %2, i32 noundef 2) #15 ; 0 uses
  %i.bw = load volatile i32, ptr %i.av, align 4
  %.not34.i = icmp eq i32 %i.bw, 0
  br i1 %.not34.i, label %select.unfold.i, label %bb.m

end_hunk_0
