Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/jump_label?download=true
inline.NumInlined: 147
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@__static_key_slow_dec_cpuslocked:bb.a
static_key_dec_not_one.exit:                      ; preds = %.lr.ph.i, %.critedge.thread.i
  tail call void @mutex_lock(ptr noundef @jump_label_mutex) #9
  %i.j = load volatile i32, ptr %0, align 4
  switch i32 %i.j, label %.critedge14 [
    i32 -1, label %bb.d
    i32 0, label %bb.e
  ], !prof !61

bb.d:                                             ; preds = %static_key_dec_not_one.exit
  tail call void asm sideeffect "470: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 470b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 470) #10, !srcloc !62
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, ptr @.str.1, i32 306, i32 2307, i64 16) #10, !srcloc !63
  tail call void asm sideeffect "471: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 471b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 471) #10, !srcloc !64
  br label %bb.g

bb.e:                                             ; preds = %static_key_dec_not_one.exit
  tail call void asm sideeffect "472: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 472b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 472) #10, !srcloc !65
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, ptr @.str.1, i32 311, i32 2307, i64 16) #10, !srcloc !66
  tail call void asm sideeffect "473: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 473b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 473) #10, !srcloc !67
  br label %bb.g

.critedge14:                                      ; preds = %static_key_dec_not_one.exit
  %i.k = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, ptr elementtype(i32) %0) #10, !srcloc !68 ; 2 uses
  %i.l = icmp ult i8 %i.k, 2
  tail call void @llvm.assume(i1 %i.l)
  %i.m = trunc nuw i8 %i.k to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge14
  tail call fastcc void @jump_label_update(ptr noundef %0) #11, !srcloc !69
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %.critedge14, %bb.f
  tail call void @mutex_unlock(ptr noundef @jump_label_mutex) #9
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
  %i.c = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 350, i32 2321, i64 16) #10, !srcloc !70
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.c, ptr noundef @__func__.__static_key_slow_dec_deferred, ptr noundef %0) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load volatile i32, ptr %0, align 4       ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.critedge.thread.i, label %.lr.ph.i, !prof !23

.critedge.thread.i:                               ; preds = %arch_atomic_try_cmpxchg.exit.i, %bb.c
  tail call void asm sideeffect "464: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 464b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 464) #10, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, ptr @.str.1, i32 276, i32 2307, i64 16) #10, !srcloc !25
  tail call void asm sideeffect "465: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 465b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 465) #10, !srcloc !26
  br label %static_key_dec_not_one.exit

.lr.ph.i:                                         ; preds = %bb.c, %arch_atomic_try_cmpxchg.exit.i
  %.01315.i = phi i32 [ %i.k, %arch_atomic_try_cmpxchg.exit.i ], [ %i.d, %bb.c ] ; 3 uses
  switch i32 %.01315.i, label %bb.e [
    i32 0, label %bb.d
    i32 1, label %static_key_dec_not_one.exit
  ], !prof !27

bb.d:                                             ; preds = %.lr.ph.i
  tail call void asm sideeffect "466: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 466b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 466) #10, !srcloc !28
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, ptr @.str.1, i32 282, i32 2307, i64 16) #10, !srcloc !29
  tail call void asm sideeffect "467: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 467b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 467) #10, !srcloc !30
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
  br i1 %i.l, label %.critedge.thread.i, label %.lr.ph.i, !prof !31

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
  %i.c = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 361, i32 2321, i64 16) #10, !srcloc !72
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.c, ptr noundef @__func__.__static_key_deferred_flush, ptr noundef %0) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !73
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
  %i.c = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 369, i32 2321, i64 16) #10, !srcloc !74
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.c, ptr noundef @__func__.jump_label_rate_limit, ptr noundef %0) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !75
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
  tail call void @timer_init_key(ptr noundef %i.i, ptr noundef @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #9
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
  tail call void @mutex_lock(ptr noundef @jump_label_mutex) #9
  %i.c = lshr i64 sub (i64 ptrtoint (ptr @__stop___jump_table to i64), i64 ptrtoint (ptr @__start___jump_table to i64)), 4
  tail call void @sort(ptr noundef @__start___jump_table, i64 noundef %i.c, i64 noundef 16, ptr noundef @jump_label_cmp, ptr noundef @jump_label_swap) #9
  %i.d = icmp ult ptr @__start___jump_table, @__stop___jump_table
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.019 = phi ptr [ %i.aa, %bb.c ], [ @__start___jump_table, %bb.b ] ; 4 uses
  %.01618 = phi ptr [ %.1, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.e = getelementptr i8, ptr %.019, i64 8       ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = and i64 %i.f, -4
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = add i64 %i.g, %i.h
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
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
  %i.w = getelementptr i8, ptr %i.j, i64 8        ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, 3
  %i.z = or disjoint i64 %i.y, %i.l
  store i64 %i.z, ptr %i.w, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %static_key_set_entries.exit
  %.1 = phi ptr [ %i.j, %static_key_set_entries.exit ], [ %.01618, %.lr.ph ]
  %i.aa = getelementptr i8, ptr %.019, i64 16     ; 2 uses
  %i.ab = icmp ult ptr %i.aa, @__stop___jump_table
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.c, %bb.b
  store i8 1, ptr @static_key_initialized, align 1
  tail call void @mutex_unlock(ptr noundef @jump_label_mutex) #9
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
  tail call void asm sideeffect "490: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 490b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 490) #10, !srcloc !78
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, ptr @.str.1, i32 579, i32 2307, i64 16) #10, !srcloc !79
  tail call void asm sideeffect "491: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 491b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 491) #10, !srcloc !80
  br label %bb.f

.critedge:                                        ; preds = %bb.a
  tail call void @cpus_read_lock() #9
  tail call void @mutex_lock(ptr noundef @jump_label_mutex) #9
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
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.e, %.critedge
  tail call void @mutex_unlock(ptr noundef @jump_label_mutex) #9
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
  %i.a = tail call i32 @register_module_notifier(ptr noundef @jump_label_module_nb) #9
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
  br i1 %i.o, label %.lr.ph.split.us.i, label %.loopexit, !llvm.loop !81

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
  br i1 %i.aa, label %.lr.ph.split.i, label %.loopexit, !llvm.loop !81

.loopexit:                                        ; preds = %addr_conflict.exit.thread.i, %addr_conflict.exit.thread.us.i, %..loopexit_crit_edge
  %.pre-phi22 = phi i64 [ %.pre21, %..loopexit_crit_edge ], [ %i.d, %addr_conflict.exit.thread.us.i ], [ %i.d, %addr_conflict.exit.thread.i ] ; 3 uses
  %.pre-phi = phi i64 [ %.pre, %..loopexit_crit_edge ], [ %i.e, %addr_conflict.exit.thread.us.i ], [ %i.e, %addr_conflict.exit.thread.i ] ; 3 uses
  tail call void @__rcu_read_lock() #9
  %i.ab = tail call ptr @__module_text_address(i64 noundef %.pre-phi) #9 ; 7 uses
  %i.ac = tail call ptr @__module_text_address(i64 noundef %.pre-phi22) #9
  %.not.i9 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i9, label %bb.f, label %bb.e, !prof !12

bb.e:                                             ; preds = %.loopexit
  tail call void asm sideeffect "497: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 497b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 497) #10, !srcloc !82
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, ptr @.str.1, i32 649, i32 2307, i64 16) #10, !srcloc !83
  tail call void asm sideeffect "498: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 498b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 498) #10, !srcloc !84
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
end_hunk_0
