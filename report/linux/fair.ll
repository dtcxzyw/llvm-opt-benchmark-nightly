Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/fair?download=true
inline.NumInlined: 1077
inline.NumDeleted: 400
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@detach_entity_load_avg:bb.a
  %i.ac = icmp slt i32 %notsub71, 0
  %.068 = select i1 %i.ac, i32 %i.ab, i32 %spec.store.select1 ; 2 uses
  store volatile i32 %.068, ptr %i.x, align 8
  %i.ad = trunc i64 %.0 to i32
  %i.ae = mul i32 %i.ad, 46718
  %i.af = tail call i32 @llvm.umax.i32(i32 %.068, i32 %i.ae)
  store i32 %i.af, ptr %i.x, align 8
  %i.ag = getelementptr i8, ptr %0, i64 168       ; 2 uses
  %i.ah = getelementptr i8, ptr %1, i64 296
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.aj = load volatile i64, ptr %i.ag, align 8   ; 2 uses
  %i.ak = sub i64 %i.aj, %i.ai
  %notsub72 = add i64 %i.ai, -1
  %spec.store.select2 = tail call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %i.ai)
  %i.al = icmp slt i64 %notsub72, 0
  %.069 = select i1 %i.al, i64 %i.ak, i64 %spec.store.select2 ; 2 uses
  store volatile i64 %.069, ptr %i.ag, align 8
  %i.am = getelementptr i8, ptr %0, i64 144       ; 3 uses
  %i.an = getelementptr i8, ptr %1, i64 272
  %i.ao = load i64, ptr %i.an, align 16           ; 3 uses
  %i.ap = load volatile i64, ptr %i.am, align 8   ; 2 uses
  %i.aq = sub i64 %i.ap, %i.ao
  %notsub73 = add i64 %i.ao, -1
  %spec.store.select3 = tail call i64 @llvm.usub.sat.i64(i64 %i.ap, i64 %i.ao)
  %i.ar = icmp slt i64 %notsub73, 0
  %.070 = select i1 %i.ar, i64 %i.aq, i64 %spec.store.select3 ; 2 uses
  store volatile i64 %.070, ptr %i.am, align 8
  %i.as = mul i64 %.069, 46718
  %i.at = tail call i64 @llvm.umax.i64(i64 %.070, i64 %i.as)
  store i64 %i.at, ptr %i.am, align 16
  %i.au = load i64, ptr %i.j, align 8
  %i.av = getelementptr i8, ptr %0, i64 272
  store i64 1, ptr %i.av, align 16
  %i.aw = getelementptr i8, ptr %0, i64 280       ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = sub i64 %i.ax, %i.au
  store i64 %i.ay, ptr %i.aw, align 8
  %i.az = getelementptr i8, ptr %0, i64 312
  %.val.i74 = load ptr, ptr %i.az, align 8        ; 4 uses
  %i.ba = getelementptr i8, ptr %.val.i74, i64 128
  %i.bb = icmp eq ptr %i.ba, %0
  br i1 %i.bb, label %bb.b, label %cfs_rq_util_change.exit

bb.b:                                             ; preds = %bb.a
  %i.bc = getelementptr i8, ptr %.val.i74, i64 2856
  %.val.i.i = load i32, ptr %i.bc, align 8
  %i.bd = sext i32 %.val.i.i to i64
  %i.be = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = add i64 %i.bf, ptrtoint (ptr @cpufreq_update_util_data to i64)
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load volatile ptr, ptr %i.bh, align 8   ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i75, label %cfs_rq_util_change.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %.val.i74, i64 2720
  %.val.i.i.i = load i32, ptr %i.bk, align 32
  %i.bl = icmp ult i32 %.val.i.i.i, 2
  br i1 %i.bl, label %bb.d, label %rq_clock.exit.i.i, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "1197: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1197b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1197) #28, !srcloc !15
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.6, i32 1792, i32 2307, i64 16) #28, !srcloc !16
  tail call void asm sideeffect "1198: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1198b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1198) #28, !srcloc !17
  br label %rq_clock.exit.i.i

rq_clock.exit.i.i:                                ; preds = %bb.d, %bb.c
  %i.bm = getelementptr i8, ptr %.val.i74, i64 2704
  %i.bn = load i64, ptr %i.bm, align 16
  tail call void %i.bj(ptr noundef nonnull %i.bi, i64 noundef %i.bn, i32 noundef 0) #26, !inline_history !258
  br label %cfs_rq_util_change.exit

cfs_rq_util_change.exit:                          ; preds = %bb.a, %bb.b, %rq_clock.exit.i.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_pelt_cfs_tp, i64 8), i1 false) #28
          to label %trace_pelt_cfs_tp.exit [label %arch_test_bit.exit.i.i], !srcloc !32

arch_test_bit.exit.i.i:                           ; preds = %cfs_rq_util_change.exit
  %i.bo = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #28, !srcloc !254
  %i.bp = zext i32 %i.bo to i64
  %i.bq = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.bp) #28, !srcloc !34 ; 2 uses
  %i.br = icmp ult i8 %i.bq, 2
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = trunc nuw i8 %i.bq to i1
  br i1 %i.bs, label %bb.e, label %trace_pelt_cfs_tp.exit

bb.e:                                             ; preds = %arch_test_bit.exit.i.i
  %i.bt = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bt, ptr elementtype(i64) %i.bt) #28, !srcloc !35
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #28, !srcloc !36
  %i.bu = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_pelt_cfs_tp, i64 56), align 8 ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i76, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call i32 @__SCT__tp_func_pelt_cfs_tp(ptr noundef %i.bw, ptr noundef %0) #26 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #28, !srcloc !37
  %i.by = getelementptr i8, ptr %i.bt, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.by, ptr elementtype(i64) %i.by) #28, !srcloc !38
  br label %trace_pelt_cfs_tp.exit

trace_pelt_cfs_tp.exit:                           ; preds = %cfs_rq_util_change.exit, %arch_test_bit.exit.i.i, %bb.g
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_pelt_cfs_tp(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_pelt_se_tp(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_sched_util_est_se_tp(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @sched_balance_rq(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.sg_lb_stats, align 8        ; 4 uses
  %6 = alloca %struct.sd_lb_stats, align 8        ; 32 uses
  %7 = alloca %struct.lb_env, align 8             ; 49 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #30, !srcloc !260
  %i.c = add i64 %i.b, ptrtoint (ptr @load_balance_mask to i64)
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false), !annotation !234
  store ptr %2, ptr %7, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 18 uses
  store i32 %0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 9 uses
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 16
  store i64 0, ptr %i.j, align 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %.val160 = load ptr, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %.val160, i64 48
  store ptr %i.o, ptr %i.k, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 52 ; 16 uses
  store i32 %3, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 16 uses
  store i64 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 6 uses
  store ptr %i.d, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 17 uses
  store i32 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 76 ; 5 uses
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 5 uses
  store i32 32, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 84 ; 3 uses
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  store i32 2, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 92 ; 12 uses
  store i32 0, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 10 uses
  store ptr %i.z, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 104
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %2, i64 376
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = load i64, ptr @__cpu_active_mask, align 8
  %i.ae = and i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %i.d, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @sched_schedstats, i1 false) #28
          to label %.arch_static_branch.exit156_crit_edge [label %bb.b], !srcloc !32

.arch_static_branch.exit156_crit_edge:            ; preds = %bb.a
  %.pre344 = zext i32 %3 to i64
  br label %arch_static_branch.exit156

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr i8, ptr %2, i64 152
  %i.ag = zext i32 %3 to i64                      ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4
  br label %arch_static_branch.exit156

arch_static_branch.exit156:                       ; preds = %.arch_static_branch.exit156_crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre344, %.arch_static_branch.exit156_crit_edge ], [ %i.ag, %bb.b ] ; 5 uses
  %i.ak = getelementptr i8, ptr %2, i64 60
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 5 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 100 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 132
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %.old.i = getelementptr inbounds nuw i8, ptr %6, i64 92 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 2 uses
  %.phi.trans.insert76.i = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 160
  %.not139 = icmp eq ptr %i.a, null               ; 2 uses
  %i.bc = getelementptr i8, ptr %i.a, i64 16      ; 2 uses
  br label %arch_test_bit.exit.i

arch_test_bit.exit.i:                             ; preds = %bb.hf, %arch_static_branch.exit156
  %.0119 = phi i8 [ 0, %arch_static_branch.exit156 ], [ %.2121, %bb.hf ] ; 2 uses
  %i.bd = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #30, !srcloc !261
  %i.be = add i64 %i.bd, ptrtoint (ptr @should_we_balance_tmpmask to i64)
  %i.bf = inttoptr i64 %i.be to ptr               ; 4 uses
  %i.bg = load ptr, ptr %7, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = load i32, ptr %i.h, align 4
  %i.bk = zext i32 %i.bj to i64
  %i.bl = load ptr, ptr %i.s, align 8
  %i.bm = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bl, i64 range(i64 0, 4294967296) %i.bk) #28, !srcloc !34 ; 2 uses
  %i.bn = icmp ult i8 %i.bm, 2
  call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc nuw i8 %i.bm to i1
  br i1 %i.bo, label %bb.c, label %should_we_balance.exit.thread

bb.c:                                             ; preds = %arch_test_bit.exit.i
  %i.bp = load i32, ptr %i.q, align 4
  %i.bq = icmp eq i32 %i.bp, 2
  br i1 %i.bq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.br = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.bs = load i32, ptr %i.br, align 64
  %.not39.i = icmp eq i32 %i.bs, 0
  br i1 %.not39.i, label %should_we_balance.exit, label %should_we_balance.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.bt = getelementptr i8, ptr %i.bi, i64 24
  %.val.i = load ptr, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %.val.i, i64 48
  %i.bv = load i64, ptr %i.bu, align 8
  store i64 %i.bv, ptr %i.bf, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.o, %bb.e
  %i.bw = phi i64 [ 0, %bb.e ], [ %i.dm, %bb.o ]
  %.051.i = phi i32 [ -1, %bb.e ], [ %.2.i, %bb.o ] ; 5 uses
  %i.bx = load ptr, ptr %i.s, align 8
  %i.by = load i64, ptr %i.bf, align 8
  %i.bz = load i64, ptr %i.bx, align 8
  %i.ca = shl nsw i64 -1, %i.bw
  %i.cb = and i64 %i.by, %i.ca
  %i.cc = and i64 %i.cb, %i.bz                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i, label %find_next_and_bit.exit.thread.i, label %find_next_and_bit.exit.i

find_next_and_bit.exit.i:                         ; preds = %bb.f
  %i.cd = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.cc) #27, !srcloc !19 ; 3 uses
  %i.ce = trunc i64 %i.cd to i32                  ; 5 uses
  %i.cf = icmp ult i32 %i.ce, 64
  br i1 %i.cf, label %bb.g, label %find_next_and_bit.exit.thread.i

bb.g:                                             ; preds = %find_next_and_bit.exit.i
  %i.cg = call i32 @idle_cpu(i32 noundef %i.ce) #26
  %.not37.i = icmp eq i32 %i.cg, 0
  br i1 %.not37.i, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @sched_smt_present, i1 true) #28
          to label %bb.i [label %arch_static_branch_jump.exit.i], !srcloc !94

bb.i:                                             ; preds = %bb.h
  %i.ch = load ptr, ptr %7, align 8
  %i.ci = getelementptr i8, ptr %i.ch, i64 60
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = and i32 %i.cj, 128
  %.not38.i = icmp eq i32 %i.ck, 0
  br i1 %.not38.i, label %bb.j, label %arch_static_branch_jump.exit.i

bb.j:                                             ; preds = %bb.i
  %i.cl = and i64 %i.cd, 63
  %i.cm = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.cl ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %i.cn = phi i64 [ 0, %bb.j ], [ %i.da, %bb.n ]
  %i.co = load i64, ptr %i.cm, align 8
  %i.cp = add i64 %i.co, ptrtoint (ptr @cpu_sibling_map to i64)
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = shl nsw i64 -1, %i.cn
  %i.ct = and i64 %i.cr, %i.cs                    ; 2 uses
  %.not23.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not23.i.i.i, label %arch_static_branch_jump.exit.i, label %find_next_bit.exit.i.i

find_next_bit.exit.i.i:                           ; preds = %bb.k
  %i.cu = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.ct) #27, !srcloc !19 ; 2 uses
  %i.cv = trunc i64 %i.cu to i32                  ; 3 uses
  %i.cw = icmp ugt i32 %i.cv, 63
  br i1 %i.cw, label %arch_static_branch_jump.exit.i, label %bb.l

bb.l:                                             ; preds = %find_next_bit.exit.i.i
  %i.cx = icmp eq i32 %i.ce, %i.cv
  br i1 %i.cx, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cy = call i32 @idle_cpu(i32 noundef %i.cv) #26
  %.not.i43.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i43.i, label %is_core_idle.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cz = add nuw nsw i64 %i.cu, 1
  %i.da = and i64 %i.cz, 127                      ; 2 uses
  %.not.i.i.i = icmp samesign ult i64 %i.da, 64
  br i1 %.not.i.i.i, label %bb.k, label %arch_static_branch_jump.exit.i, !prof !20, !llvm.loop !95

is_core_idle.exit.i:                              ; preds = %bb.m
  %i.db = icmp eq i32 %.051.i, -1
  %spec.select.i = select i1 %i.db, i32 %i.ce, i32 %.051.i
  %i.dc = load i64, ptr %i.cm, align 8
  %i.dd = add i64 %i.dc, ptrtoint (ptr @cpu_sibling_map to i64)
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load i64, ptr %i.bf, align 8
  %i.dg = load i64, ptr %i.de, align 8
  %i.dh = xor i64 %i.dg, -1
  %i.di = and i64 %i.df, %i.dh
  store i64 %i.di, ptr %i.bf, align 8
  br label %bb.o

arch_static_branch_jump.exit.i:                   ; preds = %bb.i, %bb.h, %bb.n, %find_next_bit.exit.i.i, %bb.k
  %i.dj = load i32, ptr %i.h, align 4
  %i.dk = icmp eq i32 %i.dj, %i.ce
  br i1 %i.dk, label %bb.p, label %should_we_balance.exit.thread

bb.o:                                             ; preds = %is_core_idle.exit.i, %bb.g
  %.2.i = phi i32 [ %spec.select.i, %is_core_idle.exit.i ], [ %.051.i, %bb.g ] ; 2 uses
  %i.dl = add nuw nsw i64 %i.cd, 1
  %i.dm = and i64 %i.dl, 127                      ; 2 uses
  %i.dn = icmp samesign ugt i64 %i.dm, 63
  br i1 %i.dn, label %find_next_and_bit.exit.thread.i, label %bb.f, !prof !96, !llvm.loop !262

find_next_and_bit.exit.thread.i:                  ; preds = %bb.o, %find_next_and_bit.exit.i, %bb.f
  %.0.lcssa.i = phi i32 [ %.051.i, %bb.f ], [ %.2.i, %bb.o ], [ %.051.i, %find_next_and_bit.exit.i ] ; 2 uses
  %.not.i161 = icmp eq i32 %.0.lcssa.i, -1
  br i1 %.not.i161, label %.split421, label %.split422

.split422:                                        ; preds = %find_next_and_bit.exit.thread.i
  %i.do = load i32, ptr %i.h, align 4
  %i.dp = icmp eq i32 %.0.lcssa.i, %i.do
  br i1 %i.dp, label %bb.p, label %should_we_balance.exit.thread

.split421:                                        ; preds = %find_next_and_bit.exit.thread.i
  %i.dq = call i32 @group_balance_cpu(ptr noundef %i.bi) #26
  %i.dr = load i32, ptr %i.h, align 4
  %i.ds = icmp eq i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.p, label %should_we_balance.exit.thread

should_we_balance.exit:                           ; preds = %bb.d
  %i.dt = getelementptr i8, ptr %i.br, i64 4
  %i.du = load i32, ptr %i.dt, align 4
  %.not40.i = icmp eq i32 %i.du, 0
  br i1 %.not40.i, label %bb.p, label %should_we_balance.exit.thread

should_we_balance.exit.thread:                    ; preds = %arch_static_branch_jump.exit.i, %.split422, %.split421, %bb.d, %arch_test_bit.exit.i, %should_we_balance.exit
  store i32 0, ptr %4, align 4
  br label %arch_static_branch.exit154

bb.p:                                             ; preds = %arch_static_branch_jump.exit.i, %.split422, %.split421, %should_we_balance.exit
  %i.dv = trunc nuw i8 %.0119 to i1
  br i1 %i.dv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dw = load i32, ptr %i.ak, align 4
  %i.dx = and i32 %i.dw, 1024
  %.not131 = icmp eq i32 %i.dx, 0
  br i1 %.not131, label %bb.r, label %raw_atomic_try_cmpxchg_acquire.exit

raw_atomic_try_cmpxchg_acquire.exit:              ; preds = %bb.q
  %i.dy = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @sched_balance_running, i32 1, ptr nonnull elementtype(i32) @sched_balance_running, i32 0) #28, !srcloc !79
  %i.dz = extractvalue { i8, i32 } %i.dy, 0       ; 2 uses
  %i.ea = icmp ult i8 %i.dz, 2
  call void @llvm.assume(i1 %i.ea)
  %i.eb = trunc nuw i8 %i.dz to i1
  br i1 %i.eb, label %bb.r, label %arch_static_branch.exit154

bb.r:                                             ; preds = %raw_atomic_try_cmpxchg_acquire.exit, %bb.q, %bb.p
  %.2121 = phi i8 [ 1, %bb.p ], [ 1, %raw_atomic_try_cmpxchg_acquire.exit ], [ 0, %bb.q ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %6, i8 0, i64 96, i1 false)
  store i32 -1, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(124) %.sroa.3.0..sroa_idx.i.i, i8 0, i64 124, i1 false)
  %i.ec = load ptr, ptr %7, align 8
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, i8 0, i64 88, i1 false), !annotation !234
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @sched_smt_present, i1 true) #28
          to label %bb.s [label %arch_static_branch_jump.exit.i.i], !srcloc !94

bb.s:                                             ; preds = %bb.r
  %i.ef = load i32, ptr %i.h, align 4             ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.eg
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.s
  %i.ei = phi i64 [ 0, %bb.s ], [ %i.ev, %bb.w ]
  %i.ej = load i64, ptr %i.eh, align 8
  %i.ek = add i64 %i.ej, ptrtoint (ptr @cpu_sibling_map to i64)
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = load i64, ptr %i.el, align 8
  %i.en = shl nsw i64 -1, %i.ei
  %i.eo = and i64 %i.em, %i.en                    ; 2 uses
  %.not23.i.i.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not23.i.i.i.i, label %arch_static_branch_jump.exit.i.i, label %find_next_bit.exit.i.i.i

find_next_bit.exit.i.i.i:                         ; preds = %bb.t
  %i.ep = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.eo) #27, !srcloc !19 ; 2 uses
  %i.eq = trunc i64 %i.ep to i32                  ; 3 uses
  %i.er = icmp ugt i32 %i.eq, 63
  br i1 %i.er, label %arch_static_branch_jump.exit.i.i, label %bb.u

bb.u:                                             ; preds = %find_next_bit.exit.i.i.i
  %i.es = icmp eq i32 %i.ef, %i.eq
  br i1 %i.es, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.et = call i32 @idle_cpu(i32 noundef %i.eq) #26
  %.not.i.i.i170 = icmp eq i32 %i.et, 0
  br i1 %.not.i.i.i170, label %arch_static_branch_jump.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.eu = add nuw nsw i64 %i.ep, 1
  %i.ev = and i64 %i.eu, 127                      ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.ev, 64
  br i1 %.not.i.i.i.i, label %bb.t, label %arch_static_branch_jump.exit.i.i, !prof !20, !llvm.loop !95

arch_static_branch_jump.exit.i.i:                 ; preds = %bb.w, %bb.v, %find_next_bit.exit.i.i.i, %bb.t, %bb.r
  %i.ew = phi i8 [ 1, %bb.r ], [ 1, %bb.w ], [ 1, %bb.t ], [ 1, %find_next_bit.exit.i.i.i ], [ 0, %bb.v ]
  store i8 %i.ew, ptr %i.j, align 8
  br label %arch_test_bit.exit.i.i

arch_test_bit.exit.i.i:                           ; preds = %update_sd_pick_busiest.exit.thread.i.i, %arch_static_branch_jump.exit.i.i
  %.070.i.i = phi i8 [ 0, %arch_static_branch_jump.exit.i.i ], [ %.2.i.i, %update_sd_pick_busiest.exit.thread.i.i ]
  %.054.i.i = phi ptr [ %i.ee, %arch_static_branch_jump.exit.i.i ], [ %i.tl, %update_sd_pick_busiest.exit.thread.i.i ] ; 14 uses
  %.053.i.i = phi i64 [ 0, %arch_static_branch_jump.exit.i.i ], [ %i.tk, %update_sd_pick_busiest.exit.thread.i.i ]
  %i.ex = getelementptr i8, ptr %.054.i.i, i64 40 ; 4 uses
  %i.ey = load i32, ptr %i.h, align 4
  %i.ez = zext i32 %i.ey to i64
  %i.fa = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ex, i64 range(i64 0, 4294967296) %i.ez) #28, !srcloc !34 ; 2 uses
  %i.fb = icmp ult i8 %i.fa, 2
  call void @llvm.assume(i1 %i.fb)
  %i.fc = trunc nuw i8 %i.fa to i1                ; 2 uses
  br i1 %i.fc, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %arch_test_bit.exit.i.i
  store ptr %.054.i.i, ptr %i.am, align 8
  %i.fd = load i32, ptr %i.q, align 4
  %.not.i.i169 = icmp eq i32 %i.fd, 2
  br i1 %.not.i.i169, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fe = load volatile i64, ptr @jiffies, align 64
  %i.ff = getelementptr i8, ptr %.054.i.i, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr i8, ptr %i.fg, i64 32
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = sub i64 %i.fe, %i.fi
  %i.fk = icmp sgt i64 %i.fj, -1
  br i1 %i.fk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fl = load ptr, ptr %7, align 8
  %i.fm = load i32, ptr %i.h, align 4
  call void @update_group_capacity(ptr noundef %i.fl, i32 noundef %i.fm) #29
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %arch_test_bit.exit.i.i
  %.0.i.i162 = phi ptr [ %i.al, %bb.z ], [ %i.al, %bb.y ], [ %5, %arch_test_bit.exit.i.i ] ; 22 uses
  %i.fn = load ptr, ptr %7, align 8               ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 60
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = load ptr, ptr %i.fn, align 8
  %.not.i62.i.i = icmp eq ptr %i.fq, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0.i.i162, i8 0, i64 88, i1 false)
  %i.fr = load ptr, ptr %i.am, align 8
  %i.fs = icmp eq ptr %.054.i.i, %i.fr            ; 2 uses
  %i.ft = getelementptr i8, ptr %.0.i.i162, i64 8 ; 4 uses
  %i.fu = getelementptr i8, ptr %.0.i.i162, i64 24 ; 6 uses
  %i.fv = getelementptr i8, ptr %.0.i.i162, i64 32 ; 4 uses
  %i.fw = getelementptr i8, ptr %.0.i.i162, i64 44 ; 5 uses
  %i.fx = getelementptr i8, ptr %.0.i.i162, i64 40 ; 4 uses
  %i.fy = getelementptr i8, ptr %.0.i.i162, i64 84 ; 4 uses
  %i.fz = getelementptr i8, ptr %.0.i.i162, i64 48 ; 5 uses
  %i.ga = and i32 %i.fp, 32
  %.not101.i.i.i = icmp eq i32 %i.ga, 0
  %i.gb = getelementptr i8, ptr %.0.i.i162, i64 72 ; 6 uses
  br label %bb.ab

bb.ab:                                            ; preds = %sched_reduced_capacity.exit.thread.i.i.i, %bb.aa
  %.1.i.i = phi i8 [ %.070.i.i, %bb.aa ], [ %.4.i.i, %sched_reduced_capacity.exit.thread.i.i.i ] ; 5 uses
  %i.gc = phi i64 [ 0, %bb.aa ], [ %i.ji, %sched_reduced_capacity.exit.thread.i.i.i ]
  %i.gd = load ptr, ptr %i.s, align 8
  %i.ge = load i64, ptr %i.ex, align 8
  %i.gf = load i64, ptr %i.gd, align 8
  %i.gg = shl nsw i64 -1, %i.gc
  %i.gh = and i64 %i.ge, %i.gg
  %i.gi = and i64 %i.gh, %i.gf                    ; 2 uses
  %.not.i.i63.i.i = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i63.i.i, label %find_next_and_bit.exit.thread.i.i.i, label %find_next_and_bit.exit.i.i.i

find_next_and_bit.exit.i.i.i:                     ; preds = %bb.ab
  %i.gj = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.gi) #27, !srcloc !19 ; 3 uses
  %i.gk = trunc i64 %i.gj to i32                  ; 3 uses
  %i.gl = icmp ult i32 %i.gk, 64
  br i1 %i.gl, label %bb.ac, label %find_next_and_bit.exit.thread.i.i.i

bb.ac:                                            ; preds = %find_next_and_bit.exit.i.i.i
  %i.gm = and i64 %i.gj, 63
  %i.gn = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.gm ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = add i64 %i.go, ptrtoint (ptr @runqueues to i64)
  %i.gq = inttoptr i64 %i.gp to ptr               ; 10 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 288
  %.val.i.i.i = load i64, ptr %i.gr, align 32     ; 3 uses
  %i.gs = load i64, ptr %i.ft, align 8
  %i.gt = add i64 %i.gs, %.val.i.i.i
  store i64 %i.gt, ptr %i.ft, align 8
  %i.gu = getelementptr i8, ptr %i.gq, i64 304
  %i.gv = load volatile i64, ptr %i.gu, align 16  ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @sched_feat_keys, i64 400), i1 true) #28
          to label %bb.ad [label %cpu_util_cfs.exit.i.i.i], !srcloc !32

bb.ad:                                            ; preds = %bb.ac
  %i.gw = getelementptr i8, ptr %i.gq, i64 312
  %i.gx = load volatile i32, ptr %i.gw, align 8
  %i.gy = zext i32 %i.gx to i64
  %i.gz = call i64 @llvm.umax.i64(i64 %i.gv, i64 %i.gy)
  br label %cpu_util_cfs.exit.i.i.i

cpu_util_cfs.exit.i.i.i:                          ; preds = %bb.ad, %bb.ac
  %.2.i.i.i.i.i = phi i64 [ %i.gz, %bb.ad ], [ %i.gv, %bb.ac ]
  %i.ha = call i64 @arch_scale_cpu_capacity(i32 noundef %i.gk) #26
  %i.hb = call i64 @llvm.umin.i64(i64 %.2.i.i.i.i.i, i64 %i.ha)
  %i.hc = load i64, ptr %i.fu, align 8
  %i.hd = add i64 %i.hc, %i.hb
  store i64 %i.hd, ptr %i.fu, align 8
  %i.he = getelementptr i8, ptr %i.gq, i64 296
  %.val103.i.i.i = load i64, ptr %i.he, align 8
  %i.hf = load i64, ptr %i.fv, align 8
  %i.hg = add i64 %i.hf, %.val103.i.i.i
  store i64 %i.hg, ptr %i.fv, align 8
  %i.hh = getelementptr i8, ptr %i.gq, i64 152    ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 8
  %i.hj = load i32, ptr %i.fw, align 4
  %i.hk = add i32 %i.hj, %i.hi
  store i32 %i.hk, ptr %i.fw, align 4
  %i.hl = load i32, ptr %i.gq, align 64           ; 3 uses
  %i.hm = load i32, ptr %i.fx, align 8
  %i.hn = add i32 %i.hm, %i.hl
  store i32 %i.hn, ptr %i.fx, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @sched_cache_active, i1 false) #28
          to label %sched_cache_enabled.exit.i.i.i [label %bb.ae], !srcloc !32

bb.ae:                                            ; preds = %cpu_util_cfs.exit.i.i.i
  %i.ho = load i32, ptr %i.h, align 4             ; 2 uses
  %i.hp = icmp slt i32 %i.ho, 0
  br i1 %i.hp, label %llc_id.exit107.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hq = zext nneg i32 %i.ho to i64
  %i.hr = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.hq
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = add i64 %i.hs, ptrtoint (ptr @sd_llc_id to i64)
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = load i32, ptr %i.hu, align 4
  br label %llc_id.exit107.i.i.i

llc_id.exit107.i.i.i:                             ; preds = %bb.af, %bb.ae
  %.0.i105.i.i.i = phi i32 [ %i.hv, %bb.af ], [ -1, %bb.ae ] ; 3 uses
  %i.hw = load i64, ptr %i.gn, align 8
  %i.hx = add i64 %i.hw, ptrtoint (ptr @sd_llc_id to i64)
  %i.hy = inttoptr i64 %i.hx to ptr
  %i.hz = load i32, ptr %i.hy, align 4
  %.not97.i.i.i = icmp eq i32 %i.hz, %.0.i105.i.i.i
  br i1 %.not97.i.i.i, label %sched_cache_enabled.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %llc_id.exit107.i.i.i
  %i.ia = getelementptr i8, ptr %i.gq, i64 2768
  %i.ib = load volatile ptr, ptr %i.ia, align 16  ; 3 uses
  %.not98.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not98.i.i.i, label %sched_cache_enabled.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ic = getelementptr i8, ptr %i.ib, i64 128
  %i.id = load i32, ptr %i.ic, align 8
  %i.ie = icmp ult i32 %.0.i105.i.i.i, %i.id
  br i1 %i.ie, label %bb.ai, label %sched_cache_enabled.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.if = getelementptr i8, ptr %i.ib, i64 136
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = sext i32 %.0.i105.i.i.i to i64
  %i.ii = getelementptr [4 x i8], ptr %i.ig, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = load i32, ptr %i.fy, align 4
  %i.il = add i32 %i.ik, %i.ij
  store i32 %i.il, ptr %i.fy, align 4
  br label %sched_cache_enabled.exit.i.i.i

sched_cache_enabled.exit.i.i.i:                   ; preds = %bb.ai, %bb.ah, %bb.ag, %llc_id.exit107.i.i.i, %cpu_util_cfs.exit.i.i.i
  %.not99.i.i.i = icmp eq i32 %i.hl, 0
  br i1 %.not99.i.i.i, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %sched_cache_enabled.exit.i.i.i
  %i.im = call i32 @idle_cpu(i32 noundef %i.gk) #26
  %.not100.i.i.i = icmp eq i32 %i.im, 0
  br i1 %.not100.i.i.i, label %.thread.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.in = load i32, ptr %i.fz, align 8
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr %i.fz, align 8
  br label %sched_reduced_capacity.exit.thread.i.i.i

bb.al:                                            ; preds = %sched_cache_enabled.exit.i.i.i
  %i.ip = icmp sgt i32 %i.hl, 1
  %or.cond.i.i.i = select i1 %.not.i62.i.i, i1 %i.ip, i1 false
  %spec.select.i.i = select i1 %or.cond.i.i.i, i8 1, i8 %.1.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.al, %bb.aj
  %.3.i.i = phi i8 [ %.1.i.i, %bb.aj ], [ %spec.select.i.i, %bb.al ] ; 7 uses
  br i1 %i.fs, label %sched_reduced_capacity.exit.thread.i.i.i, label %bb.am

bb.am:                                            ; preds = %.thread.i.i.i
  br i1 %.not101.i.i.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iq = load i64, ptr %i.gb, align 8
  %i.ir = getelementptr i8, ptr %i.gq, i64 2792
  %i.is = load i64, ptr %i.ir, align 8            ; 2 uses
  %i.it = icmp ult i64 %i.iq, %i.is
  br i1 %i.it, label %bb.ao, label %sched_reduced_capacity.exit.thread.i.i.i

bb.ao:                                            ; preds = %bb.an
  store i64 %i.is, ptr %i.gb, align 8
  br label %sched_reduced_capacity.exit.thread.i.i.i

bb.ap:                                            ; preds = %bb.am
  %i.iu = load i32, ptr %i.q, align 4
  %.not102.i.i.i = icmp eq i32 %i.iu, 0
  br i1 %.not102.i.i.i, label %sched_reduced_capacity.exit.thread.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.iv = load i32, ptr %i.hh, align 8
  %.not.i108.i.i.i = icmp eq i32 %i.iv, 1
  br i1 %.not.i108.i.i.i, label %sched_reduced_capacity.exit.i.i.i, label %sched_reduced_capacity.exit.thread.i.i.i

sched_reduced_capacity.exit.i.i.i:                ; preds = %bb.aq
  %i.iw = load ptr, ptr %7, align 8
  %i.ix = getelementptr i8, ptr %i.gq, i64 8
  %.val.i.i.i.i = load i64, ptr %i.ix, align 8
  %i.iy = getelementptr i8, ptr %i.gq, i64 2856
  %.val4.i.i.i.i = load i32, ptr %i.iy, align 8
  %i.iz = getelementptr i8, ptr %i.iw, i64 44
  %.val5.i.i.i.i = load i32, ptr %i.iz, align 4
  %i.ja = zext i32 %.val5.i.i.i.i to i64
  %i.jb = mul i64 %.val.i.i.i.i, %i.ja
  %i.jc = call i64 @arch_scale_cpu_capacity(i32 noundef %.val4.i.i.i.i) #26
  %i.jd = mul i64 %i.jc, 100
  %i.je = icmp ult i64 %i.jb, %i.jd
  br i1 %i.je, label %bb.ar, label %sched_reduced_capacity.exit.thread.i.i.i

bb.ar:                                            ; preds = %sched_reduced_capacity.exit.i.i.i
  %i.jf = load i64, ptr %i.gb, align 8
  %i.jg = icmp ult i64 %i.jf, %.val.i.i.i
  br i1 %i.jg, label %bb.as, label %sched_reduced_capacity.exit.thread.i.i.i

bb.as:                                            ; preds = %bb.ar
  store i64 %.val.i.i.i, ptr %i.gb, align 8
  br label %sched_reduced_capacity.exit.thread.i.i.i

sched_reduced_capacity.exit.thread.i.i.i:         ; preds = %bb.as, %bb.ar, %sched_reduced_capacity.exit.i.i.i, %bb.aq, %bb.ap, %bb.ao, %bb.an, %.thread.i.i.i, %bb.ak
  %.4.i.i = phi i8 [ %.3.i.i, %.thread.i.i.i ], [ %.3.i.i, %bb.ap ], [ %.3.i.i, %bb.as ], [ %.3.i.i, %bb.ar ], [ %.3.i.i, %sched_reduced_capacity.exit.i.i.i ], [ %.3.i.i, %bb.aq ], [ 1, %bb.ao ], [ %.3.i.i, %bb.an ], [ %.1.i.i, %bb.ak ] ; 2 uses
  %i.jh = add nuw nsw i64 %i.gj, 1
end_hunk_0
begin_hunk_1_@sched_balance_rq:bb.a

llc_balance.exit.thread.i.i.i:                    ; preds = %llc_balance.exit.i.i.i, %bb.bp, %bb.bo, %bb.bm, %cpumask_first.exit.i.i.i.i, %bb.bj, %bb.bi, %bb.bh, %smt_balance.exit.thread.i.i.i, %find_next_and_bit.exit.thread.i.i.i
  %i.ni = load ptr, ptr %7, align 8
  %i.nj = getelementptr i8, ptr %i.ni, i64 44
  %i.nk = load i32, ptr %i.nj, align 4            ; 2 uses
  %i.nl = load i32, ptr %i.fx, align 8            ; 2 uses
  %i.nm = load i32, ptr %i.jr, align 4            ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i32 %i.nl, %i.nm
  br i1 %.not.i.i.i.i.i, label %bb.bq, label %group_is_overloaded.exit.thread15.i.i.i.i

bb.bq:                                            ; preds = %llc_balance.exit.thread.i.i.i
  %i.nn = load i64, ptr %i.jo, align 8            ; 2 uses
  %i.no = mul i64 %i.nn, 100
  %i.np = load i64, ptr %i.fu, align 8
  %i.nq = zext i32 %i.nk to i64                   ; 2 uses
  %i.nr = mul i64 %i.np, %i.nq
  %i.ns = icmp ult i64 %i.no, %i.nr
  br i1 %i.ns, label %group_classify.exit.i.i.i, label %group_is_overloaded.exit.i.i.i.i

group_is_overloaded.exit.i.i.i.i:                 ; preds = %bb.bq
  %i.nt = mul i64 %i.nn, %i.nq
  %i.nu = load i64, ptr %i.fv, align 8
  %i.nv = mul i64 %i.nu, 100
  %i.nw = icmp ult i64 %i.nt, %i.nv
  br i1 %i.nw, label %group_classify.exit.i.i.i, label %group_is_overloaded.exit.thread15.i.i.i.i

group_is_overloaded.exit.thread15.i.i.i.i:        ; preds = %group_is_overloaded.exit.i.i.i.i, %llc_balance.exit.thread.i.i.i
  %i.nx = getelementptr i8, ptr %.0.i.i162, i64 68
  %i.ny = load i32, ptr %i.nx, align 4
  %.not.i118.i.i.i = icmp eq i32 %i.ny, 0
  br i1 %.not.i118.i.i.i, label %bb.br, label %group_classify.exit.i.i.i

bb.br:                                            ; preds = %group_is_overloaded.exit.thread15.i.i.i.i
  %.val.i120.i.i.i = load ptr, ptr %i.jk, align 8
  %i.nz = getelementptr i8, ptr %.val.i120.i.i.i, i64 40
  %.val.val.i.i.i.i = load i32, ptr %i.nz, align 8
  %.not9.i.i.i.i = icmp eq i32 %.val.val.i.i.i.i, 0
  br i1 %.not9.i.i.i.i, label %bb.bs, label %group_classify.exit.i.i.i

bb.bs:                                            ; preds = %bb.br
  %i.oa = getelementptr i8, ptr %.0.i.i162, i64 60
  %i.ob = load i32, ptr %i.oa, align 4
  %.not10.i.i.i.i = icmp eq i32 %i.ob, 0
  br i1 %.not10.i.i.i.i, label %bb.bt, label %group_classify.exit.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.oc = getelementptr i8, ptr %.0.i.i162, i64 64
  %i.od = load i32, ptr %i.oc, align 8
  %.not11.i.i.i.i = icmp eq i32 %i.od, 0
  br i1 %.not11.i.i.i.i, label %bb.bu, label %group_classify.exit.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.oe = load i64, ptr %i.gb, align 8
  %.not12.i.i.i.i = icmp eq i64 %i.oe, 0
  br i1 %.not12.i.i.i.i, label %bb.bv, label %group_classify.exit.i.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.of = icmp ult i32 %i.nl, %i.nm
  br i1 %i.of, label %group_has_capacity.exit.thread.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.og = load i64, ptr %i.jo, align 8            ; 2 uses
  %i.oh = zext i32 %i.nk to i64                   ; 2 uses
  %i.oi = mul i64 %i.og, %i.oh
  %i.oj = load i64, ptr %i.fv, align 8
  %i.ok = mul i64 %i.oj, 100
  %i.ol = icmp ult i64 %i.oi, %i.ok
  br i1 %i.ol, label %group_classify.exit.i.i.i, label %group_has_capacity.exit.i.i.i.i

group_has_capacity.exit.i.i.i.i:                  ; preds = %bb.bw
  %i.om = mul i64 %i.og, 100
  %i.on = load i64, ptr %i.fu, align 8
  %i.oo = mul i64 %i.on, %i.oh
  %i.op = icmp ugt i64 %i.om, %i.oo
  %cond.fr.i.i.i.i = freeze i1 %i.op
  br i1 %cond.fr.i.i.i.i, label %group_has_capacity.exit.thread.i.i.i.i, label %group_classify.exit.i.i.i

group_has_capacity.exit.thread.i.i.i.i:           ; preds = %group_has_capacity.exit.i.i.i.i, %bb.bv
  br label %group_classify.exit.i.i.i

group_classify.exit.i.i.i:                        ; preds = %group_has_capacity.exit.thread.i.i.i.i, %group_has_capacity.exit.i.i.i.i, %bb.bw, %bb.bu, %bb.bt, %bb.bs, %bb.br, %group_is_overloaded.exit.thread15.i.i.i.i, %group_is_overloaded.exit.i.i.i.i, %bb.bq
  %.0.i119.i.i.i = phi i32 [ 7, %bb.bq ], [ 7, %group_is_overloaded.exit.i.i.i.i ], [ 6, %group_is_overloaded.exit.thread15.i.i.i.i ], [ 5, %bb.br ], [ 4, %bb.bs ], [ 3, %bb.bt ], [ 2, %bb.bu ], [ 0, %group_has_capacity.exit.thread.i.i.i.i ], [ 1, %group_has_capacity.exit.i.i.i.i ], [ 1, %bb.bw ]
  %i.oq = getelementptr i8, ptr %.0.i.i162, i64 56 ; 2 uses
  store i32 %.0.i119.i.i.i, ptr %i.oq, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @sched_cache_active, i1 false) #28
          to label %record_sg_llc_stats.exit.i.i.i [label %bb.bx], !srcloc !32

bb.bx:                                            ; preds = %group_classify.exit.i.i.i
  %i.or = load i32, ptr %i.q, align 4
  %i.os = icmp eq i32 %i.or, 2
  br i1 %i.os, label %record_sg_llc_stats.exit.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ot = load ptr, ptr %7, align 8
  %i.ou = getelementptr i8, ptr %i.ot, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8
  %i.ow = load i32, ptr %i.h, align 4
  %i.ox = sext i32 %i.ow to i64
  %i.oy = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.ox
  %i.oz = load i64, ptr %i.oy, align 8
  %i.pa = add i64 %i.oz, ptrtoint (ptr @sd_llc to i64)
  %i.pb = inttoptr i64 %i.pa to ptr
  %i.pc = load volatile ptr, ptr %i.pb, align 8
  %.not.i121.i.i.i = icmp eq ptr %i.ov, %i.pc
  br i1 %.not.i121.i.i.i, label %bb.bz, label %record_sg_llc_stats.exit.i.i.i

bb.bz:                                            ; preds = %bb.by
  %i.pd = load i64, ptr %i.ex, align 8            ; 2 uses
  %.not.i.i.i122.i.i.i = icmp eq i64 %i.pd, 0
  br i1 %.not.i.i.i122.i.i.i, label %cpumask_first.exit.i123.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.pe = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.pd) #27, !srcloc !19
  %i.pf = shl i64 %i.pe, 32
  %i.pg = ashr exact i64 %i.pf, 29
  br label %cpumask_first.exit.i123.i.i.i

cpumask_first.exit.i123.i.i.i:                    ; preds = %bb.ca, %bb.bz
  %.0.i.i.i124.i.i.i = phi i64 [ 512, %bb.bz ], [ %i.pg, %bb.ca ]
  %i.ph = getelementptr i8, ptr @__per_cpu_offset, i64 %.0.i.i.i124.i.i.i
  %i.pi = load i64, ptr %i.ph, align 8
  %i.pj = add i64 %i.pi, ptrtoint (ptr @sd_llc_shared to i64)
  %i.pk = inttoptr i64 %i.pj to ptr
  %i.pl = load volatile ptr, ptr %i.pk, align 8   ; 3 uses
  %.not25.i.i.i.i = icmp eq ptr %i.pl, null
  br i1 %.not25.i.i.i.i, label %record_sg_llc_stats.exit.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %cpumask_first.exit.i123.i.i.i
  %i.pm = getelementptr i8, ptr %i.pl, i64 16     ; 2 uses
  %i.pn = load volatile i64, ptr %i.pm, align 8
  %i.po = load i64, ptr %i.fu, align 8            ; 2 uses
  %.not26.i.i.i.i = icmp eq i64 %i.pn, %i.po
  br i1 %.not26.i.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store volatile i64 %i.po, ptr %i.pm, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.pp = getelementptr i8, ptr %i.pl, i64 24     ; 2 uses
  %i.pq = load volatile i64, ptr %i.pp, align 8
  %i.pr = load i64, ptr %i.jo, align 8            ; 2 uses
  %.not27.i.i.i.i = icmp eq i64 %i.pq, %i.pr
  br i1 %.not27.i.i.i.i, label %record_sg_llc_stats.exit.i.i.i, label %bb.ce, !prof !23

bb.ce:                                            ; preds = %bb.cd
  store volatile i64 %i.pr, ptr %i.pp, align 8
  br label %record_sg_llc_stats.exit.i.i.i

record_sg_llc_stats.exit.i.i.i:                   ; preds = %bb.ce, %bb.cd, %cpumask_first.exit.i123.i.i.i, %bb.by, %bb.bx, %group_classify.exit.i.i.i
  %i.ps = load i32, ptr %i.oq, align 8            ; 6 uses
  %i.pt = icmp eq i32 %i.ps, 7
  br i1 %i.pt, label %bb.cf, label %update_sg_lb_stats.exit.i.i

bb.cf:                                            ; preds = %record_sg_llc_stats.exit.i.i.i
  %i.pu = load i64, ptr %i.ft, align 8
  %i.pv = shl i64 %i.pu, 10
  %i.pw = load i64, ptr %i.jo, align 8
  %i.px = udiv i64 %i.pv, %i.pw
  store i64 %i.px, ptr %.0.i.i162, align 8
  br label %update_sg_lb_stats.exit.i.i

update_sg_lb_stats.exit.i.i:                      ; preds = %bb.cf, %record_sg_llc_stats.exit.i.i.i
  br i1 %i.fc, label %update_sd_pick_busiest.exit.thread.i.i, label %bb.cg

bb.cg:                                            ; preds = %update_sg_lb_stats.exit.i.i
  %i.py = load i32, ptr %i.fw, align 4            ; 2 uses
  %.not.i64.i.i = icmp eq i32 %i.py, 0
  br i1 %.not.i64.i.i, label %update_sd_pick_busiest.exit.thread.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pz = load ptr, ptr %7, align 8
  %i.qa = getelementptr i8, ptr %i.pz, i64 60
  %i.qb = load i32, ptr %i.qa, align 4
  %i.qc = and i32 %i.qb, 32
  %.not51.i.i.i = icmp ne i32 %i.qc, 0            ; 2 uses
  %i.qd = icmp eq i32 %i.ps, 2
  %or.cond.i65.i.i = and i1 %i.qd, %.not51.i.i.i
  br i1 %or.cond.i65.i.i, label %bb.ci, label %._crit_edge.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.qe = load i8, ptr %i.j, align 8, !range !47, !noundef !48
  %i.qf = trunc nuw i8 %i.qe to i1
  br i1 %i.qf, label %bb.cj, label %update_sd_pick_busiest.exit.thread.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.qg = load i32, ptr %i.h, align 4
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.qh
  %i.qj = load i64, ptr %i.qi, align 8
  %i.qk = add i64 %i.qj, ptrtoint (ptr @runqueues to i64)
  %i.ql = inttoptr i64 %i.qk to ptr
  %i.qm = getelementptr i8, ptr %i.ql, i64 8
  %i.qn = load i64, ptr %i.qm, align 8
  %i.qo = shl i64 %i.qn, 10
  %i.qp = load ptr, ptr %i.jk, align 8
  %i.qq = getelementptr i8, ptr %i.qp, i64 24
  %i.qr = load i64, ptr %i.qq, align 8
  %i.qs = mul i64 %i.qr, 1078
  %i.qt = icmp ugt i64 %i.qo, %i.qs
  %i.qu = load i32, ptr %i.ao, align 8
  %.not52.i.i.i = icmp eq i32 %i.qu, 0
  %or.cond64.i = select i1 %i.qt, i1 %.not52.i.i.i, i1 false
  br i1 %or.cond64.i, label %._crit_edge.i.i.i, label %update_sd_pick_busiest.exit.thread.i.i

._crit_edge.i.i.i:                                ; preds = %bb.cj, %bb.ch
  %i.qv = load i32, ptr %i.ap, align 8            ; 2 uses
  %i.qw = icmp ugt i32 %i.ps, %i.qv
  br i1 %i.qw, label %update_sd_pick_busiest.exit.thread76.i.i, label %bb.ck

bb.ck:                                            ; preds = %._crit_edge.i.i.i
  %i.qx = icmp ult i32 %i.ps, %i.qv
  br i1 %i.qx, label %update_sd_pick_busiest.exit.thread.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  switch i32 %i.ps, label %bb.ct [
    i32 7, label %.split81.i.i
    i32 6, label %.split79.i.i
    i32 5, label %update_sd_pick_busiest.exit.thread.i.i
    i32 4, label %update_sd_pick_busiest.exit.i.i
    i32 2, label %.split80.i.i
    i32 3, label %bb.cm
    i32 1, label %bb.cn
    i32 0, label %bb.cq
  ]

.split81.i.i:                                     ; preds = %bb.cl
  %i.qy = load i64, ptr %.0.i.i162, align 8
  %i.qz = load i64, ptr %i.an, align 8
  %i.ra = icmp ugt i64 %i.qy, %i.qz
  br i1 %i.ra, label %update_sd_pick_busiest.exit.thread76.i.i, label %update_sd_pick_busiest.exit.thread.i.i

.split79.i.i:                                     ; preds = %bb.cl
  %.val.i67.i.i = load i32, ptr %i.as, align 4
  %.val59.i.i.i = load i32, ptr %i.fy, align 4
  %i.rb = icmp ugt i32 %.val59.i.i.i, %.val.i67.i.i
  br i1 %i.rb, label %update_sd_pick_busiest.exit.thread76.i.i, label %update_sd_pick_busiest.exit.thread.i.i

.split80.i.i:                                     ; preds = %bb.cl
  %i.rc = load i64, ptr %i.gb, align 8
  %i.rd = load i64, ptr %i.ar, align 8
  %i.re = icmp ugt i64 %i.rc, %i.rd
  br i1 %i.re, label %update_sd_pick_busiest.exit.thread76.i.i, label %update_sd_pick_busiest.exit.thread.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.rf = load i32, ptr %i.fz, align 8
  %.not54.i.i.i = icmp eq i32 %i.rf, 0
  %i.rg = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.not55.i.i.i = icmp eq i32 %i.rg, 0
  %or.cond66.i = select i1 %.not54.i.i.i, i1 %.not55.i.i.i, i1 false
  br i1 %or.cond66.i, label %bb.cn, label %smt_vs_nonsmt_groups.exit.thread.i.i.i

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.rh = load i64, ptr %.0.i.i162, align 8       ; 2 uses
  %i.ri = load i64, ptr %i.an, align 8            ; 2 uses
  %i.rj = icmp ult i64 %i.rh, %i.ri
  br i1 %i.rj, label %update_sd_pick_busiest.exit.thread.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rk = icmp eq i64 %i.rh, %i.ri
  br i1 %i.rk, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %bb.co
  %i.rl = load ptr, ptr %6, align 8
  %i.rm = getelementptr i8, ptr %i.rl, i64 36
  %i.rn = load i32, ptr %i.rm, align 4
  %i.ro = and i32 %i.rn, 128
  %.not56.i.i.i = icmp eq i32 %i.ro, 0
  br i1 %.not56.i.i.i, label %bb.ct, label %update_sd_pick_busiest.exit.thread.i.i

bb.cq:                                            ; preds = %bb.cl
  %i.rp = load ptr, ptr %6, align 8               ; 2 uses
  %i.rq = icmp ne ptr %i.rp, null
  %i.rr = icmp ne ptr %.054.i.i, null
  %or.cond.i.i.i.i = and i1 %i.rr, %i.rq
  br i1 %or.cond.i.i.i.i, label %smt_vs_nonsmt_groups.exit.i.i.i, label %smt_vs_nonsmt_groups.exit.thread.i.i.i

smt_vs_nonsmt_groups.exit.i.i.i:                  ; preds = %bb.cq
  %i.rs = getelementptr i8, ptr %i.rp, i64 36
  %i.rt = load i32, ptr %i.rs, align 4
  %i.ru = getelementptr i8, ptr %.054.i.i, i64 36
  %i.rv = load i32, ptr %i.ru, align 4            ; 2 uses
  %i.rw = xor i32 %i.rv, %i.rt
  %i.rx = and i32 %i.rw, 128
  %.not62.i.i.i = icmp eq i32 %i.rx, 0
  br i1 %.not62.i.i.i, label %smt_vs_nonsmt_groups.exit.thread.i.i.i, label %.split78.i.i

.split78.i.i:                                     ; preds = %smt_vs_nonsmt_groups.exit.i.i.i
  %i.ry = and i32 %i.rv, 128
  %.not53.i.i.i = icmp eq i32 %i.ry, 0
  %i.rz = icmp ne i32 %i.py, 1
  %or.cond.not.i.i.i = or i1 %i.rz, %.not53.i.i.i
  br i1 %or.cond.not.i.i.i, label %update_sd_pick_busiest.exit.thread76.i.i, label %update_sd_pick_busiest.exit.thread.i.i

smt_vs_nonsmt_groups.exit.thread.i.i.i:           ; preds = %smt_vs_nonsmt_groups.exit.i.i.i, %bb.cq, %bb.cm
  %i.sa = load i32, ptr %i.fz, align 8            ; 2 uses
  %i.sb = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.sc = icmp ugt i32 %i.sa, %i.sb
  br i1 %i.sc, label %update_sd_pick_busiest.exit.thread.i.i, label %bb.cr

bb.cr:                                            ; preds = %smt_vs_nonsmt_groups.exit.thread.i.i.i
  %i.sd = icmp eq i32 %i.sa, %i.sb
  br i1 %i.sd, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.se = load i32, ptr %i.fx, align 8
  %i.sf = load i32, ptr %i.aq, align 8
  %.not57.i.i.i = icmp ugt i32 %i.se, %i.sf
  br i1 %.not57.i.i.i, label %bb.ct, label %update_sd_pick_busiest.exit.thread.i.i

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cp, %bb.co, %bb.cl
  %i.sg = icmp ult i32 %i.ps, 2
  %or.cond61.i.i.i = and i1 %i.sg, %.not51.i.i.i
  br i1 %or.cond61.i.i.i, label %bb.cu, label %update_sd_pick_busiest.exit.thread76.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.sh = load ptr, ptr %i.jk, align 8
  %i.si = getelementptr i8, ptr %i.sh, i64 16
  %i.sj = load i64, ptr %i.si, align 8
  %i.sk = shl i64 %i.sj, 10
  %i.sl = load i32, ptr %i.h, align 4
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.sm
  %i.so = load i64, ptr %i.sn, align 8
  %i.sp = add i64 %i.so, ptrtoint (ptr @runqueues to i64)
  %i.sq = inttoptr i64 %i.sp to ptr
  %i.sr = getelementptr i8, ptr %i.sq, i64 8
  %i.ss = load i64, ptr %i.sr, align 8
  %i.st = mul i64 %i.ss, 1078
  %i.su = icmp ugt i64 %i.sk, %i.st
  br i1 %i.su, label %update_sd_pick_busiest.exit.thread.i.i, label %update_sd_pick_busiest.exit.thread76.i.i

update_sd_pick_busiest.exit.i.i:                  ; preds = %bb.cl
  %i.sv = load ptr, ptr %6, align 8
  %i.sw = getelementptr i8, ptr %i.sv, i64 32
  %i.sx = load volatile i32, ptr %i.sw, align 8
  %i.sy = getelementptr i8, ptr %.054.i.i, i64 32
  %i.sz = load volatile i32, ptr %i.sy, align 8
  %i.ta = call i32 @arch_asym_cpu_priority(i32 noundef %i.sx) #29
  %i.tb = call i32 @arch_asym_cpu_priority(i32 noundef %i.sz) #29
  %i.tc = icmp sgt i32 %i.ta, %i.tb
  br i1 %i.tc, label %update_sd_pick_busiest.exit.thread76.i.i, label %update_sd_pick_busiest.exit.thread.i.i

update_sd_pick_busiest.exit.thread76.i.i:         ; preds = %update_sd_pick_busiest.exit.i.i, %bb.cu, %bb.ct, %.split78.i.i, %.split80.i.i, %.split79.i.i, %.split81.i.i, %._crit_edge.i.i.i
  store ptr %.054.i.i, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.an, ptr noundef nonnull align 8 dereferenceable(88) %.0.i.i162, i64 88, i1 false)
  br label %update_sd_pick_busiest.exit.thread.i.i

update_sd_pick_busiest.exit.thread.i.i:           ; preds = %update_sd_pick_busiest.exit.thread76.i.i, %update_sd_pick_busiest.exit.i.i, %bb.cu, %bb.cs, %smt_vs_nonsmt_groups.exit.thread.i.i.i, %.split78.i.i, %bb.cp, %bb.cn, %.split80.i.i, %.split79.i.i, %.split81.i.i, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.cg, %update_sg_lb_stats.exit.i.i
  %i.td = load i64, ptr %i.ft, align 8
  %i.te = load i64, ptr %i.at, align 8
  %i.tf = add i64 %i.te, %i.td
  store i64 %i.tf, ptr %i.at, align 8
  %i.tg = load i64, ptr %i.jo, align 8
  %i.th = load i64, ptr %i.au, align 8
  %i.ti = add i64 %i.th, %i.tg
  store i64 %i.ti, ptr %i.au, align 8
  %i.tj = load i64, ptr %i.fu, align 8
  %i.tk = add i64 %i.tj, %.053.i.i                ; 2 uses
  %i.tl = load ptr, ptr %.054.i.i, align 8        ; 2 uses
  %i.tm = load ptr, ptr %7, align 8               ; 5 uses
  %i.tn = getelementptr i8, ptr %i.tm, i64 16
  %i.to = load ptr, ptr %i.tn, align 8
  %.not58.i.i = icmp eq ptr %i.tl, %i.to
  br i1 %.not58.i.i, label %bb.cv, label %arch_test_bit.exit.i.i, !llvm.loop !264

bb.cv:                                            ; preds = %update_sd_pick_busiest.exit.thread.i.i
  %i.tp = load ptr, ptr %6, align 8               ; 2 uses
  %.not59.i.i = icmp eq ptr %i.tp, null
  br i1 %.not59.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.tq = getelementptr i8, ptr %i.tp, i64 36
  %i.tr = load i32, ptr %i.tq, align 4
  %i.ts = lshr i32 %i.tr, 12
  %.lobit.i.i = and i32 %i.ts, 1
  store i32 %.lobit.i.i, ptr %i.av, align 8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.tt = getelementptr i8, ptr %i.tm, i64 60
  %i.tu = load i32, ptr %i.tt, align 4
  %i.tv = and i32 %i.tu, 8192
  %.not60.i.i = icmp eq i32 %i.tv, 0
  br i1 %.not60.i.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store i32 2, ptr %i.x, align 8
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.tw = load ptr, ptr %i.tm, align 8
  %.not61.i.i = icmp eq ptr %i.tw, null
  br i1 %.not61.i.i, label %bb.da, label %set_rd_overloaded.exit.i.i

bb.da:                                            ; preds = %bb.cz
  %i.tx = load ptr, ptr %i.i, align 8
  %i.ty = getelementptr i8, ptr %i.tx, i64 2760
  %i.tz = load ptr, ptr %i.ty, align 8
  %i.ua = getelementptr i8, ptr %i.tz, i64 40     ; 2 uses
  %i.ub = load volatile i8, ptr %i.ua, align 8, !range !47, !noundef !48
  %.not.i68.i.i = icmp eq i8 %.2.i.i, %i.ub
  br i1 %.not.i68.i.i, label %set_rd_overloaded.exit.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  store volatile i8 %.2.i.i, ptr %i.ua, align 8
  %.pre84.i.i = load ptr, ptr %7, align 8
  br label %set_rd_overloaded.exit.i.i

set_rd_overloaded.exit.i.i:                       ; preds = %bb.db, %bb.da, %bb.cz
  %i.uc = phi ptr [ %i.tm, %bb.cz ], [ %.pre84.i.i, %bb.db ], [ %i.tm, %bb.da ] ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @sched_feat_keys, i64 256), i1 true) #28
          to label %bb.dc [label %update_sd_lb_stats.exit.i], !srcloc !32

bb.dc:                                            ; preds = %set_rd_overloaded.exit.i.i
  %i.ud = load i32, ptr %i.q, align 4
  %i.ue = icmp eq i32 %i.ud, 2
  br i1 %i.ue, label %update_sd_lb_stats.exit.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.uf = getelementptr i8, ptr %i.uc, i64 360
  %i.ug = load ptr, ptr %i.uf, align 8            ; 2 uses
  %.not.i69.i.i = icmp eq ptr %i.ug, null
  br i1 %.not.i69.i.i, label %update_sd_lb_stats.exit.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.uh = getelementptr i8, ptr %i.uc, i64 368
  %i.ui = load i32, ptr %i.uh, align 8            ; 2 uses
  %i.uj = zext i32 %i.ui to i64
  %i.uk = udiv i64 %i.tk, %i.uj
  %i.ul = getelementptr i8, ptr %i.uc, i64 44
  %i.um = load i32, ptr %i.ul, align 4
  %i.un = sext i32 %i.um to i64
  %i.uo = mul i64 %i.uk, %i.un                    ; 2 uses
  %i.up = mul i64 %i.uo, %i.uo
  %i.uq = udiv i64 %i.up, 10240000
  %i.ur = call i64 @llvm.usub.sat.i64(i64 1024, i64 %i.uq)
  %i.us = sext i32 %i.ui to i64
  %i.ut = mul nsw i64 %i.ur, %i.us
  %i.uu = lshr i64 %i.ut, 10
  %i.uv = trunc i64 %i.uu to i32                  ; 2 uses
  %i.uw = getelementptr i8, ptr %i.ug, i64 12     ; 2 uses
  %i.ux = load i32, ptr %i.uw, align 4
  %.not40.i.i.i = icmp eq i32 %i.ux, %i.uv
  br i1 %.not40.i.i.i, label %update_sd_lb_stats.exit.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  store volatile i32 %i.uv, ptr %i.uw, align 4
  br label %update_sd_lb_stats.exit.i

update_sd_lb_stats.exit.i:                        ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc, %set_rd_overloaded.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.uy = load ptr, ptr %6, align 8               ; 4 uses
  %.not.i163 = icmp eq ptr %i.uy, null
  br i1 %.not.i163, label %calculate_imbalance.exit.thread134.i.sink.split, label %bb.dg

bb.dg:                                            ; preds = %update_sd_lb_stats.exit.i
  %i.uz = load i32, ptr %i.ap, align 8            ; 10 uses
  %i.va = icmp eq i32 %i.uz, 2
  br i1 %i.va, label %.thread58.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.vb = and i32 %i.uz, -2
  %switch.i = icmp eq i32 %i.vb, 4
  br i1 %switch.i, label %bb.dv, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.vc = load i32, ptr %i.ao, align 8            ; 4 uses
  %i.vd = icmp ugt i32 %i.vc, %i.uz
  br i1 %i.vd, label %calculate_imbalance.exit.thread134.i.sink.split, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ve = icmp eq i32 %i.vc, 7
  br i1 %i.ve, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %i.vf = load i64, ptr %i.al, align 8            ; 4 uses
  %i.vg = load i64, ptr %i.an, align 8            ; 3 uses
  %.not38.i166 = icmp ult i64 %i.vf, %i.vg
  br i1 %.not38.i166, label %bb.dl, label %calculate_imbalance.exit.thread134.i.sink.split

bb.dl:                                            ; preds = %bb.dk
  %i.vh = load i64, ptr %i.at, align 8
  %i.vi = shl i64 %i.vh, 10
  %i.vj = load i64, ptr %i.au, align 8
  %i.vk = udiv i64 %i.vi, %i.vj                   ; 3 uses
  store i64 %i.vk, ptr %i.aw, align 8
  %.not39.i167 = icmp ult i64 %i.vf, %i.vk
  br i1 %.not39.i167, label %bb.dm, label %calculate_imbalance.exit.thread134.i.sink.split

bb.dm:                                            ; preds = %bb.dl
  %i.vl = mul i64 %i.vg, 100
  %i.vm = load ptr, ptr %7, align 8
  %i.vn = getelementptr i8, ptr %i.vm, i64 44
  %i.vo = load i32, ptr %i.vn, align 4
  %i.vp = zext i32 %i.vo to i64
  %i.vq = mul i64 %i.vf, %i.vp
  %.not40.i168 = icmp ugt i64 %i.vl, %i.vq
  br i1 %.not40.i168, label %.thread.thread.i, label %calculate_imbalance.exit.thread134.i.sink.split

bb.dn:                                            ; preds = %bb.dj
  %i.vr = load i32, ptr %i.av, align 8
  %.not41.i = icmp ne i32 %i.vr, 0
  %i.vs = icmp eq i32 %i.vc, 0                    ; 2 uses
  %or.cond.i = and i1 %i.vs, %.not41.i
  br i1 %or.cond.i, label %bb.do, label %.thread.i

bb.do:                                            ; preds = %bb.dn
  %i.vt = icmp eq i32 %i.uz, 6
  br i1 %i.vt, label %.sink.split, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.val.i165 = load i32, ptr %i.q, align 4        ; 2 uses
  %i.vu = call fastcc i64 @sibling_imbalance(i32 %.val.i165, ptr noundef nonnull %6, ptr noundef nonnull %i.an, ptr noundef nonnull %i.al) #29
  %i.vv = icmp sgt i64 %i.vu, 1
  br i1 %i.vv, label %bb.dv, label %.thread.thread124.i

.thread.i:                                        ; preds = %bb.dn
  %.not42.i = icmp eq i32 %i.uz, 7
  br i1 %.not42.i, label %.thread61.i, label %thread-pre-split.i

.thread.thread124.i:                              ; preds = %bb.dp
  %.not42125.i = icmp eq i32 %i.uz, 7
  br i1 %.not42125.i, label %.thread62.i, label %bb.dq

.thread.thread.i:                                 ; preds = %bb.dm
  %.not42123.i = icmp eq i32 %i.uz, 7
  br i1 %.not42123.i, label %._crit_edge.i, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %.thread.thread.i, %.thread.i
  %.pr.i = load i32, ptr %i.q, align 4
  br label %bb.dq

bb.dq:                                            ; preds = %thread-pre-split.i, %.thread.thread124.i
  %i.vw = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %.val.i165, %.thread.thread124.i ]
  %.not43.i = icmp eq i32 %i.vw, 0
  br i1 %.not43.i, label %calculate_imbalance.exit.thread134.i.sink.split, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.vx = icmp eq i32 %i.uz, 3
  br i1 %i.vx, label %bb.ds, label %smt_vs_nonsmt_groups.exit.thread.i

bb.ds:                                            ; preds = %bb.dr
  %i.vy = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not70.i = icmp eq ptr %i.vy, null
  br i1 %.not70.i, label %smt_vs_nonsmt_groups.exit.thread.i, label %smt_vs_nonsmt_groups.exit.i

smt_vs_nonsmt_groups.exit.i:                      ; preds = %bb.ds
  %i.vz = getelementptr i8, ptr %i.vy, i64 36
  %i.wa = load i32, ptr %i.vz, align 4
  %i.wb = getelementptr i8, ptr %i.uy, i64 36
  %i.wc = load i32, ptr %i.wb, align 4
  %i.wd = xor i32 %i.wc, %i.wa
  %i.we = and i32 %i.wd, 128
  %.not71.i = icmp eq i32 %i.we, 0
  br i1 %.not71.i, label %smt_vs_nonsmt_groups.exit.thread.i, label %bb.dy

smt_vs_nonsmt_groups.exit.thread.i:               ; preds = %smt_vs_nonsmt_groups.exit.i, %bb.ds, %bb.dr
  %i.wf = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 4
  %i.wg = icmp ugt i32 %i.wf, 1
  br i1 %i.wg, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %smt_vs_nonsmt_groups.exit.thread.i
  %i.wh = load i32, ptr %i.ax, align 8
  %i.wi = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.wj = add i32 %i.wi, 1
  %.not44.i = icmp ule i32 %i.wh, %i.wj
  %i.wk = load i32, ptr %.old.i, align 4
  %i.wl = icmp eq i32 %i.wk, 1
  %or.cond49.i = select i1 %.not44.i, i1 true, i1 %i.wl
  br i1 %or.cond49.i, label %calculate_imbalance.exit.thread134.i.sink.split, label %bb.dv

bb.du:                                            ; preds = %smt_vs_nonsmt_groups.exit.thread.i
  %.old47.i = load i32, ptr %.old.i, align 4
  %.old48.i = icmp eq i32 %.old47.i, 1
  br i1 %.old48.i, label %calculate_imbalance.exit.thread134.i.sink.split, label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.dp, %bb.dh
  switch i32 %i.uz, label %bb.dz [
    i32 5, label %bb.dy
    i32 4, label %bb.dx
    i32 3, label %bb.dy
    i32 6, label %.sink.split
  ]

.thread58.i:                                      ; preds = %bb.dg
  %i.wm = load ptr, ptr %7, align 8
  %i.wn = getelementptr i8, ptr %i.wm, i64 60
  %i.wo = load i32, ptr %i.wn, align 4
  %i.wp = and i32 %i.wo, 32
  %.not94.i.i = icmp eq i32 %i.wp, 0
  br i1 %.not94.i.i, label %bb.dw, label %.sink.split

bb.dw:                                            ; preds = %.thread58.i
  store i32 0, ptr %i.y, align 4
  %i.wq = load i64, ptr %i.ar, align 8
  br label %calculate_imbalance.exit.i.sink.split

bb.dx:                                            ; preds = %bb.dv
  store i32 2, ptr %i.y, align 4
  %i.wr = load i32, ptr %.old.i, align 4
  %i.ws = zext i32 %i.wr to i64
  br label %calculate_imbalance.exit.i.sink.split

bb.dy:                                            ; preds = %smt_vs_nonsmt_groups.exit.i, %bb.dv, %bb.dv
  br label %.sink.split

bb.dz:                                            ; preds = %bb.dv
  %i.wt = load i32, ptr %i.ao, align 8            ; 2 uses
  %i.wu = icmp eq i32 %i.wt, 0
  br i1 %i.wu, label %bb.ea, label %bb.el

.thread61.i:                                      ; preds = %.thread.i
  br i1 %i.vs, label %.thread62.i, label %bb.el

bb.ea:                                            ; preds = %bb.dz
  %i.wv = icmp ugt i32 %i.uz, 1
  br i1 %i.wv, label %.thread62.i, label %bb.ec

.thread62.i:                                      ; preds = %bb.ea, %.thread61.i, %.thread.thread124.i
  %i.ww = load ptr, ptr %7, align 8
  %i.wx = getelementptr i8, ptr %i.ww, i64 60
  %i.wy = load i32, ptr %i.wx, align 4
  %i.wz = and i32 %i.wy, 512
  %.not89.i.i = icmp eq i32 %i.wz, 0
  br i1 %.not89.i.i, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %.thread62.i
  store i32 1, ptr %i.y, align 4
  %i.xa = load i64, ptr %.phi.trans.insert76.i, align 8 ; 2 uses
  %i.xb = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.xc = call i64 @llvm.usub.sat.i64(i64 %i.xa, i64 %i.xb) ; 2 uses
  store i64 %i.xc, ptr %i.r, align 8
  %i.xd = load i32, ptr %i.q, align 4
  %.not90.i.i = icmp eq i32 %i.xd, 0
  %.not91.i.i = icmp ugt i64 %i.xa, %i.xb
  %or.cond.i53.i = select i1 %.not90.i.i, i1 true, i1 %.not91.i.i
  br i1 %or.cond.i53.i, label %calculate_imbalance.exit.i, label %.sink.split

bb.ec:                                            ; preds = %.thread62.i, %bb.ea
  %i.xe = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 4
  %i.xf = icmp ne i32 %i.xe, 1
  %i.xg = load i32, ptr %i.av, align 8
  %.not92.i.i = icmp eq i32 %i.xg, 0
  %or.cond69.i = select i1 %i.xf, i1 %.not92.i.i, i1 false
  store i32 2, ptr %i.y, align 4
  br i1 %or.cond69.i, label %bb.ei, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %.val.i.i = load i32, ptr %i.q, align 4
  %.not.i.i52.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i52.i, label %sibling_imbalance.exit.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.xh = load i32, ptr %i.aq, align 8            ; 5 uses
  %.not45.i.i.i = icmp eq i32 %i.xh, 0
  br i1 %.not45.i.i.i, label %sibling_imbalance.exit.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.xi = getelementptr i8, ptr %i.uy, i64 16
  %i.xj = load i32, ptr %i.xi, align 8            ; 4 uses
  %i.xk = load ptr, ptr %i.am, align 8
  %i.xl = getelementptr i8, ptr %i.xk, i64 16
  %i.xm = load i32, ptr %i.xl, align 8            ; 4 uses
  %i.xn = icmp eq i32 %i.xj, %i.xm
  br i1 %i.xn, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.xo = zext i32 %i.xh to i64
  %i.xp = load i32, ptr %i.ba, align 8
  %i.xq = call i32 @llvm.umin.i32(i32 %i.xh, i32 %i.xp)
  %i.xr = zext i32 %i.xq to i64
  %i.xs = sub nsw i64 %i.xo, %i.xr
  br label %sibling_imbalance.exit.i.i

bb.eh:                                            ; preds = %bb.ef
  %i.xt = mul i32 %i.xm, %i.xh                    ; 2 uses
  %i.xu = zext i32 %i.xt to i64
  %i.xv = load i32, ptr %i.ba, align 8            ; 2 uses
  %i.xw = mul i32 %i.xv, %i.xj
  %i.xx = call i32 @llvm.umin.i32(i32 %i.xt, i32 %i.xw)
  %i.xy = zext i32 %i.xx to i64
  %i.xz = sub nsw i64 %i.xu, %i.xy
  %i.ya = shl nsw i64 %i.xz, 1
  %i.yb = sext i32 %i.xm to i64
  %i.yc = sext i32 %i.xj to i64
  %i.yd = add nsw i64 %i.yb, %i.yc
  %i.ye = add nsw i64 %i.yd, %i.ya
  %i.yf = add i32 %i.xm, %i.xj
  %i.yg = sext i32 %i.yf to i64
  %i.yh = sdiv i64 %i.ye, %i.yg                   ; 2 uses
  %i.yi = icmp sgt i64 %i.yh, 1
  %i.yj = icmp ne i32 %i.xv, 0
  %or.cond.not3.i.i.i = or i1 %i.yj, %i.yi
  %.not46.i.i.i = icmp eq i32 %i.xh, 1
  %or.cond47.i.i.i = or i1 %.not46.i.i.i, %or.cond.not3.i.i.i
  %.040.i.i.i = select i1 %or.cond47.i.i.i, i64 %i.yh, i64 2
  br label %sibling_imbalance.exit.i.i

bb.ei:                                            ; preds = %bb.ec
  %i.yk = load i32, ptr %i.ax, align 8
  %i.yl = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ym = sub i32 %i.yk, %i.yl
  %i.yn = zext i32 %i.ym to i64
  br label %sibling_imbalance.exit.i.i

sibling_imbalance.exit.i.i:                       ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ee, %bb.ed
  %.sink.i.i = phi i64 [ %i.yn, %bb.ei ], [ %i.xs, %bb.eg ], [ %.040.i.i.i, %bb.eh ], [ 0, %bb.ee ], [ 0, %bb.ed ] ; 5 uses
  store i64 %.sink.i.i, ptr %i.r, align 8
  %i.yo = load ptr, ptr %7, align 8               ; 2 uses
  %i.yp = getelementptr i8, ptr %i.yo, i64 60
  %i.yq = load i32, ptr %i.yp, align 4
  %i.yr = and i32 %i.yq, 8192
  %.not93.i.i = icmp eq i32 %i.yr, 0
  br i1 %.not93.i.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %sibling_imbalance.exit.i.i
  %i.ys = trunc i64 %.sink.i.i to i32
  %i.yt = load i32, ptr %i.ba, align 8
  %i.yu = add i32 %i.yt, 1
  %i.yv = getelementptr i8, ptr %i.yo, i64 52
  %i.yw = load i32, ptr %i.yv, align 4
  %i.yx = icmp sgt i32 %i.yu, %i.yw
  %sext.i.i = shl i64 %.sink.i.i, 32
  %i.yy = ashr exact i64 %sext.i.i, 32
  %i.yz = icmp slt i32 %i.ys, 3
  %i.za = and i64 %.sink.i.i, 4294967295
  %spec.select.i.i.i = select i1 %i.yz, i64 0, i64 %i.za
  %.0.i95.i.i = select i1 %i.yx, i64 %i.yy, i64 %spec.select.i.i.i
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %sibling_imbalance.exit.i.i
  %i.zb = phi i64 [ %.0.i95.i.i, %bb.ej ], [ %.sink.i.i, %sibling_imbalance.exit.i.i ]
  %i.zc = ashr i64 %i.zb, 1
  br label %calculate_imbalance.exit.i.sink.split

bb.el:                                            ; preds = %.thread61.i, %bb.dz
  %i.zd = phi i32 [ %i.vc, %.thread61.i ], [ %i.wt, %bb.dz ]
  %i.ze = icmp ult i32 %i.zd, 7
  %.pre.i = load i64, ptr %i.an, align 8          ; 3 uses
  br i1 %i.ze, label %bb.em, label %.._crit_edge.i_crit_edge

.._crit_edge.i_crit_edge:                         ; preds = %bb.el
  %.pre74.i.pre = load i64, ptr %i.aw, align 8
  %.pre75.i.pre = load i64, ptr %i.al, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.._crit_edge.i_crit_edge, %.thread.thread.i
  %.pre75.i = phi i64 [ %.pre75.i.pre, %.._crit_edge.i_crit_edge ], [ %i.vf, %.thread.thread.i ]
  %.pre74.i = phi i64 [ %.pre74.i.pre, %.._crit_edge.i_crit_edge ], [ %i.vk, %.thread.thread.i ]
  %.pre130.i = phi i64 [ %.pre.i, %.._crit_edge.i_crit_edge ], [ %i.vg, %.thread.thread.i ]
  %.pre77.i = load i64, ptr %.phi.trans.insert76.i, align 8
  br label %bb.eo

bb.em:                                            ; preds = %bb.el
  %i.zf = load i64, ptr %i.ay, align 8
  %i.zg = shl i64 %i.zf, 10
  %i.zh = load i64, ptr %.phi.trans.insert76.i, align 8 ; 2 uses
  %i.zi = udiv i64 %i.zg, %i.zh                   ; 3 uses
  %.not.i51.i = icmp ult i64 %i.zi, %.pre.i
  br i1 %.not.i51.i, label %bb.en, label %calculate_imbalance.exit.thread134.i.sink.split

bb.en:                                            ; preds = %bb.em
  %i.zj = load i64, ptr %i.at, align 8
  %i.zk = shl i64 %i.zj, 10
  %i.zl = load i64, ptr %i.au, align 8
  %i.zm = udiv i64 %i.zk, %i.zl                   ; 2 uses
  %.not88.i.i = icmp ult i64 %i.zi, %i.zm
  br i1 %.not88.i.i, label %bb.eo, label %calculate_imbalance.exit.thread134.i.sink.split

bb.eo:                                            ; preds = %bb.en, %._crit_edge.i
  %.pre129.i = phi i64 [ %.pre130.i, %._crit_edge.i ], [ %.pre.i, %bb.en ]
  %i.zn = phi i64 [ %.pre77.i, %._crit_edge.i ], [ %i.zh, %bb.en ]
  %i.zo = phi i64 [ %.pre75.i, %._crit_edge.i ], [ %i.zi, %bb.en ]
  %i.zp = phi i64 [ %.pre74.i, %._crit_edge.i ], [ %i.zm, %bb.en ] ; 2 uses
  store i32 0, ptr %i.y, align 4
  %i.zq = sub i64 %.pre129.i, %i.zp
  %i.zr = load i64, ptr %i.az, align 8
  %i.zs = mul i64 %i.zr, %i.zq
  %i.zt = sub i64 %i.zp, %i.zo
  %i.zu = mul i64 %i.zt, %i.zn
  %i.zv = call i64 @llvm.umin.i64(i64 %i.zs, i64 %i.zu)
  %i.zw = lshr i64 %i.zv, 10
  br label %calculate_imbalance.exit.i.sink.split

calculate_imbalance.exit.i.sink.split:            ; preds = %bb.dw, %bb.dx, %bb.ek, %bb.eo
  %.sink = phi i64 [ %i.zw, %bb.eo ], [ %i.zc, %bb.ek ], [ %i.ws, %bb.dx ], [ %i.wq, %bb.dw ] ; 2 uses
  store i64 %.sink, ptr %i.r, align 8
  br label %calculate_imbalance.exit.i

calculate_imbalance.exit.i:                       ; preds = %calculate_imbalance.exit.i.sink.split, %bb.eb
  %i.zx = phi i64 [ %i.xc, %bb.eb ], [ %.sink, %calculate_imbalance.exit.i.sink.split ]
  %.fr.i = freeze i64 %i.zx
  %.not45.i = icmp eq i64 %.fr.i, 0
  br i1 %.not45.i, label %calculate_imbalance.exit.thread134.i, label %bb.eq

calculate_imbalance.exit.thread134.i.sink.split:  ; preds = %update_sd_lb_stats.exit.i, %bb.di, %bb.dk, %bb.dl, %bb.dm, %bb.dq, %bb.dt, %bb.du, %bb.em, %bb.en
  store i64 0, ptr %i.r, align 8
  br label %calculate_imbalance.exit.thread134.i

calculate_imbalance.exit.thread134.i:             ; preds = %calculate_imbalance.exit.i, %calculate_imbalance.exit.thread134.i.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @sched_schedstats, i1 false) #28
          to label %arch_static_branch.exit154 [label %bb.ep], !srcloc !32

bb.ep:                                            ; preds = %calculate_imbalance.exit.thread134.i
  %i.zy = getelementptr i8, ptr %2, i64 260
  %i.zz = getelementptr [4 x i8], ptr %i.zy, i64 %.pre-phi ; 2 uses
  %i.aaa = load i32, ptr %i.zz, align 4
  %i.aab = add i32 %i.aaa, 1
  store i32 %i.aab, ptr %i.zz, align 4
  br label %arch_static_branch.exit154

.sink.split:                                      ; preds = %bb.eb, %bb.do, %bb.dv, %.thread58.i, %bb.dy
  %.sink483 = phi i32 [ 4, %bb.do ], [ 3, %.thread58.i ], [ 2, %bb.dy ], [ 4, %bb.dv ], [ 2, %bb.eb ]
  store i32 %.sink483, ptr %i.y, align 4
  store i64 1, ptr %i.r, align 8
  br label %bb.eq

bb.eq:                                            ; preds = %.sink.split, %calculate_imbalance.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.aac = getelementptr i8, ptr %i.uy, i64 40
  br label %bb.er

bb.er:                                            ; preds = %bb.fp, %bb.eq
  %i.aad = phi i64 [ 0, %bb.eq ], [ %i.aej, %bb.fp ]
  %.0112.i = phi ptr [ null, %bb.eq ], [ %.3.i, %bb.fp ] ; 15 uses
  %.066111.i = phi i64 [ 0, %bb.eq ], [ %.268.i, %bb.fp ] ; 15 uses
  %.069110.i = phi i64 [ 0, %bb.eq ], [ %.271.i, %bb.fp ] ; 15 uses
  %.072109.i = phi i64 [ 1, %bb.eq ], [ %.274.i, %bb.fp ] ; 14 uses
  %.075108.i = phi i32 [ 0, %bb.eq ], [ %.378.i, %bb.fp ] ; 15 uses
  %.080107.i = phi i32 [ 0, %bb.eq ], [ %.282.i, %bb.fp ] ; 15 uses
  %i.aae = load ptr, ptr %i.s, align 8
  %i.aaf = load i64, ptr %i.aac, align 8
  %i.aag = load i64, ptr %i.aae, align 8
  %i.aah = shl nsw i64 -1, %i.aad
  %i.aai = and i64 %i.aaf, %i.aah
  %i.aaj = and i64 %i.aai, %i.aag                 ; 2 uses
  %.not.i.i171 = icmp eq i64 %i.aaj, 0
  br i1 %.not.i.i171, label %sched_balance_find_src_rq.exit, label %find_next_and_bit.exit.i172

find_next_and_bit.exit.i172:                      ; preds = %bb.er
  %i.aak = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.aaj) #27, !srcloc !19 ; 3 uses
  %i.aal = trunc i64 %i.aak to i32                ; 4 uses
  %i.aam = icmp ult i32 %i.aal, 64
  br i1 %i.aam, label %bb.es, label %sched_balance_find_src_rq.exit

bb.es:                                            ; preds = %find_next_and_bit.exit.i172
  %i.aan = and i64 %i.aak, 63
  %i.aao = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.aan ; 3 uses
  %i.aap = load i64, ptr %i.aao, align 8
  %i.aaq = add i64 %i.aap, ptrtoint (ptr @runqueues to i64)
  %i.aar = inttoptr i64 %i.aaq to ptr             ; 11 uses
  %i.aas = getelementptr i8, ptr %i.aar, i64 152
  %i.aat = load i32, ptr %i.aas, align 8          ; 6 uses
  %.not.i176 = icmp eq i32 %i.aat, 0
  br i1 %.not.i176, label %bb.fp, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aau = getelementptr i8, ptr %i.aar, i64 8    ; 2 uses
  %i.aav = load i64, ptr %i.aau, align 8          ; 3 uses
  %i.aaw = load ptr, ptr %7, align 8
  %i.aax = getelementptr i8, ptr %i.aaw, i64 60   ; 2 uses
  %i.aay = load i32, ptr %i.aax, align 4          ; 2 uses
  %i.aaz = and i32 %i.aay, 32
  %.not90.i = icmp eq i32 %i.aaz, 0
  %.pre.i177 = load i32, ptr %i.h, align 4        ; 2 uses
  br i1 %.not90.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aba = sext i32 %.pre.i177 to i64
  %i.abb = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.aba
  %i.abc = load i64, ptr %i.abb, align 8
  %i.abd = add i64 %i.abc, ptrtoint (ptr @runqueues to i64)
  %i.abe = inttoptr i64 %i.abd to ptr
  %i.abf = getelementptr i8, ptr %i.abe, i64 8
  %i.abg = load i64, ptr %i.abf, align 8
  %i.abh = shl i64 %i.abg, 10
  %i.abi = mul i64 %i.aav, 1078
  %i.abj = icmp ule i64 %i.abh, %i.abi
  %i.abk = icmp eq i32 %i.aat, 1
  %or.cond.i178 = and i1 %i.abk, %i.abj
  br i1 %or.cond.i178, label %bb.fp, label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.abl = and i32 %i.aay, 2048
  %.not.i.i.i179 = icmp eq i32 %i.abl, 0
  br i1 %.not.i.i.i179, label %sched_asym.exit.thread.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @sched_smt_present, i1 true) #28
          to label %bb.ex [label %sched_asym.exit.i], !srcloc !94

bb.ex:                                            ; preds = %bb.ew
  %i.abm = load i32, ptr %i.aax, align 4
  %i.abn = and i32 %i.abm, 128
  %.not3.i.i.i = icmp eq i32 %i.abn, 0
  br i1 %.not3.i.i.i, label %.preheader.i, label %sched_asym.exit.i

.preheader.i:                                     ; preds = %bb.ex, %bb.fa
  %i.abo = phi i64 [ %i.acb, %bb.fa ], [ 0, %bb.ex ]
  %i.abp = load i64, ptr %i.aao, align 8
  %i.abq = add i64 %i.abp, ptrtoint (ptr @cpu_sibling_map to i64)
  %i.abr = inttoptr i64 %i.abq to ptr
  %i.abs = load i64, ptr %i.abr, align 8
  %i.abt = shl nsw i64 -1, %i.abo
  %i.abu = and i64 %i.abs, %i.abt                 ; 2 uses
  %.not23.i.i.i.i.i = icmp eq i64 %i.abu, 0
  br i1 %.not23.i.i.i.i.i, label %sched_asym.exit.i, label %find_next_bit.exit.i.i.i.i

find_next_bit.exit.i.i.i.i:                       ; preds = %.preheader.i
  %i.abv = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.abu) #27, !srcloc !19 ; 2 uses
  %i.abw = trunc i64 %i.abv to i32                ; 3 uses
  %i.abx = icmp ugt i32 %i.abw, 63
  br i1 %i.abx, label %sched_asym.exit.i, label %bb.ey

bb.ey:                                            ; preds = %find_next_bit.exit.i.i.i.i
  %i.aby = icmp eq i32 %i.aal, %i.abw
  br i1 %i.aby, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.abz = call i32 @idle_cpu(i32 noundef %i.abw) #26
  %.not.i.i.i.i182 = icmp eq i32 %i.abz, 0
  br i1 %.not.i.i.i.i182, label %sched_asym.exit.thread.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.aca = add nuw nsw i64 %i.abv, 1
  %i.acb = and i64 %i.aca, 127                    ; 2 uses
  %.not.i.i.i.i.i183 = icmp samesign ult i64 %i.acb, 64
  br i1 %.not.i.i.i.i.i183, label %.preheader.i, label %sched_asym.exit.i, !prof !20, !llvm.loop !95

sched_asym.exit.thread.i:                         ; preds = %bb.ez, %bb.ev
  %i.acc = icmp eq i32 %i.aat, 1
  br label %bb.fb

sched_asym.exit.i:                                ; preds = %bb.fa, %find_next_bit.exit.i.i.i.i, %.preheader.i, %bb.ex, %bb.ew
  %i.acd = call i32 @arch_asym_cpu_priority(i32 noundef %i.aal) #29
  %i.ace = call i32 @arch_asym_cpu_priority(i32 noundef %.pre.i177) #29
  %i.acf = icmp sgt i32 %i.acd, %i.ace
  %i.acg = icmp eq i32 %i.aat, 1                  ; 2 uses
  %or.cond3.i = and i1 %i.acg, %i.acf
  br i1 %or.cond3.i, label %bb.fp, label %bb.fb

bb.fb:                                            ; preds = %sched_asym.exit.i, %sched_asym.exit.thread.i
  %i.ach = phi i1 [ %i.acc, %sched_asym.exit.thread.i ], [ %i.acg, %sched_asym.exit.i ] ; 2 uses
end_hunk_1
