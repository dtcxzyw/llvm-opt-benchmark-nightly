Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snow_dwt?download=true
inline.NumInlined: 50
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ff_spatial_idwt:bb.a
  %i.arj = getelementptr [2 x i8], ptr %i.aff, i64 %i.ari
  %i.ark = getelementptr i8, ptr %i.arj, i64 -4
  %i.arl = load i16, ptr %i.ark, align 2, !tbaa !149
  %i.arm = add i16 %i.arl, %i.arh
  br label %horizontal_compose53i.exit.i

horizontal_compose53i.exit.i:                     ; preds = %bb.ah, %bb.ag
  %.sink73.i.i = phi i64 [ %i.arf, %bb.ah ], [ %i.aql, %bb.ag ]
  %.sink.i81.i = phi i16 [ %i.arm, %bb.ah ], [ %i.ard, %bb.ag ]
  %i.arn = getelementptr inbounds nuw [2 x i8], ptr %i.aff, i64 %.sink73.i.i
  store i16 %.sink.i81.i, ptr %i.arn, align 2, !tbaa !149
  br label %spatial_compose53i_dy.exit.i

spatial_compose53i_dy.exit.i:                     ; preds = %horizontal_compose53i.exit.i, %bb.ac
  store ptr %i.afr, ptr %i.cc, align 8, !tbaa !138
  store ptr %i.afu, ptr %i.cl, align 8, !tbaa !140
  %i.aro = add nsw i32 %i.ei, 2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %spatial_compose53i_dy.exit.i, %spatial_compose97i_dy.exit.i
  %.sink.i = phi i32 [ %i.aro, %spatial_compose53i_dy.exit.i ], [ %i.hh, %spatial_compose97i_dy.exit.i ] ; 2 uses
  store i32 %.sink.i, ptr %i.cd, align 8, !tbaa !143
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split.i, %bb.h
  %i.arp = phi i32 [ %i.ei, %bb.h ], [ %.sink.i, %.sink.split.i ] ; 2 uses
  %.not.i = icmp sgt i32 %i.arp, %..i
  br i1 %.not.i, label %.loopexit.i, label %bb.h, !llvm.loop !353

spatial_idwt_slice.exit.loopexit:                 ; preds = %.loopexit.i
  %i.arq = add nuw nsw i32 %.035, 4               ; 2 uses
  %i.arr = icmp slt i32 %i.arq, %3
  br i1 %i.arr, label %.preheader.lr.ph.i, label %._crit_edge.split, !llvm.loop !354

._crit_edge.split:                                ; preds = %spatial_idwt_slice.exit.loopexit, %.lr.ph, %spatial_idwt_init.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 4194304) i32 @ff_w53_32_c(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call fastcc i32 @w_c(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 32, i32 noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 4194304) i32 @w_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef range(i32 8, 33) %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #8 {
bb.a:
  %i.a = alloca [1024 x i32], align 16            ; 5 uses
  %i.b = alloca [32 x i32], align 16              ; 3 uses
  %i.c = icmp eq i32 %3, 8
  %i.d = select i1 %i.c, i32 3, i32 4             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.preheader1.preheader, label %._crit_edge

.preheader1.preheader:                            ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.f = icmp samesign ugt i32 %3, 8
  %i.g = icmp samesign ugt i32 %3, 12
  %i.h = icmp samesign ugt i32 %3, 16
  %i.i = icmp samesign ugt i32 %3, 20
  %i.j = icmp samesign ugt i32 %3, 24
  %i.k = icmp samesign ugt i32 %3, 28
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader, %bb.h
  %indvars.iv20 = phi i64 [ 0, %.preheader1.preheader ], [ %indvars.iv.next21, %bb.h ] ; 2 uses
  %.05 = phi ptr [ %0, %.preheader1.preheader ], [ %i.cd, %bb.h ] ; 9 uses
  %.0803 = phi ptr [ %1, %.preheader1.preheader ], [ %i.ce, %bb.h ] ; 9 uses
  %.idx = shl nuw nsw i64 %indvars.iv20, 7
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 8 uses
  %i.l = load <4 x i8>, ptr %.05, align 1, !tbaa !355
  %i.m = zext <4 x i8> %i.l to <4 x i16>
  %i.n = load <4 x i8>, ptr %.0803, align 1, !tbaa !355
  %i.o = zext <4 x i8> %i.n to <4 x i16>
  %i.p = sub nsw <4 x i16> %i.m, %i.o
  %i.q = shl nsw <4 x i16> %i.p, splat (i16 4)
  %i.r = sext <4 x i16> %i.q to <4 x i32>
  store <4 x i32> %i.r, ptr %invariant.gep, align 16, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %.05, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %.0803, i64 4
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  %i.u = load <4 x i8>, ptr %i.s, align 1, !tbaa !355
  %i.v = zext <4 x i8> %i.u to <4 x i16>
  %i.w = load <4 x i8>, ptr %i.t, align 1, !tbaa !355
  %i.x = zext <4 x i8> %i.w to <4 x i16>
  %i.y = sub nsw <4 x i16> %i.v, %i.x
  %i.z = shl nsw <4 x i16> %i.y, splat (i16 4)
  %i.aa = sext <4 x i16> %i.z to <4 x i32>
  store <4 x i32> %i.aa, ptr %gep.1, align 16, !tbaa !28
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.preheader1
  %i.ab = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0803, i64 8
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 32
  %i.ad = load <4 x i8>, ptr %i.ab, align 1, !tbaa !355
  %i.ae = zext <4 x i8> %i.ad to <4 x i16>
  %i.af = load <4 x i8>, ptr %i.ac, align 1, !tbaa !355
  %i.ag = zext <4 x i8> %i.af to <4 x i16>
  %i.ah = sub nsw <4 x i16> %i.ae, %i.ag
  %i.ai = shl nsw <4 x i16> %i.ah, splat (i16 4)
  %i.aj = sext <4 x i16> %i.ai to <4 x i32>
  store <4 x i32> %i.aj, ptr %gep.2, align 16, !tbaa !28
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %.05, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %.0803, i64 12
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48
  %i.am = load <4 x i8>, ptr %i.ak, align 1, !tbaa !355
  %i.an = zext <4 x i8> %i.am to <4 x i16>
  %i.ao = load <4 x i8>, ptr %i.al, align 1, !tbaa !355
  %i.ap = zext <4 x i8> %i.ao to <4 x i16>
  %i.aq = sub nsw <4 x i16> %i.an, %i.ap
  %i.ar = shl nsw <4 x i16> %i.aq, splat (i16 4)
  %i.as = sext <4 x i16> %i.ar to <4 x i32>
  store <4 x i32> %i.as, ptr %gep.3, align 16, !tbaa !28
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %.05, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.0803, i64 16
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64
  %i.av = load <4 x i8>, ptr %i.at, align 1, !tbaa !355
  %i.aw = zext <4 x i8> %i.av to <4 x i16>
  %i.ax = load <4 x i8>, ptr %i.au, align 1, !tbaa !355
  %i.ay = zext <4 x i8> %i.ax to <4 x i16>
  %i.az = sub nsw <4 x i16> %i.aw, %i.ay
  %i.ba = shl nsw <4 x i16> %i.az, splat (i16 4)
  %i.bb = sext <4 x i16> %i.ba to <4 x i32>
  store <4 x i32> %i.bb, ptr %gep.4, align 16, !tbaa !28
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %.05, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %.0803, i64 20
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80
  %i.be = load <4 x i8>, ptr %i.bc, align 1, !tbaa !355
  %i.bf = zext <4 x i8> %i.be to <4 x i16>
  %i.bg = load <4 x i8>, ptr %i.bd, align 1, !tbaa !355
  %i.bh = zext <4 x i8> %i.bg to <4 x i16>
  %i.bi = sub nsw <4 x i16> %i.bf, %i.bh
  %i.bj = shl nsw <4 x i16> %i.bi, splat (i16 4)
  %i.bk = sext <4 x i16> %i.bj to <4 x i32>
  store <4 x i32> %i.bk, ptr %gep.5, align 16, !tbaa !28
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %.05, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %.0803, i64 24
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 96
  %i.bn = load <4 x i8>, ptr %i.bl, align 1, !tbaa !355
  %i.bo = zext <4 x i8> %i.bn to <4 x i16>
  %i.bp = load <4 x i8>, ptr %i.bm, align 1, !tbaa !355
  %i.bq = zext <4 x i8> %i.bp to <4 x i16>
  %i.br = sub nsw <4 x i16> %i.bo, %i.bq
  %i.bs = shl nsw <4 x i16> %i.br, splat (i16 4)
  %i.bt = sext <4 x i16> %i.bs to <4 x i32>
  store <4 x i32> %i.bt, ptr %gep.6, align 16, !tbaa !28
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %.05, i64 28
  %i.bv = getelementptr inbounds nuw i8, ptr %.0803, i64 28
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 112
  %i.bw = load <4 x i8>, ptr %i.bu, align 1, !tbaa !355
  %i.bx = zext <4 x i8> %i.bw to <4 x i16>
  %i.by = load <4 x i8>, ptr %i.bv, align 1, !tbaa !355
  %i.bz = zext <4 x i8> %i.by to <4 x i16>
  %i.ca = sub nsw <4 x i16> %i.bx, %i.bz
  %i.cb = shl nsw <4 x i16> %i.ca, splat (i16 4)
  %i.cc = sext <4 x i16> %i.cb to <4 x i32>
  store <4 x i32> %i.cc, ptr %gep.7, align 16, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.preheader1
  %i.cd = getelementptr inbounds i8, ptr %.05, i64 %2
  %i.ce = getelementptr inbounds i8, ptr %.0803, i64 %2
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next21, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader1, !llvm.loop !356

._crit_edge:                                      ; preds = %bb.h, %bb.a
  call void @ff_spatial_dwt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %3, i32 noundef %4, i32 noundef 32, i32 noundef %5, i32 noundef %i.d)
  %i.cf = zext nneg i32 %5 to i64
  %i.cg = getelementptr inbounds nuw [128 x i8], ptr @w_c.scale, i64 %i.cf
  %i.ch = zext nneg i32 %i.d to i64               ; 3 uses
  %i.ci = getelementptr [64 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 -192
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %.split14.us
  %indvars.iv33.a = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next34, %.split14.us ] ; 4 uses
  %.07815 = phi i32 [ 0, %._crit_edge ], [ %.us-phi, %.split14.us ] ; 2 uses
  %i.ck = sub nuw nsw i64 %i.ch, %indvars.iv33.a  ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32          ; 2 uses
  %i.cm = lshr i32 %3, %i.cl                      ; 5 uses
  %i.cn = shl nuw nsw i32 32, %i.cl
  %i.co = lshr exact i32 %i.cn, 1
  %.not17 = icmp eq i32 %i.cm, 0
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %indvars.iv33.a
  br i1 %.not17, label %.split14.us, label %.preheader.lr.ph.us.preheader

.preheader.lr.ph.us.preheader:                    ; preds = %bb.i
  %.not = icmp ne i64 %indvars.iv33.a, 0
  %i.cq = zext i1 %.not to i64
  %i.cr = trunc nuw i64 %i.ck to i32
  %i.cs = add nuw nsw i32 %i.cr, 5
  %wide.trip.count26 = zext nneg i32 %i.cm to i64 ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.cm, 8
  %n.vec = and i64 %wide.trip.count26, 56         ; 8 uses
  %i.ct = icmp eq i64 %n.vec, 8
  %i.cu = icmp eq i64 %n.vec, 16
  %i.cv = icmp eq i64 %n.vec, 24
  %i.cw = icmp eq i64 %n.vec, 32
  %i.cx = icmp eq i64 %n.vec, 40
  %i.cy = icmp eq i64 %n.vec, 48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count26
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %._crit_edge10.us
  %indvars.iv29 = phi i64 [ %i.cq, %.preheader.lr.ph.us.preheader ], [ %indvars.iv.next30, %._crit_edge10.us ] ; 4 uses
  %.17911.us = phi i32 [ %.07815, %.preheader.lr.ph.us.preheader ], [ %.lcssa, %._crit_edge10.us ]
  %i.cz = and i64 %indvars.iv29, 1
  %.not84.us = icmp eq i64 %i.cz, 0
  %i.da = select i1 %.not84.us, i32 0, i32 %i.cm
  %.not85.us = icmp samesign ult i64 %indvars.iv29, 2
  %i.db = select i1 %.not85.us, i32 0, i32 %i.co
  %i.dc = add nuw nsw i32 %i.da, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv29
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !28 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 14 uses
  br label %.preheader.us

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %scalar.ph ], [ %indvars.iv23.ph, %scalar.ph.preheader ] ; 2 uses
  %.36.us = phi i32 [ %i.di, %scalar.ph ], [ %.36.us.ph, %scalar.ph.preheader ]
  %gep41 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv23
  %i.df = load i32, ptr %gep41, align 4, !tbaa !28
  %i.dg = mul nsw i32 %i.de, %i.df
  %i.dh = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %i.di = add nuw nsw i32 %i.dh, %.36.us          ; 2 uses
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %.loopexit, label %scalar.ph, !llvm.loop !357

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.fp, %middle.block ], [ %i.di, %scalar.ph ] ; 3 uses
  %6 = add nuw nsw i32 %.1779.us, 1               ; 2 uses
  %exitcond28.not = icmp eq i32 %6, %i.cm
  br i1 %exitcond28.not, label %._crit_edge10.us, label %.preheader.us, !llvm.loop !358

.preheader.us:                                    ; preds = %.preheader.lr.ph.us, %.loopexit
  %.1779.us = phi i32 [ 0, %.preheader.lr.ph.us ], [ %6, %.loopexit ] ; 2 uses
  %.28.us = phi i32 [ %.17911.us, %.preheader.lr.ph.us ], [ %.lcssa, %.loopexit ] ; 2 uses
  %i.dj = shl i32 %.1779.us, %i.cs
  %i.dk = add nsw i32 %i.dc, %i.dj
  %i.dl = sext i32 %i.dk to i64
  %invariant.gep40 = getelementptr [4 x i8], ptr %i.a, i64 %i.dl ; 15 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us
  %i.dm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.28.us, i64 0
  %i.dn = getelementptr i8, ptr %invariant.gep40, i64 16
  %wide.load = load <4 x i32>, ptr %invariant.gep40, align 4, !tbaa !28
  %wide.load43 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !28
  %i.do = mul nsw <4 x i32> %broadcast.splat, %wide.load
  %i.dp = mul nsw <4 x i32> %broadcast.splat, %wide.load43
  %i.dq = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.do, i1 true)
  %i.dr = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.dp, i1 true) ; 2 uses
  %i.ds = add <4 x i32> %i.dq, %i.dm              ; 2 uses
  br i1 %i.ct, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %i.dt = getelementptr i8, ptr %invariant.gep40, i64 32
  %i.du = getelementptr i8, ptr %invariant.gep40, i64 48
  %wide.load.1 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !28
  %wide.load43.1 = load <4 x i32>, ptr %i.du, align 4, !tbaa !28
  %i.dv = mul nsw <4 x i32> %broadcast.splat, %wide.load.1
  %i.dw = mul nsw <4 x i32> %broadcast.splat, %wide.load43.1
  %i.dx = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.dv, i1 true)
  %i.dy = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.dw, i1 true)
  %i.dz = add <4 x i32> %i.dx, %i.ds              ; 2 uses
  %i.ea = add nuw <4 x i32> %i.dy, %i.dr          ; 2 uses
  br i1 %i.cu, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.eb = getelementptr i8, ptr %invariant.gep40, i64 64
  %i.ec = getelementptr i8, ptr %invariant.gep40, i64 80
  %wide.load.2 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !28
  %wide.load43.2 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !28
  %i.ed = mul nsw <4 x i32> %broadcast.splat, %wide.load.2
  %i.ee = mul nsw <4 x i32> %broadcast.splat, %wide.load43.2
  %i.ef = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ed, i1 true)
  %i.eg = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ee, i1 true)
  %i.eh = add <4 x i32> %i.ef, %i.dz              ; 2 uses
  %i.ei = add <4 x i32> %i.eg, %i.ea              ; 2 uses
  br i1 %i.cv, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ej = getelementptr i8, ptr %invariant.gep40, i64 96
  %i.ek = getelementptr i8, ptr %invariant.gep40, i64 112
  %wide.load.3 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !28
  %wide.load43.3 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !28
  %i.el = mul nsw <4 x i32> %broadcast.splat, %wide.load.3
  %i.em = mul nsw <4 x i32> %broadcast.splat, %wide.load43.3
  %i.en = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.el, i1 true)
  %i.eo = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.em, i1 true)
  %i.ep = add <4 x i32> %i.en, %i.eh              ; 2 uses
  %i.eq = add <4 x i32> %i.eo, %i.ei              ; 2 uses
  br i1 %i.cw, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.er = getelementptr i8, ptr %invariant.gep40, i64 128
  %i.es = getelementptr i8, ptr %invariant.gep40, i64 144
  %wide.load.4 = load <4 x i32>, ptr %i.er, align 4, !tbaa !28
  %wide.load43.4 = load <4 x i32>, ptr %i.es, align 4, !tbaa !28
  %i.et = mul nsw <4 x i32> %broadcast.splat, %wide.load.4
  %i.eu = mul nsw <4 x i32> %broadcast.splat, %wide.load43.4
  %i.ev = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.et, i1 true)
  %i.ew = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.eu, i1 true)
  %i.ex = add <4 x i32> %i.ev, %i.ep              ; 2 uses
  %i.ey = add <4 x i32> %i.ew, %i.eq              ; 2 uses
  br i1 %i.cx, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.ez = getelementptr i8, ptr %invariant.gep40, i64 160
  %i.fa = getelementptr i8, ptr %invariant.gep40, i64 176
  %wide.load.5 = load <4 x i32>, ptr %i.ez, align 4, !tbaa !28
  %wide.load43.5 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !28
  %i.fb = mul nsw <4 x i32> %broadcast.splat, %wide.load.5
  %i.fc = mul nsw <4 x i32> %broadcast.splat, %wide.load43.5
  %i.fd = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fb, i1 true)
  %i.fe = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fc, i1 true)
  %i.ff = add <4 x i32> %i.fd, %i.ex              ; 2 uses
  %i.fg = add <4 x i32> %i.fe, %i.ey              ; 2 uses
  br i1 %i.cy, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.fh = getelementptr i8, ptr %invariant.gep40, i64 192
  %i.fi = getelementptr i8, ptr %invariant.gep40, i64 208
  %wide.load.6 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !28
  %wide.load43.6 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !28
  %i.fj = mul nsw <4 x i32> %broadcast.splat, %wide.load.6
  %i.fk = mul nsw <4 x i32> %broadcast.splat, %wide.load43.6
  %i.fl = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fj, i1 true)
  %i.fm = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fk, i1 true)
  %i.fn = add <4 x i32> %i.fl, %i.ff
  %i.fo = add <4 x i32> %i.fm, %i.fg
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.body
  %.lcssa45 = phi <4 x i32> [ %i.ds, %vector.body ], [ %i.dz, %vector.body.1 ], [ %i.eh, %vector.body.2 ], [ %i.ep, %vector.body.3 ], [ %i.ex, %vector.body.4 ], [ %i.ff, %vector.body.5 ], [ %i.fn, %vector.body.6 ]
  %.lcssa44 = phi <4 x i32> [ %i.dr, %vector.body ], [ %i.ea, %vector.body.1 ], [ %i.ei, %vector.body.2 ], [ %i.eq, %vector.body.3 ], [ %i.ey, %vector.body.4 ], [ %i.fg, %vector.body.5 ], [ %i.fo, %vector.body.6 ]
  %bin.rdx = add <4 x i32> %.lcssa44, %.lcssa45
  %i.fp = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv23.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.36.us.ph = phi i32 [ %.28.us, %.preheader.us ], [ %i.fp, %middle.block ]
  br label %scalar.ph

._crit_edge10.us:                                 ; preds = %.loopexit
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next30, 4
  br i1 %exitcond32.not, label %.split14.us, label %.preheader.lr.ph.us, !llvm.loop !359

.split14.us:                                      ; preds = %._crit_edge10.us, %bb.i
  %.us-phi = phi i32 [ %.07815, %bb.i ], [ %.lcssa, %._crit_edge10.us ] ; 2 uses
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33.a, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %i.ch
  br i1 %exitcond37.not, label %bb.j, label %bb.i, !llvm.loop !360

bb.j:                                             ; preds = %.split14.us
  %i.fq = lshr i32 %.us-phi, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.fq
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 4194304) i32 @ff_w97_32_c(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call fastcc i32 @w_c(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 32, i32 noundef %4, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_dsputil_init_dwt(ptr nofree noundef writeonly captures(none) initializes((488, 504), (536, 552)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr @w53_16_c, ptr %i.a, align 8, !tbaa !361
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr @w53_8_c, ptr %i.b, align 8, !tbaa !361
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr @w97_16_c, ptr %i.c, align 8, !tbaa !361
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr @w97_8_c, ptr %i.d, align 8, !tbaa !361
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4194304) i32 @w53_16_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #7 {
bb.a:
  %i.a = tail call fastcc i32 @w_c(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 16, i32 noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4194304) i32 @w53_8_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #7 {
bb.a:
  %i.a = tail call fastcc i32 @w_c(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 8, i32 noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4194304) i32 @w97_16_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #7 {
bb.a:
  %i.a = tail call fastcc i32 @w_c(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 16, i32 noundef %4, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4194304) i32 @w97_8_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #7 {
bb.a:
  %i.a = tail call fastcc i32 @w_c(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 8, i32 noundef %4, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_dwt_init(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #9 {
bb.a:
  store ptr @snow_vertical_compose97i, ptr %0, align 8, !tbaa !146
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @snow_horizontal_compose97i, ptr %i.a, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @ff_snow_inner_add_yblock_c, ptr %i.b, align 8, !tbaa !362
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @snow_vertical_compose97i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) #10 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %6 to i64      ; 4 uses
  %min.iters.check = icmp ult i32 %6, 24
  br i1 %min.iters.check, label %.lr.ph.preheader96, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl nuw nsw i64 %wide.trip.count, 1      ; 6 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.b   ; 5 uses
  %scevgep32 = getelementptr i8, ptr %3, i64 %i.b ; 5 uses
end_hunk_0
