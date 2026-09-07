Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/vertexcodec?download=true
inline.NumInlined: 72
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 30
begin_hunk_0_@meshopt_encodeVertexBufferLevel:bb.a
  %i.to = getelementptr inbounds nuw i8, ptr %i.os, i64 14
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ot, i64 30
  %i.tq = load i8, ptr %i.to, align 2, !tbaa !9
  %i.tr = load i8, ptr %i.tp, align 2, !tbaa !9
  %i.ts = insertelement <2 x i8> poison, i8 %i.tq, i64 0
  %i.tt = insertelement <2 x i8> %i.ts, i8 %i.tr, i64 1 ; 3 uses
  %i.tu = icmp ne <2 x i8> %i.tt, zeroinitializer
  %i.tv = zext <2 x i1> %i.tu to <2 x i64>
  %i.tw = add nuw nsw <2 x i64> %i.tn, %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %i.os, i64 15
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ot, i64 31
  %i.tz = load i8, ptr %i.tx, align 1, !tbaa !9
  %i.ua = load i8, ptr %i.ty, align 1, !tbaa !9
  %i.ub = insertelement <2 x i8> poison, i8 %i.tz, i64 0
  %i.uc = insertelement <2 x i8> %i.ub, i8 %i.ua, i64 1 ; 3 uses
  %i.ud = icmp ne <2 x i8> %i.uc, zeroinitializer
  %i.ue = zext <2 x i1> %i.ud to <2 x i64>
  %i.uf = add nuw nsw <2 x i64> %i.tw, %i.ue
  %i.ug = icmp ugt <2 x i8> %i.oy, splat (i8 2)
  %i.uh = select <2 x i1> %i.ug, <2 x i64> splat (i64 5), <2 x i64> splat (i64 4)
  %i.ui = icmp ugt <2 x i8> %i.pg, splat (i8 2)
  %i.uj = zext <2 x i1> %i.ui to <2 x i64>
  %i.uk = add nuw nsw <2 x i64> %i.uh, %i.uj
  %i.ul = icmp ugt <2 x i8> %i.pp, splat (i8 2)
  %i.um = zext <2 x i1> %i.ul to <2 x i64>
  %i.un = add nuw nsw <2 x i64> %i.uk, %i.um
  %i.uo = icmp ugt <2 x i8> %i.py, splat (i8 2)
  %i.up = zext <2 x i1> %i.uo to <2 x i64>
  %i.uq = add nuw nsw <2 x i64> %i.un, %i.up
  %i.ur = icmp ugt <2 x i8> %i.qh, splat (i8 2)
  %i.us = zext <2 x i1> %i.ur to <2 x i64>
  %i.ut = add nuw nsw <2 x i64> %i.uq, %i.us
  %i.uu = icmp ugt <2 x i8> %i.qq, splat (i8 2)
  %i.uv = zext <2 x i1> %i.uu to <2 x i64>
  %i.uw = add nuw nsw <2 x i64> %i.ut, %i.uv
  %i.ux = icmp ugt <2 x i8> %i.qz, splat (i8 2)
  %i.uy = zext <2 x i1> %i.ux to <2 x i64>
  %i.uz = add nuw nsw <2 x i64> %i.uw, %i.uy
  %i.va = icmp ugt <2 x i8> %i.ri, splat (i8 2)
  %i.vb = zext <2 x i1> %i.va to <2 x i64>
  %i.vc = add nuw nsw <2 x i64> %i.uz, %i.vb
  %i.vd = icmp ugt <2 x i8> %i.rr, splat (i8 2)
  %i.ve = zext <2 x i1> %i.vd to <2 x i64>
  %i.vf = add nuw nsw <2 x i64> %i.vc, %i.ve
  %i.vg = icmp ugt <2 x i8> %i.sa, splat (i8 2)
  %i.vh = zext <2 x i1> %i.vg to <2 x i64>
  %i.vi = add nuw nsw <2 x i64> %i.vf, %i.vh
  %i.vj = icmp ugt <2 x i8> %i.sj, splat (i8 2)
  %i.vk = zext <2 x i1> %i.vj to <2 x i64>
  %i.vl = add nuw nsw <2 x i64> %i.vi, %i.vk
  %i.vm = icmp ugt <2 x i8> %i.ss, splat (i8 2)
  %i.vn = zext <2 x i1> %i.vm to <2 x i64>
  %i.vo = add nuw nsw <2 x i64> %i.vl, %i.vn
  %i.vp = icmp ugt <2 x i8> %i.tb, splat (i8 2)
  %i.vq = zext <2 x i1> %i.vp to <2 x i64>
  %i.vr = add nuw nsw <2 x i64> %i.vo, %i.vq
  %i.vs = icmp ugt <2 x i8> %i.tk, splat (i8 2)
  %i.vt = zext <2 x i1> %i.vs to <2 x i64>
  %i.vu = add nuw nsw <2 x i64> %i.vr, %i.vt
  %i.vv = icmp ugt <2 x i8> %i.tt, splat (i8 2)
  %i.vw = zext <2 x i1> %i.vv to <2 x i64>
  %i.vx = add nuw nsw <2 x i64> %i.vu, %i.vw
  %i.vy = icmp ugt <2 x i8> %i.uc, splat (i8 2)
  %i.vz = zext <2 x i1> %i.vy to <2 x i64>
  %i.wa = add nuw nsw <2 x i64> %i.vx, %i.vz
  %i.wb = icmp ugt <2 x i8> %i.oy, splat (i8 14)
  %i.wc = select <2 x i1> %i.wb, <2 x i64> splat (i64 9), <2 x i64> splat (i64 8)
  %i.wd = icmp ugt <2 x i8> %i.pg, splat (i8 14)
  %i.we = zext <2 x i1> %i.wd to <2 x i64>
  %i.wf = add nuw nsw <2 x i64> %i.wc, %i.we
  %i.wg = icmp ugt <2 x i8> %i.pp, splat (i8 14)
  %i.wh = zext <2 x i1> %i.wg to <2 x i64>
  %i.wi = add nuw nsw <2 x i64> %i.wf, %i.wh
  %i.wj = icmp ugt <2 x i8> %i.py, splat (i8 14)
  %i.wk = zext <2 x i1> %i.wj to <2 x i64>
  %i.wl = add nuw nsw <2 x i64> %i.wi, %i.wk
  %i.wm = icmp ugt <2 x i8> %i.qh, splat (i8 14)
  %i.wn = zext <2 x i1> %i.wm to <2 x i64>
  %i.wo = add nuw nsw <2 x i64> %i.wl, %i.wn
  %i.wp = icmp ugt <2 x i8> %i.qq, splat (i8 14)
  %i.wq = zext <2 x i1> %i.wp to <2 x i64>
  %i.wr = add nuw nsw <2 x i64> %i.wo, %i.wq
  %i.ws = icmp ugt <2 x i8> %i.qz, splat (i8 14)
  %i.wt = zext <2 x i1> %i.ws to <2 x i64>
  %i.wu = add nuw nsw <2 x i64> %i.wr, %i.wt
  %i.wv = icmp ugt <2 x i8> %i.ri, splat (i8 14)
  %i.ww = zext <2 x i1> %i.wv to <2 x i64>
  %i.wx = add nuw nsw <2 x i64> %i.wu, %i.ww
  %i.wy = icmp ugt <2 x i8> %i.rr, splat (i8 14)
  %i.wz = zext <2 x i1> %i.wy to <2 x i64>
  %i.xa = add nuw nsw <2 x i64> %i.wx, %i.wz
  %i.xb = icmp ugt <2 x i8> %i.sa, splat (i8 14)
  %i.xc = zext <2 x i1> %i.xb to <2 x i64>
  %i.xd = add nuw nsw <2 x i64> %i.xa, %i.xc
  %i.xe = icmp ugt <2 x i8> %i.sj, splat (i8 14)
  %i.xf = zext <2 x i1> %i.xe to <2 x i64>
  %i.xg = add nuw nsw <2 x i64> %i.xd, %i.xf
  %i.xh = icmp ugt <2 x i8> %i.ss, splat (i8 14)
  %i.xi = zext <2 x i1> %i.xh to <2 x i64>
  %i.xj = add nuw nsw <2 x i64> %i.xg, %i.xi
  %i.xk = icmp ugt <2 x i8> %i.tb, splat (i8 14)
  %i.xl = zext <2 x i1> %i.xk to <2 x i64>
  %i.xm = add nuw nsw <2 x i64> %i.xj, %i.xl
  %i.xn = icmp ugt <2 x i8> %i.tk, splat (i8 14)
  %i.xo = zext <2 x i1> %i.xn to <2 x i64>
  %i.xp = add nuw nsw <2 x i64> %i.xm, %i.xo
  %i.xq = icmp ugt <2 x i8> %i.tt, splat (i8 14)
  %i.xr = zext <2 x i1> %i.xq to <2 x i64>
  %i.xs = add nuw nsw <2 x i64> %i.xp, %i.xr
  %i.xt = icmp ugt <2 x i8> %i.uc, splat (i8 14)
  %i.xu = zext <2 x i1> %i.xt to <2 x i64>
  %i.xv = add nuw nsw <2 x i64> %i.xs, %i.xu
  %i.xw = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.uf, <2 x i64> %i.wa)
  %i.xx = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.xw, <2 x i64> %i.xv)
  %i.xy = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.xx, <2 x i64> splat (i64 16))
  %i.xz = add <2 x i64> %i.xy, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ya = icmp eq i64 %index.next, %n.vec
  br i1 %i.ya, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %i.yb = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.xz) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.ph = phi i64 [ %.promoted.i104, %.lr.ph.i ], [ %i.yb, %middle.block ]
  %.07078.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.ky, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa294 = phi i64 [ %i.yb, %middle.block ], [ %i.yr, %scalar.ph ]
  store i64 %.lcssa294, ptr %i.lc, align 8, !tbaa !36
  br label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i: ; preds = %._crit_edge.i, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i, %bb.r, %bb.q, %bb.p
  %i.yc = add nuw nsw i64 %.07179.i, 1            ; 2 uses
  %exitcond.not.i105 = icmp eq i64 %i.yc, 4
  br i1 %exitcond.not.i105, label %bb.n, label %bb.o, !llvm.loop !23

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.yd = phi i64 [ %i.yr, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %.07078.i = phi i64 [ %i.ys, %scalar.ph ], [ %.07078.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.b, i64 %.07078.i
  %i.yf = load <16 x i8>, ptr %i.ye, align 16, !tbaa !9 ; 3 uses
  %.not319 = icmp eq <16 x i8> %i.yf, zeroinitializer
  %i.yg = select <16 x i1> %.not319, <16 x i64> <i64 2, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <16 x i64> <i64 3, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1>
  %i.yh = tail call i64 @llvm.vector.reduce.add.v16i64(<16 x i64> %i.yg)
  %i.yi = icmp ugt <16 x i8> %i.yf, splat (i8 2)
  %i.yj = select <16 x i1> %i.yi, <16 x i64> <i64 5, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1>, <16 x i64> <i64 4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
  %i.yk = tail call i64 @llvm.vector.reduce.add.v16i64(<16 x i64> %i.yj)
  %i.yl = icmp ugt <16 x i8> %i.yf, splat (i8 14)
  %i.ym = select <16 x i1> %i.yl, <16 x i64> <i64 9, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1>, <16 x i64> <i64 8, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
  %i.yn = tail call i64 @llvm.vector.reduce.add.v16i64(<16 x i64> %i.ym)
  %i.yo = tail call i64 @llvm.umin.i64(i64 %i.yh, i64 %i.yk)
  %i.yp = tail call i64 @llvm.umin.i64(i64 %i.yo, i64 %i.yn)
  %i.yq = tail call i64 @llvm.umin.i64(i64 %i.yp, i64 16)
  %i.yr = add i64 %i.yq, %i.yd                    ; 2 uses
  %i.ys = add nuw i64 %.07078.i, 16               ; 2 uses
  %i.yt = icmp ult i64 %i.ys, %i.kg
  br i1 %i.yt, label %scalar.ph, label %._crit_edge.i, !llvm.loop !24

.preheader.i:                                     ; preds = %bb.m
  %.pre.i = load i64, ptr %i.d, align 16, !tbaa !36 ; 2 uses
  %i.yu = load i64, ptr %i.am, align 8, !tbaa !36 ; 2 uses
  %i.yv = icmp ult i64 %i.yu, %.pre.i
  %i.yw = zext i1 %i.yv to i32                    ; 2 uses
  br i1 %i.ae, label %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.yx = tail call i64 @llvm.umin.i64(i64 %i.yu, i64 %.pre.i)
  %i.yy = load i64, ptr %i.an, align 16, !tbaa !36
  %i.yz = icmp ult i64 %i.yy, %i.yx
  %i.za = select i1 %i.yz, i32 2, i32 %i.yw
  br label %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit

_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit:    ; preds = %.preheader.i.1, %.preheader.i
  %.lcssa350 = phi i32 [ %i.yw, %.preheader.i ], [ %i.za, %.preheader.i.1 ] ; 2 uses
  %i.zb = icmp eq i32 %.lcssa350, 2
  %i.zc = or disjoint i32 %i.jy, 2
  %i.zd = select i1 %i.zb, i32 %i.zc, i32 %.lcssa350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.ze = trunc i32 %i.zd to i8
  %i.zf = lshr exact i64 %.091171, 2
  %i.zg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.zf
  store i8 %i.ze, ptr %i.zg, align 1, !tbaa !9
  %i.zh = add i64 %.091171, 4                     ; 2 uses
  %i.zi = icmp ult i64 %i.zh, %4
  br i1 %i.zi, label %bb.e, label %.loopexit145, !llvm.loop !25

.loopexit145:                                     ; preds = %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit, %bb.d
  %i.zj = icmp eq i32 %i.k, 0                     ; 5 uses
  %i.zk = lshr i64 %4, 2                          ; 3 uses
  %i.zl = select i1 %i.zj, i64 0, i64 %i.zk       ; 4 uses
  %i.zm = icmp eq i32 %5, 0
  br label %bb.s

bb.s:                                             ; preds = %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit, %.loopexit145
  %.093 = phi ptr [ %i.r, %.loopexit145 ], [ %.26095.i, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit ] ; 11 uses
  %.0 = phi i64 [ 0, %.loopexit145 ], [ %i.bfd, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit ] ; 5 uses
  %i.zn = icmp ult i64 %.0, %3
  br i1 %i.zn, label %bb.t, label %bb.au

bb.t:                                             ; preds = %bb.s
  %i.zo = add i64 %.0, %i.z
  %i.zp = icmp ult i64 %i.zo, %3
  %i.zq = sub nuw i64 %3, %.0
  %i.zr = select i1 %i.zp, i64 %i.z, i64 %i.zq    ; 20 uses
  %i.zs = mul i64 %.0, %4
  %i.zt = getelementptr inbounds nuw i8, ptr %2, i64 %i.zs ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.zu = add i64 %i.zr, 15                       ; 2 uses
  %i.zv = and i64 %i.zu, -16                      ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.zw = ptrtoint ptr %.093 to i64
  %i.zx = sub i64 %i.m, %i.zw
  %i.zy = icmp ult i64 %i.zx, %i.zl
  br i1 %i.zy, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %bb.t
  %i.zz = getelementptr inbounds nuw i8, ptr %.093, i64 %i.zl
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.093, i8 0, i64 %i.zl, i1 false)
  %.not.i25.i.i108 = icmp eq i64 %i.zr, 0         ; 3 uses
  %i.aaa = icmp eq i64 %i.zv, 0                   ; 3 uses
  %i.aab = lshr i64 %i.zu, 4
  %i.aac = add nuw nsw i64 %i.aab, 3
  %i.aad = lshr i64 %i.aac, 2                     ; 6 uses
  %i.aae = add i64 %i.zr, -1                      ; 3 uses
  %xtraiter374 = and i64 %i.zr, 1
  %i.aaf = icmp eq i64 %i.aae, 0
  %unroll_iter378 = and i64 %i.zr, -2
  %lcmp.mod376.not = icmp eq i64 %xtraiter374, 0
  %lcmp.mod377 = trunc i64 %i.zr to i1
  %xtraiter380 = and i64 %i.zr, 1
  %i.aag = icmp eq i64 %i.aae, 0
  %unroll_iter384 = and i64 %i.zr, -2
  %lcmp.mod382.not = icmp eq i64 %xtraiter380, 0
  %lcmp.mod383 = trunc i64 %i.zr to i1
  %xtraiter386 = and i64 %i.zr, 1
  %i.aah = icmp eq i64 %i.aae, 0
  %unroll_iter390 = and i64 %i.zr, -2
  %lcmp.mod388.not = icmp eq i64 %xtraiter386, 0
  %lcmp.mod389 = trunc i64 %i.zr to i1
  %i.aai = add i64 %i.zr, -1
  %i.aaj = lshr i64 %i.aai, 4                     ; 2 uses
  %i.aak = add nuw nsw i64 %i.aaj, 1              ; 2 uses
  %min.iters.check297 = icmp eq i64 %i.aaj, 0
  %n.vec299 = and i64 %i.aak, 2305843009213693950 ; 3 uses
  %i.aal = shl i64 %n.vec299, 4
  %i.aam = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.aad, i64 0 ; 2 uses
  %cmp.n307 = icmp eq i64 %i.aak, %n.vec299
  br label %bb.u

bb.u:                                             ; preds = %.thread92.i, %.lr.ph.i107
  %.054120.i = phi i64 [ 0, %.lr.ph.i107 ], [ %i.bez, %.thread92.i ] ; 17 uses
  %.058119.i = phi ptr [ %i.zz, %.lr.ph.i107 ], [ %.26095.i, %.thread92.i ] ; 8 uses
  br i1 %i.zj, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aan = lshr i64 %.054120.i, 2
  %i.aao = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aan
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !9
  %i.aaq = zext i8 %i.aap to i32                  ; 2 uses
  %i.aar = and i32 %i.aaq, 3
  switch i32 %i.aar, label %default.unreachable [
    i32 0, label %.thread.i
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109
  ]

.thread.i:                                        ; preds = %bb.v, %bb.u
  br i1 %.not.i25.i.i108, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134, label %.lr.ph.preheader.i.i.i127

.lr.ph.preheader.i.i.i127:                        ; preds = %.thread.i
  %i.aas = getelementptr inbounds nuw i8, ptr %i.zt, i64 %.054120.i ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.g, i64 %.054120.i
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !9 ; 2 uses
  br i1 %i.aah, label %.lr.ph.i.i.i128.epil.preheader, label %.lr.ph.i.i.i128

.lr.ph.i.i.i128:                                  ; preds = %.lr.ph.preheader.i.i.i127, %.lr.ph.i.i.i128
  %.03238.i.i.i129 = phi i64 [ %i.abi, %.lr.ph.i.i.i128 ], [ 0, %.lr.ph.preheader.i.i.i127 ] ; 3 uses
  %.03337.i.i.i130 = phi ptr [ %i.abh, %.lr.ph.i.i.i128 ], [ %i.aas, %.lr.ph.preheader.i.i.i127 ] ; 2 uses
  %.136.i.i.i131 = phi i8 [ %i.abb, %.lr.ph.i.i.i128 ], [ %i.aau, %.lr.ph.preheader.i.i.i127 ]
  %niter391 = phi i64 [ %niter391.next.1, %.lr.ph.i.i.i128 ], [ 0, %.lr.ph.preheader.i.i.i127 ]
  %i.aav = load i8, ptr %.03337.i.i.i130, align 1, !tbaa !9 ; 2 uses
  %i.aaw = sub i8 %i.aav, %.136.i.i.i131          ; 2 uses
  %.neg.i.i.i.i132 = ashr i8 %i.aaw, 7
  %i.aax = shl i8 %i.aaw, 1
  %i.aay = xor i8 %i.aax, %.neg.i.i.i.i132
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03238.i.i.i129
  store i8 %i.aay, ptr %i.aaz, align 2, !tbaa !9
  %i.aba = getelementptr inbounds nuw i8, ptr %.03337.i.i.i130, i64 %4 ; 2 uses
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !9 ; 3 uses
  %i.abc = sub i8 %i.abb, %i.aav                  ; 2 uses
  %.neg.i.i.i.i132.1 = ashr i8 %i.abc, 7
  %i.abd = shl i8 %i.abc, 1
  %i.abe = xor i8 %i.abd, %.neg.i.i.i.i132.1
  %i.abf = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03238.i.i.i129
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 1
  store i8 %i.abe, ptr %i.abg, align 1, !tbaa !9
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aba, i64 %4 ; 2 uses
  %i.abi = add nuw i64 %.03238.i.i.i129, 2        ; 2 uses
  %niter391.next.1 = add i64 %niter391, 2         ; 2 uses
  %niter391.ncmp.1 = icmp eq i64 %niter391.next.1, %unroll_iter390
  br i1 %niter391.ncmp.1, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa, label %.lr.ph.i.i.i128, !llvm.loop !19

bb.w:                                             ; preds = %bb.v
  %.tr.i.i.i119 = trunc i64 %.054120.i to i16
  %i.abj = shl i16 %.tr.i.i.i119, 3
  %i.abk = and i16 %i.abj, 8                      ; 3 uses
  br i1 %.not.i25.i.i108, label %.thread82.i, label %.lr.ph.preheader.i20.i.i120

.lr.ph.preheader.i20.i.i120:                      ; preds = %bb.w
  %i.abl = and i64 %.054120.i, -2                 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.abl ; 2 uses
  %i.abn = or i64 %.054120.i, 1
  %i.abo = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.abn
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !9
  %i.abq = zext i8 %i.abp to i16
  %i.abr = shl nuw i16 %i.abq, 8
  %i.abs = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.abl
  %i.abt = load i8, ptr %i.abs, align 2, !tbaa !9
  %i.abu = zext i8 %i.abt to i16
  %i.abv = or disjoint i16 %i.abr, %i.abu         ; 2 uses
  br i1 %i.aag, label %.lr.ph.i21.i.i121.epil.preheader, label %.lr.ph.i21.i.i121

.lr.ph.i21.i.i121:                                ; preds = %.lr.ph.preheader.i20.i.i120, %.lr.ph.i21.i.i121
  %.03240.i.i.i122 = phi i64 [ %i.acn, %.lr.ph.i21.i.i121 ], [ 0, %.lr.ph.preheader.i20.i.i120 ] ; 3 uses
  %.03339.i.i.i123 = phi ptr [ %i.acm, %.lr.ph.i21.i.i121 ], [ %i.abm, %.lr.ph.preheader.i20.i.i120 ] ; 2 uses
  %.138.i.i.i124 = phi i16 [ %i.ace, %.lr.ph.i21.i.i121 ], [ %i.abv, %.lr.ph.preheader.i20.i.i120 ]
  %niter385 = phi i64 [ %niter385.next.1, %.lr.ph.i21.i.i121 ], [ 0, %.lr.ph.preheader.i20.i.i120 ]
  %i.abw = load i16, ptr %.03339.i.i.i123, align 1 ; 2 uses
  %i.abx = sub i16 %i.abw, %.138.i.i.i124         ; 2 uses
  %.neg.i.i22.i.i125 = ashr i16 %i.abx, 15
  %i.aby = shl i16 %i.abx, 1
  %i.abz = xor i16 %i.aby, %.neg.i.i22.i.i125
  %i.aca = lshr i16 %i.abz, %i.abk
  %i.acb = trunc i16 %i.aca to i8
  %i.acc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03240.i.i.i122
  store i8 %i.acb, ptr %i.acc, align 2, !tbaa !9
  %i.acd = getelementptr inbounds nuw i8, ptr %.03339.i.i.i123, i64 %4 ; 2 uses
  %i.ace = load i16, ptr %i.acd, align 1          ; 3 uses
  %i.acf = sub i16 %i.ace, %i.abw                 ; 2 uses
  %.neg.i.i22.i.i125.1 = ashr i16 %i.acf, 15
  %i.acg = shl i16 %i.acf, 1
  %i.ach = xor i16 %i.acg, %.neg.i.i22.i.i125.1
  %i.aci = lshr i16 %i.ach, %i.abk
  %i.acj = trunc i16 %i.aci to i8
  %i.ack = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03240.i.i.i122
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 1
  store i8 %i.acj, ptr %i.acl, align 1, !tbaa !9
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acd, i64 %4 ; 2 uses
  %i.acn = add nuw i64 %.03240.i.i.i122, 2        ; 2 uses
  %niter385.next.1 = add i64 %niter385, 2         ; 2 uses
  %niter385.ncmp.1 = icmp eq i64 %niter385.next.1, %unroll_iter384
  br i1 %niter385.ncmp.1, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa, label %.lr.ph.i21.i.i121, !llvm.loop !20

bb.x:                                             ; preds = %bb.v
  %i.aco = lshr i32 %i.aaq, 4                     ; 3 uses
  %.tr.i24.i.i112 = trunc i64 %.054120.i to i32
  %i.acp = shl i32 %.tr.i24.i.i112, 3
  %i.acq = and i32 %i.acp, 24                     ; 3 uses
  br i1 %.not.i25.i.i108, label %.thread82.i, label %.lr.ph.preheader.i26.i.i113

.lr.ph.preheader.i26.i.i113:                      ; preds = %bb.x
  %i.acr = and i64 %.054120.i, -4                 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.acr ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.acr
  %i.acu = load i32, ptr %i.act, align 4          ; 2 uses
  br i1 %i.aaf, label %.lr.ph.i27.i.i114.epil.preheader, label %.lr.ph.i27.i.i114

.lr.ph.i27.i.i114:                                ; preds = %.lr.ph.preheader.i26.i.i113, %.lr.ph.i27.i.i114
  %.03343.i.i.i115 = phi i64 [ %i.adk, %.lr.ph.i27.i.i114 ], [ 0, %.lr.ph.preheader.i26.i.i113 ] ; 3 uses
  %.03442.i.i.i116 = phi ptr [ %i.adj, %.lr.ph.i27.i.i114 ], [ %i.acs, %.lr.ph.preheader.i26.i.i113 ] ; 2 uses
  %.141.i.i.i117 = phi i32 [ %i.adc, %.lr.ph.i27.i.i114 ], [ %i.acu, %.lr.ph.preheader.i26.i.i113 ]
  %niter379 = phi i64 [ %niter379.next.1, %.lr.ph.i27.i.i114 ], [ 0, %.lr.ph.preheader.i26.i.i113 ]
  %i.acv = load i32, ptr %.03442.i.i.i116, align 1 ; 2 uses
  %i.acw = xor i32 %i.acv, %.141.i.i.i117         ; 2 uses
  %i.acx = tail call noundef i32 @llvm.fshl.i32(i32 %i.acw, i32 %i.acw, i32 range(i32 -134217728, 134217728) %i.aco)
  %i.acy = lshr i32 %i.acx, %i.acq
  %i.acz = trunc i32 %i.acy to i8
  %i.ada = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03343.i.i.i115
  store i8 %i.acz, ptr %i.ada, align 2, !tbaa !9
  %i.adb = getelementptr inbounds nuw i8, ptr %.03442.i.i.i116, i64 %4 ; 2 uses
  %i.adc = load i32, ptr %i.adb, align 1          ; 3 uses
  %i.add = xor i32 %i.adc, %i.acv                 ; 2 uses
  %i.ade = tail call noundef i32 @llvm.fshl.i32(i32 %i.add, i32 %i.add, i32 range(i32 -134217728, 134217728) %i.aco)
  %i.adf = lshr i32 %i.ade, %i.acq
  %i.adg = trunc i32 %i.adf to i8
  %i.adh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03343.i.i.i115
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 1
  store i8 %i.adg, ptr %i.adi, align 1, !tbaa !9
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adb, i64 %4 ; 2 uses
  %i.adk = add nuw i64 %.03343.i.i.i115, 2        ; 2 uses
  %niter379.next.1 = add i64 %niter379, 2         ; 2 uses
  %niter379.ncmp.1 = icmp eq i64 %niter379.next.1, %unroll_iter378
  br i1 %niter379.ncmp.1, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit322.unr-lcssa, label %.lr.ph.i27.i.i114, !llvm.loop !21

default.unreachable:                              ; preds = %bb.v
  unreachable

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i128
  br i1 %lcmp.mod388.not, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134, label %.lr.ph.i.i.i128.epil.preheader

.lr.ph.i.i.i128.epil.preheader:                   ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i127
  %.03238.i.i.i129.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i127 ], [ %i.abi, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa ]
  %.03337.i.i.i130.epil.init = phi ptr [ %i.aas, %.lr.ph.preheader.i.i.i127 ], [ %i.abh, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa ]
  %.136.i.i.i131.epil.init = phi i8 [ %i.aau, %.lr.ph.preheader.i.i.i127 ], [ %i.abb, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod389)
  %i.adl = load i8, ptr %.03337.i.i.i130.epil.init, align 1, !tbaa !9
  %i.adm = sub i8 %i.adl, %.136.i.i.i131.epil.init ; 2 uses
  %.neg.i.i.i.i132.epil = ashr i8 %i.adm, 7
  %i.adn = shl i8 %i.adm, 1
  %i.ado = xor i8 %i.adn, %.neg.i.i.i.i132.epil
  %i.adp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03238.i.i.i129.epil.init
  store i8 %i.ado, ptr %i.adp, align 1, !tbaa !9
  br label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134: ; preds = %.lr.ph.i.i.i128.epil.preheader, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa, %.thread.i
  br i1 %i.zj, label %.thread79.i, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa: ; preds = %.lr.ph.i21.i.i121
  br i1 %lcmp.mod382.not, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109, label %.lr.ph.i21.i.i121.epil.preheader

.lr.ph.i21.i.i121.epil.preheader:                 ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa, %.lr.ph.preheader.i20.i.i120
  %.03240.i.i.i122.epil.init = phi i64 [ 0, %.lr.ph.preheader.i20.i.i120 ], [ %i.acn, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa ]
  %.03339.i.i.i123.epil.init = phi ptr [ %i.abm, %.lr.ph.preheader.i20.i.i120 ], [ %i.acm, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa ]
end_hunk_0
