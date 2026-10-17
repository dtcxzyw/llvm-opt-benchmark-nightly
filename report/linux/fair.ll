Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/fair?download=true
inline.NumInlined: 1077
inline.NumDeleted: 400
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@wakeup_preempt_fair:bb.a
  %.val3.i = load i32, ptr %i.bj, align 4
  %i.bk = icmp eq i32 %.val3.i, 5
  br label %se_is_idle.exit

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr i8, ptr %i.bi, i64 352
  %.val4.i = load i32, ptr %i.bl, align 32
  %i.bm = icmp sgt i32 %.val4.i, 0
  br label %se_is_idle.exit

se_is_idle.exit:                                  ; preds = %task_of.exit.i, %bb.f
  %.0.in.i = phi i1 [ %i.bm, %bb.f ], [ %i.bk, %task_of.exit.i ] ; 2 uses
  %i.bn = getelementptr i8, ptr %.284, i64 184
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not.i54 = icmp eq ptr %i.bo, null
  br i1 %.not.i54, label %task_of.exit.i58, label %bb.g

task_of.exit.i58:                                 ; preds = %se_is_idle.exit
  %i.bp = getelementptr i8, ptr %.284, i64 964
  %.val3.i59 = load i32, ptr %i.bp, align 4
  %i.bq = icmp eq i32 %.val3.i59, 5
  br label %se_is_idle.exit60

bb.g:                                             ; preds = %se_is_idle.exit
  %i.br = getelementptr i8, ptr %i.bo, i64 352
  %.val4.i55 = load i32, ptr %i.br, align 32
  %i.bs = icmp sgt i32 %.val4.i55, 0
  br label %se_is_idle.exit60

se_is_idle.exit60:                                ; preds = %task_of.exit.i58, %bb.g
  %.0.in.i56 = phi i1 [ %i.bs, %bb.g ], [ %i.bq, %task_of.exit.i58 ] ; 2 uses
  %i.bt = xor i1 %.0.in.i, true
  %or.cond = select i1 %i.bt, i1 true, i1 %.0.in.i56
  br i1 %or.cond, label %bb.h, label %.thread

bb.h:                                             ; preds = %se_is_idle.exit60
  %i.bu = xor i1 %.0.in.i, %.0.in.i56
  br i1 %i.bu, label %static_branch_WAKEUP_PREEMPTION.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr i8, ptr %1, i64 1092
  %i.bw = load i32, ptr %i.bv, align 4
  %.not98 = icmp eq i32 %i.bw, 0
  br i1 %.not98, label %bb.j, label %static_branch_WAKEUP_PREEMPTION.exit, !prof !29

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr i8, ptr %.186, i64 176
  %.val = load ptr, ptr %i.bx, align 16           ; 7 uses
  tail call fastcc void @update_curr(ptr noundef %.val) #29, !srcloc !195
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @sched_feat_keys, i64 64), i1 true) #28
          to label %bb.k [label %static_branch_PREEMPT_SHORT.exit], !srcloc !30

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr i8, ptr %.284, i64 144
  %i.bz = load i64, ptr %i.by, align 16
  %i.ca = getelementptr i8, ptr %.186, i64 144
  %i.cb = load i64, ptr %i.ca, align 16
  %i.cc = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cc, label %.preheader, label %static_branch_PREEMPT_SHORT.exit

static_branch_PREEMPT_SHORT.exit:                 ; preds = %bb.j, %bb.k
  %i.cd = and i32 %2, 4
  %.not39 = icmp eq i32 %i.cd, 0
  br i1 %.not39, label %bb.l, label %static_branch_WAKEUP_PREEMPTION.exit

bb.l:                                             ; preds = %static_branch_PREEMPT_SHORT.exit
  %i.ce = getelementptr i8, ptr %.284, i64 89
  %i.cf = load i8, ptr %i.ce, align 1
  %.not40 = icmp eq i8 %i.cf, 0
  br i1 %.not40, label %bb.m, label %static_branch_WAKEUP_PREEMPTION.exit

bb.m:                                             ; preds = %bb.l
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @sched_feat_keys, i64 80), i1 false) #28
          to label %.preheader [label %bb.n], !srcloc !30

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr i8, ptr %.val, i64 88
  %.val50 = load ptr, ptr %i.cg, align 8
  %i.ch = tail call fastcc zeroext i1 @set_preempt_buddy(ptr %.val50, ptr noundef %.284) #29
  %i.ci = and i32 %2, 16
  %.not41 = icmp ne i32 %i.ci, 0
  %or.cond45.not = and i1 %.not41, %i.ch
  br i1 %or.cond45.not, label %static_branch_NEXT_BUDDY.exit, label %.preheader

static_branch_NEXT_BUDDY.exit:                    ; preds = %bb.n
  %i.cj = tail call fastcc i32 @preempt_sync(ptr noundef %0, i32 noundef %2, ptr noundef %.284, ptr noundef %.186) #29, !srcloc !196 ; 2 uses
  switch i32 %i.cj, label %.preheader [
    i32 0, label %static_branch_WAKEUP_PREEMPTION.exit
    i32 3, label %clear_buddies.exit
  ]

.preheader:                                       ; preds = %bb.m, %bb.n, %static_branch_NEXT_BUDDY.exit, %bb.k
  %.1.ph = phi i32 [ 1, %bb.k ], [ %i.cj, %static_branch_NEXT_BUDDY.exit ], [ 2, %bb.n ], [ 2, %bb.m ]
  %i.ck = icmp ne i32 %.1.ph, 1                   ; 2 uses
  %i.cl = getelementptr i8, ptr %.val, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %bb.q
  %i.cm = tail call fastcc ptr @pick_next_entity(ptr noundef %0, ptr noundef %.val, i1 noundef zeroext %i.ck) #29, !srcloc !197 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %.284
  br i1 %i.cn, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not42 = icmp eq ptr %i.cm, null
  br i1 %.not42, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.co = load i32, ptr %i.cl, align 16
  %.not43 = icmp eq i32 %i.co, 0
  br i1 %.not43, label %bb.r, label %bb.o

bb.r:                                             ; preds = %bb.q, %bb.p
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @sched_feat_keys, i64 48), i1 true) #28
          to label %bb.s [label %static_branch_WAKEUP_PREEMPTION.exit], !srcloc !30

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr i8, ptr %.val, i64 64
  %.val51 = load ptr, ptr %i.cp, align 64
  %i.cq = getelementptr i8, ptr %.val, i64 80
  %.val52 = load ptr, ptr %i.cq, align 16
  tail call fastcc void @update_protect_slice(ptr %.val51, ptr %.val52, ptr noundef %.186) #29
  br label %static_branch_WAKEUP_PREEMPTION.exit

bb.t:                                             ; preds = %bb.o
  br i1 %i.ck, label %clear_buddies.exit, label %.thread

.thread:                                          ; preds = %se_is_idle.exit60, %bb.t
  %.03393 = phi ptr [ %.val, %bb.t ], [ %.val49, %se_is_idle.exit60 ]
  %i.cr = getelementptr i8, ptr %.186, i64 120
  %.val.i61 = load i64, ptr %i.cr, align 8        ; 2 uses
  %i.cs = getelementptr i8, ptr %.186, i64 136    ; 2 uses
  %.val3.i62 = load i64, ptr %i.cs, align 8
  %i.ct = sub i64 %.val.i61, %.val3.i62
  %i.cu = icmp slt i64 %i.ct, 0
  br i1 %i.cu, label %bb.u, label %cancel_protect_slice.exit

bb.u:                                             ; preds = %.thread
  store i64 %.val.i61, ptr %i.cs, align 8
  br label %cancel_protect_slice.exit

cancel_protect_slice.exit:                        ; preds = %.thread, %bb.u
  %i.cv = getelementptr i8, ptr %.03393, i64 88
  %.033.val = load ptr, ptr %i.cv, align 8
  %i.cw = icmp ne ptr %.033.val, %.186
  %.not9.i.i = icmp eq ptr %.186, null
  %or.cond.i = or i1 %.not9.i.i, %i.cw
  br i1 %or.cond.i, label %clear_buddies.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %cancel_protect_slice.exit, %bb.v
  %.0610.i.i = phi ptr [ %i.db, %bb.v ], [ %.186, %cancel_protect_slice.exit ] ; 3 uses
  %i.cx = getelementptr i8, ptr %.0610.i.i, i64 176
  %.06.val.i.i = load ptr, ptr %i.cx, align 16
  %i.cy = getelementptr i8, ptr %.06.val.i.i, i64 88 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  %.not7.i.i = icmp eq ptr %i.cz, %.0610.i.i
  br i1 %.not7.i.i, label %bb.v, label %clear_buddies.exit

bb.v:                                             ; preds = %.lr.ph.i.i
  store ptr null, ptr %i.cy, align 8
  %i.da = getelementptr i8, ptr %.0610.i.i, i64 168
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i, label %clear_buddies.exit, label %.lr.ph.i.i, !llvm.loop !0

clear_buddies.exit:                               ; preds = %bb.v, %.lr.ph.i.i, %static_branch_NEXT_BUDDY.exit, %cancel_protect_slice.exit, %bb.t
  tail call void @resched_curr_lazy(ptr noundef %0) #26
  br label %static_branch_WAKEUP_PREEMPTION.exit

static_branch_WAKEUP_PREEMPTION.exit:             ; preds = %bb.r, %bb.b, %bb.s, %static_branch_NEXT_BUDDY.exit, %static_branch_PREEMPT_SHORT.exit, %bb.l, %bb.i, %bb.h, %test_tsk_need_resched.exit, %bb.a, %clear_buddies.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_prev_task_fair(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address) %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 128        ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 776
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, @fair_sched_class
  %i.e = getelementptr i8, ptr %2, i64 128
  %spec.select = select i1 %i.d, ptr %i.e, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.019 = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  %.not2342 = icmp eq ptr %i.a, null
  br i1 %.not2342, label %.split, label %.outer.split.preheader.lr.ph

.outer.split.preheader.lr.ph:                     ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 288
  %i.g = getelementptr i8, ptr %1, i64 312
  %i.h = getelementptr i8, ptr %1, i64 216
  %i.i = getelementptr i8, ptr %1, i64 304
  br label %.outer.split.preheader

.outer.split.preheader:                           ; preds = %.outer.split.preheader.lr.ph, %.thread32
  %i.j = phi ptr [ %i.f, %.outer.split.preheader.lr.ph ], [ %i.ai, %.thread32 ]
  %i.k = phi ptr [ %1, %.outer.split.preheader.lr.ph ], [ %i.ah, %.thread32 ]
  %i.l = phi ptr [ %i.g, %.outer.split.preheader.lr.ph ], [ %i.ag, %.thread32 ]
  %i.m = phi ptr [ %i.h, %.outer.split.preheader.lr.ph ], [ %i.af, %.thread32 ] ; 2 uses
  %i.n = phi ptr [ %i.i, %.outer.split.preheader.lr.ph ], [ %i.ae, %.thread32 ] ; 2 uses
  %.1.ph44 = phi ptr [ %.019, %.outer.split.preheader.lr.ph ], [ %.4, %.thread32 ]
  %.020.ph43 = phi ptr [ %i.a, %.outer.split.preheader.lr.ph ], [ %.020.val29, %.thread32 ] ; 5 uses
  %.020.val.pre = load ptr, ptr %i.n, align 16
  br label %.outer.split

.outer.split:                                     ; preds = %.outer.split.preheader, %bb.k
  %.020.val3038 = phi ptr [ %.020.val30, %bb.k ], [ %.020.val.pre, %.outer.split.preheader ] ; 7 uses
  %.1 = phi ptr [ %.1.val, %bb.k ], [ %.1.ph44, %.outer.split.preheader ] ; 5 uses
  %.not24 = icmp eq ptr %.1, null                 ; 2 uses
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.outer.split
  %i.o = getelementptr i8, ptr %.020.val3038, i64 80
  %i.p = load ptr, ptr %i.o, align 16
  %.not25 = icmp eq ptr %i.p, null
  br i1 %.not25, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %.outer.split
  %i.q = load i8, ptr %i.m, align 8
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @update_curr(ptr noundef %.020.val3038) #29, !inline_history !198, !srcloc !200
  %.pr.i = load i8, ptr %i.m, align 8
  %.not14.i = icmp eq i8 %.pr.i, 0
  br i1 %.not14.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @sched_schedstats, i1 false) #28
          to label %update_stats_wait_start_fair.exit.i [label %task_of.exit.i.i], !inline_history !198, !srcloc !30

task_of.exit.i.i:                                 ; preds = %bb.g
  %i.r = load ptr, ptr %i.l, align 8
  %.not.i.i.i = icmp eq ptr %i.r, null            ; 2 uses
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 704, i64 320
  %.0.i7.i.i = getelementptr i8, ptr %.020.ph43, i64 %.0.v.i.i.i
  %spec.select.i.i = select i1 %.not.i.i.i, ptr %i.k, ptr null
  %i.s = getelementptr i8, ptr %.020.val3038, i64 312
  %.val.i.i = load ptr, ptr %i.s, align 8
  tail call void @__update_stats_wait_start(ptr noundef %.val.i.i, ptr noundef %spec.select.i.i, ptr noundef %.0.i7.i.i) #26, !inline_history !198
  br label %update_stats_wait_start_fair.exit.i

update_stats_wait_start_fair.exit.i:              ; preds = %task_of.exit.i.i, %bb.g
  tail call fastcc void @__enqueue_entity(ptr noundef %.020.val3038, ptr noundef nonnull %.020.ph43) #29, !inline_history !198, !srcloc !201
  tail call fastcc void @update_load_avg(ptr noundef %.020.val3038, ptr noundef nonnull %.020.ph43, i32 noundef 0) #29, !inline_history !198, !srcloc !202
  br label %.thread.i

.thread.i:                                        ; preds = %update_stats_wait_start_fair.exit.i, %bb.f, %bb.e
  %i.t = getelementptr i8, ptr %.020.val3038, i64 80 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 16
  %.not15.i = icmp eq ptr %i.u, %.020.ph43
  br i1 %.not15.i, label %bb.i, label %bb.h, !prof !29

bb.h:                                             ; preds = %.thread.i
  tail call void asm sideeffect "1457: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1457b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1457) #28, !inline_history !198, !srcloc !203
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 6407, i32 2307, i64 16) #28, !inline_history !198, !srcloc !204
  tail call void asm sideeffect "1458: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1458b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1458) #28, !inline_history !198, !srcloc !205
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread.i
  store ptr null, ptr %i.t, align 16
  br i1 %.not24, label %.thread32, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.i
  %.020.val30.pre = load ptr, ptr %i.n, align 16
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.d
  %.020.val30 = phi ptr [ %.020.val30.pre, %..thread_crit_edge ], [ %.020.val3038, %bb.d ] ; 3 uses
  %i.v = getelementptr i8, ptr %.1, i64 176
  %.1.val31 = load ptr, ptr %i.v, align 16
  %i.w = icmp ne ptr %.020.val30, %.1.val31
  %.not2635 = icmp eq ptr %.020.val30, null
  %.not26 = or i1 %.not2635, %i.w
  br i1 %.not26, label %bb.j, label %.split

bb.j:                                             ; preds = %.thread
  %i.x = getelementptr i8, ptr %.1, i64 160
  %i.y = load i32, ptr %i.x, align 32             ; 2 uses
  %i.z = load i32, ptr %i.j, align 32             ; 2 uses
  %i.aa = sub i32 %i.y, %i.z
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.k, label %.thread32

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %.1, i64 168
  %.1.val = load ptr, ptr %i.ac, align 8          ; 2 uses
  %.not27 = icmp eq i32 %i.y, %i.z
  br i1 %.not27, label %.thread32, label %.outer.split, !llvm.loop !199

.thread32:                                        ; preds = %bb.k, %bb.j, %bb.i
  %.4 = phi ptr [ null, %bb.i ], [ %.1, %bb.j ], [ %.1.val, %bb.k ]
  %i.ad = getelementptr i8, ptr %.020.ph43, i64 168
  %.020.val29 = load ptr, ptr %i.ad, align 8      ; 7 uses
  %.not23 = icmp eq ptr %.020.val29, null
  %i.ae = getelementptr i8, ptr %.020.val29, i64 176
  %i.af = getelementptr i8, ptr %.020.val29, i64 88
  %i.ag = getelementptr i8, ptr %.020.val29, i64 184
  %i.ah = getelementptr i8, ptr %.020.val29, i64 -128
  %i.ai = getelementptr i8, ptr %.020.val29, i64 160
  br i1 %.not23, label %.split, label %.outer.split.preheader, !llvm.loop !199

.split:                                           ; preds = %.thread32, %.thread, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_next_task_fair(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 128        ; 3 uses
  %.not40 = icmp eq ptr %i.a, null
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.u
  %.041 = phi ptr [ %i.bq, %bb.u ], [ %i.a, %bb.a ] ; 24 uses
  %i.b = getelementptr i8, ptr %.041, i64 176
  %.0.val = load ptr, ptr %i.b, align 16          ; 9 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr i8, ptr %.0.val, i64 80
  %i.d = load ptr, ptr %i.c, align 16
  %.not31 = icmp eq ptr %i.d, null
  br i1 %.not31, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.e = getelementptr i8, ptr %.0.val, i64 88
  %.val37.i = load ptr, ptr %i.e, align 8
  %.not46.i = icmp eq ptr %.val37.i, %.041
  br i1 %.not46.i, label %.lr.ph.i.i.i, label %clear_buddies.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.0610.i.i.i = phi ptr [ %i.j, %bb.d ], [ %.041, %bb.c ] ; 3 uses
  %i.f = getelementptr i8, ptr %.0610.i.i.i, i64 176
  %.06.val.i.i.i = load ptr, ptr %i.f, align 16
  %i.g = getelementptr i8, ptr %.06.val.i.i.i, i64 88 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not7.i.i.i = icmp eq ptr %i.h, %.0610.i.i.i
  br i1 %.not7.i.i.i, label %bb.d, label %clear_buddies.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  store ptr null, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %.0610.i.i.i, i64 168
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %clear_buddies.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

clear_buddies.exit.i:                             ; preds = %bb.d, %.lr.ph.i.i.i, %bb.c
  %i.k = getelementptr i8, ptr %.041, i64 88
  %i.l = load i8, ptr %i.k, align 8
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %bb.o, label %bb.e

bb.e:                                             ; preds = %clear_buddies.exit.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @sched_schedstats, i1 false) #28
          to label %update_stats_wait_end_fair.exit.i [label %bb.f], !srcloc !30

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %.041, i64 184
  %i.n = load ptr, ptr %i.m, align 8
  %.not.i.i39.i = icmp eq ptr %i.n, null          ; 2 uses
  %.0.v.i.i.i = select i1 %.not.i.i39.i, i64 704, i64 320
  %.0.i9.i.i = getelementptr i8, ptr %.041, i64 %.0.v.i.i.i ; 2 uses
  %i.o = load i64, ptr %.0.i9.i.i, align 64
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %update_stats_wait_end_fair.exit.i, label %task_of.exit.i.i, !prof !22

task_of.exit.i.i:                                 ; preds = %bb.f
  %i.p = getelementptr i8, ptr %.041, i64 -128
  %spec.select.i.i = select i1 %.not.i.i39.i, ptr %i.p, ptr null
  %i.q = getelementptr i8, ptr %.0.val, i64 312
  %.val.i.i = load ptr, ptr %i.q, align 8
  tail call void @__update_stats_wait_end(ptr noundef %.val.i.i, ptr noundef %spec.select.i.i, ptr noundef %.0.i9.i.i) #26
  br label %update_stats_wait_end_fair.exit.i

update_stats_wait_end_fair.exit.i:                ; preds = %task_of.exit.i.i, %bb.f, %bb.e
  tail call fastcc void @__dequeue_entity(ptr noundef %.0.val, ptr noundef nonnull %.041) #29, !srcloc !207
  tail call fastcc void @update_load_avg(ptr noundef %.0.val, ptr noundef nonnull %.041, i32 noundef 1) #29, !srcloc !208
  br i1 %2, label %bb.g, label %bb.o

bb.g:                                             ; preds = %update_stats_wait_end_fair.exit.i
  %i.r = load i32, ptr @normalized_sysctl_sched_base_slice, align 4
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr i8, ptr %.041, i64 40
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @sched_feat_keys, i64 48), i1 true) #28
          to label %bb.h [label %static_branch_RUN_TO_PARITY.exit.i.i], !srcloc !30

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %.0.val, i64 64
  %.val18.i.i = load ptr, ptr %i.v, align 64      ; 2 uses
  %i.w = getelementptr i8, ptr %.0.val, i64 80
  %.val19.i.i = load ptr, ptr %i.w, align 16      ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val18.i.i, null
  %i.x = getelementptr i8, ptr %.val18.i.i, i64 -16
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr null, ptr %i.x ; 2 uses
  %.not.i.i42.i = icmp eq ptr %.val19.i.i, null
  br i1 %.not.i.i42.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %.val19.i.i, i64 88
end_hunk_0
