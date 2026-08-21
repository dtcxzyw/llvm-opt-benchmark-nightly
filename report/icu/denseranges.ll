inline.NumInlined: 8
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.(anonymous namespace)::LargestGaps" = type { i32, i32, [15 x i32], [15 x i64] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -2147483646, -2147483647) i32 @uprv_makeDenseRanges(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.(anonymous namespace)::LargestGaps", align 8 ; 9 uses
  %i.a = icmp slt i32 %1, 3
  br i1 %i.a, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !8      ; 5 uses
  %i.c = zext nneg i32 %1 to i64                  ; 4 uses
  %i.d = getelementptr [4 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8    ; 3 uses
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
  %.01619.i = phi i32 [ %7, %bb.h ], [ %i.aa, %bb.g ] ; 4 uses
  %6 = zext nneg i32 %.01619.i to i64
  %i.ac = getelementptr [8 x i8], ptr %5, i64 %6
  %i.ad = getelementptr i8, ptr %i.ac, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !12
  %i.af = icmp sgt i64 %i.z, %i.ae
  br i1 %i.af, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %.lr.ph.i
  %7 = add nsw i32 %.01619.i, -1
  %i.ag = icmp sgt i32 %.01619.i, 1
  br i1 %i.ag, label %.lr.ph.i, label %.critedge.i, !llvm.loop !14

.critedge.i:                                      ; preds = %bb.h, %.lr.ph.i, %bb.g
  %.016.lcssa.i = phi i32 [ %i.aa, %bb.g ], [ %.01619.i, %.lr.ph.i ], [ 0, %bb.h ] ; 4 uses
  %i.ah = load i32, ptr %5, align 8, !tbaa !9     ; 3 uses
  %i.ai = icmp slt i32 %.016.lcssa.i, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZN12_GLOBAL__N_111LargestGaps3addEil.exit

bb.i:                                             ; preds = %.critedge.i
  %i.aj = icmp slt i32 %i.aa, %i.ah
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = add nsw i32 %i.aa, 1
  store i32 %i.ak, ptr %i.r, align 4, !tbaa !11
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.al = add nsw i32 %i.ah, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = phi i32 [ %i.aa, %bb.j ], [ %i.al, %bb.k ] ; 2 uses
  %i.an = icmp sgt i32 %i.am, %.016.lcssa.i
  br i1 %i.an, label %.lr.ph23.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.l
  %.pre.i = sext i32 %.016.lcssa.i to i64
  br label %._crit_edge.i

.lr.ph23.i:                                       ; preds = %bb.l
  %i.ao = sext i32 %i.am to i64                   ; 4 uses
  %i.ap = sext i32 %.016.lcssa.i to i64           ; 4 uses
  %i.aq = sub nsw i64 %i.ao, %i.ap                ; 3 uses
  %min.iters.check = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph23.i
  %n.vec = and i64 %i.aq, -4                      ; 3 uses
  %i.ar = sub nsw i64 %i.ao, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = sub i64 %i.ao, %index                   ; 3 uses
  %i.at = add nsw i64 %i.as, -1                   ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -12
  %wide.load = load <2 x i32>, ptr %i.av, align 4, !tbaa !8
  %wide.load133 = load <2 x i32>, ptr %i.aw, align 4, !tbaa !8
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.as ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -12
  store <2 x i32> %wide.load, ptr %i.ay, align 4, !tbaa !8
  store <2 x i32> %wide.load133, ptr %i.az, align 4, !tbaa !8
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.at ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -24
  %wide.load134 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !12
  %wide.load135 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !12
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.as ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -24
  store <2 x i64> %wide.load134, ptr %i.be, align 8, !tbaa !12
  store <2 x i64> %wide.load135, ptr %i.bf, align 8, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph23.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ao, %.lr.ph23.i ], [ %i.ar, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i.a, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next.i.a = add nsw i64 %indvars.iv.i.a, -1 ; 4 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.next.i.a
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !8
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.i.a
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !8
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.a
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !12
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv.i.a
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !12
  %i.bn = icmp sgt i64 %indvars.iv.next.i.a, %i.ap
  br i1 %i.bn, label %scalar.ph, label %._crit_edge.i, !llvm.loop !19

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.ap, %middle.block ], [ %i.ap, %scalar.ph ] ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.pre-phi.i
  store i32 %i.u, ptr %i.bo, align 4, !tbaa !8
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pre-phi.i
  store i64 %i.z, ptr %i.bp, align 8, !tbaa !12
  br label %_ZN12_GLOBAL__N_111LargestGaps3addEil.exit

_ZN12_GLOBAL__N_111LargestGaps3addEil.exit:       ; preds = %._crit_edge.i, %.critedge.i, %bb.f
  %.160 = phi i32 [ %i.u, %bb.f ], [ %i.w, %.critedge.i ], [ %i.w, %._crit_edge.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %.preheader, label %bb.f, !llvm.loop !20

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv103 = phi i32 [ 1, %.lr.ph ], [ %indvars.iv.next104, %bb.o ] ; 4 uses
  %indvars.iv95 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next96, %bb.o ] ; 2 uses
  %.05885 = phi i32 [ 2, %.lr.ph ], [ %i.bx, %bb.o ] ; 6 uses
  %.06483 = phi i64 [ %i.j, %.lr.ph ], [ %i.bs, %bb.o ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv95
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !12
  %i.bs = sub nsw i64 %.06483, %i.br              ; 2 uses
  %i.bt = shl nuw nsw i32 %.05885, 1
  %i.bu = icmp sgt i32 %1, %i.bt
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = mul nsw i64 %i.bs, %i.k
  %i.bw = sdiv i64 %i.bv, 256
  %.not71 = icmp sgt i64 %i.bw, %i.c
  br i1 %.not71, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.bx = add nuw nsw i32 %.05885, 1
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  %indvars.iv.next104 = add nuw nsw i32 %indvars.iv103, 1
  br i1 %exitcond99.not, label %.loopexit, label %bb.m, !llvm.loop !21

bb.p:                                             ; preds = %bb.n
  %i.by = add nsw i32 %.05885, -1                 ; 3 uses
  %.not77 = icmp sgt i32 %.05885, %.val
  br i1 %.not77, label %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.by, ptr %i.r, align 4, !tbaa !11
  br label %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit

_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit:   ; preds = %bb.p, %bb.q
  %i.bz = phi i32 [ %.val, %bb.p ], [ %i.by, %bb.q ] ; 5 uses
  store i32 %i.b, ptr %3, align 4, !tbaa !8
  %.not7286 = icmp samesign ult i32 %.05885, 2
  br i1 %.not7286, label %._crit_edge, label %.lr.ph89

.lr.ph89:                                         ; preds = %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit
  %i.ca = icmp sgt i32 %i.bz, 0
  %wide.trip.count.i = zext i32 %i.bz to i64      ; 2 uses
  br i1 %i.ca, label %.lr.ph.i74.us.preheader, label %.lr.ph89.split

.lr.ph.i74.us.preheader:                          ; preds = %.lr.ph89
  %wide.trip.count113 = zext nneg i32 %indvars.iv103 to i64
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cb = icmp eq i32 %i.bz, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod153 = trunc i32 %i.bz to i1
  br label %.lr.ph.i74.us

.lr.ph.i74.us:                                    ; preds = %.lr.ph.i74.us.preheader, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us
  %indvars.iv108 = phi i64 [ 0, %.lr.ph.i74.us.preheader ], [ %indvars.iv.next109, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us ] ; 2 uses
  %.05788.us = phi i32 [ %i.b, %.lr.ph.i74.us.preheader ], [ %i.dd, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.loopexit.us ] ; 3 uses
  br i1 %i.cb, label %.epil.preheader, label %.lr.ph.i74.us.new

.lr.ph.i74.us.new:                                ; preds = %.lr.ph.i74.us, %bb.u
  %indvars.iv.i75.us = phi i64 [ %indvars.iv.next.i76.us.1, %bb.u ], [ 0, %.lr.ph.i74.us ] ; 4 uses
  %.01118.i.us = phi i32 [ %.1.i.us.1, %bb.u ], [ -1, %.lr.ph.i74.us ] ; 3 uses
  %.01217.i.us = phi i32 [ %.113.i.us.1, %bb.u ], [ 0, %.lr.ph.i74.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.u ], [ 0, %.lr.ph.i74.us ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i75.us
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !8  ; 3 uses
  %i.ce = icmp slt i32 %.05788.us, %i.cd
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i74.us.new
  %i.cf = icmp slt i32 %.01118.i.us, 0
  %i.cg = icmp slt i32 %i.cd, %.01217.i.us
  %or.cond.i.us = select i1 %i.cf, i1 true, i1 %i.cg ; 2 uses
  %spec.select.i.us = select i1 %or.cond.i.us, i32 %i.cd, i32 %.01217.i.us
  %i.ch = trunc nuw nsw i64 %indvars.iv.i75.us to i32
  %spec.select16.i.us = select i1 %or.cond.i.us, i32 %i.ch, i32 %.01118.i.us
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i74.us.new
  %.113.i.us = phi i32 [ %.01217.i.us, %.lr.ph.i74.us.new ], [ %spec.select.i.us, %bb.r ] ; 3 uses
  %.1.i.us = phi i32 [ %.01118.i.us, %.lr.ph.i74.us.new ], [ %spec.select16.i.us, %bb.r ] ; 3 uses
  %indvars.iv.next.i76.us = or disjoint i64 %indvars.iv.i75.us, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.i76.us
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8  ; 3 uses
  %i.ck = icmp slt i32 %.05788.us, %i.cj
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = icmp slt i32 %.1.i.us, 0
  %i.cm = icmp slt i32 %i.cj, %.113.i.us
  %or.cond.i.us.1 = select i1 %i.cl, i1 true, i1 %i.cm ; 2 uses
  %spec.select.i.us.1 = select i1 %or.cond.i.us.1, i32 %i.cj, i32 %.113.i.us
  %i.cn = trunc nuw nsw i64 %indvars.iv.next.i76.us to i32
  %spec.select16.i.us.1 = select i1 %or.cond.i.us.1, i32 %i.cn, i32 %.1.i.us
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.113.i.us.1 = phi i32 [ %.113.i.us, %bb.s ], [ %spec.select.i.us.1, %bb.t ] ; 2 uses
end_hunk_0
