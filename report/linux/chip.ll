Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/chip?download=true
inline.NumInlined: 179
inline.NumDeleted: 67
begin_hunk_0_@handle_percpu_devid_irq:bb.a
  %i.ak = icmp ult i8 %i.aj, 2
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %bb.i, label %.critedge54

bb.i:                                             ; preds = %arch_test_bit.exit.i.i59
  %i.am = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.am, ptr elementtype(i64) %i.am) #7, !srcloc !38
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !39
  %i.an = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_irq_handler_exit, i64 56), align 8 ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.an, null
  br i1 %.not.i.i60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i32 @__SCT__tp_func_irq_handler_exit(ptr noundef %i.ap, i32 noundef %.val58, ptr noundef nonnull %.04770, i32 noundef %i.ag) #8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !40
  %i.ar = getelementptr i8, ptr %i.am, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ar, ptr elementtype(i64) %i.ar) #7, !srcloc !41
  br label %.critedge54

.critedge:                                        ; preds = %bb.d, %bb.c
  %i.as = getelementptr i8, ptr %0, i64 176       ; 2 uses
  %i.at = load ptr, ptr %i.as, align 16
  %i.au = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.at, i64 range(i64 0, 4294967296) %.pre) #7, !srcloc !37 ; 2 uses
  %i.av = icmp ult i8 %i.au, 2
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = trunc nuw i8 %i.au to i1
  br i1 %i.aw, label %bb.l, label %irq_percpu_disable.exit

bb.l:                                             ; preds = %.critedge
  %i.ax = getelementptr i8, ptr %0, i64 40
  %i.ay = load ptr, ptr %i.a, align 32            ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr i8, ptr %i.ay, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink.i = phi ptr [ %i.bc, %bb.m ], [ %i.ba, %bb.l ]
  tail call void %.sink.i(ptr noundef %i.ax) #8, !inline_history !97
  %i.bd = load ptr, ptr %i.as, align 16
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bd, i64 range(i64 0, 4294967296) %.pre) #7, !srcloc !25
  br label %irq_percpu_disable.exit

irq_percpu_disable.exit:                          ; preds = %bb.n, %.critedge
  %.in.i63 = phi ptr [ @.str.4, %bb.n ], [ @.str, %.critedge ]
  %.b = load i1, ptr @handle_percpu_devid_irq.__already_done, align 1
  br i1 %.b, label %.critedge54, label %bb.o, !prof !20

bb.o:                                             ; preds = %irq_percpu_disable.exit
  store i1 true, ptr @handle_percpu_devid_irq.__already_done, align 1
  %i.be = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef nonnull %.in.i63, i32 noundef %.val58, i32 noundef %i.c) #12 ; 0 uses
  br label %.critedge54

.critedge54:                                      ; preds = %bb.k, %arch_test_bit.exit.i.i59, %trace_irq_handler_entry.exit, %bb.o, %irq_percpu_disable.exit
  %i.bf = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count) #10, !srcloc !98
  %i.bg = and i32 %i.bf, 15728640
  %.not51 = icmp eq i32 %i.bg, 0
  br i1 %.not51, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.critedge54
  tail call void @add_interrupt_randomness(i32 noundef %.val58) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge54
  %i.bh = getelementptr i8, ptr %.val57, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not52 = icmp eq ptr %i.bi, null
  br i1 %.not52, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr i8, ptr %0, i64 40
  tail call void %i.bi(ptr noundef %i.bj) #8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @add_interrupt_randomness(i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__irq_set_handler(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.class_irqdesc_lock_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.a, align 8, !alias.scope !101
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %i.b, i1 noundef zeroext true, i32 noundef 0) #8 ; 5 uses
  store ptr %i.c, ptr %4, align 8, !alias.scope !101
  %i.d = icmp ugt ptr %i.c, inttoptr (i64 -4096 to ptr)
  %.not4 = icmp eq ptr %i.c, null
  %.not = or i1 %i.d, %.not4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @__irq_do_set_handler(ptr noundef nonnull %i.c, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9, !srcloc !43
  %.pr = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.c, %bb.a ], [ %.pr, %bb.b ] ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %class_irqdesc_lock_destructor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i64, ptr %i.b, align 8
  %i.g = load i8, ptr %i.a, align 8, !range !17, !noundef !18
  %i.h = trunc nuw i8 %i.g to i1
  call void @__irq_put_desc_unlock(ptr noundef nonnull %i.e, i64 noundef %i.f, i1 noundef zeroext %i.h) #8
  br label %class_irqdesc_lock_destructor.exit

class_irqdesc_lock_destructor.exit:               ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__irq_do_set_handler(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge59.thread75, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %.not5187 = icmp eq ptr %i.a, null
  br i1 %.not5187, label %._crit_edge, label %.lr.ph, !prof !103

.lr.ph:                                           ; preds = %bb.b
  %.not53 = icmp eq i32 %2, 0
  br i1 %.not53, label %.lr.ph.split.us, label %.lr.ph.split, !prof !20

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.us
  %.04788.us = phi ptr [ %i.e, %.critedge.us ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.b = getelementptr i8, ptr %.04788.us, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %.not52.us = icmp eq ptr %i.c, @no_irq_chip
  br i1 %.not52.us, label %.critedge.us, label %.critedge59

.critedge.us:                                     ; preds = %.lr.ph.split.us
  %i.d = getelementptr i8, ptr %.04788.us, i64 40
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not51.us = icmp eq ptr %i.e, null
  br i1 %.not51.us, label %._crit_edge, label %.lr.ph.split.us, !prof !104, !llvm.loop !102

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %.not52 = icmp eq ptr %i.g, @no_irq_chip
  br i1 %.not52, label %bb.c, label %.critedge59.thread

bb.c:                                             ; preds = %.lr.ph.split
  tail call void asm sideeffect "539: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 539b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 539) #7, !srcloc !105
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 970, i32 2305, i64 16) #7, !srcloc !106
  tail call void asm sideeffect "540: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 540b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 540) #7, !srcloc !107
  br label %.critedge59.thread73

._crit_edge:                                      ; preds = %.critedge.us, %bb.b
  tail call void asm sideeffect "541: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 541b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 541) #7, !srcloc !108
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 976, i32 2305, i64 16) #7, !srcloc !109
  tail call void asm sideeffect "542: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 542b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 542) #7, !srcloc !110
  br label %.critedge59.thread73

.critedge59:                                      ; preds = %.lr.ph.split.us
  %i.h = icmp eq ptr %1, @handle_bad_irq
  br i1 %i.h, label %.critedge59.thread75, label %bb.l

.critedge59.thread:                               ; preds = %.lr.ph.split
  %i.i = icmp eq ptr %1, @handle_bad_irq
  br i1 %i.i, label %.critedge59.thread75, label %.thread100

.thread100:                                       ; preds = %.critedge59.thread
  %i.j = getelementptr i8, ptr %0, i64 104        ; 2 uses
  store ptr %1, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 440
  store ptr %3, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val60 = load ptr, ptr %i.l, align 8
  %.val60.val = load i32, ptr %.val60, align 8
  %i.m = and i32 %.val60.val, 15                  ; 2 uses
  %.not56 = icmp eq i32 %i.m, 0
  br i1 %.not56, label %bb.n, label %bb.m

.critedge59.thread75:                             ; preds = %.critedge59.thread, %bb.a, %.critedge59
  %i.n = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 5 uses
  %.not54 = icmp eq ptr %i.o, @no_irq_chip
  br i1 %.not54, label %mask_ack_irq.exit, label %bb.d

bb.d:                                             ; preds = %.critedge59.thread75
  %i.p = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.q = getelementptr i8, ptr %i.o, i64 56
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.r(ptr noundef %i.p) #8, !inline_history !5
  %i.s = getelementptr i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.s, align 8           ; 2 uses
  %i.t = load i32, ptr %.val.i, align 8
  %i.u = or i32 %i.t, 131072
  store i32 %i.u, ptr %.val.i, align 8
  br label %mask_ack_irq.exit

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val.i.i = load ptr, ptr %i.v, align 8
  %.val.val.i.i = load i32, ptr %.val.i.i, align 8
  %i.w = and i32 %.val.val.i.i, 131072
  %.not6.i.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i.i, label %bb.g, label %mask_irq.exit.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.o, i64 48
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %mask_irq.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.y(ptr noundef %i.p) #8, !inline_history !6
  %.val5.i.i = load ptr, ptr %i.v, align 8        ; 2 uses
  %i.z = load i32, ptr %.val5.i.i, align 8
  %i.aa = or i32 %i.z, 131072
  store i32 %i.aa, ptr %.val5.i.i, align 8
  %.pre.i = load ptr, ptr %i.n, align 8
  br label %mask_irq.exit.i

mask_irq.exit.i:                                  ; preds = %bb.h, %bb.g, %bb.f
  %i.ab = phi ptr [ %i.o, %bb.f ], [ %i.o, %bb.g ], [ %.pre.i, %bb.h ]
  %i.ac = getelementptr i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not9.i = icmp eq ptr %i.ad, null
  br i1 %.not9.i, label %mask_ack_irq.exit, label %bb.i

bb.i:                                             ; preds = %mask_irq.exit.i
  tail call void %i.ad(ptr noundef %i.p) #8, !inline_history !5
  br label %mask_ack_irq.exit

mask_ack_irq.exit:                                ; preds = %bb.i, %mask_irq.exit.i, %bb.e, %.critedge59.thread75
  %i.ae = getelementptr i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.af = load i32, ptr %.val, align 8
  %i.ag = or i32 %i.af, 65536
  store i32 %i.ag, ptr %.val, align 8
  %.not55 = icmp eq i32 %2, 0
  br i1 %.not55, label %.thread, label %bb.j

bb.j:                                             ; preds = %mask_ack_irq.exit
  %i.ah = getelementptr i8, ptr %0, i64 112
  store ptr null, ptr %i.ah, align 16
  %i.ai = getelementptr i8, ptr %0, i64 72
  %.val.i61 = load ptr, ptr %i.ai, align 8        ; 2 uses
  %.not.i.i62 = icmp eq ptr %.val.i61, null
  br i1 %.not.i.i62, label %.thread, label %irq_get_pm_device.exit.i

irq_get_pm_device.exit.i:                         ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %.val.i61, i64 112
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i63 = icmp eq ptr %i.ak, null
  br i1 %.not.i63, label %.thread, label %bb.k

bb.k:                                             ; preds = %irq_get_pm_device.exit.i
  %i.al = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %i.ak, i32 noundef 5) #8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %mask_ack_irq.exit, %bb.j, %irq_get_pm_device.exit.i, %bb.k
  %i.am = getelementptr i8, ptr %0, i64 128
  store i32 1, ptr %i.am, align 64
  %i.an = getelementptr i8, ptr %0, i64 104
  store ptr @handle_bad_irq, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %0, i64 440
  store ptr %3, ptr %i.ao, align 8
  br label %irq_activate_and_startup.exit

bb.l:                                             ; preds = %.critedge59
  %i.ap = getelementptr i8, ptr %0, i64 104
  store ptr %1, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %0, i64 440
  store ptr %3, ptr %i.aq, align 8
  br label %irq_activate_and_startup.exit

bb.m:                                             ; preds = %.thread100
  %i.ar = zext nneg i32 %i.m to i64
  %i.as = tail call i32 @__irq_set_trigger(ptr noundef %0, i64 noundef %i.ar) #8 ; 0 uses
  store ptr %1, ptr %i.j, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread100
  %i.at = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = or i32 %i.au, 68608
  store i32 %i.av, ptr %i.at, align 8
  %i.aw = getelementptr i8, ptr %0, i64 112
  store ptr @chained_action, ptr %i.aw, align 16
  %i.ax = getelementptr i8, ptr %0, i64 72
  %.val.i64 = load ptr, ptr %i.ax, align 8        ; 2 uses
  %.not.i.i65 = icmp eq ptr %.val.i64, null
  br i1 %.not.i.i65, label %irq_chip_pm_get.exit.thread, label %irq_get_pm_device.exit.i66

irq_get_pm_device.exit.i66:                       ; preds = %bb.n
  %i.ay = getelementptr i8, ptr %.val.i64, i64 112
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  %.not.i67 = icmp eq ptr %i.az, null
  br i1 %.not.i67, label %irq_chip_pm_get.exit.thread, label %bb.o

bb.o:                                             ; preds = %irq_get_pm_device.exit.i66
  %i.ba = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %i.az, i32 noundef 4) #8
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.p, label %irq_chip_pm_get.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr i8, ptr %i.az, i64 456    ; 3 uses
  %i.bd = load volatile i32, ptr %i.bc, align 4   ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %irq_chip_pm_get.exit.thread83, label %.lr.ph.i.i.i.i, !prof !44

.lr.ph.i.i.i.i:                                   ; preds = %bb.p, %arch_atomic_try_cmpxchg.exit.i.i.i.i
  %.04.i.i.i.i = phi i32 [ %i.bk, %arch_atomic_try_cmpxchg.exit.i.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = add i32 %.04.i.i.i.i, -1
  %i.bg = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bc, i32 range(i32 0, -1) %i.bf, ptr elementtype(i32) %i.bc, i32 %.04.i.i.i.i) #7, !srcloc !45 ; 2 uses
  %i.bh = extractvalue { i8, i32 } %i.bg, 0       ; 2 uses
  %i.bi = icmp ult i8 %i.bh, 2
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = trunc nuw i8 %i.bh to i1
  br i1 %i.bj, label %irq_chip_pm_get.exit.thread83, label %arch_atomic_try_cmpxchg.exit.i.i.i.i, !prof !20

arch_atomic_try_cmpxchg.exit.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i
  %i.bk = extractvalue { i8, i32 } %i.bg, 1       ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %irq_chip_pm_get.exit.thread83, label %.lr.ph.i.i.i.i, !prof !46

irq_chip_pm_get.exit.thread83:                    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i, %.lr.ph.i.i.i.i, %bb.p
  tail call void asm sideeffect "543: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 543b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 543) #7, !srcloc !111
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 1014, i32 2305, i64 16) #7, !srcloc !112
  tail call void asm sideeffect "544: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 544b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 544) #7, !srcloc !113
  br label %irq_chip_pm_get.exit.thread

irq_chip_pm_get.exit.thread:                      ; preds = %bb.o, %irq_get_pm_device.exit.i66, %bb.n, %irq_chip_pm_get.exit.thread83
  %.val.i.i68 = load ptr, ptr %i.l, align 8
  %.val.val.i.i69 = load i32, ptr %.val.i.i68, align 8
  %i.bm = and i32 %.val.val.i.i69, 2097152
  %.not.i.i70 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i70, label %irq_activate.exit.i, label %.critedge.i

irq_activate.exit.i:                              ; preds = %irq_chip_pm_get.exit.thread
  %i.bn = tail call i32 @irq_domain_activate_irq(ptr noundef nonnull %i.a, i1 noundef zeroext false) #8
  %.not.i72 = icmp eq i32 %i.bn, 0
  br i1 %.not.i72, label %.critedge.i, label %bb.q, !prof !21

bb.q:                                             ; preds = %irq_activate.exit.i
  tail call void asm sideeffect "515: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 515b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 515) #7, !srcloc !22
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 319, i32 2305, i64 16) #7, !srcloc !23
  tail call void asm sideeffect "516: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 516b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 516) #7, !srcloc !24
  br label %irq_activate_and_startup.exit

.critedge.i:                                      ; preds = %irq_activate.exit.i, %irq_chip_pm_get.exit.thread
  %i.bo = tail call i32 @irq_startup(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext true) #9 ; 0 uses
  br label %irq_activate_and_startup.exit

irq_activate_and_startup.exit:                    ; preds = %bb.l, %.critedge.i, %bb.q, %.thread
  tail call void @irq_proc_update_valid(ptr noundef %0) #8
  br label %.critedge59.thread73

.critedge59.thread73:                             ; preds = %._crit_edge, %bb.c, %irq_activate_and_startup.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @irq_set_chained_handler_and_data(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.class_irqdesc_lock_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.a, align 8, !alias.scope !116
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %i.b, i1 noundef zeroext true, i32 noundef 0) #8 ; 6 uses
  store ptr %i.c, ptr %3, align 8, !alias.scope !116
  %i.d = icmp ugt ptr %i.c, inttoptr (i64 -4096 to ptr)
  %.not5 = icmp eq ptr %i.c, null
  %.not = or i1 %i.d, %.not5
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.e, align 8
  call fastcc void @__irq_do_set_handler(ptr noundef nonnull %i.c, ptr noundef %1, i32 noundef 1, ptr noundef null) #9, !srcloc !117
  %.pr = load ptr, ptr %3, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.c, %bb.a ], [ %.pr, %bb.b ] ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %class_irqdesc_lock_destructor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %i.b, align 8
  %i.h = load i8, ptr %i.a, align 8, !range !17, !noundef !18
  %i.i = trunc nuw i8 %i.h to i1
  call void @__irq_put_desc_unlock(ptr noundef nonnull %i.f, i64 noundef %i.g, i1 noundef zeroext %i.i) #8
  br label %class_irqdesc_lock_destructor.exit

class_irqdesc_lock_destructor.exit:               ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @irq_set_chip_and_handler_name(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.class_irqdesc_lock_t, align 8 ; 7 uses
  %5 = alloca %struct.class_irqdesc_lock_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.c = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %i.b, i1 noundef zeroext false, i32 noundef 0) #8 ; 5 uses
  store ptr %i.c, ptr %5, align 8, !alias.scope !122
  %i.d = icmp ugt ptr %i.c, inttoptr (i64 -4096 to ptr)
  %.not.not8.i = icmp eq ptr %i.c, null
  %.not.not.i = or i1 %i.d, %.not.not8.i          ; 2 uses
  br i1 %.not.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not5.i = icmp eq ptr %1, null
  %.no_irq_chip.i = select i1 %.not5.i, ptr @no_irq_chip, ptr %1
  %i.e = getelementptr i8, ptr %i.c, i64 64
  store ptr %.no_irq_chip.i, ptr %i.e, align 8
  %.pr.i = load ptr, ptr %5, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.c, %bb.a ], [ %.pr.i, %bb.b ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %class_irqdesc_lock_destructor.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %i.b, align 8
  %i.h = load i8, ptr %i.a, align 8, !range !17, !noundef !18
  %i.i = trunc nuw i8 %i.h to i1
  call void @__irq_put_desc_unlock(ptr noundef nonnull %i.f, i64 noundef %i.g, i1 noundef zeroext %i.i) #8
  br label %class_irqdesc_lock_destructor.exit.i

class_irqdesc_lock_destructor.exit.i:             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br i1 %.not.not.i, label %irq_set_chip.exit, label %bb.e

bb.e:                                             ; preds = %class_irqdesc_lock_destructor.exit.i
  call void @irq_proc_update_chip(ptr noundef %1) #8
  br label %irq_set_chip.exit

irq_set_chip.exit:                                ; preds = %class_irqdesc_lock_destructor.exit.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.j, align 8, !alias.scope !123
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %i.k, i1 noundef zeroext true, i32 noundef 0) #8 ; 5 uses
  store ptr %i.l, ptr %4, align 8, !alias.scope !123
  %i.m = icmp ugt ptr %i.l, inttoptr (i64 -4096 to ptr)
  %.not4.i = icmp eq ptr %i.l, null
  %.not.i = or i1 %i.m, %.not4.i
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %irq_set_chip.exit
  call fastcc void @__irq_do_set_handler(ptr noundef nonnull %i.l, ptr noundef %2, i32 noundef 0, ptr noundef %3) #9, !srcloc !43
  %.pr.i4 = load ptr, ptr %4, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %irq_set_chip.exit
end_hunk_0
