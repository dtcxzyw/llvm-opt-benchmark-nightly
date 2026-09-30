Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/open?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
  invoke void @_ZN6LibRaw28parse_fuji_compressed_headerEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.thread592.thread unwind label %bb.m

.thread592.thread:                                ; preds = %.invoke, %.thread596, %bb.dg, %bb.dl, %bb.dm, %bb.dn, %bb.dk, %bb.cx, %bb.cw, %bb.cu, %bb.cv, %bb.cr, %.preheader697.preheader, %bb.dr, %bb.du, %bb.ds, %bb.do, %.thread592
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.vt = load i16, ptr %i.vs, align 4, !tbaa !2281 ; 2 uses
  %i.vu = add i16 %i.vt, -99
  %or.cond565 = icmp ult i16 %i.vu, 9902
  br i1 %or.cond565, label %bb.dv, label %bb.ef

bb.dv:                                            ; preds = %.thread592.thread
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.vw = load i16, ptr %i.vv, align 2, !tbaa !2270 ; 4 uses
  %.not449 = icmp eq i16 %i.vw, -1
  br i1 %.not449, label %bb.ef, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.vx = zext i16 %i.vw to i32
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !2272 ; 4 uses
  %i.wa = zext i16 %i.vz to i32                   ; 2 uses
  %i.wb = add nuw nsw i32 %i.wa, %i.vx
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.wd = load i16, ptr %i.wc, align 2, !tbaa !2218
  %i.we = zext i16 %i.wd to i32
  %.not450 = icmp samesign ugt i32 %i.wb, %i.we
  br i1 %.not450, label %bb.ef, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.wg = load i16, ptr %i.wf, align 8, !tbaa !2271 ; 4 uses
  %.not451 = icmp eq i16 %i.wg, -1
  br i1 %.not451, label %bb.ef, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.wh = zext i16 %i.wg to i32
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.wj = load i16, ptr %i.wi, align 4, !tbaa !2290 ; 4 uses
  %i.wk = zext i16 %i.wj to i32                   ; 2 uses
  %i.wl = add nuw nsw i32 %i.wk, %i.wh
  %i.wm = load i16, ptr %i.vr, align 8, !tbaa !2219
  %i.wn = zext i16 %i.wm to i32
  %.not452 = icmp samesign ugt i32 %i.wl, %i.wn
  %.not453 = icmp eq i16 %i.vz, 0
  %or.cond566 = or i1 %.not453, %.not452
  %.not454 = icmp eq i16 %i.wj, 0
  %or.cond567 = or i1 %.not454, %or.cond566
  br i1 %or.cond567, label %bb.ef, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 3 uses
  %i.wp = load i16, ptr %i.wo, align 2, !tbaa !2270
  %i.wq = icmp eq i16 %i.wp, -1
  br i1 %i.wq, label %bb.ea, label %bb.ef

bb.ea:                                            ; preds = %bb.dz
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ws = load i16, ptr %i.wr, align 8, !tbaa !2271
  %i.wt = icmp eq i16 %i.ws, -1
  br i1 %i.wt, label %bb.eb, label %bb.ef

bb.eb:                                            ; preds = %bb.ea
  %i.wu = uitofp i16 %i.vz to float               ; 2 uses
  %i.wv = uitofp i16 %i.wj to float               ; 2 uses
  %i.ww = fdiv reassoc nsz arcp contract afn float %i.wu, %i.wv ; 2 uses
  %i.wx = uitofp reassoc nsz arcp contract afn nneg i16 %i.vt to float
  %i.wy = fmul reassoc nnan nsz arcp contract afn float %i.wx, 1.000000e-03 ; 4 uses
  %i.wz = fdiv reassoc nsz arcp contract afn float %i.ww, %i.wy
  %i.xa = fpext reassoc nsz arcp contract afn float %i.wz to double ; 2 uses
  %i.xb = fcmp reassoc nsz arcp contract afn olt double %i.xa, f0x3FEF5C28F5C28F5C
  %i.xc = fcmp reassoc nsz arcp contract afn ogt double %i.xa, 1.020000e+00
  %or.cond568 = or i1 %i.xb, %i.xc
  br i1 %or.cond568, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %bb.eb
  %i.xd = fcmp reassoc nsz arcp contract afn ogt float %i.wy, %i.ww
  br i1 %i.xd, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.xe = fdiv reassoc nsz arcp contract afn float %i.wu, %i.wy
  %i.xf = fptosi float %i.xe to i32               ; 2 uses
  %i.xg = sub nsw i32 %i.wk, %i.xf
  %i.xh = sdiv i32 %i.xg, 2
  %i.xi = trunc i32 %i.xh to i16
  %i.xj = add i16 %i.wg, %i.xi
  store i16 %i.xj, ptr %i.wr, align 8, !tbaa !2271
  %i.xk = trunc i32 %i.xf to i16
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i16 %i.xk, ptr %i.xl, align 4, !tbaa !2290
  store i16 %i.vw, ptr %i.wo, align 2, !tbaa !2270
  br label %.sink.split

bb.ee:                                            ; preds = %bb.ec
  %i.xm = fmul reassoc nnan nsz arcp contract afn float %i.wy, %i.wv
  %i.xn = fptosi float %i.xm to i32               ; 2 uses
  %i.xo = sub nsw i32 %i.wa, %i.xn
  %i.xp = sdiv i32 %i.xo, 2
  %i.xq = trunc i32 %i.xp to i16
  %i.xr = add i16 %i.vw, %i.xq
  store i16 %i.xr, ptr %i.wo, align 2, !tbaa !2270
  %i.xs = trunc i32 %i.xn to i16
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 194
  store i16 %i.xs, ptr %i.xt, align 2, !tbaa !2272
  store i16 %i.wg, ptr %i.wr, align 8, !tbaa !2271
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ed, %bb.ee
  %.sink957 = phi i64 [ 196, %bb.ee ], [ 194, %bb.ed ]
  %.sink = phi i16 [ %i.wj, %bb.ee ], [ %i.vz, %bb.ed ]
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 %.sink957
  store i16 %.sink, ptr %i.xu, align 2, !tbaa !2263
  br label %bb.ef

bb.ef:                                            ; preds = %.sink.split, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %.thread592.thread
  %i.xv = load i32, ptr %i.ar, align 4, !tbaa !2250 ; 7 uses
  %i.xw = icmp eq i32 %i.xv, 18                   ; 2 uses
  br i1 %i.xw, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.xy = load i32, ptr %i.xx, align 8, !tbaa !2224
  %i.xz = icmp eq i32 %i.xy, 9
  br i1 %i.xz, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.yb = load <2 x i16>, ptr %i.ya, align 8, !tbaa !2263
  %i.yc = freeze <2 x i16> %i.yb                  ; 4 uses
  %i.yd = zext <2 x i16> %i.yc to <2 x i32>       ; 2 uses
  %i.ye = urem <2 x i16> %i.yc, splat (i16 6)     ; 2 uses
  %i.yf = icmp eq <2 x i16> %i.ye, zeroinitializer
  %i.yg = sub nuw <2 x i16> %i.yc, %i.ye
  %i.yh = zext <2 x i16> %i.yg to <2 x i32>
  %i.yi = add nuw nsw <2 x i32> %i.yh, splat (i32 6)
  %i.yj = select <2 x i1> %i.yf, <2 x i32> %i.yd, <2 x i32> %i.yi ; 4 uses
  %i.yk = icmp eq <2 x i32> %i.yj, %i.yd          ; 2 uses
  %i.yl = extractelement <2 x i1> %i.yk, i64 0
  %i.ym = extractelement <2 x i1> %i.yk, i64 1
  %or.cond659 = select i1 %i.yl, i1 %i.ym, i1 false
  br i1 %or.cond659, label %.loopexit695, label %.loopexit695.loopexit

.loopexit695.loopexit:                            ; preds = %bb.eh
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.yp = trunc <2 x i32> %i.yj to <2 x i16>
  %i.yq = bitcast <2 x i32> %i.yj to <4 x i16>
  %i.yr = extractelement <4 x i16> %i.yq, i64 0
  store i16 %i.yr, ptr %i.ya, align 8, !tbaa !2221
  %i.ys = bitcast <2 x i32> %i.yj to <4 x i16>
  %i.yt = extractelement <4 x i16> %i.ys, i64 2
  %i.yu = load <2 x i16>, ptr %i.yo, align 4, !tbaa !2263
  %i.yv = sub <2 x i16> %i.yc, %i.yp
  %i.yw = add <2 x i16> %i.yv, %i.yu
  store <2 x i16> %i.yw, ptr %i.yo, align 4, !tbaa !2263
  store i16 %i.yt, ptr %i.yn, align 2, !tbaa !2220
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 548
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.yy, ptr noundef nonnull align 8 dereferenceable(36) %i.yx, i64 36, i1 false), !tbaa !2267
  br label %.loopexit695

bb.ei:                                            ; preds = %bb.eg, %bb.ef
  %i.yz = load i16, ptr %i.ae, align 2, !tbaa !2247
  %.not455 = icmp eq i16 %i.yz, 0
  br i1 %.not455, label %bb.ej, label %.critedge570

bb.ej:                                            ; preds = %bb.ei
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !2224 ; 2 uses
  %i.zc = icmp ugt i32 %i.zb, 999
  br i1 %i.zc, label %bb.ek, label %.critedge570

bb.ek:                                            ; preds = %bb.ej
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ze = load i16, ptr %i.zd, align 8, !tbaa !2221 ; 2 uses
  %i.zf = and i16 %i.ze, 1
  %.not456 = icmp eq i16 %i.zf, 0
  br i1 %.not456, label %bb.el, label %.thread598

bb.el:                                            ; preds = %bb.ek
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.zh = load i16, ptr %i.zg, align 2, !tbaa !2220 ; 2 uses
  %i.zi = and i16 %i.zh, 1
  %.not457 = icmp eq i16 %i.zi, 0
  br i1 %.not457, label %.loopexit695, label %.thread598.thread

.thread598:                                       ; preds = %bb.ek
  %i.zj = add i16 %i.ze, 1
  store i16 %i.zj, ptr %i.zd, align 8, !tbaa !2221
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.zl = load i16, ptr %i.zk, align 4, !tbaa !2223
  %i.zm = add i16 %i.zl, -1
  store i16 %i.zm, ptr %i.zk, align 4, !tbaa !2223
  %.phi.trans.insert876 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %.pre877 = load i16, ptr %.phi.trans.insert876, align 2, !tbaa !2220 ; 2 uses
  %.pre885 = and i16 %.pre877, 1
  %i.zn = icmp eq i16 %.pre885, 0
  br i1 %i.zn, label %bb.em, label %.thread598.thread

.thread598.thread:                                ; preds = %bb.el, %.thread598
  %.sroa.5.0934 = phi i32 [ 2, %.thread598 ], [ 0, %bb.el ] ; 2 uses
  %i.zo = phi i16 [ %.pre877, %.thread598 ], [ %i.zh, %bb.el ]
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.zq = add i16 %i.zo, 1
  store i16 %i.zq, ptr %i.zp, align 2, !tbaa !2220
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.zs = load i16, ptr %i.zr, align 2, !tbaa !2222
  %i.zt = add i16 %i.zs, -1
  store i16 %i.zt, ptr %i.zr, align 2, !tbaa !2222
  %2 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %.sroa.5.0934, i64 1
  br label %bb.em

bb.em:                                            ; preds = %.thread598.thread, %.thread598
  %.sroa.5.0935 = phi i32 [ %.sroa.5.0934, %.thread598.thread ], [ 2, %.thread598 ] ; 4 uses
  %.sroa.0.0 = phi i32 [ 1, %.thread598.thread ], [ 0, %.thread598 ] ; 2 uses
  %3 = phi <2 x i32> [ %2, %.thread598.thread ], [ <i32 0, i32 2>, %.thread598 ] ; 2 uses
  %4 = add nuw nsw i32 %.sroa.5.0935, 2
  %5 = shufflevector <2 x i32> %3, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  %6 = add nuw nsw <2 x i32> %5, <i32 2, i32 6>
  %7 = insertelement <2 x i32> poison, i32 %.sroa.5.0935, i64 0 ; 3 uses
  %8 = insertelement <2 x i32> poison, i32 %.sroa.0.0, i64 0
  %9 = or disjoint <2 x i32> %7, %8               ; 2 uses
  %10 = shufflevector <2 x i32> %9, <2 x i32> poison, <2 x i32> zeroinitializer
  %11 = shufflevector <2 x i32> %9, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %12 = add nuw nsw i32 %.sroa.5.0935, 10
  %i.zu = or disjoint i32 %.sroa.5.0935, %.sroa.0.0
  %13 = shl nuw nsw i32 %i.zu, 1
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
  %i.zv = insertelement <16 x i32> %25, i32 %4, i64 2
  %i.zw = insertelement <16 x i32> %i.zv, i32 %12, i64 11
  %26 = shufflevector <2 x i32> %6, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %27 = shufflevector <16 x i32> %26, <16 x i32> %i.zw, <16 x i32> <i32 16, i32 17, i32 18, i32 0, i32 20, i32 21, i32 22, i32 1, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.zx = or disjoint <16 x i32> %24, %27
  %i.zy = shl nuw nsw <16 x i32> %i.zx, <i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1>
  %i.zz = xor <16 x i32> %i.zy, <i32 2, i32 0, i32 0, i32 2, i32 0, i32 10, i32 0, i32 2, i32 0, i32 18, i32 0, i32 2, i32 0, i32 26, i32 0, i32 2>
  %i.aaa = insertelement <16 x i32> poison, i32 %i.zb, i64 0
  %i.aab = shufflevector <16 x i32> %i.aaa, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aac = lshr <16 x i32> %i.aab, %i.zz
  %i.aad = shl <16 x i32> %i.aac, <i32 2, i32 0, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.aae = and <16 x i32> %i.aad, <i32 12, i32 3, i32 48, i32 192, i32 768, i32 3072, i32 12288, i32 49152, i32 196608, i32 786432, i32 3145728, i32 12582912, i32 50331648, i32 201326592, i32 805306368, i32 -1>
  %i.aaf = tail call i32 @llvm.vector.reduce.or.v16i32(<16 x i32> %i.aae)
  store i32 %i.aaf, ptr %i.za, align 8, !tbaa !2224
  br label %.loopexit695

.loopexit695:                                     ; preds = %.loopexit695.loopexit, %bb.eh, %bb.em, %bb.el
  %.0312 = phi i32 [ 2, %bb.em ], [ 2, %bb.el ], [ 6, %bb.eh ], [ 6, %.loopexit695.loopexit ] ; 13 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %.rhs.trunc643 = trunc nuw nsw i32 %.0312 to i16 ; 4 uses
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !2270 ; 5 uses
  %.not544 = icmp eq i16 %i.aah, 0
  br i1 %.not544, label %bb.es, label %bb.en

bb.en:                                            ; preds = %.loopexit695
  %i.aai = zext i16 %i.aah to i32
  %.not545 = icmp eq i16 %i.aah, -1
  br i1 %.not545, label %bb.es, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.aak = load i16, ptr %i.aaj, align 2, !tbaa !2272 ; 3 uses
  %.off669 = add i16 %i.aak, -1
  %switch670 = icmp ult i16 %.off669, -2
  br i1 %switch670, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.aal = zext i16 %i.aak to i32
  %.rhs.trunc954 = trunc nuw nsw i32 %.0312 to i16
  %i.aam = urem i16 %i.aah, %.rhs.trunc954
  %.not548 = icmp ne i16 %i.aam, 0
  %i.aan = icmp samesign ult i32 %.0312, %i.aal
  %or.cond571 = select i1 %.not548, i1 %i.aan, i1 false
  br i1 %or.cond571, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.aao = udiv i16 %i.aah, %.rhs.trunc643
  %narrow667 = add nuw i16 %i.aao, 1
  %i.aap = zext i16 %narrow667 to i32
  %i.aaq = mul nuw nsw i32 %.0312, %i.aap         ; 2 uses
  %i.aar = sub nsw i32 %i.aaq, %i.aai             ; 2 uses
  %i.aas = icmp sgt i32 %i.aar, 0
  br i1 %i.aas, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.aat = trunc i32 %i.aaq to i16
  store i16 %i.aat, ptr %i.aag, align 2, !tbaa !2270
  %i.aau = trunc i32 %i.aar to i16
  %i.aav = sub i16 %i.aak, %i.aau
  store i16 %i.aav, ptr %i.aaj, align 2, !tbaa !2272
  br label %bb.es

bb.es:                                            ; preds = %bb.eo, %bb.eq, %bb.er, %bb.ep, %bb.en, %.loopexit695
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.aax = load i16, ptr %i.aaw, align 8, !tbaa !2271 ; 5 uses
  %.not549 = icmp eq i16 %i.aax, 0
  br i1 %.not549, label %bb.ey, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aay = zext i16 %i.aax to i32
  %.not550 = icmp eq i16 %i.aax, -1
  br i1 %.not550, label %bb.ey, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.aba = load i16, ptr %i.aaz, align 4, !tbaa !2290 ; 3 uses
  %.off671 = add i16 %i.aba, -1
  %switch672 = icmp ult i16 %.off671, -2
  br i1 %switch672, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.abb = zext i16 %i.aba to i32
  %.rhs.trunc951 = trunc nuw nsw i32 %.0312 to i16
  %i.abc = urem i16 %i.aax, %.rhs.trunc951
  %.not553 = icmp ne i16 %i.abc, 0
  %i.abd = icmp samesign ult i32 %.0312, %i.abb
  %or.cond572 = select i1 %.not553, i1 %i.abd, i1 false
  br i1 %or.cond572, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.abe = udiv i16 %i.aax, %.rhs.trunc643
  %narrow668 = add nuw i16 %i.abe, 1
  %i.abf = zext i16 %narrow668 to i32
  %i.abg = mul nuw nsw i32 %.0312, %i.abf         ; 2 uses
  %i.abh = sub nsw i32 %i.abg, %i.aay             ; 2 uses
  %i.abi = icmp sgt i32 %i.abh, 0
  br i1 %i.abi, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.abj = trunc i32 %i.abg to i16
  store i16 %i.abj, ptr %i.aaw, align 8, !tbaa !2271
  %i.abk = trunc i32 %i.abh to i16
  %i.abl = sub i16 %i.aba, %i.abk
  store i16 %i.abl, ptr %i.aaz, align 4, !tbaa !2290
  br label %bb.ey

bb.ey:                                            ; preds = %bb.eu, %bb.ew, %bb.ex, %bb.es, %bb.et, %bb.ev
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.abn = load i16, ptr %i.abm, align 2, !tbaa !2270 ; 5 uses
  %.not544.1 = icmp eq i16 %i.abn, 0
  br i1 %.not544.1, label %bb.fe, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.abo = zext i16 %i.abn to i32
  %.not545.1 = icmp eq i16 %i.abn, -1
  br i1 %.not545.1, label %bb.fe, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 194 ; 2 uses
  %i.abq = load i16, ptr %i.abp, align 2, !tbaa !2272 ; 3 uses
  %.off669.1 = add i16 %i.abq, -1
  %switch670.1 = icmp ult i16 %.off669.1, -2
  br i1 %switch670.1, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.abr = zext i16 %i.abq to i32
  %.rhs.trunc948 = trunc nuw nsw i32 %.0312 to i16
  %i.abs = urem i16 %i.abn, %.rhs.trunc948
  %.not548.1 = icmp ne i16 %i.abs, 0
  %i.abt = icmp samesign ult i32 %.0312, %i.abr
  %or.cond571.1 = select i1 %.not548.1, i1 %i.abt, i1 false
  br i1 %or.cond571.1, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %bb.fb
  %i.abu = udiv i16 %i.abn, %.rhs.trunc643
  %narrow667.1 = add nuw i16 %i.abu, 1
  %i.abv = zext i16 %narrow667.1 to i32
  %i.abw = mul nuw nsw i32 %.0312, %i.abv         ; 2 uses
  %i.abx = sub nsw i32 %i.abw, %i.abo             ; 2 uses
  %i.aby = icmp sgt i32 %i.abx, 0
  br i1 %i.aby, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.abz = trunc i32 %i.abw to i16
  store i16 %i.abz, ptr %i.abm, align 2, !tbaa !2270
  %i.aca = trunc i32 %i.abx to i16
  %i.acb = sub i16 %i.abq, %i.aca
  store i16 %i.acb, ptr %i.abp, align 2, !tbaa !2272
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.acd = load i16, ptr %i.acc, align 8, !tbaa !2271 ; 5 uses
  %.not549.1 = icmp eq i16 %i.acd, 0
  br i1 %.not549.1, label %.critedge570, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ace = zext i16 %i.acd to i32
  %.not550.1 = icmp eq i16 %i.acd, -1
  br i1 %.not550.1, label %.critedge570, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.acg = load i16, ptr %i.acf, align 4, !tbaa !2290 ; 3 uses
  %.off671.1 = add i16 %i.acg, -1
  %switch672.1 = icmp ult i16 %.off671.1, -2
  br i1 %switch672.1, label %bb.fh, label %.critedge570

bb.fh:                                            ; preds = %bb.fg
  %i.ach = zext i16 %i.acg to i32
  %.rhs.trunc = trunc nuw nsw i32 %.0312 to i16
  %i.aci = urem i16 %i.acd, %.rhs.trunc
  %.not553.1 = icmp ne i16 %i.aci, 0
  %i.acj = icmp samesign ult i32 %.0312, %i.ach
  %or.cond572.1 = select i1 %.not553.1, i1 %i.acj, i1 false
  br i1 %or.cond572.1, label %bb.fi, label %.critedge570

bb.fi:                                            ; preds = %bb.fh
  %i.ack = udiv i16 %i.acd, %.rhs.trunc643
  %narrow668.1 = add nuw i16 %i.ack, 1
  %i.acl = zext i16 %narrow668.1 to i32
  %i.acm = mul nuw nsw i32 %.0312, %i.acl         ; 2 uses
  %i.acn = sub nsw i32 %i.acm, %i.ace             ; 2 uses
  %i.aco = icmp sgt i32 %i.acn, 0
  br i1 %i.aco, label %bb.fj, label %.critedge570

bb.fj:                                            ; preds = %bb.fi
  %i.acp = trunc i32 %i.acm to i16
  store i16 %i.acp, ptr %i.acc, align 8, !tbaa !2271
  %i.acq = trunc i32 %i.acn to i16
  %i.acr = sub i16 %i.acg, %i.acq
  store i16 %i.acr, ptr %i.acf, align 4, !tbaa !2290
  br label %.critedge570

.critedge570:                                     ; preds = %bb.fe, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %bb.fj, %bb.ej, %bb.ei
  %i.acs = load i32, ptr %i.jt, align 4, !tbaa !2249
  %.not467 = icmp eq i32 %i.acs, 0
  br i1 %.not467, label %.thread601, label %bb.fk

bb.fk:                                            ; preds = %.critedge570
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.acu = load i32, ptr %i.act, align 8, !tbaa !2224
  %i.acv = icmp eq i32 %i.acu, 0
  br i1 %i.acv, label %bb.fl, label %.thread600

bb.fl:                                            ; preds = %bb.fk
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 540
end_hunk_0
