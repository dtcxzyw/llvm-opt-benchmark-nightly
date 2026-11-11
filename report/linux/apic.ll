Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/apic?download=true
inline.NumInlined: 120
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lapic_suspend:bb.a
  %i.i = tail call i32 @__SCT__apic_call_read(i32 noundef 800) #16
  store i32 %i.i, ptr @apic_pm_state.6, align 4
  %i.j = icmp samesign ugt i32 %i.c, 3
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @__SCT__apic_call_read(i32 noundef 832) #16
  store i32 %i.k, ptr @apic_pm_state.7, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = tail call i32 @__SCT__apic_call_read(i32 noundef 848) #16
  store i32 %i.l, ptr @apic_pm_state.8, align 4
  %i.m = tail call i32 @__SCT__apic_call_read(i32 noundef 864) #16
  store i32 %i.m, ptr @apic_pm_state.9, align 4
  %i.n = tail call i32 @__SCT__apic_call_read(i32 noundef 880) #16
  store i32 %i.n, ptr @apic_pm_state.10, align 4
  %i.o = tail call i32 @__SCT__apic_call_read(i32 noundef 896) #16
  store i32 %i.o, ptr @apic_pm_state.11, align 4
  %i.p = tail call i32 @__SCT__apic_call_read(i32 noundef 992) #16
  store i32 %i.p, ptr @apic_pm_state.12, align 4
  %i.q = icmp samesign ugt i32 %i.c, 4
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i32 @__SCT__apic_call_read(i32 noundef 816) #16
  store i32 %i.r, ptr @apic_pm_state.13, align 4
  %.not = icmp eq i32 %i.c, 5
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @__SCT__apic_call_read(i32 noundef 752) #16
  store i32 %i.s, ptr @apic_pm_state.14, align 4
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.f, %bb.e
  %i.t = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !12
  tail call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !13
  tail call void @mask_ioapic_entries() #16
  %i.u = load i32, ptr @x2apic_mode, align 4
  %i.v = icmp ne i32 %i.u, 0
  %i.w = load i64, ptr @apic_mmio_base, align 8
  %i.x = icmp ne i64 %i.w, 0
  %i.y = select i1 %i.v, i1 true, i1 %i.x
  br i1 %i.y, label %bb.g, label %disable_local_APIC.exit

bb.g:                                             ; preds = %.thread
  %i.z = load ptr, ptr @apic, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i6 = icmp eq ptr %i.ab, null
  br i1 %.not.i6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.ab() #16, !inline_history !24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @clear_local_APIC() #20
  %i.ac = tail call i32 @__SCT__apic_call_read(i32 noundef 240) #16
  %i.ad = and i32 %i.ac, -257
  tail call void @__SCT__apic_call_write(i32 noundef 240, i32 noundef %i.ad) #16
  br label %disable_local_APIC.exit

disable_local_APIC.exit:                          ; preds = %.thread, %bb.i
  tail call void @irq_remapping_disable() #16
  %i.ae = and i64 %i.t, 512
  %.not.i5.not = icmp eq i64 %i.ae, 0
  br i1 %.not.i5.not, label %arch_local_irq_restore.exit, label %bb.j

bb.j:                                             ; preds = %disable_local_APIC.exit
  tail call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !14
  br label %arch_local_irq_restore.exit

arch_local_irq_restore.exit:                      ; preds = %bb.j, %disable_local_APIC.exit, %bb.a
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lapic_resume(ptr nofree readnone captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %.b15 = load i1, ptr @apic_pm_state.0, align 4
  br i1 %.b15, label %bb.b, label %arch_local_irq_restore.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !12
  tail call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !13
  tail call void @mask_ioapic_entries() #16
  %i.b = load ptr, ptr @legacy_pic, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d() #16
  %i.e = load i32, ptr @x2apic_mode, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 27, 2052) 27) #17, !srcloc !28 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1
  %i.i = shl i64 %i.h, 32
  %i.j = or i64 %i.i, %i.g                        ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_read_msr, i64 8), i1 false) #17
          to label %native_read_msr.exit.i [label %bb.d], !srcloc !27

bb.d:                                             ; preds = %bb.c
  tail call void @do_trace_read_msr(i32 noundef 27, i64 noundef %i.j, i32 noundef 0) #16
  br label %native_read_msr.exit.i

native_read_msr.exit.i:                           ; preds = %bb.d, %bb.c
  %i.k = and i64 %i.g, 1024
  %.not.i18 = icmp eq i64 %i.k, 0
  br i1 %.not.i18, label %bb.e, label %__x2apic_enable.exit

bb.e:                                             ; preds = %native_read_msr.exit.i
  %i.l = or disjoint i64 %i.j, 1024               ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = lshr i64 %i.j, 32
  %i.o = trunc nuw i64 %i.n to i32
  tail call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 27, i32 %i.m, i32 %i.o) #17, !srcloc !29
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_write_msr, i64 8), i1 false) #17
          to label %wrmsrq.exit.i [label %bb.f], !srcloc !27

bb.f:                                             ; preds = %bb.e
  tail call void @do_trace_write_msr(i32 noundef 27, i64 noundef %i.l, i32 noundef 0) #16
  br label %wrmsrq.exit.i

wrmsrq.exit.i:                                    ; preds = %bb.f, %bb.e
  %.b.i = load i1, ptr @__x2apic_enable.__already_done, align 1
  br i1 %.b.i, label %__x2apic_enable.exit, label %bb.g, !prof !30

bb.g:                                             ; preds = %wrmsrq.exit.i
  store i1 true, ptr @__x2apic_enable.__already_done, align 1
  %i.p = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.58) #18 ; 0 uses
  br label %__x2apic_enable.exit

bb.h:                                             ; preds = %bb.b
  %i.q = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 64), align 8
  %i.r = and i64 %i.q, 2097152
  %.not.i19 = icmp eq i64 %i.r, 0
  br i1 %.not.i19, label %x2apic_enabled.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call { i32, i64, i64 } asm sideeffect "1: rdmsr ; xor $0,$0\0A2:\0A\09 .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=11 \0A.purgem extable_type_reg\0A .popsection\0A", "=r,={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 27) #17, !srcloc !26 ; 3 uses
  %i.t = extractvalue { i32, i64, i64 } %i.s, 0   ; 2 uses
  %i.u = extractvalue { i32, i64, i64 } %i.s, 1   ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_read_msr, i64 8), i1 false) #17
          to label %x2apic_enabled.exit [label %bb.j], !srcloc !27

bb.j:                                             ; preds = %bb.i
  %i.v = extractvalue { i32, i64, i64 } %i.s, 2
  %i.w = shl i64 %i.v, 32
  %i.x = or i64 %i.w, %i.u                        ; 2 uses
  tail call void @do_trace_read_msr(i32 noundef 27, i64 noundef %i.x, i32 noundef %i.t) #16
  br label %x2apic_enabled.exit

x2apic_enabled.exit:                              ; preds = %bb.i, %bb.j
  %.pre-phi12.i.i.i.i = phi i64 [ %i.x, %bb.j ], [ %i.u, %bb.i ]
  %.not.i.i = icmp ne i32 %i.t, 0
  %i.y = and i64 %.pre-phi12.i.i.i.i, 1024
  %i.z = icmp eq i64 %i.y, 0
  %.0.i.i.not = select i1 %.not.i.i, i1 true, i1 %i.z
  br i1 %.0.i.i.not, label %x2apic_enabled.exit.thread, label %bb.k

bb.k:                                             ; preds = %x2apic_enabled.exit
  %.b = load i1, ptr @lapic_resume.__already_done, align 1
  br i1 %.b, label %.critedge, label %bb.l, !prof !30

bb.l:                                             ; preds = %bb.k
  store i1 true, ptr @lapic_resume.__already_done, align 1
  %i.aa = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.80) #18 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.l
  tail call fastcc void @__x2apic_disable() #20, !srcloc !140
  br label %x2apic_enabled.exit.thread

x2apic_enabled.exit.thread:                       ; preds = %bb.h, %.critedge, %x2apic_enabled.exit
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 1), align 1
  %i.ac = icmp ugt i8 %i.ab, 5
  br i1 %i.ac, label %bb.m, label %__x2apic_enable.exit

bb.m:                                             ; preds = %x2apic_enabled.exit.thread
  %i.ad = tail call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 27, 2052) 27) #17, !srcloc !28 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0      ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ad, 1
  %i.ag = shl i64 %i.af, 32
  %i.ah = or i64 %i.ag, %i.ae                     ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_read_msr, i64 8), i1 false) #17
          to label %native_read_msr.exit [label %bb.n], !srcloc !27

bb.n:                                             ; preds = %bb.m
  tail call void @do_trace_read_msr(i32 noundef 27, i64 noundef %i.ah, i32 noundef 0) #16
  br label %native_read_msr.exit

native_read_msr.exit:                             ; preds = %bb.m, %bb.n
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = trunc nuw i64 %i.ai to i32
  %i.ak = and i64 %i.ae, 2047
  %i.al = load i64, ptr @mp_lapic_addr, align 8
  %i.am = or i64 %i.al, %i.ak
  %1 = trunc i64 %i.am to i32
  %2 = or i32 %1, 2048                            ; 2 uses
  tail call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 27, i32 %2, i32 %i.aj) #17, !srcloc !29
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_write_msr, i64 8), i1 false) #17
          to label %__x2apic_enable.exit [label %bb.o], !srcloc !27

bb.o:                                             ; preds = %native_read_msr.exit
  %3 = zext i32 %2 to i64
  %i.an = and i64 %i.ah, -4294967296
  %i.ao = or disjoint i64 %i.an, %3
  tail call void @do_trace_write_msr(i32 noundef 27, i64 noundef %i.ao, i32 noundef 0) #16
  br label %__x2apic_enable.exit

__x2apic_enable.exit:                             ; preds = %bb.o, %native_read_msr.exit, %bb.g, %wrmsrq.exit.i, %native_read_msr.exit.i, %x2apic_enabled.exit.thread
  %i.ap = tail call i32 @__SCT__apic_call_read(i32 noundef 48) #16
  %i.aq = lshr i32 %i.ap, 16
  %i.ar = and i32 %i.aq, 255                      ; 3 uses
  tail call void @__SCT__apic_call_write(i32 noundef 880, i32 noundef 65790) #16
  %i.as = load i32, ptr @apic_pm_state.1, align 4
  tail call void @__SCT__apic_call_write(i32 noundef 32, i32 noundef %i.as) #16
  %i.at = load i32, ptr @apic_pm_state.4, align 4
  tail call void @__SCT__apic_call_write(i32 noundef 224, i32 noundef %i.at) #16
  %i.au = load i32, ptr @apic_pm_state.3, align 4
  tail call void @__SCT__apic_call_write(i32 noundef 208, i32 noundef %i.au) #16
  %i.av = load i32, ptr @apic_pm_state.2, align 4
  tail call void @__SCT__apic_call_write(i32 noundef 128, i32 noundef %i.av) #16
  %i.aw = load i32, ptr @apic_pm_state.5, align 4
  tail call void @__SCT__apic_call_write(i32 noundef 240, i32 noundef %i.aw) #16
  %i.ax = load i32, ptr @apic_pm_state.8, align 4
  tail call void @__SCT__apic_call_write(i32 noundef 848, i32 noundef %i.ax) #16
  %i.ay = load i32, ptr @apic_pm_state.9, align 4
  tail call void @__SCT__apic_call_write(i32 noundef 864, i32 noundef %i.ay) #16
  %i.az = icmp samesign ugt i32 %i.ar, 4
  br i1 %i.az, label %bb.p, label %bb.r

bb.p:                                             ; preds = %__x2apic_enable.exit
  %i.ba = load i32, ptr @apic_pm_state.13, align 4
  tail call void @__SCT__apic_call_write(i32 noundef 816, i32 noundef %i.ba) #16
  %.not23 = icmp eq i32 %i.ar, 5
  br i1 %.not23, label %.thread21, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = load i32, ptr @apic_pm_state.14, align 4
  tail call void @__SCT__apic_call_write(i32 noundef 752, i32 noundef %i.bb) #16
  br label %.thread21

bb.r:                                             ; preds = %__x2apic_enable.exit
  %i.bc = icmp eq i32 %i.ar, 4
  br i1 %i.bc, label %.thread21, label %bb.s

.thread21:                                        ; preds = %bb.p, %bb.q, %bb.r
  %i.bd = load i32, ptr @apic_pm_state.7, align 4
  tail call void @__SCT__apic_call_write(i32 noundef 832, i32 noundef %i.bd) #16
  br label %bb.s

bb.s:                                             ; preds = %.thread21, %bb.r
  %i.be = load i32, ptr @apic_pm_state.6, align 4
  tail call void @__SCT__apic_call_write(i32 noundef 800, i32 noundef %i.be) #16
  %i.bf = load i32, ptr @apic_pm_state.12, align 4
  tail call void @__SCT__apic_call_write(i32 noundef 992, i32 noundef %i.bf) #16
  %i.bg = load i32, ptr @apic_pm_state.11, align 4
  tail call void @__SCT__apic_call_write(i32 noundef 896, i32 noundef %i.bg) #16
  tail call void @__SCT__apic_call_write(i32 noundef 640, i32 noundef 0) #16
  %i.bh = tail call i32 @__SCT__apic_call_read(i32 noundef 640) #16 ; 0 uses
  %i.bi = load i32, ptr @apic_pm_state.10, align 4
  tail call void @__SCT__apic_call_write(i32 noundef 880, i32 noundef %i.bi) #16
  tail call void @__SCT__apic_call_write(i32 noundef 640, i32 noundef 0) #16
  %i.bj = tail call i32 @__SCT__apic_call_read(i32 noundef 640) #16 ; 0 uses
  %i.bk = load i32, ptr @x2apic_mode, align 4
  %i.bl = tail call i32 @irq_remapping_reenable(i32 noundef %i.bk) #16 ; 0 uses
  %i.bm = and i64 %i.a, 512
  %.not.i17.not = icmp eq i64 %i.bm, 0
  br i1 %.not.i17.not, label %arch_local_irq_restore.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !14
  br label %arch_local_irq_restore.exit

arch_local_irq_restore.exit:                      ; preds = %bb.t, %bb.s, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @irq_remapping_disable() local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @irq_remapping_reenable(i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dmi_check_system(ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @set_multi(ptr nofree noundef readonly captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %.b = load i1, ptr @multi, align 4
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.82, ptr noundef %i.b) #18 ; 0 uses
  store i1 true, ptr @multi, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @insert_resource(ptr noundef, ptr noundef) local_unnamed_addr #5

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong memory(readwrite, argmem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #12 = { cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold noredzone noreturn null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone nounwind "no-builtin-wcslen" }
attributes #17 = { nounwind }
attributes #18 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #19 = { nounwind memory(read) }
attributes #20 = { noredzone "no-builtin-wcslen" }
attributes #21 = { cold noredzone "no-builtin-wcslen" }
attributes #22 = { cold noredzone noreturn nounwind "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!1}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null}
!1 = !{!"rsp"}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 8, !"cf-protection-branch", i32 1}
!4 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6 = !{i32 1, !"Code Model", i32 2}
!7 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!8 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{i32 4, !"SkipRaxSetup", i32 1}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{i64 1288350, i64 1288371}
!13 = !{i64 1288562}
!14 = !{i64 1288654}
!15 = !{i8 0, i8 2}
!16 = !{i64 4010107}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{i64 2162223379}
!19 = !{i64 2162220958}
!20 = !{i64 2162227834}
!21 = !{i64 2162237857}
!22 = !{i64 2162231860, i64 2162231894, i64 2162238257, i64 2162238284, i64 2162238312, i64 2162238339, i64 2162238436, i64 2162231965}
!23 = !{i64 2162240216}
!24 = !{ptr @disable_local_APIC}
!25 = !{}
!26 = !{i64 4015521, i64 4015562, i64 4015566, i64 2151528830, i64 2151528855, i64 2151528890, i64 2151529138, i64 2151529191, i64 2151529222, i64 2151529253, i64 2151529331, i64 2151529365, i64 2151529403, i64 2151529446, i64 2151529469, i64 2151529507, i64 2151529529, i64 2151529560, i64 2151529645, i64 2151529679, i64 2151529717, i64 2151529760, i64 2151529783, i64 2151529821, i64 2151529843, i64 2151529877, i64 2151529939, i64 2151529962, i64 2151528956, i64 2151530036, i64 2151529067}
!27 = !{i64 2148810438, i64 2148810478, i64 2148810595, i64 2148810616, i64 2148810659, i64 2148810674, i64 2148810707, i64 2148810741, i64 2148810765}
!28 = !{i64 4014444, i64 4014465, i64 2151526617, i64 2151526712, i64 2151526735, i64 2151526768, i64 2151526799, i64 2151526838}
!29 = !{i64 4014682, i64 4014703, i64 2151527198, i64 2151527293, i64 2151527316, i64 2151527349, i64 2151527380, i64 2151527419}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{i64 2162337646}
!32 = !{i64 2162335219}
!33 = !{i64 2162342101}
!34 = !{i64 2162352127}
!35 = !{i64 2162346130, i64 2162346164, i64 2162352527, i64 2162352554, i64 2162352582, i64 2162352609, i64 2162352706, i64 2162346235}
!36 = !{i64 2162354489}
!37 = !{i64 2162369637}
!38 = !{i64 2162367226}
!39 = !{i64 2162374092}
!40 = !{i64 2162384110}
!41 = !{i64 2162378113, i64 2162378147, i64 2162384510, i64 2162384537, i64 2162384565, i64 2162384592, i64 2162384689, i64 2162378218}
!42 = !{i64 2162386464}
!43 = !{i64 7680}
!44 = !{i64 2148602982}
!45 = !{i64 2151900764}
!46 = !{i64 2151904066}
!47 = !{i64 2151904488}
!48 = !{i64 2151916270}
!49 = !{i64 2149005071, i64 2149005110, i64 2149005131, i64 2149005168, i64 2149005191, i64 2149005200}
!50 = !{!"branch_weights", i32 1999, i32 1}
!51 = !{!"branch_weights", i32 1, i32 0}
!52 = !{i64 2161887548}
!53 = !{i64 2161892702}
!54 = !{i64 2162164527}
!55 = !{i64 2162169347}
!56 = !{i64 26314}
!57 = !{i64 26357}
!58 = !{i64 26446}
!59 = !{i64 26712}
!60 = distinct !{null}
!61 = !{i64 2162142656}
!62 = !{i64 2162147476}
!63 = !{i64 2162153448}
!64 = !{i64 2162158604}
!65 = !{i64 2162162454}
!66 = distinct !{!66, !17}
!67 = distinct !{!67, !17}
end_hunk_0
