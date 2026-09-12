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

bb.dk:                                            ; preds = %bb.pn
  %i.zk = icmp slt i32 %.3, %i.ye
  br i1 %i.zk, label %.split, label %bb.po

bb.dl:                                            ; preds = %bb.di, %bb.pn
  %indvars.iv330 = phi i64 [ 0, %bb.di ], [ %indvars.iv.next331, %bb.pn ] ; 2 uses
  %.0122285 = phi i32 [ 0, %bb.di ], [ %.1, %bb.pn ] ; 3 uses
  %.2284 = phi i32 [ 0, %bb.di ], [ %.3, %bb.pn ] ; 2 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %indvars.iv330
  %i.zm = load i32, ptr %i.zl, align 4            ; 7 uses
  %.val145 = load ptr, ptr %i.r, align 8
  %.val146 = load i32, ptr %i.wb, align 8
  %i.zn = call fastcc i32 @stbtt_FindGlyphIndex(ptr %.val145, i32 %.val146, i32 noundef %i.zm) ; 5 uses
  %i.zo = icmp sgt i32 %i.zn, 0
  br i1 %i.zo, label %bb.dm, label %bb.pn

bb.dm:                                            ; preds = %bb.dl
  %i.zp = sext i32 %.0122285 to i64
  %i.zq = getelementptr inbounds [40 x i8], ptr %i.ys, i64 %i.zp ; 18 uses
  store i32 %i.zm, ptr %i.zq, align 8
  switch i32 %5, label %bb.pf [
    i32 0, label %bb.dn
    i32 1, label %bb.dn
    i32 2, label %bb.my
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
  %min.iters.check632 = icmp ult i32 %i.zr, 8
  br i1 %min.iters.check632, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph633

vector.ph633:                                     ; preds = %.lr.ph.preheader.i.i.i.i.i
  %n.vec634 = and i64 %wide.trip.count.i.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body635

vector.body635:                                   ; preds = %vector.body635, %vector.ph633
  %index636 = phi i64 [ 0, %vector.ph633 ], [ %index.next639, %vector.body635 ] ; 9 uses
  %vec.phi637 = phi <4 x i32> [ zeroinitializer, %vector.ph633 ], [ %i.abr, %vector.body635 ]
  %vec.phi638 = phi <4 x i32> [ zeroinitializer, %vector.ph633 ], [ %i.abs, %vector.body635 ]
  %i.aah = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %index636
  %i.aai = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %index636
  %i.aaj = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %index636
  %i.aak = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %index636
  %i.aal = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %index636
  %i.aam = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %index636
  %i.aan = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %index636
  %i.aao = getelementptr inbounds nuw [14 x i8], ptr %i.aaf, i64 %index636
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
  %i.abr = add <4 x i32> %vec.phi637, %i.abp      ; 2 uses
  %i.abs = add <4 x i32> %vec.phi638, %i.abq      ; 2 uses
  %index.next639 = add nuw i64 %index636, 8       ; 2 uses
  %i.abt = icmp eq i64 %index.next639, %n.vec634
  br i1 %i.abt, label %middle.block640, label %vector.body635, !llvm.loop !28

middle.block640:                                  ; preds = %vector.body635
  %bin.rdx641 = add <4 x i32> %i.abs, %i.abr
  %i.abu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx641) ; 2 uses
  %cmp.n642 = icmp eq i64 %n.vec634, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n642, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i.i, %middle.block640
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i ], [ %n.vec634, %middle.block640 ]
  %.0948.i.i.i.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i.i ], [ %i.abu, %middle.block640 ]
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

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %middle.block640
  %spec.select.i.i.i.i.i.lcssa = phi i32 [ %i.abu, %middle.block640 ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
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
bb.mn:                                            ; preds = %bb.mm
  %i.bqp = load float, ptr %i.avf, align 4
  %i.bqq = fsub float %.0.i453.i.i.i.i.i.i.i, %.054.i451.i.i.i.i.i.i.i
  %i.bqr = fmul float %i.bqq, %i.bqp
  %i.bqs = fsub float %.055.i450.i.i.i.i.i.i.i, %i.avj
  %i.bqt = fsub float %.053.i452.i.i.i.i.i.i.i, %i.avj
  %i.bqu = fadd float %i.bqs, %i.bqt
  %i.bqv = fmul float %i.bqu, 5.000000e-01
  %i.bqw = fsub float 1.000000e+00, %i.bqv
  %i.bqx = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bqy = load float, ptr %i.bqx, align 4
  %i.bqz = call float @llvm.fmuladd.f32(float %i.bqr, float %i.bqw, float %i.bqy)
  store float %i.bqz, ptr %i.bqx, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mo:                                            ; preds = %bb.ls
  br i1 %i.alf, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.bra = load float, ptr %i.aqu, align 4        ; 4 uses
  %i.brb = fcmp olt float %i.bra, %i.aix
  br i1 %i.brb, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.brc = load float, ptr %i.aqt, align 8        ; 4 uses
  %i.brd = fcmp olt float %i.aiy, %i.brc
  br i1 %i.brd, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.bre = fcmp ogt float %i.brc, %i.aix          ; 2 uses
  %i.brf = fsub float %i.brc, %i.aix
  %i.brg = fmul float %i.ave, %i.brf
  %i.brh = fdiv float %i.brg, %i.alg
  %i.bri = fadd float %i.all, %i.brh
  %.055.i457.i.i.i.i.i.i.i = select i1 %i.bre, float %i.bri, float %i.all ; 4 uses
  %.054.i458.i.i.i.i.i.i.i = select i1 %i.bre, float %i.brc, float %i.aix ; 3 uses
  %i.brj = fcmp ogt float %i.aiy, %i.bra
  br i1 %i.brj, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  %i.brk = fsub float %i.aqq, %.055.i457.i.i.i.i.i.i.i
  %i.brl = fsub float %i.bra, %i.aiy
  %i.brm = fmul float %i.brl, %i.brk
  %i.brn = fsub float %i.aiy, %.054.i458.i.i.i.i.i.i.i
  %i.bro = fdiv float %i.brm, %i.brn
  %i.brp = fadd float %i.aqq, %i.bro
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %bb.mr
  %.053.i459.i.i.i.i.i.i.i = phi float [ %i.brp, %bb.ms ], [ %i.aqq, %bb.mr ] ; 3 uses
  %.0.i460.i.i.i.i.i.i.i = phi float [ %i.bra, %bb.ms ], [ %i.aiy, %bb.mr ] ; 2 uses
  %i.brq = fcmp ugt float %.055.i457.i.i.i.i.i.i.i, %i.avj
  %i.brr = fcmp ugt float %.053.i459.i.i.i.i.i.i.i, %i.avj
  %or.cond.i461.i.i.i.i.i.i.i = select i1 %i.brq, i1 true, i1 %i.brr
  br i1 %or.cond.i461.i.i.i.i.i.i.i, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.brs = load float, ptr %i.avf, align 4
  %i.brt = fsub float %.0.i460.i.i.i.i.i.i.i, %.054.i458.i.i.i.i.i.i.i
  %i.bru = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.brv = load float, ptr %i.bru, align 4
  %i.brw = call float @llvm.fmuladd.f32(float %i.brs, float %i.brt, float %i.brv)
  store float %i.brw, ptr %i.bru, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mv:                                            ; preds = %bb.mt
  %i.brx = fcmp ult float %.055.i457.i.i.i.i.i.i.i, %i.avi
  %i.bry = fcmp ult float %.053.i459.i.i.i.i.i.i.i, %i.avi
  %or.cond62.i462.i.i.i.i.i.i.i = select i1 %i.brx, i1 true, i1 %i.bry
  br i1 %or.cond62.i462.i.i.i.i.i.i.i, label %bb.mw, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mw:                                            ; preds = %bb.mv
  %i.brz = load float, ptr %i.avf, align 4
  %i.bsa = fsub float %.0.i460.i.i.i.i.i.i.i, %.054.i458.i.i.i.i.i.i.i
  %i.bsb = fmul float %i.bsa, %i.brz
  %i.bsc = fsub float %.055.i457.i.i.i.i.i.i.i, %i.avj
  %i.bsd = fsub float %.053.i459.i.i.i.i.i.i.i, %i.avj
  %i.bse = fadd float %i.bsc, %i.bsd
  %i.bsf = fmul float %i.bse, 5.000000e-01
  %i.bsg = fsub float 1.000000e+00, %i.bsf
  %i.bsh = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bsi = load float, ptr %i.bsh, align 4
  %i.bsj = call float @llvm.fmuladd.f32(float %i.bsb, float %i.bsg, float %i.bsi)
  store float %i.bsj, ptr %i.bsh, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i: ; preds = %bb.mw, %bb.mv, %bb.mu, %bb.mq, %bb.mp, %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mf, %bb.me, %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i, %bb.lr, %bb.lq, %bb.lp, %bb.lj, %bb.li, %stbtt__handle_clipped_edge.exit435.i.i.i.i.i.i.i, %bb.kv, %bb.ku, %bb.kt, %bb.kn, %bb.km, %stbtt__handle_clipped_edge.exit421.i.i.i.i.i.i.i, %bb.jz, %bb.jy, %bb.jx, %bb.jr, %bb.jq, %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i, %bb.jd, %bb.jc, %bb.jb, %bb.iv, %bb.iu, %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i, %bb.hx, %bb.hw, %bb.hv, %bb.hp, %bb.ho, %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i
  %exitcond.not.i.i97.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i96.i.i.i.i.i, %wide.trip.count.i.i92.i.i.i.i.i
  br i1 %exitcond.not.i.i97.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.gs

stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i: ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, %bb.gr, %._crit_edge.i.i.i.i.i.i.i, %bb.gn, %bb.gj, %bb.gi, %bb.gh, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fq, %bb.fp, %bb.fe, %bb.fc
  %i.bsk = load ptr, ptr %.0293468.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i93.i.i.i.i.i = icmp eq ptr %i.bsk, null
  br i1 %.not.i.i93.i.i.i.i.i, label %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i, label %bb.fb

stbtt__fill_active_edges_new.exit.i.i.i.i.i.i:    ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  br i1 %i.aiv, label %.lr.ph22.i.i.i.preheader.i.i.i, label %.preheader.i.i.i.i.i.i

.lr.ph22.i.i.i.preheader.i.i.i:                   ; preds = %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  %i.bsl = mul nuw nsw i32 %.07630.i.i.i.i.i.i, %i.zw
  br label %.lr.ph22.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph22.i.i.i.i.i.i, %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  br i1 %.not91.i.i.i.i.i.i, label %._crit_edge26.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i

.lr.ph22.i.i.i.i.i.i:                             ; preds = %.lr.ph22.i.i.i.i.i.i, %.lr.ph22.i.i.i.preheader.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %.lr.ph22.i.i.i.i.i.i ], [ 0, %.lr.ph22.i.i.i.preheader.i.i.i ] ; 4 uses
  %.07721.i.i.i.i.i.i = phi float [ %i.bso, %.lr.ph22.i.i.i.i.i.i ], [ 0.000000e+00, %.lr.ph22.i.i.i.preheader.i.i.i ]
  %i.bsm = getelementptr inbounds nuw [4 x i8], ptr %i.aih, i64 %indvars.iv.i.i.i.i.i.i
  %i.bsn = load float, ptr %i.bsm, align 4
  %i.bso = fadd float %.07721.i.i.i.i.i.i, %i.bsn ; 2 uses
  %i.bsp = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.bsq = load float, ptr %i.bsp, align 4
  %i.bsr = fadd float %i.bsq, %i.bso
  %i.bss = call float @llvm.fabs.f32(float %i.bsr)
  %i.bst = call float @llvm.fmuladd.f32(float %i.bss, float 2.550000e+02, float 5.000000e-01)
  %i.bsu = fptosi float %i.bst to i32
  %spec.store.select.i.i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.bsu, i32 255)
  %i.bsv = trunc i32 %spec.store.select.i.i.i.i.i.i to i8
  %i.bsw = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.bsx = add nsw i32 %i.bsl, %i.bsw
  %i.bsy = sext i32 %i.bsx to i64
  %i.bsz = getelementptr inbounds i8, ptr %i.aae, i64 %i.bsy
  store i8 %i.bsv, ptr %i.bsz, align 1
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i153 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.aig
  br i1 %exitcond.not.i.i.i153, label %.preheader.i.i.i.i.i.i, label %.lr.ph22.i.i.i.i.i.i

.lr.ph25.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph25.i.i.i.i.i.i
  %i.bta = phi ptr [ %i.btf, %.lr.ph25.i.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  %.224.i.i.i.i.i.i = phi ptr [ %i.bte, %.lr.ph25.i.i.i.i.i.i ], [ %i.f, %.preheader.i.i.i.i.i.i ]
  %i.btb = getelementptr inbounds nuw i8, ptr %i.bta, i64 8 ; 2 uses
  %i.btc = load <2 x float>, ptr %i.btb, align 8
  %i.btd = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.btc)
  store float %i.btd, ptr %i.btb, align 8
  %i.bte = load ptr, ptr %.224.i.i.i.i.i.i, align 8 ; 2 uses
  %i.btf = load ptr, ptr %i.bte, align 8          ; 2 uses
  %.not92.i.i.i.i.i.i = icmp eq ptr %i.btf, null
  br i1 %.not92.i.i.i.i.i.i, label %._crit_edge26.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i

._crit_edge26.i.i.i.i.i.i:                        ; preds = %.lr.ph25.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %i.btg = add nsw i32 %.07531.i.i.i.i.i.i, 1
  %i.bth = add nuw nsw i32 %.07630.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond61.not.i.i.i = icmp eq i32 %i.bth, %i.zz
  br i1 %exitcond61.not.i.i.i, label %._crit_edge35.i.i.i.i.i.i, label %bb.eo

._crit_edge35.i.i.i.i.i.i:                        ; preds = %._crit_edge26.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.lcssa.i.i.i.i.i.i, null
  br i1 %.not1.i.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

.lr.ph.i94.i.i.i.i.i.i:                           ; preds = %._crit_edge35.i.i.i.i.i.i, %.lr.ph.i94.i.i.i.i.i.i
  %.02.i.i.i.i.i.i.i = phi ptr [ %i.bti, %.lr.ph.i94.i.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i, %._crit_edge35.i.i.i.i.i.i ] ; 2 uses
  %i.bti = load ptr, ptr %.02.i.i.i.i.i.i.i, align 8 ; 2 uses
  call void @free(ptr noundef nonnull %.02.i.i.i.i.i.i.i) #39
  %.not.i95.i.i.i.i.i.i = icmp eq ptr %i.bti, null
  br i1 %.not.i95.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

stbtt__hheap_cleanup.exit.i.i.i.i.i.i:            ; preds = %.lr.ph.i94.i.i.i.i.i.i, %._crit_edge35.i.i.i.i.i.i, %bb.en
  %.not.i.i.i.i.i.i = icmp eq ptr %.080.i.i.i.i.i.i, %i.g
  br i1 %.not.i.i.i.i.i.i, label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, label %bb.mx

bb.mx:                                            ; preds = %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @free(ptr noundef %.080.i.i.i.i.i.i) #39
  br label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i

stbtt__rasterize_sorted_edges.exit.i.i.i.i.i:     ; preds = %bb.mx, %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
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
  %i.btj = load ptr, ptr %i.m, align 8
  call void @free(ptr noundef %i.btj) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #39
  br label %.sink.split

bb.my:                                            ; preds = %bb.dm
  %.not141 = icmp eq i32 %i.zm, 32
  br i1 %.not141, label %bb.pf, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.btk = getelementptr inbounds nuw i8, ptr %i.zq, i64 4
  %i.btl = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  br i1 %10, label %bb.na, label %stbtt_GetCodepointSDF.exit

bb.na:                                            ; preds = %bb.mz
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %9, i32 noundef %i.zn, float noundef %i.yc, float noundef %i.yc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.btm = load i32, ptr %i.a, align 4            ; 4 uses
  %i.btn = load i32, ptr %i.c, align 4            ; 9 uses
  %i.bto = icmp eq i32 %i.btm, %i.btn
  br i1 %i.bto, label %stbtt_GetCodepointSDF.exit, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.btp = load i32, ptr %i.b, align 4            ; 2 uses
  %i.btq = load i32, ptr %i.d, align 4            ; 2 uses
  %i.btr = icmp eq i32 %i.btp, %i.btq
  br i1 %i.btr, label %stbtt_GetCodepointSDF.exit, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.bts = add i32 %i.btm, -4                     ; 4 uses
  %i.btt = add i32 %i.btp, -4                     ; 7 uses
  %i.btu = add i32 %i.btn, 4                      ; 6 uses
  %i.btv = add i32 %i.btq, 4                      ; 4 uses
  %i.btw = sub i32 %i.btu, %i.bts                 ; 4 uses
  %i.btx = sub nsw i32 %i.btv, %i.btt             ; 2 uses
  store i32 %i.bts, ptr %i.btk, align 4
  store i32 %i.btt, ptr %i.btl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.bty = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull readonly %9, i32 noundef %i.zn, ptr noundef %i.e) ; 5 uses
  %i.btz = mul nsw i32 %i.btx, %i.btw
  %i.bua = sext i32 %i.btz to i64
  %i.bub = call noalias ptr @malloc(i64 noundef %i.bua) #42 ; 23 uses
  %i.buc = sext i32 %i.bty to i64
  %i.bud = shl nsw i64 %i.buc, 2
  %i.bue = call noalias ptr @malloc(i64 noundef %i.bud) #42 ; 4 uses
  %i.buf = icmp sgt i32 %i.bty, 0                 ; 2 uses
  %.pre.pre.i.i = load ptr, ptr %i.e, align 8     ; 6 uses
  br i1 %i.buf, label %.lr.ph.i.i157, label %.preheader485.i.i

.lr.ph.i.i157:                                    ; preds = %bb.nc
  %i.bug = add nsw i32 %i.bty, -1
  %wide.trip.count.i.i158 = zext nneg i32 %i.bty to i64
  %i.buh = zext nneg i32 %i.bug to i64
  br label %bb.pa

.preheader485.i.i:                                ; preds = %bb.pe, %bb.nc
  %i.bui = icmp slt i32 %i.btt, %i.btv
  br i1 %i.bui, label %.preheader.lr.ph.i.i, label %._crit_edge495.split.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader485.i.i
  %i.buj = icmp slt i32 %i.bts, %i.btu
  %wide.trip.count.i.i.i156 = zext i32 %i.bty to i64 ; 2 uses
  br i1 %i.buj, label %.preheader.preheader.i.i, label %._crit_edge495.split.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.buk = zext i32 %i.bts to i64                 ; 10 uses
  %reass.sub.i.i = sub i32 4, %i.btm              ; 2 uses
  br i1 %i.buf, label %.preheader.i.us.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.preheader.i.i
  %i.bul = add i32 %i.btn, 7
  %i.bum = sub i32 %i.bul, %i.btm                 ; 8 uses
  %i.bun = zext i32 %i.bum to i64
  %i.buo = add nuw nsw i64 %i.bun, 1              ; 15 uses
  %i.bup = add i32 %i.btn, 3
  %i.buq = add i32 %i.btn, 3
  %i.bur = add i32 %i.btn, 3
  %min.iters.check672 = icmp ult i32 %i.bum, 7
  %min.iters.check700 = icmp ult i32 %i.bum, 31
  %i.bus = and i64 %i.buo, 24
  %n.vec702 = and i64 %i.buo, 8589934560          ; 4 uses
  %i.but = add nuw nsw i64 %n.vec702, %i.buk
  %cmp.n707 = icmp eq i64 %i.buo, %n.vec702
  %min.epilog.iters.check713 = icmp eq i64 %i.bus, 0
  %n.vec715 = and i64 %i.buo, 8589934584          ; 3 uses
  %i.buu = add nuw nsw i64 %n.vec715, %i.buk
  %cmp.n720 = icmp eq i64 %i.buo, %n.vec715
  %min.iters.check674 = icmp ult i32 %i.bum, 31
  %i.buv = and i64 %i.buo, 24
  %n.vec676 = and i64 %i.buo, 8589934560          ; 4 uses
  %i.buw = add nuw nsw i64 %n.vec676, %i.buk
  %cmp.n681 = icmp eq i64 %i.buo, %n.vec676
  %min.epilog.iters.check687 = icmp eq i64 %i.buv, 0
  %n.vec689 = and i64 %i.buo, 8589934584          ; 3 uses
  %i.bux = add nuw nsw i64 %n.vec689, %i.buk
  %cmp.n694 = icmp eq i64 %i.buo, %n.vec689
  %min.iters.check646 = icmp ult i32 %i.bum, 7
  %min.iters.check648 = icmp ult i32 %i.bum, 31
  %i.buy = and i64 %i.buo, 24
  %n.vec650 = and i64 %i.buo, 8589934560          ; 4 uses
  %i.buz = add nuw nsw i64 %n.vec650, %i.buk
  %cmp.n655 = icmp eq i64 %i.buo, %n.vec650
  %min.epilog.iters.check661 = icmp eq i64 %i.buy, 0
  %n.vec663 = and i64 %i.buo, 8589934584          ; 3 uses
  %i.bva = add nuw nsw i64 %n.vec663, %i.buk
  %cmp.n668 = icmp eq i64 %i.buo, %n.vec663
  br label %.preheader.i.i

.preheader.i.us.i:                                ; preds = %.preheader.preheader.i.i, %._crit_edge493.i.split.us.us.i
  %.0435494.i.us.i = phi i32 [ %i.cmz, %._crit_edge493.i.split.us.us.i ], [ %i.btt, %.preheader.preheader.i.i ] ; 3 uses
  %i.bvb = sitofp i32 %.0435494.i.us.i to float
  %i.bvc = fadd float %i.bvb, 5.000000e-01        ; 8 uses
  %i.bvd = fdiv float %i.bvc, %i.yt               ; 4 uses
  %i.bve = fpext float %i.bvd to double
  %i.bvf = fadd float %i.bvd, f0xBC23D70A
  %i.bvg = fadd float %i.bvd, f0x3C23D70A
  %i.bvh = sub nsw i32 %.0435494.i.us.i, %i.btt
  %i.bvi = mul nuw nsw i32 %i.bvh, %i.btw
  %.reass.i.us.i = add i32 %i.bvi, %reass.sub.i.i
  br label %bb.nd

bb.nd:                                            ; preds = %bb.oz, %.preheader.i.us.i
  %indvars.iv502.i.us.us.i = phi i64 [ %i.buk, %.preheader.i.us.i ], [ %indvars.iv.next503.i.us.us.i, %bb.oz ] ; 2 uses
  %i.bvj = trunc i64 %indvars.iv502.i.us.us.i to i32 ; 2 uses
  %i.bvk = sitofp i32 %i.bvj to float
  %i.bvl = fadd float %i.bvk, 5.000000e-01        ; 8 uses
  %i.bvm = fdiv float %i.bvl, %i.yc               ; 7 uses
  %i.bvn = call double @fmod(double noundef %i.bve, double noundef 1.000000e+00) #39 ; 2 uses
  %i.bvo = fcmp olt double %i.bvn, f0x3F847AE130000000
  br i1 %i.bvo, label %.lr.ph.i.i.us.us.i, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.bvp = fcmp ogt double %i.bvn, f0x3FEFAE1490000000
  br i1 %i.bvp, label %bb.nf, label %.lr.ph.i.i.us.us.i

bb.nf:                                            ; preds = %bb.ne
  br label %.lr.ph.i.i.us.us.i

.lr.ph.i.i.us.us.i:                               ; preds = %bb.nf, %bb.ne, %bb.nd
  %.0150.i.i.us.us.i = phi float [ %i.bvd, %bb.ne ], [ %i.bvf, %bb.nf ], [ %i.bvg, %bb.nd ] ; 10 uses
  %i.bvq = fmul float %i.bvm, 0.000000e+00
  %i.bvr = fmul float %.0150.i.i.us.us.i, 0.000000e+00
  %i.bvs = fadd float %i.bvm, %i.bvr
  %i.bvt = fsub float %i.bvq, %.0150.i.i.us.us.i
  br label %bb.ng

bb.ng:                                            ; preds = %.thread.i.i.us.us.i, %.lr.ph.i.i.us.us.i
  %indvars.iv.i.i.us.us.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i ], [ %indvars.iv.next.i.i.us.us.i, %.thread.i.i.us.us.i ] ; 2 uses
  %.0197.i.i.us.us.i = phi i32 [ 0, %.lr.ph.i.i.us.us.i ], [ %.9.i.fr.i.us.us.i, %.thread.i.i.us.us.i ] ; 11 uses
  %i.bvu = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %indvars.iv.i.i.us.us.i ; 11 uses
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvu, i64 12
  %i.bvw = load i8, ptr %i.bvv, align 2
  switch i8 %i.bvw, label %.thread.i.i.us.us.i [
    i8 2, label %bb.nv
    i8 3, label %bb.nh
  ]

bb.nh:                                            ; preds = %bb.ng
  %i.bvx = getelementptr i8, ptr %i.bvu, i64 -14  ; 2 uses
  %i.bvy = getelementptr i8, ptr %i.bvu, i64 -12
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bvu, i64 4
  %i.bwa = load i16, ptr %i.bvz, align 2          ; 2 uses
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bvu, i64 6
  %i.bwc = load i16, ptr %i.bwb, align 2          ; 3 uses
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bvu, i64 2
  %i.bwe = load i16, ptr %i.bvy, align 2          ; 6 uses
  %i.bwf = load i16, ptr %i.bvx, align 2          ; 2 uses
  %i.bwg = sext i16 %i.bwe to i32
  %i.bwh = load i16, ptr %i.bwd, align 2          ; 6 uses
  %i.bwi = load i16, ptr %i.bvu, align 2          ; 2 uses
  %i.bwj = call i16 @llvm.smin.i16(i16 %i.bwa, i16 %i.bwi)
  %..i.i.us.us.i = call i16 @llvm.smin.i16(i16 %i.bwj, i16 %i.bwf)
  %i.bwk = call i16 @llvm.smin.i16(i16 %i.bwc, i16 %i.bwh)
  %i.bwl = call i16 @llvm.smin.i16(i16 %i.bwe, i16 %i.bwk)
  %i.bwm = call i16 @llvm.smax.i16(i16 %i.bwc, i16 %i.bwh)
  %i.bwn = call i16 @llvm.smax.i16(i16 %i.bwe, i16 %i.bwm)
  %i.bwo = sitofp i16 %i.bwl to float
  %i.bwp = fcmp ogt float %.0150.i.i.us.us.i, %i.bwo
  %i.bwq = sitofp i16 %i.bwn to float
  %i.bwr = fcmp olt float %.0150.i.i.us.us.i, %i.bwq
  %or.cond162.i.i.us.us.i = and i1 %i.bwp, %i.bwr
  %i.bws = sitofp i16 %..i.i.us.us.i to float
  %i.bwt = fcmp ogt float %i.bvm, %i.bws
  %or.cond164.i.i.us.us.i = select i1 %or.cond162.i.i.us.us.i, i1 %i.bwt, i1 false
  br i1 %or.cond164.i.i.us.us.i, label %bb.ni, label %.thread.i.i.us.us.i

bb.ni:                                            ; preds = %bb.nh
  %i.bwu = load <2 x i16>, ptr %i.bvu, align 2    ; 2 uses
  %i.bwv = load <2 x i16>, ptr %i.bvx, align 2    ; 2 uses
  %i.bww = shufflevector <2 x i16> %i.bwu, <2 x i16> %i.bwv, <2 x i32> <i32 0, i32 2>
  %i.bwx = sitofp <2 x i16> %i.bww to <2 x float> ; 3 uses
  %i.bwy = shufflevector <2 x i16> %i.bwu, <2 x i16> %i.bwv, <2 x i32> <i32 1, i32 3>
  %i.bwz = sitofp <2 x i16> %i.bwy to <2 x float> ; 3 uses
  %i.bxa = sitofp i16 %i.bwa to float             ; 4 uses
  %i.bxb = sitofp i16 %i.bwc to float             ; 4 uses
  %i.bxc = extractelement <2 x float> %i.bwx, i64 1 ; 3 uses
  %i.bxd = fcmp une float %i.bxc, %i.bxa
  %i.bxe = extractelement <2 x float> %i.bwz, i64 1 ; 3 uses
  %i.bxf = fcmp une float %i.bxe, %i.bxb
  %narrow.i.not.i.i.us.us.i = or i1 %i.bxd, %i.bxf
  br i1 %narrow.i.not.i.i.us.us.i, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  %i.bxg = extractelement <2 x float> %i.bwx, i64 0 ; 2 uses
  %i.bxh = fcmp une float %i.bxg, %i.bxa
  %i.bxi = extractelement <2 x float> %i.bwz, i64 0 ; 2 uses
  %i.bxj = fcmp une float %i.bxi, %i.bxb
  %narrow.i182.not.i.i.us.us.i = or i1 %i.bxh, %i.bxj
  br i1 %narrow.i182.not.i.i.us.us.i, label %bb.no, label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %i.bxk = sext i16 %i.bwf to i32                 ; 2 uses
  %i.bxl = sext i16 %i.bwi to i32                 ; 2 uses
  %i.bxm = sext i16 %i.bwh to i32
end_hunk_1
