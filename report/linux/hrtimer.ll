Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hrtimer?download=true
inline.NumInlined: 224
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@hrtimer_start_range_ns_common:bb.a

__hrtimer_start_range_ns.exit:                    ; preds = %bb.z, %bb.ac, %bb.ad, %bb.ae, %bb.ag, %bb.ah
  %.0.i = phi i32 [ 0, %bb.z ], [ %i.dn, %bb.ac ], [ 2, %bb.ah ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.ag ]
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @hrtimer_reprogram(ptr noundef %0) unnamed_addr #0 align 16 {
bb.a:
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !76
  %i.b = add i64 %i.a, ptrtoint (ptr @hrtimer_bases to i64)
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = getelementptr i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 40
  %.val = load i64, ptr %i.f, align 8             ; 2 uses
  %i.g = icmp slt i64 %.val, 0
  br i1 %i.g, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "763: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 763b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 763) #19, !srcloc !77
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 850, i32 2307, i64 16) #19, !srcloc !78
  tail call void asm sideeffect "764: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 764b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 764) #19, !srcloc !79
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 56
  %i.i = load i64, ptr %i.h, align 8
  %i.j = sub i64 %.val, %i.i
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.j, i64 0) ; 7 uses
  %i.k = getelementptr i8, ptr %0, i64 58
  %i.l = load i8, ptr %i.k, align 2, !range !14, !noundef !15
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.e, align 64             ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 20
  %i.p = load i8, ptr %i.o, align 4, !range !14, !noundef !15
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.n, i64 56       ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp slt i64 %spec.store.select, %i.s
  br i1 %i.t, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.n, i64 64
  store ptr %0, ptr %i.u, align 64
  store i64 %spec.store.select, ptr %i.r, align 8
  %i.v = getelementptr i8, ptr %i.n, i64 40
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp slt i64 %spec.store.select, %i.w
  br i1 %i.x, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.y = load ptr, ptr %i.e, align 64
  %.not = icmp eq ptr %i.y, %i.c
  br i1 %.not, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.c, i64 40       ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %.not39 = icmp slt i64 %spec.store.select, %i.aa
  br i1 %.not39, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %i.c, i64 17
  %i.ac = load i8, ptr %i.ab, align 1, !range !14, !noundef !15
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %i.c, i64 48
  store ptr %0, ptr %i.ae, align 16
  store i64 %spec.store.select, ptr %i.z, align 8
  %i.af = getelementptr i8, ptr %i.c, i64 16
  %.val.i = load i8, ptr %i.af, align 16, !range !14, !noundef !15
  %.not.i = icmp eq i8 %.val.i, 0
  br i1 %.not.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %i.c, i64 19
  %i.ah = load i8, ptr %i.ag, align 1, !range !14, !noundef !15
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_rearm, i64 8), i1 false) #19
          to label %hrtimer_rearm_event.exit.i [label %_test_bit.exit.i.i.i.i], !srcloc !16

_test_bit.exit.i.i.i.i:                           ; preds = %bb.l
  %i.aj = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !17
  %i.ak = zext i32 %i.aj to i64
  %i.al = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ak) #19, !srcloc !18 ; 2 uses
  %i.am = icmp ult i8 %i.al, 2
  tail call void @llvm.assume(i1 %i.am)
  %i.an = trunc nuw i8 %i.al to i1
  br i1 %i.an, label %bb.m, label %hrtimer_rearm_event.exit.i

bb.m:                                             ; preds = %_test_bit.exit.i.i.i.i
  %i.ao = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ao, ptr elementtype(i64) %i.ao) #19, !srcloc !19
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !20
  %i.ap = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_rearm, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call i32 @__SCT__tp_func_hrtimer_rearm(ptr noundef %i.ar, i64 noundef %spec.store.select, i1 noundef zeroext false) #17 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.at = getelementptr i8, ptr %i.ao, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.at, ptr elementtype(i64) %i.at) #19, !srcloc !22
  br label %hrtimer_rearm_event.exit.i

hrtimer_rearm_event.exit.i:                       ; preds = %bb.o, %_test_bit.exit.i.i.i.i, %bb.l
  %i.au = tail call i32 @tick_program_event(i64 noundef %spec.store.select, i32 noundef 1) #17 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %hrtimer_rearm_event.exit.i, %bb.k, %bb.j, %bb.d, %bb.e, %bb.i, %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @hrtimer_force_reprogram(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %0) #18, !srcloc !31 ; 4 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.a, %i.c
  br i1 %i.d, label %__hrtimer_reprogram.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr i8, ptr %0, i64 40
  store i64 %i.a, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val.i = load i8, ptr %i.f, align 16, !range !14, !noundef !15
  %.not.i = icmp eq i8 %.val.i, 0
  br i1 %.not.i, label %__hrtimer_reprogram.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 19
  %i.h = load i8, ptr %i.g, align 1, !range !14, !noundef !15
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %__hrtimer_reprogram.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_rearm, i64 8), i1 false) #19
          to label %hrtimer_rearm_event.exit.i [label %_test_bit.exit.i.i.i.i], !srcloc !16

_test_bit.exit.i.i.i.i:                           ; preds = %bb.e
  %i.j = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !17
  %i.k = zext i32 %i.j to i64
  %i.l = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.k) #19, !srcloc !18 ; 2 uses
  %i.m = icmp ult i8 %i.l, 2
  tail call void @llvm.assume(i1 %i.m)
  %i.n = trunc nuw i8 %i.l to i1
  br i1 %i.n, label %bb.f, label %hrtimer_rearm_event.exit.i

bb.f:                                             ; preds = %_test_bit.exit.i.i.i.i
  %i.o = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.o, ptr elementtype(i64) %i.o) #19, !srcloc !19
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !20
  %i.p = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_rearm, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i32 @__SCT__tp_func_hrtimer_rearm(ptr noundef %i.r, i64 noundef %i.a, i1 noundef zeroext false) #17 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.t = getelementptr i8, ptr %i.o, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.t, ptr elementtype(i64) %i.t) #19, !srcloc !22
  br label %hrtimer_rearm_event.exit.i

hrtimer_rearm_event.exit.i:                       ; preds = %bb.h, %_test_bit.exit.i.i.i.i, %bb.e
  %i.u = tail call i32 @tick_program_event(i64 noundef %i.a, i32 noundef 1) #17 ; 0 uses
  br label %__hrtimer_reprogram.exit

__hrtimer_reprogram.exit:                         ; preds = %hrtimer_rearm_event.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @hrtimer_start_range_ns_user(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 5 uses
  %.not.i = icmp eq ptr %i.b, getelementptr inbounds nuw (i8, ptr @migration_cpu_base, i64 128)
  br i1 %.not.i, label %bb.e, label %bb.c, !prof !28

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 64
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #17 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = icmp eq ptr %i.b, %i.e
  br i1 %i.f, label %lock_hrtimer_base.exit, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.g, i64 noundef %i.d) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !30
  br label %bb.b

lock_hrtimer_base.exit:                           ; preds = %bb.c
  %i.h = tail call fastcc i32 @hrtimer_start_range_ns_common(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %i.b) #18, !srcloc !80
  switch i32 %i.h, label %hrtimer_force_reprogram.exit [
    i32 1, label %bb.f
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %lock_hrtimer_base.exit
  %4 = tail call fastcc zeroext i1 @hrtimer_check_user_timer(ptr noundef %0) #18, !srcloc !81
  br i1 %4, label %bb.g, label %hrtimer_force_reprogram.exit

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @hrtimer_reprogram(ptr noundef %0) #18
  br label %hrtimer_force_reprogram.exit

bb.h:                                             ; preds = %lock_hrtimer_base.exit
  %5 = tail call fastcc zeroext i1 @hrtimer_check_user_timer(ptr noundef %0) #18, !srcloc !82 ; 4 uses
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = load ptr, ptr %i.i, align 64             ; 4 uses
  %i.k = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %i.j) #18, !srcloc !31 ; 4 uses
  %i.l = getelementptr i8, ptr %i.j, i64 40       ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %hrtimer_force_reprogram.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.k, ptr %i.l, align 8
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %.val.i.i = load i8, ptr %i.o, align 16, !range !14, !noundef !15
  %.not.i.i.a = icmp eq i8 %.val.i.i, 0
  br i1 %.not.i.i.a, label %hrtimer_force_reprogram.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr i8, ptr %i.j, i64 19
  %i.q = load i8, ptr %i.p, align 1, !range !14, !noundef !15
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %hrtimer_force_reprogram.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_rearm, i64 8), i1 false) #19
          to label %hrtimer_rearm_event.exit.i.i [label %_test_bit.exit.i.i.i.i.i], !srcloc !16

_test_bit.exit.i.i.i.i.i:                         ; preds = %bb.k
  %i.s = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !17
  %i.t = zext i32 %i.s to i64
  %i.u = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.t) #19, !srcloc !18 ; 2 uses
  %i.v = icmp ult i8 %i.u, 2
  tail call void @llvm.assume(i1 %i.v)
  %i.w = trunc nuw i8 %i.u to i1
  br i1 %i.w, label %bb.l, label %hrtimer_rearm_event.exit.i.i

bb.l:                                             ; preds = %_test_bit.exit.i.i.i.i.i
  %i.x = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.x, ptr elementtype(i64) %i.x) #19, !srcloc !19
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !20
  %i.y = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_rearm, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 @__SCT__tp_func_hrtimer_rearm(ptr noundef %i.aa, i64 noundef %i.k, i1 noundef zeroext false) #17 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.ac = getelementptr i8, ptr %i.x, i64 8       ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ac, ptr elementtype(i64) %i.ac) #19, !srcloc !22
  br label %hrtimer_rearm_event.exit.i.i

hrtimer_rearm_event.exit.i.i:                     ; preds = %bb.n, %_test_bit.exit.i.i.i.i.i, %bb.k
  %i.ad = tail call i32 @tick_program_event(i64 noundef %i.k, i32 noundef 1) #17 ; 0 uses
  br label %hrtimer_force_reprogram.exit

hrtimer_force_reprogram.exit:                     ; preds = %hrtimer_rearm_event.exit.i.i, %bb.j, %bb.i, %bb.h, %bb.f, %bb.g, %lock_hrtimer_base.exit
  %.0.shrunk = phi i1 [ true, %lock_hrtimer_base.exit ], [ true, %bb.g ], [ false, %bb.f ], [ %5, %bb.h ], [ %5, %bb.i ], [ %5, %bb.j ], [ %5, %hrtimer_rearm_event.exit.i.i ]
  %.val = load ptr, ptr %i.a, align 8
  %.val.val = load ptr, ptr %.val, align 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %.val.val, i64 noundef %i.d) #17
  ret i1 %.0.shrunk
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @hrtimer_check_user_timer(ptr noundef %0) unnamed_addr #6 align 16 prefalign(16) {
  %2 = getelementptr i8, ptr %0, i64 48           ; 2 uses
  %3 = load ptr, ptr %2, align 8                  ; 2 uses
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %0, i64 64
  %.val = load i64, ptr %5, align 8
  %6 = getelementptr i8, ptr %3, i64 56
  %7 = load i64, ptr %6, align 8
  %8 = sub i64 %.val, %7                          ; 2 uses
  %9 = getelementptr i8, ptr %4, i64 40
  %10 = load i64, ptr %9, align 8
  %.not = icmp slt i64 %8, %10
  br i1 %.not, label %11, label %trace_hrtimer_start_expired.exit

11:                                               ; preds = %1
  %12 = tail call i64 @ktime_get() #17
  %13 = icmp sgt i64 %8, %12
  br i1 %13, label %trace_hrtimer_start_expired.exit, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %2, align 8                 ; 5 uses
  %16 = load ptr, ptr %15, align 64
  %17 = getelementptr i8, ptr %0, i64 56          ; 2 uses
  %18 = load i8, ptr %17, align 8, !range !14, !noundef !15
  %19 = trunc nuw i8 %18 to i1
  br i1 %19, label %20, label %__remove_hrtimer.exit

20:                                               ; preds = %14
  store volatile i8 0, ptr %17, align 8
  %21 = getelementptr i8, ptr %0, i64 24
  %22 = load ptr, ptr %21, align 8
  %.not.i = icmp eq ptr %22, null
  %23 = getelementptr i8, ptr %15, i64 40
  %24 = tail call zeroext i1 @rb_erase_linked(ptr noundef %0, ptr noundef %23) #17
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %15, i64 8
  %27 = load i32, ptr %26, align 8
  %28 = shl nuw i32 1, %27
  %29 = xor i32 %28, -1
  %30 = getelementptr i8, ptr %16, i64 8          ; 2 uses
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, %29
  store i32 %32, ptr %30, align 8
  br label %33

33:                                               ; preds = %25, %20
  br i1 %.not.i, label %34, label %__remove_hrtimer.exit

34:                                               ; preds = %33
  %35 = getelementptr i8, ptr %15, i64 48
  %36 = load ptr, ptr %35, align 16               ; 2 uses
  %.not.i18.i = icmp eq ptr %36, null
  br i1 %.not.i18.i, label %base_update_next_timer.exit.i, label %37

37:                                               ; preds = %34
  %38 = getelementptr i8, ptr %36, i64 40
  %39 = load i64, ptr %38, align 8
  br label %base_update_next_timer.exit.i

base_update_next_timer.exit.i:                    ; preds = %37, %34
  %40 = phi i64 [ %39, %37 ], [ 9223372036854775807, %34 ]
  %41 = getelementptr i8, ptr %15, i64 24
  store i64 %40, ptr %41, align 8
  br label %__remove_hrtimer.exit

__remove_hrtimer.exit:                            ; preds = %14, %33, %base_update_next_timer.exit.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_start_expired, i64 8), i1 false) #19
          to label %trace_hrtimer_start_expired.exit [label %_test_bit.exit.i.i], !srcloc !16

_test_bit.exit.i.i:                               ; preds = %__remove_hrtimer.exit
  %42 = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !83
  %43 = zext i32 %42 to i64
  %44 = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %43) #19, !srcloc !18 ; 2 uses
  %45 = icmp ult i8 %44, 2
  tail call void @llvm.assume(i1 %45)
  %46 = trunc nuw i8 %44 to i1
  br i1 %46, label %47, label %trace_hrtimer_start_expired.exit

47:                                               ; preds = %_test_bit.exit.i.i
  %48 = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %48, ptr elementtype(i64) %48) #19, !srcloc !19
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !20
  %49 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_start_expired, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %49, null
  br i1 %.not.i.i, label %54, label %50

50:                                               ; preds = %47
  %51 = getelementptr i8, ptr %49, i64 8
  %52 = load ptr, ptr %51, align 8
  %53 = tail call i32 @__SCT__tp_func_hrtimer_start_expired(ptr noundef %52, ptr noundef %0) #17 ; 0 uses
  br label %54

54:                                               ; preds = %50, %47
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %55 = getelementptr i8, ptr %48, i64 8          ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %55, ptr elementtype(i64) %55) #19, !srcloc !22
  br label %trace_hrtimer_start_expired.exit

trace_hrtimer_start_expired.exit:                 ; preds = %54, %_test_bit.exit.i.i, %__remove_hrtimer.exit, %11, %1
  %.0 = phi i1 [ true, %11 ], [ true, %1 ], [ false, %__remove_hrtimer.exit ], [ false, %54 ], [ false, %_test_bit.exit.i.i ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 2) i32 @hrtimer_try_to_cancel(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 56         ; 3 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %bb.a
  %i.c = load volatile ptr, ptr %i.a, align 8     ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16       ; 3 uses
  %i.e = load volatile i32, ptr %i.d, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !34
  %i.f = and i32 %i.e, 1
  %.not17.i = icmp eq i32 %i.f, 0
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i, !prof !35

.lr.ph.i:                                         ; preds = %.critedge.i, %.lr.ph.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !30
  %i.g = load volatile i32, ptr %i.d, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !34
  %i.h = and i32 %i.g, 1
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !prof !36, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.critedge.i
  %.lcssa.i = phi i32 [ %i.e, %.critedge.i ], [ %i.g, %.lr.ph.i ]
  %i.i = load i8, ptr %i.b, align 8, !range !14, !noundef !15
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.preheader, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.k = getelementptr i8, ptr %i.c, i64 32
  %i.l = load ptr, ptr %i.k, align 32
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %.preheader, label %bb.c

.preheader:                                       ; preds = %._crit_edge.i, %bb.b
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !37
  %i.n = load volatile i32, ptr %i.d, align 16
  %.not15.i = icmp eq i32 %i.n, %.lcssa.i
  br i1 %.not15.i, label %bb.d, label %.critedge.i.backedge

bb.d:                                             ; preds = %bb.c
  %i.o = load volatile ptr, ptr %i.a, align 8
  %.not14.i = icmp eq ptr %i.c, %i.o
  br i1 %.not14.i, label %hrtimer_active.exit, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %bb.d, %bb.c
  br label %.critedge.i

bb.e:                                             ; preds = %.preheader, %bb.h
  %i.p = load volatile ptr, ptr %i.a, align 8     ; 9 uses
  %.not.i11 = icmp eq ptr %i.p, getelementptr inbounds nuw (i8, ptr @migration_cpu_base, i64 128)
  br i1 %.not.i11, label %bb.h, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.p, align 64
  %i.r = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.q) #17 ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.p, %i.s
  br i1 %i.t, label %lock_hrtimer_base.exit, label %bb.g, !prof !29

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.p, align 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.u, i64 noundef %i.r) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !30
  br label %bb.e

lock_hrtimer_base.exit:                           ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.s, i64 32
  %i.w = load ptr, ptr %i.v, align 32
  %.not = icmp eq ptr %i.w, %0
  br i1 %.not, label %trace_hrtimer_cancel.exit, label %bb.i

bb.i:                                             ; preds = %lock_hrtimer_base.exit
  %i.x = load i8, ptr %i.b, align 8, !range !14, !noundef !15
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.j, label %trace_hrtimer_cancel.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.p, align 64             ; 6 uses
  %i.aa = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !38
  %i.ab = getelementptr i8, ptr @hrtimer_bases, i64 %i.aa
  %i.ac = icmp eq ptr %i.z, %i.ab
  store volatile i8 0, ptr %i.b, align 8
  %i.ad = getelementptr i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr i8, ptr %i.p, i64 40
  %i.ag = tail call zeroext i1 @rb_erase_linked(ptr noundef %0, ptr noundef %i.af) #17
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %i.p, i64 8
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = xor i32 %i.aj, -1
  %i.al = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  %i.am = load i32, ptr %i.al, align 8
  %i.an = and i32 %i.am, %i.ak
  store i32 %i.an, ptr %i.al, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not.i.i, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %i.p, i64 48
  %i.ap = load ptr, ptr %i.ao, align 16           ; 2 uses
  %.not.i18.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i18.i.i, label %base_update_next_timer.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr i8, ptr %i.ap, i64 40
  %i.ar = load i64, ptr %i.aq, align 8
  br label %base_update_next_timer.exit.i.i

base_update_next_timer.exit.i.i:                  ; preds = %bb.n, %bb.m
  %i.as = phi i64 [ %i.ar, %bb.n ], [ 9223372036854775807, %bb.m ]
  %i.at = getelementptr i8, ptr %i.p, i64 24
  store i64 %i.as, ptr %i.at, align 8
  br i1 %i.ac, label %bb.o, label %bb.t

bb.o:                                             ; preds = %base_update_next_timer.exit.i.i
  %i.au = getelementptr i8, ptr %i.z, i64 48
  %i.av = load ptr, ptr %i.au, align 16
  %.not17.i.i = icmp eq ptr %0, %i.av
  br i1 %.not17.i.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr i8, ptr %0, i64 60
  %i.ax = load i8, ptr %i.aw, align 4, !range !14, !noundef !15
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr i8, ptr %i.z, i64 17
  %i.ba = load i8, ptr %i.az, align 1, !range !14, !noundef !15
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr i8, ptr %i.z, i64 18
  store i8 1, ptr %i.bc, align 2
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  tail call fastcc void @hrtimer_force_reprogram(ptr noundef %i.z, i1 noundef zeroext true) #18, !srcloc !39
  br label %bb.t

bb.t:                                             ; preds = %bb.l, %base_update_next_timer.exit.i.i, %bb.o, %bb.p, %bb.r, %bb.s
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_cancel, i64 8), i1 false) #19
          to label %trace_hrtimer_cancel.exit [label %_test_bit.exit.i.i], !srcloc !16

_test_bit.exit.i.i:                               ; preds = %bb.t
  %i.bd = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !84
  %i.be = zext i32 %i.bd to i64
  %i.bf = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.be) #19, !srcloc !18 ; 2 uses
  %i.bg = icmp ult i8 %i.bf, 2
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = trunc nuw i8 %i.bf to i1
  br i1 %i.bh, label %bb.u, label %trace_hrtimer_cancel.exit

bb.u:                                             ; preds = %_test_bit.exit.i.i
  %i.bi = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bi, ptr elementtype(i64) %i.bi) #19, !srcloc !19
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !20
  %i.bj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_cancel, i64 56), align 8 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i12, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call i32 @__SCT__tp_func_hrtimer_cancel(ptr noundef %i.bl, ptr noundef %0) #17 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.bn = getelementptr i8, ptr %i.bi, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bn, ptr elementtype(i64) %i.bn) #19, !srcloc !22
  br label %trace_hrtimer_cancel.exit

trace_hrtimer_cancel.exit:                        ; preds = %bb.i, %bb.w, %_test_bit.exit.i.i, %bb.t, %lock_hrtimer_base.exit
  %.0 = phi i32 [ -1, %lock_hrtimer_base.exit ], [ 1, %bb.w ], [ 1, %bb.t ], [ 0, %bb.i ], [ 1, %_test_bit.exit.i.i ]
  %.val = load ptr, ptr %i.a, align 8
  %.val.val = load ptr, ptr %.val, align 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %.val.val, i64 noundef %i.r) #17
  br label %hrtimer_active.exit

hrtimer_active.exit:                              ; preds = %bb.d, %trace_hrtimer_cancel.exit
  %.09 = phi i32 [ %.0, %trace_hrtimer_cancel.exit ], [ 0, %bb.d ]
  ret i32 %.09
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @hrtimer_active(ptr nofree noundef captures(address) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 56
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.c = load volatile ptr, ptr %i.a, align 8     ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16       ; 3 uses
  %i.e = load volatile i32, ptr %i.d, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !34
  %i.f = and i32 %i.e, 1
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %.critedge, %.lr.ph
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !30
  %i.g = load volatile i32, ptr %i.d, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !34
  %i.h = and i32 %i.g, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !prof !36, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %.critedge
  %.lcssa = phi i32 [ %i.e, %.critedge ], [ %i.g, %.lr.ph ]
  %i.i = load i8, ptr %i.b, align 8, !range !14, !noundef !15
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr i8, ptr %i.c, i64 32
  %i.l = load ptr, ptr %i.k, align 32
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !37
  %i.n = load volatile i32, ptr %i.d, align 16
  %.not15 = icmp eq i32 %i.n, %.lcssa
  br i1 %.not15, label %bb.d, label %.critedge.backedge

bb.d:                                             ; preds = %bb.c
  %i.o = load volatile ptr, ptr %i.a, align 8
  %.not14 = icmp eq ptr %i.c, %i.o
  br i1 %.not14, label %bb.e, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.d, %bb.c
  br label %.critedge

bb.e:                                             ; preds = %bb.d, %._crit_edge, %bb.b
  %.0 = phi i1 [ true, %._crit_edge ], [ true, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @remove_hrtimer(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %__remove_hrtimer.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 64               ; 6 uses
  %i.e = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !38
  %i.f = getelementptr i8, ptr @hrtimer_bases, i64 %i.e
  %i.g = icmp eq ptr %i.d, %i.f
  %i.h = zext i1 %2 to i8
  store volatile i8 %i.h, ptr %i.a, align 8
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.j, null
  %i.k = getelementptr i8, ptr %1, i64 40
  %i.l = tail call zeroext i1 @rb_erase_linked(ptr noundef %0, ptr noundef %i.k) #17
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = shl nuw i32 1, %i.n
  %i.p = xor i32 %i.o, -1
  %i.q = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, %i.p
  store i32 %i.s, ptr %i.q, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %.not.i, label %bb.e, label %__remove_hrtimer.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %1, i64 48
  %i.u = load ptr, ptr %i.t, align 16             ; 2 uses
  %.not.i18.i = icmp eq ptr %i.u, null
  br i1 %.not.i18.i, label %base_update_next_timer.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.u, i64 40
  %i.w = load i64, ptr %i.v, align 8
  br label %base_update_next_timer.exit.i

base_update_next_timer.exit.i:                    ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.w, %bb.f ], [ 9223372036854775807, %bb.e ]
  %i.y = getelementptr i8, ptr %1, i64 24
  store i64 %i.x, ptr %i.y, align 8
  br i1 %i.g, label %bb.g, label %__remove_hrtimer.exit

bb.g:                                             ; preds = %base_update_next_timer.exit.i
  %i.z = getelementptr i8, ptr %i.d, i64 48
  %i.aa = load ptr, ptr %i.z, align 16
  %.not17.i = icmp eq ptr %0, %i.aa
  br i1 %.not17.i, label %bb.h, label %__remove_hrtimer.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %0, i64 60
  %i.ac = load i8, ptr %i.ab, align 4, !range !14, !noundef !15
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %__remove_hrtimer.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %i.d, i64 17
  %i.af = load i8, ptr %i.ae, align 1, !range !14, !noundef !15
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %i.d, i64 18
  store i8 1, ptr %i.ah, align 2
  br label %__remove_hrtimer.exit

bb.k:                                             ; preds = %bb.i
  tail call fastcc void @hrtimer_force_reprogram(ptr noundef %i.d, i1 noundef zeroext true) #18, !srcloc !39
  br label %__remove_hrtimer.exit

__remove_hrtimer.exit:                            ; preds = %bb.k, %bb.j, %bb.h, %bb.g, %base_update_next_timer.exit.i, %bb.d, %bb.a
  ret i1 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @hrtimer_cancel(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @hrtimer_try_to_cancel(ptr noundef %0) #18 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !30
  %i.c = tail call i32 @hrtimer_try_to_cancel(ptr noundef %0) #18 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.critedge, !llvm.loop !1

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.c, %.lr.ph ]
  ret i32 %.lcssa
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__hrtimer_get_remaining(ptr nofree noundef captures(address) %0, i1 zeroext %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 4 uses
  %.not.i = icmp eq ptr %i.b, getelementptr inbounds nuw (i8, ptr @migration_cpu_base, i64 128)
  br i1 %.not.i, label %bb.e, label %bb.c, !prof !28

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 64
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #17 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.b, %i.e
  br i1 %i.f, label %lock_hrtimer_base.exit, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.g, i64 noundef %i.d) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !30
  br label %bb.b

lock_hrtimer_base.exit:                           ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 40
  %.val4 = load i64, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.e, i64 12
  %.val5.val = load i32, ptr %i.i, align 4
  %i.j = tail call fastcc i64 @__hrtimer_cb_get_time(i32 noundef %.val5.val) #18, !srcloc !40
  %i.k = sub i64 %.val4, %i.j
  %.val = load ptr, ptr %i.a, align 8
  %.val.val = load ptr, ptr %.val, align 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %.val.val, i64 noundef %i.d) #17
  ret i64 %i.k
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 0, -9223372036854775808) i64 @hrtimer_get_next_event() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !85
  %i.b = add i64 %i.a, ptrtoint (ptr @hrtimer_bases to i64)
  %i.c = inttoptr i64 %i.b to ptr                 ; 9 uses
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #17
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val = load i8, ptr %i.e, align 16, !range !14, !noundef !15
  %.not = icmp eq i8 %.val, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 20
  %i.g = load i8, ptr %i.f, align 4, !range !14, !noundef !15
  %i.h = trunc nuw i8 %i.g to i1
  %.phi.trans.insert = getelementptr i8, ptr %i.c, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %i.h, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %.pre, 240                       ; 3 uses
  %.not22.i = icmp eq i32 %i.i, 0
  br i1 %.not22.i, label %hrtimer_bases_first.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 241) %i.i, i32 -1) #20, !srcloc !26 ; 2 uses
  %.not25.i.i = icmp eq i32 %i.j, -1
  br i1 %.not25.i.i, label %hrtimer_bases_first.exit.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.c, i64 128
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i, %.preheader.lr.ph.i.i
  %.345.i = phi ptr [ null, %.preheader.lr.ph.i.i ], [ %.446.i, %.critedge.i.i ]
  %.4.i = phi i64 [ 9223372036854775807, %.preheader.lr.ph.i.i ], [ %.5.i, %.critedge.i.i ]
  %i.l = phi i64 [ 9223372036854775807, %.preheader.lr.ph.i.i ], [ %i.z, %.critedge.i.i ] ; 2 uses
  %i.m = phi i32 [ %i.j, %.preheader.lr.ph.i.i ], [ %i.ab, %.critedge.i.i ] ; 2 uses
  %.02126.i.i = phi i32 [ %i.i, %.preheader.lr.ph.i.i ], [ %i.aa, %.critedge.i.i ]
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr [64 x i8], ptr %i.k, i64 %i.n ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = getelementptr i8, ptr %i.o, i64 56
  %i.r = shl nuw i32 1, %i.m
  %i.s = xor i32 %i.r, -1
  %i.t = load i64, ptr %i.p, align 8
  %i.u = load i64, ptr %i.q, align 8
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp slt i64 %i.v, %i.l
  br i1 %i.w, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %.preheader.i.i
  %i.x = getelementptr i8, ptr %i.o, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.e, %.preheader.i.i
  %.446.i = phi ptr [ %i.y, %bb.e ], [ %.345.i, %.preheader.i.i ] ; 2 uses
  %.5.i = phi i64 [ %i.v, %bb.e ], [ %.4.i, %.preheader.i.i ] ; 2 uses
  %i.z = phi i64 [ %i.v, %bb.e ], [ %i.l, %.preheader.i.i ]
  %i.aa = and i32 %.02126.i.i, %i.s               ; 2 uses
  %i.ab = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.aa, i32 -1) #20, !srcloc !26 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ab, -1
  br i1 %.not.i.i, label %hrtimer_bases_first.exit.i, label %.preheader.i.i, !llvm.loop !2

hrtimer_bases_first.exit.i:                       ; preds = %.critedge.i.i, %bb.d, %bb.c
  %.042.i = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ %.446.i, %.critedge.i.i ] ; 2 uses
  %.0.i = phi i64 [ 9223372036854775807, %bb.c ], [ 9223372036854775807, %bb.d ], [ %.5.i, %.critedge.i.i ]
  %i.ac = getelementptr i8, ptr %i.c, i64 64
  store ptr %.042.i, ptr %i.ac, align 64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %hrtimer_bases_first.exit.i
  %.143.i = phi ptr [ %.042.i, %hrtimer_bases_first.exit.i ], [ null, %bb.b ] ; 3 uses
  %.1.i = phi i64 [ %.0.i, %hrtimer_bases_first.exit.i ], [ 9223372036854775807, %bb.b ] ; 4 uses
  %i.ad = and i32 %.pre, 15                       ; 3 uses
  %.not24.i = icmp eq i32 %i.ad, 0
  br i1 %.not24.i, label %__hrtimer_get_next_event.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ae = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 241) %i.ad, i32 -1) #20, !srcloc !26 ; 2 uses
  %.not25.i25.i = icmp eq i32 %i.ae, -1
  br i1 %.not25.i25.i, label %__hrtimer_get_next_event.exit, label %.preheader.lr.ph.i26.i

.preheader.lr.ph.i26.i:                           ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.c, i64 128
  br label %.preheader.i29.i

.preheader.i29.i:                                 ; preds = %.critedge.i31.i, %.preheader.lr.ph.i26.i
  %.648.i = phi ptr [ %.143.i, %.preheader.lr.ph.i26.i ], [ %.749.i, %.critedge.i31.i ]
  %.7.i = phi i64 [ %.1.i, %.preheader.lr.ph.i26.i ], [ %.8.i, %.critedge.i31.i ]
  %i.ag = phi i64 [ %.1.i, %.preheader.lr.ph.i26.i ], [ %i.au, %.critedge.i31.i ] ; 2 uses
  %i.ah = phi i32 [ %i.ae, %.preheader.lr.ph.i26.i ], [ %i.aw, %.critedge.i31.i ] ; 2 uses
  %.02126.i30.i = phi i32 [ %i.ad, %.preheader.lr.ph.i26.i ], [ %i.av, %.critedge.i31.i ]
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr [64 x i8], ptr %i.af, i64 %i.ai ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 24
  %i.al = getelementptr i8, ptr %i.aj, i64 56
  %i.am = shl nuw i32 1, %i.ah
  %i.an = xor i32 %i.am, -1
  %i.ao = load i64, ptr %i.ak, align 8
  %i.ap = load i64, ptr %i.al, align 8
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp slt i64 %i.aq, %i.ag
  br i1 %i.ar, label %bb.g, label %.critedge.i31.i

bb.g:                                             ; preds = %.preheader.i29.i
  %i.as = getelementptr i8, ptr %i.aj, i64 48
  %i.at = load ptr, ptr %i.as, align 8
  br label %.critedge.i31.i

.critedge.i31.i:                                  ; preds = %bb.g, %.preheader.i29.i
  %.749.i = phi ptr [ %i.at, %bb.g ], [ %.648.i, %.preheader.i29.i ] ; 2 uses
  %.8.i = phi i64 [ %i.aq, %bb.g ], [ %.7.i, %.preheader.i29.i ] ; 2 uses
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %i.ag, %.preheader.i29.i ]
  %i.av = and i32 %.02126.i30.i, %i.an            ; 2 uses
  %i.aw = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.av, i32 -1) #20, !srcloc !26 ; 2 uses
  %.not.i33.i = icmp eq i32 %i.aw, -1
  br i1 %.not.i33.i, label %__hrtimer_get_next_event.exit, label %.preheader.i29.i, !llvm.loop !2

__hrtimer_get_next_event.exit:                    ; preds = %.critedge.i31.i, %._crit_edge, %bb.f
  %.244.i = phi ptr [ %.143.i, %._crit_edge ], [ %.143.i, %bb.f ], [ %.749.i, %.critedge.i31.i ]
  %.2.i = phi i64 [ %.1.i, %._crit_edge ], [ %.1.i, %bb.f ], [ %.8.i, %.critedge.i31.i ]
  %i.ax = getelementptr i8, ptr %i.c, i64 48
  store ptr %.244.i, ptr %i.ax, align 16
  %i.ay = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %.2.i, i64 0)
  br label %bb.h

bb.h:                                             ; preds = %__hrtimer_get_next_event.exit, %bb.a
  %.0 = phi i64 [ 9223372036854775807, %bb.a ], [ %i.ay, %__hrtimer_get_next_event.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.d) #17
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 0, -9223372036854775808) i64 @hrtimer_next_event_without(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !87
  %i.b = add i64 %i.a, ptrtoint (ptr @hrtimer_bases to i64)
  %i.c = inttoptr i64 %i.b to ptr                 ; 7 uses
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #17
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val = load i8, ptr %i.e, align 16, !range !14, !noundef !15
  %.not = icmp eq i8 %.val, 0
  br i1 %.not, label %hrtimer_bases_next_event_without.exit42, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = and i32 %i.g, 240                        ; 3 uses
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %hrtimer_bases_next_event_without.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 20
  %i.j = load i8, ptr %i.i, align 4, !range !14, !noundef !15
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %hrtimer_bases_next_event_without.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 241) %i.h, i32 -1) #20, !srcloc !26 ; 2 uses
  %.not53.i = icmp eq i32 %i.l, -1
  br i1 %.not53.i, label %hrtimer_bases_next_event_without.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.c, i64 128
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %.preheader.lr.ph.i
  %i.n = phi i32 [ %i.l, %.preheader.lr.ph.i ], [ %i.ag, %bb.h ] ; 2 uses
  %.055.i = phi i32 [ %i.h, %.preheader.lr.ph.i ], [ %i.af, %bb.h ]
  %.04054.i = phi i64 [ 9223372036854775807, %.preheader.lr.ph.i ], [ %.2.lcssa.i, %bb.h ] ; 4 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr [64 x i8], ptr %i.m, i64 %i.o ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.p, i64 56
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = sub i64 %i.r, %i.t                       ; 2 uses
  %i.v = shl nuw i32 1, %i.n
  %i.w = xor i32 %i.v, -1
  %.not46.i = icmp slt i64 %i.u, %.04054.i
  br i1 %.not46.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.preheader.i
  %i.x = getelementptr i8, ptr %i.p, i64 48
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %0, %i.y
  br i1 %i.z, label %bb.f, label %bb.h, !prof !28

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %i.y, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not47.i = icmp eq ptr %i.ab, null
  br i1 %.not47.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %i.ab, i64 40
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = sub i64 %i.ad, %i.t
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %.04054.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %.preheader.i
  %.2.lcssa.i = phi i64 [ %.04054.i, %.preheader.i ], [ %.04054.i, %bb.f ], [ %spec.select.i, %bb.g ], [ %i.u, %bb.e ] ; 2 uses
  %i.af = and i32 %.055.i, %i.w                   ; 2 uses
  %i.ag = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.af, i32 -1) #20, !srcloc !26 ; 2 uses
  %.not.i = icmp eq i32 %i.ag, -1
  br i1 %.not.i, label %hrtimer_bases_next_event_without.exit.loopexit, label %.preheader.i, !llvm.loop !86

hrtimer_bases_next_event_without.exit.loopexit:   ; preds = %bb.h
  %i.ah = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %.2.lcssa.i, i64 0)
  br label %hrtimer_bases_next_event_without.exit

hrtimer_bases_next_event_without.exit:            ; preds = %bb.d, %hrtimer_bases_next_event_without.exit.loopexit, %bb.c, %bb.b
  %.0 = phi i64 [ 9223372036854775807, %bb.c ], [ 9223372036854775807, %bb.b ], [ 9223372036854775807, %bb.d ], [ %i.ah, %hrtimer_bases_next_event_without.exit.loopexit ] ; 3 uses
  %i.ai = and i32 %i.g, 15                        ; 3 uses
  %.not27 = icmp eq i32 %i.ai, 0
  br i1 %.not27, label %hrtimer_bases_next_event_without.exit42, label %bb.i

bb.i:                                             ; preds = %hrtimer_bases_next_event_without.exit
  %i.aj = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 241) %i.ai, i32 -1) #20, !srcloc !26 ; 2 uses
  %.not53.i28 = icmp eq i32 %i.aj, -1
  br i1 %.not53.i28, label %hrtimer_bases_next_event_without.exit42, label %.preheader.lr.ph.i29

.preheader.lr.ph.i29:                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.c, i64 128
  br label %.preheader.i31

.preheader.i31:                                   ; preds = %bb.m, %.preheader.lr.ph.i29
  %i.al = phi i32 [ %i.aj, %.preheader.lr.ph.i29 ], [ %i.be, %bb.m ] ; 2 uses
  %.055.i32 = phi i32 [ %i.ai, %.preheader.lr.ph.i29 ], [ %i.bd, %bb.m ]
  %.04054.i33 = phi i64 [ %.0, %.preheader.lr.ph.i29 ], [ %.2.lcssa.i35, %bb.m ] ; 4 uses
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr [64 x i8], ptr %i.ak, i64 %i.am ; 3 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %i.an, i64 56
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.as = sub i64 %i.ap, %i.ar                    ; 2 uses
  %i.at = shl nuw i32 1, %i.al
  %i.au = xor i32 %i.at, -1
  %.not46.i34 = icmp slt i64 %i.as, %.04054.i33
  br i1 %.not46.i34, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.preheader.i31
  %i.av = getelementptr i8, ptr %i.an, i64 48
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = icmp eq ptr %0, %i.aw
  br i1 %i.ax, label %bb.k, label %bb.m, !prof !28

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr i8, ptr %i.aw, i64 32
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not47.i39 = icmp eq ptr %i.az, null
  br i1 %.not47.i39, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr i8, ptr %i.az, i64 40
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = sub i64 %i.bb, %i.ar
  %spec.select.i40 = tail call i64 @llvm.smin.i64(i64 %i.bc, i64 %.04054.i33)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %.preheader.i31
  %.2.lcssa.i35 = phi i64 [ %.04054.i33, %.preheader.i31 ], [ %.04054.i33, %bb.k ], [ %spec.select.i40, %bb.l ], [ %i.as, %bb.j ] ; 2 uses
  %i.bd = and i32 %.055.i32, %i.au                ; 2 uses
  %i.be = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bd, i32 -1) #20, !srcloc !26 ; 2 uses
  %.not.i37 = icmp eq i32 %i.be, -1
  br i1 %.not.i37, label %hrtimer_bases_next_event_without.exit42.loopexit, label %.preheader.i31, !llvm.loop !86

hrtimer_bases_next_event_without.exit42.loopexit: ; preds = %bb.m
  %i.bf = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %.2.lcssa.i35, i64 0)
  br label %hrtimer_bases_next_event_without.exit42

hrtimer_bases_next_event_without.exit42:          ; preds = %bb.i, %hrtimer_bases_next_event_without.exit42.loopexit, %hrtimer_bases_next_event_without.exit, %bb.a
  %.023 = phi i64 [ %.0, %hrtimer_bases_next_event_without.exit ], [ 9223372036854775807, %bb.a ], [ %.0, %bb.i ], [ %i.bf, %hrtimer_bases_next_event_without.exit42.loopexit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.d) #17
  ret i64 %.023
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @hrtimer_cb_get_time(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = tail call fastcc i64 @__hrtimer_cb_get_time(i32 noundef %i.d) #18, !srcloc !40
  ret i64 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @__hrtimer_cb_get_time(i32 noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  switch i32 %0, label %bb.f [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 7, label %bb.d
    i32 11, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @ktime_get() #17
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @ktime_get_with_offset(i32 noundef 0) #17
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.c = tail call i64 @ktime_get_with_offset(i32 noundef 1) #17
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.d = tail call i64 @ktime_get_with_offset(i32 noundef 2) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.e = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, ptr @.str.1, i32 1855, i32 2321, i64 16) #19, !srcloc !88
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.e, i32 noundef %0) #17
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !89
  %i.f = tail call i64 @ktime_get() #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.f, %bb.f ], [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %i.d, %bb.e ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @hrtimer_setup(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_setup, i64 8), i1 false) #19
          to label %debug_setup.exit [label %_test_bit.exit.i.i.i], !srcloc !16

_test_bit.exit.i.i.i:                             ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !41
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #19, !srcloc !18 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %debug_setup.exit

bb.b:                                             ; preds = %_test_bit.exit.i.i.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #19, !srcloc !19
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !20
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_setup, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_hrtimer_setup(ptr noundef %i.i, ptr noundef %0, i32 noundef %2, i32 noundef %3) #17 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #19, !srcloc !22
  br label %debug_setup.exit

debug_setup.exit:                                 ; preds = %bb.a, %_test_bit.exit.i.i.i, %bb.d
  tail call fastcc void @__hrtimer_setup(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #18, !srcloc !90
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__hrtimer_setup(ptr noundef initializes((0, 80)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %3, 4                            ; 2 uses
  %.lobit = lshr exact i32 %i.a, 2
  %i.b = trunc nuw nsw i32 %.lobit to i8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %i.c = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !42
  %i.d = add i64 %i.c, ptrtoint (ptr @hrtimer_bases to i64)
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = icmp eq i32 %2, 0
  %spec.select = and i32 %3, 1
  %.0 = select i1 %i.f, i32 %spec.select, i32 %2  ; 2 uses
  switch i32 %.0, label %bb.e [
    i32 1, label %hrtimer_clockid_to_base.exit
    i32 0, label %bb.b
    i32 7, label %bb.c
    i32 11, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %hrtimer_clockid_to_base.exit

bb.c:                                             ; preds = %bb.a
  br label %hrtimer_clockid_to_base.exit

bb.d:                                             ; preds = %bb.a
  br label %hrtimer_clockid_to_base.exit

bb.e:                                             ; preds = %bb.a
  %i.g = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, ptr @.str.1, i32 1838, i32 2321, i64 16) #19, !srcloc !43
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.g, i32 noundef %.0) #17
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !44
  br label %hrtimer_clockid_to_base.exit

hrtimer_clockid_to_base.exit:                     ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 0, %bb.e ], [ 3, %bb.d ], [ 1, %bb.b ], [ 2, %bb.c ], [ 0, %bb.a ]
  %i.h = or disjoint i32 %.0.i, %i.a
  %i.i = getelementptr i8, ptr %0, i64 58
  store i8 %i.b, ptr %i.i, align 2
  %i.j = getelementptr i8, ptr %0, i64 59
  %i.k = trunc i32 %3 to i8                       ; 2 uses
  %i.l = lshr i8 %i.k, 3
  %i.m = and i8 %i.l, 1
  store i8 %i.m, ptr %i.j, align 1
  %i.n = getelementptr i8, ptr %0, i64 60
  %i.o = lshr i8 %i.k, 4
  %i.p = and i8 %i.o, 1
  store i8 %i.p, ptr %i.n, align 4
  %i.q = getelementptr i8, ptr %i.e, i64 128
  %i.r = zext nneg i32 %i.h to i64
  %i.s = getelementptr [64 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr i8, ptr %0, i64 48
  store ptr %i.s, ptr %i.t, align 8
  %i.u = ptrtoint ptr %0 to i64
  store i64 %i.u, ptr %0, align 8
  %i.v = getelementptr i8, ptr %0, i64 24
  %.not = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br i1 %.not, label %bb.f, label %.critedge, !prof !28

bb.f:                                             ; preds = %hrtimer_clockid_to_base.exit
  tail call void asm sideeffect "793: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 793b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 793) #19, !srcloc !91
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 1902, i32 2307, i64 16) #19, !srcloc !92
  tail call void asm sideeffect "794: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 794b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 794) #19, !srcloc !93
  br label %.critedge

.critedge:                                        ; preds = %hrtimer_clockid_to_base.exit, %bb.f
  %.sink = phi ptr [ @hrtimer_dummy_timeout, %bb.f ], [ %1, %hrtimer_clockid_to_base.exit ]
  %i.w = getelementptr i8, ptr %0, i64 72
  store ptr %.sink, ptr %i.w, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @hrtimer_setup_on_stack(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_setup, i64 8), i1 false) #19
          to label %debug_setup_on_stack.exit [label %_test_bit.exit.i.i.i], !srcloc !16

_test_bit.exit.i.i.i:                             ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !41
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #19, !srcloc !18 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %debug_setup_on_stack.exit

bb.b:                                             ; preds = %_test_bit.exit.i.i.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #19, !srcloc !19
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !20
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_setup, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_hrtimer_setup(ptr noundef %i.i, ptr noundef %0, i32 noundef %2, i32 noundef %3) #17 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #19, !srcloc !22
  br label %debug_setup_on_stack.exit

debug_setup_on_stack.exit:                        ; preds = %bb.a, %_test_bit.exit.i.i.i, %bb.d
  tail call fastcc void @__hrtimer_setup(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #18, !srcloc !94
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__hrtimer_rearm_deferred() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !95
  %i.b = add i64 %i.a, ptrtoint (ptr @hrtimer_bases to i64)
  %i.c = inttoptr i64 %i.b to ptr                 ; 16 uses
  %i.d = getelementptr i8, ptr %i.c, i64 17       ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @_raw_spin_lock(ptr noundef %i.c) #17
  %i.g = getelementptr i8, ptr %i.c, i64 18
  %i.h = load i8, ptr %i.g, align 2, !range !14, !noundef !15
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.c, i64 248      ; 2 uses
  %i.k = getelementptr i8, ptr %i.c, i64 312      ; 2 uses
  %i.l = getelementptr i8, ptr %i.c, i64 376      ; 2 uses
  %i.m = getelementptr i8, ptr %i.c, i64 12
  %i.n = tail call i64 @ktime_get_update_offsets_now(ptr noundef %i.m, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l) #17 ; 0 uses
  %i.o = load i64, ptr %i.j, align 8
  %i.p = getelementptr i8, ptr %i.c, i64 504
  store i64 %i.o, ptr %i.p, align 8
  %i.q = load i64, ptr %i.k, align 8
  %i.r = getelementptr i8, ptr %i.c, i64 568
  store i64 %i.q, ptr %i.r, align 8
  %i.s = load i64, ptr %i.l, align 8
  %i.t = getelementptr i8, ptr %i.c, i64 632
  store i64 %i.s, ptr %i.t, align 8
  %i.u = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %i.c) #18, !srcloc !96
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %i.c, i64 72
  %i.w = load i64, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.u, %bb.c ], [ %i.w, %bb.d ]  ; 2 uses
  %i.x = getelementptr i8, ptr %i.c, i64 40
  store i64 %.0, ptr %i.x, align 8
  store i8 0, ptr %i.d, align 1
  %i.y = getelementptr i8, ptr %i.c, i64 19
  %i.z = load i8, ptr %i.y, align 1, !range !14, !noundef !15
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !28

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call i64 @ktime_get() #17
  %i.ac = getelementptr i8, ptr %i.c, i64 32
  %i.ad = load i32, ptr %i.ac, align 32
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 100000000)
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = add i64 %i.ab, %i.af
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i64 [ %i.ag, %bb.f ], [ %.0, %bb.e ] ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_rearm, i64 8), i1 false) #19
          to label %hrtimer_rearm.exit [label %_test_bit.exit.i.i.i.i], !srcloc !16

_test_bit.exit.i.i.i.i:                           ; preds = %bb.g
  %i.ah = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !17
  %i.ai = zext i32 %i.ah to i64
  %i.aj = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ai) #19, !srcloc !18 ; 2 uses
  %i.ak = icmp ult i8 %i.aj, 2
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %bb.h, label %hrtimer_rearm.exit

bb.h:                                             ; preds = %_test_bit.exit.i.i.i.i
  %i.am = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.am, ptr elementtype(i64) %i.am) #19, !srcloc !19
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !20
  %i.an = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_rearm, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i32 @__SCT__tp_func_hrtimer_rearm(ptr noundef %i.ap, i64 noundef %.0.i, i1 noundef zeroext true) #17 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.ar = getelementptr i8, ptr %i.am, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ar, ptr elementtype(i64) %i.ar) #19, !srcloc !22
  br label %hrtimer_rearm.exit

hrtimer_rearm.exit:                               ; preds = %bb.g, %_test_bit.exit.i.i.i.i, %bb.j
  %i.as = tail call i32 @tick_program_event(i64 noundef %.0.i, i32 noundef 1) #17 ; 0 uses
  tail call void @_raw_spin_unlock(ptr noundef %i.c) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %hrtimer_rearm.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define internal fastcc range(i64 0, -9223372036854775808) i64 @hrtimer_update_next_event(ptr nofree noundef captures(none) %0) unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %i.c, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %.pre, 240                       ; 3 uses
  %.not22.i = icmp eq i32 %i.d, 0
  br i1 %.not22.i, label %__hrtimer_get_next_event.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 241) %i.d, i32 -1) #20, !srcloc !26 ; 2 uses
  %.not25.i.i = icmp eq i32 %i.e, -1
  br i1 %.not25.i.i, label %__hrtimer_get_next_event.exit, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 128
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i, %.preheader.lr.ph.i.i
  %.345.i = phi ptr [ null, %.preheader.lr.ph.i.i ], [ %.446.i, %.critedge.i.i ]
  %.4.i = phi i64 [ 9223372036854775807, %.preheader.lr.ph.i.i ], [ %.5.i, %.critedge.i.i ]
  %i.g = phi i64 [ 9223372036854775807, %.preheader.lr.ph.i.i ], [ %i.u, %.critedge.i.i ] ; 2 uses
  %i.h = phi i32 [ %i.e, %.preheader.lr.ph.i.i ], [ %i.w, %.critedge.i.i ] ; 2 uses
  %.02126.i.i = phi i32 [ %i.d, %.preheader.lr.ph.i.i ], [ %i.v, %.critedge.i.i ]
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr [64 x i8], ptr %i.f, i64 %i.i ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %i.l = getelementptr i8, ptr %i.j, i64 56
  %i.m = shl nuw i32 1, %i.h
  %i.n = xor i32 %i.m, -1
  %i.o = load i64, ptr %i.k, align 8
  %i.p = load i64, ptr %i.l, align 8
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp slt i64 %i.q, %i.g
  br i1 %i.r, label %bb.d, label %.critedge.i.i

bb.d:                                             ; preds = %.preheader.i.i
  %i.s = getelementptr i8, ptr %i.j, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.d, %.preheader.i.i
  %.446.i = phi ptr [ %i.t, %bb.d ], [ %.345.i, %.preheader.i.i ] ; 2 uses
  %.5.i = phi i64 [ %i.q, %bb.d ], [ %.4.i, %.preheader.i.i ] ; 2 uses
  %i.u = phi i64 [ %i.q, %bb.d ], [ %i.g, %.preheader.i.i ]
  %i.v = and i32 %.02126.i.i, %i.n                ; 2 uses
  %i.w = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.v, i32 -1) #20, !srcloc !26 ; 2 uses
  %.not.i.i = icmp eq i32 %i.w, -1
  br i1 %.not.i.i, label %__hrtimer_get_next_event.exit.loopexit, label %.preheader.i.i, !llvm.loop !2

__hrtimer_get_next_event.exit.loopexit:           ; preds = %.critedge.i.i
  %i.x = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %.5.i, i64 0)
  br label %__hrtimer_get_next_event.exit

__hrtimer_get_next_event.exit:                    ; preds = %__hrtimer_get_next_event.exit.loopexit, %bb.b, %bb.c
  %.042.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %.446.i, %__hrtimer_get_next_event.exit.loopexit ]
  %.0.i = phi i64 [ 9223372036854775807, %bb.b ], [ 9223372036854775807, %bb.c ], [ %i.x, %__hrtimer_get_next_event.exit.loopexit ] ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 64
  store ptr %.042.i, ptr %i.y, align 64
  %i.z = getelementptr i8, ptr %0, i64 56
  store i64 %.0.i, ptr %i.z, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %__hrtimer_get_next_event.exit
  %.0 = phi i64 [ %.0.i, %__hrtimer_get_next_event.exit ], [ 9223372036854775807, %bb.a ] ; 2 uses
  %i.aa = and i32 %.pre, 15                       ; 3 uses
  %.not24.i = icmp eq i32 %i.aa, 0
  br i1 %.not24.i, label %__hrtimer_get_next_event.exit31, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ab = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 241) %i.aa, i32 -1) #20, !srcloc !26 ; 2 uses
  %.not25.i25.i = icmp eq i32 %i.ab, -1
  br i1 %.not25.i25.i, label %__hrtimer_get_next_event.exit31, label %.preheader.lr.ph.i26.i

.preheader.lr.ph.i26.i:                           ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %0, i64 128
  br label %.preheader.i29.i

.preheader.i29.i:                                 ; preds = %.critedge.i31.i, %.preheader.lr.ph.i26.i
  %.648.i = phi ptr [ null, %.preheader.lr.ph.i26.i ], [ %.749.i, %.critedge.i31.i ]
  %.7.i = phi i64 [ 9223372036854775807, %.preheader.lr.ph.i26.i ], [ %.8.i, %.critedge.i31.i ]
  %i.ad = phi i64 [ 9223372036854775807, %.preheader.lr.ph.i26.i ], [ %i.ar, %.critedge.i31.i ] ; 2 uses
  %i.ae = phi i32 [ %i.ab, %.preheader.lr.ph.i26.i ], [ %i.at, %.critedge.i31.i ] ; 2 uses
  %.02126.i30.i = phi i32 [ %i.aa, %.preheader.lr.ph.i26.i ], [ %i.as, %.critedge.i31.i ]
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr [64 x i8], ptr %i.ac, i64 %i.af ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  %i.ai = getelementptr i8, ptr %i.ag, i64 56
  %i.aj = shl nuw i32 1, %i.ae
  %i.ak = xor i32 %i.aj, -1
  %i.al = load i64, ptr %i.ah, align 8
  %i.am = load i64, ptr %i.ai, align 8
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = icmp slt i64 %i.an, %i.ad
  br i1 %i.ao, label %bb.f, label %.critedge.i31.i

bb.f:                                             ; preds = %.preheader.i29.i
  %i.ap = getelementptr i8, ptr %i.ag, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  br label %.critedge.i31.i

.critedge.i31.i:                                  ; preds = %bb.f, %.preheader.i29.i
  %.749.i = phi ptr [ %i.aq, %bb.f ], [ %.648.i, %.preheader.i29.i ] ; 2 uses
  %.8.i = phi i64 [ %i.an, %bb.f ], [ %.7.i, %.preheader.i29.i ] ; 2 uses
  %i.ar = phi i64 [ %i.an, %bb.f ], [ %i.ad, %.preheader.i29.i ]
  %i.as = and i32 %.02126.i30.i, %i.ak            ; 2 uses
  %i.at = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.as, i32 -1) #20, !srcloc !26 ; 2 uses
  %.not.i33.i = icmp eq i32 %i.at, -1
  br i1 %.not.i33.i, label %__hrtimer_get_next_event.exit31, label %.preheader.i29.i, !llvm.loop !2

__hrtimer_get_next_event.exit31:                  ; preds = %.critedge.i31.i, %._crit_edge, %bb.e
  %.244.i = phi ptr [ null, %._crit_edge ], [ null, %bb.e ], [ %.749.i, %.critedge.i31.i ]
  %.2.i = phi i64 [ 9223372036854775807, %._crit_edge ], [ 9223372036854775807, %bb.e ], [ %.8.i, %.critedge.i31.i ] ; 2 uses
  %i.au = getelementptr i8, ptr %0, i64 48        ; 2 uses
  store ptr %.244.i, ptr %i.au, align 16
  %i.av = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %.2.i, i64 0)
  %i.aw = icmp sgt i64 %.2.i, %.0
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %__hrtimer_get_next_event.exit31
  %i.ax = getelementptr i8, ptr %0, i64 64
  %i.ay = load ptr, ptr %i.ax, align 64
  store ptr %i.ay, ptr %i.au, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %__hrtimer_get_next_event.exit31
  %.010 = phi i64 [ %.0, %bb.g ], [ %i.av, %__hrtimer_get_next_event.exit31 ]
  ret i64 %.010
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @hrtimer_interrupt(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !97
  %i.b = add i64 %i.a, ptrtoint (ptr @hrtimer_bases to i64)
  %i.c = inttoptr i64 %i.b to ptr                 ; 26 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 16, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "807: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 807b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 807) #19, !srcloc !98
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 2192, i32 0, i64 16) #19, !srcloc !99
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8
  %i.j = getelementptr i8, ptr %0, i64 32
  store i64 9223372036854775807, ptr %i.j, align 32
  %i.k = getelementptr i8, ptr %0, i64 76
  store i32 0, ptr %i.k, align 4
  %i.l = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #17 ; 4 uses
  %i.m = getelementptr i8, ptr %i.c, i64 248      ; 8 uses
  %i.n = getelementptr i8, ptr %i.c, i64 312      ; 8 uses
  %i.o = getelementptr i8, ptr %i.c, i64 376      ; 8 uses
  %i.p = getelementptr i8, ptr %i.c, i64 12       ; 4 uses
  %i.q = tail call i64 @ktime_get_update_offsets_now(ptr noundef %i.p, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #17 ; 3 uses
  %i.r = load i64, ptr %i.m, align 8
  %i.s = getelementptr i8, ptr %i.c, i64 504      ; 4 uses
  store i64 %i.r, ptr %i.s, align 8
  %i.t = load i64, ptr %i.n, align 8
  %i.u = getelementptr i8, ptr %i.c, i64 568      ; 4 uses
  store i64 %i.t, ptr %i.u, align 8
  %i.v = load i64, ptr %i.o, align 8
  %i.w = getelementptr i8, ptr %i.c, i64 632      ; 4 uses
  store i64 %i.v, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %i.c, i64 17       ; 3 uses
  %i.y = getelementptr i8, ptr %i.c, i64 40       ; 3 uses
  %i.z = getelementptr i8, ptr %i.c, i64 56       ; 6 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 20      ; 3 uses
  %i.ab = getelementptr i8, ptr %i.c, i64 19      ; 4 uses
  store i8 1, ptr %i.x, align 1
  store i64 9223372036854775807, ptr %i.y, align 8
  %i.ac = load i64, ptr %i.z, align 8
  %i.ad = icmp slt i64 %i.q, %i.ac
  br i1 %i.ad, label %raise_timer_softirq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 9223372036854775807, ptr %i.z, align 8
  store i8 1, ptr %i.aa, align 4
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr @force_irqthreads_key, i1 false) #19
          to label %arch_static_branch.exit.i [label %bb.e], !srcloc !16

bb.e:                                             ; preds = %bb.d
  tail call void @raise_ktimers_thread(i32 noundef 8) #17
  br label %raise_timer_softirq.exit

arch_static_branch.exit.i:                        ; preds = %bb.d
  tail call void @__raise_softirq_irqoff(i32 noundef 8) #17
  br label %raise_timer_softirq.exit

raise_timer_softirq.exit:                         ; preds = %arch_static_branch.exit.i, %bb.e, %bb.c
  tail call fastcc void @__hrtimer_run_queues(ptr noundef %i.c, i64 noundef %i.q, i64 noundef %i.l, i32 noundef 15) #18, !srcloc !100
  %i.ae = tail call i64 @ktime_get_update_offsets_now(ptr noundef %i.p, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #17 ; 3 uses
  %i.af = load i64, ptr %i.m, align 8
  store i64 %i.af, ptr %i.s, align 8
  %i.ag = load i64, ptr %i.n, align 8
  store i64 %i.ag, ptr %i.u, align 8
  %i.ah = load i64, ptr %i.o, align 8
  store i64 %i.ah, ptr %i.w, align 8
  %i.ai = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %i.c) #18, !srcloc !101 ; 2 uses
  store i8 0, ptr %i.ab, align 1
  %i.aj = icmp slt i64 %i.ai, %i.ae
  br i1 %i.aj, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %raise_timer_softirq.exit
  store i8 1, ptr %i.x, align 1
  store i64 9223372036854775807, ptr %i.y, align 8
  %i.ak = load i64, ptr %i.z, align 8
  %i.al = icmp slt i64 %i.ae, %i.ak
  br i1 %i.al, label %raise_timer_softirq.exit.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 9223372036854775807, ptr %i.z, align 8
  store i8 1, ptr %i.aa, align 4
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr @force_irqthreads_key, i1 false) #19
          to label %arch_static_branch.exit.i.1 [label %bb.h], !srcloc !16

bb.h:                                             ; preds = %bb.g
  tail call void @raise_ktimers_thread(i32 noundef 8) #17
  br label %raise_timer_softirq.exit.1

arch_static_branch.exit.i.1:                      ; preds = %bb.g
  tail call void @__raise_softirq_irqoff(i32 noundef 8) #17
  br label %raise_timer_softirq.exit.1

raise_timer_softirq.exit.1:                       ; preds = %arch_static_branch.exit.i.1, %bb.h, %bb.f
  tail call fastcc void @__hrtimer_run_queues(ptr noundef %i.c, i64 noundef %i.ae, i64 noundef %i.l, i32 noundef 15) #18, !srcloc !100
  %i.am = tail call i64 @ktime_get_update_offsets_now(ptr noundef %i.p, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #17 ; 3 uses
  %i.an = load i64, ptr %i.m, align 8
  store i64 %i.an, ptr %i.s, align 8
  %i.ao = load i64, ptr %i.n, align 8
  store i64 %i.ao, ptr %i.u, align 8
  %i.ap = load i64, ptr %i.o, align 8
  store i64 %i.ap, ptr %i.w, align 8
  %i.aq = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %i.c) #18, !srcloc !101 ; 2 uses
  store i8 0, ptr %i.ab, align 1
  %i.ar = icmp slt i64 %i.aq, %i.am
  br i1 %i.ar, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %raise_timer_softirq.exit.1
  store i8 1, ptr %i.x, align 1
  store i64 9223372036854775807, ptr %i.y, align 8
  %i.as = load i64, ptr %i.z, align 8
  %i.at = icmp slt i64 %i.am, %i.as
  br i1 %i.at, label %raise_timer_softirq.exit.2, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 9223372036854775807, ptr %i.z, align 8
  store i8 1, ptr %i.aa, align 4
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr @force_irqthreads_key, i1 false) #19
          to label %arch_static_branch.exit.i.2 [label %bb.k], !srcloc !16

bb.k:                                             ; preds = %bb.j
  tail call void @raise_ktimers_thread(i32 noundef 8) #17
  br label %raise_timer_softirq.exit.2

arch_static_branch.exit.i.2:                      ; preds = %bb.j
  tail call void @__raise_softirq_irqoff(i32 noundef 8) #17
  br label %raise_timer_softirq.exit.2

raise_timer_softirq.exit.2:                       ; preds = %arch_static_branch.exit.i.2, %bb.k, %bb.i
  tail call fastcc void @__hrtimer_run_queues(ptr noundef %i.c, i64 noundef %i.am, i64 noundef %i.l, i32 noundef 15) #18, !srcloc !100
  %i.au = tail call i64 @ktime_get_update_offsets_now(ptr noundef %i.p, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #17 ; 2 uses
  %i.av = load i64, ptr %i.m, align 8
  store i64 %i.av, ptr %i.s, align 8
  %i.aw = load i64, ptr %i.n, align 8
  store i64 %i.aw, ptr %i.u, align 8
  %i.ax = load i64, ptr %i.o, align 8
  store i64 %i.ax, ptr %i.w, align 8
  %i.ay = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %i.c) #18, !srcloc !101 ; 3 uses
  store i8 0, ptr %i.ab, align 1
  %i.az = icmp slt i64 %i.ay, %i.au
  br i1 %i.az, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %raise_timer_softirq.exit.2
  %i.ba = sub i64 %i.au, %i.q
  %i.bb = getelementptr i8, ptr %i.c, i64 32      ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 32
  %i.bd = trunc i64 %i.ba to i32
  %i.be = tail call i32 @llvm.umax.i32(i32 %i.bc, i32 %i.bd)
  store i32 %i.be, ptr %i.bb, align 32
  %i.bf = getelementptr i8, ptr %i.c, i64 30      ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = add i16 %i.bg, 1
  store i16 %i.bh, ptr %i.bf, align 2
  store i8 1, ptr %i.ab, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %raise_timer_softirq.exit, %raise_timer_softirq.exit.1, %raise_timer_softirq.exit.2, %bb.l
  %i.bi = phi i64 [ %i.ay, %bb.l ], [ %i.ai, %raise_timer_softirq.exit ], [ %i.aq, %raise_timer_softirq.exit.1 ], [ %i.ay, %raise_timer_softirq.exit.2 ]
  %i.bj = getelementptr i8, ptr %i.c, i64 18
  store i8 0, ptr %i.bj, align 2
  %i.bk = getelementptr i8, ptr %i.c, i64 72
  store i64 %i.bi, ptr %i.bk, align 8
  %i.bl = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #20, !srcloc !32
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr i8, ptr %i.bm, i64 1      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.bn, i32 16, ptr elementtype(i8) %i.bn) #19, !srcloc !102
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.l) #17
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__hrtimer_run_queues(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 15, 241) %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, %3                         ; 2 uses
  %i.d = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.c, i32 -1) #20, !srcloc !26 ; 2 uses
  %.not37 = icmp eq i32 %i.d, -1
  br i1 %.not37, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 128
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %.in = phi i32 [ %i.d, %.preheader.lr.ph ], [ %i.cx, %.critedge ] ; 2 uses
  %.02838 = phi i32 [ %i.c, %.preheader.lr.ph ], [ %i.cw, %.critedge ]
  %i.f = zext i32 %.in to i64
  %i.g = getelementptr [64 x i8], ptr %i.e, i64 %i.f ; 10 uses
  %i.h = getelementptr i8, ptr %i.g, i64 56
  %i.i = getelementptr i8, ptr %i.g, i64 40       ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 48       ; 3 uses
  %i.k = getelementptr i8, ptr %i.g, i64 32       ; 3 uses
  %i.l = getelementptr i8, ptr %i.g, i64 16       ; 8 uses
  %i.m = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.n = getelementptr i8, ptr %i.g, i64 24       ; 2 uses
  %i.o = shl nuw i32 1, %.in
  %i.p = xor i32 %i.o, -1
  %i.q = load i64, ptr %i.h, align 8
  %i.r = add i64 %i.q, %1                         ; 2 uses
  %i.s = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not3234 = icmp eq ptr %i.s, null
  br i1 %.not3234, label %.critedge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge, %bb.a
  ret void

.lr.ph:                                           ; preds = %.preheader, %__run_hrtimer.exit
  %i.t = phi ptr [ %i.cv, %__run_hrtimer.exit ], [ %i.s, %.preheader ] ; 13 uses
  %i.u = getelementptr i8, ptr %i.t, i64 64
  %.val = load i64, ptr %i.u, align 8
  %i.v = icmp slt i64 %i.r, %.val
  br i1 %i.v, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store ptr %i.t, ptr %i.k, align 32
  %i.w = load i32, ptr %i.l, align 16
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.l, align 16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !106
  %i.y = load i32, ptr %i.l, align 16
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.l, align 16
  %i.aa = load ptr, ptr %i.g, align 64
  %i.ab = getelementptr i8, ptr %i.t, i64 56      ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 8, !range !14, !noundef !15
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.c, label %__remove_hrtimer.exit.i

bb.c:                                             ; preds = %bb.b
  store volatile i8 0, ptr %i.ab, align 8
  %i.ae = getelementptr i8, ptr %i.t, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %.not.i.i33 = icmp eq ptr %i.af, null
  %i.ag = tail call zeroext i1 @rb_erase_linked(ptr noundef nonnull %i.t, ptr noundef %i.i) #17
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i32, ptr %i.m, align 8
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = xor i32 %i.ai, -1
  %i.ak = getelementptr i8, ptr %i.aa, i64 8      ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = and i32 %i.al, %i.aj
  store i32 %i.am, ptr %i.ak, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %.not.i.i33, label %bb.f, label %__remove_hrtimer.exit.i

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.j, align 16            ; 2 uses
  %.not.i18.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i18.i.i, label %base_update_next_timer.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %i.an, i64 40
  %i.ap = load i64, ptr %i.ao, align 8
  br label %base_update_next_timer.exit.i.i

base_update_next_timer.exit.i.i:                  ; preds = %bb.g, %bb.f
  %i.aq = phi i64 [ %i.ap, %bb.g ], [ 9223372036854775807, %bb.f ]
  store i64 %i.aq, ptr %i.n, align 8
  br label %__remove_hrtimer.exit.i

__remove_hrtimer.exit.i:                          ; preds = %base_update_next_timer.exit.i.i, %bb.e, %bb.b
  %i.ar = getelementptr i8, ptr %i.t, i64 72
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i64 noundef %2) #17
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_expire_entry, i64 8), i1 false) #19
          to label %trace_hrtimer_expire_entry.exit.i [label %_test_bit.exit.i.i.i], !srcloc !16

_test_bit.exit.i.i.i:                             ; preds = %__remove_hrtimer.exit.i
  %i.at = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !107
  %i.au = zext i32 %i.at to i64
  %i.av = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.au) #19, !srcloc !18 ; 2 uses
  %i.aw = icmp ult i8 %i.av, 2
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = trunc nuw i8 %i.av to i1
  br i1 %i.ax, label %bb.h, label %trace_hrtimer_expire_entry.exit.i

bb.h:                                             ; preds = %_test_bit.exit.i.i.i
  %i.ay = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ay, ptr elementtype(i64) %i.ay) #19, !srcloc !19
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !20
  %i.az = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_expire_entry, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call i32 @__SCT__tp_func_hrtimer_expire_entry(ptr noundef %i.bb, ptr noundef nonnull %i.t, i64 noundef %i.r) #17 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.bd = getelementptr i8, ptr %i.ay, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bd, ptr elementtype(i64) %i.bd) #19, !srcloc !22
  br label %trace_hrtimer_expire_entry.exit.i

trace_hrtimer_expire_entry.exit.i:                ; preds = %bb.j, %_test_bit.exit.i.i.i, %__remove_hrtimer.exit.i
  %i.be = tail call i32 %i.as(ptr noundef nonnull %i.t) #17, !inline_history !103
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_expire_exit, i64 8), i1 false) #19
          to label %trace_hrtimer_expire_exit.exit.i [label %_test_bit.exit.i.i25.i], !srcloc !16

_test_bit.exit.i.i25.i:                           ; preds = %trace_hrtimer_expire_entry.exit.i
  %i.bf = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !108
  %i.bg = zext i32 %i.bf to i64
  %i.bh = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.bg) #19, !srcloc !18 ; 2 uses
  %i.bi = icmp ult i8 %i.bh, 2
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = trunc nuw i8 %i.bh to i1
  br i1 %i.bj, label %bb.k, label %trace_hrtimer_expire_exit.exit.i

bb.k:                                             ; preds = %_test_bit.exit.i.i25.i
  %i.bk = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bk, ptr elementtype(i64) %i.bk) #19, !srcloc !19
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !20
  %i.bl = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_expire_exit, i64 56), align 8 ; 2 uses
  %.not.i.i26.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i26.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call i32 @__SCT__tp_func_hrtimer_expire_exit(ptr noundef %i.bn, ptr noundef nonnull %i.t) #17 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.bp = getelementptr i8, ptr %i.bk, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bp, ptr elementtype(i64) %i.bp) #19, !srcloc !22
  br label %trace_hrtimer_expire_exit.exit.i

trace_hrtimer_expire_exit.exit.i:                 ; preds = %bb.m, %_test_bit.exit.i.i25.i, %trace_hrtimer_expire_entry.exit.i
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #17
  %i.bq = icmp eq i32 %i.be, 1
  br i1 %i.bq, label %bb.n, label %enqueue_hrtimer.exit

bb.n:                                             ; preds = %trace_hrtimer_expire_exit.exit.i
  %i.br = load i8, ptr %i.ab, align 8, !range !14, !noundef !15
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %enqueue_hrtimer.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_start, i64 8), i1 false) #19
          to label %debug_activate.exit.i [label %_test_bit.exit.i.i.i.i], !srcloc !16

_test_bit.exit.i.i.i.i:                           ; preds = %bb.o
  %i.bt = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !33
  %i.bu = zext i32 %i.bt to i64
  %i.bv = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.bu) #19, !srcloc !18 ; 2 uses
  %i.bw = icmp ult i8 %i.bv, 2
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = trunc nuw i8 %i.bv to i1
  br i1 %i.bx, label %bb.p, label %debug_activate.exit.i

bb.p:                                             ; preds = %_test_bit.exit.i.i.i.i
  %i.by = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.by, ptr elementtype(i64) %i.by) #19, !srcloc !19
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !20
  %i.bz = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_start, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call i32 @__SCT__tp_func_hrtimer_start(ptr noundef %i.cb, ptr noundef nonnull %i.t, i32 noundef 0, i1 noundef zeroext false) #17 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.cd = getelementptr i8, ptr %i.by, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cd, ptr elementtype(i64) %i.cd) #19, !srcloc !22
  br label %debug_activate.exit.i

debug_activate.exit.i:                            ; preds = %bb.r, %_test_bit.exit.i.i.i.i, %bb.o
  %i.ce = load ptr, ptr %i.g, align 64            ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 21
  %i.cg = load i8, ptr %i.cf, align 1, !range !14, !noundef !15
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.t, label %bb.s, !prof !29

bb.s:                                             ; preds = %debug_activate.exit.i
  tail call void asm sideeffect "772: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 772b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 772) #19, !srcloc !45
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 1110, i32 2307, i64 16) #19, !srcloc !46
  tail call void asm sideeffect "773: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 773b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 773) #19, !srcloc !47
  %.pre.i = load ptr, ptr %i.g, align 64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %debug_activate.exit.i
  %i.ci = phi ptr [ %.pre.i, %bb.s ], [ %i.ce, %debug_activate.exit.i ]
  %i.cj = load i32, ptr %i.m, align 8
  %i.ck = shl nuw i32 1, %i.cj
  %i.cl = getelementptr i8, ptr %i.ci, i64 8      ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = or i32 %i.cm, %i.ck
  store i32 %i.cn, ptr %i.cl, align 8
  store volatile i8 1, ptr %i.ab, align 8
  %i.co = tail call zeroext i1 @timerqueue_linked_add(ptr noundef %i.i, ptr noundef nonnull %i.t) #17
  br i1 %i.co, label %bb.u, label %enqueue_hrtimer.exit

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr i8, ptr %i.t, i64 40
  %.val.i = load i64, ptr %i.cp, align 8
  store i64 %.val.i, ptr %i.n, align 8
  br label %enqueue_hrtimer.exit

enqueue_hrtimer.exit:                             ; preds = %bb.u, %bb.t, %bb.n, %trace_hrtimer_expire_exit.exit.i
  %i.cq = load i32, ptr %i.l, align 16
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.l, align 16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !106
  %i.cs = load i32, ptr %i.l, align 16
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.l, align 16
  %i.cu = load ptr, ptr %i.k, align 32
  %.not.i = icmp eq ptr %i.cu, %i.t
  br i1 %.not.i, label %__run_hrtimer.exit, label %bb.v, !prof !29

bb.v:                                             ; preds = %enqueue_hrtimer.exit
  tail call void asm sideeffect "800: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 800b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 800) #19, !srcloc !109
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 2059, i32 2307, i64 16) #19, !srcloc !110
  tail call void asm sideeffect "801: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 801b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 801) #19, !srcloc !111
  br label %__run_hrtimer.exit

__run_hrtimer.exit:                               ; preds = %enqueue_hrtimer.exit, %bb.v
  store ptr null, ptr %i.k, align 32
  %i.cv = load ptr, ptr %i.j, align 16            ; 2 uses
  %.not32 = icmp eq ptr %i.cv, null
  br i1 %.not32, label %.critedge, label %.lr.ph, !llvm.loop !104

.critedge:                                        ; preds = %.lr.ph, %__run_hrtimer.exit, %.preheader
  %i.cw = and i32 %.02838, %i.p                   ; 2 uses
  %i.cx = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cw, i32 -1) #20, !srcloc !26 ; 2 uses
  %.not = icmp eq i32 %i.cx, -1
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !105
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @hrtimer_run_queues() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !112
  %i.b = add i64 %i.a, ptrtoint (ptr @hrtimer_bases to i64)
  %i.c = inttoptr i64 %i.b to ptr                 ; 13 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %.val = load i8, ptr %i.d, align 16, !range !14, !noundef !15
  %.not = icmp eq i8 %.val, 0
  br i1 %.not, label %bb.b, label %hrtimer_switch_to_hres.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr @hrtimer_hres_enabled, align 1, !range !14, !noundef !15
  %i.f = xor i8 %i.e, 1
  %i.g = zext nneg i8 %i.f to i32
  %i.h = tail call i32 @tick_check_oneshot_change(i32 noundef %i.g) #17
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !113
  %i.j = add i64 %i.i, ptrtoint (ptr @hrtimer_bases to i64)
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = tail call i32 @tick_init_highres() #17
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %i.n) #21 ; 0 uses
  br label %hrtimer_switch_to_hres.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.k, i64 16
  store i8 1, ptr %i.p, align 16
  store i32 1, ptr @hrtimer_resolution, align 4
  tail call void @tick_setup_sched_timer(i1 noundef zeroext true) #17
  tail call void @retrigger_next_event(ptr poison) #18, !srcloc !114
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr @hrtimer_highres_enabled_key, i1 true) #19
          to label %hrtimer_switch_to_hres.exit [label %hrtimer_highres_enabled.exit.i.i], !srcloc !24

hrtimer_highres_enabled.exit.i.i:                 ; preds = %bb.e
  %i.q = load ptr, ptr @system_percpu_wq, align 8
  %i.r = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.q, ptr noundef @hrtimer_hres_work) #17 ; 0 uses
  br label %hrtimer_switch_to_hres.exit

bb.f:                                             ; preds = %bb.b
  %i.s = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #17 ; 2 uses
  %i.t = getelementptr i8, ptr %i.c, i64 248      ; 2 uses
  %i.u = getelementptr i8, ptr %i.c, i64 312      ; 2 uses
  %i.v = getelementptr i8, ptr %i.c, i64 376      ; 2 uses
  %i.w = getelementptr i8, ptr %i.c, i64 12
  %i.x = tail call i64 @ktime_get_update_offsets_now(ptr noundef %i.w, ptr noundef %i.t, ptr noundef %i.u, ptr noundef %i.v) #17 ; 2 uses
  %i.y = load i64, ptr %i.t, align 8
  %i.z = getelementptr i8, ptr %i.c, i64 504
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = load i64, ptr %i.u, align 8
  %i.ab = getelementptr i8, ptr %i.c, i64 568
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = load i64, ptr %i.v, align 8
  %i.ad = getelementptr i8, ptr %i.c, i64 632
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %i.c, i64 56      ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp slt i64 %i.x, %i.af
  br i1 %i.ag, label %raise_timer_softirq.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 9223372036854775807, ptr %i.ae, align 8
  %i.ah = getelementptr i8, ptr %i.c, i64 20
  store i8 1, ptr %i.ah, align 4
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr @force_irqthreads_key, i1 false) #19
          to label %arch_static_branch.exit.i [label %bb.h], !srcloc !16

bb.h:                                             ; preds = %bb.g
  tail call void @raise_ktimers_thread(i32 noundef 8) #17
  br label %raise_timer_softirq.exit

arch_static_branch.exit.i:                        ; preds = %bb.g
  tail call void @__raise_softirq_irqoff(i32 noundef 8) #17
  br label %raise_timer_softirq.exit

raise_timer_softirq.exit:                         ; preds = %arch_static_branch.exit.i, %bb.h, %bb.f
  tail call fastcc void @__hrtimer_run_queues(ptr noundef %i.c, i64 noundef %i.x, i64 noundef %i.s, i32 noundef 15) #18, !srcloc !115
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.s) #17
  br label %hrtimer_switch_to_hres.exit

hrtimer_switch_to_hres.exit:                      ; preds = %hrtimer_highres_enabled.exit.i.i, %bb.e, %bb.d, %bb.a, %raise_timer_softirq.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @tick_check_oneshot_change(i32 noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @hrtimer_sleeper_start_expires(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val7.i = load i64, ptr %i.a, align 8          ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val.i = load i64, ptr %i.b, align 8
  %i.c = sub i64 %.val.i, %.val7.i
  %i.d = tail call noundef zeroext i1 @hrtimer_start_range_ns_user(ptr noundef %0, i64 noundef %.val7.i, i64 noundef %i.c, i32 noundef %1) #18
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 80
  store ptr null, ptr %i.e, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_state_tp, i64 8), i1 false) #19
          to label %arch_static_branch.exit [label %bb.c], !srcloc !16

bb.c:                                             ; preds = %bb.b
  tail call void @__trace_set_current_state(i32 noundef 0) #17
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %bb.b, %bb.c
  %i.f = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #20, !srcloc !32
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 24
  store volatile i32 0, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %arch_static_branch.exit, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__trace_set_current_state(i32 noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @hrtimer_setup_sleeper_on_stack(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_setup, i64 8), i1 false) #19
          to label %debug_setup_on_stack.exit [label %_test_bit.exit.i.i.i], !srcloc !16

_test_bit.exit.i.i.i:                             ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !41
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #19, !srcloc !18 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %debug_setup_on_stack.exit

bb.b:                                             ; preds = %_test_bit.exit.i.i.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #19, !srcloc !19
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !20
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_setup, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_hrtimer_setup(ptr noundef %i.i, ptr noundef %0, i32 noundef %1, i32 noundef %2) #17 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #19, !srcloc !22
  br label %debug_setup_on_stack.exit

debug_setup_on_stack.exit:                        ; preds = %bb.a, %_test_bit.exit.i.i.i, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %i.l = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !42
  %i.m = icmp eq i32 %1, 0
  %spec.select.i.i = and i32 %2, 1
  %.0.i.i = select i1 %i.m, i32 %spec.select.i.i, i32 %1 ; 2 uses
  switch i32 %.0.i.i, label %bb.h [
    i32 1, label %__hrtimer_setup_sleeper.exit
    i32 0, label %bb.e
    i32 7, label %bb.f
    i32 11, label %bb.g
  ]

bb.e:                                             ; preds = %debug_setup_on_stack.exit
  br label %__hrtimer_setup_sleeper.exit

bb.f:                                             ; preds = %debug_setup_on_stack.exit
  br label %__hrtimer_setup_sleeper.exit

bb.g:                                             ; preds = %debug_setup_on_stack.exit
  br label %__hrtimer_setup_sleeper.exit

bb.h:                                             ; preds = %debug_setup_on_stack.exit
  %i.n = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, ptr @.str.1, i32 1838, i32 2321, i64 16) #19, !srcloc !43
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.n, i32 noundef %.0.i.i) #17
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !44
  br label %__hrtimer_setup_sleeper.exit

__hrtimer_setup_sleeper.exit:                     ; preds = %debug_setup_on_stack.exit, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i.i.i = phi i32 [ 0, %bb.h ], [ 3, %bb.g ], [ 1, %bb.e ], [ 2, %bb.f ], [ 0, %debug_setup_on_stack.exit ]
  %i.o = add i64 %i.l, ptrtoint (ptr @hrtimer_bases to i64)
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = and i32 %2, 4                            ; 2 uses
  %.lobit.i.i = lshr exact i32 %i.q, 2
  %i.r = trunc nuw nsw i32 %.lobit.i.i to i8
  %i.s = or disjoint i32 %.0.i.i.i, %i.q
  %i.t = getelementptr i8, ptr %0, i64 58
  store i8 %i.r, ptr %i.t, align 2
  %i.u = getelementptr i8, ptr %0, i64 59
  %i.v = trunc i32 %2 to i8                       ; 2 uses
  %i.w = lshr i8 %i.v, 3
  %i.x = and i8 %i.w, 1
  store i8 %i.x, ptr %i.u, align 1
  %i.y = getelementptr i8, ptr %0, i64 60
  %i.z = lshr i8 %i.v, 4
  %i.aa = and i8 %i.z, 1
  store i8 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr i8, ptr %i.p, i64 128
  %i.ac = zext nneg i32 %i.s to i64
  %i.ad = getelementptr [64 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr i8, ptr %0, i64 48
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = ptrtoint ptr %0 to i64
  store i64 %i.af, ptr %0, align 8
  %i.ag = getelementptr i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr i8, ptr %0, i64 72
  store ptr @hrtimer_wakeup, ptr %i.ah, align 8
  %i.ai = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #20, !srcloc !32
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr i8, ptr %0, i64 80
  store ptr %i.aj, ptr %i.ak, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -516, -13) i32 @nanosleep_copyout(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  switch i32 %i.b, label %bb.d [
    i32 2, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @put_old_timespec32(ptr noundef %1, ptr noundef %i.d) #17
  %.not5 = icmp eq i32 %i.e, 0
  br i1 %.not5, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @put_timespec64(ptr noundef %1, ptr noundef %i.g) #17
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "813: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 813b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 813) #19, !srcloc !48
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 2385, i32 0, i64 16) #19, !srcloc !49
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.e
  %.0 = phi i32 [ -14, %bb.b ], [ -516, %bb.e ], [ -14, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @put_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @put_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -516, 1) i64 @hrtimer_nanosleep(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.hrtimer_sleeper, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i64 88, i1 false), !annotation !23
  call void @hrtimer_setup_sleeper_on_stack(ptr noundef nonnull %3, i32 noundef %2, i32 noundef %1) #18
  %i.a = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #20, !srcloc !32
  %i.b = inttoptr i64 %i.a to ptr                 ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 2840
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %0, ptr %i.e, align 8
  %i.f = add i64 %i.d, %0                         ; 4 uses
  %i.g = icmp slt i64 %i.f, 0
  %i.h = icmp slt i64 %i.f, %0
  %or.cond.i.i = or i1 %i.g, %i.h
  %i.i = icmp slt i64 %i.f, %i.d
  %or.cond9.i.i = or i1 %i.i, %or.cond.i.i
  %spec.select.i.i = select i1 %or.cond9.i.i, i64 9223372036854775807, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i64 %spec.select.i.i, ptr %i.j, align 8
  %i.k = call fastcc i32 @do_nanosleep(ptr noundef nonnull %3, i32 noundef %1) #18, !srcloc !50 ; 2 uses
  %.not = icmp eq i32 %i.k, -516
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %1, 0
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.b, i64 1472
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr i8, ptr %i.b, i64 1488
  store i32 %i.q, ptr %i.r, align 8
  %.val = load i64, ptr %i.j, align 8
  %i.s = getelementptr i8, ptr %i.b, i64 1504
  store i64 %.val, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %i.b, i64 1480
  store ptr @hrtimer_nanosleep_restart, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %i.b, i64 16
  %i.v = load i32, ptr %i.u, align 8
  %i.w = zext i32 %i.v to i64
  store i64 %i.w, ptr %i.m, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.k, %bb.a ], [ -516, %bb.c ], [ -514, %bb.b ]
  %i.x = sext i32 %.0 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i64 %i.x
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -516, 1) i32 @do_nanosleep(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".sched.text" align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.timespec64, align 8         ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 80         ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %signal_pending.exit, %bb.a
  %.020 = phi i32 [ %1, %bb.a ], [ 0, %signal_pending.exit ]
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_state_tp, i64 8), i1 false) #19
          to label %arch_static_branch.exit27 [label %bb.c], !srcloc !16

bb.c:                                             ; preds = %bb.b
  tail call void @__trace_set_current_state(i32 noundef 8193) #17
  br label %arch_static_branch.exit27

arch_static_branch.exit27:                        ; preds = %bb.b, %bb.c
  %i.d = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #20, !srcloc !32
  %i.e = inttoptr i64 %i.d to ptr                 ; 6 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24       ; 4 uses
  %i.g = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 8193, ptr elementtype(i32) %i.f) #19, !srcloc !117 ; 0 uses
  %.val7.i.i = load i64, ptr %i.a, align 8        ; 2 uses
  %.val.i.i = load i64, ptr %i.b, align 8
  %i.h = sub i64 %.val.i.i, %.val7.i.i
  %i.i = tail call noundef zeroext i1 @hrtimer_start_range_ns_user(ptr noundef %0, i64 noundef %.val7.i.i, i64 noundef %i.h, i32 noundef %.020) #18
  br i1 %i.i, label %hrtimer_sleeper_start_expires.exit, label %bb.d

bb.d:                                             ; preds = %arch_static_branch.exit27
  store ptr null, ptr %i.c, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_state_tp, i64 8), i1 false) #19
          to label %arch_static_branch.exit.i [label %bb.e], !srcloc !16

bb.e:                                             ; preds = %bb.d
  tail call void @__trace_set_current_state(i32 noundef 0) #17
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %bb.e, %bb.d
  store volatile i32 0, ptr %i.f, align 8
  br label %hrtimer_sleeper_start_expires.exit

hrtimer_sleeper_start_expires.exit:               ; preds = %arch_static_branch.exit27, %arch_static_branch.exit.i
  %i.j = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.g, label %bb.f, !prof !28

bb.f:                                             ; preds = %hrtimer_sleeper_start_expires.exit
  tail call void @schedule() #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %hrtimer_sleeper_start_expires.exit
  %i.k = tail call i32 @hrtimer_try_to_cancel(ptr noundef %0) #18
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %hrtimer_cancel.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !30
  %i.m = tail call i32 @hrtimer_try_to_cancel(ptr noundef %0) #18
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i, label %hrtimer_cancel.exit, !llvm.loop !1

hrtimer_cancel.exit:                              ; preds = %.lr.ph.i, %bb.g
  %i.o = load ptr, ptr %i.c, align 8
  %.not22 = icmp eq ptr %i.o, null
  br i1 %.not22, label %.critedge, label %test_tsk_thread_flag.exit.i

test_tsk_thread_flag.exit.i:                      ; preds = %hrtimer_cancel.exit
  %i.p = load volatile i64, ptr %i.e, align 8
  %i.q = and i64 %i.p, 4
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %signal_pending.exit, label %.critedge, !prof !29

signal_pending.exit:                              ; preds = %test_tsk_thread_flag.exit.i
  %i.r = load volatile i64, ptr %i.e, align 8
  %i.s = and i64 %i.r, 2
  %.not23 = icmp eq i64 %i.s, 0
  br i1 %.not23, label %bb.b, label %.critedge, !llvm.loop !116

.critedge:                                        ; preds = %test_tsk_thread_flag.exit.i, %hrtimer_cancel.exit, %signal_pending.exit
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_state_tp, i64 8), i1 false) #19
          to label %arch_static_branch.exit [label %bb.h], !srcloc !16

bb.h:                                             ; preds = %.critedge
  tail call void @__trace_set_current_state(i32 noundef 0) #17
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %.critedge, %bb.h
  store volatile i32 0, ptr %i.f, align 8
  %i.t = load ptr, ptr %i.c, align 8
  %.not24 = icmp eq ptr %i.t, null
  br i1 %.not24, label %bb.p, label %bb.i

bb.i:                                             ; preds = %arch_static_branch.exit
  %i.u = getelementptr i8, ptr %i.e, i64 1492     ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %.not25 = icmp eq i32 %i.v, 0
  br i1 %.not25, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val = load i64, ptr %i.b, align 8
  %i.w = getelementptr i8, ptr %0, i64 48
  %.val28 = load ptr, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %.val28, i64 12
  %.val28.val = load i32, ptr %i.x, align 4
  %i.y = tail call fastcc i64 @__hrtimer_cb_get_time(i32 noundef %.val28.val) #18, !srcloc !40
  %i.z = sub i64 %.val, %i.y                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.aa = icmp slt i64 %i.z, 1
  br i1 %i.aa, label %nanosleep_copyout.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call { i64, i64 } @ns_to_timespec64(i64 noundef %i.z) #17 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = extractvalue { i64, i64 } %i.ab, 1
  store i64 %i.ac, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ad, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ae = load i32, ptr %i.u, align 4
  switch i32 %i.ae, label %bb.n [
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %i.e, i64 1496
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call i32 @put_old_timespec32(ptr noundef nonnull %2, ptr noundef %i.ag) #17
  %.not5.i = icmp eq i32 %i.ah, 0
  br i1 %.not5.i, label %bb.o, label %nanosleep_copyout.exit

bb.m:                                             ; preds = %bb.k
  %i.ai = getelementptr i8, ptr %i.e, i64 1496
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call i32 @put_timespec64(ptr noundef nonnull %2, ptr noundef %i.aj) #17
  %.not.i30 = icmp eq i32 %i.ak, 0
  br i1 %.not.i30, label %bb.o, label %nanosleep_copyout.exit

bb.n:                                             ; preds = %bb.k
  tail call void asm sideeffect "813: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 813b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 813) #19, !srcloc !48
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 2385, i32 0, i64 16) #19, !srcloc !49
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.l
  br label %nanosleep_copyout.exit

nanosleep_copyout.exit:                           ; preds = %bb.o, %bb.m, %bb.l, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ -14, %bb.l ], [ -516, %bb.o ], [ -14, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %arch_static_branch.exit, %nanosleep_copyout.exit
  %.1 = phi i32 [ %.0, %nanosleep_copyout.exit ], [ 0, %arch_static_branch.exit ], [ -516, %bb.i ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -516, 1) i64 @hrtimer_nanosleep_restart(ptr nofree noundef readonly captures(none) %0) #0 section ".sched.text" align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.hrtimer_sleeper, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, i8 0, i64 88, i1 false), !annotation !23
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  call void @hrtimer_setup_sleeper_on_stack(ptr noundef nonnull %1, i32 noundef %i.b, i32 noundef 0) #18
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.d, ptr %i.f, align 8
  %i.g = call fastcc i32 @do_nanosleep(ptr noundef nonnull %1, i32 noundef 0) #18, !srcloc !118
  %i.h = sext i32 %i.g to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret i64 %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -516, 1) i64 @__x64_sys_nanosleep(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call fastcc i64 @__se_sys_nanosleep(i64 noundef %i.b, i64 noundef %i.d) #18, !srcloc !119
  ret i64 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -516, 1) i64 @__se_sys_nanosleep(i64 noundef %0, i64 noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.hrtimer_sleeper, align 8    ; 8 uses
  %3 = alloca %struct.timespec64, align 8         ; 7 uses
  %i.a = inttoptr i64 %0 to ptr
  %i.b = inttoptr i64 %1 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !23
  %i.c = call i32 @get_timespec64(ptr noundef nonnull %3, ptr noundef %i.a) #17
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %__do_sys_nanosleep.exit

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val4.i = load i64, ptr %i.d, align 8
  %i.e = icmp sgt i64 %.val.i, -1
  %i.f = icmp ult i64 %.val4.i, 1000000000
  %.0.i.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %.0.i.i, label %bb.c, label %__do_sys_nanosleep.exit

bb.c:                                             ; preds = %bb.b
  %i.g = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #20, !srcloc !32
  %i.h = inttoptr i64 %i.g to ptr                 ; 8 uses
  %i.i = getelementptr i8, ptr %i.h, i64 1480     ; 2 uses
  store ptr @do_no_restart_syscall, ptr %i.i, align 8
  %.not3.i = icmp ne i64 %1, 0
  %i.j = zext i1 %.not3.i to i32
  %i.k = getelementptr i8, ptr %i.h, i64 1492
  store i32 %i.j, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %i.h, i64 1496
  store ptr %i.b, ptr %i.l, align 8
  %i.m = load i64, ptr %3, align 8                ; 2 uses
  %i.n = load i64, ptr %i.d, align 8
  %i.o = icmp sgt i64 %i.m, 9223372035
  %i.p = mul i64 %i.m, 1000000000
  %i.q = add i64 %i.p, %i.n
  %.0.i.i.i = select i1 %i.o, i64 9223372036854775807, i64 %i.q, !prof !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 0, i64 88, i1 false), !annotation !23
  call void @hrtimer_setup_sleeper_on_stack(ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1) #18
  %i.r = getelementptr i8, ptr %i.h, i64 2840
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %.0.i.i.i, ptr %i.t, align 8
  %i.u = add i64 %i.s, %.0.i.i.i                  ; 4 uses
  %i.v = icmp slt i64 %i.u, 0
  %i.w = icmp slt i64 %i.u, %.0.i.i.i
  %or.cond.i.i.i.i = or i1 %i.v, %i.w
  %i.x = icmp slt i64 %i.u, %i.s
  %or.cond9.i.i.i.i = or i1 %i.x, %or.cond.i.i.i.i
  %spec.select.i.i.i.i = select i1 %or.cond9.i.i.i.i, i64 9223372036854775807, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i64 %spec.select.i.i.i.i, ptr %i.y, align 8
  %i.z = call fastcc i32 @do_nanosleep(ptr noundef nonnull %2, i32 noundef 1) #18, !srcloc !50 ; 2 uses
  %.not.i.i = icmp eq i32 %i.z, -516
  br i1 %.not.i.i, label %bb.d, label %hrtimer_nanosleep.exit.i

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %i.h, i64 1472
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 12
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr i8, ptr %i.h, i64 1488
  store i32 %i.ae, ptr %i.af, align 8
  %.val.i.i = load i64, ptr %i.y, align 8
  %i.ag = getelementptr i8, ptr %i.h, i64 1504
  store i64 %.val.i.i, ptr %i.ag, align 8
  store ptr @hrtimer_nanosleep_restart, ptr %i.i, align 8
  %i.ah = getelementptr i8, ptr %i.h, i64 16
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = zext i32 %i.ai to i64
  store i64 %i.aj, ptr %i.aa, align 8
  br label %hrtimer_nanosleep.exit.i

hrtimer_nanosleep.exit.i:                         ; preds = %bb.d, %bb.c
  %i.ak = sext i32 %i.z to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %__do_sys_nanosleep.exit

__do_sys_nanosleep.exit:                          ; preds = %bb.a, %bb.b, %hrtimer_nanosleep.exit.i
  %.0.i = phi i64 [ -14, %bb.a ], [ %i.ak, %hrtimer_nanosleep.exit.i ], [ -22, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -516, 1) i64 @__ia32_sys_nanosleep(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = tail call fastcc i64 @__se_sys_nanosleep(i64 noundef %i.c, i64 noundef %i.f) #18, !srcloc !120
  ret i64 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -516, 1) i64 @__x64_sys_nanosleep_time32(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call fastcc i64 @__se_sys_nanosleep_time32(i64 noundef %i.b, i64 noundef %i.d) #18, !srcloc !121
  ret i64 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -516, 1) i64 @__se_sys_nanosleep_time32(i64 noundef %0, i64 noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.hrtimer_sleeper, align 8    ; 8 uses
  %3 = alloca %struct.timespec64, align 8         ; 7 uses
  %i.a = inttoptr i64 %0 to ptr
  %i.b = inttoptr i64 %1 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !23
  %i.c = call i32 @get_old_timespec32(ptr noundef nonnull %3, ptr noundef %i.a) #17
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %__do_sys_nanosleep_time32.exit

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val4.i = load i64, ptr %i.d, align 8
  %i.e = icmp sgt i64 %.val.i, -1
  %i.f = icmp ult i64 %.val4.i, 1000000000
  %.0.i.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %.0.i.i, label %bb.c, label %__do_sys_nanosleep_time32.exit

bb.c:                                             ; preds = %bb.b
  %i.g = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #20, !srcloc !32
  %i.h = inttoptr i64 %i.g to ptr                 ; 8 uses
  %i.i = getelementptr i8, ptr %i.h, i64 1480     ; 2 uses
  store ptr @do_no_restart_syscall, ptr %i.i, align 8
  %.not3.i = icmp eq i64 %1, 0
  %i.j = select i1 %.not3.i, i32 0, i32 2
  %i.k = getelementptr i8, ptr %i.h, i64 1492
  store i32 %i.j, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %i.h, i64 1496
  store ptr %i.b, ptr %i.l, align 8
  %i.m = load i64, ptr %3, align 8                ; 2 uses
  %i.n = load i64, ptr %i.d, align 8
  %i.o = icmp sgt i64 %i.m, 9223372035
  %i.p = mul i64 %i.m, 1000000000
  %i.q = add i64 %i.p, %i.n
  %.0.i.i.i = select i1 %i.o, i64 9223372036854775807, i64 %i.q, !prof !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 0, i64 88, i1 false), !annotation !23
  call void @hrtimer_setup_sleeper_on_stack(ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1) #18
  %i.r = getelementptr i8, ptr %i.h, i64 2840
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %.0.i.i.i, ptr %i.t, align 8
  %i.u = add i64 %i.s, %.0.i.i.i                  ; 4 uses
  %i.v = icmp slt i64 %i.u, 0
  %i.w = icmp slt i64 %i.u, %.0.i.i.i
  %or.cond.i.i.i.i = or i1 %i.v, %i.w
  %i.x = icmp slt i64 %i.u, %i.s
  %or.cond9.i.i.i.i = or i1 %i.x, %or.cond.i.i.i.i
  %spec.select.i.i.i.i = select i1 %or.cond9.i.i.i.i, i64 9223372036854775807, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i64 %spec.select.i.i.i.i, ptr %i.y, align 8
  %i.z = call fastcc i32 @do_nanosleep(ptr noundef nonnull %2, i32 noundef 1) #18, !srcloc !50 ; 2 uses
  %.not.i.i = icmp eq i32 %i.z, -516
  br i1 %.not.i.i, label %bb.d, label %hrtimer_nanosleep.exit.i

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %i.h, i64 1472
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 12
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr i8, ptr %i.h, i64 1488
  store i32 %i.ae, ptr %i.af, align 8
  %.val.i.i = load i64, ptr %i.y, align 8
  %i.ag = getelementptr i8, ptr %i.h, i64 1504
  store i64 %.val.i.i, ptr %i.ag, align 8
  store ptr @hrtimer_nanosleep_restart, ptr %i.i, align 8
  %i.ah = getelementptr i8, ptr %i.h, i64 16
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = zext i32 %i.ai to i64
  store i64 %i.aj, ptr %i.aa, align 8
  br label %hrtimer_nanosleep.exit.i

hrtimer_nanosleep.exit.i:                         ; preds = %bb.d, %bb.c
  %i.ak = sext i32 %i.z to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %__do_sys_nanosleep_time32.exit

__do_sys_nanosleep_time32.exit:                   ; preds = %bb.a, %bb.b, %hrtimer_nanosleep.exit.i
  %.0.i = phi i64 [ -14, %bb.a ], [ %i.ak, %hrtimer_nanosleep.exit.i ], [ -22, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -516, 1) i64 @__ia32_sys_nanosleep_time32(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = tail call fastcc i64 @__se_sys_nanosleep_time32(i64 noundef %i.c, i64 noundef %i.f) #18, !srcloc !122
  ret i64 %i.g
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none)
define dso_local noundef i32 @hrtimers_prepare_cpu(i32 noundef %0) local_unnamed_addr #8 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, ptrtoint (ptr @hrtimer_bases to i64)
  %i.e = inttoptr i64 %i.d to ptr                 ; 33 uses
  %i.f = getelementptr i8, ptr %i.e, i64 128
  store ptr %i.e, ptr %i.f, align 64
  %i.g = getelementptr i8, ptr %i.e, i64 144
  store i32 0, ptr %i.g, align 16
  %i.h = getelementptr i8, ptr %i.e, i64 168
  %i.i = getelementptr i8, ptr %i.e, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.i, align 64
  %i.j = getelementptr i8, ptr %i.e, i64 208
  store i32 0, ptr %i.j, align 16
  %i.k = getelementptr i8, ptr %i.e, i64 232
  %i.l = getelementptr i8, ptr %i.e, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.l, align 64
  %i.m = getelementptr i8, ptr %i.e, i64 272
  store i32 0, ptr %i.m, align 16
  %i.n = getelementptr i8, ptr %i.e, i64 296
  %i.o = getelementptr i8, ptr %i.e, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.o, align 64
  %i.p = getelementptr i8, ptr %i.e, i64 336
  store i32 0, ptr %i.p, align 16
  %i.q = getelementptr i8, ptr %i.e, i64 360
  %i.r = getelementptr i8, ptr %i.e, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.r, align 64
  %i.s = getelementptr i8, ptr %i.e, i64 400
  store i32 0, ptr %i.s, align 16
  %i.t = getelementptr i8, ptr %i.e, i64 424
  %i.u = getelementptr i8, ptr %i.e, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.u, align 64
  %i.v = getelementptr i8, ptr %i.e, i64 464
  store i32 0, ptr %i.v, align 16
  %i.w = getelementptr i8, ptr %i.e, i64 488
  %i.x = getelementptr i8, ptr %i.e, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.x, align 64
  %i.y = getelementptr i8, ptr %i.e, i64 528
  store i32 0, ptr %i.y, align 16
  %i.z = getelementptr i8, ptr %i.e, i64 552
  %i.aa = getelementptr i8, ptr %i.e, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.aa, align 64
  %i.ab = getelementptr i8, ptr %i.e, i64 592
  store i32 0, ptr %i.ab, align 16
  %i.ac = getelementptr i8, ptr %i.e, i64 616
  %i.ad = getelementptr i8, ptr %i.e, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store i32 %0, ptr %i.ad, align 4
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: read, target_mem: read)
define dso_local noundef i32 @hrtimers_cpu_starting(i32 noundef %0) local_unnamed_addr #9 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !51
  %i.b = add i64 %i.a, ptrtoint (ptr @hrtimer_bases to i64)
  %i.c = inttoptr i64 %i.b to ptr                 ; 9 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 16
  store i8 0, ptr %i.e, align 16
  %i.f = getelementptr i8, ptr %i.c, i64 19
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr i8, ptr %i.c, i64 48
  store ptr null, ptr %i.g, align 16
  %i.h = getelementptr i8, ptr %i.c, i64 64
  store ptr null, ptr %i.h, align 64
  %i.i = getelementptr i8, ptr %i.c, i64 40
  store i64 9223372036854775807, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.c, i64 56
  store i64 9223372036854775807, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.c, i64 20
  store i8 0, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %i.c, i64 21
  store i8 1, ptr %i.l, align 1
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @hrtimers_cpu_dying(i32 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @housekeeping_cpumask(i32 noundef 3) #17
  %i.b = load i64, ptr @__cpu_active_mask, align 8
  %i.c = load i64, ptr %i.a, align 8
  %i.d = and i64 %i.c, %i.b                       ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %find_first_and_bit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.d) #20, !srcloc !25
  br label %find_first_and_bit.exit

find_first_and_bit.exit:                          ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 64, %bb.a ]   ; 2 uses
  %i.g = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !125
  %i.h = add i64 %i.g, ptrtoint (ptr @hrtimer_bases to i64)
  %i.i = inttoptr i64 %i.h to ptr                 ; 4 uses
  %sext = shl i64 %i.f, 32
  %i.j = ashr exact i64 %sext, 29
  %i.k = getelementptr i8, ptr @__per_cpu_offset, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, ptrtoint (ptr @hrtimer_bases to i64)
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  tail call void @_raw_spin_lock(ptr noundef %i.i) #17
  tail call void @_raw_spin_lock(ptr noundef %i.n) #17
  %i.o = getelementptr i8, ptr %i.i, i64 128
  %i.p = getelementptr i8, ptr %i.n, i64 128
  br label %bb.d

bb.c:                                             ; preds = %migrate_hrtimer_list.exit
  %i.q = trunc i64 %i.f to i32
  %i.r = tail call i32 @smp_call_function_single(i32 noundef %i.q, ptr noundef @retrigger_next_event, ptr noundef null, i32 noundef 0) #17 ; 0 uses
  tail call void @_raw_spin_unlock(ptr noundef %i.n) #17
  %i.s = getelementptr i8, ptr %i.i, i64 21
  store i8 0, ptr %i.s, align 1
  tail call void @_raw_spin_unlock(ptr noundef %i.i) #17
  ret i32 0

bb.d:                                             ; preds = %find_first_and_bit.exit, %migrate_hrtimer_list.exit
  %indvars.iv = phi i64 [ 0, %find_first_and_bit.exit ], [ %indvars.iv.next, %migrate_hrtimer_list.exit ] ; 3 uses
  %i.t = getelementptr [64 x i8], ptr %i.o, i64 %indvars.iv ; 5 uses
  %i.u = getelementptr [64 x i8], ptr %i.p, i64 %indvars.iv ; 6 uses
  %i.v = getelementptr i8, ptr %i.t, i64 40
  %i.w = getelementptr i8, ptr %i.t, i64 48       ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not15.i = icmp eq ptr %i.x, null
  br i1 %.not15.i, label %migrate_hrtimer_list.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.y = getelementptr i8, ptr %i.t, i64 8
  %i.z = getelementptr i8, ptr %i.t, i64 24
  %i.aa = getelementptr i8, ptr %i.u, i64 8
  %i.ab = getelementptr i8, ptr %i.u, i64 40
  %i.ac = getelementptr i8, ptr %i.u, i64 24
  br label %bb.e

bb.e:                                             ; preds = %enqueue_hrtimer.exit, %.lr.ph.i
  %i.ad = phi ptr [ %i.x, %.lr.ph.i ], [ %i.bw, %enqueue_hrtimer.exit ] ; 8 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 48     ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 32
  %.not14.i = icmp eq ptr %i.ah, %i.ad
  br i1 %.not14.i, label %bb.f, label %bb.g, !prof !28

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "815: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 815b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 815) #19, !srcloc !126
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 2552, i32 0, i64 16) #19, !srcloc !127
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.t, align 64
  %i.aj = getelementptr i8, ptr %i.ad, i64 56     ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !14, !noundef !15
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.h, label %__remove_hrtimer.exit.i

bb.h:                                             ; preds = %bb.g
  store volatile i8 1, ptr %i.aj, align 8
  %i.am = getelementptr i8, ptr %i.ad, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %.not.i13.i = icmp eq ptr %i.an, null
  %i.ao = tail call zeroext i1 @rb_erase_linked(ptr noundef nonnull %i.ad, ptr noundef %i.v) #17
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %i.y, align 8
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = xor i32 %i.aq, -1
  %i.as = getelementptr i8, ptr %i.ai, i64 8      ; 2 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = and i32 %i.at, %i.ar
  store i32 %i.au, ptr %i.as, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %.not.i13.i, label %bb.k, label %__remove_hrtimer.exit.i

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.w, align 16            ; 2 uses
  %.not.i18.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i18.i.i, label %base_update_next_timer.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %i.av, i64 40
  %i.ax = load i64, ptr %i.aw, align 8
  br label %base_update_next_timer.exit.i.i

base_update_next_timer.exit.i.i:                  ; preds = %bb.l, %bb.k
  %i.ay = phi i64 [ %i.ax, %bb.l ], [ 9223372036854775807, %bb.k ]
  store i64 %i.ay, ptr %i.z, align 8
  br label %__remove_hrtimer.exit.i

__remove_hrtimer.exit.i:                          ; preds = %base_update_next_timer.exit.i.i, %bb.j, %bb.g
  store ptr %i.u, ptr %i.ae, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_start, i64 8), i1 false) #19
          to label %debug_activate.exit.i [label %_test_bit.exit.i.i.i.i], !srcloc !16

_test_bit.exit.i.i.i.i:                           ; preds = %__remove_hrtimer.exit.i
  %i.az = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !33
  %i.ba = zext i32 %i.az to i64
  %i.bb = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ba) #19, !srcloc !18 ; 2 uses
  %i.bc = icmp ult i8 %i.bb, 2
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = trunc nuw i8 %i.bb to i1
  br i1 %i.bd, label %bb.m, label %debug_activate.exit.i

bb.m:                                             ; preds = %_test_bit.exit.i.i.i.i
  %i.be = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.be, ptr elementtype(i64) %i.be) #19, !srcloc !19
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !20
  %i.bf = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_start, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call i32 @__SCT__tp_func_hrtimer_start(ptr noundef %i.bh, ptr noundef nonnull %i.ad, i32 noundef 0, i1 noundef zeroext true) #17 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.bj = getelementptr i8, ptr %i.be, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bj, ptr elementtype(i64) %i.bj) #19, !srcloc !22
  br label %debug_activate.exit.i

debug_activate.exit.i:                            ; preds = %bb.o, %_test_bit.exit.i.i.i.i, %__remove_hrtimer.exit.i
  %i.bk = load ptr, ptr %i.u, align 64            ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 21
  %i.bm = load i8, ptr %i.bl, align 1, !range !14, !noundef !15
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.q, label %bb.p, !prof !29

bb.p:                                             ; preds = %debug_activate.exit.i
  tail call void asm sideeffect "772: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 772b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 772) #19, !srcloc !45
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 1110, i32 2307, i64 16) #19, !srcloc !46
  tail call void asm sideeffect "773: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 773b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 773) #19, !srcloc !47
  %.pre.i = load ptr, ptr %i.u, align 64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %debug_activate.exit.i
  %i.bo = phi ptr [ %.pre.i, %bb.p ], [ %i.bk, %debug_activate.exit.i ]
  %i.bp = load i32, ptr %i.aa, align 8
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = getelementptr i8, ptr %i.bo, i64 8      ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = or i32 %i.bs, %i.bq
  store i32 %i.bt, ptr %i.br, align 8
  store volatile i8 1, ptr %i.aj, align 8
  %i.bu = tail call zeroext i1 @timerqueue_linked_add(ptr noundef %i.ab, ptr noundef nonnull %i.ad) #17
  br i1 %i.bu, label %bb.r, label %enqueue_hrtimer.exit

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr i8, ptr %i.ad, i64 40
  %.val.i = load i64, ptr %i.bv, align 8
  store i64 %.val.i, ptr %i.ac, align 8
  br label %enqueue_hrtimer.exit

enqueue_hrtimer.exit:                             ; preds = %bb.q, %bb.r
  %i.bw = load ptr, ptr %i.w, align 16            ; 2 uses
  %.not.i19 = icmp eq ptr %i.bw, null
  br i1 %.not.i19, label %migrate_hrtimer_list.exit, label %bb.e, !llvm.loop !123

migrate_hrtimer_list.exit:                        ; preds = %enqueue_hrtimer.exit, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !124
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @hrtimers_init() local_unnamed_addr #3 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #16, !srcloc !128
  %i.b = tail call i32 @hrtimers_prepare_cpu(i32 noundef %i.a) #18 ; 0 uses
  %i.c = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #16, !srcloc !129 ; 0 uses
  %i.d = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !51
  %i.e = add i64 %i.d, ptrtoint (ptr @hrtimer_bases to i64)
  %i.f = inttoptr i64 %i.e to ptr                 ; 9 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.f, i64 16
  store i8 0, ptr %i.h, align 16
  %i.i = getelementptr i8, ptr %i.f, i64 19
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %i.f, i64 48
  store ptr null, ptr %i.j, align 16
  %i.k = getelementptr i8, ptr %i.f, i64 64
  store ptr null, ptr %i.k, align 64
  %i.l = getelementptr i8, ptr %i.f, i64 40
  store i64 9223372036854775807, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.f, i64 56
  store i64 9223372036854775807, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.f, i64 20
  store i8 0, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %i.f, i64 21
  store i8 1, ptr %i.o, align 1
  tail call void @open_softirq(i32 noundef 8, ptr noundef @hrtimer_run_softirq) #17
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @open_softirq(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hrtimer_run_softirq() #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !130
  %i.b = add i64 %i.a, ptrtoint (ptr @hrtimer_bases to i64)
  %i.c = inttoptr i64 %i.b to ptr                 ; 15 uses
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #17 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 248      ; 2 uses
  %i.f = getelementptr i8, ptr %i.c, i64 312      ; 2 uses
  %i.g = getelementptr i8, ptr %i.c, i64 376      ; 2 uses
  %i.h = getelementptr i8, ptr %i.c, i64 12
  %i.i = tail call i64 @ktime_get_update_offsets_now(ptr noundef %i.h, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g) #17
  %i.j = load i64, ptr %i.e, align 8
  %i.k = getelementptr i8, ptr %i.c, i64 504
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load i64, ptr %i.f, align 8
  %i.m = getelementptr i8, ptr %i.c, i64 568
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load i64, ptr %i.g, align 8
  %i.o = getelementptr i8, ptr %i.c, i64 632
  store i64 %i.n, ptr %i.o, align 8
  tail call fastcc void @__hrtimer_run_queues(ptr noundef %i.c, i64 noundef %i.i, i64 noundef %i.d, i32 noundef 240) #18, !srcloc !131
  %i.p = getelementptr i8, ptr %i.c, i64 20
  store i8 0, ptr %i.p, align 4
  %i.q = getelementptr i8, ptr %i.c, i64 8
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, 240                        ; 3 uses
  %.not22.i.i = icmp eq i32 %i.s, 0
  br i1 %.not22.i.i, label %hrtimer_bases_first.exit.i.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 241) %i.s, i32 -1) #20, !srcloc !26 ; 2 uses
  %.not25.i.i.i = icmp eq i32 %i.t, -1
  br i1 %.not25.i.i.i, label %hrtimer_bases_first.exit.i.thread.i, label %.preheader.lr.ph.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.b
  %i.u = getelementptr i8, ptr %i.c, i64 128
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.critedge.i.i.i, %.preheader.lr.ph.i.i.i
  %.345.i.i = phi ptr [ null, %.preheader.lr.ph.i.i.i ], [ %.446.i.i, %.critedge.i.i.i ]
  %.4.i.i = phi i64 [ 9223372036854775807, %.preheader.lr.ph.i.i.i ], [ %.5.i.i, %.critedge.i.i.i ]
  %i.v = phi i64 [ 9223372036854775807, %.preheader.lr.ph.i.i.i ], [ %i.aj, %.critedge.i.i.i ] ; 2 uses
  %i.w = phi i32 [ %i.t, %.preheader.lr.ph.i.i.i ], [ %i.al, %.critedge.i.i.i ] ; 2 uses
  %.02126.i.i.i = phi i32 [ %i.s, %.preheader.lr.ph.i.i.i ], [ %i.ak, %.critedge.i.i.i ]
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr [64 x i8], ptr %i.u, i64 %i.x ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 24
  %i.aa = getelementptr i8, ptr %i.y, i64 56
  %i.ab = shl nuw i32 1, %i.w
  %i.ac = xor i32 %i.ab, -1
  %i.ad = load i64, ptr %i.z, align 8
  %i.ae = load i64, ptr %i.aa, align 8
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = icmp slt i64 %i.af, %i.v
  br i1 %i.ag, label %bb.c, label %.critedge.i.i.i

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.ah = getelementptr i8, ptr %i.y, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.c, %.preheader.i.i.i
  %.446.i.i = phi ptr [ %i.ai, %bb.c ], [ %.345.i.i, %.preheader.i.i.i ] ; 3 uses
  %.5.i.i = phi i64 [ %i.af, %bb.c ], [ %.4.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.aj = phi i64 [ %i.af, %bb.c ], [ %i.v, %.preheader.i.i.i ]
  %i.ak = and i32 %.02126.i.i.i, %i.ac            ; 2 uses
  %i.al = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ak, i32 -1) #20, !srcloc !26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.al, -1
  br i1 %.not.i.i.i, label %hrtimer_bases_first.exit.i.i, label %.preheader.i.i.i, !llvm.loop !2

hrtimer_bases_first.exit.i.thread.i:              ; preds = %bb.b, %bb.a
  %i.am = getelementptr i8, ptr %i.c, i64 64
  store ptr null, ptr %i.am, align 64
  br label %hrtimer_update_softirq_timer.exit

hrtimer_bases_first.exit.i.i:                     ; preds = %.critedge.i.i.i
  %i.an = icmp eq i64 %.5.i.i, 9223372036854775807
  %i.ao = getelementptr i8, ptr %i.c, i64 64
  store ptr %.446.i.i, ptr %i.ao, align 64
  br i1 %i.an, label %hrtimer_update_softirq_timer.exit, label %bb.d

bb.d:                                             ; preds = %hrtimer_bases_first.exit.i.i
  tail call fastcc void @hrtimer_reprogram(ptr noundef %.446.i.i) #18
  br label %hrtimer_update_softirq_timer.exit

hrtimer_update_softirq_timer.exit:                ; preds = %hrtimer_bases_first.exit.i.thread.i, %hrtimer_bases_first.exit.i.i, %bb.d
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.d) #17
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clock_was_set_work(ptr nofree readnone captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void @clock_was_set(i32 noundef 170) #18
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @switch_hrtimer_base(ptr nofree noundef captures(address) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !132
  %i.d = add i64 %i.c, ptrtoint (ptr @hrtimer_bases to i64)
  %i.e = inttoptr i64 %i.d to ptr                 ; 6 uses
  %i.f = getelementptr i8, ptr %i.e, i64 21       ; 3 uses
  %.val.i = load i8, ptr %i.f, align 1, !range !14, !noundef !15
  %i.g = trunc nuw i8 %.val.i to i1
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @housekeeping_cpumask(i32 noundef 3) #17
  %i.i = load i64, ptr @__cpu_online_mask, align 8
  %i.j = load i64, ptr %i.h, align 8
  %i.k = and i64 %i.j, %i.i                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %find_first_and_bit.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.k) #20, !srcloc !25
  %i.m = shl i64 %i.l, 32
  %i.n = ashr exact i64 %i.m, 29
  br label %find_first_and_bit.exit.i

find_first_and_bit.exit.i:                        ; preds = %bb.c, %bb.b
  %i.o = phi i64 [ %i.n, %bb.c ], [ 512, %bb.b ]
  %i.p = getelementptr i8, ptr @__per_cpu_offset, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, ptrtoint (ptr @hrtimer_bases to i64)
  %i.s = inttoptr i64 %i.r to ptr
  br label %get_target_base.exit

bb.d:                                             ; preds = %bb.a
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr @timers_migration_enabled, i1 true) #19
          to label %arch_static_branch_jump.exit.i [label %get_target_base.exit], !srcloc !24

arch_static_branch_jump.exit.i:                   ; preds = %bb.d
  br i1 %2, label %get_target_base.exit, label %bb.e

bb.e:                                             ; preds = %arch_static_branch_jump.exit.i
  %i.t = tail call i32 @get_nohz_timer_target() #17
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8
  %i.x = add i64 %i.w, ptrtoint (ptr @hrtimer_bases to i64)
  %i.y = inttoptr i64 %i.x to ptr
  br label %get_target_base.exit

get_target_base.exit:                             ; preds = %find_first_and_bit.exit.i, %bb.d, %arch_static_branch_jump.exit.i, %bb.e
  %.0.i = phi ptr [ %i.s, %find_first_and_bit.exit.i ], [ %i.y, %bb.e ], [ %i.e, %arch_static_branch_jump.exit.i ], [ %i.e, %bb.d ] ; 3 uses
  %i.z = sext i32 %i.b to i64                     ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 48        ; 6 uses
  %i.ab = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.ac = getelementptr i8, ptr %.0.i, i64 128
  %i.ad = getelementptr [64 x i8], ptr %i.ac, i64 %i.z ; 12 uses
  %.not.peel = icmp eq ptr %1, %i.ad
  br i1 %.not.peel, label %bb.j, label %bb.f

bb.f:                                             ; preds = %get_target_base.exit
  %i.ae = load ptr, ptr %i.aa, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 32
  %.not47.peel = icmp eq ptr %i.ag, %0
  br i1 %.not47.peel, label %hrtimer_suitable_target.exit44.thread, label %bb.g, !prof !28

bb.g:                                             ; preds = %bb.f
  store volatile ptr getelementptr inbounds nuw (i8, ptr @migration_cpu_base, i64 128), ptr %i.aa, align 8
  %i.ah = load ptr, ptr %1, align 64
  tail call void @_raw_spin_unlock(ptr noundef %i.ah) #17
  %i.ai = load ptr, ptr %i.ad, align 64
  tail call void @_raw_spin_lock(ptr noundef %i.ai) #17
  %i.aj = icmp eq ptr %.0.i, %i.e
  br i1 %i.aj, label %hrtimer_suitable_target.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val8.i.peel = load i8, ptr %i.f, align 1, !range !14, !noundef !15
  %i.ak = trunc nuw i8 %.val8.i.peel to i1
  br i1 %i.ak, label %hrtimer_suitable_target.exit.peel, label %hrtimer_suitable_target.exit.thread

hrtimer_suitable_target.exit.peel:                ; preds = %bb.h
  %.val.i40.peel = load i64, ptr %i.ab, align 8
  %i.al = getelementptr i8, ptr %i.ad, i64 56
  %i.am = load i64, ptr %i.al, align 8
  %i.an = sub i64 %.val.i40.peel, %i.am
  %i.ao = load ptr, ptr %i.ad, align 64           ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 40
  %i.aq = load i64, ptr %i.ap, align 8
  %.not48.peel = icmp slt i64 %i.an, %i.aq
  br i1 %.not48.peel, label %bb.i, label %hrtimer_suitable_target.exit.thread

bb.i:                                             ; preds = %hrtimer_suitable_target.exit.peel
  tail call void @_raw_spin_unlock(ptr noundef %i.ao) #17
  %i.ar = load ptr, ptr %1, align 64
  tail call void @_raw_spin_lock(ptr noundef %i.ar) #17
  store volatile ptr %1, ptr %i.aa, align 8
  br label %.backedge.peel

bb.j:                                             ; preds = %get_target_base.exit
  %i.as = icmp eq ptr %.0.i, %i.e
  br i1 %i.as, label %hrtimer_suitable_target.exit44.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val8.i41.peel = load i8, ptr %i.f, align 1, !range !14, !noundef !15
  %i.at = trunc nuw i8 %.val8.i41.peel to i1
  br i1 %i.at, label %hrtimer_suitable_target.exit44.peel, label %hrtimer_suitable_target.exit44.thread

hrtimer_suitable_target.exit44.peel:              ; preds = %bb.k
  %.val.i43.peel = load i64, ptr %i.ab, align 8
  %i.au = getelementptr i8, ptr %i.ad, i64 56
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = sub i64 %.val.i43.peel, %i.av
  %i.ax = load ptr, ptr %i.ad, align 64
  %i.ay = getelementptr i8, ptr %i.ax, i64 40
  %i.az = load i64, ptr %i.ay, align 8
  %.not49.peel = icmp slt i64 %i.aw, %i.az
  br i1 %.not49.peel, label %.backedge.peel, label %hrtimer_suitable_target.exit44.thread

.backedge.peel:                                   ; preds = %bb.i, %hrtimer_suitable_target.exit44.peel
  %i.ba = getelementptr i8, ptr %i.e, i64 128
  %i.bb = getelementptr [64 x i8], ptr %i.ba, i64 %i.z ; 4 uses
  %.not = icmp eq ptr %1, %i.bb
  br i1 %.not, label %hrtimer_suitable_target.exit44.thread, label %bb.l

bb.l:                                             ; preds = %.backedge.peel
  %i.bc = load ptr, ptr %i.aa, align 8
  %i.bd = getelementptr i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 32
  %.not47 = icmp eq ptr %i.be, %0
  br i1 %.not47, label %hrtimer_suitable_target.exit44.thread, label %hrtimer_suitable_target.exit.thread.loopexit, !prof !28

hrtimer_suitable_target.exit.thread.loopexit:     ; preds = %bb.l
  store volatile ptr getelementptr inbounds nuw (i8, ptr @migration_cpu_base, i64 128), ptr %i.aa, align 8
  %i.bf = load ptr, ptr %1, align 64
  tail call void @_raw_spin_unlock(ptr noundef %i.bf) #17
  %i.bg = load ptr, ptr %i.bb, align 64
  tail call void @_raw_spin_lock(ptr noundef %i.bg) #17
  br label %hrtimer_suitable_target.exit.thread

hrtimer_suitable_target.exit.thread:              ; preds = %hrtimer_suitable_target.exit.thread.loopexit, %hrtimer_suitable_target.exit.peel, %bb.h, %bb.g
  %.lcssa52 = phi ptr [ %i.ad, %bb.g ], [ %i.ad, %bb.h ], [ %i.ad, %hrtimer_suitable_target.exit.peel ], [ %i.bb, %hrtimer_suitable_target.exit.thread.loopexit ] ; 2 uses
  store volatile ptr %.lcssa52, ptr %i.aa, align 8
  br label %hrtimer_suitable_target.exit44.thread

hrtimer_suitable_target.exit44.thread:            ; preds = %bb.f, %bb.j, %bb.k, %hrtimer_suitable_target.exit44.peel, %bb.l, %.backedge.peel, %hrtimer_suitable_target.exit.thread
  %.0 = phi ptr [ %.lcssa52, %hrtimer_suitable_target.exit.thread ], [ %1, %bb.f ], [ %i.ad, %bb.j ], [ %i.ad, %bb.k ], [ %i.ad, %hrtimer_suitable_target.exit44.peel ], [ %1, %bb.l ], [ %i.bb, %.backedge.peel ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @enqueue_hrtimer(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_start, i64 8), i1 false) #19
          to label %debug_activate.exit [label %_test_bit.exit.i.i.i], !srcloc !16

_test_bit.exit.i.i.i:                             ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !33
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #19, !srcloc !18 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %debug_activate.exit

bb.b:                                             ; preds = %_test_bit.exit.i.i.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #19, !srcloc !19
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !20
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_start, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_hrtimer_start(ptr noundef %i.i, ptr noundef %0, i32 noundef %2, i1 noundef zeroext %3) #17 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #19, !srcloc !22
  br label %debug_activate.exit

debug_activate.exit:                              ; preds = %bb.a, %_test_bit.exit.i.i.i, %bb.d
  %i.l = load ptr, ptr %1, align 64               ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 21
  %i.n = load i8, ptr %i.m, align 1, !range !14, !noundef !15
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.e, !prof !29

bb.e:                                             ; preds = %debug_activate.exit
  tail call void asm sideeffect "772: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 772b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 772) #19, !srcloc !45
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 1110, i32 2307, i64 16) #19, !srcloc !46
  tail call void asm sideeffect "773: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 773b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 773) #19, !srcloc !47
  %.pre = load ptr, ptr %1, align 64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %debug_activate.exit
  %i.p = phi ptr [ %.pre, %bb.e ], [ %i.l, %debug_activate.exit ]
  %i.q = getelementptr i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 8
  %i.s = shl nuw i32 1, %i.r
  %i.t = getelementptr i8, ptr %i.p, i64 8        ; 2 uses
end_hunk_0
begin_hunk_1_@__SCT__tp_func_hrtimer_setup
declare dso_local i32 @__SCT__tp_func_hrtimer_setup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef i32 @hrtimer_dummy_timeout(ptr nofree readnone captures(none) %0) #13 align 16 prefalign(16) {
bb.a:
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get_update_offsets_now(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @raise_ktimers_thread(i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__raise_softirq_irqoff(i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_hrtimer_expire_entry(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_hrtimer_expire_exit(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @tick_init_highres() local_unnamed_addr #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tick_setup_sched_timer(i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hrtimer_hres_workfn(ptr nofree readnone captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void @static_key_enable(ptr noundef @hrtimer_highres_enabled_key) #17
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @hrtimer_wakeup(ptr nofree noundef captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @wake_up_process(ptr noundef nonnull %i.b) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local { i64, i64 } @ns_to_timespec64(i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @do_no_restart_syscall(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: read, target_mem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #14 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind memory(read) }
attributes #17 = { noredzone nounwind "no-builtin-wcslen" }
attributes #18 = { noredzone "no-builtin-wcslen" }
attributes #19 = { nounwind }
attributes #20 = { nounwind memory(none) }
attributes #21 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!3}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = !{!"rsp"}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!10 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!11 = !{i32 1, !"override-stack-alignment", i32 8}
!12 = !{i32 4, !"SkipRaxSetup", i32 1}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{i64 2148761752, i64 2148761792, i64 2148761909, i64 2148761930, i64 2148761973, i64 2148761988, i64 2148762021, i64 2148762055, i64 2148762079}
!17 = !{i64 2159139129}
!18 = !{i64 2148554296}
!19 = !{i64 2151847156}
!20 = !{i64 2151850458}
!21 = !{i64 2151850880}
!22 = !{i64 2151862662}
!23 = !{!"auto-init"}
!24 = !{i64 1277646, i64 1277669, i64 2148763084, i64 2148763105, i64 2148763148, i64 2148763163, i64 2148763196, i64 2148763230, i64 2148763254}
!25 = !{i64 1050885}
!26 = !{i64 1052522}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{i64 2461206}
!31 = !{i64 21833}
!32 = !{i64 2148137540}
!33 = !{i64 2158971156}
!34 = !{i64 2151211417}
!35 = !{!"branch_weights", i32 1999, i32 1}
!36 = !{!"branch_weights", i32 1, i32 0}
!37 = !{i64 2151267272}
!38 = !{i64 2159367664}
!39 = !{i64 34572}
!40 = !{i64 55280}
!41 = !{i64 2158935672}
!42 = !{i64 2159424343}
!43 = !{i64 2159411201, i64 2159411228, i64 2159411628, i64 2159411661, i64 2159411696, i64 2159411712, i64 2159412553, i64 2159412611, i64 2159412660, i64 2159412470, i64 2159411771, i64 2159411803}
!44 = !{i64 2159409568}
!45 = !{i64 2159358211, i64 2159358086}
!46 = !{i64 2159358734, i64 2159359795, i64 2159359828, i64 2159359863, i64 2159359879, i64 2159360806, i64 2159360864, i64 2159360913, i64 2159360723, i64 2159359938, i64 2159359970, i64 2159360053}
!47 = !{i64 2159361215, i64 2159361091}
!48 = !{i64 2159485894, i64 2159485769}
!49 = !{i64 2159486417, i64 2159486893, i64 2159486926, i64 2159486961, i64 2159486977, i64 2159487818, i64 2159487876, i64 2159487925, i64 2159487735, i64 2159487036, i64 2159487068}
!50 = !{i64 73210}
!51 = !{i64 2159527280}
!52 = !{i64 2159331977}
!53 = distinct !{!53, !27}
!54 = distinct !{!54, !27}
!55 = !{i64 2148541349, i64 2148541388, i64 2148541409, i64 2148541446, i64 2148541469, i64 2148541340}
!56 = !{!"branch_weights", i32 1, i32 1999}
!57 = !{i64 2150073521}
!58 = !{i64 2150096629}
!59 = !{i64 2150089646}
!60 = !{i64 2150079702}
!61 = !{i64 2150089954}
!62 = !{i64 30386}
!63 = !{i64 2159351889, i64 2159351764}
!64 = !{i64 2159352412, i64 2159353466, i64 2159353499, i64 2159353534, i64 2159353550, i64 2159354477, i64 2159354535, i64 2159354584, i64 2159354394, i64 2159353609, i64 2159353641, i64 2159353724}
!65 = !{i64 2159354886, i64 2159354762}
!66 = !{i64 45029}
!67 = !{i64 2159379035, i64 2159378910}
!68 = !{i64 2159379558, i64 2159384702, i64 2159384735, i64 2159384770, i64 2159384786, i64 2159385713, i64 2159385771, i64 2159385820, i64 2159385630, i64 2159384845, i64 2159384877, i64 2159384960}
!69 = !{i64 2159386122, i64 2159385998}
!70 = !{i64 2159376835}
!71 = !{i64 2159374539}
!72 = !{i64 40869}
!73 = !{i64 41769}
!74 = !{i64 41932}
!75 = !{i64 42017}
!76 = !{i64 2159338665}
!77 = !{i64 2159339833, i64 2159339708}
!78 = !{i64 2159340356, i64 2159341405, i64 2159341438, i64 2159341473, i64 2159341489, i64 2159342416, i64 2159342474, i64 2159342523, i64 2159342333, i64 2159341548, i64 2159341580, i64 2159341663}
!79 = !{i64 2159342824, i64 2159342700}
!80 = !{i64 47252}
!81 = !{i64 47352}
!82 = !{i64 47479}
!83 = !{i64 2159037746}
!84 = !{i64 2159108439}
!85 = !{i64 2159403857}
!86 = distinct !{!86, !27}
!87 = !{i64 2159406851}
!88 = !{i64 2159419061, i64 2159419088, i64 2159419488, i64 2159419521, i64 2159419556, i64 2159419572, i64 2159420413, i64 2159420471, i64 2159420520, i64 2159420330, i64 2159419631, i64 2159419663}
!89 = !{i64 2159413367}
!90 = !{i64 57487}
!91 = !{i64 2159425491, i64 2159425366}
!92 = !{i64 2159426014, i64 2159427055, i64 2159427088, i64 2159427123, i64 2159427139, i64 2159428066, i64 2159428124, i64 2159428173, i64 2159427983, i64 2159427198, i64 2159427230, i64 2159427313}
!93 = !{i64 2159428475, i64 2159428351}
!94 = !{i64 58105}
!95 = !{i64 2159465277}
!96 = !{i64 64666}
!97 = !{i64 2159468223}
!98 = !{i64 2159469065, i64 2159468940}
!99 = !{i64 2159469588, i64 2159470064, i64 2159470097, i64 2159470132, i64 2159470148, i64 2159470989, i64 2159471047, i64 2159471096, i64 2159470906, i64 2159470207, i64 2159470239}
!100 = !{i64 66460}
!101 = !{i64 66885}
!102 = !{i64 2148541052, i64 2148541091, i64 2148541112, i64 2148541149, i64 2148541172, i64 2148541043}
!103 = distinct !{null}
!104 = distinct !{!104, !27}
!105 = distinct !{!105, !27}
!106 = !{i64 2151269011}
!107 = !{i64 2159006283}
!108 = !{i64 2159073231}
!109 = !{i64 2159449248, i64 2159449123}
!110 = !{i64 2159449771, i64 2159450831, i64 2159450864, i64 2159450899, i64 2159450915, i64 2159451842, i64 2159451900, i64 2159451949, i64 2159451759, i64 2159450974, i64 2159451006, i64 2159451089}
!111 = !{i64 2159452251, i64 2159452127}
!112 = !{i64 2159473819}
!113 = !{i64 2159330007}
!114 = !{i64 23046}
!115 = !{i64 68277}
!116 = distinct !{!116, !27}
!117 = !{i64 2159490807}
!118 = !{i64 72826}
!119 = !{i64 2159499438}
!120 = !{i64 2159501901}
!121 = !{i64 2159516721}
!122 = !{i64 2159519176}
!123 = distinct !{!123, !27}
!124 = distinct !{!124, !27}
!125 = !{i64 2159533962}
!126 = !{i64 2159530674, i64 2159530549}
!127 = !{i64 2159531197, i64 2159531673, i64 2159531706, i64 2159531741, i64 2159531757, i64 2159532598, i64 2159532656, i64 2159532705, i64 2159532515, i64 2159531816, i64 2159531848}
!128 = !{i64 2159538571}
!129 = !{i64 2159542547}
!130 = !{i64 2159457024}
!131 = !{i64 63458}
!132 = !{i64 2159300122}
end_hunk_1
