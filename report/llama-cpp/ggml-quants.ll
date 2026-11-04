Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 272
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 328
begin_hunk_0_@quantize_iq1_s:bb.a
  %i.ss = getelementptr inbounds i8, ptr %i.c, i64 %i.sr
  store i8 2, ptr %i.ss, align 1, !tbaa !34, !noalias !668
  %indvars.iv.next466.i.us.prol = add nuw nsw i64 %indvars.iv465.i.us.prol, 1 ; 2 uses
  %prol.iter68.next = add i32 %prol.iter68, 1     ; 2 uses
  %prol.iter68.cmp.not = icmp eq i32 %prol.iter68.next, %xtraiter66
  br i1 %prol.iter68.cmp.not, label %.lr.ph405.i.us.prol.loopexit, label %.lr.ph405.i.us.prol, !llvm.loop !659

.lr.ph405.i.us.prol.loopexit:                     ; preds = %.lr.ph405.i.us.prol, %.lr.ph405.preheader.i.us
  %indvars.iv465.i.us.unr = phi i64 [ %i.sn, %.lr.ph405.preheader.i.us ], [ %indvars.iv.next466.i.us.prol, %.lr.ph405.i.us.prol ]
  %i.st = icmp ugt i32 %.3333.i.us, 28
  br i1 %i.st, label %._crit_edge.i.us, label %.lr.ph405.i.us

.lr.ph405.i.us:                                   ; preds = %.lr.ph405.i.us.prol.loopexit, %.lr.ph405.i.us
  %indvars.iv465.i.us = phi i64 [ %indvars.iv.next466.i.us.3, %.lr.ph405.i.us ], [ %indvars.iv465.i.us.unr, %.lr.ph405.i.us.prol.loopexit ] ; 5 uses
  %.idx516.i.us = shl nuw nsw i64 %indvars.iv465.i.us, 3
  %i.su = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx516.i.us
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !47, !noalias !668
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr inbounds i8, ptr %i.c, i64 %i.sw
  store i8 2, ptr %i.sx, align 1, !tbaa !34, !noalias !668
  %indvars.iv.next466.i.us = shl i64 %indvars.iv465.i.us, 3
  %i.sy = getelementptr i8, ptr %i.m, i64 %indvars.iv.next466.i.us
  %i.sz = getelementptr i8, ptr %i.sy, i64 8
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !47, !noalias !668
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds i8, ptr %i.c, i64 %i.tb
  store i8 2, ptr %i.tc, align 1, !tbaa !34, !noalias !668
  %indvars.iv.next466.i.us.1 = shl i64 %indvars.iv465.i.us, 3
  %i.td = getelementptr i8, ptr %i.m, i64 %indvars.iv.next466.i.us.1
  %i.te = getelementptr i8, ptr %i.td, i64 16
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !47, !noalias !668
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds i8, ptr %i.c, i64 %i.tg
  store i8 2, ptr %i.th, align 1, !tbaa !34, !noalias !668
  %indvars.iv.next466.i.us.2 = add nuw nsw i64 %indvars.iv465.i.us, 3 ; 2 uses
  %.idx516.i.us.3 = shl nuw nsw i64 %indvars.iv.next466.i.us.2, 3
  %i.ti = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx516.i.us.3
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !47, !noalias !668
  %i.tk = sext i32 %i.tj to i64
  %i.tl = getelementptr inbounds i8, ptr %i.c, i64 %i.tk
  store i8 2, ptr %i.tl, align 1, !tbaa !34, !noalias !668
  %indvars.iv.next466.i.us.3 = add nuw nsw i64 %indvars.iv465.i.us, 4
  %i.tm = trunc nuw i64 %indvars.iv.next466.i.us.2 to i32
  %i.tn = icmp slt i32 %i.tm, 31
  br i1 %i.tn, label %.lr.ph405.i.us, label %._crit_edge.i.us, !llvm.loop !660

._crit_edge.i.us:                                 ; preds = %.lr.ph405.i.us.prol.loopexit, %.lr.ph405.i.us, %.preheader376.i.us
  %i.to = fcmp olt float %.3341.i.us, 0.000000e+00
  %i.tp = load <4 x i8>, ptr %i.c, align 16, !tbaa !34, !noalias !668 ; 2 uses
  %i.tq = load <4 x i8>, ptr %i.ch, align 4, !tbaa !34, !noalias !668 ; 2 uses
  br i1 %i.to, label %.preheader375.preheader.i.us, label %.preheader.i.us

.preheader375.preheader.i.us:                     ; preds = %._crit_edge.i.us
  %i.tr = sub <4 x i8> splat (i8 2), %i.tp        ; 3 uses
  %i.ts = extractelement <4 x i8> %i.tr, i64 0
  store i8 %i.ts, ptr %i.c, align 16, !tbaa !34, !noalias !668
  %i.tt = sub <4 x i8> splat (i8 2), %i.tq        ; 2 uses
  %i.tu = load i8, ptr %i.ci, align 8, !tbaa !34, !noalias !668
  %i.tv = load <16 x i8>, ptr %i.cj, align 1
  %i.tw = shufflevector <4 x i8> %i.tr, <4 x i8> %i.tt, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tx = shufflevector <16 x i8> %i.tw, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ty = insertelement <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, i8 %i.tu, i64 7
  %i.tz = shufflevector <16 x i8> %i.ty, <16 x i8> %i.tv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ua = sub <16 x i8> %i.tx, %i.tz
  store <16 x i8> %i.ua, ptr %i.cg, align 1, !tbaa !34, !noalias !668
  %i.ub = load <8 x i8>, ptr %i.cm, align 1, !tbaa !34, !noalias !668
  %i.uc = sub <8 x i8> splat (i8 2), %i.ub
  store <8 x i8> %i.uc, ptr %i.cm, align 1, !tbaa !34, !noalias !668
  %i.ud = load <4 x i8>, ptr %i.cp, align 1, !tbaa !34, !noalias !668
  %i.ue = sub <4 x i8> splat (i8 2), %i.ud
  store <4 x i8> %i.ue, ptr %i.cp, align 1, !tbaa !34, !noalias !668
  %i.uf = load i8, ptr %i.cr, align 1, !tbaa !34, !noalias !668
  %i.ug = sub i8 2, %i.uf
  store i8 %i.ug, ptr %i.cr, align 1, !tbaa !34, !noalias !668
  %i.uh = load i8, ptr %i.cs, align 2, !tbaa !34, !noalias !668
  %i.ui = sub i8 2, %i.uh
  store i8 %i.ui, ptr %i.cs, align 2, !tbaa !34, !noalias !668
  %i.uj = load i8, ptr %i.ct, align 1, !tbaa !34, !noalias !668
  %i.uk = sub i8 2, %i.uj
  store i8 %i.uk, ptr %i.ct, align 1, !tbaa !34, !noalias !668
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
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !47, !noalias !668 ; 3 uses
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
  store i16 %i.vf, ptr %i.g, align 2, !tbaa !57, !noalias !668
  %i.vg = load <4 x i8>, ptr %i.ci, align 8, !tbaa !34, !noalias !668
  %i.vh = sext <4 x i8> %i.vg to <4 x i16>
  %i.vi = load <4 x i8>, ptr %i.ck, align 4, !tbaa !34, !noalias !668
  %i.vj = zext <4 x i8> %i.vi to <4 x i16>
  %i.vk = shufflevector <4 x i16> %i.vh, <4 x i16> %i.vj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vl = shl <8 x i16> %i.vk, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.vm = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.vl)
  %i.vn = zext i16 %i.vm to i64
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.vn
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !47, !noalias !668 ; 3 uses
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
  store i16 %i.vw, ptr %i.cu, align 2, !tbaa !57, !noalias !668
  %i.vx = load <4 x i8>, ptr %i.cl, align 16, !tbaa !34, !noalias !668
  %i.vy = sext <4 x i8> %i.vx to <4 x i16>
  %i.vz = load <4 x i8>, ptr %i.cn, align 4, !tbaa !34, !noalias !668
  %i.wa = zext <4 x i8> %i.vz to <4 x i16>
  %i.wb = shufflevector <4 x i16> %i.vy, <4 x i16> %i.wa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wc = shl <8 x i16> %i.wb, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.wd = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.wc)
  %i.we = zext i16 %i.wd to i64
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.we
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !47, !noalias !668 ; 3 uses
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
  store i16 %i.wn, ptr %i.cv, align 2, !tbaa !57, !noalias !668
  %i.wo = load <4 x i8>, ptr %i.co, align 8, !tbaa !34, !noalias !668
  %i.wp = sext <4 x i8> %i.wo to <4 x i16>
  %i.wq = load <4 x i8>, ptr %i.cq, align 4, !tbaa !34, !noalias !668
  %i.wr = zext <4 x i8> %i.wq to <4 x i16>
  %i.ws = shufflevector <4 x i16> %i.wp, <4 x i16> %i.wr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wt = shl <8 x i16> %i.ws, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.wu = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.wt)
  %i.wv = zext i16 %i.wu to i64
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.wv
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !47, !noalias !668 ; 3 uses
  %i.wy = icmp slt i32 %i.wx, 0
  br i1 %i.wy, label %.thread.i.us, label %bb.v

bb.v:                                             ; preds = %.preheader.3.i.us
  %i.wz = trunc i32 %i.wx to i16                  ; 3 uses
  store i16 %i.wz, ptr %i.cw, align 2, !tbaa !57, !noalias !668
  br i1 %.1321.2.i.us, label %bb.x, label %.preheader374.preheader.i.us

.thread.i.us:                                     ; preds = %.preheader.3.i.us
  %i.xa = sext i32 %i.wx to i64
  %i.xb = sub nsw i64 0, %i.xa
  %i.xc = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.xb
  %i.xd = getelementptr inbounds i8, ptr %i.xc, i64 -2
  %i.xe = call fastcc i32 @iq1_find_best_neighbour2(ptr noundef %i.xd, ptr noundef %i.cz, ptr noundef nonnull readonly %i.jj, ptr noundef %i.u, float noundef %.4342.i.us, ptr noundef %i.uq, ptr noundef %i.co)
  %i.xf = trunc i32 %i.xe to i16                  ; 2 uses
  store i16 %i.xf, ptr %i.cw, align 2, !tbaa !57, !noalias !668
  br label %.preheader374.preheader.i.us

.preheader374.preheader.i.us:                     ; preds = %.thread.i.us, %bb.v
  %i.xg = phi i16 [ %i.xf, %.thread.i.us ], [ %i.wz, %bb.v ]
  br label %.preheader374.i.us

.preheader374.i.us:                               ; preds = %.preheader374.i.us, %.preheader374.preheader.i.us
  %indvars.iv482.i.us = phi i64 [ 0, %.preheader374.preheader.i.us ], [ %indvars.iv.next483.i.us, %.preheader374.i.us ] ; 3 uses
  %i.xh = phi <2 x float> [ zeroinitializer, %.preheader374.preheader.i.us ], [ %.fr, %.preheader374.i.us ]
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv482.i.us
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !57, !noalias !668
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
  %i.xv = load <8 x i8>, ptr %i.xl, align 1, !tbaa !34, !noalias !668
  %i.xw = sext <8 x i8> %i.xv to <8 x i16>
  %i.xx = add nsw <8 x i16> %i.xw, splat (i16 -1)
  %i.xy = sdiv <8 x i16> %i.xx, splat (i16 2)     ; 8 uses
  %i.xz = extractelement <8 x i16> %i.xy, i64 0
  %i.ya = sext i16 %i.xz to i64
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.ya
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !36, !noalias !668 ; 2 uses
  %i.yd = extractelement <8 x i16> %i.xy, i64 1
  %i.ye = sext i16 %i.yd to i64
  %i.yf = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.ye
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !36, !noalias !668 ; 2 uses
  %i.yh = extractelement <8 x i16> %i.xy, i64 2
  %i.yi = sext i16 %i.yh to i64
  %i.yj = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.yi
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !36, !noalias !668 ; 2 uses
  %i.yl = extractelement <8 x i16> %i.xy, i64 3
  %i.ym = sext i16 %i.yl to i64
  %i.yn = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.ym
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !36, !noalias !668 ; 2 uses
  %i.yp = extractelement <8 x i16> %i.xy, i64 4
  %i.yq = sext i16 %i.yp to i64
  %i.yr = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.yq
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !36, !noalias !668 ; 2 uses
  %i.yt = extractelement <8 x i16> %i.xy, i64 5
  %i.yu = sext i16 %i.yt to i64
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.yu
  %i.yw = load float, ptr %i.yv, align 4, !tbaa !36, !noalias !668 ; 2 uses
  %i.yx = extractelement <8 x i16> %i.xy, i64 6
  %i.yy = sext i16 %i.yx to i64
  %i.yz = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.yy
  %i.za = load float, ptr %i.yz, align 4, !tbaa !36, !noalias !668 ; 2 uses
  %i.zb = extractelement <8 x i16> %i.xy, i64 7
  %i.zc = sext i16 %i.zb to i64
  %i.zd = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.zc
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !36, !noalias !668 ; 2 uses
  %i.zf = load <2 x float>, ptr %i.xo, align 4, !tbaa !36, !alias.scope !665 ; 2 uses
  %i.zg = load <8 x float>, ptr %i.xn, align 16, !tbaa !36, !noalias !668
  %i.zh = insertelement <8 x float> poison, float %i.yc, i64 0
  %i.zi = insertelement <8 x float> %i.zh, float %i.yg, i64 1
  %i.zj = insertelement <8 x float> %i.zi, float %i.yk, i64 2
  %i.zk = insertelement <8 x float> %i.zj, float %i.yo, i64 3
  %i.zl = insertelement <8 x float> %i.zk, float %i.ys, i64 4
  %i.zm = insertelement <8 x float> %i.zl, float %i.yw, i64 5
  %i.zn = insertelement <8 x float> %i.zm, float %i.za, i64 6
  %i.zo = insertelement <8 x float> %i.zn, float %i.ze, i64 7
  %i.zp = fmul <8 x float> %i.zg, %i.zo           ; 8 uses
  %i.zq = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> zeroinitializer
  %i.zr = insertelement <2 x float> poison, float %i.yc, i64 0
  %i.zs = shufflevector <2 x float> %i.zr, <2 x float> %i.zf, <2 x i32> <i32 0, i32 2>
  %i.zt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zq, <2 x float> %i.zs, <2 x float> %i.xh)
  %i.zu = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zv = insertelement <2 x float> %i.zf, float %i.yg, i64 0
  %i.zw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zu, <2 x float> %i.zv, <2 x float> %i.zt)
  %i.zx = load <2 x float>, ptr %i.xq, align 4, !tbaa !36, !alias.scope !665 ; 2 uses
  %i.zy = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.zz = insertelement <2 x float> poison, float %i.yk, i64 0
  %i.aaa = shufflevector <2 x float> %i.zz, <2 x float> %i.zx, <2 x i32> <i32 0, i32 2>
  %i.aab = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zy, <2 x float> %i.aaa, <2 x float> %i.zw)
  %i.aac = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.aad = insertelement <2 x float> %i.zx, float %i.yo, i64 0
  %i.aae = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aac, <2 x float> %i.aad, <2 x float> %i.aab)
  %i.aaf = load <2 x float>, ptr %i.xs, align 4, !tbaa !36, !alias.scope !665 ; 2 uses
  %i.aag = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.aah = insertelement <2 x float> poison, float %i.ys, i64 0
  %i.aai = shufflevector <2 x float> %i.aah, <2 x float> %i.aaf, <2 x i32> <i32 0, i32 2>
  %i.aaj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aag, <2 x float> %i.aai, <2 x float> %i.aae)
  %i.aak = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 5, i32 5>
  %i.aal = insertelement <2 x float> %i.aaf, float %i.yw, i64 0
  %i.aam = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aak, <2 x float> %i.aal, <2 x float> %i.aaj)
  %i.aan = load <2 x float>, ptr %i.xu, align 4, !tbaa !36, !alias.scope !665 ; 2 uses
  %i.aao = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.aap = insertelement <2 x float> poison, float %i.za, i64 0
  %i.aaq = shufflevector <2 x float> %i.aap, <2 x float> %i.aan, <2 x i32> <i32 0, i32 2>
  %i.aar = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aao, <2 x float> %i.aaq, <2 x float> %i.aam)
  %i.aas = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.aat = insertelement <2 x float> %i.aan, float %i.ze, i64 0
  %i.aau = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aas, <2 x float> %i.aat, <2 x float> %i.aar)
  %.fr = freeze <2 x float> %i.aau                ; 4 uses
  %indvars.iv.next483.i.us = add nuw nsw i64 %indvars.iv482.i.us, 1 ; 2 uses
  %exitcond485.not.i.us = icmp eq i64 %indvars.iv.next483.i.us, 4
  br i1 %exitcond485.not.i.us, label %bb.w, label %.preheader374.i.us, !llvm.loop !661

bb.w:                                             ; preds = %.preheader374.i.us
  %5 = fcmp ule <2 x float> %.fr, zeroinitializer
  %6 = bitcast <2 x i1> %5 to i2
  %or.cond5.i.us = icmp eq i2 %6, 0
  %i.aav = extractelement <2 x float> %.fr, i64 0
  %i.aaw = extractelement <2 x float> %.fr, i64 1
  %i.aax = fdiv float %i.aaw, %i.aav
  %.5.i.us = select i1 %or.cond5.i.us, float %i.aax, float %.4342.i.us
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.aay = phi i16 [ %i.wz, %bb.v ], [ %i.xg, %bb.w ] ; 2 uses
  %.6.i.us = phi float [ %.4342.i.us, %bb.v ], [ %.5.i.us, %bb.w ] ; 4 uses
  %i.aaz = shl nuw nsw i64 %indvars.iv489.i.us, 2
  %i.aba = trunc i32 %.0316.i.us to i8
  %i.abb = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.aaz ; 4 uses
  store i8 %i.aba, ptr %i.abb, align 1, !tbaa !34, !alias.scope !666
  %i.abc = lshr i16 %i.vf, 8
  %i.abd = trunc i32 %.0316.1.i.us to i8
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abb, i64 1
  store i8 %i.abd, ptr %i.abe, align 1, !tbaa !34, !alias.scope !666
  %i.abf = lshr i16 %i.vw, 5
  %i.abg = and i16 %i.abf, 2040
  %i.abh = or i16 %i.abg, %i.abc
  %i.abi = trunc i32 %.0316.2.i.us to i8
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abb, i64 2
  store i8 %i.abi, ptr %i.abj, align 1, !tbaa !34, !alias.scope !666
  %i.abk = lshr i16 %i.wn, 2
  %i.abl = and i16 %i.abk, 16320
  %i.abm = or i16 %i.abh, %i.abl
  %i.abn = trunc i16 %i.aay to i8
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abb, i64 3
  store i8 %i.abn, ptr %i.abo, align 1, !tbaa !34, !alias.scope !666
  %i.abp = shl i16 %i.aay, 1
  %i.abq = and i16 %i.abp, -512
  %i.abr = or i16 %i.abm, %i.abq
  %i.abs = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv489.i.us
  store i16 %i.abr, ptr %i.abs, align 2, !tbaa !57, !alias.scope !666
  %i.abt = fcmp ult float %.6.i.us, 0.000000e+00
  br i1 %i.abt, label %.split28.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv489.i.us
  store float %.6.i.us, ptr %i.abu, align 4, !tbaa !36, !noalias !668
  %i.abv = trunc nsw i32 %.4.i.us to i8
  %i.abw = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv489.i.us
  store i8 %i.abv, ptr %i.abw, align 1, !tbaa !34, !noalias !668
  %i.abx = fcmp ogt float %.0355419.i.us, %.6.i.us
  %i.aby = select i1 %i.abx, float %.0355419.i.us, float %.6.i.us
  br label %bb.ab

bb.z:                                             ; preds = %bb.r
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv489.i.us
  store float 0.000000e+00, ptr %i.abz, align 4, !tbaa !36, !noalias !668
  %i.aca = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv489.i.us
  store i8 1, ptr %i.aca, align 1, !tbaa !34, !noalias !668
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 1, i64 32, i1 false), !noalias !668
  br label %bb.ab

bb.aa:                                            ; preds = %bb.h
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv489.i.us
  store float 0.000000e+00, ptr %i.acb, align 4, !tbaa !36, !noalias !668
  %i.acc = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv489.i.us
  store i8 1, ptr %i.acc, align 1, !tbaa !34, !noalias !668
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 1, i64 32, i1 false), !noalias !668
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.2357.i.us = phi float [ %.0355419.i.us, %bb.aa ], [ %.0355419.i.us, %bb.z ], [ %i.aby, %bb.y ] ; 3 uses
  %indvars.iv.next490.i.us = add nuw nsw i64 %indvars.iv489.i.us, 1 ; 2 uses
  %exitcond492.not.i.us = icmp eq i64 %indvars.iv.next490.i.us, 8
  br i1 %exitcond492.not.i.us, label %bb.ac, label %bb.h, !llvm.loop !662

bb.ac:                                            ; preds = %bb.ab
  %i.acd = fcmp une float %.2357.i.us, 0.000000e+00
  br i1 %i.acd, label %.loopexit.loopexit.i.us, label %.loopexit.i.us

.loopexit.loopexit.i.us:                          ; preds = %bb.ac
  %i.ace = fdiv float %.2357.i.us, 1.500000e+01   ; 2 uses
  %i.acf = fmul float %i.ace, 1.125000e+00        ; 2 uses
  %i.acg = call float @llvm.fabs.f32(float %i.acf)
  %i.ach = fmul float %i.acg, f0x77800000
  %i.aci = fmul float %i.ach, f0x08800000
  %i.acj = bitcast float %i.acf to i32            ; 2 uses
  %i.ack = shl i32 %i.acj, 1                      ; 2 uses
  %i.acl = call i32 @llvm.umax.i32(i32 %i.ack, i32 1895825408)
  %spec.store.select.i.i.us = lshr exact i32 %i.acl, 1
  %i.acm = and i32 %spec.store.select.i.i.us, 2139095040
  %i.acn = add nuw i32 %i.acm, 125829120
  %i.aco = bitcast i32 %i.acn to float
  %i.acp = fadd float %i.aci, %i.aco
  %i.acq = bitcast float %i.acp to i32            ; 2 uses
  %i.acr = lshr i32 %i.acq, 13
  %i.acs = and i32 %i.acr, 31744
  %i.act = and i32 %i.acq, 4095
  %i.acu = add nuw nsw i32 %i.acs, %i.act
  %i.acv = lshr i32 %i.acj, 16
  %i.acw = and i32 %i.acv, 32768
  %i.acx = icmp ugt i32 %i.ack, -16777216
  %i.acy = select i1 %i.acx, i32 32256, i32 %i.acu
  %i.acz = or i32 %i.acy, %i.acw
  %i.ada = trunc nuw i32 %i.acz to i16
  store i16 %i.ada, ptr %i.dc, align 2, !tbaa !63, !alias.scope !666
  %i.adb = fdiv float 1.000000e+00, %i.ace
  %i.adc = load <8 x float>, ptr %i.a, align 16, !tbaa !36, !noalias !668
  %i.add = insertelement <8 x float> poison, float %i.adb, i64 0
  %i.ade = shufflevector <8 x float> %i.add, <8 x float> poison, <8 x i32> zeroinitializer
  %i.adf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ade, <8 x float> %i.adc, <8 x float> splat (float -1.000000e+00))
  %i.adg = fmul <8 x float> %i.adf, splat (float 5.000000e-01)
  %i.adh = fadd <8 x float> %i.adg, splat (float f0x4B400000)
  %i.adi = bitcast <8 x float> %i.adh to <8 x i32>
  %i.adj = and <8 x i32> %i.adi, splat (i32 8388607)
  %i.adk = call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.adj, <8 x i32> splat (i32 4194304))
  %i.adl = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.adk, <8 x i32> splat (i32 7)) ; 2 uses
  %i.adm = load <8 x i8>, ptr %i.h, align 8, !tbaa !34, !noalias !668
  %i.adn = icmp eq <8 x i8> %i.adm, splat (i8 -1)
  %i.ado = trunc nuw nsw <8 x i32> %i.adl to <8 x i8>
  %i.adp = or disjoint <8 x i8> %i.ado, splat (i8 8)
  %i.adq = trunc nuw nsw <8 x i32> %i.adl to <8 x i8>
  %i.adr = select <8 x i1> %i.adn, <8 x i8> %i.adp, <8 x i8> %i.adq
  %i.ads = load <8 x i16>, ptr %i.dv, align 2, !tbaa !57, !alias.scope !666
  %i.adt = zext nneg <8 x i8> %i.adr to <8 x i16>
  %i.adu = shl nuw <8 x i16> %i.adt, splat (i16 12)
  %i.adv = or <8 x i16> %i.adu, %i.ads
  store <8 x i16> %i.adv, ptr %i.dv, align 2, !tbaa !57, !alias.scope !666
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.loopexit.loopexit.i.us, %bb.ac
  %indvars.iv.next498.i.us = add nuw nsw i64 %indvars.iv497.i.us, 1 ; 2 uses
  %exitcond500.not.i.us = icmp eq i64 %indvars.iv.next498.i.us, %i.k
  br i1 %exitcond500.not.i.us, label %quantize_row_iq1_s_impl.exit.loopexit.us, label %.lr.ph424.i.us, !llvm.loop !663

quantize_row_iq1_s_impl.exit.loopexit.us:         ; preds = %.loopexit.i.us
  %i.adw = getelementptr inbounds [4 x i8], ptr %.01620.us, i64 %3
  %i.adx = getelementptr inbounds nuw i8, ptr %.01521.us, i64 %i.cx
  %i.ady = add nuw nsw i64 %.022.us, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ady, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !664

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.adz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 48), align 16, !tbaa !73, !noalias !668
  %i.aea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 64), align 16, !tbaa !78, !noalias !668
  %.not370.i = icmp eq ptr %i.adz, null
  %.not372.i = icmp eq ptr %i.aea, null
  br i1 %.not370.i, label %.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.aeb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 56), align 8, !tbaa !76, !noalias !668
  %.not371.i = icmp eq ptr %i.aeb, null
  br i1 %.not371.i, label %.split24.us, label %.lr.ph.split.split.split.split

.lr.ph.split.split.split.split:                   ; preds = %.lr.ph.split.split.split
  br i1 %.not372.i, label %.split26.us, label %._crit_edge

._crit_edge:                                      ; preds = %quantize_row_iq1_s_impl.exit.loopexit.us, %.lr.ph.split.split.split.split, %bb.c
  %i.aec = mul i64 %2, 50
  %i.aed = mul i64 %i.aec, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %i.aed

bb.ad:                                            ; preds = %.lr.ph
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4524, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #24, !noalias !668
  unreachable

.split.us:                                        ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4525, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #24, !noalias !668
  unreachable

.split24.us:                                      ; preds = %bb.d, %.lr.ph.split.split.split
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4526, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #24, !noalias !668
  unreachable

.split26.us:                                      ; preds = %bb.e, %.lr.ph.split.split.split.split
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4527, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #24, !noalias !668
  unreachable

.split28.us:                                      ; preds = %bb.x
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4650, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #24, !noalias !668
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @iq1_sort_helper(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !36   ; 2 uses
  %i.b = load float, ptr %1, align 4, !tbaa !36   ; 2 uses
  %i.c = fcmp olt float %i.a, %i.b
  %i.d = fcmp ogt float %i.a, %i.b
  %i.e = zext i1 %i.d to i32
  %i.f = select i1 %i.c, i32 -1, i32 %i.e
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, -2147483648) i32 @iq1_find_best_neighbour2(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, float noundef %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, ptr noalias nofree noundef nonnull writeonly captures(none) %6) unnamed_addr #6 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !57     ; 2 uses
  %i.b = zext i16 %i.a to i32                     ; 2 uses
  %.not = icmp eq i16 %i.a, 0
end_hunk_0
