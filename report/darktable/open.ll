Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/open?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
  invoke void @_ZN6LibRaw28parse_fuji_compressed_headerEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.thread592.thread unwind label %bb.m

.thread592.thread:                                ; preds = %.invoke, %.thread596, %bb.df, %bb.dk, %bb.dl, %bb.dm, %bb.dj, %bb.cw, %bb.cv, %bb.ct, %bb.cu, %bb.cq, %.preheader697.preheader, %bb.dq, %bb.dt, %bb.dr, %bb.dn, %.thread592
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.vq = load i16, ptr %i.vp, align 4, !tbaa !2280 ; 2 uses
  %i.vr = add i16 %i.vq, -99
  %or.cond565 = icmp ult i16 %i.vr, 9902
  br i1 %or.cond565, label %bb.du, label %bb.ee

bb.du:                                            ; preds = %.thread592.thread
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.vt = load i16, ptr %i.vs, align 2, !tbaa !2269 ; 4 uses
  %.not449 = icmp eq i16 %i.vt, -1
  br i1 %.not449, label %bb.ee, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.vu = zext i16 %i.vt to i32
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.vw = load i16, ptr %i.vv, align 2, !tbaa !2271 ; 4 uses
  %i.vx = zext i16 %i.vw to i32                   ; 2 uses
  %i.vy = add nuw nsw i32 %i.vx, %i.vu
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.wa = load i16, ptr %i.vz, align 2, !tbaa !2218
  %i.wb = zext i16 %i.wa to i32
  %.not450 = icmp samesign ugt i32 %i.vy, %i.wb
  br i1 %.not450, label %bb.ee, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.wd = load i16, ptr %i.wc, align 8, !tbaa !2270 ; 4 uses
  %.not451 = icmp eq i16 %i.wd, -1
  br i1 %.not451, label %bb.ee, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.we = zext i16 %i.wd to i32
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.wg = load i16, ptr %i.wf, align 4, !tbaa !2289 ; 4 uses
  %i.wh = zext i16 %i.wg to i32                   ; 2 uses
  %i.wi = add nuw nsw i32 %i.wh, %i.we
  %i.wj = load i16, ptr %i.vo, align 8, !tbaa !2219
  %i.wk = zext i16 %i.wj to i32
  %.not452 = icmp samesign ugt i32 %i.wi, %i.wk
  %.not453 = icmp eq i16 %i.vw, 0
  %or.cond566 = or i1 %.not453, %.not452
  %.not454 = icmp eq i16 %i.wg, 0
  %or.cond567 = or i1 %.not454, %or.cond566
  br i1 %or.cond567, label %bb.ee, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 3 uses
  %i.wm = load i16, ptr %i.wl, align 2, !tbaa !2269
  %i.wn = icmp eq i16 %i.wm, -1
  br i1 %i.wn, label %bb.dz, label %bb.ee

bb.dz:                                            ; preds = %bb.dy
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.wp = load i16, ptr %i.wo, align 8, !tbaa !2270
  %i.wq = icmp eq i16 %i.wp, -1
  br i1 %i.wq, label %bb.ea, label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  %i.wr = uitofp i16 %i.vw to float               ; 2 uses
  %i.ws = uitofp i16 %i.wg to float               ; 2 uses
  %i.wt = fdiv reassoc nsz arcp contract afn float %i.wr, %i.ws ; 2 uses
  %i.wu = uitofp reassoc nsz arcp contract afn nneg i16 %i.vq to float
  %i.wv = fmul reassoc nnan nsz arcp contract afn float %i.wu, 1.000000e-03 ; 4 uses
  %i.ww = fdiv reassoc nsz arcp contract afn float %i.wt, %i.wv
  %i.wx = fpext reassoc nsz arcp contract afn float %i.ww to double ; 2 uses
  %i.wy = fcmp reassoc nsz arcp contract afn olt double %i.wx, f0x3FEF5C28F5C28F5C
  %i.wz = fcmp reassoc nsz arcp contract afn ogt double %i.wx, 1.020000e+00
  %or.cond568 = or i1 %i.wy, %i.wz
  br i1 %or.cond568, label %bb.eb, label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  %i.xa = fcmp reassoc nsz arcp contract afn ogt float %i.wv, %i.wt
  br i1 %i.xa, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.xb = fdiv reassoc nsz arcp contract afn float %i.wr, %i.wv
  %i.xc = fptosi float %i.xb to i32               ; 2 uses
  %i.xd = sub nsw i32 %i.wh, %i.xc
  %i.xe = sdiv i32 %i.xd, 2
  %i.xf = trunc i32 %i.xe to i16
  %i.xg = add i16 %i.wd, %i.xf
  store i16 %i.xg, ptr %i.wo, align 8, !tbaa !2270
  %i.xh = trunc i32 %i.xc to i16
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i16 %i.xh, ptr %i.xi, align 4, !tbaa !2289
  store i16 %i.vt, ptr %i.wl, align 2, !tbaa !2269
  br label %.sink.split

bb.ed:                                            ; preds = %bb.eb
  %i.xj = fmul reassoc nnan nsz arcp contract afn float %i.wv, %i.ws
  %i.xk = fptosi float %i.xj to i32               ; 2 uses
  %i.xl = sub nsw i32 %i.vx, %i.xk
  %i.xm = sdiv i32 %i.xl, 2
  %i.xn = trunc i32 %i.xm to i16
  %i.xo = add i16 %i.vt, %i.xn
  store i16 %i.xo, ptr %i.wl, align 2, !tbaa !2269
  %i.xp = trunc i32 %i.xk to i16
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 194
  store i16 %i.xp, ptr %i.xq, align 2, !tbaa !2271
  store i16 %i.wd, ptr %i.wo, align 8, !tbaa !2270
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ec, %bb.ed
  %.sink959 = phi i64 [ 196, %bb.ed ], [ 194, %bb.ec ]
  %.sink = phi i16 [ %i.wg, %bb.ed ], [ %i.vw, %bb.ec ]
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 %.sink959
  store i16 %.sink, ptr %i.xr, align 2, !tbaa !2262
  br label %bb.ee

bb.ee:                                            ; preds = %.sink.split, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %.thread592.thread
  %i.xs = load i32, ptr %i.ar, align 4, !tbaa !2249 ; 7 uses
  %i.xt = icmp eq i32 %i.xs, 18                   ; 2 uses
  br i1 %i.xt, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.xv = load i32, ptr %i.xu, align 8, !tbaa !2224
  %i.xw = icmp eq i32 %i.xv, 9
  br i1 %i.xw, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.xy = load <2 x i16>, ptr %i.xx, align 8, !tbaa !2262
  %i.xz = freeze <2 x i16> %i.xy                  ; 4 uses
  %i.ya = zext <2 x i16> %i.xz to <2 x i32>       ; 2 uses
  %i.yb = urem <2 x i16> %i.xz, splat (i16 6)     ; 2 uses
  %i.yc = icmp eq <2 x i16> %i.yb, zeroinitializer
  %i.yd = sub nuw <2 x i16> %i.xz, %i.yb
  %i.ye = zext <2 x i16> %i.yd to <2 x i32>
  %i.yf = add nuw nsw <2 x i32> %i.ye, splat (i32 6)
  %i.yg = select <2 x i1> %i.yc, <2 x i32> %i.ya, <2 x i32> %i.yf ; 4 uses
  %i.yh = icmp eq <2 x i32> %i.yg, %i.ya          ; 2 uses
  %i.yi = extractelement <2 x i1> %i.yh, i64 0
  %i.yj = extractelement <2 x i1> %i.yh, i64 1
  %or.cond659 = select i1 %i.yi, i1 %i.yj, i1 false
  br i1 %or.cond659, label %.loopexit695, label %.loopexit695.loopexit

.loopexit695.loopexit:                            ; preds = %bb.eg
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ym = trunc <2 x i32> %i.yg to <2 x i16>
  %i.yn = bitcast <2 x i32> %i.yg to <4 x i16>
  %i.yo = extractelement <4 x i16> %i.yn, i64 0
  store i16 %i.yo, ptr %i.xx, align 8, !tbaa !2221
  %i.yp = bitcast <2 x i32> %i.yg to <4 x i16>
  %i.yq = extractelement <4 x i16> %i.yp, i64 2
  %i.yr = load <2 x i16>, ptr %i.yl, align 4, !tbaa !2262
  %i.ys = sub <2 x i16> %i.xz, %i.ym
  %i.yt = add <2 x i16> %i.ys, %i.yr
  store <2 x i16> %i.yt, ptr %i.yl, align 4, !tbaa !2262
  store i16 %i.yq, ptr %i.yk, align 2, !tbaa !2220
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 548
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.yv, ptr noundef nonnull align 8 dereferenceable(36) %i.yu, i64 36, i1 false), !tbaa !2266
  br label %.loopexit695

bb.eh:                                            ; preds = %bb.ef, %bb.ee
  %i.yw = load i16, ptr %i.ae, align 2, !tbaa !2246
  %.not455 = icmp eq i16 %i.yw, 0
  br i1 %.not455, label %bb.ei, label %.critedge570

bb.ei:                                            ; preds = %bb.eh
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !2224 ; 2 uses
  %i.yz = icmp ugt i32 %i.yy, 999
  br i1 %i.yz, label %bb.ej, label %.critedge570

bb.ej:                                            ; preds = %bb.ei
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.zb = load i16, ptr %i.za, align 8, !tbaa !2221 ; 2 uses
  %i.zc = and i16 %i.zb, 1
  %.not456 = icmp eq i16 %i.zc, 0
  br i1 %.not456, label %bb.ek, label %.thread598

bb.ek:                                            ; preds = %bb.ej
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ze = load i16, ptr %i.zd, align 2, !tbaa !2220 ; 2 uses
  %i.zf = and i16 %i.ze, 1
  %.not457 = icmp eq i16 %i.zf, 0
  br i1 %.not457, label %.loopexit695, label %.thread598.thread

.thread598:                                       ; preds = %bb.ej
  %i.zg = add i16 %i.zb, 1
  store i16 %i.zg, ptr %i.za, align 8, !tbaa !2221
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.zi = load i16, ptr %i.zh, align 4, !tbaa !2223
  %i.zj = add i16 %i.zi, -1
  store i16 %i.zj, ptr %i.zh, align 4, !tbaa !2223
  %.phi.trans.insert876 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %.pre877 = load i16, ptr %.phi.trans.insert876, align 2, !tbaa !2220 ; 2 uses
  %.pre887 = and i16 %.pre877, 1
  %i.zk = icmp eq i16 %.pre887, 0
  br i1 %i.zk, label %bb.el, label %.thread598.thread

.thread598.thread:                                ; preds = %bb.ek, %.thread598
  %.sroa.5.0936 = phi i32 [ 2, %.thread598 ], [ 0, %bb.ek ] ; 2 uses
  %i.zl = phi i16 [ %.pre877, %.thread598 ], [ %i.ze, %bb.ek ]
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.zn = add i16 %i.zl, 1
  store i16 %i.zn, ptr %i.zm, align 2, !tbaa !2220
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.zp = load i16, ptr %i.zo, align 2, !tbaa !2222
  %i.zq = add i16 %i.zp, -1
  store i16 %i.zq, ptr %i.zo, align 2, !tbaa !2222
  %2 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %.sroa.5.0936, i64 1
  br label %bb.el

bb.el:                                            ; preds = %.thread598.thread, %.thread598
  %.sroa.5.0937 = phi i32 [ %.sroa.5.0936, %.thread598.thread ], [ 2, %.thread598 ] ; 4 uses
  %.sroa.0.0 = phi i32 [ 1, %.thread598.thread ], [ 0, %.thread598 ] ; 2 uses
  %3 = phi <2 x i32> [ %2, %.thread598.thread ], [ <i32 0, i32 2>, %.thread598 ] ; 2 uses
  %4 = add nuw nsw i32 %.sroa.5.0937, 2
  %5 = shufflevector <2 x i32> %3, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  %6 = add nuw nsw <2 x i32> %5, <i32 2, i32 6>
  %7 = insertelement <2 x i32> poison, i32 %.sroa.5.0937, i64 0 ; 3 uses
  %8 = insertelement <2 x i32> poison, i32 %.sroa.0.0, i64 0
  %9 = or disjoint <2 x i32> %7, %8               ; 2 uses
  %10 = shufflevector <2 x i32> %9, <2 x i32> poison, <2 x i32> zeroinitializer
  %11 = shufflevector <2 x i32> %9, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %12 = add nuw nsw i32 %.sroa.5.0937, 10
  %i.zr = or disjoint i32 %.sroa.5.0937, %.sroa.0.0
  %13 = shl nuw nsw i32 %i.zr, 1
  %14 = shufflevector <2 x i32> %10, <2 x i32> %7, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 2, i32 poison, i32 1, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <4 x i32> %11, <4 x i32> <i32 poison, i32 6, i32 poison, i32 10>, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 5, i32 poison, i32 1, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %16 = add nuw nsw <16 x i32> %14, %15
  %17 = insertelement <16 x i32> %16, i32 %13, i64 12
  %18 = shufflevector <2 x i32> %3, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %19 = shufflevector <16 x i32> %17, <16 x i32> %18, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 poison, i32 6, i32 poison, i32 8, i32 poison, i32 10, i32 poison, i32 12, i32 17, i32 poison, i32 poison>
  %20 = add nuw nsw <2 x i32> %7, <i32 14, i32 poison>
  %21 = and <2 x i32> %20, <i32 14, i32 poison>
  %22 = shufflevector <2 x i32> %21, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <16 x i32> %19, <16 x i32> %22, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 poison, i32 6, i32 poison, i32 8, i32 poison, i32 10, i32 poison, i32 12, i32 13, i32 16, i32 17>
  %24 = shufflevector <16 x i32> %18, <16 x i32> %23, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 20, i32 1, i32 22, i32 0, i32 24, i32 1, i32 26, i32 0, i32 28, i32 29, i32 30, i32 31>
  %25 = shufflevector <16 x i32> %18, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 poison, i32 poison, i32 poison, i32 16, i32 poison, i32 poison, i32 poison, i32 24, i32 poison, i32 poison, i32 poison>, <16 x i32> <i32 1, i32 1, i32 poison, i32 poison, i32 20, i32 0, i32 0, i32 poison, i32 24, i32 0, i32 0, i32 poison, i32 28, i32 0, i32 0, i32 0>
  %i.zs = insertelement <16 x i32> %25, i32 %4, i64 2
  %i.zt = insertelement <16 x i32> %i.zs, i32 %12, i64 11
  %26 = shufflevector <2 x i32> %6, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %27 = shufflevector <16 x i32> %26, <16 x i32> %i.zt, <16 x i32> <i32 16, i32 17, i32 18, i32 0, i32 20, i32 21, i32 22, i32 1, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.zu = or disjoint <16 x i32> %24, %27
  %i.zv = shl nuw nsw <16 x i32> %i.zu, <i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1>
  %i.zw = xor <16 x i32> %i.zv, <i32 2, i32 0, i32 0, i32 2, i32 0, i32 10, i32 0, i32 2, i32 0, i32 18, i32 0, i32 2, i32 0, i32 26, i32 0, i32 2>
  %i.zx = insertelement <16 x i32> poison, i32 %i.yy, i64 0
  %i.zy = shufflevector <16 x i32> %i.zx, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.zz = lshr <16 x i32> %i.zy, %i.zw
  %i.aaa = shl <16 x i32> %i.zz, <i32 2, i32 0, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.aab = and <16 x i32> %i.aaa, <i32 12, i32 3, i32 48, i32 192, i32 768, i32 3072, i32 12288, i32 49152, i32 196608, i32 786432, i32 3145728, i32 12582912, i32 50331648, i32 201326592, i32 805306368, i32 -1>
  %i.aac = tail call i32 @llvm.vector.reduce.or.v16i32(<16 x i32> %i.aab)
  store i32 %i.aac, ptr %i.yx, align 8, !tbaa !2224
  br label %.loopexit695

.loopexit695:                                     ; preds = %.loopexit695.loopexit, %bb.eg, %bb.el, %bb.ek
  %.0312 = phi i32 [ 2, %bb.el ], [ 2, %bb.ek ], [ 6, %bb.eg ], [ 6, %.loopexit695.loopexit ] ; 13 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %.rhs.trunc643 = trunc nuw nsw i32 %.0312 to i16 ; 4 uses
  %i.aae = load i16, ptr %i.aad, align 2, !tbaa !2269 ; 5 uses
  %.not544 = icmp eq i16 %i.aae, 0
  br i1 %.not544, label %bb.er, label %bb.em

bb.em:                                            ; preds = %.loopexit695
  %i.aaf = zext i16 %i.aae to i32
  %.not545 = icmp eq i16 %i.aae, -1
  br i1 %.not545, label %bb.er, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !2271 ; 3 uses
  %.off669 = add i16 %i.aah, -1
  %switch670 = icmp ult i16 %.off669, -2
  br i1 %switch670, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %bb.en
  %i.aai = zext i16 %i.aah to i32
  %.rhs.trunc956 = trunc nuw nsw i32 %.0312 to i16
  %i.aaj = urem i16 %i.aae, %.rhs.trunc956
  %.not548 = icmp ne i16 %i.aaj, 0
  %i.aak = icmp samesign ult i32 %.0312, %i.aai
  %or.cond571 = select i1 %.not548, i1 %i.aak, i1 false
  br i1 %or.cond571, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %i.aal = udiv i16 %i.aae, %.rhs.trunc643
  %narrow667 = add nuw i16 %i.aal, 1
  %i.aam = zext i16 %narrow667 to i32
  %i.aan = mul nuw nsw i32 %.0312, %i.aam         ; 2 uses
  %i.aao = sub nsw i32 %i.aan, %i.aaf             ; 2 uses
  %i.aap = icmp sgt i32 %i.aao, 0
  br i1 %i.aap, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.aaq = trunc i32 %i.aan to i16
  store i16 %i.aaq, ptr %i.aad, align 2, !tbaa !2269
  %i.aar = trunc i32 %i.aao to i16
  %i.aas = sub i16 %i.aah, %i.aar
  store i16 %i.aas, ptr %i.aag, align 2, !tbaa !2271
  br label %bb.er

bb.er:                                            ; preds = %bb.en, %bb.ep, %bb.eq, %bb.eo, %bb.em, %.loopexit695
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.aau = load i16, ptr %i.aat, align 8, !tbaa !2270 ; 5 uses
  %.not549 = icmp eq i16 %i.aau, 0
  br i1 %.not549, label %bb.ex, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aav = zext i16 %i.aau to i32
  %.not550 = icmp eq i16 %i.aau, -1
  br i1 %.not550, label %bb.ex, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.aax = load i16, ptr %i.aaw, align 4, !tbaa !2289 ; 3 uses
  %.off671 = add i16 %i.aax, -1
  %switch672 = icmp ult i16 %.off671, -2
  br i1 %switch672, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %bb.et
  %i.aay = zext i16 %i.aax to i32
  %.rhs.trunc953 = trunc nuw nsw i32 %.0312 to i16
  %i.aaz = urem i16 %i.aau, %.rhs.trunc953
  %.not553 = icmp ne i16 %i.aaz, 0
  %i.aba = icmp samesign ult i32 %.0312, %i.aay
  %or.cond572 = select i1 %.not553, i1 %i.aba, i1 false
  br i1 %or.cond572, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.abb = udiv i16 %i.aau, %.rhs.trunc643
  %narrow668 = add nuw i16 %i.abb, 1
  %i.abc = zext i16 %narrow668 to i32
  %i.abd = mul nuw nsw i32 %.0312, %i.abc         ; 2 uses
  %i.abe = sub nsw i32 %i.abd, %i.aav             ; 2 uses
  %i.abf = icmp sgt i32 %i.abe, 0
  br i1 %i.abf, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.abg = trunc i32 %i.abd to i16
  store i16 %i.abg, ptr %i.aat, align 8, !tbaa !2270
  %i.abh = trunc i32 %i.abe to i16
  %i.abi = sub i16 %i.aax, %i.abh
  store i16 %i.abi, ptr %i.aaw, align 4, !tbaa !2289
  br label %bb.ex

bb.ex:                                            ; preds = %bb.et, %bb.ev, %bb.ew, %bb.er, %bb.es, %bb.eu
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !2269 ; 5 uses
  %.not544.1 = icmp eq i16 %i.abk, 0
  br i1 %.not544.1, label %bb.fd, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.abl = zext i16 %i.abk to i32
  %.not545.1 = icmp eq i16 %i.abk, -1
  br i1 %.not545.1, label %bb.fd, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 194 ; 2 uses
  %i.abn = load i16, ptr %i.abm, align 2, !tbaa !2271 ; 3 uses
  %.off669.1 = add i16 %i.abn, -1
  %switch670.1 = icmp ult i16 %.off669.1, -2
  br i1 %switch670.1, label %bb.fa, label %bb.fd

bb.fa:                                            ; preds = %bb.ez
  %i.abo = zext i16 %i.abn to i32
  %.rhs.trunc950 = trunc nuw nsw i32 %.0312 to i16
  %i.abp = urem i16 %i.abk, %.rhs.trunc950
  %.not548.1 = icmp ne i16 %i.abp, 0
  %i.abq = icmp samesign ult i32 %.0312, %i.abo
  %or.cond571.1 = select i1 %.not548.1, i1 %i.abq, i1 false
  br i1 %or.cond571.1, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %bb.fa
  %i.abr = udiv i16 %i.abk, %.rhs.trunc643
  %narrow667.1 = add nuw i16 %i.abr, 1
  %i.abs = zext i16 %narrow667.1 to i32
  %i.abt = mul nuw nsw i32 %.0312, %i.abs         ; 2 uses
  %i.abu = sub nsw i32 %i.abt, %i.abl             ; 2 uses
  %i.abv = icmp sgt i32 %i.abu, 0
  br i1 %i.abv, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.abw = trunc i32 %i.abt to i16
  store i16 %i.abw, ptr %i.abj, align 2, !tbaa !2269
  %i.abx = trunc i32 %i.abu to i16
  %i.aby = sub i16 %i.abn, %i.abx
  store i16 %i.aby, ptr %i.abm, align 2, !tbaa !2271
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aca = load i16, ptr %i.abz, align 8, !tbaa !2270 ; 5 uses
  %.not549.1 = icmp eq i16 %i.aca, 0
  br i1 %.not549.1, label %.critedge570, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.acb = zext i16 %i.aca to i32
  %.not550.1 = icmp eq i16 %i.aca, -1
  br i1 %.not550.1, label %.critedge570, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.acd = load i16, ptr %i.acc, align 4, !tbaa !2289 ; 3 uses
  %.off671.1 = add i16 %i.acd, -1
  %switch672.1 = icmp ult i16 %.off671.1, -2
  br i1 %switch672.1, label %bb.fg, label %.critedge570

bb.fg:                                            ; preds = %bb.ff
  %i.ace = zext i16 %i.acd to i32
  %.rhs.trunc = trunc nuw nsw i32 %.0312 to i16
  %i.acf = urem i16 %i.aca, %.rhs.trunc
  %.not553.1 = icmp ne i16 %i.acf, 0
  %i.acg = icmp samesign ult i32 %.0312, %i.ace
  %or.cond572.1 = select i1 %.not553.1, i1 %i.acg, i1 false
  br i1 %or.cond572.1, label %bb.fh, label %.critedge570

bb.fh:                                            ; preds = %bb.fg
  %i.ach = udiv i16 %i.aca, %.rhs.trunc643
  %narrow668.1 = add nuw i16 %i.ach, 1
  %i.aci = zext i16 %narrow668.1 to i32
  %i.acj = mul nuw nsw i32 %.0312, %i.aci         ; 2 uses
  %i.ack = sub nsw i32 %i.acj, %i.acb             ; 2 uses
  %i.acl = icmp sgt i32 %i.ack, 0
  br i1 %i.acl, label %bb.fi, label %.critedge570

bb.fi:                                            ; preds = %bb.fh
  %i.acm = trunc i32 %i.acj to i16
  store i16 %i.acm, ptr %i.abz, align 8, !tbaa !2270
  %i.acn = trunc i32 %i.ack to i16
  %i.aco = sub i16 %i.acd, %i.acn
  store i16 %i.aco, ptr %i.acc, align 4, !tbaa !2289
  br label %.critedge570

.critedge570:                                     ; preds = %bb.fd, %bb.fe, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %bb.ei, %bb.eh
  %i.acp = load i32, ptr %i.jt, align 4, !tbaa !2248
  %.not467 = icmp eq i32 %i.acp, 0
  br i1 %.not467, label %.thread601, label %bb.fj

bb.fj:                                            ; preds = %.critedge570
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.acr = load i32, ptr %i.acq, align 8, !tbaa !2224
  %i.acs = icmp eq i32 %i.acr, 0
  br i1 %i.acs, label %bb.fk, label %.thread600

bb.fk:                                            ; preds = %bb.fj
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 540
end_hunk_0
