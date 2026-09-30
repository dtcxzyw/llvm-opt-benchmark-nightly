Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFontData:bb.a
  %..i321.i.i = select i1 %i.um, i32 %i.ul, i32 %i.un
  store i32 %..i321.i.i, ptr %i.go, align 8
  %i.uo = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.up = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %7) ; 2 uses
  %i.uq = extractvalue { ptr, i64 } %i.up, 0
  %i.ur = extractvalue { ptr, i64 } %i.up, 1
  store ptr %i.uq, ptr %i.uo, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i64 %i.ur, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.az
  br i1 %.not.i.i.i, label %stbtt__find_table.exit331.thread.i.i, label %.lr.ph.i325.i.i

.lr.ph.i325.i.i:                                  ; preds = %bb.cw
  %wide.trip.count.i326.i.i = zext nneg i32 %i.y to i64
  br label %bb.cx

bb.cx:                                            ; preds = %bb.db, %.lr.ph.i325.i.i
  %indvars.iv.i327.i.i = phi i64 [ 0, %.lr.ph.i325.i.i ], [ %indvars.iv.next.i328.i.i, %bb.db ] ; 2 uses
  %i.us = shl nuw nsw i64 %indvars.iv.i327.i.i, 4
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 %i.us ; 5 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 12
  %i.uv = load i8, ptr %i.uu, align 1
  %i.uw = icmp eq i8 %i.uv, 109
  br i1 %i.uw, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 13
  %i.uy = load i8, ptr %i.ux, align 1
  %i.uz = icmp eq i8 %i.uy, 97
  br i1 %i.uz, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.va = getelementptr inbounds nuw i8, ptr %i.ut, i64 14
  %i.vb = load i8, ptr %i.va, align 1
  %i.vc = icmp eq i8 %i.vb, 120
  br i1 %i.vc, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ut, i64 15
  %i.ve = load i8, ptr %i.vd, align 1
  %i.vf = icmp eq i8 %i.ve, 112
  br i1 %i.vf, label %stbtt__find_table.exit331.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cx
  %indvars.iv.next.i328.i.i = add nuw nsw i64 %indvars.iv.i327.i.i, 1 ; 2 uses
  %exitcond.not.i329.i.i = icmp eq i64 %indvars.iv.next.i328.i.i, %wide.trip.count.i326.i.i
  br i1 %exitcond.not.i329.i.i, label %stbtt__find_table.exit331.thread.i.i, label %bb.cx

stbtt__find_table.exit331.i.i:                    ; preds = %bb.da
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ut, i64 20
  %i.vh = load i32, ptr %i.vg, align 1            ; 2 uses
  %.not120.i.i = icmp eq i32 %i.vh, 0
  br i1 %.not120.i.i, label %stbtt__find_table.exit331.thread.i.i, label %bb.dc

bb.dc:                                            ; preds = %stbtt__find_table.exit331.i.i
  %i.vi = tail call i32 @llvm.bswap.i32(i32 %i.vh)
  %i.vj = zext i32 %i.vi to i64
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 %i.vj ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 4
  %.val129.i.i = load i8, ptr %i.vl, align 1
  %i.vm = getelementptr i8, ptr %i.vk, i64 5
  %.val130.i.i = load i8, ptr %i.vm, align 1
  %i.vn = zext i8 %.val129.i.i to i32
  %i.vo = shl nuw nsw i32 %i.vn, 8
  %i.vp = zext i8 %.val130.i.i to i32
  %i.vq = or disjoint i32 %i.vo, %i.vp
  br label %stbtt__find_table.exit331.thread.i.i

stbtt__find_table.exit331.thread.i.i:             ; preds = %bb.db, %bb.dc, %stbtt__find_table.exit331.i.i, %bb.cw
  %.sink.i.i = phi i32 [ %i.vq, %bb.dc ], [ 65535, %stbtt__find_table.exit331.i.i ], [ 65535, %bb.cw ], [ 65535, %bb.db ]
  %i.vr = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %.sink.i.i, ptr %i.vr, align 4
  %i.vs = getelementptr inbounds nuw i8, ptr %9, i64 52
  store i32 -1, ptr %i.vs, align 4
  %i.vt = zext i32 %.2.i333.i.i189194198208218234 to i64
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 %i.vt ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 2
  %.val127.i.i = load i8, ptr %i.vv, align 1
  %i.vw = getelementptr i8, ptr %i.vu, i64 3
  %.val128.i.i = load i8, ptr %i.vw, align 1
  %i.vx = zext i8 %.val127.i.i to i32
  %i.vy = shl nuw nsw i32 %i.vx, 8
  %i.vz = zext i8 %.val128.i.i to i32
  %i.wa = or disjoint i32 %i.vy, %i.vz            ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %.not397.i.i = icmp eq i32 %i.wa, 0
  br i1 %.not397.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %stbtt__find_table.exit331.thread.i.i
  %i.wc = add i32 %.2.i333.i.i189194198208218234, 4
  %wide.trip.count.i.i = zext nneg i32 %i.wa to i64
  br label %bb.dd

bb.dd:                                            ; preds = %bb.df, %.lr.ph.i.i
  %i.wd = phi i32 [ 0, %.lr.ph.i.i ], [ %.val148, %bb.df ] ; 2 uses
  %i.we = phi i32 [ 0, %.lr.ph.i.i ], [ %i.wy, %bb.df ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.df ] ; 2 uses
  %indvars.iv.tr.i.i = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.wf = shl nuw nsw i32 %indvars.iv.tr.i.i, 3
  %i.wg = add i32 %i.wc, %i.wf
  %i.wh = zext i32 %i.wg to i64
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 %i.wh ; 5 uses
  %.val125.i.i = load i8, ptr %i.wi, align 1
  %i.wj = getelementptr i8, ptr %i.wi, i64 1
  %.val126.i.i = load i8, ptr %i.wj, align 1
  %i.wk = zext i8 %.val125.i.i to i16
  %i.wl = shl nuw i16 %i.wk, 8
  %i.wm = zext i8 %.val126.i.i to i16
  %i.wn = or disjoint i16 %i.wl, %i.wm
  switch i16 %i.wn, label %bb.df [
    i16 3, label %bb.de
    i16 0, label %.sink.split.i.i
  ]

bb.de:                                            ; preds = %bb.dd
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wi, i64 2
  %.val123.i.i = load i8, ptr %i.wo, align 1
  %i.wp = getelementptr i8, ptr %i.wi, i64 3
  %.val124.i.i = load i8, ptr %i.wp, align 1
  %i.wq = zext i8 %.val123.i.i to i16
  %i.wr = shl nuw i16 %i.wq, 8
  %i.ws = zext i8 %.val124.i.i to i16
  %i.wt = or disjoint i16 %i.wr, %i.ws
  switch i16 %i.wt, label %bb.df [
    i16 1, label %.sink.split.i.i
    i16 10, label %.sink.split.i.i
  ]

.sink.split.i.i:                                  ; preds = %bb.de, %bb.de, %bb.dd
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  %i.wv = load i32, ptr %i.wu, align 1
  %i.ww = tail call i32 @llvm.bswap.i32(i32 %i.wv)
  %i.wx = add i32 %i.ww, %.2.i333.i.i189194198208218234 ; 2 uses
  br label %bb.df

bb.df:                                            ; preds = %.sink.split.i.i, %bb.de, %bb.dd
  %.val148 = phi i32 [ %i.wd, %bb.de ], [ %i.wd, %bb.dd ], [ %i.wx, %.sink.split.i.i ] ; 3 uses
  %i.wy = phi i32 [ %i.we, %bb.de ], [ %i.we, %bb.dd ], [ %i.wx, %.sink.split.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.dd

._crit_edge.i.i:                                  ; preds = %bb.df
  store i32 %.val148, ptr %i.wb, align 8
  %i.wz = icmp eq i32 %i.wy, 0
  br i1 %i.wz, label %.thread, label %bb.dg

.critedge.i.i:                                    ; preds = %bb.bf, %bb.cu, %stbtt__cff_get_index.exit317.i.i, %stbtt__find_table.exit210.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %.thread

bb.dg:                                            ; preds = %._crit_edge.i.i
  %i.xa = sext i32 %i.fq to i64
  %i.xb = getelementptr inbounds i8, ptr %0, i64 %i.xa ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 50
  %.val.i.i = load i8, ptr %i.xc, align 1
  %i.xd = getelementptr i8, ptr %i.xb, i64 51
  %.val122.i.i = load i8, ptr %i.xd, align 1
  %i.xe = zext i8 %.val.i.i to i32
  %i.xf = shl nuw nsw i32 %i.xe, 8
  %i.xg = zext i8 %.val122.i.i to i32
  %i.xh = or disjoint i32 %i.xf, %i.xg
  %i.xi = getelementptr inbounds nuw i8, ptr %9, i64 60
  store i32 %i.xh, ptr %i.xi, align 4
  %i.xj = sitofp i32 %2 to float
  %i.xk = sext i32 %.val144 to i64
  %i.xl = getelementptr inbounds i8, ptr %0, i64 %i.xk ; 4 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %.val6.i = load i8, ptr %i.xm, align 1
  %i.xn = getelementptr i8, ptr %i.xl, i64 5
  %.val7.i = load i8, ptr %i.xn, align 1
  %i.xo = zext i8 %.val6.i to i16
  %i.xp = shl nuw i16 %i.xo, 8
  %i.xq = zext i8 %.val7.i to i16
  %i.xr = or disjoint i16 %i.xp, %i.xq            ; 2 uses
  %i.xs = sext i16 %i.xr to i32
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xl, i64 6
  %.val.i = load i8, ptr %i.xt, align 1
  %i.xu = getelementptr i8, ptr %i.xl, i64 7
  %.val5.i = load i8, ptr %i.xu, align 1
  %i.xv = zext i8 %.val.i to i16
  %i.xw = shl nuw i16 %i.xv, 8
  %i.xx = zext i8 %.val5.i to i16
  %i.xy = or disjoint i16 %i.xw, %i.xx
  %i.xz = sext i16 %i.xy to i32
  %i.ya = sub nsw i32 %i.xs, %i.xz
  %i.yb = sitofp i32 %i.ya to float
  %i.yc = fdiv float %i.xj, %i.yb                 ; 22 uses
  %i.yd = icmp sgt i32 %4, 0
  %i.ye = select i1 %i.yd, i32 %4, i32 95         ; 4 uses
  %i.yf = icmp eq ptr %3, null                    ; 3 uses
  %i.yg = zext nneg i32 %i.ye to i64              ; 6 uses
  br i1 %i.yf, label %bb.dh, label %.loopexit250

bb.dh:                                            ; preds = %bb.dg
  %i.yh = shl nuw nsw i64 %i.yg, 2
  %i.yi = tail call noalias ptr @malloc(i64 noundef %i.yh) #42 ; 4 uses
  %min.iters.check = icmp samesign ult i32 %i.ye, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.dh
  %n.vec = and i64 %i.yg, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.yi, i64 %index ; 2 uses
  %i.yk = add <4 x i32> %vec.ind, splat (i32 32)
  %i.yl = add <4 x i32> %vec.ind, splat (i32 36)
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  store <4 x i32> %i.yk, ptr %i.yj, align 4
  store <4 x i32> %i.yl, ptr %i.ym, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.yn = icmp eq i64 %index.next, %n.vec
  br i1 %i.yn, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.yg
  br i1 %cmp.n, label %.loopexit250, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.dh, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.dh ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.yi, i64 %indvars.iv
  %i.yp = trunc i64 %indvars.iv to i32
  %i.yq = add i32 %i.yp, 32
  store i32 %i.yq, ptr %i.yo, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.yg
  br i1 %exitcond.not, label %.loopexit250, label %scalar.ph, !llvm.loop !27

.loopexit250:                                     ; preds = %scalar.ph, %middle.block, %bb.dg
  %.0125 = phi ptr [ %3, %bb.dg ], [ %i.yi, %middle.block ], [ %i.yi, %scalar.ph ] ; 3 uses
  br label %bb.dj

bb.di:                                            ; preds = %bb.dj
  %i.yr = zext nneg i32 %spec.select to i64
  %i.ys = tail call noalias ptr @calloc(i64 noundef %i.yr, i64 noundef 40) #40 ; 4 uses
  %10 = fcmp une float %i.yc, 0.000000e+00        ; 2 uses
  %i.yt = fneg float %i.yc                        ; 7 uses
  %i.yu = fdiv float 3.500000e-01, %i.yc          ; 2 uses
  %i.yv = fmul float %i.yu, %i.yu                 ; 4 uses
  %.not143 = icmp ne i32 %5, 2
  %i.yw = sitofp i16 %i.xr to float
  %i.yx = fmul float %i.yc, %i.yw
  %i.yy = fptosi float %i.yx to i32
  %i.yz = icmp eq i32 %5, 1
  %i.za = insertelement <2 x float> poison, float %i.yc, i64 0
  %i.zb = insertelement <2 x float> %i.za, float %i.yt, i64 1 ; 3 uses
  %i.zc = insertelement <4 x float> poison, float %i.yc, i64 0
  %i.zd = insertelement <4 x float> %i.zc, float %i.yt, i64 1
  %i.ze = shufflevector <4 x float> %i.zd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %bb.dl

bb.dj:                                            ; preds = %.loopexit250, %bb.dj
  %indvars.iv320 = phi i64 [ 0, %.loopexit250 ], [ %indvars.iv.next321, %bb.dj ] ; 2 uses
  %.0129281 = phi i32 [ 0, %.loopexit250 ], [ %spec.select, %bb.dj ]
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %indvars.iv320
  %i.zg = load i32, ptr %i.zf, align 4
  %i.zh = tail call fastcc i32 @stbtt_FindGlyphIndex(ptr nonnull %0, i32 %.val148, i32 noundef %i.zg)
  %i.zi = icmp sgt i32 %i.zh, 0
  %i.zj = zext i1 %i.zi to i32
  %spec.select = add nuw nsw i32 %.0129281, %i.zj ; 2 uses
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %indvars.iv.next321, %i.yg
  br i1 %exitcond324.not, label %bb.di, label %bb.dj

bb.dk:                                            ; preds = %bb.nt
  %i.zk = icmp slt i32 %.3, %i.ye
  br i1 %i.zk, label %.split, label %bb.nu

bb.dl:                                            ; preds = %bb.di, %bb.nt
  %indvars.iv330 = phi i64 [ 0, %bb.di ], [ %indvars.iv.next331, %bb.nt ] ; 2 uses
  %.0122285 = phi i32 [ 0, %bb.di ], [ %.1, %bb.nt ] ; 3 uses
  %.2284 = phi i32 [ 0, %bb.di ], [ %.3, %bb.nt ] ; 2 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %indvars.iv330
  %i.zm = load i32, ptr %i.zl, align 4            ; 7 uses
  %.val145 = load ptr, ptr %i.r, align 8
  %.val146 = load i32, ptr %i.wb, align 8
  %i.zn = call fastcc i32 @stbtt_FindGlyphIndex(ptr %.val145, i32 %.val146, i32 noundef %i.zm) ; 5 uses
  %i.zo = icmp sgt i32 %i.zn, 0
  br i1 %i.zo, label %bb.dm, label %bb.nt

bb.dm:                                            ; preds = %bb.dl
  %i.zp = sext i32 %.0122285 to i64
  %i.zq = getelementptr inbounds [40 x i8], ptr %i.ys, i64 %i.zp ; 18 uses
  store i32 %i.zm, ptr %i.zq, align 8
  switch i32 %5, label %bb.nl [
    i32 0, label %bb.dn
    i32 1, label %bb.dn
    i32 2, label %bb.le
  ]

bb.dn:                                            ; preds = %bb.dm, %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #39
  %i.zr = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull readonly %9, i32 noundef %i.zn, ptr noundef %i.m) ; 3 uses
  br i1 %10, label %bb.do, label %stbtt_GetCodepointBitmap.exit

bb.do:                                            ; preds = %bb.dn
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zq, i64 4
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %9, i32 noundef %i.zn, float noundef %i.yc, float noundef %i.yc, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l)
  %i.zu = load i32, ptr %i.k, align 4             ; 2 uses
  %i.zv = load i32, ptr %i.i, align 4             ; 4 uses
  %i.zw = sub i32 %i.zu, %i.zv                    ; 13 uses
  %i.zx = load i32, ptr %i.l, align 4             ; 3 uses
  %i.zy = load i32, ptr %i.j, align 4             ; 5 uses
  %i.zz = sub i32 %i.zx, %i.zy                    ; 7 uses
  store i32 %i.zv, ptr %i.zt, align 4
  store i32 %i.zy, ptr %i.zs, align 8
  %i.aaa = icmp ne i32 %i.zu, %i.zv
  %i.aab = icmp ne i32 %i.zx, %i.zy
  %or.cond.i.i.i = select i1 %i.aaa, i1 %i.aab, i1 false
  br i1 %or.cond.i.i.i, label %bb.dp, label %stbtt_GetCodepointBitmap.exit

bb.dp:                                            ; preds = %bb.do
  %i.aac = mul nsw i32 %i.zz, %i.zw
  %i.aad = sext i32 %i.aac to i64
  %i.aae = call noalias ptr @malloc(i64 noundef %i.aad) #42 ; 4 uses
  %.not40.i.i.i = icmp eq ptr %i.aae, null
  br i1 %.not40.i.i.i, label %stbtt_GetCodepointBitmap.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aaf = load ptr, ptr %i.m, align 8            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #39
  %i.aag = icmp sgt i32 %i.zr, 0
  br i1 %i.aag, label %.lr.ph.preheader.i.i.i.i.i, label %stbtt_FlattenCurves.exit.thread.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.dq
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.zr to i64 ; 5 uses
  %min.iters.check622 = icmp ult i32 %i.zr, 8
  br i1 %min.iters.check622, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph623

vector.ph623:                                     ; preds = %.lr.ph.preheader.i.i.i.i.i
  %n.vec624 = and i64 %wide.trip.count.i.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body625

vector.body625:                                   ; preds = %vector.body625, %vector.ph623
  %index626 = phi i64 [ 0, %vector.ph623 ], [ %index.next629, %vector.body625 ] ; 9 uses
  %vec.phi627 = phi <4 x i32> [ zeroinitializer, %vector.ph623 ], [ %i.abr, %vector.body625 ]
  %vec.phi628 = phi <4 x i32> [ zeroinitializer, %vector.ph623 ], [ %i.abs, %vector.body625 ]
  %i.aah = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %index626
  %i.aai = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %index626
  %i.aaj = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %index626
  %i.aak = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %index626
  %i.aal = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %index626
  %i.aam = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %index626
  %i.aan = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %index626
  %i.aao = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %index626
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aah, i64 12
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aai, i64 26
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaj, i64 40
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aak, i64 54
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aal, i64 68
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aam, i64 82
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aan, i64 96
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aao, i64 110
  %i.aax = load i8, ptr %i.aap, align 2
  %i.aay = load i8, ptr %i.aaq, align 2
  %i.aaz = load i8, ptr %i.aar, align 2
  %i.aba = load i8, ptr %i.aas, align 2
  %i.abb = insertelement <4 x i8> poison, i8 %i.aax, i64 0
  %i.abc = insertelement <4 x i8> %i.abb, i8 %i.aay, i64 1
  %i.abd = insertelement <4 x i8> %i.abc, i8 %i.aaz, i64 2
  %i.abe = insertelement <4 x i8> %i.abd, i8 %i.aba, i64 3
  %i.abf = load i8, ptr %i.aat, align 2
  %i.abg = load i8, ptr %i.aau, align 2
  %i.abh = load i8, ptr %i.aav, align 2
  %i.abi = load i8, ptr %i.aaw, align 2
  %i.abj = insertelement <4 x i8> poison, i8 %i.abf, i64 0
  %i.abk = insertelement <4 x i8> %i.abj, i8 %i.abg, i64 1
  %i.abl = insertelement <4 x i8> %i.abk, i8 %i.abh, i64 2
  %i.abm = insertelement <4 x i8> %i.abl, i8 %i.abi, i64 3
  %i.abn = icmp eq <4 x i8> %i.abe, splat (i8 1)
  %i.abo = icmp eq <4 x i8> %i.abm, splat (i8 1)
  %i.abp = zext <4 x i1> %i.abn to <4 x i32>
  %i.abq = zext <4 x i1> %i.abo to <4 x i32>
  %i.abr = add <4 x i32> %vec.phi627, %i.abp      ; 2 uses
  %i.abs = add <4 x i32> %vec.phi628, %i.abq      ; 2 uses
  %index.next629 = add nuw i64 %index626, 8       ; 2 uses
  %i.abt = icmp eq i64 %index.next629, %n.vec624
  br i1 %i.abt, label %middle.block630, label %vector.body625, !llvm.loop !28

middle.block630:                                  ; preds = %vector.body625
  %bin.rdx631 = add <4 x i32> %i.abs, %i.abr
  %i.abu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx631) ; 2 uses
  %cmp.n632 = icmp eq i64 %n.vec624, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n632, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i.i, %middle.block630
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i ], [ %n.vec624, %middle.block630 ]
  %.0948.i.i.i.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i.i ], [ %i.abu, %middle.block630 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0948.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0948.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %i.abv = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %indvars.iv.i.i.i.i.i
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 12
  %i.abx = load i8, ptr %i.abw, align 2
  %i.aby = icmp eq i8 %i.abx, 1
  %i.abz = zext i1 %i.aby to i32
  %spec.select.i.i.i.i.i = add nuw nsw i32 %.0948.i.i.i.i.i, %i.abz ; 2 uses
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %middle.block630
  %spec.select.i.i.i.i.i.lcssa = phi i32 [ %i.abu, %middle.block630 ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.aca = icmp eq i32 %spec.select.i.i.i.i.i.lcssa, 0
  br i1 %i.aca, label %stbtt_FlattenCurves.exit.thread.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.acb = zext nneg i32 %spec.select.i.i.i.i.i.lcssa to i64 ; 5 uses
  %i.acc = shl nuw nsw i64 %i.acb, 2
  %i.acd = call noalias ptr @malloc(i64 noundef %i.acc) #42 ; 10 uses
  %i.ace = icmp eq ptr %i.acd, null
  br i1 %i.ace, label %stbtt_FlattenCurves.exit.thread.i.i.i.i, label %.lr.ph15.us.i.i.i.i.i

.lr.ph15.us.i.i.i.i.i:                            ; preds = %bb.dr
  store i32 0, ptr %i.h, align 4
  br label %bb.ds

bb.ds:                                            ; preds = %stbtt__add_point.exit.us.i.i.i.i.i, %.lr.ph15.us.i.i.i.i.i
  %indvars.iv24.i.i.i.i.i = phi i64 [ 0, %.lr.ph15.us.i.i.i.i.i ], [ %indvars.iv.next25.i.i.i.i.i, %stbtt__add_point.exit.us.i.i.i.i.i ] ; 2 uses
  %.19311.us.i.i.i.i.i = phi i32 [ 0, %.lr.ph15.us.i.i.i.i.i ], [ %.2.us.i.i.i.i.i, %stbtt__add_point.exit.us.i.i.i.i.i ] ; 5 uses
  %.29610.us.i.i.i.i.i = phi i32 [ -1, %.lr.ph15.us.i.i.i.i.i ], [ %.397.us.i.i.i.i.i, %stbtt__add_point.exit.us.i.i.i.i.i ] ; 7 uses
  %i.acf = phi <2 x float> [ zeroinitializer, %.lr.ph15.us.i.i.i.i.i ], [ %i.adt, %stbtt__add_point.exit.us.i.i.i.i.i ] ; 5 uses
  %i.acg = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %indvars.iv24.i.i.i.i.i ; 7 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 12
  %i.aci = load i8, ptr %i.ach, align 2
  switch i8 %i.aci, label %stbtt__add_point.exit.us.i.i.i.i.i [
    i8 1, label %bb.dw
    i8 2, label %bb.dv
    i8 3, label %bb.du
    i8 4, label %bb.dt
  ]

bb.dt:                                            ; preds = %bb.ds
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 4
  %i.ack = load <4 x i16>, ptr %i.acj, align 2
  %i.acl = sitofp <4 x i16> %i.ack to <4 x float> ; 4 uses
  %i.acm = load <2 x i16>, ptr %i.acg, align 2
  %i.acn = sitofp <2 x i16> %i.acm to <2 x float> ; 3 uses
  %i.aco = extractelement <2 x float> %i.acn, i64 0
  %i.acp = extractelement <2 x float> %i.acn, i64 1
  %i.acq = extractelement <2 x float> %i.acf, i64 0
  %i.acr = extractelement <2 x float> %i.acf, i64 1
  %i.acs = extractelement <4 x float> %i.acl, i64 0
  %i.act = extractelement <4 x float> %i.acl, i64 1
  %i.acu = extractelement <4 x float> %i.acl, i64 2
  %i.acv = extractelement <4 x float> %i.acl, i64 3
  call fastcc void @stbtt__tesselate_cubic(ptr noundef null, ptr noundef %i.h, float noundef %i.acq, float noundef %i.acr, float noundef %i.acs, float noundef %i.act, float noundef %i.acu, float noundef %i.acv, float noundef %i.aco, float noundef %i.acp, float noundef %i.yv, i32 noundef 0)
  br label %stbtt__add_point.exit.us.i.i.i.i.i

bb.du:                                            ; preds = %bb.ds
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acg, i64 4
  %i.acx = load <2 x i16>, ptr %i.acw, align 2
  %i.acy = sitofp <2 x i16> %i.acx to <2 x float> ; 2 uses
  %i.acz = load <2 x i16>, ptr %i.acg, align 2
  %i.ada = sitofp <2 x i16> %i.acz to <2 x float> ; 3 uses
  %i.adb = extractelement <2 x float> %i.ada, i64 0
  %i.adc = extractelement <2 x float> %i.ada, i64 1
  %i.add = extractelement <2 x float> %i.acf, i64 0
  %i.ade = extractelement <2 x float> %i.acf, i64 1
  %i.adf = extractelement <2 x float> %i.acy, i64 0
  %i.adg = extractelement <2 x float> %i.acy, i64 1
  call fastcc void @stbtt__tesselate_curve(ptr noundef null, ptr noundef %i.h, float noundef %i.add, float noundef %i.ade, float noundef %i.adf, float noundef %i.adg, float noundef %i.adb, float noundef %i.adc, float noundef %i.yv, i32 noundef 0)
  br label %stbtt__add_point.exit.us.i.i.i.i.i

bb.dv:                                            ; preds = %bb.ds
  %i.adh = load <2 x i16>, ptr %i.acg, align 2
  %i.adi = sitofp <2 x i16> %i.adh to <2 x float>
  %i.adj = load i32, ptr %i.h, align 4
  %i.adk = add nsw i32 %i.adj, 1
  store i32 %i.adk, ptr %i.h, align 4
  br label %stbtt__add_point.exit.us.i.i.i.i.i

bb.dw:                                            ; preds = %bb.ds
  %i.adl = icmp sgt i32 %.29610.us.i.i.i.i.i, -1
  %.pre.i.i.i.i.i = load i32, ptr %i.h, align 4   ; 3 uses
  br i1 %i.adl, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.adm = sub nsw i32 %.pre.i.i.i.i.i, %.19311.us.i.i.i.i.i
  %i.adn = zext nneg i32 %.29610.us.i.i.i.i.i to i64
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %i.adn
  store i32 %i.adm, ptr %i.ado, align 4
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.adp = add nsw i32 %.29610.us.i.i.i.i.i, 1
  %i.adq = load <2 x i16>, ptr %i.acg, align 2
  %i.adr = sitofp <2 x i16> %i.adq to <2 x float>
  %i.ads = add nsw i32 %.pre.i.i.i.i.i, 1
  store i32 %i.ads, ptr %i.h, align 4
  br label %stbtt__add_point.exit.us.i.i.i.i.i
end_hunk_0
begin_hunk_1_@LoadFontData:bb.a
  %.054.i451.i.i.i.i.i.i.i = phi float [ %i.aqo, %bb.kr ], [ %i.avs, %bb.kq ] ; 3 uses
  br i1 %i.aqx, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.bnc = fsub float %i.aqi, %.055.i450.i.i.i.i.i.i.i
  %i.bnd = fmul float %i.avb, %i.bnc
  %i.bne = fsub float %i.aiy, %.054.i451.i.i.i.i.i.i.i
  %i.bnf = fdiv float %i.bnd, %i.bne
  %i.bng = fadd float %i.aqi, %i.bnf
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.ks
  %.053.i452.i.i.i.i.i.i.i = phi float [ %i.bng, %bb.kt ], [ %i.aqi, %bb.ks ] ; 3 uses
  %.0.i453.i.i.i.i.i.i.i = phi float [ %i.aqn, %bb.kt ], [ %i.aiy, %bb.ks ] ; 2 uses
  %i.bnh = fcmp ugt float %.055.i450.i.i.i.i.i.i.i, %i.avi
  %i.bni = fcmp ugt float %.053.i452.i.i.i.i.i.i.i, %i.avi
  %or.cond.i454.i.i.i.i.i.i.i = select i1 %i.bnh, i1 true, i1 %i.bni
  br i1 %or.cond.i454.i.i.i.i.i.i.i, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.bnj = load float, ptr %i.aut, align 4
  %i.bnk = fsub float %.0.i453.i.i.i.i.i.i.i, %.054.i451.i.i.i.i.i.i.i
  %i.bnl = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bnm = load float, ptr %i.bnl, align 4
  %i.bnn = call float @llvm.fmuladd.f32(float %i.bnj, float %i.bnk, float %i.bnm)
  store float %i.bnn, ptr %i.bnl, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.kw:                                            ; preds = %bb.ku
  %i.bno = fcmp ult float %.055.i450.i.i.i.i.i.i.i, %i.avk
  %i.bnp = fcmp ult float %.053.i452.i.i.i.i.i.i.i, %i.avk
  %or.cond62.i455.i.i.i.i.i.i.i = select i1 %i.bno, i1 true, i1 %i.bnp
  br i1 %or.cond62.i455.i.i.i.i.i.i.i, label %bb.kx, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.kx:                                            ; preds = %bb.kw
  %i.bnq = load float, ptr %i.aut, align 4
  %i.bnr = fsub float %.0.i453.i.i.i.i.i.i.i, %.054.i451.i.i.i.i.i.i.i
  %i.bns = fmul float %i.bnr, %i.bnq
  %i.bnt = fsub float %.055.i450.i.i.i.i.i.i.i, %i.avi
  %i.bnu = fsub float %.053.i452.i.i.i.i.i.i.i, %i.avi
  %i.bnv = fadd float %i.bnt, %i.bnu
  %i.bnw = fmul float %i.bnv, 5.000000e-01
  %i.bnx = fsub float 1.000000e+00, %i.bnw
  %i.bny = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bnz = load float, ptr %i.bny, align 4
  %i.boa = call float @llvm.fmuladd.f32(float %i.bns, float %i.bnx, float %i.bnz)
  store float %i.boa, ptr %i.bny, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.ky:                                            ; preds = %bb.ki
  br i1 %or.cond36.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.bob = fcmp ugt float %.055.i457.i.i.i.i.i.i.i, %i.avi
  %i.boc = fcmp ugt float %.053.i459.i.i.i.i.i.i.i, %i.avi
  %or.cond.i461.i.i.i.i.i.i.i = select i1 %i.bob, i1 true, i1 %i.boc
  br i1 %or.cond.i461.i.i.i.i.i.i.i, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.bod = load float, ptr %i.aut, align 4
  %i.boe = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bof = load float, ptr %i.boe, align 4
  %i.bog = call float @llvm.fmuladd.f32(float %i.bod, float %i.avg, float %i.bof)
  store float %i.bog, ptr %i.boe, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.lb:                                            ; preds = %bb.kz
  %i.boh = fcmp ult float %.055.i457.i.i.i.i.i.i.i, %i.avk
  %i.boi = fcmp ult float %.053.i459.i.i.i.i.i.i.i, %i.avk
  %or.cond62.i462.i.i.i.i.i.i.i = select i1 %i.boh, i1 true, i1 %i.boi
  br i1 %or.cond62.i462.i.i.i.i.i.i.i, label %bb.lc, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.lc:                                            ; preds = %bb.lb
  %i.boj = load float, ptr %i.aut, align 4
  %i.bok = fmul float %i.avg, %i.boj
  %i.bol = fsub float %.055.i457.i.i.i.i.i.i.i, %i.avi
  %i.bom = fsub float %.053.i459.i.i.i.i.i.i.i, %i.avi
  %i.bon = fadd float %i.bol, %i.bom
  %i.boo = fmul float %i.bon, 5.000000e-01
  %i.bop = fsub float 1.000000e+00, %i.boo
  %i.boq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bor = load float, ptr %i.boq, align 4
  %i.bos = call float @llvm.fmuladd.f32(float %i.bok, float %i.bop, float %i.bor)
  store float %i.bos, ptr %i.boq, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i: ; preds = %bb.lc, %bb.lb, %bb.la, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i, %bb.kh, %bb.kg, %bb.kf, %stbtt__handle_clipped_edge.exit435.i.i.i.i.i.i.i, %bb.jr, %bb.jq, %bb.jp, %stbtt__handle_clipped_edge.exit421.i.i.i.i.i.i.i, %bb.jb, %bb.ja, %bb.iz, %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i, %bb.il, %bb.ik, %bb.ij, %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i, %bb.hn, %bb.hm, %bb.hl, %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i
  %exitcond.not.i.i97.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i96.i.i.i.i.i, %wide.trip.count.i.i92.i.i.i.i.i
  br i1 %exitcond.not.i.i97.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.gq

stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i: ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, %bb.gp, %._crit_edge.i.i.i.i.i.i.i, %bb.gl, %bb.gh, %bb.gg, %bb.gf, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.fg, %bb.ff, %bb.fe, %bb.fc
  %i.bot = load ptr, ptr %.0293468.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i93.i.i.i.i.i = icmp eq ptr %i.bot, null
  br i1 %.not.i.i93.i.i.i.i.i, label %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i, label %bb.fb

stbtt__fill_active_edges_new.exit.i.i.i.i.i.i:    ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  br i1 %i.aiv, label %.lr.ph52.i.i.i.preheader.i.i.i, label %.preheader.i.i.i.i.i.i

.lr.ph52.i.i.i.preheader.i.i.i:                   ; preds = %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  %i.bou = mul nuw nsw i32 %.07660.i.i.i.i.i.i, %i.zw
  br label %.lr.ph52.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph52.i.i.i.i.i.i, %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  br i1 %.not91.i.i.i.i.i.i, label %._crit_edge56.i.i.i.i.i.i, label %.lr.ph55.i.i.i.i.i.i

.lr.ph52.i.i.i.i.i.i:                             ; preds = %.lr.ph52.i.i.i.i.i.i, %.lr.ph52.i.i.i.preheader.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %.lr.ph52.i.i.i.i.i.i ], [ 0, %.lr.ph52.i.i.i.preheader.i.i.i ] ; 4 uses
  %.07751.i.i.i.i.i.i = phi float [ %i.box, %.lr.ph52.i.i.i.i.i.i ], [ 0.000000e+00, %.lr.ph52.i.i.i.preheader.i.i.i ]
  %i.bov = getelementptr inbounds nuw [4 x i8], ptr %i.aih, i64 %indvars.iv.i.i.i.i.i.i
  %i.bow = load float, ptr %i.bov, align 4
  %i.box = fadd float %.07751.i.i.i.i.i.i, %i.bow ; 2 uses
  %i.boy = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.boz = load float, ptr %i.boy, align 4
  %i.bpa = fadd float %i.boz, %i.box
  %i.bpb = call float @llvm.fabs.f32(float %i.bpa)
  %i.bpc = call float @llvm.fmuladd.f32(float %i.bpb, float 2.550000e+02, float 5.000000e-01)
  %i.bpd = fptosi float %i.bpc to i32
  %spec.store.select.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.bpd, i32 255)
  %i.bpe = trunc nuw i32 %spec.store.select.i.i.i.i.i.i to i8
  %i.bpf = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.bpg = add nsw i32 %i.bou, %i.bpf
  %i.bph = sext i32 %i.bpg to i64
  %i.bpi = getelementptr inbounds i8, ptr %i.aae, i64 %i.bph
  store i8 %i.bpe, ptr %i.bpi, align 1
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i153 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.aig
  br i1 %exitcond.not.i.i.i153, label %.preheader.i.i.i.i.i.i, label %.lr.ph52.i.i.i.i.i.i

.lr.ph55.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph55.i.i.i.i.i.i
  %i.bpj = phi ptr [ %i.bpo, %.lr.ph55.i.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  %.254.i.i.i.i.i.i = phi ptr [ %i.bpn, %.lr.ph55.i.i.i.i.i.i ], [ %i.f, %.preheader.i.i.i.i.i.i ]
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bpj, i64 8 ; 2 uses
  %i.bpl = load <2 x float>, ptr %i.bpk, align 8
  %i.bpm = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bpl)
  store float %i.bpm, ptr %i.bpk, align 8
  %i.bpn = load ptr, ptr %.254.i.i.i.i.i.i, align 8 ; 2 uses
  %i.bpo = load ptr, ptr %i.bpn, align 8          ; 2 uses
  %.not92.i.i.i.i.i.i = icmp eq ptr %i.bpo, null
  br i1 %.not92.i.i.i.i.i.i, label %._crit_edge56.i.i.i.i.i.i, label %.lr.ph55.i.i.i.i.i.i

._crit_edge56.i.i.i.i.i.i:                        ; preds = %.lr.ph55.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %i.bpp = add nsw i32 %.07561.i.i.i.i.i.i, 1
  %i.bpq = add nuw nsw i32 %.07660.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond61.not.i.i.i = icmp eq i32 %i.bpq, %i.zz
  br i1 %exitcond61.not.i.i.i, label %._crit_edge65.i.i.i.i.i.i, label %bb.eo

._crit_edge65.i.i.i.i.i.i:                        ; preds = %._crit_edge56.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.lcssa.i.i.i.i.i.i, null
  br i1 %.not1.i.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

.lr.ph.i94.i.i.i.i.i.i:                           ; preds = %._crit_edge65.i.i.i.i.i.i, %.lr.ph.i94.i.i.i.i.i.i
  %.02.i.i.i.i.i.i.i = phi ptr [ %i.bpr, %.lr.ph.i94.i.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i, %._crit_edge65.i.i.i.i.i.i ] ; 2 uses
  %i.bpr = load ptr, ptr %.02.i.i.i.i.i.i.i, align 8 ; 2 uses
  call void @free(ptr noundef nonnull %.02.i.i.i.i.i.i.i) #39
  %.not.i95.i.i.i.i.i.i = icmp eq ptr %i.bpr, null
  br i1 %.not.i95.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

stbtt__hheap_cleanup.exit.i.i.i.i.i.i:            ; preds = %.lr.ph.i94.i.i.i.i.i.i, %._crit_edge65.i.i.i.i.i.i, %bb.en
  %.not.i.i.i.i.i.i = icmp eq ptr %.080.i.i.i.i.i.i, %i.g
  br i1 %.not.i.i.i.i.i.i, label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, label %bb.ld

bb.ld:                                            ; preds = %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @free(ptr noundef %.080.i.i.i.i.i.i) #39
  br label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i

stbtt__rasterize_sorted_edges.exit.i.i.i.i.i:     ; preds = %bb.ld, %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @free(ptr noundef %i.agl) #39
  br label %stbtt__rasterize.exit.i.i.i.i

stbtt__rasterize.exit.i.i.i.i:                    ; preds = %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, %._crit_edge.i27.i.i.i.i
  call void @free(ptr noundef %i.acd) #39
  call void @free(ptr noundef %i.aea) #39
  br label %stbtt_GetCodepointBitmap.exit

stbtt_GetCodepointBitmap.exit:                    ; preds = %bb.do, %bb.dp, %stbtt_FlattenCurves.exit.thread.i.i.i.i, %stbtt__rasterize.exit.i.i.i.i, %bb.dn
  %.1185 = phi i32 [ 0, %bb.dn ], [ %i.zw, %stbtt__rasterize.exit.i.i.i.i ], [ %i.zw, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.zw, %bb.dp ], [ %i.zw, %bb.do ]
  %.1182 = phi i32 [ 0, %bb.dn ], [ %i.zz, %stbtt__rasterize.exit.i.i.i.i ], [ %i.zz, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.zz, %bb.dp ], [ %i.zz, %bb.do ]
  %.0.i.i.i151 = phi ptr [ null, %bb.dn ], [ %i.aae, %stbtt__rasterize.exit.i.i.i.i ], [ %i.aae, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ null, %bb.dp ], [ null, %bb.do ]
  %i.bps = load ptr, ptr %i.m, align 8
  call void @free(ptr noundef %i.bps) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #39
  br label %.sink.split

bb.le:                                            ; preds = %bb.dm
  %.not141 = icmp eq i32 %i.zm, 32
  br i1 %.not141, label %bb.nl, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.zq, i64 4
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  br i1 %10, label %bb.lg, label %stbtt_GetCodepointSDF.exit

bb.lg:                                            ; preds = %bb.lf
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %9, i32 noundef %i.zn, float noundef %i.yc, float noundef %i.yc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.bpv = load i32, ptr %i.a, align 4            ; 4 uses
  %i.bpw = load i32, ptr %i.c, align 4            ; 9 uses
  %i.bpx = icmp eq i32 %i.bpv, %i.bpw
  br i1 %i.bpx, label %stbtt_GetCodepointSDF.exit, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bpy = load i32, ptr %i.b, align 4            ; 2 uses
  %i.bpz = load i32, ptr %i.d, align 4            ; 2 uses
  %i.bqa = icmp eq i32 %i.bpy, %i.bpz
  br i1 %i.bqa, label %stbtt_GetCodepointSDF.exit, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.bqb = add i32 %i.bpv, -4                     ; 4 uses
  %i.bqc = add i32 %i.bpy, -4                     ; 7 uses
  %i.bqd = add i32 %i.bpw, 4                      ; 6 uses
  %i.bqe = add i32 %i.bpz, 4                      ; 4 uses
  %i.bqf = sub i32 %i.bqd, %i.bqb                 ; 4 uses
  %i.bqg = sub nsw i32 %i.bqe, %i.bqc             ; 2 uses
  store i32 %i.bqb, ptr %i.bpt, align 4
  store i32 %i.bqc, ptr %i.bpu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.bqh = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull readonly %9, i32 noundef %i.zn, ptr noundef %i.e) ; 5 uses
  %i.bqi = mul nsw i32 %i.bqg, %i.bqf
  %i.bqj = sext i32 %i.bqi to i64
  %i.bqk = call noalias ptr @malloc(i64 noundef %i.bqj) #42 ; 23 uses
  %i.bql = sext i32 %i.bqh to i64
  %i.bqm = shl nsw i64 %i.bql, 2
  %i.bqn = call noalias ptr @malloc(i64 noundef %i.bqm) #42 ; 4 uses
  %i.bqo = icmp sgt i32 %i.bqh, 0                 ; 2 uses
  %.pre.pre.i.i = load ptr, ptr %i.e, align 8     ; 6 uses
  br i1 %i.bqo, label %.lr.ph.i.i157, label %.preheader485.i.i

.lr.ph.i.i157:                                    ; preds = %bb.li
  %i.bqp = add nsw i32 %i.bqh, -1
  %wide.trip.count.i.i158 = zext nneg i32 %i.bqh to i64
  %i.bqq = zext nneg i32 %i.bqp to i64
  br label %bb.ng

.preheader485.i.i:                                ; preds = %bb.nk, %bb.li
  %i.bqr = icmp slt i32 %i.bqc, %i.bqe
  br i1 %i.bqr, label %.preheader.lr.ph.i.i, label %._crit_edge495.split.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader485.i.i
  %i.bqs = icmp slt i32 %i.bqb, %i.bqd
  %wide.trip.count.i.i.i156 = zext i32 %i.bqh to i64 ; 2 uses
  br i1 %i.bqs, label %.preheader.preheader.i.i, label %._crit_edge495.split.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.bqt = zext i32 %i.bqb to i64                 ; 10 uses
  %reass.sub.i.i = sub i32 4, %i.bpv              ; 2 uses
  br i1 %i.bqo, label %.preheader.i.us.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.preheader.i.i
  %i.bqu = add i32 %i.bpw, 7
  %i.bqv = sub i32 %i.bqu, %i.bpv                 ; 8 uses
  %i.bqw = zext i32 %i.bqv to i64
  %i.bqx = add nuw nsw i64 %i.bqw, 1              ; 15 uses
  %i.bqy = add i32 %i.bpw, 3
  %i.bqz = add i32 %i.bpw, 3
  %i.bra = add i32 %i.bpw, 3
  %min.iters.check662 = icmp ult i32 %i.bqv, 7
  %min.iters.check690 = icmp ult i32 %i.bqv, 31
  %i.brb = and i64 %i.bqx, 24
  %n.vec692 = and i64 %i.bqx, 8589934560          ; 4 uses
  %i.brc = add nuw nsw i64 %n.vec692, %i.bqt
  %cmp.n697 = icmp eq i64 %i.bqx, %n.vec692
  %min.epilog.iters.check703 = icmp eq i64 %i.brb, 0
  %n.vec705 = and i64 %i.bqx, 8589934584          ; 3 uses
  %i.brd = add nuw nsw i64 %n.vec705, %i.bqt
  %cmp.n710 = icmp eq i64 %i.bqx, %n.vec705
  %min.iters.check664 = icmp ult i32 %i.bqv, 31
  %i.bre = and i64 %i.bqx, 24
  %n.vec666 = and i64 %i.bqx, 8589934560          ; 4 uses
  %i.brf = add nuw nsw i64 %n.vec666, %i.bqt
  %cmp.n671 = icmp eq i64 %i.bqx, %n.vec666
  %min.epilog.iters.check677 = icmp eq i64 %i.bre, 0
  %n.vec679 = and i64 %i.bqx, 8589934584          ; 3 uses
  %i.brg = add nuw nsw i64 %n.vec679, %i.bqt
  %cmp.n684 = icmp eq i64 %i.bqx, %n.vec679
  %min.iters.check636 = icmp ult i32 %i.bqv, 7
  %min.iters.check638 = icmp ult i32 %i.bqv, 31
  %i.brh = and i64 %i.bqx, 24
  %n.vec640 = and i64 %i.bqx, 8589934560          ; 4 uses
  %i.bri = add nuw nsw i64 %n.vec640, %i.bqt
  %cmp.n645 = icmp eq i64 %i.bqx, %n.vec640
  %min.epilog.iters.check651 = icmp eq i64 %i.brh, 0
  %n.vec653 = and i64 %i.bqx, 8589934584          ; 3 uses
  %i.brj = add nuw nsw i64 %n.vec653, %i.bqt
  %cmp.n658 = icmp eq i64 %i.bqx, %n.vec653
  br label %.preheader.i.i

.preheader.i.us.i:                                ; preds = %.preheader.preheader.i.i, %._crit_edge493.i.split.us.us.i
  %.0435494.i.us.i = phi i32 [ %i.cji, %._crit_edge493.i.split.us.us.i ], [ %i.bqc, %.preheader.preheader.i.i ] ; 3 uses
  %i.brk = sitofp i32 %.0435494.i.us.i to float
  %i.brl = fadd float %i.brk, 5.000000e-01        ; 8 uses
  %i.brm = fdiv float %i.brl, %i.yt               ; 4 uses
  %i.brn = fpext float %i.brm to double
  %i.bro = fadd float %i.brm, f0xBC23D70A
  %i.brp = fadd float %i.brm, f0x3C23D70A
  %i.brq = sub nsw i32 %.0435494.i.us.i, %i.bqc
  %i.brr = mul nuw nsw i32 %i.brq, %i.bqf
  %.reass.i.us.i = add i32 %i.brr, %reass.sub.i.i
  br label %bb.lj

bb.lj:                                            ; preds = %bb.nf, %.preheader.i.us.i
  %indvars.iv502.i.us.us.i = phi i64 [ %i.bqt, %.preheader.i.us.i ], [ %indvars.iv.next503.i.us.us.i, %bb.nf ] ; 2 uses
  %i.brs = trunc i64 %indvars.iv502.i.us.us.i to i32 ; 2 uses
  %i.brt = sitofp i32 %i.brs to float
  %i.bru = fadd float %i.brt, 5.000000e-01        ; 8 uses
  %i.brv = fdiv float %i.bru, %i.yc               ; 7 uses
  %i.brw = call double @fmod(double noundef %i.brn, double noundef 1.000000e+00) #39 ; 2 uses
  %i.brx = fcmp olt double %i.brw, f0x3F847AE130000000
  br i1 %i.brx, label %.lr.ph.i.i.us.us.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bry = fcmp ogt double %i.brw, f0x3FEFAE1490000000
  br i1 %i.bry, label %bb.ll, label %.lr.ph.i.i.us.us.i

bb.ll:                                            ; preds = %bb.lk
  br label %.lr.ph.i.i.us.us.i

.lr.ph.i.i.us.us.i:                               ; preds = %bb.ll, %bb.lk, %bb.lj
  %.0150.i.i.us.us.i = phi float [ %i.brm, %bb.lk ], [ %i.bro, %bb.ll ], [ %i.brp, %bb.lj ] ; 10 uses
  %i.brz = fmul float %i.brv, 0.000000e+00
  %i.bsa = fmul float %.0150.i.i.us.us.i, 0.000000e+00
  %i.bsb = fadd float %i.brv, %i.bsa
  %i.bsc = fsub float %i.brz, %.0150.i.i.us.us.i
  br label %bb.lm

bb.lm:                                            ; preds = %.thread.i.i.us.us.i, %.lr.ph.i.i.us.us.i
  %indvars.iv.i.i.us.us.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i ], [ %indvars.iv.next.i.i.us.us.i, %.thread.i.i.us.us.i ] ; 2 uses
  %.0197.i.i.us.us.i = phi i32 [ 0, %.lr.ph.i.i.us.us.i ], [ %.9.i.fr.i.us.us.i, %.thread.i.i.us.us.i ] ; 11 uses
  %i.bsd = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %indvars.iv.i.i.us.us.i ; 11 uses
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsd, i64 12
  %i.bsf = load i8, ptr %i.bse, align 2
  switch i8 %i.bsf, label %.thread.i.i.us.us.i [
    i8 2, label %bb.mb
    i8 3, label %bb.ln
  ]

bb.ln:                                            ; preds = %bb.lm
  %i.bsg = getelementptr i8, ptr %i.bsd, i64 -14  ; 2 uses
  %i.bsh = getelementptr i8, ptr %i.bsd, i64 -12
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsd, i64 4
  %i.bsj = load i16, ptr %i.bsi, align 2          ; 2 uses
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsd, i64 6
  %i.bsl = load i16, ptr %i.bsk, align 2          ; 3 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsd, i64 2
  %i.bsn = load i16, ptr %i.bsh, align 2          ; 6 uses
  %i.bso = load i16, ptr %i.bsg, align 2          ; 2 uses
  %i.bsp = sext i16 %i.bsn to i32
  %i.bsq = load i16, ptr %i.bsm, align 2          ; 6 uses
  %i.bsr = load i16, ptr %i.bsd, align 2          ; 2 uses
  %i.bss = call i16 @llvm.smin.i16(i16 %i.bsj, i16 %i.bsr)
  %..i.i.us.us.i = call i16 @llvm.smin.i16(i16 %i.bss, i16 %i.bso)
  %i.bst = call i16 @llvm.smin.i16(i16 %i.bsl, i16 %i.bsq)
  %i.bsu = call i16 @llvm.smin.i16(i16 %i.bsn, i16 %i.bst)
  %i.bsv = call i16 @llvm.smax.i16(i16 %i.bsl, i16 %i.bsq)
  %i.bsw = call i16 @llvm.smax.i16(i16 %i.bsn, i16 %i.bsv)
  %i.bsx = sitofp i16 %i.bsu to float
  %i.bsy = fcmp ogt float %.0150.i.i.us.us.i, %i.bsx
  %i.bsz = sitofp i16 %i.bsw to float
  %i.bta = fcmp olt float %.0150.i.i.us.us.i, %i.bsz
  %or.cond162.i.i.us.us.i = and i1 %i.bsy, %i.bta
  %i.btb = sitofp i16 %..i.i.us.us.i to float
  %i.btc = fcmp ogt float %i.brv, %i.btb
  %or.cond164.i.i.us.us.i = select i1 %or.cond162.i.i.us.us.i, i1 %i.btc, i1 false
  br i1 %or.cond164.i.i.us.us.i, label %bb.lo, label %.thread.i.i.us.us.i

bb.lo:                                            ; preds = %bb.ln
  %i.btd = load <2 x i16>, ptr %i.bsd, align 2    ; 2 uses
  %i.bte = load <2 x i16>, ptr %i.bsg, align 2    ; 2 uses
  %i.btf = shufflevector <2 x i16> %i.btd, <2 x i16> %i.bte, <2 x i32> <i32 0, i32 2>
  %i.btg = sitofp <2 x i16> %i.btf to <2 x float> ; 3 uses
  %i.bth = shufflevector <2 x i16> %i.btd, <2 x i16> %i.bte, <2 x i32> <i32 1, i32 3>
  %i.bti = sitofp <2 x i16> %i.bth to <2 x float> ; 3 uses
  %i.btj = sitofp i16 %i.bsj to float             ; 4 uses
  %i.btk = sitofp i16 %i.bsl to float             ; 4 uses
  %i.btl = extractelement <2 x float> %i.btg, i64 1 ; 3 uses
  %i.btm = fcmp une float %i.btl, %i.btj
  %i.btn = extractelement <2 x float> %i.bti, i64 1 ; 3 uses
  %i.bto = fcmp une float %i.btn, %i.btk
  %narrow.i.not.i.i.us.us.i = or i1 %i.btm, %i.bto
  br i1 %narrow.i.not.i.i.us.us.i, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  %i.btp = extractelement <2 x float> %i.btg, i64 0 ; 2 uses
  %i.btq = fcmp une float %i.btp, %i.btj
  %i.btr = extractelement <2 x float> %i.bti, i64 0 ; 2 uses
  %i.bts = fcmp une float %i.btr, %i.btk
  %narrow.i182.not.i.i.us.us.i = or i1 %i.btq, %i.bts
  br i1 %narrow.i182.not.i.i.us.us.i, label %bb.lu, label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo
  %i.btt = sext i16 %i.bso to i32                 ; 2 uses
  %i.btu = sext i16 %i.bsr to i32                 ; 2 uses
  %i.btv = sext i16 %i.bsq to i32
end_hunk_1
