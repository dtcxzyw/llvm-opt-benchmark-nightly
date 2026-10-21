Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/p4?download=true
inline.NumInlined: 66
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@p4_pmu_disable_event:bb.a
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = load i64, ptr %i.a, align 8
  %i.f = and i64 %i.e, 2147475456                 ; 2 uses
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = tail call i32 asm sideeffect "1: wrmsr ; xor $0,$0\0A2:\0A\09 .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=10 \0A.purgem extable_type_reg\0A .popsection\0A", "={ax},{cx},0,{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.d, i32 %i.g, i32 0) #12, !srcloc !14
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_write_msr, i64 8), i1 false) #12
          to label %wrmsrq_safe.exit [label %bb.b], !srcloc !12

bb.b:                                             ; preds = %bb.a
  tail call void @do_trace_write_msr(i32 noundef %i.d, i64 noundef range(i64 0, 4294967296) %i.f, i32 noundef %i.h) #13
  br label %wrmsrq_safe.exit

wrmsrq_safe.exit:                                 ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p4_pmu_set_period(ptr noundef %0) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 420
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [8 x i8], ptr @pmc_prev_left, i64 %i.c
  %i.e = tail call i64 asm sideeffect "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.d) #12, !srcloc !41
  %i.f = tail call i32 @x86_perf_event_set_period(ptr noundef %0) #13
  %i.g = getelementptr i8, ptr %0, i64 408
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %wrmsrq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = sub i64 0, %i.e
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @x86_pmu, i64 256), align 8
  %i.l = and i64 %i.k, %i.j                       ; 3 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = lshr i64 %i.l, 32
  %i.o = trunc nuw i64 %i.n to i32
  tail call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.i, i32 %i.m, i32 %i.o) #12, !srcloc !19
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_write_msr, i64 8), i1 false) #12
          to label %wrmsrq.exit [label %bb.c], !srcloc !12

bb.c:                                             ; preds = %bb.b
  tail call void @do_trace_write_msr(i32 noundef %i.i, i64 noundef %i.l, i32 noundef 0) #13
  br label %wrmsrq.exit

wrmsrq.exit:                                      ; preds = %bb.c, %bb.b, %bb.a
  ret i32 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p4_hw_config(ptr noundef %0) #4 align 16 prefalign(16) {
bb.a:
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #12, !srcloc !42
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !43
  %i.a = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #16, !srcloc !44 ; 3 uses
  %i.b = load i32, ptr @__max_threads_per_core, align 4
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %p4_default_cccr_conf.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !20
  %i.e = add i64 %i.d, ptrtoint (ptr @cpu_sibling_map to i64)
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %p4_ht_thread.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.g) #15, !srcloc !13
  %i.i = freeze i64 %i.h
  %i.j = trunc i64 %i.i to i32
  br label %p4_ht_thread.exit.i

p4_ht_thread.exit.i:                              ; preds = %bb.c, %bb.b
  %.fr8.i = phi i32 [ %i.j, %bb.c ], [ 64, %bb.b ]
  %.not7.i = icmp eq i32 %i.a, %.fr8.i
  %. = select i1 %.not7.i, i64 67305472, i64 134414336 ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 216        ; 2 uses
  %.in.in.in.in = getelementptr i8, ptr %0, i64 256
  %.in.in.in = load i64, ptr %.in.in.in.in, align 8
  %.in.in = trunc i64 %.in.in.in to i32           ; 2 uses
  %.in54 = lshr i32 %.in.in, 5
  %i.l = and i32 %.in54, 1                        ; 2 uses
  %.in = lshr i32 %.in.in, 4
  %i.m = and i32 %.in, 1                          ; 2 uses
  %i.n = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !20
  %i.o = add i64 %i.n, ptrtoint (ptr @cpu_sibling_map to i64)
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.not.i.i.i39 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i39, label %p4_ht_thread.exit.i40, label %bb.d

p4_default_cccr_conf.exit:                        ; preds = %bb.a
  %i.r = getelementptr i8, ptr %0, i64 216
  %i.s = getelementptr i8, ptr %0, i64 256
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = lshr i32 %i.u, 5
  %i.w = and i32 %i.v, 1
  %i.x = lshr i32 %i.u, 4
  %i.y = and i32 %i.x, 1
  br label %p4_ht_thread.exit.thread.i38

bb.d:                                             ; preds = %p4_ht_thread.exit.i
  %i.z = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.q) #15, !srcloc !13
  %i.aa = trunc i64 %i.z to i32
  br label %p4_ht_thread.exit.i40

p4_ht_thread.exit.i40:                            ; preds = %bb.d, %p4_ht_thread.exit.i
  %i.ab = phi i32 [ %i.aa, %bb.d ], [ 64, %p4_ht_thread.exit.i ]
  %.not19.i = icmp eq i32 %i.a, %i.ab
  br i1 %.not19.i, label %p4_ht_thread.exit.thread.i38, label %bb.e

p4_ht_thread.exit.thread.i38:                     ; preds = %p4_default_cccr_conf.exit, %p4_ht_thread.exit.i40
  %i.ac = phi i32 [ %i.m, %p4_ht_thread.exit.i40 ], [ %i.y, %p4_default_cccr_conf.exit ]
  %i.ad = phi i32 [ %i.l, %p4_ht_thread.exit.i40 ], [ %i.w, %p4_default_cccr_conf.exit ]
  %i.ae = phi ptr [ %i.k, %p4_ht_thread.exit.i40 ], [ %i.r, %p4_default_cccr_conf.exit ]
  %i.af = phi i64 [ %., %p4_ht_thread.exit.i40 ], [ 67305472, %p4_default_cccr_conf.exit ]
  %.not10.i = icmp eq i32 %i.ad, 0
  %spec.select.i = select i1 %.not10.i, i32 8, i32 0 ; 2 uses
  %.not11.i = icmp eq i32 %i.ac, 0
  %i.ag = or disjoint i32 %spec.select.i, 4
  %spec.select15.i = select i1 %.not11.i, i32 %i.ag, i32 %spec.select.i
  br label %p4_default_escr_conf.exit

bb.e:                                             ; preds = %p4_ht_thread.exit.i40
  %i.ah = shl nuw nsw i32 %i.l, 1
  %i.ai = or disjoint i32 %i.ah, %i.m
  %spec.select16.i = xor i32 %i.ai, 3
  br label %p4_default_escr_conf.exit

p4_default_escr_conf.exit:                        ; preds = %p4_ht_thread.exit.thread.i38, %bb.e
  %i.aj = phi ptr [ %i.ae, %p4_ht_thread.exit.thread.i38 ], [ %i.k, %bb.e ]
  %i.ak = phi i64 [ %i.af, %p4_ht_thread.exit.thread.i38 ], [ %., %bb.e ]
  %.2.i = phi i32 [ %spec.select15.i, %p4_ht_thread.exit.thread.i38 ], [ %spec.select16.i, %bb.e ]
  %i.al = zext nneg i32 %.2.i to i64
  %i.am = shl nuw nsw i64 %i.al, 32
  %i.an = add nuw nsw i64 %i.am, %i.ak            ; 2 uses
  %i.ao = getelementptr i8, ptr %0, i64 368       ; 5 uses
  store i64 %i.an, ptr %i.ao, align 8
  %i.ap = load i32, ptr @__max_threads_per_core, align 4
  %i.aq = icmp eq i32 %i.ap, 2
  br i1 %i.aq, label %bb.f, label %p4_ht_thread.exit.thread

bb.f:                                             ; preds = %p4_default_escr_conf.exit
  %i.ar = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !20
  %i.as = add i64 %i.ar, ptrtoint (ptr @cpu_sibling_map to i64)
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %p4_ht_thread.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.au) #15, !srcloc !13
  %i.aw = trunc i64 %i.av to i32
  br label %p4_ht_thread.exit

p4_ht_thread.exit:                                ; preds = %bb.f, %bb.g
  %i.ax = phi i32 [ %i.aw, %bb.g ], [ 64, %bb.f ]
  %.not = icmp eq i32 %i.a, %i.ax
  br i1 %.not, label %p4_ht_thread.exit.thread, label %bb.h

bb.h:                                             ; preds = %p4_ht_thread.exit
  %i.ay = or i64 %i.an, -9223372036854775808
  store i64 %i.ay, ptr %i.ao, align 8
  br label %p4_ht_thread.exit.thread

p4_ht_thread.exit.thread:                         ; preds = %bb.h, %p4_ht_thread.exit, %p4_default_escr_conf.exit
  %i.az = load i32, ptr %i.aj, align 8
  %i.ba = icmp eq i32 %i.az, 4
  br i1 %i.ba, label %bb.i, label %bb.r

bb.i:                                             ; preds = %p4_ht_thread.exit.thread
  %i.bb = getelementptr i8, ptr %0, i64 224       ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = and i64 %i.bc, 9223371968168792063      ; 5 uses
  store i64 %i.bd, ptr %i.bb, align 8
  %sum.shift.i = lshr i64 %i.bd, 57               ; 4 uses
  %i.be = icmp samesign ugt i64 %i.bd, 6629298651489370111
  br i1 %i.be, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp eq i64 %sum.shift.i, 45
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = load i32, ptr @boot_cpu_data, align 8
  switch i32 %i.bg, label %.thread [
    i32 3846, label %bb.l
    i32 3844, label %bb.l
    i32 3843, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.j
  %i.bh = load i32, ptr @__max_threads_per_core, align 4
  %i.bi = icmp ult i32 %i.bh, 2
  br i1 %i.bi, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %1 = getelementptr [28 x i8], ptr @p4_event_bind_map, i64 %sum.shift.i
  %2 = getelementptr i8, ptr %1, i64 16
  %3 = load i32, ptr %2, align 4
  %.not19.i41.not = icmp eq i32 %3, 0
  br i1 %.not19.i41.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = load i32, ptr @sysctl_perf_event_paranoid, align 4
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.o, label %perf_allow_cpu.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bl = tail call zeroext i1 @capable(i32 noundef 38) #13
  br i1 %i.bl, label %perf_allow_cpu.exit.i, label %perfmon_capable.exit.i.i

perfmon_capable.exit.i.i:                         ; preds = %bb.o
  %i.bm = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %i.bm, label %perf_allow_cpu.exit.i, label %.thread

perf_allow_cpu.exit.i:                            ; preds = %perfmon_capable.exit.i.i, %bb.o, %bb.n
  %i.bn = tail call i32 @security_perf_event_open(i32 noundef 1) #13 ; 2 uses
  %.not20.i = icmp eq i32 %i.bn, 0
  br i1 %.not20.i, label %perf_allow_cpu.exit._crit_edge.i, label %.thread

perf_allow_cpu.exit._crit_edge.i:                 ; preds = %perf_allow_cpu.exit.i
  %.pre.i = load i64, ptr %i.bb, align 8
  br label %bb.p

bb.p:                                             ; preds = %perf_allow_cpu.exit._crit_edge.i, %bb.m, %bb.l
  %i.bo = phi i64 [ %.pre.i, %perf_allow_cpu.exit._crit_edge.i ], [ %i.bd, %bb.m ], [ %i.bd, %bb.l ] ; 5 uses
  %.016.i = phi i64 [ 0, %perf_allow_cpu.exit._crit_edge.i ], [ %sum.shift.i, %bb.m ], [ %sum.shift.i, %bb.l ]
  %i.bp = lshr i64 %i.bo, 32
  %i.bq = trunc nuw i64 %i.bp to i32
  %i.br = getelementptr [28 x i8], ptr @p4_event_bind_map, i64 %.016.i
  %i.bs = getelementptr i8, ptr %i.br, i64 12
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = and i32 %i.bt, 33553920
  %i.bv = xor i32 %i.bu, 33553920
  %i.bw = and i32 %i.bv, %i.bq
  %.not21.i = icmp ne i32 %i.bw, 0
  %i.bx = and i64 %i.bo, 128
  %.not22.i = icmp ne i64 %i.bx, 0
  %or.cond.i.not55 = or i1 %.not22.i, %.not21.i
  %i.by = and i64 %i.bo, 62
  %i.bz = icmp samesign ugt i64 %i.by, 9
  %or.cond53 = select i1 %or.cond.i.not55, i1 true, i1 %i.bz
  br i1 %or.cond53, label %.thread, label %p4_validate_raw_event.exit

p4_validate_raw_event.exit:                       ; preds = %bb.p
  %i.ca = load i64, ptr %i.ao, align 8
  %i.cb = or i64 %i.ca, %i.bo                     ; 2 uses
  store i64 %i.cb, ptr %i.ao, align 8
  %sum.shift.i43 = lshr i64 %i.bo, 57
  %i.cc = and i64 %sum.shift.i43, 63              ; 2 uses
  %i.cd = icmp samesign ugt i64 %i.cc, 45
  %i.ce = getelementptr [28 x i8], ptr @p4_event_bind_map, i64 %i.cc ; 2 uses
  %.not3756 = icmp eq ptr %i.ce, null
  %.not37 = or i1 %i.cd, %.not3756
  br i1 %.not37, label %.thread, label %bb.q

bb.q:                                             ; preds = %p4_validate_raw_event.exit
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = shl i32 %i.cf, 13
  %i.ch = and i32 %i.cg, 2088960
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = or i64 %i.cb, %i.ci
  store i64 %i.cj, ptr %i.ao, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %p4_ht_thread.exit.thread
  %i.ck = tail call i32 @x86_setup_perfctr(ptr noundef %0) #13
  br label %.thread

.thread:                                          ; preds = %perfmon_capable.exit.i.i, %bb.k, %bb.p, %perf_allow_cpu.exit.i, %bb.i, %p4_validate_raw_event.exit, %bb.r
  %.1 = phi i32 [ %i.ck, %bb.r ], [ -22, %p4_validate_raw_event.exit ], [ -22, %bb.i ], [ -13, %perfmon_capable.exit.i.i ], [ -22, %bb.k ], [ -22, %bb.p ], [ %i.bn, %perf_allow_cpu.exit.i ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !45
  %i.cl = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #12, !srcloc !46 ; 2 uses
  %i.cm = icmp ult i8 %i.cl, 2
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = trunc nuw i8 %i.cl to i1
  br i1 %i.cn, label %bb.s, label %bb.t, !prof !21

bb.s:                                             ; preds = %.thread
  %i.co = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.cp = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.co) #12, !srcloc !47
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.cp)
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @p4_pmu_schedule_events(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) #4 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [1 x i64], align 8                ; 13 uses
  %i.b = alloca [2 x i64], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #16, !srcloc !50 ; 8 uses
  store i64 0, ptr %i.a, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.not101 = icmp eq i32 %1, 0
  br i1 %.not101, label %p4_get_alias_event.exit.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1320
  %.not58 = icmp eq ptr %2, null                  ; 2 uses
  %i.e = icmp eq i32 %i.c, 64
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %arch_set_bit.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %arch_set_bit.exit ] ; 3 uses
  %.05199 = phi i32 [ %1, %.lr.ph ], [ %i.hx, %arch_set_bit.exit ] ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 368      ; 9 uses
  %i.i = load i32, ptr @__max_threads_per_core, align 4
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.c, label %p4_ht_thread.exit

bb.c:                                             ; preds = %bb.b
  %i.k = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !20
  %i.l = add i64 %i.k, ptrtoint (ptr @cpu_sibling_map to i64)
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %find_first_bit.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.n) #15, !srcloc !13
  %i.p = trunc i64 %i.o to i32
  br label %find_first_bit.exit.i

find_first_bit.exit.i:                            ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 64, %bb.c ]
  %i.r = icmp ne i32 %i.c, %i.q
  %i.s = zext i1 %i.r to i64
  br label %p4_ht_thread.exit

p4_ht_thread.exit:                                ; preds = %bb.b, %find_first_bit.exit.i
  %.0.i = phi i64 [ %i.s, %find_first_bit.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.t = getelementptr i8, ptr %i.g, i64 420      ; 4 uses
  %.pre = load i64, ptr %i.h, align 8             ; 2 uses
  %sum.shift.i = lshr i64 %.pre, 57
  %i.u = and i64 %sum.shift.i, 63                 ; 2 uses
  %i.v = icmp samesign ult i64 %i.u, 46
  %i.w = getelementptr [28 x i8], ptr @p4_event_bind_map, i64 %i.u
  %spec.select.i = select i1 %i.v, ptr %i.w, ptr null ; 2 uses
  %i.x = getelementptr i8, ptr %spec.select.i, i64 4
  %i.y = getelementptr [4 x i8], ptr %i.x, i64 %.0.i
  %i.z = load i32, ptr %i.y, align 4              ; 4 uses
  %i.aa = add i32 %i.z, -928                      ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, 65
  br i1 %i.ab, label %p4_get_escr_idx.exit.thread, label %bb.e, !prof !21

bb.e:                                             ; preds = %p4_ht_thread.exit
  %i.ac = zext nneg i32 %i.aa to i64              ; 4 uses
  %i.ad = getelementptr [4 x i8], ptr @p4_escr_table, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %.not.i = icmp eq i32 %i.ae, 0
  %i.af = icmp ne i32 %i.ae, %i.z
  %spec.select.i64 = or i1 %.not.i, %i.af
  br i1 %spec.select.i64, label %p4_get_escr_idx.exit.thread, label %p4_get_escr_idx.exit, !prof !21

p4_get_escr_idx.exit.thread:                      ; preds = %bb.v, %p4_get_alias_event.exit.1, %bb.n, %p4_get_alias_event.exit, %p4_ht_thread.exit, %bb.e
  %.lcssa = phi i32 [ %i.z, %p4_ht_thread.exit ], [ %i.z, %bb.e ], [ %i.by, %p4_get_alias_event.exit ], [ %i.by, %bb.n ], [ %i.dw, %p4_get_alias_event.exit.1 ], [ %i.dw, %bb.v ]
  %i.ag = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, ptr @.str.6, i32 1220, i32 2323, i64 16) #12, !srcloc !51
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ag, i32 noundef %.lcssa) #13
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !52
  br label %p4_get_alias_event.exit.thread

p4_get_escr_idx.exit:                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.t, align 4             ; 2 uses
  %.not = icmp eq i32 %i.ah, -1
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %p4_get_escr_idx.exit
  %i.ai = load i32, ptr @__max_threads_per_core, align 4
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.g, label %p4_should_swap_ts.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #16, !srcloc !20
  %i.al = add i64 %i.ak, ptrtoint (ptr @cpu_sibling_map to i64)
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i, label %find_first_bit.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.an) #15, !srcloc !13
  %i.ap = trunc i64 %i.ao to i32
  br label %find_first_bit.exit.i.i

find_first_bit.exit.i.i:                          ; preds = %bb.h, %bb.g
  %i.aq = phi i32 [ %i.ap, %bb.h ], [ 64, %bb.g ]
  %i.ar = icmp ne i32 %i.c, %i.aq
  %i.as = zext i1 %i.ar to i32
  br label %p4_should_swap_ts.exit

p4_should_swap_ts.exit:                           ; preds = %bb.f, %find_first_bit.exit.i.i
  %.0.i.i = phi i32 [ %i.as, %find_first_bit.exit.i.i ], [ 0, %bb.f ]
  %.lobit.i.i = lshr i64 %.pre, 63
end_hunk_0
