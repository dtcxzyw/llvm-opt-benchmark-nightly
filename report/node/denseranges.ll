inline.NumInlined: 8
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@uprv_makeDenseRanges:bb.a
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4              ; 4 uses
  %.not73 = icmp eq i32 %i.u, %i.w
  br i1 %.not73, label %_ZN12_GLOBAL__N_111LargestGaps3addEil.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = sext i32 %i.w to i64
  %i.y = sext i32 %i.u to i64
  %i.z = sub nsw i64 %i.x, %i.y                   ; 2 uses
  %i.aa = load i32, ptr %i.r, align 4             ; 6 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.01619.i = phi i32 [ %i.ah, %bb.h ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ac = zext nneg i32 %.01619.i to i64
  %i.ad = getelementptr [8 x i8], ptr %5, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 64
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp sgt i64 %i.z, %i.af
  br i1 %i.ag, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ah = add nsw i32 %.01619.i, -1
  %i.ai = icmp sgt i32 %.01619.i, 1
  br i1 %i.ai, label %.lr.ph.i, label %.critedge.i, !llvm.loop !5

.critedge.i:                                      ; preds = %bb.h, %.lr.ph.i, %bb.g
  %.016.lcssa.i = phi i32 [ %i.aa, %bb.g ], [ %.01619.i, %.lr.ph.i ], [ 0, %bb.h ] ; 4 uses
  %i.aj = load i32, ptr %5, align 8               ; 3 uses
  %i.ak = icmp slt i32 %.016.lcssa.i, %i.aj
  br i1 %i.ak, label %bb.i, label %_ZN12_GLOBAL__N_111LargestGaps3addEil.exit

bb.i:                                             ; preds = %.critedge.i
  %i.al = icmp slt i32 %i.aa, %i.aj
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = add nsw i32 %i.aa, 1
  store i32 %i.am, ptr %i.r, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.an = add nsw i32 %i.aj, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = phi i32 [ %i.aa, %bb.j ], [ %i.an, %bb.k ] ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, %.016.lcssa.i
  br i1 %i.ap, label %.lr.ph23.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.l
  %.pre.i = sext i32 %.016.lcssa.i to i64
  br label %._crit_edge.i

.lr.ph23.i:                                       ; preds = %bb.l
  %i.aq = sext i32 %i.ao to i64                   ; 7 uses
  %i.ar = sext i32 %.016.lcssa.i to i64           ; 6 uses
  %i.as = sub nsw i64 %i.aq, %i.ar                ; 3 uses
  %min.iters.check = icmp ult i64 %i.as, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph23.i
  %i.at = shl nsw i64 %i.ar, 2                    ; 2 uses
  %scevgep133 = getelementptr i8, ptr %scevgep, i64 %i.at ; 3 uses
  %i.au = shl nsw i64 %i.aq, 2                    ; 2 uses
  %scevgep135 = getelementptr i8, ptr %scevgep134, i64 %i.au ; 3 uses
  %i.av = shl nsw i64 %i.ar, 3                    ; 2 uses
  %scevgep137 = getelementptr i8, ptr %scevgep136, i64 %i.av ; 3 uses
  %i.aw = shl nsw i64 %i.aq, 3                    ; 2 uses
  %scevgep139 = getelementptr i8, ptr %scevgep138, i64 %i.aw ; 3 uses
  %scevgep141 = getelementptr i8, ptr %scevgep140, i64 %i.at ; 2 uses
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.au ; 2 uses
  %scevgep145 = getelementptr i8, ptr %scevgep144, i64 %i.av ; 2 uses
  %scevgep147 = getelementptr i8, ptr %scevgep146, i64 %i.aw ; 2 uses
  %bound0 = icmp ult ptr %scevgep133, %scevgep139
  %bound1 = icmp ult ptr %scevgep137, %scevgep135
  %found.conflict = and i1 %bound0, %bound1
  %bound0148 = icmp ult ptr %scevgep133, %scevgep143
  %bound1149 = icmp ult ptr %scevgep141, %scevgep135
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx = or i1 %found.conflict, %found.conflict150
  %bound0151 = icmp ult ptr %scevgep133, %scevgep147
  %bound1152 = icmp ult ptr %scevgep145, %scevgep135
  %found.conflict153 = and i1 %bound0151, %bound1152
  %conflict.rdx154 = or i1 %conflict.rdx, %found.conflict153
  %bound0155 = icmp ult ptr %scevgep137, %scevgep143
  %bound1156 = icmp ult ptr %scevgep141, %scevgep139
  %found.conflict157 = and i1 %bound0155, %bound1156
  %conflict.rdx158 = or i1 %conflict.rdx154, %found.conflict157
  %bound0159 = icmp ult ptr %scevgep137, %scevgep147
  %bound1160 = icmp ult ptr %scevgep145, %scevgep139
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx162 = or i1 %conflict.rdx158, %found.conflict161
  br i1 %conflict.rdx162, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, -4                      ; 3 uses
  %i.ax = sub nsw i64 %i.aq, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = sub i64 %i.aq, %index                   ; 3 uses
  %i.az = add nsw i64 %i.ay, -1                   ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -12
  %wide.load = load <2 x i32>, ptr %i.bb, align 4, !alias.scope !7
  %wide.load163 = load <2 x i32>, ptr %i.bc, align 4, !alias.scope !7
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ay ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -12
  store <2 x i32> %wide.load, ptr %i.be, align 4, !alias.scope !10, !noalias !12
  store <2 x i32> %wide.load163, ptr %i.bf, align 4, !alias.scope !10, !noalias !12
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.az ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -24
  %wide.load164 = load <2 x i64>, ptr %i.bh, align 8, !alias.scope !15
  %wide.load165 = load <2 x i64>, ptr %i.bi, align 8, !alias.scope !15
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ay ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -24
  store <2 x i64> %wide.load164, ptr %i.bk, align 8, !alias.scope !16, !noalias !17
  store <2 x i64> %wide.load165, ptr %i.bl, align 8, !alias.scope !16, !noalias !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph23.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph23.i ], [ %i.ax, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.next.i
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.i
  store i32 %i.bo, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv.next.i
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv.i
  store i64 %i.br, ptr %i.bs, align 8
  %i.bt = icmp sgt i64 %indvars.iv.next.i, %i.ar
  br i1 %i.bt, label %scalar.ph, label %._crit_edge.i, !llvm.loop !21

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.ar, %middle.block ], [ %i.ar, %scalar.ph ] ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.pre-phi.i
  store i32 %i.u, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pre-phi.i
  store i64 %i.z, ptr %i.bv, align 8
  br label %_ZN12_GLOBAL__N_111LargestGaps3addEil.exit

_ZN12_GLOBAL__N_111LargestGaps3addEil.exit:       ; preds = %._crit_edge.i, %.critedge.i, %bb.f
  %.161 = phi i32 [ %i.u, %bb.f ], [ %i.w, %.critedge.i ], [ %i.w, %._crit_edge.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %.preheader, label %bb.f, !llvm.loop !22

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv103 = phi i32 [ 1, %.lr.ph ], [ %indvars.iv.next104, %bb.o ] ; 4 uses
  %indvars.iv95 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next96, %bb.o ] ; 2 uses
  %.05885 = phi i32 [ 2, %.lr.ph ], [ %i.cd, %bb.o ] ; 6 uses
  %.05984 = phi i64 [ %i.j, %.lr.ph ], [ %i.by, %bb.o ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv95
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = sub nsw i64 %.05984, %i.bx              ; 2 uses
  %i.bz = shl nuw nsw i32 %.05885, 1
  %i.ca = icmp sgt i32 %1, %i.bz
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cb = mul nsw i64 %i.by, %i.k
  %i.cc = sdiv i64 %i.cb, 256
  %.not71 = icmp sgt i64 %i.cc, %i.c
  br i1 %.not71, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.cd = add nuw nsw i32 %.05885, 1
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  %indvars.iv.next104 = add nuw nsw i32 %indvars.iv103, 1
  br i1 %exitcond99.not, label %.loopexit, label %bb.m, !llvm.loop !23

bb.p:                                             ; preds = %bb.n
  %i.ce = add nsw i32 %.05885, -1                 ; 3 uses
  %.not77 = icmp sgt i32 %.05885, %.val
  br i1 %.not77, label %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.ce, ptr %i.r, align 4
  br label %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit

_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit:   ; preds = %bb.p, %bb.q
  %i.cf = phi i32 [ %.val, %bb.p ], [ %i.ce, %bb.q ] ; 5 uses
  store i32 %i.b, ptr %3, align 4
  %.not7286 = icmp samesign ult i32 %.05885, 2
  br i1 %.not7286, label %._crit_edge, label %.lr.ph89

.lr.ph89:                                         ; preds = %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit
  %i.cg = icmp sgt i32 %i.cf, 0
  %wide.trip.count.i = zext i32 %i.cf to i64      ; 2 uses
  br i1 %i.cg, label %.lr.ph.i74.us.preheader, label %.lr.ph89.split

.lr.ph.i74.us.preheader:                          ; preds = %.lr.ph89
  %wide.trip.count113 = zext nneg i32 %indvars.iv103 to i64
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ch = icmp eq i32 %i.cf, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod184 = trunc i32 %i.cf to i1
  br label %.lr.ph.i74.us

.lr.ph.i74.us:                                    ; preds = %.lr.ph.i74.us.preheader, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us
  %indvars.iv108 = phi i64 [ 0, %.lr.ph.i74.us.preheader ], [ %indvars.iv.next109, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us ] ; 2 uses
  %.05788.us = phi i32 [ %i.b, %.lr.ph.i74.us.preheader ], [ %i.dj, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us ] ; 3 uses
  br i1 %i.ch, label %.epil.preheader, label %.lr.ph.i74.us.new

.lr.ph.i74.us.new:                                ; preds = %.lr.ph.i74.us, %bb.u
  %indvars.iv.i75.us = phi i64 [ %indvars.iv.next.i76.us.1, %bb.u ], [ 0, %.lr.ph.i74.us ] ; 4 uses
  %.01118.i.us = phi i32 [ %.1.i.us.1, %bb.u ], [ -1, %.lr.ph.i74.us ] ; 3 uses
  %.01217.i.us = phi i32 [ %.113.i.us.1, %bb.u ], [ 0, %.lr.ph.i74.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.u ], [ 0, %.lr.ph.i74.us ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i75.us
  %i.cj = load i32, ptr %i.ci, align 8            ; 3 uses
  %i.ck = icmp slt i32 %.05788.us, %i.cj
  br i1 %i.ck, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i74.us.new
  %i.cl = icmp slt i32 %.01118.i.us, 0
  %i.cm = icmp slt i32 %i.cj, %.01217.i.us
  %or.cond.i.us = select i1 %i.cl, i1 true, i1 %i.cm ; 2 uses
  %spec.select.i.us = select i1 %or.cond.i.us, i32 %i.cj, i32 %.01217.i.us
  %i.cn = trunc nuw nsw i64 %indvars.iv.i75.us to i32
  %spec.select16.i.us = select i1 %or.cond.i.us, i32 %i.cn, i32 %.01118.i.us
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i74.us.new
  %.113.i.us = phi i32 [ %.01217.i.us, %.lr.ph.i74.us.new ], [ %spec.select.i.us, %bb.r ] ; 3 uses
  %.1.i.us = phi i32 [ %.01118.i.us, %.lr.ph.i74.us.new ], [ %spec.select16.i.us, %bb.r ] ; 3 uses
  %indvars.iv.next.i76.us = or disjoint i64 %indvars.iv.i75.us, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.i76.us
  %i.cp = load i32, ptr %i.co, align 4            ; 3 uses
  %i.cq = icmp slt i32 %.05788.us, %i.cp
  br i1 %i.cq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cr = icmp slt i32 %.1.i.us, 0
  %i.cs = icmp slt i32 %i.cp, %.113.i.us
  %or.cond.i.us.1 = select i1 %i.cr, i1 true, i1 %i.cs ; 2 uses
  %spec.select.i.us.1 = select i1 %or.cond.i.us.1, i32 %i.cp, i32 %.113.i.us
  %i.ct = trunc nuw nsw i64 %indvars.iv.next.i76.us to i32
  %spec.select16.i.us.1 = select i1 %or.cond.i.us.1, i32 %i.ct, i32 %.1.i.us
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.113.i.us.1 = phi i32 [ %.113.i.us, %bb.s ], [ %spec.select.i.us.1, %bb.t ] ; 2 uses
  %.1.i.us.1 = phi i32 [ %.1.i.us, %bb.s ], [ %spec.select16.i.us.1, %bb.t ] ; 3 uses
  %indvars.iv.next.i76.us.1 = add nuw nsw i64 %indvars.iv.i75.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa, label %.lr.ph.i74.us.new, !llvm.loop !24

_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa: ; preds = %bb.u
  br i1 %lcmp.mod.not, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa, %.lr.ph.i74.us
  %indvars.iv.i75.us.epil.init = phi i64 [ 0, %.lr.ph.i74.us ], [ %indvars.iv.next.i76.us.1, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa ] ; 2 uses
  %.01118.i.us.epil.init = phi i32 [ -1, %.lr.ph.i74.us ], [ %.1.i.us.1, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa ] ; 3 uses
  %.01217.i.us.epil.init = phi i32 [ 0, %.lr.ph.i74.us ], [ %.113.i.us.1, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod184)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i75.us.epil.init
  %i.cv = load i32, ptr %i.cu, align 4            ; 2 uses
  %i.cw = icmp slt i32 %.05788.us, %i.cv
  %i.cx = icmp slt i32 %.01118.i.us.epil.init, 0
  %i.cy = icmp slt i32 %i.cv, %.01217.i.us.epil.init
  %or.cond.i.us.epil = select i1 %i.cx, i1 true, i1 %i.cy
  %i.cz = trunc nuw nsw i64 %indvars.iv.i75.us.epil.init to i32
  %spec.select16.i.us.epil = select i1 %or.cond.i.us.epil, i32 %i.cz, i32 %.01118.i.us.epil.init
  %.1.i.us.epil = select i1 %i.cw, i32 %spec.select16.i.us.epil, i32 %.01118.i.us.epil.init
  br label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us

_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us: ; preds = %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa, %.epil.preheader
  %.1.i.us.lcssa = phi i32 [ %.1.i.us.1, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa ], [ %.1.i.us.epil, %.epil.preheader ]
  %i.da = sext i32 %.1.i.us.lcssa to i64          ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4            ; 2 uses
  %i.dd = add nsw i32 %i.dc, -1
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv108
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dd, ptr %i.df, align 4
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.da
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = trunc i64 %i.dh to i32
  %i.dj = add i32 %i.dc, %i.di                    ; 2 uses
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next109
  store i32 %i.dj, ptr %i.dk, align 4
  %exitcond114.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count113
  br i1 %exitcond114.not, label %._crit_edge, label %.lr.ph.i74.us, !llvm.loop !25

.lr.ph89.split:                                   ; preds = %.lr.ph89
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = trunc i64 %i.dm to i32
  %6 = insertelement <2 x i32> poison, i32 %i.cf, i64 0
  %7 = shufflevector <2 x i32> %6, <2 x i32> poison, <2 x i32> zeroinitializer
  %8 = insertelement <2 x i32> <i32 -1, i32 poison>, i32 %i.dn, i64 1
  %9 = add <2 x i32> %7, %8                       ; 2 uses
  %wide.trip.count106 = zext nneg i32 %indvars.iv103 to i64 ; 3 uses
  %min.iters.check167 = icmp samesign ult i32 %indvars.iv103, 4
  br i1 %min.iters.check167, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader, label %vector.ph168

vector.ph168:                                     ; preds = %.lr.ph89.split
  %n.vec170 = and i64 %wide.trip.count106, 2147483644 ; 3 uses
  %interleaved.vec = shufflevector <2 x i32> %9, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph168
  %index174 = phi i64 [ 0, %vector.ph168 ], [ %index.next176, %vector.body173 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index174
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index174
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  store <4 x i32> %interleaved.vec, ptr %i.dq, align 4
  store <4 x i32> %interleaved.vec, ptr %i.dr, align 4
  %index.next176 = add nuw i64 %index174, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next176, %n.vec170
  br i1 %i.ds, label %middle.block177, label %vector.body173, !llvm.loop !26

middle.block177:                                  ; preds = %vector.body173
  %cmp.n178 = icmp eq i64 %n.vec170, %wide.trip.count106
  br i1 %cmp.n178, label %._crit_edge, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader

_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader: ; preds = %.lr.ph89.split, %middle.block177
  %indvars.iv100.ph = phi i64 [ 0, %.lr.ph89.split ], [ %n.vec170, %middle.block177 ]
  br label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit

_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit: ; preds = %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit ], [ %indvars.iv100.ph, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv100
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  store <2 x i32> %9, ptr %i.du, align 4
  %exitcond107.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit, !llvm.loop !27

._crit_edge:                                      ; preds = %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us, %middle.block177, %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit
  %i.dv = sext i32 %i.ce to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i32 %i.f, ptr %i.dx, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %.preheader, %._crit_edge
  %.0 = phi i32 [ %.05885, %._crit_edge ], [ 0, %.preheader ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  br label %bb.v

bb.v:                                             ; preds = %bb.c, %.loopexit, %bb.d, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ %.0, %.loopexit ], [ 0, %bb.d ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8}
!8 = distinct !{!8, !9}
!9 = distinct !{!9, !"LVerDomain"}
!10 = !{!11}
!11 = distinct !{!11, !9}
!12 = !{!13, !8, !14}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = !{!14}
!16 = !{!13}
!17 = !{!8, !14}
!18 = distinct !{!18, !6, !19, !20}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !6, !19}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6, !19, !20}
!27 = distinct !{!27, !6, !20, !19}
end_hunk_0
