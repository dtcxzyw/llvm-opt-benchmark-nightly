inline.NumInlined: 211
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__seccomp_filter:bb.a
  br label %bb.bh

bb.bc:                                            ; preds = %bb.az
  %i.jt = load i32, ptr @seccomp_actions_logged, align 4
  %i.ju = and i32 %i.jt, 16
  %i.jv = icmp ne i32 %i.ju, 0
  %i.jw = select i1 %i.ji, i1 %i.jv, i1 false
  %i.jx = zext i1 %i.jw to i8
  br label %bb.bh

bb.bd:                                            ; preds = %bb.az
  %i.jy = load i32, ptr @seccomp_actions_logged, align 4
  %i.jz = and i32 %i.jy, 128
  %i.ka = icmp ne i32 %i.jz, 0
  %i.kb = select i1 %i.ji, i1 %i.ka, i1 false
  %i.kc = zext i1 %i.kb to i8
  br label %bb.bh

bb.be:                                            ; preds = %bb.az
  %i.kd = load i32, ptr @seccomp_actions_logged, align 4
  %i.ke = trunc i32 %i.kd to i8
  %i.kf = lshr i8 %i.ke, 5
  br label %bb.bh

bb.bf:                                            ; preds = %bb.az
  %i.kg = load i32, ptr @seccomp_actions_logged, align 4
  %i.kh = trunc i32 %i.kg to i8
  %i.ki = lshr i8 %i.kh, 1
  br label %bb.bh

bb.bg:                                            ; preds = %bb.az
  %i.kj = load i32, ptr @seccomp_actions_logged, align 4
  %i.kk = trunc i32 %i.kj to i8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.0.i61 = phi i8 [ %i.kk, %bb.bg ], [ %i.ki, %bb.bf ], [ %i.jn, %bb.ba ], [ %i.js, %bb.bb ], [ %i.jx, %bb.bc ], [ %i.kc, %bb.bd ], [ %i.kf, %bb.be ]
  %i.kl = trunc i8 %.0.i61 to i1
  br i1 %i.kl, label %bb.bi, label %seccomp_log.exit

bb.bi:                                            ; preds = %bb.bh
  call void @audit_seccomp(i64 noundef range(i64 -2147483648, 2147483648) %i.je, i64 noundef 0, i32 noundef range(i32 0, -65535) %i.dj) #16
  br label %seccomp_log.exit

seccomp_log.exit:                                 ; preds = %.split22.i, %.split25.i, %bb.bi, %bb.bh, %bb.az, %bb.ap, %bb.ao, %seccomp_do_user_notification.exit.thread, %seccomp_run_filters.exit, %bb.t, %bb.q, %seccomp_log.exit60.thread
  %.0 = phi i32 [ -1, %seccomp_log.exit60.thread ], [ 0, %bb.ap ], [ 0, %seccomp_do_user_notification.exit.thread ], [ %., %bb.t ], [ 0, %bb.q ], [ -1, %bb.bi ], [ 0, %seccomp_run_filters.exit ], [ 0, %bb.ao ], [ -1, %bb.az ], [ -1, %bb.bh ], [ 0, %.split22.i ], [ 0, %.split25.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.0
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare dso_local void @do_exit(i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local range(i64 -2147483648, 2147483648) i64 @prctl_get_seccomp() local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #18, !srcloc !22
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 2208
  %i.d = load i32, ptr %i.c, align 32
  %i.e = sext i32 %i.d to i64
  ret i64 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__x64_sys_seccomp(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.b to i32
  %i.h = trunc i64 %i.d to i32
  %i.i = inttoptr i64 %i.f to ptr
  %i.j = tail call fastcc i64 @do_seccomp(i32 noundef %i.g, i32 noundef %i.h, ptr noundef %i.i) #17, !srcloc !58
  ret i64 %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__ia32_sys_seccomp(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 4294967295
  %i.h = trunc i64 %i.b to i32
  %i.i = trunc i64 %i.d to i32
  %i.j = inttoptr i64 %i.g to ptr
  %i.k = tail call fastcc i64 @do_seccomp(i32 noundef %i.h, i32 noundef %i.i, ptr noundef %i.j) #17, !srcloc !58
  ret i64 %i.k
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @prctl_set_seccomp(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  switch i64 %0, label %bb.b [
    i64 1, label %.split7
    i64 2, label %.split
  ]

.split7:                                          ; preds = %bb.a
  %i.a = tail call fastcc i64 @do_seccomp(i32 noundef 0, i32 noundef 0, ptr noundef null) #17, !srcloc !59
  br label %bb.b

.split:                                           ; preds = %bb.a
  %i.b = tail call fastcc i64 @do_seccomp(i32 noundef 1, i32 noundef 0, ptr noundef %1) #17, !srcloc !59
  br label %bb.b

bb.b:                                             ; preds = %.split7, %.split, %bb.a
  %.05 = phi i64 [ -22, %bb.a ], [ %i.b, %.split ], [ %i.a, %.split7 ]
  ret i64 %.05
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @do_seccomp(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.seccomp_notif_sizes, align 2 ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.sock_fprog, align 8         ; 9 uses
  %5 = alloca %struct.compat_sock_fprog, align 8  ; 7 uses
  switch i32 %0, label %seccomp_set_mode_filter.exit [
    i32 0, label %bb.b
    i32 1, label %bb.g
    i32 2, label %bb.ak
    i32 3, label %bb.ao
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i32 %1, 0
  %i.c = icmp ne ptr %2, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %seccomp_set_mode_filter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #18, !srcloc !22
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 2104     ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %i.g) #16
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.i = load volatile i32, ptr %i.h, align 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %seccomp_may_assign_mode.exit.i, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "848: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 848b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 848) #15, !srcloc !60
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 437, i32 0, i64 16) #15, !srcloc !61
  unreachable

seccomp_may_assign_mode.exit.i:                   ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.e, i64 2208     ; 2 uses
  %i.k = load i32, ptr %i.j, align 32
  %or.cond.i.i = icmp ult i32 %i.k, 2
  br i1 %or.cond.i.i, label %bb.e, label %seccomp_set_mode_strict.exit

bb.e:                                             ; preds = %seccomp_may_assign_mode.exit.i
  tail call void @disable_TSC() #16
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = load volatile i32, ptr %i.l, align 4
  %.not.i1.i = icmp eq i32 %i.m, 0
  br i1 %.not.i1.i, label %bb.f, label %seccomp_assign_mode.exit.i, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "849: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 849b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 849) #15, !srcloc !62
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 451, i32 0, i64 16) #15, !srcloc !63
  unreachable

seccomp_assign_mode.exit.i:                       ; preds = %bb.e
  store i32 1, ptr %i.j, align 32
  tail call void @arch_seccomp_spec_mitigate(ptr noundef %i.e) #17
  %i.n = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.n, i32 1, ptr elementtype(i8) %i.n) #15, !srcloc !64
  %.pre.i = load ptr, ptr %i.f, align 8
  br label %seccomp_set_mode_strict.exit

seccomp_set_mode_strict.exit:                     ; preds = %seccomp_may_assign_mode.exit.i, %seccomp_assign_mode.exit.i
  %i.o = phi ptr [ %.pre.i, %seccomp_assign_mode.exit.i ], [ %i.h, %seccomp_may_assign_mode.exit.i ]
  %.0.i = phi i64 [ 0, %seccomp_assign_mode.exit.i ], [ -22, %seccomp_may_assign_mode.exit.i ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.o) #16
  br label %seccomp_set_mode_filter.exit

bb.g:                                             ; preds = %bb.a
  %i.p = zext i32 %1 to i64                       ; 4 uses
  %i.q = icmp ugt i32 %1, 63
  br i1 %i.q, label %seccomp_set_mode_filter.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = and i64 %i.p, 1
  %.not.i = icmp eq i64 %i.r, 0                   ; 2 uses
  %i.s = and i64 %i.p, 8
  %.not44.i = icmp eq i64 %i.s, 0                 ; 4 uses
  %i.t = and i64 %i.p, 25
  %or.cond51.i = icmp eq i64 %i.t, 9
  %.not45.i = icmp samesign ugt i32 %1, 31
  %or.cond53.i = and i1 %.not45.i, %.not44.i
  %or.cond71.i = or i1 %or.cond51.i, %or.cond53.i
  br i1 %or.cond71.i, label %seccomp_set_mode_filter.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !65
  %i.u = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #18, !srcloc !22
  %i.v = inttoptr i64 %i.u to ptr                 ; 8 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 8
  %i.y = and i32 %i.x, 2
  %.not.i.i.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.not.i.i, label %copy_from_user.exit.i.i, label %copy_from_user.exit8.i.i

copy_from_user.exit8.i.i:                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i64 0, ptr %5, align 8, !annotation !65
  %i.z = call i64 @_copy_from_user(ptr noundef nonnull %5, ptr noundef %2, i64 noundef 8) #16
  %.not6.i.i = icmp eq i64 %i.z, 0
  br i1 %.not6.i.i, label %bb.j, label %.thread.i.i

.thread.i.i:                                      ; preds = %copy_from_user.exit8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %seccomp_prepare_user_filter.exit.thread.i

bb.j:                                             ; preds = %copy_from_user.exit8.i.i
  %i.aa = load i16, ptr %5, align 8               ; 2 uses
  store i16 %i.aa, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.k

copy_from_user.exit.i.i:                          ; preds = %bb.i
  %i.ag = call i64 @_copy_from_user(ptr noundef nonnull %4, ptr noundef %2, i64 noundef 16) #16
  %.not.i.i14 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i14, label %copy_from_user.exit._crit_edge.i.i, label %seccomp_prepare_user_filter.exit.thread.i

copy_from_user.exit._crit_edge.i.i:               ; preds = %copy_from_user.exit.i.i
  %.pre.i.i = load i16, ptr %4, align 8
  br label %bb.k

bb.k:                                             ; preds = %copy_from_user.exit._crit_edge.i.i, %bb.j
  %i.ah = phi i16 [ %.pre.i.i, %copy_from_user.exit._crit_edge.i.i ], [ %i.aa, %bb.j ]
  %i.ai = add i16 %i.ah, -4097
  %or.cond.i.i.i = icmp ult i16 %i.ai, -4096
  br i1 %or.cond.i.i.i, label %seccomp_prepare_user_filter.exit.thread.i, label %task_no_new_privs.exit.i.i.i

task_no_new_privs.exit.i.i.i:                     ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %i.v, i64 1464
  %i.ak = load volatile i64, ptr %i.aj, align 8
  %.in.i.i.i.i = trunc i64 %i.ak to i1
  br i1 %.in.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %task_no_new_privs.exit.i.i.i
  %i.al = call zeroext i1 @ns_capable_noaudit(ptr noundef nonnull @init_user_ns, i32 noundef 21) #16
  br i1 %i.al, label %bb.m, label %seccomp_prepare_user_filter.exit.thread.i

bb.m:                                             ; preds = %bb.l, %task_no_new_privs.exit.i.i.i
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 64), align 16
  %i.an = call noalias align 8 dereferenceable_or_null(216) ptr @__kmalloc_cache_noprof(ptr noundef %i.am, i32 noundef range(i32 3264, 11776) 11712, i64 noundef range(i64 32, 217) 216) #21 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %seccomp_prepare_user_filter.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr i8, ptr %i.an, i64 168
  call void @mutex_init_generic(ptr noundef %i.ao) #16
  %i.ap = getelementptr i8, ptr %i.an, i64 152
  %i.aq = call i32 @bpf_prog_create_from_user(ptr noundef %i.ap, ptr noundef nonnull %4, ptr noundef nonnull @seccomp_check_filter, i1 noundef zeroext true) #16 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @kfree(ptr noundef nonnull %i.an) #16
  %i.as = sext i32 %i.aq to i64
  %i.at = inttoptr i64 %i.as to ptr
  br label %seccomp_prepare_user_filter.exit.i

bb.p:                                             ; preds = %bb.n
  store volatile i32 1, ptr %i.an, align 8
  %i.au = getelementptr i8, ptr %i.an, i64 4
  store volatile i32 1, ptr %i.au, align 4
  %i.av = getelementptr i8, ptr %i.an, i64 192
  call void @__init_waitqueue_head(ptr noundef %i.av, ptr noundef nonnull @.str.6, ptr noundef nonnull @seccomp_prepare_filter.__key.5) #16
  br label %seccomp_prepare_user_filter.exit.i

seccomp_prepare_user_filter.exit.thread.i:        ; preds = %bb.m, %bb.l, %bb.k, %copy_from_user.exit.i.i, %.thread.i.i
  %.04.i.ph.i = phi ptr [ inttoptr (i64 -13 to ptr), %bb.l ], [ inttoptr (i64 -22 to ptr), %bb.k ], [ inttoptr (i64 -14 to ptr), %copy_from_user.exit.i.i ], [ inttoptr (i64 -14 to ptr), %.thread.i.i ], [ inttoptr (i64 -12 to ptr), %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.q

seccomp_prepare_user_filter.exit.i:               ; preds = %bb.p, %bb.o
  %.04.i.i = phi ptr [ %i.at, %bb.o ], [ %i.an, %bb.p ] ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.aw = icmp ugt ptr %.04.i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %seccomp_prepare_user_filter.exit.i, %seccomp_prepare_user_filter.exit.thread.i
  %.04.i59.i = phi ptr [ %.04.i.ph.i, %seccomp_prepare_user_filter.exit.thread.i ], [ %.04.i.i, %seccomp_prepare_user_filter.exit.i ]
  %i.ax = ptrtoint ptr %.04.i59.i to i64
  br label %seccomp_set_mode_filter.exit

bb.r:                                             ; preds = %seccomp_prepare_user_filter.exit.i
  br i1 %.not44.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = call i32 @get_unused_fd_flags(i32 noundef 524288) #16 ; 4 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ba = sext i32 %i.ay to i64
  br label %bb.ai

bb.u:                                             ; preds = %bb.s
  %i.bb = call fastcc ptr @init_listener(ptr noundef %.04.i.i) #17, !srcloc !66 ; 3 uses
  %i.bc = icmp ugt ptr %i.bb, inttoptr (i64 -4096 to ptr)
  br i1 %i.bc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @put_unused_fd(i32 noundef %i.ay) #16
  %i.bd = ptrtoint ptr %i.bb to i64
  br label %bb.ai

bb.w:                                             ; preds = %bb.u, %bb.r
  %.034.i = phi i32 [ %i.ay, %bb.u ], [ -1, %bb.r ] ; 3 uses
  %.0.i11 = phi ptr [ %i.bb, %bb.u ], [ null, %bb.r ] ; 3 uses
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = getelementptr i8, ptr %i.v, i64 2096
  %i.bf = load ptr, ptr %i.be, align 16
  %i.bg = getelementptr i8, ptr %i.bf, i64 1072
  %i.bh = call i32 @mutex_lock_killable(ptr noundef %i.bg) #16
  %.not47.i = icmp eq i32 %i.bh, 0
  br i1 %.not47.i, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bi = getelementptr i8, ptr %i.v, i64 2104    ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  call void @_raw_spin_lock_irq(ptr noundef %i.bj) #16
  %i.bk = load ptr, ptr %i.bi, align 8
  %i.bl = load volatile i32, ptr %i.bk, align 4
  %.not.i54.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i54.i, label %bb.z, label %seccomp_may_assign_mode.exit.i12, !prof !11

bb.z:                                             ; preds = %bb.y
  call void asm sideeffect "848: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 848b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 848) #15, !srcloc !60
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 437, i32 0, i64 16) #15, !srcloc !61
  unreachable

seccomp_may_assign_mode.exit.i12:                 ; preds = %bb.y
  %i.bm = getelementptr i8, ptr %i.v, i64 2208
  %i.bn = load i32, ptr %i.bm, align 32
  %i.bo = and i32 %i.bn, -3
  %or.cond.i.i13 = icmp eq i32 %i.bo, 0
  br i1 %or.cond.i.i13, label %bb.aa, label %has_duplicate_listener.exit.i

bb.aa:                                            ; preds = %seccomp_may_assign_mode.exit.i12
  %i.bp = getelementptr i8, ptr %.04.i.i, i64 160
  %i.bq = load ptr, ptr %i.bp, align 8
  %.not.i55.i = icmp eq ptr %i.bq, null
  br i1 %.not.i55.i, label %.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = getelementptr i8, ptr %i.v, i64 2216
  %.08.i.i = load ptr, ptr %i.br, align 8         ; 2 uses
  %.not69.i.i = icmp eq ptr %.08.i.i, null
  br i1 %.not69.i.i, label %.loopexit.i, label %.lr.ph.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.bs = getelementptr i8, ptr %.010.i.i, i64 144
  %.0.i.i = load ptr, ptr %i.bs, align 8          ; 2 uses
  %.not6.i56.i = icmp eq ptr %.0.i.i, null
  br i1 %.not6.i56.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !67

.lr.ph.i.i:                                       ; preds = %bb.ab, %bb.ac
  %.010.i.i = phi ptr [ %.0.i.i, %bb.ac ], [ %.08.i.i, %bb.ab ] ; 2 uses
  %i.bt = getelementptr i8, ptr %.010.i.i, i64 160
  %i.bu = load ptr, ptr %i.bt, align 8
  %.not7.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not7.not.i.i, label %bb.ac, label %has_duplicate_listener.exit.i

.loopexit.i:                                      ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.bv = call fastcc i64 @seccomp_attach_filter(i32 noundef %1, ptr noundef %.04.i.i) #17, !srcloc !68 ; 2 uses
  %.not48.i = icmp eq i64 %i.bv, 0
  br i1 %.not48.i, label %bb.ad, label %has_duplicate_listener.exit.i

bb.ad:                                            ; preds = %.loopexit.i
  call fastcc void @seccomp_assign_mode(ptr noundef %i.v, i64 noundef 2, i64 noundef %i.p) #17, !srcloc !69
  br label %has_duplicate_listener.exit.i

has_duplicate_listener.exit.i:                    ; preds = %.lr.ph.i.i, %bb.ad, %.loopexit.i, %seccomp_may_assign_mode.exit.i12
  %.036.i = phi ptr [ %.04.i.i, %seccomp_may_assign_mode.exit.i12 ], [ %.04.i.i, %.loopexit.i ], [ null, %bb.ad ], [ %.04.i.i, %.lr.ph.i.i ] ; 3 uses
  %.035.i = phi i64 [ -22, %seccomp_may_assign_mode.exit.i12 ], [ %i.bv, %.loopexit.i ], [ 0, %bb.ad ], [ -16, %.lr.ph.i.i ] ; 3 uses
  %i.bw = load ptr, ptr %i.bi, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %i.bw) #16
end_hunk_0
