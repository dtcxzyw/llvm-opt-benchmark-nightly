inline.NumInlined: 554
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ioc_pd_init:bb.a
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %._crit_edge, label %blkg_to_iocg.exit, !llvm.loop !42

._crit_edge:                                      ; preds = %blkg_to_iocg.exit, %ioc_now.exit
  %i.bw = getelementptr i8, ptr %.0.lcssa.i.i, i64 224 ; 2 uses
  %i.bx = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.bw) #19
  br i1 %.not.i, label %iocg_to_blkg.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.by = load ptr, ptr %0, align 8
  br label %iocg_to_blkg.exit.i

iocg_to_blkg.exit.i:                              ; preds = %bb.i, %._crit_edge
  %i.bz = phi ptr [ %i.by, %bb.i ], [ null, %._crit_edge ]
  %i.ca = getelementptr i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not.i.i17.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i17.i, label %blkcg_to_iocc.exit.i, label %bb.j

bb.j:                                             ; preds = %iocg_to_blkg.exit.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 296
  %i.cd = load i32, ptr @blkcg_policy_iocost, align 8
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr [8 x i8], ptr %i.cc, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8
  br label %blkcg_to_iocc.exit.i

blkcg_to_iocc.exit.i:                             ; preds = %bb.j, %iocg_to_blkg.exit.i
  %i.ch = phi ptr [ %i.cg, %bb.j ], [ null, %iocg_to_blkg.exit.i ]
  %i.ci = getelementptr i8, ptr %0, i64 40
  %i.cj = load i32, ptr %i.ci, align 8            ; 2 uses
  %.not.i35 = icmp eq i32 %i.cj, 0
  br i1 %.not.i35, label %bb.k, label %bb.l

bb.k:                                             ; preds = %blkcg_to_iocc.exit.i
  %i.ck = getelementptr i8, ptr %i.ch, i64 16
  %i.cl = load i32, ptr %i.ck, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %blkcg_to_iocc.exit.i
  %i.cm = phi i32 [ %i.cl, %bb.k ], [ %i.cj, %blkcg_to_iocc.exit.i ] ; 3 uses
  %i.cn = getelementptr i8, ptr %0, i64 44        ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4
  %.not15.i36 = icmp eq i32 %i.cm, %i.co
  br i1 %.not15.i36, label %weight_updated.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = getelementptr i8, ptr %0, i64 48
  %i.cq = load i32, ptr %i.cp, align 8
  %.not16.i = icmp eq i32 %i.cq, 0
  br i1 %.not16.i, label %weight_updated.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr i8, ptr %0, i64 52
  %i.cs = load i32, ptr %i.cr, align 4
  call fastcc void @__propagate_weights(ptr noundef %0, i32 noundef %i.cm, i32 noundef %i.cs, i1 noundef zeroext true, ptr noundef nonnull readonly %1) #25, !inline_history !43, !srcloc !44
  %i.ct = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 364    ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 4, !range !45, !noundef !46
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.o, label %weight_updated.exit

bb.o:                                             ; preds = %bb.n
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !inline_history !43, !srcloc !47
  %i.cx = getelementptr i8, ptr %i.ct, i64 368    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cx, ptr elementtype(i32) %i.cx) #20, !inline_history !43, !srcloc !48
  store i8 0, ptr %i.cu, align 4
  br label %weight_updated.exit

weight_updated.exit:                              ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  store i32 %i.cm, ptr %i.cn, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.bw, i64 noundef %i.bx) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ioc_pd_free(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 224      ; 2 uses
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #19
  %i.e = getelementptr i8, ptr %0, i64 128        ; 8 uses
  %i.f = load volatile ptr, ptr %i.e, align 8
  %.not26 = icmp eq ptr %i.f, %i.e
  br i1 %.not26, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #24, !srcloc !32
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 2360
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count) #21, !srcloc !33
  %i.l = and i32 %i.k, 16711936
  %.not10.i.i = icmp eq i32 %i.l, 0
  br i1 %.not10.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = tail call i64 @ktime_get() #19           ; 0 uses
  br label %blk_time_get_ns.exit.i

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.j, i64 32       ; 2 uses
  %i.o = load volatile i64, ptr %i.n, align 8
  %.not11.i.i = icmp eq i64 %i.o, 0
  br i1 %.not11.i.i, label %bb.g, label %blk_time_get_ns.exit.i

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i64 @ktime_get() #19
  store volatile i64 %i.p, ptr %i.n, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !34
  %i.q = getelementptr i8, ptr %i.h, i64 44       ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = or i32 %i.r, 536870912
  store i32 %i.s, ptr %i.q, align 4
  br label %blk_time_get_ns.exit.i

blk_time_get_ns.exit.i:                           ; preds = %bb.g, %bb.f, %bb.e
  %i.t = getelementptr i8, ptr %i.b, i64 304
  %i.u = load volatile i64, ptr %i.t, align 8     ; 0 uses
  %i.v = getelementptr i8, ptr %i.b, i64 328      ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %blk_time_get_ns.exit.i
  %i.w = load volatile i32, ptr %i.v, align 8     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !35
  %i.x = and i32 %i.w, 1
  %.not17.i = icmp eq i32 %i.x, 0
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i, !prof !36

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !37
  %i.y = load volatile i32, ptr %i.v, align 8     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !35
  %i.z = and i32 %i.y, 1
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !prof !38, !llvm.loop !39

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %.lcssa.i = phi i32 [ %i.w, %bb.h ], [ %i.y, %.lr.ph.i ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !40
  %i.aa = load volatile i32, ptr %i.v, align 8
  %.not15.i = icmp eq i32 %i.aa, %.lcssa.i
  br i1 %.not15.i, label %ioc_now.exit, label %bb.h, !llvm.loop !41

ioc_now.exit:                                     ; preds = %._crit_edge.i
  %i.ab = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ac = load volatile ptr, ptr %i.e, align 8
  %.not.i24 = icmp eq ptr %i.ac, %i.e
  br i1 %.not.i24, label %bb.i, label %bb.k

bb.i:                                             ; preds = %ioc_now.exit
  %i.ad = getelementptr i8, ptr %0, i64 144
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %.not67.i = icmp eq i64 %i.ae, 0
  br i1 %.not67.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = add i64 %i.ae, -1
  %i.ag = udiv i64 %i.af, %i.ae
  %i.ah = trunc i64 %i.ag to i32
  br label %bb.k

bb.k:                                             ; preds = %ioc_now.exit, %bb.i, %bb.j
  %.059.i = phi i32 [ %i.ah, %bb.j ], [ 1, %bb.i ], [ 1, %ioc_now.exit ] ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 52
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 56
  store i32 %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr i8, ptr %0, i64 48
  %i.am = load i32, ptr %i.al, align 8
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = icmp eq i32 %.059.i, %i.aj
  %or.cond.i = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond.i, label %__propagate_weights.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %0, i64 448
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  %.06473.i = add i32 %i.aq, -1                   ; 2 uses
  %i.ar = icmp sgt i32 %.06473.i, -1
  br i1 %i.ar, label %.lr.ph.i25, label %.thread.i

.lr.ph.i25:                                       ; preds = %bb.l
  %i.as = getelementptr i8, ptr %0, i64 456       ; 2 uses
  %i.at = zext nneg i32 %.06473.i to i64
  %i.au = sext i32 %i.aq to i64
  br label %bb.m

bb.m:                                             ; preds = %.backedge.i, %.lr.ph.i25
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %.backedge.i ], [ %i.at, %.lr.ph.i25 ] ; 5 uses
  %.076.i = phi i32 [ %.062.i, %.backedge.i ], [ 0, %.lr.ph.i25 ] ; 2 uses
  %.16075.i.a = phi i32 [ %.061.i, %.backedge.i ], [ %.059.i, %.lr.ph.i25 ] ; 2 uses
  %.064.in74.i = phi i64 [ %indvars.iv.a, %.backedge.i ], [ %i.au, %.lr.ph.i25 ]
  %i.av = getelementptr [8 x i8], ptr %i.as, i64 %indvars.iv.a
  %i.aw = load ptr, ptr %i.av, align 8            ; 5 uses
  %i.ax = getelementptr [8 x i8], ptr %i.as, i64 %.064.in74.i
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 48     ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = sub i32 %.076.i, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.aw, i64 144    ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = add i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.bd, align 8
  %i.bg = getelementptr i8, ptr %i.ay, i64 52     ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = sub i32 %.16075.i.a, %i.bh
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr i8, ptr %i.aw, i64 152    ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = add i64 %i.bl, %i.bj
  store i64 %i.bm, ptr %i.bk, align 8
  store i32 %.076.i, ptr %i.az, align 8
  store i32 %.16075.i.a, ptr %i.bg, align 4
  %i.bn = load i64, ptr %i.bd, align 8            ; 3 uses
  %.not69.i = icmp eq i64 %i.bn, 0
  br i1 %.not69.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr i8, ptr %i.aw, i64 44
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = load i64, ptr %i.bk, align 8
  %i.bs = mul i64 %i.br, %i.bq
  %i.bt = add i64 %i.bn, -1
  %i.bu = add i64 %i.bt, %i.bs
  %i.bv = udiv i64 %i.bu, %i.bn
  %i.bw = trunc i64 %i.bv to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.062.i = phi i32 [ %i.bp, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.061.i = phi i32 [ %i.bw, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.bx = getelementptr i8, ptr %i.aw, i64 48
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = icmp eq i32 %.062.i, %i.by
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr i8, ptr %i.aw, i64 52
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = icmp ne i32 %.061.i, %i.cb
  %i.cd = icmp sgt i64 %indvars.iv.a, 0
  %or.cond79.i = and i1 %i.cd, %i.cc
  br i1 %or.cond79.i, label %.backedge.i, label %.thread.i

bb.q:                                             ; preds = %bb.o
  %.old.i = icmp sgt i64 %indvars.iv.a, 0
  br i1 %.old.i, label %.backedge.i, label %.thread.i

.backedge.i:                                      ; preds = %bb.q, %bb.p
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, -1
  br label %bb.m, !llvm.loop !49

.thread.i:                                        ; preds = %bb.q, %bb.p, %bb.l
  %i.ce = getelementptr i8, ptr %i.ab, i64 364
  store i8 1, ptr %i.ce, align 4
  %.pre = load ptr, ptr %i.a, align 8
  br label %__propagate_weights.exit

__propagate_weights.exit:                         ; preds = %bb.k, %.thread.i
  %i.cf = phi ptr [ %i.ab, %bb.k ], [ %.pre, %.thread.i ] ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 364    ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4, !range !45, !noundef !46
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.r, label %propagate_weights.exit

bb.r:                                             ; preds = %__propagate_weights.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !47
  %i.cj = getelementptr i8, ptr %i.cf, i64 368    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cj, ptr elementtype(i32) %i.cj) #20, !srcloc !48
  store i8 0, ptr %i.cg, align 4
  br label %propagate_weights.exit

propagate_weights.exit:                           ; preds = %__propagate_weights.exit, %bb.r
  %i.ck = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  store ptr %i.cl, ptr %i.cn, align 8
  store volatile ptr %i.cm, ptr %i.cl, align 8
  store volatile ptr %i.e, ptr %i.e, align 8
  store volatile ptr %i.e, ptr %i.ck, align 8
  br label %bb.s

bb.s:                                             ; preds = %propagate_weights.exit, %bb.b
  %i.co = getelementptr i8, ptr %0, i64 192       ; 2 uses
  %i.cp = load volatile ptr, ptr %i.co, align 8
  %.not27 = icmp eq ptr %i.cp, %i.co
  br i1 %.not27, label %bb.u, label %bb.t, !prof !21

bb.t:                                             ; preds = %bb.s
  tail call void asm sideeffect "895: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 895b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 895) #20, !srcloc !50
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.49, ptr nonnull @.str.56, i32 3080, i32 2307, i64 16) #20, !srcloc !51
  tail call void asm sideeffect "896: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 896b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 896) #20, !srcloc !52
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cq = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.cr = load volatile ptr, ptr %i.cq, align 8
  %.not28 = icmp eq ptr %i.cr, %i.cq
  br i1 %.not28, label %bb.w, label %bb.v, !prof !21

bb.v:                                             ; preds = %bb.u
  tail call void asm sideeffect "897: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 897b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 897) #20, !srcloc !53
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.49, ptr nonnull @.str.56, i32 3081, i32 2307, i64 16) #20, !srcloc !54
  tail call void asm sideeffect "898: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 898b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 898) #20, !srcloc !55
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.d) #19
  %i.cs = getelementptr i8, ptr %0, i64 248
  %i.ct = tail call i32 @hrtimer_cancel(ptr noundef %i.cs) #19 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.a
  %i.cu = getelementptr i8, ptr %0, i64 16
  tail call void @call_rcu(ptr noundef %i.cu, ptr noundef nonnull @iocg_release) #19
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ioc_pd_stat(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = load i8, ptr %i.c, align 8, !range !45, !noundef !46
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 448
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.b, i64 312
  %i.j = load i64, ptr %i.i, align 8
  %i.k = mul i64 %i.j, 10000
  %i.l = add i64 %i.k, 68718
  %i.m = udiv i64 %i.l, 137438
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = udiv i32 %i.n, 100
  %i.p = urem i32 %i.n, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.81, i32 noundef %i.o, i32 noundef %i.p) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr i8, ptr %0, i64 376
  %i.r = load i64, ptr %i.q, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.82, i64 noundef %i.r) #19
  %i.s = load i8, ptr @blkcg_debug_stats, align 1, !range !45, !noundef !46
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %0, i64 384
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %0, i64 392
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %0, i64 400
  %i.z = load i64, ptr %i.y, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.83, i64 noundef %i.v, i64 noundef %i.x, i64 noundef %i.z) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @ioc_weight_show(ptr noundef %0, ptr nofree readnone captures(none) %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %.val = load ptr, ptr %i.a, align 8
  %i.b = tail call ptr @of_css(ptr noundef %.val) #19 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %blkcg_to_iocc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 296
  %i.d = load i32, ptr @blkcg_policy_iocost, align 8
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [8 x i8], ptr %i.c, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  br label %blkcg_to_iocc.exit

blkcg_to_iocc.exit:                               ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = lshr i32 %i.j, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %i.k) #19
  %.val7 = load ptr, ptr %i.a, align 8
  %.val7.val = load ptr, ptr %.val7, align 8
  %i.l = getelementptr i8, ptr %.val7.val, i64 104
  %.val7.val.val = load ptr, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %.val7.val.val, i64 64
  %i.n = load i64, ptr %i.m, align 8
  %i.o = trunc i64 %i.n to i32
  tail call void @blkcg_print_blkgs(ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull @ioc_weight_prfill, ptr noundef nonnull @blkcg_policy_iocost, i32 noundef %i.o, i1 noundef zeroext false) #19
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ioc_weight_write(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 %3) #1 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.blkg_conf_ctx, align 8      ; 10 uses
  %5 = alloca %struct.ioc_now, align 8            ; 11 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = tail call ptr @of_css(ptr noundef %0) #19 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %blkcg_to_iocc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 296
  %i.d = load i32, ptr @blkcg_policy_iocost, align 8
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [8 x i8], ptr %i.c, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  br label %blkcg_to_iocc.exit

blkcg_to_iocc.exit:                               ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !annotation !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !annotation !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !annotation !23
  %i.i = tail call ptr @strchr(ptr noundef %1, i32 noundef 58) #19
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %blkcg_to_iocc.exit
  %i.j = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.a) #25
  %.not51 = icmp eq i32 %i.j, 0
  br i1 %.not51, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef nonnull %i.a) #25
  %.not52 = icmp eq i32 %i.k, 0
  br i1 %.not52, label %bb.ap, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load i32, ptr %i.a, align 4
  %i.m = add i32 %i.l, -10001
  %or.cond = icmp ult i32 %i.m, -10000
  br i1 %or.cond, label %bb.ap, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@ioc_timer_fn:bb.a
  br i1 %i.gm, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.gn = getelementptr i8, ptr %i.fx, i64 368
  %i.go = load volatile i32, ptr %i.gn, align 8   ; 2 uses
  %i.gp = getelementptr i8, ptr %.pn.in104.i, i64 40 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8
  %i.gr = icmp eq i32 %i.go, %i.gq
  br i1 %i.gr, label %.current_hweight.exit_crit_edge.i, label %bb.af

.current_hweight.exit_crit_edge.i:                ; preds = %bb.ae
  %.phi.trans.insert.i = getelementptr i8, ptr %.pn.in104.i, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %current_hweight.exit.i

bb.af:                                            ; preds = %bb.ae
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !68
  %i.gs = getelementptr i8, ptr %.pn.in104.i, i64 320
  %i.gt = load i32, ptr %i.gs, align 8
  %i.gu = add i32 %i.gt, -1                       ; 2 uses
  %.not73.i.i = icmp slt i32 %i.gu, 0
  br i1 %.not73.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.af
  %i.gv = getelementptr i8, ptr %.pn.in104.i, i64 328 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.gv, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %.lr.ph.i.i
  %i.gw = phi ptr [ %.pre.i.i, %.lr.ph.i.i ], [ %i.ha, %bb.ai ] ; 2 uses
  %.076.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.gx, %bb.ai ]
  %.06375.i.i = phi i32 [ 65536, %.lr.ph.i.i ], [ %.1.i.i, %bb.ai ] ; 2 uses
  %.06474.i.i = phi i32 [ 65536, %.lr.ph.i.i ], [ %.165.i.i, %bb.ai ] ; 2 uses
  %i.gx = add i32 %.076.i.i, 1                    ; 3 uses
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr [8 x i8], ptr %i.gv, i64 %i.gy
  %i.ha = load ptr, ptr %i.gz, align 8            ; 3 uses
  %i.hb = getelementptr i8, ptr %i.gw, i64 144
  %i.hc = load volatile i64, ptr %i.hb, align 8   ; 2 uses
  %i.hd = getelementptr i8, ptr %i.gw, i64 152
  %i.he = load volatile i64, ptr %i.hd, align 8   ; 2 uses
  %i.hf = getelementptr i8, ptr %i.ha, i64 48
  %i.hg = load volatile i32, ptr %i.hf, align 8
  %i.hh = getelementptr i8, ptr %i.ha, i64 52
  %i.hi = load volatile i32, ptr %i.hh, align 4
  %i.hj = icmp ne i64 %i.hc, 0
  %i.hk = icmp ne i64 %i.he, 0
  %or.cond.i.i = select i1 %i.hj, i1 %i.hk, i1 false
  br i1 %or.cond.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hl = zext i32 %i.hg to i64                   ; 2 uses
  %i.hm = call i64 @llvm.umax.i64(i64 %i.hc, i64 %i.hl)
  %i.hn = zext i32 %.06375.i.i to i64
  %i.ho = mul nuw i64 %i.hl, %i.hn
  %i.hp = udiv i64 %i.ho, %i.hm
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = zext i32 %i.hi to i64                   ; 2 uses
  %i.hs = call i64 @llvm.umax.i64(i64 %i.he, i64 %i.hr)
  %i.ht = zext i32 %.06474.i.i to i64
  %i.hu = mul nuw i64 %i.hr, %i.ht
  %i.hv = udiv i64 %i.hu, %i.hs
  %i.hw = trunc i64 %i.hv to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.165.i.i = phi i32 [ %i.hw, %bb.ah ], [ %.06474.i.i, %bb.ag ] ; 2 uses
  %.1.i.i = phi i32 [ %i.hq, %bb.ah ], [ %.06375.i.i, %bb.ag ] ; 2 uses
  %.not.i85.i = icmp sgt i32 %i.gx, %i.gu
  br i1 %.not.i85.i, label %._crit_edge.loopexit.i.i, label %bb.ag, !llvm.loop !69

._crit_edge.loopexit.i.i:                         ; preds = %bb.ai
  %i.hx = call i32 @llvm.umax.i32(i32 %.1.i.i, i32 1)
  %i.hy = call i32 @llvm.umax.i32(i32 %.165.i.i, i32 1)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.af
  %.064.lcssa.i.i = phi i32 [ 65536, %bb.af ], [ %i.hy, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.063.lcssa.i.i = phi i32 [ 65536, %bb.af ], [ %i.hx, %._crit_edge.loopexit.i.i ]
  %i.hz = getelementptr i8, ptr %.pn.in104.i, i64 44
  store i32 %.063.lcssa.i.i, ptr %i.hz, align 4
  %i.ia = getelementptr i8, ptr %.pn.in104.i, i64 48
  store i32 %.064.lcssa.i.i, ptr %i.ia, align 8
  store i32 %i.go, ptr %i.gp, align 8
  br label %current_hweight.exit.i

current_hweight.exit.i:                           ; preds = %._crit_edge.i.i, %.current_hweight.exit_crit_edge.i
  %i.ib = phi i32 [ %.pre.i, %.current_hweight.exit_crit_edge.i ], [ %.064.lcssa.i.i, %._crit_edge.i.i ]
  %i.ic = zext i32 %i.ib to i64
  %i.id = mul i64 %i.gl, %i.ic
  %i.ie = lshr i64 %i.id, 16
  %i.if = load i64, ptr %i.du, align 8
  %i.ig = sub i64 %i.if, %i.ie
  store i64 %i.ig, ptr %i.du, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %current_hweight.exit.i, %bb.ad
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_iocost_iocg_idle, i64 8), i1 false) #20
          to label %trace_iocost_iocg_idle_enabled.exit.i [label %bb.ak], !srcloc !70

bb.ak:                                            ; preds = %bb.aj
  %i.ih = call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_iocg_path_lock) #19
  %.not.i.i.i = icmp eq ptr %.064107.i, null
  br i1 %.not.i.i.i, label %iocg_to_blkg.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ii = load ptr, ptr %.064107.i, align 8
  br label %iocg_to_blkg.exit.i

iocg_to_blkg.exit.i:                              ; preds = %bb.al, %bb.ak
  %i.ij = phi ptr [ %i.ii, %bb.al ], [ null, %bb.ak ]
  %i.ik = getelementptr i8, ptr %i.ij, i64 40
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = getelementptr i8, ptr %i.im, i64 296
  %.val.i = load ptr, ptr %i.in, align 8
  %i.io = call i32 @kernfs_path_from_node(ptr noundef %.val.i, ptr noundef null, ptr noundef nonnull @trace_iocg_path, i64 noundef 1024) #19 ; 0 uses
  %i.ip = load volatile i64, ptr %i.fy, align 8
  %i.iq = load volatile i64, ptr %i.dv, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_iocost_iocg_idle, i64 8), i1 false) #20
          to label %trace_iocost_iocg_idle.exit.i [label %arch_test_bit.exit.i.i.i], !srcloc !70

arch_test_bit.exit.i.i.i:                         ; preds = %iocg_to_blkg.exit.i
  %i.ir = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #20, !srcloc !71
  %i.is = zext i32 %i.ir to i64
  %i.it = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.is) #20, !srcloc !72 ; 2 uses
  %i.iu = icmp ult i8 %i.it, 2
  call void @llvm.assume(i1 %i.iu)
  %i.iv = trunc nuw i8 %i.it to i1
  br i1 %i.iv, label %bb.am, label %trace_iocost_iocg_idle.exit.i

bb.am:                                            ; preds = %arch_test_bit.exit.i.i.i
  %i.iw = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.iw, ptr elementtype(i64) %i.iw) #20, !srcloc !73
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !74
  %i.ix = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_iocost_iocg_idle, i64 56), align 8 ; 2 uses
  %.not.i.i86.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i86.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = call i32 @__SCT__tp_func_iocost_iocg_idle(ptr noundef %i.iz, ptr noundef %.064107.i, ptr noundef nonnull @trace_iocg_path, ptr noundef nonnull %4, i64 noundef %i.ip, i64 noundef %i.iq, i64 noundef %i.gh) #19 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !75
  %i.jb = getelementptr i8, ptr %i.iw, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.jb, ptr elementtype(i64) %i.jb) #20, !srcloc !76
  br label %trace_iocost_iocg_idle.exit.i

trace_iocost_iocg_idle.exit.i:                    ; preds = %bb.ao, %arch_test_bit.exit.i.i.i, %iocg_to_blkg.exit.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_iocg_path_lock, i64 noundef %i.ih) #19
  br label %trace_iocost_iocg_idle_enabled.exit.i

trace_iocost_iocg_idle_enabled.exit.i:            ; preds = %trace_iocost_iocg_idle.exit.i, %bb.aj
  %i.jc = load ptr, ptr %i.fw, align 8
  %i.jd = load volatile ptr, ptr %.pn.in104.i, align 8 ; 2 uses
  %.not.i87.i = icmp eq ptr %i.jd, %.pn.in104.i
  br i1 %.not.i87.i, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %trace_iocost_iocg_idle_enabled.exit.i
  %i.je = getelementptr i8, ptr %.pn.in104.i, i64 16
  %i.jf = load i64, ptr %i.je, align 8            ; 3 uses
  %.not67.i.i = icmp eq i64 %i.jf, 0
  br i1 %.not67.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jg = add i64 %i.jf, -1
  %i.jh = udiv i64 %i.jg, %i.jf
  %i.ji = trunc i64 %i.jh to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %trace_iocost_iocg_idle_enabled.exit.i
  %.059.i.i = phi i32 [ %i.ji, %bb.aq ], [ 1, %bb.ap ], [ 1, %trace_iocost_iocg_idle_enabled.exit.i ] ; 2 uses
  %i.jj = getelementptr i8, ptr %.pn.in104.i, i64 -76
  %i.jk = load i32, ptr %i.jj, align 4            ; 2 uses
  %i.jl = getelementptr i8, ptr %.pn.in104.i, i64 -72
  store i32 %i.jk, ptr %i.jl, align 8
  %i.jm = getelementptr i8, ptr %.pn.in104.i, i64 -80
  %i.jn = load i32, ptr %i.jm, align 8
  %i.jo = icmp eq i32 %i.jn, 0
  %i.jp = icmp eq i32 %.059.i.i, %i.jk
  %or.cond.i88.i = select i1 %i.jo, i1 %i.jp, i1 false
  br i1 %or.cond.i88.i, label %__propagate_weights.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jq = getelementptr i8, ptr %.pn.in104.i, i64 320
  %i.jr = load i32, ptr %i.jq, align 8            ; 2 uses
  %.06473.i.i = add i32 %i.jr, -1                 ; 2 uses
  %i.js = icmp sgt i32 %.06473.i.i, -1
  br i1 %i.js, label %.lr.ph.i89.i, label %.thread.i.i

.lr.ph.i89.i:                                     ; preds = %bb.as
  %i.jt = getelementptr i8, ptr %.pn.in104.i, i64 328 ; 2 uses
  %i.ju = zext nneg i32 %.06473.i.i to i64
  %i.jv = sext i32 %i.jr to i64
  br label %bb.at

bb.at:                                            ; preds = %.backedge.i.i, %.lr.ph.i89.i
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i.a, %.backedge.i.i ], [ %i.ju, %.lr.ph.i89.i ] ; 5 uses
  %.076.i90.i = phi i32 [ %.062.i.i, %.backedge.i.i ], [ 0, %.lr.ph.i89.i ] ; 2 uses
  %.16075.i.i.a = phi i32 [ %.061.i.i, %.backedge.i.i ], [ %.059.i.i, %.lr.ph.i89.i ] ; 2 uses
  %.064.in74.i.i = phi i64 [ %indvars.iv.i.a, %.backedge.i.i ], [ %i.jv, %.lr.ph.i89.i ]
  %i.jw = getelementptr [8 x i8], ptr %i.jt, i64 %indvars.iv.i.a
  %i.jx = load ptr, ptr %i.jw, align 8            ; 5 uses
  %i.jy = getelementptr [8 x i8], ptr %i.jt, i64 %.064.in74.i.i
  %i.jz = load ptr, ptr %i.jy, align 8            ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jz, i64 48     ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 8
  %i.kc = sub i32 %.076.i90.i, %i.kb
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr i8, ptr %i.jx, i64 144    ; 3 uses
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = add i64 %i.kf, %i.kd
  store i64 %i.kg, ptr %i.ke, align 8
  %i.kh = getelementptr i8, ptr %i.jz, i64 52     ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4
  %i.kj = sub i32 %.16075.i.i.a, %i.ki
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr i8, ptr %i.jx, i64 152    ; 3 uses
  %i.km = load i64, ptr %i.kl, align 8
  %i.kn = add i64 %i.km, %i.kk
  store i64 %i.kn, ptr %i.kl, align 8
  store i32 %.076.i90.i, ptr %i.ka, align 8
  store i32 %.16075.i.i.a, ptr %i.kh, align 4
  %i.ko = load i64, ptr %i.ke, align 8            ; 3 uses
  %.not69.i.i = icmp eq i64 %i.ko, 0
  br i1 %.not69.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kp = getelementptr i8, ptr %i.jx, i64 44
  %i.kq = load i32, ptr %i.kp, align 4            ; 2 uses
  %i.kr = zext i32 %i.kq to i64
  %i.ks = load i64, ptr %i.kl, align 8
  %i.kt = mul i64 %i.ks, %i.kr
  %i.ku = add i64 %i.ko, -1
  %i.kv = add i64 %i.ku, %i.kt
  %i.kw = udiv i64 %i.kv, %i.ko
  %i.kx = trunc i64 %i.kw to i32
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.062.i.i = phi i32 [ %i.kq, %bb.au ], [ 0, %bb.at ] ; 2 uses
  %.061.i.i = phi i32 [ %i.kx, %bb.au ], [ 0, %bb.at ] ; 2 uses
  %i.ky = getelementptr i8, ptr %i.jx, i64 48
  %i.kz = load i32, ptr %i.ky, align 8
  %i.la = icmp eq i32 %.062.i.i, %i.kz
  br i1 %i.la, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.lb = getelementptr i8, ptr %i.jx, i64 52
  %i.lc = load i32, ptr %i.lb, align 4
  %i.ld = icmp ne i32 %.061.i.i, %i.lc
  %i.le = icmp sgt i64 %indvars.iv.i.a, 0
  %or.cond79.i.i = and i1 %i.le, %i.ld
  br i1 %or.cond79.i.i, label %.backedge.i.i, label %.thread.i.i

bb.ax:                                            ; preds = %bb.av
  %.old.i.i = icmp sgt i64 %indvars.iv.i.a, 0
  br i1 %.old.i.i, label %.backedge.i.i, label %.thread.i.i

.backedge.i.i:                                    ; preds = %bb.ax, %bb.aw
  %indvars.iv.next.i.a = add nsw i64 %indvars.iv.i.a, -1
  br label %bb.at, !llvm.loop !49

.thread.i.i:                                      ; preds = %bb.ax, %bb.aw, %bb.as
  %i.lf = getelementptr i8, ptr %i.jc, i64 364
  store i8 1, ptr %i.lf, align 4
  %.pre110.i = load ptr, ptr %.pn.in104.i, align 8
  br label %__propagate_weights.exit.i

__propagate_weights.exit.i:                       ; preds = %.thread.i.i, %bb.ar
  %i.lg = phi ptr [ %i.jd, %bb.ar ], [ %.pre110.i, %.thread.i.i ] ; 2 uses
  %i.lh = getelementptr i8, ptr %.pn.in104.i, i64 8 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8            ; 2 uses
  %i.lj = getelementptr i8, ptr %i.lg, i64 8
  store ptr %i.li, ptr %i.lj, align 8
  store volatile ptr %i.lg, ptr %i.li, align 8
  store volatile ptr %.pn.in104.i, ptr %.pn.in104.i, align 8
  store volatile ptr %.pn.in104.i, ptr %i.lh, align 8
  br label %iocg_is_idle.exit84.thread.i

iocg_is_idle.exit84.thread.i:                     ; preds = %__propagate_weights.exit.i, %iocg_is_idle.exit84.i, %bb.ac, %bb.ab, %bb.aa
  %.1.i = phi i32 [ %i.fv, %bb.ab ], [ %.0106.i, %bb.aa ], [ %.0106.i, %__propagate_weights.exit.i ], [ %.0106.i, %iocg_is_idle.exit84.i ], [ %.0106.i, %bb.ac ]
  call void @_raw_spin_unlock(ptr noundef %i.dw) #19
  br label %iocg_is_idle.exit.thread.i

iocg_is_idle.exit.thread.i:                       ; preds = %iocg_is_idle.exit84.thread.i, %iocg_is_idle.exit.i, %bb.p
  %.2.i = phi i32 [ %.1.i, %iocg_is_idle.exit84.thread.i ], [ %.0106.i, %iocg_is_idle.exit.i ], [ %.0106.i, %bb.p ] ; 2 uses
  %.not.i252 = icmp eq ptr %.pn108.i, %i.dr
  br i1 %.not.i252, label %._crit_edge.i253.loopexit, label %bb.m, !llvm.loop !77

._crit_edge.i253.loopexit:                        ; preds = %iocg_is_idle.exit.thread.i
  %i.lk = icmp eq i32 %.2.i, 0
  br label %._crit_edge.i253

._crit_edge.i253:                                 ; preds = %._crit_edge.i253.loopexit, %.critedge
  %.0.lcssa.i = phi i1 [ true, %.critedge ], [ %i.lk, %._crit_edge.i253.loopexit ]
  %i.ll = getelementptr i8, ptr %0, i64 132       ; 4 uses
  %i.lm = load i8, ptr %i.ll, align 4, !range !45, !noundef !46
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %bb.ay, label %ioc_check_iocgs.exit

bb.ay:                                            ; preds = %._crit_edge.i253
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !47
  %i.lo = getelementptr i8, ptr %0, i64 136       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.lo, ptr elementtype(i32) %i.lo) #20, !srcloc !48
  store i8 0, ptr %i.ll, align 4
  br label %ioc_check_iocgs.exit

ioc_check_iocgs.exit:                             ; preds = %._crit_edge.i253, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %3, ptr %3, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %3, ptr %i.lp, align 8
  %.pn10.i = load ptr, ptr %i.dr, align 8         ; 2 uses
  %.not11.i = icmp eq ptr %.pn10.i, %i.dr
  br i1 %.not11.i, label %iocg_flush_stat.exit, label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %ioc_check_iocgs.exit, %iocg_build_inner_walk.exit.i
  %.pn12.i = phi ptr [ %.pn.i, %iocg_build_inner_walk.exit.i ], [ %.pn10.i, %ioc_check_iocgs.exit ] ; 18 uses
  %i.lq = getelementptr i8, ptr %.pn12.i, i64 -96
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load i64, ptr @__cpu_possible_mask, align 8
  %i.lt = getelementptr i8, ptr %.pn12.i, i64 208
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %.lr.ph.i255
  %i.lu = phi i64 [ 0, %.lr.ph.i255 ], [ %i.mk, %bb.ba ]
  %.05.i.i = phi i64 [ 0, %.lr.ph.i255 ], [ %i.mi, %bb.ba ] ; 3 uses
  %i.lv = shl nsw i64 -1, %i.lu
  %i.lw = and i64 %i.lv, %i.ls                    ; 2 uses
  %.not.i.i.i256 = icmp eq i64 %i.lw, 0
  br i1 %.not.i.i.i256, label %find_next_bit.exit.thread.i.i, label %find_next_bit.exit.i.i

find_next_bit.exit.i.i:                           ; preds = %bb.az
  %i.lx = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.lw) #24, !srcloc !60 ; 3 uses
  %i.ly = and i64 %i.lx, 4294967232
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.ba, label %find_next_bit.exit.thread.i.i

bb.ba:                                            ; preds = %find_next_bit.exit.i.i
  %i.ma = load ptr, ptr %i.lt, align 8
  %i.mb = ptrtoint ptr %i.ma to i64
  %i.mc = and i64 %i.lx, 63
  %i.md = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.mc
  %i.me = load i64, ptr %i.md, align 8
  %i.mf = add i64 %i.me, %i.mb
  %i.mg = inttoptr i64 %i.mf to ptr
  %i.mh = load volatile i64, ptr %i.mg, align 8
  %i.mi = add i64 %i.mh, %.05.i.i                 ; 2 uses
  %i.mj = add nuw nsw i64 %i.lx, 1
  %i.mk = and i64 %i.mj, 127                      ; 2 uses
  %i.ml = icmp samesign ugt i64 %i.mk, 63
  br i1 %i.ml, label %find_next_bit.exit.thread.i.i, label %bb.az, !prof !61, !llvm.loop !78

find_next_bit.exit.thread.i.i:                    ; preds = %bb.ba, %find_next_bit.exit.i.i, %bb.az
  %.0.lcssa.i.i = phi i64 [ %.05.i.i, %bb.az ], [ %i.mi, %bb.ba ], [ %.05.i.i, %find_next_bit.exit.i.i ] ; 2 uses
  %i.mm = getelementptr i8, ptr %.pn12.i, i64 280 ; 2 uses
  %i.mn = load i64, ptr %i.mm, align 8
  %i.mo = sub i64 %.0.lcssa.i.i, %i.mn
  store i64 %.0.lcssa.i.i, ptr %i.mm, align 8
  %i.mp = getelementptr i8, ptr %i.lr, i64 312
  %i.mq = load i64, ptr %i.mp, align 8
  %i.mr = udiv i64 %i.mo, %i.mq                   ; 2 uses
  %i.ms = getelementptr i8, ptr %.pn12.i, i64 288
  store i64 %i.mr, ptr %i.ms, align 8
  %i.mt = getelementptr i8, ptr %.pn12.i, i64 216 ; 3 uses
  %i.mu = load i64, ptr %i.mt, align 8
  %i.mv = add i64 %i.mu, %i.mr                    ; 2 uses
  store i64 %i.mv, ptr %i.mt, align 8
  %i.mw = getelementptr i8, ptr %.pn12.i, i64 320 ; 3 uses
  %i.mx = load i32, ptr %i.mw, align 8            ; 2 uses
  %i.my = icmp sgt i32 %i.mx, 0
  br i1 %i.my, label %bb.bb, label %iocg_flush_stat_leaf.exit.i

bb.bb:                                            ; preds = %find_next_bit.exit.thread.i.i
  %i.mz = zext nneg i32 %i.mx to i64
  %i.na = getelementptr [8 x i8], ptr %.pn12.i, i64 %i.mz
  %i.nb = getelementptr i8, ptr %i.na, i64 320
  %i.nc = load ptr, ptr %i.nb, align 8            ; 4 uses
  %i.nd = getelementptr i8, ptr %i.nc, i64 344    ; 2 uses
  %i.ne = getelementptr i8, ptr %.pn12.i, i64 248
  %i.nf = load i64, ptr %i.ne, align 8
  %i.ng = sub i64 %i.mv, %i.nf
  %i.nh = load i64, ptr %i.nd, align 8
  %i.ni = add i64 %i.ng, %i.nh
  store i64 %i.ni, ptr %i.nd, align 8
  %i.nj = getelementptr i8, ptr %.pn12.i, i64 224
  %i.nk = load i64, ptr %i.nj, align 8
  %i.nl = getelementptr i8, ptr %.pn12.i, i64 256
  %i.nm = load i64, ptr %i.nl, align 8
  %i.nn = sub i64 %i.nk, %i.nm
  %i.no = getelementptr i8, ptr %i.nc, i64 352    ; 2 uses
  %i.np = load i64, ptr %i.no, align 8
  %i.nq = add i64 %i.nn, %i.np
  store i64 %i.nq, ptr %i.no, align 8
  %i.nr = getelementptr i8, ptr %.pn12.i, i64 232
  %i.ns = load i64, ptr %i.nr, align 8
  %i.nt = getelementptr i8, ptr %.pn12.i, i64 264
  %i.nu = load i64, ptr %i.nt, align 8
  %i.nv = sub i64 %i.ns, %i.nu
  %i.nw = getelementptr i8, ptr %i.nc, i64 360    ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8
  %i.ny = add i64 %i.nv, %i.nx
  store i64 %i.ny, ptr %i.nw, align 8
  %i.nz = getelementptr i8, ptr %.pn12.i, i64 240
  %i.oa = load i64, ptr %i.nz, align 8
  %i.ob = getelementptr i8, ptr %.pn12.i, i64 272
  %i.oc = load i64, ptr %i.ob, align 8
  %i.od = sub i64 %i.oa, %i.oc
  %i.oe = getelementptr i8, ptr %i.nc, i64 368    ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8
  %i.og = add i64 %i.od, %i.of
  store i64 %i.og, ptr %i.oe, align 8
  br label %iocg_flush_stat_leaf.exit.i

iocg_flush_stat_leaf.exit.i:                      ; preds = %bb.bb, %find_next_bit.exit.thread.i.i
  %i.oh = getelementptr i8, ptr %.pn12.i, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) %i.oh, ptr noundef align 8 dereferenceable(32) %i.mt, i64 32, i1 false)
  %i.oi = getelementptr i8, ptr %.pn12.i, i64 64  ; 2 uses
  %i.oj = load volatile ptr, ptr %i.oi, align 8
  %.not.i.i257 = icmp eq ptr %i.oj, %i.oi
  br i1 %.not.i.i257, label %bb.bd, label %bb.bc, !prof !21

bb.bc:                                            ; preds = %iocg_flush_stat_leaf.exit.i
  call void asm sideeffect "837: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 837b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 837) #20, !srcloc !79
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.49, ptr nonnull @.str.56, i32 1656, i32 2307, i64 16) #20, !srcloc !80
  call void asm sideeffect "838: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 838b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 838) #20, !srcloc !81
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %iocg_flush_stat_leaf.exit.i
  %i.ok = load i32, ptr %i.mw, align 8            ; 2 uses
  %i.ol = getelementptr i8, ptr %.pn12.i, i64 328 ; 2 uses
  %i.om = zext i32 %i.ok to i64
  %i.on = add i32 %i.ok, -1                       ; 2 uses
  %smin.i.i = call i32 @llvm.smin.i32(i32 %i.on, i32 -1)
  %i.oo = add nsw i32 %smin.i.i, 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bf, %bb.bd
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bf ], [ %i.om, %bb.bd ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.op = and i64 %indvars.iv.next.i.i, 2147483648
  %i.oq = icmp eq i64 %i.op, 0
  br i1 %i.oq, label %bb.bf, label %.split.loop.exit20.i.i

bb.bf:                                            ; preds = %bb.be
  %i.or = and i64 %indvars.iv.next.i.i, 2147483647
  %i.os = getelementptr [8 x i8], ptr %i.ol, i64 %i.or
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = getelementptr i8, ptr %i.ot, i64 192    ; 2 uses
  %i.ov = load volatile ptr, ptr %i.ou, align 8
  %.not17.i.i = icmp eq ptr %i.ov, %i.ou
  br i1 %.not17.i.i, label %bb.be, label %.split.loop.exit.i.i, !llvm.loop !82

.split.loop.exit.i.i:                             ; preds = %bb.bf
  %i.ow = trunc nuw i64 %indvars.iv.i.i to i32
  br label %.split.loop.exit20.i.i

.split.loop.exit20.i.i:                           ; preds = %bb.be, %.split.loop.exit.i.i
  %.0.in.lcssa.i.i = phi i32 [ %i.ow, %.split.loop.exit.i.i ], [ %i.oo, %bb.be ] ; 2 uses
  %.not1618.i.i = icmp sgt i32 %.0.in.lcssa.i.i, %i.on
end_hunk_1
begin_hunk_2_@ioc_timer_fn:bb.a

bb.bm:                                            ; preds = %current_hweight.exit
  %.not.i.i270 = icmp eq ptr %.0428, null
  br i1 %.not.i.i270, label %iocg_to_blkg.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.tc = load ptr, ptr %.0428, align 8
  br label %iocg_to_blkg.exit

iocg_to_blkg.exit:                                ; preds = %bb.bm, %bb.bn
  %i.td = phi ptr [ %i.tc, %bb.bn ], [ null, %bb.bm ]
  %i.te = getelementptr i8, ptr %i.td, i64 288
  %i.tf = load volatile i32, ptr %i.te, align 4
  %.not238 = icmp eq i32 %i.tf, 0
  %i.tg = sub i64 %i.rf, %i.rh
  %i.th = icmp slt i64 %i.tg, 0
  %or.cond246 = select i1 %.not238, i1 %i.th, i1 false
  br i1 %or.cond246, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %iocg_to_blkg.exit
  %i.ti = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.tj = sub i64 %.neg, %i.rh
  %i.tk = add i64 %i.tj, %i.ti
  %i.tl = icmp slt i64 %i.tk, 0
  br i1 %i.tl, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %.neg239 = add i64 %i.rf, %i.dq
  %i.tm = sub i64 %.neg239, %i.ti
  %.lobit = lshr i64 %i.tm, 63
  %i.tn = trunc nuw nsw i64 %.lobit to i32
  %spec.select = add i32 %.0215425, %i.tn
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %current_hweight.exit, %bb.bo, %iocg_to_blkg.exit
  %.1216 = phi i32 [ %.0215425, %iocg_to_blkg.exit ], [ %.0215425, %current_hweight.exit ], [ %spec.select, %bb.bp ], [ %.0215425, %bb.bo ] ; 3 uses
  %i.to = getelementptr i8, ptr %.pn427, i64 288
  %i.tp = load i64, ptr %i.to, align 8            ; 3 uses
  %i.tq = add i64 %i.tp, %.0217424                ; 3 uses
  %i.tr = getelementptr i8, ptr %.pn427, i64 80   ; 5 uses
  %i.ts = load volatile ptr, ptr %i.tr, align 8
  %.not380 = icmp eq ptr %i.ts, %i.tr
  br i1 %.not380, label %bb.bs, label %bb.br, !prof !21

bb.br:                                            ; preds = %bb.bq
  call void asm sideeffect "866: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 866b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 866) #20, !srcloc !86
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.49, ptr nonnull @.str.56, i32 2307, i32 2307, i64 16) #20, !srcloc !87
  call void asm sideeffect "867: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 867b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 867) #20, !srcloc !88
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.tt = icmp ult i32 %i.sy, %i.sz
  br i1 %i.tt, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.tu = getelementptr i8, ptr %.pn427, i64 104  ; 2 uses
  %i.tv = load volatile ptr, ptr %i.tu, align 8
  %.not381 = icmp eq ptr %i.tv, %i.tu
  br i1 %.not381, label %bb.bu, label %bb.co

bb.bu:                                            ; preds = %bb.bt
  %i.tw = load i64, ptr %i.dc, align 8
  %i.tx = load i64, ptr %i.rc, align 8
  %.neg242 = sub i64 %i.rh, %i.tw
  %i.ty = add i64 %.neg242, %i.tx
  %i.tz = icmp slt i64 %i.ty, 0
  br i1 %i.tz, label %bb.bv, label %bb.co

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %.not243 = icmp eq i64 %i.rf, %i.rh
  br i1 %.not243, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ua = load i64, ptr %i.rd, align 8            ; 2 uses
  %i.ub = sub i64 %i.rh, %i.rf
  %i.uc = zext i32 %i.sy to i64
  %i.ud = mul i64 %i.ub, %i.uc
  %i.ue = add i64 %i.ud, 65535
  %i.uf = lshr i64 %i.ue, 16
  %i.ug = add nsw i64 %i.uf, -1
  %i.uh = add i64 %i.ug, %i.ua
  %i.ui = udiv i64 %i.uh, %i.ua
  %i.uj = call i64 @llvm.umax.i64(i64 %i.tp, i64 %i.ui)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.0218 = phi i64 [ %i.uj, %bb.bw ], [ %i.tp, %bb.bv ]
  %i.uk = load i64, ptr %i.db, align 8            ; 2 uses
  %i.ul = getelementptr i8, ptr %.pn427, i64 200
  %i.um = load i64, ptr %i.ul, align 8            ; 2 uses
  %i.un = sub i64 %i.uk, %i.um
  %i.uo = icmp slt i64 %i.un, 0
  %i.up = load i64, ptr %i.cw, align 8
  %. = select i1 %i.uo, i64 %i.um, i64 %i.uk
  %i.uq = sub i64 %i.up, %.
  %i.ur = call i64 @llvm.umax.i64(i64 %i.uq, i64 1) ; 2 uses
  %i.us = shl i64 %.0218, 16
  %i.ut = add i64 %i.us, -1
  %i.uu = add i64 %i.ut, %i.ur
  %i.uv = udiv i64 %i.uu, %i.ur                   ; 2 uses
  %i.uw = icmp ugt i64 %i.uv, 65535
  %i.ux = call i64 @llvm.umax.i64(i64 %i.uv, i64 1)
  %i.uy = load ptr, ptr %i.ri, align 8
  %i.uz = getelementptr i8, ptr %i.uy, i64 368
  %i.va = load volatile i32, ptr %i.uz, align 4   ; 2 uses
  %i.vb = load i32, ptr %i.rm, align 8
  %i.vc = icmp eq i32 %i.va, %i.vb
  br i1 %i.vc, label %.current_hweight.exit287_crit_edge, label %bb.by

.current_hweight.exit287_crit_edge:               ; preds = %bb.bx
  %.pre443 = load i32, ptr %i.ta, align 4
  %.pre444.a = load i32, ptr %i.tb, align 8
  %.phi.trans.insert445 = getelementptr i8, ptr %.pn427, i64 320
  %.pre446.a = load i32, ptr %.phi.trans.insert445, align 8 ; 2 uses
  %.pre449 = add i32 %.pre446.a, -1
  br label %current_hweight.exit287

bb.by:                                            ; preds = %bb.bx
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !68
  %i.vd = getelementptr i8, ptr %.pn427, i64 320
  %i.ve = load i32, ptr %i.vd, align 8            ; 2 uses
  %i.vf = add i32 %i.ve, -1                       ; 3 uses
  %.not73.i271 = icmp slt i32 %i.vf, 0
  br i1 %.not73.i271, label %._crit_edge.i282, label %.lr.ph.i272

.lr.ph.i272:                                      ; preds = %bb.by
  %i.vg = getelementptr i8, ptr %.pn427, i64 328  ; 2 uses
  %.pre.i273 = load ptr, ptr %i.vg, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cb, %.lr.ph.i272
  %i.vh = phi ptr [ %.pre.i273, %.lr.ph.i272 ], [ %i.vl, %bb.cb ] ; 2 uses
  %.076.i274 = phi i32 [ 0, %.lr.ph.i272 ], [ %i.vi, %bb.cb ]
  %.06375.i275 = phi i32 [ 65536, %.lr.ph.i272 ], [ %.1.i279, %bb.cb ] ; 2 uses
  %.06474.i276 = phi i32 [ 65536, %.lr.ph.i272 ], [ %.165.i278, %bb.cb ] ; 2 uses
  %i.vi = add i32 %.076.i274, 1                   ; 3 uses
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr [8 x i8], ptr %i.vg, i64 %i.vj
  %i.vl = load ptr, ptr %i.vk, align 8            ; 3 uses
  %i.vm = getelementptr i8, ptr %i.vh, i64 144
  %i.vn = load volatile i64, ptr %i.vm, align 8   ; 2 uses
  %i.vo = getelementptr i8, ptr %i.vh, i64 152
  %i.vp = load volatile i64, ptr %i.vo, align 8   ; 2 uses
  %i.vq = getelementptr i8, ptr %i.vl, i64 48
  %i.vr = load volatile i32, ptr %i.vq, align 8
  %i.vs = getelementptr i8, ptr %i.vl, i64 52
  %i.vt = load volatile i32, ptr %i.vs, align 4
  %i.vu = icmp ne i64 %i.vn, 0
  %i.vv = icmp ne i64 %i.vp, 0
  %or.cond.i277 = select i1 %i.vu, i1 %i.vv, i1 false
  br i1 %or.cond.i277, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.vw = zext i32 %i.vr to i64                   ; 2 uses
  %i.vx = call i64 @llvm.umax.i64(i64 %i.vn, i64 %i.vw)
  %i.vy = zext i32 %.06375.i275 to i64
  %i.vz = mul nuw i64 %i.vw, %i.vy
  %i.wa = udiv i64 %i.vz, %i.vx
  %i.wb = trunc i64 %i.wa to i32
  %i.wc = zext i32 %i.vt to i64                   ; 2 uses
  %i.wd = call i64 @llvm.umax.i64(i64 %i.vp, i64 %i.wc)
  %i.we = zext i32 %.06474.i276 to i64
  %i.wf = mul nuw i64 %i.wc, %i.we
  %i.wg = udiv i64 %i.wf, %i.wd
  %i.wh = trunc i64 %i.wg to i32
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.165.i278 = phi i32 [ %i.wh, %bb.ca ], [ %.06474.i276, %bb.bz ] ; 2 uses
  %.1.i279 = phi i32 [ %i.wb, %bb.ca ], [ %.06375.i275, %bb.bz ] ; 2 uses
  %.not.i280 = icmp sgt i32 %i.vi, %i.vf
  br i1 %.not.i280, label %._crit_edge.loopexit.i281, label %bb.bz, !llvm.loop !69

._crit_edge.loopexit.i281:                        ; preds = %bb.cb
  %i.wi = call i32 @llvm.umax.i32(i32 %.1.i279, i32 1)
  %i.wj = call i32 @llvm.umax.i32(i32 %.165.i278, i32 1)
  br label %._crit_edge.i282

._crit_edge.i282:                                 ; preds = %._crit_edge.loopexit.i281, %bb.by
  %.064.lcssa.i283 = phi i32 [ 65536, %bb.by ], [ %i.wj, %._crit_edge.loopexit.i281 ] ; 2 uses
  %.063.lcssa.i284 = phi i32 [ 65536, %bb.by ], [ %i.wi, %._crit_edge.loopexit.i281 ] ; 2 uses
  store i32 %.063.lcssa.i284, ptr %i.ta, align 4
  store i32 %.064.lcssa.i283, ptr %i.tb, align 8
  store i32 %i.va, ptr %i.rm, align 8
  br label %current_hweight.exit287

current_hweight.exit287:                          ; preds = %.current_hweight.exit287_crit_edge, %._crit_edge.i282
  %.02728.i.pre-phi = phi i32 [ %.pre449, %.current_hweight.exit287_crit_edge ], [ %i.vf, %._crit_edge.i282 ] ; 2 uses
  %i.wk = phi i32 [ %.pre446.a, %.current_hweight.exit287_crit_edge ], [ %i.ve, %._crit_edge.i282 ]
  %i.wl = phi i32 [ %.pre444.a, %.current_hweight.exit287_crit_edge ], [ %.064.lcssa.i283, %._crit_edge.i282 ]
  %i.wm = phi i32 [ %.pre443, %.current_hweight.exit287_crit_edge ], [ %.063.lcssa.i284, %._crit_edge.i282 ] ; 2 uses
  %i.wn = icmp sgt i32 %.02728.i.pre-phi, -1
  br i1 %i.wn, label %.lr.ph.i290, label %current_hweight_max.exit

.lr.ph.i290:                                      ; preds = %current_hweight.exit287
  %i.wo = getelementptr i8, ptr %.pn427, i64 -80
  %i.wp = load i32, ptr %i.wo, align 8
  %i.wq = getelementptr i8, ptr %.pn427, i64 328  ; 2 uses
  %i.wr = zext nneg i32 %.02728.i.pre-phi to i64
  %.phi.trans.insert.i291 = sext i32 %i.wk to i64
  %.phi.trans.insert34.i = getelementptr [8 x i8], ptr %i.wq, i64 %.phi.trans.insert.i291
  %.pre.i292 = load ptr, ptr %.phi.trans.insert34.i, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %.lr.ph.i290
  %6 = phi ptr [ %.pre.i292, %.lr.ph.i290 ], [ %i.wt, %bb.cc ]
  %indvars.iv.i293 = phi i64 [ %i.wr, %.lr.ph.i290 ], [ %indvars.iv.next.i294, %bb.cc ] ; 3 uses
  %.031.i = phi i64 [ 65536, %.lr.ph.i290 ], [ %i.xe, %bb.cc ]
  %.02630.i = phi i32 [ %i.wp, %.lr.ph.i290 ], [ %i.xo, %bb.cc ]
  %i.ws = getelementptr [8 x i8], ptr %i.wq, i64 %indvars.iv.i293
  %i.wt = load ptr, ptr %i.ws, align 8            ; 4 uses
  %i.wu = getelementptr i8, ptr %i.wt, i64 152
  %i.wv = load i64, ptr %i.wu, align 8
  %i.ww = zext i32 %.02630.i to i64               ; 2 uses
  %i.wx = add i64 %i.wv, %i.ww
  %i.wy = getelementptr i8, ptr %6, i64 52
  %i.wz = load i32, ptr %i.wy, align 4
  %i.xa = zext i32 %i.wz to i64
  %i.xb = sub i64 %i.wx, %i.xa                    ; 2 uses
  %i.xc = and i64 %.031.i, 4294967295
  %i.xd = mul nuw i64 %i.xc, %i.ww
  %i.xe = udiv i64 %i.xd, %i.xb                   ; 2 uses
  %i.xf = getelementptr i8, ptr %i.wt, i64 144
  %i.xg = load i64, ptr %i.xf, align 8            ; 2 uses
  %i.xh = getelementptr i8, ptr %i.wt, i64 48
  %i.xi = load i32, ptr %i.xh, align 8
  %i.xj = zext i32 %i.xi to i64
  %i.xk = mul i64 %i.xb, %i.xj
  %i.xl = add i64 %i.xg, -1
  %i.xm = add i64 %i.xl, %i.xk
  %i.xn = udiv i64 %i.xm, %i.xg
  %i.xo = trunc i64 %i.xn to i32
  %indvars.iv.next.i294 = add nsw i64 %indvars.iv.i293, -1
  %.not.i295.a = icmp eq i64 %indvars.iv.i293, 0
  br i1 %.not.i295.a, label %._crit_edge.loopexit.i296, label %bb.cc, !llvm.loop !89

._crit_edge.loopexit.i296:                        ; preds = %bb.cc
  %i.xp = trunc i64 %i.xe to i32
  %i.xq = call i32 @llvm.umax.i32(i32 %i.xp, i32 1)
  br label %current_hweight_max.exit

current_hweight_max.exit:                         ; preds = %current_hweight.exit287, %._crit_edge.loopexit.i296
  %.0.lcssa.i289 = phi i32 [ 65536, %current_hweight.exit287 ], [ %i.xq, %._crit_edge.loopexit.i296 ] ; 5 uses
  %i.xr = load ptr, ptr %i.ri, align 8            ; 4 uses
  %i.xs = load volatile i64, ptr %i.rg, align 8   ; 4 uses
  %i.xt = getelementptr i8, ptr %.pn427, i64 -32  ; 2 uses
  %i.xu = load i64, ptr %i.xt, align 8
  %.not.i297 = icmp eq i64 %i.xu, 0
  br i1 %.not.i297, label %bb.cd, label %hweight_after_donation.exit

bb.cd:                                            ; preds = %current_hweight_max.exit
  %i.xv = getelementptr i8, ptr %.pn427, i64 104  ; 2 uses
  %i.xw = load volatile ptr, ptr %i.xv, align 8
  %.not56.i = icmp eq ptr %i.xw, %i.xv
  br i1 %.not56.i, label %bb.ce, label %hweight_after_donation.exit.thread.thread

bb.ce:                                            ; preds = %bb.cd
  %i.xx = load i64, ptr %i.dc, align 8            ; 3 uses
  %i.xy = getelementptr i8, ptr %i.xr, i64 176
  %i.xz = load i64, ptr %i.xy, align 8
  %i.ya = add i64 %i.xs, %i.xz
  %i.yb = sub i64 %i.xx, %i.ya
  %i.yc = icmp slt i64 %i.yb, 0
  br i1 %i.yc, label %hweight_after_donation.exit.thread.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.yd = getelementptr i8, ptr %i.xr, i64 192
  %i.ye = load i64, ptr %i.yd, align 8
  %i.yf = add i64 %i.xs, %i.ye
  %i.yg = sub i64 %i.xx, %i.yf                    ; 5 uses
  %i.yh = icmp sgt i64 %i.yg, 0
  br i1 %i.yh, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.rg, i64 %i.yg, ptr elementtype(i64) %i.rg) #20, !srcloc !90
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.re, i64 %i.yg, ptr elementtype(i64) %i.re) #20, !srcloc !90
  %i.yi = add i64 %i.yg, %i.xs
  %i.yj = zext i32 %i.wl to i64
  %i.yk = mul i64 %i.yg, %i.yj
  %i.yl = lshr i64 %i.yk, 16
  %i.ym = getelementptr i8, ptr %i.xr, i64 320    ; 2 uses
  %i.yn = load i64, ptr %i.ym, align 8
  %i.yo = sub i64 %i.yn, %i.yl
  store i64 %i.yo, ptr %i.ym, align 8
  %.pre447 = load i64, ptr %i.dc, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.yp = phi i64 [ %.pre447, %bb.cg ], [ %i.xx, %bb.cf ] ; 2 uses
  %.048.i = phi i64 [ %i.yi, %bb.cg ], [ %i.xs, %bb.cf ]
  %i.yq = zext i32 %.0.lcssa.i289 to i64
  %i.yr = shl i64 %i.ux, 16
  %i.ys = and i64 %i.yr, 4294901760
  %i.yt = select i1 %i.uw, i64 0, i64 %i.ys
  %i.yu = sub i64 %i.yp, %.048.i
  %i.yv = shl i64 %i.yu, 16
  %i.yw = getelementptr i8, ptr %i.xr, i64 344
  %i.yx = load i64, ptr %i.yw, align 8
  %i.yy = sub i64 %i.yp, %i.yx
  %i.yz = sdiv i64 %i.yv, %i.yy
  %i.za = add i64 %i.yz, 32768
  %i.zb = sdiv i64 %i.yt, %i.za                   ; 2 uses
  %.not53.i = icmp slt i64 %i.zb, %i.yq
  %i.zc = call i64 @llvm.smax.i64(i64 %i.zb, i64 1)
  %i.zd = trunc nuw i64 %i.zc to i32
  %i.ze = select i1 %.not53.i, i32 %i.zd, i32 %.0.lcssa.i289
  br label %hweight_after_donation.exit

hweight_after_donation.exit:                      ; preds = %current_hweight_max.exit, %bb.ch
  %.0.i298 = phi i32 [ %i.ze, %bb.ch ], [ 1, %current_hweight_max.exit ] ; 3 uses
  %i.zf = icmp ult i32 %.0.i298, %.0.lcssa.i289
  %i.zg = icmp ugt i32 %i.wm, 1
  %or.cond3 = select i1 %i.zf, i1 %i.zg, i1 false
  br i1 %or.cond3, label %bb.ci, label %hweight_after_donation.exit.thread

bb.ci:                                            ; preds = %hweight_after_donation.exit
  %i.zh = getelementptr i8, ptr %.pn427, i64 52
  store i32 %i.wm, ptr %i.zh, align 4
  %i.zi = getelementptr i8, ptr %.pn427, i64 56
  store i32 %.0.i298, ptr %i.zi, align 8
  %i.zj = load ptr, ptr %5, align 8               ; 2 uses
  %i.zk = getelementptr i8, ptr %i.zj, i64 8
  store ptr %i.tr, ptr %i.zk, align 8
  store ptr %i.zj, ptr %i.tr, align 8
  %i.zl = getelementptr i8, ptr %.pn427, i64 88
  store ptr %5, ptr %i.zl, align 8
  store volatile ptr %i.tr, ptr %5, align 8
  br label %bb.cp

hweight_after_donation.exit.thread:               ; preds = %hweight_after_donation.exit
  %.pre448 = load i64, ptr %i.xt, align 8
  %i.zm = icmp eq i64 %.pre448, 0
  br i1 %i.zm, label %hweight_after_donation.exit.thread.thread, label %bb.cp

hweight_after_donation.exit.thread.thread:        ; preds = %bb.cd, %bb.ce, %hweight_after_donation.exit.thread
  %.0.i298375536 = phi i32 [ %.0.i298, %hweight_after_donation.exit.thread ], [ %.0.lcssa.i289, %bb.ce ], [ %.0.lcssa.i289, %bb.cd ]
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_iocost_inuse_shortage, i64 8), i1 false) #20
          to label %trace_iocost_inuse_shortage_enabled.exit [label %bb.cj], !srcloc !70

bb.cj:                                            ; preds = %hweight_after_donation.exit.thread.thread
  %i.zn = call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_iocg_path_lock) #19
  %.not.i.i300.a = icmp eq ptr %.0428, null
  br i1 %.not.i.i300.a, label %iocg_to_blkg.exit301, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.zo = load ptr, ptr %.0428, align 8
  br label %iocg_to_blkg.exit301

iocg_to_blkg.exit301:                             ; preds = %bb.cj, %bb.ck
  %i.zp = phi ptr [ %i.zo, %bb.ck ], [ null, %bb.cj ]
  %i.zq = getelementptr i8, ptr %i.zp, i64 40
  %i.zr = load ptr, ptr %i.zq, align 8
  %i.zs = load ptr, ptr %i.zr, align 8
  %i.zt = getelementptr i8, ptr %i.zs, i64 296
  %.val = load ptr, ptr %i.zt, align 8
  %i.zu = call i32 @kernfs_path_from_node(ptr noundef %.val, ptr noundef null, ptr noundef nonnull @trace_iocg_path, i64 noundef 1024) #19 ; 0 uses
  %i.zv = getelementptr i8, ptr %.pn427, i64 -76
  %i.zw = load i32, ptr %i.zv, align 4
  %i.zx = getelementptr i8, ptr %.pn427, i64 -80
  %i.zy = load i32, ptr %i.zx, align 8
  %i.zz = load i32, ptr %i.tb, align 8
  %i.aaa = zext i32 %i.zz to i64
  %i.aab = zext i32 %.0.i298375536 to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_iocost_inuse_shortage, i64 8), i1 false) #20
          to label %trace_iocost_inuse_shortage.exit [label %arch_test_bit.exit.i.i], !srcloc !70

arch_test_bit.exit.i.i:                           ; preds = %iocg_to_blkg.exit301
  %i.aac = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #20, !srcloc !91
  %i.aad = zext i32 %i.aac to i64
  %i.aae = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.aad) #20, !srcloc !72 ; 2 uses
  %i.aaf = icmp ult i8 %i.aae, 2
  call void @llvm.assume(i1 %i.aaf)
  %i.aag = trunc nuw i8 %i.aae to i1
  br i1 %i.aag, label %bb.cl, label %trace_iocost_inuse_shortage.exit

bb.cl:                                            ; preds = %arch_test_bit.exit.i.i
  %i.aah = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aah, ptr elementtype(i64) %i.aah) #20, !srcloc !73
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !74
  %i.aai = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_iocost_inuse_shortage, i64 56), align 8 ; 2 uses
  %.not.i.i302 = icmp eq ptr %i.aai, null
  br i1 %.not.i.i302, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.aaj = getelementptr i8, ptr %i.aai, i64 8
  %i.aak = load ptr, ptr %i.aaj, align 8
  %i.aal = call i32 @__SCT__tp_func_iocost_inuse_shortage(ptr noundef %i.aak, ptr noundef %.0428, ptr noundef nonnull @trace_iocg_path, ptr noundef nonnull %4, i32 noundef %i.zw, i32 noundef %i.zy, i64 noundef range(i64 0, 4294967296) %i.aaa, i64 noundef range(i64 0, 4294967296) %i.aab) #19 ; 0 uses
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !75
  %i.aam = getelementptr i8, ptr %i.aah, i64 8    ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aam, ptr elementtype(i64) %i.aam) #20, !srcloc !76
  br label %trace_iocost_inuse_shortage.exit

trace_iocost_inuse_shortage.exit:                 ; preds = %iocg_to_blkg.exit301, %arch_test_bit.exit.i.i, %bb.cn
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_iocg_path_lock, i64 noundef %i.zn) #19
  br label %trace_iocost_inuse_shortage_enabled.exit

trace_iocost_inuse_shortage_enabled.exit:         ; preds = %hweight_after_donation.exit.thread.thread, %trace_iocost_inuse_shortage.exit
  %i.aan = getelementptr i8, ptr %.pn427, i64 -80
  %i.aao = load i32, ptr %i.aan, align 8          ; 2 uses
  call fastcc void @__propagate_weights(ptr noundef %.0428, i32 noundef %i.aao, i32 noundef %i.aao, i1 noundef zeroext true, ptr noundef nonnull %4) #25, !srcloc !92
  %i.aap = add i32 %.0213426, 1
  br label %bb.cp

bb.co:                                            ; preds = %bb.bu, %bb.bt
  %i.aaq = add i32 %.0213426, 1
  br label %bb.cp

bb.cp:                                            ; preds = %bb.ci, %trace_iocost_inuse_shortage_enabled.exit, %hweight_after_donation.exit.thread, %bb.co
  %.2 = phi i32 [ %i.aaq, %bb.co ], [ %.0213426, %bb.ci ], [ %.0213426, %hweight_after_donation.exit.thread ], [ %i.aap, %trace_iocost_inuse_shortage_enabled.exit ] ; 4 uses
  %.pn = load ptr, ptr %.pn427, align 8           ; 2 uses
  %.not377.a = icmp eq ptr %.pn, %i.dr
  br i1 %.not377.a, label %._crit_edge, label %bb.bh, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.cp
  %i.aar = load volatile ptr, ptr %5, align 8     ; 2 uses
  %i.aas = icmp ne ptr %i.aar, %5
  %i.aat = icmp ne i32 %.2, 0                     ; 3 uses
  %or.cond5 = select i1 %i.aas, i1 %i.aat, i1 false
  br i1 %or.cond5, label %bb.cq, label %bb.ec

bb.cq:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %1, ptr %1, align 8
  %i.aau = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %1, ptr %i.aau, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %2, ptr %2, align 8
  %i.aav = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr %2, ptr %i.aav, align 8
  br label %.lr.ph.i303

end_hunk_2
