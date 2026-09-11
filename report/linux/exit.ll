Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/exit?download=true
inline.NumInlined: 297
inline.NumDeleted: 157
begin_hunk_0_@kill_orphaned_pgrp:bb.a
thread_group_empty.exit.i:                        ; preds = %bb.g
  %i.r = getelementptr i8, ptr %.02949.i, i64 1704
  %i.s = getelementptr i8, ptr %.02949.i, i64 2096
  %i.t = load ptr, ptr %i.s, align 16
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %.val3.i.i = load ptr, ptr %i.r, align 8
  %.not46.i = icmp eq ptr %.val3.i.i, %i.u
  br i1 %.not46.i, label %select.unfold.i, label %thread_group_empty.exit.thread.i

thread_group_empty.exit.thread.i:                 ; preds = %thread_group_empty.exit.i, %bb.g, %bb.f
  %i.v = getelementptr i8, ptr %.02949.i, i64 1544
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 1532
  %.val41.i = load i32, ptr %i.x, align 4
  %.not47.i = icmp eq i32 %.val41.i, 1
  br i1 %.not47.i, label %select.unfold.i, label %bb.h

bb.h:                                             ; preds = %thread_group_empty.exit.thread.i
  %i.y = getelementptr i8, ptr %i.w, i64 2096
  %.val.i = load ptr, ptr %i.y, align 16          ; 2 uses
  %i.z = getelementptr i8, ptr %.val.i, i64 392
  %.val.val.i = load ptr, ptr %i.z, align 8
  %.not38.i = icmp eq ptr %.val.val.i, %.val.val
  br i1 %.not38.i, label %select.unfold.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %.val.i, i64 400
  %.val42.val.i = load ptr, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %.02949.i, i64 2096
  %.029.val.i = load ptr, ptr %i.ab, align 16
  %i.ac = getelementptr i8, ptr %.029.val.i, i64 400
  %.029.val.val.i = load ptr, ptr %i.ac, align 8
  %i.ad = icmp eq ptr %.val42.val.i, %.029.val.val.i
  br i1 %i.ad, label %will_become_orphaned_pgrp.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.i, %bb.h, %thread_group_empty.exit.thread.i, %thread_group_empty.exit.i, %.lr.ph.i
  %i.ae = getelementptr i8, ptr %.02949.i, i64 1672
  %i.af = load volatile ptr, ptr %i.ae, align 8   ; 2 uses
  %.not39.i = icmp eq ptr %i.af, null
  %i.ag = getelementptr i8, ptr %i.af, i64 -1672  ; 2 uses
  %.not3453.i = icmp eq ptr %i.ag, null
  %.not34.i = or i1 %.not39.i, %.not3453.i
  br i1 %.not34.i, label %.thread26, label %.lr.ph.i

.thread26:                                        ; preds = %select.unfold.i, %bb.e
  %i.ah = load volatile ptr, ptr %i.j, align 8    ; 2 uses
  %.not26.i = icmp eq ptr %i.ah, null
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1672  ; 2 uses
  %.not273337.i = icmp eq ptr %i.ai, null
  %.not2733.i = or i1 %.not26.i, %.not273337.i
  br i1 %.not2733.i, label %will_become_orphaned_pgrp.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.thread26, %select.unfold.i22
  %.02234.i = phi ptr [ %i.ap, %select.unfold.i22 ], [ %i.ai, %.thread26 ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.02234.i, i64 2096
  %i.ak = load ptr, ptr %i.aj, align 16
  %i.al = getelementptr i8, ptr %i.ak, i64 116
  %i.am = load i32, ptr %i.al, align 4
  %.not28.i = trunc i32 %i.am to i1
  br i1 %.not28.i, label %has_stopped_jobs.exit, label %select.unfold.i22

select.unfold.i22:                                ; preds = %.lr.ph.i21
  %i.an = getelementptr i8, ptr %.02234.i, i64 1672
  %i.ao = load volatile ptr, ptr %i.an, align 8   ; 2 uses
  %.not29.i = icmp eq ptr %i.ao, null
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1672  ; 2 uses
  %.not2738.i = icmp eq ptr %i.ap, null
  %.not27.i = or i1 %.not29.i, %.not2738.i
  br i1 %.not27.i, label %will_become_orphaned_pgrp.exit, label %.lr.ph.i21

has_stopped_jobs.exit:                            ; preds = %.lr.ph.i21
  %i.aq = tail call i32 @__kill_pgrp_info(i32 noundef 1, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %.val.val) #16 ; 0 uses
  %i.ar = tail call i32 @__kill_pgrp_info(i32 noundef 18, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %.val.val) #16 ; 0 uses
  br label %will_become_orphaned_pgrp.exit

will_become_orphaned_pgrp.exit:                   ; preds = %bb.i, %select.unfold.i22, %.thread26, %has_stopped_jobs.exit, %bb.d, %bb.c
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @do_notify_pidfd(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @exit_ptrace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @group_send_sig_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @zap_pid_ns_processes(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__kill_pgrp_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__folio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @wait_consider_task(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 2) %1, ptr noundef %2) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %2, i64 1424       ; 4 uses
  %i.d = load volatile i32, ptr %i.c, align 16    ; 3 uses
  %i.e = icmp eq i32 %i.d, 16
  br i1 %i.e, label %wait_task_zombie.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne i32 %1, 0                        ; 3 uses
  %i.g = load i32, ptr %0, align 8                ; 2 uses
  switch i32 %i.g, label %bb.d [
    i32 4, label %eligible_pid.exit.i
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %2, i64 1632
  br label %task_pid_type.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %2, i64 2096
  %i.j = load ptr, ptr %i.i, align 16
  %i.k = getelementptr i8, ptr %i.j, i64 376
  %i.l = zext i32 %i.g to i64
  %i.m = getelementptr [8 x i8], ptr %i.k, i64 %i.l
  br label %task_pid_type.exit.i.i

task_pid_type.exit.i.i:                           ; preds = %bb.d, %bb.c
  %.0.in.i.i.i = phi ptr [ %i.h, %bb.c ], [ %i.m, %bb.d ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp ne ptr %.0.i.i.i, %i.o
  br label %eligible_pid.exit.i

eligible_pid.exit.i:                              ; preds = %task_pid_type.exit.i.i, %bb.b
  %.not.i = phi i1 [ false, %bb.b ], [ %i.p, %task_pid_type.exit.i.i ] ; 2 uses
  %brmerge.i = or i1 %i.f, %.not.i
  br i1 %brmerge.i, label %eligible_child.exit, label %bb.e

bb.e:                                             ; preds = %eligible_pid.exit.i
  %i.q = getelementptr i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = and i32 %i.r, 1073741824
  %.not6.i = icmp eq i32 %i.s, 0
  br i1 %.not6.i, label %.split, label %eligible_child.exit.thread

.split:                                           ; preds = %bb.e
  %i.t = getelementptr i8, ptr %2, i64 1432
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp slt i32 %i.r, 0
  %i.w = icmp ne i32 %i.u, 17
  %i.x = xor i1 %i.v, %i.w
  br i1 %i.x, label %wait_task_zombie.exit, label %eligible_child.exit.thread

eligible_child.exit:                              ; preds = %eligible_pid.exit.i
  br i1 %.not.i, label %wait_task_zombie.exit, label %eligible_child.exit.thread

eligible_child.exit.thread:                       ; preds = %.split, %bb.e, %eligible_child.exit
  %i.y = icmp eq i32 %i.d, 48
  br i1 %i.y, label %bb.f, label %bb.h, !prof !13

bb.f:                                             ; preds = %eligible_child.exit.thread
  br i1 %i.f, label %wait_task_zombie.exit, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %0, i64 80
  store i32 0, ptr %i.z, align 8
  br label %wait_task_zombie.exit

bb.h:                                             ; preds = %eligible_child.exit.thread
  br i1 %i.f, label %bb.k, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %2, i64 48
  %i.ab = load i32, ptr %i.aa, align 16
  %.not36 = icmp eq i32 %i.ab, 0
  br i1 %.not36, label %bb.k, label %bb.j, !prof !21

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %2, i64 1544
  %.val44 = load ptr, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %2, i64 1552
  %.val45 = load ptr, ptr %i.ad, align 16
  %i.ae = getelementptr i8, ptr %.val44, i64 2096
  %.val44.val = load ptr, ptr %i.ae, align 16
  %i.af = getelementptr i8, ptr %.val45, i64 2096
  %.val45.val = load ptr, ptr %i.af, align 16
  %.not = icmp ne ptr %.val44.val, %.val45.val
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.032 = phi i1 [ %.not, %bb.j ], [ false, %bb.h ], [ true, %bb.i ] ; 3 uses
  %i.ag = icmp eq i32 %i.d, 32
  br i1 %i.ag, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %2, i64 1432      ; 4 uses
  %.val = load i32, ptr %i.ah, align 8
  %i.ai = icmp sgt i32 %.val, -1
  br i1 %i.ai, label %thread_group_empty.exit, label %bb.m

thread_group_empty.exit:                          ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %2, i64 1704
  %i.ak = getelementptr i8, ptr %2, i64 2096
  %i.al = load ptr, ptr %i.ak, align 16
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %.val3.i = load ptr, ptr %i.aj, align 8
  %.not68 = icmp eq ptr %.val3.i, %i.am
  br i1 %.not68, label %bb.m, label %bb.aj

bb.m:                                             ; preds = %thread_group_empty.exit, %bb.l
  br i1 %.032, label %bb.n, label %bb.o, !prof !21

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr i8, ptr %2, i64 48
  %i.ao = load i32, ptr %i.an, align 16
  %.not40 = icmp eq i32 %i.ao, 0
  br i1 %.not40, label %bb.o, label %.thread, !prof !21

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ap = tail call i32 @__task_pid_nr_ns(ptr noundef %2, i32 noundef 0, ptr noundef null) #16 ; 3 uses
  tail call void @__rcu_read_lock() #16
  %i.aq = getelementptr i8, ptr %2, i64 1984
  %i.ar = load volatile ptr, ptr %i.aq, align 64
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.as, align 8 ; 2 uses
  tail call void @__rcu_read_unlock() #16
  %i.at = icmp eq i32 %.sroa.0.0.copyload.i, -1
  %i.au = load i32, ptr @overflowuid, align 4
  %spec.select.i.i = select i1 %i.at, i32 %i.au, i32 %.sroa.0.0.copyload.i
  %i.av = getelementptr i8, ptr %0, i64 4
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %i.ax = and i32 %i.aw, 4
  %.not.i46 = icmp eq i32 %i.ax, 0
  br i1 %.not.i46, label %wait_task_zombie.exit, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.ay = and i32 %i.aw, 16777216
  %.not120.i = icmp eq i32 %i.ay, 0
  br i1 %.not120.i, label %bb.t, label %bb.q, !prof !21

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr i8, ptr %2, i64 2096
  %i.ba = load ptr, ptr %i.az, align 16           ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 116
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.bc, 4
  %.not125.i = icmp eq i32 %i.bd, 0
  %i.be = getelementptr i8, ptr %i.ba, i64 96
  %i.bf = getelementptr i8, ptr %2, i64 1428
  %.in126.i = select i1 %.not125.i, ptr %i.bf, ptr %i.be
  %i.bg = load i32, ptr %.in126.i, align 4
  %i.bh = tail call fastcc ptr @get_task_struct(ptr noundef %2) #18, !srcloc !112 ; 0 uses
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #16
  %i.bi = getelementptr i8, ptr %0, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not127.i = icmp eq ptr %i.bj, null
  br i1 %.not127.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @getrusage(ptr noundef %2, i32 noundef -2, ptr noundef nonnull %i.bj) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call fastcc void @put_task_struct(ptr noundef %2) #18, !srcloc !113
  br label %bb.ah

bb.t:                                             ; preds = %bb.p
  %i.bk = getelementptr i8, ptr %2, i64 1544
  %.val134.i = load ptr, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %2, i64 1552
  %.val135.i = load ptr, ptr %i.bl, align 16
  %i.bm = getelementptr i8, ptr %.val134.i, i64 2096
  %.val134.val.i = load ptr, ptr %i.bm, align 16
  %i.bn = getelementptr i8, ptr %.val135.i, i64 2096
  %.val135.val.i = load ptr, ptr %i.bn, align 16
  %.not138.i = icmp eq ptr %.val134.val.i, %.val135.val.i
  br i1 %.not138.i, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val130.i = load i32, ptr %i.ah, align 8
  %.val130.fr.i = freeze i32 %.val130.i
  %i.bo = icmp sgt i32 %.val130.fr.i, -1          ; 2 uses
  %spec.select137.i = select i1 %i.bo, i32 48, i32 16
  br label %.thread.i

.thread.i:                                        ; preds = %bb.u, %bb.t
  %i.bp = phi i1 [ false, %bb.t ], [ %i.bo, %bb.u ] ; 2 uses
  %i.bq = phi i32 [ 16, %bb.t ], [ %spec.select137.i, %bb.u ] ; 2 uses
  %i.br = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c, i32 %i.bq, i32 32, ptr elementtype(i32) %i.c) #17, !srcloc !114
  %.not122.i = icmp eq i32 %i.br, 32
  br i1 %.not122.i, label %bb.v, label %wait_task_zombie.exit

bb.v:                                             ; preds = %.thread.i
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #16
  br i1 %i.bp, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val.i48 = load i32, ptr %i.ah, align 8
  %i.bs = icmp sgt i32 %.val.i48, -1
  br i1 %i.bs, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr i8, ptr %2, i64 2096
  %i.bu = load ptr, ptr %i.bt, align 16           ; 25 uses
  %i.bv = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #19, !srcloc !24
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr i8, ptr %i.bw, i64 2096
  %i.by = load ptr, ptr %i.bx, align 16           ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !annotation !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8, !annotation !30
  call void @thread_group_cputime_adjusted(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %i.bz = getelementptr i8, ptr %i.by, i64 432    ; 4 uses
  %i.ca = getelementptr i8, ptr %i.by, i64 436    ; 2 uses
  call void @_raw_spin_lock_irq(ptr noundef %i.ca) #16
  %i.cb = load i32, ptr %i.bz, align 4
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.bz, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !22
  %i.cd = load i64, ptr %i.a, align 8
  %i.ce = getelementptr i8, ptr %i.bu, i64 456
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = add i64 %i.cf, %i.cd
  %i.ch = getelementptr i8, ptr %i.by, i64 456    ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = add i64 %i.cg, %i.ci
  store i64 %i.cj, ptr %i.ch, align 8
  %i.ck = load i64, ptr %i.b, align 8
  %i.cl = getelementptr i8, ptr %i.bu, i64 464
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = add i64 %i.cm, %i.ck
  %i.co = getelementptr i8, ptr %i.by, i64 464    ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = add i64 %i.cn, %i.cp
  store i64 %i.cq, ptr %i.co, align 8
  %i.cr = getelementptr i8, ptr %2, i64 1768
  %.val131.i = load i64, ptr %i.cr, align 8
  %i.cs = getelementptr i8, ptr %i.bu, i64 472
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = add i64 %i.ct, %.val131.i
  %i.cv = getelementptr i8, ptr %i.bu, i64 480
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = add i64 %i.cu, %i.cw
  %i.cy = getelementptr i8, ptr %i.by, i64 480    ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = add i64 %i.cx, %i.cz
  store i64 %i.da, ptr %i.cy, align 8
  %i.db = getelementptr i8, ptr %2, i64 1832
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = getelementptr i8, ptr %i.bu, i64 544
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = add i64 %i.de, %i.dc
  %i.dg = getelementptr i8, ptr %i.bu, i64 560
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = add i64 %i.df, %i.dh
  %i.dj = getelementptr i8, ptr %i.by, i64 560    ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = add i64 %i.di, %i.dk
  store i64 %i.dl, ptr %i.dj, align 8
  %i.dm = getelementptr i8, ptr %2, i64 1840
  %i.dn = load i64, ptr %i.dm, align 16
  %i.do = getelementptr i8, ptr %i.bu, i64 552
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = add i64 %i.dp, %i.dn
  %i.dr = getelementptr i8, ptr %i.bu, i64 568
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = add i64 %i.dq, %i.ds
  %i.du = getelementptr i8, ptr %i.by, i64 568    ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = add i64 %i.dt, %i.dv
  store i64 %i.dw, ptr %i.du, align 8
  %i.dx = getelementptr i8, ptr %2, i64 1800
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr i8, ptr %i.bu, i64 512
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = add i64 %i.ea, %i.dy
  %i.ec = getelementptr i8, ptr %i.bu, i64 528
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = add i64 %i.eb, %i.ed
  %i.ef = getelementptr i8, ptr %i.by, i64 528    ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = add i64 %i.ee, %i.eg
  store i64 %i.eh, ptr %i.ef, align 8
  %i.ei = getelementptr i8, ptr %2, i64 1808
  %i.ej = load i64, ptr %i.ei, align 16
  %i.ek = getelementptr i8, ptr %i.bu, i64 520
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = add i64 %i.el, %i.ej
  %i.en = getelementptr i8, ptr %i.bu, i64 536
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = add i64 %i.em, %i.eo
  %i.eq = getelementptr i8, ptr %i.by, i64 536    ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = add i64 %i.ep, %i.er
  store i64 %i.es, ptr %i.eq, align 8
  %i.et = getelementptr i8, ptr %2, i64 2440      ; 2 uses
  %.val132.i = load i64, ptr %i.et, align 8
  %i.eu = lshr i64 %.val132.i, 9
  %i.ev = getelementptr i8, ptr %i.bu, i64 576
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = add i64 %i.eu, %i.ew
  %i.ey = getelementptr i8, ptr %i.bu, i64 592
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = add i64 %i.ex, %i.ez
  %i.fb = getelementptr i8, ptr %i.by, i64 592    ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = add i64 %i.fa, %i.fc
  store i64 %i.fd, ptr %i.fb, align 8
  %i.fe = getelementptr i8, ptr %2, i64 2448      ; 2 uses
  %.val133.i = load i64, ptr %i.fe, align 16
  %i.ff = lshr i64 %.val133.i, 9
  %i.fg = getelementptr i8, ptr %i.bu, i64 584
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = add i64 %i.ff, %i.fh
  %i.fj = getelementptr i8, ptr %i.bu, i64 600
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = add i64 %i.fi, %i.fk
  %i.fm = getelementptr i8, ptr %i.by, i64 600    ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = add i64 %i.fl, %i.fn
  store i64 %i.fo, ptr %i.fm, align 8
  %i.fp = getelementptr i8, ptr %i.bu, i64 608
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = getelementptr i8, ptr %i.bu, i64 616
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = call i64 @llvm.umax.i64(i64 %i.fq, i64 %i.fs) ; 2 uses
  %i.fu = getelementptr i8, ptr %i.by, i64 616    ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = icmp ult i64 %i.fv, %i.ft
  br i1 %i.fw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i64 %i.ft, ptr %i.fu, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fx = getelementptr i8, ptr %i.by, i64 624    ; 3 uses
  %i.fy = getelementptr i8, ptr %2, i64 2408
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = load i64, ptr %i.fx, align 8
  %i.gb = add i64 %i.ga, %i.fz                    ; 2 uses
  store i64 %i.gb, ptr %i.fx, align 8
  %i.gc = getelementptr i8, ptr %2, i64 2416
  %i.gd = load i64, ptr %i.gc, align 16
  %i.ge = getelementptr i8, ptr %i.by, i64 632    ; 3 uses
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = add i64 %i.gf, %i.gd                    ; 2 uses
  store i64 %i.gg, ptr %i.ge, align 8
  %i.gh = getelementptr i8, ptr %2, i64 2424
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = getelementptr i8, ptr %i.by, i64 640    ; 3 uses
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = add i64 %i.gk, %i.gi                    ; 2 uses
  store i64 %i.gl, ptr %i.gj, align 8
  %i.gm = getelementptr i8, ptr %2, i64 2432
  %i.gn = load i64, ptr %i.gm, align 64
  %i.go = getelementptr i8, ptr %i.by, i64 648    ; 3 uses
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = add i64 %i.gp, %i.gn                    ; 2 uses
  store i64 %i.gq, ptr %i.go, align 8
  %i.gr = load i64, ptr %i.et, align 8
  %i.gs = getelementptr i8, ptr %i.by, i64 656    ; 3 uses
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = add i64 %i.gt, %i.gr                    ; 2 uses
  store i64 %i.gu, ptr %i.gs, align 8
  %i.gv = load i64, ptr %i.fe, align 16
  %i.gw = getelementptr i8, ptr %i.by, i64 664    ; 3 uses
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = add i64 %i.gx, %i.gv                    ; 2 uses
  store i64 %i.gy, ptr %i.gw, align 8
  %i.gz = getelementptr i8, ptr %2, i64 2456
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = getelementptr i8, ptr %i.by, i64 672    ; 3 uses
  %i.hc = load i64, ptr %i.hb, align 8
  %i.hd = add i64 %i.hc, %i.ha                    ; 2 uses
  store i64 %i.hd, ptr %i.hb, align 8
  %i.he = getelementptr i8, ptr %i.bu, i64 624
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = add i64 %i.hf, %i.gb
  store i64 %i.hg, ptr %i.fx, align 8
  %i.hh = getelementptr i8, ptr %i.bu, i64 632
  %i.hi = load i64, ptr %i.hh, align 8
  %i.hj = add i64 %i.hi, %i.gg
  store i64 %i.hj, ptr %i.ge, align 8
  %i.hk = getelementptr i8, ptr %i.bu, i64 640
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = add i64 %i.hl, %i.gl
  store i64 %i.hm, ptr %i.gj, align 8
  %i.hn = getelementptr i8, ptr %i.bu, i64 648
  %i.ho = load i64, ptr %i.hn, align 8
  %i.hp = add i64 %i.ho, %i.gq
  store i64 %i.hp, ptr %i.go, align 8
  %i.hq = getelementptr i8, ptr %i.bu, i64 656
  %i.hr = load i64, ptr %i.hq, align 8
  %i.hs = add i64 %i.hr, %i.gu
  store i64 %i.hs, ptr %i.gs, align 8
  %i.ht = getelementptr i8, ptr %i.bu, i64 664
  %i.hu = load i64, ptr %i.ht, align 8
  %i.hv = add i64 %i.hu, %i.gy
  store i64 %i.hv, ptr %i.gw, align 8
  %i.hw = getelementptr i8, ptr %i.bu, i64 672
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = add i64 %i.hx, %i.hd
  store i64 %i.hy, ptr %i.hb, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !23
  %i.hz = load i32, ptr %i.bz, align 8
  %i.ia = add i32 %i.hz, 1
  store i32 %i.ia, ptr %i.bz, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %i.ca) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w, %bb.v
  %i.ib = getelementptr i8, ptr %0, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8            ; 2 uses
  %.not123.i = icmp eq ptr %i.ic, null
  br i1 %.not123.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @getrusage(ptr noundef %2, i32 noundef -2, ptr noundef nonnull %i.ic) #16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.id = getelementptr i8, ptr %2, i64 2096
  %i.ie = load ptr, ptr %i.id, align 16           ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 116
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = and i32 %i.ig, 4
  %.not124.i = icmp eq i32 %i.ih, 0
  %i.ii = getelementptr i8, ptr %i.ie, i64 96
  %i.ij = getelementptr i8, ptr %2, i64 1428
  %.in.i = select i1 %.not124.i, ptr %i.ij, ptr %i.ii
  %i.ik = load i32, ptr %.in.i, align 4           ; 3 uses
  %i.il = getelementptr i8, ptr %0, i64 24
  store i32 %i.ik, ptr %i.il, align 8
  br i1 %i.bp, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #16
  %i.im = getelementptr i8, ptr %2, i64 48
  %i.in = load i32, ptr %i.im, align 16
  %.not.i.i = icmp eq i32 %i.in, 0
  br i1 %.not.i.i, label %ptrace_unlink.exit.i, label %bb.ae, !prof !21

bb.ae:                                            ; preds = %bb.ad
  call void @__ptrace_unlink(ptr noundef %2) #16
  br label %ptrace_unlink.exit.i

ptrace_unlink.exit.i:                             ; preds = %bb.ae, %bb.ad
  %i.io = load i32, ptr %i.ah, align 8
  %i.ip = call zeroext i1 @do_notify_parent(ptr noundef %2, i32 noundef %i.io) #16
  %spec.select.i = select i1 %i.ip, i32 16, i32 32 ; 2 uses
  store i32 %spec.select.i, ptr %i.c, align 16
  call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #16
  br label %bb.af

bb.af:                                            ; preds = %ptrace_unlink.exit.i, %bb.ac
  %.1.i = phi i32 [ %spec.select.i, %ptrace_unlink.exit.i ], [ %i.bq, %bb.ac ]
  %i.iq = icmp eq i32 %.1.i, 16
  br i1 %i.iq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @release_task(ptr noundef %2) #18
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.s
  %.0114.i = phi i32 [ %i.bg, %bb.s ], [ %i.ik, %bb.ag ], [ %i.ik, %bb.af ] ; 3 uses
  %i.ir = getelementptr i8, ptr %0, i64 16
  %i.is = load ptr, ptr %i.ir, align 8            ; 5 uses
  %.not128.i = icmp eq ptr %i.is, null
  br i1 %.not128.i, label %wait_task_zombie.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.it = and i32 %.0114.i, 127                   ; 2 uses
  %i.iu = icmp eq i32 %i.it, 0                    ; 2 uses
  %i.iv = ashr i32 %.0114.i, 8
  %i.iw = and i32 %.0114.i, 128
  %.not129.i = icmp eq i32 %i.iw, 0
  %i.ix = select i1 %.not129.i, i32 2, i32 3
  %.sink139.i = select i1 %i.iu, i32 1, i32 %i.ix
  %.sink.i = select i1 %i.iu, i32 %i.iv, i32 %i.it
  %i.iy = getelementptr i8, ptr %i.is, i64 12
  store i32 %.sink139.i, ptr %i.iy, align 4
  %i.iz = getelementptr i8, ptr %i.is, i64 8
  store i32 %.sink.i, ptr %i.iz, align 4
  store i32 %i.ap, ptr %i.is, align 4
  %i.ja = getelementptr i8, ptr %i.is, i64 4
  store i32 %spec.select.i.i, ptr %i.ja, align 4
  br label %wait_task_zombie.exit

bb.aj:                                            ; preds = %thread_group_empty.exit
  br i1 %.032, label %.critedge, label %bb.ak, !prof !115

bb.ak:                                            ; preds = %bb.aj
  %i.jb = getelementptr i8, ptr %0, i64 4
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = and i32 %i.jc, 12
  %.not42 = icmp eq i32 %i.jd, 0
  br i1 %.not42, label %.thread62, label %.thread

.thread:                                          ; preds = %bb.k, %bb.ak, %bb.n
  %i.je = getelementptr i8, ptr %0, i64 80
  store i32 0, ptr %i.je, align 8
  br i1 %.032, label %bb.al, label %.thread62

.critedge:                                        ; preds = %bb.aj
  %3 = getelementptr i8, ptr %0, i64 80
  store i32 0, ptr %3, align 8
  br label %bb.al

bb.al:                                            ; preds = %.critedge, %.thread
  %i.jf = getelementptr i8, ptr %0, i64 4
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = and i32 %i.jg, 2
  %.not.i52 = icmp eq i32 %i.jh, 0
  br i1 %.not.i52, label %wait_task_stopped.exit.thread, label %bb.am

.thread62:                                        ; preds = %bb.ak, %.thread
  %i.ji = getelementptr i8, ptr %2, i64 1440      ; 2 uses
  %i.jj = load volatile i64, ptr %i.ji, align 32
  %i.jk = and i64 %i.jj, 138412032
  %or.cond.i.i = icmp ne i64 %i.jk, 134217728
  %i.jl = getelementptr i8, ptr %2, i64 1428      ; 2 uses
  %.not46.i = icmp eq ptr %i.jl, null
  %or.cond.i = or i1 %.not46.i, %or.cond.i.i
  br i1 %or.cond.i, label %wait_task_stopped.exit.thread, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jm = getelementptr i8, ptr %2, i64 2096      ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 16           ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 116
  %i.jp = load i32, ptr %i.jo, align 4
  %i.jq = and i32 %i.jp, 1
  %.not.i.i53 = icmp eq i32 %i.jq, 0
  %i.jr = getelementptr i8, ptr %i.jn, i64 96
  %.not4666.i = icmp eq ptr %i.jr, null
  %or.cond76.i = or i1 %.not4666.i, %.not.i.i53
  br i1 %or.cond76.i, label %wait_task_stopped.exit.thread, label %bb.ao

bb.an:                                            ; preds = %.thread62
  %i.js = getelementptr i8, ptr %2, i64 2104      ; 3 uses
  %i.jt = load ptr, ptr %i.js, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %i.jt) #16
  %i.ju = load volatile i64, ptr %i.ji, align 32
  %i.jv = and i64 %i.ju, 138412032
  %or.cond.i57.i = icmp eq i64 %i.jv, 134217728
  br i1 %or.cond.i57.i, label %task_stopped_code.exit59.thread.i, label %.thread.i49

bb.ao:                                            ; preds = %bb.am
  %i.jw = getelementptr i8, ptr %2, i64 2104      ; 3 uses
  %i.jx = load ptr, ptr %i.jw, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %i.jx) #16
  %i.jy = load ptr, ptr %i.jm, align 16           ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 116
  %i.ka = load i32, ptr %i.jz, align 4
  %i.kb = and i32 %i.ka, 1
  %.not.i54.i = icmp eq i32 %i.kb, 0
  %i.kc = getelementptr i8, ptr %i.jy, i64 96     ; 2 uses
  %.not47.i = icmp eq ptr %i.kc, null
  %or.cond87.i = or i1 %.not47.i, %.not.i54.i
  br i1 %or.cond87.i, label %.thread.i49, label %task_stopped_code.exit59.thread.i, !prof !116

task_stopped_code.exit59.thread.i:                ; preds = %bb.ao, %bb.an
  %.not77.i64 = phi i32 [ 5, %bb.ao ], [ 4, %bb.an ]
  %.0.i5686.i = phi ptr [ %i.kc, %bb.ao ], [ %i.jl, %bb.an ] ; 2 uses
  %i.kd = phi ptr [ %i.jw, %bb.ao ], [ %i.js, %bb.an ] ; 2 uses
  %i.ke = load i32, ptr %.0.i5686.i, align 4      ; 3 uses
  %.not48.i = icmp eq i32 %i.ke, 0
  br i1 %.not48.i, label %.thread.i49, label %bb.ap

bb.ap:                                            ; preds = %task_stopped_code.exit59.thread.i
  %i.kf = getelementptr i8, ptr %0, i64 4         ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4
  %i.kh = and i32 %i.kg, 16777216
  %.not49.i = icmp eq i32 %i.kh, 0
  br i1 %.not49.i, label %bb.aq, label %bb.ar, !prof !21

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %.0.i5686.i, align 4
  br label %bb.ar

.thread.i49:                                      ; preds = %task_stopped_code.exit59.thread.i, %bb.ao, %bb.an
  %.ph72.i = phi ptr [ %i.jw, %bb.ao ], [ %i.kd, %task_stopped_code.exit59.thread.i ], [ %i.js, %bb.an ]
  %i.ki = load ptr, ptr %.ph72.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.ki) #16
  br label %wait_task_stopped.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  tail call void @__rcu_read_lock() #16
  %i.kj = getelementptr i8, ptr %2, i64 1984
  %i.kk = load volatile ptr, ptr %i.kj, align 64
  %i.kl = getelementptr i8, ptr %i.kk, i64 8
  %.sroa.0.0.copyload.i51 = load i32, ptr %i.kl, align 8 ; 2 uses
  tail call void @__rcu_read_unlock() #16
  %i.km = icmp eq i32 %.sroa.0.0.copyload.i51, -1
  %i.kn = load i32, ptr @overflowuid, align 4
  %spec.select.i60.i = select i1 %i.km, i32 %i.kn, i32 %.sroa.0.0.copyload.i51
  %i.ko = load ptr, ptr %i.kd, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.ko) #16
  %i.kp = getelementptr i8, ptr %2, i64 40        ; 6 uses
  %i.kq = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.kp, i32 1, ptr elementtype(i32) %i.kp) #17, !srcloc !12 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.kq, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.as, !prof !13

bb.as:                                            ; preds = %bb.ar
  %i.kr = add i32 %i.kq, 1
  %i.ks = or i32 %i.kr, %i.kq
  %.not10.i.i.i.i.i = icmp sgt i32 %i.ks, -1
  br i1 %.not10.i.i.i.i.i, label %get_task_struct.exit.i, label %.sink.split.i.i.i.i.i, !prof !21

.sink.split.i.i.i.i.i:                            ; preds = %bb.as, %bb.ar
  %.sink.i.i.i.i.i = phi i32 [ 2, %bb.ar ], [ 1, %bb.as ]
  tail call void @refcount_warn_saturate(ptr noundef %i.kp, i32 noundef %.sink.i.i.i.i.i) #16
  br label %get_task_struct.exit.i

get_task_struct.exit.i:                           ; preds = %.sink.split.i.i.i.i.i, %bb.as
  %i.kt = tail call i32 @__task_pid_nr_ns(ptr noundef %2, i32 noundef 0, ptr noundef null) #16 ; 3 uses
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #16
  %i.ku = getelementptr i8, ptr %0, i64 32
  %i.kv = load ptr, ptr %i.ku, align 8            ; 2 uses
  %.not51.i = icmp eq ptr %i.kv, null
  br i1 %.not51.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %get_task_struct.exit.i
  tail call void @getrusage(ptr noundef %2, i32 noundef -2, ptr noundef nonnull %i.kv) #16
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %get_task_struct.exit.i
  %i.kw = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.kp, i32 -1, ptr elementtype(i32) %i.kp) #17, !srcloc !12 ; 2 uses
  %i.kx = icmp eq i32 %i.kw, 1
  br i1 %i.kx, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ky = icmp slt i32 %i.kw, 1
  br i1 %i.ky, label %bb.aw, label %put_task_struct.exit.i, !prof !13

bb.aw:                                            ; preds = %bb.av
  tail call void @refcount_warn_saturate(ptr noundef %i.kp, i32 noundef 3) #16
  br label %put_task_struct.exit.i

bb.ax:                                            ; preds = %bb.au
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !14
  %i.kz = getelementptr i8, ptr %2, i64 2880
  tail call void @call_rcu(ptr noundef %i.kz, ptr noundef nonnull @__put_task_struct_rcu_cb) #16
  br label %put_task_struct.exit.i

put_task_struct.exit.i:                           ; preds = %bb.ax, %bb.aw, %bb.av
  %i.la = load i32, ptr %i.kf, align 4
  %i.lb = and i32 %i.la, 16777216
  %.not52.i = icmp eq i32 %i.lb, 0
  br i1 %.not52.i, label %bb.ay, label %bb.az, !prof !21

bb.ay:                                            ; preds = %put_task_struct.exit.i
  %i.lc = shl i32 %i.ke, 8
  %i.ld = or disjoint i32 %i.lc, 127
  %i.le = getelementptr i8, ptr %0, i64 24
  store i32 %i.ld, ptr %i.le, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %put_task_struct.exit.i
  %i.lf = getelementptr i8, ptr %0, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8            ; 5 uses
  %.not53.i = icmp eq ptr %i.lg, null
  br i1 %.not53.i, label %wait_task_stopped.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lh = getelementptr i8, ptr %i.lg, i64 12
  store i32 %.not77.i64, ptr %i.lh, align 4
  %i.li = getelementptr i8, ptr %i.lg, i64 8
  store i32 %i.ke, ptr %i.li, align 4
  store i32 %i.kt, ptr %i.lg, align 4
  %i.lj = getelementptr i8, ptr %i.lg, i64 4
  store i32 %spec.select.i60.i, ptr %i.lj, align 4
  br label %wait_task_stopped.exit

wait_task_stopped.exit:                           ; preds = %bb.az, %bb.ba
  %.not43 = icmp eq i32 %i.kt, 0
  br i1 %.not43, label %wait_task_stopped.exit.thread, label %wait_task_zombie.exit

wait_task_stopped.exit.thread:                    ; preds = %.thread62, %bb.al, %bb.am, %.thread.i49, %wait_task_stopped.exit
  %i.lk = getelementptr i8, ptr %0, i64 4         ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4
  %i.lm = and i32 %i.ll, 8
  %.not.i54 = icmp eq i32 %i.lm, 0
  br i1 %.not.i54, label %wait_task_zombie.exit, label %bb.bb, !prof !21

bb.bb:                                            ; preds = %wait_task_stopped.exit.thread
  %i.ln = getelementptr i8, ptr %2, i64 2096      ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 16
  %i.lp = getelementptr i8, ptr %i.lo, i64 116
  %i.lq = load i32, ptr %i.lp, align 4
  %i.lr = and i32 %i.lq, 2
  %.not32.i = icmp eq i32 %i.lr, 0
  br i1 %.not32.i, label %wait_task_zombie.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ls = getelementptr i8, ptr %2, i64 2104      ; 3 uses
  %i.lt = load ptr, ptr %i.ls, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %i.lt) #16
  %i.lu = load ptr, ptr %i.ln, align 16
  %i.lv = getelementptr i8, ptr %i.lu, i64 116    ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4            ; 2 uses
  %i.lx = and i32 %i.lw, 2
  %.not33.i = icmp eq i32 %i.lx, 0
  br i1 %.not33.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ly = load ptr, ptr %i.ls, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.ly) #16
  br label %wait_task_zombie.exit

bb.be:                                            ; preds = %bb.bc
  %i.lz = load i32, ptr %i.lk, align 4
  %i.ma = and i32 %i.lz, 16777216
  %.not34.i = icmp eq i32 %i.ma, 0
  br i1 %.not34.i, label %bb.bf, label %bb.bg, !prof !21

bb.bf:                                            ; preds = %bb.be
  %i.mb = and i32 %i.lw, -3
  store i32 %i.mb, ptr %i.lv, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  tail call void @__rcu_read_lock() #16
  %i.mc = getelementptr i8, ptr %2, i64 1984
  %i.md = load volatile ptr, ptr %i.mc, align 64
  %i.me = getelementptr i8, ptr %i.md, i64 8
  %.sroa.0.0.copyload.i55 = load i32, ptr %i.me, align 8 ; 2 uses
  tail call void @__rcu_read_unlock() #16
  %i.mf = icmp eq i32 %.sroa.0.0.copyload.i55, -1
  %i.mg = load i32, ptr @overflowuid, align 4
  %spec.select.i.i56 = select i1 %i.mf, i32 %i.mg, i32 %.sroa.0.0.copyload.i55
  %i.mh = load ptr, ptr %i.ls, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.mh) #16
  %i.mi = tail call i32 @__task_pid_nr_ns(ptr noundef %2, i32 noundef 0, ptr noundef null) #16 ; 3 uses
  %i.mj = tail call fastcc ptr @get_task_struct(ptr noundef %2) #18, !srcloc !117 ; 0 uses
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #16
  %i.mk = getelementptr i8, ptr %0, i64 32
  %i.ml = load ptr, ptr %i.mk, align 8            ; 2 uses
  %.not35.i = icmp eq ptr %i.ml, null
  br i1 %.not35.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @getrusage(ptr noundef %2, i32 noundef -2, ptr noundef nonnull %i.ml) #16
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  tail call fastcc void @put_task_struct(ptr noundef %2) #18, !srcloc !118
  %i.mm = getelementptr i8, ptr %0, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8            ; 5 uses
  %.not36.i = icmp eq ptr %i.mn, null
  br i1 %.not36.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.mo = getelementptr i8, ptr %0, i64 24
  store i32 65535, ptr %i.mo, align 8
  br label %wait_task_zombie.exit

bb.bk:                                            ; preds = %bb.bi
  %i.mp = getelementptr i8, ptr %i.mn, i64 12
  store i32 6, ptr %i.mp, align 4
  store i32 %i.mi, ptr %i.mn, align 4
  %i.mq = getelementptr i8, ptr %i.mn, i64 4
  store i32 %spec.select.i.i56, ptr %i.mq, align 4
  %i.mr = getelementptr i8, ptr %i.mn, i64 8
  store i32 18, ptr %i.mr, align 4
  br label %wait_task_zombie.exit

wait_task_zombie.exit:                            ; preds = %.split, %bb.bk, %bb.bj, %bb.bd, %bb.bb, %wait_task_stopped.exit.thread, %bb.ai, %bb.ah, %.thread.i, %bb.o, %wait_task_stopped.exit, %bb.f, %bb.g, %eligible_child.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %eligible_child.exit ], [ %i.kt, %wait_task_stopped.exit ], [ 0, %bb.f ], [ %i.ap, %bb.ah ], [ 0, %bb.g ], [ 0, %.thread.i ], [ 0, %bb.o ], [ %i.ap, %bb.ai ], [ 0, %bb.bb ], [ 0, %bb.bd ], [ 0, %wait_task_stopped.exit.thread ], [ %i.mi, %bb.bk ], [ %i.mi, %bb.bj ], [ 0, %.split ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef ptr @get_task_struct(ptr noundef returned %0) unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.b = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 1, ptr elementtype(i32) %i.a) #17, !srcloc !12 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, 1
  %i.d = or i32 %i.c, %i.b
  %.not10.i.i.i = icmp sgt i32 %i.d, -1
  br i1 %.not10.i.i.i, label %refcount_inc.exit, label %.sink.split.i.i.i, !prof !21

.sink.split.i.i.i:                                ; preds = %bb.b, %bb.a
  %.sink.i.i.i = phi i32 [ 2, %bb.a ], [ 1, %bb.b ]
  tail call void @refcount_warn_saturate(ptr noundef %i.a, i32 noundef %.sink.i.i.i) #16
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %bb.b, %.sink.split.i.i.i
  ret ptr %0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @getrusage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @thread_group_cputime_adjusted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @child_wait_callback(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -40
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  switch i32 %i.b, label %bb.c [
    i32 4, label %eligible_pid.exit.thread.i
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 1632
  br label %eligible_pid.exit.i

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 2096
  %i.e = load ptr, ptr %i.d, align 16
  %i.f = getelementptr i8, ptr %i.e, i64 376
  %i.g = zext i32 %i.b to i64
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %i.g
  br label %eligible_pid.exit.i

eligible_pid.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.in.i.i.i = phi ptr [ %i.c, %bb.b ], [ %i.h, %bb.c ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8
  %i.i = getelementptr i8, ptr %0, i64 -32
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %.0.i.i.i, %i.j
  br i1 %.not.i, label %eligible_pid.exit.thread.i, label %pid_child_should_wake.exit.thread

eligible_pid.exit.thread.i:                       ; preds = %eligible_pid.exit.i, %bb.a
  %i.k = getelementptr i8, ptr %0, i64 -36
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 536870912
  %.not6.i = icmp eq i32 %i.m, 0
  br i1 %.not6.i, label %pid_child_should_wake.exit, label %bb.d

bb.d:                                             ; preds = %eligible_pid.exit.thread.i
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %3, i64 1552
  %i.q = load ptr, ptr %i.p, align 16
  %.not7.i = icmp eq ptr %i.o, %i.q
  br i1 %.not7.i, label %pid_child_should_wake.exit, label %pid_child_should_wake.exit.thread

pid_child_should_wake.exit:                       ; preds = %bb.d, %eligible_pid.exit.thread.i
  %i.r = tail call i32 @default_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #16
  br label %pid_child_should_wake.exit.thread

pid_child_should_wake.exit.thread:                ; preds = %bb.d, %eligible_pid.exit.i, %pid_child_should_wake.exit
  %.0 = phi i32 [ %i.r, %pid_child_should_wake.exit ], [ 0, %eligible_pid.exit.i ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

end_hunk_0
