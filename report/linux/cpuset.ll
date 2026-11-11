Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/cpuset?download=true
inline.NumInlined: 457
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@rebuild_sched_domains_locked:bb.a
bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr i8, ptr %.074109.i, i64 316
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.d, label %thread-pre-split.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %.074109.i, i64 272
  %i.p = load i64, ptr %i.o, align 8
  %.not.i85.i = icmp eq i64 %i.p, 0
  br i1 %.not.i85.i, label %thread-pre-split.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add i32 %.072111.i, 1
  %i.r = sext i32 %.072111.i to i64
  %i.s = getelementptr [8 x i8], ptr %i.g, i64 %i.r
  store ptr %.074109.i, ptr %i.s, align 8
  br label %thread-pre-split.thread.i

thread-pre-split.i:                               ; preds = %bb.c
  %i.t = icmp sgt i32 %i.m, 0
  br i1 %i.t, label %thread-pre-split.thread.i, label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i
  %i.u = getelementptr i8, ptr %.074109.i, i64 296
  %i.v = load i64, ptr %i.u, align 8
  %.not.i86.i = icmp eq i64 %i.v, 0
  br i1 %.not.i86.i, label %bb.g, label %thread-pre-split.thread.i

bb.g:                                             ; preds = %bb.f
  %i.w = tail call ptr @css_rightmost_descendant(ptr noundef nonnull %.074109.i) #21
  br label %thread-pre-split.thread.i

thread-pre-split.thread.i:                        ; preds = %bb.g, %bb.f, %thread-pre-split.i, %bb.e, %bb.d, %.lr.ph.i
  %.175.i = phi ptr [ %.074109.i, %thread-pre-split.i ], [ %i.w, %bb.g ], [ %.074109.i, %bb.f ], [ %.074109.i, %.lr.ph.i ], [ %.074109.i, %bb.e ], [ %.074109.i, %bb.d ]
  %.2.i = phi i32 [ %.072111.i, %thread-pre-split.i ], [ %.072111.i, %bb.g ], [ %.072111.i, %bb.f ], [ %.072111.i, %.lr.ph.i ], [ %i.q, %bb.e ], [ %.072111.i, %bb.d ] ; 5 uses
  %i.x = tail call ptr @css_next_descendant_pre(ptr noundef %.175.i, ptr noundef @top_cpuset) #21 ; 2 uses
  %.not80.i = icmp eq ptr %i.x, null
  br i1 %.not80.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !54

._crit_edge.i:                                    ; preds = %thread-pre-split.thread.i
  tail call void @__rcu_read_unlock() #21
  %i.y = icmp sgt i32 %.2.i, 0
  br i1 %i.y, label %.lr.ph117.preheader.i, label %.loopexit107.i

.lr.ph117.preheader.i:                            ; preds = %._crit_edge.i
  %i.z = zext nneg i32 %.2.i to i64               ; 3 uses
  br label %.lr.ph117.i

.loopexit106.i:                                   ; preds = %bb.j, %.lr.ph117.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond132.not.i = icmp eq i64 %indvars.iv.next129.i, %i.z
  br i1 %exitcond132.not.i, label %.loopexit107.i, label %.lr.ph117.i, !llvm.loop !55

.lr.ph117.i:                                      ; preds = %.loopexit106.i, %.lr.ph117.preheader.i
  %indvars.iv128.i = phi i64 [ 0, %.lr.ph117.preheader.i ], [ %indvars.iv.next129.i, %.loopexit106.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph117.preheader.i ], [ %indvars.iv.next.i, %.loopexit106.i ] ; 2 uses
  %indvars.iv.next129.i = add nuw nsw i64 %indvars.iv128.i, 1 ; 3 uses
  %i.aa = icmp samesign ult i64 %indvars.iv.next129.i, %i.z
  br i1 %i.aa, label %.lr.ph114.i, label %.loopexit106.i

.lr.ph114.i:                                      ; preds = %.lr.ph117.i
  %i.ab = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv128.i
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph114.i
  %indvars.iv125.i = phi i64 [ %indvars.iv.i, %.lr.ph114.i ], [ %indvars.iv.next126.i, %bb.j ] ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv125.i
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ac, i64 272
  %.val103.i = load i64, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %i.ae, i64 272
  %.val104.i = load i64, ptr %i.ag, align 8
  %i.ah = and i64 %.val104.i, %.val103.i
  %.not105.i = icmp eq i64 %i.ah, 0
  br i1 %.not105.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "661: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 661b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 661) #23, !srcloc !60
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 867, i32 2307, i64 16) #23, !srcloc !61
  tail call void asm sideeffect "662: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 662b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 662) #23, !srcloc !62
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next126.i, %i.z
  br i1 %exitcond.not.i, label %.loopexit106.i, label %bb.h, !llvm.loop !56

.loopexit107.i:                                   ; preds = %.loopexit106.i, %._crit_edge.i, %._crit_edge.thread.i, %bb.a
  %.3.i = phi i32 [ 1, %bb.a ], [ %.2.i, %._crit_edge.i ], [ 0, %._crit_edge.thread.i ], [ %.2.i, %.loopexit106.i ] ; 10 uses
  %.065.i = phi ptr [ null, %bb.a ], [ %i.g, %._crit_edge.i ], [ %i.g, %._crit_edge.thread.i ], [ %i.g, %.loopexit106.i ] ; 7 uses
  %i.ai = tail call ptr @alloc_sched_domains(i32 noundef %.3.i) #21 ; 10 uses
  %.not82.i = icmp eq ptr %i.ai, null
  br i1 %.not82.i, label %generate_sched_domains.exit, label %_kmalloc_noprof.exit.i

_kmalloc_noprof.exit.i:                           ; preds = %.loopexit107.i
  %i.aj = zext nneg i32 %.3.i to i64              ; 5 uses
  %i.ak = icmp slt i32 %.3.i, 0
  %i.al = shl nuw nsw i64 %i.aj, 2
  %.0.i.i = select i1 %i.ak, i64 -1, i64 %i.al
  %i.am = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -893353197568, 893353197153) %.0.i.i, i32 noundef 3264) #24
  %.1.i.fr.i = freeze ptr %i.am                   ; 6 uses
  %i.an = icmp sgt i32 %.3.i, 0
  br i1 %i.an, label %.lr.ph119.i, label %generate_sched_domains.exit

.lr.ph119.i:                                      ; preds = %_kmalloc_noprof.exit.i
  %.not83.i = icmp eq ptr %.065.i, null
  %.not84.i = icmp eq ptr %.1.i.fr.i, null        ; 2 uses
  br i1 %.not83.i, label %.lr.ph119.split.us.i, label %.lr.ph119.split.i

.lr.ph119.split.us.i:                             ; preds = %.lr.ph119.i
  br i1 %.not84.i, label %.lr.ph119.split.us.split.us.i, label %.lr.ph119.split.us.split.i

.lr.ph119.split.us.split.us.i:                    ; preds = %.lr.ph119.split.us.i, %.lr.ph119.split.us.split.us.i
  %indvars.iv148.i = phi i64 [ %indvars.iv.next149.i, %.lr.ph119.split.us.split.us.i ], [ 0, %.lr.ph119.split.us.i ] ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.ai, i64 %indvars.iv148.i
  %i.ap = tail call ptr @housekeeping_cpumask(i32 noundef 0) #21
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @top_cpuset, i64 272), align 8
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = and i64 %i.ar, %i.aq
  store i64 %i.as, ptr %i.ao, align 8
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next149.i, %i.aj
  br i1 %exitcond152.not.i, label %generate_sched_domains.exit, label %.lr.ph119.split.us.split.us.i, !llvm.loop !57

.lr.ph119.split.us.split.i:                       ; preds = %.lr.ph119.split.us.i, %.lr.ph119.split.us.split.i
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i, %.lr.ph119.split.us.split.i ], [ 0, %.lr.ph119.split.us.i ] ; 3 uses
  %i.at = getelementptr [8 x i8], ptr %i.ai, i64 %indvars.iv143.i
  %i.au = tail call ptr @housekeeping_cpumask(i32 noundef 0) #21
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @top_cpuset, i64 272), align 8
  %i.aw = load i64, ptr %i.au, align 8
  %i.ax = and i64 %i.aw, %i.av
  store i64 %i.ax, ptr %i.at, align 8
  %i.ay = getelementptr [4 x i8], ptr %.1.i.fr.i, i64 %indvars.iv143.i
  store i32 -1, ptr %i.ay, align 4
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 2 uses
  %exitcond147.not.i = icmp eq i64 %indvars.iv.next144.i, %i.aj
  br i1 %exitcond147.not.i, label %generate_sched_domains.exit, label %.lr.ph119.split.us.split.i, !llvm.loop !57

.lr.ph119.split.i:                                ; preds = %.lr.ph119.i
  br i1 %.not84.i, label %.lr.ph119.split.split.us.i, label %.lr.ph119.split.split.i

.lr.ph119.split.split.us.i:                       ; preds = %.lr.ph119.split.i, %bb.m
  %indvars.iv138.i = phi i64 [ %indvars.iv.next139.i, %bb.m ], [ 0, %.lr.ph119.split.i ] ; 3 uses
  %i.az = getelementptr [8 x i8], ptr %.065.i, i64 %indvars.iv138.i
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp eq ptr %i.ba, @top_cpuset
  br i1 %i.bb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph119.split.split.us.i
  %i.bc = getelementptr i8, ptr %i.ba, i64 272
  %i.bd = load i64, ptr %i.bc, align 8
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph119.split.split.us.i
  %i.be = tail call ptr @housekeeping_cpumask(i32 noundef 0) #21
  %i.bf = load i64, ptr getelementptr inbounds nuw (i8, ptr @top_cpuset, i64 272), align 8
  %i.bg = load i64, ptr %i.be, align 8
  %i.bh = and i64 %i.bg, %i.bf
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.i = phi i64 [ %i.bh, %bb.l ], [ %i.bd, %bb.k ]
  %i.bi = getelementptr [8 x i8], ptr %i.ai, i64 %indvars.iv138.i
  store i64 %.sink.i, ptr %i.bi, align 8
  %indvars.iv.next139.i = add nuw nsw i64 %indvars.iv138.i, 1 ; 2 uses
  %exitcond142.not.i = icmp eq i64 %indvars.iv.next139.i, %i.aj
  br i1 %exitcond142.not.i, label %generate_sched_domains.exit, label %.lr.ph119.split.split.us.i, !llvm.loop !57

.lr.ph119.split.split.i:                          ; preds = %.lr.ph119.split.i, %bb.p
  %indvars.iv133.i = phi i64 [ %indvars.iv.next134.i, %bb.p ], [ 0, %.lr.ph119.split.i ] ; 4 uses
  %i.bj = getelementptr [8 x i8], ptr %.065.i, i64 %indvars.iv133.i
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = icmp eq ptr %i.bk, @top_cpuset
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph119.split.split.i
  %i.bm = tail call ptr @housekeeping_cpumask(i32 noundef 0) #21
  %i.bn = load i64, ptr getelementptr inbounds nuw (i8, ptr @top_cpuset, i64 272), align 8
  %i.bo = load i64, ptr %i.bm, align 8
  %i.bp = and i64 %i.bo, %i.bn
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph119.split.split.i
  %i.bq = getelementptr i8, ptr %i.bk, i64 272
  %i.br = load i64, ptr %i.bq, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink153.i = phi i64 [ %i.bp, %bb.n ], [ %i.br, %bb.o ]
  %i.bs = getelementptr [8 x i8], ptr %i.ai, i64 %indvars.iv133.i
  store i64 %.sink153.i, ptr %i.bs, align 8
  %i.bt = getelementptr [4 x i8], ptr %.1.i.fr.i, i64 %indvars.iv133.i
  store i32 -1, ptr %i.bt, align 4
  %indvars.iv.next134.i = add nuw nsw i64 %indvars.iv133.i, 1 ; 2 uses
  %exitcond137.not.i = icmp eq i64 %indvars.iv.next134.i, %i.aj
  br i1 %exitcond137.not.i, label %generate_sched_domains.exit, label %.lr.ph119.split.split.i, !llvm.loop !57

generate_sched_domains.exit:                      ; preds = %bb.p, %bb.m, %.lr.ph119.split.us.split.i, %.lr.ph119.split.us.split.us.i, %_kmalloc_noprof.exit90.i, %.loopexit107.i, %_kmalloc_noprof.exit.i
  %.4.i = phi i32 [ 0, %_kmalloc_noprof.exit90.i ], [ %.3.i, %.loopexit107.i ], [ %.3.i, %bb.m ], [ %.3.i, %_kmalloc_noprof.exit.i ], [ %.3.i, %.lr.ph119.split.us.split.i ], [ %.3.i, %.lr.ph119.split.us.split.us.i ], [ %.3.i, %bb.p ] ; 5 uses
  %.071.i = phi ptr [ null, %_kmalloc_noprof.exit90.i ], [ null, %.loopexit107.i ], [ null, %bb.m ], [ %.1.i.fr.i, %_kmalloc_noprof.exit.i ], [ %.1.i.fr.i, %.lr.ph119.split.us.split.i ], [ null, %.lr.ph119.split.us.split.us.i ], [ %.1.i.fr.i, %bb.p ] ; 2 uses
  %.070.i = phi ptr [ null, %_kmalloc_noprof.exit90.i ], [ null, %.loopexit107.i ], [ %i.ai, %bb.m ], [ %i.ai, %_kmalloc_noprof.exit.i ], [ %i.ai, %.lr.ph119.split.us.split.i ], [ %i.ai, %.lr.ph119.split.us.split.us.i ], [ %i.ai, %bb.p ]
  %.1.i = phi ptr [ null, %_kmalloc_noprof.exit90.i ], [ %.065.i, %.loopexit107.i ], [ %.065.i, %bb.m ], [ %.065.i, %_kmalloc_noprof.exit.i ], [ null, %.lr.ph119.split.us.split.i ], [ null, %.lr.ph119.split.us.split.us.i ], [ %.065.i, %bb.p ]
  %.070.i.fr = freeze ptr %.070.i                 ; 8 uses
  tail call void @kfree(ptr noundef %.1.i) #21
  %i.bu = icmp ne ptr %.070.i.fr, null            ; 2 uses
  %spec.select.i = select i1 %i.bu, i32 %.4.i, i32 1
  %i.bv = icmp sgt i32 %.4.i, 0
  %i.bw = and i1 %i.bu, %i.bv
  br i1 %i.bw, label %.critedge.preheader, label %._crit_edge

.critedge.preheader:                              ; preds = %generate_sched_domains.exit
  %i.bx = load i64, ptr @__cpu_active_mask, align 8
  %i.by = xor i64 %i.bx, -1                       ; 5 uses
  %wide.trip.count = zext nneg i32 %.4.i to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bz = icmp ult i32 %.4.i, 4
  br i1 %i.bz, label %.critedge.epil.preheader, label %.critedge.preheader.new

.critedge.preheader.new:                          ; preds = %.critedge.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.critedge

.critedge.1:                                      ; preds = %.critedge
  %i.ca = getelementptr [8 x i8], ptr %.070.i.fr, i64 %indvars.iv
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = and i64 %i.cc, %i.by
  %.not.i.1 = icmp eq i64 %i.cd, 0
  br i1 %.not.i.1, label %.critedge.2, label %.split.us, !prof !19

.critedge.2:                                      ; preds = %.critedge.1
  %i.ce = getelementptr [8 x i8], ptr %.070.i.fr, i64 %indvars.iv
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = and i64 %i.cg, %i.by
  %.not.i.2 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.2, label %.critedge.3, label %.split.us, !prof !19

.critedge.3:                                      ; preds = %.critedge.2
  %i.ci = getelementptr [8 x i8], ptr %.070.i.fr, i64 %indvars.iv
  %i.cj = getelementptr i8, ptr %i.ci, i64 24
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = and i64 %i.ck, %i.by
  %.not.i.3 = icmp eq i64 %i.cl, 0
  br i1 %.not.i.3, label %bb.q, label %.split.us, !prof !19

bb.q:                                             ; preds = %.critedge.3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.critedge, !llvm.loop !58

.critedge:                                        ; preds = %bb.q, %.critedge.preheader.new
  %indvars.iv = phi i64 [ 0, %.critedge.preheader.new ], [ %indvars.iv.next.3, %bb.q ] ; 5 uses
  %niter = phi i64 [ 0, %.critedge.preheader.new ], [ %niter.next.3, %bb.q ]
  %i.cm = getelementptr [8 x i8], ptr %.070.i.fr, i64 %indvars.iv
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = and i64 %i.cn, %i.by
  %.not.i = icmp eq i64 %i.co, 0
  br i1 %.not.i, label %.critedge.1, label %.split.us, !prof !19

.split.us:                                        ; preds = %.critedge.epil, %.critedge, %.critedge.1, %.critedge.2, %.critedge.3
  tail call void asm sideeffect "663: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 663b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 663) #23, !srcloc !63
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 1007, i32 2307, i64 16) #23, !srcloc !64
  tail call void asm sideeffect "664: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 664b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 664) #23, !srcloc !65
  tail call void @free_sched_domains(ptr noundef nonnull %.070.i.fr, i32 noundef %.4.i) #21
  tail call void @kfree(ptr noundef %.071.i) #21
  br label %bb.s

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.critedge.epil.preheader

.critedge.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.critedge.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.critedge.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %.critedge.epil

.critedge.epil:                                   ; preds = %bb.r, %.critedge.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.critedge.epil.preheader ], [ %indvars.iv.next.epil, %bb.r ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.critedge.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.cp = getelementptr [8 x i8], ptr %.070.i.fr, i64 %indvars.iv.epil
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = and i64 %i.cq, %i.by
  %.not.i.epil = icmp eq i64 %i.cr, 0
  br i1 %.not.i.epil, label %bb.r, label %.split.us, !prof !19

bb.r:                                             ; preds = %.critedge.epil
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.critedge.epil, !llvm.loop !59

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.r, %generate_sched_domains.exit
  tail call void @partition_sched_domains(i32 noundef %spec.select.i, ptr noundef %.070.i.fr, ptr noundef %.071.i) #21
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %.split.us
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @free_sched_domains(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @partition_sched_domains(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @rebuild_sched_domains() local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  tail call void @cpus_read_lock() #21
  tail call void @mutex_lock(ptr noundef @cpuset_mutex) #21
  tail call void @rebuild_sched_domains_locked() #25
  tail call void @mutex_unlock(ptr noundef @cpuset_mutex) #21
  tail call void @cpus_read_unlock() #21
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @cpuset_reset_sched_domains() local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef @cpuset_mutex) #21
  tail call void @partition_sched_domains(i32 noundef 1, ptr noundef null, ptr noundef null) #21
  tail call void @mutex_unlock(ptr noundef @cpuset_mutex) #21
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @cpuset_update_tasks_cpumask(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.css_task_iter, align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 0, i64 104, i1 false), !annotation !20
  call void @css_task_iter_start(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #21
  %i.a = call ptr @css_task_iter_next(ptr noundef nonnull %2) #21 ; 3 uses
  %.not12 = icmp eq ptr %i.a, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp eq ptr %0, @top_cpuset
  %i.c = getelementptr i8, ptr %0, i64 272
  br i1 %i.b, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %i.d = phi ptr [ %i.m, %bb.c ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 44
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 69206016
  %.not11.us = icmp eq i32 %i.g, 0
  br i1 %.not11.us, label %bb.b, label %bb.c, !llvm.loop !1

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.h = load i64, ptr @__cpu_possible_mask, align 8
  %i.i = load i64, ptr @subpartitions_cpus, align 8
  %i.j = xor i64 %i.i, -1
  %i.k = and i64 %i.h, %i.j
  store i64 %i.k, ptr %1, align 8
  %i.l = call i32 @set_cpus_allowed_ptr(ptr noundef nonnull %i.d, ptr noundef %1) #21 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %i.m = call ptr @css_task_iter_next(ptr noundef nonnull %2) #21 ; 2 uses
  %.not.us = icmp eq ptr %i.m, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.n = phi ptr [ %i.s, %.lr.ph.split ], [ %i.a, %.lr.ph ]
  %i.o = load i64, ptr @__cpu_possible_mask, align 8
  %i.p = load i64, ptr %i.c, align 8
  %i.q = and i64 %i.p, %i.o
  store i64 %i.q, ptr %1, align 8
  %i.r = call i32 @set_cpus_allowed_ptr(ptr noundef nonnull %i.n, ptr noundef %1) #21 ; 0 uses
  %i.s = call ptr @css_task_iter_next(ptr noundef nonnull %2) #21 ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split, %bb.c, %bb.a
  call void @css_task_iter_end(ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @css_task_iter_start(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @css_task_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @css_task_iter_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @cpuset_update_tasks_nodemask(ptr noundef %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.css_task_iter, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 0, i64 104, i1 false), !annotation !20
  store ptr %0, ptr @cpuset_being_rebound, align 8
  %i.a = getelementptr i8, ptr %0, i64 280        ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8 ; 2 uses
  %i.d = and i64 %i.c, %i.b                       ; 2 uses
  store i64 %i.d, ptr @cpuset_update_tasks_nodemask.newmems, align 8
  %.not3.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i, label %.lr.ph.i, label %guarantee_online_mems.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.04.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %0, %bb.a ]
  %i.e = getelementptr i8, ptr %.04.i, i64 184
  %.0.val.i = load ptr, ptr %i.e, align 8         ; 2 uses
end_hunk_0
