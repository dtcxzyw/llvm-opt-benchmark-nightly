inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.htree_node = type { i32, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [78 x i8] c"/opt-bench/work/gromacs/gromacs/src/external/tng_io/src/compression/huffman.c\00", align 1

; Function Attrs: nounwind uwtable
define void @Ptngc_comp_conv_to_huffman(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr nofree noundef writeonly captures(none) %6, ptr noundef %7, ptr nofree noundef writeonly captures(none) %8, ptr nofree noundef writeonly captures(none) %9, ptr nofree noundef writeonly captures(none) %10) local_unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca %struct.htree_node, align 8   ; 4 uses
  %i.a = sext i32 %3 to i64                       ; 8 uses
  %i.b = shl nsw i64 %i.a, 5
  %i.c = shl nsw i64 %i.a, 4
  %i.d = icmp sgt i32 %3, 0                       ; 4 uses
  %i.e = icmp eq i32 %3, 1
  %i.f = add nsw i32 %3, -1
  %i.g = zext i32 %3 to i64                       ; 29 uses
  %i.h = sext i32 %i.f to i64                     ; 5 uses
  %i.i = shl nuw nsw i64 %i.g, 4
  %i.j = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %scevgep635 = getelementptr i8, ptr %2, i64 %i.j
  %scevgep636 = getelementptr i8, ptr %4, i64 %i.j ; 2 uses
  %i.k = shl nuw nsw i64 %i.g, 5
  %min.iters.check659 = icmp ult i32 %3, 8
  %n.vec661 = and i64 %i.g, 2147483640            ; 3 uses
  %cmp.n674 = icmp eq i64 %n.vec661, %i.g
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check640 = icmp ult i32 %3, 8
  %n.vec642 = and i64 %i.g, 2147483640            ; 3 uses
  %cmp.n651 = icmp eq i64 %n.vec642, %i.g
  %xtraiter717 = and i64 %i.g, 7                  ; 2 uses
  %lcmp.mod718.not = icmp eq i64 %xtraiter717, 0
  %xtraiter720 = and i64 %i.g, 3                  ; 3 uses
  %i.l = icmp ult i32 %3, 4
  %unroll_iter = and i64 %i.g, 2147483644
  %lcmp.mod721.not = icmp eq i64 %xtraiter720, 0
  %lcmp.mod722 = icmp ne i64 %xtraiter720, 0
  %min.iters.check597 = icmp ult i32 %3, 5
  %min.iters.check599 = icmp ult i32 %3, 33
  %i.m = and i64 %i.g, 31                         ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 32, i64 %i.m         ; 2 uses
  %n.vec601 = sub nsw i64 %i.g, %i.o              ; 3 uses
  %min.epilog.iters.check621 = icmp samesign ult i64 %i.o, 5
  %i.p = and i64 %i.g, 3                          ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 4, i64 %i.p
  %n.vec623 = sub nsw i64 %i.g, %i.r              ; 2 uses
  %min.iters.check = icmp ult i32 %3, 4
  %min.iters.check588 = icmp ult i32 %3, 32
  %i.s = and i64 %i.g, 28
  %n.vec = and i64 %i.g, 2147483616               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.g
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  %n.vec592 = and i64 %i.g, 2147483644            ; 3 uses
  %cmp.n596 = icmp eq i64 %n.vec592, %i.g
  br label %bb.b

.preheader356:                                    ; preds = %._crit_edge398, %._crit_edge403
  %i.t = icmp sgt i32 %1, 0
  br i1 %i.t, label %.preheader355.lr.ph, label %._crit_edge416.thread

.preheader355.lr.ph:                              ; preds = %.preheader356
  %wide.trip.count491 = zext nneg i32 %1 to i64
  %i.u = zext nneg i32 %3 to i64
  br label %.preheader355

bb.b:                                             ; preds = %._crit_edge406, %bb.a
  %i.v = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.b, ptr noundef nonnull @.str, i32 noundef 285) #10 ; 18 uses
  %i.w = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 286) #10 ; 36 uses
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit.thread510

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %min.iters.check659, label %.lr.ph.preheader709, label %vector.memcheck653

vector.memcheck653:                               ; preds = %.lr.ph.preheader
  %i.x = getelementptr i8, ptr %i.v, i64 %i.k
  %scevgep654 = getelementptr i8, ptr %i.x, i64 -20
  %bound0655 = icmp ult ptr %i.v, %scevgep636
  %bound1656 = icmp ult ptr %4, %scevgep654
  %found.conflict657 = and i1 %bound0655, %bound1656
  br i1 %found.conflict657, label %.lr.ph.preheader709, label %vector.body662

vector.body662:                                   ; preds = %vector.memcheck653, %vector.body662
  %index663 = phi i64 [ %index.next670, %vector.body662 ], [ 0, %vector.memcheck653 ] ; 2 uses
  %vec.ind664 = phi <8 x i64> [ %vec.ind.next671, %vector.body662 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.memcheck653 ] ; 2 uses
  %vec.ind665 = phi <8 x i32> [ %vec.ind.next672, %vector.body662 ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.memcheck653 ] ; 2 uses
  %wide.gep666 = getelementptr inbounds nuw [32 x i8], ptr %i.v, <8 x i64> %vec.ind664 ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 8 %wide.gep666, <8 x i1> splat (i1 true)), !tbaa !8, !alias.scope !9, !noalias !12
  %wide.gep667 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep666, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %vec.ind665, <8 x ptr> align 4 %wide.gep667, <8 x i1> splat (i1 true)), !tbaa !8, !alias.scope !9, !noalias !12
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index663
  %wide.load668 = load <8 x i32>, ptr %i.y, align 4, !tbaa !14, !alias.scope !12
  %wide.gep669 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep666, i64 8
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %wide.load668, <8 x ptr> align 8 %wide.gep669, <8 x i1> splat (i1 true)), !tbaa !8, !alias.scope !9, !noalias !12
  %index.next670 = add nuw i64 %index663, 8       ; 2 uses
  %vec.ind.next671 = add nuw nsw <8 x i64> %vec.ind664, splat (i64 8)
  %vec.ind.next672 = add <8 x i32> %vec.ind665, splat (i32 8)
  %i.z = icmp eq i64 %index.next670, %n.vec661
  br i1 %i.z, label %middle.block673, label %vector.body662, !llvm.loop !15

middle.block673:                                  ; preds = %vector.body662
  br i1 %cmp.n674, label %._crit_edge, label %.lr.ph.preheader709

.lr.ph.preheader709:                              ; preds = %vector.memcheck653, %.lr.ph.preheader, %middle.block673
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck653 ], [ 0, %.lr.ph.preheader ], [ %n.vec661, %middle.block673 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader709, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader709 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader709 ]
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv.prol ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = trunc nuw nsw i64 %indvars.iv.prol to i32
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !8
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.prol
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !19

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader709
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader709 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ag = sub nsw i64 %indvars.iv.ph, %i.g
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv ; 3 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !8
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %i.am, ptr %i.an, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv.next ; 3 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !8
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.as, ptr %i.at, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv.next.1 ; 3 uses
  store i32 0, ptr %i.au, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !8
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.1
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv.next.2 ; 3 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !8
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.2
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.g
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block673
  tail call void @Ptngc_merge_sort(ptr noundef nonnull %i.v, i64 noundef %i.a, i64 noundef 32, ptr noundef nonnull @comp_htree, ptr noundef null) #10
  br i1 %i.e, label %.loopexit.thread, label %bb.c

.loopexit.thread510:                              ; preds = %bb.b
  tail call void @Ptngc_merge_sort(ptr noundef %i.v, i64 noundef %i.a, i64 noundef 32, ptr noundef nonnull @comp_htree, ptr noundef null) #10
  tail call fastcc void @assign_codes(ptr noundef %i.v, ptr noundef %i.w, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  tail call void @Ptngc_merge_sort(ptr noundef %i.w, i64 noundef %i.a, i64 noundef 16, ptr noundef nonnull @comp_codes, ptr noundef null) #10
  br label %._crit_edge398

.loopexit.thread:                                 ; preds = %._crit_edge
  store i32 1, ptr %i.w, align 4, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 1, ptr %i.bg, align 4, !tbaa !24
  br label %.lr.ph392.preheader

bb.c:                                             ; preds = %._crit_edge, %bb.g
  %indvars.iv460 = phi i64 [ %indvars.iv.next461, %bb.g ], [ %i.g, %._crit_edge ] ; 5 uses
  %11 = tail call ptr @Ptngc_warnmalloc_x(i64 noundef 32, ptr noundef nonnull @.str, i32 noundef 320) #10 ; 5 uses
  %12 = tail call ptr @Ptngc_warnmalloc_x(i64 noundef 32, ptr noundef nonnull @.str, i32 noundef 321) #10 ; 5 uses
  %13 = getelementptr [32 x i8], ptr %i.v, i64 %indvars.iv460 ; 2 uses
  %14 = getelementptr i8, ptr %13, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !tbaa.struct !25
  %15 = getelementptr i8, ptr %13, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !tbaa.struct !25
  %16 = load i32, ptr %11, align 8, !tbaa !8
  %17 = icmp eq i32 %16, 0                        ; 2 uses
  %. = select i1 %17, i64 8, i64 28
  %.557 = select i1 %17, i64 12, i64 24
  %18 = getelementptr inbounds nuw i8, ptr %11, i64 %.
  %19 = load i32, ptr %18, align 4, !tbaa !8
  %20 = getelementptr inbounds nuw i8, ptr %11, i64 %.557
  store i32 0, ptr %20, align 4, !tbaa !8
  %21 = load i32, ptr %12, align 8, !tbaa !8
  %22 = icmp eq i32 %21, 0                        ; 2 uses
  %.sink554 = select i1 %22, i64 8, i64 28
  %.sink553 = select i1 %22, i64 12, i64 24
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 %.sink554
  %24 = load i32, ptr %23, align 4, !tbaa !8
  %25 = getelementptr inbounds nuw i8, ptr %12, i64 %.sink553
  store i32 1, ptr %25, align 4, !tbaa !8
  %indvars.iv.next461 = add nsw i64 %indvars.iv460, -1 ; 3 uses
  %i.bh = add nsw i64 %indvars.iv460, -2          ; 2 uses
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.bh ; 5 uses
  store i32 1, ptr %i.bi, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %11, ptr %i.bj, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %12, ptr %i.bk, align 8, !tbaa !8
  %i.bl = add nsw i32 %24, %19                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !8
  %i.bn = icmp sgt i64 %indvars.iv460, 1
  br i1 %i.bn, label %.lr.ph587, label %._crit_edge501

.lr.ph587:                                        ; preds = %bb.c
  %i.bo = trunc nuw nsw i64 %indvars.iv.next461 to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.bp = add nsw i32 %.0188585, -1
  %i.bq = icmp sgt i32 %.0188585, 1
  br i1 %i.bq, label %bb.e, label %._crit_edge501

bb.e:                                             ; preds = %.lr.ph587, %bb.d
  %.0188585 = phi i32 [ %i.bo, %.lr.ph587 ], [ %i.bp, %bb.d ] ; 4 uses
  %i.br = zext nneg i32 %.0188585 to i64
  %i.bs = getelementptr [32 x i8], ptr %i.v, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !8
  %i.bv = icmp eq i32 %i.bu, 1
  %.0184.in.v = select i1 %i.bv, i64 -4, i64 -24
  %.0184.in = getelementptr i8, ptr %i.bs, i64 %.0184.in.v
  %.0184 = load i32, ptr %.0184.in, align 4, !tbaa !8
  %i.bw = icmp slt i32 %i.bl, %.0184
  br i1 %i.bw, label %split, label %bb.d

split:                                            ; preds = %bb.e
  %i.bx = zext nneg i32 %.0188585 to i64
  br label %._crit_edge501

._crit_edge501:                                   ; preds = %bb.d, %bb.c, %split
  %.2190 = phi i64 [ %i.bx, %split ], [ 0, %bb.c ], [ 0, %bb.d ] ; 3 uses
  %.not206 = icmp eq i64 %.2190, %indvars.iv.next461
  br i1 %.not206, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge501
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 32, i1 false), !tbaa.struct !25
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.2190 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = sub nsw i64 %i.bh, %.2190
  %i.cb = shl nsw i64 %i.ca, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr nonnull align 8 %i.by, i64 %i.cb, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge501
  %i.cc = icmp sgt i64 %indvars.iv460, 2
  br i1 %i.cc, label %bb.c, label %.lr.ph392.preheader, !llvm.loop !26

.lr.ph392.preheader:                              ; preds = %bb.g, %.loopexit.thread
  tail call fastcc void @assign_codes(ptr noundef nonnull %i.v, ptr noundef %i.w, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  br i1 %min.iters.check640, label %.lr.ph392.preheader708, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph392.preheader
  %scevgep = getelementptr i8, ptr %i.w, i64 8    ; 2 uses
  %scevgep634 = getelementptr i8, ptr %i.w, i64 %i.i ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep635
  %bound1 = icmp ult ptr %2, %scevgep634
  %found.conflict = and i1 %bound0, %bound1
  %bound0637 = icmp ult ptr %scevgep, %scevgep636
  %bound1638 = icmp ult ptr %4, %scevgep634
  %found.conflict639 = and i1 %bound0637, %bound1638
  %conflict.rdx = or i1 %found.conflict, %found.conflict639
  br i1 %conflict.rdx, label %.lr.ph392.preheader708, label %vector.body643

vector.body643:                                   ; preds = %vector.memcheck, %vector.body643
  %index644 = phi i64 [ %index.next649, %vector.body643 ], [ 0, %vector.memcheck ] ; 3 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body643 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.memcheck ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index644
  %wide.load645 = load <8 x i32>, ptr %i.cd, align 4, !tbaa !14, !alias.scope !27
  %wide.gep = getelementptr inbounds nuw [16 x i8], ptr %i.w, <8 x i64> %vec.ind ; 2 uses
  %wide.gep646 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %wide.load645, <8 x ptr> align 4 %wide.gep646, <8 x i1> splat (i1 true)), !tbaa !30, !alias.scope !31, !noalias !33
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index644
  %wide.load647 = load <8 x i32>, ptr %i.ce, align 4, !tbaa !14, !alias.scope !35
  %wide.gep648 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %wide.load647, <8 x ptr> align 4 %wide.gep648, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !31, !noalias !33
  %index.next649 = add nuw i64 %index644, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.cf = icmp eq i64 %index.next649, %n.vec642
  br i1 %i.cf, label %middle.block650, label %vector.body643, !llvm.loop !37

middle.block650:                                  ; preds = %vector.body643
  br i1 %cmp.n651, label %.lr.ph397.preheader, label %.lr.ph392.preheader708

.lr.ph392.preheader708:                           ; preds = %vector.memcheck, %.lr.ph392.preheader, %middle.block650
  %indvars.iv463.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph392.preheader ], [ %n.vec642, %middle.block650 ] ; 3 uses
  br i1 %lcmp.mod718.not, label %.lr.ph392.prol.loopexit, label %.lr.ph392.prol

.lr.ph392.prol:                                   ; preds = %.lr.ph392.preheader708, %.lr.ph392.prol
  %indvars.iv463.prol = phi i64 [ %indvars.iv.next464.prol, %.lr.ph392.prol ], [ %indvars.iv463.ph, %.lr.ph392.preheader708 ] ; 4 uses
  %prol.iter719 = phi i64 [ %prol.iter719.next, %.lr.ph392.prol ], [ 0, %.lr.ph392.preheader708 ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv463.prol
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !14
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv463.prol ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 %i.ch, ptr %i.cj, align 4, !tbaa !30
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv463.prol
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !36
  %indvars.iv.next464.prol = add nuw nsw i64 %indvars.iv463.prol, 1 ; 2 uses
  %prol.iter719.next = add i64 %prol.iter719, 1   ; 2 uses
  %prol.iter719.cmp.not = icmp eq i64 %prol.iter719.next, %xtraiter717
  br i1 %prol.iter719.cmp.not, label %.lr.ph392.prol.loopexit, label %.lr.ph392.prol, !llvm.loop !38

.lr.ph392.prol.loopexit:                          ; preds = %.lr.ph392.prol, %.lr.ph392.preheader708
  %indvars.iv463.unr = phi i64 [ %indvars.iv463.ph, %.lr.ph392.preheader708 ], [ %indvars.iv.next464.prol, %.lr.ph392.prol ]
  %i.cn = sub nsw i64 %indvars.iv463.ph, %i.g
  %i.co = icmp ugt i64 %i.cn, -8
  br i1 %i.co, label %.lr.ph397.preheader, label %.lr.ph392

.lr.ph392:                                        ; preds = %.lr.ph392.prol.loopexit, %.lr.ph392
  %indvars.iv463 = phi i64 [ %indvars.iv.next464.7, %.lr.ph392 ], [ %indvars.iv463.unr, %.lr.ph392.prol.loopexit ] ; 11 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv463
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !14
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv463 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %i.cq, ptr %i.cs, align 4, !tbaa !30
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv463
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !14
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !36
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next464
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !14
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv.next464 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %i.cx, ptr %i.cz, align 4, !tbaa !30
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next464
  %i.db = load i32, ptr %i.da, align 4, !tbaa !14
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !36
  %indvars.iv.next464.1 = add nuw nsw i64 %indvars.iv463, 2 ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next464.1
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !14
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv.next464.1 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i32 %i.de, ptr %i.dg, align 4, !tbaa !30
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next464.1
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !36
  %indvars.iv.next464.2 = add nuw nsw i64 %indvars.iv463, 3 ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next464.2
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !14
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv.next464.2 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !30
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next464.2
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !14
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !36
  %indvars.iv.next464.3 = add nuw nsw i64 %indvars.iv463, 4 ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next464.3
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !14
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv.next464.3 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 %i.ds, ptr %i.du, align 4, !tbaa !30
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next464.3
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !14
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !36
  %indvars.iv.next464.4 = add nuw nsw i64 %indvars.iv463, 5 ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next464.4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !14
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv.next464.4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i32 %i.dz, ptr %i.eb, align 4, !tbaa !30
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next464.4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !14
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !36
  %indvars.iv.next464.5 = add nuw nsw i64 %indvars.iv463, 6 ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next464.5
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !14
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv.next464.5 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %i.eg, ptr %i.ei, align 4, !tbaa !30
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next464.5
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !14
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !36
  %indvars.iv.next464.6 = add nuw nsw i64 %indvars.iv463, 7 ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next464.6
  %i.en = load i32, ptr %i.em, align 4, !tbaa !14
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv.next464.6 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i32 %i.en, ptr %i.ep, align 4, !tbaa !30
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next464.6
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !14
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store i32 %i.er, ptr %i.es, align 4, !tbaa !36
  %indvars.iv.next464.7 = add nuw nsw i64 %indvars.iv463, 8 ; 2 uses
  %exitcond467.not.7 = icmp eq i64 %indvars.iv.next464.7, %i.g
  br i1 %exitcond467.not.7, label %.lr.ph397.preheader, label %.lr.ph392, !llvm.loop !39

.lr.ph397.preheader:                              ; preds = %.lr.ph392.prol.loopexit, %.lr.ph392, %middle.block650
  tail call void @Ptngc_merge_sort(ptr noundef nonnull %i.w, i64 noundef %i.a, i64 noundef 16, ptr noundef nonnull @comp_codes, ptr noundef null) #10
  br i1 %i.l, label %.lr.ph397.epil.preheader, label %.lr.ph397

.lr.ph397:                                        ; preds = %.lr.ph397.preheader, %bb.l
  %indvars.iv468 = phi i64 [ %indvars.iv.next469.3, %bb.l ], [ 0, %.lr.ph397.preheader ] ; 6 uses
  %.0196394 = phi i32 [ %.1197.3, %bb.l ], [ 0, %.lr.ph397.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.3, %bb.l ], [ 0, %.lr.ph397.preheader ]
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv468 ; 3 uses
  store i32 %.0196394, ptr %i.et, align 4, !tbaa !22
  %i.eu = icmp slt i64 %indvars.iv468, %i.h
  br i1 %i.eu, label %bb.h, label %.lr.ph397.1

bb.h:                                             ; preds = %.lr.ph397
  %i.ev = add nsw i32 %.0196394, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !24
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !24
  %i.fa = sub nsw i32 %i.ex, %i.ez
  %i.fb = shl i32 %i.ev, %i.fa
  br label %.lr.ph397.1

.lr.ph397.1:                                      ; preds = %.lr.ph397, %bb.h
  %.1197 = phi i32 [ %i.fb, %bb.h ], [ %.0196394, %.lr.ph397 ] ; 3 uses
  %indvars.iv.next469 = or disjoint i64 %indvars.iv468, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv.next469 ; 3 uses
  store i32 %.1197, ptr %i.fc, align 4, !tbaa !22
  %i.fd = icmp slt i64 %indvars.iv.next469, %i.h
  br i1 %i.fd, label %bb.i, label %.lr.ph397.2

bb.i:                                             ; preds = %.lr.ph397.1
  %i.fe = add nsw i32 %.1197, 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 20
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !24
  %i.fj = sub nsw i32 %i.fg, %i.fi
  %i.fk = shl i32 %i.fe, %i.fj
  br label %.lr.ph397.2

.lr.ph397.2:                                      ; preds = %bb.i, %.lr.ph397.1
  %.1197.1 = phi i32 [ %i.fk, %bb.i ], [ %.1197, %.lr.ph397.1 ] ; 3 uses
  %indvars.iv.next469.1 = or disjoint i64 %indvars.iv468, 2 ; 2 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv.next469.1 ; 3 uses
  store i32 %.1197.1, ptr %i.fl, align 4, !tbaa !22
  %i.fm = icmp slt i64 %indvars.iv.next469.1, %i.h
  br i1 %i.fm, label %bb.j, label %.lr.ph397.3

bb.j:                                             ; preds = %.lr.ph397.2
  %i.fn = add nsw i32 %.1197.1, 1
end_hunk_0
