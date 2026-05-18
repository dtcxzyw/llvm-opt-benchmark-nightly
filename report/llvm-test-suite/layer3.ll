inline.NumInlined: 29
inline.NumDeleted: 6
begin_hunk_0_@III_dequantize_sample:bb.a
  %i.ik = phi i32 [ %i.ig, %bb.z ], [ %i.ig, %bb.aa ], [ %bitindex.promoted660, %bb.x ] ; 3 uses
  %i.il = phi ptr [ %i.if, %bb.z ], [ %i.if, %bb.aa ], [ %wordpointer.promoted659, %bb.x ] ; 3 uses
  %.9441 = phi i32 [ %i.hy, %bb.z ], [ %i.hy, %bb.aa ], [ %.6438.lcssa, %bb.x ] ; 4 uses
  store double %.sink807, ptr %.5358, align 8, !tbaa !8
  %i.im = zext nneg i32 %.5424 to i64             ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.5358, i64 %i.im ; 3 uses
  %i.io = and i32 %i.ha, 4
  %.not506.1 = icmp eq i32 %i.io, 0
  br i1 %.not506.1, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ip = sext i32 %.5416 to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ip
  store i32 %.5408, ptr %i.iq, align 4, !tbaa !4
  %i.ir = add nsw i32 %.9441, -1                  ; 2 uses
  %i.is = icmp slt i32 %.9441, 1
  br i1 %i.is, label %.preheader, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.it = load i8, ptr %i.il, align 1, !tbaa !34
  %i.iu = zext i8 %i.it to i32
  %i.iv = add nsw i32 %i.ik, 1                    ; 2 uses
  %i.iw = ashr i32 %i.iv, 3
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds i8, ptr %i.il, i64 %i.ix ; 3 uses
  store ptr %i.iy, ptr @wordpointer, align 8, !tbaa !32
  %i.iz = and i32 %i.iv, 7                        ; 3 uses
  store i32 %i.iz, ptr @bitindex, align 4, !tbaa !4
  %i.ja = lshr i32 128, %i.ik
  %i.jb = and i32 %i.ja, %i.iu
  %.not507.1 = icmp eq i32 %i.jb, 0
  br i1 %.not507.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jc = fneg double %.5400
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ad, %bb.ae
  %.sink808 = phi double [ %i.jc, %bb.ae ], [ %.5400, %bb.ad ], [ 0.000000e+00, %bb.ab ]
  %i.jd = phi i32 [ %i.iz, %bb.ae ], [ %i.iz, %bb.ad ], [ %i.ik, %bb.ab ] ; 3 uses
  %i.je = phi ptr [ %i.iy, %bb.ae ], [ %i.iy, %bb.ad ], [ %i.il, %bb.ab ] ; 3 uses
  %.9441.1 = phi i32 [ %i.ir, %bb.ae ], [ %i.ir, %bb.ad ], [ %.9441, %bb.ab ] ; 4 uses
  store double %.sink808, ptr %i.in, align 8, !tbaa !8
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.im
  %.not505.2 = icmp eq i32 %i.hu, 0
  br i1 %.not505.2, label %.sink.split809, label %bb.ag

.sink.split809:                                   ; preds = %bb.af
  %i.jg = getelementptr inbounds nuw i8, ptr %.6390, i64 4
  %i.jh = load i32, ptr %.6390, align 4, !tbaa !4
  %i.ji = getelementptr inbounds nuw i8, ptr %.6390, i64 8
  %i.jj = load i32, ptr %i.jg, align 4, !tbaa !4
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %0, i64 %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %.6390, i64 12
  %i.jn = load i32, ptr %i.ji, align 4, !tbaa !4  ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.6390, i64 16
  %i.jp = load i32, ptr %i.jm, align 4, !tbaa !4
  %i.jq = icmp eq i32 %i.jn, 3                    ; 2 uses
  %i.jr = sext i32 %i.jn to i64
  %i.js = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.jr
  %.sink811.in = select i1 %i.jq, ptr %i.al, ptr %i.js
  %.5424.2.ph = select i1 %i.jq, i32 1, i32 3
  %.sink811 = load ptr, ptr %.sink811.in, align 8, !tbaa !46
  %i.jt = getelementptr inbounds nuw i8, ptr %.5, i64 4
  %i.ju = load i32, ptr %.5, align 4, !tbaa !4
  %i.jv = shl i32 %i.ju, %i.e
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [8 x i8], ptr %.sink811, i64 %i.jw
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !8
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split809, %bb.af
  %.5424.2 = phi i32 [ %.5424, %bb.af ], [ %.5424.2.ph, %.sink.split809 ] ; 5 uses
  %.5416.2 = phi i32 [ %.5416, %bb.af ], [ %i.jn, %.sink.split809 ] ; 3 uses
  %.5408.2 = phi i32 [ %.5408, %bb.af ], [ %i.jp, %.sink.split809 ] ; 3 uses
  %.5400.2 = phi double [ %.5400, %bb.af ], [ %i.jy, %.sink.split809 ] ; 5 uses
  %.6390.2 = phi ptr [ %.6390, %bb.af ], [ %i.jo, %.sink.split809 ] ; 4 uses
  %.5379.2 = phi i32 [ %i.hu, %bb.af ], [ %i.jh, %.sink.split809 ]
  %.5358.2 = phi ptr [ %i.jf, %bb.af ], [ %i.jl, %.sink.split809 ] ; 3 uses
  %.5.2 = phi ptr [ %.5, %bb.af ], [ %i.jt, %.sink.split809 ]
  %i.jz = add nsw i32 %.5379.2, -1                ; 4 uses
  %i.ka = and i32 %i.ha, 2
  %.not506.2 = icmp eq i32 %i.ka, 0
  br i1 %.not506.2, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kb = sext i32 %.5416.2 to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.kb
  store i32 %.5408.2, ptr %i.kc, align 4, !tbaa !4
  %i.kd = add nsw i32 %.9441.1, -1                ; 2 uses
  %i.ke = icmp slt i32 %.9441.1, 1
  br i1 %i.ke, label %.preheader, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kf = load i8, ptr %i.je, align 1, !tbaa !34
  %i.kg = zext i8 %i.kf to i32
  %i.kh = add nsw i32 %i.jd, 1                    ; 2 uses
  %i.ki = ashr i32 %i.kh, 3
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds i8, ptr %i.je, i64 %i.kj ; 3 uses
  store ptr %i.kk, ptr @wordpointer, align 8, !tbaa !32
  %i.kl = and i32 %i.kh, 7                        ; 3 uses
  store i32 %i.kl, ptr @bitindex, align 4, !tbaa !4
  %i.km = lshr i32 128, %i.jd
  %i.kn = and i32 %i.km, %i.kg
  %.not507.2 = icmp eq i32 %i.kn, 0
  br i1 %.not507.2, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ko = fneg double %.5400.2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ag, %bb.ai, %bb.aj
  %.sink815 = phi double [ %i.ko, %bb.aj ], [ %.5400.2, %bb.ai ], [ 0.000000e+00, %bb.ag ]
  %i.kp = phi i32 [ %i.kl, %bb.aj ], [ %i.kl, %bb.ai ], [ %i.jd, %bb.ag ] ; 2 uses
  %i.kq = phi ptr [ %i.kk, %bb.aj ], [ %i.kk, %bb.ai ], [ %i.je, %bb.ag ] ; 2 uses
  %.9441.2 = phi i32 [ %i.kd, %bb.aj ], [ %i.kd, %bb.ai ], [ %.9441.1, %bb.ag ] ; 4 uses
  store double %.sink815, ptr %.5358.2, align 8, !tbaa !8
  %i.kr = zext nneg i32 %.5424.2 to i64           ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %.5358.2, i64 %i.kr ; 3 uses
  %i.kt = and i32 %i.ha, 1
  %.not506.3 = icmp eq i32 %i.kt, 0
  br i1 %.not506.3, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ku = sext i32 %.5416.2 to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ku
  store i32 %.5408.2, ptr %i.kv, align 4, !tbaa !4
  %i.kw = add nsw i32 %.9441.2, -1                ; 2 uses
  %i.kx = icmp slt i32 %.9441.2, 1
  br i1 %i.kx, label %.preheader, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ky = load i8, ptr %i.kq, align 1, !tbaa !34
  %i.kz = zext i8 %i.ky to i32
  %i.la = add nsw i32 %i.kp, 1                    ; 2 uses
  %i.lb = ashr i32 %i.la, 3
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds i8, ptr %i.kq, i64 %i.lc
  store ptr %i.ld, ptr @wordpointer, align 8, !tbaa !32
  %i.le = and i32 %i.la, 7
  store i32 %i.le, ptr @bitindex, align 4, !tbaa !4
  %i.lf = lshr i32 128, %i.kp
  %i.lg = and i32 %i.lf, %i.kz
  %.not507.3 = icmp eq i32 %i.lg, 0
  br i1 %.not507.3, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lh = fneg double %.5400.2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.am, %bb.an
  %.sink816 = phi double [ %i.lh, %bb.an ], [ %.5400.2, %bb.am ], [ 0.000000e+00, %bb.ak ]
  %.9441.3 = phi i32 [ %i.kw, %bb.an ], [ %i.kw, %bb.am ], [ %.9441.2, %bb.ak ] ; 3 uses
  store double %.sink816, ptr %i.ks, align 8, !tbaa !8
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kr ; 2 uses
  %i.lj = add nsw i32 %.0371678, -1               ; 2 uses
  %i.lk = icmp ne i32 %i.lj, 0
  %i.ll = icmp sgt i32 %.9441.3, 0
  %i.lm = select i1 %i.lk, i1 %i.ll, i1 false
  br i1 %i.lm, label %bb.w, label %.preheader, !llvm.loop !94

.lr.ph691:                                        ; preds = %.preheader, %bb.aq
  %.8361690 = phi ptr [ %i.lz, %bb.aq ], [ %.3356.lcssa, %.preheader ]
  %.8382689 = phi i32 [ %i.lw, %bb.aq ], [ %.3377.lcssa, %.preheader ] ; 2 uses
  %.9393688 = phi ptr [ %.10394, %bb.aq ], [ %.4388.lcssa, %.preheader ] ; 5 uses
  %.8427687 = phi i32 [ %.10429, %bb.aq ], [ %.3422.lcssa, %.preheader ]
  %.not502 = icmp eq i32 %.8382689, 0
  br i1 %.not502, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph691
  %i.ln = getelementptr inbounds nuw i8, ptr %.9393688, i64 4
  %i.lo = load i32, ptr %.9393688, align 4, !tbaa !4
  %i.lp = getelementptr inbounds nuw i8, ptr %.9393688, i64 8
  %i.lq = load i32, ptr %i.ln, align 4, !tbaa !4
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %0, i64 %i.lr
  %i.lt = load i32, ptr %i.lp, align 4, !tbaa !4
  %i.lu = icmp eq i32 %i.lt, 3
  %. = select i1 %i.lu, i32 1, i32 3
  %i.lv = getelementptr inbounds nuw i8, ptr %.9393688, i64 16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph691
  %.10429 = phi i32 [ %.8427687, %.lr.ph691 ], [ %., %bb.ap ] ; 2 uses
  %.10394 = phi ptr [ %.9393688, %.lr.ph691 ], [ %i.lv, %bb.ap ] ; 2 uses
  %.9383 = phi i32 [ %.8382689, %.lr.ph691 ], [ %i.lo, %bb.ap ]
  %.9362 = phi ptr [ %.8361690, %.lr.ph691 ], [ %i.ls, %bb.ap ] ; 2 uses
  %i.lw = add nsw i32 %.9383, -1
  store double 0.000000e+00, ptr %.9362, align 8, !tbaa !8
  %i.lx = zext nneg i32 %.10429 to i64            ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %.9362, i64 %i.lx ; 2 uses
  store double 0.000000e+00, ptr %i.ly, align 8, !tbaa !8
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.lx
  %i.ma = icmp ult ptr %.10394, %.0452
  br i1 %i.ma, label %.lr.ph691, label %._crit_edge692, !llvm.loop !95

._crit_edge692:                                   ; preds = %bb.aq, %.preheader
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.mc = load <4 x i32>, ptr %i.b, align 16, !tbaa !4 ; 5 uses
  %i.md = add nsw <4 x i32> %i.mc, splat (i32 1)
  store <4 x i32> %i.md, ptr %i.mb, align 8, !tbaa !4
  %5 = extractelement <4 x i32> %i.mc, i64 0
  %6 = extractelement <4 x i32> %i.mc, i64 1
  %7 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6)
  %8 = extractelement <4 x i32> %i.mc, i64 2
  %9 = tail call i32 @llvm.smax.i32(i32 %7, i32 %8)
  %i.me = add nsw i32 %9, 1                       ; 2 uses
  %.not501 = icmp eq i32 %i.me, 0
  %i.mf = sext i32 %3 to i64                      ; 2 uses
  %i.mg = getelementptr inbounds [56 x i8], ptr @shortLimit, i64 %i.mf
  %i.mh = sext i32 %i.me to i64
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.mh
  %i.mj = getelementptr inbounds [92 x i8], ptr @longLimit, i64 %i.mf
  %i.mk = extractelement <4 x i32> %i.mc, i64 3
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr [4 x i8], ptr %i.mj, i64 %i.ml
  %i.mn = getelementptr i8, ptr %i.mm, i64 4
  %.in = select i1 %.not501, ptr %i.mn, ptr %i.mi
  %i.mo = load i32, ptr %.in, align 4, !tbaa !4
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %i.mo, ptr %i.mp, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.cd

bb.ar:                                            ; preds = %bb.f
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !52
  %.not481 = icmp eq i32 %i.mr, 0
  %i.ms = select i1 %.not481, ptr @pretab2, ptr @pretab1
  %i.mt = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !15
  %i.mv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  br label %bb.as

.preheader524:                                    ; preds = %._crit_edge542
  %i.mx = icmp ne i32 %i.p, 0
  %i.my = icmp sgt i32 %.12444.lcssa, 0
  %i.mz = select i1 %i.mx, i1 %i.my, i1 false
  br i1 %i.mz, label %.lr.ph595, label %._crit_edge596

.lr.ph595:                                        ; preds = %.preheader524
  %i.na = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !50
  %i.nc = zext i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr @htc, i64 %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !86 ; 2 uses
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !18 ; 3 uses
  %i.nh = icmp slt i16 %i.ng, 0
  br label %bb.bi

bb.as:                                            ; preds = %bb.ar, %._crit_edge542
  %indvars.iv = phi i64 [ 0, %bb.ar ], [ %indvars.iv.next, %._crit_edge542 ] ; 3 uses
  %.8561 = phi ptr [ %1, %bb.ar ], [ %.9.lcssa, %._crit_edge542 ] ; 2 uses
  %.0299560 = phi i32 [ 0, %bb.ar ], [ %.1300.lcssa, %._crit_edge542 ] ; 2 uses
  %.0307559 = phi double [ 0.000000e+00, %bb.ar ], [ %.1308.lcssa, %._crit_edge542 ] ; 2 uses
  %.0315558 = phi ptr [ %i.mu, %bb.ar ], [ %.1316.lcssa, %._crit_edge542 ] ; 2 uses
  %.0323557 = phi i32 [ 0, %bb.ar ], [ %.1324.lcssa, %._crit_edge542 ] ; 2 uses
  %.0331556 = phi i32 [ -1, %bb.ar ], [ %.1332.lcssa, %._crit_edge542 ] ; 2 uses
  %.0342554 = phi ptr [ %i.ms, %bb.ar ], [ %.1343.lcssa, %._crit_edge542 ] ; 2 uses
  %.10363553 = phi ptr [ %0, %bb.ar ], [ %.11364.lcssa, %._crit_edge542 ] ; 2 uses
  %.11443552 = phi i32 [ %i.h, %bb.ar ], [ %.12444.lcssa, %._crit_edge542 ] ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !4  ; 2 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !4
  %i.nm = zext i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr @ht, i64 %i.nm ; 3 uses
  %.not488529 = icmp eq i32 %i.nj, 0
  br i1 %.not488529, label %._crit_edge542, label %.lr.ph541

.lr.ph541:                                        ; preds = %bb.as
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !86 ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph541, %bb.bh
  %.9539 = phi ptr [ %.8561, %.lr.ph541 ], [ %.10, %bb.bh ] ; 3 uses
  %.0298538 = phi i32 [ %i.nj, %.lr.ph541 ], [ %i.ry, %bb.bh ]
  %.1300537 = phi i32 [ %.0299560, %.lr.ph541 ], [ %i.rz, %bb.bh ] ; 2 uses
  %.1308536 = phi double [ %.0307559, %.lr.ph541 ], [ %.2309, %bb.bh ]
  %.1316535 = phi ptr [ %.0315558, %.lr.ph541 ], [ %.2317, %bb.bh ] ; 4 uses
  %.1324534 = phi i32 [ %.0323557, %.lr.ph541 ], [ %.2325, %bb.bh ]
  %.1332533 = phi i32 [ %.0331556, %.lr.ph541 ], [ %.3334, %bb.bh ]
  %.1343532 = phi ptr [ %.0342554, %.lr.ph541 ], [ %.2344, %bb.bh ] ; 3 uses
  %.11364531 = phi ptr [ %.10363553, %.lr.ph541 ], [ %.15368, %bb.bh ] ; 6 uses
  %.12444530 = phi i32 [ %.11443552, %.lr.ph541 ], [ %.15447, %bb.bh ] ; 2 uses
  %.not489 = icmp eq i32 %.1300537, 0
  br i1 %.not489, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.nq = getelementptr inbounds nuw i8, ptr %.1316535, i64 4
  %i.nr = load i32, ptr %.1316535, align 4, !tbaa !4
  %i.ns = load ptr, ptr %i.mw, align 8, !tbaa !42
  %i.nt = getelementptr inbounds nuw i8, ptr %.9539, i64 4
  %i.nu = load i32, ptr %.9539, align 4, !tbaa !4
  %i.nv = getelementptr inbounds nuw i8, ptr %.1343532, i64 4
  %i.nw = load i32, ptr %.1343532, align 4, !tbaa !4
  %i.nx = add nsw i32 %i.nw, %i.nu
  %i.ny = shl i32 %i.nx, %i.e
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.ns, i64 %i.nz
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !8
  %i.oc = getelementptr inbounds nuw i8, ptr %.1316535, i64 8
  %i.od = load i32, ptr %i.nq, align 4, !tbaa !4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.2344 = phi ptr [ %.1343532, %bb.at ], [ %i.nv, %bb.au ] ; 2 uses
  %.2325 = phi i32 [ %.1324534, %bb.at ], [ %i.od, %bb.au ] ; 8 uses
  %.2317 = phi ptr [ %.1316535, %bb.at ], [ %i.oc, %bb.au ] ; 2 uses
  %.2309 = phi double [ %.1308536, %bb.at ], [ %i.ob, %bb.au ] ; 8 uses
  %.2301 = phi i32 [ %.1300537, %bb.at ], [ %i.nr, %bb.au ]
  %.10 = phi ptr [ %.9539, %bb.at ], [ %i.nt, %bb.au ] ; 2 uses
  %wordpointer.promoted = load ptr, ptr @wordpointer, align 8 ; 2 uses
  %bitindex.promoted = load i32, ptr @bitindex, align 4 ; 2 uses
  %i.oe = load i16, ptr %i.np, align 2, !tbaa !18 ; 3 uses
  %i.of = icmp slt i16 %i.oe, 0
  br i1 %i.of, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.av, %.lr.ph
  %i.og = phi i16 [ %i.ow, %.lr.ph ], [ %i.oe, %bb.av ]
  %.0294527 = phi ptr [ %.1295, %.lr.ph ], [ %i.np, %bb.av ]
  %.13445526 = phi i32 [ %i.ov, %.lr.ph ], [ %.12444530, %bb.av ]
  %i.oh = phi ptr [ %i.op, %.lr.ph ], [ %wordpointer.promoted, %bb.av ] ; 2 uses
  %i.oi = phi i32 [ %i.oq, %.lr.ph ], [ %bitindex.promoted, %bb.av ] ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.0294527, i64 2
  %i.ok = load i8, ptr %i.oh, align 1, !tbaa !34
  %i.ol = zext i8 %i.ok to i32
  %i.om = add nsw i32 %i.oi, 1                    ; 2 uses
  %i.on = ashr i32 %i.om, 3
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds i8, ptr %i.oh, i64 %i.oo ; 3 uses
  store ptr %i.op, ptr @wordpointer, align 8, !tbaa !32
  %i.oq = and i32 %i.om, 7                        ; 3 uses
  store i32 %i.oq, ptr @bitindex, align 4, !tbaa !4
  %i.or = lshr i32 128, %i.oi
  %i.os = and i32 %i.or, %i.ol
  %.not499 = icmp eq i32 %i.os, 0
  %i.ot = sext i16 %i.og to i64
  %i.ou = sub nsw i64 0, %i.ot
  %.1295.idx = select i1 %.not499, i64 0, i64 %i.ou
  %.1295 = getelementptr inbounds nuw [2 x i8], ptr %i.oj, i64 %.1295.idx ; 2 uses
  %i.ov = add nsw i32 %.13445526, -1              ; 2 uses
  %i.ow = load i16, ptr %.1295, align 2, !tbaa !18 ; 3 uses
  %i.ox = icmp slt i16 %i.ow, 0
  br i1 %i.ox, label %.lr.ph, label %._crit_edge, !llvm.loop !96

._crit_edge:                                      ; preds = %.lr.ph, %bb.av
  %i.oy = phi i32 [ %bitindex.promoted, %bb.av ], [ %i.oq, %.lr.ph ] ; 2 uses
  %i.oz = phi ptr [ %wordpointer.promoted, %bb.av ], [ %i.op, %.lr.ph ] ; 2 uses
  %.13445.lcssa = phi i32 [ %.12444530, %bb.av ], [ %i.ov, %.lr.ph ] ; 3 uses
  %.lcssa525 = phi i16 [ %i.oe, %bb.av ], [ %i.ow, %.lr.ph ] ; 2 uses
  %i.pa = zext nneg i16 %.lcssa525 to i32         ; 2 uses
  %i.pb = lshr i32 %i.pa, 4                       ; 2 uses
  %i.pc = and i32 %i.pa, 15
  switch i32 %i.pb, label %bb.az [
    i32 15, label %bb.aw
    i32 0, label %bb.ba
  ]

bb.aw:                                            ; preds = %._crit_edge
  %i.pd = load i32, ptr %i.nn, align 16, !tbaa !90 ; 2 uses
  %.neg = xor i32 %i.pd, -1
  %i.pe = add i32 %.13445.lcssa, %.neg            ; 2 uses
  %i.pf = tail call i32 @getbits(i32 noundef %i.pd) #10
  %i.pg = add i32 %i.pf, 15
  %i.ph = load ptr, ptr @wordpointer, align 8, !tbaa !32 ; 2 uses
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !34
  %i.pj = zext i8 %i.pi to i32
  %i.pk = load i32, ptr @bitindex, align 4, !tbaa !4 ; 2 uses
  %i.pl = add nsw i32 %i.pk, 1                    ; 2 uses
  %i.pm = ashr i32 %i.pl, 3
  %i.pn = sext i32 %i.pm to i64
  %i.po = getelementptr inbounds i8, ptr %i.ph, i64 %i.pn
  store ptr %i.po, ptr @wordpointer, align 8, !tbaa !32
  %i.pp = and i32 %i.pl, 7
  store i32 %i.pp, ptr @bitindex, align 4, !tbaa !4
  %i.pq = lshr i32 128, %i.pk
  %i.pr = and i32 %i.pq, %i.pj
  %.not492 = icmp eq i32 %i.pr, 0
  %i.ps = sext i32 %i.pg to i64
  %i.pt = getelementptr inbounds [8 x i8], ptr @ispow, i64 %i.ps
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !8 ; 2 uses
  br i1 %.not492, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.pv = fneg double %i.pu
  %i.pw = fmul double %.2309, %i.pv
  store double %i.pw, ptr %.11364531, align 8, !tbaa !8
  br label %bb.bb

bb.ay:                                            ; preds = %bb.aw
  %i.px = fmul double %.2309, %i.pu
  store double %i.px, ptr %.11364531, align 8, !tbaa !8
  br label %bb.bb

bb.az:                                            ; preds = %._crit_edge
  %i.py = load i8, ptr %i.oz, align 1, !tbaa !34
  %i.pz = zext i8 %i.py to i32
  %i.qa = add nsw i32 %i.oy, 1                    ; 2 uses
  %i.qb = ashr i32 %i.qa, 3
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds i8, ptr %i.oz, i64 %i.qc
  store ptr %i.qd, ptr @wordpointer, align 8, !tbaa !32
  %i.qe = and i32 %i.qa, 7
end_hunk_0
begin_hunk_1_@dct12:bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !8
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.dk, double %i.di)
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 2816
  store double %i.dl, ptr %i.dm, align 8, !tbaa !8
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.do = load double, ptr %i.dn, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !8
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.dq, double %i.do)
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 2048
  store double %i.dr, ptr %i.ds, align 8, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.du = load double, ptr %i.dt, align 8, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !8
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.dw, double %i.du)
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 2304
  store double %i.dx, ptr %i.dy, align 8, !tbaa !8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !8 ; 2 uses
  %i.ee = fadd double %i.eb, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !8 ; 2 uses
  %i.eh = fadd double %i.ed, %i.eg                ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !8 ; 2 uses
  %i.ek = fadd double %i.eg, %i.ej                ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.em = load double, ptr %i.el, align 8, !tbaa !8 ; 2 uses
  %i.en = fadd double %i.ej, %i.em
  %i.eo = load double, ptr %i.dz, align 8, !tbaa !8 ; 3 uses
  %i.ep = fadd double %i.em, %i.eo                ; 3 uses
  %i.eq = fadd double %i.ee, %i.ek                ; 2 uses
  %i.er = fadd double %i.ek, %i.ep
  %i.es = fmul double %i.ai, %i.en                ; 2 uses
  %i.et = fmul double %i.ai, %i.er                ; 2 uses
  %i.eu = fsub double %i.eo, %i.eh                ; 2 uses
  %i.ev = fsub double %i.ep, %i.eq
  %i.ew = fmul double %i.an, %i.ev                ; 2 uses
  %i.ex = fadd double %i.eu, %i.ew                ; 2 uses
  %i.ey = fsub double %i.eu, %i.ew                ; 2 uses
  %i.ez = load double, ptr %i.at, align 8, !tbaa !8
  %i.fa = fmul double %i.ez, %i.ex
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store double %i.fa, ptr %i.fb, align 8, !tbaa !8
  %i.fc = load double, ptr %i.az, align 8, !tbaa !8
  %i.fd = fmul double %i.fc, %i.ex
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store double %i.fd, ptr %i.fe, align 8, !tbaa !8
  %i.ff = load double, ptr %i.bf, align 8, !tbaa !8
  %i.fg = load double, ptr %i.bc, align 8, !tbaa !8
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.ff, double %i.fg)
  store double %i.fh, ptr %i.bc, align 8, !tbaa !8
  %i.fi = load double, ptr %i.bl, align 8, !tbaa !8
  %i.fj = load double, ptr %i.aw, align 8, !tbaa !8
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.fi, double %i.fj)
  store double %i.fk, ptr %i.aw, align 8, !tbaa !8
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.bp, double %i.eo) ; 2 uses
  %i.fm = fadd double %i.fl, %i.es                ; 2 uses
  %i.fn = fsub double %i.fl, %i.es                ; 2 uses
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.bp, double %i.ep) ; 2 uses
  %i.fp = fadd double %i.fo, %i.et
  %i.fq = fmul double %i.bv, %i.fp                ; 2 uses
  %i.fr = fsub double %i.fo, %i.et
  %i.fs = fmul double %i.by, %i.fr                ; 2 uses
  %i.ft = fadd double %i.fm, %i.fq                ; 2 uses
  %i.fu = fsub double %i.fm, %i.fq                ; 2 uses
  %i.fv = fadd double %i.fn, %i.fs                ; 2 uses
  %i.fw = fsub double %i.fn, %i.fs                ; 2 uses
  %i.fx = load double, ptr %i.cg, align 8, !tbaa !8
  %i.fy = fmul double %i.fv, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store double %i.fy, ptr %i.fz, align 8, !tbaa !8
  %i.ga = load double, ptr %i.cm, align 8, !tbaa !8
  %i.gb = fmul double %i.fv, %i.ga
  store double %i.gb, ptr %2, align 8, !tbaa !8
  %i.gc = load double, ptr %i.cs, align 8, !tbaa !8
  %i.gd = fmul double %i.ft, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store double %i.gd, ptr %i.ge, align 8, !tbaa !8
  %i.gf = load double, ptr %i.cy, align 8, !tbaa !8
  %i.gg = fmul double %i.ft, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store double %i.gg, ptr %i.gh, align 8, !tbaa !8
  %i.gi = load double, ptr %3, align 8, !tbaa !8
  %i.gj = load double, ptr %i.cp, align 8, !tbaa !8
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.gi, double %i.gj)
  store double %i.gk, ptr %i.cp, align 8, !tbaa !8
  %i.gl = load double, ptr %i.dj, align 8, !tbaa !8
  %i.gm = load double, ptr %i.cj, align 8, !tbaa !8
  %i.gn = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.gl, double %i.gm)
  store double %i.gn, ptr %i.cj, align 8, !tbaa !8
  %i.go = load double, ptr %i.dp, align 8, !tbaa !8
  %i.gp = load double, ptr %i.cv, align 8, !tbaa !8
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.fu, double %i.go, double %i.gp)
  store double %i.gq, ptr %i.cv, align 8, !tbaa !8
  %i.gr = load double, ptr %i.dv, align 8, !tbaa !8
  %i.gs = load double, ptr %i.db, align 8, !tbaa !8
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.fu, double %i.gr, double %i.gs)
  store double %i.gt, ptr %i.db, align 8, !tbaa !8
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gv, i8 0, i64 48, i1 false)
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !8
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !8 ; 2 uses
  %i.ha = fadd double %i.gx, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !8 ; 2 uses
  %i.hd = fadd double %i.gz, %i.hc                ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hf = load double, ptr %i.he, align 8, !tbaa !8 ; 2 uses
  %i.hg = fadd double %i.hc, %i.hf                ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !8 ; 2 uses
  %i.hj = fadd double %i.hf, %i.hi
  %i.hk = load double, ptr %i.gu, align 8, !tbaa !8 ; 3 uses
  %i.hl = fadd double %i.hi, %i.hk                ; 3 uses
  %i.hm = fadd double %i.ha, %i.hg                ; 2 uses
  %i.hn = fadd double %i.hg, %i.hl
  %i.ho = fmul double %i.ai, %i.hj                ; 2 uses
  %i.hp = fmul double %i.ai, %i.hn                ; 2 uses
  %i.hq = fsub double %i.hk, %i.hd                ; 2 uses
  %i.hr = fsub double %i.hl, %i.hm
  %i.hs = fmul double %i.an, %i.hr                ; 2 uses
  %i.ht = fadd double %i.hq, %i.hs                ; 2 uses
  %i.hu = fsub double %i.hq, %i.hs                ; 2 uses
  %i.hv = load double, ptr %i.at, align 8, !tbaa !8
  %i.hw = fmul double %i.hv, %i.ht
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 80
  store double %i.hw, ptr %i.hx, align 8, !tbaa !8
  %i.hy = load double, ptr %i.az, align 8, !tbaa !8
  %i.hz = fmul double %i.hy, %i.ht
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 56
  store double %i.hz, ptr %i.ia, align 8, !tbaa !8
  %i.ib = load double, ptr %i.bf, align 8, !tbaa !8
  %i.ic = load double, ptr %i.fe, align 8, !tbaa !8
  %i.id = tail call double @llvm.fmuladd.f64(double %i.hu, double %i.ib, double %i.ic)
  store double %i.id, ptr %i.fe, align 8, !tbaa !8
  %i.ie = load double, ptr %i.bl, align 8, !tbaa !8
  %i.if = load double, ptr %i.fb, align 8, !tbaa !8
  %i.ig = tail call double @llvm.fmuladd.f64(double %i.hu, double %i.ie, double %i.if)
  store double %i.ig, ptr %i.fb, align 8, !tbaa !8
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.bp, double %i.hk) ; 2 uses
  %i.ii = fadd double %i.ih, %i.ho                ; 2 uses
  %i.ij = fsub double %i.ih, %i.ho                ; 2 uses
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.bp, double %i.hl) ; 2 uses
  %i.il = fadd double %i.ik, %i.hp
  %i.im = fmul double %i.bv, %i.il                ; 2 uses
  %i.in = fsub double %i.ik, %i.hp
  %i.io = fmul double %i.by, %i.in                ; 2 uses
  %i.ip = fadd double %i.ii, %i.im                ; 2 uses
  %i.iq = fsub double %i.ii, %i.im                ; 2 uses
  %i.ir = fadd double %i.ij, %i.io                ; 2 uses
  %i.is = fsub double %i.ij, %i.io                ; 2 uses
  %i.it = load double, ptr %i.cg, align 8, !tbaa !8
  %i.iu = fmul double %i.ir, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 88
  store double %i.iu, ptr %i.iv, align 8, !tbaa !8
  %i.iw = load double, ptr %i.cm, align 8, !tbaa !8
  %i.ix = fmul double %i.ir, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 48
  store double %i.ix, ptr %i.iy, align 8, !tbaa !8
  %i.iz = load double, ptr %i.cs, align 8, !tbaa !8
  %i.ja = fmul double %i.ip, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 64
  store double %i.ja, ptr %i.jb, align 8, !tbaa !8
  %i.jc = load double, ptr %i.cy, align 8, !tbaa !8
  %i.jd = fmul double %i.ip, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 72
  store double %i.jd, ptr %i.je, align 8, !tbaa !8
  %i.jf = load double, ptr %3, align 8, !tbaa !8
  %i.jg = load double, ptr %2, align 8, !tbaa !8
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.is, double %i.jf, double %i.jg)
  store double %i.jh, ptr %2, align 8, !tbaa !8
  %i.ji = load double, ptr %i.dj, align 8, !tbaa !8
  %i.jj = load double, ptr %i.fz, align 8, !tbaa !8
  %i.jk = tail call double @llvm.fmuladd.f64(double %i.is, double %i.ji, double %i.jj)
  store double %i.jk, ptr %i.fz, align 8, !tbaa !8
  %i.jl = load double, ptr %i.dp, align 8, !tbaa !8
  %i.jm = load double, ptr %i.ge, align 8, !tbaa !8
  %i.jn = tail call double @llvm.fmuladd.f64(double %i.iq, double %i.jl, double %i.jm)
  store double %i.jn, ptr %i.ge, align 8, !tbaa !8
  %i.jo = load double, ptr %i.dv, align 8, !tbaa !8
  %i.jp = load double, ptr %i.gh, align 8, !tbaa !8
  %i.jq = tail call double @llvm.fmuladd.f64(double %i.iq, double %i.jo, double %i.jp)
  store double %i.jq, ptr %i.gh, align 8, !tbaa !8
  ret void
}

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11, !14}
!14 = !{!"llvm.loop.peeled.count", i32 1}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 int", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = !{!24, !5, i64 0}
!24 = !{!"frame", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68}
!25 = !{!24, !5, i64 8}
!26 = !{!24, !5, i64 36}
!27 = !{!24, !5, i64 48}
!28 = !{!24, !5, i64 52}
!29 = !{!24, !5, i64 12}
!30 = !{!31, !5, i64 0}
!31 = !{!"III_sideinfo", !5, i64 0, !5, i64 4, !6, i64 8}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 omnipotent char", !17, i64 0}
!34 = !{!6, !6, i64 0}
!35 = !{!31, !5, i64 4}
!36 = !{!37, !5, i64 4}
!37 = !{!"gr_info_s", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 36, !6, i64 48, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !6, i64 88, !38, i64 112}
!38 = !{!"p1 double", !17, i64 0}
!39 = !{!37, !5, i64 8}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!42 = !{!37, !38, i64 112}
!43 = !{!37, !5, i64 12}
!44 = !{!37, !5, i64 16}
!45 = !{!37, !5, i64 20}
!46 = !{!38, !38, i64 0}
!47 = !{!37, !5, i64 68}
!48 = !{!37, !5, i64 72}
!49 = !{!37, !5, i64 80}
!50 = !{!37, !5, i64 84}
!51 = distinct !{!51, !11}
!52 = !{!37, !5, i64 76}
!53 = distinct !{!53, !11}
!54 = !{!37, !5, i64 0}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11, !57, !58}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = !{!37, !5, i64 60}
!63 = distinct !{!63, !11, !57, !58}
!64 = distinct !{!64, !11, !58, !57}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !11, !57, !58}
!67 = distinct !{!67, !11, !58, !57}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11, !57, !58}
!70 = distinct !{!70, !11, !58, !57}
!71 = !{!37, !5, i64 64}
!72 = distinct !{!72, !11, !57, !58}
!73 = distinct !{!73, !11, !58, !57}
!74 = distinct !{!74, !11, !57, !58}
!75 = distinct !{!75, !11, !58, !57}
!76 = !{!77, !77, i64 0}
!77 = !{!"p1 _ZTS5mpstr", !17, i64 0}
!78 = distinct !{!78, !11}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = !{!87, !88, i64 8}
!87 = !{!"newhuff", !5, i64 0, !88, i64 8}
!88 = !{!"p1 short", !17, i64 0}
!89 = distinct !{!89, !11}
!90 = !{!87, !5, i64 0}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !11}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = distinct !{!97, !11}
!98 = distinct !{!98, !11}
!99 = distinct !{!99, !11}
!100 = distinct !{!100, !11}
!101 = distinct !{!101, !11}
end_hunk_1
