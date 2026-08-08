inline.NumInlined: 53
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@dx2_decode_slice_420:bb.a
  store i8 %i.wo, ptr %i.wp, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.wq = icmp samesign ult i64 %indvars.iv.next, %i.ba
  br i1 %i.wq, label %.preheader229.us, label %._crit_edge.us, !llvm.loop !95

bb.ar:                                            ; preds = %._crit_edge.us
  %i.wr = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ws = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef nonnull %4)
  %i.wt = getelementptr inbounds nuw i8, ptr %.0112233.us, i64 %indvars.iv.next
  store i8 %i.ws, ptr %i.wt, align 1, !tbaa !18
  %i.wu = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef nonnull %4)
  %i.wv = add nsw i32 %i.d, %i.wr
  %i.ww = sext i32 %i.wv to i64
  %i.wx = getelementptr inbounds i8, ptr %.0112233.us, i64 %i.ww
  store i8 %i.wu, ptr %i.wx, align 1, !tbaa !18
  %i.wy = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef nonnull %i.aq)
  %i.wz = xor i8 %i.wy, -128
  %i.xa = getelementptr inbounds i8, ptr %.0113232.us, i64 %i.au
  store i8 %i.wz, ptr %i.xa, align 1, !tbaa !18
  %i.xb = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef nonnull %i.as)
  %i.xc = xor i8 %i.xb, -128
  %i.xd = getelementptr inbounds i8, ptr %.0114231.us, i64 %i.au
  store i8 %i.xc, ptr %i.xd, align 1, !tbaa !18
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge.us
  %i.xe = getelementptr inbounds i8, ptr %.0112233.us, i64 %i.aw ; 2 uses
  %i.xf = getelementptr inbounds i8, ptr %.0113232.us, i64 %i.ax ; 2 uses
  %i.xg = getelementptr inbounds i8, ptr %.0114231.us, i64 %i.ay ; 2 uses
  %i.xh = add nuw nsw i32 %.0111234.us, 2         ; 3 uses
  %i.xi = icmp slt i32 %i.xh, %i.ah
  br i1 %i.xi, label %.lr.ph236.split.us, label %.critedge, !llvm.loop !96

._crit_edge.us:                                   ; preds = %decode_sym.exit228.us
  br i1 %.not117, label %bb.as, label %bb.ar

.lr.ph236.split:                                  ; preds = %.lr.ph236
  br i1 %.not117, label %.lr.ph236.split.split.us, label %.lr.ph236.split.split

.lr.ph236.split.split.us:                         ; preds = %.lr.ph236.split
  %.val.us257 = load i32, ptr %i.ag, align 8, !tbaa !89
  %.val118.us258 = load i32, ptr %i.aj, align 4, !tbaa !87
  %i.xj = sub nsw i32 %.val118.us258, %.val.us257
  %.not.us259 = icmp slt i32 %i.xj, %i.am
  br i1 %.not.us259, label %.critedge, label %.preheader229.us260.preheader

.preheader229.us260.preheader:                    ; preds = %.lr.ph236.split.split.us
  %i.xk = add nsw i32 %3, -2                      ; 2 uses
  %i.xl = lshr i32 %i.xk, 1
  %narrow = add nuw nsw i32 %i.xl, 1
  %i.xm = zext nneg i32 %narrow to i64            ; 3 uses
  %i.xn = mul nsw i64 %i.xm, %i.aw
  %i.xo = getelementptr i8, ptr %i.i, i64 %i.xn
  %scevgep = getelementptr i8, ptr %i.xo, i64 %i.k
  %i.xp = mul nsw i64 %i.xm, %i.ax
  %i.xq = getelementptr i8, ptr %i.n, i64 %i.xp
  %scevgep294 = getelementptr i8, ptr %i.xq, i64 %i.q
  %i.xr = mul nsw i64 %i.xm, %i.ay
  %i.xs = getelementptr i8, ptr %i.t, i64 %i.xr
  %scevgep295 = getelementptr i8, ptr %i.xs, i64 %i.w
  %i.xt = and i32 %i.xk, -2
  %i.xu = add nuw nsw i32 %i.xt, 2
  br label %.critedge

.lr.ph236.split.split:                            ; preds = %.lr.ph236.split, %.preheader229
  %.0111234 = phi i32 [ %i.yi, %.preheader229 ], [ 0, %.lr.ph236.split ] ; 2 uses
  %.0112233 = phi ptr [ %i.yf, %.preheader229 ], [ %i.l, %.lr.ph236.split ] ; 4 uses
  %.0113232 = phi ptr [ %i.yg, %.preheader229 ], [ %i.r, %.lr.ph236.split ] ; 3 uses
  %.0114231 = phi ptr [ %i.yh, %.preheader229 ], [ %i.x, %.lr.ph236.split ] ; 3 uses
  %.val = load i32, ptr %i.ag, align 8, !tbaa !89
  %.val118 = load i32, ptr %i.aj, align 4, !tbaa !87
  %i.xv = sub nsw i32 %.val118, %.val
  %.not = icmp slt i32 %i.xv, %i.am
  br i1 %.not, label %.critedge, label %.preheader229

.preheader229:                                    ; preds = %.lr.ph236.split.split
  %i.xw = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef %4)
  store i8 %i.xw, ptr %.0112233, align 1, !tbaa !18
  %i.xx = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef %4)
  %i.xy = getelementptr inbounds i8, ptr %.0112233, i64 %i.az
  store i8 %i.xx, ptr %i.xy, align 1, !tbaa !18
  %i.xz = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef nonnull %i.aq)
  %i.ya = xor i8 %i.xz, -128
  %i.yb = getelementptr inbounds i8, ptr %.0113232, i64 %i.au
  store i8 %i.ya, ptr %i.yb, align 1, !tbaa !18
  %i.yc = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef nonnull %i.as)
  %i.yd = xor i8 %i.yc, -128
  %i.ye = getelementptr inbounds i8, ptr %.0114231, i64 %i.au
  store i8 %i.yd, ptr %i.ye, align 1, !tbaa !18
  %i.yf = getelementptr inbounds i8, ptr %.0112233, i64 %i.aw ; 2 uses
  %i.yg = getelementptr inbounds i8, ptr %.0113232, i64 %i.ax ; 2 uses
  %i.yh = getelementptr inbounds i8, ptr %.0114231, i64 %i.ay ; 2 uses
  %i.yi = add nuw nsw i32 %.0111234, 2            ; 3 uses
  %i.yj = icmp slt i32 %i.yi, %i.ah
  br i1 %i.yj, label %.lr.ph236.split.split, label %.critedge, !llvm.loop !96

.critedge:                                        ; preds = %.lr.ph236.split.split, %.preheader229, %.lr.ph236.split.us, %bb.as, %.preheader229.us260.preheader, %.lr.ph236.split.split.us, %bb.a
  %.0114.lcssa = phi ptr [ %i.x, %bb.a ], [ %scevgep295, %.preheader229.us260.preheader ], [ %i.x, %.lr.ph236.split.split.us ], [ %i.xg, %bb.as ], [ %.0114231.us, %.lr.ph236.split.us ], [ %i.yh, %.preheader229 ], [ %.0114231, %.lr.ph236.split.split ] ; 2 uses
  %.0113.lcssa = phi ptr [ %i.r, %bb.a ], [ %scevgep294, %.preheader229.us260.preheader ], [ %i.r, %.lr.ph236.split.split.us ], [ %i.xf, %bb.as ], [ %.0113232.us, %.lr.ph236.split.us ], [ %i.yg, %.preheader229 ], [ %.0113232, %.lr.ph236.split.split ] ; 2 uses
  %.0112.lcssa = phi ptr [ %i.l, %bb.a ], [ %scevgep, %.preheader229.us260.preheader ], [ %i.l, %.lr.ph236.split.split.us ], [ %i.xe, %bb.as ], [ %.0112233.us, %.lr.ph236.split.us ], [ %i.yf, %.preheader229 ], [ %.0112233, %.lr.ph236.split.split ] ; 2 uses
  %.0111.lcssa = phi i32 [ 0, %bb.a ], [ %i.xu, %.preheader229.us260.preheader ], [ 0, %.lr.ph236.split.split.us ], [ %i.xh, %bb.as ], [ %.0111234.us, %.lr.ph236.split.us ], [ %i.yi, %.preheader229 ], [ %.0111234, %.lr.ph236.split.split ]
  %.not115 = icmp eq i32 %i.ac, 0
  br i1 %.not115, label %bb.av, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.yk = icmp sgt i32 %.fr282, 0
  br i1 %i.yk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.yl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ym = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.yn = zext nneg i32 %.fr282 to i64
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph, %bb.at
  %indvars.iv297 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next298, %bb.at ] ; 3 uses
  %i.yo = tail call fastcc zeroext i8 @decode_sym(ptr noundef %0, ptr noundef %4)
  %i.yp = getelementptr inbounds nuw i8, ptr %.0112.lcssa, i64 %indvars.iv297
  store i8 %i.yo, ptr %i.yp, align 1, !tbaa !18
  %i.yq = tail call fastcc zeroext i8 @decode_sym(ptr noundef %0, ptr noundef nonnull %i.yl)
  %i.yr = xor i8 %i.yq, -128
  %i.ys = lshr exact i64 %indvars.iv297, 1        ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.0113.lcssa, i64 %i.ys
  store i8 %i.yr, ptr %i.yt, align 1, !tbaa !18
  %i.yu = tail call fastcc zeroext i8 @decode_sym(ptr noundef %0, ptr noundef nonnull %i.ym)
  %i.yv = xor i8 %i.yu, -128
  %i.yw = getelementptr inbounds nuw i8, ptr %.0114.lcssa, i64 %i.ys
  store i8 %i.yv, ptr %i.yw, align 1, !tbaa !18
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 2 ; 3 uses
  %i.yx = icmp samesign ult i64 %indvars.iv.next298, %i.yn
  br i1 %i.yx, label %bb.at, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.at, %.preheader
  %.1.lcssa = phi i64 [ 0, %.preheader ], [ %indvars.iv.next298, %bb.at ]
  %.not116 = icmp eq i32 %i.ab, 0
  br i1 %.not116, label %bb.av, label %bb.au

bb.au:                                            ; preds = %._crit_edge
  %i.yy = tail call fastcc zeroext i8 @decode_sym(ptr noundef %0, ptr noundef %4)
  %i.yz = getelementptr inbounds nuw i8, ptr %.0112.lcssa, i64 %.1.lcssa
  store i8 %i.yy, ptr %i.yz, align 1, !tbaa !18
  %i.za = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.zb = tail call fastcc zeroext i8 @decode_sym(ptr noundef %0, ptr noundef nonnull %i.za)
  %i.zc = xor i8 %i.zb, -128
  %i.zd = sext i32 %i.af to i64                   ; 2 uses
  %i.ze = getelementptr inbounds i8, ptr %.0113.lcssa, i64 %i.zd
  store i8 %i.zc, ptr %i.ze, align 1, !tbaa !18
  %i.zf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.zg = tail call fastcc zeroext i8 @decode_sym(ptr noundef %0, ptr noundef nonnull %i.zf)
  %i.zh = xor i8 %i.zg, -128
  %i.zi = getelementptr inbounds i8, ptr %.0114.lcssa, i64 %i.zd
  store i8 %i.zh, ptr %i.zi, align 1, !tbaa !18
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge, %bb.au, %.critedge
  ret i32 %.0111.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @dx2_decode_slice_410(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !36   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !36   ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !35
  %i.j = mul nsw i32 %i.d, %2
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = ashr i32 %i.f, 2
  %i.p = mul nsw i32 %i.o, %2
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.u = ashr i32 %i.h, 2
  %i.v = mul nsw i32 %i.u, %2
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.z = load i32, ptr %i.y, align 4, !tbaa !94
  %i.aa = and i32 %i.b, 3                         ; 7 uses
  %i.ab = and i32 %i.z, 3                         ; 4 uses
  %i.ac = add nsw i32 %i.b, 3
  %i.ad = ashr i32 %i.ac, 2
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 8         ; 101 uses
  %i.ag = add nsw i32 %3, -3
  %i.ah = icmp sgt i32 %3, 3
  br i1 %i.ah, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.ai = and i32 %i.b, -4                        ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 12
  %i.ak = mul nsw i32 %i.ai, 9
  %i.al = ashr exact i32 %i.ak, 1
  %i.am = shl nuw nsw i32 %i.aa, 2
  %i.an = add nsw i32 %i.al, %i.am
  %.not = icmp eq i32 %i.aa, 0                    ; 2 uses
  %i.ao = select i1 %.not, i32 0, i32 2
  %i.ap = add nsw i32 %i.an, %i.ao
  %i.aq = icmp sgt i32 %i.b, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.ax = sext i32 %i.ae to i64                   ; 2 uses
  %i.ay = shl nsw i32 %i.d, 2
  %i.az = sext i32 %i.ay to i64
  %i.ba = sext i32 %i.f to i64
  %i.bb = sext i32 %i.h to i64
  %i.bc = sext i32 %i.ai to i64
  %exitcond300.not = icmp eq i32 %i.aa, 1
  %exitcond300.not.1 = icmp eq i32 %i.aa, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.az
  %.0127273 = phi i32 [ 0, %.lr.ph ], [ %i.xt, %bb.az ] ; 2 uses
  %.0135272 = phi ptr [ %i.l, %.lr.ph ], [ %i.xq, %bb.az ] ; 6 uses
  %.0136271 = phi ptr [ %i.x, %.lr.ph ], [ %i.xs, %bb.az ] ; 4 uses
  %.0137270 = phi ptr [ %i.r, %.lr.ph ], [ %i.xr, %bb.az ] ; 4 uses
  %.val = load i32, ptr %i.af, align 8, !tbaa !89
  %.val145 = load i32, ptr %i.aj, align 4, !tbaa !87
  %i.bd = sub nsw i32 %.val145, %.val
  %.not142 = icmp slt i32 %i.bd, %i.ap
  br i1 %.not142, label %.critedge, label %.preheader264

.preheader264:                                    ; preds = %bb.b
  br i1 %i.aq, label %.preheader262, label %._crit_edge

.preheader262:                                    ; preds = %.preheader264, %decode_sym.exit189
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %decode_sym.exit189 ], [ 0, %.preheader264 ] ; 3 uses
  %i.be = trunc nuw nsw i64 %indvars.iv294 to i32
  br label %.preheader260

.preheader260:                                    ; preds = %.preheader262, %bb.k
  %.0131266 = phi i32 [ 0, %.preheader262 ], [ %i.ez, %bb.k ] ; 2 uses
  %i.bf = mul nsw i32 %.0131266, %i.d
  %i.bg = add i32 %i.bf, %i.be
  br label %bb.c

bb.c:                                             ; preds = %.preheader260, %decode_sym.exit
  %indvars.iv = phi i64 [ 0, %.preheader260 ], [ %indvars.iv.next, %decode_sym.exit ] ; 2 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !85    ; 8 uses
  %i.bi = load i32, ptr %i.ar, align 8, !tbaa !88 ; 9 uses
  %.promoted.i.i = load i32, ptr %i.af, align 8, !tbaa !89 ; 4 uses
  %i.bj = lshr i32 %.promoted.i.i, 3
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !18
  %i.bn = icmp slt i32 %.promoted.i.i, %i.bi
  %i.bo = zext i1 %i.bn to i32
  %spec.select.i.i.i = add i32 %.promoted.i.i, %i.bo ; 7 uses
  %i.bp = zext i8 %i.bm to i32
  %i.bq = and i32 %.promoted.i.i, 7
  store i32 %spec.select.i.i.i, ptr %i.af, align 8, !tbaa !89
  %i.br = shl nuw nsw i32 1, %i.bq
  %i.bs = and i32 %i.br, %i.bp
  %.not.i.i = icmp eq i32 %i.bs, 0
  %i.bt = lshr i32 %spec.select.i.i.i, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bu ; 2 uses
  br i1 %.not.i.i, label %get_unary.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !18
  %i.bx = icmp slt i32 %spec.select.i.i.i, %i.bi
  %i.by = zext i1 %i.bx to i32
  %spec.select.i.i.1.i = add i32 %spec.select.i.i.i, %i.by ; 5 uses
  %i.bz = zext i8 %i.bw to i32
  %i.ca = and i32 %spec.select.i.i.i, 7
  store i32 %spec.select.i.i.1.i, ptr %i.af, align 8, !tbaa !89
  %i.cb = shl nuw nsw i32 1, %i.ca
  %i.cc = and i32 %i.cb, %i.bz
  %.not.i.1.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.1.i, label %get_unary.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cd = lshr i32 %spec.select.i.i.1.i, 3
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !18
  %i.ch = icmp slt i32 %spec.select.i.i.1.i, %i.bi
  %i.ci = zext i1 %i.ch to i32
  %spec.select.i.i.2.i = add i32 %spec.select.i.i.1.i, %i.ci ; 5 uses
  %i.cj = zext i8 %i.cg to i32
  %i.ck = and i32 %spec.select.i.i.1.i, 7
  store i32 %spec.select.i.i.2.i, ptr %i.af, align 8, !tbaa !89
  %i.cl = shl nuw nsw i32 1, %i.ck
  %i.cm = and i32 %i.cl, %i.cj
  %.not.i.2.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.2.i, label %get_unary.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cn = lshr i32 %spec.select.i.i.2.i, 3
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !18
  %i.cr = icmp slt i32 %spec.select.i.i.2.i, %i.bi
  %i.cs = zext i1 %i.cr to i32
  %spec.select.i.i.3.i = add i32 %spec.select.i.i.2.i, %i.cs ; 5 uses
  %i.ct = zext i8 %i.cq to i32
  %i.cu = and i32 %spec.select.i.i.2.i, 7
  store i32 %spec.select.i.i.3.i, ptr %i.af, align 8, !tbaa !89
  %i.cv = shl nuw nsw i32 1, %i.cu
  %i.cw = and i32 %i.cv, %i.ct
  %.not.i.3.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.3.i, label %get_unary.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cx = lshr i32 %spec.select.i.i.3.i, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !18
  %i.db = icmp slt i32 %spec.select.i.i.3.i, %i.bi
  %i.dc = zext i1 %i.db to i32
  %spec.select.i.i.4.i = add i32 %spec.select.i.i.3.i, %i.dc ; 5 uses
  %i.dd = zext i8 %i.da to i32
  %i.de = and i32 %spec.select.i.i.3.i, 7
  store i32 %spec.select.i.i.4.i, ptr %i.af, align 8, !tbaa !89
  %i.df = shl nuw nsw i32 1, %i.de
  %i.dg = and i32 %i.df, %i.dd
  %.not.i.4.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i.4.i, label %get_unary.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dh = lshr i32 %spec.select.i.i.4.i, 3
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !18
  %i.dl = icmp slt i32 %spec.select.i.i.4.i, %i.bi
  %i.dm = zext i1 %i.dl to i32
  %spec.select.i.i.5.i = add i32 %spec.select.i.i.4.i, %i.dm ; 5 uses
  %i.dn = zext i8 %i.dk to i32
  %i.do = and i32 %spec.select.i.i.4.i, 7
  store i32 %spec.select.i.i.5.i, ptr %i.af, align 8, !tbaa !89
  %i.dp = shl nuw nsw i32 1, %i.do
  %i.dq = and i32 %i.dp, %i.dn
  %.not.i.5.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i.5.i, label %get_unary.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = lshr i32 %spec.select.i.i.5.i, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !18
  %i.dv = icmp slt i32 %spec.select.i.i.5.i, %i.bi
  %i.dw = zext i1 %i.dv to i32
  %spec.select.i.i.6.i = add i32 %spec.select.i.i.5.i, %i.dw ; 5 uses
  %i.dx = zext i8 %i.du to i32
  %i.dy = and i32 %spec.select.i.i.5.i, 7
  store i32 %spec.select.i.i.6.i, ptr %i.af, align 8, !tbaa !89
  %i.dz = shl nuw nsw i32 1, %i.dy
  %i.ea = and i32 %i.dz, %i.dx
  %.not.i.6.i = icmp eq i32 %i.ea, 0
  br i1 %.not.i.6.i, label %get_unary.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eb = lshr i32 %spec.select.i.i.6.i, 3
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !18
  %i.ef = icmp slt i32 %spec.select.i.i.6.i, %i.bi
  %i.eg = zext i1 %i.ef to i32
  %spec.select.i.i.7.i = add i32 %spec.select.i.i.6.i, %i.eg
  %i.eh = zext i8 %i.ee to i32
  %i.ei = and i32 %spec.select.i.i.6.i, 7
  store i32 %spec.select.i.i.7.i, ptr %i.af, align 8, !tbaa !89
  %i.ej = shl nuw nsw i32 1, %i.ei
  %i.ek = and i32 %i.ej, %i.eh
  %.not.i.7.i = icmp eq i32 %i.ek, 0
  %i.el = select i1 %.not.i.7.i, i64 6, i64 7
  br label %get_unary.exit.thread.i

get_unary.exit.i:                                 ; preds = %bb.c
  %i.em = load i32, ptr %i.bv, align 1, !tbaa !18
  %i.en = and i32 %spec.select.i.i.i, 7
  %i.eo = lshr i32 %i.em, %i.en
  %i.ep = add i32 %spec.select.i.i.i, 8
  %i.eq = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.ep)
  store i32 %i.eq, ptr %i.af, align 8, !tbaa !89
  %i.er = trunc i32 %i.eo to i8
  br label %decode_sym.exit

get_unary.exit.thread.i:                          ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.es = phi i64 [ %i.el, %bb.j ], [ 5, %bb.i ], [ 4, %bb.h ], [ 3, %bb.g ], [ 2, %bb.f ], [ 1, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !18
  br label %decode_sym.exit

decode_sym.exit:                                  ; preds = %get_unary.exit.i, %get_unary.exit.thread.i
  %.sink23.i = phi i64 [ %i.es, %get_unary.exit.thread.i ], [ 7, %get_unary.exit.i ]
  %.0.i = phi i8 [ %i.eu, %get_unary.exit.thread.i ], [ %i.er, %get_unary.exit.i ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %4, i64 %.sink23.i, i1 false)
end_hunk_0
