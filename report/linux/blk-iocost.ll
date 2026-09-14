Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/blk-iocost?download=true
inline.NumInlined: 554
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ioc_pd_init:bb.a
  %.039 = phi ptr [ %i.b, %blkg_to_iocg.exit.lr.ph ], [ %i.bv, %blkg_to_iocg.exit ] ; 2 uses
  %i.bl = getelementptr i8, ptr %.039, i64 208
  %i.bm = load i32, ptr @blkcg_policy_iocost, align 8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = load volatile ptr, ptr %i.bo, align 8   ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 448
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr %i.bk, i64 %i.bs
  store ptr %i.bp, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %.039, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %._crit_edge, label %blkg_to_iocg.exit, !llvm.loop !70

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
  call fastcc void @__propagate_weights(ptr noundef %0, i32 noundef %i.cm, i32 noundef %i.cs, i1 noundef zeroext true, ptr noundef nonnull readonly %1) #25, !inline_history !3, !srcloc !34
  %i.ct = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 364    ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 4, !range !35, !noundef !36
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.o, label %weight_updated.exit

bb.o:                                             ; preds = %bb.n
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !inline_history !3, !srcloc !37
  %i.cx = getelementptr i8, ptr %i.ct, i64 368    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cx, ptr elementtype(i32) %i.cx) #20, !inline_history !3, !srcloc !38
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
  %i.g = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #24, !srcloc !26
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 2360
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count) #21, !srcloc !27
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
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !28
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
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !29
  %i.x = and i32 %i.w, 1
  %.not17.i = icmp eq i32 %i.x, 0
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i, !prof !30

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !31
  %i.y = load volatile i32, ptr %i.v, align 8     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !29
  %i.z = and i32 %i.y, 1
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !prof !32, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %.lcssa.i = phi i32 [ %i.w, %bb.h ], [ %i.y, %.lr.ph.i ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !33
  %i.aa = load volatile i32, ptr %i.v, align 8
  %.not15.i = icmp eq i32 %i.aa, %.lcssa.i
  br i1 %.not15.i, label %ioc_now.exit, label %bb.h, !llvm.loop !2

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
  %1 = sext i32 %i.aq to i64
  br label %bb.m

bb.m:                                             ; preds = %.backedge.i, %.lr.ph.i25
  %indvars.iv = phi i64 [ %indvars.iv.next, %.backedge.i ], [ %i.at, %.lr.ph.i25 ] ; 5 uses
  %.076.i = phi i32 [ %.062.i, %.backedge.i ], [ 0, %.lr.ph.i25 ] ; 2 uses
  %.16075.i = phi i32 [ %.061.i, %.backedge.i ], [ %.059.i, %.lr.ph.i25 ] ; 2 uses
  %.064.in74.i = phi i64 [ %indvars.iv, %.backedge.i ], [ %1, %.lr.ph.i25 ]
  %2 = getelementptr [8 x i8], ptr %i.as, i64 %indvars.iv
  %3 = load ptr, ptr %2, align 8                  ; 5 uses
  %4 = getelementptr [8 x i8], ptr %i.as, i64 %.064.in74.i
  %i.au = load ptr, ptr %4, align 8               ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 48     ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = sub i32 %.076.i, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %3, i64 144       ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = add i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.az, align 8
  %i.bc = getelementptr i8, ptr %i.au, i64 52     ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = sub i32 %.16075.i, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %3, i64 152       ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = add i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.bg, align 8
  store i32 %.076.i, ptr %i.av, align 8
  store i32 %.16075.i, ptr %i.bc, align 4
  %i.bj = load i64, ptr %i.az, align 8            ; 3 uses
  %.not69.i = icmp eq i64 %i.bj, 0
  br i1 %.not69.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %3, i64 44
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load i64, ptr %i.bg, align 8
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = add i64 %i.bj, -1
  %i.bq = add i64 %i.bp, %i.bo
  %i.br = udiv i64 %i.bq, %i.bj
  %i.bs = trunc i64 %i.br to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.062.i = phi i32 [ %i.bl, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.061.i = phi i32 [ %i.bs, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.bt = getelementptr i8, ptr %3, i64 48
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = icmp eq i32 %.062.i, %i.bu
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr i8, ptr %3, i64 52
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = icmp ne i32 %.061.i, %i.bx
  %i.bz = icmp sgt i64 %indvars.iv, 0
  %or.cond79.i = and i1 %i.bz, %i.by
  br i1 %or.cond79.i, label %.backedge.i, label %.thread.i

bb.q:                                             ; preds = %bb.o
  %.old.i = icmp sgt i64 %indvars.iv, 0
  br i1 %.old.i, label %.backedge.i, label %.thread.i

.backedge.i:                                      ; preds = %bb.q, %bb.p
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br label %bb.m, !llvm.loop !4

.thread.i:                                        ; preds = %bb.q, %bb.p, %bb.l
  %i.ca = getelementptr i8, ptr %i.ab, i64 364
  store i8 1, ptr %i.ca, align 4
  %.pre = load ptr, ptr %i.a, align 8
  br label %__propagate_weights.exit

__propagate_weights.exit:                         ; preds = %bb.k, %.thread.i
  %i.cb = phi ptr [ %i.ab, %bb.k ], [ %.pre, %.thread.i ] ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 364    ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 4, !range !35, !noundef !36
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.r, label %propagate_weights.exit

bb.r:                                             ; preds = %__propagate_weights.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !37
  %i.cf = getelementptr i8, ptr %i.cb, i64 368    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cf, ptr elementtype(i32) %i.cf) #20, !srcloc !38
  store i8 0, ptr %i.cc, align 4
  br label %propagate_weights.exit

propagate_weights.exit:                           ; preds = %__propagate_weights.exit, %bb.r
  %i.cg = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  store ptr %i.ch, ptr %i.cj, align 8
  store volatile ptr %i.ci, ptr %i.ch, align 8
  store volatile ptr %i.e, ptr %i.e, align 8
  store volatile ptr %i.e, ptr %i.cg, align 8
  br label %bb.s

bb.s:                                             ; preds = %propagate_weights.exit, %bb.b
  %i.ck = getelementptr i8, ptr %0, i64 192       ; 2 uses
  %i.cl = load volatile ptr, ptr %i.ck, align 8
  %.not27 = icmp eq ptr %i.cl, %i.ck
  br i1 %.not27, label %bb.u, label %bb.t, !prof !20

bb.t:                                             ; preds = %bb.s
  tail call void asm sideeffect "895: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 895b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 895) #20, !srcloc !71
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.49, ptr nonnull @.str.56, i32 3080, i32 2307, i64 16) #20, !srcloc !72
  tail call void asm sideeffect "896: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 896b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 896) #20, !srcloc !73
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cm = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.cn = load volatile ptr, ptr %i.cm, align 8
  %.not28 = icmp eq ptr %i.cn, %i.cm
  br i1 %.not28, label %bb.w, label %bb.v, !prof !20

bb.v:                                             ; preds = %bb.u
  tail call void asm sideeffect "897: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 897b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 897) #20, !srcloc !74
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.49, ptr nonnull @.str.56, i32 3081, i32 2307, i64 16) #20, !srcloc !75
  tail call void asm sideeffect "898: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 898b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 898) #20, !srcloc !76
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.d) #19
  %i.co = getelementptr i8, ptr %0, i64 248
  %i.cp = tail call i32 @hrtimer_cancel(ptr noundef %i.co) #19 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.a
  %i.cq = getelementptr i8, ptr %0, i64 16
  tail call void @call_rcu(ptr noundef %i.cq, ptr noundef nonnull @iocg_release) #19
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ioc_pd_stat(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = load i8, ptr %i.c, align 8, !range !35, !noundef !36
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
  %i.s = load i8, ptr @blkcg_debug_stats, align 1, !range !35, !noundef !36
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !annotation !22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !annotation !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !annotation !22
  %i.i = tail call ptr @strchr(ptr noundef %1, i32 noundef 58) #19
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %blkcg_to_iocc.exit
  %i.j = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.a) #25
  %.not51 = icmp eq i32 %i.j, 0
  br i1 %.not51, label %bb.d, label %bb.e

end_hunk_0
begin_hunk_1_@ioc_cost_model_write:bb.a
  %i.bq = sext i32 %i.bm to i64
  %i.br = getelementptr [8 x i8], ptr %i.a, i64 %i.bq
  store i64 %i.bp, ptr %i.br, align 8
  br label %select.unfold

.thread:                                          ; preds = %bb.l, %bb.j, %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.r

select.unfold:                                    ; preds = %bb.k, %bb.j, %bb.i, %.lr.ph, %bb.n
  %.2 = phi i8 [ 0, %bb.i ], [ 1, %bb.j ], [ 1, %bb.n ], [ %.03178, %.lr.ph ], [ %.03178, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.bs = call ptr @strsep(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.54) #19 ; 2 uses
  %.not42 = icmp eq ptr %i.bs, null
  br i1 %.not42, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %select.unfold, %q_to_ioc.exit
  %.031.lcssa = phi i8 [ %i.ah, %q_to_ioc.exit ], [ %.2, %select.unfold ]
  %i.bt = trunc i8 %.031.lcssa to i1
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.bu = load i8, ptr %i.af, align 4
  %i.bv = or i8 %i.bu, 2
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.bw = load i8, ptr %i.af, align 4
  %i.bx = and i8 %i.bw, -3
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %storemerge = phi i8 [ %i.bx, %bb.p ], [ %i.bv, %bb.o ]
  store i8 %storemerge, ptr %i.af, align 4
  %i.by = getelementptr i8, ptr %.033, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 80
  %.val.i = load ptr, ptr %i.ca, align 8
  call fastcc void @ioc_refresh_params_disk(ptr noundef %.033, i1 noundef zeroext true, ptr %.val.i) #25
  br label %bb.r

.thread68:                                        ; preds = %.loopexit, %bb.c
  %.1.ph = phi i32 [ -95, %bb.c ], [ %i.t, %.loopexit ]
  call void @blkg_conf_close_bdev(ptr noundef nonnull %4) #19
  %i.cb = sext i32 %.1.ph to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %.thread
  %spec.select72 = phi i64 [ -22, %.thread ], [ %2, %bb.q ]
  call void @_raw_spin_unlock_irq(ptr noundef %i.ad) #19
  call void @blk_mq_unquiesce_queue(ptr noundef %.val53) #19
  call void @blk_mq_unfreeze_queue_nomemrestore(ptr noundef %.val53) #19
  %i.cc = or i32 %i.ab, -524289
  %i.cd = load i32, ptr %i.aa, align 4
  %i.ce = and i32 %i.cd, %i.cc
  store i32 %i.ce, ptr %i.aa, align 4
  call void @blkg_conf_close_bdev(ptr noundef nonnull %4) #19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread68, %bb.b
  %.034 = phi i64 [ %i.f, %bb.b ], [ %i.cb, %.thread68 ], [ %spec.select72, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i64 %.034
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blkcg_print_blkgs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i64 @ioc_weight_prfill(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call ptr @blkg_dev_name(ptr noundef %i.a) #19 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i32 %i.d, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull %i.b, i32 noundef %i.e) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i64 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @blkg_dev_name(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blkg_conf_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blkg_conf_open_bdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blkg_conf_prep(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blkg_conf_unprep(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blkg_conf_close_bdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define internal fastcc void @__propagate_weights(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #12 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.d = load volatile ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 144
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %.not67 = icmp eq i64 %i.f, 0
  br i1 %.not67, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr i8, ptr %0, i64 152
  %i.i = load i64, ptr %i.h, align 8
  %i.j = mul i64 %i.i, %i.g
  %i.k = add i64 %i.f, -1
  %i.l = add i64 %i.k, %i.j
  %i.m = udiv i64 %i.l, %i.f
  %i.n = trunc i64 %i.m to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = tail call i32 @llvm.umin.i32(i32 %2, i32 %1)
  %i.p = tail call i32 @llvm.umax.i32(i32 %i.o, i32 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.059 = phi i32 [ %i.n, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 52
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 56
  store i32 %i.r, ptr %i.s, align 8
  br i1 %3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %0, i64 80
  %i.w = load volatile i64, ptr %i.v, align 8
  %i.x = sub i64 %i.u, %i.w
  %i.y = getelementptr i8, ptr %0, i64 64
  store i64 %i.x, ptr %i.y, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = getelementptr i8, ptr %0, i64 48
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp eq i32 %1, %i.aa
  %i.ac = icmp eq i32 %.059, %i.r
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %0, i64 448
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %.06473 = add i32 %i.ae, -1                     ; 2 uses
  %i.af = icmp sgt i32 %.06473, -1
  br i1 %i.af, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.h
  %i.ag = getelementptr i8, ptr %0, i64 456       ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.backedge, %.lr.ph
  %.06477 = phi i32 [ %.06473, %.lr.ph ], [ %.06477.be, %.backedge ] ; 5 uses
  %.076 = phi i32 [ %1, %.lr.ph ], [ %.062, %.backedge ] ; 2 uses
  %.16075 = phi i32 [ %.059, %.lr.ph ], [ %.061, %.backedge ] ; 2 uses
  %.064.in74 = phi i32 [ %i.ae, %.lr.ph ], [ %.06477, %.backedge ]
  %i.ah = zext nneg i32 %.06477 to i64
  %i.ai = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8            ; 5 uses
  %i.ak = sext i32 %.064.in74 to i64
  %i.al = getelementptr [8 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 48     ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = sub i32 %.076, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr i8, ptr %i.aj, i64 144    ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = add i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ar, align 8
  %i.au = getelementptr i8, ptr %i.am, i64 52     ; 2 uses
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = sub i32 %.16075, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr i8, ptr %i.aj, i64 152    ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = add i64 %i.az, %i.ax
  store i64 %i.ba, ptr %i.ay, align 8
  store i32 %.076, ptr %i.an, align 8
  store i32 %.16075, ptr %i.au, align 4
  %i.bb = load i64, ptr %i.ar, align 8            ; 3 uses
  %.not69 = icmp eq i64 %i.bb, 0
  br i1 %.not69, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr i8, ptr %i.aj, i64 44
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = load i64, ptr %i.ay, align 8
  %i.bg = mul i64 %i.bf, %i.be
  %i.bh = add i64 %i.bb, -1
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = udiv i64 %i.bi, %i.bb
  %i.bk = trunc i64 %i.bj to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.062 = phi i32 [ %i.bd, %bb.j ], [ 0, %bb.i ]  ; 2 uses
  %.061 = phi i32 [ %i.bk, %bb.j ], [ 0, %bb.i ]  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.aj, i64 48
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = icmp eq i32 %.062, %i.bm
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr i8, ptr %i.aj, i64 52
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = icmp ne i32 %.061, %i.bp
  %i.br = icmp sgt i32 %.06477, 0
  %or.cond79 = and i1 %i.bq, %i.br
  br i1 %or.cond79, label %.backedge, label %.thread

bb.m:                                             ; preds = %bb.k
  %.old = icmp sgt i32 %.06477, 0
  br i1 %.old, label %.backedge, label %.thread

.backedge:                                        ; preds = %bb.m, %bb.l
  %.06477.be = add nsw i32 %.06477, -1
  br label %bb.i, !llvm.loop !4

.thread:                                          ; preds = %bb.m, %bb.l, %bb.h
  %i.bs = getelementptr i8, ptr %i.b, i64 364
  store i8 1, ptr %i.bs, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %.thread
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i64 @ioc_qos_prfill(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call ptr @blkg_dev_name(ptr noundef %i.a) #19 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 9 uses
  %i.e = getelementptr i8, ptr %i.d, i64 224      ; 2 uses
  tail call void @_raw_spin_lock_irq(ptr noundef %i.e) #19
  %i.f = getelementptr i8, ptr %i.d, i64 40
  %i.g = load i8, ptr %i.f, align 8, !range !35, !noundef !36
  %i.h = zext nneg i8 %i.g to i32
  %i.i = getelementptr i8, ptr %i.d, i64 420
  %i.j = load i8, ptr %i.i, align 4
  %i.k = trunc i8 %i.j to i1
  %i.l = select i1 %i.k, ptr @.str.52, ptr @.str.53
  %i.m = getelementptr i8, ptr %i.d, i64 48
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = udiv i32 %i.n, 10000
  %i.p = urem i32 %i.n, 10000
  %.lhs.trunc = trunc nuw nsw i32 %i.p to i16
  %i.q = udiv i16 %.lhs.trunc, 100
  %.zext = zext nneg i16 %i.q to i32
  %i.r = getelementptr i8, ptr %i.d, i64 52
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr i8, ptr %i.d, i64 56
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = udiv i32 %i.u, 10000
  %i.w = urem i32 %i.u, 10000
  %.lhs.trunc19 = trunc nuw nsw i32 %i.w to i16
  %i.x = udiv i16 %.lhs.trunc19, 100
  %.zext20 = zext nneg i16 %i.x to i32
  %i.y = getelementptr i8, ptr %i.d, i64 60
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr i8, ptr %i.d, i64 64
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ac = udiv i32 %i.ab, 10000
  %i.ad = urem i32 %i.ab, 10000
  %.lhs.trunc21 = trunc nuw nsw i32 %i.ad to i16
  %i.ae = udiv i16 %.lhs.trunc21, 100
  %.zext22 = zext nneg i16 %i.ae to i32
  %i.af = getelementptr i8, ptr %i.d, i64 68
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = udiv i32 %i.ag, 10000
  %i.ai = urem i32 %i.ag, 10000
  %.lhs.trunc23 = trunc nuw nsw i32 %i.ai to i16
  %i.aj = udiv i16 %.lhs.trunc23, 100
  %.zext24 = zext nneg i16 %i.aj to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef nonnull %i.b, i32 noundef %i.h, ptr noundef nonnull %i.l, i32 noundef %i.o, i32 noundef %.zext, i32 noundef %i.s, i32 noundef %i.v, i32 noundef %.zext20, i32 noundef %i.z, i32 noundef %i.ac, i32 noundef %.zext22, i32 noundef %i.ah, i32 noundef %.zext24) #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.e) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i64 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @blk_iocost_init(ptr noundef %0) unnamed_addr #1 align 16 prefalign(16) {
_kzalloc_noprof.exit:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 72), align 8
  %i.b = tail call noalias align 8 dereferenceable_or_null(424) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef range(i32 256, 0) 3520, i64 noundef range(i64 -17179869184, 17179869177) 424) #22 ; 18 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.a

bb.a:                                             ; preds = %_kzalloc_noprof.exit
  %i.c = tail call noalias dereferenceable_or_null(64) ptr @pcpu_alloc_noprof(i64 noundef 64, i64 noundef 8, i1 noundef zeroext false, i32 noundef 3264) #23 ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 288      ; 3 uses
  store ptr %i.c, ptr %i.d, align 8
  %.not61 = icmp eq ptr %i.c, null
  br i1 %.not61, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.x, %bb.b ], [ 0, %bb.a ]
  %i.f = load i64, ptr @__cpu_possible_mask, align 8
  %i.g = shl nsw i64 -1, %i.e
  %i.h = and i64 %i.f, %i.g                       ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %.preheader
  %i.i = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.h) #24, !srcloc !39 ; 3 uses
  %i.j = and i64 %i.i, 4294967232
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %find_next_bit.exit.thread

bb.b:                                             ; preds = %find_next_bit.exit
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.i, 63
  %i.o = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, %i.m
  %i.r = inttoptr i64 %i.q to ptr                 ; 5 uses
  store volatile i64 0, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 8
  store volatile i64 0, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %i.r, i64 24
  store volatile i64 0, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %i.r, i64 32
  store volatile i64 0, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.r, i64 48
  store volatile i64 0, ptr %i.v, align 8
  %i.w = add nuw nsw i64 %i.i, 1
  %i.x = and i64 %i.w, 127                        ; 2 uses
  %i.y = icmp samesign ugt i64 %i.x, 63
  br i1 %i.y, label %find_next_bit.exit.thread, label %.preheader, !prof !40, !llvm.loop !81

find_next_bit.exit.thread:                        ; preds = %.preheader, %bb.b, %find_next_bit.exit
  %i.z = getelementptr i8, ptr %i.b, i64 224      ; 3 uses
  store i32 0, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.b, i64 232
  tail call void @timer_init_key(ptr noundef %i.aa, ptr noundef nonnull @ioc_timer_fn, i32 noundef 0, ptr noundef null, ptr noundef null) #19
  %i.ab = getelementptr i8, ptr %i.b, i64 272     ; 3 uses
  store volatile ptr %i.ab, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %i.b, i64 280
end_hunk_1
begin_hunk_2_@ioc_timer_fn:bb.a
  %i.gf = getelementptr i8, ptr %.pn.in104.i, i64 -48 ; 2 uses
  %i.gg = load volatile i64, ptr %i.gf, align 8
  %.not.i82.i = icmp eq i64 %i.ge, %i.gg
  br i1 %.not.i82.i, label %bb.ad, label %iocg_is_idle.exit84.thread.i

bb.ad:                                            ; preds = %iocg_is_idle.exit84.i
  %i.gh = load volatile i64, ptr %i.gf, align 8   ; 2 uses
  %i.gi = load i64, ptr %i.dc, align 8
  %i.gj = load i64, ptr %i.dt, align 8
  %i.gk = add i64 %i.gh, %i.gj
  %i.gl = sub i64 %i.gi, %i.gk                    ; 2 uses
  %i.gm = icmp sgt i64 %i.gl, 0
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
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !41
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
  br i1 %.not.i85.i, label %._crit_edge.loopexit.i.i, label %bb.ag, !llvm.loop !5

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
          to label %trace_iocost_iocg_idle_enabled.exit.i [label %bb.ak], !srcloc !42

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
          to label %trace_iocost_iocg_idle.exit.i [label %arch_test_bit.exit.i.i.i], !srcloc !42

arch_test_bit.exit.i.i.i:                         ; preds = %iocg_to_blkg.exit.i
  %i.ir = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #20, !srcloc !107
  %i.is = zext i32 %i.ir to i64
  %i.it = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.is) #20, !srcloc !43 ; 2 uses
  %i.iu = icmp ult i8 %i.it, 2
  call void @llvm.assume(i1 %i.iu)
  %i.iv = trunc nuw i8 %i.it to i1
  br i1 %i.iv, label %bb.am, label %trace_iocost_iocg_idle.exit.i

bb.am:                                            ; preds = %arch_test_bit.exit.i.i.i
  %i.iw = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.iw, ptr elementtype(i64) %i.iw) #20, !srcloc !44
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !45
  %i.ix = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_iocost_iocg_idle, i64 56), align 8 ; 2 uses
  %.not.i.i86.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i86.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = call i32 @__SCT__tp_func_iocost_iocg_idle(ptr noundef %i.iz, ptr noundef %.064107.i, ptr noundef nonnull @trace_iocg_path, ptr noundef nonnull %4, i64 noundef %i.ip, i64 noundef %i.iq, i64 noundef %i.gh) #19 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !46
  %i.jb = getelementptr i8, ptr %i.iw, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.jb, ptr elementtype(i64) %i.jb) #20, !srcloc !47
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
  %6 = sext i32 %i.jr to i64
  br label %bb.at

bb.at:                                            ; preds = %.backedge.i.i, %.lr.ph.i89.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.backedge.i.i ], [ %i.ju, %.lr.ph.i89.i ] ; 5 uses
  %.076.i90.i = phi i32 [ %.062.i.i, %.backedge.i.i ], [ 0, %.lr.ph.i89.i ] ; 2 uses
  %.16075.i.i = phi i32 [ %.061.i.i, %.backedge.i.i ], [ %.059.i.i, %.lr.ph.i89.i ] ; 2 uses
  %.064.in74.i.i = phi i64 [ %indvars.iv.i, %.backedge.i.i ], [ %6, %.lr.ph.i89.i ]
  %7 = getelementptr [8 x i8], ptr %i.jt, i64 %indvars.iv.i
  %8 = load ptr, ptr %7, align 8                  ; 5 uses
  %9 = getelementptr [8 x i8], ptr %i.jt, i64 %.064.in74.i.i
  %i.jv = load ptr, ptr %9, align 8               ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 48     ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 8
  %i.jy = sub i32 %.076.i90.i, %i.jx
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr i8, ptr %8, i64 144       ; 3 uses
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = add i64 %i.kb, %i.jz
  store i64 %i.kc, ptr %i.ka, align 8
  %i.kd = getelementptr i8, ptr %i.jv, i64 52     ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4
  %i.kf = sub i32 %.16075.i.i, %i.ke
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr i8, ptr %8, i64 152       ; 3 uses
  %i.ki = load i64, ptr %i.kh, align 8
  %i.kj = add i64 %i.ki, %i.kg
  store i64 %i.kj, ptr %i.kh, align 8
  store i32 %.076.i90.i, ptr %i.jw, align 8
  store i32 %.16075.i.i, ptr %i.kd, align 4
  %i.kk = load i64, ptr %i.ka, align 8            ; 3 uses
  %.not69.i.i = icmp eq i64 %i.kk, 0
  br i1 %.not69.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kl = getelementptr i8, ptr %8, i64 44
  %i.km = load i32, ptr %i.kl, align 4            ; 2 uses
  %i.kn = zext i32 %i.km to i64
  %i.ko = load i64, ptr %i.kh, align 8
  %i.kp = mul i64 %i.ko, %i.kn
  %i.kq = add i64 %i.kk, -1
  %i.kr = add i64 %i.kq, %i.kp
  %i.ks = udiv i64 %i.kr, %i.kk
  %i.kt = trunc i64 %i.ks to i32
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.062.i.i = phi i32 [ %i.km, %bb.au ], [ 0, %bb.at ] ; 2 uses
  %.061.i.i = phi i32 [ %i.kt, %bb.au ], [ 0, %bb.at ] ; 2 uses
  %i.ku = getelementptr i8, ptr %8, i64 48
  %i.kv = load i32, ptr %i.ku, align 8
  %i.kw = icmp eq i32 %.062.i.i, %i.kv
  br i1 %i.kw, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.kx = getelementptr i8, ptr %8, i64 52
  %i.ky = load i32, ptr %i.kx, align 4
  %i.kz = icmp ne i32 %.061.i.i, %i.ky
  %i.la = icmp sgt i64 %indvars.iv.i, 0
  %or.cond79.i.i = and i1 %i.la, %i.kz
  br i1 %or.cond79.i.i, label %.backedge.i.i, label %.thread.i.i

bb.ax:                                            ; preds = %bb.av
  %.old.i.i = icmp sgt i64 %indvars.iv.i, 0
  br i1 %.old.i.i, label %.backedge.i.i, label %.thread.i.i

.backedge.i.i:                                    ; preds = %bb.ax, %bb.aw
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br label %bb.at, !llvm.loop !4

.thread.i.i:                                      ; preds = %bb.ax, %bb.aw, %bb.as
  %i.lb = getelementptr i8, ptr %i.jc, i64 364
  store i8 1, ptr %i.lb, align 4
  %.pre110.i = load ptr, ptr %.pn.in104.i, align 8
  br label %__propagate_weights.exit.i

__propagate_weights.exit.i:                       ; preds = %.thread.i.i, %bb.ar
  %i.lc = phi ptr [ %i.jd, %bb.ar ], [ %.pre110.i, %.thread.i.i ] ; 2 uses
  %i.ld = getelementptr i8, ptr %.pn.in104.i, i64 8 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8            ; 2 uses
  %i.lf = getelementptr i8, ptr %i.lc, i64 8
  store ptr %i.le, ptr %i.lf, align 8
  store volatile ptr %i.lc, ptr %i.le, align 8
  store volatile ptr %.pn.in104.i, ptr %.pn.in104.i, align 8
  store volatile ptr %.pn.in104.i, ptr %i.ld, align 8
  br label %iocg_is_idle.exit84.thread.i

iocg_is_idle.exit84.thread.i:                     ; preds = %__propagate_weights.exit.i, %iocg_is_idle.exit84.i, %bb.ac, %bb.ab, %bb.aa
  %.1.i = phi i32 [ %i.fv, %bb.ab ], [ %.0106.i, %bb.aa ], [ %.0106.i, %__propagate_weights.exit.i ], [ %.0106.i, %iocg_is_idle.exit84.i ], [ %.0106.i, %bb.ac ]
  call void @_raw_spin_unlock(ptr noundef %i.dw) #19
  br label %iocg_is_idle.exit.thread.i

iocg_is_idle.exit.thread.i:                       ; preds = %iocg_is_idle.exit84.thread.i, %iocg_is_idle.exit.i, %bb.p
  %.2.i = phi i32 [ %.1.i, %iocg_is_idle.exit84.thread.i ], [ %.0106.i, %iocg_is_idle.exit.i ], [ %.0106.i, %bb.p ] ; 2 uses
  %.not.i252 = icmp eq ptr %.pn108.i, %i.dr
  br i1 %.not.i252, label %._crit_edge.i253.loopexit, label %bb.m, !llvm.loop !83

._crit_edge.i253.loopexit:                        ; preds = %iocg_is_idle.exit.thread.i
  %i.lg = icmp eq i32 %.2.i, 0
  br label %._crit_edge.i253

._crit_edge.i253:                                 ; preds = %._crit_edge.i253.loopexit, %.critedge
  %.0.lcssa.i = phi i1 [ true, %.critedge ], [ %i.lg, %._crit_edge.i253.loopexit ]
  %i.lh = getelementptr i8, ptr %0, i64 132       ; 4 uses
  %i.li = load i8, ptr %i.lh, align 4, !range !35, !noundef !36
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %bb.ay, label %ioc_check_iocgs.exit

bb.ay:                                            ; preds = %._crit_edge.i253
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !37
  %i.lk = getelementptr i8, ptr %0, i64 136       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.lk, ptr elementtype(i32) %i.lk) #20, !srcloc !38
  store i8 0, ptr %i.lh, align 4
  br label %ioc_check_iocgs.exit

ioc_check_iocgs.exit:                             ; preds = %._crit_edge.i253, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %3, ptr %3, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %3, ptr %i.ll, align 8
  %.pn10.i = load ptr, ptr %i.dr, align 8         ; 2 uses
  %.not11.i = icmp eq ptr %.pn10.i, %i.dr
  br i1 %.not11.i, label %iocg_flush_stat.exit, label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %ioc_check_iocgs.exit, %iocg_build_inner_walk.exit.i
  %.pn12.i = phi ptr [ %.pn.i, %iocg_build_inner_walk.exit.i ], [ %.pn10.i, %ioc_check_iocgs.exit ] ; 18 uses
  %i.lm = getelementptr i8, ptr %.pn12.i, i64 -96
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = load i64, ptr @__cpu_possible_mask, align 8
  %i.lp = getelementptr i8, ptr %.pn12.i, i64 208
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %.lr.ph.i255
  %i.lq = phi i64 [ 0, %.lr.ph.i255 ], [ %i.mg, %bb.ba ]
  %.05.i.i = phi i64 [ 0, %.lr.ph.i255 ], [ %i.me, %bb.ba ] ; 3 uses
  %i.lr = shl nsw i64 -1, %i.lq
  %i.ls = and i64 %i.lr, %i.lo                    ; 2 uses
  %.not.i.i.i256 = icmp eq i64 %i.ls, 0
  br i1 %.not.i.i.i256, label %find_next_bit.exit.thread.i.i, label %find_next_bit.exit.i.i

find_next_bit.exit.i.i:                           ; preds = %bb.az
  %i.lt = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.ls) #24, !srcloc !39 ; 3 uses
  %i.lu = and i64 %i.lt, 4294967232
  %i.lv = icmp eq i64 %i.lu, 0
  br i1 %i.lv, label %bb.ba, label %find_next_bit.exit.thread.i.i

bb.ba:                                            ; preds = %find_next_bit.exit.i.i
  %i.lw = load ptr, ptr %i.lp, align 8
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = and i64 %i.lt, 63
  %i.lz = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.ly
  %i.ma = load i64, ptr %i.lz, align 8
  %i.mb = add i64 %i.ma, %i.lx
  %i.mc = inttoptr i64 %i.mb to ptr
  %i.md = load volatile i64, ptr %i.mc, align 8
  %i.me = add i64 %i.md, %.05.i.i                 ; 2 uses
  %i.mf = add nuw nsw i64 %i.lt, 1
  %i.mg = and i64 %i.mf, 127                      ; 2 uses
  %i.mh = icmp samesign ugt i64 %i.mg, 63
  br i1 %i.mh, label %find_next_bit.exit.thread.i.i, label %bb.az, !prof !40, !llvm.loop !84

find_next_bit.exit.thread.i.i:                    ; preds = %bb.ba, %find_next_bit.exit.i.i, %bb.az
  %.0.lcssa.i.i = phi i64 [ %.05.i.i, %bb.az ], [ %i.me, %bb.ba ], [ %.05.i.i, %find_next_bit.exit.i.i ] ; 2 uses
  %i.mi = getelementptr i8, ptr %.pn12.i, i64 280 ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8
  %i.mk = sub i64 %.0.lcssa.i.i, %i.mj
  store i64 %.0.lcssa.i.i, ptr %i.mi, align 8
  %i.ml = getelementptr i8, ptr %i.ln, i64 312
  %i.mm = load i64, ptr %i.ml, align 8
  %i.mn = udiv i64 %i.mk, %i.mm                   ; 2 uses
  %i.mo = getelementptr i8, ptr %.pn12.i, i64 288
  store i64 %i.mn, ptr %i.mo, align 8
  %i.mp = getelementptr i8, ptr %.pn12.i, i64 216 ; 3 uses
  %i.mq = load i64, ptr %i.mp, align 8
  %i.mr = add i64 %i.mq, %i.mn                    ; 2 uses
  store i64 %i.mr, ptr %i.mp, align 8
  %i.ms = getelementptr i8, ptr %.pn12.i, i64 320 ; 3 uses
  %i.mt = load i32, ptr %i.ms, align 8            ; 2 uses
  %i.mu = icmp sgt i32 %i.mt, 0
  br i1 %i.mu, label %bb.bb, label %iocg_flush_stat_leaf.exit.i

bb.bb:                                            ; preds = %find_next_bit.exit.thread.i.i
  %i.mv = zext nneg i32 %i.mt to i64
  %i.mw = getelementptr [8 x i8], ptr %.pn12.i, i64 %i.mv
  %i.mx = getelementptr i8, ptr %i.mw, i64 320
  %i.my = load ptr, ptr %i.mx, align 8            ; 4 uses
  %i.mz = getelementptr i8, ptr %i.my, i64 344    ; 2 uses
  %i.na = getelementptr i8, ptr %.pn12.i, i64 248
  %i.nb = load i64, ptr %i.na, align 8
  %i.nc = sub i64 %i.mr, %i.nb
  %i.nd = load i64, ptr %i.mz, align 8
  %i.ne = add i64 %i.nc, %i.nd
  store i64 %i.ne, ptr %i.mz, align 8
  %i.nf = getelementptr i8, ptr %.pn12.i, i64 224
  %i.ng = load i64, ptr %i.nf, align 8
  %i.nh = getelementptr i8, ptr %.pn12.i, i64 256
  %i.ni = load i64, ptr %i.nh, align 8
  %i.nj = sub i64 %i.ng, %i.ni
  %i.nk = getelementptr i8, ptr %i.my, i64 352    ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8
  %i.nm = add i64 %i.nj, %i.nl
  store i64 %i.nm, ptr %i.nk, align 8
  %i.nn = getelementptr i8, ptr %.pn12.i, i64 232
  %i.no = load i64, ptr %i.nn, align 8
  %i.np = getelementptr i8, ptr %.pn12.i, i64 264
  %i.nq = load i64, ptr %i.np, align 8
  %i.nr = sub i64 %i.no, %i.nq
  %i.ns = getelementptr i8, ptr %i.my, i64 360    ; 2 uses
  %i.nt = load i64, ptr %i.ns, align 8
  %i.nu = add i64 %i.nr, %i.nt
  store i64 %i.nu, ptr %i.ns, align 8
  %i.nv = getelementptr i8, ptr %.pn12.i, i64 240
  %i.nw = load i64, ptr %i.nv, align 8
  %i.nx = getelementptr i8, ptr %.pn12.i, i64 272
  %i.ny = load i64, ptr %i.nx, align 8
  %i.nz = sub i64 %i.nw, %i.ny
  %i.oa = getelementptr i8, ptr %i.my, i64 368    ; 2 uses
  %i.ob = load i64, ptr %i.oa, align 8
  %i.oc = add i64 %i.nz, %i.ob
  store i64 %i.oc, ptr %i.oa, align 8
  br label %iocg_flush_stat_leaf.exit.i

iocg_flush_stat_leaf.exit.i:                      ; preds = %bb.bb, %find_next_bit.exit.thread.i.i
  %i.od = getelementptr i8, ptr %.pn12.i, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) %i.od, ptr noundef align 8 dereferenceable(32) %i.mp, i64 32, i1 false)
  %i.oe = getelementptr i8, ptr %.pn12.i, i64 64  ; 2 uses
  %i.of = load volatile ptr, ptr %i.oe, align 8
  %.not.i.i257 = icmp eq ptr %i.of, %i.oe
  br i1 %.not.i.i257, label %bb.bd, label %bb.bc, !prof !20

bb.bc:                                            ; preds = %iocg_flush_stat_leaf.exit.i
  call void asm sideeffect "837: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 837b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 837) #20, !srcloc !108
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.49, ptr nonnull @.str.56, i32 1656, i32 2307, i64 16) #20, !srcloc !109
  call void asm sideeffect "838: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 838b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 838) #20, !srcloc !110
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %iocg_flush_stat_leaf.exit.i
  %i.og = load i32, ptr %i.ms, align 8            ; 2 uses
  %i.oh = getelementptr i8, ptr %.pn12.i, i64 328 ; 2 uses
  %i.oi = zext i32 %i.og to i64
  %i.oj = add i32 %i.og, -1                       ; 2 uses
  %smin.i.i = call i32 @llvm.smin.i32(i32 %i.oj, i32 -1)
  %i.ok = add nsw i32 %smin.i.i, 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bf, %bb.bd
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bf ], [ %i.oi, %bb.bd ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.ol = and i64 %indvars.iv.next.i.i, 2147483648
  %i.om = icmp eq i64 %i.ol, 0
  br i1 %i.om, label %bb.bf, label %.split.loop.exit20.i.i

bb.bf:                                            ; preds = %bb.be
  %i.on = and i64 %indvars.iv.next.i.i, 2147483647
  %i.oo = getelementptr [8 x i8], ptr %i.oh, i64 %i.on
  %i.op = load ptr, ptr %i.oo, align 8
end_hunk_2
