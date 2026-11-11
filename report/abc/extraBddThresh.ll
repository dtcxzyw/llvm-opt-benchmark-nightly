Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraBddThresh?download=true
inline.NumInlined: 72
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Extra_ThreshComputeChow:bb.a
  %i.p = zext nneg <2 x i32> %i.n to <2 x i64>
  %i.q = lshr <2 x i64> %broadcast.splat, %i.o
  %i.r = lshr <2 x i64> %broadcast.splat57, %i.p
  %i.s = trunc <2 x i64> %i.q to <2 x i32>
  %i.t = and <2 x i32> %i.s, splat (i32 1)
  %i.u = trunc <2 x i64> %i.r to <2 x i32>
  %i.v = and <2 x i32> %i.u, splat (i32 1)
  %i.w = add <2 x i32> %vec.phi, %i.t             ; 2 uses
  %i.x = add <2 x i32> %vec.phi55, %i.v           ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i32> %vec.ind, splat (i32 4)
  %i.y = icmp eq i32 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.x, %i.w
  %i.z = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %._crit_edge

.lr.ph34.split.us.preheader:                      ; preds = %.lr.ph34
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aa = icmp eq i32 %1, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod76 = trunc i32 %1 to i1
  br label %.lr.ph34.split.us

.lr.ph34.split.us:                                ; preds = %.lr.ph34.split.us.preheader, %..loopexit_crit_edge.us
  %.033.us = phi i32 [ %.1.us, %..loopexit_crit_edge.us ], [ 0, %.lr.ph34.split.us.preheader ] ; 2 uses
  %.02731.us = phi i32 [ %i.bc, %..loopexit_crit_edge.us ], [ 0, %.lr.ph34.split.us.preheader ] ; 6 uses
  %i.ab = lshr i32 %.02731.us, 6
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !34
  %i.af = and i32 %.02731.us, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = and i64 %i.ae, %i.ah
  %.not.us = icmp eq i64 %i.ai, 0
  br i1 %.not.us, label %..loopexit_crit_edge.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph34.split.us
  br i1 %i.aa, label %.lr.ph.us.epil.preheader, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.d ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.d ], [ 0, %.lr.ph.us.preheader ]
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = and i32 %i.ak, %.02731.us
  %.not29.us = icmp eq i32 %i.al, 0
  br i1 %.not29.us, label %.lr.ph.us.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph.us
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !31
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !31
  br label %.lr.ph.us.1

.lr.ph.us.1:                                      ; preds = %bb.b, %.lr.ph.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = and i32 %i.aq, %.02731.us
  %.not29.us.1 = icmp eq i32 %i.ar, 0
  br i1 %.not29.us.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.us.1
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !31
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.us.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.loopexit.unr-lcssa, label %.lr.ph.us, !llvm.loop !0

..loopexit_crit_edge.us.loopexit.unr-lcssa:       ; preds = %bb.d
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us.loopexit, label %.lr.ph.us.epil.preheader

.lr.ph.us.epil.preheader:                         ; preds = %..loopexit_crit_edge.us.loopexit.unr-lcssa, %.lr.ph.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next.1, %..loopexit_crit_edge.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.av = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = and i32 %i.aw, %.02731.us
  %.not29.us.epil = icmp eq i32 %i.ax, 0
  br i1 %.not29.us.epil, label %..loopexit_crit_edge.us.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.us.epil.preheader
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !31
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !31
  br label %..loopexit_crit_edge.us.loopexit

..loopexit_crit_edge.us.loopexit:                 ; preds = %.lr.ph.us.epil.preheader, %bb.e, %..loopexit_crit_edge.us.loopexit.unr-lcssa
  %i.bb = add nsw i32 %.033.us, 1
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %..loopexit_crit_edge.us.loopexit, %.lr.ph34.split.us
  %.1.us = phi i32 [ %.033.us, %.lr.ph34.split.us ], [ %i.bb, %..loopexit_crit_edge.us.loopexit ] ; 2 uses
  %i.bc = add nuw nsw i32 %.02731.us, 1           ; 2 uses
  %exitcond41.not = icmp eq i32 %i.bc, %smax40
  br i1 %exitcond41.not, label %.lr.ph.preheader, label %.lr.ph34.split.us, !llvm.loop !1

.lr.ph.preheader:                                 ; preds = %..loopexit_crit_edge.us, %bb.a
  %.0.lcssa50 = phi i32 [ 0, %bb.a ], [ %.1.us, %..loopexit_crit_edge.us ] ; 4 uses
  %wide.trip.count45 = zext nneg i32 %1 to i64    ; 3 uses
  %min.iters.check59 = icmp ult i32 %1, 8
  br i1 %min.iters.check59, label %.lr.ph.preheader72, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.preheader
  %n.vec61 = and i64 %wide.trip.count45, 2147483640 ; 3 uses
  %broadcast.splatinsert62 = insertelement <4 x i32> poison, i32 %.0.lcssa50, i64 0
  %broadcast.splat63 = shufflevector <4 x i32> %broadcast.splatinsert62, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph60
  %index65 = phi i64 [ 0, %vector.ph60 ], [ %index.next67, %vector.body64 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index65 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bd, align 4, !tbaa !31
  %wide.load66 = load <4 x i32>, ptr %i.be, align 4, !tbaa !31
  %i.bf = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %i.bg = shl nsw <4 x i32> %wide.load66, splat (i32 1)
  %i.bh = sub nsw <4 x i32> %i.bf, %broadcast.splat63
  %i.bi = sub nsw <4 x i32> %i.bg, %broadcast.splat63
  store <4 x i32> %i.bh, ptr %i.bd, align 4, !tbaa !31
  store <4 x i32> %i.bi, ptr %i.be, align 4, !tbaa !31
  %index.next67 = add nuw i64 %index65, 8         ; 2 uses
  %i.bj = icmp eq i64 %index.next67, %n.vec61
  br i1 %i.bj, label %middle.block68, label %vector.body64, !llvm.loop !47

middle.block68:                                   ; preds = %vector.body64
  %cmp.n69 = icmp eq i64 %n.vec61, %wide.trip.count45
  br i1 %cmp.n69, label %._crit_edge, label %.lr.ph.preheader72

.lr.ph.preheader72:                               ; preds = %.lr.ph.preheader, %middle.block68
  %indvars.iv42.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec61, %middle.block68 ]
  br label %.lr.ph

.lr.ph34.split:                                   ; preds = %.lr.ph34.split.preheader
  %i.bk = load i64, ptr %0, align 8, !tbaa !34
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = and i32 %i.bl, 1                        ; 2 uses
  %exitcond.not = icmp slt i32 %i.c, 2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph34.split.2

.lr.ph34.split.2:                                 ; preds = %.lr.ph34.split
  %i.bn = load i64, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = lshr i32 %i.bo, 1
  %i.bq = and i32 %i.bp, 1
  %spec.select.1 = add nuw nsw i32 %i.bm, %i.bq
  %i.br = trunc i64 %i.bn to i32
  %i.bs = lshr i32 %i.br, 2
  %i.bt = and i32 %i.bs, 1
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %i.bt
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader72, %.lr.ph
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.lr.ph ], [ %indvars.iv42.ph, %.lr.ph.preheader72 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv42 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !31
  %i.bw = shl nsw i32 %i.bv, 1
  %i.bx = sub nsw i32 %i.bw, %.0.lcssa50
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !31
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %._crit_edge, label %.lr.ph, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph34.split, %.lr.ph34.split.2, %.lr.ph, %middle.block, %middle.block68
  %.0.lcssa49 = phi i32 [ %.0.lcssa50, %middle.block68 ], [ %.0.lcssa50, %.lr.ph ], [ %i.z, %middle.block ], [ %i.bm, %.lr.ph34.split ], [ %spec.select.2, %.lr.ph34.split.2 ]
  %i.by = add nsw i32 %1, -1
  %.neg = shl nsw i32 -1, %i.by
  %i.bz = add i32 %.0.lcssa49, %.neg
  ret i32 %i.bz
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Extra_ThreshSortByChow(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = icmp slt i32 %1, 7
  %i.c = add nsw i32 %1, -6
  %i.d = shl nuw i32 1, %i.c
  %.fr = freeze i32 %i.d
  %i.e = select i1 %i.b, i32 1, i32 %.fr          ; 5 uses
  %i.f = icmp sgt i32 %1, 1
  %i.g = sext i32 %i.e to i64
  %.idx65.i.a = shl nsw i64 %i.g, 3               ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 %.idx65.i.a ; 3 uses
  %3 = icmp slt i32 %i.e, 1                       ; 2 uses
  %wide.trip.count73.i = zext i32 %i.e to i64     ; 3 uses
  br i1 %i.f, label %.split.us, label %.split55.us

.split.us:                                        ; preds = %bb.a
  %i.i = add nsw i32 %1, -1
  %i.j = icmp sgt i32 %i.e, 0
  %wide.trip.count74 = zext i32 %i.i to i64       ; 2 uses
  br i1 %i.j, label %.lr.ph.us.us.us.preheader, label %.lr.ph.us

.lr.ph.us.us.us.preheader:                        ; preds = %.split.us
  %i.k = add i64 %.idx65.i.a, %i.a
  %min.iters.check = icmp ult i32 %i.e, 4
  %n.vec = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.backedge, %.lr.ph.us.us.us.preheader
  %indvars.iv71 = phi i64 [ 0, %.lr.ph.us.us.us.preheader ], [ %indvars.iv71.be, %.lr.ph.us.us.us.backedge ] ; 8 uses
  %.02227.us.us.us.us.us = phi i32 [ 0, %.lr.ph.us.us.us.preheader ], [ %.02227.us.us.us.us.us.be, %.lr.ph.us.us.us.backedge ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv71 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31   ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next72 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31   ; 2 uses
  %.not.us.us.us.us.us = icmp slt i32 %i.m, %i.o
  br i1 %.not.us.us.us.us.us, label %bb.b, label %Abc_TtSwapAdjacent.exit.us.us.us.us.us

bb.b:                                             ; preds = %.lr.ph.us.us.us
  store i32 %i.o, ptr %i.l, align 4, !tbaa !31
  store i32 %i.m, ptr %i.n, align 4, !tbaa !31
  %i.p = icmp samesign ult i64 %indvars.iv71, 5
  br i1 %i.p, label %.lr.ph64.i.us.us.us.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %indvars.iv71, 5
  br i1 %i.q, label %bb.d, label %.preheader.lr.ph.i.us.us.us.us.us

.preheader.lr.ph.i.us.us.us.us.us:                ; preds = %bb.c
  %i.r = icmp samesign ult i64 %indvars.iv71, 7
  %i.s = trunc i64 %indvars.iv71 to i32
  %i.t = add i32 %i.s, -6
  %i.u = shl nuw i32 1, %i.t
  %i.v = select i1 %i.r, i32 1, i32 %i.u          ; 7 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = shl i32 %i.v, 2                          ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 3 uses
  br i1 %i.w, label %.preheader.us.preheader.i.us.us.us.us.us, label %Abc_TtSwapAdjacent.exit.us.us.us.us.us

.preheader.us.preheader.i.us.us.us.us.us:         ; preds = %.preheader.lr.ph.i.us.us.us.us.us
  %i.z = shl nuw nsw i32 %i.v, 1
  %i.aa = zext nneg i32 %i.v to i64               ; 6 uses
  %i.ab = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ac = shl nsw i64 %i.y, 3                     ; 4 uses
  %i.ad = add i64 %i.ac, %i.a
  %umax = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.ad)
  %i.ae = sub i64 %umax, %i.a                     ; 2 uses
  %i.af = icmp ne i64 %i.ae, %i.ac
  %umin = zext i1 %i.af to i64                    ; 2 uses
  %i.ag = or disjoint i64 %i.ac, %umin
  %i.ah = sub i64 %i.ae, %i.ag
  %umax102 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ai = udiv i64 %i.ah, %umax102
  %i.aj = add i64 %i.ai, %umin
  %i.ak = shl i64 %i.aj, 3
  %i.al = mul i64 %i.ak, %i.y                     ; 2 uses
  %i.am = shl nuw nsw i64 %i.aa, 3                ; 2 uses
  %i.an = shl nuw nsw i64 %i.ab, 3                ; 2 uses
  %i.ao = getelementptr i8, ptr %0, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.am
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.an
  %scevgep103 = getelementptr i8, ptr %0, i64 %i.an
  %i.aq = shl nuw nsw i64 %i.aa, 4
  %i.ar = getelementptr i8, ptr %0, i64 %i.al
  %scevgep104 = getelementptr i8, ptr %i.ar, i64 %i.aq
  %scevgep105 = getelementptr i8, ptr %0, i64 %i.am
  %min.iters.check107 = icmp ult i32 %i.v, 4
  %bound0 = icmp ult ptr %scevgep105, %scevgep
  %bound1 = icmp ult ptr %scevgep103, %scevgep104
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.x, 0
  %i.as = or i1 %found.conflict, %stride.check
  %n.vec109 = and i64 %i.aa, 2147483644
  %xtraiter = and i64 %i.aa, 1
  %i.at = icmp eq i32 %i.v, 1
  %unroll_iter = and i64 %i.aa, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod124 = trunc i32 %i.v to i1
  br label %.preheader.us.i.us.us.us.us.us

.preheader.us.i.us.us.us.us.us:                   ; preds = %._crit_edge.us.i.us.us.us.us.us, %.preheader.us.preheader.i.us.us.us.us.us
  %.061.us.i.us.us.us.us.us = phi ptr [ %i.bf, %._crit_edge.us.i.us.us.us.us.us ], [ %0, %.preheader.us.preheader.i.us.us.us.us.us ] ; 3 uses
  %invariant.gep.i.us.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.us, i64 %i.aa ; 4 uses
  %invariant.gep80.i.us.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.us, i64 %i.ab ; 4 uses
  %brmerge125 = select i1 %min.iters.check107, i1 true, i1 %i.as
  br i1 %brmerge125, label %scalar.ph106.preheader, label %vector.body110

scalar.ph106.preheader:                           ; preds = %.preheader.us.i.us.us.us.us.us
  br i1 %i.at, label %scalar.ph106.epil.preheader, label %scalar.ph106

vector.body110:                                   ; preds = %.preheader.us.i.us.us.us.us.us, %vector.body110
  %index111 = phi i64 [ %index.next116, %vector.body110 ], [ 0, %.preheader.us.i.us.us.us.us.us ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.us, i64 %index111 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %wide.load112 = load <2 x i64>, ptr %i.au, align 8, !tbaa !34, !alias.scope !56, !noalias !57
  %wide.load113 = load <2 x i64>, ptr %i.av, align 8, !tbaa !34, !alias.scope !56, !noalias !57
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.us, i64 %index111 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %wide.load114 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !34, !alias.scope !57
  %wide.load115 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !34, !alias.scope !57
  store <2 x i64> %wide.load114, ptr %i.au, align 8, !tbaa !34, !alias.scope !56, !noalias !57
  store <2 x i64> %wide.load115, ptr %i.av, align 8, !tbaa !34, !alias.scope !56, !noalias !57
  store <2 x i64> %wide.load112, ptr %i.aw, align 8, !tbaa !34, !alias.scope !57
  store <2 x i64> %wide.load113, ptr %i.ax, align 8, !tbaa !34, !alias.scope !57
  %index.next116 = add nuw i64 %index111, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next116, %n.vec109
  br i1 %i.ay, label %._crit_edge.us.i.us.us.us.us.us, label %vector.body110, !llvm.loop !52

scalar.ph106:                                     ; preds = %scalar.ph106.preheader, %scalar.ph106
  %indvars.iv.i.us.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.1, %scalar.ph106 ], [ 0, %scalar.ph106.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph106 ], [ 0, %scalar.ph106.preheader ]
  %gep.i.us.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.us, i64 %indvars.iv.i.us.us.us.us.us ; 2 uses
  %i.az = load i64, ptr %gep.i.us.us.us.us.us, align 8, !tbaa !34
  %gep81.i.us.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.us, i64 %indvars.iv.i.us.us.us.us.us ; 2 uses
  %i.ba = load i64, ptr %gep81.i.us.us.us.us.us, align 8, !tbaa !34
  store i64 %i.ba, ptr %gep.i.us.us.us.us.us, align 8, !tbaa !34
  store i64 %i.az, ptr %gep81.i.us.us.us.us.us, align 8, !tbaa !34
  %indvars.iv.next.i.us.us.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us.us.us, 1 ; 2 uses
  %gep.i.us.us.us.us.us.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us ; 2 uses
  %i.bb = load i64, ptr %gep.i.us.us.us.us.us.1, align 8, !tbaa !34
  %gep81.i.us.us.us.us.us.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us ; 2 uses
  %i.bc = load i64, ptr %gep81.i.us.us.us.us.us.1, align 8, !tbaa !34
  store i64 %i.bc, ptr %gep.i.us.us.us.us.us.1, align 8, !tbaa !34
  store i64 %i.bb, ptr %gep81.i.us.us.us.us.us.1, align 8, !tbaa !34
  %indvars.iv.next.i.us.us.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.us.us.us.us.loopexit.unr-lcssa, label %scalar.ph106, !llvm.loop !53

._crit_edge.us.i.us.us.us.us.us.loopexit.unr-lcssa: ; preds = %scalar.ph106
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us.us.us.us.us, label %scalar.ph106.epil.preheader

scalar.ph106.epil.preheader:                      ; preds = %._crit_edge.us.i.us.us.us.us.us.loopexit.unr-lcssa, %scalar.ph106.preheader
  %indvars.iv.i.us.us.us.us.us.epil.init = phi i64 [ 0, %scalar.ph106.preheader ], [ %indvars.iv.next.i.us.us.us.us.us.1, %._crit_edge.us.i.us.us.us.us.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod124)
  %gep.i.us.us.us.us.us.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.us, i64 %indvars.iv.i.us.us.us.us.us.epil.init ; 2 uses
  %i.bd = load i64, ptr %gep.i.us.us.us.us.us.epil, align 8, !tbaa !34
  %gep81.i.us.us.us.us.us.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.us, i64 %indvars.iv.i.us.us.us.us.us.epil.init ; 2 uses
  %i.be = load i64, ptr %gep81.i.us.us.us.us.us.epil, align 8, !tbaa !34
  store i64 %i.be, ptr %gep.i.us.us.us.us.us.epil, align 8, !tbaa !34
  store i64 %i.bd, ptr %gep81.i.us.us.us.us.us.epil, align 8, !tbaa !34
  br label %._crit_edge.us.i.us.us.us.us.us

._crit_edge.us.i.us.us.us.us.us:                  ; preds = %vector.body110, %scalar.ph106.epil.preheader, %._crit_edge.us.i.us.us.us.us.us.loopexit.unr-lcssa
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.us, i64 %i.y ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.h
  br i1 %i.bg, label %.preheader.us.i.us.us.us.us.us, label %Abc_TtSwapAdjacent.exit.us.us.us.us.us, !llvm.loop !2

bb.d:                                             ; preds = %bb.c
  br i1 %3, label %Abc_TtSwapAdjacent.exit.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us

.lr.ph.i.us.us.us.us.us:                          ; preds = %bb.d, %.lr.ph.i.us.us.us.us.us
  %.05462.i.us.us.us.us.us = phi ptr [ %i.bk, %.lr.ph.i.us.us.us.us.us ], [ %0, %bb.d ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.us, i64 4 ; 2 uses
  %i.bi = load <2 x i32>, ptr %i.bh, align 4, !tbaa !31
  %i.bj = shufflevector <2 x i32> %i.bi, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bj, ptr %i.bh, align 4, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.us, i64 16 ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %i.h
  br i1 %i.bl, label %.lr.ph.i.us.us.us.us.us, label %Abc_TtSwapAdjacent.exit.us.us.us.us.us, !llvm.loop !3

.lr.ph64.i.us.us.us.us.us:                        ; preds = %bb.b
  %i.bm = trunc nuw nsw i64 %indvars.iv71 to i32
  %i.bn = shl nuw nsw i32 1, %i.bm
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr @s_PMasks, i64 %indvars.iv71 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !34 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !34 ; 2 uses
  %i.bs = zext nneg i32 %i.bn to i64              ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !34 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph64.i.us.us.us.us.us
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bp, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert91 = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %broadcast.splat92 = shufflevector <2 x i64> %broadcast.splatinsert91, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert93 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat94 = shufflevector <2 x i64> %broadcast.splatinsert93, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert95 = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat96 = shufflevector <2 x i64> %broadcast.splatinsert95, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bv, align 8, !tbaa !34 ; 3 uses
  %wide.load97 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !34 ; 3 uses
  %i.bx = and <2 x i64> %wide.load, %broadcast.splat
  %i.by = and <2 x i64> %wide.load97, %broadcast.splat
  %i.bz = and <2 x i64> %wide.load, %broadcast.splat92
  %i.ca = and <2 x i64> %wide.load97, %broadcast.splat92
  %i.cb = shl <2 x i64> %i.bz, %broadcast.splat94
  %i.cc = shl <2 x i64> %i.ca, %broadcast.splat94
  %i.cd = or <2 x i64> %i.cb, %i.bx
  %i.ce = or <2 x i64> %i.cc, %i.by
  %i.cf = and <2 x i64> %wide.load, %broadcast.splat96
  %i.cg = and <2 x i64> %wide.load97, %broadcast.splat96
  %i.ch = lshr <2 x i64> %i.cf, %broadcast.splat94
  %i.ci = lshr <2 x i64> %i.cg, %broadcast.splat94
  %i.cj = or <2 x i64> %i.cd, %i.ch
  %i.ck = or <2 x i64> %i.ce, %i.ci
  store <2 x i64> %i.cj, ptr %i.bv, align 8, !tbaa !34
  store <2 x i64> %i.ck, ptr %i.bw, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtSwapAdjacent.exit.us.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph64.i.us.us.us.us.us, %middle.block
  %indvars.iv70.i.us.us.us.us.us.ph = phi i64 [ 0, %.lr.ph64.i.us.us.us.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv70.i.us.us.us.us.us = phi i64 [ %indvars.iv.next71.i.us.us.us.us.us, %scalar.ph ], [ %indvars.iv70.i.us.us.us.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i.us.us.us.us.us ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !34 ; 3 uses
  %i.co = and i64 %i.cn, %i.bp
  %i.cp = and i64 %i.cn, %i.br
  %i.cq = shl i64 %i.cp, %i.bs
  %i.cr = or i64 %i.cq, %i.co
  %i.cs = and i64 %i.cn, %i.bu
  %i.ct = lshr i64 %i.cs, %i.bs
  %i.cu = or i64 %i.cr, %i.ct
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !34
  %indvars.iv.next71.i.us.us.us.us.us = add nuw nsw i64 %indvars.iv70.i.us.us.us.us.us, 1 ; 2 uses
  %exitcond74.not.i.us.us.us.us.us = icmp eq i64 %indvars.iv.next71.i.us.us.us.us.us, %wide.trip.count73.i
  br i1 %exitcond74.not.i.us.us.us.us.us, label %Abc_TtSwapAdjacent.exit.us.us.us.us.us, label %scalar.ph, !llvm.loop !55

Abc_TtSwapAdjacent.exit.us.us.us.us.us:           ; preds = %._crit_edge.us.i.us.us.us.us.us, %.lr.ph.i.us.us.us.us.us, %scalar.ph, %middle.block, %bb.d, %.preheader.lr.ph.i.us.us.us.us.us, %.lr.ph.us.us.us
  %.1.us.us.us.us.us = phi i32 [ %.02227.us.us.us.us.us, %.lr.ph.us.us.us ], [ 1, %.preheader.lr.ph.i.us.us.us.us.us ], [ 1, %middle.block ], [ 1, %bb.d ], [ 1, %.lr.ph.i.us.us.us.us.us ], [ 1, %scalar.ph ], [ 1, %._crit_edge.us.i.us.us.us.us.us ] ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %._crit_edge.split.us.us.us.split.us.us, label %.lr.ph.us.us.us.backedge

.lr.ph.us.us.us.backedge:                         ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.us, %._crit_edge.split.us.us.us.split.us.us
  %indvars.iv71.be = phi i64 [ %indvars.iv.next72, %Abc_TtSwapAdjacent.exit.us.us.us.us.us ], [ 0, %._crit_edge.split.us.us.us.split.us.us ]
  %.02227.us.us.us.us.us.be = phi i32 [ %.1.us.us.us.us.us, %Abc_TtSwapAdjacent.exit.us.us.us.us.us ], [ 0, %._crit_edge.split.us.us.us.split.us.us ]
  br label %.lr.ph.us.us.us

._crit_edge.split.us.us.us.split.us.us:           ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.us
  %.not.not.us.us.us = icmp eq i32 %.1.us.us.us.us.us, 0
  br i1 %.not.not.us.us.us, label %.split55.us, label %.lr.ph.us.us.us.backedge

.lr.ph.us:                                        ; preds = %.split.us, %.lr.ph.us.backedge
  %indvars.iv = phi i64 [ %indvars.iv.be, %.lr.ph.us.backedge ], [ 0, %.split.us ] ; 3 uses
  %.02227.us31 = phi i32 [ %.02227.us31.be, %.lr.ph.us.backedge ], [ 0, %.split.us ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !31 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !31 ; 2 uses
  %.not.us32 = icmp slt i32 %i.cw, %i.cy
  br i1 %.not.us32, label %bb.e, label %Abc_TtSwapAdjacent.exit.us50

bb.e:                                             ; preds = %.lr.ph.us
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !31
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !31
  %i.cz = icmp ne i64 %indvars.iv, 5
  %brmerge = or i1 %i.cz, %3
  br i1 %brmerge, label %Abc_TtSwapAdjacent.exit.us50, label %.lr.ph.i.us47

.lr.ph.i.us47:                                    ; preds = %bb.e, %.lr.ph.i.us47
  %.05462.i.us48 = phi ptr [ %i.dd, %.lr.ph.i.us47 ], [ %0, %bb.e ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.05462.i.us48, i64 4 ; 2 uses
  %i.db = load <2 x i32>, ptr %i.da, align 4, !tbaa !31
  %i.dc = shufflevector <2 x i32> %i.db, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.dc, ptr %i.da, align 4, !tbaa !31
  %i.dd = getelementptr inbounds nuw i8, ptr %.05462.i.us48, i64 16 ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.h
  br i1 %i.de, label %.lr.ph.i.us47, label %Abc_TtSwapAdjacent.exit.us50, !llvm.loop !3

Abc_TtSwapAdjacent.exit.us50:                     ; preds = %.lr.ph.i.us47, %bb.e, %.lr.ph.us
  %.1.us51 = phi i32 [ %.02227.us31, %.lr.ph.us ], [ 1, %bb.e ], [ 1, %.lr.ph.i.us47 ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count74
  br i1 %exitcond.not, label %._crit_edge.split.us52, label %.lr.ph.us.backedge

.lr.ph.us.backedge:                               ; preds = %Abc_TtSwapAdjacent.exit.us50, %._crit_edge.split.us52
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %Abc_TtSwapAdjacent.exit.us50 ], [ 0, %._crit_edge.split.us52 ]
  %.02227.us31.be = phi i32 [ %.1.us51, %Abc_TtSwapAdjacent.exit.us50 ], [ 0, %._crit_edge.split.us52 ]
  br label %.lr.ph.us

._crit_edge.split.us52:                           ; preds = %Abc_TtSwapAdjacent.exit.us50
  %.not.not.us = icmp eq i32 %.1.us51, 0
  br i1 %.not.not.us, label %.split55.us, label %.lr.ph.us.backedge

.split55.us:                                      ; preds = %._crit_edge.split.us52, %._crit_edge.split.us.us.us.split.us.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Extra_ThreshSortByChowInverted(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = icmp slt i32 %1, 7
  %i.c = add nsw i32 %1, -6
  %i.d = shl nuw i32 1, %i.c
  %.fr = freeze i32 %i.d
  %i.e = select i1 %i.b, i32 1, i32 %.fr          ; 5 uses
  %i.f = icmp sgt i32 %1, 1
  %i.g = sext i32 %i.e to i64
  %.idx65.i.a = shl nsw i64 %i.g, 3               ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 %.idx65.i.a ; 3 uses
  %3 = icmp slt i32 %i.e, 1                       ; 2 uses
  %wide.trip.count73.i = zext i32 %i.e to i64     ; 3 uses
  br i1 %i.f, label %.split.us, label %.split55.us

.split.us:                                        ; preds = %bb.a
  %i.i = add nsw i32 %1, -1
  %i.j = icmp sgt i32 %i.e, 0
  %wide.trip.count74 = zext i32 %i.i to i64       ; 2 uses
  br i1 %i.j, label %.lr.ph.us.us.us.preheader, label %.lr.ph.us

.lr.ph.us.us.us.preheader:                        ; preds = %.split.us
  %i.k = add i64 %.idx65.i.a, %i.a
  %min.iters.check = icmp ult i32 %i.e, 4
  %n.vec = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.backedge, %.lr.ph.us.us.us.preheader
  %indvars.iv71 = phi i64 [ 0, %.lr.ph.us.us.us.preheader ], [ %indvars.iv71.be, %.lr.ph.us.us.us.backedge ] ; 8 uses
  %.02227.us.us.us.us.us = phi i32 [ 0, %.lr.ph.us.us.us.preheader ], [ %.02227.us.us.us.us.us.be, %.lr.ph.us.us.us.backedge ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv71 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31   ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next72 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31   ; 2 uses
  %.not.us.us.us.us.us = icmp sgt i32 %i.m, %i.o
  br i1 %.not.us.us.us.us.us, label %bb.b, label %Abc_TtSwapAdjacent.exit.us.us.us.us.us

bb.b:                                             ; preds = %.lr.ph.us.us.us
  store i32 %i.o, ptr %i.l, align 4, !tbaa !31
  store i32 %i.m, ptr %i.n, align 4, !tbaa !31
  %i.p = icmp samesign ult i64 %indvars.iv71, 5
  br i1 %i.p, label %.lr.ph64.i.us.us.us.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %indvars.iv71, 5
  br i1 %i.q, label %bb.d, label %.preheader.lr.ph.i.us.us.us.us.us

.preheader.lr.ph.i.us.us.us.us.us:                ; preds = %bb.c
  %i.r = icmp samesign ult i64 %indvars.iv71, 7
  %i.s = trunc i64 %indvars.iv71 to i32
  %i.t = add i32 %i.s, -6
  %i.u = shl nuw i32 1, %i.t
  %i.v = select i1 %i.r, i32 1, i32 %i.u          ; 7 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = shl i32 %i.v, 2                          ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 3 uses
  br i1 %i.w, label %.preheader.us.preheader.i.us.us.us.us.us, label %Abc_TtSwapAdjacent.exit.us.us.us.us.us

.preheader.us.preheader.i.us.us.us.us.us:         ; preds = %.preheader.lr.ph.i.us.us.us.us.us
  %i.z = shl nuw nsw i32 %i.v, 1
  %i.aa = zext nneg i32 %i.v to i64               ; 6 uses
  %i.ab = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ac = shl nsw i64 %i.y, 3                     ; 4 uses
  %i.ad = add i64 %i.ac, %i.a
  %umax = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.ad)
  %i.ae = sub i64 %umax, %i.a                     ; 2 uses
  %i.af = icmp ne i64 %i.ae, %i.ac
  %umin = zext i1 %i.af to i64                    ; 2 uses
  %i.ag = or disjoint i64 %i.ac, %umin
  %i.ah = sub i64 %i.ae, %i.ag
  %umax102 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ai = udiv i64 %i.ah, %umax102
  %i.aj = add i64 %i.ai, %umin
  %i.ak = shl i64 %i.aj, 3
  %i.al = mul i64 %i.ak, %i.y                     ; 2 uses
  %i.am = shl nuw nsw i64 %i.aa, 3                ; 2 uses
  %i.an = shl nuw nsw i64 %i.ab, 3                ; 2 uses
  %i.ao = getelementptr i8, ptr %0, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.am
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.an
  %scevgep103 = getelementptr i8, ptr %0, i64 %i.an
  %i.aq = shl nuw nsw i64 %i.aa, 4
  %i.ar = getelementptr i8, ptr %0, i64 %i.al
  %scevgep104 = getelementptr i8, ptr %i.ar, i64 %i.aq
  %scevgep105 = getelementptr i8, ptr %0, i64 %i.am
  %min.iters.check107 = icmp ult i32 %i.v, 4
  %bound0 = icmp ult ptr %scevgep105, %scevgep
  %bound1 = icmp ult ptr %scevgep103, %scevgep104
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.x, 0
  %i.as = or i1 %found.conflict, %stride.check
  %n.vec109 = and i64 %i.aa, 2147483644
  %xtraiter = and i64 %i.aa, 1
  %i.at = icmp eq i32 %i.v, 1
  %unroll_iter = and i64 %i.aa, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod124 = trunc i32 %i.v to i1
  br label %.preheader.us.i.us.us.us.us.us

.preheader.us.i.us.us.us.us.us:                   ; preds = %._crit_edge.us.i.us.us.us.us.us, %.preheader.us.preheader.i.us.us.us.us.us
  %.061.us.i.us.us.us.us.us = phi ptr [ %i.bf, %._crit_edge.us.i.us.us.us.us.us ], [ %0, %.preheader.us.preheader.i.us.us.us.us.us ] ; 3 uses
  %invariant.gep.i.us.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.us, i64 %i.aa ; 4 uses
  %invariant.gep80.i.us.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.us, i64 %i.ab ; 4 uses
  %brmerge125 = select i1 %min.iters.check107, i1 true, i1 %i.as
  br i1 %brmerge125, label %scalar.ph106.preheader, label %vector.body110

scalar.ph106.preheader:                           ; preds = %.preheader.us.i.us.us.us.us.us
  br i1 %i.at, label %scalar.ph106.epil.preheader, label %scalar.ph106

vector.body110:                                   ; preds = %.preheader.us.i.us.us.us.us.us, %vector.body110
  %index111 = phi i64 [ %index.next116, %vector.body110 ], [ 0, %.preheader.us.i.us.us.us.us.us ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.us, i64 %index111 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %wide.load112 = load <2 x i64>, ptr %i.au, align 8, !tbaa !34, !alias.scope !65, !noalias !66
  %wide.load113 = load <2 x i64>, ptr %i.av, align 8, !tbaa !34, !alias.scope !65, !noalias !66
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.us, i64 %index111 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %wide.load114 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !34, !alias.scope !66
  %wide.load115 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !34, !alias.scope !66
  store <2 x i64> %wide.load114, ptr %i.au, align 8, !tbaa !34, !alias.scope !65, !noalias !66
  store <2 x i64> %wide.load115, ptr %i.av, align 8, !tbaa !34, !alias.scope !65, !noalias !66
  store <2 x i64> %wide.load112, ptr %i.aw, align 8, !tbaa !34, !alias.scope !66
  store <2 x i64> %wide.load113, ptr %i.ax, align 8, !tbaa !34, !alias.scope !66
  %index.next116 = add nuw i64 %index111, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next116, %n.vec109
  br i1 %i.ay, label %._crit_edge.us.i.us.us.us.us.us, label %vector.body110, !llvm.loop !61

scalar.ph106:                                     ; preds = %scalar.ph106.preheader, %scalar.ph106
  %indvars.iv.i.us.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.1, %scalar.ph106 ], [ 0, %scalar.ph106.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph106 ], [ 0, %scalar.ph106.preheader ]
  %gep.i.us.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.us, i64 %indvars.iv.i.us.us.us.us.us ; 2 uses
  %i.az = load i64, ptr %gep.i.us.us.us.us.us, align 8, !tbaa !34
  %gep81.i.us.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.us, i64 %indvars.iv.i.us.us.us.us.us ; 2 uses
  %i.ba = load i64, ptr %gep81.i.us.us.us.us.us, align 8, !tbaa !34
  store i64 %i.ba, ptr %gep.i.us.us.us.us.us, align 8, !tbaa !34
  store i64 %i.az, ptr %gep81.i.us.us.us.us.us, align 8, !tbaa !34
  %indvars.iv.next.i.us.us.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us.us.us, 1 ; 2 uses
  %gep.i.us.us.us.us.us.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us ; 2 uses
  %i.bb = load i64, ptr %gep.i.us.us.us.us.us.1, align 8, !tbaa !34
  %gep81.i.us.us.us.us.us.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us ; 2 uses
  %i.bc = load i64, ptr %gep81.i.us.us.us.us.us.1, align 8, !tbaa !34
  store i64 %i.bc, ptr %gep.i.us.us.us.us.us.1, align 8, !tbaa !34
  store i64 %i.bb, ptr %gep81.i.us.us.us.us.us.1, align 8, !tbaa !34
  %indvars.iv.next.i.us.us.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.us.us.us.us.loopexit.unr-lcssa, label %scalar.ph106, !llvm.loop !62

._crit_edge.us.i.us.us.us.us.us.loopexit.unr-lcssa: ; preds = %scalar.ph106
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us.us.us.us.us, label %scalar.ph106.epil.preheader

scalar.ph106.epil.preheader:                      ; preds = %._crit_edge.us.i.us.us.us.us.us.loopexit.unr-lcssa, %scalar.ph106.preheader
  %indvars.iv.i.us.us.us.us.us.epil.init = phi i64 [ 0, %scalar.ph106.preheader ], [ %indvars.iv.next.i.us.us.us.us.us.1, %._crit_edge.us.i.us.us.us.us.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod124)
  %gep.i.us.us.us.us.us.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.us, i64 %indvars.iv.i.us.us.us.us.us.epil.init ; 2 uses
  %i.bd = load i64, ptr %gep.i.us.us.us.us.us.epil, align 8, !tbaa !34
  %gep81.i.us.us.us.us.us.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.us, i64 %indvars.iv.i.us.us.us.us.us.epil.init ; 2 uses
  %i.be = load i64, ptr %gep81.i.us.us.us.us.us.epil, align 8, !tbaa !34
  store i64 %i.be, ptr %gep.i.us.us.us.us.us.epil, align 8, !tbaa !34
  store i64 %i.bd, ptr %gep81.i.us.us.us.us.us.epil, align 8, !tbaa !34
  br label %._crit_edge.us.i.us.us.us.us.us

._crit_edge.us.i.us.us.us.us.us:                  ; preds = %vector.body110, %scalar.ph106.epil.preheader, %._crit_edge.us.i.us.us.us.us.us.loopexit.unr-lcssa
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.us, i64 %i.y ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.h
  br i1 %i.bg, label %.preheader.us.i.us.us.us.us.us, label %Abc_TtSwapAdjacent.exit.us.us.us.us.us, !llvm.loop !2

bb.d:                                             ; preds = %bb.c
  br i1 %3, label %Abc_TtSwapAdjacent.exit.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us

.lr.ph.i.us.us.us.us.us:                          ; preds = %bb.d, %.lr.ph.i.us.us.us.us.us
  %.05462.i.us.us.us.us.us = phi ptr [ %i.bk, %.lr.ph.i.us.us.us.us.us ], [ %0, %bb.d ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.us, i64 4 ; 2 uses
  %i.bi = load <2 x i32>, ptr %i.bh, align 4, !tbaa !31
  %i.bj = shufflevector <2 x i32> %i.bi, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bj, ptr %i.bh, align 4, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.us, i64 16 ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %i.h
  br i1 %i.bl, label %.lr.ph.i.us.us.us.us.us, label %Abc_TtSwapAdjacent.exit.us.us.us.us.us, !llvm.loop !3

.lr.ph64.i.us.us.us.us.us:                        ; preds = %bb.b
  %i.bm = trunc nuw nsw i64 %indvars.iv71 to i32
  %i.bn = shl nuw nsw i32 1, %i.bm
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr @s_PMasks, i64 %indvars.iv71 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !34 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !34 ; 2 uses
  %i.bs = zext nneg i32 %i.bn to i64              ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !34 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph64.i.us.us.us.us.us
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bp, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert91 = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %broadcast.splat92 = shufflevector <2 x i64> %broadcast.splatinsert91, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert93 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat94 = shufflevector <2 x i64> %broadcast.splatinsert93, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert95 = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat96 = shufflevector <2 x i64> %broadcast.splatinsert95, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bv, align 8, !tbaa !34 ; 3 uses
  %wide.load97 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !34 ; 3 uses
  %i.bx = and <2 x i64> %wide.load, %broadcast.splat
  %i.by = and <2 x i64> %wide.load97, %broadcast.splat
  %i.bz = and <2 x i64> %wide.load, %broadcast.splat92
  %i.ca = and <2 x i64> %wide.load97, %broadcast.splat92
  %i.cb = shl <2 x i64> %i.bz, %broadcast.splat94
  %i.cc = shl <2 x i64> %i.ca, %broadcast.splat94
  %i.cd = or <2 x i64> %i.cb, %i.bx
  %i.ce = or <2 x i64> %i.cc, %i.by
  %i.cf = and <2 x i64> %wide.load, %broadcast.splat96
  %i.cg = and <2 x i64> %wide.load97, %broadcast.splat96
  %i.ch = lshr <2 x i64> %i.cf, %broadcast.splat94
  %i.ci = lshr <2 x i64> %i.cg, %broadcast.splat94
  %i.cj = or <2 x i64> %i.cd, %i.ch
  %i.ck = or <2 x i64> %i.ce, %i.ci
  store <2 x i64> %i.cj, ptr %i.bv, align 8, !tbaa !34
  store <2 x i64> %i.ck, ptr %i.bw, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtSwapAdjacent.exit.us.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph64.i.us.us.us.us.us, %middle.block
  %indvars.iv70.i.us.us.us.us.us.ph = phi i64 [ 0, %.lr.ph64.i.us.us.us.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv70.i.us.us.us.us.us = phi i64 [ %indvars.iv.next71.i.us.us.us.us.us, %scalar.ph ], [ %indvars.iv70.i.us.us.us.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i.us.us.us.us.us ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !34 ; 3 uses
  %i.co = and i64 %i.cn, %i.bp
  %i.cp = and i64 %i.cn, %i.br
  %i.cq = shl i64 %i.cp, %i.bs
  %i.cr = or i64 %i.cq, %i.co
  %i.cs = and i64 %i.cn, %i.bu
  %i.ct = lshr i64 %i.cs, %i.bs
  %i.cu = or i64 %i.cr, %i.ct
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !34
  %indvars.iv.next71.i.us.us.us.us.us = add nuw nsw i64 %indvars.iv70.i.us.us.us.us.us, 1 ; 2 uses
  %exitcond74.not.i.us.us.us.us.us = icmp eq i64 %indvars.iv.next71.i.us.us.us.us.us, %wide.trip.count73.i
  br i1 %exitcond74.not.i.us.us.us.us.us, label %Abc_TtSwapAdjacent.exit.us.us.us.us.us, label %scalar.ph, !llvm.loop !64

Abc_TtSwapAdjacent.exit.us.us.us.us.us:           ; preds = %._crit_edge.us.i.us.us.us.us.us, %.lr.ph.i.us.us.us.us.us, %scalar.ph, %middle.block, %bb.d, %.preheader.lr.ph.i.us.us.us.us.us, %.lr.ph.us.us.us
  %.1.us.us.us.us.us = phi i32 [ %.02227.us.us.us.us.us, %.lr.ph.us.us.us ], [ 1, %.preheader.lr.ph.i.us.us.us.us.us ], [ 1, %middle.block ], [ 1, %bb.d ], [ 1, %.lr.ph.i.us.us.us.us.us ], [ 1, %scalar.ph ], [ 1, %._crit_edge.us.i.us.us.us.us.us ] ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %._crit_edge.split.us.us.us.split.us.us, label %.lr.ph.us.us.us.backedge

.lr.ph.us.us.us.backedge:                         ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.us, %._crit_edge.split.us.us.us.split.us.us
  %indvars.iv71.be = phi i64 [ %indvars.iv.next72, %Abc_TtSwapAdjacent.exit.us.us.us.us.us ], [ 0, %._crit_edge.split.us.us.us.split.us.us ]
  %.02227.us.us.us.us.us.be = phi i32 [ %.1.us.us.us.us.us, %Abc_TtSwapAdjacent.exit.us.us.us.us.us ], [ 0, %._crit_edge.split.us.us.us.split.us.us ]
  br label %.lr.ph.us.us.us

._crit_edge.split.us.us.us.split.us.us:           ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.us
  %.not.not.us.us.us = icmp eq i32 %.1.us.us.us.us.us, 0
  br i1 %.not.not.us.us.us, label %.split55.us, label %.lr.ph.us.us.us.backedge

.lr.ph.us:                                        ; preds = %.split.us, %.lr.ph.us.backedge
  %indvars.iv = phi i64 [ %indvars.iv.be, %.lr.ph.us.backedge ], [ 0, %.split.us ] ; 3 uses
  %.02227.us31 = phi i32 [ %.02227.us31.be, %.lr.ph.us.backedge ], [ 0, %.split.us ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !31 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !31 ; 2 uses
  %.not.us32 = icmp sgt i32 %i.cw, %i.cy
  br i1 %.not.us32, label %bb.e, label %Abc_TtSwapAdjacent.exit.us50

bb.e:                                             ; preds = %.lr.ph.us
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !31
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !31
  %i.cz = icmp ne i64 %indvars.iv, 5
  %brmerge = or i1 %i.cz, %3
  br i1 %brmerge, label %Abc_TtSwapAdjacent.exit.us50, label %.lr.ph.i.us47

.lr.ph.i.us47:                                    ; preds = %bb.e, %.lr.ph.i.us47
  %.05462.i.us48 = phi ptr [ %i.dd, %.lr.ph.i.us47 ], [ %0, %bb.e ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.05462.i.us48, i64 4 ; 2 uses
  %i.db = load <2 x i32>, ptr %i.da, align 4, !tbaa !31
  %i.dc = shufflevector <2 x i32> %i.db, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.dc, ptr %i.da, align 4, !tbaa !31
  %i.dd = getelementptr inbounds nuw i8, ptr %.05462.i.us48, i64 16 ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.h
  br i1 %i.de, label %.lr.ph.i.us47, label %Abc_TtSwapAdjacent.exit.us50, !llvm.loop !3

Abc_TtSwapAdjacent.exit.us50:                     ; preds = %.lr.ph.i.us47, %bb.e, %.lr.ph.us
  %.1.us51 = phi i32 [ %.02227.us31, %.lr.ph.us ], [ 1, %bb.e ], [ 1, %.lr.ph.i.us47 ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count74
  br i1 %exitcond.not, label %._crit_edge.split.us52, label %.lr.ph.us.backedge

.lr.ph.us.backedge:                               ; preds = %Abc_TtSwapAdjacent.exit.us50, %._crit_edge.split.us52
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %Abc_TtSwapAdjacent.exit.us50 ], [ 0, %._crit_edge.split.us52 ]
  %.02227.us31.be = phi i32 [ %.1.us51, %Abc_TtSwapAdjacent.exit.us50 ], [ 0, %._crit_edge.split.us52 ]
  br label %.lr.ph.us

._crit_edge.split.us52:                           ; preds = %Abc_TtSwapAdjacent.exit.us50
  %.not.not.us = icmp eq i32 %.1.us51, 0
  br i1 %.not.not.us, label %.split55.us, label %.lr.ph.us.backedge

.split55.us:                                      ; preds = %._crit_edge.split.us52, %._crit_edge.split.us.us.us.split.us.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -2147483647, -2147483648) i32 @Extra_ThreshInitializeChow(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 16, !tbaa !31
  %exitcond.peel.not = icmp eq i32 %0, 1
  br i1 %exitcond.peel.not, label %.lr.ph26.preheader, label %.lr.ph.peel.next.preheader

.lr.ph.peel.next.preheader:                       ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %0 to i64
  %i.c = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.c, 1
  %i.d = icmp eq i32 %0, 2
  br i1 %i.d, label %.lr.ph.peel.next.epil.preheader, label %.lr.ph.peel.next.preheader.new

.lr.ph.peel.next.preheader.new:                   ; preds = %.lr.ph.peel.next.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %.lr.ph.peel.next

.preheader.unr-lcssa:                             ; preds = %.lr.ph.peel.next
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.peel.next.epil.preheader

.lr.ph.peel.next.epil.preheader:                  ; preds = %.preheader.unr-lcssa, %.lr.ph.peel.next.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.peel.next.preheader ], [ %indvars.iv.next.1, %.preheader.unr-lcssa ] ; 2 uses
  %.024.epil.init = phi i32 [ 0, %.lr.ph.peel.next.preheader ], [ %.024.sink.1, %.preheader.unr-lcssa ]
  %lcmp.mod40 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %i.g = getelementptr i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31
  %i.i = icmp ne i32 %i.f, %i.h
  %i.j = zext i1 %i.i to i32
  %.024.sink.epil = add nuw nsw i32 %.024.epil.init, %i.j ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i32 %.024.sink.epil, ptr %i.k, align 4, !tbaa !31
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.lr.ph.peel.next.epil.preheader
  %.024.sink.lcssa = phi i32 [ %.024.sink.1, %.preheader.unr-lcssa ], [ %.024.sink.epil, %.lr.ph.peel.next.epil.preheader ]
  %i.l = add nuw nsw i32 %.024.sink.lcssa, 1
  br label %.lr.ph26.preheader

.lr.ph26.preheader:                               ; preds = %.preheader, %bb.b
  %.0.lcssa36 = phi i32 [ %i.l, %.preheader ], [ 1, %bb.b ]
  %i.m = zext nneg i32 %0 to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !31
  br label %._crit_edge

.lr.ph.peel.next:                                 ; preds = %.lr.ph.peel.next, %.lr.ph.peel.next.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.peel.next.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.peel.next ] ; 4 uses
  %.024 = phi i32 [ 0, %.lr.ph.peel.next.preheader.new ], [ %.024.sink.1, %.lr.ph.peel.next ]
  %niter = phi i64 [ 0, %.lr.ph.peel.next.preheader.new ], [ %niter.next.1, %.lr.ph.peel.next ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31   ; 2 uses
  %i.q = getelementptr i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !31
  %i.s = icmp ne i32 %i.p, %i.r
  %i.t = zext i1 %i.s to i32
  %.024.sink = add nuw nsw i32 %.024, %i.t        ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %.024.sink, ptr %i.u, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.w = load i32, ptr %i.v, align 4, !tbaa !31
  %i.x = icmp ne i32 %i.w, %i.p
  %i.y = zext i1 %i.x to i32
  %.024.sink.1 = add nuw nsw i32 %.024.sink, %i.y ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  store i32 %.024.sink.1, ptr %i.z, align 4, !tbaa !31
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %.lr.ph.peel.next, !llvm.loop !4

._crit_edge:                                      ; preds = %bb.a, %.lr.ph26.preheader
  %.0.lcssa35 = phi i32 [ %.0.lcssa36, %.lr.ph26.preheader ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0.lcssa35
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 10001) i32 @Extra_ThreshSelectWeights3(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((8, 12)) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = shl nuw i32 1, %1
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 1, ptr %i.b, align 4, !tbaa !31
  %.not71 = icmp slt i32 %1, 1
  br i1 %.not71, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %.not = icmp eq i32 %1, 31
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 5 uses
  br i1 %.not, label %.lr.ph.split, label %.split.us.us.preheader

.split.us.us.preheader:                           ; preds = %.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %i.d = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.e = icmp eq i64 %i.d, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod88 = trunc i32 %1 to i1
  %xtraiter89 = and i64 %wide.trip.count.i, 1
  %i.f = icmp eq i64 %i.d, 0
  %unroll_iter93 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  %lcmp.mod92 = trunc i32 %1 to i1
  br label %.split.us.us

.split.us.us:                                     ; preds = %.split.us.us.preheader, %.split68.us.us
  %storemerge72.us = phi i32 [ %i.bd, %.split68.us.us ], [ 1, %.split.us.us.preheader ] ; 4 uses
  store i32 %storemerge72.us, ptr %i.c, align 4, !tbaa !31
  br label %.preheader58.us.us

.preheader58.us.us:                               ; preds = %bb.n, %.split.us.us
  %storemerge4066.us.us = phi i32 [ %storemerge72.us, %.split.us.us ], [ %i.bc, %bb.n ] ; 4 uses
  store i32 %storemerge4066.us.us, ptr %2, align 4, !tbaa !31
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.m, %.preheader58.us.us
  %storemerge4265.us.us = phi i32 [ %storemerge4066.us.us, %.preheader58.us.us ], [ %i.bb, %bb.m ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %.preheader.us.us
  %.063.us.us = phi i32 [ 0, %.preheader.us.us ], [ %.1.us.us, %bb.l ] ; 2 uses
  %.03362.us.us = phi i32 [ 10000, %.preheader.us.us ], [ %.134.us.us, %bb.l ] ; 2 uses
  %.03561.us.us = phi i32 [ 0, %.preheader.us.us ], [ %i.ba, %bb.l ] ; 9 uses
  %i.g = lshr i32 %.03561.us.us, 6
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !34
  %i.k = and i32 %.03561.us.us, 63
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw i64 1, %i.l
  %i.n = and i64 %i.j, %i.m
  %.not44.us.us = icmp eq i64 %i.n, 0
  br i1 %.not44.us.us, label %.lr.ph.i49.us.us.preheader, label %.lr.ph.i.us.us.preheader

.lr.ph.i.us.us.preheader:                         ; preds = %bb.b
  br i1 %i.e, label %.lr.ph.i.us.us.epil.preheader, label %.lr.ph.i.us.us

.lr.ph.i49.us.us.preheader:                       ; preds = %bb.b
  br i1 %i.f, label %.lr.ph.i49.us.us.epil.preheader, label %.lr.ph.i49.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us.preheader, %bb.e
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us.1, %bb.e ], [ 0, %.lr.ph.i.us.us.preheader ] ; 4 uses
  %.010.i.us.us = phi i32 [ %.1.i.us.us.1, %bb.e ], [ 0, %.lr.ph.i.us.us.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.lr.ph.i.us.us.preheader ]
  %i.o = trunc nuw nsw i64 %indvars.iv.i.us.us to i32
  %i.p = shl nuw i32 1, %i.o
  %i.q = and i32 %i.p, %.03561.us.us
  %.not.i.us.us = icmp eq i32 %i.q, 0
  br i1 %.not.i.us.us, label %.lr.ph.i.us.us.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.us.us
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.us.us
  %i.s = load i32, ptr %i.r, align 4, !tbaa !31
  %i.t = add nsw i32 %i.s, %.010.i.us.us
  br label %.lr.ph.i.us.us.1

.lr.ph.i.us.us.1:                                 ; preds = %bb.c, %.lr.ph.i.us.us
  %.1.i.us.us = phi i32 [ %i.t, %bb.c ], [ %.010.i.us.us, %.lr.ph.i.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us = or disjoint i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %i.u = trunc nuw nsw i64 %indvars.iv.next.i.us.us to i32
  %i.v = shl nuw i32 1, %i.u
  %i.w = and i32 %i.v, %.03561.us.us
  %.not.i.us.us.1 = icmp eq i32 %i.w, 0
  br i1 %.not.i.us.us.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.us.us.1
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i.us.us
end_hunk_0
