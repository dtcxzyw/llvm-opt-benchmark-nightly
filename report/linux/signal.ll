Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/signal?download=true
inline.NumInlined: 658
inline.NumDeleted: 230
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@calculate_sigpending:bb.a
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr @freezer_active, i1 false) #21
          to label %freezing.exit.thread.i [label %freezing.exit.i], !srcloc !26

freezing.exit.i:                                  ; preds = %recalc_sigpending_tsk.exit.i
  %i.r = tail call zeroext i1 @freezing_slow_path(ptr noundef %i.b) #20
  br i1 %i.r, label %recalc_sigpending.exit, label %freezing.exit.thread.i

freezing.exit.thread.i:                           ; preds = %recalc_sigpending_tsk.exit.i, %freezing.exit.i
  %i.s = load volatile i64, ptr %i.b, align 32
  %i.t = and i64 %i.s, 2
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %recalc_sigpending.exit, label %bb.e, !prof !18

bb.e:                                             ; preds = %freezing.exit.thread.i
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.b, i32 -3, ptr elementtype(i8) %i.b) #21, !srcloc !27
  br label %recalc_sigpending.exit

recalc_sigpending.exit:                           ; preds = %recalc_sigpending_tsk.exit.thread.i, %freezing.exit.i, %freezing.exit.thread.i, %bb.e
  %i.u = load ptr, ptr %i.c, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.u) #20
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local i32 @next_signal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = load i64, ptr %1, align 8
  %i.d = xor i64 %i.c, -1
  %i.e = and i64 %i.b, %i.d                       ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.e, 1073743064                 ; 2 uses
  %.not15 = icmp eq i64 %i.f, 0
  %spec.select = select i1 %.not15, i64 %i.e, i64 %i.f
  %i.g = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %spec.select) #23, !srcloc !28
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %i.h, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.012 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i32 %.012
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @task_set_jobctl_pending(ptr nofree noundef captures(address) %0, i64 noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = and i64 %1, -4128768
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "661: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 661b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 661) #21, !srcloc !81
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 283, i32 0, i64 16) #21, !srcloc !82
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not9 = icmp samesign ugt i64 %1, 2097151
  %i.b = and i64 %1, 1703936
  %.not10 = icmp eq i64 %i.b, 0
  %i.c = and i1 %.not9, %.not10
  br i1 %i.c, label %bb.d, label %task_sigpending.exit.i, !prof !19

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "662: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 662b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 662) #21, !srcloc !83
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 284, i32 0, i64 16) #21, !srcloc !84
  unreachable

task_sigpending.exit.i:                           ; preds = %bb.c
  %i.d = load volatile i64, ptr %0, align 8
  %i.e = and i64 %i.d, 2
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %fatal_signal_pending.exit.thread, label %fatal_signal_pending.exit

fatal_signal_pending.exit:                        ; preds = %task_sigpending.exit.i
  %i.f = getelementptr i8, ptr %0, i64 2152
  %.val.i = load i64, ptr %i.f, align 8
  %i.g = and i64 %.val.i, 256
  %.not11 = icmp eq i64 %i.g, 0
  br i1 %.not11, label %fatal_signal_pending.exit.thread, label %.thread, !prof !29

fatal_signal_pending.exit.thread:                 ; preds = %task_sigpending.exit.i, %fatal_signal_pending.exit
  %i.h = getelementptr i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 4
  %.not14 = icmp eq i32 %i.j, 0
  br i1 %.not14, label %._crit_edge, label %.thread, !prof !30

._crit_edge:                                      ; preds = %fatal_signal_pending.exit.thread
  %i.k = and i64 %1, 65535
  %.not12 = icmp eq i64 %i.k, 0
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 1440
  %.pre = load i64, ptr %.phi.trans.insert, align 32 ; 2 uses
  %i.l = and i64 %.pre, -65536
  %i.m = select i1 %.not12, i64 %.pre, i64 %i.l
  %i.n = getelementptr i8, ptr %0, i64 1440
  %i.o = or i64 %i.m, %1
  store i64 %i.o, ptr %i.n, align 32
  br label %.thread

.thread:                                          ; preds = %fatal_signal_pending.exit, %fatal_signal_pending.exit.thread, %._crit_edge
  %.0 = phi i1 [ true, %._crit_edge ], [ false, %fatal_signal_pending.exit.thread ], [ false, %fatal_signal_pending.exit ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @task_clear_jobctl_trapping(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1440       ; 3 uses
  %i.b = load i64, ptr %i.a, align 32             ; 2 uses
  %i.c = and i64 %i.b, 2097152
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -2097153
  store i64 %i.d, ptr %i.a, align 32
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !31
  tail call void @wake_up_bit(ptr noundef %i.a, i32 noundef 21) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @task_clear_jobctl_pending(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = and i64 %1, -1703937
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "663: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 663b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 663) #21, !srcloc !85
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 334, i32 0, i64 16) #21, !srcloc !86
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = and i64 %1, 131072
  %.not6 = icmp eq i64 %i.b, 0
  %i.c = or disjoint i64 %1, 327680
  %spec.select = select i1 %.not6, i64 %1, i64 %i.c
  %i.d = xor i64 %spec.select, -1
  %i.e = getelementptr i8, ptr %0, i64 1440       ; 4 uses
  %i.f = load i64, ptr %i.e, align 32             ; 2 uses
  %i.g = and i64 %i.f, %i.d                       ; 3 uses
  store i64 %i.g, ptr %i.e, align 32
  %i.h = and i64 %i.g, 1703936
  %.not7 = icmp ne i64 %i.h, 0
  %i.i = and i64 %i.f, 2097152
  %.not.i = icmp eq i64 %i.i, 0
  %or.cond = or i1 %.not.i, %.not7
  br i1 %or.cond, label %task_clear_jobctl_trapping.exit, label %bb.d, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.j = and i64 %i.g, -3801089
  store i64 %i.j, ptr %i.e, align 32
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !31
  tail call void @wake_up_bit(ptr noundef %i.e, i32 noundef 21) #20
  br label %task_clear_jobctl_trapping.exit

task_clear_jobctl_trapping.exit:                  ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local void @task_join_group_stop(ptr nofree noundef captures(address) %0) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #23, !srcloc !24
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1440
  %i.d = load i64, ptr %i.c, align 32
  %i.e = and i64 %i.d, 65535                      ; 3 uses
  %i.f = getelementptr i8, ptr %i.b, i64 2096
  %i.g = load ptr, ptr %i.f, align 16             ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 112      ; 2 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8
  %i.k = or disjoint i64 %i.e, 262144
  br label %task_sigpending.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.g, i64 116
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 1
  %.not6 = icmp eq i32 %i.n, 0
  br i1 %.not6, label %task_set_jobctl_pending.exit, label %task_sigpending.exit.i.i

task_sigpending.exit.i.i:                         ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.k, %bb.b ], [ %i.e, %bb.c ]
  %i.o = load volatile i64, ptr %0, align 8
  %i.p = and i64 %i.o, 2
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %fatal_signal_pending.exit.thread.i, label %fatal_signal_pending.exit.i

fatal_signal_pending.exit.i:                      ; preds = %task_sigpending.exit.i.i
  %i.q = getelementptr i8, ptr %0, i64 2152
  %.val.i.i = load i64, ptr %i.q, align 8
  %i.r = and i64 %.val.i.i, 256
  %.not11.i = icmp eq i64 %i.r, 0
  br i1 %.not11.i, label %fatal_signal_pending.exit.thread.i, label %task_set_jobctl_pending.exit, !prof !29

fatal_signal_pending.exit.thread.i:               ; preds = %fatal_signal_pending.exit.i, %task_sigpending.exit.i.i
  %i.s = getelementptr i8, ptr %0, i64 44
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 4
  %.not14.i = icmp eq i32 %i.u, 0
  br i1 %.not14.i, label %._crit_edge.i, label %task_set_jobctl_pending.exit, !prof !30

._crit_edge.i:                                    ; preds = %fatal_signal_pending.exit.thread.i
  %.not12.i = icmp eq i64 %i.e, 0
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 1440 ; 2 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 32 ; 2 uses
  %i.v = and i64 %.pre.i, -196608
  %i.w = select i1 %.not12.i, i64 %.pre.i, i64 %i.v
  %i.x = or i64 %.0, %i.w
  %i.y = or i64 %i.x, 131072
  store i64 %i.y, ptr %.phi.trans.insert.i, align 32
  br label %task_set_jobctl_pending.exit

task_set_jobctl_pending.exit:                     ; preds = %._crit_edge.i, %fatal_signal_pending.exit.thread.i, %fatal_signal_pending.exit.i, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @flush_sigqueue(ptr nofree noundef captures(address) initializes((16, 24)) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  %i.b = load volatile ptr, ptr %0, align 8       ; 2 uses
  %.not7 = icmp eq ptr %i.b, %0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %bb.a ] ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8        ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %i.g, align 8
  store volatile ptr %i.f, ptr %i.e, align 8
  store volatile ptr %i.c, ptr %i.c, align 8
  store volatile ptr %i.c, ptr %i.d, align 8
  tail call fastcc void @__sigqueue_free(ptr noundef %i.c) #24, !srcloc !33
  %i.h = load volatile ptr, ptr %0, align 8       ; 2 uses
  %.not = icmp eq ptr %i.h, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__sigqueue_free(ptr noundef %0) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 -136
  %i.e = getelementptr i8, ptr %0, i64 80         ; 3 uses
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #21, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !34
  %i.f = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e, i32 -1, ptr elementtype(i32) %i.e) #21, !srcloc !35
  %i.g = add i32 %i.f, -1                         ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %__rcuref_put.exit.i.i.i, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.i = tail call zeroext i1 @rcuref_put_slowpath(ptr noundef %i.e, i32 noundef %i.g) #20
  br label %__rcuref_put.exit.i.i.i

__rcuref_put.exit.i.i.i:                          ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi i1 [ %i.i, %bb.c ], [ false, %bb.b ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !36
  %i.j = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #21, !srcloc !22 ; 2 uses
  %i.k = icmp ult i8 %i.j, 2
  tail call void @llvm.assume(i1 %i.k)
  %i.l = trunc nuw i8 %i.j to i1
  br i1 %i.l, label %bb.d, label %rcuref_put.exit.i.i, !prof !19

bb.d:                                             ; preds = %__rcuref_put.exit.i.i.i
  %i.m = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.n = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.m) #21, !srcloc !37
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.n)
  br label %rcuref_put.exit.i.i

rcuref_put.exit.i.i:                              ; preds = %bb.d, %__rcuref_put.exit.i.i.i
  br i1 %.0.i.i.i.i, label %bb.e, label %posixtimer_sigqueue_putref.exit

bb.e:                                             ; preds = %rcuref_put.exit.i.i
  tail call void @posixtimer_free_timer(ptr noundef %i.d) #20
  br label %posixtimer_sigqueue_putref.exit

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.p, null
  br i1 %.not6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @dec_rlimit_put_ucounts(ptr noundef nonnull %i.p, i32 noundef 2) #20
  store ptr null, ptr %i.o, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = load ptr, ptr @sigqueue_cachep, align 8
  tail call void @kmem_cache_free(ptr noundef %i.q, ptr noundef %0) #20
  br label %posixtimer_sigqueue_putref.exit

posixtimer_sigqueue_putref.exit:                  ; preds = %bb.e, %rcuref_put.exit.i.i, %bb.h
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @flush_signals(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2104       ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.b) #20
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %0, i32 -3, ptr elementtype(i8) %0) #21, !srcloc !27
  %i.d = getelementptr i8, ptr %0, i64 2136       ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 2152
  store i64 0, ptr %i.e, align 8
  %i.f = load volatile ptr, ptr %i.d, align 8     ; 2 uses
  %.not7.i = icmp eq ptr %i.f, %i.d
  br i1 %.not7.i, label %flush_sigqueue.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.g = phi ptr [ %i.l, %.lr.ph.i ], [ %i.f, %bb.a ] ; 6 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.k, align 8
  store volatile ptr %i.j, ptr %i.i, align 8
  store volatile ptr %i.g, ptr %i.g, align 8
  store volatile ptr %i.g, ptr %i.h, align 8
  tail call fastcc void @__sigqueue_free(ptr noundef %i.g) #24, !srcloc !33
  %i.l = load volatile ptr, ptr %i.d, align 8     ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i, label %flush_sigqueue.exit, label %.lr.ph.i, !llvm.loop !0

flush_sigqueue.exit:                              ; preds = %.lr.ph.i, %bb.a
  %i.m = getelementptr i8, ptr %0, i64 2096
  %i.n = load ptr, ptr %i.m, align 16             ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 64       ; 4 uses
  %i.p = getelementptr i8, ptr %i.n, i64 80
  store i64 0, ptr %i.p, align 8
  %i.q = load volatile ptr, ptr %i.o, align 8     ; 2 uses
  %.not7.i5 = icmp eq ptr %i.q, %i.o
  br i1 %.not7.i5, label %flush_sigqueue.exit8, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %flush_sigqueue.exit, %.lr.ph.i6
  %i.r = phi ptr [ %i.w, %.lr.ph.i6 ], [ %i.q, %flush_sigqueue.exit ] ; 6 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  store ptr %i.t, ptr %i.v, align 8
  store volatile ptr %i.u, ptr %i.t, align 8
  store volatile ptr %i.r, ptr %i.r, align 8
  store volatile ptr %i.r, ptr %i.s, align 8
  tail call fastcc void @__sigqueue_free(ptr noundef %i.r) #24, !srcloc !33
  %i.w = load volatile ptr, ptr %i.o, align 8     ; 2 uses
  %.not.i7 = icmp eq ptr %i.w, %i.o
  br i1 %.not.i7, label %flush_sigqueue.exit8, label %.lr.ph.i6, !llvm.loop !0

flush_sigqueue.exit8:                             ; preds = %.lr.ph.i6, %flush_sigqueue.exit
  %i.x = load ptr, ptr %i.a, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.x, i64 noundef %i.c) #20
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ignore_signals(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2104       ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
end_hunk_0
