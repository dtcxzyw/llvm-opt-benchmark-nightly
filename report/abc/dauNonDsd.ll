inline.NumInlined: 79
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Dau_DecCheckSetTopOld:bb.a

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv140
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.am = phi ptr [ %i.al, %bb.p ], [ null, %bb.o ]
  br i1 %.not56, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv140
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ap = phi ptr [ %i.ao, %bb.r ], [ null, %bb.q ]
  %i.aq = tail call fastcc i32 @Dau_DecCheckSetAny(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %5, i32 noundef %.1.us.lcssa, ptr noundef %i.aj, ptr noundef %i.am, ptr noundef %i.ap)
  %.not57.us = icmp eq i32 %i.aq, 0
  br i1 %.not57.us, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count144
  br i1 %exitcond145.not, label %.loopexit, label %.preheader.us, !llvm.loop !22

._crit_edge.us.unr-lcssa:                         ; preds = %bb.m
  br i1 %lcmp.mod188.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv135.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next136.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.068.us.epil.init = phi i32 [ 0, %.preheader.us ], [ %.1.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod190)
  %i.ar = trunc nuw nsw i64 %indvars.iv135.epil.init to i32
  %i.as = shl nuw i32 1, %i.ar
  %i.at = and i32 %i.as, %i.s
  %.not58.us.epil = icmp eq i32 %i.at, 0
  br i1 %.not58.us.epil, label %._crit_edge.us, label %bb.u

bb.u:                                             ; preds = %.epil.preheader
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv135.epil.init
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = or i32 %i.aw, %.068.us.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.epil.preheader, %bb.u, %._crit_edge.us.unr-lcssa
  %.1.us.lcssa = phi i32 [ %.1.us.1, %._crit_edge.us.unr-lcssa ], [ %i.ax, %bb.u ], [ %.068.us.epil.init, %.epil.preheader ]
  br i1 %.not, label %bb.o, label %bb.n

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  br i1 %.not, label %.preheader.us75, label %.preheader.lr.ph.split.split

.preheader.us75:                                  ; preds = %.preheader.lr.ph.split, %bb.z
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %bb.z ], [ 0, %.preheader.lr.ph.split ] ; 3 uses
  br i1 %.not55, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.preheader.us75
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv129
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.preheader.us75
  %i.ba = phi ptr [ %i.az, %bb.v ], [ null, %.preheader.us75 ]
  br i1 %.not56, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv129
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bd = phi ptr [ %i.bc, %bb.x ], [ null, %bb.w ]
  %i.be = tail call fastcc i32 @Dau_DecCheckSetAny(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %5, i32 noundef 0, ptr noundef null, ptr noundef %i.ba, ptr noundef %i.bd)
  %.not57.us77 = icmp eq i32 %i.be, 0
  br i1 %.not57.us77, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count144
  br i1 %exitcond134.not, label %.loopexit, label %.preheader.us75, !llvm.loop !22

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  br i1 %.not55, label %.preheader.lr.ph.split.split.split.us, label %.preheader.lr.ph.split.split.split

.preheader.lr.ph.split.split.split.us:            ; preds = %.preheader.lr.ph.split.split
  br i1 %.not56, label %.preheader.us82.us, label %.preheader.us82

.preheader.us82.us:                               ; preds = %.preheader.lr.ph.split.split.split.us, %bb.aa
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %bb.aa ], [ 0, %.preheader.lr.ph.split.split.split.us ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv123
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15
  %i.bh = tail call fastcc i32 @Dau_DecCheckSetAny(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %5, i32 noundef 0, ptr noundef %i.bg, ptr noundef null, ptr noundef null)
  %.not57.us84.us = icmp eq i32 %i.bh, 0
  br i1 %.not57.us84.us, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %.preheader.us82.us
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count144
  br i1 %exitcond128.not, label %.loopexit, label %.preheader.us82.us, !llvm.loop !22

.preheader.us82:                                  ; preds = %.preheader.lr.ph.split.split.split.us, %bb.ab
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %bb.ab ], [ 0, %.preheader.lr.ph.split.split.split.us ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv117
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !15
  %i.bm = tail call fastcc i32 @Dau_DecCheckSetAny(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %5, i32 noundef 0, ptr noundef %i.bj, ptr noundef null, ptr noundef %i.bl)
  %.not57.us84 = icmp eq i32 %i.bm, 0
  br i1 %.not57.us84, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.preheader.us82
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count144
  br i1 %exitcond122.not, label %.loopexit, label %.preheader.us82, !llvm.loop !22

.preheader.lr.ph.split.split.split:               ; preds = %.preheader.lr.ph.split.split
  br i1 %.not56, label %.preheader.us89, label %.preheader

.preheader.us89:                                  ; preds = %.preheader.lr.ph.split.split.split, %bb.ac
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %bb.ac ], [ 0, %.preheader.lr.ph.split.split.split ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv111
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv111
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !15
  %i.br = tail call fastcc i32 @Dau_DecCheckSetAny(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %5, i32 noundef 0, ptr noundef %i.bo, ptr noundef %i.bq, ptr noundef null)
  %.not57.us91 = icmp eq i32 %i.br, 0
  br i1 %.not57.us91, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %.preheader.us89
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count144
  br i1 %exitcond116.not, label %.loopexit, label %.preheader.us89, !llvm.loop !22

.lr.ph:                                           ; preds = %bb.af, %.lr.ph.preheader.new
  %.04466 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %bb.af ] ; 5 uses
  %.04665 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.147.1, %bb.af ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.af ]
  %i.bs = shl nuw i32 1, %.04466
  %i.bt = and i32 %i.bs, %5
  %.not59 = icmp eq i32 %i.bt, 0
  br i1 %.not59, label %.lr.ph.1, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph
  %i.bu = add nsw i32 %.04665, 1
  %i.bv = sext i32 %.04665 to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bv
  store i32 %.04466, ptr %i.bw, align 4, !tbaa !8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.ad
  %.147 = phi i32 [ %i.bu, %bb.ad ], [ %.04665, %.lr.ph ] ; 3 uses
  %i.bx = shl nuw i32 2, %.04466
  %i.by = and i32 %i.bx, %5
  %.not59.1 = icmp eq i32 %i.by, 0
  br i1 %.not59.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.1
  %i.bz = or disjoint i32 %.04466, 1
  %i.ca = add nsw i32 %.147, 1
  %i.cb = sext i32 %.147 to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cb
  store i32 %i.bz, ptr %i.cc, align 4, !tbaa !8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.1
  %.147.1 = phi i32 [ %i.ca, %bb.ae ], [ %.147, %.lr.ph.1 ] ; 2 uses
  %i.cd = add nuw nsw i32 %.04466, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader63.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !23

bb.ag:                                            ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next, %wide.trip.count144
  br i1 %exitcond110.not, label %.loopexit, label %.preheader, !llvm.loop !22

.preheader:                                       ; preds = %.preheader.lr.ph.split.split.split, %bb.ag
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ag ], [ 0, %.preheader.lr.ph.split.split.split ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !15
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !15
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !15
  %i.ck = tail call fastcc i32 @Dau_DecCheckSetAny(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %5, i32 noundef 0, ptr noundef %i.cf, ptr noundef %i.ch, ptr noundef %i.cj)
  %.not57 = icmp eq i32 %i.ck, 0
  br i1 %.not57, label %.loopexit, label %bb.ag

.loopexit:                                        ; preds = %.preheader, %bb.ag, %.preheader.us89, %bb.ac, %.preheader.us82, %bb.ab, %.preheader.us82.us, %bb.aa, %bb.y, %bb.z, %bb.s, %bb.t, %.preheader63, %bb.h
  %.042 = phi i32 [ %i.l, %bb.h ], [ 0, %bb.s ], [ 1, %.preheader63 ], [ 0, %.preheader.us89 ], [ 0, %bb.y ], [ 1, %bb.ab ], [ 1, %bb.aa ], [ 1, %bb.t ], [ 1, %bb.z ], [ 0, %.preheader.us82.us ], [ 0, %.preheader.us82 ], [ 1, %bb.ac ], [ 0, %.preheader ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.042
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @Dau_DecCheckSetAny(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef captures(address_is_null) %7) unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %2, 6
  %i.b = sub i32 %1, %2                           ; 18 uses
  %i.c = shl nuw i32 1, %i.b                      ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.d = sub nsw i32 6, %2                        ; 3 uses
  %i.e = shl nuw nsw i32 1, %2
  %i.f = zext nneg i32 %i.e to i64
  %notmask62.i = shl nsw i64 -1, %i.f
  %i.g = xor i64 %notmask62.i, -1                 ; 3 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %.not97.i = icmp eq i32 %i.b, 31
  br i1 %.not97.i, label %._crit_edge.i, label %.lr.ph.split.us.preheader.i

.thread.i:                                        ; preds = %bb.b
  store i64 0, ptr %7, align 8, !tbaa !9
  %.not97112.i = icmp eq i32 %i.b, 31
  br i1 %.not97112.i, label %._crit_edge.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.thread.i
  %i.h = icmp sgt i32 %i.b, 0
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1) ; 2 uses
  br i1 %i.h, label %.lr.ph.split.i.us.preheader, label %.lr.ph.split.i

.lr.ph.split.i.us.preheader:                      ; preds = %.lr.ph.split.preheader.i
  %i.i = xor i32 %2, -1
  %i.j = add i32 %1, %i.i                         ; 2 uses
  %xtraiter102 = and i32 %i.b, 1
  %i.k = icmp eq i32 %i.j, 0
  %unroll_iter106 = and i32 %i.b, 2147483646
  %lcmp.mod103.not = icmp eq i32 %xtraiter102, 0
  %lcmp.mod105 = trunc i32 %i.b to i1
  %xtraiter108 = and i32 %i.b, 1
  %i.l = icmp eq i32 %i.j, 0
  %unroll_iter112 = and i32 %i.b, 2147483646
  %lcmp.mod109.not = icmp eq i32 %xtraiter108, 0
  %lcmp.mod111 = trunc i32 %i.b to i1
  br label %.lr.ph.split.i.us

.lr.ph.split.i.us:                                ; preds = %.lr.ph.split.i.us.preheader, %bb.p
  %.05092.i.us = phi i64 [ %.1.i.us, %bb.p ], [ 0, %.lr.ph.split.i.us.preheader ] ; 7 uses
  %.05191.i.us = phi i64 [ %.152.i.us, %bb.p ], [ 0, %.lr.ph.split.i.us.preheader ] ; 4 uses
  %.05390.i.us = phi i32 [ %.154.i.us, %bb.p ], [ 0, %.lr.ph.split.i.us.preheader ] ; 2 uses
  %.05589.i.us = phi i32 [ %.156.i.us, %bb.p ], [ 0, %.lr.ph.split.i.us.preheader ] ; 4 uses
  %.05787.i.us = phi i32 [ %i.br, %bb.p ], [ 0, %.lr.ph.split.i.us.preheader ] ; 10 uses
  %i.m = and i32 %.05787.i.us, %3
  %i.n = icmp eq i32 %i.m, %4
  br i1 %i.n, label %bb.d, label %bb.p

bb.d:                                             ; preds = %.lr.ph.split.i.us
  %i.o = lshr i32 %.05787.i.us, %i.d
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9
  %i.s = shl i32 %.05787.i.us, %2
  %i.t = and i32 %i.s, 63
  %i.u = zext nneg i32 %i.t to i64
  %i.v = lshr i64 %i.r, %i.u
  %i.w = and i64 %i.v, %i.g                       ; 6 uses
  %.not65.i.us = icmp eq i32 %.05390.i.us, 0
  br i1 %.not65.i.us, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq i64 %.05191.i.us, %i.w
  br i1 %i.x, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not66.i.us = icmp eq i32 %.05589.i.us, 0
  br i1 %.not66.i.us, label %.lr.ph.i.i.us.preheader, label %bb.g

.lr.ph.i.i.us.preheader:                          ; preds = %bb.f
  br i1 %i.l, label %.lr.ph.i.i.us.epil.preheader, label %.lr.ph.i.i.us

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq i64 %.05092.i.us, %i.w
  br i1 %i.y, label %.lr.ph.i68.i.us.preheader, label %Dau_DecCheckSet5.exit

.lr.ph.i68.i.us.preheader:                        ; preds = %bb.g
  br i1 %i.k, label %.lr.ph.i68.i.us.epil.preheader, label %.lr.ph.i68.i.us

.lr.ph.i68.i.us:                                  ; preds = %.lr.ph.i68.i.us.preheader, %bb.j
  %.018.i69.i.us = phi i32 [ %i.al, %bb.j ], [ 0, %.lr.ph.i68.i.us.preheader ] ; 3 uses
  %.01217.i70.i.us = phi i32 [ %.1.i74.i.us.1, %bb.j ], [ 0, %.lr.ph.i68.i.us.preheader ] ; 3 uses
  %.01316.i71.i.us = phi i32 [ %.2.i73.i.us.1, %bb.j ], [ 0, %.lr.ph.i68.i.us.preheader ] ; 2 uses
  %niter107 = phi i32 [ %niter107.next.1, %bb.j ], [ 0, %.lr.ph.i68.i.us.preheader ]
  %i.z = shl nuw i32 1, %.018.i69.i.us            ; 2 uses
  %i.aa = and i32 %i.z, %3
  %.not.i72.i.us = icmp eq i32 %i.aa, 0
  br i1 %.not.i72.i.us, label %bb.h, label %.lr.ph.i68.i.us.1

bb.h:                                             ; preds = %.lr.ph.i68.i.us
  %i.ab = and i32 %i.z, %.05787.i.us
  %.not15.i76.i.us = icmp eq i32 %i.ab, 0
  %i.ac = shl nuw i32 1, %.01217.i70.i.us
  %i.ad = select i1 %.not15.i76.i.us, i32 0, i32 %i.ac
  %.114.i77.i.us = or i32 %i.ad, %.01316.i71.i.us
  %i.ae = add nsw i32 %.01217.i70.i.us, 1
  br label %.lr.ph.i68.i.us.1

.lr.ph.i68.i.us.1:                                ; preds = %bb.h, %.lr.ph.i68.i.us
  %.2.i73.i.us = phi i32 [ %.01316.i71.i.us, %.lr.ph.i68.i.us ], [ %.114.i77.i.us, %bb.h ] ; 2 uses
  %.1.i74.i.us = phi i32 [ %.01217.i70.i.us, %.lr.ph.i68.i.us ], [ %i.ae, %bb.h ] ; 3 uses
  %i.af = shl nuw i32 2, %.018.i69.i.us           ; 2 uses
  %i.ag = and i32 %i.af, %3
  %.not.i72.i.us.1 = icmp eq i32 %i.ag, 0
  br i1 %.not.i72.i.us.1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i68.i.us.1
  %i.ah = and i32 %i.af, %.05787.i.us
  %.not15.i76.i.us.1 = icmp eq i32 %i.ah, 0
  %i.ai = shl nuw i32 1, %.1.i74.i.us
  %i.aj = select i1 %.not15.i76.i.us.1, i32 0, i32 %i.ai
  %.114.i77.i.us.1 = or i32 %i.aj, %.2.i73.i.us
  %i.ak = add nsw i32 %.1.i74.i.us, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i68.i.us.1
  %.2.i73.i.us.1 = phi i32 [ %.2.i73.i.us, %.lr.ph.i68.i.us.1 ], [ %.114.i77.i.us.1, %bb.i ] ; 3 uses
  %.1.i74.i.us.1 = phi i32 [ %.1.i74.i.us, %.lr.ph.i68.i.us.1 ], [ %i.ak, %bb.i ] ; 2 uses
  %i.al = add nuw nsw i32 %.018.i69.i.us, 2       ; 2 uses
  %niter107.next.1 = add i32 %niter107, 2         ; 2 uses
  %niter107.ncmp.1 = icmp eq i32 %niter107.next.1, %unroll_iter106
  br i1 %niter107.ncmp.1, label %.sink.split.i.us.loopexit87.unr-lcssa, label %.lr.ph.i68.i.us, !llvm.loop !24

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader, %bb.m
  %.018.i.i.us = phi i32 [ %i.ay, %bb.m ], [ 0, %.lr.ph.i.i.us.preheader ] ; 3 uses
  %.01217.i.i.us = phi i32 [ %.1.i.i.us.1, %bb.m ], [ 0, %.lr.ph.i.i.us.preheader ] ; 3 uses
  %.01316.i.i.us = phi i32 [ %.2.i.i.us.1, %bb.m ], [ 0, %.lr.ph.i.i.us.preheader ] ; 2 uses
  %niter113 = phi i32 [ %niter113.next.1, %bb.m ], [ 0, %.lr.ph.i.i.us.preheader ]
  %i.am = shl nuw i32 1, %.018.i.i.us             ; 2 uses
  %i.an = and i32 %i.am, %3
  %.not.i.i.us = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.us, label %bb.k, label %.lr.ph.i.i.us.1

bb.k:                                             ; preds = %.lr.ph.i.i.us
  %i.ao = and i32 %i.am, %.05787.i.us
  %.not15.i.i.us = icmp eq i32 %i.ao, 0
  %i.ap = shl nuw i32 1, %.01217.i.i.us
  %i.aq = select i1 %.not15.i.i.us, i32 0, i32 %i.ap
  %.114.i.i.us = or i32 %i.aq, %.01316.i.i.us
  %i.ar = add nsw i32 %.01217.i.i.us, 1
  br label %.lr.ph.i.i.us.1

.lr.ph.i.i.us.1:                                  ; preds = %bb.k, %.lr.ph.i.i.us
  %.2.i.i.us = phi i32 [ %.01316.i.i.us, %.lr.ph.i.i.us ], [ %.114.i.i.us, %bb.k ] ; 2 uses
  %.1.i.i.us = phi i32 [ %.01217.i.i.us, %.lr.ph.i.i.us ], [ %i.ar, %bb.k ] ; 3 uses
  %i.as = shl nuw i32 2, %.018.i.i.us             ; 2 uses
  %i.at = and i32 %i.as, %3
  %.not.i.i.us.1 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.us.1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.us.1
  %i.au = and i32 %i.as, %.05787.i.us
  %.not15.i.i.us.1 = icmp eq i32 %i.au, 0
  %i.av = shl nuw i32 1, %.1.i.i.us
  %i.aw = select i1 %.not15.i.i.us.1, i32 0, i32 %i.av
  %.114.i.i.us.1 = or i32 %i.aw, %.2.i.i.us
  %i.ax = add nsw i32 %.1.i.i.us, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i.us.1
  %.2.i.i.us.1 = phi i32 [ %.2.i.i.us, %.lr.ph.i.i.us.1 ], [ %.114.i.i.us.1, %bb.l ] ; 3 uses
  %.1.i.i.us.1 = phi i32 [ %.1.i.i.us, %.lr.ph.i.i.us.1 ], [ %i.ax, %bb.l ] ; 2 uses
  %i.ay = add nuw nsw i32 %.018.i.i.us, 2         ; 2 uses
  %niter113.next.1 = add i32 %niter113, 2         ; 2 uses
  %niter113.ncmp.1 = icmp eq i32 %niter113.next.1, %unroll_iter112
  br i1 %niter113.ncmp.1, label %.sink.split.i.us.loopexit.unr-lcssa, label %.lr.ph.i.i.us, !llvm.loop !24

.sink.split.i.us.loopexit.unr-lcssa:              ; preds = %bb.m
  br i1 %lcmp.mod109.not, label %.sink.split.i.us, label %.lr.ph.i.i.us.epil.preheader

.lr.ph.i.i.us.epil.preheader:                     ; preds = %.sink.split.i.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.preheader
  %.018.i.i.us.epil.init = phi i32 [ 0, %.lr.ph.i.i.us.preheader ], [ %i.ay, %.sink.split.i.us.loopexit.unr-lcssa ]
  %.01217.i.i.us.epil.init = phi i32 [ 0, %.lr.ph.i.i.us.preheader ], [ %.1.i.i.us.1, %.sink.split.i.us.loopexit.unr-lcssa ]
  %.01316.i.i.us.epil.init = phi i32 [ 0, %.lr.ph.i.i.us.preheader ], [ %.2.i.i.us.1, %.sink.split.i.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.az = shl nuw i32 1, %.018.i.i.us.epil.init   ; 2 uses
  %i.ba = and i32 %i.az, %3
  %.not.i.i.us.epil = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.us.epil, label %bb.n, label %.sink.split.i.us

bb.n:                                             ; preds = %.lr.ph.i.i.us.epil.preheader
  %i.bb = and i32 %i.az, %.05787.i.us
  %.not15.i.i.us.epil = icmp eq i32 %i.bb, 0
  %i.bc = shl nuw i32 1, %.01217.i.i.us.epil.init
  %i.bd = select i1 %.not15.i.i.us.epil, i32 0, i32 %i.bc
  %.114.i.i.us.epil = or i32 %i.bd, %.01316.i.i.us.epil.init
  br label %.sink.split.i.us

.sink.split.i.us.loopexit87.unr-lcssa:            ; preds = %bb.j
  br i1 %lcmp.mod103.not, label %.sink.split.i.us, label %.lr.ph.i68.i.us.epil.preheader

.lr.ph.i68.i.us.epil.preheader:                   ; preds = %.sink.split.i.us.loopexit87.unr-lcssa, %.lr.ph.i68.i.us.preheader
  %.018.i69.i.us.epil.init = phi i32 [ 0, %.lr.ph.i68.i.us.preheader ], [ %i.al, %.sink.split.i.us.loopexit87.unr-lcssa ]
  %.01217.i70.i.us.epil.init = phi i32 [ 0, %.lr.ph.i68.i.us.preheader ], [ %.1.i74.i.us.1, %.sink.split.i.us.loopexit87.unr-lcssa ]
  %.01316.i71.i.us.epil.init = phi i32 [ 0, %.lr.ph.i68.i.us.preheader ], [ %.2.i73.i.us.1, %.sink.split.i.us.loopexit87.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.be = shl nuw i32 1, %.018.i69.i.us.epil.init ; 2 uses
  %i.bf = and i32 %i.be, %3
  %.not.i72.i.us.epil = icmp eq i32 %i.bf, 0
  br i1 %.not.i72.i.us.epil, label %bb.o, label %.sink.split.i.us

bb.o:                                             ; preds = %.lr.ph.i68.i.us.epil.preheader
  %i.bg = and i32 %i.be, %.05787.i.us
  %.not15.i76.i.us.epil = icmp eq i32 %i.bg, 0
  %i.bh = shl nuw i32 1, %.01217.i70.i.us.epil.init
  %i.bi = select i1 %.not15.i76.i.us.epil, i32 0, i32 %i.bh
  %.114.i77.i.us.epil = or i32 %i.bi, %.01316.i71.i.us.epil.init
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %.sink.split.i.us.loopexit87.unr-lcssa, %bb.o, %.lr.ph.i68.i.us.epil.preheader, %.sink.split.i.us.loopexit.unr-lcssa, %bb.n, %.lr.ph.i.i.us.epil.preheader
  %.013.lcssa.i.sink120.i.us = phi i32 [ %.114.i.i.us.epil, %bb.n ], [ %.2.i.i.us.1, %.sink.split.i.us.loopexit.unr-lcssa ], [ %.01316.i.i.us.epil.init, %.lr.ph.i.i.us.epil.preheader ], [ %.2.i73.i.us.1, %.sink.split.i.us.loopexit87.unr-lcssa ], [ %.01316.i71.i.us.epil.init, %.lr.ph.i68.i.us.epil.preheader ], [ %.114.i77.i.us.epil, %bb.o ] ; 2 uses
  %.1.ph.i.us = phi i64 [ %i.w, %.sink.split.i.us.loopexit.unr-lcssa ], [ %i.w, %.lr.ph.i.i.us.epil.preheader ], [ %i.w, %bb.n ], [ %.05092.i.us, %.lr.ph.i68.i.us.epil.preheader ], [ %.05092.i.us, %bb.o ], [ %.05092.i.us, %.sink.split.i.us.loopexit87.unr-lcssa ]
  %i.bj = and i32 %.013.lcssa.i.sink120.i.us, 63
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = ashr i32 %.013.lcssa.i.sink120.i.us, 6
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bn ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !9
  %i.bq = or i64 %i.bl, %i.bp
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !9
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.i.us, %bb.e, %bb.d, %.lr.ph.split.i.us
  %.156.i.us = phi i32 [ %.05589.i.us, %bb.e ], [ %.05589.i.us, %.lr.ph.split.i.us ], [ %.05589.i.us, %bb.d ], [ 1, %.sink.split.i.us ] ; 2 uses
  %.154.i.us = phi i32 [ 1, %bb.e ], [ %.05390.i.us, %.lr.ph.split.i.us ], [ 1, %bb.d ], [ 1, %.sink.split.i.us ]
  %.152.i.us = phi i64 [ %.05191.i.us, %bb.e ], [ %.05191.i.us, %.lr.ph.split.i.us ], [ %i.w, %bb.d ], [ %.05191.i.us, %.sink.split.i.us ] ; 2 uses
  %.1.i.us = phi i64 [ %.05092.i.us, %bb.e ], [ %.05092.i.us, %.lr.ph.split.i.us ], [ %.05092.i.us, %bb.d ], [ %.1.ph.i.us, %.sink.split.i.us ] ; 2 uses
  %i.br = add nuw nsw i32 %.05787.i.us, 1         ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.br, %smax.i
  br i1 %exitcond.not.i.us, label %._crit_edge.i, label %.lr.ph.split.i.us, !llvm.loop !25

.lr.ph.split.us.preheader.i:                      ; preds = %bb.c
  %smax100.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.u, %.lr.ph.split.us.preheader.i
  %.05092.us.i = phi i64 [ %.1.us.i, %bb.u ], [ 0, %.lr.ph.split.us.preheader.i ] ; 5 uses
  %.05191.us.i = phi i64 [ %.152.us.i, %bb.u ], [ 0, %.lr.ph.split.us.preheader.i ] ; 5 uses
  %.05390.us.i = phi i32 [ %.154.us.i, %bb.u ], [ 0, %.lr.ph.split.us.preheader.i ] ; 2 uses
  %.05589.us.i = phi i32 [ %.156.us.i, %bb.u ], [ 0, %.lr.ph.split.us.preheader.i ] ; 4 uses
  %.05787.us.i = phi i32 [ %i.cf, %bb.u ], [ 0, %.lr.ph.split.us.preheader.i ] ; 4 uses
  %i.bs = and i32 %.05787.us.i, %3
  %i.bt = icmp eq i32 %i.bs, %4
  br i1 %i.bt, label %bb.q, label %bb.u

bb.q:                                             ; preds = %.lr.ph.split.us.i
  %i.bu = lshr i32 %.05787.us.i, %i.d
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !9
  %i.by = shl i32 %.05787.us.i, %2
  %i.bz = and i32 %i.by, 63
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = lshr i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.g                     ; 4 uses
  %.not65.us.i = icmp eq i32 %.05390.us.i, 0
  br i1 %.not65.us.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = icmp eq i64 %.05191.us.i, %i.cc
  br i1 %i.cd, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not66.us.i = icmp eq i32 %.05589.us.i, 0
  br i1 %.not66.us.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = icmp eq i64 %.05092.us.i, %i.cc
  br i1 %i.ce, label %bb.u, label %Dau_DecCheckSet5.exit

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %.lr.ph.split.us.i
  %.156.us.i = phi i32 [ %.05589.us.i, %bb.r ], [ %.05589.us.i, %bb.q ], [ 1, %bb.t ], [ %.05589.us.i, %.lr.ph.split.us.i ], [ 1, %bb.s ] ; 2 uses
  %.154.us.i = phi i32 [ 1, %bb.r ], [ 1, %bb.q ], [ 1, %bb.t ], [ %.05390.us.i, %.lr.ph.split.us.i ], [ 1, %bb.s ]
  %.152.us.i = phi i64 [ %.05191.us.i, %bb.r ], [ %i.cc, %bb.q ], [ %.05191.us.i, %bb.t ], [ %.05191.us.i, %.lr.ph.split.us.i ], [ %.05191.us.i, %bb.s ] ; 2 uses
  %.1.us.i = phi i64 [ %.05092.us.i, %bb.r ], [ %.05092.us.i, %bb.q ], [ %.05092.us.i, %bb.t ], [ %.05092.us.i, %.lr.ph.split.us.i ], [ %i.cc, %bb.s ] ; 2 uses
  %i.cf = add nuw nsw i32 %.05787.us.i, 1         ; 2 uses
  %exitcond101.not.i = icmp eq i32 %i.cf, %smax100.i
  br i1 %exitcond101.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !25

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.preheader.i, %bb.z
  %.05092.i = phi i64 [ %.1.i, %bb.z ], [ 0, %.lr.ph.split.preheader.i ] ; 5 uses
  %.05191.i = phi i64 [ %.152.i, %bb.z ], [ 0, %.lr.ph.split.preheader.i ] ; 4 uses
  %.05390.i = phi i32 [ %.154.i, %bb.z ], [ 0, %.lr.ph.split.preheader.i ] ; 2 uses
  %.05589.i = phi i32 [ %.156.i, %bb.z ], [ 0, %.lr.ph.split.preheader.i ] ; 4 uses
  %.05787.i = phi i32 [ %i.ct, %bb.z ], [ 0, %.lr.ph.split.preheader.i ] ; 4 uses
  %i.cg = and i32 %.05787.i, %3
  %i.ch = icmp eq i32 %i.cg, %4
  br i1 %i.ch, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.lr.ph.split.i
  %i.ci = lshr i32 %.05787.i, %i.d
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !9
  %i.cm = shl i32 %.05787.i, %2
  %i.cn = and i32 %i.cm, 63
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = lshr i64 %i.cl, %i.co
  %i.cq = and i64 %i.cp, %i.g                     ; 4 uses
  %.not65.i = icmp eq i32 %.05390.i, 0
  br i1 %.not65.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = icmp eq i64 %.05191.i, %i.cq
  br i1 %i.cr, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not66.i = icmp eq i32 %.05589.i, 0
  br i1 %.not66.i, label %.sink.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = icmp eq i64 %.05092.i, %i.cq
  br i1 %i.cs, label %.sink.split.i, label %Dau_DecCheckSet5.exit

.sink.split.i:                                    ; preds = %bb.y, %bb.x
  %.1.ph.i = phi i64 [ %i.cq, %bb.x ], [ %.05092.i, %bb.y ]
  store i64 1, ptr %7, align 8, !tbaa !9
  br label %bb.z

bb.z:                                             ; preds = %.sink.split.i, %bb.w, %bb.v, %.lr.ph.split.i
  %.156.i = phi i32 [ %.05589.i, %bb.w ], [ %.05589.i, %.lr.ph.split.i ], [ %.05589.i, %bb.v ], [ 1, %.sink.split.i ] ; 2 uses
  %.154.i = phi i32 [ 1, %bb.w ], [ %.05390.i, %.lr.ph.split.i ], [ 1, %bb.v ], [ 1, %.sink.split.i ]
  %.152.i = phi i64 [ %.05191.i, %bb.w ], [ %.05191.i, %.lr.ph.split.i ], [ %i.cq, %bb.v ], [ %.05191.i, %.sink.split.i ] ; 2 uses
  %.1.i = phi i64 [ %.05092.i, %bb.w ], [ %.05092.i, %.lr.ph.split.i ], [ %.05092.i, %bb.v ], [ %.1.ph.i, %.sink.split.i ] ; 2 uses
  %i.ct = add nuw nsw i32 %.05787.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ct, %smax.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %bb.z, %bb.p, %bb.u, %.thread.i, %bb.c
  %.055.lcssa.i = phi i32 [ 0, %bb.c ], [ 0, %.thread.i ], [ %.156.us.i, %bb.u ], [ %.156.i.us, %bb.p ], [ %.156.i, %bb.z ]
  %.051.lcssa.i = phi i64 [ 0, %bb.c ], [ 0, %.thread.i ], [ %.152.us.i, %bb.u ], [ %.152.i.us, %bb.p ], [ %.152.i, %bb.z ] ; 8 uses
  %.050.lcssa.i = phi i64 [ 0, %bb.c ], [ 0, %.thread.i ], [ %.1.us.i, %bb.u ], [ %.1.i.us, %bb.p ], [ %.1.i, %bb.z ]
  %.not63.i = icmp eq ptr %5, null
  br i1 %.not63.i, label %Dau_DecCheckSet5.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i
  %.not64.i = icmp eq i32 %.055.lcssa.i, 0
  %i.cu = select i1 %.not64.i, i64 %.051.lcssa.i, i64 %.050.lcssa.i ; 7 uses
  %i.cv = icmp eq i32 %2, 0                       ; 2 uses
  %i.cw = trunc i64 %.051.lcssa.i to i1
  %i.cx = select i1 %i.cw, i64 3, i64 0
  %i.cy = icmp ult i32 %2, 2                      ; 2 uses
  %i.cz = and i64 %.051.lcssa.i, 3
  %i.da = select i1 %i.cv, i64 %i.cx, i64 %i.cz
  %i.db = mul nuw nsw i64 %i.da, 5
  %.126.i.i = select i1 %i.cy, i64 %i.db, i64 %.051.lcssa.i
  %i.dc = icmp ult i32 %2, 3                      ; 2 uses
  %i.dd = and i64 %.126.i.i, 15
  %i.de = mul nuw nsw i64 %i.dd, 17
  %.227.i.i = select i1 %i.dc, i64 %i.de, i64 %.051.lcssa.i
  %i.df = icmp ult i32 %2, 4                      ; 2 uses
  %i.dg = and i64 %.227.i.i, 255
  %i.dh = mul nuw nsw i64 %i.dg, 257
  %.328.i.i = select i1 %i.df, i64 %i.dh, i64 %.051.lcssa.i
  %i.di = icmp ult i32 %2, 5                      ; 2 uses
  %i.dj = and i64 %.328.i.i, 65535
  %i.dk = mul nuw nsw i64 %i.dj, 65537
  %.429.i.i = select i1 %i.di, i64 %i.dk, i64 %.051.lcssa.i
  %i.dl = icmp ult i32 %2, 6                      ; 2 uses
  %i.dm = and i64 %.429.i.i, 4294967295
  %i.dn = mul nuw i64 %i.dm, 4294967297
  %.5.i.i = select i1 %i.dl, i64 %i.dn, i64 %.051.lcssa.i
  store i64 %.5.i.i, ptr %5, align 8, !tbaa !9
  %i.do = trunc i64 %i.cu to i1
  %i.dp = select i1 %i.do, i64 3, i64 0
  %i.dq = and i64 %i.cu, 3
  %i.dr = select i1 %i.cv, i64 %i.dp, i64 %i.dq
  %i.ds = mul nuw nsw i64 %i.dr, 5
  %.126.i79.i = select i1 %i.cy, i64 %i.ds, i64 %i.cu
  %i.dt = and i64 %.126.i79.i, 15
  %i.du = mul nuw nsw i64 %i.dt, 17
  %.227.i80.i = select i1 %i.dc, i64 %i.du, i64 %i.cu
  %i.dv = and i64 %.227.i80.i, 255
  %i.dw = mul nuw nsw i64 %i.dv, 257
  %.328.i81.i = select i1 %i.df, i64 %i.dw, i64 %i.cu
  %i.dx = and i64 %.328.i81.i, 65535
  %i.dy = mul nuw nsw i64 %i.dx, 65537
  %.429.i82.i = select i1 %i.di, i64 %i.dy, i64 %i.cu
  %i.dz = and i64 %.429.i82.i, 4294967295
  %i.ea = mul nuw i64 %i.dz, 4294967297
  %.5.i83.i = select i1 %i.dl, i64 %i.ea, i64 %i.cu
  store i64 %.5.i83.i, ptr %6, align 8, !tbaa !9
  br label %Dau_DecCheckSet5.exit

bb.ab:                                            ; preds = %bb.a
  %i.eb = add nsw i32 %2, -6                      ; 2 uses
  %i.ec = shl nuw i32 1, %i.eb                    ; 2 uses
  %.not.i18 = icmp eq ptr %7, null                ; 3 uses
  br i1 %.not.i18, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i64 0, ptr %7, align 8, !tbaa !9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not92.i = icmp eq i32 %i.b, 31
  br i1 %.not92.i, label %._crit_edge.i23, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad
  %i.ed = sext i32 %i.ec to i64
  %i.ee = shl nsw i64 %i.ed, 3                    ; 2 uses
  %i.ef = icmp sgt i32 %i.b, 0                    ; 2 uses
  %smax.i19 = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %i.eg = xor i32 %2, -1
  %i.eh = add i32 %1, %i.eg                       ; 2 uses
  %xtraiter = and i32 %i.b, 1
  %i.ei = icmp eq i32 %i.eh, 0
  %unroll_iter = and i32 %i.b, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod95 = trunc i32 %i.b to i1
  %xtraiter96 = and i32 %i.b, 1
  %i.ej = icmp eq i32 %i.eh, 0
  %unroll_iter100 = and i32 %i.b, 2147483646
  %lcmp.mod97.not = icmp eq i32 %xtraiter96, 0
  %lcmp.mod99 = trunc i32 %i.b to i1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.av, %.lr.ph.i
  %.089.i = phi ptr [ null, %.lr.ph.i ], [ %.1.i21, %bb.av ] ; 9 uses
  %.05188.i = phi ptr [ null, %.lr.ph.i ], [ %.152.i20, %bb.av ] ; 6 uses
  %.05487.i = phi i32 [ 0, %.lr.ph.i ], [ %.155.i, %bb.av ] ; 2 uses
  %.05685.i = phi i32 [ 0, %.lr.ph.i ], [ %i.gh, %bb.av ] ; 9 uses
  %.05784.i = phi i32 [ 0, %.lr.ph.i ], [ %.158.i, %bb.av ] ; 4 uses
  %i.ek = and i32 %.05685.i, %3
  %i.el = icmp eq i32 %i.ek, %4
  br i1 %i.el, label %bb.af, label %bb.av

bb.af:                                            ; preds = %bb.ae
  %.not64.i25 = icmp eq i32 %.05487.i, 0
  %i.em = shl i32 %.05685.i, %i.eb
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %0, i64 %i.en ; 8 uses
  br i1 %.not64.i25, label %bb.av, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %.05188.i, ptr noundef nonnull readonly dereferenceable(1) %i.eo, i64 %i.ee)
  %.not65.i26 = icmp eq i32 %bcmp.i, 0
  br i1 %.not65.i26, label %bb.av, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not66.i27 = icmp eq i32 %.05784.i, 0
  br i1 %.not66.i27, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not.i18, label %bb.av, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.ef, label %.lr.ph.i.i30.preheader, label %.sink.split.i28

.lr.ph.i.i30.preheader:                           ; preds = %bb.aj
  br i1 %i.ej, label %.lr.ph.i.i30.epil.preheader, label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %.lr.ph.i.i30.preheader, %bb.am
  %.018.i.i31 = phi i32 [ %i.fb, %bb.am ], [ 0, %.lr.ph.i.i30.preheader ] ; 3 uses
  %.01217.i.i32 = phi i32 [ %.1.i.i36.1, %bb.am ], [ 0, %.lr.ph.i.i30.preheader ] ; 3 uses
  %.01316.i.i33 = phi i32 [ %.2.i.i35.1, %bb.am ], [ 0, %.lr.ph.i.i30.preheader ] ; 2 uses
  %niter101 = phi i32 [ %niter101.next.1, %bb.am ], [ 0, %.lr.ph.i.i30.preheader ]
  %i.ep = shl nuw i32 1, %.018.i.i31              ; 2 uses
  %i.eq = and i32 %i.ep, %3
  %.not.i.i34 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i34, label %bb.ak, label %.lr.ph.i.i30.1

bb.ak:                                            ; preds = %.lr.ph.i.i30
  %i.er = and i32 %i.ep, %.05685.i
  %.not15.i.i38 = icmp eq i32 %i.er, 0
  %i.es = shl nuw i32 1, %.01217.i.i32
  %i.et = select i1 %.not15.i.i38, i32 0, i32 %i.es
  %.114.i.i39 = or i32 %i.et, %.01316.i.i33
  %i.eu = add nsw i32 %.01217.i.i32, 1
  br label %.lr.ph.i.i30.1

.lr.ph.i.i30.1:                                   ; preds = %bb.ak, %.lr.ph.i.i30
  %.2.i.i35 = phi i32 [ %.01316.i.i33, %.lr.ph.i.i30 ], [ %.114.i.i39, %bb.ak ] ; 2 uses
  %.1.i.i36 = phi i32 [ %.01217.i.i32, %.lr.ph.i.i30 ], [ %i.eu, %bb.ak ] ; 3 uses
  %i.ev = shl nuw i32 2, %.018.i.i31              ; 2 uses
  %i.ew = and i32 %i.ev, %3
  %.not.i.i34.1 = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i34.1, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i30.1
  %i.ex = and i32 %i.ev, %.05685.i
  %.not15.i.i38.1 = icmp eq i32 %i.ex, 0
  %i.ey = shl nuw i32 1, %.1.i.i36
  %i.ez = select i1 %.not15.i.i38.1, i32 0, i32 %i.ey
  %.114.i.i39.1 = or i32 %i.ez, %.2.i.i35
  %i.fa = add nsw i32 %.1.i.i36, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.i30.1
  %.2.i.i35.1 = phi i32 [ %.2.i.i35, %.lr.ph.i.i30.1 ], [ %.114.i.i39.1, %bb.al ] ; 3 uses
  %.1.i.i36.1 = phi i32 [ %.1.i.i36, %.lr.ph.i.i30.1 ], [ %i.fa, %bb.al ] ; 2 uses
  %i.fb = add nuw nsw i32 %.018.i.i31, 2          ; 2 uses
  %niter101.next.1 = add i32 %niter101, 2         ; 2 uses
  %niter101.ncmp.1 = icmp eq i32 %niter101.next.1, %unroll_iter100
  br i1 %niter101.ncmp.1, label %.sink.split.i28.loopexit.unr-lcssa, label %.lr.ph.i.i30, !llvm.loop !24

bb.an:                                            ; preds = %bb.ah
  %bcmp67.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %.089.i, ptr noundef nonnull readonly dereferenceable(1) %i.eo, i64 %i.ee)
  %.not68.i = icmp eq i32 %bcmp67.i, 0
  br i1 %.not68.i, label %bb.ao, label %Dau_DecCheckSet5.exit

bb.ao:                                            ; preds = %bb.an
  br i1 %.not.i18, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.ef, label %.lr.ph.i70.i.preheader, label %.sink.split.i28

.lr.ph.i70.i.preheader:                           ; preds = %bb.ap
  br i1 %i.ei, label %.lr.ph.i70.i.epil.preheader, label %.lr.ph.i70.i

.lr.ph.i70.i:                                     ; preds = %.lr.ph.i70.i.preheader, %bb.as
  %.018.i71.i = phi i32 [ %i.fo, %bb.as ], [ 0, %.lr.ph.i70.i.preheader ] ; 3 uses
  %.01217.i72.i = phi i32 [ %.1.i76.i.1, %bb.as ], [ 0, %.lr.ph.i70.i.preheader ] ; 3 uses
  %.01316.i73.i = phi i32 [ %.2.i75.i.1, %bb.as ], [ 0, %.lr.ph.i70.i.preheader ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %bb.as ], [ 0, %.lr.ph.i70.i.preheader ]
  %i.fc = shl nuw i32 1, %.018.i71.i              ; 2 uses
  %i.fd = and i32 %i.fc, %3
  %.not.i74.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i74.i, label %bb.aq, label %.lr.ph.i70.i.1

bb.aq:                                            ; preds = %.lr.ph.i70.i
  %i.fe = and i32 %i.fc, %.05685.i
  %.not15.i78.i = icmp eq i32 %i.fe, 0
  %i.ff = shl nuw i32 1, %.01217.i72.i
  %i.fg = select i1 %.not15.i78.i, i32 0, i32 %i.ff
  %.114.i79.i = or i32 %i.fg, %.01316.i73.i
end_hunk_0
