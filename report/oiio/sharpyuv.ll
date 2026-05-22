inline.NumInlined: 53
inline.NumDeleted: 15
begin_hunk_0_@SharpYuvConvertWithOptions:bb.a
  %broadcast.splat163 = shufflevector <2 x i32> %broadcast.splatinsert162, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert164 = insertelement <2 x i32> poison, i32 %i.ut, i64 0
  %broadcast.splat165 = shufflevector <2 x i32> %broadcast.splatinsert164, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert166 = insertelement <2 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat167 = shufflevector <2 x i32> %broadcast.splatinsert166, <2 x i32> poison, <2 x i32> zeroinitializer
  %cmp.n179 = icmp eq i64 %n.vec157, %wide.trip.count130.i.i
  %i.vb = extractelement <8 x i32> %i.cs, i64 0
  %i.vc = extractelement <8 x i32> %i.cs, i64 1
  br label %.split.i.i

.split.us.us.i.i:                                 ; preds = %.split.us.us.i.i.preheader, %.split109.us.us.i.i
  %.097.us.i.i = phi i32 [ %i.wv, %.split109.us.us.i.i ], [ 0, %.split.us.us.i.i.preheader ] ; 2 uses
  %.092.us.i.i = phi ptr [ %i.wu, %.split109.us.us.i.i ], [ %6, %.split.us.us.i.i.preheader ] ; 2 uses
  %.091.us.i.i = phi ptr [ %i.wt, %.split109.us.us.i.i ], [ %i.ej, %.split.us.us.i.i.preheader ] ; 4 uses
  %.0.us.i.i = phi ptr [ %i.wo, %.split109.us.us.i.i ], [ %i.ea, %.split.us.us.i.i.preheader ] ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.split.us.us.i.i
  %indvars.iv126.i.i = phi i64 [ %indvars.iv.next127.i.i, %bb.u ], [ 0, %.split.us.us.i.i ] ; 4 uses
  %i.vd = trunc nuw nsw i64 %indvars.iv126.i.i to i32
  %i.ve = lshr i32 %i.vd, 1                       ; 3 uses
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %.0.us.i.i, i64 %indvars.iv126.i.i
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !12
  %i.vh = zext i16 %i.vg to i32                   ; 3 uses
  %i.vi = zext nneg i32 %i.ve to i64
  %i.vj = getelementptr inbounds nuw [2 x i8], ptr %.091.us.i.i, i64 %i.vi
  %i.vk = load i16, ptr %i.vj, align 2, !tbaa !12
  %i.vl = sext i16 %i.vk to i32
  %i.vm = add nsw i32 %i.vl, %i.vh
  %i.vn = add nuw nsw i32 %i.ve, %i.do
  %i.vo = zext nneg i32 %i.vn to i64
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %.091.us.i.i, i64 %i.vo
  %i.vq = load i16, ptr %i.vp, align 2, !tbaa !12
  %i.vr = sext i16 %i.vq to i32
  %i.vs = add nsw i32 %i.vr, %i.vh
  %i.vt = add nuw nsw i32 %i.ve, %i.dl
  %i.vu = zext nneg i32 %i.vt to i64
  %i.vv = getelementptr inbounds nuw [2 x i8], ptr %.091.us.i.i, i64 %i.vu
  %i.vw = load i16, ptr %i.vv, align 2, !tbaa !12
  %i.vx = sext i16 %i.vw to i32
  %i.vy = add nsw i32 %i.vx, %i.vh
  %i.vz = mul nsw i32 %.sroa.0.0, %i.vm
  %i.wa = mul nsw i32 %i.uy, %i.vs
  %i.wb = mul nsw i32 %i.uz, %i.vy
  %i.wc = add i32 %i.vz, %i.uv
  %i.wd = add i32 %i.wc, %i.wa
  %i.we = add i32 %i.wd, %i.wb
  %i.wf = add i32 %i.we, %i.cz
  %i.wg = ashr i32 %i.wf, %i.ut                   ; 2 uses
  %i.wh = trunc i32 %i.wg to i16                  ; 2 uses
  %i.wi = icmp ugt i16 %i.wh, 255
  %i.wj = trunc i32 %i.wg to i8
  %i.wk = icmp sgt i16 %i.wh, -1
  %i.wl = sext i1 %i.wk to i8
  %i.wm = select i1 %i.wi, i8 %i.wl, i8 %i.wj
  %i.wn = getelementptr inbounds nuw i8, ptr %.092.us.i.i, i64 %indvars.iv126.i.i
  store i8 %i.wm, ptr %i.wn, align 1, !tbaa !27
  %indvars.iv.next127.i.i = add nuw nsw i64 %indvars.iv126.i.i, 1 ; 2 uses
  %exitcond131.not.i.i = icmp eq i64 %indvars.iv.next127.i.i, %wide.trip.count130.i.i
  br i1 %exitcond131.not.i.i, label %.split109.us.us.i.i, label %bb.u, !llvm.loop !28

.split109.us.us.i.i:                              ; preds = %bb.u
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %.0.us.i.i, i64 %i.dw
  %i.wp = trunc i32 %.097.us.i.i to i1
  %i.wq = select i1 %i.wp, i32 3, i32 0
  %i.wr = mul nuw nsw i32 %i.wq, %i.do
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %.091.us.i.i, i64 %i.ws
  %i.wu = getelementptr inbounds i8, ptr %.092.us.i.i, i64 %i.ux
  %i.wv = add nuw nsw i32 %.097.us.i.i, 1         ; 2 uses
  %exitcond133.not.i.i = icmp eq i32 %i.wv, %smax132.i.i
  br i1 %exitcond133.not.i.i, label %.preheader.i.i, label %.split.us.us.i.i, !llvm.loop !29

.split.i.i:                                       ; preds = %.split109.i.i, %.split.preheader.i.i
  %.097.i.i = phi i32 [ %i.zw, %.split109.i.i ], [ 0, %.split.preheader.i.i ] ; 2 uses
  %.092.i.i = phi ptr [ %i.zv, %.split109.i.i ], [ %6, %.split.preheader.i.i ] ; 3 uses
  %.091.i.i = phi ptr [ %i.zu, %.split109.i.i ], [ %i.ej, %.split.preheader.i.i ] ; 7 uses
  %.0.i.i = phi ptr [ %i.zp, %.split109.i.i ], [ %i.ea, %.split.preheader.i.i ] ; 3 uses
  br i1 %min.iters.check154, label %scalar.ph153.preheader, label %vector.body168

vector.body168:                                   ; preds = %.split.i.i, %vector.body168
  %index169 = phi i64 [ %index.next177, %vector.body168 ], [ 0, %.split.i.i ] ; 4 uses
  %i.ww = trunc nuw nsw i64 %index169 to i32
  %i.wx = lshr exact i32 %i.ww, 1                 ; 3 uses
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i, i64 %index169
  %wide.load170 = load <2 x i16>, ptr %i.wy, align 2, !tbaa !12
  %i.wz = zext <2 x i16> %wide.load170 to <2 x i32> ; 3 uses
  %i.xa = zext nneg i32 %i.wx to i64
  %i.xb = getelementptr inbounds nuw [2 x i8], ptr %.091.i.i, i64 %i.xa
  %i.xc = load i16, ptr %i.xb, align 2, !tbaa !12
  %broadcast.splatinsert171 = insertelement <2 x i16> poison, i16 %i.xc, i64 0
  %broadcast.splat172 = shufflevector <2 x i16> %broadcast.splatinsert171, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.xd = sext <2 x i16> %broadcast.splat172 to <2 x i32>
  %i.xe = add nsw <2 x i32> %i.xd, %i.wz
  %i.xf = add nuw nsw i32 %i.wx, %i.do
  %i.xg = zext nneg i32 %i.xf to i64
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr %.091.i.i, i64 %i.xg
  %i.xi = load i16, ptr %i.xh, align 2, !tbaa !12
  %broadcast.splatinsert173 = insertelement <2 x i16> poison, i16 %i.xi, i64 0
  %broadcast.splat174 = shufflevector <2 x i16> %broadcast.splatinsert173, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.xj = sext <2 x i16> %broadcast.splat174 to <2 x i32>
  %i.xk = add nsw <2 x i32> %i.xj, %i.wz
  %i.xl = add nuw nsw i32 %i.wx, %i.dl
  %i.xm = zext nneg i32 %i.xl to i64
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %.091.i.i, i64 %i.xm
  %i.xo = load i16, ptr %i.xn, align 2, !tbaa !12
  %broadcast.splatinsert175 = insertelement <2 x i16> poison, i16 %i.xo, i64 0
  %broadcast.splat176 = shufflevector <2 x i16> %broadcast.splatinsert175, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.xp = sext <2 x i16> %broadcast.splat176 to <2 x i32>
  %i.xq = add nsw <2 x i32> %i.xp, %i.wz
  %i.xr = mul nsw <2 x i32> %i.xe, %broadcast.splat
  %i.xs = mul nsw <2 x i32> %i.xk, %broadcast.splat159
  %i.xt = mul nsw <2 x i32> %i.xq, %broadcast.splat161
  %i.xu = add <2 x i32> %broadcast.splat163, %i.xr
  %i.xv = add <2 x i32> %i.xu, %i.xs
  %i.xw = add <2 x i32> %i.xv, %i.xt
  %i.xx = ashr <2 x i32> %i.xw, %broadcast.splat165 ; 2 uses
  %i.xy = and <2 x i32> %i.xx, splat (i32 32768)
  %i.xz = icmp eq <2 x i32> %i.xy, zeroinitializer
  %i.ya = and <2 x i32> %i.xx, splat (i32 65535)
  %i.yb = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %broadcast.splat167, <2 x i32> %i.ya)
  %i.yc = trunc nuw <2 x i32> %i.yb to <2 x i16>
  %i.yd = select <2 x i1> %i.xz, <2 x i16> %i.yc, <2 x i16> zeroinitializer
  %i.ye = getelementptr inbounds nuw [2 x i8], ptr %.092.i.i, i64 %index169
  store <2 x i16> %i.yd, ptr %i.ye, align 2, !tbaa !12
  %index.next177 = add nuw i64 %index169, 2       ; 2 uses
  %i.yf = icmp eq i64 %index.next177, %n.vec157
  br i1 %i.yf, label %middle.block178, label %vector.body168, !llvm.loop !30

middle.block178:                                  ; preds = %vector.body168
  br i1 %cmp.n179, label %.split109.i.i, label %scalar.ph153.preheader

scalar.ph153.preheader:                           ; preds = %.split.i.i, %middle.block178
  %indvars.iv.i277.i.ph = phi i64 [ 0, %.split.i.i ], [ %n.vec157, %middle.block178 ]
  br label %scalar.ph153

scalar.ph153:                                     ; preds = %scalar.ph153.preheader, %scalar.ph153
  %indvars.iv.i277.i = phi i64 [ %indvars.iv.next.i278.i, %scalar.ph153 ], [ %indvars.iv.i277.i.ph, %scalar.ph153.preheader ] ; 4 uses
  %i.yg = trunc nuw nsw i64 %indvars.iv.i277.i to i32
  %i.yh = lshr i32 %i.yg, 1                       ; 3 uses
  %i.yi = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i, i64 %indvars.iv.i277.i
  %i.yj = load i16, ptr %i.yi, align 2, !tbaa !12
  %i.yk = zext i16 %i.yj to i32                   ; 3 uses
  %i.yl = zext nneg i32 %i.yh to i64
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %.091.i.i, i64 %i.yl
  %i.yn = load i16, ptr %i.ym, align 2, !tbaa !12
  %i.yo = sext i16 %i.yn to i32
  %i.yp = add nsw i32 %i.yo, %i.yk
  %i.yq = add nuw nsw i32 %i.yh, %i.do
  %i.yr = zext nneg i32 %i.yq to i64
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %.091.i.i, i64 %i.yr
  %i.yt = load i16, ptr %i.ys, align 2, !tbaa !12
  %i.yu = sext i16 %i.yt to i32
  %i.yv = add nsw i32 %i.yu, %i.yk
  %i.yw = add nuw nsw i32 %i.yh, %i.dl
  %i.yx = zext nneg i32 %i.yw to i64
  %i.yy = getelementptr inbounds nuw [2 x i8], ptr %.091.i.i, i64 %i.yx
  %i.yz = load i16, ptr %i.yy, align 2, !tbaa !12
  %i.za = sext i16 %i.yz to i32
  %i.zb = add nsw i32 %i.za, %i.yk
  %i.zc = mul nsw i32 %i.yp, %.sroa.0.0
  %i.zd = mul nsw i32 %i.yv, %i.vb
  %i.ze = mul nsw i32 %i.zb, %i.vc
  %i.zf = add i32 %i.va, %i.zc
  %i.zg = add i32 %i.zf, %i.zd
  %i.zh = add i32 %i.zg, %i.ze
  %i.zi = ashr i32 %i.zh, %i.ut                   ; 2 uses
  %i.zj = and i32 %i.zi, 32768
  %.not.i.i = icmp eq i32 %i.zj, 0
  %i.zk = and i32 %i.zi, 65535
  %i.zl = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.zk)
  %i.zm = trunc nuw i32 %i.zl to i16
  %i.zn = select i1 %.not.i.i, i16 %i.zm, i16 0
  %i.zo = getelementptr inbounds nuw [2 x i8], ptr %.092.i.i, i64 %indvars.iv.i277.i
  store i16 %i.zn, ptr %i.zo, align 2, !tbaa !12
  %indvars.iv.next.i278.i = add nuw nsw i64 %indvars.iv.i277.i, 1 ; 2 uses
  %exitcond.not.i279.i = icmp eq i64 %indvars.iv.next.i278.i, %wide.trip.count130.i.i
  br i1 %exitcond.not.i279.i, label %.split109.i.i, label %scalar.ph153, !llvm.loop !31

.split109.i.i:                                    ; preds = %scalar.ph153, %middle.block178
  %i.zp = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i, i64 %i.dw
  %i.zq = trunc i32 %.097.i.i to i1
  %i.zr = select i1 %i.zq, i32 3, i32 0
  %i.zs = mul nuw nsw i32 %i.zr, %i.do
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = getelementptr inbounds nuw [2 x i8], ptr %.091.i.i, i64 %i.zt
  %i.zv = getelementptr inbounds i8, ptr %.092.i.i, i64 %i.ux
  %i.zw = add nuw nsw i32 %.097.i.i, 1            ; 2 uses
  %exitcond125.not.i.i = icmp eq i32 %i.zw, %smax132.i.i
  br i1 %exitcond125.not.i.i, label %.preheader.i.i, label %.split.i.i, !llvm.loop !29

.preheader.i.i:                                   ; preds = %.split109.i.i, %.split109.us.us.i.i
  %i.zx = sext i32 %9 to i64                      ; 4 uses
  %i.zy = sext i32 %11 to i64                     ; 4 uses
  %smax145.i.i = tail call i32 @llvm.smax.i32(i32 %i.do, i32 1)
  %smax148.i.i = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 1) ; 4 uses
  %wide.trip.count146.i.i = zext nneg i32 %smax145.i.i to i64 ; 9 uses
  br i1 %i.uw, label %.split115.us.us.i.i.preheader, label %.split115.preheader.i.i

.split115.us.us.i.i.preheader:                    ; preds = %.preheader.i.i
  %16 = add nsw i32 %smax148.i.i, -1
  %17 = zext nneg i32 %16 to i64                  ; 2 uses
  %i.zz = mul nsw i64 %i.zx, %17
  %i.aaa = getelementptr i8, ptr %8, i64 %i.zz
  %scevgep218 = getelementptr i8, ptr %i.aaa, i64 %wide.trip.count146.i.i
  %i.aab = mul nsw i64 %i.zy, %17
  %i.aac = getelementptr i8, ptr %10, i64 %i.aab
  %scevgep219 = getelementptr i8, ptr %i.aac, i64 %wide.trip.count146.i.i
  %min.iters.check226 = icmp ult i32 %13, 15
  %bound0220 = icmp ult ptr %8, %scevgep219
  %bound1221 = icmp ult ptr %10, %scevgep218
  %found.conflict222 = and i1 %bound0220, %bound1221
  %i.aad = or i32 %11, %9
  %i.aae = icmp slt i32 %i.aad, 0
  %i.aaf = or i1 %found.conflict222, %i.aae
  %n.vec229 = and i64 %wide.trip.count146.i.i, 2147483640 ; 3 uses
  %broadcast.splat231 = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat233 = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat235 = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %broadcast.splatinsert236 = insertelement <8 x i32> poison, i32 %i.uv, i64 0
  %broadcast.splat237 = shufflevector <8 x i32> %broadcast.splatinsert236, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert238 = insertelement <8 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat239 = shufflevector <8 x i32> %broadcast.splatinsert238, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert240 = insertelement <8 x i32> poison, i32 %i.ut, i64 0
  %broadcast.splat241 = shufflevector <8 x i32> %broadcast.splatinsert240, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat243 = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat245 = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat247 = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %broadcast.splatinsert248 = insertelement <8 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat249 = shufflevector <8 x i32> %broadcast.splatinsert248, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n257 = icmp eq i64 %n.vec229, %wide.trip.count146.i.i
  %i.aag = extractelement <8 x i32> %i.cs, i64 2
  %i.aah = extractelement <8 x i32> %i.cs, i64 3
  %i.aai = extractelement <8 x i32> %i.cs, i64 4
  %i.aaj = extractelement <8 x i32> %i.cs, i64 5
  %i.aak = extractelement <8 x i32> %i.cs, i64 6
  %i.aal = extractelement <8 x i32> %i.cs, i64 7
  br label %.split115.us.us.i.i

.split115.preheader.i.i:                          ; preds = %.preheader.i.i
  %i.aam = add i32 %i.de, %i.uv                   ; 2 uses
  %i.aan = add i32 %i.dj, %i.uv                   ; 2 uses
  %18 = add nsw i32 %smax148.i.i, -1
  %19 = zext nneg i32 %18 to i64                  ; 2 uses
  %i.aao = mul nsw i64 %i.zx, %19
  %i.aap = shl nuw nsw i64 %wide.trip.count146.i.i, 1 ; 2 uses
  %i.aaq = getelementptr i8, ptr %8, i64 %i.aao
  %scevgep = getelementptr i8, ptr %i.aaq, i64 %i.aap
  %i.aar = mul nsw i64 %i.zy, %19
  %i.aas = getelementptr i8, ptr %10, i64 %i.aar
  %scevgep181 = getelementptr i8, ptr %i.aas, i64 %i.aap
  %min.iters.check184 = icmp ult i32 %13, 15
  %bound0 = icmp ult ptr %8, %scevgep181
  %bound1 = icmp ult ptr %10, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.aat = or i32 %11, %9
  %i.aau = icmp slt i32 %i.aat, 0
  %i.aav = or i1 %found.conflict, %i.aau
  %n.vec187 = and i64 %wide.trip.count146.i.i, 2147483640 ; 3 uses
  %broadcast.splat189 = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat191 = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat193 = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %broadcast.splatinsert194 = insertelement <8 x i32> poison, i32 %i.aam, i64 0
  %broadcast.splat195 = shufflevector <8 x i32> %broadcast.splatinsert194, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert196 = insertelement <8 x i32> poison, i32 %i.ut, i64 0
  %broadcast.splat197 = shufflevector <8 x i32> %broadcast.splatinsert196, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat199 = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat201 = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat203 = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %broadcast.splatinsert204 = insertelement <8 x i32> poison, i32 %i.aan, i64 0
  %broadcast.splat205 = shufflevector <8 x i32> %broadcast.splatinsert204, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert206 = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat207 = shufflevector <8 x i32> %broadcast.splatinsert206, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n215 = icmp eq i64 %n.vec187, %wide.trip.count146.i.i
  %i.aaw = extractelement <8 x i32> %i.cs, i64 2
  %i.aax = extractelement <8 x i32> %i.cs, i64 3
  %i.aay = extractelement <8 x i32> %i.cs, i64 4
  %i.aaz = extractelement <8 x i32> %i.cs, i64 5
  %i.aba = extractelement <8 x i32> %i.cs, i64 6
  %i.abb = extractelement <8 x i32> %i.cs, i64 7
  br label %.split115.i.i

.split115.us.us.i.i:                              ; preds = %.split115.us.us.i.i.preheader, %.split117.us.us.i.i
  %.198.us.i.i = phi i32 [ %i.aeb, %.split117.us.us.i.i ], [ 0, %.split115.us.us.i.i.preheader ]
  %.094.us.i.i = phi ptr [ %i.aea, %.split117.us.us.i.i ], [ %10, %.split115.us.us.i.i.preheader ] ; 3 uses
  %.093.us.i.i = phi ptr [ %i.adz, %.split117.us.us.i.i ], [ %8, %.split115.us.us.i.i.preheader ] ; 3 uses
  %.1.us.i.i = phi ptr [ %i.ady, %.split117.us.us.i.i ], [ %i.ej, %.split115.us.us.i.i.preheader ] ; 5 uses
  %invariant.gep169.i.i = getelementptr [2 x i8], ptr %.1.us.i.i, i64 %i.fp ; 2 uses
  %invariant.gep171.i.i = getelementptr [2 x i8], ptr %.1.us.i.i, i64 %i.dw ; 2 uses
  %brmerge = select i1 %min.iters.check226, i1 true, i1 %i.aaf
  br i1 %brmerge, label %scalar.ph225.preheader, label %vector.body250

vector.body250:                                   ; preds = %.split115.us.us.i.i, %vector.body250
  %index251 = phi i64 [ %index.next255, %vector.body250 ], [ 0, %.split115.us.us.i.i ] ; 6 uses
  %i.abc = getelementptr inbounds nuw [2 x i8], ptr %.1.us.i.i, i64 %index251
  %wide.load252 = load <8 x i16>, ptr %i.abc, align 2, !tbaa !12
  %i.abd = sext <8 x i16> %wide.load252 to <8 x i32> ; 2 uses
  %i.abe = getelementptr [2 x i8], ptr %invariant.gep169.i.i, i64 %index251
  %wide.load253 = load <8 x i16>, ptr %i.abe, align 2, !tbaa !12
  %i.abf = sext <8 x i16> %wide.load253 to <8 x i32> ; 2 uses
  %i.abg = getelementptr [2 x i8], ptr %invariant.gep171.i.i, i64 %index251
  %wide.load254 = load <8 x i16>, ptr %i.abg, align 2, !tbaa !12
  %i.abh = sext <8 x i16> %wide.load254 to <8 x i32> ; 2 uses
  %i.abi = mul nsw <8 x i32> %broadcast.splat231, %i.abd
  %i.abj = mul nsw <8 x i32> %broadcast.splat233, %i.abf
  %i.abk = mul nsw <8 x i32> %broadcast.splat235, %i.abh
  %i.abl = add <8 x i32> %i.abi, %broadcast.splat237
  %i.abm = add <8 x i32> %i.abl, %i.abj
  %i.abn = add <8 x i32> %i.abm, %i.abk
  %i.abo = add <8 x i32> %i.abn, %broadcast.splat239
  %i.abp = ashr <8 x i32> %i.abo, %broadcast.splat241 ; 2 uses
  %i.abq = mul nsw <8 x i32> %broadcast.splat243, %i.abd
  %i.abr = mul nsw <8 x i32> %broadcast.splat245, %i.abf
  %i.abs = mul nsw <8 x i32> %broadcast.splat247, %i.abh
  %i.abt = add <8 x i32> %i.abq, %broadcast.splat237
  %i.abu = add <8 x i32> %i.abt, %i.abr
  %i.abv = add <8 x i32> %i.abu, %i.abs
  %i.abw = add <8 x i32> %i.abv, %broadcast.splat249
  %i.abx = ashr <8 x i32> %i.abw, %broadcast.splat241 ; 2 uses
  %i.aby = trunc <8 x i32> %i.abp to <8 x i16>    ; 2 uses
  %i.abz = icmp ugt <8 x i16> %i.aby, splat (i16 255)
  %i.aca = trunc <8 x i32> %i.abp to <8 x i8>
  %i.acb = icmp sgt <8 x i16> %i.aby, splat (i16 -1)
  %i.acc = sext <8 x i1> %i.acb to <8 x i8>
  %i.acd = select <8 x i1> %i.abz, <8 x i8> %i.acc, <8 x i8> %i.aca
  %i.ace = getelementptr inbounds nuw i8, ptr %.093.us.i.i, i64 %index251
  store <8 x i8> %i.acd, ptr %i.ace, align 1, !tbaa !27, !alias.scope !32, !noalias !35
  %i.acf = trunc <8 x i32> %i.abx to <8 x i16>    ; 2 uses
  %i.acg = icmp ugt <8 x i16> %i.acf, splat (i16 255)
  %i.ach = trunc <8 x i32> %i.abx to <8 x i8>
  %i.aci = icmp sgt <8 x i16> %i.acf, splat (i16 -1)
  %i.acj = sext <8 x i1> %i.aci to <8 x i8>
  %i.ack = select <8 x i1> %i.acg, <8 x i8> %i.acj, <8 x i8> %i.ach
  %i.acl = getelementptr inbounds nuw i8, ptr %.094.us.i.i, i64 %index251
  store <8 x i8> %i.ack, ptr %i.acl, align 1, !tbaa !27, !alias.scope !35
  %index.next255 = add nuw i64 %index251, 8       ; 2 uses
  %i.acm = icmp eq i64 %index.next255, %n.vec229
  br i1 %i.acm, label %middle.block256, label %vector.body250, !llvm.loop !37

middle.block256:                                  ; preds = %vector.body250
  br i1 %cmp.n257, label %.split117.us.us.i.i, label %scalar.ph225.preheader

scalar.ph225.preheader:                           ; preds = %.split115.us.us.i.i, %middle.block256
  %indvars.iv142.i.i.ph = phi i64 [ %n.vec229, %middle.block256 ], [ 0, %.split115.us.us.i.i ]
  br label %scalar.ph225

scalar.ph225:                                     ; preds = %scalar.ph225.preheader, %scalar.ph225
  %indvars.iv142.i.i = phi i64 [ %indvars.iv.next143.i.i, %scalar.ph225 ], [ %indvars.iv142.i.i.ph, %scalar.ph225.preheader ] ; 6 uses
  %i.acn = getelementptr inbounds nuw [2 x i8], ptr %.1.us.i.i, i64 %indvars.iv142.i.i
  %i.aco = load i16, ptr %i.acn, align 2, !tbaa !12
  %i.acp = sext i16 %i.aco to i32                 ; 2 uses
  %gep170.i.i = getelementptr [2 x i8], ptr %invariant.gep169.i.i, i64 %indvars.iv142.i.i
  %i.acq = load i16, ptr %gep170.i.i, align 2, !tbaa !12
  %i.acr = sext i16 %i.acq to i32                 ; 2 uses
  %gep172.i.i = getelementptr [2 x i8], ptr %invariant.gep171.i.i, i64 %indvars.iv142.i.i
  %i.acs = load i16, ptr %gep172.i.i, align 2, !tbaa !12
  %i.act = sext i16 %i.acs to i32                 ; 2 uses
  %i.acu = mul nsw i32 %i.aag, %i.acp
  %i.acv = mul nsw i32 %i.aah, %i.acr
  %i.acw = mul nsw i32 %i.aai, %i.act
  %i.acx = add i32 %i.acu, %i.uv
  %i.acy = add i32 %i.acx, %i.acv
  %i.acz = add i32 %i.acy, %i.acw
  %i.ada = add i32 %i.acz, %i.de
  %i.adb = ashr i32 %i.ada, %i.ut                 ; 2 uses
  %i.adc = mul nsw i32 %i.aaj, %i.acp
  %i.add = mul nsw i32 %i.aak, %i.acr
  %i.ade = mul nsw i32 %i.aal, %i.act
  %i.adf = add i32 %i.adc, %i.uv
  %i.adg = add i32 %i.adf, %i.add
  %i.adh = add i32 %i.adg, %i.ade
  %i.adi = add i32 %i.adh, %i.dj
  %i.adj = ashr i32 %i.adi, %i.ut                 ; 2 uses
  %i.adk = trunc i32 %i.adb to i16                ; 2 uses
  %i.adl = icmp ugt i16 %i.adk, 255
  %i.adm = trunc i32 %i.adb to i8
  %i.adn = icmp sgt i16 %i.adk, -1
  %i.ado = sext i1 %i.adn to i8
  %i.adp = select i1 %i.adl, i8 %i.ado, i8 %i.adm
  %i.adq = getelementptr inbounds nuw i8, ptr %.093.us.i.i, i64 %indvars.iv142.i.i
  store i8 %i.adp, ptr %i.adq, align 1, !tbaa !27
  %i.adr = trunc i32 %i.adj to i16                ; 2 uses
  %i.ads = icmp ugt i16 %i.adr, 255
  %i.adt = trunc i32 %i.adj to i8
  %i.adu = icmp sgt i16 %i.adr, -1
  %i.adv = sext i1 %i.adu to i8
  %i.adw = select i1 %i.ads, i8 %i.adv, i8 %i.adt
  %i.adx = getelementptr inbounds nuw i8, ptr %.094.us.i.i, i64 %indvars.iv142.i.i
  store i8 %i.adw, ptr %i.adx, align 1, !tbaa !27
  %indvars.iv.next143.i.i = add nuw nsw i64 %indvars.iv142.i.i, 1 ; 2 uses
  %exitcond147.not.i.i = icmp eq i64 %indvars.iv.next143.i.i, %wide.trip.count146.i.i
  br i1 %exitcond147.not.i.i, label %.split117.us.us.i.i, label %scalar.ph225, !llvm.loop !38

.split117.us.us.i.i:                              ; preds = %scalar.ph225, %middle.block256
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %.1.us.i.i, i64 %i.ef
  %i.adz = getelementptr inbounds i8, ptr %.093.us.i.i, i64 %i.zx
  %i.aea = getelementptr inbounds i8, ptr %.094.us.i.i, i64 %i.zy
  %i.aeb = add nuw nsw i32 %.198.us.i.i, 1        ; 2 uses
  %exitcond149.not.i.i = icmp eq i32 %i.aeb, %smax148.i.i
  br i1 %exitcond149.not.i.i, label %DoSharpArgbToYuv.exit, label %.split115.us.us.i.i, !llvm.loop !39

.split115.i.i:                                    ; preds = %.split117.i.i, %.split115.preheader.i.i
  %.198.i.i = phi i32 [ %i.agv, %.split117.i.i ], [ 0, %.split115.preheader.i.i ]
  %.094.i.i = phi ptr [ %i.agu, %.split117.i.i ], [ %10, %.split115.preheader.i.i ] ; 3 uses
  %.093.i.i = phi ptr [ %i.agt, %.split117.i.i ], [ %8, %.split115.preheader.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %i.ags, %.split117.i.i ], [ %i.ej, %.split115.preheader.i.i ] ; 5 uses
  %invariant.gep.i280.i = getelementptr [2 x i8], ptr %.1.i.i, i64 %i.fp ; 2 uses
  %invariant.gep167.i.i = getelementptr [2 x i8], ptr %.1.i.i, i64 %i.dw ; 2 uses
  %brmerge267 = select i1 %min.iters.check184, i1 true, i1 %i.aav
  br i1 %brmerge267, label %scalar.ph183.preheader, label %vector.body208

vector.body208:                                   ; preds = %.split115.i.i, %vector.body208
  %index209 = phi i64 [ %index.next213, %vector.body208 ], [ 0, %.split115.i.i ] ; 6 uses
  %i.aec = getelementptr inbounds nuw [2 x i8], ptr %.1.i.i, i64 %index209
  %wide.load210 = load <8 x i16>, ptr %i.aec, align 2, !tbaa !12
  %i.aed = sext <8 x i16> %wide.load210 to <8 x i32> ; 2 uses
  %i.aee = getelementptr [2 x i8], ptr %invariant.gep.i280.i, i64 %index209
  %wide.load211 = load <8 x i16>, ptr %i.aee, align 2, !tbaa !12
  %i.aef = sext <8 x i16> %wide.load211 to <8 x i32> ; 2 uses
  %i.aeg = getelementptr [2 x i8], ptr %invariant.gep167.i.i, i64 %index209
  %wide.load212 = load <8 x i16>, ptr %i.aeg, align 2, !tbaa !12
  %i.aeh = sext <8 x i16> %wide.load212 to <8 x i32> ; 2 uses
  %i.aei = mul nsw <8 x i32> %broadcast.splat189, %i.aed
  %i.aej = mul nsw <8 x i32> %broadcast.splat191, %i.aef
  %i.aek = mul nsw <8 x i32> %broadcast.splat193, %i.aeh
  %i.ael = add <8 x i32> %broadcast.splat195, %i.aei
  %i.aem = add <8 x i32> %i.ael, %i.aej
  %i.aen = add <8 x i32> %i.aem, %i.aek
  %i.aeo = ashr <8 x i32> %i.aen, %broadcast.splat197 ; 2 uses
  %i.aep = mul nsw <8 x i32> %broadcast.splat199, %i.aed
  %i.aeq = mul nsw <8 x i32> %broadcast.splat201, %i.aef
  %i.aer = mul nsw <8 x i32> %broadcast.splat203, %i.aeh
  %i.aes = add <8 x i32> %broadcast.splat205, %i.aep
  %i.aet = add <8 x i32> %i.aes, %i.aeq
  %i.aeu = add <8 x i32> %i.aet, %i.aer
  %i.aev = ashr <8 x i32> %i.aeu, %broadcast.splat197 ; 2 uses
  %i.aew = and <8 x i32> %i.aeo, splat (i32 32768)
  %i.aex = icmp eq <8 x i32> %i.aew, zeroinitializer
  %i.aey = and <8 x i32> %i.aeo, splat (i32 65535)
  %i.aez = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat207, <8 x i32> %i.aey)
  %i.afa = trunc nuw <8 x i32> %i.aez to <8 x i16>
  %i.afb = select <8 x i1> %i.aex, <8 x i16> %i.afa, <8 x i16> zeroinitializer
  %i.afc = getelementptr inbounds nuw [2 x i8], ptr %.093.i.i, i64 %index209
  store <8 x i16> %i.afb, ptr %i.afc, align 2, !tbaa !12, !alias.scope !40, !noalias !43
  %i.afd = and <8 x i32> %i.aev, splat (i32 32768)
  %i.afe = icmp eq <8 x i32> %i.afd, zeroinitializer
  %i.aff = and <8 x i32> %i.aev, splat (i32 65535)
  %i.afg = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat207, <8 x i32> %i.aff)
  %i.afh = trunc nuw <8 x i32> %i.afg to <8 x i16>
end_hunk_0
