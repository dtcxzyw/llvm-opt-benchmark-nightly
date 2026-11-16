Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9recon?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@ff_vp9_intra_recon_8bpp:bb.a
  br i1 %cmp.n387, label %check_intra_mode.exit42.us.us, label %vec.epilog.iter.check389

vec.epilog.iter.check389:                         ; preds = %middle.block386
  %min.epilog.iters.check391 = icmp eq i64 %i.wt, 0
  br i1 %min.epilog.iters.check391, label %.lr.ph123.us.us.preheader, label %vec.epilog.vector.body395.preheader, !prof !144

vec.epilog.vector.body395.preheader:              ; preds = %vector.main.loop.iter.check377, %vec.epilog.iter.check389
  %index396.ph = phi i64 [ 0, %vector.main.loop.iter.check377 ], [ %n.vec380, %vec.epilog.iter.check389 ]
  br label %vec.epilog.vector.body395

.lr.ph123.us.us.preheader:                        ; preds = %iter.check388, %vec.epilog.iter.check389
  %indvars.iv187.ph = phi i64 [ %n.vec380, %vec.epilog.iter.check389 ], [ 0, %iter.check388 ]
  br label %.lr.ph123.us.us

vec.epilog.vector.body395:                        ; preds = %vec.epilog.vector.body395.preheader, %vec.epilog.vector.body395
  %index396 = phi i64 [ %index.next398, %vec.epilog.vector.body395 ], [ %index396.ph, %vec.epilog.vector.body395.preheader ] ; 3 uses
  %i.xa = getelementptr inbounds i8, ptr %i.su, i64 %index396
  %i.xb = getelementptr inbounds i8, ptr %i.xa, i64 -1
  %wide.load397 = load <4 x i8>, ptr %i.xb, align 1, !tbaa !40
  %i.xc = getelementptr inbounds nuw i8, ptr %i.b, i64 %index396
  store <4 x i8> %wide.load397, ptr %i.xc, align 4, !tbaa !40
  %index.next398 = add nuw i64 %index396, 4       ; 2 uses
  %i.xd = icmp eq i64 %index.next398, %wide.trip.count190
  br i1 %i.xd, label %check_intra_mode.exit42.us.us, label %vec.epilog.vector.body395, !llvm.loop !139

.lr.ph123.us.us:                                  ; preds = %.lr.ph123.us.us, %.lr.ph123.us.us.preheader
  %indvars.iv187 = phi i64 [ %indvars.iv187.ph, %.lr.ph123.us.us.preheader ], [ %indvars.iv.next188.3, %.lr.ph123.us.us ] ; 6 uses
  %i.xe = mul nsw i64 %i.sw, %indvars.iv187
  %i.xf = getelementptr inbounds i8, ptr %i.su, i64 %i.xe
  %i.xg = getelementptr inbounds i8, ptr %i.xf, i64 -1
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !40
  %i.xi = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv187
  store i8 %i.xh, ptr %i.xi, align 4, !tbaa !40
  %indvars.iv.next188 = or disjoint i64 %indvars.iv187, 1 ; 2 uses
  %i.xj = mul nsw i64 %i.sw, %indvars.iv.next188
  %i.xk = getelementptr inbounds i8, ptr %i.su, i64 %i.xj
  %i.xl = getelementptr inbounds i8, ptr %i.xk, i64 -1
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !40
  %i.xn = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next188
  store i8 %i.xm, ptr %i.xn, align 1, !tbaa !40
  %indvars.iv.next188.1 = or disjoint i64 %indvars.iv187, 2 ; 2 uses
  %i.xo = mul nsw i64 %i.sw, %indvars.iv.next188.1
  %i.xp = getelementptr inbounds i8, ptr %i.su, i64 %i.xo
  %i.xq = getelementptr inbounds i8, ptr %i.xp, i64 -1
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !40
  %i.xs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next188.1
  store i8 %i.xr, ptr %i.xs, align 2, !tbaa !40
  %indvars.iv.next188.2 = or disjoint i64 %indvars.iv187, 3 ; 2 uses
  %i.xt = mul nsw i64 %i.sw, %indvars.iv.next188.2
  %i.xu = getelementptr inbounds i8, ptr %i.su, i64 %i.xt
  %i.xv = getelementptr inbounds i8, ptr %i.xu, i64 -1
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !40
  %i.xx = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next188.2
  store i8 %i.xw, ptr %i.xx, align 1, !tbaa !40
  %indvars.iv.next188.3 = add nuw nsw i64 %indvars.iv187, 4 ; 2 uses
  %exitcond191.not.3 = icmp eq i64 %indvars.iv.next188.3, %wide.trip.count190
  br i1 %exitcond191.not.3, label %check_intra_mode.exit42.us.us, label %.lr.ph123.us.us, !llvm.loop !140

.preheader.us.us:                                 ; preds = %bb.bi
  %i.xy = icmp sgt i32 %i.ss, 0
  br i1 %i.xy, label %iter.check357, label %.preheader.us.us.._crit_edge126.us.us_crit_edge

.preheader.us.us.._crit_edge126.us.us_crit_edge:  ; preds = %.preheader.us.us
  %.pre209 = sext i32 %i.ss to i64
  br label %._crit_edge126.us.us

iter.check357:                                    ; preds = %.preheader.us.us
  %i.xz = zext nneg i32 %i.ss to i64              ; 8 uses
  %ident.check344.not = icmp ne i64 %i.sw, 1
  %i.ya = sub i64 %i.sv, %i.of
  %diff.check = icmp ugt i64 %i.ya, -32
  %or.cond484 = select i1 %ident.check344.not, i1 true, i1 %diff.check
  br i1 %or.cond484, label %.lr.ph125.us.us.preheader, label %vector.main.loop.iter.check346

vector.main.loop.iter.check346:                   ; preds = %iter.check357
  %min.iters.check347 = icmp ult i32 %i.ss, 32
  br i1 %min.iters.check347, label %vec.epilog.vector.body364.preheader, label %vector.ph348

vector.ph348:                                     ; preds = %vector.main.loop.iter.check346
  %i.yb = and i64 %i.xz, 28
  %n.vec349 = and i64 %i.xz, 2147483616           ; 4 uses
  br label %vector.body350

vector.body350:                                   ; preds = %vector.ph348, %vector.body350
  %index351 = phi i64 [ 0, %vector.ph348 ], [ %index.next354, %vector.body350 ] ; 3 uses
  %i.yc = getelementptr inbounds i8, ptr %i.su, i64 %index351 ; 2 uses
  %i.yd = getelementptr inbounds i8, ptr %i.yc, i64 -1
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 15
  %wide.load352 = load <16 x i8>, ptr %i.yd, align 1, !tbaa !40
  %wide.load353 = load <16 x i8>, ptr %i.ye, align 1, !tbaa !40
  %i.yf = getelementptr inbounds nuw i8, ptr %i.b, i64 %index351 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  store <16 x i8> %wide.load352, ptr %i.yf, align 16, !tbaa !40
  store <16 x i8> %wide.load353, ptr %i.yg, align 16, !tbaa !40
  %index.next354 = add nuw i64 %index351, 32      ; 2 uses
  %i.yh = icmp eq i64 %index.next354, %n.vec349
  br i1 %i.yh, label %middle.block355, label %vector.body350, !llvm.loop !141

middle.block355:                                  ; preds = %vector.body350
  %cmp.n356 = icmp eq i64 %n.vec349, %i.xz
  br i1 %cmp.n356, label %._crit_edge126.us.us, label %vec.epilog.iter.check358

vec.epilog.iter.check358:                         ; preds = %middle.block355
  %min.epilog.iters.check360 = icmp eq i64 %i.yb, 0
  br i1 %min.epilog.iters.check360, label %.lr.ph125.us.us.preheader, label %vec.epilog.vector.body364.preheader, !prof !144

vec.epilog.vector.body364.preheader:              ; preds = %vector.main.loop.iter.check346, %vec.epilog.iter.check358
  %index365.ph = phi i64 [ 0, %vector.main.loop.iter.check346 ], [ %n.vec349, %vec.epilog.iter.check358 ]
  br label %vec.epilog.vector.body364

.lr.ph125.us.us.preheader:                        ; preds = %iter.check357, %vec.epilog.iter.check358
  %indvars.iv192.ph = phi i64 [ %n.vec349, %vec.epilog.iter.check358 ], [ 0, %iter.check357 ]
  br label %.lr.ph125.us.us

vec.epilog.vector.body364:                        ; preds = %vec.epilog.vector.body364.preheader, %vec.epilog.vector.body364
  %index365 = phi i64 [ %index.next367, %vec.epilog.vector.body364 ], [ %index365.ph, %vec.epilog.vector.body364.preheader ] ; 3 uses
  %i.yi = getelementptr inbounds i8, ptr %i.su, i64 %index365
  %i.yj = getelementptr inbounds i8, ptr %i.yi, i64 -1
  %wide.load366 = load <4 x i8>, ptr %i.yj, align 1, !tbaa !40
  %i.yk = getelementptr inbounds nuw i8, ptr %i.b, i64 %index365
  store <4 x i8> %wide.load366, ptr %i.yk, align 4, !tbaa !40
  %index.next367 = add nuw i64 %index365, 4       ; 2 uses
  %i.yl = icmp eq i64 %index.next367, %i.xz
  br i1 %i.yl, label %._crit_edge126.us.us, label %vec.epilog.vector.body364, !llvm.loop !142

.lr.ph125.us.us:                                  ; preds = %.lr.ph125.us.us.preheader, %.lr.ph125.us.us
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %.lr.ph125.us.us ], [ %indvars.iv192.ph, %.lr.ph125.us.us.preheader ] ; 3 uses
  %i.ym = mul nsw i64 %i.sw, %indvars.iv192
  %i.yn = getelementptr inbounds i8, ptr %i.su, i64 %i.ym
  %i.yo = getelementptr inbounds i8, ptr %i.yn, i64 -1
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !40
  %i.yq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv192
  store i8 %i.yp, ptr %i.yq, align 1, !tbaa !40
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %i.yr = icmp samesign ult i64 %indvars.iv.next193, %i.xz
  br i1 %i.yr, label %.lr.ph125.us.us, label %._crit_edge126.us.us, !llvm.loop !143

._crit_edge126.us.us:                             ; preds = %vec.epilog.vector.body364, %.lr.ph125.us.us, %middle.block355, %.preheader.us.us.._crit_edge126.us.us_crit_edge
  %.pre-phi210 = phi i64 [ %.pre209, %.preheader.us.us.._crit_edge126.us.us_crit_edge ], [ %i.xz, %middle.block355 ], [ %i.xz, %.lr.ph125.us.us ], [ %i.xz, %vec.epilog.vector.body364 ]
  %i.ys = getelementptr i8, ptr %i.b, i64 %.pre-phi210 ; 2 uses
  %i.yt = getelementptr i8, ptr %i.ys, i64 -1
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !40
  %i.yv = sub nsw i32 %i.sl, %i.ss
  %i.yw = sext i32 %i.yv to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ys, i8 %i.yu, i64 %i.yw, i1 false)
  br label %check_intra_mode.exit42.us.us

check_intra_mode.exit42.us.us:                    ; preds = %.lr.ph.us143.us, %vec.epilog.vector.body395, %.lr.ph123.us.us, %middle.block464, %vec.epilog.middle.block478, %middle.block386, %.preheader83.us.us, %.preheader85.us.us, %._crit_edge126.us.us, %._crit_edge.us144.us, %bb.bf, %bb.bd
  %i.yx = zext i32 %.pre203 to i64
  %i.yy = getelementptr inbounds nuw [120 x i8], ptr %i.nv, i64 %i.yx
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %i.qc
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !85
  call void %i.za(ptr noundef %.0175.i131.us.us, i64 noundef %i.pj, ptr noundef nonnull %i.b, ptr noundef %.0.us.us) #5, !inline_history !0
  %.not195.i.us.us = icmp eq i32 %i.pe, 0
  br i1 %.not195.i.us.us, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %check_intra_mode.exit42.us.us
  %i.zb = load ptr, ptr %i.ny, align 8, !tbaa !85
  %i.zc = load i64, ptr %i.no, align 8, !tbaa !91
  %i.zd = load ptr, ptr %i.oo, align 8, !tbaa !92
  %.idx236 = shl nsw i64 %indvars.iv195, 5
  %i.ze = getelementptr inbounds i8, ptr %i.zd, i64 %.idx236
  call void %i.zb(ptr noundef %.0175.i131.us.us, i64 noundef %i.zc, ptr noundef %i.ze, i32 noundef %i.pe) #5, !inline_history !0
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %check_intra_mode.exit42.us.us
  %i.zf = add nsw i32 %.1185.i128.us.us, %i.aq    ; 2 uses
  %i.zg = getelementptr inbounds i8, ptr %.0175.i131.us.us, i64 %i.ob
  %i.zh = getelementptr inbounds i8, ptr %.0.i134.us.us, i64 %i.ob
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, %i.oe ; 2 uses
  %i.zi = icmp slt i32 %i.zf, %i.nf
  br i1 %i.zi, label %bb.ag, label %._crit_edge138.us.us, !llvm.loop !3

._crit_edge138.us.us:                             ; preds = %bb.bk
  %i.zj = load ptr, ptr %i.at, align 8, !tbaa !76 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 68
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !77
  %i.zm = mul nsw i32 %i.zl, %i.oa
  %i.zn = sext i32 %i.zm to i64
  %i.zo = getelementptr inbounds i8, ptr %.1.i142.us.us, i64 %i.zn
  %i.zp = load i64, ptr %i.no, align 8, !tbaa !91
  %i.zq = mul nsw i64 %i.zp, %i.ob
  %i.zr = getelementptr inbounds i8, ptr %.1180.i141.us.us, i64 %i.zq
  %i.zs = add nsw i32 %.1183.i140.us.us, %i.aq    ; 2 uses
  %i.zt = icmp slt i32 %i.zs, %i.nj
  br i1 %i.zt, label %.preheader87.us.us, label %..loopexit_crit_edge.split.us.us, !llvm.loop !4

..loopexit_crit_edge.split.us.us:                 ; preds = %._crit_edge138.us.us
  br i1 %i.oh, label %.preheader87.lr.ph.us, label %intra_recon.exit.split, !llvm.loop !5

intra_recon.exit.split:                           ; preds = %..loopexit_crit_edge.split.us.us, %._crit_edge118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_vp9_intra_recon_16bpp(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 12 uses
  %i.b = alloca [64 x i8], align 16               ; 57 uses
  %i.c = load ptr, ptr %0, align 16, !tbaa !34    ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !36   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 16, !tbaa !37  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !39
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_vp9_bwh_tab, i64 26), i64 %i.l ; 2 uses
  %i.n = load i8, ptr %i.m, align 2, !tbaa !40
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 1                  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !41   ; 5 uses
  %i.s = shl nuw i32 1, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !40
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 1
  %i.x = shl i32 %i.r, 1
  %i.y = shl nuw i32 1, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 3964
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !66
  %i.ab = sub i32 %i.aa, %i.i
  %i.ac = shl i32 %i.ab, 1
  %..i = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.p) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !67
  %i.af = sub i32 %i.ae, %i.g
  %i.ag = shl i32 %i.af, 1
  %i.ah = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 %i.w) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !68
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 2                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !69 ; 6 uses
  %i.ao = add i32 %i.al, %i.an
  %i.ap = shl nuw i32 1, %i.an                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !70
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 448 ; 5 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !76 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %.._crit_edge156_crit_edge, label %.preheader118.lr.ph

.._crit_edge156_crit_edge:                        ; preds = %bb.a
  %.pre = and i32 %i.g, 7
  br label %._crit_edge156

.preheader118.lr.ph:                              ; preds = %bb.a
  %i.av = add i32 %i.al, %i.r
  %.not200 = icmp eq i32 %..i, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 13 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 10 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 77112 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bb = icmp sgt i32 %i.g, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bd = and i32 %i.g, 7                         ; 3 uses
  %i.be = shl i32 %i.i, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 1376
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 1856
  %i.bk = sext i32 %i.av to i64
  %i.bl = getelementptr inbounds [32 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 77048
  %i.bn = shl i32 8, %i.r
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = shl i32 4, %i.r                         ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  br i1 %.not200, label %._crit_edge156, label %.preheader118.us.preheader

.preheader118.us.preheader:                       ; preds = %.preheader118.lr.ph
  %i.br = add nsw i32 %i.p, -1
  %i.bs = getelementptr inbounds i8, ptr %i.au, i64 %1
  %i.bt = sext i32 %i.s to i64                    ; 2 uses
  %i.bu = sext i32 %i.br to i64
  %i.bv = zext nneg i32 %..i to i64
  %i.bw = zext nneg i32 %i.y to i64
  %i.bx = zext nneg i32 %i.ah to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %.preheader118.us

.preheader118.us:                                 ; preds = %.preheader118.us.preheader, %._crit_edge151.us
  %indvars.iv258 = phi i64 [ 0, %.preheader118.us.preheader ], [ %indvars.iv.next259, %._crit_edge151.us ] ; 5 uses
  %.0178.i155.us = phi ptr [ %i.bs, %.preheader118.us.preheader ], [ %i.sj, %._crit_edge151.us ] ; 2 uses
  %.0179.i154.us = phi ptr [ %i.ar, %.preheader118.us.preheader ], [ %i.sm, %._crit_edge151.us ] ; 2 uses
  %.0186.i152.us = phi i64 [ 0, %.preheader118.us.preheader ], [ %indvars.iv.next254, %._crit_edge151.us ]
  %i.bz = shl nsw i64 %indvars.iv258, 1
  %i.ca = icmp sgt i64 %indvars.iv258, 0
  %i.cb = or i1 %i.bb, %i.ca                      ; 5 uses
  %i.cc = zext i1 %i.cb to i64
  %i.cd = trunc nsw i64 %indvars.iv258 to i32     ; 2 uses
  %i.ce = or i32 %i.bd, %i.cd
  %or.cond3.not.i.us = icmp eq i32 %i.ce, 0
  %i.cf = icmp eq i64 %indvars.iv258, 0           ; 2 uses
  %i.cg = select i1 %i.cb, i32 1, i32 65535
  %invariant.gep = getelementptr i8, ptr %i.aw, i64 %i.bz
  br label %bb.b

bb.b:                                             ; preds = %.preheader118.us, %bb.ab
  %indvars.iv253 = phi i64 [ %.0186.i152.us, %.preheader118.us ], [ %indvars.iv.next254, %bb.ab ] ; 4 uses
  %indvars.iv251 = phi i64 [ 0, %.preheader118.us ], [ %indvars.iv.next252, %bb.ab ] ; 7 uses
  %.0176.i147.us = phi ptr [ %.0178.i155.us, %.preheader118.us ], [ %i.le, %bb.ab ] ; 3 uses
  %.0177.i144.us = phi ptr [ %.0179.i154.us, %.preheader118.us ], [ %i.ld, %bb.ab ] ; 5 uses
  %i.ch = load i32, ptr %i.j, align 4, !tbaa !39
  %i.ci = icmp ugt i32 %i.ch, 9
  %.pre.pre = load i32, ptr %i.q, align 4, !tbaa !41 ; 8 uses
  %i.cj = icmp eq i32 %.pre.pre, 0
  %or.cond = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ck = load i8, ptr %i.aw, align 1, !tbaa !40
  %i.cl = zext i8 %i.ck to i64                    ; 4 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !77 ; 3 uses
  %i.co = load i8, ptr %i.ay, align 2, !tbaa !78
  %.not196.i.us = icmp eq i8 %i.co, 0
  br i1 %.not196.i.us, label %bb.d, label %bb.f

.thread:                                          ; preds = %bb.b
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv251
  %i.cp = load i8, ptr %gep, align 1, !tbaa !40
  %i.cq = zext i8 %i.cp to i64                    ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !77 ; 2 uses
  %i.ct = load i8, ptr %i.ay, align 2, !tbaa !78
  %.not196.i.us339 = icmp eq i8 %i.ct, 0
  br i1 %.not196.i.us339, label %.thread340, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cu = icmp ugt i32 %.pre.pre, 1
  br i1 %i.cu, label %bb.e, label %.thread340

.thread340:                                       ; preds = %.thread, %bb.d
  %i.cv = phi i64 [ %i.cl, %bb.d ], [ %i.cq, %.thread ]
  %i.cw = phi i32 [ %i.cn, %bb.d ], [ %i.cs, %.thread ]
  %i.cx = load ptr, ptr %i.az, align 8, !tbaa !79
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %indvars.iv253
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !40
  %i.da = zext i8 %i.cz to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.db = load ptr, ptr %i.az, align 8, !tbaa !79
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %indvars.iv253
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !40
  %i.de = zext i16 %i.dd to i32
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %.thread340, %bb.c
  %i.df = phi i32 [ %i.cn, %bb.c ], [ %i.cn, %bb.e ], [ %i.cw, %.thread340 ], [ %i.cs, %.thread ]
  %i.dg = phi i64 [ %i.cl, %bb.c ], [ %i.cl, %bb.e ], [ %i.cv, %.thread340 ], [ %i.cq, %.thread ]
  %i.dh = phi i32 [ 0, %bb.c ], [ %i.de, %bb.e ], [ %i.da, %.thread340 ], [ 0, %.thread ] ; 2 uses
  %i.di = load ptr, ptr %i.as, align 8, !tbaa !76
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !77
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = load i64, ptr %i.ba, align 16, !tbaa !80 ; 3 uses
  %i.dn = load ptr, ptr %0, align 16, !tbaa !34   ; 4 uses
  %i.do = load i32, ptr %i.bc, align 16, !tbaa !81
  %i.dp = icmp ugt i32 %i.i, %i.do
  %i.dq = icmp sgt i64 %indvars.iv251, 0
  %i.dr = or i1 %i.dq, %i.dp                      ; 5 uses
  %i.ds = icmp slt i64 %indvars.iv251, %i.bu      ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !82
  %i.dv = zext i8 %i.du to i32                    ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @check_intra_mode.mode_conv, i64 %i.dg
  %i.dx = zext i1 %i.dr to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.cc
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !40  ; 3 uses
  %i.eb = zext i8 %i.ea to i64                    ; 2 uses
  %i.ec = shl nuw i64 1, %i.eb                    ; 4 uses
  %i.ed = and i64 %i.ec, 29954
  %.not.not.i.us = icmp eq i64 %i.ed, 0
  br i1 %.not.not.i.us, label %bb.g, label %.loopexit115.us

bb.g:                                             ; preds = %bb.f
  %i.ee = shl i32 4, %.pre.pre                    ; 8 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 3964
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !66
  %i.eh = sub i32 %i.eg, %i.i
  %i.ei = shl i32 %i.eh, 1
  %i.ej = trunc nsw i64 %indvars.iv251 to i32     ; 2 uses
  %i.ek = sub i32 %i.ei, %i.ej                    ; 2 uses
  %i.el = shl i32 %i.ek, 2                        ; 6 uses
  %i.em = icmp eq i32 %.pre.pre, 0                ; 2 uses
  %i.en = and i8 %i.ea, -5
  %i.eo = icmp eq i8 %i.en, 3                     ; 3 uses
  %or.cond.i.us = select i1 %i.eo, i1 %i.ds, i1 false
  %spec.select.i.us = select i1 %or.cond.i.us, i32 4, i32 0 ; 2 uses
  br i1 %i.cb, label %bb.h, label %.critedge.i.preheader.us

.critedge.i.us:                                   ; preds = %vec.epilog.iter.check516, %.critedge.i.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge.i.us ], [ %n.vec507, %vec.epilog.iter.check516 ] ; 2 uses
  %i.ep = shl nuw nsw i64 %indvars.iv, 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ep
  store i16 %i.rj, ptr %i.eq, align 2, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit116.us, label %.critedge.i.us, !llvm.loop !150

bb.h:                                             ; preds = %bb.g
  br i1 %or.cond3.not.i.us, label %.thread.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.er = sub nsw i64 0, %i.dm
  %i.es = getelementptr inbounds i8, ptr %.0177.i144.us, i64 %i.er ; 2 uses
  %i.et = sub nsw i64 0, %i.dl
  %i.eu = getelementptr inbounds i8, ptr %.0176.i147.us, i64 %i.et ; 2 uses
  %i.ev = select i1 %i.cf, ptr %i.eu, ptr %i.es   ; 2 uses
  br i1 %i.dr, label %bb.j, label %.thread72.us

bb.j:                                             ; preds = %bb.i
  %i.ew = icmp eq i64 %indvars.iv251, 0
  %or.cond7.i.us = or i1 %i.cf, %i.ew
  %spec.select = select i1 %or.cond7.i.us, ptr %i.eu, ptr %i.es
  br label %.thread72.us

.thread.us:                                       ; preds = %bb.h
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dn, i64 19136
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !70
  %i.ez = shl i32 %i.ej, 3
  %i.fa = add i32 %i.ez, %i.be
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ey, i64 %i.fb ; 2 uses
  br label %.thread72.us

.thread72.us:                                     ; preds = %bb.j, %.thread.us, %bb.i
  %.0280.i.ph.us = phi ptr [ %i.fc, %.thread.us ], [ %i.ev, %bb.j ], [ %i.ev, %bb.i ] ; 10 uses
  %.0279.i.ph.us = phi ptr [ %i.fc, %.thread.us ], [ %spec.select, %bb.j ], [ undef, %bb.i ] ; 6 uses
  %i.fd = and i64 %i.ec, 2189
  %.not289.not.i.us = icmp ne i64 %i.fd, 0
  %i.fe = icmp eq ptr %.0280.i.ph.us, %.0279.i.ph.us
  %or.cond301.i.us = select i1 %i.dr, i1 %i.fe, i1 false
  %or.cond308.i.us = select i1 %.not289.not.i.us, i1 true, i1 %or.cond301.i.us
  br i1 %or.cond308.i.us, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.thread72.us
  br i1 %i.em, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not291.old.i.us = icmp sgt i32 %i.ee, %i.el
  br i1 %.not291.old.i.us, label %bb.n, label %.loopexit115.us

bb.m:                                             ; preds = %bb.k
  %.not306 = xor i1 %i.eo, true
  %or.cond9.i.us = select i1 %.not306, i1 true, i1 %i.ds
  %i.ff = add nuw nsw i32 %spec.select.i.us, %i.ee
  %.not291.i.us = icmp sle i32 %i.ff, %i.el
  %or.cond302.i.not.us = select i1 %or.cond9.i.us, i1 %.not291.i.us, i1 false
  br i1 %or.cond302.i.not.us, label %.loopexit115.us, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.thread72.us
  %.not292.i.us = icmp sgt i32 %i.ee, %i.el
  br i1 %.not292.i.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fg = shl i32 8, %.pre.pre
  %i.fh = sext i32 %i.fg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ax, ptr align 1 %.0280.i.ph.us, i64 %i.fh, i1 false)
  br label %.loopexit116.us

bb.p:                                             ; preds = %bb.n
  %i.fi = shl i32 %i.ek, 3                        ; 2 uses
  %i.fj = sext i32 %i.fi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ax, ptr align 1 %.0280.i.ph.us, i64 %i.fj, i1 false)
  %i.fk = add i32 %i.fi, -2
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.ax, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !40 ; 3 uses
  %i.fo = sub nsw i32 %i.ee, %i.el                ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %iter.check488, label %.loopexit116.us

iter.check488:                                    ; preds = %bb.p
  %i.fq = sext i32 %i.el to i64                   ; 3 uses
  %i.fr = zext nneg i32 %i.fo to i64              ; 5 uses
  %min.iters.check478 = icmp ult i32 %i.fo, 16
  br i1 %min.iters.check478, label %vec.epilog.ph492, label %vector.ph479

vector.ph479:                                     ; preds = %iter.check488
  %i.fs = and i64 %i.fr, 12
  %n.vec480 = and i64 %i.fr, 2147483632           ; 4 uses
  %broadcast.splatinsert481 = insertelement <8 x i16> poison, i16 %i.fn, i64 0
  %broadcast.splat482 = shufflevector <8 x i16> %broadcast.splatinsert481, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body483

vector.body483:                                   ; preds = %vector.ph479, %vector.body483
  %index484 = phi i64 [ 0, %vector.ph479 ], [ %index.next485, %vector.body483 ] ; 2 uses
  %i.ft = add nsw i64 %index484, %i.fq
  %i.fu = shl nsw i64 %i.ft, 1
  %i.fv = getelementptr inbounds i8, ptr %i.ax, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <8 x i16> %broadcast.splat482, ptr %i.fv, align 8, !tbaa !40
  store <8 x i16> %broadcast.splat482, ptr %i.fw, align 8, !tbaa !40
  %index.next485 = add nuw i64 %index484, 16      ; 2 uses
  %i.fx = icmp eq i64 %index.next485, %n.vec480
  br i1 %i.fx, label %middle.block486, label %vector.body483, !llvm.loop !151

middle.block486:                                  ; preds = %vector.body483
  %cmp.n487 = icmp eq i64 %n.vec480, %i.fr
  br i1 %cmp.n487, label %.loopexit116.us, label %vec.epilog.iter.check489

vec.epilog.iter.check489:                         ; preds = %middle.block486
  %min.epilog.iters.check491 = icmp eq i64 %i.fs, 0
  br i1 %min.epilog.iters.check491, label %.lr.ph121.us, label %vec.epilog.ph492, !prof !208

vec.epilog.ph492:                                 ; preds = %iter.check488, %vec.epilog.iter.check489
  %vec.epilog.resume.val493 = phi i64 [ %n.vec480, %vec.epilog.iter.check489 ], [ 0, %iter.check488 ]
  %broadcast.splatinsert495 = insertelement <4 x i16> poison, i16 %i.fn, i64 0
  %broadcast.splat496 = shufflevector <4 x i16> %broadcast.splatinsert495, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph492
  %index498 = phi i64 [ %vec.epilog.resume.val493, %vec.epilog.ph492 ], [ %index.next499, %vec.epilog.vector.body497 ] ; 2 uses
  %i.fy = add nsw i64 %index498, %i.fq
  %i.fz = shl nsw i64 %i.fy, 1
  %i.ga = getelementptr inbounds i8, ptr %i.ax, i64 %i.fz
  store <4 x i16> %broadcast.splat496, ptr %i.ga, align 8, !tbaa !40
  %index.next499 = add nuw i64 %index498, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next499, %i.fr
  br i1 %i.gb, label %.loopexit116.us, label %vec.epilog.vector.body497, !llvm.loop !152

.lr.ph121.us:                                     ; preds = %vec.epilog.iter.check489, %.lr.ph121.us
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %.lr.ph121.us ], [ %n.vec480, %vec.epilog.iter.check489 ] ; 2 uses
  %i.gc = add nsw i64 %indvars.iv217, %i.fq
  %i.gd = shl nsw i64 %i.gc, 1
  %i.ge = getelementptr inbounds i8, ptr %i.ax, i64 %i.gd
  store i16 %i.fn, ptr %i.ge, align 2, !tbaa !40
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.gf = icmp samesign ult i64 %indvars.iv.next218, %i.fr
  br i1 %i.gf, label %.lr.ph121.us, label %.loopexit116.us, !llvm.loop !153

.loopexit116.us:                                  ; preds = %.critedge.i.us, %vec.epilog.vector.body524, %.lr.ph121.us, %vec.epilog.vector.body497, %middle.block513, %middle.block486, %.critedge.i.preheader.us, %bb.p, %bb.o
  %.0279.i79.us = phi ptr [ %.0279.i.ph.us, %bb.p ], [ %.0279.i.ph.us, %bb.o ], [ %.0279.i.ph.us, %middle.block486 ], [ undef, %.critedge.i.preheader.us ], [ undef, %vec.epilog.vector.body524 ], [ %.0279.i.ph.us, %vec.epilog.vector.body497 ], [ %.0279.i.ph.us, %.lr.ph121.us ], [ undef, %middle.block513 ], [ undef, %.critedge.i.us ]
  %.0280.i76.us = phi ptr [ %.0280.i.ph.us, %bb.p ], [ %.0280.i.ph.us, %bb.o ], [ %.0280.i.ph.us, %middle.block486 ], [ undef, %.critedge.i.preheader.us ], [ undef, %vec.epilog.vector.body524 ], [ %.0280.i.ph.us, %vec.epilog.vector.body497 ], [ %.0280.i.ph.us, %.lr.ph121.us ], [ undef, %middle.block513 ], [ undef, %.critedge.i.us ]
  %i.gg = and i64 %i.ec, 2189
  %.not293.not.i.us = icmp eq i64 %i.gg, 0
  br i1 %.not293.not.i.us, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.loopexit116.us
  %or.cond11.i.us = and i1 %i.cb, %i.dr
  br i1 %or.cond11.i.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gh = add nsw i32 %i.dv, -8
  %i.gi = shl i32 128, %i.gh
  %i.gj = add nuw i32 %i.gi, %i.cg
  %i.gk = trunc i32 %i.gj to i16
  br label %.sink.split

bb.s:                                             ; preds = %bb.q
  %i.gl = getelementptr inbounds i8, ptr %.0279.i79.us, i64 -2
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !40
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.s
  %.sink = phi i16 [ %i.gm, %bb.s ], [ %i.gk, %bb.r ]
  store i16 %.sink, ptr %i.bf, align 2, !tbaa !40
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %.loopexit116.us
  %or.cond304.i.us = and i1 %i.em, %i.eo
  br i1 %or.cond304.i.us, label %bb.u, label %.loopexit115.us

bb.u:                                             ; preds = %bb.t
  %or.cond13.i.us = select i1 %i.cb, i1 %i.ds, i1 false
  %i.gn = add nuw nsw i32 %spec.select.i.us, %i.ee
  %.not295.i.us = icmp sle i32 %i.gn, %i.el
  %or.cond306.i.not.us = select i1 %or.cond13.i.us, i1 %.not295.i.us, i1 false
  br i1 %or.cond306.i.not.us, label %bb.v, label %.loopexit115.us.loopexit

.loopexit115.us.loopexit:                         ; preds = %bb.u
  %i.go = load <1 x i16>, ptr %i.bg, align 2
  %i.gp = shufflevector <1 x i16> %i.go, <1 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.gp, ptr %i.by, align 8, !tbaa !40
  br label %.loopexit115.us

bb.v:                                             ; preds = %bb.u
  %i.gq = getelementptr inbounds nuw i8, ptr %.0280.i76.us, i64 8
  %i.gr = load i64, ptr %i.gq, align 1
  store i64 %i.gr, ptr %i.bh, align 8
  br label %.loopexit115.us

.loopexit115.us:                                  ; preds = %.loopexit115.us.loopexit, %bb.v, %bb.t, %bb.m, %bb.l, %bb.f
  %.071.us = phi ptr [ %.0280.i.ph.us, %bb.m ], [ %i.ax, %bb.v ], [ %i.ax, %bb.t ], [ %i.ax, %bb.f ], [ %.0280.i.ph.us, %bb.l ], [ %i.ax, %.loopexit115.us.loopexit ]
  %i.gs = and i64 %i.ec, 30857
  %.not296.not.i.us = icmp eq i64 %i.gs, 0
  br i1 %.not296.not.i.us, label %bb.w, label %check_intra_mode.exit.us

bb.w:                                             ; preds = %.loopexit115.us
  %i.gt = shl i32 4, %.pre.pre                    ; 15 uses
  br i1 %i.dr, label %bb.x, label %.preheader113.us

vec.epilog.scalar.ph463:                          ; preds = %vec.epilog.iter.check462, %vec.epilog.scalar.ph463
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %vec.epilog.scalar.ph463 ], [ %n.vec453, %vec.epilog.iter.check462 ] ; 2 uses
  %i.gu = shl nuw nsw i64 %indvars.iv224, 1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gu
  store i16 %i.rv, ptr %i.gv, align 2, !tbaa !40
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %check_intra_mode.exit.us, label %vec.epilog.scalar.ph463, !llvm.loop !154

bb.x:                                             ; preds = %bb.w
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dn, i64 3960
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !67
  %i.gy = sub i32 %i.gx, %i.g
  %i.gz = shl i32 %i.gy, 1
  %i.ha = sub i32 %i.gz, %i.cd                    ; 2 uses
  %i.hb = shl i32 %i.ha, 2                        ; 10 uses
  %i.hc = icmp eq i64 %indvars.iv251, 0           ; 2 uses
  %i.hd = select i1 %i.hc, ptr %.0176.i147.us, ptr %.0177.i144.us ; 40 uses
  %i.he = select i1 %i.hc, i64 %i.dl, i64 %i.dm   ; 12 uses
  %.not298.not.i.us = icmp eq i8 %i.ea, 8
  %.not300.i.us = icmp sgt i32 %i.gt, %i.hb       ; 2 uses
  br i1 %.not298.not.i.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not300.i.us, label %.preheader110.us, label %.preheader111.us

.lr.ph126.us:                                     ; preds = %.lr.ph126.us, %.lr.ph126.us.preheader789
  %indvars.iv229 = phi i64 [ %indvars.iv229.ph, %.lr.ph126.us.preheader789 ], [ %indvars.iv.next230.1, %.lr.ph126.us ] ; 5 uses
  %i.hf = mul nsw i64 %i.he, %indvars.iv229
  %i.hg = getelementptr inbounds i8, ptr %i.hd, i64 %i.hf
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -2
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !40
  %3 = xor i64 %indvars.iv229, -1
  %4 = add nsw i64 %13, %3
  %5 = shl nsw i64 %4, 1
  %i.hj = getelementptr inbounds i8, ptr %i.b, i64 %5
  store i16 %i.hi, ptr %i.hj, align 2, !tbaa !40
  %indvars.iv.next230 = or disjoint i64 %indvars.iv229, 1
  %i.hk = mul nsw i64 %i.he, %indvars.iv.next230
  %i.hl = getelementptr inbounds i8, ptr %i.hd, i64 %i.hk
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 -2
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !40
  %6 = xor i64 %indvars.iv229, -2
  %7 = add nsw i64 %6, %13
  %8 = shl nsw i64 %7, 1
  %i.ho = getelementptr inbounds i8, ptr %i.b, i64 %8
  store i16 %i.hn, ptr %i.ho, align 2, !tbaa !40
  %indvars.iv.next230.1 = add nuw nsw i64 %indvars.iv229, 2 ; 2 uses
  %exitcond233.not.1 = icmp eq i64 %indvars.iv.next230.1, %wide.trip.count232
  br i1 %exitcond233.not.1, label %check_intra_mode.exit.us, label %.lr.ph126.us, !llvm.loop !155

.lr.ph128.us:                                     ; preds = %.lr.ph128.us.preheader788, %.lr.ph128.us
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %.lr.ph128.us ], [ %indvars.iv234.ph, %.lr.ph128.us.preheader788 ] ; 3 uses
  %i.hp = mul nsw i64 %i.he, %indvars.iv234
  %i.hq = getelementptr inbounds i8, ptr %i.hd, i64 %i.hp
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -2
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !40
  %i.ht = trunc nuw nsw i64 %indvars.iv234 to i32
  %i.hu = xor i32 %i.ht, -1
  %i.hv = add i32 %i.gt, %i.hu
  %i.hw = shl nsw i32 %i.hv, 1
  %9 = sext i32 %i.hw to i64
  %i.hx = getelementptr inbounds i8, ptr %i.b, i64 %9
  store i16 %i.hs, ptr %i.hx, align 2, !tbaa !40
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %i.hy = icmp samesign ult i64 %indvars.iv.next235, %i.oa
  br i1 %i.hy, label %.lr.ph128.us, label %._crit_edge.us, !llvm.loop !156

._crit_edge.us:                                   ; preds = %.lr.ph128.us, %middle.block430, %.preheader110.us
  %i.hz = sub nsw i32 %i.gt, %i.hb                ; 4 uses
  %i.ia = shl nuw nsw i32 %i.hz, 1
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ib
  %i.id = load i16, ptr %i.ic, align 8, !tbaa !40 ; 3 uses
  %i.ie = icmp sgt i32 %i.hz, 0
  br i1 %i.ie, label %iter.check406, label %check_intra_mode.exit.us

iter.check406:                                    ; preds = %._crit_edge.us
  %i.if = zext nneg i32 %i.hz to i64              ; 5 uses
  %min.iters.check396 = icmp ult i32 %i.hz, 16
  br i1 %min.iters.check396, label %vec.epilog.ph410, label %vector.ph397

vector.ph397:                                     ; preds = %iter.check406
  %i.ig = and i64 %i.if, 12
  %n.vec398 = and i64 %i.if, 2147483632           ; 4 uses
  %broadcast.splatinsert399 = insertelement <8 x i16> poison, i16 %i.id, i64 0
  %broadcast.splat400 = shufflevector <8 x i16> %broadcast.splatinsert399, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body401

vector.body401:                                   ; preds = %vector.ph397, %vector.body401
  %index402 = phi i64 [ 0, %vector.ph397 ], [ %index.next403, %vector.body401 ] ; 2 uses
  %i.ih = shl nuw nsw i64 %index402, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ih ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <8 x i16> %broadcast.splat400, ptr %i.ii, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat400, ptr %i.ij, align 16, !tbaa !40
  %index.next403 = add nuw i64 %index402, 16      ; 2 uses
  %i.ik = icmp eq i64 %index.next403, %n.vec398
  br i1 %i.ik, label %middle.block404, label %vector.body401, !llvm.loop !157

middle.block404:                                  ; preds = %vector.body401
  %cmp.n405 = icmp eq i64 %n.vec398, %i.if
  br i1 %cmp.n405, label %check_intra_mode.exit.us, label %vec.epilog.iter.check407

vec.epilog.iter.check407:                         ; preds = %middle.block404
  %min.epilog.iters.check409 = icmp eq i64 %i.ig, 0
  br i1 %min.epilog.iters.check409, label %.lr.ph131.us, label %vec.epilog.ph410, !prof !208

vec.epilog.ph410:                                 ; preds = %iter.check406, %vec.epilog.iter.check407
  %vec.epilog.resume.val411 = phi i64 [ %n.vec398, %vec.epilog.iter.check407 ], [ 0, %iter.check406 ]
  %broadcast.splatinsert413 = insertelement <4 x i16> poison, i16 %i.id, i64 0
  %broadcast.splat414 = shufflevector <4 x i16> %broadcast.splatinsert413, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body415

vec.epilog.vector.body415:                        ; preds = %vec.epilog.vector.body415, %vec.epilog.ph410
  %index416 = phi i64 [ %vec.epilog.resume.val411, %vec.epilog.ph410 ], [ %index.next417, %vec.epilog.vector.body415 ] ; 2 uses
  %i.il = shl nuw nsw i64 %index416, 1
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.il
  store <4 x i16> %broadcast.splat414, ptr %i.im, align 8, !tbaa !40
  %index.next417 = add nuw i64 %index416, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next417, %i.if
  br i1 %i.in, label %check_intra_mode.exit.us, label %vec.epilog.vector.body415, !llvm.loop !158

.lr.ph131.us:                                     ; preds = %vec.epilog.iter.check407, %.lr.ph131.us
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %.lr.ph131.us ], [ %n.vec398, %vec.epilog.iter.check407 ] ; 2 uses
  %i.io = shl nuw nsw i64 %indvars.iv237, 1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.io
  store i16 %i.id, ptr %i.ip, align 2, !tbaa !40
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.iq = icmp samesign ult i64 %indvars.iv.next238, %i.if
  br i1 %i.iq, label %.lr.ph131.us, label %check_intra_mode.exit.us, !llvm.loop !159

bb.z:                                             ; preds = %bb.x
  br i1 %.not300.i.us, label %.preheader106.us, label %.preheader107.us

.lr.ph133.us:                                     ; preds = %.lr.ph133.us, %.lr.ph133.us.preheader784
  %indvars.iv240 = phi i64 [ %indvars.iv240.ph, %.lr.ph133.us.preheader784 ], [ %indvars.iv.next241.3, %.lr.ph133.us ] ; 6 uses
  %i.ir = mul nsw i64 %i.he, %indvars.iv240
  %i.is = getelementptr inbounds i8, ptr %i.hd, i64 %i.ir
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 -2
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !40
  %i.iv = shl nuw nsw i64 %indvars.iv240, 1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.iv
  store i16 %i.iu, ptr %i.iw, align 8, !tbaa !40
  %indvars.iv.next241 = or disjoint i64 %indvars.iv240, 1 ; 2 uses
  %i.ix = mul nsw i64 %i.he, %indvars.iv.next241
  %i.iy = getelementptr inbounds i8, ptr %i.hd, i64 %i.ix
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 -2
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !40
  %i.jb = shl nuw nsw i64 %indvars.iv.next241, 1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jb
  store i16 %i.ja, ptr %i.jc, align 2, !tbaa !40
  %indvars.iv.next241.1 = or disjoint i64 %indvars.iv240, 2 ; 2 uses
  %i.jd = mul nsw i64 %i.he, %indvars.iv.next241.1
  %i.je = getelementptr inbounds i8, ptr %i.hd, i64 %i.jd
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 -2
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !40
  %i.jh = shl nuw nsw i64 %indvars.iv.next241.1, 1
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jh
  store i16 %i.jg, ptr %i.ji, align 4, !tbaa !40
  %indvars.iv.next241.2 = or disjoint i64 %indvars.iv240, 3 ; 2 uses
  %i.jj = mul nsw i64 %i.he, %indvars.iv.next241.2
  %i.jk = getelementptr inbounds i8, ptr %i.hd, i64 %i.jj
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 -2
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !40
  %i.jn = shl nuw nsw i64 %indvars.iv.next241.2, 1
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jn
  store i16 %i.jm, ptr %i.jo, align 2, !tbaa !40
  %indvars.iv.next241.3 = add nuw nsw i64 %indvars.iv240, 4 ; 2 uses
  %exitcond244.not.3 = icmp eq i64 %indvars.iv.next241.3, %wide.trip.count243
  br i1 %exitcond244.not.3, label %check_intra_mode.exit.us, label %.lr.ph133.us, !llvm.loop !160

.lr.ph135.us:                                     ; preds = %.lr.ph135.us.preheader783, %.lr.ph135.us
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %.lr.ph135.us ], [ %indvars.iv245.ph, %.lr.ph135.us.preheader783 ] ; 3 uses
  %i.jp = mul nsw i64 %i.he, %indvars.iv245
  %i.jq = getelementptr inbounds i8, ptr %i.hd, i64 %i.jp
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -2
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !40
  %i.jt = shl nuw nsw i64 %indvars.iv245, 1
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jt
  store i16 %i.js, ptr %i.ju, align 2, !tbaa !40
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %i.jv = icmp samesign ult i64 %indvars.iv.next246, %i.lh
  br i1 %i.jv, label %.lr.ph135.us, label %._crit_edge136.us, !llvm.loop !161

._crit_edge136.us:                                ; preds = %.lr.ph135.us, %middle.block379, %.preheader106.us
  %i.jw = shl i32 %i.ha, 3
  %i.jx = add i32 %i.jw, -2
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds i8, ptr %i.b, i64 %i.jy
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !40 ; 3 uses
  %i.kb = sub nsw i32 %i.gt, %i.hb                ; 3 uses
  %i.kc = icmp sgt i32 %i.kb, 0
  br i1 %i.kc, label %iter.check, label %check_intra_mode.exit.us

iter.check:                                       ; preds = %._crit_edge136.us
  %i.kd = sext i32 %i.hb to i64                   ; 3 uses
  %i.ke = zext nneg i32 %i.kb to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.kb, 16
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %iter.check
  %i.kf = and i64 %i.ke, 12
  %n.vec = and i64 %i.ke, 2147483632              ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ka, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kg = add nsw i64 %index, %i.kd
  %i.kh = shl nsw i64 %i.kg, 1
  %i.ki = getelementptr inbounds i8, ptr %i.b, i64 %i.kh ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.ki, align 8, !tbaa !40
  store <8 x i16> %broadcast.splat, ptr %i.kj, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ke
  br i1 %cmp.n, label %check_intra_mode.exit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph139.us, label %vec.epilog.ph, !prof !208

vec.epilog.ph:                                    ; preds = %iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %broadcast.splatinsert368 = insertelement <4 x i16> poison, i16 %i.ka, i64 0
  %broadcast.splat369 = shufflevector <4 x i16> %broadcast.splatinsert368, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index370 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next371, %vec.epilog.vector.body ] ; 2 uses
  %i.kl = add nsw i64 %index370, %i.kd
  %i.km = shl nsw i64 %i.kl, 1
  %i.kn = getelementptr inbounds i8, ptr %i.b, i64 %i.km
  store <4 x i16> %broadcast.splat369, ptr %i.kn, align 8, !tbaa !40
  %index.next371 = add nuw i64 %index370, 4       ; 2 uses
  %i.ko = icmp eq i64 %index.next371, %i.ke
  br i1 %i.ko, label %check_intra_mode.exit.us, label %vec.epilog.vector.body, !llvm.loop !163

.lr.ph139.us:                                     ; preds = %vec.epilog.iter.check, %.lr.ph139.us
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %.lr.ph139.us ], [ %n.vec, %vec.epilog.iter.check ] ; 2 uses
  %i.kp = add nsw i64 %indvars.iv248, %i.kd
  %i.kq = shl nsw i64 %i.kp, 1
  %i.kr = getelementptr inbounds i8, ptr %i.b, i64 %i.kq
  store i16 %i.ka, ptr %i.kr, align 2, !tbaa !40
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %i.ks = icmp samesign ult i64 %indvars.iv.next249, %i.ke
  br i1 %i.ks, label %.lr.ph139.us, label %check_intra_mode.exit.us, !llvm.loop !164

check_intra_mode.exit.us:                         ; preds = %vec.epilog.scalar.ph463, %vec.epilog.vector.body470, %.lr.ph126.us, %.lr.ph131.us, %vec.epilog.vector.body415, %.lr.ph133.us, %.lr.ph139.us, %vec.epilog.vector.body, %middle.block459, %middle.block446, %middle.block404, %middle.block391, %middle.block, %.preheader113.us, %.preheader111.us, %._crit_edge.us, %.preheader107.us, %._crit_edge136.us, %.loopexit115.us
  %i.kt = zext i32 %.pre.pre to i64
  %i.ku = getelementptr inbounds nuw [120 x i8], ptr %i.bi, i64 %i.kt
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.eb
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !85
  call void %i.kw(ptr noundef %.0177.i144.us, i64 noundef %i.dm, ptr noundef nonnull %i.b, ptr noundef %.071.us) #5, !inline_history !0
  %.not197.i.us = icmp eq i32 %i.dh, 0
  br i1 %.not197.i.us, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %check_intra_mode.exit.us
  %i.kx = zext i32 %i.df to i64
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.kx
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !85
  %i.la = load i64, ptr %i.ba, align 16, !tbaa !80
  %i.lb = load ptr, ptr %i.bm, align 8, !tbaa !86
  %.idx = shl nsw i64 %indvars.iv253, 6
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 %.idx
  call void %i.kz(ptr noundef %.0177.i144.us, i64 noundef %i.la, ptr noundef %i.lc, i32 noundef %i.dh) #5, !inline_history !0
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %check_intra_mode.exit.us
  %indvars.iv.next252 = add nsw i64 %indvars.iv251, %i.bt ; 2 uses
  %i.ld = getelementptr inbounds i8, ptr %.0177.i144.us, i64 %i.bo
  %i.le = getelementptr inbounds i8, ptr %.0176.i147.us, i64 %i.bo
  %indvars.iv.next254 = add nsw i64 %indvars.iv253, %i.bw ; 2 uses
  %i.lf = icmp slt i64 %indvars.iv.next252, %i.bv
  br i1 %i.lf, label %bb.b, label %._crit_edge151.us, !llvm.loop !1

.preheader106.us:                                 ; preds = %bb.z
  %i.lg = icmp sgt i32 %i.hb, 0
  br i1 %i.lg, label %.lr.ph135.us.preheader, label %._crit_edge136.us

.lr.ph135.us.preheader:                           ; preds = %.preheader106.us
  %i.lh = zext nneg i32 %i.hb to i64              ; 3 uses
  %min.iters.check373 = icmp ugt i32 %i.hb, 7
  %ident.check.not = icmp eq i64 %i.he, 1
  %or.cond764 = select i1 %min.iters.check373, i1 %ident.check.not, i1 false
  br i1 %or.cond764, label %vector.ph374, label %.lr.ph135.us.preheader783

vector.ph374:                                     ; preds = %.lr.ph135.us.preheader
  %n.vec375 = and i64 %i.lh, 2147483640           ; 3 uses
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body376, %vector.ph374
  %index377 = phi i64 [ 0, %vector.ph374 ], [ %index.next378, %vector.body376 ] ; 10 uses
  %i.li = getelementptr inbounds i8, ptr %i.hd, i64 %index377
  %i.lj = getelementptr i8, ptr %i.hd, i64 %index377
  %i.lk = getelementptr i8, ptr %i.hd, i64 %index377
  %i.ll = getelementptr i8, ptr %i.hd, i64 %index377
  %i.lm = getelementptr i8, ptr %i.hd, i64 %index377
  %i.ln = getelementptr i8, ptr %i.hd, i64 %index377
  %i.lo = getelementptr i8, ptr %i.hd, i64 %index377
  %i.lp = getelementptr i8, ptr %i.hd, i64 %index377
  %i.lq = getelementptr inbounds i8, ptr %i.li, i64 -2
  %i.lr = getelementptr i8, ptr %i.lj, i64 -1
  %i.ls = getelementptr i8, ptr %i.ll, i64 1
  %i.lt = getelementptr i8, ptr %i.lm, i64 2
  %i.lu = getelementptr i8, ptr %i.ln, i64 3
  %i.lv = getelementptr i8, ptr %i.lo, i64 4
  %i.lw = getelementptr i8, ptr %i.lp, i64 5
  %i.lx = load i16, ptr %i.lq, align 2, !tbaa !40
  %i.ly = load i16, ptr %i.lr, align 2, !tbaa !40
  %i.lz = load i16, ptr %i.lk, align 2, !tbaa !40
  %i.ma = load i16, ptr %i.ls, align 2, !tbaa !40
  %i.mb = load i16, ptr %i.lt, align 2, !tbaa !40
  %i.mc = load i16, ptr %i.lu, align 2, !tbaa !40
  %i.md = load i16, ptr %i.lv, align 2, !tbaa !40
  %i.me = load i16, ptr %i.lw, align 2, !tbaa !40
  %i.mf = insertelement <8 x i16> poison, i16 %i.lx, i64 0
  %i.mg = insertelement <8 x i16> %i.mf, i16 %i.ly, i64 1
  %i.mh = insertelement <8 x i16> %i.mg, i16 %i.lz, i64 2
  %i.mi = insertelement <8 x i16> %i.mh, i16 %i.ma, i64 3
  %i.mj = insertelement <8 x i16> %i.mi, i16 %i.mb, i64 4
  %i.mk = insertelement <8 x i16> %i.mj, i16 %i.mc, i64 5
  %i.ml = insertelement <8 x i16> %i.mk, i16 %i.md, i64 6
  %i.mm = insertelement <8 x i16> %i.ml, i16 %i.me, i64 7
  %i.mn = shl nuw nsw i64 %index377, 1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mn
  store <8 x i16> %i.mm, ptr %i.mo, align 16, !tbaa !40
  %index.next378 = add nuw i64 %index377, 8       ; 2 uses
  %i.mp = icmp eq i64 %index.next378, %n.vec375
  br i1 %i.mp, label %middle.block379, label %vector.body376, !llvm.loop !165

middle.block379:                                  ; preds = %vector.body376
  %cmp.n380 = icmp eq i64 %n.vec375, %i.lh
  br i1 %cmp.n380, label %._crit_edge136.us, label %.lr.ph135.us.preheader783

.lr.ph135.us.preheader783:                        ; preds = %.lr.ph135.us.preheader, %middle.block379
  %indvars.iv245.ph = phi i64 [ 0, %.lr.ph135.us.preheader ], [ %n.vec375, %middle.block379 ]
  br label %.lr.ph135.us

.preheader107.us:                                 ; preds = %bb.z
  %i.mq = icmp sgt i32 %i.gt, 0
  br i1 %i.mq, label %.lr.ph133.us.preheader, label %check_intra_mode.exit.us

.lr.ph133.us.preheader:                           ; preds = %.preheader107.us
  %wide.trip.count243 = zext nneg i32 %i.gt to i64 ; 3 uses
  %min.iters.check385 = icmp ugt i32 %i.gt, 7
  %ident.check383.not = icmp eq i64 %i.he, 1
  %or.cond765 = select i1 %min.iters.check385, i1 %ident.check383.not, i1 false
  br i1 %or.cond765, label %vector.ph386, label %.lr.ph133.us.preheader784

vector.ph386:                                     ; preds = %.lr.ph133.us.preheader
  %n.vec387 = and i64 %wide.trip.count243, 2147483640 ; 3 uses
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph386
  %index389 = phi i64 [ 0, %vector.ph386 ], [ %index.next390, %vector.body388 ] ; 10 uses
  %i.mr = getelementptr inbounds i8, ptr %i.hd, i64 %index389
  %i.ms = getelementptr i8, ptr %i.hd, i64 %index389
  %i.mt = getelementptr i8, ptr %i.hd, i64 %index389
  %i.mu = getelementptr i8, ptr %i.hd, i64 %index389
  %i.mv = getelementptr i8, ptr %i.hd, i64 %index389
  %i.mw = getelementptr i8, ptr %i.hd, i64 %index389
  %i.mx = getelementptr i8, ptr %i.hd, i64 %index389
  %i.my = getelementptr i8, ptr %i.hd, i64 %index389
  %i.mz = getelementptr inbounds i8, ptr %i.mr, i64 -2
  %i.na = getelementptr i8, ptr %i.ms, i64 -1
  %i.nb = getelementptr i8, ptr %i.mu, i64 1
  %i.nc = getelementptr i8, ptr %i.mv, i64 2
  %i.nd = getelementptr i8, ptr %i.mw, i64 3
  %i.ne = getelementptr i8, ptr %i.mx, i64 4
  %i.nf = getelementptr i8, ptr %i.my, i64 5
  %i.ng = load i16, ptr %i.mz, align 2, !tbaa !40
  %i.nh = load i16, ptr %i.na, align 2, !tbaa !40
  %i.ni = load i16, ptr %i.mt, align 2, !tbaa !40
  %i.nj = load i16, ptr %i.nb, align 2, !tbaa !40
  %i.nk = load i16, ptr %i.nc, align 2, !tbaa !40
  %i.nl = load i16, ptr %i.nd, align 2, !tbaa !40
  %i.nm = load i16, ptr %i.ne, align 2, !tbaa !40
  %i.nn = load i16, ptr %i.nf, align 2, !tbaa !40
  %i.no = insertelement <8 x i16> poison, i16 %i.ng, i64 0
  %i.np = insertelement <8 x i16> %i.no, i16 %i.nh, i64 1
  %i.nq = insertelement <8 x i16> %i.np, i16 %i.ni, i64 2
  %i.nr = insertelement <8 x i16> %i.nq, i16 %i.nj, i64 3
  %i.ns = insertelement <8 x i16> %i.nr, i16 %i.nk, i64 4
  %i.nt = insertelement <8 x i16> %i.ns, i16 %i.nl, i64 5
  %i.nu = insertelement <8 x i16> %i.nt, i16 %i.nm, i64 6
  %i.nv = insertelement <8 x i16> %i.nu, i16 %i.nn, i64 7
  %i.nw = shl nuw nsw i64 %index389, 1
  %i.nx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.nw
  store <8 x i16> %i.nv, ptr %i.nx, align 16, !tbaa !40
  %index.next390 = add nuw i64 %index389, 8       ; 2 uses
  %i.ny = icmp eq i64 %index.next390, %n.vec387
  br i1 %i.ny, label %middle.block391, label %vector.body388, !llvm.loop !166

middle.block391:                                  ; preds = %vector.body388
  %cmp.n392 = icmp eq i64 %n.vec387, %wide.trip.count243
  br i1 %cmp.n392, label %check_intra_mode.exit.us, label %.lr.ph133.us.preheader784

.lr.ph133.us.preheader784:                        ; preds = %.lr.ph133.us.preheader, %middle.block391
  %indvars.iv240.ph = phi i64 [ 0, %.lr.ph133.us.preheader ], [ %n.vec387, %middle.block391 ]
  br label %.lr.ph133.us

.preheader110.us:                                 ; preds = %bb.y
  %i.nz = icmp sgt i32 %i.hb, 0
  br i1 %i.nz, label %.lr.ph128.us.preheader, label %._crit_edge.us

.lr.ph128.us.preheader:                           ; preds = %.preheader110.us
  %i.oa = zext nneg i32 %i.hb to i64              ; 4 uses
  %min.iters.check424 = icmp ult i32 %i.hb, 24
  br i1 %min.iters.check424, label %.lr.ph128.us.preheader788, label %vector.scevcheck421

vector.scevcheck421:                              ; preds = %.lr.ph128.us.preheader
  %ident.check422 = icmp ne i64 %i.he, 1
  %i.ob = add nsw i64 %i.oa, -1                   ; 2 uses
  %i.oc = shl i32 8, %.pre.pre
  %i.od = add i32 %i.oc, -2                       ; 2 uses
  %i.oe = trunc nsw i64 %i.ob to i32
  %mul.result = shl i32 %i.oe, 1
  %10 = sub i32 %i.od, %mul.result
  %11 = icmp sgt i32 %10, %i.od
  %i.of = icmp ugt i64 %i.ob, 4294967295
  %i.og = or i1 %11, %i.of
  %i.oh = or i1 %ident.check422, %i.og
  br i1 %i.oh, label %.lr.ph128.us.preheader788, label %vector.ph425

vector.ph425:                                     ; preds = %vector.scevcheck421
  %n.vec426 = and i64 %i.oa, 2147483640           ; 3 uses
  br label %vector.body427

vector.body427:                                   ; preds = %vector.body427, %vector.ph425
  %index428 = phi i64 [ 0, %vector.ph425 ], [ %index.next429, %vector.body427 ] ; 10 uses
  %i.oi = getelementptr inbounds i8, ptr %i.hd, i64 %index428
  %i.oj = getelementptr i8, ptr %i.hd, i64 %index428
  %i.ok = getelementptr i8, ptr %i.hd, i64 %index428
  %i.ol = getelementptr i8, ptr %i.hd, i64 %index428
  %i.om = getelementptr i8, ptr %i.hd, i64 %index428
  %i.on = getelementptr i8, ptr %i.hd, i64 %index428
  %i.oo = getelementptr i8, ptr %i.hd, i64 %index428
  %i.op = getelementptr i8, ptr %i.hd, i64 %index428
  %i.oq = getelementptr inbounds i8, ptr %i.oi, i64 -2
  %i.or = getelementptr i8, ptr %i.oj, i64 -1
  %i.os = getelementptr i8, ptr %i.ol, i64 1
  %i.ot = getelementptr i8, ptr %i.om, i64 2
  %i.ou = getelementptr i8, ptr %i.on, i64 3
  %i.ov = getelementptr i8, ptr %i.oo, i64 4
  %i.ow = getelementptr i8, ptr %i.op, i64 5
  %i.ox = load i16, ptr %i.oq, align 2, !tbaa !40
  %i.oy = load i16, ptr %i.or, align 2, !tbaa !40
  %i.oz = load i16, ptr %i.ok, align 2, !tbaa !40
  %i.pa = load i16, ptr %i.os, align 2, !tbaa !40
  %i.pb = load i16, ptr %i.ot, align 2, !tbaa !40
  %i.pc = load i16, ptr %i.ou, align 2, !tbaa !40
  %i.pd = load i16, ptr %i.ov, align 2, !tbaa !40
  %i.pe = load i16, ptr %i.ow, align 2, !tbaa !40
  %i.pf = insertelement <8 x i16> poison, i16 %i.ox, i64 0
  %i.pg = insertelement <8 x i16> %i.pf, i16 %i.oy, i64 1
  %i.ph = insertelement <8 x i16> %i.pg, i16 %i.oz, i64 2
  %i.pi = insertelement <8 x i16> %i.ph, i16 %i.pa, i64 3
  %i.pj = insertelement <8 x i16> %i.pi, i16 %i.pb, i64 4
  %i.pk = insertelement <8 x i16> %i.pj, i16 %i.pc, i64 5
  %i.pl = insertelement <8 x i16> %i.pk, i16 %i.pd, i64 6
  %i.pm = insertelement <8 x i16> %i.pl, i16 %i.pe, i64 7
  %i.pn = trunc nuw nsw i64 %index428 to i32
  %i.po = xor i32 %i.pn, -1
  %i.pp = add i32 %i.gt, %i.po
  %i.pq = shl nsw i32 %i.pp, 1
  %12 = sext i32 %i.pq to i64
  %i.pr = getelementptr inbounds i8, ptr %i.b, i64 %12
  %i.ps = getelementptr inbounds i8, ptr %i.pr, i64 -14
  %reverse = shufflevector <8 x i16> %i.pm, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse, ptr %i.ps, align 2, !tbaa !40
  %index.next429 = add nuw i64 %index428, 8       ; 2 uses
  %i.pt = icmp eq i64 %index.next429, %n.vec426
  br i1 %i.pt, label %middle.block430, label %vector.body427, !llvm.loop !167

middle.block430:                                  ; preds = %vector.body427
  %cmp.n431 = icmp eq i64 %n.vec426, %i.oa
  br i1 %cmp.n431, label %._crit_edge.us, label %.lr.ph128.us.preheader788

.lr.ph128.us.preheader788:                        ; preds = %vector.scevcheck421, %.lr.ph128.us.preheader, %middle.block430
  %indvars.iv234.ph = phi i64 [ 0, %vector.scevcheck421 ], [ 0, %.lr.ph128.us.preheader ], [ %n.vec426, %middle.block430 ]
  br label %.lr.ph128.us

.preheader111.us:                                 ; preds = %bb.y
  %i.pu = icmp sgt i32 %i.gt, 0
  br i1 %i.pu, label %vector.scevcheck433, label %check_intra_mode.exit.us

vector.scevcheck433:                              ; preds = %.preheader111.us
  %13 = zext nneg i32 %i.gt to i64                ; 3 uses
  %wide.trip.count232 = zext nneg i32 %i.gt to i64 ; 3 uses
  %i.pv = icmp ugt i32 %i.gt, 7
  %ident.check434.not = icmp eq i64 %i.he, 1
  %or.cond757 = select i1 %i.pv, i1 %ident.check434.not, i1 false
  br i1 %or.cond757, label %vector.ph440, label %.lr.ph126.us.preheader789

vector.ph440:                                     ; preds = %vector.scevcheck433
  %n.vec441 = and i64 %wide.trip.count232, 2147483640 ; 3 uses
  br label %vector.body442

vector.body442:                                   ; preds = %vector.body442, %vector.ph440
  %index443 = phi i64 [ 0, %vector.ph440 ], [ %index.next445, %vector.body442 ] ; 10 uses
  %i.pw = getelementptr inbounds i8, ptr %i.hd, i64 %index443
  %i.px = getelementptr i8, ptr %i.hd, i64 %index443
  %i.py = getelementptr i8, ptr %i.hd, i64 %index443
  %i.pz = getelementptr i8, ptr %i.hd, i64 %index443
  %i.qa = getelementptr i8, ptr %i.hd, i64 %index443
  %i.qb = getelementptr i8, ptr %i.hd, i64 %index443
  %i.qc = getelementptr i8, ptr %i.hd, i64 %index443
  %i.qd = getelementptr i8, ptr %i.hd, i64 %index443
  %i.qe = getelementptr inbounds i8, ptr %i.pw, i64 -2
  %i.qf = getelementptr i8, ptr %i.px, i64 -1
  %i.qg = getelementptr i8, ptr %i.pz, i64 1
  %i.qh = getelementptr i8, ptr %i.qa, i64 2
  %i.qi = getelementptr i8, ptr %i.qb, i64 3
  %i.qj = getelementptr i8, ptr %i.qc, i64 4
  %i.qk = getelementptr i8, ptr %i.qd, i64 5
  %i.ql = load i16, ptr %i.qe, align 2, !tbaa !40
  %i.qm = load i16, ptr %i.qf, align 2, !tbaa !40
  %i.qn = load i16, ptr %i.py, align 2, !tbaa !40
  %i.qo = load i16, ptr %i.qg, align 2, !tbaa !40
  %i.qp = load i16, ptr %i.qh, align 2, !tbaa !40
  %i.qq = load i16, ptr %i.qi, align 2, !tbaa !40
  %i.qr = load i16, ptr %i.qj, align 2, !tbaa !40
  %i.qs = load i16, ptr %i.qk, align 2, !tbaa !40
  %i.qt = insertelement <8 x i16> poison, i16 %i.ql, i64 0
  %i.qu = insertelement <8 x i16> %i.qt, i16 %i.qm, i64 1
  %i.qv = insertelement <8 x i16> %i.qu, i16 %i.qn, i64 2
  %i.qw = insertelement <8 x i16> %i.qv, i16 %i.qo, i64 3
  %i.qx = insertelement <8 x i16> %i.qw, i16 %i.qp, i64 4
  %i.qy = insertelement <8 x i16> %i.qx, i16 %i.qq, i64 5
  %i.qz = insertelement <8 x i16> %i.qy, i16 %i.qr, i64 6
  %i.ra = insertelement <8 x i16> %i.qz, i16 %i.qs, i64 7
  %14 = xor i64 %index443, -1
  %15 = add nsw i64 %13, %14
  %16 = shl nsw i64 %15, 1
  %i.rb = getelementptr inbounds i8, ptr %i.b, i64 %16
  %i.rc = getelementptr inbounds i8, ptr %i.rb, i64 -14
  %reverse444 = shufflevector <8 x i16> %i.ra, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse444, ptr %i.rc, align 8, !tbaa !40
  %index.next445 = add nuw i64 %index443, 8       ; 2 uses
  %i.rd = icmp eq i64 %index.next445, %n.vec441
  br i1 %i.rd, label %middle.block446, label %vector.body442, !llvm.loop !168

middle.block446:                                  ; preds = %vector.body442
  %cmp.n447 = icmp eq i64 %n.vec441, %wide.trip.count232
  br i1 %cmp.n447, label %check_intra_mode.exit.us, label %.lr.ph126.us.preheader789

.lr.ph126.us.preheader789:                        ; preds = %vector.scevcheck433, %middle.block446
  %indvars.iv229.ph = phi i64 [ 0, %vector.scevcheck433 ], [ %n.vec441, %middle.block446 ]
  br label %.lr.ph126.us

.preheader113.us:                                 ; preds = %bb.w
  %i.re = icmp sgt i32 %i.gt, 0
  br i1 %i.re, label %iter.check461, label %check_intra_mode.exit.us

.critedge.i.preheader.us:                         ; preds = %bb.g
  %i.rf = icmp sgt i32 %i.ee, 0
  br i1 %i.rf, label %iter.check515, label %.loopexit116.us

iter.check515:                                    ; preds = %.critedge.i.preheader.us
  %i.rg = add nsw i32 %i.dv, -8
  %i.rh = shl i32 128, %i.rg
  %i.ri = trunc i32 %i.rh to i16
  %i.rj = add i16 %i.ri, -1                       ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ee to i64   ; 5 uses
  %min.iters.check505 = icmp ult i32 %i.ee, 16
  br i1 %min.iters.check505, label %vec.epilog.ph519, label %vector.ph506

vector.ph506:                                     ; preds = %iter.check515
  %i.rk = and i64 %wide.trip.count, 12
  %n.vec507 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %broadcast.splatinsert508 = insertelement <8 x i16> poison, i16 %i.rj, i64 0
  %broadcast.splat509 = shufflevector <8 x i16> %broadcast.splatinsert508, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body510

vector.body510:                                   ; preds = %vector.ph506, %vector.body510
  %index511 = phi i64 [ 0, %vector.ph506 ], [ %index.next512, %vector.body510 ] ; 2 uses
  %i.rl = shl nuw nsw i64 %index511, 1
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.rl ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  store <8 x i16> %broadcast.splat509, ptr %i.rm, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat509, ptr %i.rn, align 16, !tbaa !40
  %index.next512 = add nuw i64 %index511, 16      ; 2 uses
  %i.ro = icmp eq i64 %index.next512, %n.vec507
  br i1 %i.ro, label %middle.block513, label %vector.body510, !llvm.loop !169

middle.block513:                                  ; preds = %vector.body510
  %cmp.n514 = icmp eq i64 %n.vec507, %wide.trip.count
  br i1 %cmp.n514, label %.loopexit116.us, label %vec.epilog.iter.check516

vec.epilog.iter.check516:                         ; preds = %middle.block513
  %min.epilog.iters.check518 = icmp eq i64 %i.rk, 0
  br i1 %min.epilog.iters.check518, label %.critedge.i.us, label %vec.epilog.ph519, !prof !208

vec.epilog.ph519:                                 ; preds = %iter.check515, %vec.epilog.iter.check516
  %vec.epilog.resume.val520 = phi i64 [ %n.vec507, %vec.epilog.iter.check516 ], [ 0, %iter.check515 ]
  %broadcast.splatinsert522 = insertelement <4 x i16> poison, i16 %i.rj, i64 0
  %broadcast.splat523 = shufflevector <4 x i16> %broadcast.splatinsert522, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body524

vec.epilog.vector.body524:                        ; preds = %vec.epilog.vector.body524, %vec.epilog.ph519
  %index525 = phi i64 [ %vec.epilog.resume.val520, %vec.epilog.ph519 ], [ %index.next526, %vec.epilog.vector.body524 ] ; 2 uses
  %i.rp = shl nuw nsw i64 %index525, 1
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.rp
  store <4 x i16> %broadcast.splat523, ptr %i.rq, align 8, !tbaa !40
  %index.next526 = add nuw i64 %index525, 4       ; 2 uses
  %i.rr = icmp eq i64 %index.next526, %wide.trip.count
  br i1 %i.rr, label %.loopexit116.us, label %vec.epilog.vector.body524, !llvm.loop !170

iter.check461:                                    ; preds = %.preheader113.us
  %i.rs = add nsw i32 %i.dv, -8
  %i.rt = shl i32 128, %i.rs
  %i.ru = trunc i32 %i.rt to i16
  %i.rv = or disjoint i16 %i.ru, 1                ; 3 uses
  %wide.trip.count227 = zext nneg i32 %i.gt to i64 ; 5 uses
  %min.iters.check451 = icmp ult i32 %i.gt, 16
  br i1 %min.iters.check451, label %vec.epilog.ph465, label %vector.ph452

vector.ph452:                                     ; preds = %iter.check461
  %i.rw = and i64 %wide.trip.count227, 12
  %n.vec453 = and i64 %wide.trip.count227, 2147483632 ; 4 uses
  %broadcast.splatinsert454 = insertelement <8 x i16> poison, i16 %i.rv, i64 0
  %broadcast.splat455 = shufflevector <8 x i16> %broadcast.splatinsert454, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body456

vector.body456:                                   ; preds = %vector.ph452, %vector.body456
  %index457 = phi i64 [ 0, %vector.ph452 ], [ %index.next458, %vector.body456 ] ; 2 uses
  %i.rx = shl nuw nsw i64 %index457, 1
  %i.ry = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.rx ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  store <8 x i16> %broadcast.splat455, ptr %i.ry, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat455, ptr %i.rz, align 16, !tbaa !40
  %index.next458 = add nuw i64 %index457, 16      ; 2 uses
  %i.sa = icmp eq i64 %index.next458, %n.vec453
  br i1 %i.sa, label %middle.block459, label %vector.body456, !llvm.loop !171

middle.block459:                                  ; preds = %vector.body456
  %cmp.n460 = icmp eq i64 %n.vec453, %wide.trip.count227
  br i1 %cmp.n460, label %check_intra_mode.exit.us, label %vec.epilog.iter.check462

vec.epilog.iter.check462:                         ; preds = %middle.block459
  %min.epilog.iters.check464 = icmp eq i64 %i.rw, 0
  br i1 %min.epilog.iters.check464, label %vec.epilog.scalar.ph463, label %vec.epilog.ph465, !prof !208

vec.epilog.ph465:                                 ; preds = %iter.check461, %vec.epilog.iter.check462
  %vec.epilog.resume.val466 = phi i64 [ %n.vec453, %vec.epilog.iter.check462 ], [ 0, %iter.check461 ]
  %broadcast.splatinsert468 = insertelement <4 x i16> poison, i16 %i.rv, i64 0
  %broadcast.splat469 = shufflevector <4 x i16> %broadcast.splatinsert468, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body470

vec.epilog.vector.body470:                        ; preds = %vec.epilog.vector.body470, %vec.epilog.ph465
  %index471 = phi i64 [ %vec.epilog.resume.val466, %vec.epilog.ph465 ], [ %index.next472, %vec.epilog.vector.body470 ] ; 2 uses
  %i.sb = shl nuw nsw i64 %index471, 1
  %i.sc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.sb
  store <4 x i16> %broadcast.splat469, ptr %i.sc, align 8, !tbaa !40
  %index.next472 = add nuw i64 %index471, 4       ; 2 uses
  %i.sd = icmp eq i64 %index.next472, %wide.trip.count227
  br i1 %i.sd, label %check_intra_mode.exit.us, label %vec.epilog.vector.body470, !llvm.loop !172

._crit_edge151.us:                                ; preds = %bb.ab
  %i.se = load ptr, ptr %i.as, align 8, !tbaa !76 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 64
  %i.sg = load i32, ptr %i.sf, align 8, !tbaa !77
  %i.sh = mul nsw i32 %i.sg, %i.bp
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr inbounds i8, ptr %.0178.i155.us, i64 %i.si
  %i.sk = load i64, ptr %i.ba, align 16, !tbaa !80
  %i.sl = mul nsw i64 %i.sk, %i.bq
  %i.sm = getelementptr inbounds i8, ptr %.0179.i154.us, i64 %i.sl
  %indvars.iv.next259 = add nsw i64 %indvars.iv258, %i.bt ; 2 uses
  %i.sn = icmp slt i64 %indvars.iv.next259, %i.bx
  br i1 %i.sn, label %.preheader118.us, label %._crit_edge156.loopexit214, !llvm.loop !2

._crit_edge156.loopexit214:                       ; preds = %._crit_edge151.us
  %.pre307 = load i32, ptr %i.am, align 4, !tbaa !69
  br label %._crit_edge156

._crit_edge156:                                   ; preds = %.preheader118.lr.ph, %.._crit_edge156_crit_edge, %._crit_edge156.loopexit214
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge156_crit_edge ], [ %i.bd, %._crit_edge156.loopexit214 ], [ %i.bd, %.preheader118.lr.ph ]
  %i.so = phi ptr [ %i.at, %.._crit_edge156_crit_edge ], [ %i.se, %._crit_edge156.loopexit214 ], [ %i.at, %.preheader118.lr.ph ]
  %i.sp = phi i32 [ %i.an, %.._crit_edge156_crit_edge ], [ %.pre307, %._crit_edge156.loopexit214 ], [ %i.an, %.preheader118.lr.ph ]
  %i.sq = getelementptr inbounds nuw i8, ptr %i.c, i64 3924 ; 2 uses
  %i.sr = load i8, ptr %i.sq, align 4, !tbaa !88
  %i.ss = zext i8 %i.sr to i32                    ; 2 uses
  %i.st = lshr i32 %i.p, %i.ss
  %i.su = lshr i32 %..i, %i.ss                    ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.c, i64 3925 ; 2 uses
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !89
  %i.sx = zext nneg i8 %i.sw to i32
  %i.sy = lshr i32 %i.ah, %i.sx                   ; 2 uses
  %.not201 = icmp eq i32 %i.sy, 0
  %i.sz = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.ta = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 13 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 77120
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.te = icmp sgt i32 %i.g, 0
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.tg = add nsw i32 %i.st, -1
  %i.th = shl i32 %i.i, 1
  %i.ti = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.tj = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.tk = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.tl = getelementptr inbounds nuw i8, ptr %i.c, i64 1376
  %i.tm = getelementptr inbounds nuw i8, ptr %i.c, i64 1856
  %i.tn = sext i32 %i.ao to i64
  %i.to = getelementptr inbounds [32 x i8], ptr %i.tm, i64 %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 77072
  %i.tq = shl i32 8, %i.an
  %i.tr = sext i32 %i.tq to i64                   ; 2 uses
  %i.ts = shl i32 4, %i.an                        ; 2 uses
  %i.tt = sext i32 %i.ts to i64
  %.not202 = icmp eq i32 %i.su, 0
  %or.cond352 = select i1 %.not201, i1 true, i1 %.not202
  br i1 %or.cond352, label %intra_recon.exit.split, label %.preheader104.lr.ph.us.preheader

.preheader104.lr.ph.us.preheader:                 ; preds = %._crit_edge156
  %i.tu = shl i32 %i.sp, 1
  %i.tv = shl nuw i32 1, %i.tu
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %scevgep = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %.preheader104.lr.ph.us

.preheader104.lr.ph.us:                           ; preds = %.preheader104.lr.ph.us.preheader, %..loopexit105_crit_edge.split.us.us
  %i.ty = phi ptr [ %i.so, %.preheader104.lr.ph.us.preheader ], [ %i.akx, %..loopexit105_crit_edge.split.us.us ]
  %i.tz = phi i1 [ true, %.preheader104.lr.ph.us.preheader ], [ false, %..loopexit105_crit_edge.split.us.us ]
  %indvars.iv303 = phi i64 [ 0, %.preheader104.lr.ph.us.preheader ], [ 1, %..loopexit105_crit_edge.split.us.us ] ; 3 uses
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 3 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next304
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !70
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.next304
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !70
  %i.ue = getelementptr inbounds i8, ptr %i.ud, i64 %2
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %indvars.iv303
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %indvars.iv303
  br label %.preheader104.us.us

.preheader104.us.us:                              ; preds = %._crit_edge189.us.us, %.preheader104.lr.ph.us
  %.1.i193.us.us = phi ptr [ %i.ue, %.preheader104.lr.ph.us ], [ %i.alc, %._crit_edge189.us.us ] ; 2 uses
  %.1180.i192.us.us = phi ptr [ %i.ub, %.preheader104.lr.ph.us ], [ %i.alf, %._crit_edge189.us.us ] ; 2 uses
  %.1183.i191.us.us = phi i32 [ 0, %.preheader104.lr.ph.us ], [ %i.alg, %._crit_edge189.us.us ] ; 5 uses
  %.2.i190.us.us = phi i64 [ 0, %.preheader104.lr.ph.us ], [ %indvars.iv.next301, %._crit_edge189.us.us ]
  %i.uh = icmp sgt i32 %.1183.i191.us.us, 0
  %i.ui = or i1 %i.te, %i.uh                      ; 5 uses
  %i.uj = zext i1 %i.ui to i64
  %i.uk = or i32 %.1183.i191.us.us, %.pre-phi
  %or.cond3.not.i47.us.us = icmp eq i32 %i.uk, 0
  %i.ul = icmp eq i32 %.1183.i191.us.us, 0        ; 2 uses
  %i.um = select i1 %i.ui, i32 1, i32 65535
  br label %bb.ac

bb.ac:                                            ; preds = %bb.bc, %.preheader104.us.us
  %indvars.iv300 = phi i64 [ %indvars.iv.next301, %bb.bc ], [ %.2.i190.us.us, %.preheader104.us.us ] ; 3 uses
  %.0.i185.us.us = phi ptr [ %i.akv, %bb.bc ], [ %.1.i193.us.us, %.preheader104.us.us ] ; 3 uses
  %.0175.i182.us.us = phi ptr [ %i.aku, %bb.bc ], [ %.1180.i192.us.us, %.preheader104.us.us ] ; 5 uses
  %.1185.i179.us.us = phi i32 [ %i.akt, %bb.bc ], [ 0, %.preheader104.us.us ] ; 7 uses
  %i.un = load i8, ptr %i.sz, align 1, !tbaa !90
  %i.uo = load i8, ptr %i.tb, align 2, !tbaa !78
  %.not.i.us.us = icmp eq i8 %i.uo, 0
  %.pre308 = load i32, ptr %i.am, align 4, !tbaa !69 ; 8 uses
  br i1 %.not.i.us.us, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.up = icmp ugt i32 %.pre308, 1
  %i.uq = load ptr, ptr %i.uf, align 8, !tbaa !70
  %i.ur = getelementptr inbounds i8, ptr %i.uq, i64 %indvars.iv300 ; 2 uses
  br i1 %i.up, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !40
  %i.ut = zext i8 %i.us to i32
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.uu = load i16, ptr %i.ur, align 2, !tbaa !40
  %i.uv = zext i16 %i.uu to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %i.uw = phi i32 [ 0, %bb.ac ], [ %i.uv, %bb.af ], [ %i.ut, %bb.ae ] ; 2 uses
  %i.ux = load ptr, ptr %i.as, align 8, !tbaa !76
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 68
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !77
  %i.va = sext i32 %i.uz to i64                   ; 2 uses
  %i.vb = load i64, ptr %i.td, align 8, !tbaa !91 ; 3 uses
  %i.vc = load i8, ptr %i.sq, align 4, !tbaa !88  ; 2 uses
  %i.vd = zext nneg i8 %i.vc to i32
  %i.ve = load i8, ptr %i.sv, align 1, !tbaa !89
  %i.vf = load ptr, ptr %0, align 16, !tbaa !34   ; 4 uses
  %i.vg = load i32, ptr %i.tf, align 16, !tbaa !81
  %i.vh = icmp ugt i32 %i.i, %i.vg
  %i.vi = icmp sgt i32 %.1185.i179.us.us, 0
  %i.vj = or i1 %i.vi, %i.vh                      ; 5 uses
  %i.vk = icmp slt i32 %.1185.i179.us.us, %i.tg   ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vf, i64 1
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !82
  %i.vn = zext i8 %i.vm to i32                    ; 3 uses
  %i.vo = zext i8 %i.un to i64
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr @check_intra_mode.mode_conv, i64 %i.vo
  %i.vq = zext i1 %i.vj to i64
  %i.vr = getelementptr inbounds nuw [2 x i8], ptr %i.vp, i64 %i.vq
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.uj
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !40  ; 3 uses
  %i.vu = zext i8 %i.vt to i64                    ; 2 uses
  %i.vv = shl nuw i64 1, %i.vu                    ; 4 uses
  %i.vw = and i64 %i.vv, 29954
  %.not.not.i6.us.us = icmp eq i64 %i.vw, 0
  br i1 %.not.not.i6.us.us, label %bb.ah, label %.loopexit.us.us

bb.ah:                                            ; preds = %bb.ag
  %i.vx = shl i32 4, %.pre308                     ; 8 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vf, i64 3964
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !66
  %i.wa = sub i32 %i.vz, %i.i
  %.not.i18.us.us = icmp eq i8 %i.vc, 0
  %i.wb = zext i1 %.not.i18.us.us to i32
  %i.wc = shl i32 %i.wa, %i.wb
  %i.wd = sub i32 %i.wc, %.1185.i179.us.us        ; 2 uses
  %i.we = shl i32 %i.wd, 2                        ; 6 uses
  %i.wf = icmp eq i32 %.pre308, 0                 ; 2 uses
  %i.wg = and i8 %i.vt, -5
  %i.wh = icmp eq i8 %i.wg, 3                     ; 3 uses
  %or.cond.i19.us.us = select i1 %i.wh, i1 %i.vk, i1 false
  %spec.select.i20.us.us = select i1 %or.cond.i19.us.us, i32 4, i32 0 ; 2 uses
  br i1 %i.ui, label %bb.ai, label %.critedge.i24.preheader.us.us

.critedge.i24.preheader.us.us:                    ; preds = %bb.ah
  %i.wi = icmp sgt i32 %i.vx, 0
  br i1 %i.wi, label %iter.check749, label %.loopexit103.us.us

iter.check749:                                    ; preds = %.critedge.i24.preheader.us.us
  %i.wj = add nsw i32 %i.vn, -8
  %i.wk = shl i32 128, %i.wj
  %i.wl = trunc i32 %i.wk to i16
  %i.wm = add i16 %i.wl, -1                       ; 3 uses
  %wide.trip.count264 = zext nneg i32 %i.vx to i64 ; 5 uses
  %min.iters.check739 = icmp ult i32 %i.vx, 16
  br i1 %min.iters.check739, label %vec.epilog.ph753, label %vector.ph740

vector.ph740:                                     ; preds = %iter.check749
  %i.wn = and i64 %wide.trip.count264, 12
  %n.vec741 = and i64 %wide.trip.count264, 2147483632 ; 4 uses
  %broadcast.splatinsert742 = insertelement <8 x i16> poison, i16 %i.wm, i64 0
  %broadcast.splat743 = shufflevector <8 x i16> %broadcast.splatinsert742, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body744

vector.body744:                                   ; preds = %vector.ph740, %vector.body744
  %index745 = phi i64 [ 0, %vector.ph740 ], [ %index.next746, %vector.body744 ] ; 2 uses
  %i.wo = shl nuw nsw i64 %index745, 1
  %i.wp = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.wo ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  store <8 x i16> %broadcast.splat743, ptr %i.wp, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat743, ptr %i.wq, align 16, !tbaa !40
  %index.next746 = add nuw i64 %index745, 16      ; 2 uses
  %i.wr = icmp eq i64 %index.next746, %n.vec741
  br i1 %i.wr, label %middle.block747, label %vector.body744, !llvm.loop !173

middle.block747:                                  ; preds = %vector.body744
  %cmp.n748 = icmp eq i64 %n.vec741, %wide.trip.count264
  br i1 %cmp.n748, label %.loopexit103.us.us, label %vec.epilog.iter.check750

vec.epilog.iter.check750:                         ; preds = %middle.block747
  %min.epilog.iters.check752 = icmp eq i64 %i.wn, 0
  br i1 %min.epilog.iters.check752, label %.critedge.i24.us.us, label %vec.epilog.ph753, !prof !208

vec.epilog.ph753:                                 ; preds = %iter.check749, %vec.epilog.iter.check750
  %vec.epilog.resume.val754 = phi i64 [ %n.vec741, %vec.epilog.iter.check750 ], [ 0, %iter.check749 ]
  %broadcast.splatinsert756 = insertelement <4 x i16> poison, i16 %i.wm, i64 0
  %broadcast.splat757 = shufflevector <4 x i16> %broadcast.splatinsert756, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body758

vec.epilog.vector.body758:                        ; preds = %vec.epilog.vector.body758, %vec.epilog.ph753
  %index759 = phi i64 [ %vec.epilog.resume.val754, %vec.epilog.ph753 ], [ %index.next760, %vec.epilog.vector.body758 ] ; 2 uses
  %i.ws = shl nuw nsw i64 %index759, 1
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.ws
  store <4 x i16> %broadcast.splat757, ptr %i.wt, align 8, !tbaa !40
  %index.next760 = add nuw i64 %index759, 4       ; 2 uses
  %i.wu = icmp eq i64 %index.next760, %wide.trip.count264
  br i1 %i.wu, label %.loopexit103.us.us, label %vec.epilog.vector.body758, !llvm.loop !174

.critedge.i24.us.us:                              ; preds = %vec.epilog.iter.check750, %.critedge.i24.us.us
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %.critedge.i24.us.us ], [ %n.vec741, %vec.epilog.iter.check750 ] ; 2 uses
  %i.wv = shl nuw nsw i64 %indvars.iv261, 1
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.wv
  store i16 %i.wm, ptr %i.ww, align 2, !tbaa !40
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %.loopexit103.us.us, label %.critedge.i24.us.us, !llvm.loop !175

bb.ai:                                            ; preds = %bb.ah
  br i1 %or.cond3.not.i47.us.us, label %.thread82.us.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.wx = sub nsw i64 0, %i.vb
  %i.wy = getelementptr inbounds i8, ptr %.0175.i182.us.us, i64 %i.wx ; 2 uses
  %i.wz = sub nsw i64 0, %i.va
  %i.xa = getelementptr inbounds i8, ptr %.0.i185.us.us, i64 %i.wz ; 2 uses
  %i.xb = select i1 %i.ul, ptr %i.xa, ptr %i.wy   ; 2 uses
  br i1 %i.vj, label %bb.ak, label %.thread83.us.us

bb.ak:                                            ; preds = %bb.aj
  %i.xc = icmp eq i32 %.1185.i179.us.us, 0
  %or.cond7.i48.us.us = or i1 %i.ul, %i.xc
  %spec.select353 = select i1 %or.cond7.i48.us.us, ptr %i.xa, ptr %i.wy
  br label %.thread83.us.us

.thread82.us.us:                                  ; preds = %bb.ai
  %i.xd = getelementptr inbounds nuw i8, ptr %i.vf, i64 19136
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv.next304
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !70
  %i.xg = lshr i32 8, %i.vd
  %i.xh = shl i32 %.1185.i179.us.us, 3
  %i.xi = mul i32 %i.th, %i.xg
  %i.xj = add i32 %i.xi, %i.xh
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds i8, ptr %i.xf, i64 %i.xk ; 2 uses
  br label %.thread83.us.us

.thread83.us.us:                                  ; preds = %bb.ak, %.thread82.us.us, %bb.aj
  %.0280.i22.ph.us.us = phi ptr [ %i.xl, %.thread82.us.us ], [ %i.xb, %bb.ak ], [ %i.xb, %bb.aj ] ; 10 uses
  %.0279.i23.ph.us.us = phi ptr [ %i.xl, %.thread82.us.us ], [ %spec.select353, %bb.ak ], [ undef, %bb.aj ] ; 6 uses
  %i.xm = and i64 %i.vv, 2189
  %.not289.not.i35.us.us = icmp ne i64 %i.xm, 0
  %i.xn = icmp eq ptr %.0280.i22.ph.us.us, %.0279.i23.ph.us.us
  %or.cond301.i36.us.us = select i1 %i.vj, i1 %i.xn, i1 false
  %or.cond308.i37.us.us = select i1 %.not289.not.i35.us.us, i1 true, i1 %or.cond301.i36.us.us
  br i1 %or.cond308.i37.us.us, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.thread83.us.us
  br i1 %i.wf, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not291.old.i42.us.us = icmp sgt i32 %i.vx, %i.we
  br i1 %.not291.old.i42.us.us, label %bb.ao, label %.loopexit.us.us

bb.an:                                            ; preds = %bb.al
  %.not309 = xor i1 %i.wh, true
  %or.cond9.i43.us.us = select i1 %.not309, i1 true, i1 %i.vk
  %i.xo = add nuw nsw i32 %spec.select.i20.us.us, %i.vx
  %.not291.i45.us.us = icmp sle i32 %i.xo, %i.we
  %or.cond302.i46.not.us.us = select i1 %or.cond9.i43.us.us, i1 %.not291.i45.us.us, i1 false
  br i1 %or.cond302.i46.not.us.us, label %.loopexit.us.us, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %.thread83.us.us
  %.not292.i38.us.us = icmp sgt i32 %i.vx, %i.we
  br i1 %.not292.i38.us.us, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.xp = shl i32 8, %.pre308
  %i.xq = sext i32 %i.xp to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ta, ptr align 1 %.0280.i22.ph.us.us, i64 %i.xq, i1 false)
  br label %.loopexit103.us.us

bb.aq:                                            ; preds = %bb.ao
  %i.xr = shl i32 %i.wd, 3                        ; 2 uses
  %i.xs = sext i32 %i.xr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ta, ptr align 1 %.0280.i22.ph.us.us, i64 %i.xs, i1 false)
  %i.xt = add i32 %i.xr, -2
  %i.xu = sext i32 %i.xt to i64
  %i.xv = getelementptr inbounds i8, ptr %i.ta, i64 %i.xu
  %i.xw = load i16, ptr %i.xv, align 2, !tbaa !40 ; 3 uses
  %i.xx = sub nsw i32 %i.vx, %i.we                ; 3 uses
  %i.xy = icmp sgt i32 %i.xx, 0
  br i1 %i.xy, label %iter.check722, label %.loopexit103.us.us

iter.check722:                                    ; preds = %bb.aq
  %i.xz = sext i32 %i.we to i64                   ; 3 uses
  %i.ya = zext nneg i32 %i.xx to i64              ; 5 uses
  %min.iters.check712 = icmp ult i32 %i.xx, 16
  br i1 %min.iters.check712, label %vec.epilog.ph726, label %vector.ph713

vector.ph713:                                     ; preds = %iter.check722
  %i.yb = and i64 %i.ya, 12
  %n.vec714 = and i64 %i.ya, 2147483632           ; 4 uses
  %broadcast.splatinsert715 = insertelement <8 x i16> poison, i16 %i.xw, i64 0
  %broadcast.splat716 = shufflevector <8 x i16> %broadcast.splatinsert715, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body717

vector.body717:                                   ; preds = %vector.ph713, %vector.body717
  %index718 = phi i64 [ 0, %vector.ph713 ], [ %index.next719, %vector.body717 ] ; 2 uses
  %i.yc = add nsw i64 %index718, %i.xz
  %i.yd = shl nsw i64 %i.yc, 1
  %i.ye = getelementptr inbounds i8, ptr %i.ta, i64 %i.yd ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  store <8 x i16> %broadcast.splat716, ptr %i.ye, align 8, !tbaa !40
  store <8 x i16> %broadcast.splat716, ptr %i.yf, align 8, !tbaa !40
  %index.next719 = add nuw i64 %index718, 16      ; 2 uses
  %i.yg = icmp eq i64 %index.next719, %n.vec714
  br i1 %i.yg, label %middle.block720, label %vector.body717, !llvm.loop !176

middle.block720:                                  ; preds = %vector.body717
  %cmp.n721 = icmp eq i64 %n.vec714, %i.ya
  br i1 %cmp.n721, label %.loopexit103.us.us, label %vec.epilog.iter.check723

vec.epilog.iter.check723:                         ; preds = %middle.block720
  %min.epilog.iters.check725 = icmp eq i64 %i.yb, 0
  br i1 %min.epilog.iters.check725, label %.lr.ph159.us.us, label %vec.epilog.ph726, !prof !208

vec.epilog.ph726:                                 ; preds = %iter.check722, %vec.epilog.iter.check723
  %vec.epilog.resume.val727 = phi i64 [ %n.vec714, %vec.epilog.iter.check723 ], [ 0, %iter.check722 ]
  %broadcast.splatinsert729 = insertelement <4 x i16> poison, i16 %i.xw, i64 0
  %broadcast.splat730 = shufflevector <4 x i16> %broadcast.splatinsert729, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body731

vec.epilog.vector.body731:                        ; preds = %vec.epilog.vector.body731, %vec.epilog.ph726
  %index732 = phi i64 [ %vec.epilog.resume.val727, %vec.epilog.ph726 ], [ %index.next733, %vec.epilog.vector.body731 ] ; 2 uses
  %i.yh = add nsw i64 %index732, %i.xz
  %i.yi = shl nsw i64 %i.yh, 1
  %i.yj = getelementptr inbounds i8, ptr %i.ta, i64 %i.yi
  store <4 x i16> %broadcast.splat730, ptr %i.yj, align 8, !tbaa !40
  %index.next733 = add nuw i64 %index732, 4       ; 2 uses
  %i.yk = icmp eq i64 %index.next733, %i.ya
  br i1 %i.yk, label %.loopexit103.us.us, label %vec.epilog.vector.body731, !llvm.loop !177

.lr.ph159.us.us:                                  ; preds = %vec.epilog.iter.check723, %.lr.ph159.us.us
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %.lr.ph159.us.us ], [ %n.vec714, %vec.epilog.iter.check723 ] ; 2 uses
  %i.yl = add nsw i64 %indvars.iv266, %i.xz
  %i.ym = shl nsw i64 %i.yl, 1
  %i.yn = getelementptr inbounds i8, ptr %i.ta, i64 %i.ym
  store i16 %i.xw, ptr %i.yn, align 2, !tbaa !40
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %i.yo = icmp samesign ult i64 %indvars.iv.next267, %i.ya
  br i1 %i.yo, label %.lr.ph159.us.us, label %.loopexit103.us.us, !llvm.loop !178

.loopexit103.us.us:                               ; preds = %.critedge.i24.us.us, %vec.epilog.vector.body758, %.lr.ph159.us.us, %vec.epilog.vector.body731, %middle.block747, %middle.block720, %bb.aq, %.critedge.i24.preheader.us.us, %bb.ap
  %.0279.i2391.us.us = phi ptr [ undef, %.critedge.i24.preheader.us.us ], [ %.0279.i23.ph.us.us, %bb.ap ], [ %.0279.i23.ph.us.us, %middle.block720 ], [ %.0279.i23.ph.us.us, %bb.aq ], [ undef, %vec.epilog.vector.body758 ], [ undef, %middle.block747 ], [ %.0279.i23.ph.us.us, %.lr.ph159.us.us ], [ %.0279.i23.ph.us.us, %vec.epilog.vector.body731 ], [ undef, %.critedge.i24.us.us ]
  %.0280.i2288.us.us = phi ptr [ undef, %.critedge.i24.preheader.us.us ], [ %.0280.i22.ph.us.us, %bb.ap ], [ %.0280.i22.ph.us.us, %middle.block720 ], [ %.0280.i22.ph.us.us, %bb.aq ], [ undef, %vec.epilog.vector.body758 ], [ undef, %middle.block747 ], [ %.0280.i22.ph.us.us, %.lr.ph159.us.us ], [ %.0280.i22.ph.us.us, %vec.epilog.vector.body731 ], [ undef, %.critedge.i24.us.us ]
  %i.yp = and i64 %i.vv, 2189
  %.not293.not.i26.us.us = icmp eq i64 %i.yp, 0
  br i1 %.not293.not.i26.us.us, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %.loopexit103.us.us
  %or.cond11.i34.us.us = and i1 %i.ui, %i.vj
  br i1 %or.cond11.i34.us.us, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.yq = add nsw i32 %i.vn, -8
  %i.yr = shl i32 128, %i.yq
  %i.ys = add nuw i32 %i.yr, %i.um
  %i.yt = trunc i32 %i.ys to i16
  br label %.sink.split354

bb.at:                                            ; preds = %bb.ar
  %i.yu = getelementptr inbounds i8, ptr %.0279.i2391.us.us, i64 -2
  %i.yv = load i16, ptr %i.yu, align 2, !tbaa !40
  br label %.sink.split354

.sink.split354:                                   ; preds = %bb.as, %bb.at
  %.sink355 = phi i16 [ %i.yv, %bb.at ], [ %i.yt, %bb.as ]
  store i16 %.sink355, ptr %i.ti, align 2, !tbaa !40
  br label %bb.au

bb.au:                                            ; preds = %.sink.split354, %.loopexit103.us.us
  %or.cond304.i28.us.us = and i1 %i.wf, %i.wh
  br i1 %or.cond304.i28.us.us, label %bb.av, label %.loopexit.us.us

bb.av:                                            ; preds = %bb.au
  %or.cond13.i29.us.us = select i1 %i.ui, i1 %i.vk, i1 false
  %i.yw = add nuw nsw i32 %spec.select.i20.us.us, %i.vx
  %.not295.i31.us.us = icmp sle i32 %i.yw, %i.we
  %or.cond306.i32.not.us.us = select i1 %or.cond13.i29.us.us, i1 %.not295.i31.us.us, i1 false
  br i1 %or.cond306.i32.not.us.us, label %bb.aw, label %.loopexit.us.us.loopexit

.loopexit.us.us.loopexit:                         ; preds = %bb.av
  %i.yx = load <1 x i16>, ptr %i.tj, align 2
  %i.yy = shufflevector <1 x i16> %i.yx, <1 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.yy, ptr %i.tx, align 8, !tbaa !40
  br label %.loopexit.us.us

bb.aw:                                            ; preds = %bb.av
  %i.yz = getelementptr inbounds nuw i8, ptr %.0280.i2288.us.us, i64 8
  %i.za = load i64, ptr %i.yz, align 1
  store i64 %i.za, ptr %i.tk, align 8
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.loopexit, %bb.aw, %bb.au, %bb.an, %bb.am, %bb.ag
  %.0.us.us = phi ptr [ %.0280.i22.ph.us.us, %bb.an ], [ %i.ta, %bb.aw ], [ %i.ta, %bb.au ], [ %i.ta, %bb.ag ], [ %.0280.i22.ph.us.us, %bb.am ], [ %i.ta, %.loopexit.us.us.loopexit ]
  %i.zb = and i64 %i.vv, 30857
  %.not296.not.i7.us.us = icmp eq i64 %i.zb, 0
  br i1 %.not296.not.i7.us.us, label %bb.ax, label %check_intra_mode.exit49.us.us

bb.ax:                                            ; preds = %.loopexit.us.us
  %i.zc = shl i32 4, %.pre308                     ; 15 uses
  br i1 %i.vj, label %bb.ay, label %.preheader100.us.us

.preheader100.us.us:                              ; preds = %bb.ax
  %i.zd = icmp sgt i32 %i.zc, 0
  br i1 %i.zd, label %iter.check695, label %check_intra_mode.exit49.us.us

iter.check695:                                    ; preds = %.preheader100.us.us
  %i.ze = add nsw i32 %i.vn, -8
  %i.zf = shl i32 128, %i.ze
  %i.zg = trunc i32 %i.zf to i16
  %i.zh = or disjoint i16 %i.zg, 1                ; 3 uses
  %wide.trip.count276 = zext nneg i32 %i.zc to i64 ; 5 uses
  %min.iters.check685 = icmp ult i32 %i.zc, 16
  br i1 %min.iters.check685, label %vec.epilog.ph699, label %vector.ph686

vector.ph686:                                     ; preds = %iter.check695
  %i.zi = and i64 %wide.trip.count276, 12
  %n.vec687 = and i64 %wide.trip.count276, 2147483632 ; 4 uses
  %broadcast.splatinsert688 = insertelement <8 x i16> poison, i16 %i.zh, i64 0
  %broadcast.splat689 = shufflevector <8 x i16> %broadcast.splatinsert688, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body690

vector.body690:                                   ; preds = %vector.ph686, %vector.body690
  %index691 = phi i64 [ 0, %vector.ph686 ], [ %index.next692, %vector.body690 ] ; 2 uses
  %i.zj = shl nuw nsw i64 %index691, 1
  %i.zk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zj ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  store <8 x i16> %broadcast.splat689, ptr %i.zk, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat689, ptr %i.zl, align 16, !tbaa !40
  %index.next692 = add nuw i64 %index691, 16      ; 2 uses
  %i.zm = icmp eq i64 %index.next692, %n.vec687
  br i1 %i.zm, label %middle.block693, label %vector.body690, !llvm.loop !179

middle.block693:                                  ; preds = %vector.body690
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count276
  br i1 %cmp.n694, label %check_intra_mode.exit49.us.us, label %vec.epilog.iter.check696

vec.epilog.iter.check696:                         ; preds = %middle.block693
  %min.epilog.iters.check698 = icmp eq i64 %i.zi, 0
  br i1 %min.epilog.iters.check698, label %vec.epilog.scalar.ph697, label %vec.epilog.ph699, !prof !208

vec.epilog.ph699:                                 ; preds = %iter.check695, %vec.epilog.iter.check696
  %vec.epilog.resume.val700 = phi i64 [ %n.vec687, %vec.epilog.iter.check696 ], [ 0, %iter.check695 ]
  %broadcast.splatinsert702 = insertelement <4 x i16> poison, i16 %i.zh, i64 0
  %broadcast.splat703 = shufflevector <4 x i16> %broadcast.splatinsert702, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body704

vec.epilog.vector.body704:                        ; preds = %vec.epilog.vector.body704, %vec.epilog.ph699
  %index705 = phi i64 [ %vec.epilog.resume.val700, %vec.epilog.ph699 ], [ %index.next706, %vec.epilog.vector.body704 ] ; 2 uses
  %i.zn = shl nuw nsw i64 %index705, 1
  %i.zo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zn
  store <4 x i16> %broadcast.splat703, ptr %i.zo, align 8, !tbaa !40
  %index.next706 = add nuw i64 %index705, 4       ; 2 uses
  %i.zp = icmp eq i64 %index.next706, %wide.trip.count276
  br i1 %i.zp, label %check_intra_mode.exit49.us.us, label %vec.epilog.vector.body704, !llvm.loop !180

vec.epilog.scalar.ph697:                          ; preds = %vec.epilog.iter.check696, %vec.epilog.scalar.ph697
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %vec.epilog.scalar.ph697 ], [ %n.vec687, %vec.epilog.iter.check696 ] ; 2 uses
  %i.zq = shl nuw nsw i64 %indvars.iv273, 1
  %i.zr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zq
  store i16 %i.zh, ptr %i.zr, align 2, !tbaa !40
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %check_intra_mode.exit49.us.us, label %vec.epilog.scalar.ph697, !llvm.loop !181

bb.ay:                                            ; preds = %bb.ax
  %i.zs = getelementptr inbounds nuw i8, ptr %i.vf, i64 3960
  %i.zt = load i32, ptr %i.zs, align 8, !tbaa !67
  %i.zu = sub i32 %i.zt, %i.g
  %.not297.i.us.us = icmp eq i8 %i.ve, 0
  %i.zv = zext i1 %.not297.i.us.us to i32
  %i.zw = shl i32 %i.zu, %i.zv
  %i.zx = sub i32 %i.zw, %.1183.i191.us.us        ; 2 uses
  %i.zy = shl i32 %i.zx, 2                        ; 10 uses
  %i.zz = icmp eq i32 %.1185.i179.us.us, 0        ; 2 uses
  %i.aaa = select i1 %i.zz, ptr %.0.i185.us.us, ptr %.0175.i182.us.us ; 48 uses
  %i.aab = select i1 %i.zz, i64 %i.va, i64 %i.vb  ; 12 uses
  %.not298.not.i9.us.us = icmp eq i8 %i.vt, 8
  %.not300.i14.us.us = icmp sgt i32 %i.zc, %i.zy  ; 2 uses
  br i1 %.not298.not.i9.us.us, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %.not300.i14.us.us, label %.preheader97.us.us, label %.preheader98.us.us

.preheader98.us.us:                               ; preds = %bb.az
  %i.aac = icmp sgt i32 %i.zc, 0
  br i1 %i.aac, label %vector.scevcheck652, label %check_intra_mode.exit49.us.us

vector.scevcheck652:                              ; preds = %.preheader98.us.us
  %17 = zext nneg i32 %i.zc to i64                ; 3 uses
  %wide.trip.count281 = zext nneg i32 %i.zc to i64 ; 5 uses
  %i.aad = icmp ugt i32 %i.zc, 7
  %ident.check650.not = icmp eq i64 %i.aab, 1
  %or.cond758 = select i1 %i.aad, i1 %ident.check650.not, i1 false
  br i1 %or.cond758, label %vector.memcheck670, label %.lr.ph164.us.us.preheader775

vector.memcheck670:                               ; preds = %vector.scevcheck652
  %18 = shl nuw nsw i64 %wide.trip.count281, 1
  %i.aae = getelementptr i8, ptr %i.b, i64 %18
  %i.aaf = getelementptr i8, ptr %i.aaa, i64 -2
  %i.aag = getelementptr i8, ptr %i.aaa, i64 %wide.trip.count281
  %i.aah = getelementptr i8, ptr %i.aag, i64 -1
  %bound0671 = icmp ult ptr %i.b, %i.aah
  %bound1672 = icmp ult ptr %i.aaf, %i.aae
  %found.conflict673 = and i1 %bound0671, %bound1672
  br i1 %found.conflict673, label %.lr.ph164.us.us.preheader775, label %vector.ph674

vector.ph674:                                     ; preds = %vector.memcheck670
  %n.vec675 = and i64 %wide.trip.count281, 2147483640 ; 3 uses
  br label %vector.body676

vector.body676:                                   ; preds = %vector.body676, %vector.ph674
  %index677 = phi i64 [ 0, %vector.ph674 ], [ %index.next679, %vector.body676 ] ; 10 uses
  %i.aai = getelementptr inbounds i8, ptr %i.aaa, i64 %index677
  %i.aaj = getelementptr i8, ptr %i.aaa, i64 %index677
  %i.aak = getelementptr i8, ptr %i.aaa, i64 %index677
  %i.aal = getelementptr i8, ptr %i.aaa, i64 %index677
  %i.aam = getelementptr i8, ptr %i.aaa, i64 %index677
  %i.aan = getelementptr i8, ptr %i.aaa, i64 %index677
  %i.aao = getelementptr i8, ptr %i.aaa, i64 %index677
  %i.aap = getelementptr i8, ptr %i.aaa, i64 %index677
  %i.aaq = getelementptr inbounds i8, ptr %i.aai, i64 -2
  %i.aar = getelementptr i8, ptr %i.aaj, i64 -1
  %i.aas = getelementptr i8, ptr %i.aal, i64 1
  %i.aat = getelementptr i8, ptr %i.aam, i64 2
  %i.aau = getelementptr i8, ptr %i.aan, i64 3
  %i.aav = getelementptr i8, ptr %i.aao, i64 4
  %i.aaw = getelementptr i8, ptr %i.aap, i64 5
  %i.aax = load i16, ptr %i.aaq, align 2, !tbaa !40, !alias.scope !209
  %i.aay = load i16, ptr %i.aar, align 2, !tbaa !40, !alias.scope !209
  %i.aaz = load i16, ptr %i.aak, align 2, !tbaa !40, !alias.scope !209
  %i.aba = load i16, ptr %i.aas, align 2, !tbaa !40, !alias.scope !209
  %i.abb = load i16, ptr %i.aat, align 2, !tbaa !40, !alias.scope !209
  %i.abc = load i16, ptr %i.aau, align 2, !tbaa !40, !alias.scope !209
  %i.abd = load i16, ptr %i.aav, align 2, !tbaa !40, !alias.scope !209
  %i.abe = load i16, ptr %i.aaw, align 2, !tbaa !40, !alias.scope !209
  %i.abf = insertelement <8 x i16> poison, i16 %i.aax, i64 0
  %i.abg = insertelement <8 x i16> %i.abf, i16 %i.aay, i64 1
  %i.abh = insertelement <8 x i16> %i.abg, i16 %i.aaz, i64 2
  %i.abi = insertelement <8 x i16> %i.abh, i16 %i.aba, i64 3
  %i.abj = insertelement <8 x i16> %i.abi, i16 %i.abb, i64 4
  %i.abk = insertelement <8 x i16> %i.abj, i16 %i.abc, i64 5
  %i.abl = insertelement <8 x i16> %i.abk, i16 %i.abd, i64 6
  %i.abm = insertelement <8 x i16> %i.abl, i16 %i.abe, i64 7
  %19 = xor i64 %index677, -1
  %20 = add nsw i64 %17, %19
  %21 = shl nsw i64 %20, 1
  %i.abn = getelementptr inbounds i8, ptr %i.b, i64 %21
  %i.abo = getelementptr inbounds i8, ptr %i.abn, i64 -14
  %reverse678 = shufflevector <8 x i16> %i.abm, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse678, ptr %i.abo, align 8, !tbaa !40, !alias.scope !210, !noalias !209
  %index.next679 = add nuw i64 %index677, 8       ; 2 uses
  %i.abp = icmp eq i64 %index.next679, %n.vec675
  br i1 %i.abp, label %middle.block680, label %vector.body676, !llvm.loop !185

middle.block680:                                  ; preds = %vector.body676
  %cmp.n681 = icmp eq i64 %n.vec675, %wide.trip.count281
  br i1 %cmp.n681, label %check_intra_mode.exit49.us.us, label %.lr.ph164.us.us.preheader775

.lr.ph164.us.us.preheader775:                     ; preds = %vector.memcheck670, %vector.scevcheck652, %middle.block680
  %indvars.iv278.ph = phi i64 [ 0, %vector.memcheck670 ], [ 0, %vector.scevcheck652 ], [ %n.vec675, %middle.block680 ]
  br label %.lr.ph164.us.us

.lr.ph164.us.us:                                  ; preds = %.lr.ph164.us.us, %.lr.ph164.us.us.preheader775
  %indvars.iv278 = phi i64 [ %indvars.iv278.ph, %.lr.ph164.us.us.preheader775 ], [ %indvars.iv.next279.1, %.lr.ph164.us.us ] ; 5 uses
  %i.abq = mul nsw i64 %i.aab, %indvars.iv278
  %i.abr = getelementptr inbounds i8, ptr %i.aaa, i64 %i.abq
  %i.abs = getelementptr inbounds i8, ptr %i.abr, i64 -2
  %i.abt = load i16, ptr %i.abs, align 2, !tbaa !40
  %22 = xor i64 %indvars.iv278, -1
  %23 = add nsw i64 %17, %22
  %24 = shl nsw i64 %23, 1
  %i.abu = getelementptr inbounds i8, ptr %i.b, i64 %24
  store i16 %i.abt, ptr %i.abu, align 2, !tbaa !40
  %indvars.iv.next279 = or disjoint i64 %indvars.iv278, 1
  %i.abv = mul nsw i64 %i.aab, %indvars.iv.next279
  %i.abw = getelementptr inbounds i8, ptr %i.aaa, i64 %i.abv
  %i.abx = getelementptr inbounds i8, ptr %i.abw, i64 -2
  %i.aby = load i16, ptr %i.abx, align 2, !tbaa !40
  %25 = xor i64 %indvars.iv278, -2
  %26 = add nsw i64 %25, %17
  %27 = shl nsw i64 %26, 1
  %i.abz = getelementptr inbounds i8, ptr %i.b, i64 %27
  store i16 %i.aby, ptr %i.abz, align 2, !tbaa !40
  %indvars.iv.next279.1 = add nuw nsw i64 %indvars.iv278, 2 ; 2 uses
  %exitcond282.not.1 = icmp eq i64 %indvars.iv.next279.1, %wide.trip.count281
  br i1 %exitcond282.not.1, label %check_intra_mode.exit49.us.us, label %.lr.ph164.us.us, !llvm.loop !186

.preheader97.us.us:                               ; preds = %bb.az
  %i.aca = icmp sgt i32 %i.zy, 0
  br i1 %i.aca, label %.lr.ph166.us.us.preheader, label %._crit_edge.us195.us

.lr.ph166.us.us.preheader:                        ; preds = %.preheader97.us.us
  %i.acb = zext nneg i32 %i.zy to i64             ; 6 uses
  %min.iters.check638 = icmp ult i32 %i.zy, 32
  br i1 %min.iters.check638, label %.lr.ph166.us.us.preheader774, label %vector.scevcheck622

vector.scevcheck622:                              ; preds = %.lr.ph166.us.us.preheader
  %ident.check623 = icmp ne i64 %i.aab, 1
  %i.acc = add nsw i64 %i.acb, -1                 ; 2 uses
  %i.acd = shl i32 8, %.pre308
  %i.ace = add i32 %i.acd, -2                     ; 2 uses
  %i.acf = trunc nsw i64 %i.acc to i32
  %mul.result625 = shl i32 %i.acf, 1
  %28 = sub i32 %i.ace, %mul.result625
  %29 = icmp sgt i32 %28, %i.ace
  %i.acg = icmp ugt i64 %i.acc, 4294967295
  %i.ach = or i1 %29, %i.acg
  %i.aci = or i1 %ident.check623, %i.ach
  br i1 %i.aci, label %.lr.ph166.us.us.preheader774, label %vector.memcheck639

vector.memcheck639:                               ; preds = %vector.scevcheck622
  %i.acj = getelementptr i8, ptr %i.aaa, i64 -2
  %i.ack = getelementptr i8, ptr %i.aaa, i64 %i.acb
  %i.acl = getelementptr i8, ptr %i.ack, i64 -1
  %i.acm = shl i32 8, %.pre308
  %i.acn = add i32 %i.acm, -8
  %30 = sext i32 %i.acn to i64                    ; 2 uses
  %i.aco = shl nuw nsw i64 %i.acb, 1
  %i.acp = sub nsw i64 %30, %i.aco
  %i.acq = getelementptr i8, ptr %scevgep, i64 %i.acp
  %i.acr = getelementptr i8, ptr %scevgep, i64 %30
  %bound0640 = icmp ult ptr %i.acj, %i.acr
  %bound1641 = icmp ult ptr %i.acq, %i.acl
  %found.conflict642 = and i1 %bound0640, %bound1641
  br i1 %found.conflict642, label %.lr.ph166.us.us.preheader774, label %vector.ph643

vector.ph643:                                     ; preds = %vector.memcheck639
  %n.vec644 = and i64 %i.acb, 2147483640          ; 3 uses
  br label %vector.body645

vector.body645:                                   ; preds = %vector.body645, %vector.ph643
  %index646 = phi i64 [ 0, %vector.ph643 ], [ %index.next648, %vector.body645 ] ; 10 uses
  %i.acs = getelementptr inbounds i8, ptr %i.aaa, i64 %index646
  %i.act = getelementptr i8, ptr %i.aaa, i64 %index646
  %i.acu = getelementptr i8, ptr %i.aaa, i64 %index646
  %i.acv = getelementptr i8, ptr %i.aaa, i64 %index646
  %i.acw = getelementptr i8, ptr %i.aaa, i64 %index646
  %i.acx = getelementptr i8, ptr %i.aaa, i64 %index646
  %i.acy = getelementptr i8, ptr %i.aaa, i64 %index646
  %i.acz = getelementptr i8, ptr %i.aaa, i64 %index646
  %i.ada = getelementptr inbounds i8, ptr %i.acs, i64 -2
  %i.adb = getelementptr i8, ptr %i.act, i64 -1
  %i.adc = getelementptr i8, ptr %i.acv, i64 1
  %i.add = getelementptr i8, ptr %i.acw, i64 2
  %i.ade = getelementptr i8, ptr %i.acx, i64 3
  %i.adf = getelementptr i8, ptr %i.acy, i64 4
  %i.adg = getelementptr i8, ptr %i.acz, i64 5
  %i.adh = load i16, ptr %i.ada, align 2, !tbaa !40, !alias.scope !211, !noalias !212
  %i.adi = load i16, ptr %i.adb, align 2, !tbaa !40, !alias.scope !211, !noalias !212
  %i.adj = load i16, ptr %i.acu, align 2, !tbaa !40, !alias.scope !211, !noalias !212
  %i.adk = load i16, ptr %i.adc, align 2, !tbaa !40, !alias.scope !211, !noalias !212
  %i.adl = load i16, ptr %i.add, align 2, !tbaa !40, !alias.scope !211, !noalias !212
  %i.adm = load i16, ptr %i.ade, align 2, !tbaa !40, !alias.scope !211, !noalias !212
  %i.adn = load i16, ptr %i.adf, align 2, !tbaa !40, !alias.scope !211, !noalias !212
  %i.ado = load i16, ptr %i.adg, align 2, !tbaa !40, !alias.scope !211, !noalias !212
  %i.adp = insertelement <8 x i16> poison, i16 %i.adh, i64 0
  %i.adq = insertelement <8 x i16> %i.adp, i16 %i.adi, i64 1
  %i.adr = insertelement <8 x i16> %i.adq, i16 %i.adj, i64 2
  %i.ads = insertelement <8 x i16> %i.adr, i16 %i.adk, i64 3
  %i.adt = insertelement <8 x i16> %i.ads, i16 %i.adl, i64 4
  %i.adu = insertelement <8 x i16> %i.adt, i16 %i.adm, i64 5
  %i.adv = insertelement <8 x i16> %i.adu, i16 %i.adn, i64 6
  %i.adw = insertelement <8 x i16> %i.adv, i16 %i.ado, i64 7
  %i.adx = trunc nuw nsw i64 %index646 to i32
  %i.ady = xor i32 %i.adx, -1
  %i.adz = add i32 %i.zc, %i.ady
  %i.aea = shl nsw i32 %i.adz, 1
  %31 = sext i32 %i.aea to i64
  %i.aeb = getelementptr inbounds i8, ptr %i.b, i64 %31
  %i.aec = getelementptr inbounds i8, ptr %i.aeb, i64 -14
  %reverse647 = shufflevector <8 x i16> %i.adw, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse647, ptr %i.aec, align 2, !tbaa !40, !alias.scope !212
  %index.next648 = add nuw i64 %index646, 8       ; 2 uses
  %i.aed = icmp eq i64 %index.next648, %n.vec644
  br i1 %i.aed, label %middle.block649, label %vector.body645, !llvm.loop !190

middle.block649:                                  ; preds = %vector.body645
  %cmp.n650 = icmp eq i64 %n.vec644, %i.acb
  br i1 %cmp.n650, label %._crit_edge.us195.us, label %.lr.ph166.us.us.preheader774

.lr.ph166.us.us.preheader774:                     ; preds = %vector.memcheck639, %vector.scevcheck622, %.lr.ph166.us.us.preheader, %middle.block649
  %indvars.iv283.ph = phi i64 [ 0, %vector.memcheck639 ], [ 0, %vector.scevcheck622 ], [ 0, %.lr.ph166.us.us.preheader ], [ %n.vec644, %middle.block649 ]
  br label %.lr.ph166.us.us

.lr.ph166.us.us:                                  ; preds = %.lr.ph166.us.us.preheader774, %.lr.ph166.us.us
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %.lr.ph166.us.us ], [ %indvars.iv283.ph, %.lr.ph166.us.us.preheader774 ] ; 3 uses
  %i.aee = mul nsw i64 %i.aab, %indvars.iv283
  %i.aef = getelementptr inbounds i8, ptr %i.aaa, i64 %i.aee
  %i.aeg = getelementptr inbounds i8, ptr %i.aef, i64 -2
  %i.aeh = load i16, ptr %i.aeg, align 2, !tbaa !40
  %i.aei = trunc nuw nsw i64 %indvars.iv283 to i32
  %i.aej = xor i32 %i.aei, -1
  %i.aek = add i32 %i.zc, %i.aej
  %i.ael = shl nsw i32 %i.aek, 1
  %32 = sext i32 %i.ael to i64
  %i.aem = getelementptr inbounds i8, ptr %i.b, i64 %32
  store i16 %i.aeh, ptr %i.aem, align 2, !tbaa !40
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %i.aen = icmp samesign ult i64 %indvars.iv.next284, %i.acb
  br i1 %i.aen, label %.lr.ph166.us.us, label %._crit_edge.us195.us, !llvm.loop !191

._crit_edge.us195.us:                             ; preds = %.lr.ph166.us.us, %middle.block649, %.preheader97.us.us
  %i.aeo = sub nsw i32 %i.zc, %i.zy               ; 4 uses
  %i.aep = shl nuw nsw i32 %i.aeo, 1
  %i.aeq = zext nneg i32 %i.aep to i64
  %i.aer = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aeq
  %i.aes = load i16, ptr %i.aer, align 8, !tbaa !40 ; 3 uses
  %i.aet = icmp sgt i32 %i.aeo, 0
  br i1 %i.aet, label %iter.check607, label %check_intra_mode.exit49.us.us

iter.check607:                                    ; preds = %._crit_edge.us195.us
  %i.aeu = zext nneg i32 %i.aeo to i64            ; 5 uses
  %min.iters.check597 = icmp ult i32 %i.aeo, 16
  br i1 %min.iters.check597, label %vec.epilog.ph611, label %vector.ph598

vector.ph598:                                     ; preds = %iter.check607
  %i.aev = and i64 %i.aeu, 12
  %n.vec599 = and i64 %i.aeu, 2147483632          ; 4 uses
  %broadcast.splatinsert600 = insertelement <8 x i16> poison, i16 %i.aes, i64 0
  %broadcast.splat601 = shufflevector <8 x i16> %broadcast.splatinsert600, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body602

vector.body602:                                   ; preds = %vector.ph598, %vector.body602
  %index603 = phi i64 [ 0, %vector.ph598 ], [ %index.next604, %vector.body602 ] ; 2 uses
  %i.aew = shl nuw nsw i64 %index603, 1
  %i.aex = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aew ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 16
  store <8 x i16> %broadcast.splat601, ptr %i.aex, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat601, ptr %i.aey, align 16, !tbaa !40
  %index.next604 = add nuw i64 %index603, 16      ; 2 uses
  %i.aez = icmp eq i64 %index.next604, %n.vec599
  br i1 %i.aez, label %middle.block605, label %vector.body602, !llvm.loop !192

middle.block605:                                  ; preds = %vector.body602
  %cmp.n606 = icmp eq i64 %n.vec599, %i.aeu
  br i1 %cmp.n606, label %check_intra_mode.exit49.us.us, label %vec.epilog.iter.check608

vec.epilog.iter.check608:                         ; preds = %middle.block605
  %min.epilog.iters.check610 = icmp eq i64 %i.aev, 0
  br i1 %min.epilog.iters.check610, label %.lr.ph169.us.us, label %vec.epilog.ph611, !prof !208

vec.epilog.ph611:                                 ; preds = %iter.check607, %vec.epilog.iter.check608
  %vec.epilog.resume.val612 = phi i64 [ %n.vec599, %vec.epilog.iter.check608 ], [ 0, %iter.check607 ]
  %broadcast.splatinsert614 = insertelement <4 x i16> poison, i16 %i.aes, i64 0
  %broadcast.splat615 = shufflevector <4 x i16> %broadcast.splatinsert614, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body616

vec.epilog.vector.body616:                        ; preds = %vec.epilog.vector.body616, %vec.epilog.ph611
  %index617 = phi i64 [ %vec.epilog.resume.val612, %vec.epilog.ph611 ], [ %index.next618, %vec.epilog.vector.body616 ] ; 2 uses
  %i.afa = shl nuw nsw i64 %index617, 1
  %i.afb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.afa
  store <4 x i16> %broadcast.splat615, ptr %i.afb, align 8, !tbaa !40
  %index.next618 = add nuw i64 %index617, 4       ; 2 uses
  %i.afc = icmp eq i64 %index.next618, %i.aeu
  br i1 %i.afc, label %check_intra_mode.exit49.us.us, label %vec.epilog.vector.body616, !llvm.loop !193

.lr.ph169.us.us:                                  ; preds = %vec.epilog.iter.check608, %.lr.ph169.us.us
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %.lr.ph169.us.us ], [ %n.vec599, %vec.epilog.iter.check608 ] ; 2 uses
  %i.afd = shl nuw nsw i64 %indvars.iv286, 1
  %i.afe = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.afd
  store i16 %i.aes, ptr %i.afe, align 2, !tbaa !40
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.aff = icmp samesign ult i64 %indvars.iv.next287, %i.aeu
  br i1 %i.aff, label %.lr.ph169.us.us, label %check_intra_mode.exit49.us.us, !llvm.loop !194

bb.ba:                                            ; preds = %bb.ay
  br i1 %.not300.i14.us.us, label %.preheader.us.us, label %.preheader94.us.us

.preheader94.us.us:                               ; preds = %bb.ba
  %i.afg = icmp sgt i32 %i.zc, 0
  br i1 %i.afg, label %.lr.ph171.us.us.preheader, label %check_intra_mode.exit49.us.us

.lr.ph171.us.us.preheader:                        ; preds = %.preheader94.us.us
  %wide.trip.count292 = zext nneg i32 %i.zc to i64 ; 5 uses
  %min.iters.check582 = icmp ugt i32 %i.zc, 7
  %ident.check573.not = icmp eq i64 %i.aab, 1
  %or.cond766 = select i1 %min.iters.check582, i1 %ident.check573.not, i1 false
  br i1 %or.cond766, label %vector.memcheck583, label %.lr.ph171.us.us.preheader770

vector.memcheck583:                               ; preds = %.lr.ph171.us.us.preheader
  %i.afh = shl nuw nsw i64 %wide.trip.count292, 1
  %i.afi = getelementptr i8, ptr %i.b, i64 %i.afh
  %i.afj = getelementptr i8, ptr %i.aaa, i64 -2
  %i.afk = getelementptr i8, ptr %i.aaa, i64 %wide.trip.count292
  %i.afl = getelementptr i8, ptr %i.afk, i64 -1
  %bound0584 = icmp ult ptr %i.b, %i.afl
  %bound1585 = icmp ult ptr %i.afj, %i.afi
  %found.conflict586 = and i1 %bound0584, %bound1585
  br i1 %found.conflict586, label %.lr.ph171.us.us.preheader770, label %vector.ph587

vector.ph587:                                     ; preds = %vector.memcheck583
  %n.vec588 = and i64 %wide.trip.count292, 2147483640 ; 3 uses
  br label %vector.body589

vector.body589:                                   ; preds = %vector.body589, %vector.ph587
  %index590 = phi i64 [ 0, %vector.ph587 ], [ %index.next591, %vector.body589 ] ; 10 uses
  %i.afm = getelementptr inbounds i8, ptr %i.aaa, i64 %index590
  %i.afn = getelementptr i8, ptr %i.aaa, i64 %index590
  %i.afo = getelementptr i8, ptr %i.aaa, i64 %index590
  %i.afp = getelementptr i8, ptr %i.aaa, i64 %index590
  %i.afq = getelementptr i8, ptr %i.aaa, i64 %index590
  %i.afr = getelementptr i8, ptr %i.aaa, i64 %index590
  %i.afs = getelementptr i8, ptr %i.aaa, i64 %index590
  %i.aft = getelementptr i8, ptr %i.aaa, i64 %index590
  %i.afu = getelementptr inbounds i8, ptr %i.afm, i64 -2
  %i.afv = getelementptr i8, ptr %i.afn, i64 -1
  %i.afw = getelementptr i8, ptr %i.afp, i64 1
  %i.afx = getelementptr i8, ptr %i.afq, i64 2
  %i.afy = getelementptr i8, ptr %i.afr, i64 3
  %i.afz = getelementptr i8, ptr %i.afs, i64 4
  %i.aga = getelementptr i8, ptr %i.aft, i64 5
  %i.agb = load i16, ptr %i.afu, align 2, !tbaa !40, !alias.scope !213
  %i.agc = load i16, ptr %i.afv, align 2, !tbaa !40, !alias.scope !213
  %i.agd = load i16, ptr %i.afo, align 2, !tbaa !40, !alias.scope !213
  %i.age = load i16, ptr %i.afw, align 2, !tbaa !40, !alias.scope !213
  %i.agf = load i16, ptr %i.afx, align 2, !tbaa !40, !alias.scope !213
  %i.agg = load i16, ptr %i.afy, align 2, !tbaa !40, !alias.scope !213
  %i.agh = load i16, ptr %i.afz, align 2, !tbaa !40, !alias.scope !213
  %i.agi = load i16, ptr %i.aga, align 2, !tbaa !40, !alias.scope !213
  %i.agj = insertelement <8 x i16> poison, i16 %i.agb, i64 0
  %i.agk = insertelement <8 x i16> %i.agj, i16 %i.agc, i64 1
  %i.agl = insertelement <8 x i16> %i.agk, i16 %i.agd, i64 2
  %i.agm = insertelement <8 x i16> %i.agl, i16 %i.age, i64 3
  %i.agn = insertelement <8 x i16> %i.agm, i16 %i.agf, i64 4
  %i.ago = insertelement <8 x i16> %i.agn, i16 %i.agg, i64 5
  %i.agp = insertelement <8 x i16> %i.ago, i16 %i.agh, i64 6
  %i.agq = insertelement <8 x i16> %i.agp, i16 %i.agi, i64 7
  %i.agr = shl nuw nsw i64 %index590, 1
  %i.ags = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.agr
  store <8 x i16> %i.agq, ptr %i.ags, align 16, !tbaa !40, !alias.scope !214, !noalias !213
  %index.next591 = add nuw i64 %index590, 8       ; 2 uses
  %i.agt = icmp eq i64 %index.next591, %n.vec588
  br i1 %i.agt, label %middle.block592, label %vector.body589, !llvm.loop !198

middle.block592:                                  ; preds = %vector.body589
  %cmp.n593 = icmp eq i64 %n.vec588, %wide.trip.count292
  br i1 %cmp.n593, label %check_intra_mode.exit49.us.us, label %.lr.ph171.us.us.preheader770

.lr.ph171.us.us.preheader770:                     ; preds = %vector.memcheck583, %.lr.ph171.us.us.preheader, %middle.block592
  %indvars.iv289.ph = phi i64 [ 0, %vector.memcheck583 ], [ 0, %.lr.ph171.us.us.preheader ], [ %n.vec588, %middle.block592 ]
  br label %.lr.ph171.us.us

.lr.ph171.us.us:                                  ; preds = %.lr.ph171.us.us, %.lr.ph171.us.us.preheader770
  %indvars.iv289 = phi i64 [ %indvars.iv289.ph, %.lr.ph171.us.us.preheader770 ], [ %indvars.iv.next290.3, %.lr.ph171.us.us ] ; 6 uses
  %i.agu = mul nsw i64 %i.aab, %indvars.iv289
  %i.agv = getelementptr inbounds i8, ptr %i.aaa, i64 %i.agu
  %i.agw = getelementptr inbounds i8, ptr %i.agv, i64 -2
  %i.agx = load i16, ptr %i.agw, align 2, !tbaa !40
  %i.agy = shl nuw nsw i64 %indvars.iv289, 1
  %i.agz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.agy
  store i16 %i.agx, ptr %i.agz, align 8, !tbaa !40
  %indvars.iv.next290 = or disjoint i64 %indvars.iv289, 1 ; 2 uses
  %i.aha = mul nsw i64 %i.aab, %indvars.iv.next290
  %i.ahb = getelementptr inbounds i8, ptr %i.aaa, i64 %i.aha
  %i.ahc = getelementptr inbounds i8, ptr %i.ahb, i64 -2
  %i.ahd = load i16, ptr %i.ahc, align 2, !tbaa !40
  %i.ahe = shl nuw nsw i64 %indvars.iv.next290, 1
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ahe
  store i16 %i.ahd, ptr %i.ahf, align 2, !tbaa !40
  %indvars.iv.next290.1 = or disjoint i64 %indvars.iv289, 2 ; 2 uses
  %i.ahg = mul nsw i64 %i.aab, %indvars.iv.next290.1
  %i.ahh = getelementptr inbounds i8, ptr %i.aaa, i64 %i.ahg
  %i.ahi = getelementptr inbounds i8, ptr %i.ahh, i64 -2
  %i.ahj = load i16, ptr %i.ahi, align 2, !tbaa !40
  %i.ahk = shl nuw nsw i64 %indvars.iv.next290.1, 1
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ahk
  store i16 %i.ahj, ptr %i.ahl, align 4, !tbaa !40
  %indvars.iv.next290.2 = or disjoint i64 %indvars.iv289, 3 ; 2 uses
  %i.ahm = mul nsw i64 %i.aab, %indvars.iv.next290.2
  %i.ahn = getelementptr inbounds i8, ptr %i.aaa, i64 %i.ahm
  %i.aho = getelementptr inbounds i8, ptr %i.ahn, i64 -2
  %i.ahp = load i16, ptr %i.aho, align 2, !tbaa !40
  %i.ahq = shl nuw nsw i64 %indvars.iv.next290.2, 1
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ahq
  store i16 %i.ahp, ptr %i.ahr, align 2, !tbaa !40
  %indvars.iv.next290.3 = add nuw nsw i64 %indvars.iv289, 4 ; 2 uses
  %exitcond293.not.3 = icmp eq i64 %indvars.iv.next290.3, %wide.trip.count292
  br i1 %exitcond293.not.3, label %check_intra_mode.exit49.us.us, label %.lr.ph171.us.us, !llvm.loop !199

.preheader.us.us:                                 ; preds = %bb.ba
  %i.ahs = icmp sgt i32 %i.zy, 0
  br i1 %i.ahs, label %.lr.ph173.us.us.preheader, label %._crit_edge174.us.us

.lr.ph173.us.us.preheader:                        ; preds = %.preheader.us.us
  %i.aht = zext nneg i32 %i.zy to i64             ; 5 uses
  %min.iters.check563 = icmp ugt i32 %i.zy, 7
  %ident.check558.not = icmp eq i64 %i.aab, 1
  %or.cond767 = select i1 %min.iters.check563, i1 %ident.check558.not, i1 false
  br i1 %or.cond767, label %vector.memcheck, label %.lr.ph173.us.us.preheader769

vector.memcheck:                                  ; preds = %.lr.ph173.us.us.preheader
  %i.ahu = shl nuw nsw i64 %i.aht, 1
  %i.ahv = getelementptr i8, ptr %i.b, i64 %i.ahu
  %i.ahw = getelementptr i8, ptr %i.aaa, i64 -2
  %i.ahx = getelementptr i8, ptr %i.aaa, i64 %i.aht
  %i.ahy = getelementptr i8, ptr %i.ahx, i64 -1
end_hunk_0
