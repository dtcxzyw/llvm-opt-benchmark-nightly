Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tree?download=true
inline.NumInlined: 958
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@rcu_init_geometry:bb.a
  %i.bb = sub nsw i64 %i.ag, %indvars.iv.epil.init
  %i.bc = getelementptr [4 x i8], ptr %i.a, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = add i32 %i.am, %i.bd
  %i.bf = udiv i32 %i.be, %i.bd
  %i.bg = getelementptr [4 x i8], ptr @num_rcu_lvl, i64 %indvars.iv.epil.init
  store i32 %i.bf, ptr %i.bg, align 4
  br label %.lr.ph35.preheader

.lr.ph35.preheader:                               ; preds = %.lr.ph35.preheader.unr-lcssa, %.epil.preheader
  %xtraiter53 = and i64 %wide.trip.count, 7       ; 3 uses
  %i.bh = icmp ult i64 %i.an, 7
  br i1 %i.bh, label %.lr.ph35.epil.preheader, label %.lr.ph35.preheader.new

.lr.ph35.preheader.new:                           ; preds = %.lr.ph35.preheader
  %unroll_iter57 = and i64 %wide.trip.count, 4294967288
  br label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph35, %.lr.ph35.preheader.new
  %indvars.iv39 = phi i64 [ 0, %.lr.ph35.preheader.new ], [ %indvars.iv.next40.7, %.lr.ph35 ] ; 9 uses
  %i.bi = phi i32 [ 0, %.lr.ph35.preheader.new ], [ %i.cn, %.lr.ph35 ]
  %niter58 = phi i64 [ 0, %.lr.ph35.preheader.new ], [ %niter58.next.7, %.lr.ph35 ]
  %i.bj = getelementptr [4 x i8], ptr @num_rcu_lvl, i64 %indvars.iv39
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = add i32 %i.bi, %i.bk
  %i.bm = getelementptr [4 x i8], ptr @num_rcu_lvl, i64 %indvars.iv39
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add i32 %i.bl, %i.bo
  %i.bq = getelementptr [4 x i8], ptr @num_rcu_lvl, i64 %indvars.iv39
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = add i32 %i.bp, %i.bs
  %i.bu = getelementptr [4 x i8], ptr @num_rcu_lvl, i64 %indvars.iv39
  %i.bv = getelementptr i8, ptr %i.bu, i64 12
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = add i32 %i.bt, %i.bw
  %i.by = getelementptr [4 x i8], ptr @num_rcu_lvl, i64 %indvars.iv39
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = add i32 %i.bx, %i.ca
  %i.cc = getelementptr [4 x i8], ptr @num_rcu_lvl, i64 %indvars.iv39
  %i.cd = getelementptr i8, ptr %i.cc, i64 20
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = add i32 %i.cb, %i.ce
  %i.cg = getelementptr [4 x i8], ptr @num_rcu_lvl, i64 %indvars.iv39
  %i.ch = getelementptr i8, ptr %i.cg, i64 24
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = add i32 %i.cf, %i.ci
  %i.ck = getelementptr [4 x i8], ptr @num_rcu_lvl, i64 %indvars.iv39
  %i.cl = getelementptr i8, ptr %i.ck, i64 28
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = add i32 %i.cj, %i.cm                    ; 3 uses
  %indvars.iv.next40.7 = add nuw nsw i64 %indvars.iv39, 8 ; 2 uses
  %niter58.next.7 = add i64 %niter58, 8           ; 2 uses
  %niter58.ncmp.7 = icmp eq i64 %niter58.next.7, %unroll_iter57
  br i1 %niter58.ncmp.7, label %..loopexit_crit_edge.unr-lcssa, label %.lr.ph35, !llvm.loop !265

..loopexit_crit_edge.unr-lcssa:                   ; preds = %.lr.ph35
  %lcmp.mod54.not = icmp eq i64 %xtraiter53, 0
  br i1 %lcmp.mod54.not, label %..loopexit_crit_edge, label %.lr.ph35.epil.preheader

.lr.ph35.epil.preheader:                          ; preds = %..loopexit_crit_edge.unr-lcssa, %.lr.ph35.preheader
  %indvars.iv39.epil.init = phi i64 [ 0, %.lr.ph35.preheader ], [ %indvars.iv.next40.7, %..loopexit_crit_edge.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.lr.ph35.preheader ], [ %i.cn, %..loopexit_crit_edge.unr-lcssa ]
  %lcmp.mod56 = icmp ne i64 %xtraiter53, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %.lr.ph35.epil

.lr.ph35.epil:                                    ; preds = %.lr.ph35.epil, %.lr.ph35.epil.preheader
  %indvars.iv39.epil = phi i64 [ %indvars.iv39.epil.init, %.lr.ph35.epil.preheader ], [ %indvars.iv.next40.epil, %.lr.ph35.epil ] ; 2 uses
  %i.co = phi i32 [ %.epil.init, %.lr.ph35.epil.preheader ], [ %i.cr, %.lr.ph35.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph35.epil.preheader ], [ %epil.iter.next, %.lr.ph35.epil ]
  %i.cp = getelementptr [4 x i8], ptr @num_rcu_lvl, i64 %indvars.iv39.epil
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = add i32 %i.co, %i.cq                    ; 2 uses
  %indvars.iv.next40.epil = add nuw nsw i64 %indvars.iv39.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter53
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge, label %.lr.ph35.epil, !llvm.loop !266

..loopexit_crit_edge:                             ; preds = %.lr.ph35.epil, %..loopexit_crit_edge.unr-lcssa
  %.lcssa = phi i32 [ %i.cn, %..loopexit_crit_edge.unr-lcssa ], [ %i.cr, %.lr.ph35.epil ]
  store i32 %.lcssa, ptr @rcu_num_nodes, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %..loopexit_crit_edge, %adjust_jiffies_till_sched_qs.exit, %bb.b, %bb.c, %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @rcu_init() local_unnamed_addr #15 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #29, !srcloc !277 ; 3 uses
  tail call void @rcu_early_boot_tests() #31
  %i.b = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250) #34 ; 0 uses
  tail call fastcc void @rcu_bootup_announce_oddness() #35, !srcloc !278
  tail call fastcc void @sanitize_kthread_prio() #35, !srcloc !279
  tail call void @rcu_init_geometry() #33
  tail call fastcc void @rcu_init_one() #35, !srcloc !280
  %i.c = load i8, ptr @dump_tree, align 1, !range !40, !noundef !41
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @rcu_dump_rcu_node_tree() #35, !srcloc !281
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i8, ptr @use_softirq, align 1, !range !40, !noundef !41
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @open_softirq(i32 noundef 9, ptr noundef nonnull @rcu_core_si) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = tail call i32 @register_pm_notifier(ptr noundef nonnull @rcu_init.rcu_pm_notify_nb) #31 ; 0 uses
  %i.h = load volatile i32, ptr @__num_online_cpus, align 4
  %i.i = icmp ugt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g, !prof !31

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "1228: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1228b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1228) #30, !srcloc !282
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 4924, i32 2305, i64 16) #30, !srcloc !283
  tail call void asm sideeffect "1229: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1229b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1229) #30, !srcloc !284
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = tail call i32 @rcutree_prepare_cpu(i32 noundef %i.a) #33 ; 0 uses
  tail call void @rcutree_report_cpu_starting(i32 noundef %i.a) #33
  %i.k = tail call i32 @rcutree_online_cpu(i32 noundef %i.a) #33 ; 0 uses
  %i.l = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue_noprof(ptr noundef nonnull @.str.27, i32 noundef 264, i32 noundef 0) #31 ; 2 uses
  store ptr %i.l, ptr @rcu_gp_wq, align 8
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.h, label %bb.i, !prof !31

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "1230: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1230b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1230) #30, !srcloc !285
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 4931, i32 2305, i64 16) #30, !srcloc !286
  tail call void asm sideeffect "1231: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1231b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1231) #30, !srcloc !287
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue_noprof(ptr noundef nonnull @.str.28, i32 noundef 10, i32 noundef 0) #31 ; 2 uses
  store ptr %i.m, ptr @sync_wq, align 8
  %.not24 = icmp eq ptr %i.m, null
  br i1 %.not24, label %bb.j, label %bb.k, !prof !31

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "1232: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1232b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1232) #30, !srcloc !288
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 4934, i32 2305, i64 16) #30, !srcloc !289
  tail call void asm sideeffect "1233: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1233b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1233) #30, !srcloc !290
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.n = load i64, ptr @qovld, align 8            ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  %i.p = load i64, ptr @qhimark, align 8
  %i.q = shl i64 %i.p, 1
  %storemerge = select i1 %i.o, i64 %i.q, i64 %i.n
  store i64 %storemerge, ptr @qovld_calc, align 8
  %i.r = tail call i64 @start_poll_synchronize_rcu_expedited() #33 ; 0 uses
  tail call void @rcu_test_sync_prims() #31
  tail call void @tasks_cblist_init_generic() #31
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rcu_early_boot_tests() local_unnamed_addr #11

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @sanitize_kthread_prio() unnamed_addr #15 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @kthread_prio, align 4     ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i32 %i.a, 99
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ 0, %bb.a ], [ 99, %bb.b ]    ; 2 uses
  store i32 %.sink, ptr @kthread_prio, align 4
  %i.d = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef nonnull @__func__.sanitize_kthread_prio, i32 noundef %.sink, i32 noundef %i.a) #34 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @rcu_init_one() unnamed_addr #15 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = load i32, ptr @rcu_num_lvls, align 4     ; 7 uses
  %i.c = add i32 %i.b, -3
  %or.cond = icmp ult i32 %i.c, -2
  br i1 %or.cond, label %bb.b, label %.preheader87

.preheader87:                                     ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !annotation !62
  %i.d = icmp samesign ugt i32 %i.b, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge.thread

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.185) #36
  unreachable

.lr.ph:                                           ; preds = %.preheader87
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3200), align 64
  %i.e = load i32, ptr @num_rcu_lvl, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr [640 x i8], ptr %.pre, i64 %i.f
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3208), align 8
  store i32 -2147483648, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -2147483648, ptr %i.h, align 4
  %i.i = load i8, ptr @rcu_fanout_exact, align 1, !range !40, !noundef !41
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.lr.ph7.i, label %.lr.ph.preheader.i

._crit_edge.thread:                               ; preds = %.preheader87
  store i32 -2147483648, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -2147483648, ptr %i.k, align 4
  %i.l = load i8, ptr @rcu_fanout_exact, align 1, !range !40, !noundef !41
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.thread, label %.lr.ph.preheader.i

.thread:                                          ; preds = %._crit_edge.thread
  %i.n = load i32, ptr @rcu_fanout_leaf, align 4
  %0 = zext nneg i32 %i.b to i64
  %1 = getelementptr [4 x i8], ptr %i.a, i64 %0
  %2 = getelementptr i8, ptr %1, i64 -4
  store i32 %i.n, ptr %2, align 4
  br label %.lr.ph97.preheader

.lr.ph7.i:                                        ; preds = %.lr.ph
  %i.o = load i32, ptr @rcu_fanout_leaf, align 4
  %i.p = zext nneg i32 %i.b to i64
  %i.q = getelementptr [4 x i8], ptr %i.a, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  store i32 %i.o, ptr %i.r, align 4
  store i32 64, ptr %i.a, align 8
  br label %.lr.ph97.preheader

.lr.ph.preheader.i:                               ; preds = %.lr.ph, %._crit_edge.thread
  %.23.i = add nsw i32 %i.b, -1
  %i.s = load i32, ptr @nr_cpu_ids, align 4
  %i.t = zext nneg i32 %.23.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.t, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 4 uses
  %.04.i = phi i32 [ %i.s, %.lr.ph.preheader.i ], [ %i.v, %.lr.ph.i ]
  %i.u = getelementptr [4 x i8], ptr @num_rcu_lvl, i64 %indvars.iv.i
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  %i.w = add i32 %.04.i, -1
  %i.x = add i32 %i.w, %i.v
  %i.y = sdiv i32 %i.x, %i.v
  %i.z = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i32 %i.y, ptr %i.z, align 4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not.i84 = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i84, label %.lr.ph97.preheader, label %.lr.ph.i, !llvm.loop !291

.lr.ph97.preheader:                               ; preds = %.lr.ph.i, %.lr.ph7.i, %.thread
  %.193 = add nsw i32 %i.b, -1
  %i.aa = zext nneg i32 %.193 to i64
  %i.ab = zext nneg i32 %i.b to i64
  br label %.lr.ph97

.loopexit:                                        ; preds = %bb.h, %.lr.ph97
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, -1
  %i.ac = icmp sgt i64 %indvars.iv102, 0
  %indvars.iv.next105 = add nsw i64 %indvars.iv104, -1
  br i1 %i.ac, label %.lr.ph97, label %._crit_edge98, !llvm.loop !292

.lr.ph97:                                         ; preds = %.lr.ph97.preheader, %.loopexit
  %indvars.iv104 = phi i64 [ %i.ab, %.lr.ph97.preheader ], [ %indvars.iv.next105, %.loopexit ] ; 2 uses
  %indvars.iv102 = phi i64 [ %i.aa, %.lr.ph97.preheader ], [ %indvars.iv.next103, %.loopexit ] ; 7 uses
  %.095 = phi i32 [ 1, %.lr.ph97.preheader ], [ %i.af, %.loopexit ]
  %i.ad = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv102
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = mul i32 %i.ae, %.095                    ; 3 uses
  %i.ag = getelementptr [4 x i8], ptr @num_rcu_lvl, i64 %indvars.iv102 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph92, label %.loopexit

.lr.ph92:                                         ; preds = %.lr.ph97
  %i.aj = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3200), i64 %indvars.iv102
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq i64 %indvars.iv102, 0
  %i.am = add i64 %indvars.iv104, 4294967294
  %i.an = and i64 %i.am, 4294967295               ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.a, i64 %i.an
  %i.ap = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3200), i64 %i.an
  %i.aq = trunc i64 %indvars.iv102 to i8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph92, %bb.h
  %.07890 = phi i32 [ 0, %.lr.ph92 ], [ %i.bb, %bb.h ] ; 4 uses
  %.07989 = phi ptr [ %i.ak, %.lr.ph92 ], [ %i.cl, %bb.h ] ; 30 uses
  store i32 0, ptr %.07989, align 64
  %i.ar = getelementptr i8, ptr %.07989, i64 320
  store i32 0, ptr %i.ar, align 64
  %i.as = load i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3264), align 64 ; 2 uses
  %i.at = getelementptr i8, ptr %.07989, i64 8
  store i64 %i.as, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %.07989, i64 16
  store i64 %i.as, ptr %i.au, align 16
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3264), align 64
  %i.aw = getelementptr i8, ptr %.07989, i64 24
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %.07989, i64 32
  store i64 0, ptr %i.ax, align 32
  %i.ay = getelementptr i8, ptr %.07989, i64 48
  store i64 0, ptr %i.ay, align 16
  %i.az = mul i32 %.07890, %i.af
  %i.ba = getelementptr i8, ptr %.07989, i64 120
  store i32 %i.az, ptr %i.ba, align 8
  %i.bb = add nuw nsw i32 %.07890, 1              ; 3 uses
  %i.bc = mul i32 %i.bb, %i.af
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  %i.be = getelementptr i8, ptr %.07989, i64 124  ; 2 uses
  store i32 %i.bd, ptr %i.be, align 4
  %i.bf = load i32, ptr @nr_cpu_ids, align 4      ; 2 uses
  %.not = icmp ult i32 %i.bd, %i.bf
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr %i.be, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr i8, ptr %.07989, i64 128
  store i8 0, ptr %i.bh, align 64
  %i.bi = getelementptr i8, ptr %.07989, i64 112
  store i64 0, ptr %i.bi, align 16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bj = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.bk = srem i32 %.07890, %i.bj                 ; 2 uses
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr i8, ptr %.07989, i64 128
  store i8 %i.bl, ptr %i.bm, align 64
  %i.bn = and i32 %i.bk, 255
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = getelementptr i8, ptr %.07989, i64 112
  store i64 %i.bp, ptr %i.bq, align 16
  %i.br = load ptr, ptr %i.ap, align 8
  %i.bs = sdiv i32 %.07890, %i.bj
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr [640 x i8], ptr %i.br, i64 %i.bt
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi ptr [ null, %bb.f ], [ %i.bu, %bb.g ]
  %i.bv = getelementptr i8, ptr %.07989, i64 136
  store ptr %.sink, ptr %i.bv, align 8
  %i.bw = getelementptr i8, ptr %.07989, i64 129
  store i8 %i.aq, ptr %i.bw, align 1
  %i.bx = getelementptr i8, ptr %.07989, i64 144  ; 3 uses
  store volatile ptr %i.bx, ptr %i.bx, align 16
  %i.by = getelementptr i8, ptr %.07989, i64 152
  store volatile ptr %i.bx, ptr %i.by, align 8
  %i.bz = getelementptr i8, ptr %.07989, i64 400
  tail call void @__init_waitqueue_head(ptr noundef %i.bz, ptr noundef nonnull @.str.186, ptr noundef nonnull @rcu_init_one.__key) #31
  %i.ca = getelementptr i8, ptr %.07989, i64 424
  tail call void @__init_waitqueue_head(ptr noundef %i.ca, ptr noundef nonnull @.str.188, ptr noundef nonnull @rcu_init_one.__key.187) #31
  %i.cb = getelementptr i8, ptr %.07989, i64 448
  tail call void @__init_waitqueue_head(ptr noundef %i.cb, ptr noundef nonnull @.str.190, ptr noundef nonnull @rcu_init_one.__key.189) #31
  %i.cc = getelementptr i8, ptr %.07989, i64 472
  tail call void @__init_waitqueue_head(ptr noundef %i.cc, ptr noundef nonnull @.str.192, ptr noundef nonnull @rcu_init_one.__key.191) #31
  %i.cd = getelementptr i8, ptr %.07989, i64 384
  store i32 0, ptr %i.cd, align 64
  %i.ce = getelementptr i8, ptr %.07989, i64 224
  tail call void @mutex_init_generic(ptr noundef %i.ce) #31
  %i.cf = getelementptr i8, ptr %.07989, i64 548
  store i32 0, ptr %i.cf, align 4
  %i.cg = getelementptr i8, ptr %.07989, i64 552
  store i64 1, ptr %i.cg, align 8
  %i.ch = getelementptr i8, ptr %.07989, i64 560
  store i64 4503599625273344, ptr %i.ch, align 16
  %i.ci = getelementptr i8, ptr %.07989, i64 568  ; 3 uses
  store volatile ptr %i.ci, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %.07989, i64 576
  store volatile ptr %i.ci, ptr %i.cj, align 64
  %i.ck = getelementptr i8, ptr %.07989, i64 584
  store ptr @sync_rcu_do_polled_gp, ptr %i.ck, align 8
  %i.cl = getelementptr i8, ptr %.07989, i64 640
  %i.cm = load i32, ptr %i.ag, align 4
  %i.cn = icmp slt i32 %i.bb, %i.cm
  br i1 %i.cn, label %bb.c, label %.loopexit, !llvm.loop !293

._crit_edge98:                                    ; preds = %.loopexit
  tail call void @__init_swait_queue_head(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3288), ptr noundef nonnull @.str.197, ptr noundef nonnull @rcu_init_one.__key.196) #31
  tail call void @__init_swait_queue_head(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3504), ptr noundef nonnull @.str.199, ptr noundef nonnull @rcu_init_one.__key.198) #31
  %i.co = load i32, ptr @rcu_num_lvls, align 4
  %i.cp = add i32 %i.co, -1
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @rcu_state, i64 3200), i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge98, %bb.j
  %i.ct = phi i64 [ 0, %._crit_edge98 ], [ %sext, %bb.j ]
  %.18099 = phi ptr [ %i.cs, %._crit_edge98 ], [ %.281, %bb.j ]
  %i.cu = load i64, ptr @__cpu_possible_mask, align 8
  %i.cv = shl nsw i64 -1, %i.ct
  %i.cw = and i64 %i.cu, %i.cv                    ; 2 uses
  %.not.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.i
  %i.cx = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.cw) #32, !srcloc !76 ; 2 uses
  %i.cy = trunc i64 %i.cx to i32                  ; 3 uses
  %i.cz = icmp ult i32 %i.cy, 64
  br i1 %i.cz, label %.preheader, label %find_next_bit.exit.thread

.preheader:                                       ; preds = %find_next_bit.exit, %.preheader
  %.281 = phi ptr [ %i.dd, %.preheader ], [ %.18099, %find_next_bit.exit ] ; 4 uses
  %i.da = getelementptr i8, ptr %.281, i64 124
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = icmp slt i32 %i.db, %i.cy
  %i.dd = getelementptr i8, ptr %.281, i64 640
  br i1 %i.dc, label %.preheader, label %bb.j, !llvm.loop !294

bb.j:                                             ; preds = %.preheader
  %i.de = and i64 %i.cx, 63                       ; 3 uses
  %i.df = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.de ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = add i64 %i.dg, ptrtoint (ptr @rcu_data to i64)
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr i8, ptr %i.di, i64 32
  store ptr %.281, ptr %i.dj, align 8
  %i.dk = load i64, ptr %i.df, align 8
  %i.dl = add i64 %i.dk, ptrtoint (ptr @rcu_data to i64)
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = getelementptr i8, ptr %i.dm, i64 296    ; 2 uses
  store ptr %i.dn, ptr %i.dn, align 8
  tail call fastcc void @rcu_boot_init_percpu_data(i32 noundef %i.cy) #35, !srcloc !296
  %sext = add nuw nsw i64 %i.de, 1
  %i.do = icmp eq i64 %i.de, 63
  br i1 %i.do, label %find_next_bit.exit.thread, label %bb.i, !prof !77, !llvm.loop !295

find_next_bit.exit.thread:                        ; preds = %bb.i, %bb.j, %find_next_bit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @rcu_dump_rcu_node_tree() unnamed_addr #15 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201) #34 ; 0 uses
  %i.b = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202) #34 ; 0 uses
  %i.c = load i32, ptr @rcu_num_nodes, align 4
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr [640 x i8], ptr @rcu_state, i64 %i.d
  %i.f = icmp ugt ptr %i.e, @rcu_state
end_hunk_0
