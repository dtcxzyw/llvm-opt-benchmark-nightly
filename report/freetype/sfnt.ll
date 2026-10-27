Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@sfnt_init_face:bb.a
  store i8 %i.wj, ptr %i.wg, align 1, !tbaa !29
  %i.wl = load i64, ptr %i.aq, align 8, !tbaa !443 ; 2 uses
  %i.wm = lshr i64 %i.wl, 8
  %i.wn = trunc i64 %i.wm to i8
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vu, i64 3
  store i8 %i.wn, ptr %i.wk, align 1, !tbaa !29
  %i.wp = load i64, ptr %i.aq, align 8, !tbaa !443 ; 2 uses
  %i.wq = trunc i64 %i.wp to i8
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  store i8 %i.wq, ptr %i.wo, align 1, !tbaa !29
  %i.ws = load i16, ptr %i.as, align 8, !tbaa !144
  %i.wt = lshr i16 %i.ws, 8                       ; 2 uses
  %i.wu = trunc nuw i16 %i.wt to i8
  %i.wv = getelementptr inbounds nuw i8, ptr %i.vu, i64 5
  store i8 %i.wu, ptr %i.wr, align 1, !tbaa !29
  %i.ww = load i16, ptr %i.as, align 8, !tbaa !144 ; 2 uses
  %i.wx = trunc i16 %i.ww to i8
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vu, i64 6
  store i8 %i.wx, ptr %i.wv, align 1, !tbaa !29
  %i.wz = lshr i32 134217728, %i.wa               ; 2 uses
  %i.xa = trunc i32 %i.wz to i8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vu, i64 7
  store i8 %i.xa, ptr %i.wy, align 1, !tbaa !29
  %.tr.i104.i = trunc i32 %i.wb to i8
  %i.xc = shl i8 %.tr.i104.i, 4                   ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  store i8 %i.xc, ptr %i.xb, align 1, !tbaa !29
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vu, i64 9
  store i8 0, ptr %i.xd, align 1, !tbaa !29
  %i.xf = trunc nuw nsw i32 %i.wa to i8
  %i.xg = xor i8 %i.xf, 31                        ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.vu, i64 10
  store i8 %i.xg, ptr %i.xe, align 1, !tbaa !29
  %i.xi = lshr i32 %i.wc, 4                       ; 2 uses
  %i.xj = trunc i32 %i.xi to i8
  %i.xk = getelementptr inbounds nuw i8, ptr %i.vu, i64 11
  store i8 %i.xj, ptr %i.xh, align 1, !tbaa !29
  %.tr289.i.i = trunc i32 %i.wc to i8
  %i.xl = shl i8 %.tr289.i.i, 4                   ; 2 uses
  store i8 %i.xl, ptr %i.xk, align 1, !tbaa !29
  %i.xm = and i64 %i.wd, 4278190080
  %i.xn = and i64 %i.wh, 16711680
  %i.xo = or disjoint i64 %i.xn, %i.xm
  %i.xp = and i64 %i.wl, 65280
  %i.xq = and i64 %i.wp, 255
  %i.xr = zext nneg i16 %i.wt to i64
  %i.xs = shl nuw nsw i64 %i.xr, 24
  %.mask.i.i = and i16 %i.ww, 255
  %i.xt = zext nneg i16 %.mask.i.i to i64
  %.mask444.i.i = shl nuw nsw i32 %i.wz, 8
  %i.xu = and i32 %.mask444.i.i, 65280
  %i.xv = zext nneg i32 %i.xu to i64
  %i.xw = zext i8 %i.xc to i64
  %i.xx = zext nneg i8 %i.xg to i64
  %.mask445.i.i = shl i32 %i.xi, 8
  %i.xy = and i32 %.mask445.i.i, 65280
  %i.xz = zext nneg i32 %i.xy to i64
  %i.ya = zext i8 %i.xl to i64
  %reass.add = add nuw nsw i64 %i.xt, %i.xx
  %reass.mul = shl nuw nsw i64 %reass.add, 16
  %i.yb = or disjoint i64 %i.xo, %i.xw
  %i.yc = or disjoint i64 %i.yb, %i.xp
  %i.yd = add nuw nsw i64 %i.yc, %i.xv
  %i.ye = add nuw nsw i64 %i.yd, %i.ya
  %i.yf = add nuw nsw i64 %i.ye, %i.xq
  %i.yg = add nuw nsw i64 %i.yf, %i.xz
  %i.yh = add nuw nsw i64 %i.yg, %i.xs
  %i.yi = add nuw nsw i64 %i.yh, %reass.mul
  store i64 %i.yi, ptr %6, align 8, !tbaa !157
  %i.yj = load i16, ptr %i.as, align 8, !tbaa !144
  %i.yk = zext i16 %i.yj to i64
  call void @qsort(ptr noundef %.1245.i.i, i64 noundef %i.yk, i64 noundef 8, ptr noundef nonnull @compare_tags) #27
  %i.yl = load i16, ptr %i.as, align 8, !tbaa !144 ; 2 uses
  %i.ym = icmp ugt i16 %i.yl, 1
  br i1 %i.ym, label %.lr.ph384.preheader.i.i, label %._crit_edge385.i.i

.lr.ph384.preheader.i.i:                          ; preds = %.lr.ph.i.i.i
  %wide.trip.count413.i.i = zext i16 %i.yl to i64
  br label %.lr.ph384.i.i

bb.dp:                                            ; preds = %.lr.ph384.i.i
  %indvars.iv.next411.i.i = add nuw nsw i64 %indvars.iv410.i.i, 1 ; 2 uses
  %exitcond414.not.i.i = icmp eq i64 %indvars.iv.next411.i.i, %wide.trip.count413.i.i
  br i1 %exitcond414.not.i.i, label %._crit_edge385.i.i, label %.lr.ph384.i.i, !llvm.loop !415

.lr.ph384.i.i:                                    ; preds = %bb.dp, %.lr.ph384.preheader.i.i
  %indvars.iv410.i.i = phi i64 [ 1, %.lr.ph384.preheader.i.i ], [ %indvars.iv.next411.i.i, %bb.dp ] ; 2 uses
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %.1245.i.i, i64 %indvars.iv410.i.i ; 2 uses
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !153
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 4
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !146
  %i.yr = getelementptr i8, ptr %i.yn, i64 -8
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !153
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 4
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !146
  %i.yv = icmp eq i32 %i.yq, %i.yu
  br i1 %i.yv, label %bb.dq, label %bb.dp

bb.dq:                                            ; preds = %.lr.ph384.i.i
  store i32 8, ptr %i.b, align 4, !tbaa !30
  br label %.thread.i93.i

._crit_edge385.i.i:                               ; preds = %bb.dp, %.lr.ph.i.i.i
  %i.yw = load i64, ptr %i.ay, align 8, !tbaa !451 ; 3 uses
  %i.yx = icmp eq i64 %i.yw, 0
  br i1 %i.yx, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %._crit_edge385.i.i
  store i32 8, ptr %i.b, align 4, !tbaa !30
  br label %.thread.i93.i

bb.ds:                                            ; preds = %._crit_edge385.i.i
  %i.yy = icmp ugt i64 %i.yw, 67108864
  br i1 %i.yy, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 10, ptr %i.b, align 4, !tbaa !30
  br label %.thread.i93.i

bb.du:                                            ; preds = %bb.ds
  %i.yz = call ptr @ft_mem_qalloc(ptr noundef %i.lz, i64 noundef %i.yw, ptr noundef nonnull %i.b) #27 ; 8 uses
  %i.za = load i32, ptr %i.b, align 4, !tbaa !30
  %.not290.i.i = icmp eq i32 %i.za, 0
  br i1 %.not290.i.i, label %bb.dv, label %.thread.i93.i

bb.dv:                                            ; preds = %bb.du
  %i.zb = load i64, ptr %i.bc, align 8, !tbaa !459
  %i.zc = call i32 @FT_Stream_EnterFrame(ptr noundef %.069132.i, i64 noundef %i.zb) #27 ; 2 uses
  store i32 %i.zc, ptr %i.b, align 4, !tbaa !30
  %.not291.i.i = icmp eq i32 %i.zc, 0
  br i1 %.not291.i.i, label %bb.dw, label %.thread.i93.i

bb.dw:                                            ; preds = %bb.dv
  %i.zd = load i64, ptr %i.ay, align 8, !tbaa !451 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.069132.i, i64 64
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !137
  %i.zg = load i64, ptr %i.bc, align 8, !tbaa !459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.zd, ptr %i.a, align 8, !tbaa !121
  %i.zh = call i32 @BrotliDecoderDecompress(i64 noundef %i.zg, ptr noundef %i.zf, ptr noundef nonnull %i.a, ptr noundef %i.yz) #27
  %.not.i.i.i = icmp eq i32 %i.zh, 1
  %i.zi = load i64, ptr %i.a, align 8
  %.not6.i.i.i = icmp eq i64 %i.zi, %i.zd
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not6.i.i.i, i1 false
  %.0.i.i.i = select i1 %or.cond.i.i.i, i32 0, i32 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store i32 %.0.i.i.i, ptr %i.b, align 4, !tbaa !30
  call void @FT_Stream_ExitFrame(ptr noundef %.069132.i) #27
  %i.zj = load i32, ptr %i.b, align 4, !tbaa !30
  %.not292.i.i = icmp eq i32 %i.zj, 0
  br i1 %.not292.i.i, label %bb.dx, label %.thread.i93.i

bb.dx:                                            ; preds = %bb.dw
  %i.zk = load i64, ptr %i.ay, align 8, !tbaa !451
  %i.zl = call fastcc i32 @reconstruct_font(ptr noundef %i.yz, i64 noundef %i.zk, ptr noundef %.1245.i.i, ptr noundef %5, ptr noundef %6, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.lz) ; 2 uses
  store i32 %i.zl, ptr %i.b, align 4, !tbaa !30
  %.not293.i.i = icmp eq i32 %i.zl, 0
  br i1 %.not293.i.i, label %bb.dy, label %.thread.i93.i

bb.dy:                                            ; preds = %bb.dx
  %i.zm = load i64, ptr %i.be, align 8, !tbaa !158 ; 3 uses
  %i.zn = load i64, ptr %i.d, align 8, !tbaa !121 ; 2 uses
  %i.zo = icmp ult i64 %i.zm, %i.zn
  %.pre423.i.i = load ptr, ptr %i.c, align 8, !tbaa !141 ; 2 uses
  br i1 %i.zo, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.zp = call ptr @ft_mem_qrealloc(ptr noundef %i.lz, i64 noundef 1, i64 noundef %i.zn, i64 noundef %i.zm, ptr noundef %.pre423.i.i, ptr noundef nonnull %i.b) #27 ; 2 uses
  store ptr %i.zp, ptr %i.c, align 8, !tbaa !141
  %i.zq = load i32, ptr %i.b, align 4, !tbaa !30
  %.not294.i.i = icmp eq i32 %i.zq, 0
  br i1 %.not294.i.i, label %._crit_edge424.i.i, label %.thread.i93.i

._crit_edge424.i.i:                               ; preds = %bb.dz
  %.pre425.i.i = load i64, ptr %i.be, align 8, !tbaa !158
  br label %bb.ea

bb.ea:                                            ; preds = %._crit_edge424.i.i, %bb.dy
  %i.zr = phi i64 [ %.pre425.i.i, %._crit_edge424.i.i ], [ %i.zm, %bb.dy ]
  %i.zs = phi ptr [ %i.zp, %._crit_edge424.i.i ], [ %.pre423.i.i, %bb.dy ]
  call void @FT_Stream_OpenMemory(ptr noundef %i.vw, ptr noundef %i.zs, i64 noundef %i.zr) #27
  %i.zt = load ptr, ptr %i.ly, align 8, !tbaa !131
  %i.zu = getelementptr inbounds nuw i8, ptr %i.vw, i64 56
  store ptr %i.zt, ptr %i.zu, align 8, !tbaa !131
  %i.zv = getelementptr inbounds nuw i8, ptr %i.vw, i64 48
  store ptr @stream_close, ptr %i.zv, align 8, !tbaa !138
  %i.zw = load ptr, ptr %i.bf, align 8, !tbaa !139
  %i.zx = load i64, ptr %i.bg, align 8, !tbaa !140
  %i.zy = trunc i64 %i.zx to i32
  %i.zz = lshr i32 %i.zy, 10
  %i.aaa = and i32 %i.zz, 1
  call void @FT_Stream_Free(ptr noundef %i.zw, i32 noundef %i.aaa) #27
  store ptr %i.vw, ptr %i.bf, align 8, !tbaa !139
  %i.aab = load i64, ptr %i.bg, align 8, !tbaa !140
  %i.aac = and i64 %i.aab, -1025
  store i64 %i.aac, ptr %i.bg, align 8, !tbaa !140
  %.0207.lobit = ashr i32 %.0207, 31
  br label %.thread.i93.i

.thread.i93.i:                                    ; preds = %bb.bt, %bb.br, %bb.bm, %.lr.ph.i95.i, %bb.cj, %bb.ci, %.lr.ph375.i.i, %bb.ea, %bb.dz, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.dr, %bb.dq, %bb.do, %bb.dn, %._crit_edge378.i.i, %bb.di, %bb.dh, %bb.de, %bb.db, %bb.cy, %bb.cu, %bb.cr, %bb.co, %.thread329.i.i, %bb.ch, %bb.cg, %bb.ce, %bb.cd, %bb.cb, %bb.bz, %bb.by, %bb.bw, %bb.bk, %bb.bj
  %.1208 = phi i32 [ %.0207, %bb.bz ], [ %.0207, %bb.cd ], [ %.0207, %bb.cg ], [ %.0207, %bb.cr ], [ %.0207, %bb.dq ], [ %.0207, %bb.dr ], [ %.0207, %bb.dt ], [ %.0207.lobit, %bb.ea ], [ %.0207, %bb.dz ], [ %.0207, %bb.dx ], [ %.0207, %bb.dw ], [ %.0207, %bb.dv ], [ %.0207, %bb.du ], [ %.0207, %bb.do ], [ %.0207, %bb.dn ], [ %.0207, %bb.dh ], [ %.0207, %._crit_edge378.i.i ], [ %.0207, %bb.di ], [ %.0207, %bb.de ], [ %.0207, %bb.db ], [ %.0207, %bb.cy ], [ %.0207, %bb.cu ], [ %.0207, %bb.co ], [ %.0207, %.thread329.i.i ], [ %.0207, %bb.cj ], [ %.0207, %bb.bk ], [ %.0207, %bb.bj ], [ %.0207, %bb.ch ], [ %.0207, %bb.ce ], [ %.0207, %bb.cb ], [ %.0207, %bb.by ], [ %.0207, %bb.bw ], [ %.0207, %.lr.ph375.i.i ], [ %.0207, %bb.ci ], [ %.0207, %.lr.ph.i95.i ], [ %.0207, %bb.bm ], [ %.0207, %bb.br ], [ %.0207, %bb.bt ] ; 2 uses
  %.1204 = phi i64 [ %.0203, %bb.bz ], [ %.0203, %bb.cd ], [ %.0203, %bb.cg ], [ %.0203, %bb.cr ], [ %i.sf, %bb.dq ], [ %i.sf, %bb.dr ], [ %i.sf, %bb.dt ], [ %i.sf, %bb.ea ], [ %i.sf, %bb.dz ], [ %i.sf, %bb.dx ], [ %i.sf, %bb.dw ], [ %i.sf, %bb.dv ], [ %i.sf, %bb.du ], [ %i.sf, %bb.do ], [ %i.sf, %bb.dn ], [ %i.sf, %bb.dh ], [ %i.sf, %._crit_edge378.i.i ], [ %i.sf, %bb.di ], [ %i.sf, %bb.de ], [ %.0203, %bb.db ], [ %.0203, %bb.cy ], [ %.0203, %bb.cu ], [ %.0203, %bb.co ], [ %.0203, %.thread329.i.i ], [ %.0203, %bb.cj ], [ %.0203, %bb.bk ], [ %.0203, %bb.bj ], [ %.0203, %bb.ch ], [ %.0203, %bb.ce ], [ %.0203, %bb.cb ], [ %.0203, %bb.by ], [ %.0203, %bb.bw ], [ %.0203, %.lr.ph375.i.i ], [ %.0203, %bb.ci ], [ %.0203, %.lr.ph.i95.i ], [ %.0203, %bb.bm ], [ %.0203, %bb.br ], [ %.0203, %bb.bt ] ; 2 uses
  %.2246.i.i = phi ptr [ %i.nk, %bb.bz ], [ %i.nk, %bb.cd ], [ %i.nk, %bb.cg ], [ %i.nk, %bb.cr ], [ %.1245.i.i, %bb.dq ], [ %.1245.i.i, %bb.dr ], [ %.1245.i.i, %bb.dt ], [ %.1245.i.i, %bb.ea ], [ %.1245.i.i, %bb.dz ], [ %.1245.i.i, %bb.dx ], [ %.1245.i.i, %bb.dw ], [ %.1245.i.i, %bb.dv ], [ %.1245.i.i, %bb.du ], [ %.1245.i.i, %bb.do ], [ %.1245.i.i, %bb.dn ], [ %i.nk, %bb.dh ], [ %i.ug, %._crit_edge378.i.i ], [ %i.nk, %bb.di ], [ %i.nk, %bb.de ], [ %i.nk, %bb.db ], [ %i.nk, %bb.cy ], [ %i.nk, %bb.cu ], [ %i.nk, %bb.co ], [ %i.nk, %.thread329.i.i ], [ %i.nk, %bb.cj ], [ %i.nk, %bb.bk ], [ null, %bb.bj ], [ %i.nk, %bb.ch ], [ %i.nk, %bb.ce ], [ %i.nk, %bb.cb ], [ %i.nk, %bb.by ], [ %i.nk, %bb.bw ], [ %i.nk, %.lr.ph375.i.i ], [ %i.nk, %bb.ci ], [ %i.nk, %.lr.ph.i95.i ], [ %i.nk, %bb.bm ], [ %i.nk, %bb.br ], [ %i.nk, %bb.bt ]
  %.0226.i.i = phi ptr [ null, %bb.bz ], [ null, %bb.cd ], [ null, %bb.cg ], [ null, %bb.cr ], [ %i.vw, %bb.dq ], [ %i.vw, %bb.dr ], [ %i.vw, %bb.dt ], [ %i.vw, %bb.ea ], [ %i.vw, %bb.dz ], [ %i.vw, %bb.dx ], [ %i.vw, %bb.dw ], [ %i.vw, %bb.dv ], [ %i.vw, %bb.du ], [ %i.vw, %bb.do ], [ null, %bb.dn ], [ null, %bb.dh ], [ null, %._crit_edge378.i.i ], [ null, %bb.di ], [ null, %bb.de ], [ null, %bb.db ], [ null, %bb.cy ], [ null, %bb.cu ], [ null, %bb.co ], [ null, %.thread329.i.i ], [ null, %bb.cj ], [ null, %bb.bk ], [ null, %bb.bj ], [ null, %bb.ch ], [ null, %bb.ce ], [ null, %bb.cb ], [ null, %bb.by ], [ null, %bb.bw ], [ null, %.lr.ph375.i.i ], [ null, %bb.ci ], [ null, %.lr.ph.i95.i ], [ null, %bb.bm ], [ null, %bb.br ], [ null, %bb.bt ] ; 3 uses
  %.0225.i.i = phi ptr [ null, %bb.bz ], [ null, %bb.cd ], [ null, %bb.cg ], [ null, %bb.cr ], [ null, %bb.dq ], [ null, %bb.dr ], [ null, %bb.dt ], [ %i.yz, %bb.ea ], [ %i.yz, %bb.dz ], [ %i.yz, %bb.dx ], [ %i.yz, %bb.dw ], [ %i.yz, %bb.dv ], [ %i.yz, %bb.du ], [ null, %bb.do ], [ null, %bb.dn ], [ null, %bb.dh ], [ null, %._crit_edge378.i.i ], [ null, %bb.di ], [ null, %bb.de ], [ null, %bb.db ], [ null, %bb.cy ], [ null, %bb.cu ], [ null, %bb.co ], [ null, %.thread329.i.i ], [ null, %bb.cj ], [ null, %bb.bk ], [ null, %bb.bj ], [ null, %bb.ch ], [ null, %bb.ce ], [ null, %bb.cb ], [ null, %bb.by ], [ null, %bb.bw ], [ null, %.lr.ph375.i.i ], [ null, %bb.ci ], [ null, %.lr.ph.i95.i ], [ null, %bb.bm ], [ null, %bb.br ], [ null, %bb.bt ]
  call void @ft_mem_free(ptr noundef %i.lz, ptr noundef %i.ng) #27
  call void @ft_mem_free(ptr noundef %i.lz, ptr noundef %.2246.i.i) #27
  call void @ft_mem_free(ptr noundef %i.lz, ptr noundef %.0225.i.i) #27
  %i.aad = load ptr, ptr %i.bh, align 8, !tbaa !159
  call void @ft_mem_free(ptr noundef %i.lz, ptr noundef %i.aad) #27
  %i.aae = load ptr, ptr %i.ax, align 8, !tbaa !448 ; 3 uses
  %.not309.i.i = icmp eq ptr %i.aae, null
  br i1 %.not309.i.i, label %bb.eb, label %.preheader.i94.i

.preheader.i94.i:                                 ; preds = %.thread.i93.i
  %i.aaf = load i16, ptr %i.az, align 8, !tbaa !452
  %.not395.i.i = icmp eq i16 %i.aaf, 0
  br i1 %.not395.i.i, label %._crit_edge389.i.i, label %.lr.ph388.i.i

.lr.ph388.i.i:                                    ; preds = %.preheader.i94.i, %.lr.ph388.i.i
  %.0387.i.i = phi ptr [ %i.aai, %.lr.ph388.i.i ], [ %i.aae, %.preheader.i94.i ] ; 2 uses
  %.5386.i.i = phi i32 [ %i.aaj, %.lr.ph388.i.i ], [ 0, %.preheader.i94.i ]
  %i.aag = getelementptr inbounds nuw i8, ptr %.0387.i.i, i64 16 ; 2 uses
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !457
  call void @ft_mem_free(ptr noundef %i.lz, ptr noundef %i.aah) #27
  store ptr null, ptr %i.aag, align 8, !tbaa !457
  %i.aai = getelementptr inbounds nuw i8, ptr %.0387.i.i, i64 24
  %i.aaj = add nuw nsw i32 %.5386.i.i, 1          ; 2 uses
  %i.aak = load i16, ptr %i.az, align 8, !tbaa !452
  %i.aal = zext i16 %i.aak to i32
  %i.aam = icmp samesign ult i32 %i.aaj, %i.aal
  br i1 %i.aam, label %.lr.ph388.i.i, label %._crit_edge389.loopexit.i.i, !llvm.loop !416

._crit_edge389.loopexit.i.i:                      ; preds = %.lr.ph388.i.i
  %.pre426.i.i = load ptr, ptr %i.ax, align 8, !tbaa !448
  br label %._crit_edge389.i.i

._crit_edge389.i.i:                               ; preds = %._crit_edge389.loopexit.i.i, %.preheader.i94.i
  %i.aan = phi ptr [ %.pre426.i.i, %._crit_edge389.loopexit.i.i ], [ %i.aae, %.preheader.i94.i ]
  call void @ft_mem_free(ptr noundef %i.lz, ptr noundef %i.aan) #27
  store ptr null, ptr %i.ax, align 8, !tbaa !448
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge389.i.i, %.thread.i93.i
  %i.aao = load i32, ptr %i.b, align 4, !tbaa !30
  %.not310.i.i = icmp eq i32 %i.aao, 0
  br i1 %.not310.i.i, label %woff2_open_font.exit.thread113.i, label %bb.ec

woff2_open_font.exit.thread113.i:                 ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %.backedge.sink.split.i

bb.ec:                                            ; preds = %bb.eb
  %i.aap = load ptr, ptr %i.c, align 8, !tbaa !141
  call void @ft_mem_free(ptr noundef %i.lz, ptr noundef %i.aap) #27
  %.not311.i.i = icmp eq ptr %.0226.i.i, null
  br i1 %.not311.i.i, label %woff2_open_font.exit.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @FT_Stream_Close(ptr noundef nonnull %.0226.i.i) #27
  call void @ft_mem_free(ptr noundef %i.lz, ptr noundef nonnull %.0226.i.i) #27
  br label %woff2_open_font.exit.i

woff2_open_font.exit.thread.i:                    ; preds = %bb.bi, %.thread446.i.i, %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.bc, %bb.bb
  %.0221.i.ph.i = phi i32 [ 8, %bb.be ], [ 8, %bb.bd ], [ 8, %.thread446.i.i ], [ 8, %bb.bh ], [ 8, %bb.bi ], [ 8, %bb.bc ], [ %i.mc, %bb.bb ], [ 8, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %sfnt_open_font.exit.thread

woff2_open_font.exit.i:                           ; preds = %bb.ed, %bb.ec
  %.pr.i = load i32, ptr %i.b, align 4, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  store i32 %.pr.i, ptr %i.h, align 4, !tbaa !30
  %.not87.i = icmp eq i32 %.pr.i, 0
  br i1 %.not87.i, label %.backedge.i, label %sfnt_open_font.exit.thread

bb.ee:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  store i64 1953784678, ptr %i.ak, align 8, !tbaa !462
  %i.aaq = icmp eq i32 %i.bq, 1953784678
  br i1 %i.aaq, label %bb.ef, label %bb.ek

bb.ef:                                            ; preds = %bb.ee
  %i.aar = call i32 @FT_Stream_ReadFields(ptr noundef %.069132.i, ptr noundef nonnull @sfnt_open_font.ttc_header_fields, ptr noundef nonnull %i.ak) #27 ; 3 uses
  store i32 %i.aar, ptr %i.h, align 4, !tbaa !30
  %.not83.i = icmp eq i32 %i.aar, 0
  br i1 %.not83.i, label %bb.eg, label %sfnt_open_font.exit.thread

bb.eg:                                            ; preds = %bb.ef
  %i.aas = load i64, ptr %i.am, align 8, !tbaa !160 ; 3 uses
  %i.aat = icmp eq i64 %i.aas, 0
  br i1 %i.aat, label %sfnt_open_font.exit.thread, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aau = getelementptr inbounds nuw i8, ptr %.069132.i, i64 8
  %i.aav = load i64, ptr %i.aau, align 8, !tbaa !132
  %i.aaw = lshr i64 %i.aav, 5
  %i.aax = icmp ugt i64 %i.aas, %i.aaw
  br i1 %i.aax, label %sfnt_open_font.exit.thread, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.aay = call ptr @ft_mem_qrealloc(ptr noundef %i.aj, i64 noundef 8, i64 noundef 0, i64 noundef %i.aas, ptr noundef null, ptr noundef nonnull %i.h) #27
  %i.aaz = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  store ptr %i.aay, ptr %i.aaz, align 8, !tbaa !161
  %i.aba = load i32, ptr %i.h, align 4, !tbaa !30 ; 2 uses
  %.not84.i = icmp eq i32 %i.aba, 0
  br i1 %.not84.i, label %bb.ej, label %sfnt_open_font.exit.thread

bb.ej:                                            ; preds = %bb.ei
  %i.abb = load i64, ptr %i.am, align 8, !tbaa !160
  %i.abc = shl nsw i64 %i.abb, 2
  %i.abd = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %.069132.i, i64 noundef %i.abc) #27 ; 3 uses
  store i32 %i.abd, ptr %i.h, align 4, !tbaa !30
  %.not85.i = icmp eq i32 %i.abd, 0
  br i1 %.not85.i, label %.preheader.i, label %sfnt_open_font.exit.thread

.preheader.i:                                     ; preds = %bb.ej
  %i.abe = load i64, ptr %i.am, align 8, !tbaa !160
  %i.abf = icmp sgt i64 %i.abe, 0
  br i1 %i.abf, label %.lr.ph142.i, label %sfnt_open_font.exit

.lr.ph142.i:                                      ; preds = %.preheader.i, %.lr.ph142.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph142.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.abg = call i32 @FT_Stream_GetULong(ptr noundef nonnull %.069132.i) #27
  %i.abh = zext i32 %i.abg to i64
  %i.abi = load ptr, ptr %i.aaz, align 8, !tbaa !161
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.abi, i64 %indvars.iv.i
  store i64 %i.abh, ptr %i.abj, align 8, !tbaa !121
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.abk = load i64, ptr %i.am, align 8, !tbaa !160
  %i.abl = icmp sgt i64 %i.abk, %indvars.iv.next.i
  br i1 %i.abl, label %.lr.ph142.i, label %sfnt_open_font.exit, !llvm.loop !417

bb.ek:                                            ; preds = %bb.ee
  store i64 65536, ptr %i.al, align 8, !tbaa !463
  store i64 1, ptr %i.am, align 8, !tbaa !160
  %i.abm = call ptr @ft_mem_qalloc(ptr noundef %i.aj, i64 noundef 8, ptr noundef nonnull %i.h) #27 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr %i.abm, ptr %i.abn, align 8, !tbaa !161
  %i.abo = load i32, ptr %i.h, align 4, !tbaa !30 ; 2 uses
  %.not82.i = icmp eq i32 %i.abo, 0
  br i1 %.not82.i, label %sfnt_open_font.exit.thread216, label %sfnt_open_font.exit.thread

sfnt_open_font.exit.thread216:                    ; preds = %bb.ek
  store i64 %i.br, ptr %i.abm, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %bb.el

sfnt_open_font.exit.thread:                       ; preds = %bb.ba, %woff_open_font.exit.i, %bb.l, %.backedge.i, %woff2_open_font.exit.i, %bb.k, %woff_open_font.exit.thread.i, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %woff2_open_font.exit.thread.i, %bb.ek, %bb.j
  %.1.i.ph = phi i32 [ %i.aar, %bb.ef ], [ 8, %bb.eg ], [ 10, %bb.eh ], [ %i.aba, %bb.ei ], [ %i.abd, %bb.ej ], [ %.0.i.ph.i, %woff_open_font.exit.thread.i ], [ %i.ap, %bb.j ], [ %i.abo, %bb.ek ], [ %.0221.i.ph.i, %woff2_open_font.exit.thread.i ], [ %i.lx, %bb.ba ], [ %.pre303.i.i, %woff_open_font.exit.i ], [ %i.bs, %bb.l ], [ %i.lw, %.backedge.i ], [ %.pr.i, %woff2_open_font.exit.i ], [ 2, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %bb.fs

sfnt_open_font.exit:                              ; preds = %.lr.ph142.i, %.preheader.i
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %.069132.i) #27
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  %.not174 = icmp eq i32 %.pre.i, 0
  br i1 %.not174, label %bb.el, label %bb.fs

bb.el:                                            ; preds = %sfnt_open_font.exit.thread216, %sfnt_open_font.exit
  %i.abp = load ptr, ptr %i.bf, align 8, !tbaa !139 ; 16 uses
  %i.abq = icmp slt i32 %.0207, 0
  %i.abr = call i32 @llvm.abs.i32(i32 %.0207, i1 true) ; 2 uses
  %i.abs = and i32 %i.abr, 65535                  ; 2 uses
  %i.abt = icmp ne i32 %i.abs, 0
  %or.cond = and i1 %i.abq, %i.abt
  %i.abu = sext i1 %or.cond to i32
  %spec.select = add nsw i32 %i.abs, %i.abu       ; 2 uses
  %i.abv = zext nneg i32 %spec.select to i64
  %i.abw = load i64, ptr %i.am, align 8, !tbaa !160
  %.not175 = icmp sgt i64 %i.abw, %i.abv
  br i1 %.not175, label %._crit_edge280, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.abx = icmp sgt i32 %.0207, -1
  br i1 %i.abx, label %bb.fs, label %._crit_edge280

._crit_edge280:                                   ; preds = %bb.em, %bb.el
  %.1158 = phi i32 [ %spec.select, %bb.el ], [ 0, %bb.em ]
  %i.aby = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !161
  %i.aca = zext nneg i32 %.1158 to i64
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.abz, i64 %i.aca
  %i.acc = load i64, ptr %i.acb, align 8, !tbaa !121
  %i.acd = call i32 @FT_Stream_Seek(ptr noundef %i.abp, i64 noundef %i.acc) #27 ; 2 uses
  %.not176 = icmp eq i32 %i.acd, 0
  br i1 %.not176, label %bb.en, label %bb.fs

bb.en:                                            ; preds = %._crit_edge280
  %i.ace = getelementptr inbounds nuw i8, ptr %.0155, i64 192
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !464
  %i.acg = call i32 %i.acf(ptr noundef nonnull %1, ptr noundef %i.abp) #27 ; 3 uses
  store i32 %i.acg, ptr %i.i, align 4, !tbaa !30
  %.not177 = icmp eq i32 %i.acg, 0
end_hunk_0
begin_hunk_1_@tt_face_get_colorline_stops:bb.a
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29
  %i.bb = zext i8 %i.ba to i16
  %i.bc = or disjoint i16 %i.ay, %i.bb            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !614
  br i1 %.not54, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %i.bf = load i32, ptr %i.au, align 1            ; 2 uses
  %i.bg = tail call i32 @llvm.bswap.i32(i32 %i.bf) ; 2 uses
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  %i.bi = icmp eq i32 %i.bf, -1
  br i1 %i.bi, label %get_deltas_for_var_index_base.exit, label %.preheader37.i

.preheader37.i:                                   ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !128
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 112 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !326 ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader37.i
  %i.br = load i64, ptr %i.bo, align 8, !tbaa !327 ; 2 uses
  %.not36.i = icmp ugt i64 %i.br, %i.bh
  %i.bs = add nsw i64 %i.br, -1
  %spec.select.i = select i1 %.not36.i, i64 %i.bh, i64 %i.bs ; 2 uses
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !328
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %spec.select.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !30
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %spec.select.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %.preheader37.i, %bb.h
  %.031.i = phi i32 [ %i.bv, %bb.h ], [ 0, %.preheader37.i ]
  %.030.i = phi i32 [ %i.bx, %bb.h ], [ %i.bg, %.preheader37.i ]
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !329
  %i.bz = tail call i32 %i.by(ptr noundef nonnull %0, ptr noundef nonnull %i.bn, i32 noundef %.031.i, i32 noundef %.030.i) #27, !inline_history !605
  %i.ca = add nuw nsw i64 %i.bh, 1                ; 3 uses
  %i.cb = load ptr, ptr %i.bl, align 8, !tbaa !326 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.cb, null
  br i1 %.not.i.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = load i64, ptr %i.bo, align 8, !tbaa !327 ; 2 uses
  %.not36.i.1 = icmp ult i64 %i.ca, %i.cc
  %i.cd = add nsw i64 %i.cc, -1
  %spec.select.i.1 = select i1 %.not36.i.1, i64 %i.ca, i64 %i.cd ; 2 uses
  %i.ce = load ptr, ptr %i.bp, align 8, !tbaa !328
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %spec.select.i.1
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !30
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %spec.select.i.1
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !30
  br label %get_deltas_for_var_index_base.exit.loopexit

bb.k:                                             ; preds = %bb.i
  %i.cj = trunc nuw i64 %i.ca to i32
  br label %get_deltas_for_var_index_base.exit.loopexit

get_deltas_for_var_index_base.exit.loopexit:      ; preds = %bb.k, %bb.j
  %.031.i.1 = phi i32 [ %i.cg, %bb.j ], [ 0, %bb.k ]
  %.030.i.1 = phi i32 [ %i.ci, %bb.j ], [ %i.cj, %bb.k ]
  %i.ck = load ptr, ptr %i.bm, align 8, !tbaa !329
  %i.cl = tail call i32 %i.ck(ptr noundef nonnull %0, ptr noundef nonnull %i.bn, i32 noundef %.031.i.1, i32 noundef %.030.i.1) #27, !inline_history !605
  %.pre = load i64, ptr %1, align 8, !tbaa !612
  %.pre56 = load i16, ptr %i.bd, align 2, !tbaa !614
  %.pre57.pre = load i32, ptr %i.g, align 4, !tbaa !606
  %i.cm = sext i32 %i.bz to i64
  %i.cn = shl nsw i64 %i.cm, 2
  %i.co = trunc i32 %i.cl to i16
  br label %get_deltas_for_var_index_base.exit

get_deltas_for_var_index_base.exit:               ; preds = %bb.g, %get_deltas_for_var_index_base.exit.loopexit
  %.pre57 = phi i32 [ %.pre57.pre, %get_deltas_for_var_index_base.exit.loopexit ], [ %i.h, %bb.g ]
  %i.cp = phi i16 [ %.pre56, %get_deltas_for_var_index_base.exit.loopexit ], [ %i.bc, %bb.g ]
  %i.cq = phi i64 [ %.pre, %get_deltas_for_var_index_base.exit.loopexit ], [ %i.ak, %bb.g ]
  %.sroa.5.0 = phi i16 [ %i.co, %get_deltas_for_var_index_base.exit.loopexit ], [ 0, %bb.g ]
  %.sroa.0.0 = phi i64 [ %i.cn, %get_deltas_for_var_index_base.exit.loopexit ], [ 0, %bb.g ]
  %i.cr = add nsw i64 %.sroa.0.0, %i.cq
  store i64 %i.cr, ptr %1, align 8, !tbaa !612
  %i.cs = add i16 %i.cp, %.sroa.5.0
  store i16 %i.cs, ptr %i.bd, align 2, !tbaa !614
  br label %bb.l

bb.l:                                             ; preds = %get_deltas_for_var_index_base.exit, %bb.f
  %i.ct = phi i32 [ %.pre57, %get_deltas_for_var_index_base.exit ], [ %i.h, %bb.f ]
  %.048 = phi ptr [ %i.be, %get_deltas_for_var_index_base.exit ], [ %i.au, %bb.f ]
  store ptr %.048, ptr %i.l, align 8, !tbaa !609
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.g, align 4, !tbaa !606
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a, %bb.b, %bb.l
  %.1 = phi i8 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.l ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i8 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext range(i8 0, 2) i8 @tt_face_get_paint(ptr noundef %0, ptr %1, i8 %2, ptr nofree noundef %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 17 uses
  %i.b = alloca ptr, align 8                      ; 18 uses
  %i.c = alloca [6 x i32], align 16               ; 42 uses
  %4 = alloca %struct.FT_Matrix_, align 8         ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181  ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.ee, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !300
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %bb.ee, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 24 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309  ; 2 uses
  %.not28 = icmp eq ptr %i.i, null
  br i1 %.not28, label %bb.ee, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not29 = icmp eq i8 %2, 0
  br i1 %.not29, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 12, ptr %3, align 8, !tbaa !616
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.j, align 8, !tbaa !141
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !262  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !322
  %i.o = add nsw i64 %i.n, 32
  %i.p = ashr i64 %i.o, 6                         ; 2 uses
  store i64 %i.p, ptr %4, align 8, !tbaa !617
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.s = load i64, ptr %i.r, align 8, !tbaa !323
  %i.t = add nsw i64 %i.s, 32
  %i.u = ashr i64 %i.t, 6                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !618
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !165  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !324
  %i.aa = and i32 %i.z, 1
  %.not30 = icmp eq i32 %i.aa, 0
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @FT_Matrix_Multiply(ptr noundef nonnull %i.x, ptr noundef nonnull %4) #27
  %.pre = load i64, ptr %4, align 8, !tbaa !617
  %.pre32 = load i64, ptr %i.q, align 8, !tbaa !619
  %.pre33 = load i64, ptr %i.ab, align 8, !tbaa !620
  %.pre34 = load i64, ptr %i.v, align 8, !tbaa !618
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = phi i64 [ %.pre34, %bb.f ], [ %i.u, %bb.e ]
  %i.ad = phi i64 [ %.pre33, %bb.f ], [ 0, %bb.e ]
  %i.ae = phi i64 [ %.pre32, %bb.f ], [ 0, %bb.e ]
  %i.af = phi i64 [ %.pre, %bb.f ], [ %i.p, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.ae, ptr %i.ah, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.ad, ptr %i.ai, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %i.ac, ptr %i.aj, align 8, !tbaa !29
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !165 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !324
  %i.an = and i32 %i.am, 2
  %.not31 = icmp eq i32 %i.an, 0
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !621
  %i.aq = shl nsw i64 %i.ap, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !29
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !165
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !622
  %i.av = shl nsw i64 %i.au, 10
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.aw, align 8, !tbaa !29
  br label %.sink.split

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %read_paint.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 24 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !303
  %i.az = icmp ult ptr %1, %i.ay
  br i1 %i.az, label %read_paint.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 24 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !310
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -2 ; 2 uses
  %i.be = icmp ugt ptr %1, %i.bd
  br i1 %i.be, label %read_paint.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 7 uses
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !141
  %i.bg = load i8, ptr %1, align 1, !tbaa !29     ; 4 uses
  %i.bh = zext i8 %i.bg to i32
  store i32 %i.bh, ptr %3, align 8, !tbaa !616
  %i.bi = icmp ugt i8 %i.bg, 32
  br i1 %i.bi, label %read_paint.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i8 %i.bg, label %bb.aa [
    i8 1, label %bb.o
    i8 2, label %bb.s
    i8 3, label %bb.s
    i8 11, label %bb.y
  ]

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds i8, ptr %i.bc, i64 -5
  %i.bk = icmp ugt ptr %i.bf, %i.bj
  br i1 %i.bk, label %read_paint.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = load i8, ptr %i.bf, align 1, !tbaa !29  ; 2 uses
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !301 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bm
  br i1 %i.bp, label %read_paint.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.br = load i32, ptr %i.bq, align 1
  %i.bs = tail call i32 @llvm.bswap.i32(i32 %i.br) ; 2 uses
  %i.bt = zext i8 %i.bl to i32                    ; 2 uses
  %i.bu = add i32 %i.bs, %i.bt
  %i.bv = zext i32 %i.bu to i64
  %i.bw = icmp ult i64 %i.bo, %i.bv
  br i1 %i.bw, label %read_paint.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bt, ptr %i.bx, align 8, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !302
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = shl i32 %i.bs, 2
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !29
  br label %read_paint.exit

bb.s:                                             ; preds = %bb.n, %bb.n
  %i.cg = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.ch = icmp ugt ptr %i.bf, %i.cg
  br i1 %i.ch, label %read_paint.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.cj = load i8, ptr %i.bf, align 1, !tbaa !29
  %i.ck = zext i8 %i.cj to i16
  %i.cl = shl nuw i16 %i.ck, 8
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !29
  %i.co = zext i8 %i.cn to i16
  %i.cp = or disjoint i16 %i.cl, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 %i.cp, ptr %i.cq, align 8, !tbaa !29
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  %i.cs = load i8, ptr %i.ci, align 1, !tbaa !29
  %i.ct = zext i8 %i.cs to i16
  %i.cu = shl nuw i16 %i.ct, 8
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !29
  %i.cx = zext i8 %i.cw to i16
  %i.cy = or disjoint i16 %i.cu, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 3 uses
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !29
  %i.da = icmp eq i8 %i.bg, 3
  br i1 %i.da, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.db = load ptr, ptr %i.ax, align 8, !tbaa !303
  %i.dc = icmp ult ptr %i.cr, %i.db
  br i1 %i.dc, label %read_paint.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = load ptr, ptr %i.h, align 8, !tbaa !309
  %i.de = load i64, ptr %i.ba, align 8, !tbaa !310
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.de
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.dh = icmp ugt ptr %i.cr, %i.dg
  br i1 %i.dh, label %read_paint.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = load i32, ptr %i.cr, align 1
  %i.dj = tail call i32 @llvm.bswap.i32(i32 %i.di)
  %i.dk = zext i32 %i.dj to i64
  call fastcc void @get_deltas_for_var_index_base(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef %i.dk, i32 noundef 1, ptr noundef %i.c)
  %i.dl = load i32, ptr %i.c, align 16, !tbaa !30
  %i.dm = load i16, ptr %i.cz, align 2, !tbaa !29
  %i.dn = trunc i32 %i.dl to i16
  %i.do = add i16 %i.dm, %i.dn
  store i16 %i.do, ptr %i.cz, align 2, !tbaa !29
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  store i32 2, ptr %3, align 8, !tbaa !616
  br label %read_paint.exit

bb.y:                                             ; preds = %bb.n
  %i.dp = icmp ugt ptr %i.bf, %i.bd
  br i1 %i.dp, label %read_paint.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dq = load i8, ptr %i.bf, align 1, !tbaa !29
  %i.dr = zext i8 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 8
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !29
  %i.dv = zext i8 %i.du to i32
  %i.dw = or disjoint i32 %i.ds, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.dw, ptr %i.dx, align 8, !tbaa !29
  br label %read_paint.exit

bb.aa:                                            ; preds = %bb.n
  %i.dy = call fastcc zeroext i8 @get_child_table_pointer(ptr noundef nonnull %i.e, ptr noundef nonnull %1, ptr noundef %i.a, ptr noundef %i.b)
  %.not387.i = icmp eq i8 %i.dy, 0
  br i1 %.not387.i, label %read_paint.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = load i32, ptr %3, align 8, !tbaa !616   ; 22 uses
  %i.ea = icmp eq i32 %i.dz, 4                    ; 2 uses
  br i1 %i.ea, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eb = icmp eq i32 %i.dz, 5
  br i1 %i.eb, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0341.i = phi i8 [ 0, %bb.ab ], [ 1, %bb.ac ]
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ee = tail call fastcc zeroext i8 @read_color_line(ptr noundef nonnull %i.e, ptr noundef %i.ec, ptr noundef nonnull %i.ed, i8 noundef zeroext %.0341.i)
  %.not395.i = icmp eq i8 %i.ee, 0
  br i1 %.not395.i, label %read_paint.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !141 ; 15 uses
  %i.eg = load ptr, ptr %i.ax, align 8, !tbaa !303
  %i.eh = icmp ult ptr %i.ef, %i.eg
  br i1 %i.eh, label %read_paint.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ei = load ptr, ptr %i.h, align 8, !tbaa !309
  %i.ej = load i64, ptr %i.ba, align 8, !tbaa !310
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -12
  %i.em = icmp ugt ptr %i.ef, %i.el
  br i1 %i.em, label %read_paint.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.eo = load i8, ptr %i.ef, align 1, !tbaa !29
  %i.ep = zext i8 %i.eo to i16
  %i.eq = shl nuw i16 %i.ep, 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !29
  %i.et = zext i8 %i.es to i16
  %i.eu = or disjoint i16 %i.eq, %i.et
  %i.ev = sext i16 %i.eu to i64
  %i.ew = shl nsw i64 %i.ev, 16
end_hunk_1
begin_hunk_2_@tt_face_get_paint:bb.a
  %i.ahj = load i8, ptr %i.aha, align 1, !tbaa !29
  %i.ahk = zext i8 %i.ahj to i16
  %i.ahl = shl nuw i16 %i.ahk, 8
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.aha, i64 1
  %i.ahn = load i8, ptr %i.ahm, align 1, !tbaa !29
  %i.aho = zext i8 %i.ahn to i16
  %i.ahp = or disjoint i16 %i.ahl, %i.aho
  %i.ahq = sext i16 %i.ahp to i64
  %i.ahr = shl nsw i64 %i.ahq, 2
  %i.ahs = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  store i64 %i.ahr, ptr %i.ahs, align 8, !tbaa !29
  %i.aht = getelementptr inbounds nuw i8, ptr %i.aha, i64 4 ; 4 uses
  %i.ahu = load i8, ptr %i.ahi, align 1, !tbaa !29
  %i.ahv = zext i8 %i.ahu to i16
  %i.ahw = shl nuw i16 %i.ahv, 8
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.aha, i64 3
  %i.ahy = load i8, ptr %i.ahx, align 1, !tbaa !29
  %i.ahz = zext i8 %i.ahy to i16
  %i.aia = or disjoint i16 %i.ahw, %i.ahz
  %i.aib = sext i16 %i.aia to i64
  %i.aic = shl nsw i64 %i.aib, 2
  %i.aid = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.aic, ptr %i.aid, align 8, !tbaa !29
  %i.aie = and i32 %i.dz, -2
  %switch400.i = icmp eq i32 %i.aie, 30
  br i1 %switch400.i, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.aif = load ptr, ptr %i.ax, align 8, !tbaa !303
  %i.aig = icmp ult ptr %i.aht, %i.aif
  br i1 %i.aig, label %read_paint.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aih = load ptr, ptr %i.h, align 8, !tbaa !309
  %i.aii = load i64, ptr %i.ba, align 8, !tbaa !310
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aih, i64 %i.aii
  %i.aik = getelementptr inbounds i8, ptr %i.aij, i64 -4
  %i.ail = icmp ugt ptr %i.aht, %i.aik
  br i1 %i.ail, label %read_paint.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aha, i64 6
  %i.ain = load i8, ptr %i.aht, align 1, !tbaa !29
  %i.aio = zext i8 %i.ain to i16
  %i.aip = shl nuw i16 %i.aio, 8
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aha, i64 5
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !29
  %i.ais = zext i8 %i.air to i16
  %i.ait = or disjoint i16 %i.aip, %i.ais
  %i.aiu = sext i16 %i.ait to i64
  %i.aiv = shl nsw i64 %i.aiu, 16
  %i.aiw = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.aiv, ptr %i.aiw, align 8, !tbaa !29
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  %i.aiy = load i8, ptr %i.aim, align 1, !tbaa !29
  %i.aiz = zext i8 %i.aiy to i16
  %i.aja = shl nuw i16 %i.aiz, 8
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aha, i64 7
  %i.ajc = load i8, ptr %i.ajb, align 1, !tbaa !29
  %i.ajd = zext i8 %i.ajc to i16
  %i.aje = or disjoint i16 %i.aja, %i.ajd
  %i.ajf = sext i16 %i.aje to i64
  %i.ajg = shl nsw i64 %i.ajf, 16
  %i.ajh = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.ajg, ptr %i.ajh, align 8, !tbaa !29
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dm
  %i.aji = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aji, i8 0, i64 16, i1 false)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.ajj = phi ptr [ %i.aht, %bb.dq ], [ %i.aix, %bb.dp ] ; 6 uses
  switch i32 %i.dz, label %bb.dy [
    i32 29, label %bb.ds
    i32 31, label %bb.ds
  ]

bb.ds:                                            ; preds = %bb.dr, %bb.dr
  %i.ajk = load ptr, ptr %i.ax, align 8, !tbaa !303
  %i.ajl = icmp ult ptr %i.ajj, %i.ajk
  br i1 %i.ajl, label %read_paint.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ajm = load ptr, ptr %i.h, align 8, !tbaa !309
  %i.ajn = load i64, ptr %i.ba, align 8, !tbaa !310
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.ajn
  %i.ajp = getelementptr inbounds i8, ptr %i.ajo, i64 -4
  %i.ajq = icmp ugt ptr %i.ajj, %i.ajp
  br i1 %i.ajq, label %read_paint.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ajr = load i8, ptr %i.ajj, align 1, !tbaa !29
  %i.ajs = zext i8 %i.ajr to i64
  %i.ajt = shl nuw nsw i64 %i.ajs, 24
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajj, i64 1
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !29
  %i.ajw = zext i8 %i.ajv to i64
  %i.ajx = shl nuw nsw i64 %i.ajw, 16
  %i.ajy = or disjoint i64 %i.ajx, %i.ajt
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajj, i64 2
  %i.aka = load i8, ptr %i.ajz, align 1, !tbaa !29
  %i.akb = zext i8 %i.aka to i64
  %i.akc = shl nuw nsw i64 %i.akb, 8
  %i.akd = or disjoint i64 %i.ajy, %i.akc
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajj, i64 3
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !29
  %i.akg = zext i8 %i.akf to i64
  %i.akh = or disjoint i64 %i.akd, %i.akg         ; 2 uses
  %i.aki = icmp eq i32 %i.dz, 29
  br i1 %i.aki, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  call fastcc void @get_deltas_for_var_index_base(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef %i.akh, i32 noundef 2, ptr noundef %i.c)
  %i.akj = load <2 x i32>, ptr %i.c, align 16, !tbaa !30
  %i.akk = sext <2 x i32> %i.akj to <2 x i64>
  %i.akl = shl nsw <2 x i64> %i.akk, splat (i64 2)
  %i.akm = load <2 x i64>, ptr %i.ahs, align 8, !tbaa !29
  %i.akn = add nsw <2 x i64> %i.akl, %i.akm
  store <2 x i64> %i.akn, ptr %i.ahs, align 8, !tbaa !29
  %.pre.i = load i32, ptr %3, align 8, !tbaa !616
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.ako = phi i32 [ %.pre.i, %bb.dv ], [ %i.dz, %bb.du ]
  %i.akp = icmp eq i32 %i.ako, 31
  br i1 %i.akp, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  call fastcc void @get_deltas_for_var_index_base(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef %i.akh, i32 noundef 4, ptr noundef %i.c)
  %i.akq = load <2 x i32>, ptr %i.c, align 16, !tbaa !30
  %i.akr = sext <2 x i32> %i.akq to <2 x i64>
  %i.aks = shl nsw <2 x i64> %i.akr, splat (i64 2)
  %i.akt = load <2 x i64>, ptr %i.ahs, align 8, !tbaa !29
  %i.aku = add nsw <2 x i64> %i.aks, %i.akt
  store <2 x i64> %i.aku, ptr %i.ahs, align 8, !tbaa !29
  %i.akv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.akw = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.akx = load <2 x i32>, ptr %i.akv, align 8, !tbaa !30
  %i.aky = sext <2 x i32> %i.akx to <2 x i64>
  %i.akz = shl nsw <2 x i64> %i.aky, splat (i64 16)
  %i.ala = load <2 x i64>, ptr %i.akw, align 8, !tbaa !29
  %i.alb = add nsw <2 x i64> %i.akz, %i.ala
  store <2 x i64> %i.alb, ptr %i.akw, align 8, !tbaa !29
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.dr
  store i32 28, ptr %3, align 8, !tbaa !616
  br label %read_paint.exit

bb.dz:                                            ; preds = %bb.cv
  %i.alc = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.ald = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.alc, ptr %i.ald, align 8, !tbaa !29
  %i.ale = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.ale, align 8, !tbaa !29
  %i.alf = load ptr, ptr %i.a, align 8, !tbaa !141 ; 4 uses
  %i.alg = load ptr, ptr %i.ax, align 8, !tbaa !303
  %i.alh = icmp ult ptr %i.alf, %i.alg
  br i1 %i.alh, label %read_paint.exit, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ali = load ptr, ptr %i.h, align 8, !tbaa !309
  %i.alj = load i64, ptr %i.ba, align 8, !tbaa !310
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ali, i64 %i.alj
  %i.all = getelementptr inbounds i8, ptr %i.alk, i64 -1
  %i.alm = icmp ugt ptr %i.alf, %i.all
  br i1 %i.alm, label %read_paint.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alf, i64 1
  store ptr %i.aln, ptr %i.a, align 8, !tbaa !141
  %i.alo = load i8, ptr %i.alf, align 1, !tbaa !29 ; 2 uses
  %i.alp = icmp ugt i8 %i.alo, 27
  br i1 %i.alp, label %read_paint.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.alq = zext nneg i8 %i.alo to i32
  %i.alr = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.alq, ptr %i.alr, align 8, !tbaa !29
  %i.als = call fastcc zeroext i8 @get_child_table_pointer(ptr noundef nonnull %i.e, ptr noundef nonnull %1, ptr noundef %i.a, ptr noundef %i.b)
  %.not388.i = icmp eq i8 %i.als, 0
  br i1 %.not388.i, label %read_paint.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.alt = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.alu = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.alt, ptr %i.alu, align 8, !tbaa !29
  %i.alv = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.alv, align 8, !tbaa !29
  br label %read_paint.exit

read_paint.exit:                                  ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.u, %bb.v, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ad, %bb.ae, %bb.af, %bb.ah, %bb.ai, %bb.ak, %bb.an, %bb.ao, %bb.ap, %bb.ar, %bb.as, %bb.au, %bb.ax, %bb.ay, %bb.az, %bb.bb, %bb.bc, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bm, %bb.bn, %bb.bp, %bb.bq, %bb.br, %bb.bt, %bb.bu, %bb.bw, %bb.by, %bb.bz, %bb.cb, %bb.cc, %bb.cf, %bb.cg, %bb.ck, %bb.cl, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cz, %bb.da, %bb.de, %bb.df, %bb.dj, %bb.dk, %bb.dl, %bb.dn, %bb.do, %bb.ds, %bb.dt, %bb.dy, %bb.dz, %bb.ea, %bb.eb, %bb.ec, %bb.ed
  %.4.i = phi i8 [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %bb.q ], [ 0, %bb.s ], [ 1, %bb.x ], [ 1, %bb.dj ], [ 0, %bb.u ], [ 1, %bb.z ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 1, %bb.ak ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.ah ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 1, %bb.be ], [ 0, %bb.ec ], [ 0, %bb.ar ], [ 0, %bb.bb ], [ 1, %bb.bh ], [ 0, %bb.bi ], [ 0, %bb.bj ], [ 1, %bb.bp ], [ 0, %bb.ds ], [ 0, %bb.bf ], [ 0, %bb.bm ], [ 0, %bb.bq ], [ 1, %bb.bw ], [ 0, %bb.cz ], [ 0, %bb.bt ], [ 0, %bb.by ], [ 0, %bb.cb ], [ 0, %bb.cf ], [ 1, %bb.cu ], [ 0, %bb.dk ], [ 0, %bb.dn ], [ 1, %bb.dy ], [ 0, %bb.cv ], [ 0, %bb.ck ], [ 0, %bb.cw ], [ 1, %bb.ed ], [ 0, %bb.l ], [ 1, %bb.r ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.de ], [ 0, %bb.df ], [ 0, %bb.v ], [ 0, %bb.ea ], [ 0, %bb.af ], [ 0, %bb.ai ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 1, %bb.au ], [ 0, %bb.ap ], [ 0, %bb.as ], [ 0, %bb.az ], [ 0, %bb.bc ], [ 0, %bb.bg ], [ 0, %bb.bk ], [ 0, %bb.bn ], [ 0, %bb.br ], [ 0, %bb.bu ], [ 0, %bb.bz ], [ 0, %bb.cc ], [ 0, %bb.cg ], [ 0, %bb.cl ], [ 0, %bb.cx ], [ 0, %bb.da ], [ 0, %bb.dl ], [ 0, %bb.do ], [ 0, %bb.dt ], [ 0, %bb.eb ], [ 0, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ee

.sink.split:                                      ; preds = %bb.h, %bb.i
  %.sink = phi i64 [ 0, %bb.i ], [ %i.av, %bb.h ]
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %.sink, ptr %5, align 8, !tbaa !29
  br label %bb.ee

bb.ee:                                            ; preds = %.sink.split, %bb.a, %bb.b, %bb.c, %read_paint.exit
  %.0 = phi i8 [ 0, %bb.a ], [ %.4.i, %read_paint.exit ], [ 0, %bb.c ], [ 0, %bb.b ], [ 1, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_face_colr_blend_layer(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !626
  %.not = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 156 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.i = load <2 x i32>, ptr %i.g, align 8, !tbaa !30
  store <2 x i32> %i.i, ptr %i.h, align 8, !tbaa !30
  %i.j = load i32, ptr %i.f, align 4, !tbaa !627
  %i.k = load <2 x i32>, ptr %i.e, align 8, !tbaa !30
  store <2 x i32> %i.k, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 178
  store i8 7, ptr %i.l, align 2, !tbaa !628
  %i.m = shl nsw i32 %i.j, 2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i32 %i.m, ptr %i.n, align 8, !tbaa !629
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i16 256, ptr %i.o, align 8, !tbaa !630
  %i.p = tail call i32 @ft_glyphslot_alloc_bitmap(ptr noundef nonnull %2) #27 ; 3 uses
  store i32 %i.p, ptr %i.a, align 4, !tbaa !30
  %.not188 = icmp eq i32 %i.p, 0
  br i1 %.not188, label %.critedge.thread, label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !631  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.t = load i32, ptr %i.s, align 8, !tbaa !631  ; 3 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.t) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 156 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !627
  %i.w = add nsw i32 %i.v, %i.r                   ; 2 uses
  %i.x = load i32, ptr %i.f, align 4, !tbaa !627
  %i.y = add nsw i32 %i.x, %i.t                   ; 2 uses
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 196 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !632 ; 3 uses
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !633
  %i.ad = sub nsw i32 %i.ab, %i.ac                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 196
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !632 ; 3 uses
  %i.ag = load i32, ptr %i.e, align 8, !tbaa !633
  %i.ah = sub nsw i32 %i.af, %i.ag                ; 2 uses
  %i.ai = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.ah)
  %i.aj = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 %i.af) ; 3 uses
  %.not189 = icmp sle i32 %i.r, %i.t
  %.not190 = icmp sge i32 %i.w, %i.y
  %or.cond213 = select i1 %.not189, i1 %.not190, i1 false
  br i1 %or.cond213, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not191 = icmp sle i32 %i.ad, %i.ah
  %.not192 = icmp sge i32 %i.ab, %i.af
  %or.cond = and i1 %.not192, %.not191
  br i1 %or.cond, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !162
  %i.am = sub nsw i32 %i.z, %.                    ; 2 uses
  %i.an = sub nsw i32 %i.aj, %i.ai                ; 2 uses
  %i.ao = shl i32 %i.am, 2                        ; 3 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = zext i32 %i.an to i64
  %i.ar = call ptr @ft_mem_realloc(ptr noundef %i.al, i64 noundef %i.ap, i64 noundef 0, i64 noundef %i.aq, ptr noundef null, ptr noundef nonnull %i.a) #27 ; 2 uses
  %i.as = load i32, ptr %i.a, align 4, !tbaa !30  ; 2 uses
  %.not193 = icmp eq i32 %i.as, 0
  br i1 %.not193, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.at = load i32, ptr %i.b, align 8, !tbaa !633
  %.not226 = icmp eq i32 %i.at, 0
  br i1 %.not226, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.au = load i32, ptr %i.aa, align 4, !tbaa !632
  %i.av = sub nsw i32 %i.aj, %i.au
  %i.aw = mul nsw i32 %i.av, %i.ao
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.ax
  %i.az = load i32, ptr %i.q, align 8, !tbaa !631
  %i.ba = sub nsw i32 %i.az, %.
  %i.bb = shl nsw i32 %i.ba, 2
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 %i.bc
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !626
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 160
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.0165219 = phi i32 [ 0, %.lr.ph ], [ %i.bn, %bb.g ]
  %.0175218 = phi ptr [ %i.bd, %.lr.ph ], [ %i.bm, %bb.g ] ; 2 uses
  %.0176217 = phi ptr [ %i.be, %.lr.ph ], [ %i.bl, %bb.g ] ; 2 uses
  %i.bg = load i32, ptr %i.u, align 4, !tbaa !627
  %i.bh = shl i32 %i.bg, 2
  %i.bi = zext i32 %i.bh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0175218, ptr align 1 %.0176217, i64 %i.bi, i1 false)
  %i.bj = load i32, ptr %i.bf, align 8, !tbaa !629
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %.0176217, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.0175218, i64 %i.ap
  %i.bn = add nuw i32 %.0165219, 1                ; 2 uses
  %i.bo = load i32, ptr %i.b, align 8, !tbaa !633
  %i.bp = icmp ult i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.g, label %._crit_edge, !llvm.loop !623

._crit_edge:                                      ; preds = %bb.g, %bb.f
  call void @ft_glyphslot_set_bitmap(ptr noundef nonnull %2, ptr noundef %i.ar) #27
  store i32 %i.aj, ptr %i.aa, align 4, !tbaa !632
  store i32 %., ptr %i.q, align 8, !tbaa !631
  store i32 %i.am, ptr %i.u, align 4, !tbaa !627
  store i32 %i.an, ptr %i.b, align 8, !tbaa !633
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i32 %i.ao, ptr %i.bq, align 8, !tbaa !629
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !276
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !278
  %i.bv = or i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !278
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i32 1651078259, ptr %i.bw, align 8, !tbaa !634
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %._crit_edge, %bb.b
  %i.bx = icmp eq i32 %1, 65535
  br i1 %i.bx, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.critedge.thread
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !635
  %.not194 = icmp eq i8 %i.bz, 0
  br i1 %.not194, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1105
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !636
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1106
  %i.cd = load <2 x i8>, ptr %i.cc, align 2, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !637
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !210 ; 2 uses
  %.not195 = icmp eq ptr %i.ch, null
  br i1 %.not195, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.cj = load i16, ptr %i.ci, align 8, !tbaa !638
  %i.ck = zext i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !154
  %i.cn = and i16 %i.cm, 2
  %.not196 = icmp eq i16 %i.cn, 0
  br i1 %.not196, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.n

bb.m:                                             ; preds = %.critedge.thread
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !212
  %i.cq = zext i32 %1 to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cq ; 3 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !313
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.cu = load <2 x i8>, ptr %i.ct, align 1, !tbaa !29
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !314
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.i, %bb.l, %bb.m
  %.0170 = phi i8 [ %i.cf, %bb.i ], [ %i.cw, %bb.m ], [ -1, %bb.l ], [ -1, %bb.k ]
  %.0167 = phi i8 [ %i.cb, %bb.i ], [ %i.cs, %bb.m ], [ 0, %bb.l ], [ -1, %bb.k ]
  %i.cx = phi <2 x i8> [ %i.cd, %bb.i ], [ %i.cu, %bb.m ], [ zeroinitializer, %bb.l ], [ splat (i8 -1), %bb.k ]
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.da = load i32, ptr %i.cy, align 8, !tbaa !633 ; 2 uses
  %.not227 = icmp eq i32 %i.da, 0
  br i1 %.not227, label %.critedge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 156 ; 2 uses
end_hunk_2
