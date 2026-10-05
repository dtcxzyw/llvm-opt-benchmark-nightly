Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpeg12dec?download=true
inline.NumInlined: 187
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 22
begin_hunk_0_@decode_chunks:bb.a
  %i.ut = and i32 %i.us, 65535                    ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uf, i64 6068
  store i32 %i.ut, ptr %i.uu, align 4, !tbaa !191
  %i.uv = and i32 %i.ul, 48
  %switch.i = icmp eq i32 %i.uv, 16
  br i1 %switch.i, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.uw = getelementptr inbounds nuw i8, ptr %i.fm, i64 3 ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !56
  %i.uy = lshr i8 %i.ux, 2
  %i.uz = and i8 %i.uy, 1
  %i.va = zext nneg i8 %i.uz to i32
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uf, i64 3872
  store i32 %i.va, ptr %i.vb, align 16, !tbaa !51
  %i.vc = load i32, ptr %i.uw, align 1, !tbaa !56
  %i.vd = call i32 @llvm.bswap.i32(i32 %i.vc)
  %i.ve = lshr i32 %i.vd, 23
  %i.vf = and i32 %i.ve, 7                        ; 2 uses
  %i.vg = icmp eq i32 %i.vf, 0
  br i1 %i.vg, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.vh = load i32, ptr %i.n, align 8, !tbaa !88
  %i.vi = and i32 %i.vh, 131074
  %.not.i343 = icmp eq i32 %i.vi, 0
  br i1 %.not.i343, label %bb.cq, label %bb.cx

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.vj = call i32 @llvm.umax.i32(i32 %i.vf, i32 1) ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uf, i64 3800
  store i32 %i.vj, ptr %i.vk, align 8, !tbaa !51
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uf, i64 3804
  store i32 %i.vj, ptr %i.vl, align 4, !tbaa !51
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cn
  %.sroa.10.0.i = phi i32 [ 33, %bb.cq ], [ 29, %bb.cn ] ; 3 uses
  %i.vm = icmp eq i32 %i.un, 3
  br i1 %i.vm, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  %i.vn = lshr i32 %.sroa.10.0.i, 3
  %i.vo = zext nneg i32 %i.vn to i64
  %i.vp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.vo
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !56
  %i.vr = and i32 %.sroa.10.0.i, 5
  %i.vs = zext i8 %i.vq to i32
  %i.vt = shl nuw nsw i32 %i.vs, %i.vr
  %i.vu = lshr i32 %i.vt, 7
  %i.vv = add nuw nsw i32 %.sroa.10.0.i, 1        ; 2 uses
  %i.vw = and i32 %i.vu, 1
  %i.vx = getelementptr inbounds nuw i8, ptr %i.uf, i64 3876
  store i32 %i.vw, ptr %i.vx, align 4, !tbaa !51
  %i.vy = lshr i32 %i.vv, 3
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.vz
  %i.wb = load i32, ptr %i.wa, align 1, !tbaa !56
  %i.wc = call i32 @llvm.bswap.i32(i32 %i.wb)
  %i.wd = and i32 %i.vv, 6
  %i.we = shl i32 %i.wc, %i.wd
  %i.wf = lshr i32 %i.we, 29                      ; 2 uses
  %i.wg = icmp eq i32 %i.wf, 0
  br i1 %i.wg, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.wh = load i32, ptr %i.n, align 8, !tbaa !88
  %i.wi = and i32 %i.wh, 131074
  %.not49.i = icmp eq i32 %i.wi, 0
  br i1 %.not49.i, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.wj = call i32 @llvm.umax.i32(i32 %i.wf, i32 1) ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.uf, i64 3808
  store i32 %i.wj, ptr %i.wk, align 16, !tbaa !51
  %i.wl = getelementptr inbounds nuw i8, ptr %i.uf, i64 3812
  store i32 %i.wj, ptr %i.wl, align 4, !tbaa !51
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cr
  %i.wm = load i32, ptr %i.l, align 4, !tbaa !107
  %i.wn = and i32 %i.wm, 1
  %.not51.i = icmp eq i32 %i.wn, 0
  br i1 %.not51.i, label %mpeg1_decode_picture.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.46, i32 noundef %i.ut, i32 noundef %i.uj, i32 noundef %i.un) #11
  br label %mpeg1_decode_picture.exit

bb.cx:                                            ; preds = %bb.ct, %.loopexit, %bb.cm, %bb.cp
  store i32 0, ptr %i.w, align 16, !tbaa !171
  br label %mpeg1_decode_picture.exit

mpeg1_decode_picture.exit:                        ; preds = %bb.cw, %bb.cv, %bb.cx
  store i32 1, ptr %i.cb, align 4, !tbaa !170
  br label %slice_end.exit

bb.cy:                                            ; preds = %bb.bg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %.0250503) #11
  %i.wo = load i32, ptr %i.n, align 8, !tbaa !88
  %i.wp = and i32 %i.wo, 8
  %.not281 = icmp eq i32 %i.wp, 0
  br i1 %.not281, label %slice_end.exit, label %.thread

bb.cz:                                            ; preds = %bb.t
  %or.cond.i344 = icmp ugt i32 %i.fp, 268435455
  %i.wq = shl nuw nsw i32 %i.fp, 3
  %i.wr = select i1 %or.cond.i344, i32 -8, i32 %i.wq ; 2 uses
  %or.cond.i.i345 = icmp ult i32 %i.wr, 2147483135 ; 2 uses
  %i.ws = icmp ne ptr %i.fm, null
  %or.cond3.i.i = and i1 %i.ws, %or.cond.i.i345
  %.014.i.i = select i1 %or.cond.i.i345, ptr %i.fm, ptr null ; 4 uses
  br i1 %or.cond3.i.i, label %bb.da, label %.thread

bb.da:                                            ; preds = %bb.cz
  %i.wt = load i32, ptr %i.fm, align 1            ; 2 uses
  %i.wu = call i32 @llvm.bswap.i32(i32 %i.wt)     ; 3 uses
  %i.wv = lshr i32 %i.wu, 28
  %i.ww = trunc i32 %i.wt to i8                   ; 2 uses
  switch i32 %i.wv, label %slice_end.exit [
    i32 1, label %bb.db
    i32 2, label %bb.di
    i32 3, label %bb.dm
    i32 7, label %bb.dx
    i32 8, label %bb.eg
  ]

bb.db:                                            ; preds = %bb.da
  %i.wx = icmp eq i32 %.0250503, 0
  br i1 %i.wx, label %bb.dc, label %bb.dh

bb.dc:                                            ; preds = %bb.db
  %i.wy = lshr i32 %i.wu, 24
  %i.wz = and i32 %i.wy, 7
  %i.xa = load ptr, ptr %i.y, align 8, !tbaa !67  ; 4 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 688
  store i32 %i.wz, ptr %i.xb, align 8, !tbaa !109
  %i.xc = getelementptr inbounds nuw i8, ptr %i.fm, i64 1 ; 4 uses
  %i.xd = load i32, ptr %i.xc, align 1, !tbaa !56
  %i.xe = lshr i32 %i.xd, 4
  %i.xf = and i32 %i.xe, 15
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xa, i64 692
  store i32 %i.xf, ptr %i.xg, align 4, !tbaa !110
  %i.xh = load i8, ptr %i.xc, align 1, !tbaa !56
  %i.xi = lshr i8 %i.xh, 3
  %i.xj = and i8 %i.xi, 1
  %i.xk = zext nneg i8 %i.xj to i32
  store i32 %i.xk, ptr %i.am, align 4, !tbaa !74
  %i.xl = load i32, ptr %i.xc, align 1, !tbaa !56
  %i.xm = lshr i32 %i.xl, 1
  %i.xn = and i32 %i.xm, 3                        ; 2 uses
  store i32 %i.xn, ptr %i.bc, align 16, !tbaa !52
  %.not.i346 = icmp eq i32 %i.xn, 0
  br i1 %.not.i346, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i32 1, ptr %i.bc, align 16, !tbaa !52
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.xa, i32 noundef 24, ptr noundef nonnull @.str.47) #11
  %.pre46.i = load ptr, ptr %i.y, align 8, !tbaa !67
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.xo = phi ptr [ %.pre46.i, %bb.dd ], [ %i.xa, %bb.dc ] ; 2 uses
  %i.xp = load i32, ptr %i.xc, align 1, !tbaa !56
  %i.xq = call i32 @llvm.bswap.i32(i32 %i.xp)
  %i.xr = getelementptr inbounds nuw i8, ptr %i.fm, i64 2 ; 2 uses
  %i.xs = load i32, ptr %i.xr, align 1, !tbaa !56
  %i.xt = lshr i32 %i.xq, 11
  %i.xu = shl i32 %i.xs, 7
  %i.xv = insertelement <2 x i32> poison, i32 %i.xt, i64 0
  %i.xw = insertelement <2 x i32> %i.xv, i32 %i.xu, i64 1
  %i.xx = and <2 x i32> %i.xw, splat (i32 12288)
  %i.xy = load <2 x i32>, ptr %i.bd, align 16, !tbaa !51
  %i.xz = or <2 x i32> %i.xx, %i.xy
  store <2 x i32> %i.xz, ptr %i.bd, align 16, !tbaa !51
  %i.ya = load i32, ptr %i.xr, align 1, !tbaa !56
  %i.yb = call i32 @llvm.bswap.i32(i32 %i.ya)
  %i.yc = shl i32 %i.yb, 1
  %i.yd = and i32 %i.yc, 1073479680
  %i.ye = zext nneg i32 %i.yd to i64
  %i.yf = mul nuw nsw i64 %i.ye, 400
  %i.yg = load i64, ptr %i.bf, align 8, !tbaa !178
  %i.yh = add nsw i64 %i.yf, %i.yg
  store i64 %i.yh, ptr %i.bf, align 8, !tbaa !178
  %i.yi = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !56
  %i.yk = and i8 %i.yj, 1
  %.not.i.i347 = icmp eq i8 %i.yk, 0
  br i1 %.not.i.i347, label %bb.df, label %check_marker.exit.i348

bb.df:                                            ; preds = %bb.de
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.xo, i32 noundef 32, ptr noundef nonnull @.str.39, i32 noundef 31, i32 noundef %i.wr, ptr noundef nonnull @.str.48) #11
  %.pre49.i = load ptr, ptr %i.y, align 8, !tbaa !67
  br label %check_marker.exit.i348

check_marker.exit.i348:                           ; preds = %bb.df, %bb.de
  %i.yl = phi ptr [ %i.xo, %bb.de ], [ %.pre49.i, %bb.df ] ; 7 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.yn = load i32, ptr %i.ym, align 1, !tbaa !56
  %i.yo = shl i32 %i.yn, 24
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yl, i64 448 ; 2 uses
  %i.yq = load i32, ptr %i.yp, align 8, !tbaa !179
  %i.yr = add i32 %i.yq, %i.yo                    ; 2 uses
  store i32 %i.yr, ptr %i.yp, align 8, !tbaa !179
  %i.ys = getelementptr inbounds nuw i8, ptr %i.fm, i64 5 ; 3 uses
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !56
  %i.yu = lshr i8 %i.yt, 7
  %i.yv = zext nneg i8 %i.yu to i32
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yl, i64 64
  %i.yx = load i32, ptr %i.yw, align 8, !tbaa !183
  %i.yy = and i32 %i.yx, 524288
  %.not43.i = icmp eq i32 %i.yy, 0
  %spec.store.select.i = select i1 %.not43.i, i32 %i.yv, i32 1
  store i32 %spec.store.select.i, ptr %i.bg, align 16, !tbaa !57
  %i.yz = load i32, ptr %i.ys, align 1, !tbaa !56
  %i.za = lshr i32 %i.yz, 5
  %i.zb = and i32 %i.za, 3
  %i.zc = add nuw nsw i32 %i.zb, 1
  store i32 %i.zc, ptr %i.bh, align 4, !tbaa !193
  %i.zd = load i32, ptr %i.ys, align 1, !tbaa !56
  %i.ze = and i32 %i.zd, 31
  %i.zf = add nuw nsw i32 %i.ze, 1
  store i32 %i.zf, ptr %i.bi, align 8, !tbaa !195
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yl, i64 24
  store i32 2, ptr %i.zg, align 8, !tbaa !65
  store i32 2, ptr %i.bj, align 16, !tbaa !79
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yl, i64 524
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !107
  %i.zj = and i32 %i.zi, 1
  %.not44.i = icmp eq i32 %i.zj, 0
  br i1 %.not44.i, label %slice_end.exit, label %bb.dg

bb.dg:                                            ; preds = %check_marker.exit.i348
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yl, i64 688
  %i.zl = load i32, ptr %i.zk, align 8, !tbaa !109
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yl, i64 692
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !110
  %i.zo = load i32, ptr %i.am, align 4, !tbaa !74
  %i.zp = load i32, ptr %i.bc, align 16, !tbaa !52
  %i.zq = load i64, ptr %i.bf, align 8, !tbaa !178
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.yl, i32 noundef 48, ptr noundef nonnull @.str.49, i32 noundef %i.zl, i32 noundef %i.zn, i32 noundef %i.zo, i32 noundef %i.zp, i32 noundef %i.yr, i64 noundef %i.zq) #11
  br label %slice_end.exit

bb.dh:                                            ; preds = %bb.db
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.20, i32 noundef %.0250503) #11
  %i.zr = load i32, ptr %i.n, align 8, !tbaa !88
  %i.zs = and i32 %i.zr, 8
  %.not277 = icmp eq i32 %i.zs, 0
  br i1 %.not277, label %slice_end.exit, label %.thread

bb.di:                                            ; preds = %bb.da
  %i.zt = and i8 %i.ww, 1
  %.not.i350 = icmp eq i8 %i.zt, 0
  br i1 %.not.i350, label %._crit_edge.i351, label %bb.dj

._crit_edge.i351:                                 ; preds = %bb.di
  %.pre.i352 = load ptr, ptr %i.y, align 8, !tbaa !67
  br label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.zu = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.zv = load i32, ptr %i.zu, align 1, !tbaa !56
  %i.zw = and i32 %i.zv, 255
  %i.zx = load ptr, ptr %i.y, align 8, !tbaa !67  ; 4 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 144
  store i32 %i.zw, ptr %i.zy, align 8, !tbaa !197
  %i.zz = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.aaa = load i32, ptr %i.zz, align 1, !tbaa !56
  %i.aab = and i32 %i.aaa, 255
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zx, i64 148
  store i32 %i.aab, ptr %i.aac, align 4, !tbaa !198
  %i.aad = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  %i.aae = load i32, ptr %i.aad, align 1, !tbaa !56
  %i.aaf = and i32 %i.aae, 255
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zx, i64 152
  store i32 %i.aaf, ptr %i.aag, align 8, !tbaa !199
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %._crit_edge.i351
  %i.aah = phi ptr [ %i.zx, %bb.dj ], [ %.pre.i352, %._crit_edge.i351 ] ; 2 uses
  %i.aai = phi i32 [ 32, %bb.dj ], [ 8, %._crit_edge.i351 ] ; 2 uses
  %i.aaj = lshr exact i32 %i.aai, 3
  %i.aak = zext nneg i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.aak
  %i.aam = load i32, ptr %i.aal, align 1, !tbaa !56
  %i.aan = call i32 @llvm.bswap.i32(i32 %i.aam)
  %i.aao = lshr i32 %i.aan, 18                    ; 2 uses
  %i.aap = add nuw nsw i32 %i.aai, 8
  %i.aaq = lshr exact i32 %i.aap, 3
  %i.aar = zext nneg i32 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.aar
  %i.aat = load i32, ptr %i.aas, align 1, !tbaa !56
  %i.aau = call i32 @llvm.bswap.i32(i32 %i.aat)
  %i.aav = lshr i32 %i.aau, 11
  %i.aaw = and i32 %i.aav, 16383                  ; 2 uses
  %i.aax = shl nuw nsw i32 %i.aao, 4
  store i32 %i.aax, ptr %i.ba, align 4, !tbaa !200
  %i.aay = shl nuw nsw i32 %i.aaw, 4
  store i32 %i.aay, ptr %i.bb, align 8, !tbaa !201
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aah, i64 524
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !107
  %i.abb = and i32 %i.aba, 1
  %.not20.i = icmp eq i32 %i.abb, 0
  br i1 %.not20.i, label %slice_end.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.aah, i32 noundef 48, ptr noundef nonnull @.str.50, i32 noundef %i.aao, i32 noundef %i.aaw) #11
  br label %slice_end.exit

bb.dm:                                            ; preds = %bb.da
  %i.abc = and i8 %i.ww, 8
  %.not.i353 = icmp eq i8 %i.abc, 0
  br i1 %.not.i353, label %load_matrix.exit.i361, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.abd = load i8, ptr %i.ax, align 1, !tbaa !56
  %i.abe = lshr i32 %i.wu, 19                     ; 2 uses
  %trunc.i354 = trunc i32 %i.abe to i8
  switch i8 %trunc.i354, label %bb.do [
    i8 0, label %.split31.us.i.i368
    i8 8, label %.split.split.peel.next.i.i355
  ]

bb.do:                                            ; preds = %bb.dn
  %i.abf = and i32 %i.abe, 255
  %i.abg = load ptr, ptr %i.y, align 8, !tbaa !67
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.abg, i32 noundef 48, ptr noundef nonnull @.str.41, i32 noundef %i.abf) #11
  br label %.split.split.peel.next.i.i355

.split.split.peel.next.i.i355:                    ; preds = %bb.do, %bb.dn
  %i.abh = zext i8 %i.abd to i64                  ; 2 uses
  %i.abi = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.abh
  store i16 8, ptr %i.abi, align 2, !tbaa !73
  %i.abj = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.abh
  store i16 8, ptr %i.abj, align 2, !tbaa !73
  br label %.split.split.i.i356

.split.split.i.i356:                              ; preds = %bb.dp, %.split.split.peel.next.i.i355
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.dp ], [ 13, %.split.split.peel.next.i.i355 ] ; 2 uses
  %indvars.iv.i.i357 = phi i64 [ %indvars.iv.next.i.i359, %bb.dp ], [ 1, %.split.split.peel.next.i.i355 ] ; 2 uses
  %i.abk = lshr i64 %indvars.iv, 3
  %i.abl = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.abk
  %i.abm = load i32, ptr %i.abl, align 1, !tbaa !56
  %i.abn = call i32 @llvm.bswap.i32(i32 %i.abm)
  %i.abo = lshr i32 %i.abn, 19
  %i.abp = and i32 %i.abo, 255                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not28.i.i358 = icmp eq i32 %i.abp, 0
  br i1 %.not28.i.i358, label %.split31.us.i.i368.loopexit, label %bb.dp

bb.dp:                                            ; preds = %.split.split.i.i356
  %i.abq = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %indvars.iv.i.i357
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !56
  %i.abs = zext i8 %i.abr to i64
  %i.abt = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.abs
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !56
  %i.abv = trunc nuw nsw i32 %i.abp to i16        ; 2 uses
  %i.abw = zext i8 %i.abu to i64                  ; 2 uses
  %i.abx = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.abw
  store i16 %i.abv, ptr %i.abx, align 2, !tbaa !73
  %i.aby = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.abw
  store i16 %i.abv, ptr %i.aby, align 2, !tbaa !73
  %indvars.iv.next.i.i359 = add nuw nsw i64 %indvars.iv.i.i357, 1 ; 2 uses
  %exitcond.not.i.i360 = icmp eq i64 %indvars.iv.next.i.i359, 64
  br i1 %exitcond.not.i.i360, label %load_matrix.exit.i361, label %.split.split.i.i356, !llvm.loop !157

.split31.us.i.i368.loopexit:                      ; preds = %.split.split.i.i356
  %i.abz = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.split31.us.i.i368

.split31.us.i.i368:                               ; preds = %.split31.us.i.i368.loopexit, %bb.dn
  %.sroa.18.1 = phi i32 [ 13, %bb.dn ], [ %i.abz, %.split31.us.i.i368.loopexit ]
  %i.aca = load ptr, ptr %i.y, align 8, !tbaa !67
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aca, i32 noundef 16, ptr noundef nonnull @.str.40) #11
  br label %load_matrix.exit.i361

load_matrix.exit.i361:                            ; preds = %bb.dp, %.split31.us.i.i368, %bb.dm
  %i.acb = phi ptr [ %i.fm, %bb.dm ], [ %i.fm, %.split31.us.i.i368 ], [ %.014.i.i, %bb.dp ] ; 4 uses
  %i.acc = phi i32 [ 5, %bb.dm ], [ %.sroa.18.1, %.split31.us.i.i368 ], [ 517, %bb.dp ] ; 3 uses
  %i.acd = lshr i32 %i.acc, 3
  %i.ace = zext nneg i32 %i.acd to i64
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acb, i64 %i.ace
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !56
  %i.ach = and i32 %i.acc, 7
  %i.aci = zext i8 %i.acg to i32
  %i.acj = add i32 %i.acc, 1                      ; 3 uses
  %i.ack = lshr exact i32 128, %i.ach
  %i.acl = and i32 %i.ack, %i.aci
  %.not18.i = icmp eq i32 %i.acl, 0
  br i1 %.not18.i, label %load_matrix.exit23.i, label %bb.dq

bb.dq:                                            ; preds = %load_matrix.exit.i361
  %i.acm = and i32 %i.acj, 7
  br label %.split.us.split.i.i362

.split.us.split.i.i362:                           ; preds = %bb.dr, %bb.dq
  %indvars.iv49.i.i363 = phi i64 [ %indvars.iv.next50.i.i365, %bb.dr ], [ 0, %bb.dq ] ; 2 uses
  %i.acn = phi i32 [ %i.acv, %bb.dr ], [ %i.acj, %bb.dq ] ; 2 uses
  %i.aco = lshr i32 %i.acn, 3
  %i.acp = zext nneg i32 %i.aco to i64
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acb, i64 %i.acp
  %i.acr = load i32, ptr %i.acq, align 1, !tbaa !56
  %i.acs = call i32 @llvm.bswap.i32(i32 %i.acr)
  %i.act = shl i32 %i.acs, %i.acm
  %i.acu = lshr i32 %i.act, 24                    ; 2 uses
  %i.acv = add i32 %i.acn, 8                      ; 3 uses
  %.not28.us.i.i364 = icmp eq i32 %i.acu, 0
  br i1 %.not28.us.i.i364, label %.split31.us.i22.i, label %bb.dr

bb.dr:                                            ; preds = %.split.us.split.i.i362
  %i.acw = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %indvars.iv49.i.i363
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !56
  %i.acy = zext i8 %i.acx to i64
  %i.acz = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.acy
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !56
  %i.adb = trunc nuw nsw i32 %i.acu to i16        ; 2 uses
  %i.adc = zext i8 %i.ada to i64                  ; 2 uses
  %i.add = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.adc
  store i16 %i.adb, ptr %i.add, align 2, !tbaa !73
  %i.ade = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.adc
  store i16 %i.adb, ptr %i.ade, align 2, !tbaa !73
  %indvars.iv.next50.i.i365 = add nuw nsw i64 %indvars.iv49.i.i363, 1 ; 2 uses
  %exitcond52.not.i.i366 = icmp eq i64 %indvars.iv.next50.i.i365, 64
  br i1 %exitcond52.not.i.i366, label %load_matrix.exit23.i, label %.split.us.split.i.i362, !llvm.loop !159

.split31.us.i22.i:                                ; preds = %.split.us.split.i.i362
  %i.adf = load ptr, ptr %i.y, align 8, !tbaa !67
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.adf, i32 noundef 16, ptr noundef nonnull @.str.40) #11
  br label %load_matrix.exit23.i

load_matrix.exit23.i:                             ; preds = %bb.dr, %.split31.us.i22.i, %load_matrix.exit.i361
  %i.adg = phi ptr [ %i.acb, %load_matrix.exit.i361 ], [ %.014.i.i, %.split31.us.i22.i ], [ %i.acb, %bb.dr ] ; 4 uses
  %i.adh = phi i32 [ %i.acj, %load_matrix.exit.i361 ], [ %i.acv, %.split31.us.i22.i ], [ %i.acv, %bb.dr ] ; 4 uses
  %i.adi = lshr i32 %i.adh, 3
  %i.adj = zext nneg i32 %i.adi to i64
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adg, i64 %i.adj
  %i.adl = load i8, ptr %i.adk, align 1, !tbaa !56
  %i.adm = and i32 %i.adh, 7
  %i.adn = zext i8 %i.adl to i32
  %i.ado = add i32 %i.adh, 1                      ; 3 uses
  %i.adp = lshr exact i32 128, %i.adm
end_hunk_0
