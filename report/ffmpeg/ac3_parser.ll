begin_hunk_0_@ff_ac3_parse_header:bb.a
  %i.tg = load i32, ptr %i.tf, align 1, !tbaa !9
  %i.th = tail call i32 @llvm.bswap.i32(i32 %i.tg)
  %i.ti = and i32 %i.sz, 7
  %i.tj = shl i32 %i.th, %i.ti
  %i.tk = lshr i32 %i.tj, 30                      ; 3 uses
  %i.tl = add i32 %i.sz, 2
  %i.tm = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.tl) ; 4 uses
  store i32 %i.tm, ptr %i.a, align 8, !tbaa !12
  br i1 %i.tc, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %.not113 = icmp eq i32 %i.tk, 3
  br i1 %.not113, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.tn = zext nneg i32 %i.tk to i64
  %i.to = getelementptr inbounds nuw [4 x i8], ptr @ff_ac3_sample_rate_tab, i64 %i.tn
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !34
  %i.tq = sdiv i32 %i.tp, 2
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.tr = zext nneg i32 %i.tk to i64
  %i.ts = getelementptr inbounds nuw i8, ptr @eac3_blocks, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !9
  %i.tu = zext i8 %i.tt to i32                    ; 2 uses
  store i32 %i.tu, ptr %i.aj, align 4, !tbaa !23
  %i.tv = zext nneg i32 %i.sx to i64
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr @ff_ac3_sample_rate_tab, i64 %i.tv
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !34
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.sink150 = phi i32 [ %i.tq, %bb.ab ], [ %i.tx, %bb.ac ] ; 2 uses
  %.sink = phi i8 [ 1, %bb.ab ], [ 0, %bb.ac ]
  %i.ty = phi i32 [ 6, %bb.ab ], [ %i.tu, %bb.ac ] ; 6 uses
  %i.tz = trunc i32 %.sink150 to i16
  %i.ua = getelementptr inbounds nuw i8, ptr %1, i64 38
  store i16 %i.tz, ptr %i.ua, align 2, !tbaa !35
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 %.sink, ptr %i.ub, align 4, !tbaa !33
  %i.uc = lshr i32 %i.tm, 3
  %i.ud = zext nneg i32 %i.uc to i64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ud
  %i.uf = load i32, ptr %i.ue, align 1, !tbaa !9
  %i.ug = tail call i32 @llvm.bswap.i32(i32 %i.uf)
  %i.uh = and i32 %i.tm, 7
  %i.ui = shl i32 %i.ug, %i.uh                    ; 5 uses
  %i.uj = lshr i32 %i.ui, 29                      ; 4 uses
  %i.uk = add i32 %i.tm, 3
  %i.ul = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.uk) ; 5 uses
  store i32 %i.ul, ptr %i.a, align 8, !tbaa !12
  %i.um = trunc nuw nsw i32 %i.uj to i8           ; 4 uses
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.um, ptr %i.un, align 1, !tbaa !31
  %i.uo = lshr i32 %i.ul, 3
  %i.up = zext nneg i32 %i.uo to i64
  %i.uq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.up
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !9
  %i.us = icmp slt i32 %i.ul, %i.d
  %i.ut = zext i1 %i.us to i32
  %spec.select.i118 = add i32 %i.ul, %i.ut        ; 2 uses
  %i.uu = zext i8 %i.ur to i32
  %i.uv = and i32 %i.ul, 7
  %i.uw = shl nuw nsw i32 %i.uu, %i.uv
  store i32 %spec.select.i118, ptr %i.a, align 8, !tbaa !12
  %i.ux = trunc i32 %i.uw to i8                   ; 2 uses
  %i.uy = lshr i8 %i.ux, 7                        ; 4 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.uy, ptr %i.uz, align 8, !tbaa !32
  %i.va = shl nuw i16 %i.sn, 3
  %i.vb = zext i16 %i.va to i32
  %i.vc = and i32 %.sink150, 65535
  %.lhs.trunc = mul nuw nsw i32 %i.vc, %i.vb
  %i.vd = shl nuw nsw i32 %i.ty, 8
  %i.ve = udiv i32 %.lhs.trunc, %i.vd
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.ve, ptr %i.vf, align 8, !tbaa !37
  %i.vg = zext nneg i32 %i.uj to i64
  %i.vh = getelementptr inbounds nuw i8, ptr @ff_ac3_channels_tab, i64 %i.vg
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !9
  %i.vj = add i8 %i.vi, %i.uy
  %i.vk = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i8 %i.vj, ptr %i.vk, align 4, !tbaa !38
  %.not.i119 = icmp eq i32 %i.rz, 0
  br i1 %.not.i119, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.vl = add i32 %spec.select.i118, 5
  %i.vm = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.vl)
  store i32 %i.vm, ptr %i.a, align 8, !tbaa !12
  %.not131.i = icmp eq i32 %i.uj, 0
  %i.vn = select i1 %.not131.i, i32 2, i32 1      ; 4 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 61
  %wide.trip.count.i = zext nneg i32 %i.vn to i64
  br label %bb.ag

bb.af:                                            ; preds = %bb.ai
  %i.vr = icmp eq i32 %i.rm, 1
  %.pre.i123 = load i32, ptr %i.a, align 8, !tbaa !12 ; 5 uses
  %.pre210.i = load ptr, ptr %0, align 8, !tbaa !17 ; 28 uses
  %.pre211.i = load i32, ptr %i.c, align 8, !tbaa !16 ; 43 uses
  br i1 %i.vr, label %bb.aj, label %bb.al

bb.ag:                                            ; preds = %bb.ai, %bb.ae
  %indvars.iv.i121 = phi i64 [ 0, %bb.ae ], [ %indvars.iv.next.i, %bb.ai ] ; 4 uses
  %i.vs = load i32, ptr %i.a, align 8, !tbaa !12  ; 3 uses
  %i.vt = load i32, ptr %i.c, align 8, !tbaa !16
  %i.vu = load ptr, ptr %0, align 8, !tbaa !17
  %i.vv = lshr i32 %i.vs, 3
  %i.vw = zext nneg i32 %i.vv to i64
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 1, !tbaa !9
  %i.vz = tail call i32 @llvm.bswap.i32(i32 %i.vy)
  %i.wa = and i32 %i.vs, 7
  %i.wb = shl i32 %i.vz, %i.wa
  %i.wc = lshr i32 %i.wb, 27
  %i.wd = add i32 %i.vs, 5
  %i.we = tail call i32 @llvm.umin.i32(i32 %i.vt, i32 %i.wd)
  store i32 %i.we, ptr %i.a, align 8, !tbaa !12
  %i.wf = trunc nuw nsw i32 %i.wc to i8
  %i.wg = sub nsw i8 0, %i.wf
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vo, i64 %indvars.iv.i121
  store i8 %i.wg, ptr %i.wh, align 1, !tbaa !9
  %i.wi = load i32, ptr %i.a, align 8, !tbaa !12  ; 4 uses
  %i.wj = load ptr, ptr %0, align 8, !tbaa !17
  %i.wk = lshr i32 %i.wi, 3
  %i.wl = zext nneg i32 %i.wk to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.wl
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !9
  %i.wo = load i32, ptr %i.c, align 8, !tbaa !16
  %i.wp = icmp slt i32 %i.wi, %i.wo
  %i.wq = zext i1 %i.wp to i32
  %spec.select.i.i122 = add i32 %i.wi, %i.wq
  %i.wr = zext i8 %i.wn to i32
  %i.ws = and i32 %i.wi, 7
  %i.wt = shl nuw nsw i32 %i.wr, %i.ws
  %i.wu = lshr i32 %i.wt, 7
  store i32 %spec.select.i.i122, ptr %i.a, align 8, !tbaa !12
  %i.wv = and i32 %i.wu, 1                        ; 2 uses
  %i.ww = trunc nuw nsw i32 %i.wv to i8
  %i.wx = getelementptr inbounds nuw i8, ptr %i.vp, i64 %indvars.iv.i121
  store i8 %i.ww, ptr %i.wx, align 1, !tbaa !9
  %.not155.i = icmp eq i32 %i.wv, 0
  br i1 %.not155.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.wy = load i32, ptr %i.a, align 8, !tbaa !12  ; 3 uses
  %i.wz = load i32, ptr %i.c, align 8, !tbaa !16
  %i.xa = load ptr, ptr %0, align 8, !tbaa !17
  %i.xb = lshr i32 %i.wy, 3
  %i.xc = zext nneg i32 %i.xb to i64
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.xc
  %i.xe = load i32, ptr %i.xd, align 1, !tbaa !9
  %i.xf = tail call i32 @llvm.bswap.i32(i32 %i.xe)
  %i.xg = and i32 %i.wy, 7
  %i.xh = shl i32 %i.xf, %i.xg
  %i.xi = lshr i32 %i.xh, 24
  %i.xj = add i32 %i.wy, 8
  %i.xk = tail call i32 @llvm.umin.i32(i32 %i.wz, i32 %i.xj)
  store i32 %i.xk, ptr %i.a, align 8, !tbaa !12
  %i.xl = trunc nuw i32 %i.xi to i8
  %i.xm = getelementptr inbounds nuw i8, ptr %i.vq, i64 %indvars.iv.i121
  store i8 %i.xl, ptr %i.xm, align 1, !tbaa !9
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i121, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.af, label %bb.ag, !llvm.loop !50

bb.aj:                                            ; preds = %bb.af
  %i.xn = lshr i32 %.pre.i123, 3
  %i.xo = zext nneg i32 %i.xn to i64
  %i.xp = getelementptr inbounds nuw i8, ptr %.pre210.i, i64 %i.xo
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !9
  %i.xr = icmp slt i32 %.pre.i123, %.pre211.i
  %i.xs = zext i1 %i.xr to i32
  %spec.select.i158.i = add i32 %.pre.i123, %i.xs ; 5 uses
  %i.xt = zext i8 %i.xq to i32
  %i.xu = and i32 %.pre.i123, 7
  %i.xv = shl nuw nsw i32 %i.xt, %i.xu
  %i.xw = lshr i32 %i.xv, 7
  store i32 %spec.select.i158.i, ptr %i.a, align 8, !tbaa !12
  %i.xx = and i32 %i.xw, 1                        ; 2 uses
  %i.xy = trunc nuw nsw i32 %i.xx to i8
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %i.xy, ptr %i.xz, align 8, !tbaa !51
  %.not132.i = icmp eq i32 %i.xx, 0
  br i1 %.not132.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ya = lshr i32 %spec.select.i158.i, 3
  %i.yb = zext nneg i32 %i.ya to i64
  %i.yc = getelementptr inbounds nuw i8, ptr %.pre210.i, i64 %i.yb
  %i.yd = load i32, ptr %i.yc, align 1, !tbaa !9
  %i.ye = tail call i32 @llvm.bswap.i32(i32 %i.yd)
  %i.yf = and i32 %spec.select.i158.i, 7
  %i.yg = shl i32 %i.ye, %i.yf                    ; 5 uses
  %i.yh = add i32 %spec.select.i158.i, 16
  %i.yi = tail call i32 @llvm.umin.i32(i32 %.pre211.i, i32 %i.yh) ; 2 uses
  store i32 %i.yi, ptr %i.a, align 8, !tbaa !12
  %.not154.i = icmp sgt i32 %i.yg, -1
  %i.yj = load i64, ptr getelementptr inbounds nuw (i8, ptr @ff_eac3_custom_channel_map_locations, i64 8), align 8
  %spec.select.i127 = select i1 %.not154.i, i64 0, i64 %i.yj
  %i.yk = and i32 %i.yg, 1073741824
  %.not154.1.i = icmp eq i32 %i.yk, 0
  %i.yl = load i64, ptr getelementptr inbounds nuw (i8, ptr @ff_eac3_custom_channel_map_locations, i64 24), align 8
  %i.ym = select i1 %.not154.1.i, i64 0, i64 %i.yl
  %2 = insertelement <8 x i32> poison, i32 %i.yg, i64 0
  %3 = shufflevector <8 x i32> %2, <8 x i32> poison, <8 x i32> zeroinitializer
  %4 = and <8 x i32> %3, <i32 536870912, i32 268435456, i32 134217728, i32 67108864, i32 33554432, i32 16777216, i32 8388608, i32 4194304>
  %5 = icmp eq <8 x i32> %4, zeroinitializer
  %6 = load <15 x i64>, ptr getelementptr inbounds nuw (i8, ptr @ff_eac3_custom_channel_map_locations, i64 40), align 8
  %7 = shufflevector <15 x i64> %6, <15 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %8 = select <8 x i1> %5, <8 x i64> zeroinitializer, <8 x i64> %7 ; 2 uses
  %9 = insertelement <6 x i32> poison, i32 %i.yg, i64 0
  %10 = shufflevector <6 x i32> %9, <6 x i32> poison, <6 x i32> zeroinitializer
  %11 = and <6 x i32> %10, <i32 2097152, i32 1048576, i32 524288, i32 262144, i32 131072, i32 65536>
  %12 = icmp eq <6 x i32> %11, zeroinitializer
  %13 = load <11 x i64>, ptr getelementptr inbounds nuw (i8, ptr @ff_eac3_custom_channel_map_locations, i64 168), align 8
  %14 = shufflevector <11 x i64> %13, <11 x i64> poison, <6 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10>
  %15 = select <6 x i1> %12, <6 x i64> zeroinitializer, <6 x i64> %14
  %16 = shufflevector <6 x i64> %15, <6 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %17 = or <8 x i64> %8, %16
  %18 = shufflevector <8 x i64> %17, <8 x i64> %8, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15>
  %i.yn = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %18)
  %op.rdx = or i64 %i.yn, %i.ym
  %op.rdx151 = or i64 %op.rdx, %spec.select.i127  ; 2 uses
  %i.yo = trunc i64 %op.rdx151 to i32
  %i.yp = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.yo)
  %i.yq = lshr i64 %op.rdx151, 32
  %i.yr = trunc nuw i64 %i.yq to i32
  %i.ys = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.yr)
  %i.yt = add nuw nsw i32 %i.ys, %i.yp
  %i.yu = icmp samesign ugt i32 %i.yt, 16
  br i1 %i.yu, label %.critedge, label %.thread.i

.thread.i:                                        ; preds = %bb.ak
  %i.yv = lshr i32 %i.yg, 16
  %i.yw = trunc nuw i32 %i.yv to i16
  %i.yx = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.yw, ptr %i.yx, align 2, !tbaa !52
  br label %bb.al

bb.al:                                            ; preds = %.thread.i, %bb.aj, %bb.af
  %i.yy = phi i32 [ %i.yi, %.thread.i ], [ %spec.select.i158.i, %bb.aj ], [ %.pre.i123, %bb.af ] ; 4 uses
  %i.yz = lshr i32 %i.yy, 3
  %i.za = zext nneg i32 %i.yz to i64
  %i.zb = getelementptr inbounds nuw i8, ptr %.pre210.i, i64 %i.za
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !9
  %i.zd = icmp slt i32 %i.yy, %.pre211.i
  %i.ze = zext i1 %i.zd to i32
  %spec.select.i159.i = add i32 %i.yy, %i.ze      ; 6 uses
  %i.zf = zext i8 %i.zc to i32
  %i.zg = and i32 %i.yy, 7
  store i32 %spec.select.i159.i, ptr %i.a, align 8, !tbaa !12
  %i.zh = lshr exact i32 128, %i.zg
  %i.zi = and i32 %i.zh, %i.zf
  %.not133.i = icmp eq i32 %i.zi, 0
  br i1 %.not133.i, label %.loopexit176.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.zj = icmp ugt i32 %i.ui, 1610612735
  br i1 %i.zj, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.zk = lshr i32 %spec.select.i159.i, 3
  %i.zl = zext nneg i32 %i.zk to i64
  %i.zm = getelementptr inbounds nuw i8, ptr %.pre210.i, i64 %i.zl
  %i.zn = load i32, ptr %i.zm, align 1, !tbaa !9
  %i.zo = tail call i32 @llvm.bswap.i32(i32 %i.zn)
  %i.zp = and i32 %spec.select.i159.i, 7
  %i.zq = shl i32 %i.zo, %i.zp
  %i.zr = lshr i32 %i.zq, 30
  %i.zs = add i32 %spec.select.i159.i, 2
  %i.zt = tail call i32 @llvm.umin.i32(i32 %.pre211.i, i32 %i.zs) ; 5 uses
  store i32 %i.zt, ptr %i.a, align 8, !tbaa !12
  %i.zu = trunc nuw nsw i32 %i.zr to i8
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 69
  store i8 %i.zu, ptr %i.zv, align 1, !tbaa !42
  %i.zw = and i8 %i.um, 1
  %.not134.i = icmp eq i8 %i.zw, 0
  br i1 %.not134.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.zx = lshr i32 %i.zt, 3
  %i.zy = zext nneg i32 %i.zx to i64
  %i.zz = getelementptr inbounds nuw i8, ptr %.pre210.i, i64 %i.zy
  %i.aaa = load i32, ptr %i.zz, align 1, !tbaa !9
  %i.aab = tail call i32 @llvm.bswap.i32(i32 %i.aaa)
  %i.aac = and i32 %i.zt, 7
  %i.aad = shl i32 %i.aab, %i.aac
  %i.aae = lshr i32 %i.aad, 29
  %i.aaf = add i32 %i.zt, 3
  %i.aag = tail call i32 @llvm.umin.i32(i32 %.pre211.i, i32 %i.aaf) ; 4 uses
  store i32 %i.aag, ptr %i.a, align 8, !tbaa !12
  %i.aah = trunc nuw nsw i32 %i.aae to i8
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 63
  store i8 %i.aah, ptr %i.aai, align 1, !tbaa !43
  %i.aaj = lshr i32 %i.aag, 3
  %i.aak = zext nneg i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw i8, ptr %.pre210.i, i64 %i.aak
  %i.aam = load i32, ptr %i.aal, align 1, !tbaa !9
  %i.aan = tail call i32 @llvm.bswap.i32(i32 %i.aam)
  %i.aao = and i32 %i.aag, 7
  %i.aap = shl i32 %i.aan, %i.aao
  %i.aaq = lshr i32 %i.aap, 29
  %i.aar = add i32 %i.aag, 3
  %i.aas = tail call i32 @llvm.umin.i32(i32 %.pre211.i, i32 %i.aar) ; 2 uses
  store i32 %i.aas, ptr %i.a, align 8, !tbaa !12
  store i32 %i.aaq, ptr %i.al, align 8, !tbaa !25
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.aat = phi i32 [ %i.aas, %bb.ao ], [ %i.zt, %bb.an ] ; 4 uses
  %.not135.i = icmp sgt i32 %i.ui, -1
  br i1 %.not135.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.aau = lshr i32 %i.aat, 3
  %i.aav = zext nneg i32 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw i8, ptr %.pre210.i, i64 %i.aav
  %i.aax = load i32, ptr %i.aaw, align 1, !tbaa !9
  %i.aay = tail call i32 @llvm.bswap.i32(i32 %i.aax)
  %i.aaz = and i32 %i.aat, 7
  %i.aba = shl i32 %i.aay, %i.aaz
  %i.abb = lshr i32 %i.aba, 29
  %i.abc = add i32 %i.aat, 3
  %i.abd = tail call i32 @llvm.umin.i32(i32 %.pre211.i, i32 %i.abc) ; 4 uses
  store i32 %i.abd, ptr %i.a, align 8, !tbaa !12
  %.0.i157.i = tail call i32 @llvm.umax.i32(i32 %i.abb, i32 3)
  %i.abe = trunc nuw nsw i32 %.0.i157.i to i8
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 %i.abe, ptr %i.abf, align 8, !tbaa !44
  %i.abg = lshr i32 %i.abd, 3
  %i.abh = zext nneg i32 %i.abg to i64
  %i.abi = getelementptr inbounds nuw i8, ptr %.pre210.i, i64 %i.abh
  %i.abj = load i32, ptr %i.abi, align 1, !tbaa !9
  %i.abk = tail call i32 @llvm.bswap.i32(i32 %i.abj)
  %i.abl = and i32 %i.abd, 7
  %i.abm = shl i32 %i.abk, %i.abl
  %i.abn = lshr i32 %i.abm, 29
  %i.abo = add i32 %i.abd, 3
  %i.abp = tail call i32 @llvm.umin.i32(i32 %.pre211.i, i32 %i.abo) ; 2 uses
  store i32 %i.abp, ptr %i.a, align 8, !tbaa !12
  %.0.i.i126 = tail call i32 @llvm.umax.i32(i32 %i.abn, i32 3)
  store i32 %.0.i.i126, ptr %i.am, align 4, !tbaa !26
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.am
  %i.abq = phi i32 [ %i.aat, %bb.ap ], [ %i.abp, %bb.aq ], [ %spec.select.i159.i, %bb.am ] ; 5 uses
  %.not136.i = icmp sgt i8 %i.ux, -1
  br i1 %.not136.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.abr = lshr i32 %i.abq, 3
  %i.abs = zext nneg i32 %i.abr to i64
  %i.abt = getelementptr inbounds nuw i8, ptr %.pre210.i, i64 %i.abs
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !9
  %i.abv = icmp slt i32 %i.abq, %.pre211.i
  %i.abw = zext i1 %i.abv to i32
  %spec.select.i160.i = add i32 %i.abq, %i.abw    ; 5 uses
  %i.abx = zext i8 %i.abu to i32
  %i.aby = and i32 %i.abq, 7
  %i.abz = shl nuw nsw i32 %i.abx, %i.aby
  %i.aca = lshr i32 %i.abz, 7
  store i32 %spec.select.i160.i, ptr %i.a, align 8, !tbaa !12
  %i.acb = and i32 %i.aca, 1                      ; 2 uses
  %i.acc = trunc nuw nsw i32 %i.acb to i8
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 67
  store i8 %i.acc, ptr %i.acd, align 1, !tbaa !53
  %.not137.i = icmp eq i32 %i.acb, 0
  br i1 %.not137.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ace = lshr i32 %spec.select.i160.i, 3
  %i.acf = zext nneg i32 %i.ace to i64
  %i.acg = getelementptr inbounds nuw i8, ptr %.pre210.i, i64 %i.acf
  %i.ach = load i32, ptr %i.acg, align 1, !tbaa !9
  %i.aci = tail call i32 @llvm.bswap.i32(i32 %i.ach)
  %i.acj = and i32 %spec.select.i160.i, 7
  %i.ack = shl i32 %i.aci, %i.acj
  %i.acl = lshr i32 %i.ack, 27
  %i.acm = add i32 %spec.select.i160.i, 5
  %i.acn = tail call i32 @llvm.umin.i32(i32 %.pre211.i, i32 %i.acm) ; 2 uses
  store i32 %i.acn, ptr %i.a, align 8, !tbaa !12
  %i.aco = trunc nuw nsw i32 %i.acl to i8
  %i.acp = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i8 %i.aco, ptr %i.acp, align 4, !tbaa !54
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.promoted.i = phi i32 [ %i.acn, %bb.at ], [ %spec.select.i160.i, %bb.as ], [ %i.abq, %bb.ar ] ; 2 uses
  %i.acq = icmp eq i32 %i.rm, 0
  br i1 %i.acq, label %.preheader179.i, label %.loopexit176.i

bb.av:                                            ; preds = %.preheader179.i
  %i.acr = lshr i32 %storemerge174.i, 3
  %i.acs = zext nneg i32 %i.acr to i64
  %i.act = getelementptr inbounds nuw i8, ptr %.pre210.i, i64 %i.acs
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !9
  %i.acv = icmp slt i32 %storemerge174.i, %.pre211.i
  %i.acw = zext i1 %i.acv to i32
  %spec.select.i161.i = add i32 %storemerge174.i, %i.acw ; 2 uses
  %i.acx = zext i8 %i.acu to i32
  %i.acy = and i32 %storemerge174.i, 7
  %i.acz = lshr exact i32 128, %i.acy
  %i.ada = and i32 %i.acz, %i.acx
  %.not139.i = icmp eq i32 %i.ada, 0
  %i.adb = add i32 %spec.select.i161.i, 6
  %i.adc = tail call i32 @llvm.umin.i32(i32 %.pre211.i, i32 %i.adb)
  %storemerge.i124 = select i1 %.not139.i, i32 %spec.select.i161.i, i32 %i.adc ; 4 uses
  store i32 %storemerge.i124, ptr %i.a, align 8, !tbaa !12
  %i.add = lshr i32 %storemerge.i124, 3
  %i.ade = zext nneg i32 %i.add to i64
  %i.adf = getelementptr inbounds nuw i8, ptr %.pre210.i, i64 %i.ade
  %i.adg = load i32, ptr %i.adf, align 1, !tbaa !9
  %i.adh = tail call i32 @llvm.bswap.i32(i32 %i.adg)
  %i.adi = and i32 %storemerge.i124, 7
  %i.adj = shl i32 %i.adh, %i.adi
  %i.adk = lshr i32 %i.adj, 30
  %i.adl = add i32 %storemerge.i124, 2
  %i.adm = tail call i32 @llvm.umin.i32(i32 %.pre211.i, i32 %i.adl) ; 7 uses
  store i32 %i.adm, ptr %i.a, align 8, !tbaa !12
  %trunc.i = trunc nuw nsw i32 %i.adk to i16
  switch i16 %trunc.i, label %default.unreachable [
end_hunk_0
begin_hunk_1_@avpriv_ac3_parse_header:bb.a
.thread:                                          ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.d = trunc i64 %2 to i32                      ; 2 uses
  %or.cond.i = icmp ugt i32 %i.d, 268435455
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = select i1 %or.cond.i, i32 -8, i32 %i.e   ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.f, 2147483135    ; 2 uses
  %i.g = icmp ne ptr %1, null
  %or.cond3.i.i = and i1 %i.g, %or.cond.i.i       ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %1, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.f, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %3, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.013.i.i, ptr %i.h, align 4, !tbaa !65
  %i.i = add nuw nsw i32 %.013.i.i, 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.i, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !12
  br i1 %or.cond3.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.l = call i32 @ff_ac3_parse_header(ptr noundef nonnull %3, ptr noundef nonnull %i.c)
  %i.m = icmp slt i32 %i.l, 0
  %.val = load i32, ptr %i.k, align 8
  %spec.select = select i1 %i.m, i32 -1094995529, i32 %.val
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %bb.b
  %.0 = phi i32 [ -12, %bb.b ], [ -1094995529, %.thread ], [ %spec.select, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %.0
}

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1094995529, 1) i32 @av_ac3_parse_header(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.GetBitContext, align 8      ; 7 uses
  %5 = alloca %struct.AC3HeaderInfo, align 8      ; 5 uses
  %i.a = alloca [96 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = tail call i64 @llvm.umin.i64(i64 %1, i64 32) ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %0, i64 %i.b, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = trunc nuw nsw i64 %i.b to i32
  %i.e = shl nuw nsw i32 %i.d, 3                  ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.e, ptr %i.f, align 4, !tbaa !65
  %i.g = add nuw nsw i32 %i.e, 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.g, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !12
  %i.j = call i32 @ff_ac3_parse_header(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.m = load i8, ptr %i.l, align 1, !tbaa !22
  store i8 %i.m, ptr %2, align 1, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 46
  %i.o = load i16, ptr %i.n, align 2, !tbaa !39
  store i16 %i.o, ptr %3, align 2, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1094995529, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @ac3_parse_init(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !66     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 7, ptr %i.b, align 8, !tbaa !69
  %i.c = tail call ptr @av_crc_get_table(i32 noundef 1) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.c, ptr %i.d, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @ac3_sync, ptr %i.e, align 8, !tbaa !74
  ret i32 0
}

declare i32 @ff_aac_ac3_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

declare void @ff_parse_close(ptr noundef) #5

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @ac3_sync(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #2 {
bb.a:
  %3 = alloca %union.anon, align 8                ; 10 uses
  %4 = alloca %struct.AC3HeaderInfo, align 8      ; 5 uses
  %5 = alloca %struct.GetBitContext, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %0) ; 6 uses
  store i64 %i.b, ptr %3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.d = and i64 %i.b, 16776960
  %or.cond = icmp eq i64 %i.d, 751360
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.b, 40
  %i.f = trunc i64 %i.e to i8
  %i.g = lshr i64 %i.b, 48
  %i.h = trunc i64 %i.g to i8
  %i.i = lshr i64 %i.b, 24
  %i.j = trunc i64 %i.i to i8
  %i.k = lshr i64 %i.b, 32
  %i.l = trunc i64 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 119, ptr %i.m, align 2, !tbaa !9
  store i8 11, ptr %i.c, align 1, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %i.j, ptr %i.n, align 4, !tbaa !9
  store i8 %i.l, ptr %i.o, align 1, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 %i.f, ptr %i.p, align 2, !tbaa !9
  store i8 %i.h, ptr %i.q, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.c, ptr %5, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 54, ptr %i.r, align 4, !tbaa !65
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 62, ptr %i.s, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.t, align 8, !tbaa !12
  %i.u = call i32 @ff_ac3_parse_header(ptr noundef nonnull %5, ptr noundef nonnull %4)
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.x = load i8, ptr %i.w, align 1, !tbaa !40
  %i.y = icmp ne i8 %i.x, 1
  %i.z = zext i1 %i.y to i32
  store i32 %i.z, ptr %2, align 4, !tbaa !34
  store i32 1, ptr %1, align 4, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 46
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !39
  %i.ac = zext i16 %i.ab to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.ac, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v8i64(<8 x i64>) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !6, i64 8}
!13 = !{!"GetBitContext", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!13, !6, i64 16}
!17 = !{!13, !14, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"AC3HeaderInfo", !20, i64 0, !20, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8, !7, i64 9, !6, i64 12, !6, i64 16, !6, i64 20, !7, i64 24, !20, i64 26, !6, i64 28, !6, i64 32, !7, i64 36, !20, i64 38, !6, i64 40, !7, i64 44, !20, i64 46, !21, i64 48, !7, i64 56, !7, i64 57, !7, i64 59, !7, i64 61, !7, i64 63, !7, i64 64, !7, i64 65, !7, i64 66, !7, i64 67, !7, i64 68, !7, i64 69, !7, i64 70, !7, i64 71}
!20 = !{!"short", !7, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!19, !7, i64 5}
!23 = !{!19, !6, i64 28}
!24 = !{!19, !7, i64 56}
!25 = !{!19, !6, i64 16}
!26 = !{!19, !6, i64 20}
!27 = !{!19, !6, i64 32}
!28 = !{!19, !20, i64 2}
!29 = !{!19, !7, i64 4}
!30 = !{!19, !7, i64 6}
!31 = !{!19, !7, i64 7}
!32 = !{!19, !7, i64 8}
!33 = !{!19, !7, i64 36}
!34 = !{!6, !6, i64 0}
!35 = !{!19, !20, i64 38}
!36 = !{!20, !20, i64 0}
!37 = !{!19, !6, i64 40}
!38 = !{!19, !7, i64 44}
!39 = !{!19, !20, i64 46}
!40 = !{!19, !7, i64 9}
!41 = !{!19, !6, i64 12}
!42 = !{!19, !7, i64 69}
!43 = !{!19, !7, i64 63}
!44 = !{!19, !7, i64 64}
!45 = !{!19, !7, i64 66}
!46 = !{!19, !7, i64 65}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = !{!19, !7, i64 24}
!52 = !{!19, !20, i64 26}
!53 = !{!19, !7, i64 67}
!54 = !{!19, !7, i64 68}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = !{!19, !7, i64 70}
!60 = !{!19, !7, i64 71}
!61 = distinct !{!61, !11}
!62 = !{!19, !21, i64 48}
!63 = !{!64, !64, i64 0}
!64 = !{!"p1 _ZTS13AC3HeaderInfo", !15, i64 0}
!65 = !{!13, !6, i64 12}
!66 = !{!67, !15, i64 0}
!67 = !{!"AVCodecParserContext", !15, i64 0, !68, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !6, i64 40, !6, i64 44, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !6, i64 80, !6, i64 84, !7, i64 88, !7, i64 120, !7, i64 152, !6, i64 184, !21, i64 192, !7, i64 200, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !7, i64 248, !21, i64 280, !21, i64 288, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328}
!68 = !{!"p1 _ZTS13AVCodecParser", !15, i64 0}
!69 = !{!70, !6, i64 48}
!70 = !{!"AACAC3ParseContext", !71, i64 0, !6, i64 48, !15, i64 56, !72, i64 64, !6, i64 72, !21, i64 80, !6, i64 88, !6, i64 92}
!71 = !{!"ParseContext", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !21, i64 40}
!72 = !{!"p1 int", !15, i64 0}
!73 = !{!70, !72, i64 64}
!74 = !{!70, !15, i64 56}
end_hunk_1
