Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/denseranges?download=true
inline.NumInlined: 8
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@uprv_makeDenseRanges:bb.a
bb.c:                                             ; preds = %bb.b
  store i32 %i.b, ptr %3, align 4, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.f, ptr %i.n, align 4, !tbaa !8
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.o = icmp samesign ult i32 %1, 5
  br i1 %i.o, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.p = tail call i32 @llvm.smin.i32(i32 %4, i32 16)
  %i.q = add nsw i32 %i.p, -1
  store i32 %i.q, ptr %5, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  store i32 0, ptr %i.r, align 4, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 7 uses
  br label %bb.f

.preheader:                                       ; preds = %_ZN12_GLOBAL__N_111LargestGaps3addEil.exit
  %.val = load i32, ptr %i.r, align 4, !tbaa !11  ; 4 uses
  %.not7082 = icmp sgt i32 %.val, 0
  br i1 %.not7082, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count98 = zext nneg i32 %.val to i64
  br label %bb.m

bb.f:                                             ; preds = %bb.e, %_ZN12_GLOBAL__N_111LargestGaps3addEil.exit
  %indvars.iv = phi i64 [ 1, %bb.e ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_111LargestGaps3addEil.exit ] ; 2 uses
  %.05981 = phi i32 [ %i.b, %bb.e ], [ %.160, %_ZN12_GLOBAL__N_111LargestGaps3addEil.exit ]
  %i.u = add nsw i32 %.05981, 1                   ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8    ; 4 uses
  %.not73 = icmp eq i32 %i.u, %i.w
  br i1 %.not73, label %_ZN12_GLOBAL__N_111LargestGaps3addEil.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = sext i32 %i.w to i64
  %i.y = sext i32 %i.u to i64
  %i.z = sub nsw i64 %i.x, %i.y                   ; 2 uses
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !11  ; 6 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.01619.i = phi i32 [ %i.ah, %bb.h ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ac = zext nneg i32 %.01619.i to i64
  %i.ad = getelementptr [8 x i8], ptr %5, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !12
  %i.ag = icmp sgt i64 %i.z, %i.af
  br i1 %i.ag, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ah = add nsw i32 %.01619.i, -1
  %i.ai = icmp sgt i32 %.01619.i, 1
  br i1 %i.ai, label %.lr.ph.i, label %.critedge.i, !llvm.loop !14

.critedge.i:                                      ; preds = %bb.h, %.lr.ph.i, %bb.g
  %.016.lcssa.i = phi i32 [ %i.aa, %bb.g ], [ %.01619.i, %.lr.ph.i ], [ 0, %bb.h ] ; 4 uses
  %i.aj = load i32, ptr %5, align 8, !tbaa !9     ; 3 uses
  %i.ak = icmp slt i32 %.016.lcssa.i, %i.aj
  br i1 %i.ak, label %bb.i, label %_ZN12_GLOBAL__N_111LargestGaps3addEil.exit

bb.i:                                             ; preds = %.critedge.i
  %i.al = icmp slt i32 %i.aa, %i.aj
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = add nsw i32 %i.aa, 1
  store i32 %i.am, ptr %i.r, align 4, !tbaa !11
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
  %i.aq = sext i32 %i.ao to i64                   ; 4 uses
  %i.ar = sext i32 %.016.lcssa.i to i64           ; 4 uses
  %i.as = sub nsw i64 %i.aq, %i.ar                ; 3 uses
  %min.iters.check = icmp ult i64 %i.as, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph23.i
  %n.vec = and i64 %i.as, -4                      ; 3 uses
  %i.at = sub nsw i64 %i.aq, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = sub i64 %i.aq, %index                   ; 3 uses
  %i.av = add nsw i64 %i.au, -1                   ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -12
  %wide.load = load <2 x i32>, ptr %i.ax, align 4, !tbaa !8
  %wide.load133 = load <2 x i32>, ptr %i.ay, align 4, !tbaa !8
  %i.az = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.au ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -12
  store <2 x i32> %wide.load, ptr %i.ba, align 4, !tbaa !8
  store <2 x i32> %wide.load133, ptr %i.bb, align 4, !tbaa !8
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.av ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -24
  %wide.load134 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !12
  %wide.load135 = load <2 x i64>, ptr %i.be, align 8, !tbaa !12
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.au ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -24
  store <2 x i64> %wide.load134, ptr %i.bg, align 8, !tbaa !12
  store <2 x i64> %wide.load135, ptr %i.bh, align 8, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph23.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.aq, %.lr.ph23.i ], [ %i.at, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.next.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !8
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.i
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !8
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv.next.i
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !12
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv.i
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !12
  %i.bp = icmp sgt i64 %indvars.iv.next.i, %i.ar
  br i1 %i.bp, label %scalar.ph, label %._crit_edge.i, !llvm.loop !19

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.ar, %middle.block ], [ %i.ar, %scalar.ph ] ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.pre-phi.i
  store i32 %i.u, ptr %i.bq, align 4, !tbaa !8
  %i.br = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pre-phi.i
  store i64 %i.z, ptr %i.br, align 8, !tbaa !12
  br label %_ZN12_GLOBAL__N_111LargestGaps3addEil.exit

_ZN12_GLOBAL__N_111LargestGaps3addEil.exit:       ; preds = %._crit_edge.i, %.critedge.i, %bb.f
  %.160 = phi i32 [ %i.u, %bb.f ], [ %i.w, %.critedge.i ], [ %i.w, %._crit_edge.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %.preheader, label %bb.f, !llvm.loop !20

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv103 = phi i32 [ 1, %.lr.ph ], [ %indvars.iv.next104, %bb.o ] ; 4 uses
  %indvars.iv95 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next96, %bb.o ] ; 2 uses
  %.05885 = phi i32 [ 2, %.lr.ph ], [ %i.bz, %bb.o ] ; 6 uses
  %.06483 = phi i64 [ %i.j, %.lr.ph ], [ %i.bu, %bb.o ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv95
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !12
  %i.bu = sub nsw i64 %.06483, %i.bt              ; 2 uses
  %i.bv = shl nuw nsw i32 %.05885, 1
  %i.bw = icmp sgt i32 %1, %i.bv
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bx = mul nsw i64 %i.bu, %i.k
  %i.by = sdiv i64 %i.bx, 256
  %.not71 = icmp sgt i64 %i.by, %i.c
  br i1 %.not71, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.bz = add nuw nsw i32 %.05885, 1
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  %indvars.iv.next104 = add nuw nsw i32 %indvars.iv103, 1
  br i1 %exitcond99.not, label %.loopexit, label %bb.m, !llvm.loop !21

bb.p:                                             ; preds = %bb.n
  %i.ca = add nsw i32 %.05885, -1                 ; 3 uses
  %.not77 = icmp sgt i32 %.05885, %.val
  br i1 %.not77, label %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.ca, ptr %i.r, align 4, !tbaa !11
  br label %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit

_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit:   ; preds = %bb.p, %bb.q
  %i.cb = phi i32 [ %.val, %bb.p ], [ %i.ca, %bb.q ] ; 5 uses
  store i32 %i.b, ptr %3, align 4, !tbaa !8
  %.not7286 = icmp samesign ult i32 %.05885, 2
  br i1 %.not7286, label %._crit_edge, label %.lr.ph89

.lr.ph89:                                         ; preds = %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit
  %i.cc = icmp sgt i32 %i.cb, 0
  %wide.trip.count.i = zext i32 %i.cb to i64      ; 2 uses
  br i1 %i.cc, label %.lr.ph.i74.us.preheader, label %.lr.ph89.split

.lr.ph.i74.us.preheader:                          ; preds = %.lr.ph89
  %wide.trip.count113 = zext nneg i32 %indvars.iv103 to i64
  %xtraiter = and i64 %wide.trip.count.i, 1
  %6 = icmp eq i32 %i.cb, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod153 = trunc i32 %i.cb to i1
  br label %.lr.ph.i74.us

.lr.ph.i74.us:                                    ; preds = %.lr.ph.i74.us.preheader, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us
  %indvars.iv108 = phi i64 [ 0, %.lr.ph.i74.us.preheader ], [ %indvars.iv.next109, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us ] ; 2 uses
  %.05788.us = phi i32 [ %i.b, %.lr.ph.i74.us.preheader ], [ %i.de, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us ] ; 3 uses
  br i1 %6, label %.epil.preheader, label %.lr.ph.i74.us.new

.lr.ph.i74.us.new:                                ; preds = %.lr.ph.i74.us, %bb.u
  %indvars.iv.i75.us = phi i64 [ %indvars.iv.next.i76.us.1, %bb.u ], [ 0, %.lr.ph.i74.us ] ; 4 uses
  %.01118.i.us = phi i32 [ %.1.i.us.1, %bb.u ], [ -1, %.lr.ph.i74.us ] ; 3 uses
  %.01217.i.us = phi i32 [ %.113.i.us.1, %bb.u ], [ 0, %.lr.ph.i74.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.u ], [ 0, %.lr.ph.i74.us ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i75.us
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !8  ; 3 uses
  %i.cf = icmp slt i32 %.05788.us, %i.ce
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i74.us.new
  %i.cg = icmp slt i32 %.01118.i.us, 0
  %i.ch = icmp slt i32 %i.ce, %.01217.i.us
  %or.cond.i.us = select i1 %i.cg, i1 true, i1 %i.ch ; 2 uses
  %spec.select.i.us = select i1 %or.cond.i.us, i32 %i.ce, i32 %.01217.i.us
  %i.ci = trunc nuw nsw i64 %indvars.iv.i75.us to i32
  %spec.select16.i.us = select i1 %or.cond.i.us, i32 %i.ci, i32 %.01118.i.us
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i74.us.new
  %.113.i.us = phi i32 [ %.01217.i.us, %.lr.ph.i74.us.new ], [ %spec.select.i.us, %bb.r ] ; 3 uses
  %.1.i.us = phi i32 [ %.01118.i.us, %.lr.ph.i74.us.new ], [ %spec.select16.i.us, %bb.r ] ; 3 uses
  %indvars.iv.next.i76.us = or disjoint i64 %indvars.iv.i75.us, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.i76.us
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !8  ; 3 uses
  %i.cl = icmp slt i32 %.05788.us, %i.ck
  br i1 %i.cl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = icmp slt i32 %.1.i.us, 0
  %i.cn = icmp slt i32 %i.ck, %.113.i.us
  %or.cond.i.us.1 = select i1 %i.cm, i1 true, i1 %i.cn ; 2 uses
  %spec.select.i.us.1 = select i1 %or.cond.i.us.1, i32 %i.ck, i32 %.113.i.us
  %i.co = trunc nuw nsw i64 %indvars.iv.next.i76.us to i32
  %spec.select16.i.us.1 = select i1 %or.cond.i.us.1, i32 %i.co, i32 %.1.i.us
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.113.i.us.1 = phi i32 [ %.113.i.us, %bb.s ], [ %spec.select.i.us.1, %bb.t ] ; 2 uses
  %.1.i.us.1 = phi i32 [ %.1.i.us, %bb.s ], [ %spec.select16.i.us.1, %bb.t ] ; 3 uses
  %indvars.iv.next.i76.us.1 = add nuw nsw i64 %indvars.iv.i75.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa, label %.lr.ph.i74.us.new, !llvm.loop !22

_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa: ; preds = %bb.u
  br i1 %lcmp.mod.not, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa, %.lr.ph.i74.us
  %indvars.iv.i75.us.epil.init = phi i64 [ 0, %.lr.ph.i74.us ], [ %indvars.iv.next.i76.us.1, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa ] ; 2 uses
  %.01118.i.us.epil.init = phi i32 [ -1, %.lr.ph.i74.us ], [ %.1.i.us.1, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa ] ; 3 uses
  %.01217.i.us.epil.init = phi i32 [ 0, %.lr.ph.i74.us ], [ %.113.i.us.1, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod153)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i75.us.epil.init
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !8  ; 2 uses
  %i.cr = icmp slt i32 %.05788.us, %i.cq
  %i.cs = icmp slt i32 %.01118.i.us.epil.init, 0
  %i.ct = icmp slt i32 %i.cq, %.01217.i.us.epil.init
  %or.cond.i.us.epil = select i1 %i.cs, i1 true, i1 %i.ct
  %i.cu = trunc nuw nsw i64 %indvars.iv.i75.us.epil.init to i32
  %spec.select16.i.us.epil = select i1 %or.cond.i.us.epil, i32 %i.cu, i32 %.01118.i.us.epil.init
  %.1.i.us.epil = select i1 %i.cr, i32 %spec.select16.i.us.epil, i32 %.01118.i.us.epil.init
  br label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us

_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us: ; preds = %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa, %.epil.preheader
  %.1.i.us.lcssa = phi i32 [ %.1.i.us.1, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa ], [ %.1.i.us.epil, %.epil.preheader ]
  %i.cv = sext i32 %.1.i.us.lcssa to i64          ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !8  ; 2 uses
  %i.cy = add nsw i32 %i.cx, -1
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv108
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %i.cy, ptr %i.da, align 4, !tbaa !8
  %i.db = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cv
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !12
  %i.dd = trunc i64 %i.dc to i32
  %i.de = add i32 %i.cx, %i.dd                    ; 2 uses
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next109
  store i32 %i.de, ptr %i.df, align 4, !tbaa !8
  %exitcond114.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count113
  br i1 %exitcond114.not, label %._crit_edge, label %.lr.ph.i74.us, !llvm.loop !23

.lr.ph89.split:                                   ; preds = %.lr.ph89
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !12
  %i.di = trunc i64 %i.dh to i32
  %i.dj = insertelement <2 x i32> poison, i32 %i.cb, i64 0
  %i.dk = shufflevector <2 x i32> %i.dj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dl = insertelement <2 x i32> <i32 -1, i32 poison>, i32 %i.di, i64 1
  %i.dm = add <2 x i32> %i.dk, %i.dl              ; 2 uses
  %wide.trip.count106 = zext nneg i32 %indvars.iv103 to i64 ; 3 uses
  %min.iters.check137 = icmp samesign ult i32 %indvars.iv103, 4
  br i1 %min.iters.check137, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader, label %vector.ph138

vector.ph138:                                     ; preds = %.lr.ph89.split
  %n.vec139 = and i64 %wide.trip.count106, 2147483644 ; 3 uses
  %interleaved.vec = shufflevector <2 x i32> %i.dm, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph138
  %index143 = phi i64 [ 0, %vector.ph138 ], [ %index.next145, %vector.body142 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index143
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index143
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  store <4 x i32> %interleaved.vec, ptr %i.dp, align 4, !tbaa !8
  store <4 x i32> %interleaved.vec, ptr %i.dq, align 4, !tbaa !8
  %index.next145 = add nuw i64 %index143, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next145, %n.vec139
  br i1 %i.dr, label %middle.block146, label %vector.body142, !llvm.loop !24

middle.block146:                                  ; preds = %vector.body142
  %cmp.n147 = icmp eq i64 %n.vec139, %wide.trip.count106
  br i1 %cmp.n147, label %._crit_edge, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader

_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader: ; preds = %.lr.ph89.split, %middle.block146
  %indvars.iv100.ph = phi i64 [ 0, %.lr.ph89.split ], [ %n.vec139, %middle.block146 ]
  br label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit

_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit: ; preds = %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit ], [ %indvars.iv100.ph, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv100
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  store <2 x i32> %i.dm, ptr %i.dt, align 4, !tbaa !8
  %exitcond107.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit, !llvm.loop !25

._crit_edge:                                      ; preds = %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us, %middle.block146, %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit
  %i.du = sext i32 %i.ca to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %3, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i32 %i.f, ptr %i.dw, align 4, !tbaa !8
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !5, i64 0}
!10 = !{!"_ZTSN12_GLOBAL__N_111LargestGapsE", !5, i64 0, !5, i64 4, !6, i64 8, !6, i64 72}
!11 = !{!10, !5, i64 4}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !15, !18, !17}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15, !17, !18}
!25 = distinct !{!25, !15, !18, !17}
end_hunk_0
