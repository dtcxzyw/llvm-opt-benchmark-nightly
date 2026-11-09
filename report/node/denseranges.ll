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
  %5 = alloca %"class.(anonymous namespace)::LargestGaps", align 8 ; 17 uses
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
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 7 uses
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
  %i.au = getelementptr i8, ptr %5, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 12     ; 3 uses
  %i.aw = shl nsw i64 %i.aq, 2                    ; 2 uses
  %i.ax = getelementptr i8, ptr %5, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 12     ; 3 uses
  %i.az = shl nsw i64 %i.ar, 3                    ; 2 uses
  %i.ba = getelementptr i8, ptr %5, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 80     ; 3 uses
  %i.bc = shl nsw i64 %i.aq, 3                    ; 2 uses
  %6 = getelementptr i8, ptr %5, i64 %i.bc
  %7 = getelementptr i8, ptr %6, i64 80           ; 3 uses
  %8 = getelementptr i8, ptr %5, i64 %i.at
  %9 = getelementptr i8, ptr %8, i64 8            ; 2 uses
  %10 = getelementptr i8, ptr %5, i64 %i.aw
  %11 = getelementptr i8, ptr %10, i64 8          ; 2 uses
  %12 = getelementptr i8, ptr %5, i64 %i.az
  %13 = getelementptr i8, ptr %12, i64 72         ; 2 uses
  %i.bd = getelementptr i8, ptr %5, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 72     ; 2 uses
  %bound0 = icmp ult ptr %i.av, %7
  %bound1 = icmp ult ptr %i.bb, %i.ay
  %found.conflict = and i1 %bound0, %bound1
  %bound0163 = icmp ult ptr %i.av, %11
  %bound1164 = icmp ult ptr %9, %i.ay
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx = or i1 %found.conflict, %found.conflict165
  %bound0166 = icmp ult ptr %i.av, %i.be
  %bound1167 = icmp ult ptr %13, %i.ay
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx, %found.conflict168
  %bound0170 = icmp ult ptr %i.bb, %11
  %bound1171 = icmp ult ptr %9, %7
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  %bound0174 = icmp ult ptr %i.bb, %i.be
  %bound1175 = icmp ult ptr %13, %7
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  br i1 %conflict.rdx177, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, -4                      ; 3 uses
  %i.bf = sub nsw i64 %i.aq, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = sub i64 %i.aq, %index                   ; 3 uses
  %i.bh = add nsw i64 %i.bg, -1                   ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -12
  %wide.load = load <2 x i32>, ptr %i.bj, align 4, !alias.scope !21
  %wide.load178 = load <2 x i32>, ptr %i.bk, align 4, !alias.scope !21
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bg ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -12
  store <2 x i32> %wide.load, ptr %i.bm, align 4, !alias.scope !22, !noalias !23
  store <2 x i32> %wide.load178, ptr %i.bn, align 4, !alias.scope !22, !noalias !23
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bh ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -8
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -24
  %wide.load179 = load <2 x i64>, ptr %i.bp, align 8, !alias.scope !24
  %wide.load180 = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !24
  %i.br = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bg ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -24
  store <2 x i64> %wide.load179, ptr %i.bs, align 8, !alias.scope !25, !noalias !26
  store <2 x i64> %wide.load180, ptr %i.bt, align 8, !alias.scope !25, !noalias !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph23.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph23.i ], [ %i.bf, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.next.i
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.i
  store i32 %i.bw, ptr %i.bx, align 4
  %i.by = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv.next.i
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv.i
  store i64 %i.bz, ptr %i.ca, align 8
  %i.cb = icmp sgt i64 %indvars.iv.next.i, %i.ar
  br i1 %i.cb, label %scalar.ph, label %._crit_edge.i, !llvm.loop !12

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.ar, %middle.block ], [ %i.ar, %scalar.ph ] ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.pre-phi.i
  store i32 %i.u, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pre-phi.i
  store i64 %i.z, ptr %i.cd, align 8
  br label %_ZN12_GLOBAL__N_111LargestGaps3addEil.exit

_ZN12_GLOBAL__N_111LargestGaps3addEil.exit:       ; preds = %._crit_edge.i, %.critedge.i, %bb.f
  %.160 = phi i32 [ %i.u, %bb.f ], [ %i.w, %.critedge.i ], [ %i.w, %._crit_edge.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %.preheader, label %bb.f, !llvm.loop !13

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv103 = phi i32 [ 1, %.lr.ph ], [ %indvars.iv.next104, %bb.o ] ; 4 uses
  %indvars.iv95 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next96, %bb.o ] ; 2 uses
  %.05885 = phi i32 [ 2, %.lr.ph ], [ %i.cl, %bb.o ] ; 6 uses
  %.06483 = phi i64 [ %i.j, %.lr.ph ], [ %i.cg, %bb.o ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv95
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = sub nsw i64 %.06483, %i.cf              ; 2 uses
  %i.ch = shl nuw nsw i32 %.05885, 1
  %i.ci = icmp sgt i32 %1, %i.ch
  br i1 %i.ci, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cj = mul nsw i64 %i.cg, %i.k
  %i.ck = sdiv i64 %i.cj, 256
  %.not71 = icmp sgt i64 %i.ck, %i.c
  br i1 %.not71, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.cl = add nuw nsw i32 %.05885, 1
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  %indvars.iv.next104 = add nuw nsw i32 %indvars.iv103, 1
  br i1 %exitcond99.not, label %.loopexit, label %bb.m, !llvm.loop !14

bb.p:                                             ; preds = %bb.n
  %i.cm = add nsw i32 %.05885, -1                 ; 3 uses
  %.not77 = icmp sgt i32 %.05885, %.val
  br i1 %.not77, label %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.cm, ptr %i.r, align 4
  br label %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit

_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit:   ; preds = %bb.p, %bb.q
  %i.cn = phi i32 [ %.val, %bb.p ], [ %i.cm, %bb.q ] ; 5 uses
  store i32 %i.b, ptr %3, align 4
  %.not7286 = icmp samesign ult i32 %.05885, 2
  br i1 %.not7286, label %._crit_edge, label %.lr.ph89

.lr.ph89:                                         ; preds = %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit
  %i.co = icmp sgt i32 %i.cn, 0
  %wide.trip.count.i = zext i32 %i.cn to i64      ; 2 uses
  br i1 %i.co, label %.lr.ph.i74.us.preheader, label %.lr.ph89.split

.lr.ph.i74.us.preheader:                          ; preds = %.lr.ph89
  %wide.trip.count113 = zext nneg i32 %indvars.iv103 to i64
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cp = icmp eq i32 %i.cn, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod198 = trunc i32 %i.cn to i1
  br label %.lr.ph.i74.us

.lr.ph.i74.us:                                    ; preds = %.lr.ph.i74.us.preheader, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us
  %indvars.iv108 = phi i64 [ 0, %.lr.ph.i74.us.preheader ], [ %indvars.iv.next109, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us ] ; 2 uses
  %.05788.us = phi i32 [ %i.b, %.lr.ph.i74.us.preheader ], [ %i.dr, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us ] ; 3 uses
  br i1 %i.cp, label %.epil.preheader, label %.lr.ph.i74.us.new

.lr.ph.i74.us.new:                                ; preds = %.lr.ph.i74.us, %bb.u
  %indvars.iv.i75.us = phi i64 [ %indvars.iv.next.i76.us.1, %bb.u ], [ 0, %.lr.ph.i74.us ] ; 4 uses
  %.01118.i.us = phi i32 [ %.1.i.us.1, %bb.u ], [ -1, %.lr.ph.i74.us ] ; 3 uses
  %.01217.i.us = phi i32 [ %.113.i.us.1, %bb.u ], [ 0, %.lr.ph.i74.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.u ], [ 0, %.lr.ph.i74.us ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i75.us
  %i.cr = load i32, ptr %i.cq, align 8            ; 3 uses
  %i.cs = icmp slt i32 %.05788.us, %i.cr
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i74.us.new
  %i.ct = icmp slt i32 %.01118.i.us, 0
  %i.cu = icmp slt i32 %i.cr, %.01217.i.us
  %or.cond.i.us = select i1 %i.ct, i1 true, i1 %i.cu ; 2 uses
  %spec.select.i.us = select i1 %or.cond.i.us, i32 %i.cr, i32 %.01217.i.us
  %i.cv = trunc nuw nsw i64 %indvars.iv.i75.us to i32
  %spec.select16.i.us = select i1 %or.cond.i.us, i32 %i.cv, i32 %.01118.i.us
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i74.us.new
  %.113.i.us = phi i32 [ %.01217.i.us, %.lr.ph.i74.us.new ], [ %spec.select.i.us, %bb.r ] ; 3 uses
  %.1.i.us = phi i32 [ %.01118.i.us, %.lr.ph.i74.us.new ], [ %spec.select16.i.us, %bb.r ] ; 3 uses
  %indvars.iv.next.i76.us = or disjoint i64 %indvars.iv.i75.us, 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.i76.us
  %i.cx = load i32, ptr %i.cw, align 4            ; 3 uses
  %i.cy = icmp slt i32 %.05788.us, %i.cx
  br i1 %i.cy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cz = icmp slt i32 %.1.i.us, 0
  %i.da = icmp slt i32 %i.cx, %.113.i.us
  %or.cond.i.us.1 = select i1 %i.cz, i1 true, i1 %i.da ; 2 uses
  %spec.select.i.us.1 = select i1 %or.cond.i.us.1, i32 %i.cx, i32 %.113.i.us
  %i.db = trunc nuw nsw i64 %indvars.iv.next.i76.us to i32
  %spec.select16.i.us.1 = select i1 %or.cond.i.us.1, i32 %i.db, i32 %.1.i.us
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
  call void @llvm.assume(i1 %lcmp.mod198)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i75.us.epil.init
  %i.dd = load i32, ptr %i.dc, align 4            ; 2 uses
  %i.de = icmp slt i32 %.05788.us, %i.dd
  %i.df = icmp slt i32 %.01118.i.us.epil.init, 0
  %i.dg = icmp slt i32 %i.dd, %.01217.i.us.epil.init
  %or.cond.i.us.epil = select i1 %i.df, i1 true, i1 %i.dg
  %i.dh = trunc nuw nsw i64 %indvars.iv.i75.us.epil.init to i32
  %spec.select16.i.us.epil = select i1 %or.cond.i.us.epil, i32 %i.dh, i32 %.01118.i.us.epil.init
  %.1.i.us.epil = select i1 %i.de, i32 %spec.select16.i.us.epil, i32 %.01118.i.us.epil.init
  br label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us

_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us: ; preds = %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa, %.epil.preheader
  %.1.i.us.lcssa = phi i32 [ %.1.i.us.1, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us.unr-lcssa ], [ %.1.i.us.epil, %.epil.preheader ]
  %i.di = sext i32 %.1.i.us.lcssa to i64          ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4            ; 2 uses
  %i.dl = add nsw i32 %i.dk, -1
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv108
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i32 %i.dl, ptr %i.dn, align 4
  %i.do = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.di
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = add i32 %i.dk, %i.dq                    ; 2 uses
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next109
  store i32 %i.dr, ptr %i.ds, align 4
  %exitcond114.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count113
  br i1 %exitcond114.not, label %._crit_edge, label %.lr.ph.i74.us, !llvm.loop !16

.lr.ph89.split:                                   ; preds = %.lr.ph89
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = trunc i64 %i.du to i32
  %i.dw = insertelement <2 x i32> poison, i32 %i.cn, i64 0
  %i.dx = shufflevector <2 x i32> %i.dw, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dy = insertelement <2 x i32> <i32 -1, i32 poison>, i32 %i.dv, i64 1
  %i.dz = add <2 x i32> %i.dx, %i.dy              ; 2 uses
  %wide.trip.count106 = zext nneg i32 %indvars.iv103 to i64 ; 3 uses
  %min.iters.check182 = icmp samesign ult i32 %indvars.iv103, 4
  br i1 %min.iters.check182, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader, label %vector.ph183

vector.ph183:                                     ; preds = %.lr.ph89.split
  %n.vec184 = and i64 %wide.trip.count106, 2147483644 ; 3 uses
  %interleaved.vec = shufflevector <2 x i32> %i.dz, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph183
  %index188 = phi i64 [ 0, %vector.ph183 ], [ %index.next190, %vector.body187 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index188
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index188
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  store <4 x i32> %interleaved.vec, ptr %i.ec, align 4
  store <4 x i32> %interleaved.vec, ptr %i.ed, align 4
  %index.next190 = add nuw i64 %index188, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next190, %n.vec184
  br i1 %i.ee, label %middle.block191, label %vector.body187, !llvm.loop !17

middle.block191:                                  ; preds = %vector.body187
  %cmp.n192 = icmp eq i64 %n.vec184, %wide.trip.count106
  br i1 %cmp.n192, label %._crit_edge, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader

_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader: ; preds = %.lr.ph89.split, %middle.block191
  %indvars.iv100.ph = phi i64 [ 0, %.lr.ph89.split ], [ %n.vec184, %middle.block191 ]
  br label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit

_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit: ; preds = %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit ], [ %indvars.iv100.ph, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv100
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  store <2 x i32> %i.dz, ptr %i.eg, align 4
  %exitcond107.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit, !llvm.loop !18

._crit_edge:                                      ; preds = %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us, %middle.block191, %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit
  %i.eh = sext i32 %i.cm to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %3, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store i32 %i.f, ptr %i.ej, align 4
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
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = distinct !{!5, !20}
!6 = distinct !{!6, i1 false, !"LVerDomain"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !20, !27, !28}
!12 = distinct !{!12, !20, !27}
!13 = distinct !{!13, !20}
!14 = distinct !{!14, !20}
!15 = distinct !{!15, !20}
!16 = distinct !{!16, !20}
!17 = distinct !{!17, !20, !27, !28}
!18 = distinct !{!18, !20, !28, !27}
!19 = !{i64 1094898678022220192}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!7}
!22 = !{!8}
!23 = !{!10, !7, !9}
!24 = !{!9}
!25 = !{!10}
!26 = !{!7, !9}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
