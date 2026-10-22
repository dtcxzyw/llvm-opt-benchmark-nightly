Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/xstate?download=true
inline.NumInlined: 136
inline.NumDeleted: 68
begin_hunk_0_@__xfd_enable_feature:bb.a
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call i32 @__SCT__tp_func_x86_fpu_regs_activated(ptr noundef %i.bo, ptr noundef %i.au) #16 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !124
  %i.bq = getelementptr i8, ptr %i.bl, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bq, ptr elementtype(i64) %i.bq) #15, !srcloc !125
  br label %fpregs_activate.exit.i.i

fpregs_activate.exit.i.i:                         ; preds = %bb.o, %cpumask_test_cpu.exit.i.i.i.i.i, %fpregs_state_valid.exit.thread.i.i
  store i32 %i.av, ptr %i.au, align 64
  br label %bb.p

bb.p:                                             ; preds = %fpregs_activate.exit.i.i, %fpregs_state_valid.exit.i.i
  %i.br = getelementptr i8, ptr %i.d, i64 2       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.br, i32 -9, ptr elementtype(i8) %i.br) #15, !srcloc !126
  br label %fpregs_restore_userregs.exit.i

fpregs_restore_userregs.exit.i:                   ; preds = %bb.p, %bb.l, %test_ti_thread_flag.exit.i, %bb.j
  %i.bs = getelementptr i8, ptr %i.af, i64 8
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = or i64 %i.bt, 262144
  %i.bv = getelementptr i8, ptr %i.y, i64 8
  store i64 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr i8, ptr %i.af, i64 16
  %i.bx = load i64, ptr %i.bw, align 16
  %i.by = or i64 %i.bx, 262144
  %i.bz = getelementptr i8, ptr %i.y, i64 16
  store i64 %i.by, ptr %i.bz, align 16
  %i.ca = getelementptr i8, ptr %i.af, i64 24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = and i64 %i.cb, -262145
  %i.cd = getelementptr i8, ptr %i.y, i64 24      ; 2 uses
  store i64 %i.cc, ptr %i.cd, align 8
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 234, i32 4, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 77)) #15
          to label %bb.q [label %bb.q, label %xstate_init_xcomp_bv.exit.i], !srcloc !20

bb.q:                                             ; preds = %fpregs_restore_userregs.exit.i, %fpregs_restore_userregs.exit.i
  %i.ce = or i64 %i.bt, -9223372036854513664
  %i.cf = getelementptr i8, ptr %i.y, i64 584
  store i64 %i.ce, ptr %i.cf, align 8
  br label %xstate_init_xcomp_bv.exit.i

xstate_init_xcomp_bv.exit.i:                      ; preds = %bb.q, %fpregs_restore_userregs.exit.i
  br i1 %.not28, label %bb.s, label %bb.r

bb.r:                                             ; preds = %xstate_init_xcomp_bv.exit.i
  store ptr %i.y, ptr %i.ad, align 8
  br i1 %i.ah, label %.thread.i, label %.critedge.i

.thread.i:                                        ; preds = %bb.r
  store ptr %i.y, ptr %i.ae, align 16
  br label %bb.t

bb.s:                                             ; preds = %xstate_init_xcomp_bv.exit.i
  store ptr %i.y, ptr %i.ae, align 16
  br i1 %i.ah, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %bb.s, %.thread.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr @__fpu_state_size_dynamic, i1 false) #15
          to label %.critedge.i [label %bb.u], !srcloc !22

bb.u:                                             ; preds = %bb.t
  %i.cg = load i64, ptr %i.cd, align 8            ; 5 uses
  %i.ch = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @xfd_state) #20, !srcloc !127
  %.not.i59.i = icmp eq i64 %i.ch, %i.cg
  br i1 %.not.i59.i, label %.critedge.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = trunc i64 %i.cg to i32
  %i.cj = lshr i64 %i.cg, 32
  %i.ck = trunc nuw i64 %i.cj to i32
  tail call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 452, 3489) 452, i32 %i.ci, i32 %i.ck) #15, !srcloc !21
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_write_msr, i64 8), i1 false) #15
          to label %xfd_set_state.exit.i.i [label %bb.w], !srcloc !22

bb.w:                                             ; preds = %bb.v
  tail call void @do_trace_write_msr(i32 noundef range(i32 452, 3489) 452, i64 noundef %i.cg, i32 noundef 0) #16
  br label %xfd_set_state.exit.i.i

xfd_set_state.exit.i.i:                           ; preds = %bb.w, %bb.v
  tail call void asm "movq $1, %gs:$0", "=*m,re,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @xfd_state, i64 %i.cg) #15, !srcloc !23
  br label %.critedge.i

.critedge.i:                                      ; preds = %xfd_set_state.exit.i.i, %bb.u, %bb.t, %bb.s, %bb.r
  tail call void @__local_bh_enable_ip(i64 noundef %i.ar, i32 noundef 512) #16
  %.not57.i = icmp eq ptr %i.af, null
  br i1 %.not57.i, label %.critedge, label %bb.x

bb.x:                                             ; preds = %.critedge.i
  %i.cl = getelementptr i8, ptr %i.af, i64 32
  %i.cm = load i8, ptr %i.cl, align 32
  %i.cn = and i8 %i.cm, 1
  %.not58.i = icmp eq i8 %i.cn, 0
  br i1 %.not58.i, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @vfree(ptr noundef nonnull %i.af) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.y, %bb.x, %.critedge.i, %bb.b, %bb.c, %bb.d, %bb.f
  %.0 = phi i32 [ -1, %bb.f ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ -14, %bb.g ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %.critedge.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -14, 1) i32 @xfd_enable_feature(i64 noundef %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @__xfd_enable_feature(i64 noundef %0, ptr noundef null) #18
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @xstate_get_guest_group_perm() local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #14, !srcloc !31
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 1592
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @x86_task_fpu(ptr noundef %i.d) #16
  %i.f = getelementptr i8, ptr %i.e, i64 48
  %i.g = load volatile i64, ptr %i.f, align 8
  ret i64 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @fpu_xstate_prctl(i32 noundef %0, i64 noundef %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 3 uses
  switch i32 %0, label %xstate_request_perm.exit [
    i32 4129, label %bb.b
    i32 4130, label %bb.c
    i32 4132, label %bb.d
    i32 4133, label %bb.e
    i32 4131, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @fpu_user_cfg, i64 8), align 8
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @fpu_user_cfg, i64 24), align 8
  %i.d = or i64 %i.c, %i.b
  %i.e = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.f = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.a, i64 %i.d, i64 8, i64 %i.e) #15, !srcloc !129 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  %i.i = ptrtoint ptr %i.g to i64
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.h)
  %i.j = shl i64 %i.i, 32
  %i.k = ashr exact i64 %i.j, 32
  br label %xstate_request_perm.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #14, !srcloc !31
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 1592
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr @x86_task_fpu(ptr noundef %i.o) #16
  %i.q = getelementptr i8, ptr %i.p, i64 32
  %i.r = load volatile i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, 918271
  %i.t = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.u = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.a, i64 %i.s, i64 8, i64 %i.t) #15, !srcloc !130 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0
  %i.w = extractvalue { ptr, i64 } %i.u, 1
  %i.x = ptrtoint ptr %i.v to i64
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.w)
  %i.y = shl i64 %i.x, 32
  %i.z = ashr exact i64 %i.y, 32
  br label %xstate_request_perm.exit

bb.d:                                             ; preds = %bb.a
  %i.aa = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #14, !srcloc !31
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr i8, ptr %i.ab, i64 1592
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call ptr @x86_task_fpu(ptr noundef %i.ad) #16
  %i.af = getelementptr i8, ptr %i.ae, i64 48
  %i.ag = load volatile i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, 918271
  %i.ai = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.aj = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.a, i64 %i.ah, i64 8, i64 %i.ai) #15, !srcloc !131 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = ptrtoint ptr %i.ak to i64
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.al)
  %i.an = shl i64 %i.am, 32
  %i.ao = ashr exact i64 %i.an, 32
  br label %xstate_request_perm.exit

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.034 = phi i1 [ true, %bb.e ], [ false, %bb.a ] ; 3 uses
  %i.ap = icmp ugt i64 %1, 19
  br i1 %i.ap, label %xstate_request_perm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = tail call i64 asm sideeffect "cmp $1,$2; sbb $0,$0", "=r,ir,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 20, i64 %1) #15, !srcloc !132
  %i.ar = and i64 %i.aq, %1                       ; 2 uses
  %i.as = getelementptr [8 x i8], ptr @xstate_prctl_req, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8            ; 7 uses
  %.not.i.a = icmp eq i64 %i.ar, 18
  br i1 %.not.i.a, label %bb.h, label %xstate_request_perm.exit

bb.h:                                             ; preds = %bb.g
  %i.au = load i64, ptr getelementptr inbounds nuw (i8, ptr @fpu_user_cfg, i64 8), align 8
  %i.av = and i64 %i.au, %i.at
  %.not30.i.a = icmp eq i64 %i.av, %i.at
  br i1 %.not30.i.a, label %bb.i, label %xstate_request_perm.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #14, !srcloc !31
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 1592   ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call ptr @x86_task_fpu(ptr noundef %i.az) #16
  %.v.i.i = select i1 %.034, i64 48, i64 32       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 %.v.i.i
  %i.bc = load volatile i64, ptr %i.bb, align 8
  %i.bd = and i64 %i.bc, %i.at
  %i.be = icmp eq i64 %i.bd, %i.at
  br i1 %i.be, label %xstate_request_perm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr i8, ptr %i.ax, i64 2104   ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %i.bg) #16
  %i.bh = load ptr, ptr %i.ay, align 8
  %i.bi = tail call ptr @x86_task_fpu(ptr noundef %i.bh) #16
  %i.bj = getelementptr i8, ptr %i.bi, i64 %.v.i.i
  %i.bk = load volatile i64, ptr %i.bj, align 8   ; 3 uses
  %.not31.i = icmp slt i64 %i.bk, 0
  %or.cond.not.i = select i1 %.034, i1 %.not31.i, i1 false
  br i1 %or.cond.not.i, label %__xstate_request_perm.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 234, i32 4, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 77)) #15
          to label %_static_cpu_has.exit.i.i [label %_static_cpu_has.exit.i.i, label %bb.l], !srcloc !20

bb.l:                                             ; preds = %bb.k
  br label %_static_cpu_has.exit.i.i

_static_cpu_has.exit.i.i:                         ; preds = %bb.l, %bb.k, %bb.k
  %.0.i.i.i = phi i1 [ false, %bb.l ], [ true, %bb.k ], [ true, %bb.k ]
  %i.bl = load ptr, ptr %i.ay, align 8
  %i.bm = tail call ptr @x86_task_fpu(ptr noundef %i.bl) #16
  %i.bn = and i64 %i.bk, %i.at
  %i.bo = icmp eq i64 %i.bn, %i.at
  br i1 %i.bo, label %__xstate_request_perm.exit.i, label %fls64.exit.i.i.i

fls64.exit.i.i.i:                                 ; preds = %_static_cpu_has.exit.i.i
  %i.bp = or i64 %i.bk, %i.at                     ; 5 uses
  %i.bq = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bp, i32 -1) #14, !srcloc !16 ; 11 uses
  %i.br = icmp ult i32 %i.bq, 2
  br i1 %i.br, label %xstate_calculate_size.exit.i.i, label %bb.m

bb.m:                                             ; preds = %fls64.exit.i.i.i
  br i1 %.0.i.i.i, label %bb.n, label %.preheader.i.preheader.i.i

.preheader.i.preheader.i.i:                       ; preds = %bb.m
  %i.bs = load i32, ptr @xfeature_uncompact_order, align 16 ; 2 uses
  %.not7.i.i60.i.i = icmp eq i32 %i.bs, -1
  br i1 %.not7.i.i60.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.preheader.i.i

bb.n:                                             ; preds = %bb.m
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 234, i32 4, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 77)) #15
          to label %_static_cpu_has.exit.i.i.i.i [label %_static_cpu_has.exit.i.i.i.i, label %_static_cpu_has.exit.thread.i.i.i.i], !srcloc !20

_static_cpu_has.exit.i.i.i.i:                     ; preds = %bb.n, %bb.n
  %i.bt = icmp sgt i32 %i.bq, 1
  br i1 %i.bt, label %.preheader.i.i.i.i, label %_static_cpu_has.exit.thread.i.i.i.i

_static_cpu_has.exit.thread.i.i.i.i:              ; preds = %_static_cpu_has.exit.i.i.i.i, %bb.n
  %i.bu = sext i32 %i.bq to i64
  br label %xfeature_get_offset.exit.sink.split.i.i.i

.preheader.i.i.i.i:                               ; preds = %_static_cpu_has.exit.i.i.i.i, %bb.p
  %i.bv = phi i64 [ %i.cn, %bb.p ], [ 2, %_static_cpu_has.exit.i.i.i.i ]
  %.01424.i.i.i.i = phi i32 [ %i.cl, %bb.p ], [ 576, %_static_cpu_has.exit.i.i.i.i ] ; 4 uses
  %i.bw = shl nsw i64 -1, %i.bv
  %i.bx = and i64 %i.bw, %i.bp                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i.i, label %xfeature_get_offset.exit.i.i.i, label %find_next_bit.exit.i.i.i.i

find_next_bit.exit.i.i.i.i:                       ; preds = %.preheader.i.i.i.i
  %i.by = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.bx) #14, !srcloc !29 ; 4 uses
  %i.bz = and i64 %i.by, 4294967295               ; 2 uses
  %i.ca = icmp samesign ult i64 %i.bz, 64
  br i1 %i.ca, label %bb.o, label %xfeature_get_offset.exit.i.i.i

bb.o:                                             ; preds = %find_next_bit.exit.i.i.i.i
  %i.cb = trunc i64 %i.by to i32
  %sext.i.i.i.i = shl i64 %i.by, 32
  %i.cc = ashr exact i64 %sext.i.i.i.i, 30
  %i.cd = getelementptr i8, ptr @xstate_flags, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = and i32 %i.ce, 2
  %.not.i.i.i.i = icmp eq i32 %i.cf, 0
  %i.cg = add i32 %.01424.i.i.i.i, 63
  %i.ch = and i32 %i.cg, -64
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, i32 %.01424.i.i.i.i, i32 %i.ch ; 2 uses
  %i.ci = icmp eq i32 %i.bq, %i.cb
  br i1 %i.ci, label %xfeature_get_offset.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = getelementptr [4 x i8], ptr @xstate_sizes, i64 %i.bz
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = add i32 %i.ck, %.1.i.i.i.i              ; 2 uses
  %i.cm = add i64 %i.by, 1
  %i.cn = and i64 %i.cm, 4294967295               ; 2 uses
  %i.co = icmp samesign ugt i64 %i.cn, 63
  br i1 %i.co, label %xfeature_get_offset.exit.i.i.i, label %.preheader.i.i.i.i, !prof !30, !llvm.loop !0

.lr.ph.i.i.preheader.i.i:                         ; preds = %.preheader.i.preheader.i.i, %next_xfeature_order.exit.i.i.i
  %i.cp = phi i32 [ %i.cw, %next_xfeature_order.exit.i.i.i ], [ %i.bs, %.preheader.i.preheader.i.i ]
  %.0.i2562.i.i = phi i32 [ %i.ct, %next_xfeature_order.exit.i.i.i ], [ 0, %.preheader.i.preheader.i.i ]
  %.015.i61.i.i = phi i32 [ %.pre20.pre.i.i.i, %next_xfeature_order.exit.i.i.i ], [ %i.bq, %.preheader.i.preheader.i.i ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %.lr.ph.i.i.preheader.i.i
  %.pre20.pre.i.i.i = phi i32 [ %i.cw, %bb.q ], [ %i.cp, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %.08.i.i.i.i = phi i32 [ %i.ct, %bb.q ], [ %.0.i2562.i.i, %.lr.ph.i.i.preheader.i.i ]
  %i.cq = zext nneg i32 %.pre20.pre.i.i.i to i64
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = and i64 %i.cr, %i.bp
  %.not6.i.i.i.i = icmp eq i64 %i.cs, 0
  %i.ct = add i32 %.08.i.i.i.i, 1                 ; 3 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr [4 x i8], ptr @xfeature_uncompact_order, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4            ; 3 uses
  %.not.i19.i.i.i = icmp eq i32 %i.cw, -1         ; 2 uses
  br i1 %.not6.i.i.i.i, label %bb.q, label %next_xfeature_order.exit.i.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  br i1 %.not.i19.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

next_xfeature_order.exit.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  br i1 %.not.i19.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !2

.loopexit.i.i.i:                                  ; preds = %next_xfeature_order.exit.i.i.i, %bb.q, %.preheader.i.preheader.i.i
  %.015.i59.i.i = phi i32 [ %.015.i61.i.i, %bb.q ], [ %i.bq, %.preheader.i.preheader.i.i ], [ %.pre20.pre.i.i.i, %next_xfeature_order.exit.i.i.i ] ; 2 uses
  %i.cx = zext i32 %.015.i59.i.i to i64
  br label %xfeature_get_offset.exit.sink.split.i.i.i

xfeature_get_offset.exit.sink.split.i.i.i:        ; preds = %.loopexit.i.i.i, %_static_cpu_has.exit.thread.i.i.i.i
  %.sink35.i.i.i = phi i64 [ %i.bu, %_static_cpu_has.exit.thread.i.i.i.i ], [ %i.cx, %.loopexit.i.i.i ]
  %.1.ph.i.i.i = phi i32 [ %i.bq, %_static_cpu_has.exit.thread.i.i.i.i ], [ %.015.i59.i.i, %.loopexit.i.i.i ]
  %i.cy = getelementptr [4 x i8], ptr @xstate_offsets, i64 %.sink35.i.i.i
  %i.cz = load i32, ptr %i.cy, align 4
  br label %xfeature_get_offset.exit.i.i.i

xfeature_get_offset.exit.i.i.i:                   ; preds = %bb.p, %bb.o, %find_next_bit.exit.i.i.i.i, %.preheader.i.i.i.i, %xfeature_get_offset.exit.sink.split.i.i.i
  %.1.i.i.i = phi i32 [ %.1.ph.i.i.i, %xfeature_get_offset.exit.sink.split.i.i.i ], [ %i.bq, %.preheader.i.i.i.i ], [ %i.bq, %find_next_bit.exit.i.i.i.i ], [ %i.bq, %bb.o ], [ %i.bq, %bb.p ]
  %.014.i.i.i = phi i32 [ %i.cz, %xfeature_get_offset.exit.sink.split.i.i.i ], [ %i.cl, %bb.p ], [ %.1.i.i.i.i, %bb.o ], [ %.01424.i.i.i.i, %find_next_bit.exit.i.i.i.i ], [ %.01424.i.i.i.i, %.preheader.i.i.i.i ]
  %i.da = zext i32 %.1.i.i.i to i64
  %i.db = getelementptr [4 x i8], ptr @xstate_sizes, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = add i32 %i.dc, %.014.i.i.i
  br label %xstate_calculate_size.exit.i.i

xstate_calculate_size.exit.i.i:                   ; preds = %xfeature_get_offset.exit.i.i.i, %fls64.exit.i.i.i
  %.016.i.i.i = phi i32 [ %i.dd, %xfeature_get_offset.exit.i.i.i ], [ 576, %fls64.exit.i.i.i ]
  %i.de = and i64 %i.bp, 918271                   ; 2 uses
  %i.df = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.de, i32 -1) #14, !srcloc !16 ; 3 uses
  %i.dg = icmp ult i32 %i.df, 2
  br i1 %i.dg, label %xstate_calculate_size.exit46.i.i, label %.preheader.i28.preheader.i.i

.preheader.i28.preheader.i.i:                     ; preds = %xstate_calculate_size.exit.i.i
  %i.dh = load i32, ptr @xfeature_uncompact_order, align 16 ; 2 uses
  %.not7.i.i3163.i.i = icmp eq i32 %i.dh, -1
  br i1 %.not7.i.i3163.i.i, label %.loopexit.i38.i.i, label %.lr.ph.i.i32.preheader.i.i

.lr.ph.i.i32.preheader.i.i:                       ; preds = %.preheader.i28.preheader.i.i, %next_xfeature_order.exit.i36.i.i
  %i.di = phi i32 [ %i.dp, %next_xfeature_order.exit.i36.i.i ], [ %i.dh, %.preheader.i28.preheader.i.i ]
  %.0.i3065.i.i = phi i32 [ %i.dm, %next_xfeature_order.exit.i36.i.i ], [ 0, %.preheader.i28.preheader.i.i ]
  %.015.i2964.i.i = phi i32 [ %.pre20.pre.i33.i.i, %next_xfeature_order.exit.i36.i.i ], [ %i.df, %.preheader.i28.preheader.i.i ]
  br label %.lr.ph.i.i32.i.i

.lr.ph.i.i32.i.i:                                 ; preds = %bb.r, %.lr.ph.i.i32.preheader.i.i
  %.pre20.pre.i33.i.i = phi i32 [ %i.dp, %bb.r ], [ %i.di, %.lr.ph.i.i32.preheader.i.i ] ; 3 uses
  %.08.i.i34.i.i = phi i32 [ %i.dm, %bb.r ], [ %.0.i3065.i.i, %.lr.ph.i.i32.preheader.i.i ]
  %i.dj = zext nneg i32 %.pre20.pre.i33.i.i to i64
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.dk, %i.de
  %.not6.i.i35.i.i = icmp eq i64 %i.dl, 0
  %i.dm = add i32 %.08.i.i34.i.i, 1               ; 3 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr [4 x i8], ptr @xfeature_uncompact_order, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4            ; 3 uses
  %.not.i19.i37.i.i = icmp eq i32 %i.dp, -1       ; 2 uses
  br i1 %.not6.i.i35.i.i, label %bb.r, label %next_xfeature_order.exit.i36.i.i

bb.r:                                             ; preds = %.lr.ph.i.i32.i.i
  br i1 %.not.i19.i37.i.i, label %.loopexit.i38.i.i, label %.lr.ph.i.i32.i.i, !llvm.loop !1

next_xfeature_order.exit.i36.i.i:                 ; preds = %.lr.ph.i.i32.i.i
  br i1 %.not.i19.i37.i.i, label %.loopexit.i38.i.i, label %.lr.ph.i.i32.preheader.i.i, !llvm.loop !2

.loopexit.i38.i.i:                                ; preds = %next_xfeature_order.exit.i36.i.i, %bb.r, %.preheader.i28.preheader.i.i
  %.015.i2955.i.i = phi i32 [ %.015.i2964.i.i, %bb.r ], [ %i.df, %.preheader.i28.preheader.i.i ], [ %.pre20.pre.i33.i.i, %next_xfeature_order.exit.i36.i.i ]
  %i.dq = zext i32 %.015.i2955.i.i to i64         ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr @xstate_offsets, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4
end_hunk_0
