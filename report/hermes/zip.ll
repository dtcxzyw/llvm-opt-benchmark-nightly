Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/zip?download=true
inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 47
begin_hunk_0_@tdefl_compress_block:bb.a
  br i1 %.not297.3.i, label %bb.ax, label %.lr.ph.i

bb.ax:                                            ; preds = %bb.aw
  %i.sx = getelementptr i8, ptr %0, i64 36995
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !19
  %.not297.4.i = icmp eq i8 %i.sy, 0
  br i1 %.not297.4.i, label %bb.ay, label %.lr.ph.i

bb.ay:                                            ; preds = %bb.ax
  %i.sz = getelementptr i8, ptr %0, i64 36994
  %i.ta = load i8, ptr %i.sz, align 2, !tbaa !19
  %.not297.5.i = icmp eq i8 %i.ta, 0
  br i1 %.not297.5.i, label %bb.az, label %.lr.ph.i

bb.az:                                            ; preds = %bb.ay
  %i.tb = getelementptr i8, ptr %0, i64 36993
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !19
  %.not297.6.i = icmp eq i8 %i.tc, 0
  br i1 %.not297.6.i, label %bb.ba, label %.lr.ph.i

bb.ba:                                            ; preds = %bb.az
  %i.td = getelementptr i8, ptr %0, i64 36992
  %i.te = load i8, ptr %i.td, align 2, !tbaa !19
  %.not297.7.i = icmp eq i8 %i.te, 0
  br i1 %.not297.7.i, label %bb.bb, label %.lr.ph.i

bb.bb:                                            ; preds = %bb.ba
  %i.tf = getelementptr i8, ptr %0, i64 36991
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !19
  %.not297.8.i = icmp eq i8 %i.tg, 0
  br i1 %.not297.8.i, label %bb.bc, label %.lr.ph.i

bb.bc:                                            ; preds = %bb.bb
  %i.th = getelementptr i8, ptr %0, i64 36990
  %i.ti = load i8, ptr %i.th, align 2, !tbaa !19
  %.not297.9.i = icmp eq i8 %i.ti, 0
  br i1 %.not297.9.i, label %bb.bd, label %.lr.ph.i

bb.bd:                                            ; preds = %bb.bc
  %i.tj = getelementptr i8, ptr %0, i64 36989
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !19
  %.not297.10.i = icmp eq i8 %i.tk, 0
  br i1 %.not297.10.i, label %bb.be, label %.lr.ph.i

bb.be:                                            ; preds = %bb.bd
  %i.tl = getelementptr i8, ptr %0, i64 36988
  %i.tm = load i8, ptr %i.tl, align 2, !tbaa !19
  %.not297.11.i = icmp eq i8 %i.tm, 0
  br i1 %.not297.11.i, label %bb.bf, label %.lr.ph.i

bb.bf:                                            ; preds = %bb.be
  %i.tn = getelementptr i8, ptr %0, i64 36987
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !19
  %.not297.12.i = icmp eq i8 %i.to, 0
  br i1 %.not297.12.i, label %bb.bg, label %.lr.ph.i

bb.bg:                                            ; preds = %bb.bf
  %i.tp = getelementptr i8, ptr %0, i64 36986
  %i.tq = load i8, ptr %i.tp, align 2, !tbaa !19
  %.not297.13.i = icmp eq i8 %i.tq, 0
  br i1 %.not297.13.i, label %bb.bh, label %.lr.ph.i

bb.bh:                                            ; preds = %bb.bg
  %i.tr = getelementptr i8, ptr %0, i64 36985
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !19
  %.not297.14.i = icmp eq i8 %i.ts, 0
  br i1 %.not297.14.i, label %bb.bi, label %.lr.ph.i

bb.bi:                                            ; preds = %bb.bh
  %i.tt = getelementptr i8, ptr %0, i64 36984
  %i.tu = load i8, ptr %i.tt, align 2, !tbaa !19
  %.not297.15.i = icmp eq i8 %i.tu, 0
  br i1 %.not297.15.i, label %bb.bj, label %.lr.ph.i

bb.bj:                                            ; preds = %bb.bi
  %i.tv = getelementptr i8, ptr %0, i64 36983
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !19
  %.not297.16.i = icmp eq i8 %i.tw, 0
  br i1 %.not297.16.i, label %bb.bk, label %.lr.ph.i

bb.bk:                                            ; preds = %bb.bj
  %i.tx = getelementptr i8, ptr %0, i64 36982
  %i.ty = load i8, ptr %i.tx, align 2, !tbaa !19
  %.not297.17.i = icmp eq i8 %i.ty, 0
  br i1 %.not297.17.i, label %bb.bl, label %.lr.ph.i

bb.bl:                                            ; preds = %bb.bk
  %i.tz = getelementptr i8, ptr %0, i64 36981
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !19
  %.not297.18.i = icmp eq i8 %i.ua, 0
  br i1 %.not297.18.i, label %bb.bm, label %.lr.ph.i

bb.bm:                                            ; preds = %bb.bl
  %i.ub = getelementptr i8, ptr %0, i64 36980
  %i.uc = load i8, ptr %i.ub, align 2, !tbaa !19
  %.not297.19.i = icmp eq i8 %i.uc, 0
  br i1 %.not297.19.i, label %bb.bn, label %.lr.ph.i

bb.bn:                                            ; preds = %bb.bm
  %i.ud = getelementptr i8, ptr %0, i64 36979
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !19
  %.not297.20.i = icmp eq i8 %i.ue, 0
  br i1 %.not297.20.i, label %bb.bo, label %.lr.ph.i

bb.bo:                                            ; preds = %bb.bn
  %i.uf = getelementptr i8, ptr %0, i64 36978
  %i.ug = load i8, ptr %i.uf, align 2, !tbaa !19
  %.not297.21.i = icmp eq i8 %i.ug, 0
  br i1 %.not297.21.i, label %bb.bp, label %.lr.ph.i

bb.bp:                                            ; preds = %bb.bo
  %i.uh = getelementptr i8, ptr %0, i64 36977
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !19
  %.not297.22.i = icmp eq i8 %i.ui, 0
  br i1 %.not297.22.i, label %bb.bq, label %.lr.ph.i

bb.bq:                                            ; preds = %bb.bp
  %i.uj = getelementptr i8, ptr %0, i64 36976
  %i.uk = load i8, ptr %i.uj, align 2, !tbaa !19
  %.not297.23.i = icmp eq i8 %i.uk, 0
  br i1 %.not297.23.i, label %bb.br, label %.lr.ph.i

bb.br:                                            ; preds = %bb.bq
  %i.ul = getelementptr i8, ptr %0, i64 36975
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !19
  %.not297.24.i = icmp eq i8 %i.um, 0
  br i1 %.not297.24.i, label %bb.bs, label %.lr.ph.i

bb.bs:                                            ; preds = %bb.br
  %i.un = getelementptr i8, ptr %0, i64 36974
  %i.uo = load i8, ptr %i.un, align 2, !tbaa !19
  %.not297.25.i = icmp eq i8 %i.uo, 0
  br i1 %.not297.25.i, label %bb.bt, label %.lr.ph.i

bb.bt:                                            ; preds = %bb.bs
  %i.up = getelementptr i8, ptr %0, i64 36973
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !19
  %.not297.26.i = icmp eq i8 %i.uq, 0
  br i1 %.not297.26.i, label %bb.bu, label %.lr.ph.i

bb.bu:                                            ; preds = %bb.bt
  %i.ur = getelementptr i8, ptr %0, i64 36972
  %i.us = load i8, ptr %i.ur, align 2, !tbaa !19
  %.not297.27.i = icmp eq i8 %i.us, 0
  br i1 %.not297.27.i, label %bb.bv, label %.lr.ph.i

bb.bv:                                            ; preds = %bb.bu
  %i.ut = getelementptr i8, ptr %0, i64 36971
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !19
  %.not297.28.i = icmp eq i8 %i.uu, 0
  %spec.select535.i = select i1 %.not297.28.i, i32 1, i32 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at
  %.0281.lcssa.i = phi i32 [ 30, %bb.at ], [ 12, %bb.bl ], [ 29, %bb.au ], [ %spec.select535.i, %bb.bv ], [ 28, %bb.av ], [ 15, %bb.bi ], [ 27, %bb.aw ], [ 3, %bb.bu ], [ 26, %bb.ax ], [ 9, %bb.bo ], [ 25, %bb.ay ], [ 4, %bb.bt ], [ 24, %bb.az ], [ 14, %bb.bj ], [ 23, %bb.ba ], [ 5, %bb.bs ], [ 22, %bb.bb ], [ 11, %bb.bm ], [ 21, %bb.bc ], [ 6, %bb.br ], [ 20, %bb.bd ], [ 13, %bb.bk ], [ 19, %bb.be ], [ 7, %bb.bq ], [ 18, %bb.bf ], [ 10, %bb.bn ], [ 17, %bb.bg ], [ 8, %bb.bp ], [ 16, %bb.bh ] ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.uw = zext nneg i32 %.0282.lcssa.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 2 dereferenceable(1) %i.uv, i64 %i.uw, i1 false)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uw
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 36970
  %i.uz = zext nneg i32 %.0281.lcssa.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ux, ptr noundef nonnull align 2 dereferenceable(1) %i.uy, i64 %i.uz, i1 false)
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 34378 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %i.va, i8 0, i64 38, i1 false)
  %i.vb = add nuw nsw i32 %.0281.lcssa.i, %.0282.lcssa.i
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 34414 ; 6 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 34412 ; 4 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 34410 ; 8 uses
  %wide.trip.count.i = zext nneg i32 %i.vb to i64
  br label %bb.bw

bb.bw:                                            ; preds = %bb.cl, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.cl ] ; 2 uses
  %.0337.i = phi i8 [ -1, %.lr.ph.i ], [ %i.vg, %bb.cl ] ; 5 uses
  %.0262336.i = phi i32 [ 0, %.lr.ph.i ], [ %.6.i, %bb.cl ] ; 13 uses
  %.0264335.i = phi i32 [ 0, %.lr.ph.i ], [ %.4268.i, %bb.cl ] ; 8 uses
  %.0270334.i = phi i32 [ 0, %.lr.ph.i ], [ %.14.i, %bb.cl ] ; 12 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !19  ; 7 uses
  %.not310.i = icmp eq i8 %i.vg, 0
  br i1 %.not310.i, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %.not311.i = icmp eq i32 %.0262336.i, 0
  br i1 %.not311.i, label %.loopexit322.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.vh = icmp ult i32 %.0262336.i, 3
  br i1 %i.vh, label %.loopexit322.loopexit.i, label %bb.bz

.loopexit322.loopexit.i:                          ; preds = %bb.by
  %i.vi = zext i8 %.0337.i to i64
  %i.vj = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %i.vi ; 2 uses
  %i.vk = load i16, ptr %i.vj, align 2, !tbaa !79
  %i.vl = trunc nuw nsw i32 %.0262336.i to i16
  %i.vm = add i16 %i.vk, %i.vl
  store i16 %i.vm, ptr %i.vj, align 2, !tbaa !79
  %i.vn = zext i32 %.0270334.i to i64
  %scevgep403.i = getelementptr i8, ptr %i.b, i64 %i.vn
  %i.vo = zext nneg i32 %.0262336.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep403.i, i8 %.0337.i, i64 range(i64 0, 3) %i.vo, i1 false), !tbaa !19
  %i.vp = add i32 %.0270334.i, %.0262336.i
  br label %.loopexit322.i

bb.bz:                                            ; preds = %bb.by
  %i.vq = load i16, ptr %i.ve, align 2, !tbaa !79
  %i.vr = add i16 %i.vq, 1
  store i16 %i.vr, ptr %i.ve, align 2, !tbaa !79
  %i.vs = add nuw i32 %.0270334.i, 1
  %i.vt = zext i32 %.0270334.i to i64
  %i.vu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vt
  store i8 16, ptr %i.vu, align 1, !tbaa !19
  %i.vv = trunc i32 %.0262336.i to i8
  %i.vw = add i8 %i.vv, -3
  %i.vx = add nuw i32 %.0270334.i, 2
  %i.vy = zext i32 %i.vs to i64
  %i.vz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vy
  store i8 %i.vw, ptr %i.vz, align 1, !tbaa !19
  br label %.loopexit322.i

.loopexit322.i:                                   ; preds = %bb.bz, %.loopexit322.loopexit.i, %bb.bx
  %.3273.i = phi i32 [ %.0270334.i, %bb.bx ], [ %i.vx, %bb.bz ], [ %i.vp, %.loopexit322.loopexit.i ] ; 4 uses
  %i.wa = add i32 %.0264335.i, 1                  ; 2 uses
  %i.wb = icmp eq i32 %i.wa, 138
  br i1 %i.wb, label %bb.ca, label %bb.cl

bb.ca:                                            ; preds = %.loopexit322.i
  %i.wc = load i16, ptr %i.vc, align 2, !tbaa !79
  %i.wd = add i16 %i.wc, 1
  store i16 %i.wd, ptr %i.vc, align 2, !tbaa !79
  %i.we = add nuw i32 %.3273.i, 1
  %i.wf = zext i32 %.3273.i to i64
  %i.wg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wf
  store i8 18, ptr %i.wg, align 1, !tbaa !19
  %i.wh = add nuw i32 %.3273.i, 2
  %i.wi = zext i32 %i.we to i64
  %i.wj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wi
  store i8 127, ptr %i.wj, align 1, !tbaa !19
  br label %bb.cl

bb.cb:                                            ; preds = %bb.bw
  %.not313.i = icmp eq i32 %.0264335.i, 0
  br i1 %.not313.i, label %.loopexit324.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.wk = icmp ult i32 %.0264335.i, 3
  br i1 %i.wk, label %.loopexit324.loopexit.i, label %bb.cd

.loopexit324.loopexit.i:                          ; preds = %bb.cc
  %i.wl = load i16, ptr %i.va, align 2, !tbaa !79
  %i.wm = trunc nuw nsw i32 %.0264335.i to i16
  %i.wn = add i16 %i.wl, %i.wm
  store i16 %i.wn, ptr %i.va, align 2, !tbaa !79
  %i.wo = zext i32 %.0270334.i to i64
  %scevgep.i4 = getelementptr i8, ptr %i.b, i64 %i.wo
  %i.wp = zext nneg i32 %.0264335.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i4, i8 0, i64 range(i64 0, 3) %i.wp, i1 false), !tbaa !19
  %i.wq = add i32 %.0270334.i, %.0264335.i
  br label %.loopexit324.i

bb.cd:                                            ; preds = %bb.cc
  %i.wr = icmp ult i32 %.0264335.i, 11
  %i.ws = add nuw i32 %.0270334.i, 1
  %i.wt = zext i32 %.0270334.i to i64
  %i.wu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wt ; 2 uses
  %i.wv = trunc i32 %.0264335.i to i8             ; 2 uses
  %i.ww = add nuw i32 %.0270334.i, 2              ; 2 uses
  %i.wx = zext i32 %i.ws to i64
  %i.wy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wx ; 2 uses
  br i1 %i.wr, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.wz = load i16, ptr %i.vd, align 2, !tbaa !79
  %i.xa = add i16 %i.wz, 1
  store i16 %i.xa, ptr %i.vd, align 2, !tbaa !79
  store i8 17, ptr %i.wu, align 1, !tbaa !19
  %i.xb = add nsw i8 %i.wv, -3
  store i8 %i.xb, ptr %i.wy, align 1, !tbaa !19
  br label %.loopexit324.i

bb.cf:                                            ; preds = %bb.cd
  %i.xc = load i16, ptr %i.vc, align 2, !tbaa !79
  %i.xd = add i16 %i.xc, 1
  store i16 %i.xd, ptr %i.vc, align 2, !tbaa !79
  store i8 18, ptr %i.wu, align 1, !tbaa !19
  %i.xe = add i8 %i.wv, -11
  store i8 %i.xe, ptr %i.wy, align 1, !tbaa !19
  br label %.loopexit324.i

.loopexit324.i:                                   ; preds = %bb.cf, %bb.ce, %.loopexit324.loopexit.i, %bb.cb
  %.8.i = phi i32 [ %.0270334.i, %bb.cb ], [ %i.ww, %bb.cf ], [ %i.ww, %bb.ce ], [ %i.wq, %.loopexit324.loopexit.i ] ; 10 uses
  %.not315.i = icmp eq i8 %i.vg, %.0337.i
  br i1 %.not315.i, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %.loopexit324.i
  %.not316.i = icmp eq i32 %.0262336.i, 0
  br i1 %.not316.i, label %.loopexit323.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xf = icmp ult i32 %.0262336.i, 3
  br i1 %i.xf, label %.loopexit323.loopexit.i, label %bb.ci

.loopexit323.loopexit.i:                          ; preds = %bb.ch
  %i.xg = zext i8 %.0337.i to i64
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %i.xg ; 2 uses
  %i.xi = load i16, ptr %i.xh, align 2, !tbaa !79
  %i.xj = trunc nuw nsw i32 %.0262336.i to i16
  %i.xk = add i16 %i.xi, %i.xj
  store i16 %i.xk, ptr %i.xh, align 2, !tbaa !79
  %i.xl = zext i32 %.8.i to i64
  %scevgep401.i = getelementptr i8, ptr %i.b, i64 %i.xl
  %i.xm = zext nneg i32 %.0262336.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep401.i, i8 %.0337.i, i64 range(i64 0, 3) %i.xm, i1 false), !tbaa !19
  %i.xn = add i32 %.8.i, %.0262336.i
  br label %.loopexit323.i

bb.ci:                                            ; preds = %bb.ch
  %i.xo = load i16, ptr %i.ve, align 2, !tbaa !79
  %i.xp = add i16 %i.xo, 1
  store i16 %i.xp, ptr %i.ve, align 2, !tbaa !79
  %i.xq = add nuw i32 %.8.i, 1
  %i.xr = zext i32 %.8.i to i64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xr
  store i8 16, ptr %i.xs, align 1, !tbaa !19
  %i.xt = trunc i32 %.0262336.i to i8
  %i.xu = add i8 %i.xt, -3
  %i.xv = add nuw i32 %.8.i, 2
  %i.xw = zext i32 %i.xq to i64
  %i.xx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xw
  store i8 %i.xu, ptr %i.xx, align 1, !tbaa !19
  br label %.loopexit323.i

.loopexit323.i:                                   ; preds = %bb.ci, %.loopexit323.loopexit.i, %bb.cg
  %.11.i = phi i32 [ %.8.i, %bb.cg ], [ %i.xv, %bb.ci ], [ %i.xn, %.loopexit323.loopexit.i ] ; 2 uses
  %i.xy = zext i8 %i.vg to i64
  %i.xz = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %i.xy ; 2 uses
  %i.ya = load i16, ptr %i.xz, align 2, !tbaa !79
  %i.yb = add i16 %i.ya, 1
  store i16 %i.yb, ptr %i.xz, align 2, !tbaa !79
  %i.yc = add nuw i32 %.11.i, 1
  %i.yd = zext i32 %.11.i to i64
  %i.ye = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yd
  store i8 %i.vg, ptr %i.ye, align 1, !tbaa !19
  br label %bb.cl

bb.cj:                                            ; preds = %.loopexit324.i
  %i.yf = add i32 %.0262336.i, 1                  ; 2 uses
  %i.yg = icmp eq i32 %i.yf, 6
  br i1 %i.yg, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.yh = load i16, ptr %i.ve, align 2, !tbaa !79
  %i.yi = add i16 %i.yh, 1
  store i16 %i.yi, ptr %i.ve, align 2, !tbaa !79
  %i.yj = add nuw i32 %.8.i, 1
  %i.yk = zext i32 %.8.i to i64
  %i.yl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yk
  store i8 16, ptr %i.yl, align 1, !tbaa !19
  %i.ym = zext i32 %i.yj to i64
  %i.yn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ym
  store i8 3, ptr %i.yn, align 1, !tbaa !19
  %i.yo = add nuw i32 %.8.i, 2
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %.loopexit323.i, %bb.ca, %.loopexit322.i
  %.14.i = phi i32 [ %i.yc, %.loopexit323.i ], [ %i.yo, %bb.ck ], [ %.8.i, %bb.cj ], [ %i.wh, %bb.ca ], [ %.3273.i, %.loopexit322.i ] ; 12 uses
  %.4268.i = phi i32 [ 0, %.loopexit323.i ], [ 0, %bb.ck ], [ 0, %bb.cj ], [ 0, %bb.ca ], [ %i.wa, %.loopexit322.i ] ; 8 uses
  %.6.i = phi i32 [ 0, %.loopexit323.i ], [ 0, %bb.ck ], [ %i.yf, %bb.cj ], [ 0, %bb.ca ], [ 0, %.loopexit322.i ] ; 7 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.bw, !llvm.loop !346

._crit_edge.i:                                    ; preds = %bb.cl
  %.not298.i = icmp eq i32 %.6.i, 0
  br i1 %.not298.i, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge.i
  %i.yp = icmp ult i32 %.6.i, 3
  br i1 %i.yp, label %.loopexit320.loopexit384.i, label %bb.cn

.loopexit320.loopexit384.i:                       ; preds = %bb.cm
  %i.yq = zext i8 %i.vg to i64
  %i.yr = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %i.yq ; 2 uses
  %i.ys = load i16, ptr %i.yr, align 2, !tbaa !79
  %i.yt = trunc nuw nsw i32 %.6.i to i16
  %i.yu = add i16 %i.ys, %i.yt
  store i16 %i.yu, ptr %i.yr, align 2, !tbaa !79
  %i.yv = zext i32 %.14.i to i64
  %scevgep405.i = getelementptr i8, ptr %i.b, i64 %i.yv
  %i.yw = zext nneg i32 %.6.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep405.i, i8 %i.vg, i64 range(i64 0, 3) %i.yw, i1 false), !tbaa !19
  %i.yx = add i32 %.6.i, %.14.i
  br label %.loopexit320.i

bb.cn:                                            ; preds = %bb.cm
  %i.yy = load i16, ptr %i.ve, align 2, !tbaa !79
  %i.yz = add i16 %i.yy, 1
  store i16 %i.yz, ptr %i.ve, align 2, !tbaa !79
  %i.za = add nuw i32 %.14.i, 1
  %i.zb = zext i32 %.14.i to i64
  %i.zc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zb
  store i8 16, ptr %i.zc, align 1, !tbaa !19
  %i.zd = trunc i32 %.6.i to i8
  %i.ze = add i8 %i.zd, -3
  %i.zf = add nuw i32 %.14.i, 2
  %i.zg = zext i32 %i.za to i64
  %i.zh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zg
  store i8 %i.ze, ptr %i.zh, align 1, !tbaa !19
  br label %.loopexit320.i

bb.co:                                            ; preds = %._crit_edge.i
  %.not299.i = icmp eq i32 %.4268.i, 0
  br i1 %.not299.i, label %.loopexit320.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.zi = icmp ult i32 %.4268.i, 3
  br i1 %i.zi, label %.loopexit320.loopexit.i, label %bb.cq

.loopexit320.loopexit.i:                          ; preds = %bb.cp
  %i.zj = load i16, ptr %i.va, align 2, !tbaa !79
  %i.zk = trunc nuw nsw i32 %.4268.i to i16
  %i.zl = add i16 %i.zj, %i.zk
  store i16 %i.zl, ptr %i.va, align 2, !tbaa !79
  %i.zm = zext i32 %.14.i to i64
  %scevgep409.i = getelementptr i8, ptr %i.b, i64 %i.zm
  %i.zn = zext nneg i32 %.4268.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep409.i, i8 0, i64 range(i64 0, 3) %i.zn, i1 false), !tbaa !19
  %i.zo = add i32 %.4268.i, %.14.i
  br label %.loopexit320.i

bb.cq:                                            ; preds = %bb.cp
  %i.zp = icmp ult i32 %.4268.i, 11
  %i.zq = add nuw i32 %.14.i, 1
  %i.zr = zext i32 %.14.i to i64
  %i.zs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zr ; 2 uses
  %i.zt = trunc i32 %.4268.i to i8                ; 2 uses
  %i.zu = add nuw i32 %.14.i, 2                   ; 2 uses
  %i.zv = zext i32 %i.zq to i64
  %i.zw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zv ; 2 uses
  br i1 %i.zp, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.zx = load i16, ptr %i.vd, align 2, !tbaa !79
  %i.zy = add i16 %i.zx, 1
  store i16 %i.zy, ptr %i.vd, align 2, !tbaa !79
  store i8 17, ptr %i.zs, align 1, !tbaa !19
  %i.zz = add nsw i8 %i.zt, -3
  store i8 %i.zz, ptr %i.zw, align 1, !tbaa !19
  br label %.loopexit320.i

bb.cs:                                            ; preds = %bb.cq
  %i.aaa = load i16, ptr %i.vc, align 2, !tbaa !79
  %i.aab = add i16 %i.aaa, 1
  store i16 %i.aab, ptr %i.vc, align 2, !tbaa !79
  store i8 18, ptr %i.zs, align 1, !tbaa !19
  %i.aac = add i8 %i.zt, -11
  store i8 %i.aac, ptr %i.zw, align 1, !tbaa !19
  br label %.loopexit320.i

.loopexit320.i:                                   ; preds = %bb.cs, %bb.cr, %.loopexit320.loopexit.i, %bb.co, %bb.cn, %.loopexit320.loopexit384.i
  %.19.i = phi i32 [ %i.zf, %bb.cn ], [ %.14.i, %bb.co ], [ %i.zo, %.loopexit320.loopexit.i ], [ %i.zu, %bb.cs ], [ %i.zu, %bb.cr ], [ %i.yx, %.loopexit320.loopexit384.i ] ; 2 uses
  tail call fastcc void @tdefl_optimize_huffman_table(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 19, i32 noundef 7, i32 noundef 0)
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 25 uses
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !84 ; 2 uses
  %i.aaf = shl i32 2, %i.aae
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 25 uses
  %i.aah = load i32, ptr %i.aag, align 8, !tbaa !85
  %i.aai = or i32 %i.aah, %i.aaf                  ; 3 uses
  store i32 %i.aai, ptr %i.aag, align 8, !tbaa !85
  %i.aaj = add i32 %i.aae, 2                      ; 4 uses
  store i32 %i.aaj, ptr %i.aad, align 4, !tbaa !84
  %i.aak = icmp ugt i32 %i.aaj, 7
  br i1 %i.aak, label %.lr.ph346.i, label %._crit_edge347.i

.lr.ph346.i:                                      ; preds = %.loopexit320.i
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre418.i = load ptr, ptr %i.aal, align 8, !tbaa !42
  %.pre420.i = load ptr, ptr %i.aam, align 8, !tbaa !43
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cv, %.lr.ph346.i
  %i.aan = phi i32 [ %i.aaj, %.lr.ph346.i ], [ %i.aaz, %bb.cv ]
  %i.aao = phi i32 [ %i.aai, %.lr.ph346.i ], [ %i.aay, %bb.cv ] ; 2 uses
  %i.aap = phi ptr [ %.pre420.i, %.lr.ph346.i ], [ %i.aaw, %bb.cv ] ; 2 uses
  %i.aaq = phi ptr [ %.pre418.i, %.lr.ph346.i ], [ %i.aax, %bb.cv ] ; 4 uses
  %i.aar = icmp ult ptr %i.aaq, %i.aap
  br i1 %i.aar, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.aas = trunc i32 %i.aao to i8
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 1
  store ptr %i.aat, ptr %i.aal, align 8, !tbaa !42
  store i8 %i.aas, ptr %i.aaq, align 1, !tbaa !19
  %.pre.i3 = load ptr, ptr %i.aal, align 8, !tbaa !42
  %.pre419.i = load ptr, ptr %i.aam, align 8, !tbaa !43
  %.pre421.i = load i32, ptr %i.aag, align 8, !tbaa !85
  %.pre422.i = load i32, ptr %i.aad, align 4, !tbaa !84
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.aau = phi i32 [ %.pre422.i, %bb.cu ], [ %i.aan, %bb.ct ]
  %i.aav = phi i32 [ %.pre421.i, %bb.cu ], [ %i.aao, %bb.ct ]
  %i.aaw = phi ptr [ %.pre419.i, %bb.cu ], [ %i.aap, %bb.ct ]
  %i.aax = phi ptr [ %.pre.i3, %bb.cu ], [ %i.aaq, %bb.ct ]
  %i.aay = lshr i32 %i.aav, 8                     ; 3 uses
  store i32 %i.aay, ptr %i.aag, align 8, !tbaa !85
  %i.aaz = add i32 %i.aau, -8                     ; 4 uses
  store i32 %i.aaz, ptr %i.aad, align 4, !tbaa !84
  %i.aba = icmp ugt i32 %i.aaz, 7
  br i1 %i.aba, label %bb.ct, label %._crit_edge347.i, !llvm.loop !347

._crit_edge347.i:                                 ; preds = %bb.cv, %.loopexit320.i
  %i.abb = phi i32 [ %i.aai, %.loopexit320.i ], [ %i.aay, %bb.cv ]
  %storemerge.lcssa.i = phi i32 [ %i.aaj, %.loopexit320.i ], [ %i.aaz, %bb.cv ] ; 3 uses
  %i.abc = add nsw i32 %.0282.lcssa.i, -257
  %i.abd = shl nuw nsw i32 %i.abc, %storemerge.lcssa.i
  %i.abe = or i32 %i.abd, %i.abb                  ; 3 uses
  store i32 %i.abe, ptr %i.aag, align 8, !tbaa !85
  %i.abf = add nuw nsw i32 %storemerge.lcssa.i, 5 ; 3 uses
  store i32 %i.abf, ptr %i.aad, align 4, !tbaa !84
  %i.abg = icmp samesign ugt i32 %storemerge.lcssa.i, 2
  br i1 %i.abg, label %.lr.ph350.i, label %._crit_edge351.i

.lr.ph350.i:                                      ; preds = %._crit_edge347.i
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre424.i = load ptr, ptr %i.abh, align 8, !tbaa !42
  %.pre426.i = load ptr, ptr %i.abi, align 8, !tbaa !43
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cy, %.lr.ph350.i
  %i.abj = phi i32 [ %i.abf, %.lr.ph350.i ], [ %i.abv, %bb.cy ]
  %i.abk = phi i32 [ %i.abe, %.lr.ph350.i ], [ %i.abu, %bb.cy ] ; 2 uses
  %i.abl = phi ptr [ %.pre426.i, %.lr.ph350.i ], [ %i.abs, %bb.cy ] ; 2 uses
  %i.abm = phi ptr [ %.pre424.i, %.lr.ph350.i ], [ %i.abt, %bb.cy ] ; 4 uses
  %i.abn = icmp ult ptr %i.abm, %i.abl
  br i1 %i.abn, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.abo = trunc i32 %i.abk to i8
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abm, i64 1
  store ptr %i.abp, ptr %i.abh, align 8, !tbaa !42
  store i8 %i.abo, ptr %i.abm, align 1, !tbaa !19
  %.pre423.i = load ptr, ptr %i.abh, align 8, !tbaa !42
  %.pre425.i = load ptr, ptr %i.abi, align 8, !tbaa !43
  %.pre427.i = load i32, ptr %i.aag, align 8, !tbaa !85
  %.pre428.i = load i32, ptr %i.aad, align 4, !tbaa !84
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.abq = phi i32 [ %.pre428.i, %bb.cx ], [ %i.abj, %bb.cw ]
  %i.abr = phi i32 [ %.pre427.i, %bb.cx ], [ %i.abk, %bb.cw ]
  %i.abs = phi ptr [ %.pre425.i, %bb.cx ], [ %i.abl, %bb.cw ]
  %i.abt = phi ptr [ %.pre423.i, %bb.cx ], [ %i.abm, %bb.cw ]
  %i.abu = lshr i32 %i.abr, 8                     ; 3 uses
  store i32 %i.abu, ptr %i.aag, align 8, !tbaa !85
  %i.abv = add i32 %i.abq, -8                     ; 4 uses
  store i32 %i.abv, ptr %i.aad, align 4, !tbaa !84
  %i.abw = icmp ugt i32 %i.abv, 7
  br i1 %i.abw, label %bb.cw, label %._crit_edge351.i, !llvm.loop !348

._crit_edge351.i:                                 ; preds = %bb.cy, %._crit_edge347.i
  %i.abx = phi i32 [ %i.abe, %._crit_edge347.i ], [ %i.abu, %bb.cy ]
  %storemerge302.lcssa.i = phi i32 [ %i.abf, %._crit_edge347.i ], [ %i.abv, %bb.cy ] ; 3 uses
  %i.aby = add nsw i32 %.0281.lcssa.i, -1
  %i.abz = shl nuw nsw i32 %i.aby, %storemerge302.lcssa.i
  %i.aca = or i32 %i.abz, %i.abx                  ; 3 uses
  store i32 %i.aca, ptr %i.aag, align 8, !tbaa !85
  %i.acb = add nuw nsw i32 %storemerge302.lcssa.i, 5 ; 3 uses
  store i32 %i.acb, ptr %i.aad, align 4, !tbaa !84
  %i.acc = icmp samesign ugt i32 %storemerge302.lcssa.i, 2
  br i1 %i.acc, label %.lr.ph354.i, label %.preheader319.i

.lr.ph354.i:                                      ; preds = %._crit_edge351.i
  %i.acd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre430.i = load ptr, ptr %i.acd, align 8, !tbaa !42
  %.pre432.i = load ptr, ptr %i.ace, align 8, !tbaa !43
  br label %bb.cz

.preheader319.i:                                  ; preds = %bb.db, %._crit_edge351.i
  %i.acf = phi i32 [ %i.aca, %._crit_edge351.i ], [ %i.acu, %bb.db ]
  %storemerge303.lcssa.i = phi i32 [ %i.acb, %._crit_edge351.i ], [ %i.acv, %bb.db ] ; 3 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %0, i64 37258 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 37273
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !19
  %.not304.i = icmp eq i8 %i.aci, 0
  br i1 %.not304.i, label %bb.dc, label %bb.dq

bb.cz:                                            ; preds = %bb.db, %.lr.ph354.i
  %i.acj = phi i32 [ %i.acb, %.lr.ph354.i ], [ %i.acv, %bb.db ]
  %i.ack = phi i32 [ %i.aca, %.lr.ph354.i ], [ %i.acu, %bb.db ] ; 2 uses
  %i.acl = phi ptr [ %.pre432.i, %.lr.ph354.i ], [ %i.acs, %bb.db ] ; 2 uses
  %i.acm = phi ptr [ %.pre430.i, %.lr.ph354.i ], [ %i.act, %bb.db ] ; 4 uses
  %i.acn = icmp ult ptr %i.acm, %i.acl
  br i1 %i.acn, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.aco = trunc i32 %i.ack to i8
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acm, i64 1
  store ptr %i.acp, ptr %i.acd, align 8, !tbaa !42
  store i8 %i.aco, ptr %i.acm, align 1, !tbaa !19
  %.pre429.i = load ptr, ptr %i.acd, align 8, !tbaa !42
  %.pre431.i = load ptr, ptr %i.ace, align 8, !tbaa !43
  %.pre433.i = load i32, ptr %i.aag, align 8, !tbaa !85
  %.pre434.i = load i32, ptr %i.aad, align 4, !tbaa !84
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.acq = phi i32 [ %.pre434.i, %bb.da ], [ %i.acj, %bb.cz ]
  %i.acr = phi i32 [ %.pre433.i, %bb.da ], [ %i.ack, %bb.cz ]
  %i.acs = phi ptr [ %.pre431.i, %bb.da ], [ %i.acl, %bb.cz ]
  %i.act = phi ptr [ %.pre429.i, %bb.da ], [ %i.acm, %bb.cz ]
  %i.acu = lshr i32 %i.acr, 8                     ; 3 uses
  store i32 %i.acu, ptr %i.aag, align 8, !tbaa !85
  %i.acv = add i32 %i.acq, -8                     ; 4 uses
  store i32 %i.acv, ptr %i.aad, align 4, !tbaa !84
  %i.acw = icmp ugt i32 %i.acv, 7
  br i1 %i.acw, label %bb.cz, label %.preheader319.i, !llvm.loop !349

bb.dc:                                            ; preds = %.preheader319.i
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 37259
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !19
  %.not304.1.i = icmp eq i8 %i.acy, 0
  br i1 %.not304.1.i, label %bb.dd, label %bb.dq

end_hunk_0
