Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/physics_world?download=true
inline.NumInlined: 282
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@b3World_Draw:bb.a
bb.cn:                                            ; preds = %bb.cm
  %i.wa = load float, ptr %i.si, align 4, !tbaa !287 ; 2 uses
  %i.wb = fcmp ogt float %i.wa, %i.mo
  br i1 %i.wb, label %bb.cv, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.wc = fcmp ogt float %i.wa, 0.000000e+00
  %i.wd = load ptr, ptr %i.bl, align 8, !tbaa !481 ; 7 uses
  %i.we = getelementptr i8, ptr %i.wd, i64 -8
  %i.wf = load i32, ptr %i.we, align 4, !nosanitize !10
  %i.wg = icmp eq i32 %i.wf, -1056584962, !nosanitize !10 ; 2 uses
  br i1 %i.wc, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  br i1 %i.wg, label %bb.cq, label %bb.cr, !nosanitize !10

bb.cq:                                            ; preds = %bb.cp
  %i.wh = getelementptr i8, ptr %i.wd, i64 -4
  %i.wi = load i32, ptr %i.wh, align 8, !nosanitize !10
  %i.wj = icmp eq i32 %i.wi, -127790077, !nosanitize !10
  br i1 %i.wj, label %bb.cr, label %.split8277.us, !prof !11, !nosanitize !10

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %i.wk = load ptr, ptr %i.be, align 8, !tbaa !276
  call void %i.wd(<2 x float> %i.sg, float %i.sh, float noundef 1.000000e+01, i32 noundef 11393254, ptr noundef %i.wk) #16
  br label %bb.dg

bb.cs:                                            ; preds = %bb.co
  br i1 %i.wg, label %bb.ct, label %bb.cu, !nosanitize !10

bb.ct:                                            ; preds = %bb.cs
  %i.wl = getelementptr i8, ptr %i.wd, i64 -4
  %i.wm = load i32, ptr %i.wl, align 8, !nosanitize !10
  %i.wn = icmp eq i32 %i.wm, -127790077, !nosanitize !10
  br i1 %i.wn, label %bb.cu, label %.split8286.us, !prof !11, !nosanitize !10

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %i.wo = load ptr, ptr %i.be, align 8, !tbaa !276
  call void %i.wd(<2 x float> %i.sg, float %i.sh, float noundef 1.000000e+01, i32 noundef 255, ptr noundef %i.wo) #16
  br label %bb.dg

bb.cv:                                            ; preds = %bb.cn
  %i.wp = load ptr, ptr %i.bl, align 8, !tbaa !481 ; 4 uses
  %i.wq = getelementptr i8, ptr %i.wp, i64 -8
  %i.wr = load i32, ptr %i.wq, align 4, !nosanitize !10
  %i.ws = icmp eq i32 %i.wr, -1056584962, !nosanitize !10
  br i1 %i.ws, label %bb.cw, label %bb.cx, !nosanitize !10

bb.cw:                                            ; preds = %bb.cv
  %i.wt = getelementptr i8, ptr %i.wp, i64 -4
  %i.wu = load i32, ptr %i.wt, align 8, !nosanitize !10
  %i.wv = icmp eq i32 %i.wu, -127790077, !nosanitize !10
  br i1 %i.wv, label %bb.cx, label %.split8295.us, !prof !11, !nosanitize !10

bb.cx:                                            ; preds = %bb.cv, %bb.cw
  %i.ww = load ptr, ptr %i.be, align 8, !tbaa !276
  call void %i.wp(<2 x float> %i.sg, float %i.sh, float noundef 1.000000e+01, i32 noundef 139, ptr noundef %i.ww) #16
  br label %bb.dg

bb.cy:                                            ; preds = %bb.cm
  %i.wx = load ptr, ptr %i.bl, align 8, !tbaa !481 ; 4 uses
  %i.wy = getelementptr i8, ptr %i.wx, i64 -8
  %i.wz = load i32, ptr %i.wy, align 4, !nosanitize !10
  %i.xa = icmp eq i32 %i.wz, -1056584962, !nosanitize !10
  br i1 %i.xa, label %bb.cz, label %bb.da, !nosanitize !10

bb.cz:                                            ; preds = %bb.cy
  %i.xb = getelementptr i8, ptr %i.wx, i64 -4
  %i.xc = load i32, ptr %i.xb, align 8, !nosanitize !10
  %i.xd = icmp eq i32 %i.xc, -127790077, !nosanitize !10
  br i1 %i.xd, label %bb.da, label %.split8304.us, !prof !11, !nosanitize !10

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %i.xe = load ptr, ptr %i.be, align 8, !tbaa !276
  call void %i.wx(<2 x float> %i.sg, float %i.sh, float noundef 2.000000e+01, i32 noundef 3329330, ptr noundef %i.xe) #16
  br label %bb.dg

bb.db:                                            ; preds = %bb.ck
  %i.xf = load i32, ptr %i.og, align 4, !tbaa !263 ; 3 uses
  %i.xg = icmp eq i32 %i.xf, 23
  %i.xh = select i1 %i.xg, float 1.500000e+01, float 1.000000e+01
  %i.xi = load ptr, ptr %i.bl, align 8, !tbaa !481 ; 4 uses
  %i.xj = getelementptr i8, ptr %i.xi, i64 -8
  %i.xk = load i32, ptr %i.xj, align 4, !nosanitize !10
  %i.xl = icmp eq i32 %i.xk, -1056584962, !nosanitize !10
  br i1 %i.xl, label %bb.dc, label %bb.dd, !nosanitize !10

bb.dc:                                            ; preds = %bb.db
  %i.xm = getelementptr i8, ptr %i.xi, i64 -4
  %i.xn = load i32, ptr %i.xm, align 8, !nosanitize !10
  %i.xo = icmp eq i32 %i.xn, -127790077, !nosanitize !10
  br i1 %i.xo, label %bb.dd, label %.split8313.us, !prof !11, !nosanitize !10

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.xp = sext i32 %i.xf to i64, !nosanitize !10  ; 3 uses
  %i.xq = icmp ult i32 %i.xf, 24
  br i1 %i.xq, label %bb.de, label %.split8316.us, !prof !11, !nosanitize !10

bb.de:                                            ; preds = %bb.dd
  %i.xr = shl nuw nsw i64 %i.xp, 2
  %i.xs = add i64 %i.xr, %i.ca, !nosanitize !10   ; 2 uses
  %.not665.us.us.us.us = icmp ult i64 %i.xs, %i.ca, !nosanitize !10
  br i1 %.not665.us.us.us.us, label %.split8319.us, label %bb.df, !prof !78, !nosanitize !10

bb.df:                                            ; preds = %bb.de
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.xp
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !84
  %i.xv = load ptr, ptr %i.be, align 8, !tbaa !276
  call void %i.xi(<2 x float> %i.sg, float %i.sh, float noundef %i.xh, i32 noundef %i.xu, ptr noundef %i.xv) #16
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.da, %bb.cx, %bb.cu, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %indvars.iv.next18347 = add nuw nsw i64 %indvars.iv1834625497, 1 ; 2 uses
  %i.xw = load i32, ptr %i.ru, align 4, !tbaa !285
  %i.xx = sext i32 %i.xw to i64
  %i.xy = icmp slt i64 %indvars.iv.next18347, %i.xx
  br i1 %i.xy, label %.lr.ph25501, label %._crit_edge

._crit_edge:                                      ; preds = %bb.dg, %.lr.ph.us.us.us.us
  %.sroa.0285.08127.us.us.us.us.lcssa = phi <2 x float> [ zeroinitializer, %.lr.ph.us.us.us.us ], [ %i.st, %bb.dg ]
  %i.xz = phi <2 x float> [ zeroinitializer, %.lr.ph.us.us.us.us ], [ %i.sx, %bb.dg ] ; 2 uses
  %i.ya = load i8, ptr %i.bu, align 4, !tbaa !489 ; 3 uses
  %i.yb = icmp ult i8 %i.ya, 2
  br i1 %i.yb, label %bb.dh, label %.split8333.us, !prof !11, !nosanitize !10

bb.dh:                                            ; preds = %._crit_edge
  %i.yc = trunc nuw i8 %i.ya to i1
  br i1 %i.yc, label %bb.di, label %.lr.ph8133.split.us.split.us8863.us.us

bb.di:                                            ; preds = %bb.dh
  %i.yd = load float, ptr %i.bw, align 4, !tbaa !242 ; 2 uses
  %i.ye = fcmp ogt float %i.yd, 0.000000e+00
  %i.yf = fmul nnan float %i.yd, 5.000000e-01
  %i.yg = select i1 %i.ye, float %i.yf, float 3.000000e+01 ; 2 uses
  %i.yh = extractelement <2 x float> %i.xz, i64 1
  %i.yi = fdiv float 1.000000e+00, %i.yh          ; 2 uses
  %i.yj = extractelement <2 x float> %i.xz, i64 0
  %i.yk = fmul float %i.yi, %i.yj
  %i.yl = insertelement <2 x float> poison, float %i.yi, i64 0
  %i.ym = shufflevector <2 x float> %i.yl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yn = fmul <2 x float> %i.ym, %.sroa.0285.08127.us.us.us.us.lcssa
  %i.yo = fadd <2 x float> %.sroa.0288.0.us.us.us.us, %i.yn ; 4 uses
  %i.yp = fadd float %.sroa.6291.0.us.us.us.us, %i.yk ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.qz, i64 240
  %.sroa.0136.0.copyload.us.us.us.us = load <2 x float>, ptr %i.yq, align 4
  %.sroa.2137.0..sroa_idx.us.us.us.us = getelementptr inbounds nuw i8, ptr %i.qz, i64 248
  %.sroa.2137.0.copyload.us.us.us.us = load float, ptr %.sroa.2137.0..sroa_idx.us.us.us.us, align 4
  %i.yr = insertelement <2 x float> poison, float %i.yg, i64 0
  %i.ys = shufflevector <2 x float> %i.yr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yt = fmul <2 x float> %i.ys, %.sroa.0136.0.copyload.us.us.us.us ; 3 uses
  %i.yu = fmul float %i.yg, %.sroa.2137.0.copyload.us.us.us.us ; 3 uses
  %i.yv = load float, ptr %i.bx, align 8, !tbaa !493 ; 2 uses
  %i.yw = fmul float %i.yu, %i.yv
  %i.yx = insertelement <2 x float> poison, float %i.yv, i64 0
  %i.yy = shufflevector <2 x float> %i.yx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yz = fmul <2 x float> %i.yt, %i.yy
  %i.za = fadd <2 x float> %i.yo, %i.yz
  %i.zb = fadd float %i.yp, %i.yw
  %i.zc = load ptr, ptr %i.by, align 8, !tbaa !494 ; 4 uses
  %i.zd = getelementptr i8, ptr %i.zc, i64 -8
  %i.ze = load i32, ptr %i.zd, align 4, !nosanitize !10
  %i.zf = icmp eq i32 %i.ze, -1056584962, !nosanitize !10
  br i1 %i.zf, label %bb.dj, label %bb.dk, !nosanitize !10

bb.dj:                                            ; preds = %bb.di
  %i.zg = getelementptr i8, ptr %i.zc, i64 -4
  %i.zh = load i32, ptr %i.zg, align 8, !nosanitize !10
  %i.zi = icmp eq i32 %i.zh, -341714709, !nosanitize !10
  br i1 %i.zi, label %bb.dk, label %.split8345.us, !prof !11, !nosanitize !10

bb.dk:                                            ; preds = %bb.di, %bb.dj
  %i.zj = load ptr, ptr %i.be, align 8, !tbaa !276
  call void %i.zc(<2 x float> %i.yo, float %i.yp, <2 x float> %i.za, float %i.zb, i32 noundef 16776960, ptr noundef %i.zj) #16
  %i.zk = load ptr, ptr %i.bl, align 8, !tbaa !481 ; 4 uses
  %i.zl = getelementptr i8, ptr %i.zk, i64 -8
  %i.zm = load i32, ptr %i.zl, align 4, !nosanitize !10
  %i.zn = icmp eq i32 %i.zm, -1056584962, !nosanitize !10
  br i1 %i.zn, label %bb.dl, label %bb.dm, !nosanitize !10

bb.dl:                                            ; preds = %bb.dk
  %i.zo = getelementptr i8, ptr %i.zk, i64 -4
  %i.zp = load i32, ptr %i.zo, align 8, !nosanitize !10
  %i.zq = icmp eq i32 %i.zp, -127790077, !nosanitize !10
  br i1 %i.zq, label %bb.dm, label %.split8354.us, !prof !11, !nosanitize !10

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.zr = load ptr, ptr %i.be, align 8, !tbaa !276
  call void %i.zk(<2 x float> %i.yo, float %i.yp, float noundef 5.000000e+00, i32 noundef 16776960, ptr noundef %i.zr) #16
  %i.zs = fmul <2 x float> %i.ck, %.sroa.0294.0.copyload.us.us8864.us.us
  %i.zt = fmul float %i.cb, %.sroa.6297.0.copyload.us.us8866.us.us
  %i.zu = fadd <2 x float> %i.zs, %i.yo
  %i.zv = fadd float %i.zt, %i.yp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.zw = fmul <2 x float> %i.yt, %i.yt           ; 2 uses
  %shift25546 = shufflevector <2 x float> %i.zw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop25547 = fadd <2 x float> %i.zw, %shift25546
  %i.zx = extractelement <2 x float> %foldExtExtBinop25547, i64 0
  %i.zy = fmul float %i.yu, %i.yu
  %i.zz = fadd float %i.zy, %i.zx
  %i.aaa = call float @llvm.sqrt.f32(float %i.zz)
  %i.aab = fpext float %i.aaa to double
  %i.aac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 32, ptr noundef nonnull @.str.3, double noundef %i.aab) #16 ; 0 uses
  %i.aad = load ptr, ptr %i.bd, align 8, !tbaa !475 ; 4 uses
  %i.aae = getelementptr i8, ptr %i.aad, i64 -8
  %i.aaf = load i32, ptr %i.aae, align 4, !nosanitize !10
  %i.aag = icmp eq i32 %i.aaf, -1056584962, !nosanitize !10
  br i1 %i.aag, label %bb.dn, label %bb.do, !nosanitize !10

bb.dn:                                            ; preds = %bb.dm
  %i.aah = getelementptr i8, ptr %i.aad, i64 -4
  %i.aai = load i32, ptr %i.aah, align 8, !nosanitize !10
  %i.aaj = icmp eq i32 %i.aai, -449580001, !nosanitize !10
  br i1 %i.aaj, label %bb.do, label %.split8360.us, !prof !11, !nosanitize !10

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.aak = load ptr, ptr %i.be, align 8, !tbaa !276
  call void %i.aad(<2 x float> %i.zu, float %i.zv, ptr noundef nonnull %i.e, i32 noundef 16777215, ptr noundef %i.aak) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %.lr.ph8133.split.us.split.us8863.us.us

.lr.ph8133.split.us.split.us8863.us.us:           ; preds = %bb.do, %bb.dh
  %indvars.iv.next18350 = add nuw nsw i64 %indvars.iv1834925504, 1 ; 2 uses
  %i.aal = load i32, ptr %i.qk, align 8, !tbaa !282
  %i.aam = sext i32 %i.aal to i64
  %i.aan = icmp slt i64 %indvars.iv.next18350, %i.aam
  br i1 %i.aan, label %.lr.ph25505, label %.split8139.us8862.us.us

.split8139.us8862.us.us:                          ; preds = %.lr.ph8133.split.us.split.us8863.us.us, %.lr.ph8133.us.us.us
  %i.aao = load ptr, ptr %i.ac, align 8, !tbaa !256 ; 3 uses
  %i.aap = zext nneg i32 %i.oj to i64             ; 2 uses
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.aao, i64 %i.aap ; 3 uses
  %i.aar = shl nuw nsw i64 %i.aap, 3
  %i.aas = ptrtoint ptr %i.aao to i64, !nosanitize !10 ; 3 uses
  %i.aat = add i64 %i.aar, %i.aas, !nosanitize !10 ; 3 uses
  %i.aau = icmp ne ptr %i.aao, null, !nosanitize !10 ; 2 uses
  %i.aav = icmp eq i64 %i.aat, 0
  %i.aaw = xor i1 %i.aau, %i.aav
  %i.aax = icmp uge i64 %i.aat, %i.aas, !nosanitize !10
  %i.aay = and i1 %i.aax, %i.aaw, !nosanitize !10
  br i1 %i.aay, label %bb.dp, label %.split9190.us, !prof !11, !nosanitize !10

bb.dp:                                            ; preds = %.split8139.us8862.us.us
  %i.aaz = ptrtoint ptr %i.aaq to i64, !nosanitize !10 ; 2 uses
  %i.aba = and i64 %i.aaz, 7, !nosanitize !10
  %i.abb = icmp eq i64 %i.aba, 0, !nosanitize !10
  %i.abc = and i1 %i.aau, %i.abb
  br i1 %i.abc, label %b3SetBit.exit771.us.us.us, label %.split9194.us, !prof !11, !nosanitize !10

b3SetBit.exit771.us.us.us:                        ; preds = %bb.dp
  %i.abd = and i32 %i.ne, 63
  %i.abe = zext nneg i32 %i.abd to i64
  %i.abf = shl nuw i64 1, %i.abe
  %i.abg = load i64, ptr %i.aaq, align 8, !tbaa !257
  %i.abh = or i64 %i.abg, %i.abf
  store i64 %i.abh, ptr %i.aaq, align 8, !tbaa !257
  br label %bb.dq

bb.dq:                                            ; preds = %b3SetBit.exit771.us.us.us, %b3GetBit.exit684.us.us.us
  br i1 %.not654.us.us.us, label %.split9197.us, label %bb.dr, !prof !78, !nosanitize !10

bb.dr:                                            ; preds = %bb.dq
  %i.abi = load i32, ptr %i.od, align 4, !tbaa !485
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.bh, %bb.bg
  %.1563.us.us.us = phi i32 [ %i.abi, %bb.dr ], [ %i.oe, %bb.bh ], [ %i.oe, %bb.bg ] ; 2 uses
  %.not649.us.us.us = icmp eq i32 %.1563.us.us.us, -1
  br i1 %.not649.us.us.us, label %.loopexit.us.us.us, label %.lr.ph.split.us.us.us

.loopexit.us.us.us:                               ; preds = %bb.ds, %bb.az, %bb.bb, %bb.bc, %bb.bd
  %i.abj = load i8, ptr %i.cc, align 1, !tbaa !496 ; 3 uses
  %i.abk = icmp ult i8 %i.abj, 2
  br i1 %i.abk, label %bb.dt, label %.split9203.us, !prof !11, !nosanitize !10

bb.dt:                                            ; preds = %.loopexit.us.us.us
  %i.abl = trunc nuw i8 %i.abj to i1
  br i1 %i.abl, label %bb.du, label %.thread812.us.us.us

bb.du:                                            ; preds = %bb.dt
  %i.abm = ptrtoint ptr %i.cz to i64, !nosanitize !10 ; 2 uses
  %i.abn = and i64 %i.abm, 7, !nosanitize !10
  %i.abo = icmp eq i64 %i.abn, 0, !nosanitize !10
  %i.abp = and i1 %i.dd, %i.abo
  br i1 %i.abp, label %bb.dv, label %.split9206.us, !prof !11, !nosanitize !10

bb.dv:                                            ; preds = %bb.du
  %i.abq = getelementptr inbounds nuw i8, ptr %i.cz, i64 44
  %i.abr = load i32, ptr %i.abq, align 4, !tbaa !497 ; 6 uses
  %.not651.us.us.us = icmp eq i32 %i.abr, -1
  br i1 %.not651.us.us.us, label %.thread812.us.us.us, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.abs = lshr i32 %i.abr, 6                     ; 3 uses
  %i.abt = load i32, ptr %i.cd, align 4, !tbaa !255
  %.not.i772.us.us.us = icmp ult i32 %i.abs, %i.abt
  br i1 %.not.i772.us.us.us, label %bb.dx, label %b3GetBit.exit774.thread.us.us.us

bb.dx:                                            ; preds = %bb.dw
  %i.abu = load ptr, ptr %i.af, align 8, !tbaa !256 ; 3 uses
  %i.abv = zext nneg i32 %i.abs to i64            ; 2 uses
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.abu, i64 %i.abv ; 2 uses
  %i.abx = shl nuw nsw i64 %i.abv, 3
  %i.aby = ptrtoint ptr %i.abu to i64, !nosanitize !10 ; 3 uses
  %i.abz = add i64 %i.abx, %i.aby, !nosanitize !10 ; 3 uses
  %i.aca = icmp ne ptr %i.abu, null, !nosanitize !10 ; 2 uses
  %i.acb = icmp eq i64 %i.abz, 0
  %i.acc = xor i1 %i.aca, %i.acb
  %i.acd = icmp uge i64 %i.abz, %i.aby, !nosanitize !10
  %i.ace = and i1 %i.acd, %i.acc, !nosanitize !10
  br i1 %i.ace, label %bb.dy, label %.split9217.us, !prof !11, !nosanitize !10

bb.dy:                                            ; preds = %bb.dx
  %i.acf = ptrtoint ptr %i.abw to i64, !nosanitize !10 ; 2 uses
  %i.acg = and i64 %i.acf, 7, !nosanitize !10
  %i.ach = icmp eq i64 %i.acg, 0, !nosanitize !10
  %i.aci = and i1 %i.aca, %i.ach
  br i1 %i.aci, label %b3GetBit.exit774.us.us.us, label %.split9221.us, !prof !11, !nosanitize !10

b3GetBit.exit774.us.us.us:                        ; preds = %bb.dy
  %i.acj = and i32 %i.abr, 63
  %i.ack = zext nneg i32 %i.acj to i64
  %i.acl = load i64, ptr %i.abw, align 8, !tbaa !257
  %i.acm = shl nuw i64 1, %i.ack
  %i.acn = and i64 %i.acl, %i.acm
  %.not820.us.us.us = icmp eq i64 %i.acn, 0
  br i1 %.not820.us.us.us, label %b3GetBit.exit774.thread.us.us.us, label %.thread812.us.us.us

b3GetBit.exit774.thread.us.us.us:                 ; preds = %bb.dw, %b3GetBit.exit774.us.us.us
  %i.aco = load ptr, ptr %i.ce, align 8, !tbaa !120 ; 3 uses
  %i.acp = sext i32 %i.abr to i64                 ; 2 uses
  %i.acq = getelementptr inbounds [64 x i8], ptr %i.aco, i64 %i.acp ; 4 uses
  %i.acr = shl nsw i64 %i.acp, 6
  %i.acs = ptrtoint ptr %i.aco to i64, !nosanitize !10 ; 3 uses
  %i.act = add i64 %i.acr, %i.acs, !nosanitize !10 ; 3 uses
  %i.acu = icmp ne ptr %i.aco, null, !nosanitize !10 ; 2 uses
  %i.acv = icmp eq i64 %i.act, 0
  %i.acw = xor i1 %i.acu, %i.acv
  %i.acx = icmp uge i64 %i.act, %i.acs, !nosanitize !10
  %i.acy = icmp slt i32 %i.abr, 0
  %i.acz = xor i1 %i.acy, %i.acx
  %i.ada = and i1 %i.acw, %i.acz, !nosanitize !10
  br i1 %i.ada, label %bb.dz, label %.split9227.us, !prof !11, !nosanitize !10

bb.dz:                                            ; preds = %b3GetBit.exit774.thread.us.us.us
  %i.adb = ptrtoint ptr %i.acq to i64, !nosanitize !10 ; 2 uses
  %i.adc = and i64 %i.adb, 7, !nosanitize !10
  %i.add = icmp eq i64 %i.adc, 0, !nosanitize !10
  %i.ade = and i1 %i.acu, %i.add
  br i1 %i.ade, label %bb.ea, label %.split9231.us, !prof !11, !nosanitize !10

bb.ea:                                            ; preds = %bb.dz
  %i.adf = load i32, ptr %i.acq, align 8, !tbaa !498
  %.not653.us.us.us = icmp eq i32 %i.adf, -1
  br i1 %.not653.us.us.us, label %bb.em, label %.lr.ph8756.us.us.us, !llvm.loop !466

.lr.ph8756.us.us.us:                              ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acq, i64 16
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acq, i64 24
  %i.adi = load i32, ptr %i.adh, align 8, !tbaa !213 ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.adi, i32 0)
  %wide.trip.count18355 = zext nneg i32 %smax to i64
  %exitcond18356.not25518 = icmp slt i32 %i.adi, 1
  br i1 %exitcond18356.not25518, label %.critedge, label %.lr.ph25525.preheader

.lr.ph25525.preheader:                            ; preds = %.lr.ph8756.us.us.us
  %i.adj = load ptr, ptr %i.adg, align 8, !tbaa !211 ; 3 uses
  %i.adk = ptrtoint ptr %i.adj to i64, !nosanitize !10 ; 3 uses
  %i.adl = icmp ne ptr %i.adj, null, !nosanitize !10 ; 2 uses
  br label %.lr.ph25525

.lr.ph25525:                                      ; preds = %.lr.ph25525.preheader, %.split8646.us8871.us.us
  %.us-phi865087398752.us.us.us25524 = phi <2 x float> [ %.sroa.0800.0.copyload8611.us.us.us.us.lcssa, %.split8646.us8871.us.us ], [ splat (float f0x7F7FFFFF), %.lr.ph25525.preheader ] ; 2 uses
  %.05588753.us.us.us25523 = phi i32 [ %.1559.us.us.us.us.lcssa, %.split8646.us8871.us.us ], [ 0, %.lr.ph25525.preheader ] ; 2 uses
  %.us-phi86498763.us.us.us25522 = phi float [ %.lcssa24558, %.split8646.us8871.us.us ], [ f0x7F7FFFFF, %.lr.ph25525.preheader ] ; 2 uses
  %.us-phi86488790.us.us.us25521 = phi <2 x float> [ %.sroa.05.4.vec.insert.i21.i8626.us.us.us.us.lcssa, %.split8646.us8871.us.us ], [ splat (float f0xFF7FFFFF), %.lr.ph25525.preheader ] ; 2 uses
  %.us-phi86478817.us.us.us25520 = phi float [ %.lcssa24565, %.split8646.us8871.us.us ], [ f0xFF7FFFFF, %.lr.ph25525.preheader ] ; 2 uses
  %indvars.iv1835225519 = phi i64 [ %indvars.iv.next18353, %.split8646.us8871.us.us ], [ 0, %.lr.ph25525.preheader ] ; 3 uses
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.adj, i64 %indvars.iv1835225519 ; 2 uses
  %i.adn = shl nuw nsw i64 %indvars.iv1835225519, 2
  %i.ado = add i64 %i.adn, %i.adk, !nosanitize !10 ; 3 uses
  %i.adp = icmp eq i64 %i.ado, 0
  %i.adq = xor i1 %i.adl, %i.adp
  %i.adr = icmp uge i64 %i.ado, %i.adk, !nosanitize !10
  %i.ads = and i1 %i.adq, %i.adr, !nosanitize !10
  br i1 %i.ads, label %bb.eb, label %.split9245.us, !prof !11, !nosanitize !10

bb.eb:                                            ; preds = %.lr.ph25525
  %i.adt = ptrtoint ptr %i.adm to i64, !nosanitize !10 ; 2 uses
  %i.adu = and i64 %i.adt, 3, !nosanitize !10
  %i.adv = icmp eq i64 %i.adu, 0, !nosanitize !10
  %i.adw = and i1 %i.adl, %i.adv
  br i1 %i.adw, label %bb.ec, label %.split9256.us, !prof !11, !nosanitize !10

bb.ec:                                            ; preds = %bb.eb
  %i.adx = load i32, ptr %i.adm, align 4, !tbaa !84 ; 2 uses
  %i.ady = load ptr, ptr %i.ba, align 8, !tbaa !93 ; 3 uses
  %i.adz = sext i32 %i.adx to i64                 ; 2 uses
  %i.aea = getelementptr inbounds [128 x i8], ptr %i.ady, i64 %i.adz ; 2 uses
  %i.aeb = shl nsw i64 %i.adz, 7
end_hunk_0
begin_hunk_1_@ExplosionCallback:bb.a
  %i.h = ptrtoint ptr %i.f to i64, !nosanitize !10 ; 2 uses
  %i.i = and i64 %i.h, 7, !nosanitize !10
  %i.j = icmp eq i64 %i.i, 0, !nosanitize !10
  %i.k = and i1 %i.g, %i.j, !nosanitize !10
  br i1 %i.k, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @703, i64 %i.h) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4080
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113  ; 3 uses
  %i.n = shl i64 %1, 32
  %i.o = ashr exact i64 %i.n, 32                  ; 3 uses
  %i.p = getelementptr inbounds [232 x i8], ptr %i.m, i64 %i.o ; 6 uses
  %i.q = mul nsw i64 %i.o, 232
  %i.r = ptrtoint ptr %i.m to i64, !nosanitize !10 ; 3 uses
  %i.s = add i64 %i.q, %i.r, !nosanitize !10      ; 3 uses
  %i.t = icmp ne ptr %i.m, null, !nosanitize !10  ; 2 uses
  %i.u = icmp eq i64 %i.s, 0
  %i.v = xor i1 %i.t, %i.u
  %i.w = icmp uge i64 %i.s, %i.r, !nosanitize !10
  %i.x = icmp slt i64 %i.o, 0
  %i.y = xor i1 %i.x, %i.w
  %i.z = and i1 %i.v, %i.y, !nosanitize !10
  br i1 %i.z, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @704, i64 %i.r, i64 %i.s) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.aa = ptrtoint ptr %i.p to i64, !nosanitize !10 ; 2 uses
  %i.ab = and i64 %i.aa, 7, !nosanitize !10
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !10
  %i.ad = and i1 %i.t, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @705, i64 %i.aa) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.af = load float, ptr %i.ae, align 8, !tbaa !676
  %i.ag = fcmp oeq float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.ak, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 3880
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !93 ; 3 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !291 ; 2 uses
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds [128 x i8], ptr %i.aj, i64 %i.al ; 5 uses
  %i.an = shl nsw i64 %i.al, 7
  %i.ao = ptrtoint ptr %i.aj to i64, !nosanitize !10 ; 3 uses
  %i.ap = add i64 %i.an, %i.ao, !nosanitize !10   ; 3 uses
  %i.aq = icmp ne ptr %i.aj, null, !nosanitize !10 ; 2 uses
  %i.ar = icmp eq i64 %i.ap, 0
  %i.as = xor i1 %i.aq, %i.ar
  %i.at = icmp uge i64 %i.ap, %i.ao, !nosanitize !10
  %i.au = icmp slt i32 %i.ak, 0
  %i.av = xor i1 %i.au, %i.at
  %i.aw = and i1 %i.as, %i.av, !nosanitize !10
  br i1 %i.aw, label %bb.l, label %bb.k, !prof !11, !nosanitize !10

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @706, i64 %i.ao, i64 %i.ap) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @b3GetBodyTransformQuick(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %3, ptr noundef nonnull %i.f, ptr noundef %i.am) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0126.0.copyload = load <2 x float>, ptr %i.ax, align 8
  %.sroa.2127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2127.0.copyload = load float, ptr %.sroa.2127.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.ba = load <2 x float>, ptr %i.az, align 4    ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.bc = load <2 x float>, ptr %i.bb, align 4    ; 3 uses
  %i.bd = load <2 x float>, ptr %3, align 8, !tbaa !144
  %i.be = fsub <2 x float> %.sroa.0126.0.copyload, %i.bd ; 4 uses
  %i.bf = load float, ptr %i.ay, align 8, !tbaa !279
  %i.bg = fsub float %.sroa.2127.0.copyload, %i.bf ; 3 uses
  %i.bh = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bi = insertelement <2 x float> %i.bh, float %i.bg, i64 1 ; 2 uses
  %i.bj = fmul <2 x float> %i.bi, %i.ba
  %i.bk = shufflevector <2 x float> %i.bc, <2 x float> %i.ba, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bl = fmul <2 x float> %i.be, %i.bk
  %i.bm = shufflevector <2 x float> %i.ba, <2 x float> %i.bc, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bn = fmul <2 x float> %i.be, %i.bm
  %i.bo = insertelement <2 x float> %i.bh, float %i.bg, i64 0 ; 2 uses
  %i.bp = fmul <2 x float> %i.bo, %i.ba
  %i.bq = fsub <2 x float> %i.bj, %i.bn
  %i.br = fsub <2 x float> %i.bl, %i.bp
  %i.bs = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bt = fmul <2 x float> %i.bo, %i.bs
  %i.bu = fmul <2 x float> %i.bi, %i.bs
  %i.bv = fsub <2 x float> %i.bq, %i.bt           ; 2 uses
  %i.bw = fsub <2 x float> %i.br, %i.bu           ; 2 uses
  %i.bx = fmul <2 x float> %i.bm, %i.bv
  %i.by = fmul <2 x float> %i.bk, %i.bw
  %i.bz = fsub <2 x float> %i.bx, %i.by
  %i.ca = shufflevector <2 x float> %i.bw, <2 x float> %i.bv, <2 x i32> <i32 0, i32 3>
  %i.cb = fmul <2 x float> %i.ba, %i.ca           ; 2 uses
  %shift = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.cb, %shift
  %i.cc = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cd = fmul <2 x float> %i.bz, splat (float 2.000000e+00)
  %i.ce = fadd <2 x float> %i.be, %i.cd
  %i.cf = fmul float %i.cc, 2.000000e+00
  %i.cg = fadd float %i.bg, %i.cf
  store <2 x float> %i.ce, ptr %4, align 8
  %.sroa.2125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float %i.cg, ptr %.sroa.2125.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.ch = call { ptr, i64 } @b3MakeShapeProxy(ptr noundef nonnull %i.p) #16 ; 2 uses
  %i.ci = extractvalue { ptr, i64 } %i.ch, 0
  %i.cj = extractvalue { ptr, i64 } %i.ch, 1
  store ptr %i.ci, ptr %5, align 8, !tbaa !331
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cj, ptr %.sroa.4121.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %i.ck, align 8, !tbaa !331
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !84
  %.sroa.3219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float 0.000000e+00, ptr %.sroa.3219.0..sroa_idx, align 4, !tbaa !144
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cl, ptr noundef nonnull align 4 dereferenceable(28) @b3Transform_identity, i64 28, i1 false), !tbaa.struct !296
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 60
  store i8 1, ptr %i.cm, align 4, !tbaa !678
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #16
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.co = load float, ptr %i.cn, align 4, !tbaa !679 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cq = load float, ptr %i.cp, align 8, !tbaa !680 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 3 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !682
  %i.ct = fadd float %i.co, %i.cq                 ; 2 uses
  %i.cu = fcmp ogt float %i.cs, %i.ct
  br i1 %i.cu, label %bb.aj, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = call zeroext i1 @b3WakeBody(ptr noundef nonnull %i.f, ptr noundef %i.am) #16 ; 0 uses
  %i.cw = ptrtoint ptr %i.am to i64, !nosanitize !10 ; 2 uses
  %i.cx = and i64 %i.cw, 7, !nosanitize !10
  %i.cy = icmp eq i64 %i.cx, 0, !nosanitize !10
  %i.cz = and i1 %i.aq, %i.cy
  br i1 %i.cz, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @707, i64 %i.cw) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !281
  %.not = icmp eq i32 %i.db, 2
  br i1 %.not, label %bb.p, label %bb.aj

bb.p:                                             ; preds = %bb.o
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !144
  %.sroa.0111.0.copyload = load <2 x float>, ptr %7, align 8, !tbaa !144
  %i.dc = load float, ptr %i.cr, align 4, !tbaa !682
  %i.dd = fcmp oeq float %i.dc, 0.000000e+00
  br i1 %i.dd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.de = call { <2 x float>, float } @b3GetShapeCentroid(ptr noundef nonnull %i.p) #16 ; 2 uses
  %.fca.0.extract105 = extractvalue { <2 x float>, float } %i.de, 0
  %.fca.1.extract106 = extractvalue { <2 x float>, float } %i.de, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0111.0 = phi <2 x float> [ %.fca.0.extract105, %bb.q ], [ %.sroa.0111.0.copyload, %bb.p ] ; 2 uses
  %.sroa.6.0 = phi float [ %.fca.1.extract106, %bb.q ], [ %.sroa.6.0.copyload, %bb.p ] ; 2 uses
  %.sroa.097.0.copyload = load <2 x float>, ptr %4, align 8
  %.sroa.298.0.copyload = load float, ptr %.sroa.2125.0..sroa_idx, align 8
  %i.df = fsub <2 x float> %.sroa.0111.0, %.sroa.097.0.copyload ; 3 uses
  %i.dg = fsub float %.sroa.6.0, %.sroa.298.0.copyload ; 3 uses
  %i.dh = fmul <2 x float> %i.df, %i.df           ; 2 uses
  %shift233 = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop234 = fadd <2 x float> %i.dh, %shift233
  %i.di = extractelement <2 x float> %foldExtExtBinop234, i64 0
  %i.dj = fmul float %i.dg, %i.dg
  %i.dk = fadd float %i.dj, %i.di                 ; 2 uses
  %i.dl = fcmp ogt float %i.dk, f0x2BC80000
  br i1 %i.dl, label %b3Normalize.exit, label %bb.s

b3Normalize.exit:                                 ; preds = %bb.r
  %i.dm = call float @llvm.sqrt.f32(float %i.dk)
  %i.dn = fdiv float 1.000000e+00, %i.dm          ; 2 uses
  %i.do = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.df, %i.dp
  %i.dr = fmul float %i.dg, %i.dn
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %b3Normalize.exit
  %.sroa.0101.0 = phi <2 x float> [ %i.dq, %b3Normalize.exit ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.r ] ; 5 uses
  %.sroa.9.0 = phi float [ %i.dr, %b3Normalize.exit ], [ 0.000000e+00, %bb.r ] ; 5 uses
  %i.ds = call float @b3GetShapeProjectedArea(ptr noundef nonnull %i.p, <2 x float> %.sroa.0101.0, float %.sroa.9.0) #16
  %i.dt = load float, ptr %i.cr, align 4, !tbaa !682 ; 2 uses
  %i.du = fcmp ogt float %i.dt, %i.co
  %i.dv = fcmp ogt float %i.cq, 0.000000e+00
  %or.cond = and i1 %i.dv, %i.du
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dw = fsub float %i.ct, %i.dt
  %i.dx = fdiv float %i.dw, %i.cq                 ; 3 uses
  %i.dy = fcmp olt float %i.dx, 0.000000e+00
  %i.dz = fcmp ogt float %i.dx, 1.000000e+00
  %i.ea = select i1 %i.dz, float 1.000000e+00, float %i.dx
  %i.eb = select i1 %i.dy, float 0.000000e+00, float %i.ea
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0152 = phi float [ %i.eb, %bb.t ], [ 1.000000e+00, %bb.s ]
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !683
  %i.ee = fmul float %i.ds, %i.ed
  %i.ef = fmul float %.0152, %i.ee
  %i.eg = load float, ptr %i.ae, align 8, !tbaa !676
  %i.eh = fmul float %i.eg, %i.ef                 ; 2 uses
  %i.ei = load <2 x float>, ptr %i.az, align 4    ; 6 uses
  %i.ej = load <2 x float>, ptr %i.bb, align 4    ; 4 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %i.ei, i64 0
  %foldExtExtBinop236 = fmul <2 x float> %.sroa.0101.0, %i.ej
  %i.ek = extractelement <2 x float> %foldExtExtBinop236, i64 0
  %i.el = fmul float %.sroa.9.0, %.sroa.09.0.vec.extract.i.i
  %i.em = fsub float %i.ek, %i.el
  %i.en = shufflevector <2 x float> %.sroa.0101.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eo = insertelement <2 x float> %i.en, float %.sroa.9.0, i64 1 ; 2 uses
  %i.ep = fmul <2 x float> %i.eo, %i.ei
  %i.eq = shufflevector <2 x float> %i.ei, <2 x float> %i.ej, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.er = fmul <2 x float> %.sroa.0101.0, %i.eq
  %i.es = fsub <2 x float> %i.ep, %i.er           ; 2 uses
  %i.et = insertelement <2 x float> %i.en, float %.sroa.9.0, i64 0
  %i.eu = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ev = fmul <2 x float> %i.et, %i.eu
  %i.ew = fmul <2 x float> %i.eo, %i.eu
  %i.ex = fadd <2 x float> %i.ev, %i.es           ; 2 uses
  %i.ey = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ez = insertelement <2 x float> %i.ey, float %i.em, i64 0
  %i.fa = fadd <2 x float> %i.ew, %i.ez           ; 2 uses
  %i.fb = fmul <2 x float> %i.eq, %i.ex
  %i.fc = shufflevector <2 x float> %i.ej, <2 x float> %i.ei, <2 x i32> <i32 0, i32 2>
  %i.fd = fmul <2 x float> %i.fc, %i.fa
  %i.fe = fsub <2 x float> %i.fb, %i.fd
  %foldExtExtBinop238 = fmul <2 x float> %i.ei, %i.fa
  %foldExtExtBinop240 = fmul <2 x float> %i.ei, %i.ex
  %shift242 = shufflevector <2 x float> %foldExtExtBinop240, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop243 = fsub <2 x float> %foldExtExtBinop238, %shift242
  %i.ff = extractelement <2 x float> %foldExtExtBinop243, i64 0
  %i.fg = fmul <2 x float> %i.fe, splat (float 2.000000e+00)
  %i.fh = fadd <2 x float> %.sroa.0101.0, %i.fg
  %i.fi = fmul float %i.ff, 2.000000e+00
  %i.fj = fadd float %.sroa.9.0, %i.fi
  %i.fk = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.fl, %i.fh           ; 3 uses
  %i.fn = fmul float %i.eh, %i.fj                 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !375 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.f, i64 3920
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !95 ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 176 ; 2 uses
  %i.ft = ptrtoint ptr %i.fr to i64, !nosanitize !10 ; 2 uses
  %i.fu = add i64 %i.ft, 176, !nosanitize !10     ; 2 uses
  %i.fv = icmp ne ptr %i.fr, null, !nosanitize !10
  %i.fw = icmp ne i64 %i.fu, 0
  %i.fx = and i1 %i.fv, %i.fw
  %i.fy = icmp ult ptr %i.fr, inttoptr (i64 -176 to ptr)
  %i.fz = and i1 %i.fy, %i.fx, !nosanitize !10
  br i1 %i.fz, label %bb.w, label %bb.v, !prof !11, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @708, i64 %i.ft, i64 %i.fu) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.w:                                             ; preds = %bb.u
  %i.ga = ptrtoint ptr %i.fs to i64, !nosanitize !10 ; 2 uses
  %i.gb = and i64 %i.ga, 7, !nosanitize !10
  %i.gc = icmp eq i64 %i.gb, 0, !nosanitize !10
  br i1 %i.gc, label %bb.y, label %bb.x, !prof !11, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @709, i64 %i.ga) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.y:                                             ; preds = %bb.w
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fr, i64 192 ; 2 uses
  %i.ge = ptrtoint ptr %i.gd to i64, !nosanitize !10 ; 2 uses
  %i.gf = and i64 %i.ge, 7, !nosanitize !10
  %i.gg = icmp eq i64 %i.gf, 0, !nosanitize !10
  br i1 %i.gg, label %bb.aa, label %bb.z, !prof !11, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @710, i64 %i.ge) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.aa:                                            ; preds = %bb.y
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !109 ; 3 uses
  %i.gi = sext i32 %i.fp to i64                   ; 4 uses
  %i.gj = getelementptr inbounds [56 x i8], ptr %i.gh, i64 %i.gi ; 6 uses
  %i.gk = mul nsw i64 %i.gi, 56
  %i.gl = ptrtoint ptr %i.gh to i64, !nosanitize !10 ; 3 uses
  %i.gm = add i64 %i.gk, %i.gl, !nosanitize !10   ; 3 uses
  %i.gn = icmp ne ptr %i.gh, null, !nosanitize !10 ; 2 uses
  %i.go = icmp eq i64 %i.gm, 0
  %i.gp = xor i1 %i.gn, %i.go
  %i.gq = icmp uge i64 %i.gm, %i.gl, !nosanitize !10
  %i.gr = icmp slt i32 %i.fp, 0                   ; 2 uses
  %i.gs = xor i1 %i.gr, %i.gq
  %i.gt = and i1 %i.gp, %i.gs, !nosanitize !10
  br i1 %i.gt, label %bb.ac, label %bb.ab, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @711, i64 %i.gl, i64 %i.gm) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ac:                                            ; preds = %bb.aa
  %i.gu = load ptr, ptr %i.fs, align 8, !tbaa !107 ; 3 uses
  %i.gv = getelementptr inbounds [216 x i8], ptr %i.gu, i64 %i.gi ; 13 uses
  %i.gw = mul nsw i64 %i.gi, 216
  %i.gx = ptrtoint ptr %i.gu to i64, !nosanitize !10 ; 3 uses
  %i.gy = add i64 %i.gw, %i.gx, !nosanitize !10   ; 3 uses
  %i.gz = icmp ne ptr %i.gu, null, !nosanitize !10 ; 2 uses
  %i.ha = icmp eq i64 %i.gy, 0
  %i.hb = xor i1 %i.gz, %i.ha
  %i.hc = icmp uge i64 %i.gy, %i.gx, !nosanitize !10
  %i.hd = xor i1 %i.gr, %i.hc
  %i.he = and i1 %i.hb, %i.hd, !nosanitize !10
  br i1 %i.he, label %bb.ae, label %bb.ad, !prof !11, !nosanitize !10

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @712, i64 %i.gx, i64 %i.gy) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ae:                                            ; preds = %bb.ac
  %i.hf = ptrtoint ptr %i.gj to i64, !nosanitize !10 ; 2 uses
  %i.hg = and i64 %i.hf, 3, !nosanitize !10
  %i.hh = icmp eq i64 %i.hg, 0, !nosanitize !10
  %i.hi = and i1 %i.gn, %i.hh
  br i1 %i.hi, label %bb.ag, label %bb.af, !prof !11, !nosanitize !10

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @714, i64 %i.hf) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ag:                                            ; preds = %bb.ae
  %i.hj = ptrtoint ptr %i.gv to i64, !nosanitize !10 ; 2 uses
  %i.hk = and i64 %i.hj, 3, !nosanitize !10
  %i.hl = icmp eq i64 %i.hk, 0, !nosanitize !10
  %i.hm = and i1 %i.gz, %i.hl
  br i1 %i.hm, label %bb.ai, label %bb.ah, !prof !11, !nosanitize !10

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @715, i64 %i.hj) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ai:                                            ; preds = %bb.ag
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gv, i64 104
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !684 ; 2 uses
  %.sroa.049.0.copyload = load <2 x float>, ptr %i.gj, align 4
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %.sroa.250.0.copyload = load float, ptr %.sroa.250.0..sroa_idx, align 4
  %i.hp = insertelement <2 x float> poison, float %i.ho, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hr = fmul <2 x float> %i.fm, %i.hq
  %i.hs = fadd <2 x float> %i.hr, %.sroa.049.0.copyload
  %i.ht = fmul float %i.fn, %i.ho
  %i.hu = fadd float %i.ht, %.sroa.250.0.copyload
  store <2 x float> %i.hs, ptr %i.gj, align 4, !tbaa !144
  store float %i.hu, ptr %.sroa.250.0..sroa_idx, align 4, !tbaa !144
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gj, i64 12 ; 2 uses
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 76
  %.sroa.236.0.copyload = load float, ptr %.sroa.236.0..sroa_idx, align 4
  %i.hw = load <2 x float>, ptr %i.az, align 4    ; 3 uses
  %i.hx = load <2 x float>, ptr %i.bb, align 4    ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gv, i64 68
  %.sroa.035.0.copyload = load <2 x float>, ptr %i.hy, align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gv, i64 144
  %.sroa.0.0.copyload = load float, ptr %i.hz, align 4, !tbaa !144
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 148
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !144
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 152
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !144
  %.sroa.6.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %i.gv, i64 156
  %.sroa.6.0.copyload215 = load float, ptr %.sroa.6.0..sroa_idx214, align 4, !tbaa !144
end_hunk_1
begin_hunk_2_@b3CollideTask:bb.a

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %.0290, i64 28, i1 false), !tbaa.struct !296
  %i.nl = getelementptr inbounds nuw i8, ptr %.0289, i64 212
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !294
  %i.nn = and i32 %i.nm, 64
  %.not = icmp eq i32 %i.nn, 0
  br i1 %.not, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.no = getelementptr inbounds nuw i8, ptr %.0290, i64 212
  %i.np = load i32, ptr %i.no, align 4, !tbaa !294
  %i.nq = and i32 %i.np, 64
  %i.nr = icmp ne i32 %i.nq, 0
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %i.ns = phi i1 [ true, %bb.cc ], [ %i.nr, %bb.cd ] ; 2 uses
  %spec.select = select i1 %i.ja, i32 -1, i32 %i.na
  %i.nt = getelementptr inbounds nuw i8, ptr %i.er, i64 60
  store i32 %spec.select, ptr %i.nt, align 4, !tbaa !266
  %i.nu = select i1 %i.jg, i32 -1, i32 %i.mz
  %i.nv = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  store i32 %i.nu, ptr %i.nv, align 8, !tbaa !267
  %i.nw = select i1 %.not337, i1 %i.bd, i1 false
  %i.nx = select i1 %i.nw, float %i.bc, float %i.az ; 3 uses
  br i1 %i.ns, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ny = and i32 %i.ji, 4194304
  %i.nz = icmp eq i32 %i.ny, 0
  %or.cond = select i1 %i.nz, i1 %.old2, i1 false
  br i1 %or.cond, label %bb.ch, label %.thread558

bb.cg:                                            ; preds = %bb.ce
  br i1 %.old2, label %bb.ch, label %.thread558

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %i.oa = and i32 %i.ji, 8388624
  %or.cond341.not = icmp eq i32 %i.oa, 8388624
  br i1 %or.cond341.not, label %bb.ci, label %.thread558

bb.ci:                                            ; preds = %bb.ch
  %i.ob = getelementptr inbounds nuw i8, ptr %i.er, i64 84
  %i.oc = load <2 x float>, ptr %i.bv, align 4    ; 13 uses
  %i.od = load <2 x float>, ptr %i.bw, align 4    ; 9 uses
  %i.oe = load <2 x float>, ptr %i.ob, align 4    ; 5 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.er, i64 92
  %i.og = load <2 x float>, ptr %i.of, align 4    ; 4 uses
  %i.oh = shufflevector <2 x float> %i.oc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.oi = extractelement <2 x float> %i.oc, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.oe, i64 1
  %.sroa.32.8.vec.extract.i = extractelement <2 x float> %i.od, i64 0
  %i.oj = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ok = shufflevector <2 x float> %i.oc, <2 x float> %i.od, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ol = shufflevector <2 x float> %i.oe, <2 x float> %i.og, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.om = fmul <4 x float> %i.ok, %i.ol           ; 7 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.er, i64 100
  %i.oo = load <2 x float>, ptr %i.bx, align 4    ; 10 uses
  %i.op = load <2 x float>, ptr %i.by, align 4    ; 8 uses
  %i.oq = load <2 x float>, ptr %i.on, align 4    ; 5 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.er, i64 108
  %i.os = load <2 x float>, ptr %i.or, align 4    ; 4 uses
  %i.ot = shufflevector <2 x float> %i.oo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ou = extractelement <2 x float> %i.oo, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i356 = extractelement <2 x float> %i.oq, i64 1
  %.sroa.32.8.vec.extract.i357 = extractelement <2 x float> %i.op, i64 0
  %i.ov = shufflevector <2 x float> %i.os, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ow = shufflevector <2 x float> %i.oo, <2 x float> %i.op, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ox = shufflevector <2 x float> %i.oq, <2 x float> %i.os, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.oy = fmul <4 x float> %i.ow, %i.ox           ; 7 uses
  %i.oz = shufflevector <4 x float> %i.om, <4 x float> %i.oy, <2 x i32> <i32 0, i32 4>
  %i.pa = shufflevector <4 x float> %i.om, <4 x float> %i.oy, <2 x i32> <i32 1, i32 5>
  %i.pb = fadd <2 x float> %i.oz, %i.pa
  %i.pc = shufflevector <4 x float> %i.om, <4 x float> %i.oy, <2 x i32> <i32 2, i32 6>
  %i.pd = fadd <2 x float> %i.pb, %i.pc
  %i.pe = shufflevector <4 x float> %i.om, <4 x float> %i.oy, <2 x i32> <i32 3, i32 7>
  %i.pf = fadd <2 x float> %i.pe, %i.pd           ; 2 uses
  %i.pg = fmul <2 x float> %i.pf, %i.pf           ; 2 uses
  %i.ph = extractelement <2 x float> %i.pg, i64 0 ; 2 uses
  %i.pi = extractelement <2 x float> %i.pg, i64 1 ; 2 uses
  %i.pj = fcmp olt float %i.ph, %i.pi
  %i.pk = select i1 %i.pj, float %i.ph, float %i.pi
  %i.pl = fmul float %.sroa.32.8.vec.extract.i, %i.ou
  %i.pm = fmul float %i.oi, %.sroa.32.8.vec.extract.i357
  %i.pn = shufflevector <2 x float> %i.op, <2 x float> %i.oo, <2 x i32> <i32 0, i32 2>
  %i.po = fmul <2 x float> %i.oc, %i.pn           ; 2 uses
  %i.pp = shufflevector <2 x float> %i.od, <2 x float> %i.oc, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.pq = fmul <2 x float> %i.pp, %i.oo           ; 2 uses
  %i.pr = shufflevector <2 x float> %i.po, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ps = insertelement <2 x float> %i.pr, float %i.pl, i64 0
  %i.pt = shufflevector <2 x float> %i.pq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pu = insertelement <2 x float> %i.pt, float %i.pm, i64 0
  %i.pv = fsub <2 x float> %i.ps, %i.pu
  %i.pw = fsub <2 x float> %i.po, %i.pq
  %i.px = shufflevector <2 x float> %i.od, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.py = fmul <2 x float> %i.px, %i.oo
  %i.pz = shufflevector <2 x float> %i.oo, <2 x float> %i.op, <2 x i32> <i32 1, i32 2>
  %i.qa = fmul <2 x float> %i.px, %i.pz
  %i.qb = fadd <2 x float> %i.py, %i.pv
  %i.qc = fadd <2 x float> %i.qa, %i.pw
  %i.qd = shufflevector <2 x float> %i.op, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.qe = fmul <2 x float> %i.oc, %i.qd
  %i.qf = shufflevector <2 x float> %i.oc, <2 x float> %i.od, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.qg = fmul <2 x float> %i.qf, %i.qd
  %i.qh = fsub <2 x float> %i.qb, %i.qe           ; 3 uses
  %i.qi = fsub <2 x float> %i.qc, %i.qg           ; 3 uses
  %i.qj = shufflevector <2 x float> %i.od, <2 x float> %i.oc, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.qk = shufflevector <2 x float> %i.op, <2 x float> %i.oo, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ql = fmul <4 x float> %i.qj, %i.qk           ; 4 uses
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.qn = shufflevector <4 x float> %i.ql, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.qo = shufflevector <4 x float> %i.ql, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.qp = fadd <4 x float> %i.qn, %i.qo
  %shift9903 = fadd <4 x float> %i.qm, %i.qp
  %foldExtExtBinop9904 = fadd <4 x float> %i.ql, %shift9903 ; 2 uses
  %i.qq = extractelement <4 x float> %foldExtExtBinop9904, i64 0
  %i.qr = load <2 x float>, ptr %5, align 8       ; 2 uses
  %i.qs = load <2 x float>, ptr %.sroa.4536.0..sroa_idx, align 4 ; 2 uses
  %i.qt = load <2 x float>, ptr %4, align 8       ; 2 uses
  %i.qu = load <2 x float>, ptr %.sroa.4529.0..sroa_idx, align 4 ; 2 uses
  %i.qv = shufflevector <2 x float> %i.qs, <2 x float> %i.qr, <2 x i32> <i32 1, i32 2>
  %i.qw = shufflevector <2 x float> %i.qu, <2 x float> %i.qt, <2 x i32> <i32 1, i32 2>
  %i.qx = fsub <2 x float> %i.qv, %i.qw           ; 4 uses
  %i.qy = fsub <2 x float> %i.qr, %i.qt           ; 4 uses
  %i.qz = fsub <2 x float> %i.qs, %i.qu
  %i.ra = fmul <2 x float> %i.qf, %i.qx
  %i.rb = shufflevector <2 x float> %i.qy, <2 x float> %i.qx, <2 x i32> <i32 1, i32 2>
  %i.rc = fmul <2 x float> %i.pp, %i.rb
  %i.rd = fmul <2 x float> %i.pp, %i.qy
  %i.re = fmul <2 x float> %i.oc, %i.qx
  %i.rf = fsub <2 x float> %i.ra, %i.rc
  %i.rg = fsub <2 x float> %i.rd, %i.re
  %i.rh = fmul <2 x float> %i.px, %i.qy
  %i.ri = fmul <2 x float> %i.px, %i.qz
  %i.rj = fsub <2 x float> %i.rf, %i.rh           ; 2 uses
  %i.rk = fsub <2 x float> %i.rg, %i.ri           ; 2 uses
  %foldExtExtBinop9906 = fmul <2 x float> %i.od, %i.rj
  %shift9908 = shufflevector <2 x float> %i.rk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9909 = fmul <2 x float> %i.oc, %shift9908
  %foldExtExtBinop9911 = fsub <2 x float> %foldExtExtBinop9906, %foldExtExtBinop9909
  %i.rl = extractelement <2 x float> %foldExtExtBinop9911, i64 0
  %i.rm = fmul <2 x float> %i.oc, %i.rk
  %i.rn = fmul <2 x float> %i.qf, %i.rj
  %i.ro = fsub <2 x float> %i.rm, %i.rn
  %i.rp = fmul <2 x float> %i.ro, splat (float 2.000000e+00)
  %i.rq = fmul float %i.rl, 2.000000e+00
  %i.rr = extractelement <2 x float> %i.qy, i64 1
  %i.rs = fadd float %i.rr, %i.rq
  %i.rt = fadd <2 x float> %i.qx, %i.rp
  %i.ru = getelementptr inbounds nuw i8, ptr %i.er, i64 116
  %.sroa.0145.0.copyload = load <2 x float>, ptr %i.ru, align 4, !tbaa !144 ; 2 uses
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 124
  %.sroa.4146.0.copyload = load float, ptr %.sroa.4146.0..sroa_idx, align 4, !tbaa !144
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 128
  %.sroa.5147.0.copyload = load <2 x float>, ptr %.sroa.5147.0..sroa_idx, align 8, !tbaa !144 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 136
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !144 ; 4 uses
  br i1 %i.ja, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.rv = getelementptr inbounds nuw i8, ptr %.0289, i64 184
  %.sroa.0141.0.copyload142 = load <2 x float>, ptr %i.rv, align 4, !tbaa !144
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0289, i64 192
  %.sroa.5143.0.copyload144 = load float, ptr %.sroa.5143.0..sroa_idx, align 4, !tbaa !144
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.sroa.0141.0 = phi <2 x float> [ %.sroa.0141.0.copyload142, %bb.cj ], [ zeroinitializer, %bb.ci ] ; 3 uses
  %.sroa.5143.0 = phi float [ %.sroa.5143.0.copyload144, %bb.cj ], [ 0.000000e+00, %bb.ci ] ; 2 uses
  br i1 %i.jg, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.rw = getelementptr inbounds nuw i8, ptr %.0290, i64 184
  %.sroa.0138.0.copyload139 = load <2 x float>, ptr %i.rw, align 4, !tbaa !144
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0290, i64 192
  %.sroa.5.0.copyload140 = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !144
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %.sroa.0138.0 = phi <2 x float> [ %.sroa.0138.0.copyload139, %bb.cl ], [ zeroinitializer, %bb.ck ] ; 3 uses
  %.sroa.5.0 = phi float [ %.sroa.5.0.copyload140, %bb.cl ], [ 0.000000e+00, %bb.ck ] ; 2 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.0145.0.copyload, i64 1
  %i.rx = fsub float %.sroa.03.4.vec.extract.i, %i.rs ; 2 uses
  %i.ry = fmul float %i.rx, %i.rx
  %i.rz = shufflevector <2 x float> %.sroa.0145.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.sa = insertelement <2 x float> %i.rz, float %.sroa.4146.0.copyload, i64 0
  %i.sb = fsub <2 x float> %i.sa, %i.rt           ; 2 uses
  %i.sc = fmul <2 x float> %i.sb, %i.sb           ; 2 uses
  %i.sd = extractelement <2 x float> %i.sc, i64 1
  %i.se = fadd float %i.sd, %i.ry
  %i.sf = extractelement <2 x float> %i.sc, i64 0
  %i.sg = fadd float %i.sf, %i.se                 ; 2 uses
  %i.sh = fcmp ogt float %i.pk, f0x3F7E0E2E
  %i.si = fmul float %i.nx, %i.nx
  %i.sj = fcmp olt float %i.sg, %i.si
  %or.cond343 = select i1 %i.sh, i1 %i.sj, i1 false
  br i1 %or.cond343, label %bb.cn, label %.thread558

bb.cn:                                            ; preds = %bb.cm
  %i.sk = tail call float @llvm.sqrt.f32(float %i.sg)
  %i.sl = fsub float %i.nx, %i.sk                 ; 2 uses
  %i.sm = shufflevector <2 x float> %.sroa.5147.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sn = fcmp ogt float %.sroa.5143.0, %.sroa.5.0
  %i.so = fcmp ogt <2 x float> %.sroa.0141.0, %.sroa.0138.0 ; 2 uses
  %i.sp = shufflevector <2 x i1> %i.so, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %i.sq = insertelement <2 x i1> %i.sp, i1 %i.sn, i64 1
  %i.sr = shufflevector <2 x float> %.sroa.0141.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ss = insertelement <2 x float> %i.sr, float %.sroa.5143.0, i64 1
  %i.st = shufflevector <2 x float> %.sroa.0138.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.su = insertelement <2 x float> %i.st, float %.sroa.5.0, i64 1
  %i.sv = select <2 x i1> %i.sq, <2 x float> %i.ss, <2 x float> %i.su ; 2 uses
  %i.sw = select <2 x i1> %i.so, <2 x float> %.sroa.0141.0, <2 x float> %.sroa.0138.0 ; 2 uses
  %i.sx = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.5147.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.sy = fmul <2 x float> %i.qi, %i.sx
  %i.sz = shufflevector <2 x float> %i.qi, <2 x float> %i.qh, <2 x i32> <i32 1, i32 2>
  %i.ta = shufflevector <2 x float> %.sroa.5147.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.tb = fmul <2 x float> %i.sz, %i.ta
  %i.tc = fsub <2 x float> %i.sy, %i.tb
  %i.td = fmul <2 x float> %i.qh, %i.sm           ; 2 uses
  %shift9913 = shufflevector <2 x float> %i.td, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9914 = fsub <2 x float> %i.td, %shift9913
  %i.te = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.tf = fmul <2 x float> %i.qh, %i.te
  %i.tg = fadd <2 x float> %i.tf, %i.tc
  %i.th = shufflevector <4 x float> %foldExtExtBinop9904, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ti = fmul <2 x float> %i.th, %.sroa.5147.0.copyload
  %i.tj = fsub <2 x float> %i.tg, %i.ti           ; 3 uses
  %i.tk = insertelement <2 x float> %i.qi, float %i.qq, i64 0
  %i.tl = fmul <2 x float> %i.tk, %.sroa.6.0.copyload ; 2 uses
  %shift9916 = shufflevector <2 x float> %i.tl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9917 = fadd <2 x float> %foldExtExtBinop9914, %shift9916
  %foldExtExtBinop9919 = fsub <2 x float> %foldExtExtBinop9917, %i.tl
  %i.tm = extractelement <2 x float> %foldExtExtBinop9919, i64 0 ; 3 uses
  %i.tn = fcmp olt <2 x float> %i.tj, zeroinitializer
  %i.to = fneg <2 x float> %i.tj
  %i.tp = select <2 x i1> %i.tn, <2 x float> %i.to, <2 x float> %i.tj ; 3 uses
  %i.tq = fcmp olt float %i.tm, 0.000000e+00
  %i.tr = fneg float %i.tm
  %i.ts = select i1 %i.tq, float %i.tr, float %i.tm ; 2 uses
  %i.tt = extractelement <2 x float> %i.sw, i64 0
  %i.tu = fmul float %i.ts, %i.tt
  %shift9921 = shufflevector <2 x float> %i.sv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9922 = fmul <2 x float> %i.tp, %shift9921
  %i.tv = extractelement <2 x float> %foldExtExtBinop9922, i64 0
  %i.tw = fadd float %i.tu, %i.tv                 ; 2 uses
  %i.tx = fmul <2 x float> %i.tp, %i.sv
  %i.ty = shufflevector <2 x float> %i.tp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tz = insertelement <2 x float> %i.ty, float %i.ts, i64 1
  %i.ua = fmul <2 x float> %i.tz, %i.sw
  %i.ub = fadd <2 x float> %i.tx, %i.ua           ; 2 uses
  %i.uc = fmul float %i.tw, %i.tw
  %i.ud = fmul <2 x float> %i.ub, %i.ub           ; 2 uses
  %i.ue = extractelement <2 x float> %i.ud, i64 1
  %i.uf = fadd float %i.ue, %i.uc
  %i.ug = extractelement <2 x float> %i.ud, i64 0
  %i.uh = fadd float %i.ug, %i.uf
  %i.ui = fmul float %i.uh, 4.000000e+00
  %i.uj = fmul float %i.sl, %i.sl
  %i.uk = fcmp uge float %i.ui, %i.uj
  br i1 %i.uk, label %.thread558, label %.split

.split:                                           ; preds = %bb.cn
  %i.ul = fneg float %.sroa.0.4.vec.extract.i
  %i.um = shufflevector <2 x float> %i.od, <2 x float> %i.oc, <4 x i32> <i32 0, i32 3, i32 2, i32 0>
  %i.un = shufflevector <2 x float> %i.oe, <2 x float> %i.og, <4 x i32> <i32 1, i32 2, i32 2, i32 0>
  %i.uo = fmul <4 x float> %i.um, %i.un           ; 2 uses
  %i.up = fmul <2 x float> %i.oh, %i.oe           ; 2 uses
  %i.uq = fmul <2 x float> %i.px, %i.oe
  %i.ur = shufflevector <2 x float> %i.uq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.us = fmul <2 x float> %i.od, %i.oj           ; 2 uses
  %i.ut = shufflevector <2 x float> %i.oc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.uu = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uv = fmul <2 x float> %i.ut, %i.uu
  %i.uw = fneg float %.sroa.0.4.vec.extract.i356
  %i.ux = shufflevector <2 x float> %i.op, <2 x float> %i.oo, <4 x i32> <i32 0, i32 3, i32 2, i32 0>
  %i.uy = shufflevector <2 x float> %i.oq, <2 x float> %i.os, <4 x i32> <i32 1, i32 2, i32 2, i32 0>
  %i.uz = fmul <4 x float> %i.ux, %i.uy           ; 2 uses
  %i.va = fmul <2 x float> %i.ot, %i.oq           ; 2 uses
  %i.vb = fmul <2 x float> %i.qd, %i.oq
  %i.vc = shufflevector <2 x float> %i.vb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vd = fmul <2 x float> %i.op, %i.ov           ; 2 uses
  %i.ve = shufflevector <2 x float> %i.oo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vf = shufflevector <2 x float> %i.os, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vg = fmul <2 x float> %i.ve, %i.vf
  %i.vh = shufflevector <4 x float> %i.uo, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.vi = shufflevector <4 x float> %i.uo, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.vj = fsub <2 x float> %i.vh, %i.vi
  %shift9924 = shufflevector <2 x float> %i.up, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9925 = fsub <2 x float> %i.up, %shift9924
  %i.vk = fsub <2 x float> %i.vj, %i.ur
  %shift9927 = shufflevector <2 x float> %i.us, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9928 = fsub <2 x float> %foldExtExtBinop9925, %shift9927
  %i.vl = fadd <2 x float> %i.uv, %i.vk           ; 6 uses
  %foldExtExtBinop9930 = fadd <2 x float> %i.us, %foldExtExtBinop9928 ; 4 uses
  %i.vm = extractelement <2 x float> %foldExtExtBinop9930, i64 0
  %i.vn = fmul float %i.oi, %i.ul
  %i.vo = extractelement <4 x float> %i.om, i64 0
  %i.vp = fsub float %i.vn, %i.vo
  %i.vq = extractelement <4 x float> %i.om, i64 2
  %i.vr = fsub float %i.vp, %i.vq
  %i.vs = extractelement <4 x float> %i.om, i64 3
  %i.vt = fsub float %i.vs, %i.vr                 ; 2 uses
  %i.vu = insertelement <2 x float> poison, float %i.vt, i64 0
  %i.vv = shufflevector <2 x float> %i.vu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vw = shufflevector <2 x float> %i.vl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vx = fmul <2 x float> %i.vv, %i.vw           ; 4 uses
  %i.vy = shufflevector <2 x float> %foldExtExtBinop9930, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vz = fmul <2 x float> %i.vy, %i.vl           ; 4 uses
  %i.wa = extractelement <2 x float> %i.vl, i64 0
  %i.wb = extractelement <2 x float> %i.vl, i64 1 ; 3 uses
  %i.wc = fmul float %i.wb, %i.wa                 ; 2 uses
  %foldExtExtBinop9932 = fmul <2 x float> %foldExtExtBinop9930, %foldExtExtBinop9930 ; 2 uses
  %i.wd = extractelement <2 x float> %foldExtExtBinop9932, i64 0
  %foldExtExtBinop9934 = fmul <2 x float> %i.vl, %i.vl ; 2 uses
  %i.we = extractelement <2 x float> %foldExtExtBinop9934, i64 0
  %i.wf = fmul float %i.wb, %i.wb                 ; 2 uses
  %i.wg = fmul float %i.vm, %i.vt                 ; 2 uses
  %foldExtExtBinop9936 = fadd <2 x float> %foldExtExtBinop9932, %foldExtExtBinop9934
  %i.wh = extractelement <2 x float> %foldExtExtBinop9936, i64 0
  %i.wi = fmul float %i.wh, 2.000000e+00
  %i.wj = fadd float %i.wg, %i.wc
  %foldExtExtBinop9938 = fsub <2 x float> %i.vz, %i.vx
  %i.wk = extractelement <2 x float> %foldExtExtBinop9938, i64 1
  %i.wl = fsub float %i.wc, %i.wg
  %i.wm = fadd float %i.wd, %i.wf
  %i.wn = fmul float %i.wm, 2.000000e+00
  %foldExtExtBinop9940 = fadd <2 x float> %i.vz, %i.vx
  %i.wo = extractelement <2 x float> %foldExtExtBinop9940, i64 0
  %i.wp = fsub <2 x float> %i.vz, %i.vx
  %i.wq = fadd <2 x float> %i.vz, %i.vx
  %i.wr = fadd float %i.wf, %i.we
  %i.ws = fmul float %i.wr, 2.000000e+00
  %i.wt = shufflevector <4 x float> %i.uz, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.wu = shufflevector <4 x float> %i.uz, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.wv = fsub <2 x float> %i.wt, %i.wu
  %shift9942 = shufflevector <2 x float> %i.va, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9943 = fsub <2 x float> %i.va, %shift9942
  %i.ww = fsub <2 x float> %i.wv, %i.vc
  %shift9945 = shufflevector <2 x float> %i.vd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9946 = fsub <2 x float> %foldExtExtBinop9943, %shift9945
  %i.wx = fadd <2 x float> %i.vg, %i.ww           ; 6 uses
  %foldExtExtBinop9948 = fadd <2 x float> %i.vd, %foldExtExtBinop9946 ; 4 uses
  %i.wy = extractelement <2 x float> %foldExtExtBinop9948, i64 0
  %i.wz = fmul float %i.ou, %i.uw
  %i.xa = extractelement <4 x float> %i.oy, i64 0
  %i.xb = fsub float %i.wz, %i.xa
  %i.xc = extractelement <4 x float> %i.oy, i64 2
  %i.xd = fsub float %i.xb, %i.xc
  %i.xe = extractelement <4 x float> %i.oy, i64 3
  %i.xf = fsub float %i.xe, %i.xd                 ; 2 uses
  %i.xg = insertelement <2 x float> poison, float %i.xf, i64 0
  %i.xh = shufflevector <2 x float> %i.xg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xi = shufflevector <2 x float> %i.wx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xj = fmul <2 x float> %i.xh, %i.xi           ; 4 uses
  %i.xk = shufflevector <2 x float> %foldExtExtBinop9948, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xl = fmul <2 x float> %i.xk, %i.wx           ; 4 uses
  %i.xm = extractelement <2 x float> %i.wx, i64 0
  %i.xn = extractelement <2 x float> %i.wx, i64 1 ; 3 uses
  %i.xo = fmul float %i.xn, %i.xm                 ; 2 uses
  %foldExtExtBinop9950 = fmul <2 x float> %foldExtExtBinop9948, %foldExtExtBinop9948 ; 2 uses
  %i.xp = extractelement <2 x float> %foldExtExtBinop9950, i64 0
  %foldExtExtBinop9952 = fmul <2 x float> %i.wx, %i.wx ; 2 uses
  %i.xq = extractelement <2 x float> %foldExtExtBinop9952, i64 0
  %i.xr = fmul float %i.xn, %i.xn                 ; 2 uses
  %i.xs = fmul float %i.wy, %i.xf                 ; 2 uses
  %foldExtExtBinop9954 = fadd <2 x float> %foldExtExtBinop9950, %foldExtExtBinop9952
  %i.xt = extractelement <2 x float> %foldExtExtBinop9954, i64 0
  %i.xu = fmul float %i.xt, 2.000000e+00
  %i.xv = fadd float %i.xs, %i.xo
  %i.xw = fmul float %i.xv, 2.000000e+00
  %foldExtExtBinop9956 = fsub <2 x float> %i.xl, %i.xj
  %i.xx = extractelement <2 x float> %foldExtExtBinop9956, i64 1
  %i.xy = fmul float %i.xx, 2.000000e+00
  %i.xz = fsub float %i.xo, %i.xs
  %i.ya = fadd float %i.xp, %i.xr
  %i.yb = fmul float %i.ya, 2.000000e+00
  %foldExtExtBinop9958 = fadd <2 x float> %i.xl, %i.xj
  %i.yc = extractelement <2 x float> %foldExtExtBinop9958, i64 0
  %i.yd = fsub <2 x float> %i.xl, %i.xj
  %i.ye = fadd <2 x float> %i.xl, %i.xj
  %i.yf = fadd float %i.xr, %i.xq
  %i.yg = fmul float %i.yf, 2.000000e+00
  %i.yh = getelementptr inbounds nuw i8, ptr %.0290, i64 28
  %i.yi = getelementptr inbounds nuw i8, ptr %.0289, i64 28
  %.sroa.084.0.copyload = load <2 x float>, ptr %i.yh, align 4
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0290, i64 36
  %.sroa.285.0.copyload = load float, ptr %.sroa.285.0..sroa_idx, align 4
  %.sroa.082.0.copyload = load <2 x float>, ptr %i.yi, align 4
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0289, i64 36
  %.sroa.283.0.copyload = load float, ptr %.sroa.283.0..sroa_idx, align 4
  %i.yj = fmul float %i.wj, 2.000000e+00
  %i.yk = fmul float %i.wk, 2.000000e+00
  %i.yl = fmul float %i.wl, 2.000000e+00
  %i.ym = fmul float %i.wo, 2.000000e+00
  %i.yn = fmul float %i.xz, 2.000000e+00
  %i.yo = fmul float %i.yc, 2.000000e+00
  %i.yp = fsub float 1.000000e+00, %i.wi
  %i.yq = fsub float 1.000000e+00, %i.wn
  %i.yr = fsub float 1.000000e+00, %i.ws          ; 2 uses
  %i.ys = fsub float 1.000000e+00, %i.xu
end_hunk_2
begin_hunk_3_@b3CollideTask:bb.a

bb.eg:                                            ; preds = %bb.ee
  %i.ank = ptrtoint ptr %i.anb to i64, !nosanitize !10 ; 2 uses
  %i.anl = and i64 %i.ank, 7, !nosanitize !10
  %i.anm = icmp eq i64 %i.anl, 0, !nosanitize !10
  %i.ann = and i1 %i.anf, %i.anm
  br i1 %i.ann, label %b3SetBit.exit496, label %bb.eh, !prof !11, !nosanitize !10

bb.eh:                                            ; preds = %bb.eg
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @629, i64 %i.ank) #15, !nosanitize !10
  unreachable, !nosanitize !10

b3SetBit.exit496:                                 ; preds = %bb.eg
  %i.ano = and i32 %i.ep, 63
  %i.anp = zext nneg i32 %i.ano to i64
  %i.anq = shl nuw i64 1, %i.anp
  %i.anr = load i64, ptr %i.anb, align 8, !tbaa !257
  %i.ans = or i64 %i.anr, %i.anq
  store i64 %i.ans, ptr %i.anb, align 8, !tbaa !257
  br label %.split3759

.split3759:                                       ; preds = %.thread561, %b3SetBit.exit496, %b3SetBit.exit495
  %i.ant = load i32, ptr %i.akb, align 8, !tbaa !282 ; 2 uses
  %i.anu = icmp sgt i32 %i.ant, 0
  br i1 %i.anu, label %.lr.ph3761.split, label %.loopexit

.lr.ph3761.split:                                 ; preds = %.split3759
  %i.anv = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !283
  %.fr = freeze ptr %i.anw                        ; 3 uses
  %i.anx = ptrtoint ptr %.fr to i64, !nosanitize !10 ; 3 uses
  %.not3794 = icmp eq ptr %.fr, null, !nosanitize !10
  br i1 %.not3794, label %.preheader._crit_edge, label %.lr.ph3761.split.split.preheader, !prof !691

.lr.ph3761.split.split.preheader:                 ; preds = %.lr.ph3761.split
  %wide.trip.count6493 = zext nneg i32 %i.ant to i64
  br label %.lr.ph3761.split.split

.lr.ph3761.split.split:                           ; preds = %.lr.ph3761.split.split.preheader, %.split3721.us
  %indvars.iv6490 = phi i64 [ 0, %.lr.ph3761.split.split.preheader ], [ %indvars.iv.next6491, %.split3721.us ] ; 3 uses
  %i.any = getelementptr inbounds nuw [268 x i8], ptr %.fr, i64 %indvars.iv6490 ; 16 uses
  %i.anz = mul nuw nsw i64 %indvars.iv6490, 268
  %i.aoa = add i64 %i.anz, %i.anx, !nosanitize !10 ; 2 uses
  %.not3795 = icmp ult i64 %i.aoa, %i.anx, !nosanitize !10
  br i1 %.not3795, label %.split3763.us, label %.preheader, !prof !78, !nosanitize !10

.preheader:                                       ; preds = %.lr.ph3761.split.split
  %i.aob = ptrtoint ptr %i.any to i64, !nosanitize !10 ; 4 uses
  %i.aoc = and i64 %i.aob, 3, !nosanitize !10
  %i.aod = icmp eq i64 %i.aoc, 0, !nosanitize !10
  br i1 %i.aod, label %.lr.ph3717.split.split.us, label %.preheader._crit_edge, !prof !218, !nosanitize !10

.lr.ph3717.split.split.us:                        ; preds = %.preheader
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.any, i64 264
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !285 ; 6 uses
  %i.aog = icmp sgt i32 %i.aof, 0
  br i1 %i.aog, label %.lr.ph3758.preheader, label %.split3721.us

.lr.ph3758.preheader:                             ; preds = %.lr.ph3717.split.split.us
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.any, i64 24
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.any, i64 28
  %i.aoj = load float, ptr %i.aoh, align 4, !tbaa !287
  store float %i.aoj, ptr %i.aoi, align 4, !tbaa !689
  %exitcond6489.not = icmp eq i32 %i.aof, 1
  br i1 %exitcond6489.not, label %.split3721.us, label %.lr.ph3758.1

.lr.ph3758.1:                                     ; preds = %.lr.ph3758.preheader
  %.not338.us.1 = icmp ugt ptr %i.any, inttoptr (i64 -57 to ptr)
  br i1 %.not338.us.1, label %.split3726.us, label %bb.ei, !prof !78, !nosanitize !10

bb.ei:                                            ; preds = %.lr.ph3758.1
  %i.aok = getelementptr inbounds nuw i8, ptr %i.any, i64 80
  %i.aol = getelementptr inbounds nuw i8, ptr %i.any, i64 84
  %i.aom = load float, ptr %i.aok, align 4, !tbaa !287
  store float %i.aom, ptr %i.aol, align 4, !tbaa !689
  %exitcond6489.1.not = icmp eq i32 %i.aof, 2
  br i1 %exitcond6489.1.not, label %.split3721.us, label %.lr.ph3758.2

.lr.ph3758.2:                                     ; preds = %bb.ei
  %.not338.us.2 = icmp ugt ptr %i.any, inttoptr (i64 -113 to ptr)
  br i1 %.not338.us.2, label %.split3726.us, label %bb.ej, !prof !78, !nosanitize !10

bb.ej:                                            ; preds = %.lr.ph3758.2
  %i.aon = getelementptr inbounds nuw i8, ptr %i.any, i64 136
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.any, i64 140
  %i.aop = load float, ptr %i.aon, align 4, !tbaa !287
  store float %i.aop, ptr %i.aoo, align 4, !tbaa !689
  %exitcond6489.2.not = icmp eq i32 %i.aof, 3
  br i1 %exitcond6489.2.not, label %.split3721.us, label %.lr.ph3758.3

.lr.ph3758.3:                                     ; preds = %bb.ej
  %.not338.us.3 = icmp ugt ptr %i.any, inttoptr (i64 -169 to ptr)
  br i1 %.not338.us.3, label %.split3726.us, label %bb.ek, !prof !78, !nosanitize !10

bb.ek:                                            ; preds = %.lr.ph3758.3
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.any, i64 192
  %i.aor = getelementptr inbounds nuw i8, ptr %i.any, i64 196
  %i.aos = load float, ptr %i.aoq, align 4, !tbaa !287
  store float %i.aos, ptr %i.aor, align 4, !tbaa !689
  %exitcond6489.3.not = icmp eq i32 %i.aof, 4
  br i1 %exitcond6489.3.not, label %.split3721.us, label %.lr.ph3758.4

.lr.ph3758.4:                                     ; preds = %bb.ek
  %.not338.us.4 = icmp ugt ptr %i.any, inttoptr (i64 -225 to ptr)
  br i1 %.not338.us.4, label %.split3726.us, label %bb.el, !prof !78, !nosanitize !10

bb.el:                                            ; preds = %.lr.ph3758.4
  %i.aot = getelementptr inbounds nuw i8, ptr %i.any, i64 248
  %i.aou = getelementptr inbounds nuw i8, ptr %i.any, i64 252
  %i.aov = load float, ptr %i.aot, align 4, !tbaa !287
  store float %i.aov, ptr %i.aou, align 4, !tbaa !689
  %exitcond6489.4.not = icmp eq i32 %i.aof, 5
  br i1 %exitcond6489.4.not, label %.split3721.us, label %.split3723.us

.split3763.us:                                    ; preds = %.lr.ph3761.split.split
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @573, i64 %i.anx, i64 %i.aoa) #15, !nosanitize !10
  unreachable, !nosanitize !10

.preheader._crit_edge:                            ; preds = %.lr.ph3761.split, %.preheader
  %.lcssa672 = phi i64 [ %i.aob, %.preheader ], [ 0, %.lr.ph3761.split ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @574, i64 %.lcssa672) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split3721.us:                                    ; preds = %.lr.ph3758.preheader, %bb.ei, %bb.ej, %bb.ek, %bb.el, %.lr.ph3717.split.split.us
  %indvars.iv.next6491 = add nuw nsw i64 %indvars.iv6490, 1 ; 2 uses
  %exitcond6494.not = icmp eq i64 %indvars.iv.next6491, %wide.trip.count6493
  br i1 %exitcond6494.not, label %.loopexit, label %.lr.ph3761.split.split, !llvm.loop !686

.split3723.us:                                    ; preds = %bb.el
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @575, i64 5) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split3726.us:                                    ; preds = %.lr.ph3758.4, %.lr.ph3758.3, %.lr.ph3758.2, %.lr.ph3758.1
  %.sink9149 = phi i64 [ 168, %.lr.ph3758.3 ], [ 112, %.lr.ph3758.2 ], [ 56, %.lr.ph3758.1 ], [ 224, %.lr.ph3758.4 ]
  %i.aow = add i64 %.sink9149, %i.aob, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @576, i64 %i.aob, i64 %i.aow) #15, !nosanitize !10
  unreachable, !nosanitize !10

.loopexit:                                        ; preds = %.split3721.us, %.split3759, %bb.di, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.em

bb.em:                                            ; preds = %.loopexit, %b3SetBit.exit
  %indvars.iv.next6496 = add nsw i64 %indvars.iv6495, 1 ; 2 uses
  %exitcond6499.not = icmp eq i64 %indvars.iv.next6496, %wide.trip.count6498
  br i1 %exitcond6499.not, label %._crit_edge3790, label %bb.m, !llvm.loop !687
}

declare void @b3StackFree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b3InPlaceUnion(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b3ArenaSync(ptr noundef) local_unnamed_addr #3

declare void @b3DestroyContact(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @b3LinkContact(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b3AddContactToGraph(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b3UnlinkContact(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b3RemoveContactFromGraph(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare zeroext i1 @b3UpdateContact(ptr noundef, i32 noundef, ptr noundef, ptr noundef, <2 x float>, float, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef, <2 x float>, float, ptr noundef byval(%struct.b3Transform) align 8, i1 noundef zeroext, ptr noundef byval(%struct.b3Arena) align 8) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #14

declare void @b3GetBodyTransformQuick(ptr dead_on_unwind writable sret(%struct.b3Transform) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @b3OverlapShape(ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #3

declare i32 @b3CollideMover(ptr noundef, i32 noundef, ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #3

declare void @b3RayCastShape(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #3

declare void @b3ShapeCastShape(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #3

declare { ptr, i64 } @b3MakeShapeProxy(ptr noundef) local_unnamed_addr #3

declare void @b3ShapeDistance(ptr dead_on_unwind writable sret(%struct.b3DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @b3WakeBody(ptr noundef, ptr noundef) local_unnamed_addr #3

declare { <2 x float>, float } @b3GetShapeCentroid(ptr noundef) local_unnamed_addr #3

declare float @b3GetShapeProjectedArea(ptr noundef, <2 x float>, float) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !83}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{}
!11 = !{!"branch_weights", i32 1048575, i32 1}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"b3Stack", !13, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !6, i64 24, !7, i64 792}
!15 = !{!"p1 int", !12, i64 0}
!16 = !{!"b3DynamicArray_int", !15, i64 0, !7, i64 8, !7, i64 12}
!17 = !{!"p1 _ZTS12b3MoveResult", !12, i64 0}
!18 = !{!"p1 _ZTS10b3MovePair", !12, i64 0}
!19 = !{!"b3AtomicInt", !7, i64 0}
!20 = !{!"p1 _ZTS9b3SetItem", !12, i64 0}
!21 = !{!"b3HashSet", !20, i64 0, !7, i64 8, !7, i64 12}
!22 = !{!"b3BroadPhase", !6, i64 0, !6, i64 240, !16, i64 288, !17, i64 304, !18, i64 312, !7, i64 320, !19, i64 324, !21, i64 328}
!23 = !{!"b3ConstraintGraph", !6, i64 0}
!24 = !{!"p1 _ZTS16b3BlockAllocator", !12, i64 0}
!25 = !{!"b3DynamicArray_b3BlockAllocator", !24, i64 0, !7, i64 8, !7, i64 12}
!26 = !{!"p1 _ZTS7b3Mutex", !12, i64 0}
!27 = !{!"b3IdPool", !16, i64 0, !7, i64 16}
!28 = !{!"p1 _ZTS6b3Body", !12, i64 0}
!29 = !{!"b3DynamicArray_b3Body", !28, i64 0, !7, i64 8, !7, i64 12}
!30 = !{!"p1 _ZTS11b3SolverSet", !12, i64 0}
!31 = !{!"b3DynamicArray_b3SolverSet", !30, i64 0, !7, i64 8, !7, i64 12}
!32 = !{!"p1 _ZTS7b3Joint", !12, i64 0}
!33 = !{!"b3DynamicArray_b3Joint", !32, i64 0, !7, i64 8, !7, i64 12}
!34 = !{!"p1 _ZTS9b3Contact", !12, i64 0}
!35 = !{!"b3DynamicArray_b3Contact", !34, i64 0, !7, i64 8, !7, i64 12}
!36 = !{!"p1 _ZTS8b3Island", !12, i64 0}
!37 = !{!"b3DynamicArray_b3Island", !36, i64 0, !7, i64 8, !7, i64 12}
!38 = !{!"p1 _ZTS7b3Shape", !12, i64 0}
!39 = !{!"b3DynamicArray_b3Shape", !38, i64 0, !7, i64 8, !7, i64 12}
!40 = !{!"p1 _ZTS11b3NameEntry", !12, i64 0}
!41 = !{!"b3DynamicArray_b3NameEntry", !40, i64 0, !7, i64 8, !7, i64 12}
!42 = !{!"b3NameCache", !41, i64 0, !12, i64 16}
!43 = !{!"p1 _ZTS8b3Sensor", !12, i64 0}
!44 = !{!"b3DynamicArray_b3Sensor", !43, i64 0, !7, i64 8, !7, i64 12}
!45 = !{!"p1 _ZTS13b3TaskContext", !12, i64 0}
!46 = !{!"b3DynamicArray_b3TaskContext", !45, i64 0, !7, i64 8, !7, i64 12}
!47 = !{!"p1 _ZTS19b3SensorTaskContext", !12, i64 0}
!48 = !{!"b3DynamicArray_b3SensorTaskContext", !47, i64 0, !7, i64 8, !7, i64 12}
!49 = !{!"p1 _ZTS15b3BodyMoveEvent", !12, i64 0}
!50 = !{!"b3DynamicArray_b3BodyMoveEvent", !49, i64 0, !7, i64 8, !7, i64 12}
!51 = !{!"p1 _ZTS23b3SensorBeginTouchEvent", !12, i64 0}
!52 = !{!"b3DynamicArray_b3SensorBeginTouchEvent", !51, i64 0, !7, i64 8, !7, i64 12}
!53 = !{!"p1 _ZTS24b3ContactBeginTouchEvent", !12, i64 0}
!54 = !{!"b3DynamicArray_b3ContactBeginTouchEvent", !53, i64 0, !7, i64 8, !7, i64 12}
!55 = !{!"p1 _ZTS17b3ContactHitEvent", !12, i64 0}
!56 = !{!"b3DynamicArray_b3ContactHitEvent", !55, i64 0, !7, i64 8, !7, i64 12}
!57 = !{!"p1 _ZTS12b3JointEvent", !12, i64 0}
!58 = !{!"b3DynamicArray_b3JointEvent", !57, i64 0, !7, i64 8, !7, i64 12}
!59 = !{!"p1 long", !12, i64 0}
!60 = !{!"b3BitSet", !59, i64 0, !7, i64 8, !7, i64 12}
!61 = !{!"long", !6, i64 0}
!62 = !{!"float", !6, i64 0}
!63 = !{!"b3Vec3", !62, i64 0, !62, i64 4, !62, i64 8}
!64 = !{!"short", !6, i64 0}
!65 = !{!"b3Profile", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !62, i64 24, !62, i64 28, !62, i64 32, !62, i64 36, !62, i64 40, !62, i64 44, !62, i64 48, !62, i64 52, !62, i64 56, !62, i64 60, !62, i64 64, !62, i64 68, !62, i64 72, !62, i64 76, !62, i64 80, !62, i64 84, !62, i64 88}
!66 = !{!"b3Capacity", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!67 = !{!"p1 _ZTS11b3Scheduler", !12, i64 0}
!68 = !{!"p1 _ZTS11b3Recording", !12, i64 0}
!69 = !{!"_Bool", !6, i64 0}
!70 = !{!"b3World", !14, i64 0, !22, i64 800, !23, i64 1144, !25, i64 3832, !26, i64 3848, !27, i64 3856, !29, i64 3880, !27, i64 3896, !31, i64 3920, !27, i64 3936, !33, i64 3960, !27, i64 3976, !35, i64 4000, !27, i64 4016, !37, i64 4040, !27, i64 4056, !39, i64 4080, !12, i64 4096, !42, i64 4104, !44, i64 4128, !46, i64 4144, !48, i64 4160, !50, i64 4176, !52, i64 4192, !54, i64 4208, !6, i64 4224, !6, i64 4256, !7, i64 4288, !56, i64 4296, !58, i64 4312, !60, i64 4328, !60, i64 4344, !60, i64 4360, !60, i64 4376, !12, i64 4392, !12, i64 4400, !12, i64 4408, !61, i64 4416, !7, i64 4424, !63, i64 4428, !62, i64 4440, !62, i64 4444, !62, i64 4448, !62, i64 4452, !62, i64 4456, !62, i64 4460, !62, i64 4464, !12, i64 4472, !12, i64 4480, !64, i64 4488, !65, i64 4492, !7, i64 4584, !7, i64 4588, !6, i64 4592, !66, i64 4624, !12, i64 4648, !12, i64 4656, !12, i64 4664, !12, i64 4672, !7, i64 4680, !12, i64 4688, !12, i64 4696, !12, i64 4704, !12, i64 4712, !67, i64 4720, !12, i64 4728, !68, i64 4736, !62, i64 4744, !62, i64 4748, !7, i64 4752, !7, i64 4756, !64, i64 4760, !69, i64 4762, !69, i64 4763, !69, i64 4764, !69, i64 4765, !69, i64 4766, !69, i64 4767}
!71 = !{!70, !12, i64 4096}
!72 = !{!"p1 short", !12, i64 0}
!73 = !{!"", !12, i64 0, !72, i64 8, !72, i64 16, !61, i64 24}
!74 = !{!73, !12, i64 0}
!75 = !{!"p1 _ZTS10b3HullData", !12, i64 0}
!76 = !{!"", !75, i64 0, !7, i64 8}
!77 = !{!76, !7, i64 8}
!78 = !{!"branch_weights", i32 1, i32 1048575}
!79 = !{!76, !75, i64 0}
!80 = !{i32 -1056584962, i32 -916933460}
!81 = !{!70, !69, i64 4763}
!82 = !{i32 -1056584962, i32 -2066155848}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!7, !7, i64 0}
!85 = !{!70, !64, i64 4488}
!86 = !{!70, !64, i64 4760}
!87 = !{!13, !13, i64 0}
!88 = !{!6, !6, i64 0}
!89 = !{!70, !7, i64 3844}
!90 = !{!70, !24, i64 3832}
!91 = !{!70, !26, i64 3848}
!92 = !{!70, !7, i64 3892}
!93 = !{!70, !28, i64 3880}
!94 = !{!70, !7, i64 3932}
!95 = !{!70, !30, i64 3920}
!96 = !{!70, !7, i64 3928}
!97 = !{!"p1 _ZTS9b3BodySim", !12, i64 0}
!98 = !{!"b3DynamicArray_b3BodySim", !97, i64 0, !7, i64 8, !7, i64 12}
!99 = !{!"p1 _ZTS11b3BodyState", !12, i64 0}
!100 = !{!"b3DynamicArray_b3BodyState", !99, i64 0, !7, i64 8, !7, i64 12}
!101 = !{!"p1 _ZTS10b3JointSim", !12, i64 0}
!102 = !{!"b3DynamicArray_b3JointSim", !101, i64 0, !7, i64 8, !7, i64 12}
!103 = !{!"p1 _ZTS11b3IslandSim", !12, i64 0}
!104 = !{!"b3DynamicArray_b3IslandSim", !103, i64 0, !7, i64 8, !7, i64 12}
!105 = !{!"b3SolverSet", !98, i64 0, !100, i64 16, !102, i64 32, !16, i64 48, !104, i64 64, !7, i64 80}
!106 = !{!105, !7, i64 12}
!107 = !{!105, !97, i64 0}
!108 = !{!105, !7, i64 28}
!109 = !{!105, !99, i64 16}
!110 = !{!105, !7, i64 60}
!111 = !{!105, !15, i64 48}
!112 = !{!70, !7, i64 4092}
!113 = !{!70, !38, i64 4080}
!114 = !{!12, !12, i64 0}
!115 = !{!70, !7, i64 4012}
!116 = !{!70, !34, i64 4000}
!117 = !{!70, !7, i64 3972}
!118 = !{!70, !32, i64 3960}
!119 = !{!70, !7, i64 4052}
!120 = !{!70, !36, i64 4040}
!121 = !{!70, !7, i64 4140}
!122 = !{!70, !43, i64 4128}
!123 = !{!70, !7, i64 4188}
!124 = !{!70, !49, i64 4176}
!125 = !{!70, !7, i64 4204}
!126 = !{!70, !51, i64 4192}
!127 = !{!"p1 _ZTS21b3SensorEndTouchEvent", !12, i64 0}
!128 = !{!"b3DynamicArray_b3SensorEndTouchEvent", !127, i64 0, !7, i64 8, !7, i64 12}
!129 = !{!128, !7, i64 12}
!130 = !{!128, !127, i64 0}
!131 = !{!70, !7, i64 4220}
!132 = !{!70, !53, i64 4208}
!133 = !{!"p1 _ZTS22b3ContactEndTouchEvent", !12, i64 0}
!134 = !{!"b3DynamicArray_b3ContactEndTouchEvent", !133, i64 0, !7, i64 8, !7, i64 12}
!135 = !{!134, !7, i64 12}
!136 = !{!134, !133, i64 0}
!137 = !{!70, !7, i64 4308}
!138 = !{!70, !55, i64 4296}
!139 = !{!70, !7, i64 4324}
!140 = !{!70, !57, i64 4312}
!141 = !{!70, !7, i64 4288}
!142 = !{!70, !7, i64 4752}
!143 = !{!70, !7, i64 4756}
!144 = !{!62, !62, i64 0}
!145 = !{i64 0, i64 4, !144, i64 4, i64 4, !144, i64 8, i64 4, !144}
!146 = !{!70, !62, i64 4464}
!147 = !{!70, !69, i64 4762}
!148 = !{!70, !69, i64 4764}
!149 = !{!70, !69, i64 4765}
!150 = !{!70, !69, i64 4766}
!151 = !{!70, !12, i64 4712}
!152 = !{!70, !12, i64 4728}
!153 = !{!70, !7, i64 4680}
!154 = !{!70, !12, i64 4696}
!155 = !{!70, !12, i64 4704}
!156 = !{!70, !67, i64 4720}
!157 = !{!59, !59, i64 0}
!158 = !{!70, !12, i64 4408}
!159 = !{i32 -1056584962, i32 2024581090}
!160 = !{i32 -1056584962, i32 1079287094}
!161 = !{!70, !7, i64 4156}
!162 = !{!70, !45, i64 4144}
!163 = !{!70, !7, i64 4152}
!164 = !{!70, !7, i64 4172}
!165 = !{!70, !47, i64 4160}
!166 = !{!70, !7, i64 4168}
!167 = !{!"p1 _ZTS18b3ArenaSharedState", !12, i64 0}
!168 = !{!"b3Arena", !13, i64 0, !7, i64 8, !7, i64 12, !167, i64 16}
!169 = !{!"p1 _ZTS11b3SensorHit", !12, i64 0}
end_hunk_3
