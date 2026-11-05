Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tty_io?download=true
inline.NumInlined: 318
inline.NumDeleted: 100
begin_hunk_0_@tty_open:bb.a
  store ptr @release_one_tty, ptr %i.u, align 8
  %i.v = load ptr, ptr @system_percpu_wq, align 8
  %i.w = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.v, ptr noundef %i.r) #20 ; 0 uses
  br label %tty_kref_put.exit.i

tty_kref_put.exit.i:                              ; preds = %bb.g, %bb.f, %bb.e
  %i.x = call fastcc i32 @tty_reopen(ptr noundef %i.l) #22, !srcloc !97 ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %tty_open_current_tty.exit, label %tty_open_current_tty.exit.thread

tty_open_current_tty.exit:                        ; preds = %tty_kref_put.exit.i
  call void @tty_unlock(ptr noundef nonnull %i.l) #20
  %i.z = sext i32 %i.x to i64
  %i.aa = inttoptr i64 %i.z to ptr
  br label %tty_open_current_tty.exit.thread

tty_open_current_tty.exit.thread79:               ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 -1, ptr %i.a, align 4
  call void @mutex_lock(ptr noundef @tty_mutex) #20
  %i.ab = call fastcc ptr @tty_lookup_driver(i32 noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.a) #22, !srcloc !98 ; 8 uses
  %i.ac = icmp ugt ptr %i.ab, inttoptr (i64 -4096 to ptr)
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %tty_open_current_tty.exit.thread79
  call void @mutex_unlock(ptr noundef @tty_mutex) #20
  br label %tty_open_by_driver.exit

bb.i:                                             ; preds = %tty_open_current_tty.exit.thread79
  %i.ad = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 176
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not18.i.i, label %tty_driver_lookup_tty.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = call ptr %i.ag(ptr noundef %i.ab, ptr noundef nonnull %1, i32 noundef %i.ad) #20, !inline_history !96
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.ai = getelementptr i8, ptr %i.ab, i64 52
  %i.aj = load i32, ptr %i.ai, align 4
  %.not17.i.i = icmp ult i32 %i.ad, %i.aj
  br i1 %.not17.i.i, label %bb.m, label %tty_driver_lookup_tty.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr i8, ptr %i.ab, i64 144
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = sext i32 %i.ad to i64
  %i.an = getelementptr [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.0.i.i = phi ptr [ %i.ah, %bb.k ], [ %i.ao, %bb.m ] ; 25 uses
  %i.ap = icmp ugt ptr %.0.i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.ap, label %tty_driver_lookup_tty.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i.i, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %.0.i.i, i32 1, ptr nonnull elementtype(i32) %.0.i.i) #21, !srcloc !17 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i, label %bb.q, !prof !18

bb.q:                                             ; preds = %bb.p
  %i.ar = add i32 %i.aq, 1
  %i.as = or i32 %i.ar, %i.aq
  %.not10.i.i.i.i.i.i.i = icmp sgt i32 %i.as, -1
  br i1 %.not10.i.i.i.i.i.i.i, label %tty_port_kopened.exit.i, label %.sink.split.i.i.i.i.i.i.i, !prof !27

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q, %bb.p
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %bb.p ], [ 1, %bb.q ]
  call void @refcount_warn_saturate(ptr noundef nonnull %.0.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #20
  br label %tty_port_kopened.exit.i

tty_driver_lookup_tty.exit.thread.i:              ; preds = %bb.n, %bb.l, %bb.j
  %.013.i31.i = phi ptr [ inttoptr (i64 -22 to ptr), %bb.l ], [ inttoptr (i64 -5 to ptr), %bb.j ], [ %.0.i.i, %bb.n ]
  call void @mutex_unlock(ptr noundef @tty_mutex) #20
  br label %bb.ac

tty_port_kopened.exit.i:                          ; preds = %bb.q, %.sink.split.i.i.i.i.i.i.i
  %i.at = getelementptr i8, ptr %.0.i.i, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 240
  %i.aw = load volatile i64, ptr %i.av, align 8
  %.in.in.i.i = and i64 %i.aw, 32
  %.in.i.not.i = icmp eq i64 %.in.in.i.i, 0
  br i1 %.in.i.not.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %tty_port_kopened.exit.i
  %i.ax = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %.0.i.i, i32 -1, ptr nonnull elementtype(i32) %.0.i.i) #21, !srcloc !17 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = icmp slt i32 %i.ax, 1
  br i1 %i.az, label %bb.t, label %tty_kref_put.exit.i62, !prof !18

bb.t:                                             ; preds = %bb.s
  call void @refcount_warn_saturate(ptr noundef nonnull %.0.i.i, i32 noundef 3) #20
  br label %tty_kref_put.exit.i62

bb.u:                                             ; preds = %bb.r
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !19
  %i.ba = getelementptr i8, ptr %.0.i.i, i64 504  ; 2 uses
  store i64 4503599625273344, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %.0.i.i, i64 512  ; 3 uses
  store volatile ptr %i.bb, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %.0.i.i, i64 520
  store volatile ptr %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %.0.i.i, i64 528
  store ptr @release_one_tty, ptr %i.bd, align 8
  %i.be = load ptr, ptr @system_percpu_wq, align 8
  %i.bf = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.be, ptr noundef %i.ba) #20 ; 0 uses
  br label %tty_kref_put.exit.i62

tty_kref_put.exit.i62:                            ; preds = %bb.u, %bb.t, %bb.s
  call void @mutex_unlock(ptr noundef @tty_mutex) #20
  br label %bb.ac

bb.v:                                             ; preds = %tty_port_kopened.exit.i
  call void @mutex_unlock(ptr noundef @tty_mutex) #20
  %i.bg = call i32 @tty_lock_interruptible(ptr noundef nonnull %.0.i.i) #20 ; 3 uses
  %i.bh = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %.0.i.i, i32 -1, ptr nonnull elementtype(i32) %.0.i.i) #21, !srcloc !17 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = icmp slt i32 %i.bh, 1
  br i1 %i.bj, label %bb.x, label %tty_kref_put.exit29.i, !prof !18

bb.x:                                             ; preds = %bb.w
  call void @refcount_warn_saturate(ptr noundef nonnull %.0.i.i, i32 noundef 3) #20
  br label %tty_kref_put.exit29.i

bb.y:                                             ; preds = %bb.v
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !19
  %i.bk = getelementptr i8, ptr %.0.i.i, i64 504  ; 2 uses
  store i64 4503599625273344, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %.0.i.i, i64 512  ; 3 uses
  store volatile ptr %i.bl, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %.0.i.i, i64 520
  store volatile ptr %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %.0.i.i, i64 528
  store ptr @release_one_tty, ptr %i.bn, align 8
  %i.bo = load ptr, ptr @system_percpu_wq, align 8
  %i.bp = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.bo, ptr noundef %i.bk) #20 ; 0 uses
  br label %tty_kref_put.exit29.i

tty_kref_put.exit29.i:                            ; preds = %bb.y, %bb.x, %bb.w
  %.not26.i = icmp eq i32 %i.bg, 0
  br i1 %.not26.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %tty_kref_put.exit29.i
  %i.bq = icmp eq i32 %i.bg, -4
  %spec.store.select.i = select i1 %i.bq, i32 -512, i32 %i.bg
  %i.br = sext i32 %spec.store.select.i to i64
  %i.bs = inttoptr i64 %i.br to ptr
  br label %bb.ac

bb.aa:                                            ; preds = %tty_kref_put.exit29.i
  %i.bt = call fastcc i32 @tty_reopen(ptr noundef %.0.i.i) #22, !srcloc !99 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @tty_unlock(ptr noundef nonnull %.0.i.i) #20
  %i.bv = sext i32 %i.bt to i64
  %i.bw = inttoptr i64 %i.bv to ptr
  br label %bb.ac

.thread.i:                                        ; preds = %bb.o
  %i.bx = load i32, ptr %i.a, align 4
  %i.by = call ptr @tty_init_dev(ptr noundef %i.ab, i32 noundef %i.bx) #22
  call void @mutex_unlock(ptr noundef @tty_mutex) #20
  br label %bb.ac

bb.ac:                                            ; preds = %.thread.i, %bb.ab, %bb.aa, %bb.z, %tty_kref_put.exit.i62, %tty_driver_lookup_tty.exit.thread.i
  %.0.i63 = phi ptr [ %.013.i31.i, %tty_driver_lookup_tty.exit.thread.i ], [ inttoptr (i64 -16 to ptr), %tty_kref_put.exit.i62 ], [ %i.bs, %bb.z ], [ %i.bw, %bb.ab ], [ %.0.i.i, %bb.aa ], [ %i.by, %.thread.i ]
  call void @tty_driver_kref_put(ptr noundef %i.ab) #22
  br label %tty_open_by_driver.exit

tty_open_by_driver.exit:                          ; preds = %bb.h, %bb.ac
  %.022.i = phi ptr [ %i.ab, %bb.h ], [ %.0.i63, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %tty_open_current_tty.exit.thread

tty_open_current_tty.exit.thread:                 ; preds = %tty_open_current_tty.exit, %tty_kref_put.exit.i, %tty_open_by_driver.exit
  %.047 = phi ptr [ %i.aa, %tty_open_current_tty.exit ], [ %.022.i, %tty_open_by_driver.exit ], [ %i.l, %tty_kref_put.exit.i ] ; 13 uses
  %i.bz = icmp ugt ptr %.047, inttoptr (i64 -4096 to ptr)
  br i1 %i.bz, label %tty_open_current_tty.exit.thread.thread, label %bb.ae

tty_open_current_tty.exit.thread.thread:          ; preds = %bb.c, %tty_open_current_tty.exit.thread
  %.04791 = phi ptr [ %.047, %tty_open_current_tty.exit.thread ], [ inttoptr (i64 -6 to ptr), %bb.c ]
  %i.ca = load ptr, ptr %i.i, align 8
  store ptr null, ptr %i.i, align 8
  call void @kfree(ptr noundef %i.ca) #20
  %2 = ptrtoint ptr %.04791 to i64
  %3 = trunc i64 %2 to i32                        ; 2 uses
  %.not57 = icmp eq i32 %3, -11
  br i1 %.not57, label %test_tsk_thread_flag.exit.i, label %tty_alloc_file.exit

test_tsk_thread_flag.exit.i:                      ; preds = %tty_open_current_tty.exit.thread.thread
  %i.cb = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #25, !srcloc !26
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = load volatile i64, ptr %i.cc, align 8
  %i.ce = and i64 %i.cd, 4
  %.not.i64 = icmp eq i64 %i.ce, 0
  br i1 %.not.i64, label %signal_pending.exit, label %tty_alloc_file.exit, !prof !27

signal_pending.exit:                              ; preds = %test_tsk_thread_flag.exit.i
  %i.cf = load volatile i64, ptr %i.cc, align 8
  %i.cg = and i64 %i.cf, 2
  %.not58 = icmp eq i64 %i.cg, 0
  br i1 %.not58, label %bb.ad, label %tty_alloc_file.exit

bb.ad:                                            ; preds = %signal_pending.exit
  call void @schedule() #20
  br label %.backedge

.backedge:                                        ; preds = %tty_hung_up_p.exit, %bb.ai, %bb.ah, %bb.ad
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.ci = call noalias align 8 dereferenceable_or_null(32) ptr @__kmalloc_cache_noprof(ptr noundef %i.ch, i32 noundef 3264, i64 noundef 32) #19 ; 2 uses
  %.not.i = icmp eq ptr %i.ci, null
  br i1 %.not.i, label %tty_alloc_file.exit, label %bb.b

bb.ae:                                            ; preds = %tty_open_current_tty.exit.thread
  %i.cj = load ptr, ptr %i.i, align 8             ; 4 uses
  store ptr %.047, ptr %i.cj, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  store ptr %1, ptr %i.ck, align 8
  %i.cl = getelementptr i8, ptr %.047, i64 552    ; 2 uses
  call void @_raw_spin_lock(ptr noundef %i.cl) #20
  %i.cm = getelementptr i8, ptr %i.cj, i64 16     ; 3 uses
  %i.cn = getelementptr i8, ptr %.047, i64 568    ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  store ptr %i.cm, ptr %i.cp, align 8
  store ptr %i.co, ptr %i.cm, align 8
  %i.cq = getelementptr i8, ptr %i.cj, i64 24
  store ptr %i.cn, ptr %i.cq, align 8
  store volatile ptr %i.cm, ptr %i.cn, align 8
  call void @_raw_spin_unlock(ptr noundef %i.cl) #20
  call fastcc void @check_tty_count(ptr noundef %.047, ptr noundef @__func__.tty_open) #22, !srcloc !100
  %i.cr = getelementptr i8, ptr %.047, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not52 = icmp eq ptr %i.cu, null
  br i1 %.not52, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.ae
  store i32 %i.e, ptr %i.d, align 8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cv = call i32 %i.cu(ptr noundef %.047, ptr noundef %1) #20 ; 2 uses
  store i32 %i.e, ptr %i.d, align 8
  %.not53 = icmp eq i32 %i.cv, 0
  br i1 %.not53, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %.thread, %bb.af
  %.086 = phi i32 [ -19, %.thread ], [ %i.cv, %bb.af ] ; 2 uses
  call void @tty_unlock(ptr noundef %.047) #20
  %i.cw = call i32 @tty_release(ptr noundef %0, ptr noundef %1) #22 ; 0 uses
  %.not54 = icmp eq i32 %.086, -512
  br i1 %.not54, label %test_tsk_thread_flag.exit.i67, label %tty_alloc_file.exit

test_tsk_thread_flag.exit.i67:                    ; preds = %bb.ag
  %i.cx = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #25, !srcloc !26
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  %i.cz = load volatile i64, ptr %i.cy, align 8
  %i.da = and i64 %i.cz, 4
  %.not.i68 = icmp eq i64 %i.da, 0
  br i1 %.not.i68, label %signal_pending.exit73, label %tty_alloc_file.exit, !prof !27

signal_pending.exit73:                            ; preds = %test_tsk_thread_flag.exit.i67
  %i.db = load volatile i64, ptr %i.cy, align 8
  %i.dc = and i64 %i.db, 2
  %.not55 = icmp eq i64 %i.dc, 0
  br i1 %.not55, label %bb.ah, label %tty_alloc_file.exit

bb.ah:                                            ; preds = %signal_pending.exit73
  call void @schedule() #20
  br i1 %.not18.i.i, label %.backedge, label %tty_hung_up_p.exit

tty_hung_up_p.exit:                               ; preds = %bb.ah
  %i.dd = load ptr, ptr %i.j, align 8
  %.not93 = icmp eq ptr %i.dd, @hung_up_tty_fops
  br i1 %.not93, label %bb.ai, label %.backedge

bb.ai:                                            ; preds = %tty_hung_up_p.exit
  store ptr @tty_fops, ptr %i.j, align 8
  br label %.backedge

bb.aj:                                            ; preds = %bb.af
  %i.de = getelementptr i8, ptr %.047, i64 377    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.de, i32 -2, ptr elementtype(i8) %i.de) #21, !srcloc !20
  %i.df = load i32, ptr %i.d, align 8
  %.fr92 = freeze i32 %i.df
  %i.dg = and i32 %.fr92, 256
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %switch.early.test, label %.critedge

switch.early.test:                                ; preds = %bb.aj
  switch i32 %i.c, label %bb.ak [
    i32 5242881, label %.critedge
    i32 4194304, label %.critedge
  ]

bb.ak:                                            ; preds = %switch.early.test
  %i.dh = getelementptr i8, ptr %.047, i64 16
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 56
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = icmp eq i32 %i.dk, 3
  br i1 %i.dl, label %bb.al, label %.critedge60

bb.al:                                            ; preds = %bb.ak
  %i.dm = getelementptr i8, ptr %i.di, i64 60
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = icmp eq i32 %i.dn, 1
  br i1 %i.do, label %.critedge, label %.critedge60

.critedge60:                                      ; preds = %bb.ak, %bb.al
  call void @tty_open_proc_set_tty(ptr noundef %1, ptr noundef %.047) #20
  br label %.critedge

.critedge:                                        ; preds = %switch.early.test, %switch.early.test, %bb.aj, %.critedge60, %bb.al
  call void @tty_unlock(ptr noundef %.047) #20
  br label %tty_alloc_file.exit

tty_alloc_file.exit:                              ; preds = %signal_pending.exit, %tty_open_current_tty.exit.thread.thread, %bb.ag, %signal_pending.exit73, %.backedge, %test_tsk_thread_flag.exit.i, %test_tsk_thread_flag.exit.i67, %bb.a, %.critedge
  %.048 = phi i32 [ 0, %.critedge ], [ -12, %bb.a ], [ -11, %test_tsk_thread_flag.exit.i ], [ -12, %.backedge ], [ -512, %signal_pending.exit73 ], [ %3, %tty_open_current_tty.exit.thread.thread ], [ -11, %signal_pending.exit ], [ %.086, %bb.ag ], [ -512, %test_tsk_thread_flag.exit.i67 ]
  ret i32 %.048
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tty_fasync(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %.val = load ptr, ptr %i.a, align 8
  %.val.val = load ptr, ptr %.val, align 8        ; 2 uses
  tail call void @tty_lock(ptr noundef %.val.val) #20
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %tty_hung_up_p.exit.thread, label %tty_hung_up_p.exit

tty_hung_up_p.exit:                               ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, @hung_up_tty_fops
  br i1 %.not, label %__tty_fasync.exit, label %tty_hung_up_p.exit.thread

tty_hung_up_p.exit.thread:                        ; preds = %bb.a, %tty_hung_up_p.exit
  %.val.i = load ptr, ptr %i.a, align 8
  %.val.val.i = load ptr, ptr %.val.i, align 8    ; 5 uses
  %.not.i.i = icmp eq ptr %.val.val.i, null
  br i1 %.not.i.i, label %tty_paranoia_check.exit.i, label %bb.b

tty_paranoia_check.exit.i:                        ; preds = %tty_hung_up_p.exit.thread
  %i.d = getelementptr i8, ptr %1, i64 32
  %.val29.i = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %.val29.i, i64 76
  %.val.i.i = load i32, ptr %i.e, align 4         ; 2 uses
  %i.f = lshr i32 %.val.i.i, 20
  %i.g = and i32 %.val.i.i, 1048575
  %i.h = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.50, i32 noundef %i.f, i32 noundef %i.g, ptr noundef @.str.52) #23 ; 0 uses
  br label %__tty_fasync.exit

bb.b:                                             ; preds = %tty_hung_up_p.exit.thread
  %.not.i7 = icmp eq i32 %2, 0
  br i1 %.not.i7, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val.val.i, i64 448
  %i.j = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %i.i) #20
  br label %__tty_fasync.exit

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @file_f_owner_allocate(ptr noundef %1) #20 ; 2 uses
  %.not27.i = icmp eq i32 %i.k, 0
  br i1 %.not27.i, label %bb.d, label %__tty_fasync.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %.val.val.i, i64 448
  %i.m = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.l) #20 ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %__tty_fasync.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.val.val.i, i64 408
  %i.p = getelementptr i8, ptr %.val.val.i, i64 424 ; 2 uses
  %i.q = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.p) #20
  %i.r = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not28.i = icmp eq ptr %i.r, null
  br i1 %.not28.i, label %bb.f, label %.thread35.i

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #25, !srcloc !26
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr i8, ptr %i.t, i64 1632
  %.val30.i = load ptr, ptr %i.u, align 32        ; 2 uses
  %.not.i31.i = icmp eq ptr %.val30.i, null
  br i1 %.not.i31.i, label %get_pid.exit.i, label %.thread35.i

.thread35.i:                                      ; preds = %bb.f, %bb.e
  %.02341.i = phi ptr [ %.val30.i, %bb.f ], [ %i.r, %bb.e ] ; 5 uses
  %.02439.i = phi i32 [ 1, %bb.f ], [ 2, %bb.e ]  ; 2 uses
  %i.v = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %.02341.i, i32 1, ptr nonnull elementtype(i32) %.02341.i) #21, !srcloc !17 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.g, !prof !18

bb.g:                                             ; preds = %.thread35.i
  %i.w = add i32 %i.v, 1
  %i.x = or i32 %i.w, %i.v
  %.not10.i.i.i.i.i = icmp sgt i32 %i.x, -1
  br i1 %.not10.i.i.i.i.i, label %get_pid.exit.i, label %.sink.split.i.i.i.i.i, !prof !27

.sink.split.i.i.i.i.i:                            ; preds = %bb.g, %.thread35.i
  %.sink.i.i.i.i.i = phi i32 [ 2, %.thread35.i ], [ 1, %bb.g ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %.02341.i, i32 noundef %.sink.i.i.i.i.i) #20
  br label %get_pid.exit.i

get_pid.exit.i:                                   ; preds = %.sink.split.i.i.i.i.i, %bb.g, %bb.f
  %.02342.i = phi ptr [ null, %bb.f ], [ %.02341.i, %bb.g ], [ %.02341.i, %.sink.split.i.i.i.i.i ] ; 2 uses
  %.02440.i = phi i32 [ 1, %bb.f ], [ %.02439.i, %bb.g ], [ %.02439.i, %.sink.split.i.i.i.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.p, i64 noundef %i.q) #20
  tail call void @__f_setown(ptr noundef %1, ptr noundef %.02342.i, i32 noundef %.02440.i, i32 noundef 0) #20
  tail call void @put_pid(ptr noundef %.02342.i) #20
  br label %__tty_fasync.exit

__tty_fasync.exit:                                ; preds = %get_pid.exit.i, %bb.d, %bb.c, %.thread.i, %tty_paranoia_check.exit.i, %tty_hung_up_p.exit
  %.0 = phi i32 [ -25, %tty_hung_up_p.exit ], [ 0, %tty_paranoia_check.exit.i ], [ %i.k, %bb.c ], [ 0, %get_pid.exit.i ], [ %i.m, %bb.d ], [ %i.j, %.thread.i ]
  tail call void @tty_unlock(ptr noundef %.val.val) #20
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_splice_read(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_show_fdinfo(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.a, align 8
  %.val.val = load ptr, ptr %.val, align 8        ; 3 uses
  %.not = icmp eq ptr %.val.val, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.val.val, i64 32
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.c, i64 256
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.e(ptr noundef nonnull %.val.val, ptr noundef %0) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @compat_tty_tiocsserial(ptr noundef %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
copy_from_user.exit:
  %2 = alloca %struct.serial_struct32, align 4    ; 8 uses
  %3 = alloca %struct.serial_struct, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %2, i8 0, i64 60, i1 false), !annotation !14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !annotation !14
  %i.b = call i64 @_copy_from_user(ptr noundef nonnull %2, ptr noundef %1, i64 noundef 60) #20
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.a, label %tty_set_serial.exit

bb.a:                                             ; preds = %copy_from_user.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef nonnull align 4 dereferenceable(44) %2, i64 44, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i32 %i.d to i64
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load i16, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i16 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 34568                      ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = call i32 @___ratelimit(ptr noundef @tty_set_serial._rs, ptr noundef @__func__.tty_set_serial) #20
  %.not9.i = icmp eq i32 %i.r, 0
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #25, !srcloc !26
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr i8, ptr %i.t, i64 2008
  %i.v = call i32 (ptr, ...) @_printk(ptr noundef @.str.53, ptr noundef @__func__.tty_set_serial, ptr noundef %i.u, i32 noundef %i.q) #23 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.w = getelementptr i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 248
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not10.i = icmp eq ptr %i.z, null
  br i1 %.not10.i, label %tty_set_serial.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = call i32 %i.z(ptr noundef %0, ptr noundef nonnull %3) #20, !inline_history !1
  br label %tty_set_serial.exit

end_hunk_0
