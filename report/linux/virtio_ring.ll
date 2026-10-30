Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/virtio_ring?download=true
inline.NumInlined: 327
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@virtqueue_add_split:bb.a
.new:                                             ; preds = %bb.i
  %unroll_iter = and i64 %i.q, 4294967288
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.7, %bb.j ] ; 9 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.7, %bb.j ]
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = trunc i64 %indvars.iv.next.i to i16
  %i.y = getelementptr [16 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.z = getelementptr i8, ptr %i.y, i64 14
  store i16 %i.x, ptr %i.z, align 2
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.aa = trunc i64 %indvars.iv.next.i.1 to i16
  %i.ab = getelementptr [16 x i8], ptr %i.v, i64 %indvars.iv.next.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 14
  store i16 %i.aa, ptr %i.ac, align 2
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ad = trunc i64 %indvars.iv.next.i.2 to i16
  %i.ae = getelementptr [16 x i8], ptr %i.v, i64 %indvars.iv.next.i.1
  %i.af = getelementptr i8, ptr %i.ae, i64 14
  store i16 %i.ad, ptr %i.af, align 2
  %indvars.iv.next.i.3 = or disjoint i64 %indvars.iv.i, 4 ; 2 uses
  %i.ag = trunc i64 %indvars.iv.next.i.3 to i16
  %i.ah = getelementptr [16 x i8], ptr %i.v, i64 %indvars.iv.next.i.2
  %i.ai = getelementptr i8, ptr %i.ah, i64 14
  store i16 %i.ag, ptr %i.ai, align 2
  %indvars.iv.next.i.4 = or disjoint i64 %indvars.iv.i, 5 ; 2 uses
  %i.aj = trunc i64 %indvars.iv.next.i.4 to i16
  %i.ak = getelementptr [16 x i8], ptr %i.v, i64 %indvars.iv.next.i.3
  %i.al = getelementptr i8, ptr %i.ak, i64 14
  store i16 %i.aj, ptr %i.al, align 2
  %indvars.iv.next.i.5 = or disjoint i64 %indvars.iv.i, 6 ; 2 uses
  %i.am = trunc i64 %indvars.iv.next.i.5 to i16
  %i.an = getelementptr [16 x i8], ptr %i.v, i64 %indvars.iv.next.i.4
  %i.ao = getelementptr i8, ptr %i.an, i64 14
  store i16 %i.am, ptr %i.ao, align 2
  %indvars.iv.next.i.6 = or disjoint i64 %indvars.iv.i, 7 ; 2 uses
  %i.ap = trunc i64 %indvars.iv.next.i.6 to i16
  %i.aq = getelementptr [16 x i8], ptr %i.v, i64 %indvars.iv.next.i.5
  %i.ar = getelementptr i8, ptr %i.aq, i64 14
  store i16 %i.ap, ptr %i.ar, align 2
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.as = trunc i64 %indvars.iv.next.i.7 to i16
  %i.at = getelementptr [16 x i8], ptr %i.v, i64 %indvars.iv.next.i.6
  %i.au = getelementptr i8, ptr %i.at, i64 14
  store i16 %i.as, ptr %i.au, align 2
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.critedge181.loopexit.unr-lcssa, label %bb.j, !llvm.loop !141

virtqueue_use_indirect.exit.thread:               ; preds = %bb.h
  %i.av = getelementptr i8, ptr %0, i64 104
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = icmp ule i32 %2, %i.aw
  %or.cond264.not = or i1 %i.ax, %i.m
  br i1 %or.cond264.not, label %virtqueue_use_indirect.exit.thread.thread, label %bb.k, !prof !154

bb.k:                                             ; preds = %virtqueue_use_indirect.exit.thread
  tail call void asm sideeffect "517: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 517b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 517) #16, !srcloc !155
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 688, i32 2307, i64 16) #16, !srcloc !156
  tail call void asm sideeffect "518: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 518b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 518) #16, !srcloc !157
  br label %virtqueue_use_indirect.exit.thread.thread

virtqueue_use_indirect.exit.thread.thread:        ; preds = %virtqueue_use_indirect.exit, %virtqueue_use_indirect.exit.thread, %bb.k, %_kmalloc_noprof.exit.i
  %i.ay = getelementptr i8, ptr %0, i64 112
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %0, i64 152
  %i.bb = load ptr, ptr %i.ba, align 8
  br label %.critedge181

.critedge181.loopexit.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge181, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge181.loopexit.unr-lcssa, %bb.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i.7, %.critedge181.loopexit.unr-lcssa ]
  %lcmp.mod443 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod443)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1 ; 2 uses
  %i.bc = trunc i64 %indvars.iv.next.i.epil to i16
  %i.bd = getelementptr [16 x i8], ptr %i.v, i64 %indvars.iv.i.epil
  %i.be = getelementptr i8, ptr %i.bd, i64 14
  store i16 %i.bc, ptr %i.be, align 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge181, label %bb.l, !llvm.loop !142

.critedge181:                                     ; preds = %.critedge181.loopexit.unr-lcssa, %bb.l, %virtqueue_use_indirect.exit.thread.thread
  %.not170.not230 = phi i1 [ true, %virtqueue_use_indirect.exit.thread.thread ], [ false, %bb.l ], [ false, %.critedge181.loopexit.unr-lcssa ] ; 5 uses
  %.0162 = phi i32 [ %i.j, %virtqueue_use_indirect.exit.thread.thread ], [ 0, %bb.l ], [ 0, %.critedge181.loopexit.unr-lcssa ] ; 3 uses
  %.0158 = phi i32 [ %2, %virtqueue_use_indirect.exit.thread.thread ], [ 1, %bb.l ], [ 1, %.critedge181.loopexit.unr-lcssa ] ; 4 uses
  %.1148 = phi ptr [ %i.az, %virtqueue_use_indirect.exit.thread.thread ], [ %i.u, %bb.l ], [ %i.u, %.critedge181.loopexit.unr-lcssa ] ; 9 uses
  %.0145 = phi ptr [ %i.bb, %virtqueue_use_indirect.exit.thread.thread ], [ %i.v, %bb.l ], [ %i.v, %.critedge181.loopexit.unr-lcssa ] ; 5 uses
  %i.bf = getelementptr i8, ptr %0, i64 44        ; 5 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = icmp ult i32 %i.bg, %.0158
  %.not179 = icmp eq i32 %3, 0                    ; 2 uses
  br i1 %i.bh, label %bb.o, label %.preheader268, !prof !21

.preheader268:                                    ; preds = %.critedge181
  br i1 %.not179, label %.preheader, label %.lr.ph288

.lr.ph288:                                        ; preds = %.preheader268
  %i.bi = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.bj = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.bk = getelementptr i8, ptr %0, i64 216       ; 3 uses
  %wide.trip.count344 = zext i32 %3 to i64        ; 2 uses
  br i1 %7, label %.lr.ph288.split.us, label %.lr.ph288.split

.lr.ph288.split.us:                               ; preds = %.lr.ph288, %._crit_edge.split.us.us
  %indvars.iv341 = phi i64 [ %indvars.iv.next342, %._crit_edge.split.us.us ], [ 0, %.lr.ph288 ] ; 2 uses
  %.0155287.us = phi i32 [ %.1156.lcssa.us, %._crit_edge.split.us.us ], [ 0, %.lr.ph288 ] ; 2 uses
  %.1163285.us = phi i32 [ %.2164.lcssa.us, %._crit_edge.split.us.us ], [ %.0162, %.lr.ph288 ] ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %1, i64 %indvars.iv341
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not176279.us = icmp eq ptr %i.bm, null
  br i1 %.not176279.us, label %._crit_edge.split.us.us, label %vring_mapping_error.exit.thread.i.us.us

vring_mapping_error.exit.thread.i.us.us:          ; preds = %.lr.ph288.split.us, %sg_next.exit.us.us
  %.0146282.us.us = phi ptr [ %.06.i.us.us, %sg_next.exit.us.us ], [ %i.bm, %.lr.ph288.split.us ] ; 4 uses
  %.1156281.us.us = phi i32 [ %i.bn, %sg_next.exit.us.us ], [ %.0155287.us, %.lr.ph288.split.us ]
  %.2164280.us.us = phi i32 [ %i.cc, %sg_next.exit.us.us ], [ %.1163285.us, %.lr.ph288.split.us ]
  %i.bn = add i32 %.1156281.us.us, 1              ; 4 uses
  %.not177.us.us = icmp ne i32 %i.bn, %2
  %spec.select.us.us = zext i1 %.not177.us.us to i16 ; 2 uses
  %i.bo = getelementptr i8, ptr %.0146282.us.us, i64 16
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr i8, ptr %.0146282.us.us, i64 24
  %i.br = load i32, ptr %i.bq, align 8            ; 2 uses
  %i.bs = zext i32 %.2164280.us.us to i64         ; 2 uses
  %i.bt = getelementptr [16 x i8], ptr %.1148, i64 %i.bs ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 12
  store i16 %spec.select.us.us, ptr %i.bu, align 4
  store i64 %i.bp, ptr %i.bt, align 8
  %i.bv = getelementptr i8, ptr %i.bt, i64 8
  store i32 %i.br, ptr %i.bv, align 8
  %i.bw = getelementptr [16 x i8], ptr %.0145, i64 %i.bs ; 4 uses
  store i64 -1, ptr %i.bw, align 8
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  store i32 %i.br, ptr %i.bx, align 8
  %i.by = getelementptr i8, ptr %i.bw, i64 12
  store i16 %spec.select.us.us, ptr %i.by, align 4
  %i.bz = getelementptr i8, ptr %i.bw, i64 14
  %i.ca = load i16, ptr %i.bz, align 2            ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bt, i64 14
  store i16 %i.ca, ptr %i.cb, align 2
  %i.cc = zext i16 %i.ca to i32                   ; 3 uses
  %.val.i192.us.us = load i64, ptr %.0146282.us.us, align 8
  %i.cd = and i64 %.val.i192.us.us, 2
  %.not.i193.us.us = icmp eq i64 %i.cd, 0
  br i1 %.not.i193.us.us, label %bb.m, label %._crit_edge.split.us.us

bb.m:                                             ; preds = %vring_mapping_error.exit.thread.i.us.us
  %i.ce = getelementptr i8, ptr %.0146282.us.us, i64 32 ; 2 uses
  %.val7.i.us.us = load i64, ptr %i.ce, align 8   ; 2 uses
  %i.cf = trunc i64 %.val7.i.us.us to i1
  br i1 %i.cf, label %bb.n, label %sg_next.exit.us.us, !prof !21

bb.n:                                             ; preds = %bb.m
  %i.cg = and i64 %.val7.i.us.us, -4
  %i.ch = inttoptr i64 %i.cg to ptr
  br label %sg_next.exit.us.us

sg_next.exit.us.us:                               ; preds = %bb.n, %bb.m
  %.06.i.us.us = phi ptr [ %i.ce, %bb.m ], [ %i.ch, %bb.n ] ; 2 uses
  %.not176.us.us = icmp eq ptr %.06.i.us.us, null
  br i1 %.not176.us.us, label %._crit_edge.split.us.us, label %vring_mapping_error.exit.thread.i.us.us, !llvm.loop !143

._crit_edge.split.us.us:                          ; preds = %vring_mapping_error.exit.thread.i.us.us, %sg_next.exit.us.us, %.lr.ph288.split.us
  %.2164.lcssa.us = phi i32 [ %.1163285.us, %.lr.ph288.split.us ], [ %i.cc, %sg_next.exit.us.us ], [ %i.cc, %vring_mapping_error.exit.thread.i.us.us ] ; 2 uses
  %.1156.lcssa.us = phi i32 [ %.0155287.us, %.lr.ph288.split.us ], [ %i.bn, %sg_next.exit.us.us ], [ %i.bn, %vring_mapping_error.exit.thread.i.us.us ] ; 2 uses
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %exitcond345.not = icmp eq i64 %indvars.iv.next342, %wide.trip.count344
  br i1 %exitcond345.not, label %.preheader, label %.lr.ph288.split.us, !llvm.loop !144

bb.o:                                             ; preds = %.critedge181
  br i1 %.not179, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr i8, ptr %0, i64 200
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call zeroext i1 %i.cj(ptr noundef %0) #14 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not170.not230, label %virtqueue_kick.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @kfree(ptr noundef %.1148) #14
  br label %virtqueue_kick.exit

.preheader:                                       ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader268
  %.1163.lcssa = phi i32 [ %.0162, %.preheader268 ], [ %.2164.lcssa.us, %._crit_edge.split.us.us ], [ %.2164.lcssa, %._crit_edge.split ] ; 3 uses
  %.0155.lcssa = phi i32 [ 0, %.preheader268 ], [ %.1156.lcssa.us, %._crit_edge.split.us.us ], [ %.1156.lcssa, %._crit_edge.split ] ; 2 uses
  %i.cl = add i32 %4, %3                          ; 2 uses
  %i.cm = icmp ult i32 %3, %i.cl
  br i1 %i.cm, label %.lr.ph312, label %._crit_edge313

.lr.ph312:                                        ; preds = %.preheader
  %i.cn = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.co = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.cp = getelementptr i8, ptr %0, i64 216       ; 3 uses
  %i.cq = zext i32 %3 to i64                      ; 2 uses
  %wide.trip.count354 = zext i32 %i.cl to i64     ; 2 uses
  br i1 %7, label %.lr.ph312.split.us, label %.lr.ph312.split

.lr.ph312.split.us:                               ; preds = %.lr.ph312, %._crit_edge.split305.us.us
  %indvars.iv351 = phi i64 [ %indvars.iv.next352, %._crit_edge.split305.us.us ], [ %i.cq, %.lr.ph312 ] ; 2 uses
  %.0152311.us = phi i32 [ %.1153.lcssa.us, %._crit_edge.split305.us.us ], [ 0, %.lr.ph312 ] ; 2 uses
  %.2157310.us = phi i32 [ %.3.lcssa.us, %._crit_edge.split305.us.us ], [ %.0155.lcssa, %.lr.ph312 ] ; 2 uses
  %.4308.us = phi i32 [ %.5.lcssa.us, %._crit_edge.split305.us.us ], [ %.1163.lcssa, %.lr.ph312 ] ; 2 uses
  %i.cr = getelementptr [8 x i8], ptr %1, i64 %indvars.iv351
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.not173295.us = icmp eq ptr %i.cs, null
  br i1 %.not173295.us, label %._crit_edge.split305.us.us, label %vring_mapping_error.exit.thread.i200.us.us

vring_mapping_error.exit.thread.i200.us.us:       ; preds = %.lr.ph312.split.us, %sg_next.exit211.us.us
  %.1299.us.us = phi ptr [ %.06.i209.us.us, %sg_next.exit211.us.us ], [ %i.cs, %.lr.ph312.split.us ] ; 4 uses
  %.1153298.us.us = phi i32 [ %i.dj, %sg_next.exit211.us.us ], [ %.0152311.us, %.lr.ph312.split.us ]
  %.3297.us.us = phi i32 [ %i.ct, %sg_next.exit211.us.us ], [ %.2157310.us, %.lr.ph312.split.us ]
  %.5296.us.us = phi i32 [ %i.di, %sg_next.exit211.us.us ], [ %.4308.us, %.lr.ph312.split.us ]
  %i.ct = add i32 %.3297.us.us, 1                 ; 4 uses
  %.not174.us.us = icmp eq i32 %i.ct, %2
  %spec.select182.us.us = select i1 %.not174.us.us, i16 2, i16 3 ; 2 uses
  %i.cu = getelementptr i8, ptr %.1299.us.us, i64 16
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr i8, ptr %.1299.us.us, i64 24
  %i.cx = load i32, ptr %i.cw, align 8            ; 3 uses
  %i.cy = zext i32 %.5296.us.us to i64            ; 2 uses
  %i.cz = getelementptr [16 x i8], ptr %.1148, i64 %i.cy ; 4 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 12
  store i16 %spec.select182.us.us, ptr %i.da, align 4
  store i64 %i.cv, ptr %i.cz, align 8
  %i.db = getelementptr i8, ptr %i.cz, i64 8
  store i32 %i.cx, ptr %i.db, align 8
  %i.dc = getelementptr [16 x i8], ptr %.0145, i64 %i.cy ; 4 uses
  store i64 -1, ptr %i.dc, align 8
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  store i32 %i.cx, ptr %i.dd, align 8
  %i.de = getelementptr i8, ptr %i.dc, i64 12
  store i16 %spec.select182.us.us, ptr %i.de, align 4
  %i.df = getelementptr i8, ptr %i.dc, i64 14
  %i.dg = load i16, ptr %i.df, align 2            ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cz, i64 14
  store i16 %i.dg, ptr %i.dh, align 2
  %i.di = zext i16 %i.dg to i32                   ; 3 uses
  %i.dj = add i32 %i.cx, %.1153298.us.us          ; 3 uses
  %.val.i207.us.us = load i64, ptr %.1299.us.us, align 8
  %i.dk = and i64 %.val.i207.us.us, 2
  %.not.i208.us.us = icmp eq i64 %i.dk, 0
  br i1 %.not.i208.us.us, label %bb.s, label %._crit_edge.split305.us.us

bb.s:                                             ; preds = %vring_mapping_error.exit.thread.i200.us.us
  %i.dl = getelementptr i8, ptr %.1299.us.us, i64 32 ; 2 uses
  %.val7.i210.us.us = load i64, ptr %i.dl, align 8 ; 2 uses
  %i.dm = trunc i64 %.val7.i210.us.us to i1
  br i1 %i.dm, label %bb.t, label %sg_next.exit211.us.us, !prof !21

bb.t:                                             ; preds = %bb.s
  %i.dn = and i64 %.val7.i210.us.us, -4
  %i.do = inttoptr i64 %i.dn to ptr
  br label %sg_next.exit211.us.us

sg_next.exit211.us.us:                            ; preds = %bb.t, %bb.s
  %.06.i209.us.us = phi ptr [ %i.dl, %bb.s ], [ %i.do, %bb.t ] ; 2 uses
  %.not173.us.us = icmp eq ptr %.06.i209.us.us, null
  br i1 %.not173.us.us, label %._crit_edge.split305.us.us, label %vring_mapping_error.exit.thread.i200.us.us, !llvm.loop !145

._crit_edge.split305.us.us:                       ; preds = %vring_mapping_error.exit.thread.i200.us.us, %sg_next.exit211.us.us, %.lr.ph312.split.us
  %.5.lcssa.us = phi i32 [ %.4308.us, %.lr.ph312.split.us ], [ %i.di, %sg_next.exit211.us.us ], [ %i.di, %vring_mapping_error.exit.thread.i200.us.us ] ; 2 uses
  %.3.lcssa.us = phi i32 [ %.2157310.us, %.lr.ph312.split.us ], [ %i.ct, %sg_next.exit211.us.us ], [ %i.ct, %vring_mapping_error.exit.thread.i200.us.us ]
  %.1153.lcssa.us = phi i32 [ %.0152311.us, %.lr.ph312.split.us ], [ %i.dj, %sg_next.exit211.us.us ], [ %i.dj, %vring_mapping_error.exit.thread.i200.us.us ] ; 2 uses
  %indvars.iv.next352 = add nuw nsw i64 %indvars.iv351, 1 ; 2 uses
  %exitcond355.not = icmp eq i64 %indvars.iv.next352, %wide.trip.count354
  br i1 %exitcond355.not, label %._crit_edge313, label %.lr.ph312.split.us, !llvm.loop !146

.lr.ph288.split:                                  ; preds = %.lr.ph288, %._crit_edge.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split ], [ 0, %.lr.ph288 ] ; 2 uses
  %.0155287 = phi i32 [ %.1156.lcssa, %._crit_edge.split ], [ 0, %.lr.ph288 ] ; 2 uses
  %.1163285 = phi i32 [ %.2164.lcssa, %._crit_edge.split ], [ %.0162, %.lr.ph288 ] ; 2 uses
  %i.dp = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  %.not176279 = icmp eq ptr %i.dq, null
  br i1 %.not176279, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph288.split, %sg_next.exit
  %.0146282 = phi ptr [ %.06.i, %sg_next.exit ], [ %i.dq, %.lr.ph288.split ] ; 6 uses
  %.1156281 = phi i32 [ %i.dr, %sg_next.exit ], [ %.0155287, %.lr.ph288.split ]
  %.2164280 = phi i32 [ %i.fl, %sg_next.exit ], [ %.1163285, %.lr.ph288.split ] ; 3 uses
  %i.dr = add i32 %.1156281, 1                    ; 4 uses
  %.not177 = icmp ne i32 %i.dr, %2
  %spec.select = zext i1 %.not177 to i16          ; 2 uses
  %i.ds = getelementptr i8, ptr %.0146282, i64 12
  %i.dt = load i32, ptr %i.ds, align 4            ; 3 uses
  %i.du = load i8, ptr %i.bi, align 8, !range !23, !noundef !24
  %i.dv = trunc nuw i8 %i.du to i1
  %.val.i = load i64, ptr %.0146282, align 8      ; 2 uses
  br i1 %i.dv, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.dw = getelementptr i8, ptr %.0146282, i64 8
  %.val25.i = load i32, ptr %i.dw, align 8
  %i.dx = and i64 %.val.i, 288230376151711740
  %i.dy = load i64, ptr @vmemmap_base, align 8
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = shl i64 %i.dz, 6
  %i.eb = zext i32 %.val25.i to i64
  %i.ec = add i64 %i.ea, %i.eb
  br label %vring_mapping_error.exit.thread.i

bb.v:                                             ; preds = %.lr.ph
  %i.ed = and i64 %.val.i, -4
  %i.ee = inttoptr i64 %i.ed to ptr               ; 2 uses
  %i.ef = getelementptr i8, ptr %.0146282, i64 8
  %i.eg = load i32, ptr %i.ef, align 8
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %i.ei = zext i32 %i.dt to i64                   ; 2 uses
  %i.ej = load ptr, ptr %i.bj, align 8
  %i.ek = getelementptr i8, ptr %i.ej, i64 800
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = load ptr, ptr %i.bk, align 8
  %i.eo = tail call i64 %i.em(ptr %i.en, ptr noundef %i.ee, i64 noundef %i.eh, i64 noundef %i.ei, i32 noundef 1, i64 noundef %9) #14, !inline_history !7
  br label %virtqueue_map_page_attrs.exit.i

bb.x:                                             ; preds = %bb.v
  %.val.i.i = load ptr, ptr %i.bk, align 8
  %i.ep = tail call i64 @dma_map_page_attrs(ptr noundef %.val.i.i, ptr noundef %i.ee, i64 noundef %i.eh, i64 noundef %i.ei, i32 noundef 1, i64 noundef %9) #14
  br label %virtqueue_map_page_attrs.exit.i

virtqueue_map_page_attrs.exit.i:                  ; preds = %bb.x, %bb.w
  %.0.i.i190 = phi i64 [ %i.eo, %bb.w ], [ %i.ep, %bb.x ] ; 5 uses
  %i.eq = load i8, ptr %i.bi, align 8, !range !23, !noundef !24
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.y, label %vring_mapping_error.exit.thread.i

bb.y:                                             ; preds = %virtqueue_map_page_attrs.exit.i
  %i.es = load ptr, ptr %i.bj, align 8
  %i.et = getelementptr i8, ptr %i.es, i64 800
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %.not.i27.i = icmp eq ptr %i.eu, null
  br i1 %.not.i27.i, label %bb.z, label %vring_mapping_error.exit.i

bb.z:                                             ; preds = %bb.y
  %i.ev = icmp eq i64 %.0.i.i190, -1
  br i1 %i.ev, label %vring_map_one_sg.exit.thread239, label %vring_mapping_error.exit.thread.i, !prof !21

vring_mapping_error.exit.i:                       ; preds = %bb.y
  %i.ew = getelementptr i8, ptr %i.eu, i64 56
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = load ptr, ptr %i.bk, align 8
  %i.ez = tail call i32 %i.ex(ptr %i.ey, i64 noundef %.0.i.i190) #14, !inline_history !8
  %.fr.i = freeze i32 %i.ez
  %.not.i191 = icmp eq i32 %.fr.i, 0
  br i1 %.not.i191, label %vring_mapping_error.exit.thread.i, label %vring_map_one_sg.exit.thread239

vring_mapping_error.exit.thread.i:                ; preds = %virtqueue_map_page_attrs.exit.i, %bb.z, %vring_mapping_error.exit.i, %bb.u
  %i.fa = phi i64 [ %i.ec, %bb.u ], [ %.0.i.i190, %virtqueue_map_page_attrs.exit.i ], [ %.0.i.i190, %vring_mapping_error.exit.i ], [ %.0.i.i190, %bb.z ] ; 2 uses
  %i.fb = zext i32 %.2164280 to i64               ; 2 uses
  %i.fc = getelementptr [16 x i8], ptr %.1148, i64 %i.fb ; 4 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 12
  store i16 %spec.select, ptr %i.fd, align 4
  store i64 %i.fa, ptr %i.fc, align 8
  %i.fe = getelementptr i8, ptr %i.fc, i64 8
  store i32 %i.dt, ptr %i.fe, align 8
  %i.ff = getelementptr [16 x i8], ptr %.0145, i64 %i.fb ; 4 uses
  store i64 %i.fa, ptr %i.ff, align 8
  %i.fg = getelementptr i8, ptr %i.ff, i64 8
  store i32 %i.dt, ptr %i.fg, align 8
  %i.fh = getelementptr i8, ptr %i.ff, i64 12
  store i16 %spec.select, ptr %i.fh, align 4
  %i.fi = getelementptr i8, ptr %i.ff, i64 14
  %i.fj = load i16, ptr %i.fi, align 2            ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fc, i64 14
  store i16 %i.fj, ptr %i.fk, align 2
  %i.fl = zext i16 %i.fj to i32                   ; 3 uses
  %.val.i192 = load i64, ptr %.0146282, align 8
  %i.fm = and i64 %.val.i192, 2
  %.not.i193 = icmp eq i64 %i.fm, 0
  br i1 %.not.i193, label %bb.aa, label %._crit_edge.split

bb.aa:                                            ; preds = %vring_mapping_error.exit.thread.i
  %i.fn = getelementptr i8, ptr %.0146282, i64 32 ; 2 uses
  %.val7.i = load i64, ptr %i.fn, align 8         ; 2 uses
  %i.fo = trunc i64 %.val7.i to i1
  br i1 %i.fo, label %bb.ab, label %sg_next.exit, !prof !21

bb.ab:                                            ; preds = %bb.aa
  %i.fp = and i64 %.val7.i, -4
  %i.fq = inttoptr i64 %i.fp to ptr
  br label %sg_next.exit

sg_next.exit:                                     ; preds = %bb.aa, %bb.ab
  %.06.i = phi ptr [ %i.fn, %bb.aa ], [ %i.fq, %bb.ab ] ; 2 uses
  %.not176 = icmp eq ptr %.06.i, null
  br i1 %.not176, label %._crit_edge.split, label %.lr.ph, !llvm.loop !143

._crit_edge.split:                                ; preds = %vring_mapping_error.exit.thread.i, %sg_next.exit, %.lr.ph288.split
  %.2164.lcssa = phi i32 [ %.1163285, %.lr.ph288.split ], [ %i.fl, %sg_next.exit ], [ %i.fl, %vring_mapping_error.exit.thread.i ] ; 2 uses
  %.1156.lcssa = phi i32 [ %.0155287, %.lr.ph288.split ], [ %i.dr, %sg_next.exit ], [ %i.dr, %vring_mapping_error.exit.thread.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count344
  br i1 %exitcond.not, label %.preheader, label %.lr.ph288.split, !llvm.loop !144

.lr.ph312.split:                                  ; preds = %.lr.ph312, %._crit_edge.split305
  %indvars.iv346 = phi i64 [ %indvars.iv.next347, %._crit_edge.split305 ], [ %i.cq, %.lr.ph312 ] ; 2 uses
  %.0152311 = phi i32 [ %.1153.lcssa, %._crit_edge.split305 ], [ 0, %.lr.ph312 ] ; 2 uses
  %.2157310 = phi i32 [ %.3.lcssa, %._crit_edge.split305 ], [ %.0155.lcssa, %.lr.ph312 ] ; 2 uses
  %.4308 = phi i32 [ %.5.lcssa, %._crit_edge.split305 ], [ %.1163.lcssa, %.lr.ph312 ] ; 2 uses
  %i.fr = getelementptr [8 x i8], ptr %1, i64 %indvars.iv346
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  %.not173295 = icmp eq ptr %i.fs, null
  br i1 %.not173295, label %._crit_edge.split305, label %.lr.ph300

.lr.ph300:                                        ; preds = %.lr.ph312.split, %sg_next.exit211
  %.1299 = phi ptr [ %.06.i209, %sg_next.exit211 ], [ %i.fs, %.lr.ph312.split ] ; 6 uses
  %.1153298 = phi i32 [ %i.ho, %sg_next.exit211 ], [ %.0152311, %.lr.ph312.split ]
  %.3297 = phi i32 [ %i.ft, %sg_next.exit211 ], [ %.2157310, %.lr.ph312.split ]
  %.5296 = phi i32 [ %i.hn, %sg_next.exit211 ], [ %.4308, %.lr.ph312.split ] ; 3 uses
  %i.ft = add i32 %.3297, 1                       ; 4 uses
  %.not174 = icmp eq i32 %i.ft, %2
  %spec.select182 = select i1 %.not174, i16 2, i16 3 ; 2 uses
  %i.fu = getelementptr i8, ptr %.1299, i64 12
  %i.fv = load i32, ptr %i.fu, align 4            ; 4 uses
  %i.fw = load i8, ptr %i.cn, align 8, !range !23, !noundef !24
  %i.fx = trunc nuw i8 %i.fw to i1
  %.val.i194 = load i64, ptr %.1299, align 8      ; 2 uses
  br i1 %i.fx, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph300
  %i.fy = getelementptr i8, ptr %.1299, i64 8
  %.val25.i195 = load i32, ptr %i.fy, align 8
  %i.fz = and i64 %.val.i194, 288230376151711740
  %i.ga = load i64, ptr @vmemmap_base, align 8
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = shl i64 %i.gb, 6
  %i.gd = zext i32 %.val25.i195 to i64
  %i.ge = add i64 %i.gc, %i.gd
  br label %vring_mapping_error.exit.thread.i200

bb.ad:                                            ; preds = %.lr.ph300
  %i.gf = and i64 %.val.i194, -4
  %i.gg = inttoptr i64 %i.gf to ptr               ; 2 uses
  %i.gh = getelementptr i8, ptr %.1299, i64 8
  %i.gi = load i32, ptr %i.gh, align 8
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = zext i32 %i.fv to i64                   ; 2 uses
  %i.gl = load ptr, ptr %i.co, align 8
  %i.gm = getelementptr i8, ptr %i.gl, i64 800
  %i.gn = load ptr, ptr %i.gm, align 8            ; 2 uses
  %.not.i.i197 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i197, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = load ptr, ptr %i.cp, align 8
  %i.gq = tail call i64 %i.go(ptr %i.gp, ptr noundef %i.gg, i64 noundef %i.gj, i64 noundef %i.gk, i32 noundef 2, i64 noundef %9) #14, !inline_history !7
  br label %virtqueue_map_page_attrs.exit.i198

bb.af:                                            ; preds = %bb.ad
  %.val.i.i205 = load ptr, ptr %i.cp, align 8
  %i.gr = tail call i64 @dma_map_page_attrs(ptr noundef %.val.i.i205, ptr noundef %i.gg, i64 noundef %i.gj, i64 noundef %i.gk, i32 noundef 2, i64 noundef %9) #14
  br label %virtqueue_map_page_attrs.exit.i198

virtqueue_map_page_attrs.exit.i198:               ; preds = %bb.af, %bb.ae
  %.0.i.i199 = phi i64 [ %i.gq, %bb.ae ], [ %i.gr, %bb.af ] ; 5 uses
  %i.gs = load i8, ptr %i.cn, align 8, !range !23, !noundef !24
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.ag, label %vring_mapping_error.exit.thread.i200

bb.ag:                                            ; preds = %virtqueue_map_page_attrs.exit.i198
  %i.gu = load ptr, ptr %i.co, align 8
  %i.gv = getelementptr i8, ptr %i.gu, i64 800
  %i.gw = load ptr, ptr %i.gv, align 8            ; 2 uses
  %.not.i27.i201 = icmp eq ptr %i.gw, null
  br i1 %.not.i27.i201, label %bb.ah, label %vring_mapping_error.exit.i202

bb.ah:                                            ; preds = %bb.ag
  %i.gx = icmp eq i64 %.0.i.i199, -1
  br i1 %i.gx, label %vring_map_one_sg.exit.thread239, label %vring_mapping_error.exit.thread.i200, !prof !21

vring_mapping_error.exit.i202:                    ; preds = %bb.ag
  %i.gy = getelementptr i8, ptr %i.gw, i64 56
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = load ptr, ptr %i.cp, align 8
  %i.hb = tail call i32 %i.gz(ptr %i.ha, i64 noundef %.0.i.i199) #14, !inline_history !8
  %.fr.i203 = freeze i32 %i.hb
  %.not.i204 = icmp eq i32 %.fr.i203, 0
  br i1 %.not.i204, label %vring_mapping_error.exit.thread.i200, label %vring_map_one_sg.exit.thread239

vring_mapping_error.exit.thread.i200:             ; preds = %virtqueue_map_page_attrs.exit.i198, %bb.ah, %vring_mapping_error.exit.i202, %bb.ac
  %i.hc = phi i64 [ %i.ge, %bb.ac ], [ %.0.i.i199, %virtqueue_map_page_attrs.exit.i198 ], [ %.0.i.i199, %vring_mapping_error.exit.i202 ], [ %.0.i.i199, %bb.ah ] ; 2 uses
  %i.hd = zext i32 %.5296 to i64                  ; 2 uses
  %i.he = getelementptr [16 x i8], ptr %.1148, i64 %i.hd ; 4 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 12
  store i16 %spec.select182, ptr %i.hf, align 4
  store i64 %i.hc, ptr %i.he, align 8
  %i.hg = getelementptr i8, ptr %i.he, i64 8
  store i32 %i.fv, ptr %i.hg, align 8
  %i.hh = getelementptr [16 x i8], ptr %.0145, i64 %i.hd ; 4 uses
  store i64 %i.hc, ptr %i.hh, align 8
  %i.hi = getelementptr i8, ptr %i.hh, i64 8
  store i32 %i.fv, ptr %i.hi, align 8
  %i.hj = getelementptr i8, ptr %i.hh, i64 12
  store i16 %spec.select182, ptr %i.hj, align 4
  %i.hk = getelementptr i8, ptr %i.hh, i64 14
  %i.hl = load i16, ptr %i.hk, align 2            ; 2 uses
  %i.hm = getelementptr i8, ptr %i.he, i64 14
  store i16 %i.hl, ptr %i.hm, align 2
  %i.hn = zext i16 %i.hl to i32                   ; 3 uses
  %i.ho = add i32 %i.fv, %.1153298                ; 3 uses
  %.val.i207 = load i64, ptr %.1299, align 8
  %i.hp = and i64 %.val.i207, 2
  %.not.i208 = icmp eq i64 %i.hp, 0
  br i1 %.not.i208, label %bb.ai, label %._crit_edge.split305

bb.ai:                                            ; preds = %vring_mapping_error.exit.thread.i200
  %i.hq = getelementptr i8, ptr %.1299, i64 32    ; 2 uses
  %.val7.i210 = load i64, ptr %i.hq, align 8      ; 2 uses
  %i.hr = trunc i64 %.val7.i210 to i1
  br i1 %i.hr, label %bb.aj, label %sg_next.exit211, !prof !21

bb.aj:                                            ; preds = %bb.ai
  %i.hs = and i64 %.val7.i210, -4
  %i.ht = inttoptr i64 %i.hs to ptr
  br label %sg_next.exit211

sg_next.exit211:                                  ; preds = %bb.ai, %bb.aj
  %.06.i209 = phi ptr [ %i.hq, %bb.ai ], [ %i.ht, %bb.aj ] ; 2 uses
  %.not173 = icmp eq ptr %.06.i209, null
  br i1 %.not173, label %._crit_edge.split305, label %.lr.ph300, !llvm.loop !145

._crit_edge.split305:                             ; preds = %vring_mapping_error.exit.thread.i200, %sg_next.exit211, %.lr.ph312.split
  %.5.lcssa = phi i32 [ %.4308, %.lr.ph312.split ], [ %i.hn, %sg_next.exit211 ], [ %i.hn, %vring_mapping_error.exit.thread.i200 ] ; 2 uses
  %.3.lcssa = phi i32 [ %.2157310, %.lr.ph312.split ], [ %i.ft, %sg_next.exit211 ], [ %i.ft, %vring_mapping_error.exit.thread.i200 ]
  %.1153.lcssa = phi i32 [ %.0152311, %.lr.ph312.split ], [ %i.ho, %sg_next.exit211 ], [ %i.ho, %vring_mapping_error.exit.thread.i200 ] ; 2 uses
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %exitcond350.not = icmp eq i64 %indvars.iv.next347, %wide.trip.count354
  br i1 %exitcond350.not, label %._crit_edge313, label %.lr.ph312.split, !llvm.loop !146

._crit_edge313:                                   ; preds = %._crit_edge.split305, %._crit_edge.split305.us.us, %.preheader
  %.4.lcssa = phi i32 [ %.1163.lcssa, %.preheader ], [ %.5.lcssa.us, %._crit_edge.split305.us.us ], [ %.5.lcssa, %._crit_edge.split305 ] ; 3 uses
  %.0152.lcssa = phi i32 [ 0, %.preheader ], [ %.1153.lcssa.us, %._crit_edge.split305.us.us ], [ %.1153.lcssa, %._crit_edge.split305 ]
  br i1 %.not170.not230, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge313
  %i.hu = zext i32 %2 to i64
  %i.hv = shl nuw nsw i64 %i.hu, 4                ; 2 uses
  %i.hw = tail call fastcc i64 @vring_map_single(ptr noundef %0, ptr noundef %.1148, i64 noundef %i.hv) #15 ; 4 uses
  %i.hx = getelementptr i8, ptr %0, i64 64
  %i.hy = load i8, ptr %i.hx, align 8, !range !23, !noundef !24
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %bb.al, label %.thread259

bb.al:                                            ; preds = %bb.ak
  %i.ia = getelementptr i8, ptr %0, i64 32
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = getelementptr i8, ptr %i.ib, i64 800
  %i.id = load ptr, ptr %i.ic, align 8            ; 2 uses
  %.not.i213 = icmp eq ptr %i.id, null
  br i1 %.not.i213, label %bb.am, label %vring_mapping_error.exit

bb.am:                                            ; preds = %bb.al
  %i.ie = icmp eq i64 %i.hw, -1
  br i1 %i.ie, label %vring_map_one_sg.exit.thread239, label %.thread259, !prof !21

vring_mapping_error.exit:                         ; preds = %bb.al
  %i.if = getelementptr i8, ptr %i.id, i64 56
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = getelementptr i8, ptr %0, i64 216
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = tail call i32 %i.ig(ptr %i.ii, i64 noundef %i.hw) #14, !inline_history !6
  %.not171 = icmp eq i32 %i.ij, 0
  br i1 %.not171, label %.thread259, label %vring_map_one_sg.exit.thread239

bb.an:                                            ; preds = %._crit_edge313
  %i.ik = load i32, ptr %i.bf, align 4
  %i.il = sub i32 %i.ik, %.0158
  store i32 %i.il, ptr %i.bf, align 4
  %i.im = getelementptr i8, ptr %0, i64 72
  %.val189 = load i32, ptr %i.im, align 8
  %i.in = and i32 %.val189, -2
  %spec.select.i = icmp eq i32 %i.in, 2
  br i1 %spec.select.i, label %bb.ao, label %.thread

.thread259:                                       ; preds = %vring_mapping_error.exit, %bb.am, %bb.ak
  %i.io = getelementptr i8, ptr %0, i64 112
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = getelementptr i8, ptr %0, i64 152       ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = trunc i64 %i.hv to i32                  ; 2 uses
  %i.it = zext i32 %i.j to i64                    ; 2 uses
  %i.iu = getelementptr [16 x i8], ptr %i.ip, i64 %i.it ; 4 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 12
  store i16 4, ptr %i.iv, align 4
  store i64 %i.hw, ptr %i.iu, align 8
  %i.iw = getelementptr i8, ptr %i.iu, i64 8
  store i32 %i.is, ptr %i.iw, align 8
  %i.ix = getelementptr [16 x i8], ptr %i.ir, i64 %i.it ; 4 uses
  store i64 %i.hw, ptr %i.ix, align 8
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  store i32 %i.is, ptr %i.iy, align 8
  %i.iz = getelementptr i8, ptr %i.ix, i64 12
  store i16 4, ptr %i.iz, align 4
  %i.ja = getelementptr i8, ptr %i.ix, i64 14
  %i.jb = load i16, ptr %i.ja, align 2
  %i.jc = getelementptr i8, ptr %i.iu, i64 14
  store i16 %i.jb, ptr %i.jc, align 2
  %i.jd = load i32, ptr %i.bf, align 4
  %i.je = sub i32 %i.jd, %.0158
  store i32 %i.je, ptr %i.bf, align 4
  %i.jf = getelementptr i8, ptr %0, i64 72
  %.val189260 = load i32, ptr %i.jf, align 8
  %i.jg = and i32 %.val189260, -2
  %spec.select.i261 = icmp eq i32 %i.jg, 2
  br i1 %spec.select.i261, label %bb.ao, label %.thread263

bb.ao:                                            ; preds = %.thread259, %bb.an
  %i.jh = load i32, ptr %i.i, align 4
  %i.ji = add i32 %i.jh, %.0158                   ; 3 uses
  store i32 %i.ji, ptr %i.i, align 4
  %i.jj = getelementptr i8, ptr %0, i64 104
  %i.jk = load i32, ptr %i.jj, align 8            ; 2 uses
  %.not172 = icmp ult i32 %i.ji, %i.jk
  br i1 %.not172, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jl = sub nuw i32 %i.ji, %i.jk
  store i32 %i.jl, ptr %i.i, align 4
  br label %bb.aq

.thread263:                                       ; preds = %.thread259
  %i.jm = load ptr, ptr %i.iq, align 8
  %i.jn = sext i32 %i.j to i64                    ; 2 uses
  %i.jo = getelementptr [16 x i8], ptr %i.jm, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.jo, i64 14
  %i.jq = load i16, ptr %i.jp, align 2
  %i.jr = zext i16 %i.jq to i32
  store i32 %i.jr, ptr %i.i, align 4
  br label %.sink.split

.thread:                                          ; preds = %bb.an
  store i32 %.4.lcssa, ptr %i.i, align 4
  %.pre = sext i32 %i.j to i64
  br label %.sink.split

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.js = getelementptr i8, ptr %0, i64 144
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = sext i32 %i.j to i64                    ; 3 uses
  %i.jv = getelementptr [24 x i8], ptr %i.jt, i64 %i.ju
  %i.jw = getelementptr i8, ptr %i.jv, i64 16
  store i32 %.0152.lcssa, ptr %i.jw, align 8
  %i.jx = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = getelementptr [24 x i8], ptr %i.jy, i64 %i.ju
  store ptr %5, ptr %i.jz, align 8
  %spec.select407 = select i1 %.not170.not230, ptr %6, ptr %.1148
  br label %bb.ar

.sink.split:                                      ; preds = %.thread263, %.thread
  %.pre.sink = phi i64 [ %.pre, %.thread ], [ %i.jn, %.thread263 ] ; 2 uses
  %.sink.ph = phi ptr [ %6, %.thread ], [ %.1148, %.thread263 ]
  %i.ka = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = getelementptr [24 x i8], ptr %i.kb, i64 %.pre.sink
  store ptr %5, ptr %i.kc, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.sink.split
  %.sink406 = phi ptr [ %i.ka, %.sink.split ], [ %i.jx, %bb.aq ]
  %.pre-phi386.sink = phi i64 [ %.pre.sink, %.sink.split ], [ %i.ju, %bb.aq ]
  %.sink = phi ptr [ %.sink.ph, %.sink.split ], [ %spec.select407, %bb.aq ]
  %i.kd = getelementptr i8, ptr %0, i64 104
  %i.ke = load ptr, ptr %.sink406, align 8
  %i.kf = getelementptr [24 x i8], ptr %i.ke, i64 %.pre-phi386.sink
  %i.kg = getelementptr i8, ptr %i.kf, i64 8
  store ptr %.sink, ptr %i.kg, align 8
  %i.kh = getelementptr i8, ptr %0, i64 138       ; 3 uses
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = zext i16 %i.ki to i32
  %i.kk = load i32, ptr %i.kd, align 8
  %i.kl = add i32 %i.kk, 65535
  %i.km = and i32 %i.kl, %i.kj
  %i.kn = trunc i32 %i.j to i16
  %i.ko = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = getelementptr i8, ptr %i.kp, i64 4
  %i.kr = zext nneg i32 %i.km to i64
  %i.ks = getelementptr [2 x i8], ptr %i.kq, i64 %i.kr
  store i16 %i.kn, ptr %i.ks, align 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16
  %i.kt = load i16, ptr %i.kh, align 2
  %i.ku = add i16 %i.kt, 1                        ; 2 uses
  store i16 %i.ku, ptr %i.kh, align 2
  %i.kv = load ptr, ptr %i.ko, align 8
  %i.kw = getelementptr i8, ptr %i.kv, i64 2
  store i16 %i.ku, ptr %i.kw, align 2
  %i.kx = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 8
  %i.kz = add i32 %i.ky, 1                        ; 2 uses
  store i32 %i.kz, ptr %i.kx, align 8
  %i.la = icmp eq i32 %i.kz, 65535
  br i1 %i.la, label %bb.as, label %virtqueue_kick.exit, !prof !21

bb.as:                                            ; preds = %bb.ar
  %i.lb = tail call zeroext i1 @virtqueue_kick_prepare(ptr noundef %0) #15
  br i1 %i.lb, label %bb.at, label %virtqueue_kick.exit

bb.at:                                            ; preds = %bb.as
  %i.lc = load i8, ptr %i.e, align 2, !range !23, !noundef !24
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %virtqueue_kick.exit, label %bb.au, !prof !21

bb.au:                                            ; preds = %bb.at
  %i.le = getelementptr i8, ptr %0, i64 200
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = tail call zeroext i1 %i.lf(ptr noundef %0) #14, !inline_history !158
  br i1 %i.lg, label %virtqueue_kick.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i8 1, ptr %i.e, align 2
  br label %virtqueue_kick.exit

vring_map_one_sg.exit.thread239:                  ; preds = %vring_mapping_error.exit.i, %bb.z, %vring_mapping_error.exit.i202, %bb.ah, %bb.am, %vring_mapping_error.exit
  %.7 = phi i32 [ %.4.lcssa, %vring_mapping_error.exit ], [ %.4.lcssa, %bb.am ], [ %.5296, %vring_mapping_error.exit.i202 ], [ %.5296, %bb.ah ], [ %.2164280, %bb.z ], [ %.2164280, %vring_mapping_error.exit.i ] ; 2 uses
  %. = select i1 %.not170.not230, i32 %i.j, i32 0 ; 2 uses
  %i.lh = icmp eq i32 %., %.7
  br i1 %i.lh, label %._crit_edge, label %.lr.ph320

.lr.ph320:                                        ; preds = %vring_map_one_sg.exit.thread239
  %i.li = getelementptr i8, ptr %0, i64 64
  %i.lj = getelementptr i8, ptr %0, i64 32
  %i.lk = getelementptr i8, ptr %0, i64 216       ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph320, %vring_unmap_one_split.exit
  %.2161319 = phi i32 [ 0, %.lr.ph320 ], [ %i.mi, %vring_unmap_one_split.exit ]
end_hunk_0
