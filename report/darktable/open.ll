Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/open?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
.thread592:                                       ; preds = %.thread587
  %i.uj = load i32, ptr %i.jt, align 4, !tbaa !2248
  %.not442 = icmp eq i32 %i.uj, 0
  %i.uk = icmp eq i32 %i.oq, 18
  %or.cond658 = and i1 %i.uk, %.not442
  br i1 %or.cond658, label %bb.dn, label %.thread592.thread

bb.dn:                                            ; preds = %.thread592
  %.unpack443 = load i64, ptr %i.kx, align 8, !tbaa !2228
  %.unpack445 = load i64, ptr %.elt407, align 8, !tbaa !2228
  %i.ul = icmp eq i64 %.unpack443, ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64)
  %i.um = icmp eq i64 %.unpack445, 0
  %i.un = and i1 %i.ul, %i.um
  br i1 %i.un, label %bb.do, label %.thread592.thread

bb.do:                                            ; preds = %bb.dn
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !2218
  %i.ur = zext i16 %i.uq to i64                   ; 2 uses
  %i.us = load i16, ptr %i.uo, align 8, !tbaa !2219
  %i.ut = zext i16 %i.us to i64                   ; 2 uses
  %i.uu = shl nuw nsw i64 %i.ur, 1
  %i.uv = mul nuw nsw i64 %i.uu, %i.ut
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 381800 ; 2 uses
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !2276 ; 2 uses
  %.not446 = icmp eq i64 %i.uv, %i.ux
  br i1 %.not446, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.uy = mul nuw nsw i64 %i.ur, 7
  %i.uz = mul nuw nsw i64 %i.uy, %i.ut
  %i.va = lshr i64 %i.uz, 2
  %i.vb = icmp eq i64 %i.va, %i.ux
  br i1 %i.vb, label %bb.dq, label %.invoke

bb.dq:                                            ; preds = %bb.dp
  store i64 ptrtoint (ptr @_ZN6LibRaw19fuji_14bit_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2228
  store i64 0, ptr %.elt407, align 8, !tbaa !2228
  br label %.thread592.thread

bb.dr:                                            ; preds = %bb.do
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.vd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.vc, ptr noundef nonnull dereferenceable(6) @.str.39) #22
  %.not447 = icmp eq i32 %i.vd, 0
  br i1 %.not447, label %bb.ds, label %.thread592.thread

bb.ds:                                            ; preds = %bb.dr
  %i.ve = load ptr, ptr %i.z, align 8, !tbaa !2214 ; 2 uses
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !84
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 48
  %i.vh = load ptr, ptr %i.vg, align 8
  %i.vi = invoke noundef i64 %i.vh(ptr noundef nonnull align 8 dereferenceable(8) %i.ve)
          to label %bb.dt unwind label %bb.m, !call_target !2206

bb.dt:                                            ; preds = %bb.ds
  %i.vj = load i64, ptr %i.uw, align 8, !tbaa !2276
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !2217
  %i.vm = add nsw i64 %i.vl, %i.vj
  %i.vn = icmp slt i64 %i.vi, %i.vm
  br i1 %i.vn, label %.invoke, label %.thread592.thread

.invoke:                                          ; preds = %bb.dt, %bb.dp
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
  %2 = icmp eq <2 x i32> %i.yg, %i.ya             ; 2 uses
  %3 = extractelement <2 x i1> %2, i64 0
  %4 = extractelement <2 x i1> %2, i64 1
  %or.cond659 = select i1 %3, i1 %4, i1 false
  br i1 %or.cond659, label %.loopexit695, label %.loopexit695.loopexit

.loopexit695.loopexit:                            ; preds = %bb.eg
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.yj = trunc <2 x i32> %i.yg to <2 x i16>
  %i.yk = bitcast <2 x i32> %i.yg to <4 x i16>
  %i.yl = extractelement <4 x i16> %i.yk, i64 0
  store i16 %i.yl, ptr %i.xx, align 8, !tbaa !2221
  %i.ym = bitcast <2 x i32> %i.yg to <4 x i16>
  %i.yn = extractelement <4 x i16> %i.ym, i64 2
  %i.yo = load <2 x i16>, ptr %i.yi, align 4, !tbaa !2262
  %i.yp = sub <2 x i16> %i.xz, %i.yj
  %i.yq = add <2 x i16> %i.yp, %i.yo
  store <2 x i16> %i.yq, ptr %i.yi, align 4, !tbaa !2262
  store i16 %i.yn, ptr %i.yh, align 2, !tbaa !2220
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 548
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ys, ptr noundef nonnull align 8 dereferenceable(36) %i.yr, i64 36, i1 false), !tbaa !2266
  br label %.loopexit695

bb.eh:                                            ; preds = %bb.ef, %bb.ee
  %i.yt = load i16, ptr %i.ae, align 2, !tbaa !2246
  %.not455 = icmp eq i16 %i.yt, 0
  br i1 %.not455, label %bb.ei, label %.critedge570

bb.ei:                                            ; preds = %bb.eh
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.yv = load i32, ptr %i.yu, align 8, !tbaa !2224 ; 2 uses
  %i.yw = icmp ugt i32 %i.yv, 999
  br i1 %i.yw, label %bb.ej, label %.critedge570

bb.ej:                                            ; preds = %bb.ei
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.yy = load i16, ptr %i.yx, align 8, !tbaa !2221 ; 2 uses
  %i.yz = and i16 %i.yy, 1
  %.not456 = icmp eq i16 %i.yz, 0
  br i1 %.not456, label %bb.ek, label %.thread598

bb.ek:                                            ; preds = %bb.ej
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.zb = load i16, ptr %i.za, align 2, !tbaa !2220 ; 2 uses
  %i.zc = and i16 %i.zb, 1
  %.not457 = icmp eq i16 %i.zc, 0
  br i1 %.not457, label %.loopexit695, label %.thread598.thread

.thread598:                                       ; preds = %bb.ej
  %i.zd = add i16 %i.yy, 1
  store i16 %i.zd, ptr %i.yx, align 8, !tbaa !2221
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.zf = load i16, ptr %i.ze, align 4, !tbaa !2223
  %i.zg = add i16 %i.zf, -1
  store i16 %i.zg, ptr %i.ze, align 4, !tbaa !2223
  %.phi.trans.insert876 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %.pre877 = load i16, ptr %.phi.trans.insert876, align 2, !tbaa !2220 ; 2 uses
  %.pre887 = and i16 %.pre877, 1
  %i.zh = icmp eq i16 %.pre887, 0
  br i1 %i.zh, label %bb.el, label %.thread598.thread

.thread598.thread:                                ; preds = %bb.ek, %.thread598
  %.sroa.5.0936 = phi i32 [ 2, %.thread598 ], [ 0, %bb.ek ]
  %i.zi = phi i16 [ %.pre877, %.thread598 ], [ %i.zb, %bb.ek ]
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.zk = add i16 %i.zi, 1
  store i16 %i.zk, ptr %i.zj, align 2, !tbaa !2220
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.zm = load i16, ptr %i.zl, align 2, !tbaa !2222
  %i.zn = add i16 %i.zm, -1
  store i16 %i.zn, ptr %i.zl, align 2, !tbaa !2222
  br label %bb.el

bb.el:                                            ; preds = %.thread598.thread, %.thread598
  %.sroa.5.0937 = phi i32 [ %.sroa.5.0936, %.thread598.thread ], [ 2, %.thread598 ] ; 4 uses
  %.sroa.0.0 = phi i32 [ 1, %.thread598.thread ], [ 0, %.thread598 ] ; 7 uses
  %i.zo = insertelement <4 x i32> poison, i32 %.sroa.5.0937, i64 0
  %i.zp = shufflevector <4 x i32> %i.zo, <4 x i32> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.zq = insertelement <4 x i32> <i32 0, i32 0, i32 0, i32 poison>, i32 %.sroa.0.0, i64 3
  %i.zr = or disjoint <4 x i32> %i.zp, %i.zq
  %i.zs = add nuw nsw <4 x i32> %i.zr, <i32 0, i32 2, i32 2, i32 0>
  %i.zt = insertelement <4 x i32> <i32 4, i32 6, i32 6, i32 poison>, i32 %.sroa.0.0, i64 3 ; 2 uses
  %i.zu = or disjoint <4 x i32> %i.zp, %i.zt
  %i.zv = add nuw nsw <4 x i32> %i.zp, %i.zt
  %i.zw = insertelement <4 x i32> <i32 8, i32 10, i32 10, i32 poison>, i32 %.sroa.0.0, i64 3 ; 3 uses
  %i.zx = or disjoint <4 x i32> %i.zp, %i.zw
  %i.zy = add nuw nsw <4 x i32> %i.zp, %i.zw
  %i.zz = shufflevector <4 x i32> %i.zx, <4 x i32> %i.zy, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 2 uses
  %i.aaa = or disjoint i32 %.sroa.5.0937, 12
  %i.aab = insertelement <2 x i32> poison, i32 %.sroa.5.0937, i64 0
  %i.aac = or disjoint i32 %.sroa.0.0, %.sroa.5.0937
  %i.aad = shufflevector <4 x i32> %i.zs, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aae = shufflevector <4 x i32> %i.zu, <4 x i32> %i.zv, <8 x i32> <i32 0, i32 5, i32 6, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aaf = shufflevector <8 x i32> %i.aad, <8 x i32> %i.aae, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.aag = insertelement <8 x i32> <i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 1>, i32 %.sroa.0.0, i64 0
  %i.aah = shufflevector <8 x i32> %i.aag, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7> ; 2 uses
  %i.aai = or disjoint <8 x i32> %i.aaf, %i.aah
  %i.aaj = shl nuw nsw <8 x i32> %i.aaf, %i.aah
  %i.aak = shufflevector <8 x i32> %i.aai, <8 x i32> %i.aaj, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 4, i32 5, i32 6, i32 15>
  %i.aal = shufflevector <4 x i32> %i.zw, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>, <4 x i32> <i32 3, i32 3, i32 3, i32 7> ; 2 uses
  %i.aam = or disjoint <4 x i32> %i.zz, %i.aal
  %i.aan = shl nuw nsw <4 x i32> %i.zz, %i.aal
  %i.aao = or disjoint i32 %.sroa.0.0, %i.aaa
  %i.aap = insertelement <2 x i32> poison, i32 %.sroa.0.0, i64 0
  %i.aaq = insertelement <16 x i32> poison, i32 %i.aac, i64 0
  %i.aar = shufflevector <8 x i32> %i.aak, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aas = shufflevector <16 x i32> %i.aaq, <16 x i32> %i.aar, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aat = shufflevector <4 x i32> %i.aam, <4 x i32> %i.aan, <16 x i32> <i32 0, i32 1, i32 2, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aau = shufflevector <16 x i32> %i.aas, <16 x i32> %i.aat, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.aav = insertelement <16 x i32> %i.aau, i32 %i.aao, i64 13
  %i.aaw = add nuw nsw <2 x i32> %i.aab, <i32 14, i32 poison>
  %i.aax = and <2 x i32> %i.aaw, <i32 14, i32 poison>
  %i.aay = shufflevector <2 x i32> %i.aax, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aaz = shufflevector <2 x i32> %i.aap, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aba = or disjoint <16 x i32> %i.aay, %i.aaz
  %i.abb = shufflevector <16 x i32> %i.aav, <16 x i32> %i.aba, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17> ; 2 uses
  %i.abc = shl nuw nsw <16 x i32> %i.abb, <i32 1, i32 1, i32 1, i32 1, i32 8, i32 1, i32 1, i32 1, i32 16, i32 1, i32 1, i32 1, i32 24, i32 1, i32 1, i32 1>
  %i.abd = or disjoint <16 x i32> %i.abb, <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 poison, i32 poison, i32 poison, i32 16, i32 poison, i32 poison, i32 poison, i32 24, i32 poison, i32 poison, i32 poison>
  %i.abe = shufflevector <16 x i32> %i.abc, <16 x i32> %i.abd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 5, i32 6, i32 7, i32 24, i32 9, i32 10, i32 11, i32 28, i32 13, i32 14, i32 15>
  %i.abf = xor <16 x i32> %i.abe, <i32 2, i32 0, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2>
  %i.abg = insertelement <16 x i32> poison, i32 %i.yv, i64 0
  %i.abh = shufflevector <16 x i32> %i.abg, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.abi = lshr <16 x i32> %i.abh, %i.abf
  %i.abj = shl <16 x i32> %i.abi, <i32 2, i32 0, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.abk = and <16 x i32> %i.abj, <i32 12, i32 3, i32 48, i32 192, i32 768, i32 3072, i32 12288, i32 49152, i32 196608, i32 786432, i32 3145728, i32 12582912, i32 50331648, i32 201326592, i32 805306368, i32 -1>
  %i.abl = tail call i32 @llvm.vector.reduce.or.v16i32(<16 x i32> %i.abk)
  store i32 %i.abl, ptr %i.yu, align 8, !tbaa !2224
  br label %.loopexit695

.loopexit695:                                     ; preds = %.loopexit695.loopexit, %bb.eg, %bb.el, %bb.ek
  %.0312 = phi i32 [ 2, %bb.el ], [ 2, %bb.ek ], [ 6, %bb.eg ], [ 6, %.loopexit695.loopexit ] ; 13 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %.rhs.trunc643 = trunc nuw nsw i32 %.0312 to i16 ; 4 uses
  %i.abn = load i16, ptr %i.abm, align 2, !tbaa !2269 ; 5 uses
  %.not544 = icmp eq i16 %i.abn, 0
  br i1 %.not544, label %bb.er, label %bb.em

bb.em:                                            ; preds = %.loopexit695
  %i.abo = zext i16 %i.abn to i32
  %.not545 = icmp eq i16 %i.abn, -1
  br i1 %.not545, label %bb.er, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.abq = load i16, ptr %i.abp, align 2, !tbaa !2271 ; 3 uses
  %.off669 = add i16 %i.abq, -1
  %switch670 = icmp ult i16 %.off669, -2
  br i1 %switch670, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %bb.en
  %i.abr = zext i16 %i.abq to i32
  %.rhs.trunc956 = trunc nuw nsw i32 %.0312 to i16
  %i.abs = urem i16 %i.abn, %.rhs.trunc956
  %.not548 = icmp ne i16 %i.abs, 0
  %i.abt = icmp samesign ult i32 %.0312, %i.abr
  %or.cond571 = select i1 %.not548, i1 %i.abt, i1 false
  br i1 %or.cond571, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %i.abu = udiv i16 %i.abn, %.rhs.trunc643
  %narrow667 = add nuw i16 %i.abu, 1
  %i.abv = zext i16 %narrow667 to i32
  %i.abw = mul nuw nsw i32 %.0312, %i.abv         ; 2 uses
  %i.abx = sub nsw i32 %i.abw, %i.abo             ; 2 uses
  %i.aby = icmp sgt i32 %i.abx, 0
  br i1 %i.aby, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.abz = trunc i32 %i.abw to i16
  store i16 %i.abz, ptr %i.abm, align 2, !tbaa !2269
  %i.aca = trunc i32 %i.abx to i16
  %i.acb = sub i16 %i.abq, %i.aca
  store i16 %i.acb, ptr %i.abp, align 2, !tbaa !2271
  br label %bb.er

bb.er:                                            ; preds = %bb.en, %bb.ep, %bb.eq, %bb.eo, %bb.em, %.loopexit695
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.acd = load i16, ptr %i.acc, align 8, !tbaa !2270 ; 5 uses
  %.not549 = icmp eq i16 %i.acd, 0
  br i1 %.not549, label %bb.ex, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ace = zext i16 %i.acd to i32
  %.not550 = icmp eq i16 %i.acd, -1
  br i1 %.not550, label %bb.ex, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.acg = load i16, ptr %i.acf, align 4, !tbaa !2289 ; 3 uses
  %.off671 = add i16 %i.acg, -1
  %switch672 = icmp ult i16 %.off671, -2
  br i1 %switch672, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %bb.et
  %i.ach = zext i16 %i.acg to i32
  %.rhs.trunc953 = trunc nuw nsw i32 %.0312 to i16
  %i.aci = urem i16 %i.acd, %.rhs.trunc953
  %.not553 = icmp ne i16 %i.aci, 0
  %i.acj = icmp samesign ult i32 %.0312, %i.ach
  %or.cond572 = select i1 %.not553, i1 %i.acj, i1 false
  br i1 %or.cond572, label %bb.ev, label %bb.ex

end_hunk_0
