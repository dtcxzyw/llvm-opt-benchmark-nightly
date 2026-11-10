Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snow?download=true
inline.NumInlined: 41
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@ff_snow_pred_block:bb.a

.lr.ph270.epil.preheader:                         ; preds = %.loopexit.loopexit322.unr-lcssa, %.lr.ph270.preheader
  %indvars.iv293.epil.init = phi i64 [ 0, %.lr.ph270.preheader ], [ %indvars.iv.next294.3, %.loopexit.loopexit322.unr-lcssa ]
  %lcmp.mod342 = icmp ne i64 %xtraiter339, 0
  tail call void @llvm.assume(i1 %lcmp.mod342)
  br label %.lr.ph270.epil

.lr.ph270.epil:                                   ; preds = %.lr.ph270.epil, %.lr.ph270.epil.preheader
  %indvars.iv293.epil = phi i64 [ %indvars.iv293.epil.init, %.lr.ph270.epil.preheader ], [ %indvars.iv.next294.epil, %.lr.ph270.epil ] ; 2 uses
  %epil.iter340 = phi i64 [ 0, %.lr.ph270.epil.preheader ], [ %epil.iter340.next, %.lr.ph270.epil ]
  %i.hd = mul nsw i64 %3, %indvars.iv293.epil
  %i.he = getelementptr inbounds i8, ptr %1, i64 %i.hd ; 2 uses
  store <4 x i32> %i.aa, ptr %i.he, align 4, !tbaa !32
  %i.hf = getelementptr i8, ptr %i.he, i64 16
  store <4 x i32> %i.aa, ptr %i.hf, align 4, !tbaa !32
  %indvars.iv.next294.epil = add nuw nsw i64 %indvars.iv293.epil, 1
  %epil.iter340.next = add i64 %epil.iter340, 1   ; 2 uses
  %epil.iter340.cmp.not = icmp eq i64 %epil.iter340.next, %xtraiter339
  br i1 %epil.iter340.cmp.not, label %.loopexit, label %.lr.ph270.epil, !llvm.loop !70

.loopexit.loopexit323.unr-lcssa:                  ; preds = %.lr.ph268
  %lcmp.mod335.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod335.not, label %.loopexit, label %.lr.ph268.epil.preheader

.lr.ph268.epil.preheader:                         ; preds = %.loopexit.loopexit323.unr-lcssa, %.lr.ph268.preheader
  %indvars.iv288.epil.init = phi i64 [ 0, %.lr.ph268.preheader ], [ %indvars.iv.next289.3, %.loopexit.loopexit323.unr-lcssa ]
  %lcmp.mod336 = icmp ne i64 %xtraiter333, 0
  tail call void @llvm.assume(i1 %lcmp.mod336)
  br label %.lr.ph268.epil

.lr.ph268.epil:                                   ; preds = %.lr.ph268.epil, %.lr.ph268.epil.preheader
  %indvars.iv288.epil = phi i64 [ %indvars.iv288.epil.init, %.lr.ph268.epil.preheader ], [ %indvars.iv.next289.epil, %.lr.ph268.epil ] ; 2 uses
  %epil.iter334 = phi i64 [ 0, %.lr.ph268.epil.preheader ], [ %epil.iter334.next, %.lr.ph268.epil ]
  %i.hg = mul nsw i64 %3, %indvars.iv288.epil
  %i.hh = getelementptr inbounds i8, ptr %1, i64 %i.hg
  store <4 x i32> %i.w, ptr %i.hh, align 4, !tbaa !32
  %indvars.iv.next289.epil = add nuw nsw i64 %indvars.iv288.epil, 1
  %epil.iter334.next = add i64 %epil.iter334, 1   ; 2 uses
  %epil.iter334.cmp.not = icmp eq i64 %epil.iter334.next, %xtraiter333
  br i1 %epil.iter334.cmp.not, label %.loopexit, label %.lr.ph268.epil, !llvm.loop !71

.loopexit.loopexit324.unr-lcssa:                  ; preds = %.lr.ph266
  %lcmp.mod329.not = icmp eq i64 %xtraiter327, 0
  br i1 %lcmp.mod329.not, label %.loopexit, label %.lr.ph266.epil.preheader

.lr.ph266.epil.preheader:                         ; preds = %.loopexit.loopexit324.unr-lcssa, %.lr.ph266.preheader
  %indvars.iv283.epil.init = phi i64 [ 0, %.lr.ph266.preheader ], [ %indvars.iv.next284.3, %.loopexit.loopexit324.unr-lcssa ]
  %lcmp.mod330 = icmp ne i64 %xtraiter327, 0
  tail call void @llvm.assume(i1 %lcmp.mod330)
  br label %.lr.ph266.epil

.lr.ph266.epil:                                   ; preds = %.lr.ph266.epil, %.lr.ph266.epil.preheader
  %indvars.iv283.epil = phi i64 [ %indvars.iv283.epil.init, %.lr.ph266.epil.preheader ], [ %indvars.iv.next284.epil, %.lr.ph266.epil ] ; 2 uses
  %epil.iter328 = phi i64 [ 0, %.lr.ph266.epil.preheader ], [ %epil.iter328.next, %.lr.ph266.epil ]
  %i.hi = mul nsw i64 %3, %indvars.iv283.epil
  %i.hj = getelementptr inbounds i8, ptr %1, i64 %i.hi ; 2 uses
  store i32 %i.i, ptr %i.hj, align 4, !tbaa !32
  %i.hk = getelementptr i8, ptr %i.hj, i64 4
  store i32 %i.i, ptr %i.hk, align 4, !tbaa !32
  %indvars.iv.next284.epil = add nuw nsw i64 %indvars.iv283.epil, 1
  %epil.iter328.next = add i64 %epil.iter328, 1   ; 2 uses
  %epil.iter328.cmp.not = icmp eq i64 %epil.iter328.next, %xtraiter327
  br i1 %epil.iter328.cmp.not, label %.loopexit, label %.lr.ph266.epil, !llvm.loop !72

.loopexit.loopexit325.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit325.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit325.unr-lcssa ]
  %lcmp.mod326 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod326)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.hl = mul nsw i64 %3, %indvars.iv.epil
  %i.hm = getelementptr inbounds i8, ptr %1, i64 %i.hl
  store i32 %i.i, ptr %i.hm, align 4, !tbaa !32
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !73

.loopexit:                                        ; preds = %.loopexit.loopexit325.unr-lcssa, %.lr.ph.epil, %.loopexit.loopexit324.unr-lcssa, %.lr.ph266.epil, %.loopexit.loopexit323.unr-lcssa, %.lr.ph268.epil, %.loopexit.loopexit322.unr-lcssa, %.lr.ph270.epil, %.loopexit.loopexit321.unr-lcssa, %.preheader253.epil, %bb.n, %.preheader262, %.preheader260, %.preheader258, %.preheader256, %.preheader254, %.preheader, %bb.l, %bb.p, %bb.s, %bb.r
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mc_block(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 16) %6, i32 noundef range(i32 0, 16) %7) unnamed_addr #6 {
bb.a:
  %i.a = alloca [2560 x i16], align 16            ; 7 uses
  %i.b = alloca [3 x [2560 x i8]], align 16       ; 11 uses
  %i.c = alloca [11 x ptr], align 16              ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.d = shl nuw nsw i32 %7, 4
  %i.e = or disjoint i32 %i.d, %6
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @mc_block.brane, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = and i32 %i.i, 15
  %i.k = lshr i32 %i.i, 4
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr @mc_block.needs, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !11
  %i.o = zext nneg i32 %i.j to i64                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr @mc_block.needs, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %i.r = or i8 %i.q, %i.n                         ; 2 uses
  %.not = icmp eq ptr %0, null                    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 37136
  %i.t = load i32, ptr %i.s, align 8, !tbaa !127
  %.not302 = icmp eq i32 %i.t, 0
  %spec.select = select i1 %.not302, i8 15, i8 %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0283.shrunk = phi i8 [ %spec.select, %bb.b ], [ %i.r, %bb.a ] ; 2 uses
  %.0283 = zext i8 %.0283.shrunk to i32           ; 3 uses
  %i.u = and i32 %.0283, 5
  %.not303 = icmp eq i32 %i.u, 0
  br i1 %.not303, label %bb.d, label %.preheader331

.preheader331:                                    ; preds = %bb.c
  %i.v = add i32 %5, 7                            ; 4 uses
  %i.w = icmp sgt i32 %5, -7
  br i1 %i.w, label %.preheader330.lr.ph, label %._crit_edge345

.preheader330.lr.ph:                              ; preds = %.preheader331
  %i.x = icmp sgt i32 %4, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 37140
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 37132
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 37133
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 37134
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 37135
  %i.ad = sext i32 %3 to i64                      ; 4 uses
  br i1 %i.x, label %.preheader330.lr.ph.split.us, label %.preheader330.preheader

.preheader330.preheader:                          ; preds = %.preheader330.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1) ; 2 uses
  %i.ae = zext nneg i32 %smax to i64
  %i.af = mul nsw i64 %i.ad, %i.ae
  %scevgep = getelementptr i8, ptr %2, i64 %i.af
  br label %._crit_edge345

.preheader330.lr.ph.split.us:                     ; preds = %.preheader330.lr.ph
  br i1 %.not, label %.preheader330.us.us.preheader, label %.preheader330.lr.ph.split.us.split

.preheader330.us.us.preheader:                    ; preds = %.preheader330.lr.ph.split.us
  %smax454 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1) ; 2 uses
  %wide.trip.count452 = zext nneg i32 %4 to i64   ; 3 uses
  %min.iters.check586 = icmp ult i32 %4, 8
  %n.vec588 = and i64 %wide.trip.count452, 2147483640 ; 3 uses
  %cmp.n599 = icmp eq i64 %n.vec588, %wide.trip.count452
  br label %.preheader330.us.us

.preheader330.us.us:                              ; preds = %.preheader330.us.us.preheader, %._crit_edge.split.us.us.us
  %.0279342.us.us = phi ptr [ %i.cr, %._crit_edge.split.us.us.us ], [ %i.b, %.preheader330.us.us.preheader ] ; 3 uses
  %.0281339.us.us = phi ptr [ %i.cq, %._crit_edge.split.us.us.us ], [ %i.a, %.preheader330.us.us.preheader ] ; 3 uses
  %.0284338.us.us = phi i32 [ %i.ct, %._crit_edge.split.us.us.us ], [ 0, %.preheader330.us.us.preheader ]
  %.0294335.us.us = phi ptr [ %i.cs, %._crit_edge.split.us.us.us ], [ %2, %.preheader330.us.us.preheader ] ; 3 uses
  br i1 %min.iters.check586, label %scalar.ph585.preheader, label %vector.body589

vector.body589:                                   ; preds = %.preheader330.us.us, %vector.body589
  %index590 = phi i64 [ %index.next597, %vector.body589 ], [ 0, %.preheader330.us.us ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0294335.us.us, i64 %index590 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %wide.load591 = load <8 x i8>, ptr %i.ah, align 1, !tbaa !11
  %i.ai = zext <8 x i8> %wide.load591 to <8 x i32>
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %wide.load592 = load <8 x i8>, ptr %i.aj, align 1, !tbaa !11
  %i.ak = zext <8 x i8> %wide.load592 to <8 x i32>
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %wide.load593 = load <8 x i8>, ptr %i.al, align 1, !tbaa !11
  %i.am = zext <8 x i8> %wide.load593 to <8 x i32>
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %wide.load594 = load <8 x i8>, ptr %i.an, align 1, !tbaa !11
  %i.ao = zext <8 x i8> %wide.load594 to <8 x i32>
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 5
  %wide.load595 = load <8 x i8>, ptr %i.ap, align 1, !tbaa !11
  %i.aq = zext <8 x i8> %wide.load595 to <8 x i32>
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  %wide.load596 = load <8 x i8>, ptr %i.ar, align 1, !tbaa !11
  %i.as = zext <8 x i8> %wide.load596 to <8 x i32>
  %i.at = add nuw nsw <8 x i32> %i.ao, %i.am
  %i.au = mul nuw nsw <8 x i32> %i.at, splat (i32 20)
  %i.av = add nuw nsw <8 x i32> %i.aq, %i.ak
  %i.aw = mul nsw <8 x i32> %i.av, splat (i32 -5)
  %i.ax = add nuw nsw <8 x i32> %i.as, %i.ai
  %i.ay = add nuw nsw <8 x i32> %i.ax, %i.au
  %i.az = add nsw <8 x i32> %i.ay, %i.aw          ; 2 uses
  %i.ba = trunc nsw <8 x i32> %i.az to <8 x i16>
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.0281339.us.us, i64 %index590
  store <8 x i16> %i.ba, ptr %i.bb, align 2, !tbaa !15
  %i.bc = add nsw <8 x i32> %i.az, splat (i32 16)
  %i.bd = ashr <8 x i32> %i.bc, splat (i32 5)
  %i.be = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bd, <8 x i32> zeroinitializer)
  %i.bf = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.be, <8 x i32> splat (i32 255))
  %i.bg = trunc nuw <8 x i32> %i.bf to <8 x i8>
  %i.bh = getelementptr inbounds nuw i8, ptr %.0279342.us.us, i64 %index590
  store <8 x i8> %i.bg, ptr %i.bh, align 1, !tbaa !11
  %index.next597 = add nuw i64 %index590, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next597, %n.vec588
  br i1 %i.bi, label %middle.block598, label %vector.body589, !llvm.loop !82

middle.block598:                                  ; preds = %vector.body589
  br i1 %cmp.n599, label %._crit_edge.split.us.us.us, label %scalar.ph585.preheader

scalar.ph585.preheader:                           ; preds = %.preheader330.us.us, %middle.block598
  %indvars.iv449.ph = phi i64 [ 0, %.preheader330.us.us ], [ %n.vec588, %middle.block598 ]
  br label %scalar.ph585

scalar.ph585:                                     ; preds = %scalar.ph585.preheader, %scalar.ph585
  %indvars.iv449 = phi i64 [ %indvars.iv.next450, %scalar.ph585 ], [ %indvars.iv449.ph, %scalar.ph585.preheader ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0294335.us.us, i64 %indvars.iv449 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !11
  %i.bm = zext i8 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !11
  %i.bp = zext i8 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !11
  %i.bs = zext i8 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11
  %i.bv = zext i8 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 5
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !11
  %i.by = zext i8 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nuw nsw i32 %i.bv, %i.bs
  %i.cd = mul nuw nsw i32 %i.cc, 20
  %i.ce = add nuw nsw i32 %i.by, %i.bp
  %.neg319.us.us.us = mul nsw i32 %i.ce, -5
  %i.cf = add nuw nsw i32 %i.cb, %i.bm
  %i.cg = add nuw nsw i32 %i.cf, %i.cd
  %i.ch = add nsw i32 %i.cg, %.neg319.us.us.us    ; 2 uses
  %i.ci = trunc nsw i32 %i.ch to i16
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.0281339.us.us, i64 %indvars.iv449
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !15
  %i.ck = add nsw i32 %i.ch, 16
  %i.cl = ashr i32 %i.ck, 5
  %i.cm = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 0)
  %i.cn = tail call i32 @llvm.umin.i32(i32 %i.cm, i32 255)
  %i.co = trunc nuw i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.0279342.us.us, i64 %indvars.iv449
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !11
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %exitcond453.not = icmp eq i64 %indvars.iv.next450, %wide.trip.count452
  br i1 %exitcond453.not, label %._crit_edge.split.us.us.us, label %scalar.ph585, !llvm.loop !83

._crit_edge.split.us.us.us:                       ; preds = %scalar.ph585, %middle.block598
  %i.cq = getelementptr inbounds nuw i8, ptr %.0281339.us.us, i64 128
  %i.cr = getelementptr inbounds nuw i8, ptr %.0279342.us.us, i64 64
  %i.cs = getelementptr inbounds i8, ptr %.0294335.us.us, i64 %i.ad ; 2 uses
  %i.ct = add nuw nsw i32 %.0284338.us.us, 1      ; 2 uses
  %exitcond455.not = icmp eq i32 %i.ct, %smax454
  br i1 %exitcond455.not, label %._crit_edge345, label %.preheader330.us.us, !llvm.loop !84

.preheader330.lr.ph.split.us.split:               ; preds = %.preheader330.lr.ph.split.us
  %i.cu = load i32, ptr %i.y, align 4, !tbaa !36
  %.not318.us = icmp eq i32 %i.cu, 0
  br i1 %.not318.us, label %.preheader330.lr.ph.split.us.split.split.us, label %.preheader330.us.preheader

.preheader330.us.preheader:                       ; preds = %.preheader330.lr.ph.split.us.split
  %smax440 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader330.us

.preheader330.lr.ph.split.us.split.split.us:      ; preds = %.preheader330.lr.ph.split.us.split
  %i.cv = load i8, ptr %i.z, align 4, !tbaa !11
  %i.cw = sext i8 %i.cv to i32                    ; 2 uses
  %i.cx = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.cy = sext i8 %i.cx to i32                    ; 2 uses
  %i.cz = load i8, ptr %i.ab, align 2, !tbaa !11
  %i.da = sext i8 %i.cz to i32                    ; 2 uses
  %i.db = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.dc = sext i8 %i.db to i32                    ; 2 uses
  %smax447 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1) ; 2 uses
  %wide.trip.count445 = zext nneg i32 %4 to i64   ; 3 uses
  %min.iters.check562 = icmp ult i32 %4, 8
  %n.vec564 = and i64 %wide.trip.count445, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.cw, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert565 = insertelement <8 x i32> poison, i32 %i.cy, i64 0
  %broadcast.splat566 = shufflevector <8 x i32> %broadcast.splatinsert565, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert567 = insertelement <8 x i32> poison, i32 %i.da, i64 0
  %broadcast.splat568 = shufflevector <8 x i32> %broadcast.splatinsert567, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert569 = insertelement <8 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat570 = shufflevector <8 x i32> %broadcast.splatinsert569, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n583 = icmp eq i64 %n.vec564, %wide.trip.count445
  br label %.preheader330.us.us356

.preheader330.us.us356:                           ; preds = %._crit_edge.split.split.us.us.us, %.preheader330.lr.ph.split.us.split.split.us
  %.0279342.us.us357 = phi ptr [ %i.b, %.preheader330.lr.ph.split.us.split.split.us ], [ %i.gf, %._crit_edge.split.split.us.us.us ] ; 3 uses
  %.0281339.us.us358 = phi ptr [ %i.a, %.preheader330.lr.ph.split.us.split.split.us ], [ %i.ge, %._crit_edge.split.split.us.us.us ] ; 3 uses
  %.0284338.us.us359 = phi i32 [ 0, %.preheader330.lr.ph.split.us.split.split.us ], [ %i.gh, %._crit_edge.split.split.us.us.us ]
  %.0294335.us.us360 = phi ptr [ %2, %.preheader330.lr.ph.split.us.split.split.us ], [ %i.gg, %._crit_edge.split.split.us.us.us ] ; 3 uses
  br i1 %min.iters.check562, label %scalar.ph561.preheader, label %vector.body571

vector.body571:                                   ; preds = %.preheader330.us.us356, %vector.body571
  %index572 = phi i64 [ %index.next581, %vector.body571 ], [ 0, %.preheader330.us.us356 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0294335.us.us360, i64 %index572 ; 8 uses
  %wide.load573 = load <8 x i8>, ptr %i.dd, align 1, !tbaa !11
  %i.de = zext <8 x i8> %wide.load573 to <8 x i32>
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %wide.load574 = load <8 x i8>, ptr %i.df, align 1, !tbaa !11
  %i.dg = zext <8 x i8> %wide.load574 to <8 x i32>
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  %wide.load575 = load <8 x i8>, ptr %i.dh, align 1, !tbaa !11
  %i.di = zext <8 x i8> %wide.load575 to <8 x i32>
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 3
  %wide.load576 = load <8 x i8>, ptr %i.dj, align 1, !tbaa !11
  %i.dk = zext <8 x i8> %wide.load576 to <8 x i32>
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %wide.load577 = load <8 x i8>, ptr %i.dl, align 1, !tbaa !11
  %i.dm = zext <8 x i8> %wide.load577 to <8 x i32>
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 5
  %wide.load578 = load <8 x i8>, ptr %i.dn, align 1, !tbaa !11
  %i.do = zext <8 x i8> %wide.load578 to <8 x i32>
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 6
  %wide.load579 = load <8 x i8>, ptr %i.dp, align 1, !tbaa !11
  %i.dq = zext <8 x i8> %wide.load579 to <8 x i32>
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 7
  %wide.load580 = load <8 x i8>, ptr %i.dr, align 1, !tbaa !11
  %i.ds = zext <8 x i8> %wide.load580 to <8 x i32>
  %i.dt = add nuw nsw <8 x i32> %i.dm, %i.dk
  %i.du = mul nsw <8 x i32> %i.dt, %broadcast.splat
  %i.dv = add nuw nsw <8 x i32> %i.do, %i.di
  %i.dw = mul nsw <8 x i32> %i.dv, %broadcast.splat566
  %i.dx = add nsw <8 x i32> %i.dw, %i.du
  %i.dy = add nuw nsw <8 x i32> %i.dq, %i.dg
  %i.dz = mul nsw <8 x i32> %i.dy, %broadcast.splat568
  %i.ea = add nsw <8 x i32> %i.dx, %i.dz
  %i.eb = add nuw nsw <8 x i32> %i.ds, %i.de
  %i.ec = mul nsw <8 x i32> %i.eb, %broadcast.splat570
  %i.ed = add nsw <8 x i32> %i.ea, %i.ec          ; 2 uses
  %i.ee = trunc <8 x i32> %i.ed to <8 x i16>
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %.0281339.us.us358, i64 %index572
  store <8 x i16> %i.ee, ptr %i.ef, align 2, !tbaa !15
  %i.eg = add nsw <8 x i32> %i.ed, splat (i32 32)
  %i.eh = ashr <8 x i32> %i.eg, splat (i32 6)
  %i.ei = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.eh, <8 x i32> zeroinitializer)
  %i.ej = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ei, <8 x i32> splat (i32 255))
  %i.ek = trunc nuw <8 x i32> %i.ej to <8 x i8>
  %i.el = getelementptr inbounds nuw i8, ptr %.0279342.us.us357, i64 %index572
  store <8 x i8> %i.ek, ptr %i.el, align 1, !tbaa !11
  %index.next581 = add nuw i64 %index572, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next581, %n.vec564
  br i1 %i.em, label %middle.block582, label %vector.body571, !llvm.loop !85

middle.block582:                                  ; preds = %vector.body571
  br i1 %cmp.n583, label %._crit_edge.split.split.us.us.us, label %scalar.ph561.preheader

scalar.ph561.preheader:                           ; preds = %.preheader330.us.us356, %middle.block582
  %indvars.iv442.ph = phi i64 [ 0, %.preheader330.us.us356 ], [ %n.vec564, %middle.block582 ]
  br label %scalar.ph561

scalar.ph561:                                     ; preds = %scalar.ph561.preheader, %scalar.ph561
  %indvars.iv442 = phi i64 [ %indvars.iv.next443, %scalar.ph561 ], [ %indvars.iv442.ph, %scalar.ph561.preheader ] ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0294335.us.us360, i64 %indvars.iv442 ; 8 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !11
  %i.ep = zext i8 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !11
  %i.es = zext i8 %i.er to i32
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !11
  %i.ev = zext i8 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !11
  %i.ey = zext i8 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !11
  %i.fb = zext i8 %i.fa to i32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 5
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !11
  %i.fe = zext i8 %i.fd to i32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.en, i64 6
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !11
  %i.fh = zext i8 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.en, i64 7
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !11
  %i.fk = zext i8 %i.fj to i32
  %i.fl = add nuw nsw i32 %i.fb, %i.ey
  %i.fm = mul nsw i32 %i.fl, %i.cw
  %i.fn = add nuw nsw i32 %i.fe, %i.ev
  %i.fo = mul nsw i32 %i.fn, %i.cy
  %i.fp = add nsw i32 %i.fo, %i.fm
  %i.fq = add nuw nsw i32 %i.fh, %i.es
  %i.fr = mul nsw i32 %i.fq, %i.da
  %i.fs = add nsw i32 %i.fp, %i.fr
  %i.ft = add nuw nsw i32 %i.fk, %i.ep
  %i.fu = mul nsw i32 %i.ft, %i.dc
  %i.fv = add nsw i32 %i.fs, %i.fu                ; 2 uses
  %i.fw = trunc i32 %i.fv to i16
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.0281339.us.us358, i64 %indvars.iv442
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !15
  %i.fy = add nsw i32 %i.fv, 32
  %i.fz = ashr i32 %i.fy, 6
  %i.ga = tail call i32 @llvm.smax.i32(i32 %i.fz, i32 0)
  %i.gb = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 255)
  %i.gc = trunc nuw i32 %i.gb to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %.0279342.us.us357, i64 %indvars.iv442
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !11
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1 ; 2 uses
  %exitcond446.not = icmp eq i64 %indvars.iv.next443, %wide.trip.count445
  br i1 %exitcond446.not, label %._crit_edge.split.split.us.us.us, label %scalar.ph561, !llvm.loop !86

._crit_edge.split.split.us.us.us:                 ; preds = %scalar.ph561, %middle.block582
  %i.ge = getelementptr inbounds nuw i8, ptr %.0281339.us.us358, i64 128
  %i.gf = getelementptr inbounds nuw i8, ptr %.0279342.us.us357, i64 64
  %i.gg = getelementptr inbounds i8, ptr %.0294335.us.us360, i64 %i.ad ; 2 uses
  %i.gh = add nuw nsw i32 %.0284338.us.us359, 1   ; 2 uses
  %exitcond448.not = icmp eq i32 %i.gh, %smax447
  br i1 %exitcond448.not, label %._crit_edge345, label %.preheader330.us.us356, !llvm.loop !84

.preheader330.us:                                 ; preds = %.preheader330.us.preheader, %._crit_edge.split.split.us351
  %.0279342.us = phi ptr [ %i.it, %._crit_edge.split.split.us351 ], [ %i.b, %.preheader330.us.preheader ] ; 3 uses
  %.0281339.us = phi ptr [ %i.is, %._crit_edge.split.split.us351 ], [ %i.a, %.preheader330.us.preheader ] ; 3 uses
  %.0284338.us = phi i32 [ %i.iv, %._crit_edge.split.split.us351 ], [ 0, %.preheader330.us.preheader ]
  %.0294335.us = phi ptr [ %i.iu, %._crit_edge.split.split.us351 ], [ %2, %.preheader330.us.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader330.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader330.us ] ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0294335.us, i64 %index ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %wide.load = load <8 x i8>, ptr %i.gj, align 1, !tbaa !11
  %i.gk = zext <8 x i8> %wide.load to <8 x i32>
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  %wide.load556 = load <8 x i8>, ptr %i.gl, align 1, !tbaa !11
  %i.gm = zext <8 x i8> %wide.load556 to <8 x i32>
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 3
  %wide.load557 = load <8 x i8>, ptr %i.gn, align 1, !tbaa !11
  %i.go = zext <8 x i8> %wide.load557 to <8 x i32>
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %wide.load558 = load <8 x i8>, ptr %i.gp, align 1, !tbaa !11
  %i.gq = zext <8 x i8> %wide.load558 to <8 x i32>
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 5
  %wide.load559 = load <8 x i8>, ptr %i.gr, align 1, !tbaa !11
  %i.gs = zext <8 x i8> %wide.load559 to <8 x i32>
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gi, i64 6
  %wide.load560 = load <8 x i8>, ptr %i.gt, align 1, !tbaa !11
  %i.gu = zext <8 x i8> %wide.load560 to <8 x i32>
  %i.gv = add nuw nsw <8 x i32> %i.gq, %i.go
  %i.gw = mul nuw nsw <8 x i32> %i.gv, splat (i32 20)
  %i.gx = add nuw nsw <8 x i32> %i.gs, %i.gm
  %i.gy = mul nsw <8 x i32> %i.gx, splat (i32 -5)
  %i.gz = add nuw nsw <8 x i32> %i.gu, %i.gk
  %i.ha = add nuw nsw <8 x i32> %i.gz, %i.gw
  %i.hb = add nsw <8 x i32> %i.ha, %i.gy          ; 2 uses
  %i.hc = trunc nsw <8 x i32> %i.hb to <8 x i16>
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %.0281339.us, i64 %index
  store <8 x i16> %i.hc, ptr %i.hd, align 2, !tbaa !15
  %i.he = add nsw <8 x i32> %i.hb, splat (i32 16)
  %i.hf = ashr <8 x i32> %i.he, splat (i32 5)
  %i.hg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hf, <8 x i32> zeroinitializer)
  %i.hh = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.hg, <8 x i32> splat (i32 255))
  %i.hi = trunc nuw <8 x i32> %i.hh to <8 x i8>
  %i.hj = getelementptr inbounds nuw i8, ptr %.0279342.us, i64 %index
  store <8 x i8> %i.hi, ptr %i.hj, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hk = icmp eq i64 %index.next, %n.vec
  br i1 %i.hk, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.split.us351, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader330.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader330.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0294335.us, i64 %indvars.iv ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !11
  %i.ho = zext i8 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !11
  %i.hr = zext i8 %i.hq to i32
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 3
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !11
  %i.hu = zext i8 %i.ht to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !11
  %i.hx = zext i8 %i.hw to i32
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hl, i64 5
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !11
  %i.ia = zext i8 %i.hz to i32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hl, i64 6
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !11
  %i.id = zext i8 %i.ic to i32
  %i.ie = add nuw nsw i32 %i.hx, %i.hu
  %i.if = mul nuw nsw i32 %i.ie, 20
  %i.ig = add nuw nsw i32 %i.ia, %i.hr
  %.neg319.us350 = mul nsw i32 %i.ig, -5
  %i.ih = add nuw nsw i32 %i.id, %i.ho
  %i.ii = add nuw nsw i32 %i.ih, %i.if
  %i.ij = add nsw i32 %i.ii, %.neg319.us350       ; 2 uses
  %i.ik = trunc nsw i32 %i.ij to i16
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %.0281339.us, i64 %indvars.iv
  store i16 %i.ik, ptr %i.il, align 2, !tbaa !15
  %i.im = add nsw i32 %i.ij, 16
  %i.in = ashr i32 %i.im, 5
  %i.io = tail call i32 @llvm.smax.i32(i32 %i.in, i32 0)
  %i.ip = tail call i32 @llvm.umin.i32(i32 %i.io, i32 255)
  %i.iq = trunc nuw i32 %i.ip to i8
  %i.ir = getelementptr inbounds nuw i8, ptr %.0279342.us, i64 %indvars.iv
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split.split.us351, label %scalar.ph, !llvm.loop !88

._crit_edge.split.split.us351:                    ; preds = %scalar.ph, %middle.block
  %i.is = getelementptr inbounds nuw i8, ptr %.0281339.us, i64 128
  %i.it = getelementptr inbounds nuw i8, ptr %.0279342.us, i64 64
  %i.iu = getelementptr inbounds i8, ptr %.0294335.us, i64 %i.ad ; 2 uses
  %i.iv = add nuw nsw i32 %.0284338.us, 1         ; 2 uses
  %exitcond441.not = icmp eq i32 %i.iv, %smax440
  br i1 %exitcond441.not, label %._crit_edge345, label %.preheader330.us, !llvm.loop !84

._crit_edge345:                                   ; preds = %._crit_edge.split.split.us351, %._crit_edge.split.split.us.us.us, %._crit_edge.split.us.us.us, %.preheader330.preheader, %.preheader331
  %.0294.lcssa = phi ptr [ %2, %.preheader331 ], [ %i.cs, %._crit_edge.split.us.us.us ], [ %i.gg, %._crit_edge.split.split.us.us.us ], [ %scevgep, %.preheader330.preheader ], [ %i.iu, %._crit_edge.split.split.us351 ]
  %.0284.lcssa = phi i32 [ 0, %.preheader331 ], [ %smax454, %._crit_edge.split.us.us.us ], [ %smax447, %._crit_edge.split.split.us.us.us ], [ %smax, %.preheader330.preheader ], [ %smax440, %._crit_edge.split.split.us351 ]
  %i.iw = mul nsw i32 %.0284.lcssa, %3
  %i.ix = sext i32 %i.iw to i64
  %i.iy = sub nsw i64 0, %i.ix
  %i.iz = getelementptr inbounds i8, ptr %.0294.lcssa, i64 %i.iy
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge345, %bb.c
  %.1295 = phi ptr [ %i.iz, %._crit_edge345 ], [ %2, %bb.c ] ; 14 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.1295, i64 3 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 2560 ; 6 uses
  %i.jc = and i32 %.0283, 2
  %.not304 = icmp eq i32 %i.jc, 0
  br i1 %.not304, label %bb.i, label %.preheader329

.preheader329:                                    ; preds = %bb.d
  %i.jd = icmp sgt i32 %5, 0
  br i1 %i.jd, label %.preheader328.lr.ph, label %._crit_edge372

.preheader328.lr.ph:                              ; preds = %.preheader329
  %.not314365 = icmp slt i32 %4, 0
  %i.je = shl nsw i32 %3, 1                       ; 2 uses
  %i.jf = mul i32 %3, 3                           ; 2 uses
  %i.jg = shl i32 %3, 2                           ; 2 uses
  %i.jh = mul i32 %3, 5                           ; 2 uses
  %i.ji = mul i32 %3, 6                           ; 2 uses
  %i.jj = mul nsw i32 %3, 7
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 37140
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 37132
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 37133
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 37134
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 37135
  %i.jp = sext i32 %3 to i64                      ; 8 uses
  br i1 %.not314365, label %.preheader328.us.preheader, label %.preheader328.lr.ph.split

.preheader328.us.preheader:                       ; preds = %.preheader328.lr.ph
  %i.jq = zext nneg i32 %5 to i64
  %i.jr = mul nsw i64 %i.jq, %i.jp
  %i.js = getelementptr i8, ptr %.1295, i64 %i.jr
  %scevgep468 = getelementptr i8, ptr %i.js, i64 3
  br label %._crit_edge372

.preheader328.lr.ph.split:                        ; preds = %.preheader328.lr.ph
  br i1 %.not, label %.preheader328.us377.preheader, label %.preheader328.lr.ph.split.split

.preheader328.us377.preheader:                    ; preds = %.preheader328.lr.ph.split
  %i.jt = sext i32 %i.je to i64                   ; 3 uses
  %i.ju = sext i32 %i.jf to i64                   ; 3 uses
  %i.jv = sext i32 %i.jg to i64                   ; 3 uses
  %i.jw = sext i32 %i.jh to i64                   ; 3 uses
  %i.jx = sext i32 %i.ji to i64                   ; 3 uses
  %i.jy = add nuw i32 %4, 1
  %wide.trip.count465 = zext i32 %i.jy to i64     ; 13 uses
  %i.jz = add nsw i32 %5, -1
  %i.ka = zext i32 %i.jz to i64                   ; 2 uses
  %i.kb = zext nneg i32 %5 to i64
  %i.kc = mul nsw i64 %i.kb, %i.jp
  %i.kd = getelementptr i8, ptr %.1295, i64 %i.kc
  %i.ke = getelementptr i8, ptr %i.kd, i64 %wide.trip.count465
  %scevgep633 = getelementptr i8, ptr %i.ke, i64 3
  %i.kf = getelementptr i8, ptr %.1295, i64 %i.jp
  %scevgep634 = getelementptr i8, ptr %i.kf, i64 3
  %i.kg = mul nsw i64 %i.jp, %i.ka                ; 5 uses
  %i.kh = getelementptr i8, ptr %.1295, i64 %i.kg
  %i.ki = getelementptr i8, ptr %i.kh, i64 %i.jt
  %i.kj = getelementptr i8, ptr %i.ki, i64 %wide.trip.count465
  %scevgep635 = getelementptr i8, ptr %i.kj, i64 3
  %i.kk = getelementptr i8, ptr %.1295, i64 %i.jt
  %scevgep636 = getelementptr i8, ptr %i.kk, i64 3
  %i.kl = getelementptr i8, ptr %.1295, i64 %i.kg
  %i.km = getelementptr i8, ptr %i.kl, i64 %i.ju
  %i.kn = getelementptr i8, ptr %i.km, i64 %wide.trip.count465
  %i.ko = getelementptr i8, ptr %.1295, i64 %i.ju
  %i.kp = getelementptr i8, ptr %.1295, i64 %i.kg
  %i.kq = getelementptr i8, ptr %i.kp, i64 %i.jv
  %i.kr = getelementptr i8, ptr %i.kq, i64 %wide.trip.count465
  %i.ks = insertelement <2 x ptr> poison, ptr %i.kr, i64 0
  %i.kt = insertelement <2 x ptr> %i.ks, ptr %i.kn, i64 1
  %i.ku = getelementptr i8, <2 x ptr> %i.kt, i64 3
  %i.kv = getelementptr i8, ptr %.1295, i64 %i.jv
  %i.kw = insertelement <2 x ptr> poison, ptr %i.kv, i64 0
  %i.kx = insertelement <2 x ptr> %i.kw, ptr %i.ko, i64 1
  %i.ky = getelementptr i8, <2 x ptr> %i.kx, i64 3
  %i.kz = getelementptr i8, ptr %.1295, i64 %i.kg
  %i.la = getelementptr i8, ptr %i.kz, i64 %i.jw
  %i.lb = getelementptr i8, ptr %i.la, i64 %wide.trip.count465
  %i.lc = getelementptr i8, ptr %.1295, i64 %i.jw
  %i.ld = getelementptr i8, ptr %.1295, i64 %i.kg
  %i.le = getelementptr i8, ptr %i.ld, i64 %i.jx
  %i.lf = getelementptr i8, ptr %i.le, i64 %wide.trip.count465
  %i.lg = insertelement <2 x ptr> poison, ptr %i.lf, i64 0
  %i.lh = insertelement <2 x ptr> %i.lg, ptr %i.lb, i64 1
  %i.li = getelementptr i8, <2 x ptr> %i.lh, i64 3
  %i.lj = getelementptr i8, ptr %.1295, i64 %i.jx
  %i.lk = insertelement <2 x ptr> poison, ptr %i.lj, i64 0
  %i.ll = insertelement <2 x ptr> %i.lk, ptr %i.lc, i64 1
  %i.lm = getelementptr i8, <2 x ptr> %i.ll, i64 3
  %i.ln = shl nuw nsw i64 %i.ka, 6
  %i.lo = getelementptr i8, ptr %i.b, i64 %i.ln
  %i.lp = getelementptr i8, ptr %i.lo, i64 %wide.trip.count465
  %scevgep645 = getelementptr i8, ptr %i.lp, i64 2560 ; 3 uses
  %i.lq = insertelement <4 x ptr> poison, ptr %i.jb, i64 0
  %i.lr = shufflevector <4 x ptr> %i.lq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ls = insertelement <4 x ptr> poison, ptr %scevgep645, i64 0
  %i.lt = shufflevector <4 x ptr> %i.ls, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lu = shufflevector <2 x ptr> %i.lm, <2 x ptr> %i.ky, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lv = shufflevector <2 x ptr> %i.li, <2 x ptr> %i.ku, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %min.iters.check647 = icmp ult i32 %4, 3
  %i.lw = icmp ult <4 x ptr> %i.lr, %i.lv
  %i.lx = icmp ult <4 x ptr> %i.lu, %i.lt
  %stride.check = icmp slt i32 %3, 0
  %i.ly = and <4 x i1> %i.lw, %i.lx
  %bound0659 = icmp ult ptr %i.jb, %scevgep635
  %bound1660 = icmp ult ptr %scevgep636, %scevgep645
  %found.conflict661 = and i1 %bound0659, %bound1660
  %bound0663 = icmp ult ptr %i.jb, %scevgep633
  %bound1664 = icmp ult ptr %scevgep634, %scevgep645
  %found.conflict665 = and i1 %bound0663, %bound1664
  %i.lz = bitcast <4 x i1> %i.ly to i4
  %i.ma = icmp ne i4 %i.lz, 0
  %op.rdx917 = or i1 %i.ma, %found.conflict661
  %op.rdx918 = or i1 %found.conflict665, %stride.check
  %op.rdx919 = or i1 %op.rdx917, %op.rdx918
  %min.iters.check667 = icmp ult i32 %4, 15
  %i.mb = and i64 %wide.trip.count465, 12
  %n.vec669 = and i64 %wide.trip.count465, 4294967280 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec669, %wide.trip.count465
  %min.epilog.iters.check = icmp eq i64 %i.mb, 0
  %n.vec681 = and i64 %wide.trip.count465, 4294967292 ; 3 uses
  %cmp.n690 = icmp eq i64 %n.vec681, %wide.trip.count465
  br label %iter.check

iter.check:                                       ; preds = %.preheader328.us377.preheader, %._crit_edge.split.us.us
  %.1280370.us378 = phi ptr [ %i.pb, %._crit_edge.split.us.us ], [ %i.jb, %.preheader328.us377.preheader ] ; 4 uses
  %.1285369.us379 = phi i32 [ %i.pc, %._crit_edge.split.us.us ], [ 0, %.preheader328.us377.preheader ]
  %.2296367.us380 = phi ptr [ %i.pa, %._crit_edge.split.us.us ], [ %i.ja, %.preheader328.us377.preheader ] ; 7 uses
  %invariant.gep534 = getelementptr i8, ptr %.2296367.us380, i64 %i.jp ; 3 uses
  %invariant.gep536 = getelementptr i8, ptr %.2296367.us380, i64 %i.jt ; 3 uses
  %invariant.gep538 = getelementptr i8, ptr %.2296367.us380, i64 %i.ju ; 3 uses
  %invariant.gep540 = getelementptr i8, ptr %.2296367.us380, i64 %i.jv ; 3 uses
  %invariant.gep542 = getelementptr i8, ptr %.2296367.us380, i64 %i.jw ; 3 uses
  %invariant.gep544 = getelementptr i8, ptr %.2296367.us380, i64 %i.jx ; 3 uses
  %brmerge = select i1 %min.iters.check647, i1 true, i1 %op.rdx919
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check667, label %vec.epilog.ph, label %vector.body670

vector.body670:                                   ; preds = %vector.main.loop.iter.check, %vector.body670
  %index671 = phi i64 [ %index.next678, %vector.body670 ], [ 0, %vector.main.loop.iter.check ] ; 8 uses
  %i.mc = getelementptr i8, ptr %invariant.gep534, i64 %index671
  %wide.load672 = load <16 x i8>, ptr %i.mc, align 1, !tbaa !11, !alias.scope !130
  %i.md = zext <16 x i8> %wide.load672 to <16 x i32>
  %i.me = getelementptr i8, ptr %invariant.gep536, i64 %index671
  %wide.load673 = load <16 x i8>, ptr %i.me, align 1, !tbaa !11, !alias.scope !131
  %i.mf = zext <16 x i8> %wide.load673 to <16 x i32>
  %i.mg = getelementptr i8, ptr %invariant.gep538, i64 %index671
  %wide.load674 = load <16 x i8>, ptr %i.mg, align 1, !tbaa !11, !alias.scope !132
  %i.mh = zext <16 x i8> %wide.load674 to <16 x i32>
  %i.mi = getelementptr i8, ptr %invariant.gep540, i64 %index671
  %wide.load675 = load <16 x i8>, ptr %i.mi, align 1, !tbaa !11, !alias.scope !133
  %i.mj = zext <16 x i8> %wide.load675 to <16 x i32>
  %i.mk = getelementptr i8, ptr %invariant.gep542, i64 %index671
  %wide.load676 = load <16 x i8>, ptr %i.mk, align 1, !tbaa !11, !alias.scope !134
  %i.ml = zext <16 x i8> %wide.load676 to <16 x i32>
  %i.mm = getelementptr i8, ptr %invariant.gep544, i64 %index671
  %wide.load677 = load <16 x i8>, ptr %i.mm, align 1, !tbaa !11, !alias.scope !135
  %i.mn = zext <16 x i8> %wide.load677 to <16 x i32>
  %i.mo = add nuw nsw <16 x i32> %i.mj, %i.mh
  %i.mp = mul nuw nsw <16 x i32> %i.mo, splat (i32 20)
  %i.mq = add nuw nsw <16 x i32> %i.ml, %i.mf
  %i.mr = mul nsw <16 x i32> %i.mq, splat (i32 -5)
  %i.ms = add nuw nsw <16 x i32> %i.mn, %i.md
  %i.mt = add nuw nsw <16 x i32> %i.ms, splat (i32 16)
  %i.mu = add nuw nsw <16 x i32> %i.mt, %i.mp
  %i.mv = add nsw <16 x i32> %i.mu, %i.mr
  %i.mw = ashr <16 x i32> %i.mv, splat (i32 5)
  %i.mx = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.mw, <16 x i32> zeroinitializer)
  %i.my = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.mx, <16 x i32> splat (i32 255))
  %i.mz = trunc nuw <16 x i32> %i.my to <16 x i8>
  %i.na = getelementptr inbounds nuw i8, ptr %.1280370.us378, i64 %index671
  store <16 x i8> %i.mz, ptr %i.na, align 1, !tbaa !11, !alias.scope !136, !noalias !137
  %index.next678 = add nuw i64 %index671, 16      ; 2 uses
  %i.nb = icmp eq i64 %index.next678, %n.vec669
  br i1 %i.nb, label %middle.block679, label %vector.body670, !llvm.loop !97

middle.block679:                                  ; preds = %vector.body670
  br i1 %cmp.n680, label %._crit_edge.split.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block679
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !138

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec669, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index682 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next689, %vec.epilog.vector.body ] ; 8 uses
  %i.nc = getelementptr i8, ptr %invariant.gep534, i64 %index682
  %wide.load683 = load <4 x i8>, ptr %i.nc, align 1, !tbaa !11, !alias.scope !130
  %i.nd = zext <4 x i8> %wide.load683 to <4 x i32>
  %i.ne = getelementptr i8, ptr %invariant.gep536, i64 %index682
  %wide.load684 = load <4 x i8>, ptr %i.ne, align 1, !tbaa !11, !alias.scope !131
  %i.nf = zext <4 x i8> %wide.load684 to <4 x i32>
  %i.ng = getelementptr i8, ptr %invariant.gep538, i64 %index682
  %wide.load685 = load <4 x i8>, ptr %i.ng, align 1, !tbaa !11, !alias.scope !132
  %i.nh = zext <4 x i8> %wide.load685 to <4 x i32>
  %i.ni = getelementptr i8, ptr %invariant.gep540, i64 %index682
  %wide.load686 = load <4 x i8>, ptr %i.ni, align 1, !tbaa !11, !alias.scope !133
  %i.nj = zext <4 x i8> %wide.load686 to <4 x i32>
  %i.nk = getelementptr i8, ptr %invariant.gep542, i64 %index682
  %wide.load687 = load <4 x i8>, ptr %i.nk, align 1, !tbaa !11, !alias.scope !134
  %i.nl = zext <4 x i8> %wide.load687 to <4 x i32>
  %i.nm = getelementptr i8, ptr %invariant.gep544, i64 %index682
  %wide.load688 = load <4 x i8>, ptr %i.nm, align 1, !tbaa !11, !alias.scope !135
  %i.nn = zext <4 x i8> %wide.load688 to <4 x i32>
  %i.no = add nuw nsw <4 x i32> %i.nj, %i.nh
  %i.np = mul nuw nsw <4 x i32> %i.no, splat (i32 20)
  %i.nq = add nuw nsw <4 x i32> %i.nl, %i.nf
  %i.nr = mul nsw <4 x i32> %i.nq, splat (i32 -5)
  %i.ns = add nuw nsw <4 x i32> %i.nn, %i.nd
  %i.nt = add nuw nsw <4 x i32> %i.ns, splat (i32 16)
  %i.nu = add nuw nsw <4 x i32> %i.nt, %i.np
  %i.nv = add nsw <4 x i32> %i.nu, %i.nr
  %i.nw = ashr <4 x i32> %i.nv, splat (i32 5)
  %i.nx = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nw, <4 x i32> zeroinitializer)
  %i.ny = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.nx, <4 x i32> splat (i32 255))
  %i.nz = trunc nuw <4 x i32> %i.ny to <4 x i8>
  %i.oa = getelementptr inbounds nuw i8, ptr %.1280370.us378, i64 %index682
  store <4 x i8> %i.nz, ptr %i.oa, align 1, !tbaa !11, !alias.scope !136, !noalias !137
  %index.next689 = add nuw i64 %index682, 4       ; 2 uses
  %i.ob = icmp eq i64 %index.next689, %n.vec681
  br i1 %i.ob, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !98

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n690, label %._crit_edge.split.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv462.ph = phi i64 [ 0, %iter.check ], [ %n.vec681, %vec.epilog.middle.block ], [ %n.vec669, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv462 = phi i64 [ %indvars.iv.next463, %vec.epilog.scalar.ph ], [ %indvars.iv462.ph, %vec.epilog.scalar.ph.preheader ] ; 8 uses
  %gep535 = getelementptr i8, ptr %invariant.gep534, i64 %indvars.iv462
  %i.oc = load i8, ptr %gep535, align 1, !tbaa !11
  %i.od = zext i8 %i.oc to i32
  %gep537 = getelementptr i8, ptr %invariant.gep536, i64 %indvars.iv462
  %i.oe = load i8, ptr %gep537, align 1, !tbaa !11
  %i.of = zext i8 %i.oe to i32
  %gep539 = getelementptr i8, ptr %invariant.gep538, i64 %indvars.iv462
  %i.og = load i8, ptr %gep539, align 1, !tbaa !11
  %i.oh = zext i8 %i.og to i32
  %gep541 = getelementptr i8, ptr %invariant.gep540, i64 %indvars.iv462
  %i.oi = load i8, ptr %gep541, align 1, !tbaa !11
  %i.oj = zext i8 %i.oi to i32
  %gep543 = getelementptr i8, ptr %invariant.gep542, i64 %indvars.iv462
  %i.ok = load i8, ptr %gep543, align 1, !tbaa !11
  %i.ol = zext i8 %i.ok to i32
  %gep545 = getelementptr i8, ptr %invariant.gep544, i64 %indvars.iv462
  %i.om = load i8, ptr %gep545, align 1, !tbaa !11
  %i.on = zext i8 %i.om to i32
  %i.oo = add nuw nsw i32 %i.oj, %i.oh
  %i.op = mul nuw nsw i32 %i.oo, 20
  %i.oq = add nuw nsw i32 %i.ol, %i.of
  %.neg316.us.us = mul nsw i32 %i.oq, -5
  %i.or = add nuw nsw i32 %i.on, %i.od
  %i.os = add nuw nsw i32 %i.or, 16
  %i.ot = add nuw nsw i32 %i.os, %i.op
  %i.ou = add nsw i32 %i.ot, %.neg316.us.us
  %i.ov = ashr i32 %i.ou, 5
  %i.ow = tail call i32 @llvm.smax.i32(i32 %i.ov, i32 0)
  %i.ox = tail call i32 @llvm.umin.i32(i32 %i.ow, i32 255)
  %i.oy = trunc nuw i32 %i.ox to i8
  %i.oz = getelementptr inbounds nuw i8, ptr %.1280370.us378, i64 %indvars.iv462
  store i8 %i.oy, ptr %i.oz, align 1, !tbaa !11
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count465
  br i1 %exitcond466.not, label %._crit_edge.split.us.us, label %vec.epilog.scalar.ph, !llvm.loop !99

._crit_edge.split.us.us:                          ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block679
  %i.pa = getelementptr inbounds i8, ptr %.2296367.us380, i64 %i.jp ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.1280370.us378, i64 64
  %i.pc = add nuw nsw i32 %.1285369.us379, 1      ; 2 uses
  %exitcond467.not = icmp eq i32 %i.pc, %5
  br i1 %exitcond467.not, label %._crit_edge372, label %iter.check, !llvm.loop !100

.preheader328.lr.ph.split.split:                  ; preds = %.preheader328.lr.ph.split
  %i.pd = load i32, ptr %i.jk, align 4, !tbaa !36
  %.not315 = icmp eq i32 %i.pd, 0
  %i.pe = sext i32 %i.je to i64
  %i.pf = sext i32 %i.jf to i64
  %i.pg = sext i32 %i.jg to i64
  %i.ph = sext i32 %i.jh to i64
  %i.pi = sext i32 %i.ji to i64
  %i.pj = sext i32 %i.jj to i64
  %i.pk = add nuw i32 %4, 1
  %wide.trip.count459 = zext i32 %i.pk to i64
  br label %.preheader328

.preheader328:                                    ; preds = %.preheader328.lr.ph.split.split, %._crit_edge.split
  %.1280370 = phi ptr [ %i.jb, %.preheader328.lr.ph.split.split ], [ %i.rk, %._crit_edge.split ] ; 2 uses
  %.1285369 = phi i32 [ 0, %.preheader328.lr.ph.split.split ], [ %i.rl, %._crit_edge.split ]
  %.2296367 = phi ptr [ %i.ja, %.preheader328.lr.ph.split.split ], [ %i.rj, %._crit_edge.split ] ; 9 uses
  %invariant.gep = getelementptr i8, ptr %.2296367, i64 %i.jp
  %invariant.gep522 = getelementptr i8, ptr %.2296367, i64 %i.pe
  %invariant.gep524 = getelementptr i8, ptr %.2296367, i64 %i.pf
  %invariant.gep526 = getelementptr i8, ptr %.2296367, i64 %i.pg
  %invariant.gep528 = getelementptr i8, ptr %.2296367, i64 %i.ph
  %invariant.gep530 = getelementptr i8, ptr %.2296367, i64 %i.pi
  %invariant.gep532 = getelementptr i8, ptr %.2296367, i64 %i.pj
  br label %bb.e

bb.e:                                             ; preds = %.preheader328, %bb.h
  %indvars.iv456 = phi i64 [ 0, %.preheader328 ], [ %indvars.iv.next457, %bb.h ] ; 10 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv456
  %i.pl = load i8, ptr %gep, align 1, !tbaa !11
  %i.pm = zext i8 %i.pl to i32                    ; 2 uses
  %gep523 = getelementptr i8, ptr %invariant.gep522, i64 %indvars.iv456
  %i.pn = load i8, ptr %gep523, align 1, !tbaa !11
  %i.po = zext i8 %i.pn to i32                    ; 2 uses
  %gep525 = getelementptr i8, ptr %invariant.gep524, i64 %indvars.iv456
  %i.pp = load i8, ptr %gep525, align 1, !tbaa !11
  %i.pq = zext i8 %i.pp to i32                    ; 2 uses
  %gep527 = getelementptr i8, ptr %invariant.gep526, i64 %indvars.iv456
  %i.pr = load i8, ptr %gep527, align 1, !tbaa !11
  %i.ps = zext i8 %i.pr to i32                    ; 2 uses
  %gep529 = getelementptr i8, ptr %invariant.gep528, i64 %indvars.iv456
  %i.pt = load i8, ptr %gep529, align 1, !tbaa !11
  %i.pu = zext i8 %i.pt to i32                    ; 2 uses
  %gep531 = getelementptr i8, ptr %invariant.gep530, i64 %indvars.iv456
  %i.pv = load i8, ptr %gep531, align 1, !tbaa !11
  %i.pw = zext i8 %i.pv to i32                    ; 2 uses
  br i1 %.not315, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.px = add nuw nsw i32 %i.ps, %i.pq
  %i.py = mul nuw nsw i32 %i.px, 20
  %i.pz = add nuw nsw i32 %i.pu, %i.po
  %.neg316 = mul nsw i32 %i.pz, -5
  %i.qa = add nuw nsw i32 %i.pw, %i.pm
  %i.qb = add nuw nsw i32 %i.qa, 16
  %i.qc = add nuw nsw i32 %i.qb, %i.py
  %i.qd = add nsw i32 %i.qc, %.neg316
  %i.qe = ashr i32 %i.qd, 5
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %gep533 = getelementptr i8, ptr %invariant.gep532, i64 %indvars.iv456
  %i.qf = load i8, ptr %gep533, align 1, !tbaa !11
  %i.qg = zext i8 %i.qf to i32
  %i.qh = getelementptr inbounds nuw i8, ptr %.2296367, i64 %indvars.iv456
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !11
  %i.qj = zext i8 %i.qi to i32
  %i.qk = load i8, ptr %i.jl, align 4, !tbaa !11
  %i.ql = sext i8 %i.qk to i32
  %i.qm = add nuw nsw i32 %i.ps, %i.pq
  %i.qn = mul nsw i32 %i.qm, %i.ql
  %i.qo = load i8, ptr %i.jm, align 1, !tbaa !11
  %i.qp = sext i8 %i.qo to i32
  %i.qq = add nuw nsw i32 %i.pu, %i.po
  %i.qr = mul nsw i32 %i.qq, %i.qp
  %i.qs = load i8, ptr %i.jn, align 2, !tbaa !11
  %i.qt = sext i8 %i.qs to i32
  %i.qu = add nuw nsw i32 %i.pw, %i.pm
  %i.qv = mul nsw i32 %i.qu, %i.qt
  %i.qw = load i8, ptr %i.jo, align 1, !tbaa !11
  %i.qx = sext i8 %i.qw to i32
  %i.qy = add nuw nsw i32 %i.qg, %i.qj
  %i.qz = mul nsw i32 %i.qy, %i.qx
  %i.ra = add nsw i32 %i.qn, 32
  %i.rb = add nsw i32 %i.ra, %i.qr
  %i.rc = add nsw i32 %i.rb, %i.qv
  %i.rd = add nsw i32 %i.rc, %i.qz
  %i.re = ashr i32 %i.rd, 6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0275 = phi i32 [ %i.qe, %bb.f ], [ %i.re, %bb.g ]
  %i.rf = tail call i32 @llvm.smax.i32(i32 %.0275, i32 0)
  %i.rg = tail call i32 @llvm.umin.i32(i32 %i.rf, i32 255)
  %i.rh = trunc nuw i32 %i.rg to i8
  %i.ri = getelementptr inbounds nuw i8, ptr %.1280370, i64 %indvars.iv456
  store i8 %i.rh, ptr %i.ri, align 1, !tbaa !11
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %exitcond460.not = icmp eq i64 %indvars.iv.next457, %wide.trip.count459
  br i1 %exitcond460.not, label %._crit_edge.split, label %bb.e, !llvm.loop !101

._crit_edge.split:                                ; preds = %bb.h
  %i.rj = getelementptr inbounds i8, ptr %.2296367, i64 %i.jp ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.1280370, i64 64
  %i.rl = add nuw nsw i32 %.1285369, 1            ; 2 uses
  %exitcond461.not = icmp eq i32 %i.rl, %5
  br i1 %exitcond461.not, label %._crit_edge372, label %.preheader328, !llvm.loop !100

._crit_edge372:                                   ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader328.us.preheader, %.preheader329
  %.2296.lcssa = phi ptr [ %i.ja, %.preheader329 ], [ %i.pa, %._crit_edge.split.us.us ], [ %scevgep468, %.preheader328.us.preheader ], [ %i.rj, %._crit_edge.split ]
  %.1285.lcssa = phi i32 [ 0, %.preheader329 ], [ %5, %._crit_edge.split.us.us ], [ %5, %.preheader328.us.preheader ], [ %5, %._crit_edge.split ]
  %i.rm = mul nsw i32 %.1285.lcssa, %3
  %i.rn = sext i32 %i.rm to i64
  %i.ro = sub nsw i64 0, %i.rn
  %i.rp = getelementptr inbounds i8, ptr %.2296.lcssa, i64 %i.ro
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge372, %bb.d
  %.3297 = phi ptr [ %i.rp, %._crit_edge372 ], [ %i.ja, %bb.d ]
  %i.rq = mul nsw i32 %3, 3
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds i8, ptr %.3297, i64 %i.rr ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.b, i64 5120 ; 3 uses
  %i.ru = and i32 %.0283, 4
  %.not305 = icmp ne i32 %i.ru, 0
  %i.rv = icmp sgt i32 %5, 0                      ; 3 uses
  %or.cond = and i1 %.not305, %i.rv
  br i1 %or.cond, label %.preheader325.lr.ph, label %.loopexit327

.preheader325.lr.ph:                              ; preds = %bb.i
  %i.rw = icmp sgt i32 %4, 0
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 37140
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 37132
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 37133
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 37134
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 37135
  br i1 %i.rw, label %.preheader325.lr.ph.split, label %.loopexit327

.preheader325.lr.ph.split:                        ; preds = %.preheader325.lr.ph
  br i1 %.not, label %.preheader325.us.preheader, label %.preheader325.preheader

.preheader325.preheader:                          ; preds = %.preheader325.lr.ph.split
  %.pre = load i32, ptr %i.rx, align 4, !tbaa !36
  %.not313 = icmp eq i32 %.pre, 0
  %wide.trip.count472 = zext nneg i32 %4 to i64   ; 5 uses
  %wide.trip.count477 = zext nneg i32 %4 to i64
  %min.iters.check719 = icmp ult i32 %4, 8
  %n.vec721 = and i64 %wide.trip.count472, 2147483640 ; 3 uses
  %cmp.n732 = icmp eq i64 %n.vec721, %wide.trip.count472
  %min.iters.check693 = icmp ult i32 %4, 8
  %n.vec695 = and i64 %wide.trip.count472, 2147483640 ; 3 uses
  %cmp.n716 = icmp eq i64 %n.vec695, %wide.trip.count472
  br label %.preheader325

.preheader325.us.preheader:                       ; preds = %.preheader325.lr.ph.split
  %wide.trip.count483 = zext nneg i32 %4 to i64   ; 3 uses
  %min.iters.check735 = icmp ult i32 %4, 8
  %n.vec737 = and i64 %wide.trip.count483, 2147483640 ; 3 uses
  %cmp.n748 = icmp eq i64 %n.vec737, %wide.trip.count483
  br label %.preheader325.us

.preheader325.us:                                 ; preds = %.preheader325.us.preheader, %._crit_edge.split387.us.us
  %.2394.us = phi ptr [ %i.uj, %._crit_edge.split387.us.us ], [ %i.rt, %.preheader325.us.preheader ] ; 3 uses
  %.1282391.us = phi ptr [ %i.ui, %._crit_edge.split387.us.us ], [ %i.a, %.preheader325.us.preheader ] ; 3 uses
  %.2286390.us = phi i32 [ %i.uk, %._crit_edge.split387.us.us ], [ 0, %.preheader325.us.preheader ]
  br i1 %min.iters.check735, label %scalar.ph734.preheader, label %vector.body738

vector.body738:                                   ; preds = %.preheader325.us, %vector.body738
  %index739 = phi i64 [ %index.next746, %vector.body738 ], [ 0, %.preheader325.us ] ; 3 uses
  %i.sc = getelementptr inbounds nuw [2 x i8], ptr %.1282391.us, i64 %index739 ; 6 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 128
  %wide.load740 = load <8 x i16>, ptr %i.sd, align 2, !tbaa !15
  %i.se = sext <8 x i16> %wide.load740 to <8 x i32>
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 256
  %wide.load741 = load <8 x i16>, ptr %i.sf, align 2, !tbaa !15
  %i.sg = sext <8 x i16> %wide.load741 to <8 x i32>
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sc, i64 384
  %wide.load742 = load <8 x i16>, ptr %i.sh, align 2, !tbaa !15
  %i.si = sext <8 x i16> %wide.load742 to <8 x i32>
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sc, i64 512
  %wide.load743 = load <8 x i16>, ptr %i.sj, align 2, !tbaa !15
  %i.sk = sext <8 x i16> %wide.load743 to <8 x i32>
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sc, i64 640
  %wide.load744 = load <8 x i16>, ptr %i.sl, align 2, !tbaa !15
  %i.sm = sext <8 x i16> %wide.load744 to <8 x i32>
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sc, i64 768
  %wide.load745 = load <8 x i16>, ptr %i.sn, align 2, !tbaa !15
  %i.so = sext <8 x i16> %wide.load745 to <8 x i32>
  %i.sp = add nsw <8 x i32> %i.sk, %i.si
  %i.sq = mul nsw <8 x i32> %i.sp, splat (i32 20)
  %i.sr = add nsw <8 x i32> %i.sm, %i.sg
  %i.ss = mul nsw <8 x i32> %i.sr, splat (i32 -5)
  %i.st = add nsw <8 x i32> %i.so, %i.se
  %i.su = add nsw <8 x i32> %i.st, splat (i32 512)
  %i.sv = add nsw <8 x i32> %i.su, %i.sq
  %i.sw = add nsw <8 x i32> %i.sv, %i.ss
  %i.sx = ashr <8 x i32> %i.sw, splat (i32 10)
  %i.sy = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.sx, <8 x i32> zeroinitializer)
  %i.sz = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.sy, <8 x i32> splat (i32 255))
  %i.ta = trunc nuw <8 x i32> %i.sz to <8 x i8>
  %i.tb = getelementptr inbounds nuw i8, ptr %.2394.us, i64 %index739
  store <8 x i8> %i.ta, ptr %i.tb, align 1, !tbaa !11
  %index.next746 = add nuw i64 %index739, 8       ; 2 uses
  %i.tc = icmp eq i64 %index.next746, %n.vec737
  br i1 %i.tc, label %middle.block747, label %vector.body738, !llvm.loop !102

middle.block747:                                  ; preds = %vector.body738
  br i1 %cmp.n748, label %._crit_edge.split387.us.us, label %scalar.ph734.preheader

scalar.ph734.preheader:                           ; preds = %.preheader325.us, %middle.block747
  %indvars.iv480.ph = phi i64 [ 0, %.preheader325.us ], [ %n.vec737, %middle.block747 ]
  br label %scalar.ph734

scalar.ph734:                                     ; preds = %scalar.ph734.preheader, %scalar.ph734
  %indvars.iv480 = phi i64 [ %indvars.iv.next481, %scalar.ph734 ], [ %indvars.iv480.ph, %scalar.ph734.preheader ] ; 3 uses
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %.1282391.us, i64 %indvars.iv480 ; 6 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 128
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !15
  %i.tg = sext i16 %i.tf to i32
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 256
  %i.ti = load i16, ptr %i.th, align 2, !tbaa !15
  %i.tj = sext i16 %i.ti to i32
  %i.tk = getelementptr inbounds nuw i8, ptr %i.td, i64 384
  %i.tl = load i16, ptr %i.tk, align 2, !tbaa !15
  %i.tm = sext i16 %i.tl to i32
  %i.tn = getelementptr inbounds nuw i8, ptr %i.td, i64 512
  %i.to = load i16, ptr %i.tn, align 2, !tbaa !15
  %i.tp = sext i16 %i.to to i32
  %i.tq = getelementptr inbounds nuw i8, ptr %i.td, i64 640
  %i.tr = load i16, ptr %i.tq, align 2, !tbaa !15
  %i.ts = sext i16 %i.tr to i32
  %i.tt = getelementptr inbounds nuw i8, ptr %i.td, i64 768
  %i.tu = load i16, ptr %i.tt, align 2, !tbaa !15
  %i.tv = sext i16 %i.tu to i32
  %i.tw = add nsw i32 %i.tp, %i.tm
  %i.tx = mul nsw i32 %i.tw, 20
  %i.ty = add nsw i32 %i.ts, %i.tj
  %.neg.us.us = mul nsw i32 %i.ty, -5
  %i.tz = add nsw i32 %i.tv, %i.tg
  %i.ua = add nsw i32 %i.tz, 512
  %i.ub = add nsw i32 %i.ua, %i.tx
  %i.uc = add nsw i32 %i.ub, %.neg.us.us
  %i.ud = ashr i32 %i.uc, 10
  %i.ue = tail call i32 @llvm.smax.i32(i32 %i.ud, i32 0)
  %i.uf = tail call i32 @llvm.umin.i32(i32 %i.ue, i32 255)
  %i.ug = trunc nuw i32 %i.uf to i8
  %i.uh = getelementptr inbounds nuw i8, ptr %.2394.us, i64 %indvars.iv480
  store i8 %i.ug, ptr %i.uh, align 1, !tbaa !11
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 1 ; 2 uses
  %exitcond484.not = icmp eq i64 %indvars.iv.next481, %wide.trip.count483
  br i1 %exitcond484.not, label %._crit_edge.split387.us.us, label %scalar.ph734, !llvm.loop !103

._crit_edge.split387.us.us:                       ; preds = %scalar.ph734, %middle.block747
  %i.ui = getelementptr inbounds nuw i8, ptr %.1282391.us, i64 128
  %i.uj = getelementptr inbounds nuw i8, ptr %.2394.us, i64 64
  %i.uk = add nuw nsw i32 %.2286390.us, 1         ; 2 uses
  %exitcond485.not = icmp eq i32 %i.uk, %5
  br i1 %exitcond485.not, label %.loopexit327, label %.preheader325.us, !llvm.loop !104

.preheader325:                                    ; preds = %.preheader325.preheader, %._crit_edge.split387
  %.2394 = phi ptr [ %i.zx, %._crit_edge.split387 ], [ %i.rt, %.preheader325.preheader ] ; 5 uses
  %.1282391 = phi ptr [ %i.zw, %._crit_edge.split387 ], [ %i.a, %.preheader325.preheader ] ; 5 uses
  %.2286390 = phi i32 [ %i.zy, %._crit_edge.split387 ], [ 0, %.preheader325.preheader ]
  br i1 %.not313, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.preheader325
  br i1 %min.iters.check719, label %.lr.ph.split.split.preheader921, label %vector.body722

vector.body722:                                   ; preds = %.lr.ph.split.split.preheader, %vector.body722
  %index723 = phi i64 [ %index.next730, %vector.body722 ], [ 0, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.ul = getelementptr inbounds nuw [2 x i8], ptr %.1282391, i64 %index723 ; 6 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 128
  %wide.load724 = load <8 x i16>, ptr %i.um, align 2, !tbaa !15
  %i.un = sext <8 x i16> %wide.load724 to <8 x i32>
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 256
  %wide.load725 = load <8 x i16>, ptr %i.uo, align 2, !tbaa !15
  %i.up = sext <8 x i16> %wide.load725 to <8 x i32>
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ul, i64 384
  %wide.load726 = load <8 x i16>, ptr %i.uq, align 2, !tbaa !15
  %i.ur = sext <8 x i16> %wide.load726 to <8 x i32>
  %i.us = getelementptr inbounds nuw i8, ptr %i.ul, i64 512
  %wide.load727 = load <8 x i16>, ptr %i.us, align 2, !tbaa !15
  %i.ut = sext <8 x i16> %wide.load727 to <8 x i32>
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ul, i64 640
  %wide.load728 = load <8 x i16>, ptr %i.uu, align 2, !tbaa !15
  %i.uv = sext <8 x i16> %wide.load728 to <8 x i32>
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ul, i64 768
  %wide.load729 = load <8 x i16>, ptr %i.uw, align 2, !tbaa !15
  %i.ux = sext <8 x i16> %wide.load729 to <8 x i32>
  %i.uy = add nsw <8 x i32> %i.ut, %i.ur
  %i.uz = mul nsw <8 x i32> %i.uy, splat (i32 20)
  %i.va = add nsw <8 x i32> %i.uv, %i.up
  %i.vb = mul nsw <8 x i32> %i.va, splat (i32 -5)
  %i.vc = add nsw <8 x i32> %i.ux, %i.un
  %i.vd = add nsw <8 x i32> %i.vc, splat (i32 512)
  %i.ve = add nsw <8 x i32> %i.vd, %i.uz
  %i.vf = add nsw <8 x i32> %i.ve, %i.vb
  %i.vg = ashr <8 x i32> %i.vf, splat (i32 10)
  %i.vh = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.vg, <8 x i32> zeroinitializer)
  %i.vi = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.vh, <8 x i32> splat (i32 255))
  %i.vj = trunc nuw <8 x i32> %i.vi to <8 x i8>
  %i.vk = getelementptr inbounds nuw i8, ptr %.2394, i64 %index723
  store <8 x i8> %i.vj, ptr %i.vk, align 1, !tbaa !11
  %index.next730 = add nuw i64 %index723, 8       ; 2 uses
  %i.vl = icmp eq i64 %index.next730, %n.vec721
  br i1 %i.vl, label %middle.block731, label %vector.body722, !llvm.loop !105

middle.block731:                                  ; preds = %vector.body722
  br i1 %cmp.n732, label %._crit_edge.split387, label %.lr.ph.split.split.preheader921

.lr.ph.split.split.preheader921:                  ; preds = %.lr.ph.split.split.preheader, %middle.block731
  %indvars.iv469.ph = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %n.vec721, %middle.block731 ]
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.preheader325
  %i.vm = load i8, ptr %i.ry, align 4, !tbaa !11
  %i.vn = sext i8 %i.vm to i32                    ; 2 uses
  %i.vo = load i8, ptr %i.rz, align 1, !tbaa !11
  %i.vp = sext i8 %i.vo to i32                    ; 2 uses
  %i.vq = load i8, ptr %i.sa, align 2, !tbaa !11
  %i.vr = sext i8 %i.vq to i32                    ; 2 uses
  %i.vs = load i8, ptr %i.sb, align 1, !tbaa !11
  %i.vt = sext i8 %i.vs to i32                    ; 2 uses
  br i1 %min.iters.check693, label %scalar.ph692.preheader, label %vector.ph694

vector.ph694:                                     ; preds = %.lr.ph.split.split.us
  %broadcast.splatinsert696 = insertelement <8 x i32> poison, i32 %i.vn, i64 0
  %broadcast.splat697 = shufflevector <8 x i32> %broadcast.splatinsert696, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert698 = insertelement <8 x i32> poison, i32 %i.vp, i64 0
  %broadcast.splat699 = shufflevector <8 x i32> %broadcast.splatinsert698, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert700 = insertelement <8 x i32> poison, i32 %i.vr, i64 0
  %broadcast.splat701 = shufflevector <8 x i32> %broadcast.splatinsert700, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert702 = insertelement <8 x i32> poison, i32 %i.vt, i64 0
  %broadcast.splat703 = shufflevector <8 x i32> %broadcast.splatinsert702, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body704

vector.body704:                                   ; preds = %vector.body704, %vector.ph694
  %index705 = phi i64 [ 0, %vector.ph694 ], [ %index.next714, %vector.body704 ] ; 3 uses
  %i.vu = getelementptr inbounds nuw [2 x i8], ptr %.1282391, i64 %index705 ; 8 uses
  %wide.load706 = load <8 x i16>, ptr %i.vu, align 2, !tbaa !15
  %i.vv = sext <8 x i16> %wide.load706 to <8 x i32>
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vu, i64 128
  %wide.load707 = load <8 x i16>, ptr %i.vw, align 2, !tbaa !15
  %i.vx = sext <8 x i16> %wide.load707 to <8 x i32>
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vu, i64 256
  %wide.load708 = load <8 x i16>, ptr %i.vy, align 2, !tbaa !15
  %i.vz = sext <8 x i16> %wide.load708 to <8 x i32>
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vu, i64 384
  %wide.load709 = load <8 x i16>, ptr %i.wa, align 2, !tbaa !15
  %i.wb = sext <8 x i16> %wide.load709 to <8 x i32>
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vu, i64 512
  %wide.load710 = load <8 x i16>, ptr %i.wc, align 2, !tbaa !15
  %i.wd = sext <8 x i16> %wide.load710 to <8 x i32>
  %i.we = getelementptr inbounds nuw i8, ptr %i.vu, i64 640
  %wide.load711 = load <8 x i16>, ptr %i.we, align 2, !tbaa !15
  %i.wf = sext <8 x i16> %wide.load711 to <8 x i32>
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vu, i64 768
  %wide.load712 = load <8 x i16>, ptr %i.wg, align 2, !tbaa !15
  %i.wh = sext <8 x i16> %wide.load712 to <8 x i32>
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vu, i64 896
  %wide.load713 = load <8 x i16>, ptr %i.wi, align 2, !tbaa !15
  %i.wj = sext <8 x i16> %wide.load713 to <8 x i32>
  %i.wk = add nsw <8 x i32> %i.wd, %i.wb
  %i.wl = mul nsw <8 x i32> %i.wk, %broadcast.splat697
  %i.wm = add nsw <8 x i32> %i.wf, %i.vz
  %i.wn = mul nsw <8 x i32> %i.wm, %broadcast.splat699
  %i.wo = add nsw <8 x i32> %i.wh, %i.vx
  %i.wp = mul nsw <8 x i32> %i.wo, %broadcast.splat701
  %i.wq = add nsw <8 x i32> %i.wj, %i.vv
  %i.wr = mul nsw <8 x i32> %i.wq, %broadcast.splat703
  %i.ws = add nsw <8 x i32> %i.wl, splat (i32 2048)
  %i.wt = add nsw <8 x i32> %i.ws, %i.wn
  %i.wu = add nsw <8 x i32> %i.wt, %i.wp
  %i.wv = add nsw <8 x i32> %i.wu, %i.wr
  %i.ww = ashr <8 x i32> %i.wv, splat (i32 12)
  %i.wx = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ww, <8 x i32> zeroinitializer)
  %i.wy = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.wx, <8 x i32> splat (i32 255))
  %i.wz = trunc nuw <8 x i32> %i.wy to <8 x i8>
  %i.xa = getelementptr inbounds nuw i8, ptr %.2394, i64 %index705
  store <8 x i8> %i.wz, ptr %i.xa, align 1, !tbaa !11
  %index.next714 = add nuw i64 %index705, 8       ; 2 uses
  %i.xb = icmp eq i64 %index.next714, %n.vec695
  br i1 %i.xb, label %middle.block715, label %vector.body704, !llvm.loop !106

middle.block715:                                  ; preds = %vector.body704
  br i1 %cmp.n716, label %._crit_edge.split387, label %scalar.ph692.preheader

scalar.ph692.preheader:                           ; preds = %.lr.ph.split.split.us, %middle.block715
  %indvars.iv474.ph = phi i64 [ 0, %.lr.ph.split.split.us ], [ %n.vec695, %middle.block715 ]
  br label %scalar.ph692

scalar.ph692:                                     ; preds = %scalar.ph692.preheader, %scalar.ph692
  %indvars.iv474 = phi i64 [ %indvars.iv.next475, %scalar.ph692 ], [ %indvars.iv474.ph, %scalar.ph692.preheader ] ; 3 uses
  %i.xc = getelementptr inbounds nuw [2 x i8], ptr %.1282391, i64 %indvars.iv474 ; 8 uses
  %i.xd = load i16, ptr %i.xc, align 2, !tbaa !15
  %i.xe = sext i16 %i.xd to i32
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xc, i64 128
  %i.xg = load i16, ptr %i.xf, align 2, !tbaa !15
  %i.xh = sext i16 %i.xg to i32
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xc, i64 256
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !15
  %i.xk = sext i16 %i.xj to i32
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xc, i64 384
  %i.xm = load i16, ptr %i.xl, align 2, !tbaa !15
  %i.xn = sext i16 %i.xm to i32
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xc, i64 512
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !15
  %i.xq = sext i16 %i.xp to i32
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xc, i64 640
  %i.xs = load i16, ptr %i.xr, align 2, !tbaa !15
  %i.xt = sext i16 %i.xs to i32
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xc, i64 768
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !15
  %i.xw = sext i16 %i.xv to i32
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xc, i64 896
  %i.xy = load i16, ptr %i.xx, align 2, !tbaa !15
  %i.xz = sext i16 %i.xy to i32
  %i.ya = add nsw i32 %i.xq, %i.xn
  %i.yb = mul nsw i32 %i.ya, %i.vn
  %i.yc = add nsw i32 %i.xt, %i.xk
  %i.yd = mul nsw i32 %i.yc, %i.vp
  %i.ye = add nsw i32 %i.xw, %i.xh
  %i.yf = mul nsw i32 %i.ye, %i.vr
  %i.yg = add nsw i32 %i.xz, %i.xe
  %i.yh = mul nsw i32 %i.yg, %i.vt
  %i.yi = add nsw i32 %i.yb, 2048
  %i.yj = add nsw i32 %i.yi, %i.yd
  %i.yk = add nsw i32 %i.yj, %i.yf
  %i.yl = add nsw i32 %i.yk, %i.yh
  %i.ym = ashr i32 %i.yl, 12
  %i.yn = tail call i32 @llvm.smax.i32(i32 %i.ym, i32 0)
  %i.yo = tail call i32 @llvm.umin.i32(i32 %i.yn, i32 255)
  %i.yp = trunc nuw i32 %i.yo to i8
  %i.yq = getelementptr inbounds nuw i8, ptr %.2394, i64 %indvars.iv474
  store i8 %i.yp, ptr %i.yq, align 1, !tbaa !11
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1 ; 2 uses
  %exitcond478.not = icmp eq i64 %indvars.iv.next475, %wide.trip.count477
  br i1 %exitcond478.not, label %._crit_edge.split387, label %scalar.ph692, !llvm.loop !107

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader921, %.lr.ph.split.split
  %indvars.iv469 = phi i64 [ %indvars.iv.next470, %.lr.ph.split.split ], [ %indvars.iv469.ph, %.lr.ph.split.split.preheader921 ] ; 3 uses
  %i.yr = getelementptr inbounds nuw [2 x i8], ptr %.1282391, i64 %indvars.iv469 ; 6 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 128
  %i.yt = load i16, ptr %i.ys, align 2, !tbaa !15
  %i.yu = sext i16 %i.yt to i32
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yr, i64 256
  %i.yw = load i16, ptr %i.yv, align 2, !tbaa !15
  %i.yx = sext i16 %i.yw to i32
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yr, i64 384
  %i.yz = load i16, ptr %i.yy, align 2, !tbaa !15
  %i.za = sext i16 %i.yz to i32
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yr, i64 512
  %i.zc = load i16, ptr %i.zb, align 2, !tbaa !15
  %i.zd = sext i16 %i.zc to i32
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yr, i64 640
  %i.zf = load i16, ptr %i.ze, align 2, !tbaa !15
  %i.zg = sext i16 %i.zf to i32
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yr, i64 768
  %i.zi = load i16, ptr %i.zh, align 2, !tbaa !15
  %i.zj = sext i16 %i.zi to i32
  %i.zk = add nsw i32 %i.zd, %i.za
  %i.zl = mul nsw i32 %i.zk, 20
  %i.zm = add nsw i32 %i.zg, %i.yx
  %.neg = mul nsw i32 %i.zm, -5
  %i.zn = add nsw i32 %i.zj, %i.yu
  %i.zo = add nsw i32 %i.zn, 512
  %i.zp = add nsw i32 %i.zo, %i.zl
  %i.zq = add nsw i32 %i.zp, %.neg
  %i.zr = ashr i32 %i.zq, 10
  %i.zs = tail call i32 @llvm.smax.i32(i32 %i.zr, i32 0)
  %i.zt = tail call i32 @llvm.umin.i32(i32 %i.zs, i32 255)
  %i.zu = trunc nuw i32 %i.zt to i8
  %i.zv = getelementptr inbounds nuw i8, ptr %.2394, i64 %indvars.iv469
  store i8 %i.zu, ptr %i.zv, align 1, !tbaa !11
  %indvars.iv.next470 = add nuw nsw i64 %indvars.iv469, 1 ; 2 uses
  %exitcond473.not = icmp eq i64 %indvars.iv.next470, %wide.trip.count472
  br i1 %exitcond473.not, label %._crit_edge.split387, label %.lr.ph.split.split, !llvm.loop !108

._crit_edge.split387:                             ; preds = %.lr.ph.split.split, %scalar.ph692, %middle.block731, %middle.block715
  %i.zw = getelementptr inbounds nuw i8, ptr %.1282391, i64 128
  %i.zx = getelementptr inbounds nuw i8, ptr %.2394, i64 64
  %i.zy = add nuw nsw i32 %.2286390, 1            ; 2 uses
  %exitcond479.not = icmp eq i32 %i.zy, %5
  br i1 %exitcond479.not, label %.loopexit327, label %.preheader325, !llvm.loop !104

.loopexit327:                                     ; preds = %._crit_edge.split387, %._crit_edge.split387.us.us, %.preheader325.lr.ph, %bb.i
  store ptr %i.rs, ptr %i.c, align 16, !tbaa !13
  %i.zz = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.zz, ptr %i.aaa, align 8, !tbaa !13
  %i.aab = getelementptr inbounds nuw i8, ptr %i.rs, i64 1
  %i.aac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.aab, ptr %i.aac, align 16, !tbaa !13
  %i.aad = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.jb, ptr %i.aad, align 16, !tbaa !13
  %i.aae = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.rt, ptr %i.aae, align 8, !tbaa !13
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.b, i64 2561
  %i.aag = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.aaf, ptr %i.aag, align 16, !tbaa !13
  %i.aah = sext i32 %3 to i64                     ; 10 uses
  %i.aai = getelementptr inbounds i8, ptr %i.rs, i64 %i.aah ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.aai, ptr %i.aaj, align 16, !tbaa !13
  %i.aak = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.aal = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %i.aak, ptr %i.aal, align 8, !tbaa !13
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aai, i64 1
  %i.aan = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.aam, ptr %i.aan, align 16, !tbaa !13
  %i.aao = icmp eq i8 %.0283.shrunk, 15
  br i1 %i.aao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit327
  br i1 %i.rv, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.j
  %i.aap = and i32 %7, 7                          ; 3 uses
  %i.aaq = and i32 %6, 7                          ; 3 uses
  %i.aar = lshr i32 %7, 1
  %i.aas = and i32 %i.aar, 4
  %i.aat = lshr i32 %6, 3
  %i.aau = or disjoint i32 %i.aas, %i.aat         ; 5 uses
  %i.aav = add nuw nsw i32 %i.aau, 5
  %i.aaw = zext nneg i32 %i.aav to i64            ; 2 uses
  %i.aax = shl nuw nsw i64 1, %i.aaw
  %i.aay = and i64 %i.aax, 60812
  %.not312.not = icmp eq i64 %i.aay, 0
  %i.aaz = add nuw nsw i32 %i.aau, 4
  %i.aba = zext nneg i32 %i.aaz to i64            ; 2 uses
  %i.abb = shl nuw nsw i64 1, %i.aba
  %i.abc = and i64 %i.abb, 8448
  %.not311.not = icmp eq i64 %i.abc, 0
  %i.abd = add nuw nsw i32 %i.aau, 1
  %i.abe = zext nneg i32 %i.abd to i64            ; 2 uses
  %i.abf = shl nuw nsw i64 1, %i.abe
  %i.abg = and i64 %i.abf, 140
  %.not310.not = icmp eq i64 %i.abg, 0
  %.not309 = icmp eq i32 %i.aau, 0
  %i.abh = select i1 %.not309, i32 %3, i32 64     ; 2 uses
  %i.abi = icmp sgt i32 %4, 0
  %i.abj = sub nuw nsw i32 8, %i.aaq              ; 2 uses
  %i.abk = sub nuw nsw i32 8, %i.aap              ; 2 uses
  %factor.op.mul = mul nuw nsw i32 %i.abj, %i.aap ; 3 uses
  %factor.op.mul406 = mul nuw nsw i32 %i.aaq, %i.aap ; 3 uses
  %factor.op.mul408 = mul nuw nsw i32 %i.abj, %i.abk ; 3 uses
  %factor.op.mul410 = mul nuw nsw i32 %i.aaq, %i.abk ; 3 uses
  %i.abl = sext i32 %i.abh to i64                 ; 2 uses
  %i.abm = select i1 %.not310.not, i64 64, i64 %i.aah ; 3 uses
  %i.abn = select i1 %.not311.not, i64 64, i64 %i.aah ; 3 uses
  %i.abo = select i1 %.not312.not, i64 64, i64 %i.aah ; 3 uses
  br i1 %i.abi, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.abp = zext nneg i32 %i.aau to i64
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.abp
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !13 ; 3 uses
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.abe
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !13 ; 3 uses
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aba
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !13 ; 3 uses
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aaw
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !13 ; 3 uses
  %wide.trip.count495 = zext nneg i32 %4 to i64   ; 11 uses
  %i.aby = add nsw i32 %5, -1
  %i.abz = zext i32 %i.aby to i64                 ; 5 uses
  %i.aca = mul nsw i64 %i.abo, %i.abz
  %i.acb = getelementptr i8, ptr %i.abx, i64 %i.aca
  %scevgep840 = getelementptr i8, ptr %i.acb, i64 %wide.trip.count495
  %i.acc = mul nsw i64 %i.abn, %i.abz
  %i.acd = getelementptr i8, ptr %i.abv, i64 %i.acc
  %scevgep841 = getelementptr i8, ptr %i.acd, i64 %wide.trip.count495
  %i.ace = mul nsw i64 %i.abm, %i.abz
  %i.acf = getelementptr i8, ptr %i.abt, i64 %i.ace
  %scevgep842 = getelementptr i8, ptr %i.acf, i64 %wide.trip.count495
  %i.acg = mul nsw i64 %i.abl, %i.abz
  %i.ach = getelementptr i8, ptr %i.abr, i64 %i.acg
  %scevgep843 = getelementptr i8, ptr %i.ach, i64 %wide.trip.count495
  %i.aci = mul nsw i64 %i.aah, %i.abz
  %i.acj = getelementptr i8, ptr %1, i64 %i.aci
end_hunk_0
