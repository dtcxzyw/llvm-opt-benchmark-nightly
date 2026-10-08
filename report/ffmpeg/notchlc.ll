Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/notchlc?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@decode_frame:bb.a
  %i.tf = shl nsw i64 %i.te, 1
  %scevgep.2.i.1 = getelementptr i8, ptr %.1450795.us.i, i64 %i.tf
  store i64 0, ptr %scevgep.2.i.1, align 2
  %i.tg = add i32 %i.sx, %i.nt
  %i.th = sext i32 %i.tg to i64
  %i.ti = shl nsw i64 %i.th, 1
  %scevgep.3.i.1 = getelementptr i8, ptr %.1450795.us.i, i64 %i.ti
  store i64 0, ptr %scevgep.3.i.1, align 2
  br label %.loopexit748.us.i.1

.loopexit748.us.i.1:                              ; preds = %.preheader743.us.i.1, %.preheader745.us.i.1, %.preheader747.us.i.1
  %i.tj = lshr i32 %.0427791.us.i, 4
  %i.tk = and i32 %i.tj, 3
  switch i32 %i.tk, label %default.unreachable [
    i32 0, label %.preheader743.us.i.2
    i32 1, label %.preheader745.us.i.2
    i32 2, label %.preheader747.us.i.2
    i32 3, label %decode_blocks.exit.thread
  ]

.preheader747.us.i.2:                             ; preds = %.loopexit748.us.i.1
  %i.tl = lshr i64 %.0425792.us.i, 6
  %i.tm = and i64 %i.tl, 7
  %i.tn = mul nsw i64 %i.tm, %i.oz
  %i.to = add nsw i64 %i.tn, %i.ov
  %.tr.us.i.2 = trunc nsw i64 %i.to to i16
  %i.tp = shl nsw i16 %.tr.us.i.2, 4
  %i.tq = add i32 %i.pt, %i.pi
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.tr
  %i.tt = insertelement <4 x i16> poison, i16 %i.tp, i64 0
  %i.tu = shufflevector <4 x i16> %i.tt, <4 x i16> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i16> %i.tu, ptr %i.ts, align 2, !tbaa !90
  %i.tv = add i32 %i.pv, %i.pi
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.tw
  store <4 x i16> %i.tu, ptr %i.tx, align 2, !tbaa !90
  %i.ty = add i32 %i.px, %i.pi
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.tz
  store <4 x i16> %i.tu, ptr %i.ua, align 2, !tbaa !90
  %i.ub = add i32 %i.pz, %i.pi
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.uc
  store <4 x i16> %i.tu, ptr %i.ud, align 2, !tbaa !90
  br label %.loopexit748.us.i.2

.preheader745.us.i.2:                             ; preds = %.loopexit748.us.i.1
  %i.ue = add i32 %i.pt, %i.pk
  %i.uf = sext i32 %i.ue to i64
  %i.ug = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.uf
  store <4 x i16> splat (i16 4095), ptr %i.ug, align 2, !tbaa !90
  %i.uh = add i32 %i.pv, %i.pk
  %i.ui = sext i32 %i.uh to i64
  %i.uj = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.ui
  store <4 x i16> splat (i16 4095), ptr %i.uj, align 2, !tbaa !90
  %i.uk = add i32 %i.px, %i.pk
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.ul
  store <4 x i16> splat (i16 4095), ptr %i.um, align 2, !tbaa !90
  %i.un = add i32 %i.pz, %i.pk
  %i.uo = sext i32 %i.un to i64
  %i.up = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.uo
  store <4 x i16> splat (i16 4095), ptr %i.up, align 2, !tbaa !90
  br label %.loopexit748.us.i.2

.preheader743.us.i.2:                             ; preds = %.loopexit748.us.i.1
  %i.uq = add i32 %i.pr, 8                        ; 4 uses
  %i.ur = sext i32 %i.uq to i64
  %i.us = shl nsw i64 %i.ur, 1
  %scevgep.i.2 = getelementptr i8, ptr %.1450795.us.i, i64 %i.us
  store i64 0, ptr %scevgep.i.2, align 2
  %i.ut = add i32 %i.uq, %i.hg
  %i.uu = sext i32 %i.ut to i64
  %i.uv = shl nsw i64 %i.uu, 1
  %scevgep.1.i.2 = getelementptr i8, ptr %.1450795.us.i, i64 %i.uv
  store i64 0, ptr %scevgep.1.i.2, align 2
  %i.uw = add i32 %i.uq, %i.ns
  %i.ux = sext i32 %i.uw to i64
  %i.uy = shl nsw i64 %i.ux, 1
  %scevgep.2.i.2 = getelementptr i8, ptr %.1450795.us.i, i64 %i.uy
  store i64 0, ptr %scevgep.2.i.2, align 2
  %i.uz = add i32 %i.uq, %i.nt
  %i.va = sext i32 %i.uz to i64
  %i.vb = shl nsw i64 %i.va, 1
  %scevgep.3.i.2 = getelementptr i8, ptr %.1450795.us.i, i64 %i.vb
  store i64 0, ptr %scevgep.3.i.2, align 2
  br label %.loopexit748.us.i.2

.loopexit748.us.i.2:                              ; preds = %.preheader743.us.i.2, %.preheader745.us.i.2, %.preheader747.us.i.2
  %i.vc = lshr i32 %.0427791.us.i, 6
  %i.vd = and i32 %i.vc, 3
  switch i32 %i.vd, label %default.unreachable [
    i32 0, label %.preheader743.us.i.3
    i32 1, label %.preheader745.us.i.3
    i32 2, label %.preheader747.us.i.3
    i32 3, label %decode_blocks.exit.thread
  ]

.preheader747.us.i.3:                             ; preds = %.loopexit748.us.i.2
  %i.ve = lshr i64 %.0425792.us.i, 9
  %i.vf = and i64 %i.ve, 7
  %i.vg = mul nsw i64 %i.vf, %i.oz
  %i.vh = add nsw i64 %i.vg, %i.ov
  %.tr.us.i.3 = trunc nsw i64 %i.vh to i16
  %i.vi = shl nsw i16 %.tr.us.i.3, 4
  %i.vj = add i32 %i.pt, %i.pm
  %i.vk = sext i32 %i.vj to i64
  %i.vl = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.vk
  %i.vm = insertelement <4 x i16> poison, i16 %i.vi, i64 0
  %i.vn = shufflevector <4 x i16> %i.vm, <4 x i16> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i16> %i.vn, ptr %i.vl, align 2, !tbaa !90
  %i.vo = add i32 %i.pv, %i.pm
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.vp
  store <4 x i16> %i.vn, ptr %i.vq, align 2, !tbaa !90
  %i.vr = add i32 %i.px, %i.pm
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.vs
  store <4 x i16> %i.vn, ptr %i.vt, align 2, !tbaa !90
  %i.vu = add i32 %i.pz, %i.pm
  %i.vv = sext i32 %i.vu to i64
  %i.vw = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.vv
  store <4 x i16> %i.vn, ptr %i.vw, align 2, !tbaa !90
  br label %.loopexit748.us.i.3

.preheader745.us.i.3:                             ; preds = %.loopexit748.us.i.2
  %i.vx = add i32 %i.pt, %i.po
  %i.vy = sext i32 %i.vx to i64
  %i.vz = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.vy
  store <4 x i16> splat (i16 4095), ptr %i.vz, align 2, !tbaa !90
  %i.wa = add i32 %i.pv, %i.po
  %i.wb = sext i32 %i.wa to i64
  %i.wc = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.wb
  store <4 x i16> splat (i16 4095), ptr %i.wc, align 2, !tbaa !90
  %i.wd = add i32 %i.px, %i.po
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.we
  store <4 x i16> splat (i16 4095), ptr %i.wf, align 2, !tbaa !90
  %i.wg = add i32 %i.pz, %i.po
  %i.wh = sext i32 %i.wg to i64
  %i.wi = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.wh
  store <4 x i16> splat (i16 4095), ptr %i.wi, align 2, !tbaa !90
  br label %.loopexit748.us.i.3

.preheader743.us.i.3:                             ; preds = %.loopexit748.us.i.2
  %i.wj = add i32 %i.pr, 12                       ; 4 uses
  %i.wk = sext i32 %i.wj to i64
  %i.wl = shl nsw i64 %i.wk, 1
  %scevgep.i.3 = getelementptr i8, ptr %.1450795.us.i, i64 %i.wl
  store i64 0, ptr %scevgep.i.3, align 2
  %i.wm = add i32 %i.wj, %i.hg
  %i.wn = sext i32 %i.wm to i64
  %i.wo = shl nsw i64 %i.wn, 1
  %scevgep.1.i.3 = getelementptr i8, ptr %.1450795.us.i, i64 %i.wo
  store i64 0, ptr %scevgep.1.i.3, align 2
  %i.wp = add i32 %i.wj, %i.ns
  %i.wq = sext i32 %i.wp to i64
  %i.wr = shl nsw i64 %i.wq, 1
  %scevgep.2.i.3 = getelementptr i8, ptr %.1450795.us.i, i64 %i.wr
  store i64 0, ptr %scevgep.2.i.3, align 2
  %i.ws = add i32 %i.wj, %i.nt
  %i.wt = sext i32 %i.ws to i64
  %i.wu = shl nsw i64 %i.wt, 1
  %scevgep.3.i.3 = getelementptr i8, ptr %.1450795.us.i, i64 %i.wu
  store i64 0, ptr %scevgep.3.i.3, align 2
  br label %.loopexit748.us.i.3

.loopexit748.us.i.3:                              ; preds = %.preheader743.us.i.3, %.preheader745.us.i.3, %.preheader747.us.i.3
  %i.wv = lshr i64 %.0425792.us.i, 12
  %i.ww = lshr i32 %.0427791.us.i, 8
  %indvars.iv.next887.i = add nuw nsw i64 %indvars.iv886.i, 1 ; 2 uses
  %exitcond889.not.i = icmp eq i64 %indvars.iv.next887.i, 4
  br i1 %exitcond889.not.i, label %bb.ay, label %.preheader749.us.i, !llvm.loop !54

bb.ay:                                            ; preds = %.loopexit748.us.i.3
  %indvars.iv.next891.i = add nuw nsw i64 %indvars.iv890.i, 16 ; 2 uses
  %i.wx = icmp samesign ult i64 %indvars.iv.next891.i, %i.nr
  br i1 %i.wx, label %bb.as, label %._crit_edge.us797.i, !llvm.loop !55

._crit_edge.us797.i:                              ; preds = %bb.ay
  %i.wy = getelementptr [2 x i8], ptr %.1450795.us.i, i64 %i.np
  %i.wz = add nuw nsw i32 %.0430796.us.i, 16      ; 2 uses
  %i.xa = icmp slt i32 %i.wz, %i.gl
  br i1 %i.xa, label %.preheader751.us.i, label %.loopexit739.i, !llvm.loop !56

default.unreachable:                              ; preds = %.loopexit748.us.i.2, %.loopexit748.us.i.1, %.loopexit748.us.i, %.preheader749.us.i
  unreachable

.loopexit739.i:                                   ; preds = %._crit_edge.us797.i, %._crit_edge.i, %.preheader751.lr.ph.i, %.preheader753.i, %.preheader737.lr.ph.i, %.preheader738.i
  %i.xb = load i32, ptr %i.ck, align 8, !tbaa !76 ; 2 uses
  %i.xc = icmp slt i32 %i.xb, 0
  %..i562.i = tail call i32 @llvm.smin.i32(i32 %i.xb, i32 %.pre-phi115)
  %.0.i563.i = select i1 %i.xc, i32 0, i32 %..i562.i
  %i.xd = sext i32 %.0.i563.i to i64
  %i.xe = getelementptr inbounds i8, ptr %.sroa.20.0.copyload661.i, i64 %i.xd
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !32
  %i.xh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !32
  br i1 %.not478765.i, label %.preheader736.lr.ph.i, label %decode_blocks.exit

.preheader736.lr.ph.i:                            ; preds = %.loopexit739.i
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %5 = load <2 x i32>, ptr %4, align 4, !tbaa !28
  %6 = sdiv <2 x i32> %5, splat (i32 2)           ; 2 uses
  %i.xj = icmp sgt i32 %.fr.i, 0
  %7 = extractelement <2 x i32> %6, i64 0         ; 2 uses
  %8 = shl nsw i32 %7, 4
  %i.xk = sext i32 %8 to i64
  %i.xl = extractelement <2 x i32> %6, i64 1      ; 2 uses
  %9 = shl nsw i32 %i.xl, 4
  %i.xm = sext i32 %9 to i64
  br i1 %i.xj, label %.preheader736.lr.ph.split.i, label %decode_blocks.exit

.preheader736.lr.ph.split.i:                      ; preds = %.preheader736.lr.ph.i
  %i.xn = load i32, ptr %i.dr, align 8, !tbaa !79
  %i.xo = sext i32 %7 to i64
  %i.xp = sext i32 %i.xl to i64
  %i.xq = zext nneg i32 %.fr.i to i64
  br label %.preheader736.i

.preheader736.i:                                  ; preds = %._crit_edge831.i, %.preheader736.lr.ph.split.i
  %.0416835.i = phi i32 [ 0, %.preheader736.lr.ph.split.i ], [ %i.xt, %._crit_edge831.i ]
  %.0451834.i = phi ptr [ %i.xi, %.preheader736.lr.ph.split.i ], [ %i.xs, %._crit_edge831.i ] ; 2 uses
  %.0452833.i = phi ptr [ %i.xg, %.preheader736.lr.ph.split.i ], [ %i.xr, %._crit_edge831.i ] ; 2 uses
  %.sroa.0647.1832.i = phi ptr [ %i.xe, %.preheader736.lr.ph.split.i ], [ %.sroa.0647.3.i, %._crit_edge831.i ]
  br label %bb.az

._crit_edge831.i:                                 ; preds = %bb.bz
  %i.xr = getelementptr inbounds [2 x i8], ptr %.0452833.i, i64 %i.xk
  %i.xs = getelementptr inbounds [2 x i8], ptr %.0451834.i, i64 %i.xm
  %i.xt = add nuw nsw i32 %.0416835.i, 16         ; 2 uses
  %i.xu = icmp slt i32 %i.xt, %i.gl
  br i1 %i.xu, label %.preheader736.i, label %decode_blocks.exit, !llvm.loop !57

bb.az:                                            ; preds = %bb.bz, %.preheader736.i
  %indvars.iv953.i = phi i64 [ 0, %.preheader736.i ], [ %indvars.iv.next954.i, %bb.bz ] ; 3 uses
  %.sroa.0647.2829.i = phi ptr [ %.sroa.0647.1832.i, %.preheader736.i ], [ %.sroa.0647.3.i, %bb.bz ] ; 3 uses
  %i.xv = ptrtoint ptr %.sroa.0647.2829.i to i64
  %i.xw = sub i64 %i.fz, %i.xv
  %i.xx = icmp slt i64 %i.xw, 4
  br i1 %i.xx, label %bytestream2_get_le32.exit487.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.0647.2829.i, i64 4
  %i.xz = load i32, ptr %.sroa.0647.2829.i, align 1, !tbaa !33
  %i.ya = shl i32 %i.xz, 2
  br label %bytestream2_get_le32.exit487.i

bytestream2_get_le32.exit487.i:                   ; preds = %bb.ba, %bb.az
  %.sroa.0647.3.i = phi ptr [ %i.xy, %bb.ba ], [ %.sroa.16654.0.copyload.i, %bb.az ] ; 2 uses
  %.0.i486.i = phi i32 [ %i.ya, %bb.ba ], [ 0, %bb.az ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  %i.yb = add i32 %.0.i486.i, %i.xn               ; 2 uses
  %i.yc = icmp slt i32 %i.yb, 0
  %..i564.i = tail call i32 @llvm.smin.i32(i32 %i.yb, i32 %.pre-phi115)
  %.0.i565.i = select i1 %i.yc, i32 0, i32 %..i564.i
  %i.yd = sext i32 %.0.i565.i to i64
  %i.ye = getelementptr inbounds i8, ptr %.sroa.20.0.copyload661.i, i64 %i.yd ; 3 uses
  %i.yf = ptrtoint ptr %i.ye to i64
  %i.yg = sub i64 %i.fz, %i.yf
  %i.yh = icmp slt i64 %i.yg, 2
  br i1 %i.yh, label %bytestream2_get_le16.exit541.i, label %bb.bb

bb.bb:                                            ; preds = %bytestream2_get_le32.exit487.i
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ye, i64 2 ; 2 uses
  %i.yj = load i16, ptr %i.ye, align 1, !tbaa !33
  %i.yk = zext i16 %i.yj to i32
  %.pre957.i = ptrtoint ptr %i.yi to i64
  br label %bytestream2_get_le16.exit541.i

bytestream2_get_le16.exit541.i:                   ; preds = %bb.bb, %bytestream2_get_le32.exit487.i
  %.pre-phi958.i = phi i64 [ %i.fz, %bytestream2_get_le32.exit487.i ], [ %.pre957.i, %bb.bb ]
  %.sroa.0575.20.i = phi ptr [ %.sroa.16654.0.copyload.i, %bytestream2_get_le32.exit487.i ], [ %i.yi, %bb.bb ] ; 2 uses
  %.0.i540.i = phi i32 [ 0, %bytestream2_get_le32.exit487.i ], [ %i.yk, %bb.bb ] ; 2 uses
  %i.yl = sub i64 %i.fz, %.pre-phi958.i
  %i.ym = icmp slt i64 %i.yl, 2
  br i1 %i.ym, label %bytestream2_get_le16.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bytestream2_get_le16.exit541.i
  %i.yn = getelementptr inbounds nuw i8, ptr %.sroa.0575.20.i, i64 2
  %i.yo = load i16, ptr %.sroa.0575.20.i, align 1, !tbaa !33
  %i.yp = icmp eq i16 %i.yo, 0
  br label %bytestream2_get_le16.exit.i

bytestream2_get_le16.exit.i:                      ; preds = %bb.bc, %bytestream2_get_le16.exit541.i
  %.sroa.0575.19.i = phi ptr [ %i.yn, %bb.bc ], [ %.sroa.16654.0.copyload.i, %bytestream2_get_le16.exit541.i ] ; 4 uses
  %.0.i539.i = phi i1 [ %i.yp, %bb.bc ], [ true, %bytestream2_get_le16.exit541.i ] ; 2 uses
  %i.yq = icmp eq i32 %.0.i540.i, 0
  %or.cond.i69 = select i1 %.0.i539.i, i1 %i.yq, i1 false
  br i1 %or.cond.i69, label %bb.bd, label %.preheader732.i

bb.bd:                                            ; preds = %bytestream2_get_le16.exit.i
  %i.yr = ptrtoint ptr %.sroa.0575.19.i to i64
  %i.ys = sub i64 %i.fz, %i.yr
  %i.yt = icmp slt i64 %i.ys, 1
  br i1 %i.yt, label %bytestream2_get_byte.exit538.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.0575.19.i, i64 1 ; 2 uses
  %i.yv = load i8, ptr %.sroa.0575.19.i, align 1, !tbaa !33
  %i.yw = zext i8 %i.yv to i32
  %.pre959.i = ptrtoint ptr %i.yu to i64
  br label %bytestream2_get_byte.exit538.i

bytestream2_get_byte.exit538.i:                   ; preds = %bb.be, %bb.bd
  %.pre-phi960.i = phi i64 [ %i.fz, %bb.bd ], [ %.pre959.i, %bb.be ]
  %.sroa.0575.18.i = phi ptr [ %.sroa.16654.0.copyload.i, %bb.bd ], [ %i.yu, %bb.be ] ; 2 uses
  %.0.i537.i = phi i32 [ 0, %bb.bd ], [ %i.yw, %bb.be ] ; 2 uses
  %i.yx = sub i64 %i.fz, %.pre-phi960.i
  %i.yy = icmp slt i64 %i.yx, 1
  br i1 %i.yy, label %bytestream2_get_byte.exit536.i, label %bb.bf

bb.bf:                                            ; preds = %bytestream2_get_byte.exit538.i
  %i.yz = getelementptr inbounds nuw i8, ptr %.sroa.0575.18.i, i64 1 ; 2 uses
  %i.za = load i8, ptr %.sroa.0575.18.i, align 1, !tbaa !33
  %i.zb = zext i8 %i.za to i32
  %.pre961.i = ptrtoint ptr %i.yz to i64
  br label %bytestream2_get_byte.exit536.i

bytestream2_get_byte.exit536.i:                   ; preds = %bb.bf, %bytestream2_get_byte.exit538.i
  %.pre-phi962.i = phi i64 [ %i.fz, %bytestream2_get_byte.exit538.i ], [ %.pre961.i, %bb.bf ]
  %.sroa.0575.17.i = phi ptr [ %.sroa.16654.0.copyload.i, %bytestream2_get_byte.exit538.i ], [ %i.yz, %bb.bf ] ; 2 uses
  %.0.i535.i = phi i32 [ 0, %bytestream2_get_byte.exit538.i ], [ %i.zb, %bb.bf ] ; 2 uses
  %i.zc = sub i64 %i.fz, %.pre-phi962.i
  %i.zd = icmp slt i64 %i.zc, 1
  br i1 %i.zd, label %bytestream2_get_byte.exit534.i, label %bb.bg

bb.bg:                                            ; preds = %bytestream2_get_byte.exit536.i
  %i.ze = getelementptr inbounds nuw i8, ptr %.sroa.0575.17.i, i64 1 ; 2 uses
  %i.zf = load i8, ptr %.sroa.0575.17.i, align 1, !tbaa !33
  %i.zg = zext i8 %i.zf to i32
  %.pre963.i = ptrtoint ptr %i.ze to i64
  br label %bytestream2_get_byte.exit534.i

bytestream2_get_byte.exit534.i:                   ; preds = %bb.bg, %bytestream2_get_byte.exit536.i
  %.pre-phi964.i = phi i64 [ %i.fz, %bytestream2_get_byte.exit536.i ], [ %.pre963.i, %bb.bg ]
  %.sroa.0575.16.i = phi ptr [ %.sroa.16654.0.copyload.i, %bytestream2_get_byte.exit536.i ], [ %i.ze, %bb.bg ] ; 2 uses
  %.0.i533.i = phi i32 [ 0, %bytestream2_get_byte.exit536.i ], [ %i.zg, %bb.bg ] ; 2 uses
  %i.zh = sub i64 %i.fz, %.pre-phi964.i
  %i.zi = icmp slt i64 %i.zh, 1
  br i1 %i.zi, label %bytestream2_get_byte.exit532.i, label %bb.bh

bb.bh:                                            ; preds = %bytestream2_get_byte.exit534.i
  %i.zj = getelementptr inbounds nuw i8, ptr %.sroa.0575.16.i, i64 1 ; 2 uses
  %i.zk = load i8, ptr %.sroa.0575.16.i, align 1, !tbaa !33
  %i.zl = zext i8 %i.zk to i32
  %.pre965.i = ptrtoint ptr %i.zj to i64
  br label %bytestream2_get_byte.exit532.i

bytestream2_get_byte.exit532.i:                   ; preds = %bb.bh, %bytestream2_get_byte.exit534.i
  %.pre-phi966.i = phi i64 [ %i.fz, %bytestream2_get_byte.exit534.i ], [ %.pre965.i, %bb.bh ]
  %.sroa.0575.15.i = phi ptr [ %.sroa.16654.0.copyload.i, %bytestream2_get_byte.exit534.i ], [ %i.zj, %bb.bh ]
  %.0.i531.i = phi i32 [ 0, %bytestream2_get_byte.exit534.i ], [ %i.zl, %bb.bh ] ; 2 uses
  %i.zm = sub i64 %i.fz, %.pre-phi966.i
  %i.zn = icmp slt i64 %i.zm, 4
  br i1 %i.zn, label %bytestream2_get_le32.exit485.i, label %bb.bi

bb.bi:                                            ; preds = %bytestream2_get_byte.exit532.i
  %i.zo = load i32, ptr %.sroa.0575.15.i, align 1, !tbaa !33
  br label %bytestream2_get_le32.exit485.i

bytestream2_get_le32.exit485.i:                   ; preds = %bb.bi, %bytestream2_get_byte.exit532.i
  %.0.i484.i = phi i32 [ %i.zo, %bb.bi ], [ 0, %bytestream2_get_byte.exit532.i ]
  %i.zp = shl nuw nsw i32 %.0.i537.i, 4
  %i.zq = and i32 %.0.i537.i, 15
  %i.zr = or disjoint i32 %i.zp, %i.zq            ; 5 uses
  %i.zs = shl nuw nsw i32 %.0.i535.i, 4
  %i.zt = and i32 %.0.i535.i, 15
  %i.zu = or disjoint i32 %i.zs, %i.zt            ; 5 uses
  %i.zv = shl nuw nsw i32 %.0.i533.i, 4
  %i.zw = and i32 %.0.i533.i, 15
  %i.zx = shl nuw nsw i32 %.0.i531.i, 4
  %i.zy = and i32 %.0.i531.i, 15
  %i.zz = sub nsw i32 %i.zw, %i.zr
  %i.aaa = add nsw i32 %i.zz, %i.zv               ; 4 uses
  %i.aab = sub nsw i32 %i.zy, %i.zu
  %i.aac = add nsw i32 %i.aab, %i.zx              ; 4 uses
  br label %.preheader731.i

.preheader731.i:                                  ; preds = %.preheader731.i, %bytestream2_get_le32.exit485.i
  %indvars.iv942.i = phi i64 [ 0, %bytestream2_get_le32.exit485.i ], [ %indvars.iv.next943.i, %.preheader731.i ] ; 7 uses
  %.0412825.i = phi i32 [ %.0.i484.i, %bytestream2_get_le32.exit485.i ], [ %i.adp, %.preheader731.i ] ; 5 uses
  %i.aad = or disjoint i64 %indvars.iv942.i, 3    ; 2 uses
  %i.aae = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.aad ; 4 uses
  %i.aaf = or disjoint i64 %indvars.iv942.i, 2    ; 2 uses
  %i.aag = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.aaf ; 4 uses
  %i.aah = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.aaf ; 4 uses
  %i.aai = or disjoint i64 %indvars.iv942.i, 1    ; 2 uses
  %i.aaj = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.aai ; 4 uses
  %i.aak = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.aai ; 4 uses
  %i.aal = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv942.i ; 4 uses
  %i.aam = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv942.i ; 4 uses
  %i.aan = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.aad ; 4 uses
  %i.aao = and i32 %.0412825.i, 3                 ; 2 uses
  %i.aap = mul nsw i32 %i.aao, %i.aaa
  %i.aaq = add nsw i32 %i.aap, 2
  %i.aar = sdiv i32 %i.aaq, 3
  %i.aas = add nsw i32 %i.aar, %i.zr
  %i.aat = mul nsw i32 %i.aao, %i.aac
  %i.aau = add nsw i32 %i.aat, 2
  %i.aav = sdiv i32 %i.aau, 3
  %i.aaw = add nsw i32 %i.aav, %i.zu
  %i.aax = insertelement <4 x i32> poison, i32 %i.aas, i64 0
  %i.aay = shufflevector <4 x i32> %i.aax, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i32> %i.aay, ptr %i.aam, align 16, !tbaa !28
  %i.aaz = insertelement <4 x i32> poison, i32 %i.aaw, i64 0
  %i.aba = shufflevector <4 x i32> %i.aaz, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i32> %i.aba, ptr %i.aal, align 16, !tbaa !28
  store <4 x i32> %i.aay, ptr %i.aak, align 16, !tbaa !28
  store <4 x i32> %i.aba, ptr %i.aaj, align 16, !tbaa !28
  store <4 x i32> %i.aay, ptr %i.aah, align 16, !tbaa !28
  store <4 x i32> %i.aba, ptr %i.aag, align 16, !tbaa !28
  store <4 x i32> %i.aay, ptr %i.aan, align 16, !tbaa !28
  store <4 x i32> %i.aba, ptr %i.aae, align 16, !tbaa !28
end_hunk_0
