inline.NumInlined: 126
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cycles_to_nsec_safe:bb.a
  %i.d = load i64, ptr %i.c, align 8
  %i.e = sub i64 %2, %1
  %i.f = and i64 %i.b, %i.e                       ; 2 uses
  %i.g = icmp ugt i64 %i.f, %i.d
  %i.h = select i1 %i.g, i64 0, i64 %i.f          ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ult i64 %i.h, %i.j
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.p = zext i32 %i.m to i64
  %i.q = mul i64 %i.h, %i.p
  %i.r = zext nneg i32 %i.o to i64
  %i.s = lshr i64 %i.q, %i.r
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = zext i64 %i.h to i128
  %i.u = zext i32 %i.m to i128
  %i.v = mul nuw nsw i128 %i.u, %i.t
  %i.w = zext nneg i32 %i.o to i128
  %i.x = lshr i128 %i.v, %i.w
  %i.y = trunc i128 %i.x to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.s, %bb.b ], [ %i.y, %bb.c ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @clocksource_suspend() local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %.pn11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @clocksource_list, i64 8), align 8 ; 2 uses
  %.not13 = icmp eq ptr %.pn11, @clocksource_list
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn14 = phi ptr [ %.pn, %bb.c ], [ %.pn11, %bb.a ] ; 3 uses
  %i.a = getelementptr i8, ptr %.pn14, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.015 = getelementptr i8, ptr %.pn14, i64 -64
  tail call void %i.b(ptr noundef %.015) #15
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.c = getelementptr i8, ptr %.pn14, i64 8
  %.pn = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %.pn, @clocksource_list
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @clocksource_resume() local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %.pn11 = load ptr, ptr @clocksource_list, align 8 ; 2 uses
  %.not13 = icmp eq ptr %.pn11, @clocksource_list
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn14 = phi ptr [ %.pn, %bb.c ], [ %.pn11, %bb.a ] ; 3 uses
  %i.a = getelementptr i8, ptr %.pn14, i64 80
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
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @watchdog_reset_pending, ptr nonnull elementtype(i32) @watchdog_reset_pending) #18, !srcloc !17
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @clocksource_touch_watchdog() local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @watchdog_reset_pending, ptr nonnull elementtype(i32) @watchdog_reset_pending) #18, !srcloc !17
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
  %i.b = tail call fastcc i32 @__clocksource_watchdog_kthread() #17, !srcloc !18 ; 0 uses
  tail call fastcc void @__clocksource_select(i1 noundef zeroext false) #17, !srcloc !19
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
  br i1 %i.c, label %bb.b, label %.critedge, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "475: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 475b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 475) #18, !srcloc !21
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 1302, i32 2307, i64 16) #18, !srcloc !22
  tail call void asm sideeffect "476: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 476b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 476) #18, !srcloc !23
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
  tail call void asm sideeffect "477: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 477b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 477) #18, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 1305, i32 2307, i64 16) #18, !srcloc !25
  tail call void asm sideeffect "478: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 478b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 478) #18, !srcloc !26
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
  %3 = zext i32 %1 to i64
  %4 = mul nuw i64 %i.q, %3                       ; 3 uses
  %i.r = udiv i64 %i.p, %4                        ; 2 uses
  %.not59.i = icmp ugt i64 %4, %i.p
  %i.s = icmp ugt i64 %i.p, 4294967295
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 600)
  %spec.select.i = select i1 %i.s, i64 %i.t, i64 %i.r
  %i.u = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.v = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.w = udiv i32 1000000000, %1
  %i.x = trunc i64 %spec.select.i to i32
  %i.y = select i1 %.not59.i, i32 1, i32 %i.x
  %i.z = mul i32 %i.y, %1
  %i.aa = zext i32 %i.z to i64
  %i.ab = mul nuw i64 %i.aa, %i.q
  %i.ac = lshr i64 %i.ab, 32
  %i.ad = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 false)
  %i.ae = add nuw nsw i64 %i.ad, 4294967264
  %i.af = and i64 %i.ae, 4294967295               ; 2 uses
  %i.ag = zext nneg i32 %i.w to i64               ; 2 uses
  %i.ah = lshr i32 %2, 1
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %indvars.iv.i.i = phi i64 [ 32, %bb.g ], [ %indvars.iv.next.i.i.1, %bb.j ] ; 4 uses
  %i.aj = shl i64 %i.ag, %indvars.iv.i.i
  %i.ak = add i64 %i.aj, %i.ai
  %i.al = udiv i64 %i.ak, %i.q                    ; 2 uses
  %i.am = lshr i64 %i.al, %i.af
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.split.loop.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.ao = shl i64 %i.ag, %indvars.iv.next.i.i
  %i.ap = add i64 %i.ao, %i.ai
  %i.aq = udiv i64 %i.ap, %i.q                    ; 3 uses
  %i.ar = lshr i64 %i.aq, %i.af
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.split.loop.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %.not24.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 0
  br i1 %.not24.i.i.1, label %.loopexit.i, label %bb.h, !llvm.loop !10

.split.loop.exit.i.i:                             ; preds = %bb.i, %bb.h
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.h ], [ %indvars.iv.next.i.i, %bb.i ]
  %.lcssa54 = phi i64 [ %i.al, %bb.h ], [ %i.aq, %bb.i ]
  %i.at = trunc nuw nsw i64 %indvars.iv.i.i.lcssa to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.j, %.split.loop.exit.i.i
  %i.au = phi i64 [ %.lcssa54, %.split.loop.exit.i.i ], [ %i.aq, %bb.j ] ; 2 uses
  %.022.lcssa.i.i = phi i32 [ %i.at, %.split.loop.exit.i.i ], [ 0, %bb.j ] ; 2 uses
  %i.av = trunc i64 %i.au to i32                  ; 5 uses
  store i32 %i.av, ptr %i.u, align 8
  store i32 %.022.lcssa.i.i, ptr %i.v, align 4
  %i.aw = udiv i64 %4, 1000
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = getelementptr i8, ptr %0, i64 80
  store i32 %i.ax, ptr %i.ay, align 8
  %storemerge.in.in.in65.i = and i64 %i.au, 4294967295
  %storemerge.in.in66.i = mul nuw nsw i64 %storemerge.in.in.in65.i, 11
  %storemerge.in67.i = udiv i64 %storemerge.in.in66.i, 100
  %storemerge68.i = trunc nuw nsw i64 %storemerge.in67.i to i32 ; 3 uses
  %i.az = xor i32 %i.av, -1
  %i.ba = icmp ugt i32 %storemerge68.i, %i.az
  %i.bb = icmp ult i32 %i.av, %storemerge68.i
  %or.cond6077.i = or i1 %i.ba, %i.bb
  br i1 %or.cond6077.i, label %.critedge2.i, label %.critedge.i

.critedge2.i:                                     ; preds = %.loopexit.i, %.critedge2.i
  %i.bc = phi i32 [ %i.bf, %.critedge2.i ], [ %.022.lcssa.i.i, %.loopexit.i ]
  %i.bd = phi i32 [ %i.be, %.critedge2.i ], [ %i.av, %.loopexit.i ]
  %i.be = lshr i32 %i.bd, 1                       ; 5 uses
  %i.bf = add i32 %i.bc, -1                       ; 2 uses
  %storemerge.in.in.in.i = zext nneg i32 %i.be to i64
  %storemerge.in.in.i = mul nuw nsw i64 %storemerge.in.in.in.i, 11
  %storemerge.in.i = udiv i64 %storemerge.in.in.i, 100
  %storemerge.i = trunc nuw nsw i64 %storemerge.in.i to i32 ; 2 uses
  %i.bg = icmp samesign ult i32 %i.be, %storemerge.i
  br i1 %i.bg, label %.critedge2.i, label %...critedge_crit_edge.split_crit_edge.i

...critedge_crit_edge.split_crit_edge.i:          ; preds = %.critedge2.i
  store i32 %i.be, ptr %i.u, align 8
  store i32 %i.bf, ptr %i.v, align 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %...critedge_crit_edge.split_crit_edge.i, %.loopexit.i, %.thread.i
  %i.bh = phi ptr [ %.phi.trans.insert.i, %.thread.i ], [ %i.u, %.loopexit.i ], [ %i.u, %...critedge_crit_edge.split_crit_edge.i ]
  %i.bi = phi i32 [ %.val61.pre.i, %.thread.i ], [ %i.av, %.loopexit.i ], [ %i.be, %...critedge_crit_edge.split_crit_edge.i ] ; 2 uses
  %storemerge.lcssa64.i = phi i32 [ %storemerge6896.i, %.thread.i ], [ %storemerge68.i, %.loopexit.i ], [ %storemerge.i, %...critedge_crit_edge.split_crit_edge.i ] ; 3 uses
  %i.bj = getelementptr i8, ptr %0, i64 32        ; 2 uses
  store i32 %storemerge.lcssa64.i, ptr %i.bj, align 8
  %i.bk = xor i32 %i.bi, -1
  %i.bl = icmp ugt i32 %storemerge.lcssa64.i, %i.bk
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !20

bb.k:                                             ; preds = %.critedge.i
  %i.bm = getelementptr i8, ptr %0, i64 56
  %i.bn = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.2, i32 1277, i32 2323, i64 16) #18, !srcloc !27
  %i.bo = load ptr, ptr %i.bm, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bn, ptr noundef %i.bo) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !28
  %.pre.i = load i32, ptr %i.bh, align 8
  %.pre88.i = load i32, ptr %i.bj, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge.i
  %i.bp = phi i32 [ %.pre88.i, %bb.k ], [ %storemerge.lcssa64.i, %.critedge.i ] ; 2 uses
  %i.bq = phi i32 [ %.pre.i, %bb.k ], [ %i.bi, %.critedge.i ] ; 2 uses
  %i.br = getelementptr i8, ptr %0, i64 20
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = getelementptr i8, ptr %0, i64 8
  %i.bu = load i64, ptr %i.bt, align 8            ; 5 uses
  %i.bv = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.bw = add i32 %i.bq, %i.bp
  %i.bx = zext i32 %i.bw to i64
  %i.by = udiv i64 -1, %i.bx
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.by, i64 %i.bu) ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %.clocksource_update_max_deferment.exit_crit_edge.i, label %bb.m

.clocksource_update_max_deferment.exit_crit_edge.i: ; preds = %bb.l
  %.pre89.i = load i64, ptr null, align 4294967296
  br label %__clocksource_update_freq_scale.exit

bb.m:                                             ; preds = %bb.l
  store i64 %i.bz, ptr %i.bv, align 8
  br label %__clocksource_update_freq_scale.exit

__clocksource_update_freq_scale.exit:             ; preds = %.clocksource_update_max_deferment.exit_crit_edge.i, %bb.m
  %i.ca = phi i64 [ %.pre89.i, %.clocksource_update_max_deferment.exit_crit_edge.i ], [ %i.bz, %bb.m ]
  %i.cb = sub i32 %i.bq, %i.bp
  %i.cc = zext i32 %i.cb to i64
  %i.cd = mul i64 %i.bz, %i.cc
  %i.ce = zext nneg i32 %i.bs to i64
  %i.cf = lshr i64 %i.cd, %i.ce
  %i.cg = lshr i64 %i.cf, 1                       ; 2 uses
  %i.ch = getelementptr i8, ptr %0, i64 24
  store i64 %i.cg, ptr %i.ch, align 8
  %i.ci = lshr i64 %i.bu, 1
  %i.cj = lshr i64 %i.bu, 2
  %i.ck = add nuw i64 %i.ci, %i.cj
  %i.cl = lshr i64 %i.bu, 3
  %i.cm = add nuw i64 %i.ck, %i.cl
  %i.cn = getelementptr i8, ptr %0, i64 48
  store i64 %i.cm, ptr %i.cn, align 8
  %i.co = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %i.cp, i64 noundef %i.bu, i64 noundef %i.ca, i64 noundef %i.cg) #16 ; 0 uses
  tail call void @mutex_lock(ptr noundef nonnull @clocksource_mutex) #15
  %i.cr = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @watchdog_lock) #15
  %i.cs = getelementptr i8, ptr %0, i64 84        ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %__clocksource_update_freq_scale.exit
  %.0.i = phi ptr [ @clocksource_list, %__clocksource_update_freq_scale.exit ], [ %.pn.i, %bb.o ] ; 3 uses
  %.pn.i = load ptr, ptr %.0.i, align 8           ; 5 uses
  %.not.i27 = icmp eq ptr %.pn.i, @clocksource_list
  br i1 %.not.i27, label %clocksource_enqueue.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = getelementptr i8, ptr %.pn.i, i64 20
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = load i32, ptr %i.cs, align 4
  %i.cw = icmp slt i32 %i.cu, %i.cv
  br i1 %i.cw, label %clocksource_enqueue.exit, label %bb.n, !llvm.loop !29

clocksource_enqueue.exit:                         ; preds = %bb.n, %bb.o
  %i.cx = getelementptr i8, ptr %0, i64 64        ; 3 uses
  %i.cy = getelementptr i8, ptr %.pn.i, i64 8
  store ptr %i.cx, ptr %i.cy, align 8
  store ptr %.pn.i, ptr %i.cx, align 8
  %i.cz = getelementptr i8, ptr %0, i64 72
  store ptr %.0.i, ptr %i.cz, align 8
  store volatile ptr %i.cx, ptr %.0.i, align 8
  %i.da = getelementptr i8, ptr %0, i64 168       ; 6 uses
  store volatile ptr %i.da, ptr %i.da, align 8
  %i.db = getelementptr i8, ptr %0, i64 176       ; 2 uses
  store volatile ptr %i.da, ptr %i.db, align 8
  %i.dc = getelementptr i8, ptr %0, i64 96        ; 4 uses
  %i.dd = load i64, ptr %i.dc, align 8            ; 3 uses
  %i.de = and i64 %i.dd, 2
  %.not.i28 = icmp eq i64 %i.de, 0
  br i1 %.not.i28, label %bb.q, label %bb.p

bb.p:                                             ; preds = %clocksource_enqueue.exit
  %i.df = load ptr, ptr @watchdog_list, align 8   ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  store ptr %i.da, ptr %i.dg, align 8
  store ptr %i.df, ptr %i.da, align 8
  store ptr @watchdog_list, ptr %i.db, align 8
  store volatile ptr %i.da, ptr @watchdog_list, align 8
  %i.dh = load i64, ptr %i.dc, align 8
  %i.di = and i64 %i.dh, -17
  br label %.sink.split.i

bb.q:                                             ; preds = %clocksource_enqueue.exit
  %i.dj = and i64 %i.dd, 1
  %.not6.i = icmp eq i64 %i.dj, 0
  br i1 %.not6.i, label %clocksource_enqueue_watchdog.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dk = or i64 %i.dd, 32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.r, %bb.p
  %.sink.i = phi i64 [ %i.dk, %bb.r ], [ %i.di, %bb.p ]
  store i64 %.sink.i, ptr %i.dc, align 8
  br label %clocksource_enqueue_watchdog.exit

clocksource_enqueue_watchdog.exit:                ; preds = %bb.q, %.sink.split.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @watchdog_lock, i64 noundef %i.cr) #15
  tail call fastcc void @__clocksource_select(i1 noundef zeroext false) #17, !srcloc !19
  tail call fastcc void @clocksource_select_watchdog(i1 noundef zeroext false) #17, !srcloc !30
  %i.dl = load i64, ptr %i.dc, align 8
  %i.dm = and i64 %i.dl, 128
  %.not.i29 = icmp eq i64 %i.dm, 0
  br i1 %.not.i29, label %__clocksource_suspend_select.exit, label %bb.s

bb.s:                                             ; preds = %clocksource_enqueue_watchdog.exit
  %i.dn = getelementptr i8, ptr %0, i64 136
  %i.do = load ptr, ptr %i.dn, align 8
  %.not6.i30 = icmp eq ptr %i.do, null
  br i1 %.not6.i30, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr i8, ptr %0, i64 144
  %i.dq = load ptr, ptr %i.dp, align 8
  %.not7.i = icmp eq ptr %i.dq, null
  br i1 %.not7.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dr = load ptr, ptr %i.co, align 8
  %i.ds = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %i.dr) #16 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dt = load ptr, ptr @suspend_clocksource, align 8 ; 2 uses
  %.not8.i = icmp eq ptr %i.dt, null
  br i1 %.not8.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.du = load i32, ptr %i.cs, align 4
  %i.dv = getelementptr i8, ptr %i.dt, i64 84
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = icmp sgt i32 %i.du, %i.dw
  br i1 %i.dx, label %bb.x, label %__clocksource_suspend_select.exit

bb.x:                                             ; preds = %bb.w, %bb.v
  store ptr %0, ptr @suspend_clocksource, align 8
  br label %__clocksource_suspend_select.exit

__clocksource_suspend_select.exit:                ; preds = %clocksource_enqueue_watchdog.exit, %bb.w, %bb.x
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #15
  ret i32 0
}
end_hunk_0
