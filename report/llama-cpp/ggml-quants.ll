Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 329
begin_hunk_0_@quantize_iq1_s:bb.a
  %i.sy = getelementptr i8, ptr %i.m, i64 %indvars.iv.next466.i.us
  %i.sz = getelementptr i8, ptr %i.sy, i64 8
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !47, !noalias !784
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds i8, ptr %i.c, i64 %i.tb
  store i8 2, ptr %i.tc, align 1, !tbaa !34, !noalias !784
  %indvars.iv.next466.i.us.1 = shl i64 %indvars.iv465.i.us, 3
  %i.td = getelementptr i8, ptr %i.m, i64 %indvars.iv.next466.i.us.1
  %i.te = getelementptr i8, ptr %i.td, i64 16
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !47, !noalias !784
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds i8, ptr %i.c, i64 %i.tg
  store i8 2, ptr %i.th, align 1, !tbaa !34, !noalias !784
  %indvars.iv.next466.i.us.2 = add nuw nsw i64 %indvars.iv465.i.us, 3 ; 2 uses
  %.idx516.i.us.3 = shl nuw nsw i64 %indvars.iv.next466.i.us.2, 3
  %i.ti = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx516.i.us.3
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !47, !noalias !784
  %i.tk = sext i32 %i.tj to i64
  %i.tl = getelementptr inbounds i8, ptr %i.c, i64 %i.tk
  store i8 2, ptr %i.tl, align 1, !tbaa !34, !noalias !784
  %indvars.iv.next466.i.us.3 = add nuw nsw i64 %indvars.iv465.i.us, 4
  %i.tm = trunc nuw i64 %indvars.iv.next466.i.us.2 to i32
  %i.tn = icmp slt i32 %i.tm, 31
  br i1 %i.tn, label %.lr.ph405.i.us, label %._crit_edge.i.us, !llvm.loop !775

._crit_edge.i.us:                                 ; preds = %.lr.ph405.i.us.prol.loopexit, %.lr.ph405.i.us, %.preheader376.i.us
  %i.to = fcmp olt float %.3341.i.us, 0.000000e+00
  %i.tp = load <4 x i8>, ptr %i.c, align 16, !tbaa !34, !noalias !784 ; 2 uses
  %i.tq = load <4 x i8>, ptr %i.ch, align 4, !tbaa !34, !noalias !784 ; 2 uses
  br i1 %i.to, label %.preheader375.preheader.i.us, label %.preheader.i.us

.preheader375.preheader.i.us:                     ; preds = %._crit_edge.i.us
  %i.tr = sub <4 x i8> splat (i8 2), %i.tp        ; 3 uses
  %i.ts = extractelement <4 x i8> %i.tr, i64 0
  store i8 %i.ts, ptr %i.c, align 16, !tbaa !34, !noalias !784
  %i.tt = sub <4 x i8> splat (i8 2), %i.tq        ; 2 uses
  %i.tu = load i8, ptr %i.ci, align 8, !tbaa !34, !noalias !784
  %i.tv = load <16 x i8>, ptr %i.cj, align 1
  %i.tw = shufflevector <4 x i8> %i.tr, <4 x i8> %i.tt, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tx = shufflevector <16 x i8> %i.tw, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ty = insertelement <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, i8 %i.tu, i64 7
  %i.tz = shufflevector <16 x i8> %i.ty, <16 x i8> %i.tv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ua = sub <16 x i8> %i.tx, %i.tz
  store <16 x i8> %i.ua, ptr %i.cg, align 1, !tbaa !34, !noalias !784
  %i.ub = load <8 x i8>, ptr %i.cm, align 1, !tbaa !34, !noalias !784
  %i.uc = sub <8 x i8> splat (i8 2), %i.ub
  store <8 x i8> %i.uc, ptr %i.cm, align 1, !tbaa !34, !noalias !784
  %i.ud = load <4 x i8>, ptr %i.cp, align 1, !tbaa !34, !noalias !784
  %i.ue = sub <4 x i8> splat (i8 2), %i.ud
  store <4 x i8> %i.ue, ptr %i.cp, align 1, !tbaa !34, !noalias !784
  %i.uf = load i8, ptr %i.cr, align 1, !tbaa !34, !noalias !784
  %i.ug = sub i8 2, %i.uf
  store i8 %i.ug, ptr %i.cr, align 1, !tbaa !34, !noalias !784
  %i.uh = load i8, ptr %i.cs, align 2, !tbaa !34, !noalias !784
  %i.ui = sub i8 2, %i.uh
  store i8 %i.ui, ptr %i.cs, align 2, !tbaa !34, !noalias !784
  %i.uj = load i8, ptr %i.ct, align 1, !tbaa !34, !noalias !784
  %i.uk = sub i8 2, %i.uj
  store i8 %i.uk, ptr %i.ct, align 1, !tbaa !34, !noalias !784
  %i.ul = fneg float %.3341.i.us
  %i.um = sub nsw i32 0, %.3.i.us
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader375.preheader.i.us, %._crit_edge.i.us
  %.4342.i.us = phi float [ %i.ul, %.preheader375.preheader.i.us ], [ %.3341.i.us, %._crit_edge.i.us ] ; 6 uses
  %.4.i.us = phi i32 [ %i.um, %.preheader375.preheader.i.us ], [ %.3.i.us, %._crit_edge.i.us ] ; 2 uses
  %i.un = phi <4 x i8> [ %i.tr, %.preheader375.preheader.i.us ], [ %i.tp, %._crit_edge.i.us ]
  %i.uo = phi <4 x i8> [ %i.tt, %.preheader375.preheader.i.us ], [ %i.tq, %._crit_edge.i.us ]
  %i.up = icmp eq i32 %.4.i.us, 1
  %i.uq = select i1 %i.up, ptr @__const.quantize_row_iq1_m_impl.x_p, ptr @__const.quantize_row_iq1_m_impl.x_m ; 12 uses
  %i.ur = sext <4 x i8> %i.un to <4 x i16>
  %i.us = zext <4 x i8> %i.uo to <4 x i16>
  %i.ut = shufflevector <4 x i16> %i.ur, <4 x i16> %i.us, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.uu = shl <8 x i16> %i.ut, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.uv = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.uu)
  %i.uw = zext i16 %i.uv to i64
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.uw
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !47, !noalias !783 ; 3 uses
  %i.uz = icmp sgt i32 %i.uy, -1                  ; 2 uses
  br i1 %i.uz, label %.preheader.1.i.us, label %bb.s

bb.s:                                             ; preds = %.preheader.i.us
  %i.va = sext i32 %i.uy to i64
  %i.vb = sub nsw i64 0, %i.va
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.vb
  %i.vd = getelementptr inbounds i8, ptr %i.vc, i64 -2
  %i.ve = call fastcc i32 @iq1_find_best_neighbour2(ptr noundef %i.vd, ptr noundef %i.cz, ptr noundef nonnull readonly %i.ea, ptr noundef nonnull %i.b, float noundef %.4342.i.us, ptr noundef %i.uq, ptr noundef nonnull %i.c)
  br label %.preheader.1.i.us

.preheader.1.i.us:                                ; preds = %bb.s, %.preheader.i.us
  %.0316.i.us = phi i32 [ %i.ve, %bb.s ], [ %i.uy, %.preheader.i.us ] ; 2 uses
  %i.vf = trunc i32 %.0316.i.us to i16            ; 2 uses
  store i16 %i.vf, ptr %i.g, align 2, !tbaa !58, !noalias !784
  %i.vg = load <4 x i8>, ptr %i.ci, align 8, !tbaa !34, !noalias !784
  %i.vh = sext <4 x i8> %i.vg to <4 x i16>
  %i.vi = load <4 x i8>, ptr %i.ck, align 4, !tbaa !34, !noalias !784
  %i.vj = zext <4 x i8> %i.vi to <4 x i16>
  %i.vk = shufflevector <4 x i16> %i.vh, <4 x i16> %i.vj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vl = shl <8 x i16> %i.vk, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.vm = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.vl)
  %i.vn = zext i16 %i.vm to i64
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.vn
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !47, !noalias !783 ; 3 uses
  %i.vq = icmp slt i32 %i.vp, 0
  br i1 %i.vq, label %bb.t, label %.preheader.2.i.us

bb.t:                                             ; preds = %.preheader.1.i.us
  %i.vr = sext i32 %i.vp to i64
  %i.vs = sub nsw i64 0, %i.vr
  %i.vt = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.vs
  %i.vu = getelementptr inbounds i8, ptr %i.vt, i64 -2
  %i.vv = call fastcc i32 @iq1_find_best_neighbour2(ptr noundef %i.vu, ptr noundef %i.cz, ptr noundef nonnull readonly %i.fv, ptr noundef %i.q, float noundef %.4342.i.us, ptr noundef %i.uq, ptr noundef %i.ci)
  br label %.preheader.2.i.us

.preheader.2.i.us:                                ; preds = %bb.t, %.preheader.1.i.us
  %.1321.1.i.us = phi i1 [ false, %bb.t ], [ %i.uz, %.preheader.1.i.us ]
  %.0316.1.i.us = phi i32 [ %i.vv, %bb.t ], [ %i.vp, %.preheader.1.i.us ] ; 2 uses
  %i.vw = trunc i32 %.0316.1.i.us to i16          ; 2 uses
  store i16 %i.vw, ptr %i.cu, align 2, !tbaa !58, !noalias !784
  %i.vx = load <4 x i8>, ptr %i.cl, align 16, !tbaa !34, !noalias !784
  %i.vy = sext <4 x i8> %i.vx to <4 x i16>
  %i.vz = load <4 x i8>, ptr %i.cn, align 4, !tbaa !34, !noalias !784
  %i.wa = zext <4 x i8> %i.vz to <4 x i16>
  %i.wb = shufflevector <4 x i16> %i.vy, <4 x i16> %i.wa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wc = shl <8 x i16> %i.wb, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.wd = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.wc)
  %i.we = zext i16 %i.wd to i64
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.we
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !47, !noalias !783 ; 3 uses
  %i.wh = icmp slt i32 %i.wg, 0
  br i1 %i.wh, label %bb.u, label %.preheader.3.i.us

bb.u:                                             ; preds = %.preheader.2.i.us
  %i.wi = sext i32 %i.wg to i64
  %i.wj = sub nsw i64 0, %i.wi
  %i.wk = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.wj
  %i.wl = getelementptr inbounds i8, ptr %i.wk, i64 -2
  %i.wm = call fastcc i32 @iq1_find_best_neighbour2(ptr noundef %i.wl, ptr noundef %i.cz, ptr noundef nonnull readonly %i.hp, ptr noundef %i.s, float noundef %.4342.i.us, ptr noundef %i.uq, ptr noundef %i.cl)
  br label %.preheader.3.i.us

.preheader.3.i.us:                                ; preds = %bb.u, %.preheader.2.i.us
  %.1321.2.i.us = phi i1 [ false, %bb.u ], [ %.1321.1.i.us, %.preheader.2.i.us ]
  %.0316.2.i.us = phi i32 [ %i.wm, %bb.u ], [ %i.wg, %.preheader.2.i.us ] ; 2 uses
  %i.wn = trunc i32 %.0316.2.i.us to i16          ; 2 uses
  store i16 %i.wn, ptr %i.cv, align 2, !tbaa !58, !noalias !784
  %i.wo = load <4 x i8>, ptr %i.co, align 8, !tbaa !34, !noalias !784
  %i.wp = sext <4 x i8> %i.wo to <4 x i16>
  %i.wq = load <4 x i8>, ptr %i.cq, align 4, !tbaa !34, !noalias !784
  %i.wr = zext <4 x i8> %i.wq to <4 x i16>
  %i.ws = shufflevector <4 x i16> %i.wp, <4 x i16> %i.wr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wt = shl <8 x i16> %i.ws, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.wu = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.wt)
  %i.wv = zext i16 %i.wu to i64
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.wv
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !47, !noalias !783 ; 3 uses
  %i.wy = icmp slt i32 %i.wx, 0
  br i1 %i.wy, label %.thread.i.us, label %bb.v

bb.v:                                             ; preds = %.preheader.3.i.us
  %i.wz = trunc i32 %i.wx to i16                  ; 3 uses
  store i16 %i.wz, ptr %i.cw, align 2, !tbaa !58, !noalias !784
  br i1 %.1321.2.i.us, label %bb.x, label %.preheader374.preheader.i.us

.thread.i.us:                                     ; preds = %.preheader.3.i.us
  %i.xa = sext i32 %i.wx to i64
  %i.xb = sub nsw i64 0, %i.xa
  %i.xc = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.xb
  %i.xd = getelementptr inbounds i8, ptr %i.xc, i64 -2
  %i.xe = call fastcc i32 @iq1_find_best_neighbour2(ptr noundef %i.xd, ptr noundef %i.cz, ptr noundef nonnull readonly %i.jj, ptr noundef %i.u, float noundef %.4342.i.us, ptr noundef %i.uq, ptr noundef %i.co)
  %i.xf = trunc i32 %i.xe to i16                  ; 2 uses
  store i16 %i.xf, ptr %i.cw, align 2, !tbaa !58, !noalias !784
  br label %.preheader374.preheader.i.us

.preheader374.preheader.i.us:                     ; preds = %.thread.i.us, %bb.v
  %i.xg = phi i16 [ %i.xf, %.thread.i.us ], [ %i.wz, %bb.v ]
  br label %.preheader374.i.us

.preheader374.i.us:                               ; preds = %.preheader374.i.us, %.preheader374.preheader.i.us
  %indvars.iv482.i.us = phi i64 [ 0, %.preheader374.preheader.i.us ], [ %indvars.iv.next483.i.us, %.preheader374.i.us ] ; 3 uses
  %i.xh = phi <2 x float> [ zeroinitializer, %.preheader374.preheader.i.us ], [ %i.aao, %.preheader374.i.us ]
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv482.i.us
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !58, !noalias !784
  %i.xk = zext i16 %i.xj to i64
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.xk
  %i.xm = shl nuw nsw i64 %indvars.iv482.i.us, 3  ; 5 uses
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.xm
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.xm
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.xm
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.xm
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 16
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.xm
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  %i.xv = load <8 x i8>, ptr %i.xl, align 1, !tbaa !34, !noalias !783
  %i.xw = sext <8 x i8> %i.xv to <8 x i16>
  %i.xx = add nsw <8 x i16> %i.xw, splat (i16 -1)
  %i.xy = sdiv <8 x i16> %i.xx, splat (i16 2)     ; 8 uses
  %i.xz = extractelement <8 x i16> %i.xy, i64 0
  %i.ya = sext i16 %i.xz to i64
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.ya
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !36, !noalias !784
  %i.yd = extractelement <8 x i16> %i.xy, i64 1
  %i.ye = sext i16 %i.yd to i64
  %i.yf = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.ye
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !36, !noalias !784 ; 2 uses
  %i.yh = extractelement <8 x i16> %i.xy, i64 2
  %i.yi = sext i16 %i.yh to i64
  %i.yj = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.yi
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !36, !noalias !784 ; 2 uses
  %i.yl = extractelement <8 x i16> %i.xy, i64 3
  %i.ym = sext i16 %i.yl to i64
  %i.yn = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.ym
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !36, !noalias !784 ; 2 uses
  %i.yp = extractelement <8 x i16> %i.xy, i64 4
  %i.yq = sext i16 %i.yp to i64
  %i.yr = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.yq
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !36, !noalias !784
  %i.yt = extractelement <8 x i16> %i.xy, i64 5
  %i.yu = sext i16 %i.yt to i64
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.yu
  %i.yw = load float, ptr %i.yv, align 4, !tbaa !36, !noalias !784
  %i.yx = extractelement <8 x i16> %i.xy, i64 6
  %i.yy = sext i16 %i.yx to i64
  %i.yz = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.yy
  %i.za = load float, ptr %i.yz, align 4, !tbaa !36, !noalias !784
  %i.zb = extractelement <8 x i16> %i.xy, i64 7
  %i.zc = sext i16 %i.zb to i64
  %i.zd = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.zc
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !36, !noalias !784 ; 2 uses
  %i.zf = load <2 x float>, ptr %i.xo, align 4, !tbaa !36, !alias.scope !780, !noalias !783 ; 2 uses
  %i.zg = load <8 x float>, ptr %i.xn, align 16, !tbaa !36, !noalias !784
  %i.zh = insertelement <8 x float> poison, float %i.yc, i64 0 ; 2 uses
  %i.zi = insertelement <8 x float> %i.zh, float %i.yg, i64 1
  %i.zj = insertelement <8 x float> %i.zi, float %i.yk, i64 2
  %i.zk = insertelement <8 x float> %i.zj, float %i.yo, i64 3
  %i.zl = insertelement <8 x float> %i.zk, float %i.ys, i64 4 ; 2 uses
  %i.zm = insertelement <8 x float> %i.zl, float %i.yw, i64 5 ; 2 uses
  %i.zn = insertelement <8 x float> %i.zm, float %i.za, i64 6 ; 2 uses
  %i.zo = insertelement <8 x float> %i.zn, float %i.ze, i64 7
  %i.zp = fmul <8 x float> %i.zg, %i.zo           ; 8 uses
  %i.zq = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> zeroinitializer
  %5 = shufflevector <8 x float> %i.zh, <8 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.zr = shufflevector <2 x float> %5, <2 x float> %i.zf, <2 x i32> <i32 0, i32 2>
  %i.zs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zq, <2 x float> %i.zr, <2 x float> %i.xh)
  %i.zt = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zu = insertelement <2 x float> %i.zf, float %i.yg, i64 0
  %i.zv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zt, <2 x float> %i.zu, <2 x float> %i.zs)
  %i.zw = load <2 x float>, ptr %i.xq, align 4, !tbaa !36, !alias.scope !780, !noalias !783 ; 2 uses
  %i.zx = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.zy = insertelement <2 x float> poison, float %i.yk, i64 0
  %i.zz = shufflevector <2 x float> %i.zy, <2 x float> %i.zw, <2 x i32> <i32 0, i32 2>
  %i.aaa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zx, <2 x float> %i.zz, <2 x float> %i.zv)
  %i.aab = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.aac = insertelement <2 x float> %i.zw, float %i.yo, i64 0
  %i.aad = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aab, <2 x float> %i.aac, <2 x float> %i.aaa)
  %i.aae = load <2 x float>, ptr %i.xs, align 4, !tbaa !36, !alias.scope !780, !noalias !783
  %i.aaf = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 4, i32 4>
  %6 = shufflevector <2 x float> %i.aae, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %7 = shufflevector <8 x float> %i.zl, <8 x float> %6, <2 x i32> <i32 4, i32 8>
  %i.aag = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaf, <2 x float> %7, <2 x float> %i.aad)
  %i.aah = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 5, i32 5>
  %8 = shufflevector <8 x float> %i.zm, <8 x float> %6, <2 x i32> <i32 5, i32 9>
  %i.aai = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aah, <2 x float> %8, <2 x float> %i.aag)
  %i.aaj = load <2 x float>, ptr %i.xu, align 4, !tbaa !36, !alias.scope !780, !noalias !783 ; 2 uses
  %i.aak = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 6, i32 6>
  %9 = shufflevector <2 x float> %i.aaj, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %10 = shufflevector <8 x float> %i.zn, <8 x float> %9, <2 x i32> <i32 6, i32 8>
  %i.aal = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aak, <2 x float> %10, <2 x float> %i.aai)
  %i.aam = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.aan = insertelement <2 x float> %i.aaj, float %i.ze, i64 0
  %i.aao = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aam, <2 x float> %i.aan, <2 x float> %i.aal) ; 4 uses
  %indvars.iv.next483.i.us = add nuw nsw i64 %indvars.iv482.i.us, 1 ; 2 uses
  %exitcond485.not.i.us = icmp eq i64 %indvars.iv.next483.i.us, 4
  br i1 %exitcond485.not.i.us, label %bb.w, label %.preheader374.i.us, !llvm.loop !776

bb.w:                                             ; preds = %.preheader374.i.us
  %i.aap = fcmp ogt <2 x float> %i.aao, zeroinitializer ; 2 uses
  %i.aaq = extractelement <2 x i1> %i.aap, i64 0
  %i.aar = extractelement <2 x i1> %i.aap, i64 1
  %or.cond5.i.us = select i1 %i.aar, i1 %i.aaq, i1 false
  %i.aas = extractelement <2 x float> %i.aao, i64 0
  %i.aat = extractelement <2 x float> %i.aao, i64 1
  %i.aau = fdiv float %i.aat, %i.aas
  %.5.i.us = select i1 %or.cond5.i.us, float %i.aau, float %.4342.i.us
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.aav = phi i16 [ %i.wz, %bb.v ], [ %i.xg, %bb.w ] ; 2 uses
  %.6.i.us = phi float [ %.4342.i.us, %bb.v ], [ %.5.i.us, %bb.w ] ; 4 uses
  %i.aaw = shl nuw nsw i64 %indvars.iv489.i.us, 2
  %i.aax = trunc i32 %.0316.i.us to i8
  %i.aay = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.aaw ; 4 uses
  store i8 %i.aax, ptr %i.aay, align 1, !tbaa !34, !alias.scope !781, !noalias !785
  %i.aaz = lshr i16 %i.vf, 8
  %i.aba = trunc i32 %.0316.1.i.us to i8
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aay, i64 1
  store i8 %i.aba, ptr %i.abb, align 1, !tbaa !34, !alias.scope !781, !noalias !785
  %i.abc = lshr i16 %i.vw, 5
  %i.abd = and i16 %i.abc, 2040
  %i.abe = or i16 %i.abd, %i.aaz
  %i.abf = trunc i32 %.0316.2.i.us to i8
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aay, i64 2
  store i8 %i.abf, ptr %i.abg, align 1, !tbaa !34, !alias.scope !781, !noalias !785
  %i.abh = lshr i16 %i.wn, 2
  %i.abi = and i16 %i.abh, 16320
  %i.abj = or i16 %i.abe, %i.abi
  %i.abk = trunc i16 %i.aav to i8
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aay, i64 3
  store i8 %i.abk, ptr %i.abl, align 1, !tbaa !34, !alias.scope !781, !noalias !785
  %i.abm = shl i16 %i.aav, 1
  %i.abn = and i16 %i.abm, -512
  %i.abo = or i16 %i.abj, %i.abn
  %i.abp = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv489.i.us
  store i16 %i.abo, ptr %i.abp, align 2, !tbaa !58, !alias.scope !781, !noalias !785
  %i.abq = fcmp ult float %.6.i.us, 0.000000e+00
  br i1 %i.abq, label %.split32.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv489.i.us
  store float %.6.i.us, ptr %i.abr, align 4, !tbaa !36, !noalias !784
  %i.abs = trunc nsw i32 %.4.i.us to i8
  %i.abt = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv489.i.us
  store i8 %i.abs, ptr %i.abt, align 1, !tbaa !34, !noalias !784
  %i.abu = fcmp ogt float %.0355419.i.us, %.6.i.us
  %i.abv = select i1 %i.abu, float %.0355419.i.us, float %.6.i.us
  br label %bb.ab

bb.z:                                             ; preds = %bb.r
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv489.i.us
  store float 0.000000e+00, ptr %i.abw, align 4, !tbaa !36, !noalias !784
  %i.abx = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv489.i.us
  store i8 1, ptr %i.abx, align 1, !tbaa !34, !noalias !784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 1, i64 32, i1 false), !noalias !784
  br label %bb.ab

bb.aa:                                            ; preds = %bb.h
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv489.i.us
  store float 0.000000e+00, ptr %i.aby, align 4, !tbaa !36, !noalias !784
  %i.abz = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv489.i.us
  store i8 1, ptr %i.abz, align 1, !tbaa !34, !noalias !784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 1, i64 32, i1 false), !noalias !784
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.2357.i.us = phi float [ %.0355419.i.us, %bb.aa ], [ %.0355419.i.us, %bb.z ], [ %i.abv, %bb.y ] ; 3 uses
  %indvars.iv.next490.i.us = add nuw nsw i64 %indvars.iv489.i.us, 1 ; 2 uses
  %exitcond492.not.i.us = icmp eq i64 %indvars.iv.next490.i.us, 8
  br i1 %exitcond492.not.i.us, label %bb.ac, label %bb.h, !llvm.loop !777

bb.ac:                                            ; preds = %bb.ab
  %i.aca = fcmp une float %.2357.i.us, 0.000000e+00
  br i1 %i.aca, label %.loopexit.loopexit.i.us, label %.loopexit.i.us

.loopexit.loopexit.i.us:                          ; preds = %bb.ac
  %i.acb = fdiv float %.2357.i.us, 1.500000e+01   ; 2 uses
  %i.acc = fmul float %i.acb, 1.125000e+00        ; 2 uses
  %i.acd = call float @llvm.fabs.f32(float %i.acc)
  %i.ace = fmul float %i.acd, f0x77800000
  %i.acf = fmul float %i.ace, f0x08800000
  %i.acg = bitcast float %i.acc to i32            ; 2 uses
  %i.ach = shl i32 %i.acg, 1                      ; 2 uses
  %i.aci = call i32 @llvm.umax.i32(i32 %i.ach, i32 1895825408)
  %spec.store.select.i.i.us = lshr exact i32 %i.aci, 1
  %i.acj = and i32 %spec.store.select.i.i.us, 2139095040
  %i.ack = add nuw i32 %i.acj, 125829120
  %i.acl = bitcast i32 %i.ack to float
  %i.acm = fadd float %i.acf, %i.acl
  %i.acn = bitcast float %i.acm to i32            ; 2 uses
  %i.aco = lshr i32 %i.acn, 13
  %i.acp = and i32 %i.aco, 31744
  %i.acq = and i32 %i.acn, 4095
  %i.acr = add nuw nsw i32 %i.acp, %i.acq
  %i.acs = lshr i32 %i.acg, 16
  %i.act = and i32 %i.acs, 32768
  %i.acu = icmp ugt i32 %i.ach, -16777216
  %i.acv = select i1 %i.acu, i32 32256, i32 %i.acr
  %i.acw = or i32 %i.acv, %i.act
  %i.acx = trunc nuw i32 %i.acw to i16
  store i16 %i.acx, ptr %i.dc, align 2, !tbaa !64, !alias.scope !781, !noalias !785
  %i.acy = fdiv float 1.000000e+00, %i.acb
  %i.acz = load <8 x float>, ptr %i.a, align 16, !tbaa !36, !noalias !784
  %i.ada = insertelement <8 x float> poison, float %i.acy, i64 0
  %i.adb = shufflevector <8 x float> %i.ada, <8 x float> poison, <8 x i32> zeroinitializer
  %i.adc = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.adb, <8 x float> %i.acz, <8 x float> splat (float -1.000000e+00))
  %i.add = fmul <8 x float> %i.adc, splat (float 5.000000e-01)
  %i.ade = fadd <8 x float> %i.add, splat (float f0x4B400000)
  %i.adf = bitcast <8 x float> %i.ade to <8 x i32>
  %i.adg = and <8 x i32> %i.adf, splat (i32 8388607)
  %i.adh = call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.adg, <8 x i32> splat (i32 4194304))
  %i.adi = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.adh, <8 x i32> splat (i32 7)) ; 2 uses
  %i.adj = load <8 x i8>, ptr %i.h, align 8, !tbaa !34, !noalias !784
  %i.adk = icmp eq <8 x i8> %i.adj, splat (i8 -1)
  %i.adl = trunc nuw nsw <8 x i32> %i.adi to <8 x i8>
  %i.adm = or disjoint <8 x i8> %i.adl, splat (i8 8)
  %i.adn = trunc nuw nsw <8 x i32> %i.adi to <8 x i8>
  %i.ado = select <8 x i1> %i.adk, <8 x i8> %i.adm, <8 x i8> %i.adn
  %i.adp = load <8 x i16>, ptr %i.dv, align 2, !tbaa !58, !alias.scope !781, !noalias !785
  %i.adq = zext nneg <8 x i8> %i.ado to <8 x i16>
  %i.adr = shl nuw <8 x i16> %i.adq, splat (i16 12)
  %i.ads = or <8 x i16> %i.adr, %i.adp
  store <8 x i16> %i.ads, ptr %i.dv, align 2, !tbaa !58, !alias.scope !781, !noalias !785
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.loopexit.loopexit.i.us, %bb.ac
  %indvars.iv.next498.i.us = add nuw nsw i64 %indvars.iv497.i.us, 1 ; 2 uses
  %exitcond500.not.i.us = icmp eq i64 %indvars.iv.next498.i.us, %i.k
  br i1 %exitcond500.not.i.us, label %quantize_row_iq1_s_impl.exit.loopexit.us, label %.lr.ph424.i.us, !llvm.loop !778

quantize_row_iq1_s_impl.exit.loopexit.us:         ; preds = %.loopexit.i.us
  %i.adt = getelementptr inbounds [4 x i8], ptr %.01620.us25, i64 %3
  %i.adu = getelementptr inbounds nuw i8, ptr %.01521.us24, i64 %i.cx
  %i.adv = add nuw nsw i64 %.022.us23, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.adv, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !779

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.adw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 48), align 16, !tbaa !74, !noalias !784
  %i.adx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 64), align 16, !tbaa !79, !noalias !784
  %.not370.i = icmp eq ptr %i.adw, null
  %.not372.i = icmp eq ptr %i.adx, null
  br i1 %.not370.i, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  br label %.split.us26

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.ady = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 56), align 8, !tbaa !77, !noalias !784
  %.not371.i = icmp eq ptr %i.ady, null
  br i1 %.not371.i, label %.lr.ph.split.split.split.split.us, label %.lr.ph.split.split.split.split

.lr.ph.split.split.split.split.us:                ; preds = %.lr.ph.split.split.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  br label %.split28.us

.lr.ph.split.split.split.split:                   ; preds = %.lr.ph.split.split.split
  br i1 %.not372.i, label %.lr.ph.split.split.split.split.split.us, label %._crit_edge

.lr.ph.split.split.split.split.split.us:          ; preds = %.lr.ph.split.split.split.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  br label %.split30.us

._crit_edge:                                      ; preds = %quantize_row_iq1_s_impl.exit.loopexit.us, %.lr.ph.split.split.split.split, %bb.c
  %i.adz = mul i64 %2, 50
  %i.aea = mul i64 %i.adz, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %i.aea

.split.us26:                                      ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split.split.us
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4525, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #24, !noalias !783
  unreachable

.split28.us:                                      ; preds = %bb.d, %.lr.ph.split.split.split.split.us
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4526, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #24, !noalias !783
end_hunk_0
begin_hunk_1_@iq1_find_best_neighbour2:bb.a
  %.pre178 = load float, ptr %.phi.trans.insert170, align 4, !tbaa !36
  %i.q = load <2 x float>, ptr %.phi.trans.insert162, align 4, !tbaa !36
  %i.r = load <2 x float>, ptr %3, align 4, !tbaa !36
  %i.s = shufflevector <2 x float> %i.r, <2 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %.preheader

.preheader118:                                    ; preds = %.preheader118.preheader, %.preheader118
  %indvars.iv = phi i64 [ 1, %.preheader118.preheader ], [ %indvars.iv.next, %.preheader118 ] ; 2 uses
  %.089123 = phi float [ f0x7F7FFFFF, %.preheader118.preheader ], [ %.1, %.preheader118 ] ; 2 uses
  %.094122 = phi i32 [ -1, %.preheader118.preheader ], [ %.195, %.preheader118 ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.u = load i16, ptr %i.t, align 2, !tbaa !58   ; 2 uses
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v
  %i.x = load <8 x i8>, ptr %i.w, align 1, !tbaa !34
  %i.y = sext <8 x i8> %i.x to <8 x i16>
  %i.z = add nsw <8 x i16> %i.y, splat (i16 -1)
  %i.aa = sdiv <8 x i16> %i.z, splat (i16 2)      ; 8 uses
  %i.ab = extractelement <8 x i16> %i.aa, i64 0
  %i.ac = sext i16 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !36
  %i.af = extractelement <8 x i16> %i.aa, i64 1
  %i.ag = sext i16 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !36
  %i.aj = extractelement <8 x i16> %i.aa, i64 2
  %i.ak = sext i16 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !36
  %i.an = extractelement <8 x i16> %i.aa, i64 3
  %i.ao = sext i16 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !36
  %i.ar = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ai, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.am, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %i.au, <4 x float> %i.g) ; 5 uses
  %i.aw = extractelement <4 x float> %i.av, i64 0
  %i.ax = extractelement <4 x float> %i.av, i64 1
  %i.ay = extractelement <4 x float> %i.av, i64 2 ; 2 uses
  %i.az = fmul float %.pre, %i.ay
  %i.ba = extractelement <4 x float> %i.av, i64 3
  %i.bb = extractelement <8 x i16> %i.aa, i64 4
  %i.bc = sext i16 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !36
  %i.bf = extractelement <8 x i16> %i.aa, i64 5
  %i.bg = sext i16 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !36
  %i.bj = extractelement <8 x i16> %i.aa, i64 6
  %i.bk = sext i16 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !36
  %i.bn = extractelement <8 x i16> %i.aa, i64 7
  %i.bo = sext i16 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !36
  %i.br = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.bi, i64 1
  %i.bt = insertelement <4 x float> %i.bs, float %i.bm, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 3
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %i.bu, <4 x float> %i.k) ; 6 uses
  %i.bw = extractelement <4 x float> %i.bv, i64 0
  %i.bx = shufflevector <4 x float> %i.av, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %i.by = fmul <4 x float> %i.n, %i.bx            ; 4 uses
  %i.bz = extractelement <4 x float> %i.by, i64 0
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.aw, float 0.000000e+00)
  %i.cb = extractelement <4 x float> %i.by, i64 1
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.ax, float %i.ca)
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.az, float %i.ay, float %i.cc)
  %i.ce = extractelement <4 x float> %i.by, i64 2
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ba, float %i.cd)
  %i.cg = extractelement <4 x float> %i.by, i64 3
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.bw, float %i.cf)
  %i.ci = extractelement <4 x float> %i.bv, i64 1 ; 2 uses
  %i.cj = fmul float %.pre171, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.ci, float %i.ch)
  %i.cl = extractelement <4 x float> %i.bv, i64 2
  %i.cm = extractelement <4 x float> %i.bv, i64 3
  %i.cn = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.co = fmul <2 x float> %i.i, %i.cn            ; 2 uses
  %i.cp = extractelement <2 x float> %i.co, i64 0
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cl, float %i.ck)
  %i.cr = extractelement <2 x float> %i.co, i64 1
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cm, float %i.cq) ; 2 uses
  %i.ct = fcmp olt float %i.cs, %.089123          ; 2 uses
  %i.cu = zext i16 %i.u to i32
  %.195 = select i1 %i.ct, i32 %i.cu, i32 %.094122 ; 3 uses
  %.1 = select i1 %i.ct, float %i.cs, float %.089123 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %.preheader118, !llvm.loop !787

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv143 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next144, %.preheader ] ; 4 uses
  %.2128 = phi float [ %.1, %.preheader.preheader ], [ %.3, %.preheader ] ; 2 uses
  %.296127 = phi i32 [ -1, %.preheader.preheader ], [ %.397, %.preheader ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv143
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv143
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !36
  %i.cy = fneg float %i.cx
  %i.cz = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.db = load <8 x i8>, ptr %i.cv, align 1, !tbaa !34
  %i.dc = sext <8 x i8> %i.db to <8 x i16>
  %i.dd = add nsw <8 x i16> %i.dc, splat (i16 -1)
  %i.de = sdiv <8 x i16> %i.dd, splat (i16 2)     ; 8 uses
  %i.df = extractelement <8 x i16> %i.de, i64 0
  %i.dg = sext i16 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !36
  %i.dj = extractelement <8 x i16> %i.de, i64 1
  %i.dk = sext i16 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %5, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !36
  %i.dn = extractelement <8 x i16> %i.de, i64 2
  %i.do = sext i16 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %5, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !36
  %i.dr = extractelement <8 x i16> %i.de, i64 3
  %i.ds = sext i16 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !36
  %i.dv = insertelement <4 x float> poison, float %i.di, i64 0
  %i.dw = insertelement <4 x float> %i.dv, float %i.dm, i64 1
  %i.dx = insertelement <4 x float> %i.dw, float %i.dq, i64 2
  %i.dy = insertelement <4 x float> %i.dx, float %i.du, i64 3
  %i.dz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %i.dy, <4 x float> %i.da) ; 5 uses
  %i.ea = extractelement <4 x float> %i.dz, i64 0
  %i.eb = extractelement <4 x float> %i.dz, i64 1
  %i.ec = extractelement <4 x float> %i.dz, i64 2 ; 2 uses
  %i.ed = fmul float %.pre175, %i.ec
  %i.ee = extractelement <4 x float> %i.dz, i64 3
  %i.ef = extractelement <8 x i16> %i.de, i64 4
  %i.eg = sext i16 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !36
  %i.ej = extractelement <8 x i16> %i.de, i64 5
  %i.ek = sext i16 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !36
  %i.en = extractelement <8 x i16> %i.de, i64 6
  %i.eo = sext i16 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %5, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !36
  %i.er = extractelement <8 x i16> %i.de, i64 7
  %i.es = sext i16 %i.er to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %5, i64 %i.es
  %i.eu = load float, ptr %i.et, align 4, !tbaa !36
  %i.ev = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.ew = insertelement <4 x float> %i.ev, float %i.em, i64 1
  %i.ex = insertelement <4 x float> %i.ew, float %i.eq, i64 2
  %i.ey = insertelement <4 x float> %i.ex, float %i.eu, i64 3
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %i.ey, <4 x float> %i.da) ; 6 uses
  %i.fa = extractelement <4 x float> %i.ez, i64 0
  %i.fb = shufflevector <4 x float> %i.dz, <4 x float> %i.ez, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %i.fc = fmul <4 x float> %i.s, %i.fb            ; 4 uses
  %i.fd = extractelement <4 x float> %i.fc, i64 0
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.ea, float 0.000000e+00)
  %i.ff = extractelement <4 x float> %i.fc, i64 1
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.eb, float %i.fe)
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.ec, float %i.fg)
  %i.fi = extractelement <4 x float> %i.fc, i64 2
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.ee, float %i.fh)
  %i.fk = extractelement <4 x float> %i.fc, i64 3
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fa, float %i.fj)
  %i.fm = extractelement <4 x float> %i.ez, i64 1 ; 2 uses
  %i.fn = fmul float %.pre178, %i.fm
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.fm, float %i.fl)
  %i.fp = extractelement <4 x float> %i.ez, i64 2
  %i.fq = extractelement <4 x float> %i.ez, i64 3
  %i.fr = shufflevector <4 x float> %i.ez, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.fs = fmul <2 x float> %i.i, %i.fr            ; 2 uses
  %i.ft = extractelement <2 x float> %i.fs, i64 0
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.fp, float %i.fo)
  %i.fv = extractelement <2 x float> %i.fs, i64 1
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fq, float %i.fu) ; 2 uses
  %i.fx = fcmp olt float %i.fw, %.2128            ; 2 uses
  %i.fy = trunc nuw nsw i64 %indvars.iv143 to i32
  %.397 = select i1 %i.fx, i32 %i.fy, i32 %.296127 ; 3 uses
  %.3 = select i1 %i.fx, float %i.fw, float %.2128
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, 2048
  br i1 %exitcond146.not, label %bb.d, label %.preheader, !llvm.loop !788

bb.d:                                             ; preds = %.preheader
  %i.fz = icmp slt i32 %.397, 0
  br i1 %i.fz, label %bb.e, label %.thread109

bb.e:                                             ; preds = %bb.d
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.ga = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.b) ; 0 uses
  %i.gb = load <2 x float>, ptr %.phi.trans.insert160, align 4, !tbaa !36 ; 2 uses
  %i.gc = load <2 x float>, ptr %.phi.trans.insert168, align 4, !tbaa !36 ; 2 uses
  %i.gd = load <2 x float>, ptr %i.o, align 4, !tbaa !36 ; 2 uses
  %i.ge = load <8 x float>, ptr %3, align 4, !tbaa !36
  %i.gf = load <2 x float>, ptr %2, align 4, !tbaa !36 ; 2 uses
  %7 = shufflevector <2 x float> %i.gd, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = shufflevector <2 x float> %i.gc, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gh = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %9 = shufflevector <2 x float> %i.gf, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %indvars.iv155 = phi i64 [ 1, %bb.e ], [ %indvars.iv.next156, %bb.f ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv155
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !58
  %i.gk = zext i16 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gk
  %i.gm = load <8 x i8>, ptr %i.gl, align 1, !tbaa !34
  %i.gn = sext <8 x i8> %i.gm to <8 x i16>
  %i.go = add nsw <8 x i16> %i.gn, splat (i16 -1)
  %i.gp = sdiv <8 x i16> %i.go, splat (i16 2)     ; 8 uses
  %i.gq = extractelement <8 x i16> %i.gp, i64 0
  %i.gr = sext i16 %i.gq to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gr
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !36 ; 2 uses
  %i.gu = extractelement <8 x i16> %i.gp, i64 1
  %i.gv = sext i16 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !36
  %i.gy = extractelement <8 x i16> %i.gp, i64 2
  %i.gz = sext i16 %i.gy to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gz
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !36 ; 2 uses
  %i.hc = extractelement <8 x i16> %i.gp, i64 3
  %i.hd = sext i16 %i.hc to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hd
  %i.hf = load float, ptr %i.he, align 4, !tbaa !36 ; 2 uses
  %i.hg = extractelement <8 x i16> %i.gp, i64 4
  %i.hh = sext i16 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hh
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !36
  %i.hk = extractelement <8 x i16> %i.gp, i64 5
  %i.hl = sext i16 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hl
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !36
  %i.ho = extractelement <8 x i16> %i.gp, i64 6
  %i.hp = sext i16 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hp
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !36
  %i.hs = extractelement <8 x i16> %i.gp, i64 7
  %i.ht = sext i16 %i.hs to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ht
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !36 ; 2 uses
  %i.hw = insertelement <8 x float> poison, float %i.gt, i64 0
  %i.hx = insertelement <8 x float> %i.hw, float %i.gx, i64 1 ; 2 uses
  %i.hy = insertelement <8 x float> %i.hx, float %i.hb, i64 2
  %i.hz = insertelement <8 x float> %i.hy, float %i.hf, i64 3
  %i.ia = insertelement <8 x float> %i.hz, float %i.hj, i64 4 ; 2 uses
  %i.ib = insertelement <8 x float> %i.ia, float %i.hn, i64 5 ; 2 uses
  %i.ic = insertelement <8 x float> %i.ib, float %i.hr, i64 6 ; 2 uses
  %i.id = insertelement <8 x float> %i.ic, float %i.hv, i64 7
  %i.ie = fmul <8 x float> %i.id, %i.ge           ; 8 uses
  %i.if = shufflevector <8 x float> %i.ie, <8 x float> poison, <2 x i32> zeroinitializer
  %i.ig = insertelement <2 x float> %i.gf, float %i.gt, i64 1
  %i.ih = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.ig, <2 x float> zeroinitializer)
  %i.ii = shufflevector <8 x float> %i.ie, <8 x float> poison, <2 x i32> <i32 1, i32 1>
  %10 = shufflevector <8 x float> %i.hx, <8 x float> %9, <2 x i32> <i32 9, i32 1>
  %i.ij = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %10, <2 x float> %i.ih)
  %i.ik = shufflevector <8 x float> %i.ie, <8 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.il = insertelement <2 x float> %i.gb, float %i.hb, i64 1
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ik, <2 x float> %i.il, <2 x float> %i.ij)
  %i.in = shufflevector <8 x float> %i.ie, <8 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.io = insertelement <2 x float> %i.gh, float %i.hf, i64 1
  %i.ip = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.in, <2 x float> %i.io, <2 x float> %i.im)
  %i.iq = shufflevector <8 x float> %i.ie, <8 x float> poison, <2 x i32> <i32 4, i32 4>
  %11 = shufflevector <8 x float> %8, <8 x float> %i.ia, <2 x i32> <i32 0, i32 12>
  %i.ir = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iq, <2 x float> %11, <2 x float> %i.ip)
  %i.is = shufflevector <8 x float> %i.ie, <8 x float> poison, <2 x i32> <i32 5, i32 5>
  %12 = shufflevector <8 x float> %i.ib, <8 x float> poison, <2 x i32> <i32 poison, i32 5>
  %13 = shufflevector <2 x float> %12, <2 x float> %i.gc, <2 x i32> <i32 3, i32 1>
  %i.it = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.is, <2 x float> %13, <2 x float> %i.ir)
  %i.iu = shufflevector <8 x float> %i.ie, <8 x float> poison, <2 x i32> <i32 6, i32 6>
  %14 = shufflevector <8 x float> %7, <8 x float> %i.ic, <2 x i32> <i32 0, i32 14>
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iu, <2 x float> %14, <2 x float> %i.it)
  %i.iw = shufflevector <8 x float> %i.ie, <8 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.ix = insertelement <2 x float> %i.gg, float %i.hv, i64 1
  %i.iy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iw, <2 x float> %i.ix, <2 x float> %i.iv)
  %i.iz = fpext <2 x float> %i.iy to <2 x double> ; 2 uses
  %i.ja = trunc nuw nsw i64 %indvars.iv155 to i32
  %i.jb = extractelement <2 x double> %i.iz, i64 0
  %i.jc = extractelement <2 x double> %i.iz, i64 1
  %i.jd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %i.ja, double noundef %i.jb, double noundef %i.jc) ; 0 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count
  br i1 %exitcond159.not, label %bb.g, label %bb.f, !llvm.loop !789

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4494, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22) #24
  unreachable

.thread109:                                       ; preds = %bb.c, %bb.d
  %.4108111 = phi i32 [ %.195, %bb.c ], [ %.397, %bb.d ] ; 2 uses
  %i.je = zext nneg i32 %.4108111 to i64
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.je
  %i.jg = load <8 x i8>, ptr %i.jf, align 1, !tbaa !34
  %i.jh = sext <8 x i8> %i.jg to <8 x i16>
  %i.ji = add nsw <8 x i16> %i.jh, splat (i16 -1)
  %i.jj = sdiv <8 x i16> %i.ji, splat (i16 2)
  %i.jk = trunc nsw <8 x i16> %i.jj to <8 x i8>
  store <8 x i8> %i.jk, ptr %6, align 1, !tbaa !34
  ret i32 %.4108111
}

; Function Attrs: nounwind uwtable
define i64 @quantize_iq1_m(ptr noalias nofree noundef readonly %0, ptr noalias nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 6 uses
  %i.b = alloca [16 x float], align 16            ; 16 uses
  %i.c = alloca [16 x i8], align 16               ; 28 uses
  %i.d = alloca [32 x float], align 16            ; 35 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  %i.f = and i64 %3, 255
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4947, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.h = ashr exact i64 %3, 8                     ; 4 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 19 uses
  %i.k = icmp sgt i64 %i.h, 0
  %.not573.i = icmp eq ptr %4, null               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %.phi.trans.insert852.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %.phi.trans.insert854.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %.phi.trans.insert856.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.phi.trans.insert858.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.av = mul nsw i64 %i.h, 56
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %quantize_row_iq1_m_impl.exit.loopexit.us
  %.064.us = phi i64 [ %i.ark, %quantize_row_iq1_m_impl.exit.loopexit.us ], [ 0, %.lr.ph ]
  %.01563.us = phi ptr [ %i.arj, %quantize_row_iq1_m_impl.exit.loopexit.us ], [ %1, %.lr.ph ] ; 2 uses
  %.01662.us = phi ptr [ %i.ari, %quantize_row_iq1_m_impl.exit.loopexit.us ], [ %0, %.lr.ph ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !810)
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 48), align 16, !tbaa !74, !noalias !813 ; 7 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 56), align 8, !tbaa !77, !noalias !813 ; 3 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 64), align 16, !tbaa !79, !noalias !813 ; 3 uses
  %.not.i.us = icmp eq ptr %i.aw, null
  br i1 %.not.i.us, label %.split.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %.not570.i.us = icmp eq ptr %i.ax, null
  br i1 %.not570.i.us, label %.split66.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not571.i.us = icmp eq ptr %i.ay, null
  br i1 %.not571.i.us, label %.split68.us, label %.lr.ph704.i.us

.lr.ph704.i.us:                                   ; preds = %bb.e, %bb.au
  %indvars.iv834.i.us = phi i64 [ %indvars.iv.next835.i.us, %bb.au ], [ 0, %bb.e ] ; 3 uses
  %i.az = getelementptr inbounds nuw [56 x i8], ptr %.01563.us, i64 %indvars.iv834.i.us ; 5 uses
  %i.ba = shl nuw nsw i64 %indvars.iv834.i.us, 8  ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.01662.us, i64 %i.ba ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.az, i8 0, i64 56, i1 false), !alias.scope !811, !noalias !814
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph704.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph704.i.us ], [ %indvars.iv.next.i.us.3, %bb.f ] ; 5 uses
  %.0545591.i.us = phi float [ 0.000000e+00, %.lr.ph704.i.us ], [ %i.bq, %bb.f ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i.us
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.be = call float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %.0545591.i.us)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.bi = call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.be)
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i.us
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.bm = call float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %i.bi)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i.us
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.bq = call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bm) ; 2 uses
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %exitcond.not.i.us.3 = icmp eq i64 %indvars.iv.next.i.us.3, 256
  br i1 %exitcond.not.i.us.3, label %bb.g, label %bb.f, !llvm.loop !794

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 3 uses
  %i.bt = fmul float %i.bq, 2.000000e+00
  %i.bu = fmul float %i.bt, 3.906250e-03          ; 32 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ba ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.ao, %bb.g
  %indvars.iv810.i.us = phi i64 [ 0, %bb.g ], [ %indvars.iv.next811.i.us, %bb.ao ] ; 10 uses
  %.0546689.i.us = phi float [ 0.000000e+00, %bb.g ], [ %.2548.i.us, %bb.ao ] ; 4 uses
  %i.bw = shl nuw nsw i64 %indvars.iv810.i.us, 4  ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bw ; 41 uses
  br i1 %.not573.i, label %.preheader587.preheader.i.us, label %.loopexit588.loopexit709.i.us

.loopexit588.loopexit709.i.us:                    ; preds = %bb.h
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw ; 2 uses
  %i.bz = load float, ptr %i.bx, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 3 uses
  %i.ca = call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.bu)
  %i.cb = call float @sqrtf(float noundef %i.ca) #14, !noalias !815
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 3 uses
  %i.ce = call float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.bu)
  %i.cf = call float @sqrtf(float noundef %i.ce) #14, !noalias !815
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 3 uses
  %i.ci = call float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.bu)
  %i.cj = call float @sqrtf(float noundef %i.ci) #14, !noalias !815
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 3 uses
  %i.cm = call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.bu)
  %i.cn = call float @sqrtf(float noundef %i.cm) #14, !noalias !815
  %i.co = load <4 x float>, ptr %i.by, align 4, !tbaa !36, !alias.scope !812, !noalias !816
  %i.cp = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cq = insertelement <4 x float> %i.cp, float %i.cf, i64 1
  %i.cr = insertelement <4 x float> %i.cq, float %i.cj, i64 2
  %i.cs = insertelement <4 x float> %i.cr, float %i.cn, i64 3
  %i.ct = fmul <4 x float> %i.co, %i.cs           ; 2 uses
  store <4 x float> %i.ct, ptr %i.b, align 16, !tbaa !36, !noalias !813
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 3 uses
  %i.cx = call float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.bu)
  %i.cy = call float @sqrtf(float noundef %i.cx) #14, !noalias !815
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  %i.da = load float, ptr %i.cz, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 3 uses
  %i.db = call float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.bu)
  %i.dc = call float @sqrtf(float noundef %i.db) #14, !noalias !815
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
end_hunk_1
begin_hunk_2_@quantize_iq1_m:bb.a
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds i8, ptr %i.c, i64 %i.rs
  store i8 1, ptr %i.rt, align 1, !tbaa !34, !noalias !813
  %indvars.iv.next788.i.us = shl i64 %indvars.iv787.i.us, 3
  %i.ru = getelementptr i8, ptr %i.j, i64 %indvars.iv.next788.i.us
  %i.rv = getelementptr i8, ptr %i.ru, i64 8
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !47, !noalias !813
  %i.rx = sext i32 %i.rw to i64
  %i.ry = getelementptr inbounds i8, ptr %i.c, i64 %i.rx
  store i8 1, ptr %i.ry, align 1, !tbaa !34, !noalias !813
  %indvars.iv.next788.i.us.1 = shl i64 %indvars.iv787.i.us, 3
  %i.rz = getelementptr i8, ptr %i.j, i64 %indvars.iv.next788.i.us.1
  %i.sa = getelementptr i8, ptr %i.rz, i64 16
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !47, !noalias !813
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds i8, ptr %i.c, i64 %i.sc
  store i8 1, ptr %i.sd, align 1, !tbaa !34, !noalias !813
  %indvars.iv.next788.i.us.2 = shl i64 %indvars.iv787.i.us, 3
  %i.se = getelementptr i8, ptr %i.j, i64 %indvars.iv.next788.i.us.2
  %i.sf = getelementptr i8, ptr %i.se, i64 24
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !47, !noalias !813
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds i8, ptr %i.c, i64 %i.sh
  store i8 1, ptr %i.si, align 1, !tbaa !34, !noalias !813
  %indvars.iv.next788.i.us.3 = add nuw nsw i64 %indvars.iv787.i.us, 4 ; 2 uses
  %i.sj = trunc nuw i64 %indvars.iv.next788.i.us.3 to i32
  %i.sk = icmp sgt i32 %.3524.3.i.us, %i.sj
  br i1 %i.sk, label %.lr.ph675.i.us, label %.preheader583.i.us, !llvm.loop !803

.preheader583.i.us:                               ; preds = %.lr.ph675.i.us.prol.loopexit, %.lr.ph675.i.us, %.preheader584.i.us
  %i.sl = icmp samesign ult i32 %.3524.3.i.us, 16
  br i1 %i.sl, label %.lr.ph677.preheader.i.us, label %._crit_edge.i.us

.lr.ph677.preheader.i.us:                         ; preds = %.preheader583.i.us
  %i.sm = zext nneg i32 %.3524.3.i.us to i64      ; 2 uses
  %i.sn = sub nsw i32 0, %.3524.3.i.us
  %xtraiter251 = and i32 %i.sn, 3                 ; 2 uses
  %lcmp.mod252.not = icmp eq i32 %xtraiter251, 0
  br i1 %lcmp.mod252.not, label %.lr.ph677.i.us.prol.loopexit, label %.lr.ph677.i.us.prol

.lr.ph677.i.us.prol:                              ; preds = %.lr.ph677.preheader.i.us, %.lr.ph677.i.us.prol
  %indvars.iv790.i.us.prol = phi i64 [ %indvars.iv.next791.i.us.prol, %.lr.ph677.i.us.prol ], [ %i.sm, %.lr.ph677.preheader.i.us ] ; 2 uses
  %prol.iter253 = phi i32 [ %prol.iter253.next, %.lr.ph677.i.us.prol ], [ 0, %.lr.ph677.preheader.i.us ]
  %.idx886.i.us.prol = shl nuw nsw i64 %indvars.iv790.i.us.prol, 3
  %i.so = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx886.i.us.prol
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !47, !noalias !813
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr inbounds i8, ptr %i.c, i64 %i.sq
  store i8 2, ptr %i.sr, align 1, !tbaa !34, !noalias !813
  %indvars.iv.next791.i.us.prol = add nuw nsw i64 %indvars.iv790.i.us.prol, 1 ; 2 uses
  %prol.iter253.next = add i32 %prol.iter253, 1   ; 2 uses
  %prol.iter253.cmp.not = icmp eq i32 %prol.iter253.next, %xtraiter251
  br i1 %prol.iter253.cmp.not, label %.lr.ph677.i.us.prol.loopexit, label %.lr.ph677.i.us.prol, !llvm.loop !804

.lr.ph677.i.us.prol.loopexit:                     ; preds = %.lr.ph677.i.us.prol, %.lr.ph677.preheader.i.us
  %indvars.iv790.i.us.unr = phi i64 [ %i.sm, %.lr.ph677.preheader.i.us ], [ %indvars.iv.next791.i.us.prol, %.lr.ph677.i.us.prol ]
  %i.ss = icmp ugt i32 %.3524.3.i.us, 12
  br i1 %i.ss, label %._crit_edge.i.us, label %.lr.ph677.i.us

.lr.ph677.i.us:                                   ; preds = %.lr.ph677.i.us.prol.loopexit, %.lr.ph677.i.us
  %indvars.iv790.i.us = phi i64 [ %indvars.iv.next791.i.us.3, %.lr.ph677.i.us ], [ %indvars.iv790.i.us.unr, %.lr.ph677.i.us.prol.loopexit ] ; 5 uses
  %.idx886.i.us = shl nuw nsw i64 %indvars.iv790.i.us, 3
  %i.st = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx886.i.us
  %i.su = load i32, ptr %i.st, align 4, !tbaa !47, !noalias !813
  %i.sv = sext i32 %i.su to i64
  %i.sw = getelementptr inbounds i8, ptr %i.c, i64 %i.sv
  store i8 2, ptr %i.sw, align 1, !tbaa !34, !noalias !813
  %indvars.iv.next791.i.us = shl i64 %indvars.iv790.i.us, 3
  %i.sx = getelementptr i8, ptr %i.j, i64 %indvars.iv.next791.i.us
  %i.sy = getelementptr i8, ptr %i.sx, i64 8
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !47, !noalias !813
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds i8, ptr %i.c, i64 %i.ta
  store i8 2, ptr %i.tb, align 1, !tbaa !34, !noalias !813
  %indvars.iv.next791.i.us.1 = shl i64 %indvars.iv790.i.us, 3
  %i.tc = getelementptr i8, ptr %i.j, i64 %indvars.iv.next791.i.us.1
  %i.td = getelementptr i8, ptr %i.tc, i64 16
  %i.te = load i32, ptr %i.td, align 4, !tbaa !47, !noalias !813
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds i8, ptr %i.c, i64 %i.tf
  store i8 2, ptr %i.tg, align 1, !tbaa !34, !noalias !813
  %indvars.iv.next791.i.us.2 = add nuw nsw i64 %indvars.iv790.i.us, 3 ; 2 uses
  %.idx886.i.us.3 = shl nuw nsw i64 %indvars.iv.next791.i.us.2, 3
  %i.th = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx886.i.us.3
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !47, !noalias !813
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds i8, ptr %i.c, i64 %i.tj
  store i8 2, ptr %i.tk, align 1, !tbaa !34, !noalias !813
  %indvars.iv.next791.i.us.3 = add nuw nsw i64 %indvars.iv790.i.us, 4
  %i.tl = trunc nuw i64 %indvars.iv.next791.i.us.2 to i32
  %i.tm = icmp slt i32 %i.tl, 15
  br i1 %i.tm, label %.lr.ph677.i.us, label %._crit_edge.i.us, !llvm.loop !805

._crit_edge.i.us:                                 ; preds = %.lr.ph677.i.us.prol.loopexit, %.lr.ph677.i.us, %.preheader583.i.us
  %i.tn = fcmp olt float %.3532.3.i.us, 0.000000e+00
  %.pre851.i.us = load i8, ptr %i.c, align 16, !tbaa !34, !noalias !813 ; 2 uses
  br i1 %i.tn, label %.preheader582.preheader.i.us, label %._crit_edge._crit_edge.i.us

._crit_edge._crit_edge.i.us:                      ; preds = %._crit_edge.i.us
  %i.to = load <2 x i8>, ptr %.phi.trans.insert854.i, align 2, !tbaa !34, !noalias !813
  %.pre853.i.us = load i8, ptr %.phi.trans.insert852.i, align 1, !tbaa !34, !noalias !813
  %i.tp = load <4 x i8>, ptr %.phi.trans.insert858.i, align 4, !tbaa !34, !noalias !813
  br label %bb.ag

.preheader582.preheader.i.us:                     ; preds = %._crit_edge.i.us
  %i.tq = load i8, ptr %.phi.trans.insert852.i, align 1, !tbaa !34, !noalias !813
  %i.tr = load <2 x i8>, ptr %.phi.trans.insert854.i, align 2, !tbaa !34, !noalias !813
  %i.ts = sub <2 x i8> splat (i8 2), %i.tr        ; 3 uses
  %i.tt = sub i8 2, %i.tq                         ; 2 uses
  %i.tu = sub i8 2, %.pre851.i.us                 ; 2 uses
  store i8 %i.tu, ptr %i.c, align 16, !tbaa !34, !noalias !813
  store i8 %i.tt, ptr %.phi.trans.insert852.i, align 1, !tbaa !34, !noalias !813
  %i.tv = extractelement <2 x i8> %i.ts, i64 0
  store i8 %i.tv, ptr %.phi.trans.insert854.i, align 2, !tbaa !34, !noalias !813
  %i.tw = extractelement <2 x i8> %i.ts, i64 1
  store i8 %i.tw, ptr %.phi.trans.insert856.i, align 1, !tbaa !34, !noalias !813
  %i.tx = load <4 x i8>, ptr %.phi.trans.insert858.i, align 4, !tbaa !34, !noalias !813
  %i.ty = sub <4 x i8> splat (i8 2), %i.tx        ; 2 uses
  store <4 x i8> %i.ty, ptr %.phi.trans.insert858.i, align 4, !tbaa !34, !noalias !813
  %i.tz = load <8 x i8>, ptr %i.at, align 8, !tbaa !34, !noalias !813
  %i.ua = sub <8 x i8> splat (i8 2), %i.tz
  store <8 x i8> %i.ua, ptr %i.at, align 8, !tbaa !34, !noalias !813
  %i.ub = fneg float %.3532.3.i.us
  %i.uc = icmp eq i32 %.3.3.i.us, 0
  %i.ud = icmp eq i32 %.3.3.i.us, 1
  %i.ue = icmp eq i32 %.3.3.i.us, 2
  %i.uf = zext i1 %i.ue to i32
  %i.ug = select i1 %i.ud, i32 2, i32 %i.uf
  %i.uh = select i1 %i.uc, i32 3, i32 %i.ug
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader582.preheader.i.us, %._crit_edge._crit_edge.i.us
  %i.ui = phi i8 [ %i.tt, %.preheader582.preheader.i.us ], [ %.pre853.i.us, %._crit_edge._crit_edge.i.us ]
  %i.uj = phi i8 [ %i.tu, %.preheader582.preheader.i.us ], [ %.pre851.i.us, %._crit_edge._crit_edge.i.us ]
  %.4533.i.us = phi float [ %i.ub, %.preheader582.preheader.i.us ], [ %.3532.3.i.us, %._crit_edge._crit_edge.i.us ] ; 4 uses
  %.4.i.us = phi i32 [ %i.uh, %.preheader582.preheader.i.us ], [ %.3.3.i.us, %._crit_edge._crit_edge.i.us ] ; 3 uses
  %i.uk = phi <4 x i8> [ %i.ty, %.preheader582.preheader.i.us ], [ %i.tp, %._crit_edge._crit_edge.i.us ]
  %i.ul = phi <2 x i8> [ %i.ts, %.preheader582.preheader.i.us ], [ %i.to, %._crit_edge._crit_edge.i.us ]
  %i.um = and i32 %.4.i.us, 1
  %i.un = icmp eq i32 %i.um, 0
  %i.uo = select i1 %i.un, ptr @__const.quantize_row_iq1_m_impl.x_p, ptr @__const.quantize_row_iq1_m_impl.x_m ; 9 uses
  %i.up = icmp samesign ult i32 %.4.i.us, 2
  %i.uq = select i1 %i.up, ptr @__const.quantize_row_iq1_m_impl.x_p, ptr @__const.quantize_row_iq1_m_impl.x_m ; 9 uses
  %i.ur = insertelement <4 x i8> poison, i8 %i.uj, i64 0
  %i.us = insertelement <4 x i8> %i.ur, i8 %i.ui, i64 1
  %i.ut = shufflevector <2 x i8> %i.ul, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.uu = shufflevector <4 x i8> %i.us, <4 x i8> %i.ut, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.uv = sext <4 x i8> %i.uu to <4 x i16>
  %i.uw = zext <4 x i8> %i.uk to <4 x i16>
  %i.ux = shufflevector <4 x i16> %i.uv, <4 x i16> %i.uw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.uy = shl <8 x i16> %i.ux, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.uz = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.uy)
  %i.va = zext i16 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.va
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !47, !noalias !815 ; 3 uses
  %i.vd = icmp sgt i32 %i.vc, -1                  ; 2 uses
  br i1 %i.vd, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ve = sext i32 %i.vc to i64
  %i.vf = sub nsw i64 0, %i.ve
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.vf
  %i.vh = getelementptr inbounds i8, ptr %i.vg, i64 -2
  %i.vi = call fastcc i32 @iq1_find_best_neighbour2(ptr noundef %i.vh, ptr noundef %i.aw, ptr noundef nonnull readonly %i.bx, ptr noundef nonnull %i.b, float noundef %.4533.i.us, ptr noundef %i.uq, ptr noundef nonnull %i.c)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0502.i.us = phi i32 [ %i.vi, %bb.ah ], [ %i.vc, %bb.ag ] ; 3 uses
  %i.vj = trunc i32 %.0502.i.us to i16
  %i.vk = load <4 x i8>, ptr %i.at, align 8, !tbaa !34, !noalias !813
  %i.vl = sext <4 x i8> %i.vk to <4 x i16>
  %i.vm = load <4 x i8>, ptr %i.au, align 4, !tbaa !34, !noalias !813
  %i.vn = zext <4 x i8> %i.vm to <4 x i16>
  %i.vo = shufflevector <4 x i16> %i.vl, <4 x i16> %i.vn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vp = shl <8 x i16> %i.vo, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.vq = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.vp)
  %i.vr = zext i16 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.vr
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !47, !noalias !815 ; 3 uses
  %i.vu = icmp slt i32 %i.vt, 0
  br i1 %i.vu, label %.thread.i.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.vv = trunc i32 %i.vt to i16                  ; 2 uses
  br i1 %i.vd, label %bb.ak, label %.preheader581.i.us

.thread.i.us:                                     ; preds = %bb.ai
  %i.vw = sext i32 %i.vt to i64
  %i.vx = sub nsw i64 0, %i.vw
  %i.vy = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.vx
  %i.vz = getelementptr inbounds i8, ptr %i.vy, i64 -2
  %i.wa = call fastcc i32 @iq1_find_best_neighbour2(ptr noundef %i.vz, ptr noundef %i.aw, ptr noundef nonnull readonly %i.ib, ptr noundef %i.m, float noundef %.4533.i.us, ptr noundef %i.uo, ptr noundef %i.at)
  %i.wb = trunc i32 %i.wa to i16
  br label %.preheader581.i.us

.preheader581.i.us:                               ; preds = %.thread.i.us, %bb.aj
  %.sroa.5.0.us = phi i16 [ %i.wb, %.thread.i.us ], [ %i.vv, %bb.aj ] ; 2 uses
  %.mask.us = and i32 %.0502.i.us, 65535
  %i.wc = zext nneg i32 %.mask.us to i64
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.wc
  %i.we = zext i16 %.sroa.5.0.us to i64
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.we
  %i.wg = load <8 x i8>, ptr %i.wd, align 1, !tbaa !34, !noalias !815
  %i.wh = load <8 x i8>, ptr %i.wf, align 1, !tbaa !34, !noalias !815
  %i.wi = shufflevector <8 x i8> %i.wg, <8 x i8> %i.wh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wj = sext <16 x i8> %i.wi to <16 x i16>
  %i.wk = add nsw <16 x i16> %i.wj, splat (i16 -1)
  %i.wl = sdiv <16 x i16> %i.wk, splat (i16 2)    ; 16 uses
  %i.wm = extractelement <16 x i16> %i.wl, i64 0
  %i.wn = sext i16 %i.wm to i64
  %i.wo = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.wn
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !36, !noalias !813
  %i.wq = extractelement <16 x i16> %i.wl, i64 1
  %i.wr = sext i16 %i.wq to i64
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.wr
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !36, !noalias !813
  %i.wu = extractelement <16 x i16> %i.wl, i64 2
  %i.wv = sext i16 %i.wu to i64
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.wv
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !36, !noalias !813
  %i.wy = extractelement <16 x i16> %i.wl, i64 3
  %i.wz = sext i16 %i.wy to i64
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.wz
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !36, !noalias !813
  %i.xc = insertelement <4 x float> poison, float %i.wp, i64 0 ; 2 uses
  %i.xd = insertelement <4 x float> %i.xc, float %i.wt, i64 1 ; 2 uses
  %i.xe = insertelement <4 x float> %i.xd, float %i.wx, i64 2 ; 2 uses
  %i.xf = insertelement <4 x float> %i.xe, float %i.xb, i64 3 ; 2 uses
  %i.xg = fmul <4 x float> %i.hj, %i.xf           ; 4 uses
  %i.xh = shufflevector <4 x float> %i.xg, <4 x float> poison, <2 x i32> zeroinitializer
  %5 = shufflevector <4 x float> %i.xc, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.xi = insertelement <2 x float> %5, float %i.hh, i64 0
  %i.xj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xh, <2 x float> %i.xi, <2 x float> zeroinitializer)
  %i.xk = shufflevector <4 x float> %i.xg, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %6 = shufflevector <4 x float> %i.xd, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.xl = insertelement <2 x float> %6, float %i.hg, i64 0
  %i.xm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xk, <2 x float> %i.xl, <2 x float> %i.xj)
  %i.xn = shufflevector <4 x float> %i.xg, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %7 = shufflevector <4 x float> %i.xe, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.xo = insertelement <2 x float> %7, float %i.hf, i64 0
  %i.xp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xn, <2 x float> %i.xo, <2 x float> %i.xm)
  %i.xq = shufflevector <4 x float> %i.xg, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %8 = shufflevector <4 x float> %i.xf, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.xr = insertelement <2 x float> %8, float %i.he, i64 0
  %i.xs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xq, <2 x float> %i.xr, <2 x float> %i.xp)
  %i.xt = extractelement <16 x i16> %i.wl, i64 4
  %i.xu = sext i16 %i.xt to i64
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.xu
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !36, !noalias !813
  %i.xx = extractelement <16 x i16> %i.wl, i64 5
  %i.xy = sext i16 %i.xx to i64
  %i.xz = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.xy
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !36, !noalias !813
  %i.yb = extractelement <16 x i16> %i.wl, i64 6
  %i.yc = sext i16 %i.yb to i64
  %i.yd = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.yc
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !36, !noalias !813
  %i.yf = extractelement <16 x i16> %i.wl, i64 7
  %i.yg = sext i16 %i.yf to i64
  %i.yh = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.yg
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !36, !noalias !813
  %i.yj = extractelement <16 x i16> %i.wl, i64 8
  %i.yk = sext i16 %i.yj to i64
  %i.yl = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.yk
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !36, !noalias !813 ; 2 uses
  %i.yn = extractelement <16 x i16> %i.wl, i64 9
  %i.yo = sext i16 %i.yn to i64
  %i.yp = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.yo
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !36, !noalias !813 ; 2 uses
  %i.yr = extractelement <16 x i16> %i.wl, i64 10
  %i.ys = sext i16 %i.yr to i64
  %i.yt = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.ys
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !36, !noalias !813
  %i.yv = extractelement <16 x i16> %i.wl, i64 11
  %i.yw = sext i16 %i.yv to i64
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.yw
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !36, !noalias !813 ; 2 uses
  %i.yz = extractelement <16 x i16> %i.wl, i64 12
  %i.za = sext i16 %i.yz to i64
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.za
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !36, !noalias !813 ; 2 uses
  %i.zd = extractelement <16 x i16> %i.wl, i64 13
  %i.ze = sext i16 %i.zd to i64
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.ze
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !36, !noalias !813 ; 2 uses
  %i.zh = extractelement <16 x i16> %i.wl, i64 14
  %i.zi = sext i16 %i.zh to i64
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.zi
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !36, !noalias !813
  %i.zl = extractelement <16 x i16> %i.wl, i64 15
  %i.zm = sext i16 %i.zl to i64
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.zm
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !36, !noalias !813 ; 2 uses
  %i.zp = insertelement <12 x float> poison, float %i.zo, i64 0
  %i.zq = insertelement <12 x float> %i.zp, float %i.zk, i64 1 ; 2 uses
  %i.zr = insertelement <12 x float> %i.zq, float %i.zg, i64 2
  %i.zs = insertelement <12 x float> %i.zr, float %i.zc, i64 3
  %i.zt = insertelement <12 x float> %i.zs, float %i.yy, i64 4
  %i.zu = insertelement <12 x float> %i.zt, float %i.yu, i64 5 ; 2 uses
  %i.zv = insertelement <12 x float> %i.zu, float %i.yq, i64 6
  %i.zw = insertelement <12 x float> %i.zv, float %i.ym, i64 7
  %i.zx = insertelement <12 x float> %i.zw, float %i.yi, i64 8 ; 2 uses
  %i.zy = insertelement <12 x float> %i.zx, float %i.ye, i64 9 ; 2 uses
  %i.zz = insertelement <12 x float> %i.zy, float %i.ya, i64 10 ; 2 uses
  %i.aaa = insertelement <12 x float> %i.zz, float %i.xw, i64 11 ; 2 uses
  %i.aab = fmul <12 x float> %i.hk, %i.aaa        ; 12 uses
  %i.aac = shufflevector <12 x float> %i.aab, <12 x float> poison, <2 x i32> <i32 11, i32 11>
  %9 = shufflevector <12 x float> %i.aaa, <12 x float> poison, <2 x i32> <i32 poison, i32 11>
  %i.aad = insertelement <2 x float> %9, float %i.hd, i64 0
  %i.aae = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aac, <2 x float> %i.aad, <2 x float> %i.xs)
  %i.aaf = shufflevector <12 x float> %i.aab, <12 x float> poison, <2 x i32> <i32 10, i32 10>
  %10 = shufflevector <12 x float> %i.zz, <12 x float> poison, <2 x i32> <i32 poison, i32 10>
  %i.aag = insertelement <2 x float> %10, float %i.hc, i64 0
  %i.aah = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaf, <2 x float> %i.aag, <2 x float> %i.aae)
  %i.aai = shufflevector <12 x float> %i.aab, <12 x float> poison, <2 x i32> <i32 9, i32 9>
  %11 = shufflevector <12 x float> %i.zy, <12 x float> poison, <2 x i32> <i32 poison, i32 9>
  %i.aaj = insertelement <2 x float> %11, float %i.hb, i64 0
  %i.aak = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aai, <2 x float> %i.aaj, <2 x float> %i.aah)
  %i.aal = shufflevector <12 x float> %i.aab, <12 x float> poison, <2 x i32> <i32 8, i32 8>
  %12 = shufflevector <12 x float> %i.zx, <12 x float> poison, <2 x i32> <i32 poison, i32 8>
  %i.aam = insertelement <2 x float> %12, float %i.ha, i64 0
  %i.aan = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aal, <2 x float> %i.aam, <2 x float> %i.aak)
  %i.aao = load <2 x float>, ptr %i.ib, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.aap = shufflevector <12 x float> %i.aab, <12 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.aaq = insertelement <2 x float> %i.aao, float %i.ym, i64 1
  %i.aar = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aap, <2 x float> %i.aaq, <2 x float> %i.aan)
  %i.aas = shufflevector <12 x float> %i.aab, <12 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.aat = shufflevector <2 x float> %i.aao, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aau = insertelement <2 x float> %i.aat, float %i.yq, i64 1
  %i.aav = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aas, <2 x float> %i.aau, <2 x float> %i.aar)
  %i.aaw = load <2 x float>, ptr %i.ig, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.aax = shufflevector <12 x float> %i.aab, <12 x float> poison, <2 x i32> <i32 5, i32 5>
  %13 = shufflevector <12 x float> %i.zu, <12 x float> poison, <2 x i32> <i32 poison, i32 5>
  %14 = shufflevector <2 x float> %i.aaw, <2 x float> %13, <2 x i32> <i32 0, i32 3>
  %i.aay = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aax, <2 x float> %14, <2 x float> %i.aav)
  %i.aaz = shufflevector <12 x float> %i.aab, <12 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.aba = shufflevector <2 x float> %i.aaw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.abb = insertelement <2 x float> %i.aba, float %i.yy, i64 1
  %i.abc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaz, <2 x float> %i.abb, <2 x float> %i.aay)
  %i.abd = load <2 x float>, ptr %i.il, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.abe = shufflevector <12 x float> %i.aab, <12 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.abf = insertelement <2 x float> %i.abd, float %i.zc, i64 1
  %i.abg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abe, <2 x float> %i.abf, <2 x float> %i.abc)
  %i.abh = shufflevector <12 x float> %i.aab, <12 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.abi = shufflevector <2 x float> %i.abd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.abj = insertelement <2 x float> %i.abi, float %i.zg, i64 1
  %i.abk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abh, <2 x float> %i.abj, <2 x float> %i.abg)
  %i.abl = load <2 x float>, ptr %i.iq, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.abm = shufflevector <12 x float> %i.aab, <12 x float> poison, <2 x i32> <i32 1, i32 1>
  %15 = shufflevector <2 x float> %i.abl, <2 x float> poison, <12 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %16 = shufflevector <12 x float> %i.zq, <12 x float> %15, <2 x i32> <i32 12, i32 1>
  %i.abn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abm, <2 x float> %16, <2 x float> %i.abk)
  %i.abo = shufflevector <12 x float> %i.aab, <12 x float> poison, <2 x i32> zeroinitializer
  %i.abp = shufflevector <2 x float> %i.abl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.abq = insertelement <2 x float> %i.abp, float %i.zo, i64 1
  %i.abr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abo, <2 x float> %i.abq, <2 x float> %i.abn) ; 2 uses
  %i.abs = extractelement <2 x float> %i.abr, i64 0 ; 2 uses
  %i.abt = fcmp ogt float %i.abs, 0.000000e+00
  %i.abu = extractelement <2 x float> %i.abr, i64 1 ; 2 uses
  %i.abv = fcmp ogt float %i.abu, 0.000000e+00
  %or.cond5.i.us = select i1 %i.abt, i1 %i.abv, i1 false
  %i.abw = fdiv float %i.abs, %i.abu
  %.5.i.us = select i1 %or.cond5.i.us, float %i.abw, float %.4533.i.us
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader581.i.us, %bb.aj
  %i.abx = phi i16 [ %i.vv, %bb.aj ], [ %.sroa.5.0.us, %.preheader581.i.us ] ; 2 uses
  %.6.i.us = phi float [ %.4533.i.us, %bb.aj ], [ %.5.i.us, %.preheader581.i.us ] ; 4 uses
  %i.aby = trunc i32 %.0502.i.us to i8
  %i.abz = shl nuw nsw i64 %indvars.iv810.i.us, 1
  %i.aca = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.abz ; 2 uses
  store i8 %i.aby, ptr %i.aca, align 1, !tbaa !34, !alias.scope !811, !noalias !814
  %i.acb = trunc i16 %i.abx to i8
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aca, i64 1
  store i8 %i.acb, ptr %i.acc, align 1, !tbaa !34, !alias.scope !811, !noalias !814
  %i.acd = lshr i16 %i.vj, 8
  %i.ace = lshr i16 %i.abx, 4
  %i.acf = and i16 %i.ace, 240
  %i.acg = or i16 %i.acf, %i.acd
  %i.ach = trunc nuw i16 %i.acg to i8
  %i.aci = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv810.i.us
  store i8 %i.ach, ptr %i.aci, align 1, !tbaa !34, !alias.scope !811, !noalias !814
  %i.acj = fcmp ult float %.6.i.us, 0.000000e+00
  br i1 %i.acj, label %.split70.us, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv810.i.us
  store float %.6.i.us, ptr %i.ack, align 4, !tbaa !36, !noalias !813
  %i.acl = trunc nuw nsw i32 %.4.i.us to i8
  %i.acm = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv810.i.us
  store i8 %i.acl, ptr %i.acm, align 1, !tbaa !34, !noalias !813
  %i.acn = fcmp ogt float %.0546689.i.us, %.6.i.us
  %i.aco = select i1 %i.acn, float %.0546689.i.us, float %.6.i.us
  br label %bb.ao

bb.am:                                            ; preds = %bb.af
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv810.i.us
  store float 0.000000e+00, ptr %i.acp, align 4, !tbaa !36, !noalias !813
  %i.acq = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv810.i.us
  store i8 0, ptr %i.acq, align 1, !tbaa !34, !noalias !813
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 1, i64 16, i1 false), !noalias !813
  br label %bb.ao

bb.an:                                            ; preds = %.loopexit588.i.us
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv810.i.us
  store float 0.000000e+00, ptr %i.acr, align 4, !tbaa !36, !noalias !813
  %i.acs = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv810.i.us
  store i8 0, ptr %i.acs, align 1, !tbaa !34, !noalias !813
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 1, i64 16, i1 false), !noalias !813
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.2548.i.us = phi float [ %.0546689.i.us, %bb.an ], [ %.0546689.i.us, %bb.am ], [ %i.aco, %bb.al ] ; 3 uses
  %indvars.iv.next811.i.us = add nuw nsw i64 %indvars.iv810.i.us, 1 ; 2 uses
  %exitcond813.not.i.us = icmp eq i64 %indvars.iv.next811.i.us, 16
  br i1 %exitcond813.not.i.us, label %bb.ap, label %bb.h, !llvm.loop !806

bb.ap:                                            ; preds = %bb.ao
  %i.act = fcmp une float %.2548.i.us, 0.000000e+00
  br i1 %i.act, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.acu = fdiv float %.2548.i.us, 1.500000e+01   ; 2 uses
  %i.acv = fdiv float 1.000000e+00, %i.acu
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %indvars.iv830.i.us = phi i64 [ 0, %bb.aq ], [ %indvars.iv.next831.i.us, %bb.as ] ; 8 uses
  %.0491700.i.us = phi float [ 0.000000e+00, %bb.aq ], [ %i.aqd, %bb.as ]
  %.0492699.i.us = phi float [ 0.000000e+00, %bb.aq ], [ %i.aqc, %bb.as ]
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv830.i.us
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !36, !noalias !813
  %i.acy = call float @llvm.fmuladd.f32(float %i.acv, float %i.acx, float -1.000000e+00)
  %i.acz = fmul float %i.acy, 5.000000e-01
  %i.ada = fadd float %i.acz, f0x4B400000
  %i.adb = bitcast float %i.ada to i32
  %i.adc = and i32 %i.adb, 8388607
  %i.add = call i32 @llvm.usub.sat.i32(i32 %i.adc, i32 4194304)
  %i.ade = call i32 @llvm.umin.i32(i32 %i.add, i32 7) ; 2 uses
  %i.adf = trunc nuw nsw i64 %indvars.iv830.i.us to i32
  %i.adg = and i32 %i.adf, 3
  %i.adh = mul nuw nsw i32 %i.adg, 3
  %i.adi = shl nuw nsw i32 %i.ade, %i.adh
  %i.adj = lshr i64 %indvars.iv830.i.us, 2
  %i.adk = and i64 %i.adj, 1073741823
  %i.adl = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.adk ; 2 uses
  %i.adm = load i16, ptr %i.adl, align 2, !tbaa !58, !alias.scope !811, !noalias !814
  %i.adn = trunc nuw nsw i32 %i.adi to i16
  %i.ado = or i16 %i.adm, %i.adn
  store i16 %i.ado, ptr %i.adl, align 2, !tbaa !58, !alias.scope !811, !noalias !814
  %i.adp = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv830.i.us
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !34, !noalias !813 ; 3 uses
  %i.adr = sext i8 %i.adq to i64
  %i.ads = getelementptr inbounds i8, ptr @__const.quantize_row_iq1_m_impl.masks, i64 %i.adr
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !34, !noalias !813
  %i.adu = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv830.i.us ; 2 uses
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !34, !alias.scope !811, !noalias !814
  %i.adw = or i8 %i.adv, %i.adt                   ; 2 uses
  store i8 %i.adw, ptr %i.adu, align 1, !tbaa !34, !alias.scope !811, !noalias !814
  %i.adx = shl nuw nsw i64 %indvars.iv830.i.us, 4 ; 2 uses
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.adx ; 30 uses
  br i1 %.not573.i, label %.preheader579.preheader.i.us, label %.loopexit.loopexit708.i.us

.loopexit.loopexit708.i.us:                       ; preds = %bb.ar
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.adx ; 4 uses
  %i.aea = load float, ptr %i.ady, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.aeb = call float @llvm.fmuladd.f32(float %i.aea, float %i.aea, float %i.bu)
  %i.aec = call float @sqrtf(float noundef %i.aeb) #14, !noalias !815
  %i.aed = getelementptr inbounds nuw i8, ptr %i.ady, i64 4 ; 2 uses
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.aef = call float @llvm.fmuladd.f32(float %i.aee, float %i.aee, float %i.bu)
  %i.aeg = call float @sqrtf(float noundef %i.aef) #14, !noalias !815
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  %i.aei = load float, ptr %i.aeh, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 3 uses
  %i.aej = call float @llvm.fmuladd.f32(float %i.aei, float %i.aei, float %i.bu)
  %i.aek = call float @sqrtf(float noundef %i.aej) #14, !noalias !815
  %i.ael = load <4 x float>, ptr %i.adz, align 4, !tbaa !36, !alias.scope !812, !noalias !816
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ady, i64 12
  %i.aen = load float, ptr %i.aem, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 3 uses
  %i.aeo = call float @llvm.fmuladd.f32(float %i.aen, float %i.aen, float %i.bu)
  %i.aep = call float @sqrtf(float noundef %i.aeo) #14, !noalias !815
  %i.aeq = insertelement <4 x float> poison, float %i.aec, i64 0
  %i.aer = insertelement <4 x float> %i.aeq, float %i.aeg, i64 1
  %i.aes = insertelement <4 x float> %i.aer, float %i.aek, i64 2
  %i.aet = insertelement <4 x float> %i.aes, float %i.aep, i64 3
  %i.aeu = fmul <4 x float> %i.ael, %i.aet
  %i.aev = getelementptr inbounds nuw i8, ptr %i.adz, i64 16
  %i.aew = getelementptr inbounds nuw i8, ptr %i.ady, i64 16
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 3 uses
  %i.aey = call float @llvm.fmuladd.f32(float %i.aex, float %i.aex, float %i.bu)
  %i.aez = call float @sqrtf(float noundef %i.aey) #14, !noalias !815
  %i.afa = getelementptr inbounds nuw i8, ptr %i.ady, i64 20
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 3 uses
  %i.afc = call float @llvm.fmuladd.f32(float %i.afb, float %i.afb, float %i.bu)
  %i.afd = call float @sqrtf(float noundef %i.afc) #14, !noalias !815
  %i.afe = getelementptr inbounds nuw i8, ptr %i.ady, i64 24
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.afg = call float @llvm.fmuladd.f32(float %i.aff, float %i.aff, float %i.bu)
  %i.afh = call float @sqrtf(float noundef %i.afg) #14, !noalias !815
  %i.afi = load <4 x float>, ptr %i.aev, align 4, !tbaa !36, !alias.scope !812, !noalias !816
  %i.afj = getelementptr inbounds nuw i8, ptr %i.ady, i64 28
  %i.afk = load float, ptr %i.afj, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.afl = call float @llvm.fmuladd.f32(float %i.afk, float %i.afk, float %i.bu)
  %i.afm = call float @sqrtf(float noundef %i.afl) #14, !noalias !815
  %i.afn = insertelement <4 x float> poison, float %i.aez, i64 0
  %i.afo = insertelement <4 x float> %i.afn, float %i.afd, i64 1
  %i.afp = insertelement <4 x float> %i.afo, float %i.afh, i64 2
  %i.afq = insertelement <4 x float> %i.afp, float %i.afm, i64 3
  %i.afr = fmul <4 x float> %i.afi, %i.afq
  %i.afs = getelementptr inbounds nuw i8, ptr %i.adz, i64 32
  %i.aft = getelementptr inbounds nuw i8, ptr %i.ady, i64 32
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.afv = call float @llvm.fmuladd.f32(float %i.afu, float %i.afu, float %i.bu)
  %i.afw = call float @sqrtf(float noundef %i.afv) #14, !noalias !815
  %i.afx = getelementptr inbounds nuw i8, ptr %i.ady, i64 36
  %i.afy = load float, ptr %i.afx, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.afz = call float @llvm.fmuladd.f32(float %i.afy, float %i.afy, float %i.bu)
  %i.aga = call float @sqrtf(float noundef %i.afz) #14, !noalias !815
  %i.agb = getelementptr inbounds nuw i8, ptr %i.ady, i64 40
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.agd = call float @llvm.fmuladd.f32(float %i.agc, float %i.agc, float %i.bu)
  %i.age = call float @sqrtf(float noundef %i.agd) #14, !noalias !815
  %i.agf = load <4 x float>, ptr %i.afs, align 4, !tbaa !36, !alias.scope !812, !noalias !816
  %i.agg = getelementptr inbounds nuw i8, ptr %i.ady, i64 44
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.agi = call float @llvm.fmuladd.f32(float %i.agh, float %i.agh, float %i.bu)
  %i.agj = call float @sqrtf(float noundef %i.agi) #14, !noalias !815
  %i.agk = insertelement <4 x float> poison, float %i.afw, i64 0
  %i.agl = insertelement <4 x float> %i.agk, float %i.aga, i64 1
  %i.agm = insertelement <4 x float> %i.agl, float %i.age, i64 2
  %i.agn = insertelement <4 x float> %i.agm, float %i.agj, i64 3
  %i.ago = fmul <4 x float> %i.agf, %i.agn
  %i.agp = getelementptr inbounds nuw i8, ptr %i.adz, i64 48
  %i.agq = getelementptr inbounds nuw i8, ptr %i.ady, i64 48
  %i.agr = load float, ptr %i.agq, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.ags = call float @llvm.fmuladd.f32(float %i.agr, float %i.agr, float %i.bu)
  %i.agt = call float @sqrtf(float noundef %i.ags) #14, !noalias !815
  %i.agu = getelementptr inbounds nuw i8, ptr %i.ady, i64 52
  %i.agv = load float, ptr %i.agu, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.agw = call float @llvm.fmuladd.f32(float %i.agv, float %i.agv, float %i.bu)
  %i.agx = call float @sqrtf(float noundef %i.agw) #14, !noalias !815
  %i.agy = getelementptr inbounds nuw i8, ptr %i.ady, i64 56
  %i.agz = load float, ptr %i.agy, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.aha = call float @llvm.fmuladd.f32(float %i.agz, float %i.agz, float %i.bu)
  %i.ahb = call float @sqrtf(float noundef %i.aha) #14, !noalias !815
  %i.ahc = load <4 x float>, ptr %i.agp, align 4, !tbaa !36, !alias.scope !812, !noalias !816
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ady, i64 60
  %i.ahe = load float, ptr %i.ahd, align 4, !tbaa !36, !alias.scope !810, !noalias !815 ; 2 uses
  %i.ahf = call float @llvm.fmuladd.f32(float %i.ahe, float %i.ahe, float %i.bu)
  %i.ahg = call float @sqrtf(float noundef %i.ahf) #14, !noalias !815
  %i.ahh = insertelement <4 x float> poison, float %i.agt, i64 0
  %i.ahi = insertelement <4 x float> %i.ahh, float %i.agx, i64 1
end_hunk_2
