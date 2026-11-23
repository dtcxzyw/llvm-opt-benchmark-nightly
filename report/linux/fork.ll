Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/fork?download=true
inline.NumInlined: 529
inline.NumDeleted: 289
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mm_release:bb.a
  %i.b = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !42
  tail call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !43
  tail call void @asm_load_gs_index(i16 noundef zeroext 0) #17
  %i.c = and i64 %i.b, 512
  %.not.i3.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i3.not.i.i, label %load_gs_index.exit, label %bb.c

bb.c:                                             ; preds = %_static_cpu_has.exit.i.i
  tail call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !44
  br label %load_gs_index.exit

load_gs_index.exit:                               ; preds = %bb.b, %_static_cpu_has.exit.i.i, %bb.c
  tail call void asm sideeffect "1:\09movw $0, %fs\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 5 \0A .popsection\0A", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 0) #18, !srcloc !101
  %i.d = getelementptr i8, ptr %0, i64 1736       ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %load_gs_index.exit
  %i.f = getelementptr i8, ptr %1, i64 132
  %i.g = load volatile i32, ptr %i.f, align 4
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.j = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.e, i32 0, i64 4, i64 %i.i) #18, !srcloc !102
  %i.k = extractvalue { ptr, i64 } %i.j, 1
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.k)
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = tail call i64 @do_futex(ptr noundef %i.l, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0) #17 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %load_gs_index.exit
  %i.n = getelementptr i8, ptr %0, i64 1720       ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not14 = icmp eq ptr %i.o, null
  br i1 %.not14, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %0, i64 2272       ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.p) #17
  %i.q = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %complete_vfork_done.exit, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.n, align 8
  tail call void @complete(ptr noundef nonnull %i.q) #17
  br label %complete_vfork_done.exit

complete_vfork_done.exit:                         ; preds = %bb.h, %bb.i
  tail call void @_raw_spin_unlock(ptr noundef %i.p) #17
  br label %bb.j

bb.j:                                             ; preds = %complete_vfork_done.exit, %bb.g
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @exec_mm_release(ptr noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  tail call void @futex_exec_release(ptr noundef %0) #17
  tail call fastcc void @mm_release(ptr noundef %0, ptr noundef %1) #21, !srcloc !103
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @futex_exec_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__cleanup_sighand(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %i.b = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 -1, ptr elementtype(i32) %i.a) #18, !srcloc !21 ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %bb.c, label %refcount_dec_and_test.exit.thread, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %i.a, i32 noundef 3) #17
  br label %refcount_dec_and_test.exit.thread

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !22
  tail call void @signalfd_cleanup(ptr noundef %0) #17
  %i.e = load ptr, ptr @sighand_cachep, align 8
  tail call void @kmem_cache_free(ptr noundef %i.e, ptr noundef %0) #17
  br label %refcount_dec_and_test.exit.thread

refcount_dec_and_test.exit.thread:                ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @signalfd_cleanup(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_set_tid_address(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #20, !srcloc !32
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 1736
  store ptr %i.c, ptr %i.f, align 8
  %i.g = tail call i32 @__task_pid_nr_ns(ptr noundef %i.e, i32 noundef 0, ptr noundef null) #17
  %i.h = sext i32 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_set_tid_address(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #20, !srcloc !32
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 1736
  store ptr %i.d, ptr %i.g, align 8
  %i.h = tail call i32 @__task_pid_nr_ns(ptr noundef %i.f, i32 noundef 0, ptr noundef null) #17
  %i.i = sext i32 %i.h to i64
  ret i64 %i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @pidfd_prepare(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %1, 4096
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 88         ; 3 uses
  tail call void @_raw_spin_lock_irq(ptr noundef %i.b) #17
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load volatile ptr, ptr %i.c, align 8
  %.not.i.i.not = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %1, 128
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 56
  %i.g = load volatile ptr, ptr %i.f, align 8
  %.not.i.i20.not = icmp eq ptr %i.g, null
  br i1 %.not.i.i20.not, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.b, %bb.d
  %.0.ph = phi i32 [ -2, %bb.d ], [ -3, %bb.b ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.b) #17
  br label %class_get_unused_fd_destructor.exit

bb.e:                                             ; preds = %bb.c, %bb.d
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.b) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.h = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #17 ; 4 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %class_get_unused_fd_destructor.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = or i32 %1, 2
  %i.k = tail call ptr @pidfs_alloc_file(ptr noundef %0, i32 noundef %i.j) #17 ; 3 uses
  %i.l = icmp ugt ptr %i.k, inttoptr (i64 -4096 to ptr)
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.k, ptr %2, align 8
  br label %class_get_unused_fd_destructor.exit

bb.i:                                             ; preds = %bb.g
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = trunc i64 %i.m to i32
  tail call void @put_unused_fd(i32 noundef %i.h) #17
  br label %class_get_unused_fd_destructor.exit

class_get_unused_fd_destructor.exit:              ; preds = %bb.h, %bb.f, %bb.i, %.thread
  %.2 = phi i32 [ %.0.ph, %.thread ], [ %i.n, %bb.i ], [ %i.h, %bb.f ], [ %i.h, %bb.h ]
  ret i32 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @pidfs_alloc_file(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @copy_process(ptr nofree noundef readnone captures(address) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.multiprocess_signals, align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !annotation !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8
  %i.b = load i64, ptr %3, align 8                ; 38 uses
  %i.c = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #20, !srcloc !32
  %i.d = inttoptr i64 %i.c to ptr                 ; 23 uses
  %i.e = getelementptr i8, ptr %i.d, i64 2088
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = and i64 %i.b, 131584
  %i.h = icmp eq i64 %i.g, 131584
  %i.i = and i64 %i.b, 268435968
  %i.j = icmp eq i64 %i.i, 268435968
  %or.cond473 = or i1 %i.h, %i.j
  br i1 %or.cond473, label %bb.eb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = and i64 %i.b, 65536
  %.not.not = icmp eq i64 %i.k, 0                 ; 6 uses
  %i.l = and i64 %i.b, 67584
  %or.cond.not.not = icmp eq i64 %i.l, 65536
  br i1 %or.cond.not.not, label %bb.eb, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = and i64 %i.b, 256
  %.not366 = icmp eq i64 %i.m, 0
  %i.n = and i64 %i.b, 2304
  %or.cond418 = icmp eq i64 %i.n, 2048
  br i1 %or.cond418, label %bb.eb, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = and i64 %i.b, 32768
  %.not367 = icmp eq i64 %i.o, 0                  ; 2 uses
  br i1 %.not367, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.d, i64 2096
  %i.q = load ptr, ptr %i.p, align 16
  %i.r = getelementptr i8, ptr %i.q, i64 116
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 64
  %.not368 = icmp eq i32 %i.t, 0
  br i1 %.not368, label %bb.f, label %bb.eb

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = and i64 %i.b, 805306368
  %.not369 = icmp eq i64 %i.u, 0
  br i1 %.not369, label %bb.h, label %bb.eb

bb.h:                                             ; preds = %bb.g
  %i.v = tail call ptr @task_active_pid_ns(ptr noundef %i.d) #17
  %i.w = getelementptr i8, ptr %i.f, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %.not370 = icmp eq ptr %i.v, %i.x
  br i1 %.not370, label %bb.i, label %bb.eb

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.y = and i64 %i.b, 4096
  %.not371 = icmp eq i64 %i.y, 0                  ; 2 uses
  %i.z = and i64 %i.b, 4198400
  %or.cond419.not = icmp eq i64 %i.z, 4198400
  br i1 %or.cond419.not, label %bb.eb, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = and i64 %i.b, 17179869184
  %.not373 = icmp eq i64 %i.aa, 0                 ; 2 uses
  br i1 %.not373, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = and i64 %i.b, 98304
  %brmerge475.not = icmp eq i64 %i.ab, 0
  br i1 %brmerge475.not, label %bb.l, label %bb.eb

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr i8, ptr %3, i64 40
  %i.ad = load i32, ptr %i.ac, align 8
  %.not374 = icmp eq i32 %i.ad, 0
  br i1 %.not374, label %.thread449, label %bb.eb

bb.m:                                             ; preds = %bb.j
  br i1 %.not367, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr i8, ptr %i.d, i64 2096
  %i.af = load ptr, ptr %i.ae, align 16
  %i.ag = getelementptr i8, ptr %i.af, i64 128
  %i.ah = load i8, ptr %i.ag, align 8
  %i.ai = and i8 %i.ah, 4
  %.not375 = icmp ne i8 %i.ai, 0
  %i.aj = and i64 %i.b, 34359803904
  %brmerge.not = icmp eq i64 %i.aj, 34359803904
  %or.cond = select i1 %.not375, i1 true, i1 %brmerge.not
  br i1 %or.cond, label %bb.eb, label %.thread449

bb.o:                                             ; preds = %bb.m
  %.old = and i64 %i.b, 34359803904
  %brmerge.not.old = icmp eq i64 %.old, 34359803904
  br i1 %brmerge.not.old, label %bb.eb, label %.thread449

.thread449:                                       ; preds = %bb.n, %bb.l, %bb.o
  %.not376452.in = and i64 %i.b, 34359738368
  %.not376452 = icmp eq i64 %.not376452.in, 0     ; 2 uses
  %i.ak = and i64 %i.b, 68719476736
  %.not377 = icmp eq i64 %i.ak, 0                 ; 2 uses
  br i1 %.not377, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.thread449
  %i.al = and i64 %i.b, 17179938816
  %brmerge478.not = icmp eq i64 %i.al, 17179873280
  br i1 %brmerge478.not, label %bb.q, label %bb.eb

bb.q:                                             ; preds = %bb.p
  br i1 %.not376452, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.am = tail call zeroext i1 @ns_capable(ptr noundef @init_user_ns, i32 noundef 21) #17
  br i1 %i.am, label %bb.s, label %bb.eb

bb.s:                                             ; preds = %bb.q, %bb.r, %.thread449
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.ao = getelementptr i8, ptr %i.d, i64 2104    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %i.ap) #17
  br i1 %.not.not, label %bb.t, label %task_sigpending.exit

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr i8, ptr %i.d, i64 2096
  %i.ar = load ptr, ptr %i.aq, align 16
  %i.as = getelementptr i8, ptr %i.ar, i64 88     ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  store volatile ptr %i.at, ptr %i.an, align 8
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %hlist_add_head.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = getelementptr i8, ptr %i.at, i64 8
  store volatile ptr %i.an, ptr %i.au, align 8
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %bb.t, %bb.u
  store volatile ptr %i.an, ptr %i.as, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16
  store volatile ptr %i.as, ptr %i.av, align 8
  br label %task_sigpending.exit

task_sigpending.exit:                             ; preds = %hlist_add_head.exit, %bb.s
  call void @recalc_sigpending() #17
  %i.aw = load ptr, ptr %i.ao, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %i.aw) #17
  %i.ax = load volatile i64, ptr %i.d, align 8
  %i.ay = and i64 %i.ax, 2
  %.not378 = icmp eq i64 %i.ay, 0
  br i1 %.not378, label %bb.v, label %bb.dy

bb.v:                                             ; preds = %task_sigpending.exit
  %i.az = call fastcc ptr @dup_task_struct(ptr noundef %i.d, i32 noundef %2) #21, !srcloc !104 ; 155 uses
  %.not379 = icmp eq ptr %i.az, null
  br i1 %.not379, label %bb.dy, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = call fastcc i32 @copy_exec_state(i64 noundef %i.b, ptr noundef %i.az) #21, !srcloc !105 ; 2 uses
  %.not380 = icmp eq i32 %i.ba, 0
  br i1 %.not380, label %bb.x, label %bb.dx

bb.x:                                             ; preds = %bb.w
  %i.bb = getelementptr i8, ptr %i.az, i64 44     ; 9 uses
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.bd = and i32 %i.bc, -2097153                 ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4
  %i.be = getelementptr i8, ptr %3, i64 44        ; 5 uses
  %i.bf = load i8, ptr %i.be, align 4             ; 2 uses
  %i.bg = and i8 %i.bf, 1
  %.not381 = icmp eq i8 %i.bg, 0
  br i1 %.not381, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = or i32 %i.bc, 2097152                   ; 2 uses
  store i32 %i.bh, ptr %i.bb, align 4
  %.pre = load i8, ptr %i.be, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bi = phi i32 [ %i.bh, %bb.y ], [ %i.bd, %bb.x ] ; 2 uses
  %i.bj = phi i8 [ %.pre, %bb.y ], [ %i.bf, %bb.x ] ; 2 uses
  %i.bk = and i8 %i.bj, 4
  %.not382 = icmp eq i8 %i.bk, 0
  br i1 %.not382, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bl = or i32 %i.bi, 16384                     ; 2 uses
  store i32 %i.bl, ptr %i.bb, align 4
  %i.bm = getelementptr i8, ptr %i.az, i64 2112
  store i64 -262401, ptr %i.bm, align 8
end_hunk_0
begin_hunk_1_@copy_process:bb.a
  store volatile ptr %i.dt, ptr %i.du, align 16
  %i.dv = getelementptr i8, ptr %i.az, i64 1192
  store i8 0, ptr %i.dv, align 8
  %i.dw = getelementptr i8, ptr %i.az, i64 1200   ; 3 uses
  store volatile ptr %i.dw, ptr %i.dw, align 16
  %i.dx = getelementptr i8, ptr %i.az, i64 1208
  store volatile ptr %i.dw, ptr %i.dx, align 8
  %i.dy = getelementptr i8, ptr %i.az, i64 1196
  store i32 -1, ptr %i.dy, align 4
  %i.dz = getelementptr i8, ptr %i.az, i64 1224   ; 3 uses
  store volatile ptr %i.dz, ptr %i.dz, align 8
  %i.ea = getelementptr i8, ptr %i.az, i64 1232
  store volatile ptr %i.dz, ptr %i.ea, align 16
  %i.eb = getelementptr i8, ptr %i.az, i64 1240
  store i32 0, ptr %i.eb, align 8
  %i.ec = getelementptr i8, ptr %i.az, i64 1720
  store ptr null, ptr %i.ec, align 8
  %i.ed = getelementptr i8, ptr %i.az, i64 2272
  store i32 0, ptr %i.ed, align 32
  %i.ee = getelementptr i8, ptr %i.az, i64 2136   ; 3 uses
  %i.ef = getelementptr i8, ptr %i.az, i64 2152
  store i64 0, ptr %i.ef, align 8
  store volatile ptr %i.ee, ptr %i.ee, align 8
  %i.eg = getelementptr i8, ptr %i.az, i64 2144
  store volatile ptr %i.ee, ptr %i.eg, align 32
  %i.eh = getelementptr i8, ptr %i.az, i64 1752
  %i.ei = getelementptr i8, ptr %i.az, i64 2072   ; 2 uses
  store ptr null, ptr %i.ei, align 8
  %i.ej = getelementptr i8, ptr %i.az, i64 2080   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(44) %i.eh, i8 0, i64 44, i1 false)
  %i.ek = load ptr, ptr %i.ej, align 32
  %.not.i424 = icmp eq ptr %i.ek, null
  br i1 %.not.i424, label %io_uring_fork.exit.thread, label %io_uring_fork.exit

io_uring_fork.exit:                               ; preds = %delayacct_tsk_init.exit
  %i.el = call i32 @__io_uring_fork(ptr noundef nonnull %i.az) #17 ; 2 uses
  %.not389 = icmp eq i32 %i.el, 0
  br i1 %.not389, label %io_uring_fork.exit.thread, label %mpol_put.exit, !prof !106

io_uring_fork.exit.thread:                        ; preds = %delayacct_tsk_init.exit, %io_uring_fork.exit
  %i.em = getelementptr i8, ptr %i.d, i64 2840
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = getelementptr i8, ptr %i.az, i64 2848
  store i64 %i.en, ptr %i.eo, align 32
  %i.ep = getelementptr i8, ptr %i.az, i64 2408
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(56) %i.ep, i8 0, i64 56, i1 false)
  call void @acct_clear_integrals(ptr noundef nonnull %i.az) #17
  %i.eq = getelementptr i8, ptr %i.az, i64 1848
  %i.er = getelementptr i8, ptr %i.az, i64 1856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(72) %i.er, i8 0, i64 72, i1 false)
  store i64 -1, ptr %i.eq, align 8
  %i.es = getelementptr i8, ptr %i.az, i64 1872
  store i64 -1, ptr %i.es, align 16
  %i.et = getelementptr i8, ptr %i.az, i64 1896
  store i64 -1, ptr %i.et, align 8
  %i.eu = getelementptr i8, ptr %i.az, i64 2376   ; 2 uses
  store ptr null, ptr %i.eu, align 8
  %i.ev = getelementptr i8, ptr %i.az, i64 2192   ; 2 uses
  store ptr null, ptr %i.ev, align 16
  call void @cgroup_fork(ptr noundef nonnull %i.az) #17
  %i.ew = load i8, ptr %i.be, align 4
  %i.ex = and i8 %i.ew, 1
  %.not390 = icmp eq i8 %i.ex, 0
  br i1 %.not390, label %bb.at, label %bb.as

bb.as:                                            ; preds = %io_uring_fork.exit.thread
  %i.ey = call zeroext i1 @set_kthread_struct(ptr noundef nonnull %i.az) #17
  br i1 %i.ey, label %bb.at, label %mpol_put.exit

bb.at:                                            ; preds = %bb.as, %io_uring_fork.exit.thread
  %i.ez = getelementptr i8, ptr %i.az, i64 2664   ; 4 uses
  %i.fa = load ptr, ptr %i.ez, align 8            ; 2 uses
  %.not.i425 = icmp eq ptr %i.fa, null
  br i1 %.not.i425, label %mpol_dup.exit.thread, label %mpol_dup.exit

mpol_dup.exit:                                    ; preds = %bb.at
  %i.fb = call ptr @__mpol_dup(ptr noundef nonnull %i.fa) #17 ; 3 uses
  store ptr %i.fb, ptr %i.ez, align 8
  %i.fc = icmp ugt ptr %i.fb, inttoptr (i64 -4096 to ptr)
  br i1 %i.fc, label %bb.au, label %mpol_dup.exit.thread

bb.au:                                            ; preds = %mpol_dup.exit
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = trunc i64 %i.fd to i32
  store ptr null, ptr %i.ez, align 8
  br label %mpol_put.exit

mpol_dup.exit.thread:                             ; preds = %bb.at, %mpol_dup.exit
  %i.ff = getelementptr i8, ptr %i.az, i64 2500
  store i32 -1, ptr %i.ff, align 4
  %i.fg = getelementptr i8, ptr %i.az, i64 2496
  store i32 0, ptr %i.fg, align 64
  %i.fh = getelementptr i8, ptr %i.az, i64 2900
  store i32 0, ptr %i.fh, align 4
  %i.fi = getelementptr i8, ptr %i.az, i64 2320
  store ptr null, ptr %i.fi, align 16
  %i.fj = getelementptr i8, ptr %i.az, i64 2336
  store ptr null, ptr %i.fj, align 32
  call void @unwind_task_init(ptr noundef nonnull %i.az) #17
  %i.fk = call i32 @sched_fork(i64 noundef %i.b, ptr noundef nonnull %i.az) #17 ; 2 uses
  %.not391 = icmp eq i32 %i.fk, 0
  br i1 %.not391, label %bb.av, label %bb.dr

bb.av:                                            ; preds = %mpol_dup.exit.thread
  %i.fl = call i32 @perf_event_init_task(ptr noundef nonnull %i.az, i64 noundef %i.b) #17 ; 2 uses
  %.not392 = icmp eq i32 %i.fl, 0
  br i1 %.not392, label %bb.aw, label %bb.dq

bb.aw:                                            ; preds = %bb.av
  %i.fm = call i32 @audit_alloc(ptr noundef nonnull %i.az) #17 ; 2 uses
  %.not393 = icmp eq i32 %i.fm, 0
  br i1 %.not393, label %bb.ax, label %audit_free.exit

bb.ax:                                            ; preds = %bb.aw
  %i.fn = getelementptr i8, ptr %i.az, i64 2040   ; 3 uses
  store volatile ptr %i.fn, ptr %i.fn, align 8
  %i.fo = getelementptr i8, ptr %i.az, i64 2048
  store volatile ptr %i.fn, ptr %i.fo, align 64
  %i.fp = call i32 @security_task_alloc(ptr noundef nonnull %i.az, i64 noundef %i.b) #17 ; 2 uses
  %.not394 = icmp eq i32 %i.fp, 0
  br i1 %.not394, label %bb.ay, label %bb.do

bb.ay:                                            ; preds = %bb.ax
  %i.fq = call i32 @copy_semundo(i64 noundef %i.b, ptr noundef nonnull %i.az) #17 ; 2 uses
  %.not395 = icmp eq i32 %i.fq, 0
  br i1 %.not395, label %bb.az, label %bb.dn

bb.az:                                            ; preds = %bb.ay
  %i.fr = load i8, ptr %i.be, align 4
  %i.fs = lshr i8 %i.fr, 3
  %i.ft = and i8 %i.fs, 1
  %i.fu = zext nneg i8 %i.ft to i32
  %i.fv = call fastcc i32 @copy_files(i64 noundef %i.b, ptr noundef %i.az, i32 noundef %i.fu) #21, !srcloc !107 ; 2 uses
  %.not396 = icmp eq i32 %i.fv, 0
  br i1 %.not396, label %bb.ba, label %bb.dm

bb.ba:                                            ; preds = %bb.az
  %i.fw = call fastcc i32 @copy_fs(i64 noundef %i.b, ptr noundef %i.az) #21, !srcloc !108 ; 2 uses
  %.not397 = icmp eq i32 %i.fw, 0
  br i1 %.not397, label %bb.bb, label %bb.dl

bb.bb:                                            ; preds = %bb.ba
  %i.fx = call fastcc i32 @copy_sighand(i64 noundef %i.b, ptr noundef %i.az) #21, !srcloc !109 ; 2 uses
  %.not398 = icmp eq i32 %i.fx, 0
  br i1 %.not398, label %bb.bc, label %bb.dk

bb.bc:                                            ; preds = %bb.bb
  %i.fy = call fastcc i32 @copy_signal(i64 noundef %i.b, ptr noundef %i.az) #21, !srcloc !110 ; 2 uses
  %.not399 = icmp eq i32 %i.fy, 0
  br i1 %.not399, label %bb.bd, label %bb.dj

bb.bd:                                            ; preds = %bb.bc
  %i.fz = call fastcc i32 @copy_mm(i64 noundef %i.b, ptr noundef %i.az) #21, !srcloc !111 ; 2 uses
  %.not400 = icmp eq i32 %i.fz, 0
  br i1 %.not400, label %bb.be, label %bb.dh

bb.be:                                            ; preds = %bb.bd
  %i.ga = call i32 @copy_namespaces(i64 noundef %i.b, ptr noundef nonnull %i.az) #17 ; 2 uses
  %.not401 = icmp eq i32 %i.ga, 0
  br i1 %.not401, label %bb.bf, label %bb.df

bb.bf:                                            ; preds = %bb.be
  %i.gb = getelementptr i8, ptr %i.d, i64 2376
  %i.gc = load ptr, ptr %i.gb, align 8
  %.not.i427 = icmp eq ptr %i.gc, null
  br i1 %.not.i427, label %copy_io.exit.thread, label %copy_io.exit

copy_io.exit:                                     ; preds = %bb.bf
  %i.gd = call i32 @__copy_io(i64 noundef %i.b, ptr noundef nonnull %i.az) #17 ; 2 uses
  %.not402 = icmp eq i32 %i.gd, 0
  br i1 %.not402, label %copy_io.exit.thread, label %bb.de

copy_io.exit.thread:                              ; preds = %bb.bf, %copy_io.exit
  %i.ge = call i32 @copy_thread(ptr noundef nonnull %i.az, ptr noundef %3) #17 ; 2 uses
  %.not403 = icmp eq i32 %i.ge, 0
  br i1 %.not403, label %bb.bg, label %bb.dc

bb.bg:                                            ; preds = %copy_io.exit.thread
  %.not404 = icmp eq ptr %0, @init_struct_pid
  br i1 %.not404, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gf = getelementptr i8, ptr %i.az, i64 2088
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = getelementptr i8, ptr %i.gg, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = getelementptr i8, ptr %3, i64 72
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = getelementptr i8, ptr %3, i64 80
  %i.gm = load i64, ptr %i.gl, align 8
  %i.gn = call ptr @alloc_pid(ptr noundef %i.gi, ptr noundef %i.gk, i64 noundef %i.gm) #17 ; 3 uses
  %i.go = icmp ugt ptr %i.gn, inttoptr (i64 -4096 to ptr)
  br i1 %i.go, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = trunc i64 %i.gp to i32
  br label %bb.db

bb.bj:                                            ; preds = %bb.bh, %bb.bg
  %.0327 = phi ptr [ %i.gn, %bb.bh ], [ @init_struct_pid, %bb.bg ] ; 12 uses
  br i1 %.not371, label %.thread458, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %spec.select = select i1 %.not.not, i32 4096, i32 4224 ; 2 uses
  %i.gr = or disjoint i32 %spec.select, 512
  %.1334 = select i1 %.not377, i32 %spec.select, i32 %i.gr
  %i.gs = call i32 @pidfd_prepare(ptr noundef %.0327, i32 noundef %.1334, ptr noundef nonnull %i.a) #21 ; 5 uses
  %i.gt = icmp slt i32 %i.gs, 0
  br i1 %i.gt, label %bb.cz, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gu = getelementptr i8, ptr %3, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = call i64 @llvm.read_register.i64(metadata !1)
  %i.gx = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.gv, i32 %i.gs, i64 4, i64 %i.gw) #18, !srcloc !112 ; 2 uses
  %i.gy = extractvalue { ptr, i64 } %i.gx, 0
  %i.gz = extractvalue { ptr, i64 } %i.gx, 1
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = trunc i64 %i.ha to i32                  ; 2 uses
  call void @llvm.write_register.i64(metadata !1, i64 %i.gz)
  %.not405 = icmp eq i32 %i.hb, 0
  br i1 %.not405, label %.thread458, label %.thread467

.thread458:                                       ; preds = %bb.bl, %bb.bj
  %.1 = phi i32 [ -1, %bb.bj ], [ %i.gs, %bb.bl ] ; 2 uses
  %i.hc = getelementptr i8, ptr %i.az, i64 2360
  store ptr null, ptr %i.hc, align 8
  %i.hd = load i32, ptr %i.bb, align 4
  %i.he = and i32 %i.hd, -536870913
  store i32 %i.he, ptr %i.bb, align 4
  %i.hf = getelementptr i8, ptr %i.az, i64 2528
  call void @llvm.memset.p0.i64(ptr noundef align 32 dereferenceable(72) %i.hf, i8 0, i64 72, i1 false)
  %i.hg = getelementptr i8, ptr %i.az, i64 2544   ; 3 uses
  store volatile ptr %i.hg, ptr %i.hg, align 16
  %i.hh = getelementptr i8, ptr %i.az, i64 2552
  store volatile ptr %i.hg, ptr %i.hh, align 8
  %i.hi = getelementptr i8, ptr %i.az, i64 2592
  store i32 0, ptr %i.hi, align 32
  %i.hj = getelementptr i8, ptr %i.az, i64 2568
  call void @mutex_init_generic(ptr noundef %i.hj) #17
  %i.hk = and i64 %i.b, 16640
  %i.hl = icmp eq i64 %i.hk, 256                  ; 2 uses
  br i1 %i.hl, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.thread458
  %i.hm = getelementptr i8, ptr %i.az, i64 2160
  %i.hn = getelementptr i8, ptr %i.az, i64 2176
  call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %i.hm, i8 0, i64 16, i1 false)
  store i32 2, ptr %i.hn, align 64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.thread458
  call void @user_disable_single_step(ptr noundef nonnull %i.az) #17
  %i.ho = getelementptr i8, ptr %i.az, i64 8      ; 8 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ho, i32 -5, ptr elementtype(i8) %i.ho) #18, !srcloc !45
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ho, i32 -9, ptr elementtype(i8) %i.ho) #18, !srcloc !45
  %.not.i429 = icmp eq ptr %.0327, null           ; 3 uses
  br i1 %.not.i429, label %pid_nr.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hp = getelementptr i8, ptr %.0327, i64 128
  %i.hq = load i32, ptr %i.hp, align 8
  br label %pid_nr.exit

pid_nr.exit:                                      ; preds = %bb.bn, %bb.bo
  %.0.i430 = phi i32 [ %i.hq, %bb.bo ], [ 0, %bb.bn ] ; 2 uses
  %i.hr = getelementptr i8, ptr %i.az, i64 1528   ; 2 uses
  store i32 %.0.i430, ptr %i.hr, align 8
  br i1 %.not.not, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %pid_nr.exit
  %i.hs = getelementptr i8, ptr %i.d, i64 1592
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = getelementptr i8, ptr %i.az, i64 1592
  store ptr %i.ht, ptr %i.hu, align 8
  %i.hv = getelementptr i8, ptr %i.d, i64 1532
  %i.hw = load i32, ptr %i.hv, align 4
  br label %bb.br

bb.bq:                                            ; preds = %pid_nr.exit
  %i.hx = getelementptr i8, ptr %i.az, i64 1592
  store ptr %i.az, ptr %i.hx, align 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.sink = phi i32 [ %.0.i430, %bb.bq ], [ %i.hw, %bb.bp ]
  %i.hy = getelementptr i8, ptr %i.az, i64 1532
  store i32 %.sink, ptr %i.hy, align 4
  %i.hz = getelementptr i8, ptr %i.az, i64 2824
  store i32 0, ptr %i.hz, align 8
  %i.ia = getelementptr i8, ptr %i.az, i64 2828
  store i32 32, ptr %i.ia, align 4
  %i.ib = getelementptr i8, ptr %i.az, i64 2832
  store i64 0, ptr %i.ib, align 16
  %i.ic = getelementptr i8, ptr %i.az, i64 1436
  store i32 0, ptr %i.ic, align 4
  %i.id = getelementptr i8, ptr %i.az, i64 2184
  store ptr null, ptr %i.id, align 8
  call void @clear_posix_cputimers_work(ptr noundef nonnull %i.az) #17
  %i.ie = getelementptr i8, ptr %i.az, i64 3040
  call void @llvm.memset.p0.i64(ptr noundef align 32 dereferenceable(16) %i.ie, i8 0, i64 16, i1 false)
  %i.if = call i32 @cgroup_can_fork(ptr noundef nonnull %i.az, ptr noundef %3) #17 ; 2 uses
  %.not406 = icmp eq i32 %i.if, 0
  br i1 %.not406, label %bb.bs, label %bb.cy

bb.bs:                                            ; preds = %bb.br
  %i.ig = call i32 @sched_cgroup_fork(ptr noundef nonnull %i.az, ptr noundef %3) #17 ; 2 uses
  %.not407 = icmp eq i32 %i.ig, 0
  br i1 %.not407, label %bb.bt, label %bb.cx

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.hl, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ih = call i32 @futex_hash_allocate_default() #17 ; 2 uses
  %.not408 = icmp eq i32 %i.ih, 0
  br i1 %.not408, label %bb.bv, label %bb.cx

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ii = call i64 @ktime_get() #17
  %i.ij = getelementptr i8, ptr %i.az, i64 1816
  store i64 %i.ii, ptr %i.ij, align 8
  %i.ik = call i64 @ktime_get_with_offset(i32 noundef 1) #17
  %i.il = getelementptr i8, ptr %i.az, i64 1824
  store i64 %i.ik, ptr %i.il, align 32
  call void @_raw_write_lock_irq(ptr noundef @tasklist_lock) #17
  %i.im = and i64 %i.b, 98304
  %.not409 = icmp eq i64 %i.im, 0
  br i1 %.not409, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.in = getelementptr i8, ptr %i.d, i64 1544
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = getelementptr i8, ptr %i.az, i64 1544
  store ptr %i.io, ptr %i.ip, align 8
  %i.iq = getelementptr i8, ptr %i.d, i64 2256
  %i.ir = load i64, ptr %i.iq, align 16
  %i.is = getelementptr i8, ptr %i.az, i64 2256
  store i64 %i.ir, ptr %i.is, align 16
  br i1 %.not.not, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.it = getelementptr i8, ptr %i.d, i64 1592
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = getelementptr i8, ptr %i.iu, i64 1432
  %i.iw = load i32, ptr %i.iv, align 8
  br label %bb.bz

bb.by:                                            ; preds = %bb.bv
  %i.ix = getelementptr i8, ptr %i.az, i64 1544
  store ptr %i.d, ptr %i.ix, align 8
  %i.iy = getelementptr i8, ptr %i.d, i64 2264
  %i.iz = load i64, ptr %i.iy, align 8
  %i.ja = getelementptr i8, ptr %i.az, i64 2256
  store i64 %i.iz, ptr %i.ja, align 16
  %i.jb = getelementptr i8, ptr %3, i64 40
  %i.jc = load i32, ptr %i.jb, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bw, %bb.bx, %bb.by
  %.sink516 = phi i32 [ %i.jc, %bb.by ], [ %i.iw, %bb.bx ], [ -1, %bb.bw ]
  %i.jd = getelementptr i8, ptr %i.az, i64 1432
  store i32 %.sink516, ptr %i.jd, align 8
  %i.je = load ptr, ptr %i.ao, align 8
  call void @_raw_spin_lock(ptr noundef %i.je) #17
  br i1 %.not366, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jf = call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !42
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !43
  %i.jg = getelementptr i8, ptr %i.az, i64 2704
  call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(40) %i.jg, i8 0, i64 40, i1 false)
  %i.jh = getelementptr i8, ptr %i.az, i64 2728
  store i32 -1, ptr %i.jh, align 8
  %i.ji = and i64 %i.jf, 512
  %.not.i1.i.not.i.i = icmp eq i64 %i.ji, 0
  br i1 %.not.i1.i.not.i.i, label %rseq_fork.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !44
  br label %rseq_fork.exit

bb.cc:                                            ; preds = %bb.bz
  %i.jj = getelementptr i8, ptr %i.az, i64 2704
  %i.jk = getelementptr i8, ptr %i.d, i64 2704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 16 dereferenceable(40) %i.jj, ptr noundef align 16 dereferenceable(40) %i.jk, i64 40, i1 false)
  br label %rseq_fork.exit

rseq_fork.exit:                                   ; preds = %bb.ca, %bb.cb, %bb.cc
  br i1 %.not.i429, label %ns_of_pid.exit, label %bb.cd

bb.cd:                                            ; preds = %rseq_fork.exit
  %i.jl = getelementptr i8, ptr %.0327, i64 4
  %i.jm = load i32, ptr %i.jl, align 4
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr [16 x i8], ptr %.0327, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.jo, i64 136
  %i.jq = load ptr, ptr %i.jp, align 8
  br label %ns_of_pid.exit

end_hunk_1
