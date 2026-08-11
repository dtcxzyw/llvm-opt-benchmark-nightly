inline.NumInlined: 161
inline.NumDeleted: 85
begin_hunk_0_@__mmap_lock_do_trace_start_locking:bb.a
          to label %trace_mmap_lock_start_locking.exit [label %arch_test_bit.exit.i.i], !srcloc !25

arch_test_bit.exit.i.i:                           ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !26
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #11, !srcloc !27 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %trace_mmap_lock_start_locking.exit

bb.b:                                             ; preds = %arch_test_bit.exit.i.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !29
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_start_locking, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_mmap_lock_start_locking(ptr noundef %i.i, ptr noundef %0, i1 noundef zeroext %1) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !30
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #11, !srcloc !31
  br label %trace_mmap_lock_start_locking.exit

trace_mmap_lock_start_locking.exit:               ; preds = %bb.a, %arch_test_bit.exit.i.i, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #1 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_acquire_returned, i64 8), i1 false) #11
          to label %trace_mmap_lock_acquire_returned.exit [label %arch_test_bit.exit.i.i], !srcloc !25

arch_test_bit.exit.i.i:                           ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !32
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #11, !srcloc !27 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %trace_mmap_lock_acquire_returned.exit

bb.b:                                             ; preds = %arch_test_bit.exit.i.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !29
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_acquire_returned, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_mmap_lock_acquire_returned(ptr noundef %i.i, ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !30
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #11, !srcloc !31
  br label %trace_mmap_lock_acquire_returned.exit

trace_mmap_lock_acquire_returned.exit:            ; preds = %bb.a, %arch_test_bit.exit.i.i, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext %1) #1 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #11
          to label %trace_mmap_lock_released.exit [label %arch_test_bit.exit.i.i], !srcloc !25

arch_test_bit.exit.i.i:                           ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !33
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #11, !srcloc !27 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %trace_mmap_lock_released.exit

bb.b:                                             ; preds = %arch_test_bit.exit.i.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !29
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_mmap_lock_released(ptr noundef %i.i, ptr noundef %0, i1 noundef zeroext %1) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !30
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #11, !srcloc !31
  br label %trace_mmap_lock_released.exit

trace_mmap_lock_released.exit:                    ; preds = %bb.a, %arch_test_bit.exit.i.i, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -4, 1) i32 @__vma_start_write(ptr noundef %0, i32 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.vma_exclude_readers_state, align 8 ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16             ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 464
  %i.d = load volatile i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 1
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %__vma_raw_mm_seqnum.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "200: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 200b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 200) #11, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.15, i32 87, i32 2305, i64 16) #11, !srcloc !35
  tail call void asm sideeffect "201: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 201b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 201) #11, !srcloc !36
  br label %__vma_raw_mm_seqnum.exit

__vma_raw_mm_seqnum.exit:                         ; preds = %bb.a, %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 520
  %i.g = load i32, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %0, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.i, align 4
  %i.j = call fastcc i32 @__vma_start_exclude_readers(ptr noundef nonnull %2) #13, !srcloc !37 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %__vma_raw_mm_seqnum.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.l = load i8, ptr %i.k, align 1, !range !38, !noundef !39
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %__vma_end_exclude_readers.exit.thread, !prof !18

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "682: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 682b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 682) #11, !srcloc !40
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 150, i32 2307, i64 16) #11, !srcloc !41
  tail call void asm sideeffect "683: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 683b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 683) #11, !srcloc !42
  br label %__vma_end_exclude_readers.exit.thread

bb.e:                                             ; preds = %__vma_raw_mm_seqnum.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.o = getelementptr i8, ptr %0, i64 40
  store volatile i32 %i.g, ptr %i.o, align 8
  %i.p = load i8, ptr %i.n, align 2, !range !38, !noundef !39
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %__vma_end_exclude_readers.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %2, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 128      ; 3 uses
  %i.t = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.s, i32 range(i32 -1073741824, 0) -1073741824, ptr elementtype(i32) %i.s) #11, !srcloc !43 ; 2 uses
  %i.u = icmp eq i32 %i.t, 1073741824
  br i1 %i.u, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp slt i32 %i.t, 1073741824
  br i1 %i.v, label %bb.h, label %__vma_end_exclude_readers.exit.thread, !prof !18

bb.h:                                             ; preds = %bb.g
  tail call void @refcount_warn_saturate(ptr noundef %i.s, i32 noundef 3) #10
  br label %__vma_end_exclude_readers.exit.thread

bb.i:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !44
  tail call void asm sideeffect "685: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 685b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 685) #11, !srcloc !45
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 165, i32 2307, i64 16) #11, !srcloc !46
  tail call void asm sideeffect "686: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 686b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 686) #11, !srcloc !47
  br label %__vma_end_exclude_readers.exit.thread

__vma_end_exclude_readers.exit.thread:            ; preds = %bb.h, %bb.g, %bb.e, %bb.i, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -4, 1) i32 @__vma_start_exclude_readers(ptr nofree noundef captures(none) %0) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 12
  %.val = load i8, ptr %i.b, align 4, !range !38, !noundef !39
  %not..i = zext nneg i8 %.val to i32
  %i.c = getelementptr i8, ptr %i.a, i64 16       ; 4 uses
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = getelementptr i8, ptr %i.d, i64 464
  %i.f = load volatile i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 1
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %bb.b, label %mmap_assert_write_locked.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "200: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 200b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 200) #11, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.15, i32 87, i32 2305, i64 16) #11, !srcloc !35
  tail call void asm sideeffect "201: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 201b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 201) #11, !srcloc !36
  br label %mmap_assert_write_locked.exit

mmap_assert_write_locked.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr i8, ptr %i.a, i64 128      ; 5 uses
  %i.i = load volatile i32, ptr %i.h, align 16    ; 2 uses
  %.old1.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.old1.not.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %mmap_assert_write_locked.exit, %arch_atomic_try_cmpxchg.exit.i.i
  %.0.i.i = phi i32 [ %i.o, %arch_atomic_try_cmpxchg.exit.i.i ], [ %i.i, %mmap_assert_write_locked.exit ] ; 3 uses
  %i.j = add i32 %.0.i.i, 1073741824
  %i.k = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.h, i32 %i.j, ptr elementtype(i32) %i.h, i32 %.0.i.i) #11, !srcloc !48 ; 2 uses
  %i.l = extractvalue { i8, i32 } %i.k, 0         ; 2 uses
  %i.m = icmp ult i8 %i.l, 2
  tail call void @llvm.assume(i1 %i.m)
  %i.n = trunc nuw i8 %i.l to i1
  br i1 %i.n, label %arch_atomic_try_cmpxchg.exit.thread.i.i, label %arch_atomic_try_cmpxchg.exit.i.i, !prof !17

arch_atomic_try_cmpxchg.exit.i.i:                 ; preds = %.preheader.i.i
  %i.o = extractvalue { i8, i32 } %i.k, 1         ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %arch_atomic_try_cmpxchg.exit.thread.i.i, label %.preheader.i.i, !llvm.loop !49

arch_atomic_try_cmpxchg.exit.thread.i.i:          ; preds = %arch_atomic_try_cmpxchg.exit.i.i, %.preheader.i.i, %mmap_assert_write_locked.exit
  %.2.i.i = phi i32 [ 0, %mmap_assert_write_locked.exit ], [ %.0.i.i, %.preheader.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i ] ; 3 uses
  %i.q = add i32 %.2.i.i, 1073741824
  %i.r = or i32 %i.q, %.2.i.i
  %.not.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i, label %refcount_add_not_zero.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.h, i32 noundef 0) #10
  br label %refcount_add_not_zero.exit

refcount_add_not_zero.exit:                       ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i, %bb.c
  %.not38 = icmp eq i32 %.2.i.i, 0
  br i1 %.not38, label %bb.d, label %bb.e

bb.d:                                             ; preds = %refcount_add_not_zero.exit
  %i.s = getelementptr i8, ptr %0, i64 13
  store i8 1, ptr %i.s, align 1
  br label %bb.m

bb.e:                                             ; preds = %refcount_add_not_zero.exit
  %i.t = load ptr, ptr %i.c, align 16
  %i.u = getelementptr i8, ptr %i.t, i64 512
  %i.v = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #14, !srcloc !50
  %i.w = inttoptr i64 %i.v to ptr                 ; 5 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !51
  store volatile ptr %i.w, ptr %i.u, align 8
  %i.x = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.y = getelementptr i8, ptr %i.w, i64 24       ; 2 uses
  %i.z = getelementptr i8, ptr %i.w, i64 2152
  br label %bb.f

bb.f:                                             ; preds = %signal_pending_state.exit.thread, %bb.e
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_state_tp, i64 8), i1 false) #11
          to label %arch_static_branch.exit [label %bb.g], !srcloc !25

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.x, align 8
  tail call void @__trace_set_current_state(i32 noundef %i.aa) #10
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %bb.f, %bb.g
  %i.ab = load i32, ptr %i.x, align 8
  %i.ac = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.y, i32 %i.ab, ptr elementtype(i32) %i.y) #11, !srcloc !52 ; 0 uses
  %i.ad = load volatile i32, ptr %i.h, align 16
  %1 = xor i32 %i.ad, %not..i
  %i.ae = icmp eq i32 %1, 1073741825
  br i1 %i.ae, label %bb.l, label %bb.h

bb.h:                                             ; preds = %arch_static_branch.exit
  %i.af = load i32, ptr %i.x, align 8             ; 2 uses
  %i.ag = and i32 %i.af, 257
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %signal_pending_state.exit.thread, label %test_tsk_thread_flag.exit.i.i

test_tsk_thread_flag.exit.i.i:                    ; preds = %bb.h
  %i.ah = load volatile i64, ptr %i.w, align 8
  %i.ai = and i64 %i.ah, 4
  %.not.i.i28 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i28, label %signal_pending.exit.i, label %signal_pending.exit.thread.i, !prof !17

signal_pending.exit.i:                            ; preds = %test_tsk_thread_flag.exit.i.i
  %i.aj = load volatile i64, ptr %i.w, align 8
  %i.ak = and i64 %i.aj, 2
  %.not4.i = icmp eq i64 %i.ak, 0
  br i1 %.not4.i, label %signal_pending_state.exit.thread, label %signal_pending.exit.thread.i

signal_pending.exit.thread.i:                     ; preds = %signal_pending.exit.i, %test_tsk_thread_flag.exit.i.i
  %i.al = and i32 %i.af, 1
  %.not5.i = icmp eq i32 %i.al, 0
  br i1 %.not5.i, label %signal_pending_state.exit, label %signal_pending_state.exit.thread33

signal_pending_state.exit:                        ; preds = %signal_pending.exit.thread.i
  %.val.i = load i64, ptr %i.z, align 8
  %i.am = and i64 %.val.i, 256
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %signal_pending_state.exit.thread, label %signal_pending_state.exit.thread33

signal_pending_state.exit.thread:                 ; preds = %bb.h, %signal_pending.exit.i, %signal_pending_state.exit
  tail call void @schedule() #10
  br label %bb.f

signal_pending_state.exit.thread33:               ; preds = %signal_pending.exit.thread.i, %signal_pending_state.exit
  %i.an = load ptr, ptr %i.c, align 16
  %i.ao = getelementptr i8, ptr %i.an, i64 512
  tail call void @finish_rcuwait(ptr noundef %i.ao) #10
  %i.ap = load ptr, ptr %0, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 128    ; 3 uses
  %i.ar = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.aq, i32 range(i32 -1073741824, 0) -1073741824, ptr elementtype(i32) %i.aq) #11, !srcloc !43 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 1073741824           ; 2 uses
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %signal_pending_state.exit.thread33
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !44
  br label %__vma_end_exclude_readers.exit

bb.j:                                             ; preds = %signal_pending_state.exit.thread33
  %i.at = icmp slt i32 %i.ar, 1073741824
  br i1 %i.at, label %bb.k, label %__vma_end_exclude_readers.exit, !prof !18

bb.k:                                             ; preds = %bb.j
  tail call void @refcount_warn_saturate(ptr noundef %i.aq, i32 noundef 3) #10
  br label %__vma_end_exclude_readers.exit

__vma_end_exclude_readers.exit:                   ; preds = %bb.i, %bb.j, %bb.k
  %i.au = getelementptr i8, ptr %0, i64 13
  %i.av = zext i1 %i.as to i8
  store i8 %i.av, ptr %i.au, align 1
  br label %bb.m

bb.l:                                             ; preds = %arch_static_branch.exit
  %i.aw = load ptr, ptr %i.c, align 16
  %i.ax = getelementptr i8, ptr %i.aw, i64 512
  tail call void @finish_rcuwait(ptr noundef %i.ax) #10
  %i.ay = getelementptr i8, ptr %0, i64 14
  store i8 1, ptr %i.ay, align 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %__vma_end_exclude_readers.exit, %bb.d
  %.0 = phi i32 [ -4, %__vma_end_exclude_readers.exit ], [ 0, %bb.l ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__vma_exclude_readers_for_detach(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.vma_exclude_readers_state, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store ptr %0, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 2 uses
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  store i8 0, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 0, ptr %i.e, align 1
  %i.f = call fastcc i32 @__vma_start_exclude_readers(ptr noundef nonnull %1) #13, !srcloc !53
  %i.g = icmp eq i32 %i.f, 0
  %i.h = load i8, ptr %i.d, align 2, !range !38
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i8, ptr %i.c, align 1, !range !38
  %i.j = trunc nuw i8 %.pre to i1
  br i1 %i.j, label %bb.f, label %.thread, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 128      ; 3 uses
  %i.m = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.l, i32 range(i32 -1073741824, 0) -1073741824, ptr elementtype(i32) %i.l) #11, !srcloc !43 ; 2 uses
  %i.n = icmp eq i32 %i.m, 1073741824
  br i1 %i.n, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i32 %i.m, 1073741824
  br i1 %i.o, label %bb.d, label %.thread, !prof !18

bb.d:                                             ; preds = %bb.c
  tail call void @refcount_warn_saturate(ptr noundef %i.l, i32 noundef 3) #10
  br label %.thread

bb.e:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !44
  br label %bb.f

.thread:                                          ; preds = %bb.c, %bb.d, %._crit_edge
  tail call void asm sideeffect "688: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 688b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 688) #11, !srcloc !54
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 197, i32 2307, i64 16) #11, !srcloc !55
  tail call void asm sideeffect "689: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 689b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 689) #11, !srcloc !56
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @lock_vma_under_rcu(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.ma_state, align 8           ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr i8, ptr %0, i64 64
  store ptr %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, i8 0, i64 12, i1 false)
  tail call void @__rcu_read_lock() #10
  %i.i = call ptr @mas_walk(ptr noundef nonnull %2) #10 ; 2 uses
  %.not19 = icmp eq ptr %i.i, null
  br i1 %.not19, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @__rcu_read_unlock() #10
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.j = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.a ]
  %i.k = call fastcc ptr @vma_start_read(ptr noundef %0, ptr noundef %i.j) #13, !srcloc !57 ; 7 uses
  %.not.i = icmp eq ptr %i.k, null
  %i.l = icmp ugt ptr %i.k, inttoptr (i64 -4096 to ptr)
  %spec.select.i = or i1 %.not.i, %i.l
  br i1 %spec.select.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.m = icmp eq ptr %i.k, inttoptr (i64 -11 to ptr)
  br i1 %i.m, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.g, align 8
  store ptr null, ptr %i.d, align 8
  store i64 %1, ptr %i.b, align 8
  store i64 %1, ptr %i.c, align 8
  call void @__rcu_read_lock() #10
  %i.n = call ptr @mas_walk(ptr noundef nonnull %2) #10 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  call void @__rcu_read_unlock() #10
  %i.o = load i64, ptr %i.k, align 64
  %i.p = icmp ult i64 %1, %i.o
  br i1 %i.p, label %.critedge, label %bb.e, !prof !18

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.k, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %.not17 = icmp ult i64 %1, %i.r
  br i1 %.not17, label %.loopexit, label %.critedge, !prof !17

.critedge:                                        ; preds = %bb.d, %bb.e
  call fastcc void @vma_end_read(ptr noundef nonnull %i.k) #13, !srcloc !58
end_hunk_0
