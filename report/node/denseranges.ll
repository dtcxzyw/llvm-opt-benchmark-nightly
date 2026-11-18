Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/denseranges?download=true
inline.NumInlined: 8
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.(anonymous namespace)::LargestGaps" = type { i32, i32, [15 x i32], [15 x i64] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -2147483646, -2147483647) i32 @uprv_makeDenseRanges(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 !guid !19 {
bb.a:
  %5 = alloca %"class.(anonymous namespace)::LargestGaps", align 8 ; 11 uses
  %i.a = icmp slt i32 %1, 3
  br i1 %i.a, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4                ; 5 uses
  %i.c = zext nneg i32 %1 to i64                  ; 4 uses
  %i.d = getelementptr [4 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -4
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = sext i32 %i.f to i64
  %i.h = sext i32 %i.b to i64
  %i.i = sub nsw i64 %i.g, %i.h
  %i.j = add nsw i64 %i.i, 1                      ; 2 uses
  %i.k = sext i32 %2 to i64                       ; 2 uses
  %i.l = mul nsw i64 %i.j, %i.k
  %i.m = sdiv i64 %i.l, 256
  %.not = icmp sgt i64 %i.m, %i.c
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.b, ptr %3, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.f, ptr %i.n, align 4
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.o = icmp samesign ult i32 %1, 5
  br i1 %i.o, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.p = tail call i32 @llvm.smin.i32(i32 %4, i32 16)
  %i.q = add nsw i32 %i.p, -1
  store i32 %i.q, ptr %5, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 9 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %scevgep163 = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  br label %bb.f

.preheader:                                       ; preds = %_ZN12_GLOBAL__N_111LargestGaps3addEil.exit
  %.val = load i32, ptr %i.r, align 4             ; 4 uses
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
  %i.au = getelementptr i8, ptr %scevgep163, i64 %i.at ; 3 uses
  %i.av = shl nsw i64 %i.aq, 2                    ; 2 uses
  %i.aw = getelementptr i8, ptr %scevgep163, i64 %i.av ; 3 uses
  %i.ax = shl nsw i64 %i.ar, 3                    ; 2 uses
  %i.ay = getelementptr i8, ptr %scevgep, i64 %i.ax ; 3 uses
  %i.az = shl nsw i64 %i.aq, 3                    ; 2 uses
  %i.ba = getelementptr i8, ptr %scevgep, i64 %i.az ; 3 uses
  %6 = getelementptr i8, ptr %i.s, i64 %i.at      ; 2 uses
  %7 = getelementptr i8, ptr %i.s, i64 %i.av      ; 2 uses
  %i.bb = getelementptr i8, ptr %i.t, i64 %i.ax   ; 2 uses
  %i.bc = getelementptr i8, ptr %i.t, i64 %i.az   ; 2 uses
  %bound0.a = icmp ult ptr %i.au, %i.ba
  %bound1.a = icmp ult ptr %i.ay, %i.aw
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound0164 = icmp ult ptr %i.au, %7
  %bound1165 = icmp ult ptr %6, %i.aw
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict166
  %bound0167 = icmp ult ptr %i.au, %i.bc
  %bound1168 = icmp ult ptr %i.bb, %i.aw
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx170 = or i1 %conflict.rdx, %found.conflict169
  %bound0171 = icmp ult ptr %i.ay, %7
  %bound1172 = icmp ult ptr %6, %i.ba
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx174 = or i1 %conflict.rdx170, %found.conflict173
  %bound0175 = icmp ult ptr %i.ay, %i.bc
  %bound1176 = icmp ult ptr %i.bb, %i.ba
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %conflict.rdx174, %found.conflict177
  br i1 %conflict.rdx178, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, -4                      ; 3 uses
  %i.bd = sub nsw i64 %i.aq, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = sub i64 %i.aq, %index                   ; 3 uses
  %i.bf = add nsw i64 %i.be, -1                   ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -12
  %wide.load = load <2 x i32>, ptr %i.bh, align 4, !alias.scope !21
  %wide.load179 = load <2 x i32>, ptr %i.bi, align 4, !alias.scope !21
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.be ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -12
  store <2 x i32> %wide.load, ptr %i.bk, align 4, !alias.scope !22, !noalias !23
  store <2 x i32> %wide.load179, ptr %i.bl, align 4, !alias.scope !22, !noalias !23
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bf ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -24
  %wide.load180 = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !24
  %wide.load181 = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !24
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.be ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -8
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -24
  store <2 x i64> %wide.load180, ptr %i.bq, align 8, !alias.scope !25, !noalias !26
  store <2 x i64> %wide.load181, ptr %i.br, align 8, !alias.scope !25, !noalias !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph23.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph23.i ], [ %i.bd, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.next.i
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.i
  store i32 %i.bu, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv.next.i
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv.i
  store i64 %i.bx, ptr %i.by, align 8
  %i.bz = icmp sgt i64 %indvars.iv.next.i, %i.ar
  br i1 %i.bz, label %scalar.ph, label %._crit_edge.i, !llvm.loop !12

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.ar, %middle.block ], [ %i.ar, %scalar.ph ] ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.pre-phi.i
  store i32 %i.u, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pre-phi.i
  store i64 %i.z, ptr %i.cb, align 8
  br label %_ZN12_GLOBAL__N_111LargestGaps3addEil.exit

_ZN12_GLOBAL__N_111LargestGaps3addEil.exit:       ; preds = %._crit_edge.i, %.critedge.i, %bb.f
  %.160 = phi i32 [ %i.u, %bb.f ], [ %i.w, %.critedge.i ], [ %i.w, %._crit_edge.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %.preheader, label %bb.f, !llvm.loop !13

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv103 = phi i32 [ 1, %.lr.ph ], [ %indvars.iv.next104, %bb.o ] ; 4 uses
  %indvars.iv95 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next96, %bb.o ] ; 2 uses
  %.05885 = phi i32 [ 2, %.lr.ph ], [ %i.cj, %bb.o ] ; 6 uses
  %.06483 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %bb.o ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv95
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = sub nsw i64 %.06483, %i.cd              ; 2 uses
  %i.cf = shl nuw nsw i32 %.05885, 1
  %i.cg = icmp sgt i32 %1, %i.cf
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ch = mul nsw i64 %i.ce, %i.k
  %i.ci = sdiv i64 %i.ch, 256
  %.not71 = icmp sgt i64 %i.ci, %i.c
  br i1 %.not71, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.cj = add nuw nsw i32 %.05885, 1
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  %indvars.iv.next104 = add nuw nsw i32 %indvars.iv103, 1
  br i1 %exitcond99.not, label %.loopexit, label %bb.m, !llvm.loop !14

bb.p:                                             ; preds = %bb.n
  %i.ck = add nsw i32 %.05885, -1                 ; 3 uses
  %.not77 = icmp sgt i32 %.05885, %.val
  br i1 %.not77, label %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.ck, ptr %i.r, align 4
  br label %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit

_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit:   ; preds = %bb.p, %bb.q
  %i.cl = phi i32 [ %.val, %bb.p ], [ %i.ck, %bb.q ] ; 5 uses
  store i32 %i.b, ptr %3, align 4
  %.not7286 = icmp samesign ult i32 %.05885, 2
  br i1 %.not7286, label %._crit_edge, label %.lr.ph89

.lr.ph89:                                         ; preds = %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit
  %i.cm = icmp sgt i32 %i.cl, 0
  %wide.trip.count.i = zext i32 %i.cl to i64      ; 2 uses
  br i1 %i.cm, label %.lr.ph.i74.us.preheader, label %.lr.ph89.split

.lr.ph.i74.us.preheader:                          ; preds = %.lr.ph89
  %wide.trip.count113 = zext nneg i32 %indvars.iv103 to i64
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cn = icmp eq i32 %i.cl, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod199 = trunc i32 %i.cl to i1
  br label %.lr.ph.i74.us

.lr.ph.i74.us:                                    ; preds = %.lr.ph.i74.us.preheader, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us
  %indvars.iv108 = phi i64 [ 0, %.lr.ph.i74.us.preheader ], [ %indvars.iv.next109, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us ] ; 2 uses
  %.05788.us = phi i32 [ %i.b, %.lr.ph.i74.us.preheader ], [ %i.dp, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us ] ; 3 uses
  br i1 %i.cn, label %.epil.preheader, label %.lr.ph.i74.us.new

.lr.ph.i74.us.new:                                ; preds = %.lr.ph.i74.us, %bb.u
  %indvars.iv.i75.us = phi i64 [ %indvars.iv.next.i76.us.1, %bb.u ], [ 0, %.lr.ph.i74.us ] ; 4 uses
  %.01118.i.us = phi i32 [ %.1.i.us.1, %bb.u ], [ -1, %.lr.ph.i74.us ] ; 3 uses
  %.01217.i.us = phi i32 [ %.113.i.us.1, %bb.u ], [ 0, %.lr.ph.i74.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.u ], [ 0, %.lr.ph.i74.us ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i75.us
  %i.cp = load i32, ptr %i.co, align 8            ; 3 uses
  %i.cq = icmp slt i32 %.05788.us, %i.cp
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i74.us.new
  %i.cr = icmp slt i32 %.01118.i.us, 0
  %i.cs = icmp slt i32 %i.cp, %.01217.i.us
  %or.cond.i.us = select i1 %i.cr, i1 true, i1 %i.cs ; 2 uses
  %spec.select.i.us = select i1 %or.cond.i.us, i32 %i.cp, i32 %.01217.i.us
  %i.ct = trunc nuw nsw i64 %indvars.iv.i75.us to i32
  %spec.select16.i.us = select i1 %or.cond.i.us, i32 %i.ct, i32 %.01118.i.us
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i74.us.new
  %.113.i.us = phi i32 [ %.01217.i.us, %.lr.ph.i74.us.new ], [ %spec.select.i.us, %bb.r ] ; 3 uses
  %.1.i.us = phi i32 [ %.01118.i.us, %.lr.ph.i74.us.new ], [ %spec.select16.i.us, %bb.r ] ; 3 uses
  %indvars.iv.next.i76.us = or disjoint i64 %indvars.iv.i75.us, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.i76.us
  %i.cv = load i32, ptr %i.cu, align 4            ; 3 uses
  %i.cw = icmp slt i32 %.05788.us, %i.cv
  br i1 %i.cw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cx = icmp slt i32 %.1.i.us, 0
  %i.cy = icmp slt i32 %i.cv, %.113.i.us
  %or.cond.i.us.1 = select i1 %i.cx, i1 true, i1 %i.cy ; 2 uses
  %spec.select.i.us.1 = select i1 %or.cond.i.us.1, i32 %i.cv, i32 %.113.i.us
  %i.cz = trunc nuw nsw i64 %indvars.iv.next.i76.us to i32
  %spec.select16.i.us.1 = select i1 %or.cond.i.us.1, i32 %i.cz, i32 %.1.i.us
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.113.i.us.1 = phi i32 [ %.113.i.us, %bb.s ], [ %spec.select.i.us.1, %bb.t ] ; 2 uses
  %.1.i.us.1 = phi i32 [ %.1.i.us, %bb.s ], [ %spec.select16.i.us.1, %bb.t ] ; 3 uses
  %indvars.iv.next.i76.us.1 = add nuw nsw i64 %indvars.iv.i75.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa, label %.lr.ph.i74.us.new, !llvm.loop !15

_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa: ; preds = %bb.u
  br i1 %lcmp.mod.not, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa, %.lr.ph.i74.us
  %indvars.iv.i75.us.epil.init = phi i64 [ 0, %.lr.ph.i74.us ], [ %indvars.iv.next.i76.us.1, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa ] ; 2 uses
  %.01118.i.us.epil.init = phi i32 [ -1, %.lr.ph.i74.us ], [ %.1.i.us.1, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa ] ; 3 uses
  %.01217.i.us.epil.init = phi i32 [ 0, %.lr.ph.i74.us ], [ %.113.i.us.1, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod199)
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i75.us.epil.init
  %i.db = load i32, ptr %i.da, align 4            ; 2 uses
  %i.dc = icmp slt i32 %.05788.us, %i.db
  %i.dd = icmp slt i32 %.01118.i.us.epil.init, 0
  %i.de = icmp slt i32 %i.db, %.01217.i.us.epil.init
  %or.cond.i.us.epil = select i1 %i.dd, i1 true, i1 %i.de
  %i.df = trunc nuw nsw i64 %indvars.iv.i75.us.epil.init to i32
  %spec.select16.i.us.epil = select i1 %or.cond.i.us.epil, i32 %i.df, i32 %.01118.i.us.epil.init
  %.1.i.us.epil = select i1 %i.dc, i32 %spec.select16.i.us.epil, i32 %.01118.i.us.epil.init
  br label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us

_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us: ; preds = %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa, %.epil.preheader
  %.1.i.us.lcssa = phi i32 [ %.1.i.us.1, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa ], [ %.1.i.us.epil, %.epil.preheader ]
  %i.dg = sext i32 %.1.i.us.lcssa to i64          ; 2 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.dg
end_hunk_0
