Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/kitDsd?download=true
inline.NumInlined: 404
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 78
begin_hunk_0_@Kit_DsdCountAigNodes:bb.a
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i32 %i.g, 26
  %i.k = add i32 %.016, -1
  %i.l = add i32 %i.k, %i.j
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.m = lshr i32 %i.g, 26
  %i.n = mul nuw nsw i32 %i.m, 3
  %i.o = add i32 %.016, -3
  %i.p = add i32 %i.o, %i.n
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.q = add nsw i32 %.016, 3
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.1 = phi i32 [ %i.l, %bb.c ], [ %i.p, %bb.d ], [ %i.q, %bb.e ], [ %.016, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !337

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.f ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @Kit_DsdRootNodeHasCommonVars(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = lshr i32 %i.a, 26                        ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit14, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %wide.trip.count25 = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph18, %.loopexit
  %indvars.iv22 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next23, %.loopexit ] ; 2 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv22
  %i.f = load i16, ptr %i.e, align 2, !tbaa !56   ; 2 uses
  %i.g = icmp ugt i16 %i.f, 7
  br i1 %i.g, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = load i32, ptr %1, align 4
  %i.i = lshr i32 %i.h, 26                        ; 2 uses
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !6

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !56
  %.unshifted = xor i16 %i.k, %i.f
  %i.l = icmp ult i16 %.unshifted, 2
  br i1 %i.l, label %.loopexit14, label %bb.c

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.b
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count25
  br i1 %exitcond26.not, label %.loopexit14, label %bb.b, !llvm.loop !7

.loopexit14:                                      ; preds = %.loopexit, %.lr.ph, %bb.a
  %.013 = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph ], [ 0, %.loopexit ]
  ret i32 %.013
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Kit_DsdCheckVar4Dec2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i16, ptr %i.a, align 2, !tbaa !57
  %i.c = lshr i16 %i.b, 1                         ; 3 uses
  %i.d = zext nneg i16 %i.c to i32
  %i.e = tail call range(i32 0, 2) i32 @Kit_DsdFindLargeBox_rec(ptr noundef readonly %0, i32 noundef %i.d, i32 noundef 2)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %Kit_DsdRootNodeHasCommonVars.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.g = load i16, ptr %i.f, align 2, !tbaa !57
  %i.h = lshr i16 %i.g, 1                         ; 3 uses
  %i.i = zext nneg i16 %i.h to i32
  %i.j = tail call range(i32 0, 2) i32 @Kit_DsdFindLargeBox_rec(ptr noundef readonly %1, i32 noundef %i.i, i32 noundef 2)
  %.not4 = icmp eq i32 %i.j, 0
  br i1 %.not4, label %bb.c, label %Kit_DsdRootNodeHasCommonVars.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load i16, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.l = icmp ult i16 %i.c, %i.k
  br i1 %i.l, label %Kit_DsdNtkRoot.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %narrow.i = sub nuw nsw i16 %i.c, %i.k
  %i.o = zext nneg i16 %narrow.i to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52
  br label %Kit_DsdNtkRoot.exit

Kit_DsdNtkRoot.exit:                              ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %i.q, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.s = load i16, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.t = icmp ult i16 %i.h, %i.s
  br i1 %i.t, label %Kit_DsdNtkRoot.exit6, label %bb.e

bb.e:                                             ; preds = %Kit_DsdNtkRoot.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  %narrow.i5 = sub nuw nsw i16 %i.h, %i.s
  %i.w = zext nneg i16 %narrow.i5 to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !52
  br label %Kit_DsdNtkRoot.exit6

Kit_DsdNtkRoot.exit6:                             ; preds = %Kit_DsdNtkRoot.exit, %bb.e
  %i.z = phi ptr [ %i.y, %bb.e ], [ null, %Kit_DsdNtkRoot.exit ] ; 2 uses
  %i.aa = load i32, ptr %i.r, align 4
  %i.ab = lshr i32 %i.aa, 26                      ; 2 uses
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %Kit_DsdRootNodeHasCommonVars.exit, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %Kit_DsdNtkRoot.exit6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %wide.trip.count25.i = zext nneg i32 %i.ab to i64
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i, %.lr.ph18.i
  %indvars.iv22.i = phi i64 [ 0, %.lr.ph18.i ], [ %indvars.iv.next23.i, %.loopexit.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv22.i
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !56 ; 2 uses
  %i.ag = icmp ugt i16 %i.af, 7
  br i1 %i.ag, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.ah = load i32, ptr %i.z, align 4
  %i.ai = lshr i32 %i.ah, 26                      ; 2 uses
  %.not19.i = icmp eq i32 %i.ai, 0
  br i1 %.not19.i, label %.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.ai to i64
  br label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !6

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !56
  %.unshifted.i = xor i16 %i.ak, %i.af
  %i.al = icmp ult i16 %.unshifted.i, 2
  br i1 %i.al, label %Kit_DsdRootNodeHasCommonVars.exit, label %bb.g

.loopexit.i:                                      ; preds = %bb.g, %.preheader.i, %bb.f
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1 ; 2 uses
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next23.i, %wide.trip.count25.i
  br i1 %exitcond26.not.i, label %Kit_DsdRootNodeHasCommonVars.exit, label %bb.f, !llvm.loop !7

Kit_DsdRootNodeHasCommonVars.exit:                ; preds = %.loopexit.i, %.lr.ph.i, %Kit_DsdNtkRoot.exit6, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %Kit_DsdNtkRoot.exit6 ], [ 1, %.lr.ph.i ], [ 0, %.loopexit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @Kit_DsdDecompose_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %.phi.trans.insert.i624 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.d = icmp sgt i32 %4, 0
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %tailrecurse.outer.backedge, %bb.a
  %.tr643.ph = phi ptr [ %1, %bb.a ], [ %.tr643.ph.be, %tailrecurse.outer.backedge ] ; 58 uses
  %.tr644.ph = phi i32 [ %2, %bb.a ], [ %.tr644.ph.be, %tailrecurse.outer.backedge ]
  %.tr645.ph = phi ptr [ %3, %bb.a ], [ %.tr645.ph.be, %tailrecurse.outer.backedge ]
  %.tr643.ph1201 = ptrtoaddr ptr %.tr643.ph to i64 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.tr643.ph, i64 4 ; 24 uses
  br label %tailrecurse.outer654

tailrecurse.outer654:                             ; preds = %tailrecurse.outer654.backedge, %tailrecurse.outer
  %.tr644.ph655 = phi i32 [ %.tr644.ph, %tailrecurse.outer ], [ %i.kb, %tailrecurse.outer654.backedge ]
  %.tr645.ph656 = phi ptr [ %.tr645.ph, %tailrecurse.outer ], [ %i.kf, %tailrecurse.outer654.backedge ] ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %tailrecurse.outer654
  %.tr644 = phi i32 [ %.tr644.ph655, %tailrecurse.outer654 ], [ %.tr644.be, %tailrecurse.backedge ] ; 7 uses
  %i.f = load i32, ptr %.tr643.ph, align 4        ; 10 uses
  %i.g = lshr i32 %i.f, 26                        ; 3 uses
  %i.h = icmp ult i32 %i.f, 402653184             ; 3 uses
  %i.i = add nsw i32 %i.g, -5                     ; 3 uses
  %i.j = shl nuw i32 1, %i.i
  %i.k = select i1 %i.h, i32 1, i32 %i.j          ; 6 uses
  %i.l = and i32 %i.f, 448
  %i.m = icmp eq i32 %i.l, 320
  %i.n = lshr i32 %i.f, 10
  %i.o = and i32 %i.n, 255
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.p ; 14 uses
  %i.r = select i1 %i.m, ptr %i.q, ptr null       ; 12 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !53   ; 32 uses
  %i.t = sext i32 %i.k to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t ; 22 uses
  %i.v = shl nsw i32 %i.k, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.w ; 12 uses
  %i.y = shl i32 3, %i.i
  %i.z = select i1 %i.h, i32 3, i32 %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.aa ; 9 uses
  %i.ac = shl nsw i32 %i.k, 2
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ad ; 9 uses
  %i.af = shl i32 5, %i.i
  %i.ag = select i1 %i.h, i32 5, i32 %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ah ; 10 uses
  %i.aj = shl nsw i32 -1, %i.g
  %i.ak = xor i32 %i.aj, %.tr644
  %.not = icmp eq i32 %i.ak, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.al = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.tr644)
  tail call void @Kit_TruthShrink(ptr noundef %i.s, ptr noundef %i.r, i32 noundef %i.al, i32 noundef %i.g, i32 noundef %.tr644, i32 noundef 1) #29
  %i.am = load i32, ptr %.tr643.ph, align 4       ; 3 uses
  %.not755 = icmp ult i32 %i.am, 67108864
  br i1 %.not755, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.an = lshr i32 %i.am, 26                      ; 3 uses
  %i.ao = zext nneg i32 %i.an to i64              ; 2 uses
  %xtraiter = and i64 %i.ao, 1
  %i.ap = icmp eq i32 %i.an, 1
  br i1 %i.ap, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ao, 62
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.e ] ; 4 uses
  %.0721 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = and i32 %i.ar, %.tr644
  %.not501 = icmp eq i32 %i.as, 0
  br i1 %.not501, label %.lr.ph.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  %i.au = load i16, ptr %i.at, align 2, !tbaa !56
  %i.av = add i32 %.0721, 1
  %i.aw = zext i32 %.0721 to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.aw
  store i16 %i.au, ptr %i.ax, align 2, !tbaa !56
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.c
  %.1 = phi i32 [ %i.av, %bb.c ], [ %.0721, %.lr.ph ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = and i32 %i.az, %.tr644
  %.not501.1 = icmp eq i32 %i.ba, 0
  br i1 %.not501.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !56
  %i.bd = add i32 %.1, 1
  %i.be = zext i32 %.1 to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.be
  store i16 %i.bc, ptr %i.bf, align 2, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %.1.1 = phi i32 [ %i.bd, %bb.d ], [ %.1, %.lr.ph.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !338

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0721.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1385 = trunc i32 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod1385)
  %i.bg = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = and i32 %i.bh, %.tr644
  %.not501.epil = icmp eq i32 %i.bi, 0
  br i1 %.not501.epil, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph.epil.preheader
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !56
  %i.bl = add i32 %.0721.epil.init, 1
  %i.bm = zext i32 %.0721.epil.init to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bm
  store i16 %i.bk, ptr %i.bn, align 2, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.f, %.lr.ph.epil.preheader, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.bl, %bb.f ], [ %.0721.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %i.bo = shl i32 %.0.lcssa, 26
  %i.bp = and i32 %i.am, 67108863
  %i.bq = or disjoint i32 %i.bp, %i.bo            ; 2 uses
  store i32 %i.bq, ptr %.tr643.ph, align 4
  %i.br = and i32 %.0.lcssa, 63
  %i.bs = shl nsw i32 -1, %i.br
  %i.bt = xor i32 %i.bs, -1
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %tailrecurse
  %i.bu = phi i32 [ %i.bq, %._crit_edge ], [ %i.f, %tailrecurse ] ; 4 uses
  %.0475 = phi i32 [ %i.bt, %._crit_edge ], [ %.tr644, %tailrecurse ] ; 4 uses
  %i.bv = lshr i32 %i.bu, 26                      ; 3 uses
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bx = and i32 %i.bu, 134217279
  store i32 %i.bx, ptr %.tr643.ph, align 4
  %i.by = load i32, ptr %i.q, align 4, !tbaa !33
  %i.bz = icmp eq i32 %i.by, 1431655765
  %.pre873 = load i16, ptr %i.e, align 4, !tbaa !56 ; 2 uses
  br i1 %i.bz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ca = xor i16 %.pre873, 1                     ; 2 uses
  store i16 %i.ca, ptr %i.e, align 4, !tbaa !56
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.cb = phi i16 [ %.pre873, %bb.h ], [ %i.ca, %bb.i ]
  %i.cc = load i16, ptr %.tr645.ph656, align 2, !tbaa !56
  %i.cd = and i16 %i.cc, 1
  %i.ce = xor i16 %i.cd, %i.cb
  store i16 %i.ce, ptr %.tr645.ph656, align 2, !tbaa !56
  br label %.loopexit653

bb.k:                                             ; preds = %bb.g
  %i.cf = and i32 %i.bu, 512
  %.not486 = icmp eq i32 %i.cf, 0
  br i1 %.not486, label %.preheader.preheader, label %.loopexit652

.preheader.preheader:                             ; preds = %bb.k
  %.not1280 = icmp eq i32 %i.bv, 0
  %i.cg = load i32, ptr %.tr643.ph, align 4       ; 2 uses
  br i1 %.not1280, label %.loopexit652, label %.lr.ph1096

.preheader:                                       ; preds = %bb.l
  %i.ch = icmp sgt i32 %.04761095.in, 1
  %i.ci = load i32, ptr %.tr643.ph, align 4       ; 2 uses
  br i1 %i.ch, label %.lr.ph1096, label %.loopexit652, !llvm.loop !339

.lr.ph1096:                                       ; preds = %.preheader.preheader, %.preheader
  %i.cj = phi i32 [ %i.ci, %.preheader ], [ %i.cg, %.preheader.preheader ]
  %.04761095.in = phi i32 [ %.04761095, %.preheader ], [ %i.bv, %.preheader.preheader ] ; 2 uses
  %.04761095 = add nsw i32 %.04761095.in, -1      ; 6 uses
  %i.ck = lshr i32 %i.cj, 26
  tail call void @Kit_TruthCofactor0New(ptr noundef %i.s, ptr noundef %i.r, i32 noundef %i.ck, i32 noundef %.04761095) #29
  %i.cl = load i32, ptr %.tr643.ph, align 4
  %i.cm = lshr i32 %i.cl, 26
  tail call void @Kit_TruthCofactor1New(ptr noundef nonnull %i.u, ptr noundef %i.r, i32 noundef %i.cm, i32 noundef %.04761095) #29
  %i.cn = load i32, ptr %.tr643.ph, align 4       ; 2 uses
  %i.co = lshr i32 %i.cn, 26                      ; 2 uses
  %i.cp = icmp ult i32 %i.cn, 402653184
  %i.cq = add nsw i32 %i.co, -5
  %i.cr = shl nuw i32 1, %i.cq
  %spec.select.i = select i1 %i.cp, i32 1, i32 %i.cr ; 6 uses
  %i.cs = zext i32 %spec.select.i to i64          ; 5 uses
end_hunk_0
begin_hunk_1_@Kit_DsdDecompose_rec:bb.a

select.unfold.i528.preheader:                     ; preds = %vector.memcheck, %select.unfold.preheader.i527
  br label %select.unfold.i528

vector.memcheck:                                  ; preds = %select.unfold.preheader.i527
  %i.hb = sext i32 %i.k to i64
  %i.hc = shl nsw i64 %i.hb, 2
  %i.hd = shl nuw nsw i64 %i.gt, 2
  %i.he = add i64 %i.hc, %i.ek
  %i.hf = add i64 %i.hd, %i.es
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = add i64 %i.hg, -5
  %diff.check = icmp ult i64 %i.hh, 31
  br i1 %diff.check, label %select.unfold.i528.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ha, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hi = xor i64 %index, -1
  %i.hj = add i64 %i.hi, %i.ha                    ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 -12
  %i.hm = getelementptr inbounds i8, ptr %i.hk, i64 -28
  %wide.load = load <4 x i32>, ptr %i.hl, align 4, !tbaa !33
  %wide.load1149 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !33
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.hj ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 -12
  %i.hp = getelementptr inbounds i8, ptr %i.hn, i64 -28
  store <4 x i32> %wide.load, ptr %i.ho, align 4, !tbaa !33
  store <4 x i32> %wide.load1149, ptr %i.hp, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hq = icmp eq i64 %index.next, %n.vec
  br i1 %i.hq, label %Kit_TruthCopy.exit531.loopexit, label %vector.body, !llvm.loop !346

select.unfold.i528:                               ; preds = %select.unfold.i528.preheader, %select.unfold.i528
  %indvars.iv.i529 = phi i64 [ %indvars.iv.next.i530, %select.unfold.i528 ], [ %i.ha, %select.unfold.i528.preheader ] ; 2 uses
  %indvars.iv.next.i530 = add nsw i64 %indvars.iv.i529, -1 ; 3 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i530
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !33
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i530
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !33
  %i.hu = icmp samesign ugt i64 %indvars.iv.i529, 1
  br i1 %i.hu, label %select.unfold.i528, label %Kit_TruthCopy.exit531.loopexit, !llvm.loop !347

Kit_TruthCopy.exit531.loopexit:                   ; preds = %vector.body, %select.unfold.i528
  %.pre872 = load i32, ptr %.tr643.ph, align 4
  br label %Kit_TruthCopy.exit531

Kit_TruthCopy.exit531:                            ; preds = %Kit_TruthCopy.exit531.loopexit, %Kit_TruthCopy.exit
  %i.hv = phi i32 [ %.pre872, %Kit_TruthCopy.exit531.loopexit ], [ %i.go, %Kit_TruthCopy.exit ]
  store i32 -892679478, ptr %i.q, align 4, !tbaa !33
  %i.hw = and i32 %i.hv, 67108863
  %i.hx = or disjoint i32 %i.hw, 201326592
  store i32 %i.hx, ptr %.tr643.ph, align 4
  %i.hy = zext nneg i32 %.04761095 to i64
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !56
  %i.ib = getelementptr inbounds nuw i8, ptr %.tr643.ph, i64 8
  store i16 %i.ia, ptr %i.ib, align 4, !tbaa !56
  %i.ic = load i32, ptr %i.en, align 4
  %.tr493 = trunc i32 %i.ic to i16
  %i.id = shl i16 %.tr493, 1
  %i.ie = and i16 %i.id, 126
  store i16 %i.ie, ptr %i.e, align 4, !tbaa !56
  %i.if = load i32, ptr %i.en, align 4            ; 2 uses
  %i.ig = add i32 %i.if, 262144
  %i.ih = and i32 %i.ig, 66846720
  %i.ii = and i32 %i.if, -66846721
  %i.ij = or disjoint i32 %i.ih, %i.ii
  store i32 %i.ij, ptr %i.en, align 4
  %i.ik = load i32, ptr %i.er, align 4
  %.tr494 = trunc i32 %i.ik to i16
  %i.il = shl i16 %.tr494, 1
  %i.im = and i16 %i.il, 126
  %i.in = getelementptr inbounds nuw i8, ptr %.tr643.ph, i64 6 ; 2 uses
  store i16 %i.im, ptr %i.in, align 2, !tbaa !56
  %i.io = load i32, ptr %i.er, align 4            ; 2 uses
  %i.ip = add i32 %i.io, 262144
  %i.iq = and i32 %i.ip, 66846720
  %i.ir = and i32 %i.io, -66846721
  %i.is = or disjoint i32 %i.iq, %i.ir
  store i32 %i.is, ptr %i.er, align 4
  tail call void @Kit_DsdDecompose_rec(ptr noundef %0, ptr noundef nonnull %i.en, i32 noundef %i.ef, ptr noundef nonnull %i.e, i32 noundef %4)
  br label %tailrecurse.outer.backedge

tailrecurse.outer.backedge:                       ; preds = %Kit_TruthCopy.exit531, %Kit_TruthCopy.exit641
  %.tr643.ph.be = phi ptr [ %i.zr, %Kit_TruthCopy.exit641 ], [ %i.er, %Kit_TruthCopy.exit531 ]
  %.tr644.ph.be = phi i32 [ %i.zk, %Kit_TruthCopy.exit641 ], [ %i.ei, %Kit_TruthCopy.exit531 ]
  %.tr645.ph.be = phi ptr [ %i.adc, %Kit_TruthCopy.exit641 ], [ %i.in, %Kit_TruthCopy.exit531 ]
  br label %tailrecurse.outer

bb.s:                                             ; preds = %Kit_TruthIsOpposite.exit
  %i.it = ptrtoaddr ptr %i.s to i64               ; 5 uses
  %calloc.i = tail call dereferenceable_or_null(8) ptr @calloc(i64 1, i64 8) ; 7 uses
  %i.iu = load i16, ptr %0, align 8, !tbaa !47
  %i.iv = zext i16 %i.iu to i32
  %i.iw = load i16, ptr %i.b, align 4, !tbaa !48  ; 5 uses
  %i.ix = zext i16 %i.iw to i32
  %i.iy = add nuw nsw i32 %i.ix, %i.iv
  %i.iz = and i32 %i.iy, 63
  %i.ja = or disjoint i32 %i.iz, 134218944
  store i32 %i.ja, ptr %calloc.i, align 4
  %i.jb = load i16, ptr %i.c, align 2, !tbaa !49
  %i.jc = icmp eq i16 %i.iw, %i.jb
  br i1 %i.jc, label %bb.t, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.s
  %.pre.i = load ptr, ptr %.phi.trans.insert.i624, align 8, !tbaa !50
  br label %Kit_DsdObjAlloc.exit

bb.t:                                             ; preds = %bb.s
  %i.jd = shl i16 %i.iw, 1                        ; 2 uses
  store i16 %i.jd, ptr %i.c, align 2, !tbaa !49
  %i.je = load ptr, ptr %.phi.trans.insert.i624, align 8, !tbaa !50 ; 2 uses
  %.not.i532 = icmp eq ptr %i.je, null
  %i.jf = zext i16 %i.jd to i64
  %i.jg = shl nuw nsw i64 %i.jf, 3                ; 2 uses
  br i1 %.not.i532, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.jh = tail call ptr @realloc(ptr noundef nonnull %i.je, i64 noundef %i.jg) #30
  %.pre27.pre.i = load i16, ptr %i.b, align 4, !tbaa !48
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ji = tail call noalias ptr @malloc(i64 noundef %i.jg) #28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pre27.i = phi i16 [ %.pre27.pre.i, %bb.u ], [ %i.iw, %bb.v ]
  %i.jj = phi ptr [ %i.jh, %bb.u ], [ %i.ji, %bb.v ] ; 2 uses
  store ptr %i.jj, ptr %.phi.trans.insert.i624, align 8, !tbaa !50
  br label %Kit_DsdObjAlloc.exit

Kit_DsdObjAlloc.exit:                             ; preds = %._crit_edge.i, %bb.w
  %i.jk = phi i16 [ %i.iw, %._crit_edge.i ], [ %.pre27.i, %bb.w ] ; 2 uses
  %i.jl = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.jj, %bb.w ]
  %i.jm = add i16 %i.jk, 1
  store i16 %i.jm, ptr %i.b, align 4, !tbaa !48
  %i.jn = zext i16 %i.jk to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jn
  store ptr %calloc.i, ptr %i.jo, align 8, !tbaa !52
  %i.jp = load i32, ptr %calloc.i, align 4        ; 3 uses
  %i.jq = add i32 %i.jp, 262144
  %i.jr = and i32 %i.jq, 66846720
  %i.js = and i32 %i.jp, 262143
  %i.jt = or disjoint i32 %i.js, %i.jr
  %i.ju = or disjoint i32 %i.jt, 134217728        ; 2 uses
  store i32 %i.ju, ptr %calloc.i, align 4
  %i.jv = zext nneg i32 %.04761095 to i64
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.jv ; 2 uses
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !56 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4 ; 3 uses
  store i16 %i.jx, ptr %i.jy, align 4, !tbaa !56
  store i16 127, ptr %i.jw, align 2, !tbaa !56
  %i.jz = shl nuw i32 1, %.04761095
  %i.ka = xor i32 %i.jz, -1
  %i.kb = and i32 %.0475, %i.ka
  %i.kc = load i32, ptr %.tr643.ph, align 4
  %.tr = trunc i32 %i.kc to i16
  %i.kd = shl i16 %.tr, 1
  %i.ke = and i16 %i.kd, 126                      ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %calloc.i, i64 6 ; 4 uses
  store i16 %i.ke, ptr %i.kf, align 2, !tbaa !56
  %i.kg = load i16, ptr %.tr645.ph656, align 2, !tbaa !56
  %i.kh = and i16 %i.kg, 1
  %.tr890 = trunc i32 %i.jp to i16
  %i.ki = shl i16 %.tr890, 1
  %i.kj = and i16 %i.ki, 126
  %i.kk = or disjoint i16 %i.kj, %i.kh            ; 3 uses
  store i16 %i.kk, ptr %.tr645.ph656, align 2, !tbaa !56
  br i1 %.lcssa, label %bb.y, label %bb.x

bb.x:                                             ; preds = %Kit_DsdObjAlloc.exit
  %i.kl = load i32, ptr %.tr643.ph, align 4       ; 2 uses
  %i.km = lshr i32 %i.kl, 26
  %i.kn = icmp ult i32 %i.kl, 402653184
  %i.ko = add nsw i32 %i.km, -5
  %i.kp = shl nuw i32 1, %i.ko
  %spec.select.i533 = select i1 %i.kn, i32 1, i32 %i.kp ; 3 uses
  %i.kq = icmp sgt i32 %spec.select.i533, 0
  br i1 %i.kq, label %select.unfold.preheader.i534, label %tailrecurse.outer654.backedge

select.unfold.preheader.i534:                     ; preds = %bb.x
  %i.kr = zext nneg i32 %spec.select.i533 to i64  ; 3 uses
  %min.iters.check1267 = icmp ult i32 %spec.select.i533, 16
  br i1 %min.iters.check1267, label %select.unfold.i535.preheader, label %vector.memcheck1268

select.unfold.i535.preheader:                     ; preds = %vector.memcheck1268, %select.unfold.preheader.i534
  br label %select.unfold.i535

vector.memcheck1268:                              ; preds = %select.unfold.preheader.i534
  %i.ks = sext i32 %i.k to i64
  %i.kt = shl nsw i64 %i.ks, 2
  %i.ku = lshr i32 %i.f, 8
  %i.kv = and i32 %i.ku, 1020
  %i.kw = zext nneg i32 %i.kv to i64
  %5 = add i64 %i.kt, %i.it
  %i.kx = add i64 %.tr643.ph1201, %i.kw
  %i.ky = sub i64 %5, %i.kx
  %i.kz = add i64 %i.ky, -5
  %diff.check1269 = icmp ult i64 %i.kz, 31
  br i1 %diff.check1269, label %select.unfold.i535.preheader, label %vector.ph1270

vector.ph1270:                                    ; preds = %vector.memcheck1268
  %n.vec1271 = and i64 %i.kr, 2147483640
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %vector.ph1270
  %index1273 = phi i64 [ 0, %vector.ph1270 ], [ %index.next1276, %vector.body1272 ] ; 2 uses
  %i.la = xor i64 %index1273, -1
  %i.lb = add i64 %i.la, %i.kr                    ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.lb ; 2 uses
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 -12
  %i.le = getelementptr inbounds i8, ptr %i.lc, i64 -28
  %wide.load1274 = load <4 x i32>, ptr %i.ld, align 4, !tbaa !33
  %wide.load1275 = load <4 x i32>, ptr %i.le, align 4, !tbaa !33
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.lb ; 2 uses
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 -12
  %i.lh = getelementptr inbounds i8, ptr %i.lf, i64 -28
  store <4 x i32> %wide.load1274, ptr %i.lg, align 4, !tbaa !33
  store <4 x i32> %wide.load1275, ptr %i.lh, align 4, !tbaa !33
  %index.next1276 = add nuw i64 %index1273, 8     ; 2 uses
  %i.li = icmp eq i64 %index.next1276, %n.vec1271
  br i1 %i.li, label %tailrecurse.outer654.backedge, label %vector.body1272, !llvm.loop !348

select.unfold.i535:                               ; preds = %select.unfold.i535.preheader, %select.unfold.i535
  %indvars.iv.i536 = phi i64 [ %indvars.iv.next.i537, %select.unfold.i535 ], [ %i.kr, %select.unfold.i535.preheader ] ; 2 uses
  %indvars.iv.next.i537 = add nsw i64 %indvars.iv.i536, -1 ; 3 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i537
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !33
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i537
  store i32 %i.lk, ptr %i.ll, align 4, !tbaa !33
  %i.lm = icmp samesign ugt i64 %indvars.iv.i536, 1
  br i1 %i.lm, label %select.unfold.i535, label %tailrecurse.outer654.backedge, !llvm.loop !349

bb.y:                                             ; preds = %Kit_DsdObjAlloc.exit
  br i1 %.lcssa982, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ln = xor i16 %i.jx, 1
  store i16 %i.ln, ptr %i.jy, align 4, !tbaa !56
  %i.lo = load i32, ptr %.tr643.ph, align 4       ; 2 uses
  %i.lp = lshr i32 %i.lo, 26
  %i.lq = icmp ult i32 %i.lo, 402653184
  %i.lr = add nsw i32 %i.lp, -5
  %i.ls = shl nuw i32 1, %i.lr
  %spec.select.i539 = select i1 %i.lq, i32 1, i32 %i.ls ; 3 uses
  %i.lt = icmp sgt i32 %spec.select.i539, 0
  br i1 %i.lt, label %select.unfold.preheader.i540, label %tailrecurse.outer654.backedge

select.unfold.preheader.i540:                     ; preds = %bb.z
  %i.lu = zext nneg i32 %spec.select.i539 to i64  ; 3 uses
  %min.iters.check1251 = icmp ult i32 %spec.select.i539, 8
  br i1 %min.iters.check1251, label %select.unfold.i541.preheader, label %vector.memcheck1252

select.unfold.i541.preheader:                     ; preds = %vector.memcheck1252, %select.unfold.preheader.i540
  br label %select.unfold.i541

vector.memcheck1252:                              ; preds = %select.unfold.preheader.i540
  %i.lv = lshr i32 %i.f, 8
  %i.lw = and i32 %i.lv, 1020
  %i.lx = zext nneg i32 %i.lw to i64
  %6 = add i64 %.tr643.ph1201, %i.lx
  %i.ly = sub i64 %i.it, %6
  %i.lz = add i64 %i.ly, -5
  %diff.check1253 = icmp ult i64 %i.lz, 31
  br i1 %diff.check1253, label %select.unfold.i541.preheader, label %vector.ph1254

vector.ph1254:                                    ; preds = %vector.memcheck1252
  %n.vec1255 = and i64 %i.lu, 2147483640
  br label %vector.body1256

vector.body1256:                                  ; preds = %vector.body1256, %vector.ph1254
  %index1257 = phi i64 [ 0, %vector.ph1254 ], [ %index.next1260, %vector.body1256 ] ; 2 uses
  %i.ma = xor i64 %index1257, -1
  %i.mb = add i64 %i.ma, %i.lu                    ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.mb ; 2 uses
  %i.md = getelementptr inbounds i8, ptr %i.mc, i64 -12
  %i.me = getelementptr inbounds i8, ptr %i.mc, i64 -28
  %wide.load1258 = load <4 x i32>, ptr %i.md, align 4, !tbaa !33
  %wide.load1259 = load <4 x i32>, ptr %i.me, align 4, !tbaa !33
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mb ; 2 uses
  %i.mg = getelementptr inbounds i8, ptr %i.mf, i64 -12
  %i.mh = getelementptr inbounds i8, ptr %i.mf, i64 -28
  store <4 x i32> %wide.load1258, ptr %i.mg, align 4, !tbaa !33
  store <4 x i32> %wide.load1259, ptr %i.mh, align 4, !tbaa !33
  %index.next1260 = add nuw i64 %index1257, 8     ; 2 uses
  %i.mi = icmp eq i64 %index.next1260, %n.vec1255
  br i1 %i.mi, label %tailrecurse.outer654.backedge, label %vector.body1256, !llvm.loop !350

select.unfold.i541:                               ; preds = %select.unfold.i541.preheader, %select.unfold.i541
  %indvars.iv.i542 = phi i64 [ %indvars.iv.next.i543, %select.unfold.i541 ], [ %i.lu, %select.unfold.i541.preheader ] ; 2 uses
  %indvars.iv.next.i543 = add nsw i64 %indvars.iv.i542, -1 ; 3 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.i543
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !33
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i543
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !33
  %i.mm = icmp samesign ugt i64 %indvars.iv.i542, 1
  br i1 %i.mm, label %select.unfold.i541, label %tailrecurse.outer654.backedge, !llvm.loop !351

bb.aa:                                            ; preds = %bb.y
  br i1 %.lcssa984, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mn = xor i16 %i.kk, 1
  store i16 %i.mn, ptr %.tr645.ph656, align 2, !tbaa !56
  %i.mo = or disjoint i16 %i.ke, 1
  store i16 %i.mo, ptr %i.kf, align 2, !tbaa !56
  %i.mp = load i32, ptr %.tr643.ph, align 4       ; 2 uses
  %i.mq = lshr i32 %i.mp, 26
  %i.mr = icmp ult i32 %i.mp, 402653184
  %i.ms = add nsw i32 %i.mq, -5
  %i.mt = shl nuw i32 1, %i.ms
  %spec.select.i545 = select i1 %i.mr, i32 1, i32 %i.mt ; 3 uses
  %i.mu = icmp sgt i32 %spec.select.i545, 0
  br i1 %i.mu, label %select.unfold.preheader.i546, label %tailrecurse.outer654.backedge

select.unfold.preheader.i546:                     ; preds = %bb.ab
  %i.mv = zext nneg i32 %spec.select.i545 to i64  ; 3 uses
  %min.iters.check1235 = icmp ult i32 %spec.select.i545, 16
  br i1 %min.iters.check1235, label %select.unfold.i547.preheader, label %vector.memcheck1236

select.unfold.i547.preheader:                     ; preds = %vector.memcheck1236, %select.unfold.preheader.i546
  br label %select.unfold.i547

vector.memcheck1236:                              ; preds = %select.unfold.preheader.i546
  %i.mw = sext i32 %i.k to i64
  %i.mx = shl nsw i64 %i.mw, 2
  %i.my = lshr i32 %i.f, 8
  %i.mz = and i32 %i.my, 1020
  %i.na = zext nneg i32 %i.mz to i64
  %7 = add i64 %i.mx, %i.it
  %i.nb = add i64 %.tr643.ph1201, %i.na
  %i.nc = sub i64 %7, %i.nb
  %i.nd = add i64 %i.nc, -5
  %diff.check1237 = icmp ult i64 %i.nd, 31
  br i1 %diff.check1237, label %select.unfold.i547.preheader, label %vector.ph1238

vector.ph1238:                                    ; preds = %vector.memcheck1236
  %n.vec1239 = and i64 %i.mv, 2147483640
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %vector.ph1238
  %index1241 = phi i64 [ 0, %vector.ph1238 ], [ %index.next1244, %vector.body1240 ] ; 2 uses
  %i.ne = xor i64 %index1241, -1
  %i.nf = add i64 %i.ne, %i.mv                    ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.nf ; 2 uses
  %i.nh = getelementptr inbounds i8, ptr %i.ng, i64 -12
  %i.ni = getelementptr inbounds i8, ptr %i.ng, i64 -28
  %wide.load1242 = load <4 x i32>, ptr %i.nh, align 4, !tbaa !33
  %wide.load1243 = load <4 x i32>, ptr %i.ni, align 4, !tbaa !33
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.nf ; 2 uses
  %i.nk = getelementptr inbounds i8, ptr %i.nj, i64 -12
  %i.nl = getelementptr inbounds i8, ptr %i.nj, i64 -28
  store <4 x i32> %wide.load1242, ptr %i.nk, align 4, !tbaa !33
  store <4 x i32> %wide.load1243, ptr %i.nl, align 4, !tbaa !33
  %index.next1244 = add nuw i64 %index1241, 8     ; 2 uses
  %i.nm = icmp eq i64 %index.next1244, %n.vec1239
  br i1 %i.nm, label %tailrecurse.outer654.backedge, label %vector.body1240, !llvm.loop !352

select.unfold.i547:                               ; preds = %select.unfold.i547.preheader, %select.unfold.i547
  %indvars.iv.i548 = phi i64 [ %indvars.iv.next.i549, %select.unfold.i547 ], [ %i.mv, %select.unfold.i547.preheader ] ; 2 uses
  %indvars.iv.next.i549 = add nsw i64 %indvars.iv.i548, -1 ; 3 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i549
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !33
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i549
  store i32 %i.no, ptr %i.np, align 4, !tbaa !33
  %i.nq = icmp samesign ugt i64 %indvars.iv.i548, 1
  br i1 %i.nq, label %select.unfold.i547, label %tailrecurse.outer654.backedge, !llvm.loop !353

bb.ac:                                            ; preds = %bb.aa
  br i1 %.lcssa986, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.nr = xor i16 %i.kk, 1
  store i16 %i.nr, ptr %.tr645.ph656, align 2, !tbaa !56
  %i.ns = xor i16 %i.jx, 1
  store i16 %i.ns, ptr %i.jy, align 4, !tbaa !56
  %i.nt = or disjoint i16 %i.ke, 1
  store i16 %i.nt, ptr %i.kf, align 2, !tbaa !56
  %i.nu = load i32, ptr %.tr643.ph, align 4       ; 2 uses
  %i.nv = lshr i32 %i.nu, 26
  %i.nw = icmp ult i32 %i.nu, 402653184
  %i.nx = add nsw i32 %i.nv, -5
  %i.ny = shl nuw i32 1, %i.nx
  %spec.select.i551 = select i1 %i.nw, i32 1, i32 %i.ny ; 3 uses
  %i.nz = icmp sgt i32 %spec.select.i551, 0
  br i1 %i.nz, label %select.unfold.preheader.i552, label %tailrecurse.outer654.backedge

select.unfold.preheader.i552:                     ; preds = %bb.ad
  %i.oa = zext nneg i32 %spec.select.i551 to i64  ; 3 uses
  %min.iters.check1219 = icmp ult i32 %spec.select.i551, 8
  br i1 %min.iters.check1219, label %select.unfold.i553.preheader, label %vector.memcheck1220

select.unfold.i553.preheader:                     ; preds = %vector.memcheck1220, %select.unfold.preheader.i552
  br label %select.unfold.i553

vector.memcheck1220:                              ; preds = %select.unfold.preheader.i552
  %i.ob = lshr i32 %i.f, 8
  %i.oc = and i32 %i.ob, 1020
  %i.od = zext nneg i32 %i.oc to i64
  %8 = add i64 %.tr643.ph1201, %i.od
  %i.oe = sub i64 %i.it, %8
  %i.of = add i64 %i.oe, -5
  %diff.check1221 = icmp ult i64 %i.of, 31
  br i1 %diff.check1221, label %select.unfold.i553.preheader, label %vector.ph1222

vector.ph1222:                                    ; preds = %vector.memcheck1220
  %n.vec1223 = and i64 %i.oa, 2147483640
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %vector.ph1222
  %index1225 = phi i64 [ 0, %vector.ph1222 ], [ %index.next1228, %vector.body1224 ] ; 2 uses
  %i.og = xor i64 %index1225, -1
  %i.oh = add i64 %i.og, %i.oa                    ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.oh ; 2 uses
  %i.oj = getelementptr inbounds i8, ptr %i.oi, i64 -12
  %i.ok = getelementptr inbounds i8, ptr %i.oi, i64 -28
  %wide.load1226 = load <4 x i32>, ptr %i.oj, align 4, !tbaa !33
  %wide.load1227 = load <4 x i32>, ptr %i.ok, align 4, !tbaa !33
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.oh ; 2 uses
  %i.om = getelementptr inbounds i8, ptr %i.ol, i64 -12
  %i.on = getelementptr inbounds i8, ptr %i.ol, i64 -28
  store <4 x i32> %wide.load1226, ptr %i.om, align 4, !tbaa !33
  store <4 x i32> %wide.load1227, ptr %i.on, align 4, !tbaa !33
  %index.next1228 = add nuw i64 %index1225, 8     ; 2 uses
  %i.oo = icmp eq i64 %index.next1228, %n.vec1223
  br i1 %i.oo, label %tailrecurse.outer654.backedge, label %vector.body1224, !llvm.loop !354

select.unfold.i553:                               ; preds = %select.unfold.i553.preheader, %select.unfold.i553
  %indvars.iv.i554 = phi i64 [ %indvars.iv.next.i555, %select.unfold.i553 ], [ %i.oa, %select.unfold.i553.preheader ] ; 2 uses
  %indvars.iv.next.i555 = add nsw i64 %indvars.iv.i554, -1 ; 3 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.i555
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !33
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i555
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !33
  %i.os = icmp samesign ugt i64 %indvars.iv.i554, 1
  br i1 %i.os, label %select.unfold.i553, label %tailrecurse.outer654.backedge, !llvm.loop !355

bb.ae:                                            ; preds = %bb.ac
  br i1 %.lcssa988, label %tailrecurse.outer654.backedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ot = and i32 %i.ju, 201326143
  %i.ou = or disjoint i32 %i.ot, 256
  store i32 %i.ou, ptr %calloc.i, align 4
  %i.ov = load i32, ptr %.tr643.ph, align 4       ; 2 uses
  %i.ow = lshr i32 %i.ov, 26
  %i.ox = icmp ult i32 %i.ov, 402653184
  %i.oy = add nsw i32 %i.ow, -5
  %i.oz = shl nuw i32 1, %i.oy
  %spec.select.i557 = select i1 %i.ox, i32 1, i32 %i.oz ; 3 uses
  %i.pa = icmp sgt i32 %spec.select.i557, 0
  br i1 %i.pa, label %select.unfold.preheader.i558, label %tailrecurse.outer654.backedge

tailrecurse.outer654.backedge:                    ; preds = %vector.body1272, %select.unfold.i535, %vector.body1256, %select.unfold.i541, %vector.body1240, %select.unfold.i547, %vector.body1224, %select.unfold.i553, %vector.body1208, %select.unfold.i559, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.ae
  br label %tailrecurse.outer654

select.unfold.preheader.i558:                     ; preds = %bb.af
  %i.pb = zext nneg i32 %spec.select.i557 to i64  ; 3 uses
  %min.iters.check1203 = icmp ult i32 %spec.select.i557, 8
  br i1 %min.iters.check1203, label %select.unfold.i559.preheader, label %vector.memcheck1204

select.unfold.i559.preheader:                     ; preds = %vector.memcheck1204, %select.unfold.preheader.i558
  br label %select.unfold.i559

vector.memcheck1204:                              ; preds = %select.unfold.preheader.i558
  %i.pc = lshr i32 %i.f, 8
  %i.pd = and i32 %i.pc, 1020
  %i.pe = zext nneg i32 %i.pd to i64
  %9 = add i64 %.tr643.ph1201, %i.pe
  %i.pf = sub i64 %i.it, %9
  %i.pg = add i64 %i.pf, -5
  %diff.check1205 = icmp ult i64 %i.pg, 31
  br i1 %diff.check1205, label %select.unfold.i559.preheader, label %vector.ph1206

vector.ph1206:                                    ; preds = %vector.memcheck1204
  %n.vec1207 = and i64 %i.pb, 2147483640
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %vector.ph1206
  %index1209 = phi i64 [ 0, %vector.ph1206 ], [ %index.next1212, %vector.body1208 ] ; 2 uses
  %i.ph = xor i64 %index1209, -1
  %i.pi = add i64 %i.ph, %i.pb                    ; 2 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.pi ; 2 uses
  %i.pk = getelementptr inbounds i8, ptr %i.pj, i64 -12
  %i.pl = getelementptr inbounds i8, ptr %i.pj, i64 -28
  %wide.load1210 = load <4 x i32>, ptr %i.pk, align 4, !tbaa !33
  %wide.load1211 = load <4 x i32>, ptr %i.pl, align 4, !tbaa !33
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.pi ; 2 uses
  %i.pn = getelementptr inbounds i8, ptr %i.pm, i64 -12
  %i.po = getelementptr inbounds i8, ptr %i.pm, i64 -28
  store <4 x i32> %wide.load1210, ptr %i.pn, align 4, !tbaa !33
  store <4 x i32> %wide.load1211, ptr %i.po, align 4, !tbaa !33
  %index.next1212 = add nuw i64 %index1209, 8     ; 2 uses
  %i.pp = icmp eq i64 %index.next1212, %n.vec1207
  br i1 %i.pp, label %tailrecurse.outer654.backedge, label %vector.body1208, !llvm.loop !356

select.unfold.i559:                               ; preds = %select.unfold.i559.preheader, %select.unfold.i559
  %indvars.iv.i560 = phi i64 [ %indvars.iv.next.i561, %select.unfold.i559 ], [ %i.pb, %select.unfold.i559.preheader ] ; 2 uses
  %indvars.iv.next.i561 = add nsw i64 %indvars.iv.i560, -1 ; 3 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.i561
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !33
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i561
  store i32 %i.pr, ptr %i.ps, align 4, !tbaa !33
  %i.pt = icmp samesign ugt i64 %indvars.iv.i560, 1
  br i1 %i.pt, label %select.unfold.i559, label %tailrecurse.outer654.backedge, !llvm.loop !357

.loopexit652:                                     ; preds = %.preheader, %.preheader.preheader, %bb.k
  %i.pu = phi i32 [ %i.bu, %bb.k ], [ %i.cg, %.preheader.preheader ], [ %i.ci, %.preheader ] ; 2 uses
  %i.pv = or i32 %i.pu, 512                       ; 3 uses
  store i32 %i.pv, ptr %.tr643.ph, align 4
  %i.pw = lshr i32 %i.pu, 26                      ; 2 uses
  %.not756 = icmp eq i32 %i.pw, 0
  br i1 %.not756, label %._crit_edge731, label %.lr.ph730

.loopexit:                                        ; preds = %bb.az, %bb.al
  %i.px = phi i32 [ %i.tz, %bb.al ], [ %i.ui, %bb.az ] ; 2 uses
  %i.py = icmp sgt i32 %.1477.in727, 1
  br i1 %i.py, label %.lr.ph730, label %._crit_edge731, !llvm.loop !358

.lr.ph730:                                        ; preds = %.loopexit652, %.loopexit
  %i.pz = phi i32 [ %i.px, %.loopexit ], [ %i.pv, %.loopexit652 ]
  %.1477.in727 = phi i32 [ %.1477728, %.loopexit ], [ %i.pw, %.loopexit652 ] ; 4 uses
  %.1477728 = add nsw i32 %.1477.in727, -1        ; 7 uses
  %i.qa = lshr i32 %i.pz, 26
  tail call void @Kit_TruthCofactor0New(ptr noundef %i.s, ptr noundef %i.r, i32 noundef %i.qa, i32 noundef %.1477728) #29
  %i.qb = load i32, ptr %.tr643.ph, align 4
  %i.qc = lshr i32 %i.qb, 26
  tail call void @Kit_TruthCofactor1New(ptr noundef nonnull %i.u, ptr noundef %i.r, i32 noundef %i.qc, i32 noundef %.1477728) #29
  %i.qd = load i32, ptr %.tr643.ph, align 4
  %i.qe = lshr i32 %i.qd, 26
  %i.qf = tail call i32 @Kit_TruthSupport(ptr noundef %i.s, i32 noundef %i.qe) #29 ; 3 uses
  %i.qg = load i32, ptr %.tr643.ph, align 4
  %i.qh = lshr i32 %i.qg, 26
  %i.qi = tail call i32 @Kit_TruthSupport(ptr noundef nonnull %i.u, i32 noundef %i.qh) #29 ; 3 uses
  %i.qj = icmp eq i32 %i.qf, 0
  %i.qk = icmp eq i32 %i.qi, 0
  %or.cond = select i1 %i.qj, i1 true, i1 %i.qk
  br i1 %or.cond, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph730
  %i.ql = load i32, ptr %.tr643.ph, align 4
  %i.qm = and i32 %i.ql, -513
  store i32 %i.qm, ptr %.tr643.ph, align 4
  br label %tailrecurse.backedge

bb.ah:                                            ; preds = %.lr.ph730
  %i.qn = xor i32 %i.qi, -1
  %i.qo = and i32 %i.qf, %i.qn                    ; 2 uses
  %i.qp = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.qo)
  %i.qq = xor i32 %i.qf, -1
  %i.qr = and i32 %i.qi, %i.qq                    ; 2 uses
  %i.qs = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.qr)
  %i.qt = icmp eq i32 %i.qp, 1
  %i.qu = icmp eq i32 %i.qs, 1
  %or.cond3 = select i1 %i.qt, i1 %i.qu, i1 false
  %.pre868 = load i32, ptr %.tr643.ph, align 4    ; 3 uses
  br i1 %or.cond3, label %bb.ai, label %._crit_edge874

._crit_edge874:                                   ; preds = %bb.ah
  %.pre875 = lshr i32 %.pre868, 26
  br label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.qv = tail call fastcc i32 @Kit_WordFindFirstBit(i32 noundef %i.qo) ; 4 uses
  %i.qw = tail call fastcc i32 @Kit_WordFindFirstBit(i32 noundef %i.qr) ; 4 uses
  %i.qx = lshr i32 %.pre868, 26
  tail call void @Kit_TruthCofactor0New(ptr noundef nonnull %i.x, ptr noundef nonnull %i.s, i32 noundef %i.qx, i32 noundef %i.qv) #29
  %i.qy = load i32, ptr %.tr643.ph, align 4
  %i.qz = lshr i32 %i.qy, 26
  tail call void @Kit_TruthCofactor1New(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.s, i32 noundef %i.qz, i32 noundef %i.qv) #29
  %i.ra = load i32, ptr %.tr643.ph, align 4
  %i.rb = lshr i32 %i.ra, 26
  tail call void @Kit_TruthCofactor0New(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.u, i32 noundef %i.rb, i32 noundef %i.qw) #29
  %i.rc = load i32, ptr %.tr643.ph, align 4
  %i.rd = lshr i32 %i.rc, 26
  tail call void @Kit_TruthCofactor1New(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.u, i32 noundef %i.rd, i32 noundef %i.qw) #29
  %i.re = load i32, ptr %.tr643.ph, align 4       ; 3 uses
  %i.rf = lshr i32 %i.re, 26                      ; 2 uses
  %i.rg = icmp ult i32 %i.re, 402653184
  %i.rh = add nsw i32 %i.rf, -5
  %i.ri = shl nuw i32 1, %i.rh
  %spec.select.i563 = select i1 %i.rg, i32 1, i32 %i.ri ; 5 uses
  %i.rj = zext i32 %spec.select.i563 to i64       ; 4 uses
  %i.rk = icmp slt i32 %spec.select.i563, 1
  br i1 %i.rk, label %Kit_TruthIsEqual.exit, label %.lr.ph1100

select.unfold.i564:                               ; preds = %.lr.ph1100
  %i.rl = trunc nuw i64 %i.rn to i32
  %i.rm = icmp slt i32 %i.rl, 1
  br i1 %i.rm, label %Kit_TruthIsEqual.exit, label %.lr.ph1100, !llvm.loop !8

.lr.ph1100:                                       ; preds = %bb.ai, %select.unfold.i564
  %indvars.iv.i5651098 = phi i64 [ %i.rn, %select.unfold.i564 ], [ %i.rj, %bb.ai ]
  %i.rn = add nsw i64 %indvars.iv.i5651098, -1    ; 4 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.rn
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !33
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.rn
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !33
  %.not.i567 = icmp eq i32 %i.rp, %i.rr
  br i1 %.not.i567, label %select.unfold.i564, label %.Kit_TruthIsEqual.exit_crit_edge, !llvm.loop !8

.Kit_TruthIsEqual.exit_crit_edge:                 ; preds = %.lr.ph1100
  br label %Kit_TruthIsEqual.exit, !llvm.loop !8

Kit_TruthIsEqual.exit:                            ; preds = %select.unfold.i564, %.Kit_TruthIsEqual.exit_crit_edge, %bb.ai
  %.lcssa997 = phi i1 [ true, %bb.ai ], [ false, %.Kit_TruthIsEqual.exit_crit_edge ], [ true, %select.unfold.i564 ] ; 2 uses
  %i.rs = icmp slt i32 %spec.select.i563, 1
  br i1 %i.rs, label %Kit_TruthIsEqual.exit573, label %.lr.ph1104

select.unfold.i569:                               ; preds = %.lr.ph1104
  %i.rt = trunc nuw i64 %i.rv to i32
  %i.ru = icmp slt i32 %i.rt, 1
  br i1 %i.ru, label %Kit_TruthIsEqual.exit573, label %.lr.ph1104, !llvm.loop !8

.lr.ph1104:                                       ; preds = %Kit_TruthIsEqual.exit, %select.unfold.i569
  %indvars.iv.i5701103 = phi i64 [ %i.rv, %select.unfold.i569 ], [ %i.rj, %Kit_TruthIsEqual.exit ]
  %i.rv = add nsw i64 %indvars.iv.i5701103, -1    ; 4 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.rv
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !33
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.rv
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !33
  %.not.i572 = icmp eq i32 %i.rx, %i.rz
  br i1 %.not.i572, label %select.unfold.i569, label %.Kit_TruthIsEqual.exit573_crit_edge, !llvm.loop !8

.Kit_TruthIsEqual.exit573_crit_edge:              ; preds = %.lr.ph1104
  br label %Kit_TruthIsEqual.exit573, !llvm.loop !8

Kit_TruthIsEqual.exit573:                         ; preds = %select.unfold.i569, %.Kit_TruthIsEqual.exit573_crit_edge, %Kit_TruthIsEqual.exit
  %.lcssa998 = phi i1 [ %.lcssa997, %Kit_TruthIsEqual.exit ], [ false, %.Kit_TruthIsEqual.exit573_crit_edge ], [ %.lcssa997, %select.unfold.i569 ]
  %i.sa = icmp slt i32 %spec.select.i563, 1
  br i1 %i.sa, label %Kit_TruthIsEqual.exit579, label %.lr.ph1108

select.unfold.i575:                               ; preds = %.lr.ph1108
  %i.sb = trunc nuw i64 %i.sd to i32
  %i.sc = icmp slt i32 %i.sb, 1
  br i1 %i.sc, label %Kit_TruthIsEqual.exit579, label %.lr.ph1108, !llvm.loop !8

.lr.ph1108:                                       ; preds = %Kit_TruthIsEqual.exit573, %select.unfold.i575
  %indvars.iv.i5761107 = phi i64 [ %i.sd, %select.unfold.i575 ], [ %i.rj, %Kit_TruthIsEqual.exit573 ]
  %i.sd = add nsw i64 %indvars.iv.i5761107, -1    ; 4 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.sd
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !33
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.sd
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !33
  %.not.i578 = icmp eq i32 %i.sf, %i.sh
  br i1 %.not.i578, label %select.unfold.i575, label %.Kit_TruthIsEqual.exit579_crit_edge, !llvm.loop !8

.Kit_TruthIsEqual.exit579_crit_edge:              ; preds = %.lr.ph1108
  br label %Kit_TruthIsEqual.exit579, !llvm.loop !8

Kit_TruthIsEqual.exit579:                         ; preds = %select.unfold.i575, %.Kit_TruthIsEqual.exit579_crit_edge, %Kit_TruthIsEqual.exit573
  %.lcssa999 = phi i1 [ true, %Kit_TruthIsEqual.exit573 ], [ false, %.Kit_TruthIsEqual.exit579_crit_edge ], [ true, %select.unfold.i575 ] ; 2 uses
  %i.si = icmp slt i32 %spec.select.i563, 1
  br i1 %i.si, label %Kit_TruthIsEqual.exit585, label %.lr.ph1112

select.unfold.i581:                               ; preds = %.lr.ph1112
  %i.sj = trunc nuw i64 %i.sl to i32
  %i.sk = icmp slt i32 %i.sj, 1
  br i1 %i.sk, label %Kit_TruthIsEqual.exit585, label %.lr.ph1112, !llvm.loop !8

.lr.ph1112:                                       ; preds = %Kit_TruthIsEqual.exit579, %select.unfold.i581
  %indvars.iv.i5821111 = phi i64 [ %i.sl, %select.unfold.i581 ], [ %i.rj, %Kit_TruthIsEqual.exit579 ]
  %i.sl = add nsw i64 %indvars.iv.i5821111, -1    ; 4 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.sl
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !33
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.sl
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !33
  %.not.i584 = icmp eq i32 %i.sn, %i.sp
  br i1 %.not.i584, label %select.unfold.i581, label %.Kit_TruthIsEqual.exit585_crit_edge, !llvm.loop !8

.Kit_TruthIsEqual.exit585_crit_edge:              ; preds = %.lr.ph1112
end_hunk_1
