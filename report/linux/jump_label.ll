Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/jump_label?download=true
inline.NumInlined: 147
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@__static_key_slow_dec_cpuslocked:bb.a
  ], !prof !52

bb.b:                                             ; preds = %.lr.ph.i
  tail call void asm sideeffect "466: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 466b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 466) #10, !srcloc !53
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 282, i32 2307, i64 16) #10, !srcloc !54
  tail call void asm sideeffect "467: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 467b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 467) #10, !srcloc !55
  br label %static_key_dec_not_one.exit.thread

bb.c:                                             ; preds = %.lr.ph.i
  %i.c = add nsw i32 %.01315.i, -1
  %i.d = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 range(i32 1, -2147483648) %i.c, ptr elementtype(i32) %0, i32 %.01315.i) #10, !srcloc !15 ; 2 uses
  %i.e = extractvalue { i8, i32 } %i.d, 0         ; 2 uses
  %i.f = icmp ult i8 %i.e, 2
  tail call void @llvm.assume(i1 %i.f)
  %i.g = trunc nuw i8 %i.e to i1
  br i1 %i.g, label %static_key_dec_not_one.exit.thread, label %arch_atomic_try_cmpxchg.exit.i, !prof !12

arch_atomic_try_cmpxchg.exit.i:                   ; preds = %bb.c
  %i.h = extractvalue { i8, i32 } %i.d, 1         ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.critedge.thread.i, label %.lr.ph.i, !prof !56

static_key_dec_not_one.exit:                      ; preds = %.lr.ph.i, %.critedge.thread.i
  tail call void @mutex_lock(ptr noundef nonnull @jump_label_mutex) #9
  %i.j = load volatile i32, ptr %0, align 4
  switch i32 %i.j, label %.critedge14 [
    i32 -1, label %bb.d
    i32 0, label %bb.e
  ], !prof !57

bb.d:                                             ; preds = %static_key_dec_not_one.exit
  tail call void asm sideeffect "470: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 470b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 470) #10, !srcloc !58
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 306, i32 2307, i64 16) #10, !srcloc !59
  tail call void asm sideeffect "471: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 471b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 471) #10, !srcloc !60
  br label %bb.g

bb.e:                                             ; preds = %static_key_dec_not_one.exit
  tail call void asm sideeffect "472: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 472b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 472) #10, !srcloc !61
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 311, i32 2307, i64 16) #10, !srcloc !62
  tail call void asm sideeffect "473: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 473b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 473) #10, !srcloc !63
  br label %bb.g

.critedge14:                                      ; preds = %static_key_dec_not_one.exit
  %i.k = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, ptr elementtype(i32) %0) #10, !srcloc !64 ; 2 uses
  %i.l = icmp ult i8 %i.k, 2
  tail call void @llvm.assume(i1 %i.l)
  %i.m = trunc nuw i8 %i.k to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge14
  tail call fastcc void @jump_label_update(ptr noundef %0) #11, !srcloc !65
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %.critedge14, %bb.f
  tail call void @mutex_unlock(ptr noundef nonnull @jump_label_mutex) #9
  br label %static_key_dec_not_one.exit.thread

static_key_dec_not_one.exit.thread:               ; preds = %bb.c, %bb.b, %bb.g
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__static_key_slow_dec_deferred(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr @static_key_initialized, align 1, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 350, i32 2321, i64 16) #10, !srcloc !66
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.c, ptr noundef nonnull @__func__.__static_key_slow_dec_deferred, ptr noundef %0) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !67
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load volatile i32, ptr %0, align 4       ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.critedge.thread.i, label %.lr.ph.i, !prof !48

.critedge.thread.i:                               ; preds = %arch_atomic_try_cmpxchg.exit.i, %bb.c
  tail call void asm sideeffect "464: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 464b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 464) #10, !srcloc !49
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 276, i32 2307, i64 16) #10, !srcloc !50
  tail call void asm sideeffect "465: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 465b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 465) #10, !srcloc !51
  br label %static_key_dec_not_one.exit

.lr.ph.i:                                         ; preds = %bb.c, %arch_atomic_try_cmpxchg.exit.i
  %.01315.i = phi i32 [ %i.k, %arch_atomic_try_cmpxchg.exit.i ], [ %i.d, %bb.c ] ; 3 uses
  switch i32 %.01315.i, label %bb.e [
    i32 0, label %bb.d
    i32 1, label %static_key_dec_not_one.exit
  ], !prof !52

bb.d:                                             ; preds = %.lr.ph.i
  tail call void asm sideeffect "466: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 466b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 466) #10, !srcloc !53
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 282, i32 2307, i64 16) #10, !srcloc !54
  tail call void asm sideeffect "467: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 467b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 467) #10, !srcloc !55
  br label %static_key_dec_not_one.exit.thread

bb.e:                                             ; preds = %.lr.ph.i
  %i.f = add nsw i32 %.01315.i, -1
  %i.g = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 range(i32 1, -2147483648) %i.f, ptr elementtype(i32) %0, i32 %.01315.i) #10, !srcloc !15 ; 2 uses
  %i.h = extractvalue { i8, i32 } %i.g, 0         ; 2 uses
  %i.i = icmp ult i8 %i.h, 2
  tail call void @llvm.assume(i1 %i.i)
  %i.j = trunc nuw i8 %i.h to i1
  br i1 %i.j, label %static_key_dec_not_one.exit.thread, label %arch_atomic_try_cmpxchg.exit.i, !prof !12

arch_atomic_try_cmpxchg.exit.i:                   ; preds = %bb.e
  %i.k = extractvalue { i8, i32 } %i.g, 1         ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.critedge.thread.i, label %.lr.ph.i, !prof !56

static_key_dec_not_one.exit:                      ; preds = %.lr.ph.i, %.critedge.thread.i
  %i.m = load ptr, ptr @system_percpu_wq, align 8
  %i.n = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %i.m, ptr noundef %1, i64 noundef %2) #9 ; 0 uses
  br label %static_key_dec_not_one.exit.thread

static_key_dec_not_one.exit.thread:               ; preds = %bb.e, %bb.d, %static_key_dec_not_one.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__static_key_deferred_flush(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr @static_key_initialized, align 1, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 361, i32 2321, i64 16) #10, !srcloc !68
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.c, ptr noundef nonnull @__func__.__static_key_deferred_flush, ptr noundef %0) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !69
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call zeroext i1 @flush_delayed_work(ptr noundef %1) #9 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @jump_label_rate_limit(ptr noundef %0, i64 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr @static_key_initialized, align 1, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 369, i32 2321, i64 16) #10, !srcloc !70
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.c, ptr noundef nonnull @__func__.jump_label_rate_limit, ptr noundef %0) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  store i64 %1, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 24
  store i64 4503599625273344, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %0, i64 32         ; 3 uses
  store volatile ptr %i.f, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %0, i64 40
  store volatile ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 48
  store ptr @jump_label_update_timeout, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %0, i64 56
  tail call void @timer_init_key(ptr noundef %i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @timer_init_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @jump_label_init() local_unnamed_addr #3 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr @static_key_initialized, align 1, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @cpus_read_lock() #9
  tail call void @mutex_lock(ptr noundef nonnull @jump_label_mutex) #9
  %i.c = lshr i64 sub (i64 ptrtoint (ptr @__stop___jump_table to i64), i64 ptrtoint (ptr @__start___jump_table to i64)), 4
  tail call void @sort(ptr noundef nonnull @__start___jump_table, i64 noundef %i.c, i64 noundef 16, ptr noundef nonnull @jump_label_cmp, ptr noundef nonnull @jump_label_swap) #9
  %i.d = icmp ult ptr @__start___jump_table, @__stop___jump_table
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.019 = phi ptr [ %i.y, %bb.c ], [ @__start___jump_table, %bb.b ] ; 4 uses
  %.01618 = phi ptr [ %.1, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.e = getelementptr i8, ptr %.019, i64 8       ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = and i64 %i.f, -4
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = add i64 %i.g, %i.h
  %i.j = inttoptr i64 %i.i to ptr                 ; 5 uses
  %i.k = load volatile i32, ptr %i.j, align 4     ; 0 uses
  %i.l = ptrtoint ptr %.019 to i64                ; 2 uses
  %i.m = load i32, ptr %.019, align 8
  %i.n = sext i32 %i.m to i64
  %i.o = add i64 %i.n, %i.l                       ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = icmp uge i64 %i.o, ptrtoint (ptr @__init_begin to i64)
  %i.r = getelementptr i8, ptr %i.p, i64 1
  %i.s = icmp ule ptr %i.r, @__init_end
  %i.t = and i1 %i.q, %i.s
  %i.u = and i64 %i.f, -3
  %masksel.i = select i1 %i.t, i64 2, i64 0
  %.sink.i = or disjoint i64 %masksel.i, %i.u
  store i64 %.sink.i, ptr %i.e, align 8
  %i.v = icmp eq ptr %.01618, %i.j
  br i1 %i.v, label %bb.c, label %static_key_set_entries.exit

static_key_set_entries.exit:                      ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr i8, ptr %i.j, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %0 = getelementptr i8, ptr %i.j, i64 8
  %i.w = and i64 %.pre, 3
  %i.x = or i64 %i.w, %i.l
  store i64 %i.x, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %static_key_set_entries.exit
  %.1 = phi ptr [ %i.j, %static_key_set_entries.exit ], [ %.01618, %.lr.ph ]
  %i.y = getelementptr i8, ptr %.019, i64 16      ; 2 uses
  %i.z = icmp ult ptr %i.y, @__stop___jump_table
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.c, %bb.b
  store i8 1, ptr @static_key_initialized, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @jump_label_mutex) #9
  tail call void @cpus_read_unlock() #9
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @jump_label_init_ro() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr @static_key_initialized, align 1, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %.critedge, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "490: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 490b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 490) #10, !srcloc !73
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 579, i32 2307, i64 16) #10, !srcloc !74
  tail call void asm sideeffect "491: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 491b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 491) #10, !srcloc !75
  br label %bb.f

.critedge:                                        ; preds = %bb.a
  tail call void @cpus_read_lock() #9
  tail call void @mutex_lock(ptr noundef nonnull @jump_label_mutex) #9
  %i.c = icmp ult ptr @__start___jump_table, @__stop___jump_table
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.critedge, %bb.e
  %.011 = phi ptr [ %i.q, %bb.e ], [ @__start___jump_table, %.critedge ] ; 2 uses
  %i.d = getelementptr i8, ptr %.011, i64 8       ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, -4
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = add i64 %i.f, %i.g                       ; 3 uses
  %i.i = icmp uge i64 %i.h, ptrtoint (ptr @__start_ro_after_init to i64)
  %i.j = icmp ult i64 %i.h, ptrtoint (ptr @__end_ro_after_init to i64)
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.l = inttoptr i64 %i.h to ptr
  %i.m = getelementptr i8, ptr %i.l, i64 8        ; 2 uses
  %.val = load i64, ptr %i.m, align 8             ; 2 uses
  %i.n = and i64 %.val, -2
  %spec.select.i = icmp eq i64 %i.n, 2
  br i1 %spec.select.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = and i64 %.val, 1
  %i.p = or disjoint i64 %i.o, 2
  store i64 %i.p, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.lr.ph, %bb.d
  %i.q = getelementptr i8, ptr %.011, i64 16      ; 2 uses
  %i.r = icmp ult ptr %i.q, @__stop___jump_table
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.e, %.critedge
  tail call void @mutex_unlock(ptr noundef nonnull @jump_label_mutex) #9
  tail call void @cpus_read_unlock() #9
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 2) i32 @jump_label_init_type(ptr noundef %0) local_unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, -4
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = add i64 %i.c, %i.d
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val4 = load i64, ptr %i.g, align 8
  %i.h = xor i64 %.val4, %i.b
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 1
  ret i32 %i.j
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @jump_label_init_module() #3 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @register_module_notifier(ptr noundef nonnull @jump_label_module_nb) #9
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @jump_label_text_reserved(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult ptr @__start___jump_table, @__stop___jump_table
  br i1 %i.a, label %.lr.ph.i, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.a
  %.pre = ptrtoint ptr %0 to i64
  %.pre21 = ptrtoint ptr %1 to i64
  br label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = load i32, ptr @system_state, align 4
  %i.c = icmp ult i32 %i.b, 3
  %i.d = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.e = ptrtoint ptr %0 to i64                   ; 4 uses
  br i1 %i.c, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %addr_conflict.exit.thread.us.i
  %.012.us.i = phi ptr [ %i.n, %addr_conflict.exit.thread.us.i ], [ @__start___jump_table, %.lr.ph.i ] ; 4 uses
  %i.f = ptrtoint ptr %.012.us.i to i64
  %i.g = load i32, ptr %.012.us.i, align 8
  %i.h = sext i32 %i.g to i64
  %i.i = add i64 %i.h, %i.f                       ; 2 uses
  %.not.i.us.i = icmp ugt i64 %i.i, %i.d
  br i1 %.not.i.us.i, label %addr_conflict.exit.thread.us.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.j = tail call i32 @arch_jump_entry_size(ptr noundef %.012.us.i) #9
  %i.k = sext i32 %i.j to i64
  %i.l = add i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.l, %i.e
  br i1 %i.m, label %__jump_label_text_reserved.exit, label %addr_conflict.exit.thread.us.i

addr_conflict.exit.thread.us.i:                   ; preds = %bb.b, %.lr.ph.split.us.i
  %i.n = getelementptr i8, ptr %.012.us.i, i64 16 ; 2 uses
  %i.o = icmp ult ptr %i.n, @__stop___jump_table
  br i1 %i.o, label %.lr.ph.split.us.i, label %.loopexit, !llvm.loop !77

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %addr_conflict.exit.thread.i
  %.012.i = phi ptr [ %i.z, %addr_conflict.exit.thread.i ], [ @__start___jump_table, %.lr.ph.i ] ; 5 uses
  %i.p = getelementptr i8, ptr %.012.i, i64 8
  %.0.val.i = load i64, ptr %i.p, align 8
  %i.q = and i64 %.0.val.i, 2
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.c, label %addr_conflict.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.r = ptrtoint ptr %.012.i to i64
  %i.s = load i32, ptr %.012.i, align 8
  %i.t = sext i32 %i.s to i64
  %i.u = add i64 %i.t, %i.r                       ; 2 uses
  %.not.i.i = icmp ugt i64 %i.u, %i.d
  br i1 %.not.i.i, label %addr_conflict.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call i32 @arch_jump_entry_size(ptr noundef %.012.i) #9
  %i.w = sext i32 %i.v to i64
  %i.x = add i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.x, %i.e
  br i1 %i.y, label %__jump_label_text_reserved.exit, label %addr_conflict.exit.thread.i

addr_conflict.exit.thread.i:                      ; preds = %bb.d, %bb.c, %.lr.ph.split.i
  %i.z = getelementptr i8, ptr %.012.i, i64 16    ; 2 uses
  %i.aa = icmp ult ptr %i.z, @__stop___jump_table
  br i1 %i.aa, label %.lr.ph.split.i, label %.loopexit, !llvm.loop !77

.loopexit:                                        ; preds = %addr_conflict.exit.thread.i, %addr_conflict.exit.thread.us.i, %..loopexit_crit_edge
  %.pre-phi22 = phi i64 [ %.pre21, %..loopexit_crit_edge ], [ %i.d, %addr_conflict.exit.thread.us.i ], [ %i.d, %addr_conflict.exit.thread.i ] ; 3 uses
  %.pre-phi = phi i64 [ %.pre, %..loopexit_crit_edge ], [ %i.e, %addr_conflict.exit.thread.us.i ], [ %i.e, %addr_conflict.exit.thread.i ] ; 3 uses
  tail call void @__rcu_read_lock() #9
  %i.ab = tail call ptr @__module_text_address(i64 noundef %.pre-phi) #9 ; 7 uses
  %i.ac = tail call ptr @__module_text_address(i64 noundef %.pre-phi22) #9
  %.not.i9 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i9, label %bb.f, label %bb.e, !prof !12

bb.e:                                             ; preds = %.loopexit
  tail call void asm sideeffect "497: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 497b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 497) #10, !srcloc !78
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 649, i32 2307, i64 16) #10, !srcloc !79
  tail call void asm sideeffect "498: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 498b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 498) #10, !srcloc !80
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %i.ad = tail call zeroext i1 @try_module_get(ptr noundef %i.ab) #9
  tail call void @__rcu_read_unlock() #9
  %.not1718.i = icmp ne ptr %i.ab, null
  %.not17.not.i = select i1 %i.ad, i1 %.not1718.i, i1 false
  br i1 %.not17.not.i, label %bb.g, label %__jump_label_text_reserved.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %i.ab, i64 1024
  %i.af = load ptr, ptr %i.ae, align 64           ; 4 uses
  %i.ag = getelementptr i8, ptr %i.ab, i64 1032
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr [16 x i8], ptr %i.af, i64 %i.ai ; 3 uses
  %i.ak = icmp ult ptr %i.af, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i, label %__jump_label_text_reserved.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.al = load i32, ptr %i.ab, align 64
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %addr_conflict.exit.thread.us.i.i
  %.012.us.i.i = phi ptr [ %i.av, %addr_conflict.exit.thread.us.i.i ], [ %i.af, %.lr.ph.i.i ] ; 4 uses
  %i.an = ptrtoint ptr %.012.us.i.i to i64
  %i.ao = load i32, ptr %.012.us.i.i, align 8
  %i.ap = sext i32 %i.ao to i64
  %i.aq = add i64 %i.ap, %i.an                    ; 2 uses
  %.not.i.us.i.i = icmp ugt i64 %i.aq, %.pre-phi22
  br i1 %.not.i.us.i.i, label %addr_conflict.exit.thread.us.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us.i.i
  %i.ar = tail call i32 @arch_jump_entry_size(ptr noundef %.012.us.i.i) #9
  %i.as = sext i32 %i.ar to i64
  %i.at = add i64 %i.aq, %i.as
  %i.au = icmp ugt i64 %i.at, %.pre-phi
  br i1 %i.au, label %__jump_label_text_reserved.exit.i, label %addr_conflict.exit.thread.us.i.i

addr_conflict.exit.thread.us.i.i:                 ; preds = %bb.h, %.lr.ph.split.us.i.i
  %i.av = getelementptr i8, ptr %.012.us.i.i, i64 16 ; 2 uses
  %i.aw = icmp ult ptr %i.av, %i.aj
  br i1 %i.aw, label %.lr.ph.split.us.i.i, label %__jump_label_text_reserved.exit.i, !llvm.loop !77

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %addr_conflict.exit.thread.i.i
  %.012.i.i = phi ptr [ %i.bh, %addr_conflict.exit.thread.i.i ], [ %i.af, %.lr.ph.i.i ] ; 5 uses
  %i.ax = getelementptr i8, ptr %.012.i.i, i64 8
  %.0.val.i.i = load i64, ptr %i.ax, align 8
  %i.ay = and i64 %.0.val.i.i, 2
  %.not.i.i10 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i10, label %bb.i, label %addr_conflict.exit.thread.i.i

bb.i:                                             ; preds = %.lr.ph.split.i.i
  %i.az = ptrtoint ptr %.012.i.i to i64
  %i.ba = load i32, ptr %.012.i.i, align 8
  %i.bb = sext i32 %i.ba to i64
  %i.bc = add i64 %i.bb, %i.az                    ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.bc, %.pre-phi22
  br i1 %.not.i.i.i, label %addr_conflict.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = tail call i32 @arch_jump_entry_size(ptr noundef %.012.i.i) #9
  %i.be = sext i32 %i.bd to i64
  %i.bf = add i64 %i.bc, %i.be
  %i.bg = icmp ugt i64 %i.bf, %.pre-phi
  br i1 %i.bg, label %__jump_label_text_reserved.exit.i, label %addr_conflict.exit.thread.i.i

addr_conflict.exit.thread.i.i:                    ; preds = %bb.j, %bb.i, %.lr.ph.split.i.i
  %i.bh = getelementptr i8, ptr %.012.i.i, i64 16 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %i.aj
  br i1 %i.bi, label %.lr.ph.split.i.i, label %__jump_label_text_reserved.exit.i, !llvm.loop !77

__jump_label_text_reserved.exit.i:                ; preds = %addr_conflict.exit.thread.i.i, %bb.j, %addr_conflict.exit.thread.us.i.i, %bb.h, %bb.g
  %.09.i.i = phi i32 [ 1, %bb.h ], [ 0, %bb.g ], [ 0, %addr_conflict.exit.thread.us.i.i ], [ 1, %bb.j ], [ 0, %addr_conflict.exit.thread.i.i ]
  tail call void @module_put(ptr noundef nonnull %i.ab) #9
  br label %__jump_label_text_reserved.exit

__jump_label_text_reserved.exit:                  ; preds = %bb.d, %bb.b, %__jump_label_text_reserved.exit.i, %bb.f
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.f ], [ %.09.i.i, %__jump_label_text_reserved.exit.i ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal void @jump_label_swap(ptr noundef %0, ptr noundef %1, i32 %2) #6 align 16 prefalign(16) {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %i.d = load i32, ptr %1, align 8
  %i.e = trunc i64 %i.c to i32                    ; 4 uses
  %i.f = sub i32 %i.d, %i.e
  store i32 %i.f, ptr %0, align 8
  %i.g = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sub i32 %i.h, %i.e
  store i32 %i.i, ptr %.sroa.5.0..sroa_idx, align 4
  %i.j = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = sub i64 %i.k, %i.c
  store i64 %i.l, ptr %.sroa.6.0..sroa_idx, align 8
  %i.m = add i32 %.sroa.0.0.copyload, %i.e
  store i32 %i.m, ptr %1, align 8
  %i.n = add i32 %.sroa.5.0.copyload, %i.e
  store i32 %i.n, ptr %i.g, align 4
  %i.o = add i64 %.sroa.6.0.copyload, %i.c
  store i64 %i.o, ptr %i.j, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal range(i32 -1, 2) i32 @jump_label_cmp(ptr noundef %0, ptr noundef %1) #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, -4
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c     ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, -4
  %i.h = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.i = icmp ult ptr %i.d, %i.h
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt ptr %i.d, %i.h
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %0 to i64
  %i.l = load i32, ptr %0, align 8
  %i.m = sext i32 %i.l to i64
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = ptrtoint ptr %1 to i64
  %i.p = load i32, ptr %1, align 8
  %i.q = sext i32 %i.p to i64
  %i.r = add i64 %i.q, %i.o                       ; 2 uses
  %i.s = icmp ult i64 %i.n, %i.r
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = icmp ugt i64 %i.n, %i.r
  %. = zext i1 %i.t to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @register_module_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 1, 32782) i32 @jump_label_module_notify(ptr nofree readnone captures(none) %0, i64 noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  tail call void @cpus_read_lock() #9
  tail call void @mutex_lock(ptr noundef nonnull @jump_label_mutex) #9
  switch i64 %1, label %jump_label_add_module.exit.thread [
    i64 1, label %bb.b
    i64 2, label %jump_label_add_module.exit.thread.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %2, i64 1024
  %i.b = load ptr, ptr %i.a, align 64             ; 5 uses
  %3 = ptrtoaddr ptr %i.b to i64
  %i.c = getelementptr i8, ptr %2, i64 1032
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr i8, ptr %i.b, i64 %.idx.i  ; 3 uses
  %i.g = icmp eq i32 %i.d, 0
  br i1 %i.g, label %jump_label_add_module.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @sort(ptr noundef %i.b, i64 noundef %i.e, i64 noundef 16, ptr noundef nonnull @jump_label_cmp, ptr noundef nonnull @jump_label_swap) #9
  %i.h = icmp ult ptr %i.b, %i.f
  br i1 %i.h, label %.lr.ph.i, label %jump_label_add_module.exit.thread

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr i8, ptr %2, i64 608        ; 2 uses
  %i.j = getelementptr i8, ptr %2, i64 620        ; 2 uses
  %i.k = getelementptr i8, ptr %2, i64 680        ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 692        ; 2 uses
  %i.m = getelementptr i8, ptr %2, i64 752        ; 2 uses
  %i.n = getelementptr i8, ptr %2, i64 764        ; 2 uses
  %i.o = getelementptr i8, ptr %2, i64 320
  %i.p = getelementptr i8, ptr %2, i64 332
  %i.q = getelementptr i8, ptr %2, i64 392
  %i.r = getelementptr i8, ptr %2, i64 404
  %i.s = getelementptr i8, ptr %2, i64 464
  %i.t = getelementptr i8, ptr %2, i64 476
  %i.u = getelementptr i8, ptr %2, i64 536
  %i.v = getelementptr i8, ptr %2, i64 548
  %4 = and i64 %3, 3
  %.not.i.i = icmp eq i64 %4, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.v, %.lr.ph.i
  %.05883.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.ek, %bb.v ] ; 6 uses
  %.05982.i = phi ptr [ null, %.lr.ph.i ], [ %.160.ph.i, %bb.v ] ; 2 uses
  %i.w = ptrtoint ptr %.05883.i to i64            ; 2 uses
  %i.x = load i32, ptr %.05883.i, align 8
  %i.y = sext i32 %i.x to i64
  %i.z = add i64 %i.y, %i.w                       ; 3 uses
  %i.aa = load ptr, ptr %i.i, align 32
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = load i32, ptr %i.j, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = sub i64 %i.z, %i.ab
  %i.af = icmp ult i64 %i.ae, %i.ad
  br i1 %i.af, label %within_module_init.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.k, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = load i32, ptr %i.l, align 4
  %i.aj = zext i32 %i.ai to i64
  %i.ak = sub i64 %i.z, %i.ah
  %i.al = icmp ult i64 %i.ak, %i.aj
  br i1 %i.al, label %within_module_init.exit.thread.i, label %within_module_init.exit.i

within_module_init.exit.i:                        ; preds = %bb.e
  %i.am = load ptr, ptr %i.m, align 16
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = load i32, ptr %i.n, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = sub i64 %i.z, %i.an
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %cond.fr.i = freeze i1 %i.ar
  %spec.select.i = select i1 %cond.fr.i, i64 2, i64 0
  br label %within_module_init.exit.thread.i

within_module_init.exit.thread.i:                 ; preds = %within_module_init.exit.i, %bb.e, %bb.d
  %i.as = phi i64 [ %spec.select.i, %within_module_init.exit.i ], [ 2, %bb.e ], [ 2, %bb.d ]
  %i.at = getelementptr i8, ptr %.05883.i, i64 8  ; 4 uses
  %.in.i = load i64, ptr %i.at, align 8           ; 2 uses
  %i.au = and i64 %.in.i, -3
  %.sink.i.i = or disjoint i64 %i.au, %i.as       ; 2 uses
  store i64 %.sink.i.i, ptr %i.at, align 8
  %i.av = and i64 %.in.i, -4
  %i.aw = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.ax = add i64 %i.av, %i.aw                    ; 9 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 7 uses
  %i.az = icmp eq ptr %.05982.i, %i.ay
  br i1 %i.az, label %bb.v, label %bb.f

bb.f:                                             ; preds = %within_module_init.exit.thread.i
  %i.ba = load ptr, ptr %i.i, align 32
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = load i32, ptr %i.j, align 4
  %i.bd = zext i32 %i.bc to i64
  %i.be = sub i64 %i.ax, %i.bb
  %i.bf = icmp ult i64 %i.be, %i.bd
  br i1 %i.bf, label %within_module.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %i.k, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = load i32, ptr %i.l, align 4
  %i.bj = zext i32 %i.bi to i64
  %i.bk = sub i64 %i.ax, %i.bh
  %i.bl = icmp ult i64 %i.bk, %i.bj
  br i1 %i.bl, label %within_module.exit.thread.i, label %within_module_init.exit.i.i

within_module_init.exit.i.i:                      ; preds = %bb.g
  %i.bm = load ptr, ptr %i.m, align 16
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = load i32, ptr %i.n, align 4
  %i.bp = zext i32 %i.bo to i64
  %i.bq = sub i64 %i.ax, %i.bn
  %i.br = icmp ult i64 %i.bq, %i.bp
  br i1 %i.br, label %within_module.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %within_module_init.exit.i.i
  %i.bs = load ptr, ptr %i.o, align 64
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = load i32, ptr %i.p, align 4
  %i.bv = zext i32 %i.bu to i64
  %i.bw = sub i64 %i.ax, %i.bt
  %i.bx = icmp ult i64 %i.bw, %i.bv
  br i1 %i.bx, label %within_module.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = load ptr, ptr %i.q, align 8
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = load i32, ptr %i.r, align 4
  %i.cb = zext i32 %i.ca to i64
  %i.cc = sub i64 %i.ax, %i.bz
  %i.cd = icmp ult i64 %i.cc, %i.cb
  br i1 %i.cd, label %within_module.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = load ptr, ptr %i.s, align 16
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = load i32, ptr %i.t, align 4
  %i.ch = zext i32 %i.cg to i64
  %i.ci = sub i64 %i.ax, %i.cf
  %i.cj = icmp ult i64 %i.ci, %i.ch
  br i1 %i.cj, label %within_module.exit.thread.i, label %within_module.exit.i

within_module.exit.i:                             ; preds = %bb.j
  %i.ck = load ptr, ptr %i.u, align 8
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = load i32, ptr %i.v, align 4
  %i.cn = zext i32 %i.cm to i64
  %i.co = sub i64 %i.ax, %i.cl
  %i.cp = icmp ult i64 %i.co, %i.cn
  br i1 %i.cp, label %within_module.exit.thread.i, label %bb.k

within_module.exit.thread.i:                      ; preds = %within_module.exit.i, %bb.j, %bb.i, %bb.h, %within_module_init.exit.i.i, %bb.g, %bb.f
  br i1 %.not.i.i, label %static_key_set_entries.exit.i, label %5, !prof !12

5:                                                ; preds = %within_module.exit.thread.i
  tail call void asm sideeffect "486: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 486b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 486) #10, !srcloc !81
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 449, i32 2307, i64 16) #10, !srcloc !82
  tail call void asm sideeffect "487: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 487b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 487) #10, !srcloc !83
  br label %static_key_set_entries.exit.i

static_key_set_entries.exit.i:                    ; preds = %5, %within_module.exit.thread.i
  %i.cq = getelementptr i8, ptr %i.ay, i64 8      ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = and i64 %i.cr, 3
  %i.ct = or i64 %i.cs, %i.w
  store i64 %i.ct, ptr %i.cq, align 8
  br label %bb.v

bb.k:                                             ; preds = %within_module.exit.i
  %i.cu = getelementptr i8, ptr %i.ay, i64 8      ; 10 uses
  %.val68.i = load i64, ptr %i.cu, align 8
  %i.cv = and i64 %.val68.i, -2
  %spec.select.i69.i = icmp eq i64 %i.cv, 2
  br i1 %spec.select.i69.i, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.cx = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @__kmalloc_cache_noprof(ptr noundef %i.cw, i32 noundef 3520, i64 noundef 24) #12 ; 6 uses
  %.not.i = icmp eq ptr %i.cx, null
  br i1 %.not.i, label %jump_label_add_module.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i = load i64, ptr %i.cu, align 8
  %i.cy = and i64 %.val.i, 2
  %.not81.i = icmp eq i64 %i.cy, 0
  br i1 %.not81.i, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.da = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @__kmalloc_cache_noprof(ptr noundef %i.cz, i32 noundef 3520, i64 noundef 24) #12 ; 5 uses
  %.not66.i = icmp eq ptr %i.da, null
  br i1 %.not66.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @kfree(ptr noundef nonnull %i.cx) #9
  br label %jump_label_add_module.exit

bb.p:                                             ; preds = %bb.n
  tail call void @__rcu_read_lock() #9
  %i.db = tail call ptr @__module_address(i64 noundef %i.ax) #9
  %i.dc = getelementptr i8, ptr %i.da, i64 16
  store ptr %i.db, ptr %i.dc, align 8
  tail call void @__rcu_read_unlock() #9
  %i.dd = load i64, ptr %i.cu, align 8            ; 2 uses
  %i.de = and i64 %i.dd, 2
  %.not.i70.i = icmp eq i64 %i.de, 0
  br i1 %.not.i70.i, label %static_key_entries.exit.i, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  tail call void asm sideeffect "484: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 484b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 484) #10, !srcloc !26
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 411, i32 2307, i64 16) #10, !srcloc !27
  tail call void asm sideeffect "485: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 485b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 485) #10, !srcloc !28
  %.pre.i.i = load i64, ptr %i.cu, align 8
  br label %static_key_entries.exit.i

static_key_entries.exit.i:                        ; preds = %bb.q, %bb.p
  %i.df = phi i64 [ %.pre.i.i, %bb.q ], [ %i.dd, %bb.p ]
  %i.dg = and i64 %i.df, -4
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = getelementptr i8, ptr %i.da, i64 8
  store ptr %i.dh, ptr %i.di, align 8
  store ptr null, ptr %i.da, align 8
  %i.dj = ptrtoint ptr %i.da to i64
  %i.dk = load i64, ptr %i.cu, align 8
  %i.dl = and i64 %i.dk, 1
  %i.dm = or disjoint i64 %i.dl, %i.dj
  %i.dn = or disjoint i64 %i.dm, 2
  store i64 %i.dn, ptr %i.cu, align 8
  br label %bb.r

bb.r:                                             ; preds = %static_key_entries.exit.i, %bb.m
  %i.do = getelementptr i8, ptr %i.cx, i64 16
  store ptr %2, ptr %i.do, align 8
  %i.dp = getelementptr i8, ptr %i.cx, i64 8
  store ptr %.05883.i, ptr %i.dp, align 8
  %.val.i.i = load i64, ptr %i.cu, align 8        ; 2 uses
  %i.dq = and i64 %.val.i.i, 2
  %.not.i72.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i72.i, label %bb.s, label %static_key_mod.exit.i, !prof !84

bb.s:                                             ; preds = %bb.r
  tail call void asm sideeffect "492: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 492b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 492) #10, !srcloc !85
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 621, i32 2307, i64 16) #10, !srcloc !86
  tail call void asm sideeffect "493: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 493b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 493) #10, !srcloc !87
  %.pre.i73.i = load i64, ptr %i.cu, align 8
  br label %static_key_mod.exit.i

static_key_mod.exit.i:                            ; preds = %bb.s, %bb.r
  %i.dr = phi i64 [ %.pre.i73.i, %bb.s ], [ %.val.i.i, %bb.r ]
  %i.ds = and i64 %i.dr, -4
  %i.dt = inttoptr i64 %i.ds to ptr
  store ptr %i.dt, ptr %i.cx, align 8
  %i.du = ptrtoint ptr %i.cx to i64
  %i.dv = load i64, ptr %i.cu, align 8
  %i.dw = and i64 %i.dv, 1
  %i.dx = or disjoint i64 %i.dw, %i.du
  %i.dy = or disjoint i64 %i.dx, 2
  store i64 %i.dy, ptr %i.cu, align 8
  %.pre.i = load i64, ptr %i.at, align 8
  br label %bb.t

bb.t:                                             ; preds = %static_key_mod.exit.i, %bb.k
  %i.dz = phi i64 [ %.sink.i.i, %bb.k ], [ %.pre.i, %static_key_mod.exit.i ] ; 3 uses
  %i.ea = and i64 %i.dz, -4
  %i.eb = add i64 %i.ea, %i.aw
  %i.ec = inttoptr i64 %i.eb to ptr               ; 2 uses
  %i.ed = load volatile i32, ptr %i.ec, align 4
  %i.ee = trunc i64 %i.dz to i1
  %i.ef = getelementptr i8, ptr %i.ec, i64 8
  %.val4.i.i = load i64, ptr %i.ef, align 8
  %i.eg = xor i64 %.val4.i.i, %i.dz
  %i.eh = trunc i64 %i.eg to i1
  %i.ei = icmp eq i32 %i.ed, 0
  %i.ej = xor i1 %i.ei, %i.ee
  %.not67.i = xor i1 %i.ej, %i.eh
  br i1 %.not67.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @__jump_label_update(ptr noundef %i.ay, ptr noundef %.05883.i, ptr noundef nonnull %i.f, i1 noundef zeroext true) #11, !srcloc !88
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %static_key_set_entries.exit.i, %within_module_init.exit.thread.i
  %.160.ph.i = phi ptr [ %i.ay, %bb.t ], [ %i.ay, %bb.u ], [ %i.ay, %static_key_set_entries.exit.i ], [ %.05982.i, %within_module_init.exit.thread.i ]
  %i.ek = getelementptr i8, ptr %.05883.i, i64 16 ; 2 uses
  %i.el = icmp ult ptr %i.ek, %i.f
  br i1 %i.el, label %bb.d, label %jump_label_add_module.exit.thread, !llvm.loop !89

jump_label_add_module.exit:                       ; preds = %bb.l, %bb.o
  %i.em = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.1, i32 830, i32 2321, i64 16) #10, !srcloc !90
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.em) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !91
  br label %jump_label_add_module.exit.thread.sink.split

jump_label_add_module.exit.thread.sink.split:     ; preds = %bb.a, %jump_label_add_module.exit
  %.not.i13.ph = phi i32 [ 32781, %jump_label_add_module.exit ], [ 1, %bb.a ]
  tail call fastcc void @jump_label_del_module(ptr noundef %2) #11
  br label %jump_label_add_module.exit.thread

jump_label_add_module.exit.thread:                ; preds = %bb.v, %jump_label_add_module.exit.thread.sink.split, %bb.c, %bb.b, %bb.a
  %.not.i13 = phi i32 [ 1, %bb.a ], [ 1, %bb.c ], [ %.not.i13.ph, %jump_label_add_module.exit.thread.sink.split ], [ 1, %bb.b ], [ 1, %bb.v ]
  tail call void @mutex_unlock(ptr noundef nonnull @jump_label_mutex) #9
  tail call void @cpus_read_unlock() #9
  ret i32 %.not.i13
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @jump_label_del_module(ptr nofree noundef readonly captures(address) %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1024
  %i.b = load ptr, ptr %i.a, align 64             ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 1032
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr [16 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = icmp ult ptr %i.b, %i.f
  br i1 %i.g, label %.lr.ph67, label %._crit_edge

.lr.ph67:                                         ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 608
  %i.i = getelementptr i8, ptr %0, i64 620
  %i.j = getelementptr i8, ptr %0, i64 680
  %i.k = getelementptr i8, ptr %0, i64 692
  %i.l = getelementptr i8, ptr %0, i64 752
  %i.m = getelementptr i8, ptr %0, i64 764
  %i.n = getelementptr i8, ptr %0, i64 320
  %i.o = getelementptr i8, ptr %0, i64 332
  %i.p = getelementptr i8, ptr %0, i64 392
  %i.q = getelementptr i8, ptr %0, i64 404
  %i.r = getelementptr i8, ptr %0, i64 464
  %i.s = getelementptr i8, ptr %0, i64 476
  %i.t = getelementptr i8, ptr %0, i64 536
  %i.u = getelementptr i8, ptr %0, i64 548
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %within_module.exit.thread
  %.066 = phi ptr [ %i.b, %.lr.ph67 ], [ %i.cw, %within_module.exit.thread ] ; 2 uses
  %.04265 = phi ptr [ null, %.lr.ph67 ], [ %.1, %within_module.exit.thread ] ; 2 uses
  %i.v = getelementptr i8, ptr %.066, i64 8       ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, -4
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = add i64 %i.x, %i.y                       ; 8 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 14 uses
  %i.ab = icmp eq ptr %.04265, %i.aa
  br i1 %i.ab, label %within_module.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.h, align 32
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = load i32, ptr %i.i, align 4
  %i.af = zext i32 %i.ae to i64
  %i.ag = sub i64 %i.z, %i.ad
  %i.ah = icmp ult i64 %i.ag, %i.af
  br i1 %i.ah, label %within_module.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.j, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = load i32, ptr %i.k, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = sub i64 %i.z, %i.aj
  %i.an = icmp ult i64 %i.am, %i.al
  br i1 %i.an, label %within_module.exit.thread, label %within_module_init.exit.i

within_module_init.exit.i:                        ; preds = %bb.d
  %i.ao = load ptr, ptr %i.l, align 16
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = load i32, ptr %i.m, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = sub i64 %i.z, %i.ap
  %i.at = icmp ult i64 %i.as, %i.ar
  br i1 %i.at, label %within_module.exit.thread, label %bb.e

bb.e:                                             ; preds = %within_module_init.exit.i
  %i.au = load ptr, ptr %i.n, align 64
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = load i32, ptr %i.o, align 4
  %i.ax = zext i32 %i.aw to i64
  %i.ay = sub i64 %i.z, %i.av
  %i.az = icmp ult i64 %i.ay, %i.ax
  br i1 %i.az, label %within_module.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr %i.p, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = load i32, ptr %i.q, align 4
  %i.bd = zext i32 %i.bc to i64
  %i.be = sub i64 %i.z, %i.bb
  %i.bf = icmp ult i64 %i.be, %i.bd
  br i1 %i.bf, label %within_module.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %i.r, align 16
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = load i32, ptr %i.s, align 4
  %i.bj = zext i32 %i.bi to i64
  %i.bk = sub i64 %i.z, %i.bh
  %i.bl = icmp ult i64 %i.bk, %i.bj
  br i1 %i.bl, label %within_module.exit.thread, label %within_module.exit

within_module.exit:                               ; preds = %bb.g
  %i.bm = load ptr, ptr %i.t, align 8
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = load i32, ptr %i.u, align 4
  %i.bp = zext i32 %i.bo to i64
  %i.bq = sub i64 %i.z, %i.bn
  %i.br = icmp ult i64 %i.bq, %i.bp
  br i1 %i.br, label %within_module.exit.thread, label %bb.h

bb.h:                                             ; preds = %within_module.exit
  %i.bs = getelementptr i8, ptr %i.aa, i64 8      ; 9 uses
  %.val52 = load i64, ptr %i.bs, align 8          ; 4 uses
  %i.bt = and i64 %.val52, -2
  %spec.select.i = icmp eq i64 %i.bt, 2
  br i1 %spec.select.i, label %within_module.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = and i64 %.val52, 2
  %.not59 = icmp eq i64 %i.bu, 0
  br i1 %.not59, label %bb.j, label %static_key_mod.exit, !prof !84

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "500: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 500b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 500) #10, !srcloc !92
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 784, i32 2305, i64 16) #10, !srcloc !93
  tail call void asm sideeffect "501: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 501b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 501) #10, !srcloc !94
  br label %within_module.exit.thread

static_key_mod.exit:                              ; preds = %bb.i
  %i.bv = and i64 %.val52, -4
  %i.bw = inttoptr i64 %i.bv to ptr               ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %.not4580 = icmp eq ptr %i.by, %0
  br i1 %.not4580, label %.critedge50, label %.lr.ph82

.lr.ph:                                           ; preds = %.lr.ph82
  %i.bz = getelementptr i8, ptr %i.cb, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %.not45 = icmp eq ptr %i.ca, %0
  br i1 %.not45, label %.critedge50, label %.lr.ph82, !llvm.loop !95

.lr.ph82:                                         ; preds = %static_key_mod.exit, %.lr.ph
  %.0446381 = phi ptr [ %i.cb, %.lr.ph ], [ %i.bw, %static_key_mod.exit ] ; 2 uses
  %i.cb = load ptr, ptr %.0446381, align 8        ; 4 uses
  %.not = icmp eq ptr %i.cb, null
  br i1 %.not, label %.critedge51, label %.lr.ph, !llvm.loop !95

.critedge50:                                      ; preds = %.lr.ph, %static_key_mod.exit
  %.04364.lcssa = phi ptr [ %i.bs, %static_key_mod.exit ], [ %.0446381, %.lr.ph ] ; 2 uses
  %.04463.lcssa = phi ptr [ %i.bw, %static_key_mod.exit ], [ %i.cb, %.lr.ph ] ; 2 uses
  %i.cc = icmp eq ptr %.04364.lcssa, %i.bs
  %i.cd = load ptr, ptr %.04463.lcssa, align 8    ; 2 uses
  br i1 %i.cc, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.critedge50
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cf = and i64 %i.ce, 3
  %.not.i53 = icmp eq i64 %i.cf, 0
  br i1 %.not.i53, label %static_key_set_mod.exit, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "494: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 494b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 494) #10, !srcloc !96
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 636, i32 2307, i64 16) #10, !srcloc !97
  tail call void asm sideeffect "495: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 495b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 495) #10, !srcloc !98
  %.pre = load i64, ptr %i.bs, align 8
  br label %static_key_set_mod.exit

static_key_set_mod.exit:                          ; preds = %bb.k, %bb.l
  %i.cg = phi i64 [ %.val52, %bb.k ], [ %.pre, %bb.l ]
  %i.ch = and i64 %i.cg, 3
  %i.ci = or i64 %i.ch, %i.ce
  store i64 %i.ci, ptr %i.bs, align 8
  br label %bb.n

bb.m:                                             ; preds = %.critedge50
  store ptr %i.cd, ptr %.04364.lcssa, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %static_key_set_mod.exit
  tail call void @kfree(ptr noundef nonnull %.04463.lcssa) #9
  %.val.i54 = load i64, ptr %i.bs, align 8        ; 2 uses
  %i.cj = and i64 %.val.i54, 2
  %.not.i55 = icmp eq i64 %i.cj, 0
  br i1 %.not.i55, label %bb.o, label %static_key_mod.exit57, !prof !84

bb.o:                                             ; preds = %bb.n
  tail call void asm sideeffect "492: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 492b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 492) #10, !srcloc !85
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 621, i32 2307, i64 16) #10, !srcloc !86
  tail call void asm sideeffect "493: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 493b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 493) #10, !srcloc !87
  %.pre.i56 = load i64, ptr %i.bs, align 8
  br label %static_key_mod.exit57

static_key_mod.exit57:                            ; preds = %bb.n, %bb.o
  %i.ck = phi i64 [ %.pre.i56, %bb.o ], [ %.val.i54, %bb.n ] ; 2 uses
  %i.cl = and i64 %i.ck, -4
  %i.cm = inttoptr i64 %i.cl to ptr               ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.p, label %within_module.exit.thread

bb.p:                                             ; preds = %static_key_mod.exit57
  %i.cp = getelementptr i8, ptr %i.cm, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.cs = and i64 %i.cr, 3
  %.not.i58 = icmp eq i64 %i.cs, 0
  br i1 %.not.i58, label %static_key_set_entries.exit, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  tail call void asm sideeffect "486: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 486b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 486) #10, !srcloc !81
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 449, i32 2307, i64 16) #10, !srcloc !82
  tail call void asm sideeffect "487: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 487b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 487) #10, !srcloc !83
  %.pre70 = load i64, ptr %i.bs, align 8
  br label %static_key_set_entries.exit

static_key_set_entries.exit:                      ; preds = %bb.p, %bb.q
  %i.ct = phi i64 [ %i.ck, %bb.p ], [ %.pre70, %bb.q ]
  %i.cu = and i64 %i.ct, 1
  %.masked = and i64 %i.cr, -3
  %i.cv = or i64 %i.cu, %.masked
  store i64 %i.cv, ptr %i.bs, align 8
  tail call void @kfree(ptr noundef %i.cm) #9
  br label %within_module.exit.thread

.critedge51:                                      ; preds = %.lr.ph82
  tail call void asm sideeffect "502: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 502b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 502) #10, !srcloc !99
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 796, i32 2305, i64 16) #10, !srcloc !100
  tail call void asm sideeffect "503: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 503b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 503) #10, !srcloc !101
  br label %within_module.exit.thread

within_module.exit.thread:                        ; preds = %bb.c, %bb.d, %bb.f, %bb.e, %bb.g, %within_module_init.exit.i, %.critedge51, %bb.j, %static_key_mod.exit57, %static_key_set_entries.exit, %bb.h, %within_module.exit, %bb.b
  %.1 = phi ptr [ %.04265, %bb.b ], [ %i.aa, %within_module.exit ], [ %i.aa, %bb.h ], [ %i.aa, %bb.j ], [ %i.aa, %.critedge51 ], [ %i.aa, %static_key_set_entries.exit ], [ %i.aa, %static_key_mod.exit57 ], [ %i.aa, %within_module_init.exit.i ], [ %i.aa, %bb.g ], [ %i.aa, %bb.e ], [ %i.aa, %bb.f ], [ %i.aa, %bb.d ], [ %i.aa, %bb.c ]
  %i.cw = getelementptr i8, ptr %.066, i64 16     ; 2 uses
  %i.cx = icmp ult ptr %i.cw, %i.f
  br i1 %i.cx, label %bb.b, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %within_module.exit.thread, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__module_address(i64 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__jump_label_update(ptr nofree noundef readnone captures(address) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, i1 noundef zeroext %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %jump_label_can_update.exit.thread
  %.011 = phi ptr [ %i.am, %jump_label_can_update.exit.thread ], [ %1, %bb.a ] ; 7 uses
  %i.b = getelementptr i8, ptr %.011, i64 8       ; 5 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, -4
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = getelementptr i8, ptr %i.b, i64 %i.d
  %i.g = icmp eq ptr %i.f, %0
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.h = and i64 %i.c, 2
  %.not13.i = icmp eq i64 %i.h, 0
  %or.cond = or i1 %3, %.not13.i
  br i1 %or.cond, label %bb.c, label %jump_label_can_update.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %.011 to i64                ; 2 uses
  %i.j = load i32, ptr %.011, align 8
  %i.k = sext i32 %i.j to i64
  %i.l = add i64 %i.k, %i.i
  %i.m = tail call i32 @kernel_text_address(i64 noundef %i.l) #9
  %.not.i = icmp eq i32 %i.m, 0
  %.val.i = load i64, ptr %i.b, align 8           ; 3 uses
  br i1 %.not.i, label %bb.d, label %jump_label_can_update.exit

bb.d:                                             ; preds = %bb.c
  %i.n = and i64 %.val.i, 2
  %.not14.i = icmp eq i64 %i.n, 0
  br i1 %.not14.i, label %bb.e, label %jump_label_can_update.exit.thread, !prof !84

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.1, i32 484, i32 2323, i64 16) #10, !srcloc !103
  %i.p = load i32, ptr %.011, align 8
  %i.q = sext i32 %i.p to i64
  %i.r = add i64 %i.q, %i.i
  %i.s = inttoptr i64 %i.r to ptr
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.o, ptr noundef %i.s) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !104
  br label %jump_label_can_update.exit.thread

jump_label_can_update.exit:                       ; preds = %bb.c
  %i.t = and i64 %.val.i, -4
  %i.u = add i64 %i.t, %i.e
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load volatile i32, ptr %i.v, align 4
  %i.x = icmp ne i32 %i.w, 0
  %i.y = trunc i64 %.val.i to i1
  %i.z = xor i1 %i.x, %i.y
  %i.aa = zext i1 %i.z to i32
  %i.ab = tail call zeroext i1 @arch_jump_label_transform_queue(ptr noundef %.011, i32 noundef %i.aa) #9
  br i1 %i.ab, label %jump_label_can_update.exit.thread, label %bb.f

bb.f:                                             ; preds = %jump_label_can_update.exit
  tail call void @arch_jump_label_transform_apply() #9
  %i.ac = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ad = and i64 %i.ac, -4
  %i.ae = add i64 %i.ad, %i.e
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load volatile i32, ptr %i.af, align 4
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = trunc i64 %i.ac to i1
  %i.aj = xor i1 %i.ah, %i.ai
  %i.ak = zext i1 %i.aj to i32
  %i.al = tail call zeroext i1 @arch_jump_label_transform_queue(ptr noundef %.011, i32 noundef %i.ak) #9
  br i1 %i.al, label %jump_label_can_update.exit.thread, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "489: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 489b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 489) #10, !srcloc !105
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 518, i32 0, i64 16) #10, !srcloc !106
  unreachable

jump_label_can_update.exit.thread:                ; preds = %bb.b, %bb.e, %bb.d, %jump_label_can_update.exit, %bb.f
  %i.am = getelementptr i8, ptr %.011, i64 16     ; 2 uses
  %i.an = icmp ult ptr %i.am, %2
  br i1 %i.an, label %.lr.ph, label %.critedge, !llvm.loop !107

.critedge:                                        ; preds = %.lr.ph, %jump_label_can_update.exit.thread, %bb.a
  tail call void @arch_jump_label_transform_apply() #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @arch_jump_label_transform_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @arch_jump_label_transform_apply() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kernel_text_address(i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @arch_jump_entry_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__module_text_address(i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { nounwind }
attributes #11 = { noredzone "no-builtin-wcslen" }
attributes #12 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{i64 2155376060, i64 2155376087, i64 2155376510, i64 2155376543, i64 2155376578, i64 2155376594, i64 2155377435, i64 2155377493, i64 2155377542, i64 2155377352, i64 2155376653, i64 2155376685}
!14 = !{i64 2155374363}
!15 = !{i64 2148901413, i64 2148901452, i64 2148901473, i64 2148901510, i64 2148901533, i64 2148901542}
!16 = !{i64 2148898351, i64 2148898390, i64 2148898411, i64 2148898448, i64 2148898471, i64 2148898480}
!17 = !{i64 4682}
!18 = !{i64 2149069196}
!19 = !{!"branch_weights", i32 2146410443, i32 1073205}
!20 = !{i64 2155382116, i64 2155381991}
!21 = !{i64 2155382639, i64 2155383715, i64 2155383748, i64 2155383783, i64 2155383799, i64 2155384726, i64 2155384784, i64 2155384833, i64 2155384643, i64 2155383858, i64 2155383890, i64 2155383973}
!22 = !{i64 2155385132, i64 2155385008}
!23 = !{i64 17184}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{i64 2155474053, i64 2155473928}
!27 = !{i64 2155474576, i64 2155475642, i64 2155475675, i64 2155475710, i64 2155475726, i64 2155476653, i64 2155476711, i64 2155476760, i64 2155476570, i64 2155475785, i64 2155475817, i64 2155475900}
!28 = !{i64 2155477059, i64 2155476935}
!29 = !{i64 22545}
!30 = !{i64 2155390108, i64 2155390135, i64 2155390558, i64 2155390591, i64 2155390626, i64 2155390642, i64 2155391483, i64 2155391541, i64 2155391590, i64 2155391400, i64 2155390701, i64 2155390733}
!31 = !{i64 2155388411}
!32 = !{i64 2155392566, i64 2155392441}
!33 = !{i64 2155393089, i64 2155394158, i64 2155394191, i64 2155394226, i64 2155394242, i64 2155395169, i64 2155395227, i64 2155395276, i64 2155395086, i64 2155394301, i64 2155394333, i64 2155394416}
!34 = !{i64 2155395575, i64 2155395451}
!35 = !{i64 5665}
!36 = !{i64 2155402700, i64 2155402727, i64 2155403150, i64 2155403183, i64 2155403218, i64 2155403234, i64 2155404075, i64 2155404133, i64 2155404182, i64 2155403992, i64 2155403293, i64 2155403325}
!37 = !{i64 2155401003}
!38 = !{i64 2155409219, i64 2155409094}
!39 = !{i64 2155409742, i64 2155410811, i64 2155410844, i64 2155410879, i64 2155410895, i64 2155411822, i64 2155411880, i64 2155411929, i64 2155411739, i64 2155410954, i64 2155410986, i64 2155411069}
!40 = !{i64 2155412228, i64 2155412104}
!41 = !{i64 6306}
!42 = !{i64 8374}
!43 = !{i64 2155441111, i64 2155441138, i64 2155441561, i64 2155441594, i64 2155441629, i64 2155441645, i64 2155442486, i64 2155442544, i64 2155442593, i64 2155442403, i64 2155441704, i64 2155441736}
!44 = !{i64 2155439414}
!45 = !{i64 2155451238, i64 2155451265, i64 2155451688, i64 2155451721, i64 2155451756, i64 2155451772, i64 2155452613, i64 2155452671, i64 2155452720, i64 2155452530, i64 2155451831, i64 2155451863}
!46 = !{i64 2155449541}
!47 = !{i64 8918}
!48 = !{!"branch_weights", i32 1, i32 127}
!49 = !{i64 2155417676, i64 2155417551}
!50 = !{i64 2155418199, i64 2155419242, i64 2155419275, i64 2155419310, i64 2155419326, i64 2155420253, i64 2155420311, i64 2155420360, i64 2155420170, i64 2155419385, i64 2155419417, i64 2155419500}
!51 = !{i64 2155420659, i64 2155420535}
!52 = !{!"branch_weights", i32 2146409906, i32 2147484, i32 2146409906}
!53 = !{i64 2155421952, i64 2155421827}
!54 = !{i64 2155422475, i64 2155423519, i64 2155423552, i64 2155423587, i64 2155423603, i64 2155424530, i64 2155424588, i64 2155424637, i64 2155424447, i64 2155423662, i64 2155423694, i64 2155423777}
!55 = !{i64 2155424936, i64 2155424812}
!56 = !{!"branch_weights", i32 127, i32 255873}
!57 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!58 = !{i64 2155427480, i64 2155427355}
!59 = !{i64 2155428003, i64 2155429050, i64 2155429083, i64 2155429118, i64 2155429134, i64 2155430061, i64 2155430119, i64 2155430168, i64 2155429978, i64 2155429193, i64 2155429225, i64 2155429308}
!60 = !{i64 2155430467, i64 2155430343}
!61 = !{i64 2155431766, i64 2155431641}
!62 = !{i64 2155432289, i64 2155433335, i64 2155433368, i64 2155433403, i64 2155433419, i64 2155434346, i64 2155434404, i64 2155434453, i64 2155434263, i64 2155433478, i64 2155433510, i64 2155433593}
!63 = !{i64 2155434752, i64 2155434628}
!64 = !{i64 2148887584, i64 2148887623, i64 2148887644, i64 2148887681, i64 2148887704, i64 2148887713}
!65 = !{i64 8267}
!66 = !{i64 2155455351, i64 2155455378, i64 2155455801, i64 2155455834, i64 2155455869, i64 2155455885, i64 2155456726, i64 2155456784, i64 2155456833, i64 2155456643, i64 2155455944, i64 2155455976}
!67 = !{i64 2155453654}
!68 = !{i64 2155461725, i64 2155461752, i64 2155462175, i64 2155462208, i64 2155462243, i64 2155462259, i64 2155463100, i64 2155463158, i64 2155463207, i64 2155463017, i64 2155462318, i64 2155462350}
!69 = !{i64 2155460028}
!70 = !{i64 2155468015, i64 2155468042, i64 2155468465, i64 2155468498, i64 2155468533, i64 2155468549, i64 2155469390, i64 2155469448, i64 2155469497, i64 2155469307, i64 2155468608, i64 2155468640}
!71 = !{i64 2155466318}
!72 = distinct !{!72, !25}
!73 = !{i64 2155494855, i64 2155490669}
!74 = !{i64 2155495378, i64 2155496439, i64 2155496472, i64 2155496507, i64 2155496523, i64 2155497450, i64 2155497508, i64 2155497557, i64 2155497367, i64 2155496582, i64 2155496614, i64 2155496697}
!75 = !{i64 2155497856, i64 2155497732}
!76 = distinct !{!76, !25}
!77 = distinct !{!77, !25}
!78 = !{i64 2155509075, i64 2155508950}
!79 = !{i64 2155509598, i64 2155510684, i64 2155510717, i64 2155510752, i64 2155510768, i64 2155511695, i64 2155511753, i64 2155511802, i64 2155511612, i64 2155510827, i64 2155510859, i64 2155510942}
!80 = !{i64 2155512101, i64 2155511977}
!81 = !{i64 2155479124, i64 2155478999}
!82 = !{i64 2155479647, i64 2155480724, i64 2155480757, i64 2155480792, i64 2155480808, i64 2155481735, i64 2155481793, i64 2155481842, i64 2155481652, i64 2155480867, i64 2155480899, i64 2155480982}
!83 = !{i64 2155482141, i64 2155482017}
!84 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!85 = !{i64 2155499365, i64 2155499240}
!86 = !{i64 2155499888, i64 2155500949, i64 2155500982, i64 2155501017, i64 2155501033, i64 2155501960, i64 2155502018, i64 2155502067, i64 2155501877, i64 2155501092, i64 2155501124, i64 2155501207}
!87 = !{i64 2155502366, i64 2155502242}
!88 = !{i64 19039}
!89 = distinct !{!89, !25}
!90 = !{i64 2155531162, i64 2155531189, i64 2155531614, i64 2155531647, i64 2155531682, i64 2155531698, i64 2155532539, i64 2155532597, i64 2155532646, i64 2155532456, i64 2155531757, i64 2155531789}
!91 = !{i64 2155529497}
!92 = !{i64 2155521144, i64 2155521019}
!93 = !{i64 2155521667, i64 2155522728, i64 2155522761, i64 2155522796, i64 2155522812, i64 2155523739, i64 2155523797, i64 2155523846, i64 2155523656, i64 2155522871, i64 2155522903, i64 2155522986}
!94 = !{i64 2155524145, i64 2155524021}
!95 = distinct !{!95, !25}
!96 = !{i64 2155503743, i64 2155503618}
!97 = !{i64 2155504266, i64 2155505339, i64 2155505372, i64 2155505407, i64 2155505423, i64 2155506350, i64 2155506408, i64 2155506457, i64 2155506267, i64 2155505482, i64 2155505514, i64 2155505597}
!98 = !{i64 2155506756, i64 2155506632}
!99 = !{i64 2155525385, i64 2155525260}
!100 = !{i64 2155525908, i64 2155526950, i64 2155526983, i64 2155527018, i64 2155527034, i64 2155527961, i64 2155528019, i64 2155528068, i64 2155527878, i64 2155527093, i64 2155527125, i64 2155527208}
!101 = !{i64 2155528367, i64 2155528243}
!102 = distinct !{!102, !25}
!103 = !{i64 2155485235, i64 2155485262, i64 2155485654, i64 2155485687, i64 2155485722, i64 2155485738, i64 2155486579, i64 2155486637, i64 2155486686, i64 2155486496, i64 2155485797, i64 2155485829}
!104 = !{i64 2155483552}
!105 = !{i64 2155487317, i64 2155487192}
!106 = !{i64 2155487840, i64 2155488316, i64 2155488349, i64 2155488384, i64 2155488400, i64 2155489241, i64 2155489299, i64 2155489348, i64 2155489158, i64 2155488459, i64 2155488491}
!107 = distinct !{!107, !25}
end_hunk_0
