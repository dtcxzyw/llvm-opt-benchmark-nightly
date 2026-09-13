Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/predictor_enc?download=true
inline.NumInlined: 92
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@GetBestColorTransformForTile:bb.a
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
  %5 = sext i32 %1 to i64                         ; 2 uses
  %smax = add nsw i32 %0, -1
  %wide.trip.count = zext nneg i32 %smax to i64
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %5
  %i.m = extractelement <2 x i32> %i.l, i64 0
  %i.n = extractelement <2 x i32> %i.l, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.136 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %.2, %bb.e ] ; 5 uses
  %.13335 = phi i32 [ %i.m, %.lr.ph.preheader ], [ %.136, %bb.e ] ; 4 uses
  %i.o = sub nsw i64 %indvars.iv, %5
  %i.p = getelementptr inbounds [4 x i8], ptr %2, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !9    ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.r = load i32, ptr %gep, align 4, !tbaa !9    ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.t = load i32, ptr %i.s, align 4, !tbaa !9    ; 4 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.u = lshr i32 %i.q, 8
  %i.v = and i32 %i.u, 255                        ; 2 uses
  %i.w = and i32 %i.q, 16711935
  %i.x = shl nuw nsw i32 %i.v, 16
  %i.y = add nuw nsw i32 %i.v, %i.w
  %i.z = add nuw nsw i32 %i.y, %i.x
  %i.aa = and i32 %i.z, 16711935
  %i.ab = and i32 %i.q, -16711936
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = lshr i32 %i.r, 8
  %i.ae = and i32 %i.ad, 255                      ; 2 uses
  %i.af = and i32 %i.r, 16711935
  %i.ag = shl nuw nsw i32 %i.ae, 16
  %i.ah = add nuw nsw i32 %i.ae, %i.af
  %i.ai = add nuw nsw i32 %i.ah, %i.ag
  %i.aj = and i32 %i.ai, 16711935
  %i.ak = and i32 %i.r, -16711936
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = lshr i32 %i.t, 8
  %i.an = and i32 %i.am, 255                      ; 2 uses
  %i.ao = and i32 %i.t, 16711935
  %i.ap = shl nuw nsw i32 %i.an, 16
  %i.aq = add nuw nsw i32 %i.an, %i.ao
  %i.ar = add nuw nsw i32 %i.aq, %i.ap
  %i.as = and i32 %i.ar, 16711935
  %i.at = and i32 %i.t, -16711936
  %i.au = or disjoint i32 %i.as, %i.at
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.031 = phi i32 [ %i.ac, %bb.d ], [ %i.q, %.lr.ph ] ; 4 uses
  %.030 = phi i32 [ %i.al, %bb.d ], [ %i.r, %.lr.ph ] ; 4 uses
  %.2 = phi i32 [ %i.au, %bb.d ], [ %i.t, %.lr.ph ] ; 5 uses
  %i.av = lshr i32 %.136, 24                      ; 4 uses
  %i.aw = lshr i32 %.031, 24
  %i.ax = sub nsw i32 %i.av, %i.aw
  %i.ay = tail call i32 @llvm.abs.i32(i32 %i.ax, i1 true)
  %i.az = lshr i32 %.136, 16
  %i.ba = and i32 %i.az, 255                      ; 4 uses
  %i.bb = lshr i32 %.031, 16
  %i.bc = and i32 %i.bb, 255
  %i.bd = sub nsw i32 %i.ba, %i.bc
  %i.be = tail call i32 @llvm.abs.i32(i32 %i.bd, i1 true)
  %i.bf = lshr i32 %.136, 8
  %i.bg = and i32 %i.bf, 255                      ; 4 uses
  %i.bh = lshr i32 %.031, 8
  %i.bi = and i32 %i.bh, 255
  %i.bj = sub nsw i32 %i.bg, %i.bi
  %i.bk = tail call i32 @llvm.abs.i32(i32 %i.bj, i1 true)
  %i.bl = and i32 %.136, 255                      ; 4 uses
  %i.bm = and i32 %.031, 255
  %i.bn = sub nsw i32 %i.bl, %i.bm
  %i.bo = tail call i32 @llvm.abs.i32(i32 %i.bn, i1 true)
  %i.bp = tail call i32 @llvm.umax.i32(i32 %i.ay, i32 %i.be)
  %i.bq = tail call i32 @llvm.umax.i32(i32 %i.bk, i32 %i.bo)
  %i.br = tail call range(i32 0, 256) i32 @llvm.umax.i32(i32 %i.bp, i32 %i.bq)
  %i.bs = lshr i32 %.030, 24
  %i.bt = sub nsw i32 %i.av, %i.bs
  %i.bu = tail call i32 @llvm.abs.i32(i32 %i.bt, i1 true)
  %i.bv = lshr i32 %.030, 16
  %i.bw = and i32 %i.bv, 255
  %i.bx = sub nsw i32 %i.ba, %i.bw
  %i.by = tail call i32 @llvm.abs.i32(i32 %i.bx, i1 true)
  %i.bz = lshr i32 %.030, 8
  %i.ca = and i32 %i.bz, 255
  %i.cb = sub nsw i32 %i.bg, %i.ca
  %i.cc = tail call i32 @llvm.abs.i32(i32 %i.cb, i1 true)
  %i.cd = and i32 %.030, 255
  %i.ce = sub nsw i32 %i.bl, %i.cd
  %i.cf = tail call i32 @llvm.abs.i32(i32 %i.ce, i1 true)
  %i.cg = tail call i32 @llvm.umax.i32(i32 %i.bu, i32 %i.by)
  %i.ch = tail call i32 @llvm.umax.i32(i32 %i.cc, i32 %i.cf)
  %i.ci = tail call range(i32 0, 256) i32 @llvm.umax.i32(i32 %i.cg, i32 %i.ch)
  %i.cj = lshr i32 %.13335, 24
  %i.ck = sub nsw i32 %i.av, %i.cj
  %i.cl = tail call i32 @llvm.abs.i32(i32 %i.ck, i1 true)
  %i.cm = lshr i32 %.13335, 16
  %i.cn = and i32 %i.cm, 255
  %i.co = sub nsw i32 %i.ba, %i.cn
  %i.cp = tail call i32 @llvm.abs.i32(i32 %i.co, i1 true)
  %i.cq = lshr i32 %.13335, 8
  %i.cr = and i32 %i.cq, 255
  %i.cs = sub nsw i32 %i.bg, %i.cr
  %i.ct = tail call i32 @llvm.abs.i32(i32 %i.cs, i1 true)
  %i.cu = and i32 %.13335, 255
  %i.cv = sub nsw i32 %i.bl, %i.cu
  %i.cw = tail call i32 @llvm.abs.i32(i32 %i.cv, i1 true)
  %i.cx = tail call i32 @llvm.umax.i32(i32 %i.cl, i32 %i.cp)
  %i.cy = tail call i32 @llvm.umax.i32(i32 %i.ct, i32 %i.cw)
  %i.cz = tail call range(i32 0, 256) i32 @llvm.umax.i32(i32 %i.cx, i32 %i.cy)
  %i.da = lshr i32 %.2, 24
  %i.db = sub nsw i32 %i.av, %i.da
  %i.dc = tail call i32 @llvm.abs.i32(i32 %i.db, i1 true)
  %i.dd = lshr i32 %.2, 16
  %i.de = and i32 %i.dd, 255
  %i.df = sub nsw i32 %i.ba, %i.de
  %i.dg = tail call i32 @llvm.abs.i32(i32 %i.df, i1 true)
  %i.dh = lshr i32 %.2, 8
  %i.di = and i32 %i.dh, 255
  %i.dj = sub nsw i32 %i.bg, %i.di
  %i.dk = tail call i32 @llvm.abs.i32(i32 %i.dj, i1 true)
  %i.dl = and i32 %.2, 255
  %i.dm = sub nsw i32 %i.bl, %i.dl
  %i.dn = tail call i32 @llvm.abs.i32(i32 %i.dm, i1 true)
  %i.do = tail call i32 @llvm.umax.i32(i32 %i.dc, i32 %i.dg)
  %i.dp = tail call i32 @llvm.umax.i32(i32 %i.dk, i32 %i.dn)
  %i.dq = tail call range(i32 0, 256) i32 @llvm.umax.i32(i32 %i.do, i32 %i.dp)
  %i.dr = tail call i32 @llvm.umax.i32(i32 %i.br, i32 %i.ci)
  %i.ds = tail call i32 @llvm.umax.i32(i32 %i.cz, i32 %i.dq)
  %i.dt = tail call range(i32 0, 256) i32 @llvm.umax.i32(i32 %i.dr, i32 %i.ds)
  %i.du = trunc nuw i32 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !13
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !63

.loopexit:                                        ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @GetResidual(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 -2147483648, 256) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sub nsw i32 %7, %6                       ; 2 uses
  %i.b = icmp eq i32 %6, 0
  br i1 %i.b, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %8, 0
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @VP8LPredictorsSub, align 16, !tbaa !12
  tail call void %i.d(ptr noundef %3, ptr noundef null, i32 noundef 1, ptr noundef %12) #10, !inline_history !64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 16), align 16, !tbaa !12
  tail call void %i.e(ptr noundef %3, ptr noundef %2, i32 noundef 1, ptr noundef %12) #10, !inline_history !64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.g = add nsw i32 %i.a, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.022.i = phi i32 [ %i.g, %bb.f ], [ %i.a, %bb.b ] ; 2 uses
  %.021.i = phi i32 [ 1, %bb.f ], [ %6, %bb.b ]   ; 2 uses
  %.0.i = phi ptr [ %i.f, %bb.f ], [ %12, %bb.b ] ; 2 uses
  %i.h = icmp eq i32 %8, 0
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 8), align 8, !tbaa !12
  %i.j = sext i32 %.021.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %3, i64 %i.j
  tail call void %i.i(ptr noundef nonnull %i.k, ptr noundef null, i32 noundef %.022.i, ptr noundef %.0.i) #10, !inline_history !64
  br label %PredictBatch.exit

bb.i:                                             ; preds = %bb.g
  %i.l = sext i32 %5 to i64
  %i.m = getelementptr inbounds [8 x i8], ptr @VP8LPredictorsSub, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.o = sext i32 %.021.i to i64                  ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %3, i64 %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr %2, i64 %i.o
  tail call void %i.n(ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, i32 noundef %.022.i, ptr noundef %.0.i) #10, !inline_history !64
  br label %PredictBatch.exit

bb.j:                                             ; preds = %bb.a
  %i.r = sext i32 %5 to i64
  %i.s = getelementptr inbounds [8 x i8], ptr @VP8LPredictors, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12   ; 3 uses
  %i.u = icmp slt i32 %6, %7
  br i1 %i.u, label %.lr.ph, label %PredictBatch.exit

.lr.ph:                                           ; preds = %bb.j
  %i.v = icmp eq i32 %8, 0
  %i.w = add i32 %1, -1
  %i.x = icmp eq i32 %8, %i.w
  %i.y = add nsw i32 %0, -1
  %.not43.i = icmp eq i32 %11, 0                  ; 2 uses
  %i.z = sext i32 %0 to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %2, i64 %i.z ; 3 uses
  br i1 %i.v, label %.lr.ph.split.us.preheader, label %.lr.ph.split
end_hunk_0
