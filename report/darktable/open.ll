Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/open?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.vu = load i16, ptr %i.vt, align 2, !tbaa !2270 ; 4 uses
  %.not449 = icmp eq i16 %i.vu, -1
  br i1 %.not449, label %bb.ef, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.vv = zext i16 %i.vu to i32
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !2272 ; 4 uses
  %i.vy = zext i16 %i.vx to i32                   ; 2 uses
  %i.vz = add nuw nsw i32 %i.vy, %i.vv
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.wb = load i16, ptr %i.wa, align 2, !tbaa !2218
  %i.wc = zext i16 %i.wb to i32
  %.not450 = icmp samesign ugt i32 %i.vz, %i.wc
  br i1 %.not450, label %bb.ef, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.we = load i16, ptr %i.wd, align 8, !tbaa !2271 ; 4 uses
  %.not451 = icmp eq i16 %i.we, -1
  br i1 %.not451, label %bb.ef, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.wf = zext i16 %i.we to i32
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.wh = load i16, ptr %i.wg, align 4, !tbaa !2290 ; 4 uses
  %i.wi = zext i16 %i.wh to i32                   ; 2 uses
  %i.wj = add nuw nsw i32 %i.wi, %i.wf
  %i.wk = load i16, ptr %i.vp, align 8, !tbaa !2219
  %i.wl = zext i16 %i.wk to i32
  %.not452 = icmp samesign ugt i32 %i.wj, %i.wl
  %.not453 = icmp eq i16 %i.vx, 0
  %or.cond566 = or i1 %.not453, %.not452
  %.not454 = icmp eq i16 %i.wh, 0
  %or.cond567 = or i1 %.not454, %or.cond566
  br i1 %or.cond567, label %bb.ef, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 3 uses
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !2270
  %i.wo = icmp eq i16 %i.wn, -1
  br i1 %i.wo, label %bb.ea, label %bb.ef

bb.ea:                                            ; preds = %bb.dz
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.wq = load i16, ptr %i.wp, align 8, !tbaa !2271
  %i.wr = icmp eq i16 %i.wq, -1
  br i1 %i.wr, label %bb.eb, label %bb.ef

bb.eb:                                            ; preds = %bb.ea
  %i.ws = uitofp i16 %i.vx to float               ; 2 uses
  %i.wt = uitofp i16 %i.wh to float               ; 2 uses
  %i.wu = fdiv reassoc nsz arcp contract afn float %i.ws, %i.wt ; 2 uses
  %i.wv = uitofp reassoc nsz arcp contract afn nneg i16 %i.vr to float
  %i.ww = fmul reassoc nnan nsz arcp contract afn float %i.wv, 1.000000e-03 ; 4 uses
  %i.wx = fdiv reassoc nsz arcp contract afn float %i.wu, %i.ww
  %i.wy = fpext reassoc nsz arcp contract afn float %i.wx to double ; 2 uses
  %i.wz = fcmp reassoc nsz arcp contract afn olt double %i.wy, f0x3FEF5C28F5C28F5C
  %i.xa = fcmp reassoc nsz arcp contract afn ogt double %i.wy, 1.020000e+00
  %or.cond568 = or i1 %i.wz, %i.xa
  br i1 %or.cond568, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %bb.eb
  %i.xb = fcmp reassoc nsz arcp contract afn ogt float %i.ww, %i.wu
  br i1 %i.xb, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.xc = fdiv reassoc nsz arcp contract afn float %i.ws, %i.ww
  %i.xd = fptosi float %i.xc to i32               ; 2 uses
  %i.xe = sub nsw i32 %i.wi, %i.xd
  %i.xf = sdiv i32 %i.xe, 2
  %i.xg = trunc i32 %i.xf to i16
  %i.xh = add i16 %i.we, %i.xg
  store i16 %i.xh, ptr %i.wp, align 8, !tbaa !2271
  %i.xi = trunc i32 %i.xd to i16
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i16 %i.xi, ptr %i.xj, align 4, !tbaa !2290
  store i16 %i.vu, ptr %i.wm, align 2, !tbaa !2270
  br label %.sink.split

bb.ee:                                            ; preds = %bb.ec
  %i.xk = fmul reassoc nnan nsz arcp contract afn float %i.ww, %i.wt
  %i.xl = fptosi float %i.xk to i32               ; 2 uses
  %i.xm = sub nsw i32 %i.vy, %i.xl
  %i.xn = sdiv i32 %i.xm, 2
  %i.xo = trunc i32 %i.xn to i16
  %i.xp = add i16 %i.vu, %i.xo
  store i16 %i.xp, ptr %i.wm, align 2, !tbaa !2270
  %i.xq = trunc i32 %i.xl to i16
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 194
  store i16 %i.xq, ptr %i.xr, align 2, !tbaa !2272
  store i16 %i.we, ptr %i.wp, align 8, !tbaa !2271
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ed, %bb.ee
  %.sink957 = phi i64 [ 196, %bb.ee ], [ 194, %bb.ed ]
  %.sink = phi i16 [ %i.wh, %bb.ee ], [ %i.vx, %bb.ed ]
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 %.sink957
  store i16 %.sink, ptr %i.xs, align 2, !tbaa !2263
  br label %bb.ef

bb.ef:                                            ; preds = %.sink.split, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %.thread592.thread
  %i.xt = load i32, ptr %i.ar, align 4, !tbaa !2250 ; 7 uses
  %i.xu = icmp eq i32 %i.xt, 18                   ; 2 uses
  br i1 %i.xu, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !2224
  %i.xx = icmp eq i32 %i.xw, 9
  br i1 %i.xx, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.xz = load <2 x i16>, ptr %i.xy, align 8, !tbaa !2263
  %i.ya = freeze <2 x i16> %i.xz                  ; 4 uses
  %i.yb = zext <2 x i16> %i.ya to <2 x i32>       ; 2 uses
  %i.yc = urem <2 x i16> %i.ya, splat (i16 6)     ; 2 uses
  %i.yd = icmp eq <2 x i16> %i.yc, zeroinitializer
  %i.ye = sub nuw <2 x i16> %i.ya, %i.yc
  %i.yf = zext <2 x i16> %i.ye to <2 x i32>
  %i.yg = add nuw nsw <2 x i32> %i.yf, splat (i32 6)
  %i.yh = select <2 x i1> %i.yd, <2 x i32> %i.yb, <2 x i32> %i.yg ; 4 uses
  %i.yi = icmp eq <2 x i32> %i.yh, %i.yb          ; 2 uses
  %i.yj = extractelement <2 x i1> %i.yi, i64 0
  %i.yk = extractelement <2 x i1> %i.yi, i64 1
  %or.cond659 = select i1 %i.yj, i1 %i.yk, i1 false
  br i1 %or.cond659, label %.loopexit695, label %.loopexit695.loopexit

.loopexit695.loopexit:                            ; preds = %bb.eh
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.yn = trunc <2 x i32> %i.yh to <2 x i16>
  %i.yo = bitcast <2 x i32> %i.yh to <4 x i16>
  %i.yp = extractelement <4 x i16> %i.yo, i64 0
  store i16 %i.yp, ptr %i.xy, align 8, !tbaa !2221
  %i.yq = bitcast <2 x i32> %i.yh to <4 x i16>
  %i.yr = extractelement <4 x i16> %i.yq, i64 2
  %i.ys = load <2 x i16>, ptr %i.ym, align 4, !tbaa !2263
  %i.yt = sub <2 x i16> %i.ya, %i.yn
  %i.yu = add <2 x i16> %i.yt, %i.ys
  store <2 x i16> %i.yu, ptr %i.ym, align 4, !tbaa !2263
  store i16 %i.yr, ptr %i.yl, align 2, !tbaa !2220
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 548
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.yw, ptr noundef nonnull align 8 dereferenceable(36) %i.yv, i64 36, i1 false), !tbaa !2267
  br label %.loopexit695

bb.ei:                                            ; preds = %bb.eg, %bb.ef
  %i.yx = load i16, ptr %i.ae, align 2, !tbaa !2247
  %.not455 = icmp eq i16 %i.yx, 0
  br i1 %.not455, label %bb.ej, label %.critedge570

bb.ej:                                            ; preds = %bb.ei
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.yz = load i32, ptr %i.yy, align 8, !tbaa !2224 ; 2 uses
  %i.za = icmp ugt i32 %i.yz, 999
  br i1 %i.za, label %bb.ek, label %.critedge570

bb.ek:                                            ; preds = %bb.ej
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.zc = load i16, ptr %i.zb, align 8, !tbaa !2221 ; 2 uses
  %i.zd = and i16 %i.zc, 1
  %.not456 = icmp eq i16 %i.zd, 0
  br i1 %.not456, label %bb.el, label %.thread598

bb.el:                                            ; preds = %bb.ek
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.zf = load i16, ptr %i.ze, align 2, !tbaa !2220 ; 2 uses
  %i.zg = and i16 %i.zf, 1
  %.not457 = icmp eq i16 %i.zg, 0
  br i1 %.not457, label %.loopexit695, label %.thread598.thread

.thread598:                                       ; preds = %bb.ek
  %i.zh = add i16 %i.zc, 1
  store i16 %i.zh, ptr %i.zb, align 8, !tbaa !2221
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.zj = load i16, ptr %i.zi, align 4, !tbaa !2223
  %i.zk = add i16 %i.zj, -1
  store i16 %i.zk, ptr %i.zi, align 4, !tbaa !2223
  %.phi.trans.insert876 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %.pre877 = load i16, ptr %.phi.trans.insert876, align 2, !tbaa !2220 ; 2 uses
  %.pre885 = and i16 %.pre877, 1
  %i.zl = icmp eq i16 %.pre885, 0
  br i1 %i.zl, label %bb.em, label %.thread598.thread

.thread598.thread:                                ; preds = %bb.el, %.thread598
  %.sroa.5.0934 = phi i32 [ 2, %.thread598 ], [ 0, %bb.el ]
  %i.zm = phi i16 [ %.pre877, %.thread598 ], [ %i.zf, %bb.el ]
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.zo = add i16 %i.zm, 1
  store i16 %i.zo, ptr %i.zn, align 2, !tbaa !2220
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.zq = load i16, ptr %i.zp, align 2, !tbaa !2222
  %i.zr = add i16 %i.zq, -1
  store i16 %i.zr, ptr %i.zp, align 2, !tbaa !2222
  br label %bb.em

bb.em:                                            ; preds = %.thread598.thread, %.thread598
  %.sroa.5.0935 = phi i32 [ %.sroa.5.0934, %.thread598.thread ], [ 2, %.thread598 ] ; 4 uses
  %.sroa.0.0 = phi i32 [ 1, %.thread598.thread ], [ 0, %.thread598 ] ; 7 uses
  %i.zs = insertelement <4 x i32> poison, i32 %.sroa.5.0935, i64 0
  %i.zt = shufflevector <4 x i32> %i.zs, <4 x i32> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.zu = insertelement <4 x i32> <i32 0, i32 0, i32 0, i32 poison>, i32 %.sroa.0.0, i64 3
  %i.zv = or disjoint <4 x i32> %i.zt, %i.zu
  %i.zw = add nuw nsw <4 x i32> %i.zv, <i32 0, i32 2, i32 2, i32 0>
  %i.zx = insertelement <4 x i32> <i32 4, i32 6, i32 6, i32 poison>, i32 %.sroa.0.0, i64 3 ; 2 uses
  %i.zy = or disjoint <4 x i32> %i.zt, %i.zx
  %i.zz = add nuw nsw <4 x i32> %i.zt, %i.zx
  %i.aaa = insertelement <4 x i32> <i32 8, i32 10, i32 10, i32 poison>, i32 %.sroa.0.0, i64 3 ; 3 uses
  %i.aab = or disjoint <4 x i32> %i.zt, %i.aaa
  %i.aac = add nuw nsw <4 x i32> %i.zt, %i.aaa
  %i.aad = shufflevector <4 x i32> %i.aab, <4 x i32> %i.aac, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 2 uses
  %2 = insertelement <2 x i32> poison, i32 %.sroa.5.0935, i64 0
  %3 = shufflevector <2 x i32> %2, <2 x i32> poison, <2 x i32> zeroinitializer
  %4 = add <2 x i32> %3, <i32 12, i32 14>
  %5 = add nuw nsw i32 %.sroa.5.0935, 14
  %6 = and i32 %5, 14
  %7 = or disjoint i32 %.sroa.0.0, %6
  %8 = and <2 x i32> %4, <i32 -1, i32 14>
  %9 = insertelement <2 x i32> poison, i32 %.sroa.0.0, i64 0
  %10 = shufflevector <2 x i32> %9, <2 x i32> poison, <2 x i32> zeroinitializer
  %11 = or disjoint <2 x i32> %10, %8
  %12 = shufflevector <4 x i32> %i.aaa, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>, <4 x i32> <i32 3, i32 3, i32 3, i32 7> ; 2 uses
  %13 = or disjoint <4 x i32> %i.aad, %12
  %14 = shl nuw nsw <4 x i32> %i.aad, %12
  %15 = shufflevector <4 x i32> %i.zw, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %16 = shufflevector <4 x i32> %i.zy, <4 x i32> %i.zz, <8 x i32> <i32 0, i32 5, i32 6, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <8 x i32> %15, <8 x i32> %16, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %18 = insertelement <8 x i32> <i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 1>, i32 %.sroa.0.0, i64 0
  %19 = shufflevector <8 x i32> %18, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7> ; 2 uses
  %20 = or disjoint <8 x i32> %17, %19
  %21 = shl nuw nsw <8 x i32> %17, %19
  %22 = shufflevector <8 x i32> %20, <8 x i32> %21, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 4, i32 5, i32 6, i32 15>
  %i.aae = or disjoint i32 %.sroa.0.0, %.sroa.5.0935
  %23 = insertelement <16 x i32> poison, i32 %i.aae, i64 0
  %i.aaf = shufflevector <8 x i32> %22, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aag = shufflevector <16 x i32> %23, <16 x i32> %i.aaf, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aah = shufflevector <4 x i32> %13, <4 x i32> %14, <16 x i32> <i32 0, i32 1, i32 2, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aai = shufflevector <16 x i32> %i.aag, <16 x i32> %i.aah, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <2 x i32> %11, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %25 = shufflevector <16 x i32> %i.aai, <16 x i32> %24, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %26 = insertelement <16 x i32> %25, i32 %7, i64 15 ; 2 uses
  %i.aaj = shl nuw nsw <16 x i32> %26, <i32 1, i32 1, i32 1, i32 1, i32 8, i32 1, i32 1, i32 1, i32 16, i32 1, i32 1, i32 1, i32 24, i32 1, i32 1, i32 1>
  %i.aak = or disjoint <16 x i32> %26, <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 poison, i32 poison, i32 poison, i32 16, i32 poison, i32 poison, i32 poison, i32 24, i32 poison, i32 poison, i32 poison>
  %i.aal = shufflevector <16 x i32> %i.aaj, <16 x i32> %i.aak, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 5, i32 6, i32 7, i32 24, i32 9, i32 10, i32 11, i32 28, i32 13, i32 14, i32 15>
  %i.aam = xor <16 x i32> %i.aal, <i32 2, i32 0, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2>
  %i.aan = insertelement <16 x i32> poison, i32 %i.yz, i64 0
  %i.aao = shufflevector <16 x i32> %i.aan, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aap = lshr <16 x i32> %i.aao, %i.aam
  %i.aaq = shl <16 x i32> %i.aap, <i32 2, i32 0, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.aar = and <16 x i32> %i.aaq, <i32 12, i32 3, i32 48, i32 192, i32 768, i32 3072, i32 12288, i32 49152, i32 196608, i32 786432, i32 3145728, i32 12582912, i32 50331648, i32 201326592, i32 805306368, i32 -1>
  %i.aas = tail call i32 @llvm.vector.reduce.or.v16i32(<16 x i32> %i.aar)
  store i32 %i.aas, ptr %i.yy, align 8, !tbaa !2224
  br label %.loopexit695

.loopexit695:                                     ; preds = %.loopexit695.loopexit, %bb.eh, %bb.em, %bb.el
  %.0312 = phi i32 [ 2, %bb.em ], [ 2, %bb.el ], [ 6, %bb.eh ], [ 6, %.loopexit695.loopexit ] ; 13 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %.rhs.trunc643 = trunc nuw nsw i32 %.0312 to i16 ; 4 uses
  %i.aau = load i16, ptr %i.aat, align 2, !tbaa !2270 ; 5 uses
  %.not544 = icmp eq i16 %i.aau, 0
  br i1 %.not544, label %bb.es, label %bb.en

bb.en:                                            ; preds = %.loopexit695
  %i.aav = zext i16 %i.aau to i32
  %.not545 = icmp eq i16 %i.aau, -1
  br i1 %.not545, label %bb.es, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.aax = load i16, ptr %i.aaw, align 2, !tbaa !2272 ; 3 uses
  %.off669 = add i16 %i.aax, -1
  %switch670 = icmp ult i16 %.off669, -2
  br i1 %switch670, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.aay = zext i16 %i.aax to i32
  %.rhs.trunc954 = trunc nuw nsw i32 %.0312 to i16
  %i.aaz = urem i16 %i.aau, %.rhs.trunc954
  %.not548 = icmp ne i16 %i.aaz, 0
  %i.aba = icmp samesign ult i32 %.0312, %i.aay
  %or.cond571 = select i1 %.not548, i1 %i.aba, i1 false
  br i1 %or.cond571, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.abb = udiv i16 %i.aau, %.rhs.trunc643
  %narrow667 = add nuw i16 %i.abb, 1
  %i.abc = zext i16 %narrow667 to i32
  %i.abd = mul nuw nsw i32 %.0312, %i.abc         ; 2 uses
  %i.abe = sub nsw i32 %i.abd, %i.aav             ; 2 uses
  %i.abf = icmp sgt i32 %i.abe, 0
  br i1 %i.abf, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.abg = trunc i32 %i.abd to i16
  store i16 %i.abg, ptr %i.aat, align 2, !tbaa !2270
  %i.abh = trunc i32 %i.abe to i16
  %i.abi = sub i16 %i.aax, %i.abh
  store i16 %i.abi, ptr %i.aaw, align 2, !tbaa !2272
  br label %bb.es

bb.es:                                            ; preds = %bb.eo, %bb.eq, %bb.er, %bb.ep, %bb.en, %.loopexit695
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.abk = load i16, ptr %i.abj, align 8, !tbaa !2271 ; 5 uses
  %.not549 = icmp eq i16 %i.abk, 0
  br i1 %.not549, label %bb.ey, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.abl = zext i16 %i.abk to i32
  %.not550 = icmp eq i16 %i.abk, -1
  br i1 %.not550, label %bb.ey, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.abn = load i16, ptr %i.abm, align 4, !tbaa !2290 ; 3 uses
  %.off671 = add i16 %i.abn, -1
  %switch672 = icmp ult i16 %.off671, -2
  br i1 %switch672, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.abo = zext i16 %i.abn to i32
  %.rhs.trunc951 = trunc nuw nsw i32 %.0312 to i16
  %i.abp = urem i16 %i.abk, %.rhs.trunc951
  %.not553 = icmp ne i16 %i.abp, 0
  %i.abq = icmp samesign ult i32 %.0312, %i.abo
  %or.cond572 = select i1 %.not553, i1 %i.abq, i1 false
  br i1 %or.cond572, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.abr = udiv i16 %i.abk, %.rhs.trunc643
  %narrow668 = add nuw i16 %i.abr, 1
  %i.abs = zext i16 %narrow668 to i32
  %i.abt = mul nuw nsw i32 %.0312, %i.abs         ; 2 uses
  %i.abu = sub nsw i32 %i.abt, %i.abl             ; 2 uses
  %i.abv = icmp sgt i32 %i.abu, 0
  br i1 %i.abv, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.abw = trunc i32 %i.abt to i16
  store i16 %i.abw, ptr %i.abj, align 8, !tbaa !2271
  %i.abx = trunc i32 %i.abu to i16
  %i.aby = sub i16 %i.abn, %i.abx
  store i16 %i.aby, ptr %i.abm, align 4, !tbaa !2290
  br label %bb.ey

bb.ey:                                            ; preds = %bb.eu, %bb.ew, %bb.ex, %bb.es, %bb.et, %bb.ev
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.aca = load i16, ptr %i.abz, align 2, !tbaa !2270 ; 5 uses
  %.not544.1 = icmp eq i16 %i.aca, 0
  br i1 %.not544.1, label %bb.fe, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.acb = zext i16 %i.aca to i32
  %.not545.1 = icmp eq i16 %i.aca, -1
  br i1 %.not545.1, label %bb.fe, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 194 ; 2 uses
  %i.acd = load i16, ptr %i.acc, align 2, !tbaa !2272 ; 3 uses
  %.off669.1 = add i16 %i.acd, -1
  %switch670.1 = icmp ult i16 %.off669.1, -2
  br i1 %switch670.1, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.ace = zext i16 %i.acd to i32
  %.rhs.trunc948 = trunc nuw nsw i32 %.0312 to i16
  %i.acf = urem i16 %i.aca, %.rhs.trunc948
  %.not548.1 = icmp ne i16 %i.acf, 0
  %i.acg = icmp samesign ult i32 %.0312, %i.ace
  %or.cond571.1 = select i1 %.not548.1, i1 %i.acg, i1 false
  br i1 %or.cond571.1, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %bb.fb
  %i.ach = udiv i16 %i.aca, %.rhs.trunc643
  %narrow667.1 = add nuw i16 %i.ach, 1
  %i.aci = zext i16 %narrow667.1 to i32
  %i.acj = mul nuw nsw i32 %.0312, %i.aci         ; 2 uses
  %i.ack = sub nsw i32 %i.acj, %i.acb             ; 2 uses
  %i.acl = icmp sgt i32 %i.ack, 0
  br i1 %i.acl, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.acm = trunc i32 %i.acj to i16
  store i16 %i.acm, ptr %i.abz, align 2, !tbaa !2270
  %i.acn = trunc i32 %i.ack to i16
  %i.aco = sub i16 %i.acd, %i.acn
  store i16 %i.aco, ptr %i.acc, align 2, !tbaa !2272
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.acq = load i16, ptr %i.acp, align 8, !tbaa !2271 ; 5 uses
  %.not549.1 = icmp eq i16 %i.acq, 0
  br i1 %.not549.1, label %.critedge570, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.acr = zext i16 %i.acq to i32
  %.not550.1 = icmp eq i16 %i.acq, -1
  br i1 %.not550.1, label %.critedge570, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.act = load i16, ptr %i.acs, align 4, !tbaa !2290 ; 3 uses
  %.off671.1 = add i16 %i.act, -1
  %switch672.1 = icmp ult i16 %.off671.1, -2
  br i1 %switch672.1, label %bb.fh, label %.critedge570

bb.fh:                                            ; preds = %bb.fg
  %i.acu = zext i16 %i.act to i32
  %.rhs.trunc = trunc nuw nsw i32 %.0312 to i16
  %i.acv = urem i16 %i.acq, %.rhs.trunc
  %.not553.1 = icmp ne i16 %i.acv, 0
  %i.acw = icmp samesign ult i32 %.0312, %i.acu
  %or.cond572.1 = select i1 %.not553.1, i1 %i.acw, i1 false
  br i1 %or.cond572.1, label %bb.fi, label %.critedge570

bb.fi:                                            ; preds = %bb.fh
  %i.acx = udiv i16 %i.acq, %.rhs.trunc643
  %narrow668.1 = add nuw i16 %i.acx, 1
  %i.acy = zext i16 %narrow668.1 to i32
  %i.acz = mul nuw nsw i32 %.0312, %i.acy         ; 2 uses
  %i.ada = sub nsw i32 %i.acz, %i.acr             ; 2 uses
  %i.adb = icmp sgt i32 %i.ada, 0
  br i1 %i.adb, label %bb.fj, label %.critedge570

bb.fj:                                            ; preds = %bb.fi
  %i.adc = trunc i32 %i.acz to i16
  store i16 %i.adc, ptr %i.acp, align 8, !tbaa !2271
  %i.add = trunc i32 %i.ada to i16
  %i.ade = sub i16 %i.act, %i.add
  store i16 %i.ade, ptr %i.acs, align 4, !tbaa !2290
  br label %.critedge570

.critedge570:                                     ; preds = %bb.fe, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %bb.fj, %bb.ej, %bb.ei
  %i.adf = load i32, ptr %i.jt, align 4, !tbaa !2249
  %.not467 = icmp eq i32 %i.adf, 0
  br i1 %.not467, label %.thread601, label %bb.fk

bb.fk:                                            ; preds = %.critedge570
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.adh = load i32, ptr %i.adg, align 8, !tbaa !2224
  %i.adi = icmp eq i32 %i.adh, 0
  br i1 %i.adi, label %bb.fl, label %.thread600

end_hunk_0
