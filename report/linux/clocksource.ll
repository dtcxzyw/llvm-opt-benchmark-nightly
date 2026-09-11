Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/clocksource?download=true
inline.NumInlined: 126
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@clocksource_resume:bb.a
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.015 = getelementptr i8, ptr %.pn14, i64 -64
  tail call void %i.b(ptr noundef %.015) #15
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.pn = load ptr, ptr %.pn14, align 8            ; 2 uses
  %.not = icmp eq ptr %.pn, @clocksource_list
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @watchdog_reset_pending, ptr nonnull elementtype(i32) @watchdog_reset_pending) #18, !srcloc !14
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @clocksource_touch_watchdog() local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @watchdog_reset_pending, ptr nonnull elementtype(i32) @watchdog_reset_pending) #18, !srcloc !14
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local range(i64 0, -9223372036854775808) i64 @clocks_calc_max_nsecs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = add i32 %2, %0
  %i.b = zext i32 %i.a to i64
  %i.c = udiv i64 -1, %i.b
  %i.d = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %3) ; 2 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = sub i32 %0, %2
  %i.f = zext i32 %i.e to i64
  %i.g = mul i64 %i.d, %i.f
  %i.h = zext nneg i32 %1 to i64
  %i.i = lshr i64 %i.g, %i.h
  %i.j = lshr i64 %i.i, 1
  ret i64 %i.j
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal noundef i32 @clocksource_done_booting() #7 section ".init.text" align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #15
  %i.a = tail call ptr @clocksource_default_clock() #16
  store ptr %i.a, ptr @curr_clocksource, align 8
  store i1 true, ptr @finished_booting, align 4
  %i.b = tail call fastcc i32 @__clocksource_watchdog_kthread() #17, !srcloc !23 ; 0 uses
  tail call fastcc void @__clocksource_select(i1 noundef zeroext false) #17, !srcloc !15
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #15
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @__clocksource_register_scale(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 align 16 prefalign(16) {
bb.a:
  tail call void @clocksource_arch_init(ptr noundef %0) #15
  %i.a = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ugt i32 %i.b, 6
  br i1 %i.c, label %bb.b, label %.critedge, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "475: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 475b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 475) #18, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 1302, i32 2307, i64 16) #18, !srcloc !25
  tail call void asm sideeffect "476: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 476b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 476) #18, !srcloc !26
  store i32 0, ptr %i.a, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.c, label %.critedge25

bb.c:                                             ; preds = %.critedge
  %i.d = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 1024
  %.not31 = icmp eq i64 %i.f, 0
  br i1 %.not31, label %.critedge25, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "477: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 477b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 477) #18, !srcloc !27
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 1305, i32 2307, i64 16) #18, !srcloc !28
  tail call void asm sideeffect "478: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 478b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 478) #18, !srcloc !29
  %i.g = load i64, ptr %i.d, align 8
  %i.h = and i64 %i.g, -1025
  store i64 %i.h, ptr %i.d, align 8
  br label %.critedge25

.critedge25:                                      ; preds = %.critedge, %bb.c, %bb.d
  %i.i = getelementptr i8, ptr %0, i64 92         ; 2 uses
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp ugt i32 %i.j, 3
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge25
  %i.l = getelementptr i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %i.m, i32 noundef %i.j) #16 ; 0 uses
  store i32 0, ptr %i.i, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge25
  br i1 %.not, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 16 ; 2 uses
  %.val61.pre.i = load i32, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %storemerge.in.in.in6593.i = zext i32 %.val61.pre.i to i64
  %storemerge.in.in6694.i = mul nuw nsw i64 %storemerge.in.in.in6593.i, 11
  %storemerge.in6795.i = udiv i64 %storemerge.in.in6694.i, 100
  %storemerge6896.i = trunc nuw nsw i64 %storemerge.in6795.i to i32
  br label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = zext i32 %2 to i64                       ; 4 uses
  %i.r = zext i32 %1 to i64
  %i.s = mul nuw i64 %i.q, %i.r                   ; 3 uses
  %i.t = udiv i64 %i.p, %i.s                      ; 2 uses
  %.not59.i = icmp ugt i64 %i.s, %i.p
  %i.u = icmp ugt i64 %i.p, 4294967295
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 600)
  %spec.select.i = select i1 %i.u, i64 %i.v, i64 %i.t
  %i.w = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.x = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.y = udiv i32 1000000000, %1
  %i.z = trunc i64 %spec.select.i to i32
  %i.aa = select i1 %.not59.i, i32 1, i32 %i.z
  %i.ab = mul i32 %i.aa, %1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw i64 %i.ac, %i.q
  %i.ae = lshr i64 %i.ad, 32
  %i.af = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 false)
  %i.ag = add nsw i64 %i.af, -32                  ; 2 uses
  %i.ah = zext nneg i32 %i.y to i64               ; 2 uses
  %i.ai = lshr i32 %2, 1
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %indvars.iv.i.i = phi i64 [ 32, %bb.g ], [ %indvars.iv.next.i.i.1, %bb.j ] ; 4 uses
  %i.ak = shl i64 %i.ah, %indvars.iv.i.i
  %i.al = add i64 %i.ak, %i.aj
  %i.am = udiv i64 %i.al, %i.q                    ; 2 uses
  %i.an = lshr i64 %i.am, %i.ag
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.split.loop.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.ap = shl i64 %i.ah, %indvars.iv.next.i.i
  %i.aq = add i64 %i.ap, %i.aj
  %i.ar = udiv i64 %i.aq, %i.q                    ; 3 uses
  %i.as = lshr i64 %i.ar, %i.ag
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.split.loop.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %.not24.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 0
  br i1 %.not24.i.i.1, label %.loopexit.i, label %bb.h, !llvm.loop !0

.split.loop.exit.i.i:                             ; preds = %bb.i, %bb.h
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.h ], [ %indvars.iv.next.i.i, %bb.i ]
  %.lcssa54 = phi i64 [ %i.am, %bb.h ], [ %i.ar, %bb.i ]
  %i.au = trunc nuw nsw i64 %indvars.iv.i.i.lcssa to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.j, %.split.loop.exit.i.i
  %i.av = phi i64 [ %.lcssa54, %.split.loop.exit.i.i ], [ %i.ar, %bb.j ] ; 2 uses
  %.022.lcssa.i.i = phi i32 [ %i.au, %.split.loop.exit.i.i ], [ 0, %bb.j ] ; 2 uses
  %i.aw = trunc i64 %i.av to i32                  ; 5 uses
  store i32 %i.aw, ptr %i.w, align 8
  store i32 %.022.lcssa.i.i, ptr %i.x, align 4
  %i.ax = udiv i64 %i.s, 1000
  %i.ay = trunc i64 %i.ax to i32
  %i.az = getelementptr i8, ptr %0, i64 80
  store i32 %i.ay, ptr %i.az, align 8
  %storemerge.in.in.in65.i = and i64 %i.av, 4294967295
  %storemerge.in.in66.i = mul nuw nsw i64 %storemerge.in.in.in65.i, 11
  %storemerge.in67.i = udiv i64 %storemerge.in.in66.i, 100
  %storemerge68.i = trunc nuw nsw i64 %storemerge.in67.i to i32 ; 3 uses
  %i.ba = xor i32 %i.aw, -1
  %i.bb = icmp ugt i32 %storemerge68.i, %i.ba
  %i.bc = icmp ult i32 %i.aw, %storemerge68.i
  %or.cond6077.i = or i1 %i.bb, %i.bc
  br i1 %or.cond6077.i, label %.critedge2.i, label %.critedge.i

.critedge2.i:                                     ; preds = %.loopexit.i
  %i.bd = lshr i32 %i.aw, 1                       ; 3 uses
  %i.be = add i32 %.022.lcssa.i.i, -1
  %storemerge.in.in.in.i = zext nneg i32 %i.bd to i64
  %storemerge.in.in.i = mul nuw nsw i64 %storemerge.in.in.in.i, 11
  %storemerge.in.i = udiv i64 %storemerge.in.in.i, 100
  %storemerge.i = trunc nuw nsw i64 %storemerge.in.i to i32
  store i32 %i.bd, ptr %i.w, align 8
  store i32 %i.be, ptr %i.x, align 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge2.i, %.loopexit.i, %.thread.i
  %i.bf = phi ptr [ %.phi.trans.insert.i, %.thread.i ], [ %i.w, %.loopexit.i ], [ %i.w, %.critedge2.i ]
  %i.bg = phi i32 [ %.val61.pre.i, %.thread.i ], [ %i.aw, %.loopexit.i ], [ %i.bd, %.critedge2.i ] ; 2 uses
  %storemerge.lcssa64.i = phi i32 [ %storemerge6896.i, %.thread.i ], [ %storemerge68.i, %.loopexit.i ], [ %storemerge.i, %.critedge2.i ] ; 3 uses
  %i.bh = getelementptr i8, ptr %0, i64 32        ; 2 uses
  store i32 %storemerge.lcssa64.i, ptr %i.bh, align 8
  %i.bi = xor i32 %i.bg, -1
  %i.bj = icmp ugt i32 %storemerge.lcssa64.i, %i.bi
  br i1 %i.bj, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %.critedge.i
  %i.bk = getelementptr i8, ptr %0, i64 56
  %i.bl = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.2, i32 1277, i32 2323, i64 16) #18, !srcloc !30
  %i.bm = load ptr, ptr %i.bk, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bl, ptr noundef %i.bm) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !31
  %.pre.i = load i32, ptr %i.bf, align 8
  %.pre88.i = load i32, ptr %i.bh, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge.i
  %i.bn = phi i32 [ %.pre88.i, %bb.k ], [ %storemerge.lcssa64.i, %.critedge.i ] ; 2 uses
  %i.bo = phi i32 [ %.pre.i, %bb.k ], [ %i.bg, %.critedge.i ] ; 2 uses
  %i.bp = getelementptr i8, ptr %0, i64 20
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = getelementptr i8, ptr %0, i64 8
  %i.bs = load i64, ptr %i.br, align 8            ; 5 uses
  %i.bt = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.bu = add i32 %i.bo, %i.bn
  %i.bv = zext i32 %i.bu to i64
  %i.bw = udiv i64 -1, %i.bv
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.bs) ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i, label %.clocksource_update_max_deferment.exit_crit_edge.i, label %bb.m

.clocksource_update_max_deferment.exit_crit_edge.i: ; preds = %bb.l
  %.pre89.i = load i64, ptr null, align 4294967296
  br label %__clocksource_update_freq_scale.exit

bb.m:                                             ; preds = %bb.l
  store i64 %i.bx, ptr %i.bt, align 8
  br label %__clocksource_update_freq_scale.exit

__clocksource_update_freq_scale.exit:             ; preds = %.clocksource_update_max_deferment.exit_crit_edge.i, %bb.m
  %i.by = phi i64 [ %.pre89.i, %.clocksource_update_max_deferment.exit_crit_edge.i ], [ %i.bx, %bb.m ]
  %i.bz = sub i32 %i.bo, %i.bn
  %i.ca = zext i32 %i.bz to i64
  %i.cb = mul i64 %i.bx, %i.ca
  %i.cc = zext nneg i32 %i.bq to i64
  %i.cd = lshr i64 %i.cb, %i.cc
  %i.ce = lshr i64 %i.cd, 1                       ; 2 uses
  %i.cf = getelementptr i8, ptr %0, i64 24
  store i64 %i.ce, ptr %i.cf, align 8
  %i.cg = lshr i64 %i.bs, 1
  %i.ch = lshr i64 %i.bs, 2
  %i.ci = add nuw i64 %i.cg, %i.ch
  %i.cj = lshr i64 %i.bs, 3
  %i.ck = add nuw i64 %i.ci, %i.cj
  %i.cl = getelementptr i8, ptr %0, i64 48
  store i64 %i.ck, ptr %i.cl, align 8
  %i.cm = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %i.cn, i64 noundef %i.bs, i64 noundef %i.by, i64 noundef %i.ce) #16 ; 0 uses
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #15
  %i.cp = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @watchdog_lock) #15
  %i.cq = getelementptr i8, ptr %0, i64 84        ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %__clocksource_update_freq_scale.exit
  %.0.i = phi ptr [ @clocksource_list, %__clocksource_update_freq_scale.exit ], [ %.pn.i, %bb.o ] ; 3 uses
  %.pn.i = load ptr, ptr %.0.i, align 8           ; 5 uses
  %.not.i27 = icmp eq ptr %.pn.i, @clocksource_list
  br i1 %.not.i27, label %clocksource_enqueue.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = getelementptr i8, ptr %.pn.i, i64 20
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = load i32, ptr %i.cq, align 4
  %i.cu = icmp slt i32 %i.cs, %i.ct
  br i1 %i.cu, label %clocksource_enqueue.exit, label %bb.n, !llvm.loop !1

clocksource_enqueue.exit:                         ; preds = %bb.n, %bb.o
  %i.cv = getelementptr i8, ptr %0, i64 64        ; 3 uses
  %i.cw = getelementptr i8, ptr %.pn.i, i64 8
  store ptr %i.cv, ptr %i.cw, align 8
  store ptr %.pn.i, ptr %i.cv, align 8
  %i.cx = getelementptr i8, ptr %0, i64 72
  store ptr %.0.i, ptr %i.cx, align 8
  store volatile ptr %i.cv, ptr %.0.i, align 8
  %i.cy = getelementptr i8, ptr %0, i64 168       ; 6 uses
  store volatile ptr %i.cy, ptr %i.cy, align 8
  %i.cz = getelementptr i8, ptr %0, i64 176       ; 2 uses
  store volatile ptr %i.cy, ptr %i.cz, align 8
  %i.da = getelementptr i8, ptr %0, i64 96        ; 4 uses
  %i.db = load i64, ptr %i.da, align 8            ; 3 uses
  %i.dc = and i64 %i.db, 2
  %.not.i28 = icmp eq i64 %i.dc, 0
  br i1 %.not.i28, label %bb.q, label %bb.p

bb.p:                                             ; preds = %clocksource_enqueue.exit
  %i.dd = load ptr, ptr @watchdog_list, align 8   ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  store ptr %i.cy, ptr %i.de, align 8
  store ptr %i.dd, ptr %i.cy, align 8
  store ptr @watchdog_list, ptr %i.cz, align 8
  store volatile ptr %i.cy, ptr @watchdog_list, align 8
  %i.df = load i64, ptr %i.da, align 8
  %i.dg = and i64 %i.df, -17
  br label %.sink.split.i

bb.q:                                             ; preds = %clocksource_enqueue.exit
  %i.dh = and i64 %i.db, 1
  %.not6.i = icmp eq i64 %i.dh, 0
  br i1 %.not6.i, label %clocksource_enqueue_watchdog.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = or i64 %i.db, 32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.r, %bb.p
  %.sink.i = phi i64 [ %i.di, %bb.r ], [ %i.dg, %bb.p ]
  store i64 %.sink.i, ptr %i.da, align 8
  br label %clocksource_enqueue_watchdog.exit

clocksource_enqueue_watchdog.exit:                ; preds = %bb.q, %.sink.split.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @watchdog_lock, i64 noundef %i.cp) #15
  tail call fastcc void @__clocksource_select(i1 noundef zeroext false) #17, !srcloc !15
  tail call fastcc void @clocksource_select_watchdog(i1 noundef zeroext false) #17, !srcloc !32
  %i.dj = load i64, ptr %i.da, align 8
  %i.dk = and i64 %i.dj, 128
  %.not.i29 = icmp eq i64 %i.dk, 0
  br i1 %.not.i29, label %__clocksource_suspend_select.exit, label %bb.s

bb.s:                                             ; preds = %clocksource_enqueue_watchdog.exit
  %i.dl = getelementptr i8, ptr %0, i64 136
  %i.dm = load ptr, ptr %i.dl, align 8
  %.not6.i30 = icmp eq ptr %i.dm, null
  br i1 %.not6.i30, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dn = getelementptr i8, ptr %0, i64 144
  %i.do = load ptr, ptr %i.dn, align 8
  %.not7.i = icmp eq ptr %i.do, null
  br i1 %.not7.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dp = load ptr, ptr %i.cm, align 8
  %i.dq = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %i.dp) #16 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dr = load ptr, ptr @suspend_clocksource, align 8 ; 2 uses
  %.not8.i = icmp eq ptr %i.dr, null
  br i1 %.not8.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ds = load i32, ptr %i.cq, align 4
  %i.dt = getelementptr i8, ptr %i.dr, i64 84
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = icmp sgt i32 %i.ds, %i.du
  br i1 %i.dv, label %bb.x, label %__clocksource_suspend_select.exit

bb.x:                                             ; preds = %bb.w, %bb.v
  store ptr %0, ptr @suspend_clocksource, align 8
  br label %__clocksource_suspend_select.exit

__clocksource_suspend_select.exit:                ; preds = %clocksource_enqueue_watchdog.exit, %bb.w, %bb.x
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #15
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clocksource_arch_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @clocksource_select_watchdog(i1 noundef zeroext %0) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @watchdog_lock) #15
  %i.b = load ptr, ptr @watchdog, align 8         ; 4 uses
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr @watchdog, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %watchdog.promoted = phi ptr [ null, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.pn28 = load ptr, ptr @clocksource_list, align 8 ; 2 uses
  %.not30 = icmp eq ptr %.pn28, @clocksource_list
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.g
  %.pn32 = phi ptr [ %.pn, %bb.g ], [ %.pn28, %bb.c ] ; 4 uses
  %.02731 = phi ptr [ %.026, %bb.g ], [ %watchdog.promoted, %bb.c ] ; 4 uses
  %.033 = getelementptr i8, ptr %.pn32, i64 -64   ; 3 uses
  %i.c = getelementptr i8, ptr %.pn32, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 3
  %or.cond = icmp ne i64 %i.e, 1
  %i.f = icmp eq ptr %.033, %i.b
  %or.cond22 = select i1 %0, i1 %i.f, i1 false
end_hunk_0
