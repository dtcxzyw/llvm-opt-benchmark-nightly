Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/predictor_enc?download=true
inline.NumInlined: 92
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@GetBestColorTransformForTile:bb.a
  %i.bl = lshr i32 32, %.03970.i                  ; 3 uses
  %i.bm = sub nsw i32 0, %i.bl
  %i.bn = shl nuw nsw i32 %i.bl, 1
  br label %bb.j

bb.j:                                             ; preds = %GetPredictionCostCrossColorRed.exit62.i, %.lr.ph.i
  %.167.i = phi i32 [ %.071.i, %.lr.ph.i ], [ %spec.select46.i, %GetPredictionCostCrossColorRed.exit62.i ] ; 2 uses
  %.04066.i = phi i32 [ %i.bm, %.lr.ph.i ], [ %i.dd, %GetPredictionCostCrossColorRed.exit62.i ] ; 2 uses
  %.14265.i = phi i64 [ %.04169.i, %.lr.ph.i ], [ %spec.select.i, %GetPredictionCostCrossColorRed.exit62.i ] ; 2 uses
  %i.bo = add nsw i32 %.04066.i, %.167.i          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  %i.bp = load ptr, ptr @VP8LCollectColorRedTransforms, align 8, !tbaa !12
  call void %i.bp(ptr noundef %i.r, i32 noundef %6, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.bo, ptr noundef nonnull %i.c) #10, !inline_history !53
  %i.bq = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !12
  %i.br = call i64 %i.bq(ptr noundef nonnull %i.c, ptr noundef nonnull %8) #10, !inline_history !54
  %i.bs = load i32, ptr %i.c, align 16, !tbaa !9
  %i.bt = zext i32 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, 25165824
  br label %bb.k

bb.k:                                             ; preds = %DivRound.exit16.i.i.i55.i, %bb.j
  %indvars.iv.i.i.i47.i = phi i64 [ 1, %bb.j ], [ %indvars.iv.next.i.i.i56.i, %DivRound.exit16.i.i.i55.i ] ; 3 uses
  %.01221.i.i.i48.i = phi i64 [ %i.bu, %bb.j ], [ %i.ci, %DivRound.exit16.i.i.i55.i ]
  %.01320.i.i.i49.i = phi i64 [ 2013265920, %bb.j ], [ %i.co, %DivRound.exit16.i.i.i55.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i.i47.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !9
  %i.bx = sub nuw nsw i64 256, %indvars.iv.i.i.i47.i
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !9
  %i.ca = add i32 %i.bz, %i.bw
  %i.cb = zext i32 %i.ca to i64
  %i.cc = mul i64 %.01320.i.i.i49.i, %i.cb        ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, -1
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ce = add nuw nsw i64 %i.cc, 50
  %i.cf = udiv i64 %i.ce, 100
  br label %DivRound.exit.i.i.i52.i

bb.m:                                             ; preds = %bb.k
  %.neg8.i.i.i.i50.i = sub i64 50, %i.cc
  %i.cg = udiv i64 %.neg8.i.i.i.i50.i, 100
  %.neg.i.i.i.i51.i = sub nsw i64 0, %i.cg
  br label %DivRound.exit.i.i.i52.i

DivRound.exit.i.i.i52.i:                          ; preds = %bb.m, %bb.l
  %i.ch = phi i64 [ %i.cf, %bb.l ], [ %.neg.i.i.i.i51.i, %bb.m ]
  %i.ci = add i64 %i.ch, %.01221.i.i.i48.i        ; 4 uses
  %i.cj = mul i64 %.01320.i.i.i49.i, 6            ; 3 uses
  %i.ck = icmp sgt i64 %i.cj, -1
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %DivRound.exit.i.i.i52.i
  %i.cl = add nuw nsw i64 %i.cj, 4
  %i.cm = udiv i64 %i.cl, 10
  br label %DivRound.exit16.i.i.i55.i

bb.o:                                             ; preds = %DivRound.exit.i.i.i52.i
  %.neg8.i14.i.i.i53.i = sub i64 4, %i.cj
  %i.cn = udiv i64 %.neg8.i14.i.i.i53.i, 10
  %.neg.i15.i.i.i54.i = sub nsw i64 0, %i.cn
  br label %DivRound.exit16.i.i.i55.i

DivRound.exit16.i.i.i55.i:                        ; preds = %bb.o, %bb.n
  %i.co = phi i64 [ %i.cm, %bb.n ], [ %.neg.i15.i.i.i54.i, %bb.o ]
  %indvars.iv.next.i.i.i56.i = add nuw nsw i64 %indvars.iv.i.i.i47.i, 1 ; 2 uses
  %exitcond.not.i.i.i57.i = icmp eq i64 %indvars.iv.next.i.i.i56.i, 16
  br i1 %exitcond.not.i.i.i57.i, label %bb.p, label %bb.k, !llvm.loop !0

bb.p:                                             ; preds = %DivRound.exit16.i.i.i55.i
  %i.cp = icmp sgt i64 %i.ci, -1
  br i1 %i.cp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cq = add nuw nsw i64 %i.ci, 5
  %i.cr = udiv i64 %i.cq, 10
  br label %GetPredictionCostCrossColorRed.exit62.i

bb.r:                                             ; preds = %bb.p
  %.neg8.i17.i.i.i58.i = sub i64 5, %i.ci
  %i.cs = udiv i64 %.neg8.i17.i.i.i58.i, 10
  %.neg.i18.i.i.i59.i = sub nsw i64 0, %i.cs
  br label %GetPredictionCostCrossColorRed.exit62.i

GetPredictionCostCrossColorRed.exit62.i:          ; preds = %bb.r, %bb.q
  %i.ct = phi i64 [ %i.cr, %bb.q ], [ %.neg.i18.i.i.i59.i, %bb.r ]
  %i.cu = sub nsw i64 %i.br, %i.ct                ; 2 uses
  %i.cv = and i32 %i.bo, 255                      ; 2 uses
  %i.cw = icmp eq i32 %i.cv, %i.ba
  %i.cx = add nsw i64 %i.cu, -25165824
  %spec.select.i60.i = select i1 %i.cw, i64 %i.cx, i64 %i.cu ; 2 uses
  %i.cy = icmp eq i32 %i.cv, %i.bc
  %i.cz = add nsw i64 %spec.select.i60.i, -25165824
  %.1.i61.i = select i1 %i.cy, i64 %i.cz, i64 %spec.select.i60.i ; 2 uses
  %i.da = icmp eq i32 %i.bo, 0
  %i.db = add nsw i64 %.1.i61.i, -25165824
  %.2.i.i = select i1 %i.da, i64 %i.db, i64 %.1.i61.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %i.dc = icmp slt i64 %.2.i.i, %.14265.i
  %spec.select.i = call i64 @llvm.smin.i64(i64 %.2.i.i, i64 %.14265.i) ; 2 uses
  %spec.select46.i = select i1 %i.dc, i32 %i.bo, i32 %.167.i ; 3 uses
  %i.dd = add nsw i32 %.04066.i, %i.bn            ; 2 uses
  %.not.i = icmp sgt i32 %i.dd, %i.bl
  br i1 %.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !55

._crit_edge.i:                                    ; preds = %GetPredictionCostCrossColorRed.exit62.i
  %i.de = add nuw nsw i32 %.03970.i, 1
  %exitcond.not.i = icmp eq i32 %.03970.i, %i.bk
  br i1 %exitcond.not.i, label %._crit_edge73.loopexit.i, label %.lr.ph.i, !llvm.loop !56

._crit_edge73.loopexit.i:                         ; preds = %._crit_edge.i
  %i.df = trunc i32 %spec.select46.i to i8
  br label %GetBestGreenToRed.exit

GetBestGreenToRed.exit:                           ; preds = %GetPredictionCostCrossColorRed.exit.i, %._crit_edge73.loopexit.i
  %.0.lcssa.i = phi i8 [ 0, %GetPredictionCostCrossColorRed.exit.i ], [ %i.df, %._crit_edge73.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.dg = load ptr, ptr @VP8LCollectColorBlueTransforms, align 8, !tbaa !12
  call void %i.dg(ptr noundef %i.r, i32 noundef %6, i32 noundef %i.l, i32 noundef %i.m, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #10, !inline_history !57
  %i.dh = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !12
  %i.di = call i64 %i.dh(ptr noundef nonnull %i.a, ptr noundef nonnull %9) #10, !inline_history !58
  %i.dj = load i32, ptr %i.a, align 16, !tbaa !9
  %i.dk = zext i32 %i.dj to i64
  %i.dl = mul nuw nsw i64 %i.dk, 25165824
  br label %bb.s

bb.s:                                             ; preds = %DivRound.exit16.i.i.i, %GetBestGreenToRed.exit
  %indvars.iv.i.i.i = phi i64 [ 1, %GetBestGreenToRed.exit ], [ %indvars.iv.next.i.i.i, %DivRound.exit16.i.i.i ] ; 3 uses
  %.01221.i.i.i = phi i64 [ %i.dl, %GetBestGreenToRed.exit ], [ %i.dz, %DivRound.exit16.i.i.i ]
  %.01320.i.i.i = phi i64 [ 2013265920, %GetBestGreenToRed.exit ], [ %i.ef, %DivRound.exit16.i.i.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !9
  %i.do = sub nuw nsw i64 256, %indvars.iv.i.i.i
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !9
  %i.dr = add i32 %i.dq, %i.dn
  %i.ds = zext i32 %i.dr to i64
  %i.dt = mul i64 %.01320.i.i.i, %i.ds            ; 3 uses
  %i.du = icmp sgt i64 %i.dt, -1
  br i1 %i.du, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dv = add nuw nsw i64 %i.dt, 50
  %i.dw = udiv i64 %i.dv, 100
  br label %DivRound.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %.neg8.i.i.i.i = sub i64 50, %i.dt
  %i.dx = udiv i64 %.neg8.i.i.i.i, 100
  %.neg.i.i.i.i = sub nsw i64 0, %i.dx
  br label %DivRound.exit.i.i.i

DivRound.exit.i.i.i:                              ; preds = %bb.u, %bb.t
  %i.dy = phi i64 [ %i.dw, %bb.t ], [ %.neg.i.i.i.i, %bb.u ]
  %i.dz = add i64 %i.dy, %.01221.i.i.i            ; 4 uses
  %i.ea = mul i64 %.01320.i.i.i, 6                ; 3 uses
  %i.eb = icmp sgt i64 %i.ea, -1
  br i1 %i.eb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %DivRound.exit.i.i.i
  %i.ec = add nuw nsw i64 %i.ea, 4
  %i.ed = udiv i64 %i.ec, 10
  br label %DivRound.exit16.i.i.i

bb.w:                                             ; preds = %DivRound.exit.i.i.i
  %.neg8.i14.i.i.i = sub i64 4, %i.ea
  %i.ee = udiv i64 %.neg8.i14.i.i.i, 10
  %.neg.i15.i.i.i = sub nsw i64 0, %i.ee
  br label %DivRound.exit16.i.i.i

DivRound.exit16.i.i.i:                            ; preds = %bb.w, %bb.v
  %i.ef = phi i64 [ %i.ed, %bb.v ], [ %.neg.i15.i.i.i, %bb.w ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %bb.x, label %bb.s, !llvm.loop !0

bb.x:                                             ; preds = %DivRound.exit16.i.i.i
  %i.eg = icmp sgt i32 %5, 24
  %i.eh = icmp samesign ugt i32 %5, 50
  %i.ei = select i1 %i.eh, i64 7, i64 4
  %i.ej = icmp sgt i64 %i.dz, -1
  br i1 %i.ej, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ek = add nuw nsw i64 %i.dz, 5
  %i.el = udiv i64 %i.ek, 10
  br label %GetPredictionCostCrossColorBlue.exit

bb.z:                                             ; preds = %bb.x
  %.neg8.i17.i.i.i = sub i64 5, %i.dz
  %i.em = udiv i64 %.neg8.i17.i.i.i, 10
  %.neg.i18.i.i.i = sub nsw i64 0, %i.em
  br label %GetPredictionCostCrossColorBlue.exit

GetPredictionCostCrossColorBlue.exit:             ; preds = %bb.y, %bb.z
  %i.en = phi i64 [ %i.el, %bb.y ], [ %.neg.i18.i.i.i, %bb.z ]
  %.sroa.2.0.extract.shift.i = lshr i24 %4, 16    ; 2 uses
  %.sroa.2.0.extract.trunc.i = zext nneg i24 %.sroa.2.0.extract.shift.i to i32
  %.sroa.1.0.extract.shift.i = lshr i24 %4, 8
  %.sroa.221.0.extract.shift.i = lshr i24 %3, 16  ; 2 uses
  %.sroa.221.0.extract.trunc.i = zext nneg i24 %.sroa.221.0.extract.shift.i to i32
  %.sroa.120.0.extract.shift.i = lshr i24 %3, 8
  %i.eo = sub nsw i64 %i.di, %i.en                ; 2 uses
  %i.ep = and i24 %.sroa.120.0.extract.shift.i, 255 ; 2 uses
  %i.eq = zext nneg i24 %i.ep to i32
  %i.er = icmp eq i24 %i.ep, 0
  %i.es = add nsw i64 %i.eo, -25165824
  %spec.select.i59 = select i1 %i.er, i64 %i.es, i64 %i.eo ; 2 uses
  %i.et = and i24 %.sroa.1.0.extract.shift.i, 255 ; 2 uses
  %i.eu = zext nneg i24 %i.et to i32
  %i.ev = icmp eq i24 %i.et, 0
  %i.ew = add nsw i64 %spec.select.i59, -25165824
  %.1.i = select i1 %i.ev, i64 %i.ew, i64 %spec.select.i59 ; 2 uses
  %i.ex = icmp eq i24 %.sroa.221.0.extract.shift.i, 0
  %i.ey = add nsw i64 %.1.i, -25165824
  %.2.i60 = select i1 %i.ex, i64 %i.ey, i64 %.1.i
  %i.ez = icmp eq i24 %.sroa.2.0.extract.shift.i, 0
  %i.fa = select i1 %i.ez, i64 -75497472, i64 -50331648
  %i.fb = add i64 %i.fa, %.2.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ab

bb.aa:                                            ; preds = %bb.al
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %i.fc = icmp samesign ugt i64 %i.ei, %indvars.iv.next74.i
  %i.fd = select i1 %i.eg, i1 %i.fc, i1 false
  br i1 %i.fd, label %bb.ab, label %GetBestGreenRedToBlue.exit, !llvm.loop !59

bb.ab:                                            ; preds = %bb.aa, %GetPredictionCostCrossColorBlue.exit
  %indvars.iv73.i = phi i64 [ 0, %GetPredictionCostCrossColorBlue.exit ], [ %indvars.iv.next74.i, %bb.aa ] ; 3 uses
  %.05371.i = phi i32 [ 0, %GetPredictionCostCrossColorBlue.exit ], [ %.2.i, %bb.aa ]
  %.05570.i = phi i32 [ 0, %GetPredictionCostCrossColorBlue.exit ], [ %.257.i, %bb.aa ]
  %.06068.i = phi i64 [ %i.fb, %GetPredictionCostCrossColorBlue.exit ], [ %.262.i, %bb.aa ]
  %i.fe = getelementptr inbounds nuw i8, ptr @__const.GetBestGreenRedToBlue.delta_lut, i64 %indvars.iv73.i
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !13
  %i.fg = sext i8 %i.ff to i32                    ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %GetPredictionCostCrossColorBlue.exit.i, %bb.ab
  %indvars.iv.i = phi i64 [ 0, %bb.ab ], [ %indvars.iv.next.i, %GetPredictionCostCrossColorBlue.exit.i ] ; 2 uses
  %.167.i42 = phi i32 [ %.05371.i, %bb.ab ], [ %.2.i, %GetPredictionCostCrossColorBlue.exit.i ] ; 2 uses
  %.15665.i = phi i32 [ %.05570.i, %bb.ab ], [ %.257.i, %GetPredictionCostCrossColorBlue.exit.i ] ; 2 uses
  %.16164.i = phi i64 [ %.06068.i, %bb.ab ], [ %.262.i, %GetPredictionCostCrossColorBlue.exit.i ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr @__const.GetBestGreenRedToBlue.offset, i64 %indvars.iv.i ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 2, !tbaa !13
  %i.fj = sext i8 %i.fi to i32
  %i.fk = mul nsw i32 %i.fj, %i.fg
  %i.fl = add nsw i32 %i.fk, %.167.i42            ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !13
  %i.fo = sext i8 %i.fn to i32
  %i.fp = mul nsw i32 %i.fo, %i.fg
  %i.fq = add nsw i32 %i.fp, %.15665.i            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  %i.fr = load ptr, ptr @VP8LCollectColorBlueTransforms, align 8, !tbaa !12
  call void %i.fr(ptr noundef %i.r, i32 noundef %6, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.fl, i32 noundef %i.fq, ptr noundef nonnull %i.b) #10, !inline_history !60
  %i.fs = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !12
  %i.ft = call i64 %i.fs(ptr noundef nonnull %i.b, ptr noundef nonnull %9) #10, !inline_history !61
  %i.fu = load i32, ptr %i.b, align 16, !tbaa !9
  %i.fv = zext i32 %i.fu to i64
  %i.fw = mul nuw nsw i64 %i.fv, 25165824
  br label %bb.ad

bb.ad:                                            ; preds = %DivRound.exit16.i.i.i.i51, %bb.ac
  %indvars.iv.i.i.i.i43 = phi i64 [ 1, %bb.ac ], [ %indvars.iv.next.i.i.i.i52, %DivRound.exit16.i.i.i.i51 ] ; 3 uses
  %.01221.i.i.i.i44 = phi i64 [ %i.fw, %bb.ac ], [ %i.gk, %DivRound.exit16.i.i.i.i51 ]
  %.01320.i.i.i.i45 = phi i64 [ 2013265920, %bb.ac ], [ %i.gq, %DivRound.exit16.i.i.i.i51 ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.i.i43
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !9
  %i.fz = sub nuw nsw i64 256, %indvars.iv.i.i.i.i43
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !9
  %i.gc = add i32 %i.gb, %i.fy
  %i.gd = zext i32 %i.gc to i64
  %i.ge = mul i64 %.01320.i.i.i.i45, %i.gd        ; 3 uses
  %i.gf = icmp sgt i64 %i.ge, -1
  br i1 %i.gf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gg = add nuw nsw i64 %i.ge, 50
  %i.gh = udiv i64 %i.gg, 100
  br label %DivRound.exit.i.i.i.i48

bb.af:                                            ; preds = %bb.ad
  %.neg8.i.i.i.i.i46 = sub i64 50, %i.ge
  %i.gi = udiv i64 %.neg8.i.i.i.i.i46, 100
  %.neg.i.i.i.i.i47 = sub nsw i64 0, %i.gi
  br label %DivRound.exit.i.i.i.i48

DivRound.exit.i.i.i.i48:                          ; preds = %bb.af, %bb.ae
  %i.gj = phi i64 [ %i.gh, %bb.ae ], [ %.neg.i.i.i.i.i47, %bb.af ]
  %i.gk = add i64 %i.gj, %.01221.i.i.i.i44        ; 4 uses
  %i.gl = mul i64 %.01320.i.i.i.i45, 6            ; 3 uses
  %i.gm = icmp sgt i64 %i.gl, -1
  br i1 %i.gm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %DivRound.exit.i.i.i.i48
  %i.gn = add nuw nsw i64 %i.gl, 4
  %i.go = udiv i64 %i.gn, 10
  br label %DivRound.exit16.i.i.i.i51

bb.ah:                                            ; preds = %DivRound.exit.i.i.i.i48
  %.neg8.i14.i.i.i.i49 = sub i64 4, %i.gl
  %i.gp = udiv i64 %.neg8.i14.i.i.i.i49, 10
  %.neg.i15.i.i.i.i50 = sub nsw i64 0, %i.gp
  br label %DivRound.exit16.i.i.i.i51

DivRound.exit16.i.i.i.i51:                        ; preds = %bb.ah, %bb.ag
  %i.gq = phi i64 [ %i.go, %bb.ag ], [ %.neg.i15.i.i.i.i50, %bb.ah ]
  %indvars.iv.next.i.i.i.i52 = add nuw nsw i64 %indvars.iv.i.i.i.i43, 1 ; 2 uses
  %exitcond.not.i.i.i.i53 = icmp eq i64 %indvars.iv.next.i.i.i.i52, 16
  br i1 %exitcond.not.i.i.i.i53, label %bb.ai, label %bb.ad, !llvm.loop !0

bb.ai:                                            ; preds = %DivRound.exit16.i.i.i.i51
  %i.gr = icmp sgt i64 %i.gk, -1
  br i1 %i.gr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gs = add nuw nsw i64 %i.gk, 5
  %i.gt = udiv i64 %i.gs, 10
  br label %GetPredictionCostCrossColorBlue.exit.i

bb.ak:                                            ; preds = %bb.ai
  %.neg8.i17.i.i.i.i54 = sub i64 5, %i.gk
  %i.gu = udiv i64 %.neg8.i17.i.i.i.i54, 10
  %.neg.i18.i.i.i.i55 = sub nsw i64 0, %i.gu
  br label %GetPredictionCostCrossColorBlue.exit.i

GetPredictionCostCrossColorBlue.exit.i:           ; preds = %bb.ak, %bb.aj
  %i.gv = phi i64 [ %i.gt, %bb.aj ], [ %.neg.i18.i.i.i.i55, %bb.ak ]
  %i.gw = sub nsw i64 %i.ft, %i.gv                ; 2 uses
  %i.gx = and i32 %i.fl, 255                      ; 2 uses
  %i.gy = icmp eq i32 %i.gx, %i.eq
  %i.gz = add nsw i64 %i.gw, -25165824
  %spec.select.i.i56 = select i1 %i.gy, i64 %i.gz, i64 %i.gw ; 2 uses
  %i.ha = icmp eq i32 %i.gx, %i.eu
  %i.hb = add nsw i64 %spec.select.i.i56, -25165824
  %.1.i.i = select i1 %i.ha, i64 %i.hb, i64 %spec.select.i.i56 ; 2 uses
  %i.hc = and i32 %i.fq, 255                      ; 2 uses
  %i.hd = icmp eq i32 %i.hc, %.sroa.221.0.extract.trunc.i
  %i.he = add nsw i64 %.1.i.i, -25165824
  %.2.i.i57 = select i1 %i.hd, i64 %i.he, i64 %.1.i.i ; 2 uses
  %i.hf = icmp eq i32 %i.hc, %.sroa.2.0.extract.trunc.i
  %i.hg = add nsw i64 %.2.i.i57, -25165824
  %.3.i.i = select i1 %i.hf, i64 %i.hg, i64 %.2.i.i57 ; 2 uses
  %i.hh = icmp eq i32 %i.fl, 0
  %i.hi = add nsw i64 %.3.i.i, -25165824
  %.4.i.i = select i1 %i.hh, i64 %i.hi, i64 %.3.i.i ; 2 uses
  %i.hj = icmp eq i32 %i.fq, 0
  %i.hk = add nsw i64 %.4.i.i, -25165824
  %.5.i.i = select i1 %i.hj, i64 %i.hk, i64 %.4.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.hl = icmp slt i64 %.5.i.i, %.16164.i         ; 2 uses
  %.262.i = call i64 @llvm.smin.i64(i64 %.5.i.i, i64 %.16164.i) ; 2 uses
  %.257.i = select i1 %i.hl, i32 %i.fq, i32 %.15665.i ; 4 uses
  %.2.i = select i1 %i.hl, i32 %i.fl, i32 %.167.i42 ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i58 = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i58, label %bb.al, label %bb.ac, !llvm.loop !62

bb.al:                                            ; preds = %GetPredictionCostCrossColorBlue.exit.i
  %i.hm = trunc i64 %indvars.iv73.i to i32
  %i.hn = add i32 %i.hm, -4
  %i.ho = icmp ult i32 %i.hn, 3
  %i.hp = or i32 %.2.i, %.257.i
  %i.hq = icmp eq i32 %i.hp, 0
  %or.cond3.i = select i1 %i.ho, i1 %i.hq, i1 false
  br i1 %or.cond3.i, label %GetBestGreenRedToBlue.exit, label %bb.aa

GetBestGreenRedToBlue.exit:                       ; preds = %bb.aa, %bb.al
  %.358.i = phi i32 [ 0, %bb.al ], [ %.257.i, %bb.aa ]
  %.3.i = phi i32 [ 0, %bb.al ], [ %.2.i, %bb.aa ]
  %i.hr = trunc i32 %.358.i to i24
  %.sroa.5.0.insert.ext = shl i24 %i.hr, 16
  %i.hs = trunc i32 %.3.i to i24
  %.sroa.3.0.insert.ext = shl i24 %i.hs, 8
  %.sroa.3.0.insert.shift = and i24 %.sroa.3.0.insert.ext, 65280
  %.sroa.3.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.5.0.insert.ext
  %.sroa.0.0.insert.ext = zext i8 %.0.lcssa.i to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.insert, %.sroa.0.0.insert.ext
  ret i24 %.sroa.0.0.insert.insert
}

declare ptr @WebPSafeCalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @MaxDiffsForRow(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 3
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load <2 x i32>, ptr %2, align 4, !tbaa !9 ; 4 uses
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %.not, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = lshr <2 x i32> %i.b, splat (i32 8)
  %i.d = and <2 x i32> %i.b, splat (i32 16711935)
  %i.e = and <2 x i32> %i.b, splat (i32 -16711936)
  %i.f = and <2 x i32> %i.c, splat (i32 255)      ; 2 uses
  %i.g = shl nuw nsw <2 x i32> %i.f, splat (i32 16)
  %i.h = add nuw nsw <2 x i32> %i.f, %i.d
  %i.i = add nuw nsw <2 x i32> %i.h, %i.g
  %i.j = and <2 x i32> %i.i, splat (i32 16711935)
  %i.k = or disjoint <2 x i32> %i.j, %i.e
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c
  %i.l = phi <2 x i32> [ %i.k, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %i.m = sext i32 %1 to i64                       ; 2 uses
  %smax = add nsw i32 %0, -1
  %wide.trip.count = zext nneg i32 %smax to i64
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.m
  %i.n = extractelement <2 x i32> %i.l, i64 0
  %i.o = extractelement <2 x i32> %i.l, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.136 = phi i32 [ %i.o, %.lr.ph.preheader ], [ %.2, %bb.e ] ; 5 uses
  %.13335 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %.136, %bb.e ] ; 4 uses
  %i.p = sub nsw i64 %indvars.iv, %i.m
  %i.q = getelementptr inbounds [4 x i8], ptr %2, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9    ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.s = load i32, ptr %gep, align 4, !tbaa !9    ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9    ; 4 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.v = lshr i32 %i.r, 8
  %i.w = and i32 %i.v, 255                        ; 2 uses
  %i.x = and i32 %i.r, 16711935
  %i.y = shl nuw nsw i32 %i.w, 16
  %i.z = add nuw nsw i32 %i.w, %i.x
  %i.aa = add nuw nsw i32 %i.z, %i.y
  %i.ab = and i32 %i.aa, 16711935
  %i.ac = and i32 %i.r, -16711936
  %i.ad = or disjoint i32 %i.ab, %i.ac
  %i.ae = lshr i32 %i.s, 8
  %i.af = and i32 %i.ae, 255                      ; 2 uses
  %i.ag = and i32 %i.s, 16711935
  %i.ah = shl nuw nsw i32 %i.af, 16
  %i.ai = add nuw nsw i32 %i.af, %i.ag
  %i.aj = add nuw nsw i32 %i.ai, %i.ah
  %i.ak = and i32 %i.aj, 16711935
  %i.al = and i32 %i.s, -16711936
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = lshr i32 %i.u, 8
  %i.ao = and i32 %i.an, 255                      ; 2 uses
  %i.ap = and i32 %i.u, 16711935
  %i.aq = shl nuw nsw i32 %i.ao, 16
  %i.ar = add nuw nsw i32 %i.ao, %i.ap
  %i.as = add nuw nsw i32 %i.ar, %i.aq
  %i.at = and i32 %i.as, 16711935
  %i.au = and i32 %i.u, -16711936
  %i.av = or disjoint i32 %i.at, %i.au
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.031 = phi i32 [ %i.ad, %bb.d ], [ %i.r, %.lr.ph ] ; 4 uses
  %.030 = phi i32 [ %i.am, %bb.d ], [ %i.s, %.lr.ph ] ; 4 uses
  %.2 = phi i32 [ %i.av, %bb.d ], [ %i.u, %.lr.ph ] ; 5 uses
  %i.aw = lshr i32 %.136, 24                      ; 4 uses
  %i.ax = lshr i32 %.031, 24
  %i.ay = sub nsw i32 %i.aw, %i.ax
  %i.az = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  %i.ba = lshr i32 %.136, 16
  %i.bb = and i32 %i.ba, 255                      ; 4 uses
  %i.bc = lshr i32 %.031, 16
  %i.bd = and i32 %i.bc, 255
  %i.be = sub nsw i32 %i.bb, %i.bd
  %i.bf = tail call i32 @llvm.abs.i32(i32 %i.be, i1 true)
  %i.bg = lshr i32 %.136, 8
  %i.bh = and i32 %i.bg, 255                      ; 4 uses
  %i.bi = lshr i32 %.031, 8
  %i.bj = and i32 %i.bi, 255
  %i.bk = sub nsw i32 %i.bh, %i.bj
  %i.bl = tail call i32 @llvm.abs.i32(i32 %i.bk, i1 true)
  %i.bm = and i32 %.136, 255                      ; 4 uses
  %i.bn = and i32 %.031, 255
  %i.bo = sub nsw i32 %i.bm, %i.bn
  %i.bp = tail call i32 @llvm.abs.i32(i32 %i.bo, i1 true)
  %i.bq = tail call i32 @llvm.umax.i32(i32 %i.az, i32 %i.bf)
  %i.br = tail call i32 @llvm.umax.i32(i32 %i.bl, i32 %i.bp)
  %i.bs = tail call range(i32 0, 256) i32 @llvm.umax.i32(i32 %i.bq, i32 %i.br)
  %i.bt = lshr i32 %.030, 24
  %i.bu = sub nsw i32 %i.aw, %i.bt
  %i.bv = tail call i32 @llvm.abs.i32(i32 %i.bu, i1 true)
  %i.bw = lshr i32 %.030, 16
  %i.bx = and i32 %i.bw, 255
  %i.by = sub nsw i32 %i.bb, %i.bx
  %i.bz = tail call i32 @llvm.abs.i32(i32 %i.by, i1 true)
  %i.ca = lshr i32 %.030, 8
  %i.cb = and i32 %i.ca, 255
  %i.cc = sub nsw i32 %i.bh, %i.cb
  %i.cd = tail call i32 @llvm.abs.i32(i32 %i.cc, i1 true)
  %i.ce = and i32 %.030, 255
  %i.cf = sub nsw i32 %i.bm, %i.ce
  %i.cg = tail call i32 @llvm.abs.i32(i32 %i.cf, i1 true)
  %i.ch = tail call i32 @llvm.umax.i32(i32 %i.bv, i32 %i.bz)
  %i.ci = tail call i32 @llvm.umax.i32(i32 %i.cd, i32 %i.cg)
  %i.cj = tail call range(i32 0, 256) i32 @llvm.umax.i32(i32 %i.ch, i32 %i.ci)
  %i.ck = lshr i32 %.13335, 24
  %i.cl = sub nsw i32 %i.aw, %i.ck
  %i.cm = tail call i32 @llvm.abs.i32(i32 %i.cl, i1 true)
  %i.cn = lshr i32 %.13335, 16
  %i.co = and i32 %i.cn, 255
  %i.cp = sub nsw i32 %i.bb, %i.co
  %i.cq = tail call i32 @llvm.abs.i32(i32 %i.cp, i1 true)
  %i.cr = lshr i32 %.13335, 8
  %i.cs = and i32 %i.cr, 255
  %i.ct = sub nsw i32 %i.bh, %i.cs
  %i.cu = tail call i32 @llvm.abs.i32(i32 %i.ct, i1 true)
  %i.cv = and i32 %.13335, 255
  %i.cw = sub nsw i32 %i.bm, %i.cv
  %i.cx = tail call i32 @llvm.abs.i32(i32 %i.cw, i1 true)
  %i.cy = tail call i32 @llvm.umax.i32(i32 %i.cm, i32 %i.cq)
  %i.cz = tail call i32 @llvm.umax.i32(i32 %i.cu, i32 %i.cx)
  %i.da = tail call range(i32 0, 256) i32 @llvm.umax.i32(i32 %i.cy, i32 %i.cz)
  %i.db = lshr i32 %.2, 24
  %i.dc = sub nsw i32 %i.aw, %i.db
  %i.dd = tail call i32 @llvm.abs.i32(i32 %i.dc, i1 true)
  %i.de = lshr i32 %.2, 16
  %i.df = and i32 %i.de, 255
  %i.dg = sub nsw i32 %i.bb, %i.df
  %i.dh = tail call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %i.di = lshr i32 %.2, 8
  %i.dj = and i32 %i.di, 255
  %i.dk = sub nsw i32 %i.bh, %i.dj
  %i.dl = tail call i32 @llvm.abs.i32(i32 %i.dk, i1 true)
  %i.dm = and i32 %.2, 255
  %i.dn = sub nsw i32 %i.bm, %i.dm
  %i.do = tail call i32 @llvm.abs.i32(i32 %i.dn, i1 true)
  %i.dp = tail call i32 @llvm.umax.i32(i32 %i.dd, i32 %i.dh)
  %i.dq = tail call i32 @llvm.umax.i32(i32 %i.dl, i32 %i.do)
  %i.dr = tail call range(i32 0, 256) i32 @llvm.umax.i32(i32 %i.dp, i32 %i.dq)
  %i.ds = tail call i32 @llvm.umax.i32(i32 %i.bs, i32 %i.cj)
  %i.dt = tail call i32 @llvm.umax.i32(i32 %i.da, i32 %i.dr)
  %i.du = tail call range(i32 0, 256) i32 @llvm.umax.i32(i32 %i.ds, i32 %i.dt)
end_hunk_0
