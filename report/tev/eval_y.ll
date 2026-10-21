Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/eval_y?download=true
inline.NumInlined: 169
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 95
begin_hunk_0_@Do_Func:bb.a
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %xtraiter3676 = and i64 %i.og, 1
  %i.yf = icmp eq i64 %i.og, 1
  br i1 %i.yf, label %.epil.preheader3675, label %.lr.ph2440.new

.lr.ph2440.new:                                   ; preds = %.lr.ph2440
  %unroll_iter3679 = and i64 %i.og, 9223372036854775806
  br label %bb.cy

.preheader:                                       ; preds = %bb.cq
  %.not18612454 = icmp eq i64 %i.od, 0
  br i1 %.not18612454, label %.thread, label %.lr.ph2456

.lr.ph2456:                                       ; preds = %.preheader
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %xtraiter3691 = and i64 %i.od, 1
  %lcmp.mod3692.not = icmp eq i64 %xtraiter3691, 0
  br i1 %lcmp.mod3692.not, label %.prol.loopexit3690, label %.prol.loopexit3690.unr-lcssa

.prol.loopexit3690.unr-lcssa:                     ; preds = %.lr.ph2456
  %i.yj = add nsw i64 %i.od, -1                   ; 4 uses
  %i.yk = load i64, ptr %i.yg, align 8, !tbaa !45
  %i.yl = add nsw i64 %i.yk, %i.yj
  %i.ym = load ptr, ptr %i.yh, align 8, !tbaa !10
  %i.yn = getelementptr inbounds [8 x i8], ptr %i.ym, i64 %i.yj
  store i64 %i.yl, ptr %i.yn, align 8, !tbaa !26
  %i.yo = load ptr, ptr %i.yi, align 8, !tbaa !37
  %i.yp = getelementptr inbounds i8, ptr %i.yo, i64 %i.yj
  store i8 0, ptr %i.yp, align 1, !tbaa !10
  br label %.prol.loopexit3690

.prol.loopexit3690:                               ; preds = %.prol.loopexit3690.unr-lcssa, %.lr.ph2456
  %.015192455.unr = phi i64 [ %i.od, %.lr.ph2456 ], [ %i.yj, %.prol.loopexit3690.unr-lcssa ]
  %i.yq = icmp eq i64 %i.od, 1
  br i1 %i.yq, label %.thread, label %.lr.ph2456.new

.lr.ph2456.new:                                   ; preds = %.prol.loopexit3690, %.lr.ph2456.new
  %.015192455 = phi i64 [ %i.yy, %.lr.ph2456.new ], [ %.015192455.unr, %.prol.loopexit3690 ] ; 2 uses
  %i.yr = add nsw i64 %.015192455, -1             ; 3 uses
  %i.ys = load i64, ptr %i.yg, align 8, !tbaa !45
  %i.yt = add nsw i64 %i.ys, %i.yr
  %i.yu = load ptr, ptr %i.yh, align 8, !tbaa !10
  %i.yv = getelementptr inbounds [8 x i8], ptr %i.yu, i64 %i.yr
  store i64 %i.yt, ptr %i.yv, align 8, !tbaa !26
  %i.yw = load ptr, ptr %i.yi, align 8, !tbaa !37
  %i.yx = getelementptr inbounds i8, ptr %i.yw, i64 %i.yr
  store i8 0, ptr %i.yx, align 1, !tbaa !10
  %i.yy = add nsw i64 %.015192455, -2             ; 5 uses
  %i.yz = load i64, ptr %i.yg, align 8, !tbaa !45
  %i.za = add nsw i64 %i.yz, %i.yy
  %i.zb = load ptr, ptr %i.yh, align 8, !tbaa !10
  %i.zc = getelementptr inbounds [8 x i8], ptr %i.zb, i64 %i.yy
  store i64 %i.za, ptr %i.zc, align 8, !tbaa !26
  %i.zd = load ptr, ptr %i.yi, align 8, !tbaa !37
  %i.ze = getelementptr inbounds i8, ptr %i.zd, i64 %i.yy
  store i8 0, ptr %i.ze, align 1, !tbaa !10
  %.not1861.1 = icmp eq i64 %i.yy, 0
  br i1 %.not1861.1, label %.thread, label %.lr.ph2456.new, !llvm.loop !267

bb.cr:                                            ; preds = %bb.cq
  %i.zf = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !22
  switch i32 %i.zg, label %.thread [
    i32 259, label %.preheader1894
    i32 261, label %.preheader1896
  ]

.preheader1896:                                   ; preds = %bb.cr
  %.not18592448 = icmp eq i64 %i.od, 0
  br i1 %.not18592448, label %.thread, label %.lr.ph2450

.lr.ph2450:                                       ; preds = %.preheader1896
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %xtraiter3683 = and i64 %i.od, 1
  %lcmp.mod3684.not = icmp eq i64 %xtraiter3683, 0
  br i1 %lcmp.mod3684.not, label %.prol.loopexit3682, label %.prol.loopexit3682.unr-lcssa

.prol.loopexit3682.unr-lcssa:                     ; preds = %.lr.ph2450
  %i.zj = add nsw i64 %i.od, -1                   ; 3 uses
  %i.zk = load ptr, ptr %i.zh, align 8, !tbaa !10
  %i.zl = getelementptr inbounds [8 x i8], ptr %i.zk, i64 %i.zj
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !48
  store i8 0, ptr %i.zm, align 1, !tbaa !10
  %i.zn = load ptr, ptr %i.zi, align 8, !tbaa !37
  %i.zo = getelementptr inbounds i8, ptr %i.zn, i64 %i.zj
  store i8 1, ptr %i.zo, align 1, !tbaa !10
  br label %.prol.loopexit3682

.prol.loopexit3682:                               ; preds = %.prol.loopexit3682.unr-lcssa, %.lr.ph2450
  %.215212449.unr = phi i64 [ %i.od, %.lr.ph2450 ], [ %i.zj, %.prol.loopexit3682.unr-lcssa ]
  %i.zp = icmp eq i64 %i.od, 1
  br i1 %i.zp, label %.thread, label %.lr.ph2450.new

.preheader1894:                                   ; preds = %bb.cr
  %.not18602451 = icmp eq i64 %i.od, 0
  br i1 %.not18602451, label %.thread, label %.lr.ph2453

.lr.ph2453:                                       ; preds = %.preheader1894
  %i.zq = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %xtraiter3687 = and i64 %i.od, 1
  %lcmp.mod3688.not = icmp eq i64 %xtraiter3687, 0
  br i1 %lcmp.mod3688.not, label %.prol.loopexit3686, label %.prol.loopexit3686.unr-lcssa

.prol.loopexit3686.unr-lcssa:                     ; preds = %.lr.ph2453
  %i.zs = add nsw i64 %i.od, -1                   ; 3 uses
  %i.zt = load ptr, ptr %i.zq, align 8, !tbaa !10
  %i.zu = getelementptr inbounds [8 x i8], ptr %i.zt, i64 %i.zs
  store i64 0, ptr %i.zu, align 8, !tbaa !26
  %i.zv = load ptr, ptr %i.zr, align 8, !tbaa !37
  %i.zw = getelementptr inbounds i8, ptr %i.zv, i64 %i.zs
  store i8 1, ptr %i.zw, align 1, !tbaa !10
  br label %.prol.loopexit3686

.prol.loopexit3686:                               ; preds = %.prol.loopexit3686.unr-lcssa, %.lr.ph2453
  %.115202452.unr = phi i64 [ %i.od, %.lr.ph2453 ], [ %i.zs, %.prol.loopexit3686.unr-lcssa ]
  %i.zx = icmp eq i64 %i.od, 1
  br i1 %i.zx, label %.thread, label %.lr.ph2453.new

.lr.ph2453.new:                                   ; preds = %.prol.loopexit3686, %.lr.ph2453.new
  %.115202452 = phi i64 [ %i.aad, %.lr.ph2453.new ], [ %.115202452.unr, %.prol.loopexit3686 ] ; 2 uses
  %i.zy = add nsw i64 %.115202452, -1             ; 2 uses
  %i.zz = load ptr, ptr %i.zq, align 8, !tbaa !10
  %i.aaa = getelementptr inbounds [8 x i8], ptr %i.zz, i64 %i.zy
  store i64 0, ptr %i.aaa, align 8, !tbaa !26
  %i.aab = load ptr, ptr %i.zr, align 8, !tbaa !37
  %i.aac = getelementptr inbounds i8, ptr %i.aab, i64 %i.zy
  store i8 1, ptr %i.aac, align 1, !tbaa !10
  %i.aad = add nsw i64 %.115202452, -2            ; 4 uses
  %i.aae = load ptr, ptr %i.zq, align 8, !tbaa !10
  %i.aaf = getelementptr inbounds [8 x i8], ptr %i.aae, i64 %i.aad
  store i64 0, ptr %i.aaf, align 8, !tbaa !26
  %i.aag = load ptr, ptr %i.zr, align 8, !tbaa !37
  %i.aah = getelementptr inbounds i8, ptr %i.aag, i64 %i.aad
  store i8 1, ptr %i.aah, align 1, !tbaa !10
  %.not1860.1 = icmp eq i64 %i.aad, 0
  br i1 %.not1860.1, label %.thread, label %.lr.ph2453.new, !llvm.loop !268

.lr.ph2450.new:                                   ; preds = %.prol.loopexit3682, %.lr.ph2450.new
  %.215212449 = phi i64 [ %i.aao, %.lr.ph2450.new ], [ %.215212449.unr, %.prol.loopexit3682 ] ; 2 uses
  %i.aai = add nsw i64 %.215212449, -1            ; 2 uses
  %i.aaj = load ptr, ptr %i.zh, align 8, !tbaa !10
  %i.aak = getelementptr inbounds [8 x i8], ptr %i.aaj, i64 %i.aai
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !48
  store i8 0, ptr %i.aal, align 1, !tbaa !10
  %i.aam = load ptr, ptr %i.zi, align 8, !tbaa !37
  %i.aan = getelementptr inbounds i8, ptr %i.aam, i64 %i.aai
  store i8 1, ptr %i.aan, align 1, !tbaa !10
  %i.aao = add nsw i64 %.215212449, -2            ; 4 uses
  %i.aap = load ptr, ptr %i.zh, align 8, !tbaa !10
  %i.aaq = getelementptr inbounds [8 x i8], ptr %i.aap, i64 %i.aao
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !48
  store i8 0, ptr %i.aar, align 1, !tbaa !10
  %i.aas = load ptr, ptr %i.zi, align 8, !tbaa !37
  %i.aat = getelementptr inbounds i8, ptr %i.aas, i64 %i.aao
  store i8 1, ptr %i.aat, align 1, !tbaa !10
  %.not1859.1 = icmp eq i64 %i.aao, 0
  br i1 %.not1859.1, label %.thread, label %.lr.ph2450.new, !llvm.loop !269

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store <4 x i64> splat (i64 1), ptr %i.d, align 16
  %i.aau = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 1, ptr %i.aau, align 16
  %i.aav = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.aaw = load i64, ptr %i.aav, align 16, !tbaa !10 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aay = load i32, ptr %i.aax, align 8, !tbaa !25 ; 3 uses
  %i.aaz = add i64 %i.aaw, -6
  %or.cond5 = icmp ult i64 %i.aaz, -5
  br i1 %or.cond5, label %bb.ct, label %.preheader1898

.preheader1898:                                   ; preds = %bb.cs
  %i.aba = icmp sgt i64 %i.og, 0
  br i1 %i.aba, label %.lr.ph2447, label %.loopexit

.lr.ph2447:                                       ; preds = %.preheader1898
  %i.abb = getelementptr [8 x i8], ptr %i.d, i64 %i.aaw
  %i.abc = getelementptr i8, ptr %i.abb, i64 -8
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.abf = icmp sgt i32 %i.aay, 0
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.abh = add nsw i32 %i.aay, -1
  %i.abi = sext i32 %i.abh to i64
  %wide.trip.count = zext nneg i32 %i.aay to i64
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  call fastcc void @fits_parser_yyerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.105)
  %i.abj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !10
  call void @free(ptr noundef %i.abk) #24
  br label %.loopexit

bb.cu:                                            ; preds = %.lr.ph2447, %._crit_edge2444
  %3 = phi i64 [ 1, %.lr.ph2447 ], [ %4, %._crit_edge2444 ]
  %.014832446 = phi i64 [ 0, %.lr.ph2447 ], [ %i.aca, %._crit_edge2444 ] ; 3 uses
  %i.abl = load i64, ptr %i.abc, align 8, !tbaa !26
  %i.abm = load ptr, ptr %i.abd, align 8, !tbaa !10
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %.014832446
  store i64 %i.abl, ptr %i.abn, align 8, !tbaa !26
  %i.abo = load ptr, ptr %i.abe, align 8, !tbaa !37
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 %.014832446
  store i8 0, ptr %i.abp, align 1, !tbaa !10
  %i.abq = add nsw i64 %3, 1                      ; 2 uses
  store i64 %i.abq, ptr %i.d, align 16, !tbaa !26
  br i1 %i.abf, label %.lr.ph2443, label %._crit_edge2444

.lr.ph2443:                                       ; preds = %bb.cu, %bb.cx
  %indvars.iv2713 = phi i64 [ %indvars.iv.next2714, %bb.cx ], [ 0, %bb.cu ] ; 4 uses
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv2713 ; 3 uses
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !26
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %indvars.iv2713
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !26
  %i.abv = icmp sgt i64 %i.abs, %i.abu
  br i1 %i.abv, label %bb.cv, label %._crit_edge2444.loopexit

bb.cv:                                            ; preds = %.lr.ph2443
  store i64 1, ptr %i.abr, align 8, !tbaa !26
  %i.abw = icmp slt i64 %indvars.iv2713, %i.abi
  br i1 %i.abw, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abr, i64 8 ; 2 uses
  %i.aby = load i64, ptr %i.abx, align 8, !tbaa !26
  %i.abz = add nsw i64 %i.aby, 1
  store i64 %i.abz, ptr %i.abx, align 8, !tbaa !26
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %indvars.iv.next2714 = add nuw nsw i64 %indvars.iv2713, 1 ; 2 uses
  %exitcond2716.not = icmp eq i64 %indvars.iv.next2714, %wide.trip.count
  br i1 %exitcond2716.not, label %._crit_edge2444.loopexit, label %.lr.ph2443, !llvm.loop !270

._crit_edge2444.loopexit:                         ; preds = %bb.cx, %.lr.ph2443
  %.pre2798 = load i64, ptr %i.d, align 16, !tbaa !26
  br label %._crit_edge2444

._crit_edge2444:                                  ; preds = %._crit_edge2444.loopexit, %bb.cu
  %4 = phi i64 [ %.pre2798, %._crit_edge2444.loopexit ], [ %i.abq, %bb.cu ]
  %i.aca = add nuw nsw i64 %.014832446, 1         ; 2 uses
  %exitcond2717.not = icmp eq i64 %i.aca, %i.og
  br i1 %exitcond2717.not, label %.loopexit, label %bb.cu, !llvm.loop !271

.loopexit:                                        ; preds = %._crit_edge2444, %.preheader1898, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %.thread

bb.cy:                                            ; preds = %bb.cy, %.lr.ph2440.new
  %.014792439 = phi i64 [ 1, %.lr.ph2440.new ], [ %spec.store.select.1, %bb.cy ] ; 3 uses
  %.014802438 = phi i64 [ 0, %.lr.ph2440.new ], [ %i.aco, %bb.cy ] ; 4 uses
  %niter3680 = phi i64 [ 0, %.lr.ph2440.new ], [ %niter3680.next.1, %bb.cy ]
  %i.acb = load ptr, ptr %i.yd, align 8, !tbaa !10
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.acb, i64 %.014802438
  store i64 %.014792439, ptr %i.acc, align 8, !tbaa !26
  %i.acd = load ptr, ptr %i.ye, align 8, !tbaa !37
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 %.014802438
  store i8 0, ptr %i.ace, align 1, !tbaa !10
  %i.acf = add nsw i64 %.014792439, 1
  %i.acg = load i64, ptr %i.oe, align 8, !tbaa !23
  %.not1858 = icmp slt i64 %.014792439, %i.acg
  %spec.store.select = select i1 %.not1858, i64 %i.acf, i64 1 ; 3 uses
  %i.ach = or disjoint i64 %.014802438, 1         ; 2 uses
  %i.aci = load ptr, ptr %i.yd, align 8, !tbaa !10
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %i.ach
  store i64 %spec.store.select, ptr %i.acj, align 8, !tbaa !26
  %i.ack = load ptr, ptr %i.ye, align 8, !tbaa !37
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 %i.ach
  store i8 0, ptr %i.acl, align 1, !tbaa !10
  %i.acm = add nsw i64 %spec.store.select, 1
  %i.acn = load i64, ptr %i.oe, align 8, !tbaa !23
  %.not1858.1 = icmp slt i64 %spec.store.select, %i.acn
  %spec.store.select.1 = select i1 %.not1858.1, i64 %i.acm, i64 1 ; 2 uses
  %i.aco = add nuw nsw i64 %.014802438, 2         ; 2 uses
  %niter3680.next.1 = add i64 %niter3680, 2       ; 2 uses
  %niter3680.ncmp.1 = icmp eq i64 %niter3680.next.1, %unroll_iter3679
  br i1 %niter3680.ncmp.1, label %.thread.loopexit3561.unr-lcssa, label %bb.cy, !llvm.loop !272

bb.cz:                                            ; preds = %.lr.ph2437, %bb.cz
  %.014902436 = phi i64 [ %i.og, %.lr.ph2437 ], [ %i.acp, %bb.cz ]
  %i.acp = add nsw i64 %.014902436, -1            ; 4 uses
  %i.acq = call double @simplerng_getuniform() #24
  %i.acr = load ptr, ptr %i.ya, align 8, !tbaa !10
  %i.acs = getelementptr inbounds [8 x i8], ptr %i.acr, i64 %i.acp
  store double %i.acq, ptr %i.acs, align 8, !tbaa !32
  %i.act = load ptr, ptr %i.yb, align 8, !tbaa !37
  %i.acu = getelementptr inbounds i8, ptr %i.act, i64 %i.acp
  store i8 0, ptr %i.acu, align 1, !tbaa !10
  %.not1857 = icmp eq i64 %i.acp, 0
  br i1 %.not1857, label %.thread, label %bb.cz, !llvm.loop !273

bb.da:                                            ; preds = %.lr.ph2434, %bb.da
  %.114912433 = phi i64 [ %i.og, %.lr.ph2434 ], [ %i.acv, %bb.da ]
  %i.acv = add nsw i64 %.114912433, -1            ; 4 uses
  %i.acw = call double @simplerng_getnorm() #24
  %i.acx = load ptr, ptr %i.xy, align 8, !tbaa !10
  %i.acy = getelementptr inbounds [8 x i8], ptr %i.acx, i64 %i.acv
  store double %i.acw, ptr %i.acy, align 8, !tbaa !32
  %i.acz = load ptr, ptr %i.xz, align 8, !tbaa !37
  %i.ada = getelementptr inbounds i8, ptr %i.acz, i64 %i.acv
  store i8 0, ptr %i.ada, align 1, !tbaa !10
  %.not1856 = icmp eq i64 %i.acv, 0
  br i1 %.not1856, label %.thread, label %bb.da, !llvm.loop !274

bb.db:                                            ; preds = %bb.cq
  %i.adb = load ptr, ptr %i.a, align 16, !tbaa !50 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 60
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !22
  %i.ade = icmp eq i32 %i.add, 260
  %i.adf = load i32, ptr %i.adb, align 8, !tbaa !24
  %i.adg = icmp eq i32 %i.adf, -1000              ; 2 uses
  %.not18542430 = icmp eq i64 %i.og, 0            ; 4 uses
  br i1 %i.ade, label %bb.dc, label %bb.dl

bb.dc:                                            ; preds = %bb.db
  br i1 %i.adg, label %.preheader1905, label %.preheader1907

.preheader1907:                                   ; preds = %bb.dc
  br i1 %.not18542430, label %.thread, label %.lr.ph2429

.lr.ph2429:                                       ; preds = %.preheader1907
  %i.adh = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.dg

.preheader1905:                                   ; preds = %bb.dc
  br i1 %.not18542430, label %.thread, label %.lr.ph2431

.lr.ph2431:                                       ; preds = %.preheader1905
  %i.adj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.dd

bb.dd:                                            ; preds = %.lr.ph2431, %bb.df
  %.in2549 = phi i64 [ %i.og, %.lr.ph2431 ], [ %i.adm, %bb.df ]
  %i.adm = add nsw i64 %.in2549, -1               ; 5 uses
  %i.adn = load double, ptr %i.adj, align 16, !tbaa !10
  %i.ado = fcmp olt double %i.adn, 0.000000e+00
  %i.adp = zext i1 %i.ado to i8
  %i.adq = load ptr, ptr %i.adk, align 8, !tbaa !37
  %i.adr = getelementptr inbounds i8, ptr %i.adq, i64 %i.adm
  store i8 %i.adp, ptr %i.adr, align 1, !tbaa !10
  %i.ads = load ptr, ptr %i.adk, align 8, !tbaa !37
  %i.adt = getelementptr inbounds i8, ptr %i.ads, i64 %i.adm
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !10
  %.not1855 = icmp eq i8 %i.adu, 0
  br i1 %.not1855, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.adv = load double, ptr %i.adj, align 16, !tbaa !10
  %i.adw = call i32 @simplerng_getpoisson(double noundef %i.adv) #24
  %i.adx = sext i32 %i.adw to i64
  %i.ady = load ptr, ptr %i.adl, align 8, !tbaa !10
  %i.adz = getelementptr inbounds [8 x i8], ptr %i.ady, i64 %i.adm
  store i64 %i.adx, ptr %i.adz, align 8, !tbaa !26
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.not1854 = icmp eq i64 %i.adm, 0
  br i1 %.not1854, label %.thread, label %bb.dd, !llvm.loop !275

bb.dg:                                            ; preds = %.lr.ph2429, %bb.dk
  %.in2548 = phi i64 [ %i.og, %.lr.ph2429 ], [ %i.aea, %bb.dk ]
  %i.aea = add nsw i64 %.in2548, -1               ; 9 uses
  %i.aeb = load ptr, ptr %i.a, align 16, !tbaa !50
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 120
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !37
  %i.aee = getelementptr inbounds i8, ptr %i.aed, i64 %i.aea
  %i.aef = load i8, ptr %i.aee, align 1, !tbaa !10
  %i.aeg = load ptr, ptr %i.adh, align 8, !tbaa !37
  %i.aeh = getelementptr inbounds i8, ptr %i.aeg, i64 %i.aea
  store i8 %i.aef, ptr %i.aeh, align 1, !tbaa !10
  %i.aei = load ptr, ptr %i.a, align 16, !tbaa !50
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 128
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !10
  %i.ael = getelementptr inbounds [8 x i8], ptr %i.aek, i64 %i.aea
  %i.aem = load double, ptr %i.ael, align 8, !tbaa !32
  %i.aen = fcmp olt double %i.aem, 0.000000e+00
  br i1 %i.aen, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.aeo = load ptr, ptr %i.adh, align 8, !tbaa !37
  %i.aep = getelementptr inbounds i8, ptr %i.aeo, i64 %i.aea
  store i8 1, ptr %i.aep, align 1, !tbaa !10
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.aeq = load ptr, ptr %i.adh, align 8, !tbaa !37
  %i.aer = getelementptr inbounds i8, ptr %i.aeq, i64 %i.aea
  %i.aes = load i8, ptr %i.aer, align 1, !tbaa !10
  %.not1853 = icmp eq i8 %i.aes, 0
  br i1 %.not1853, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.aet = load ptr, ptr %i.a, align 16, !tbaa !50
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 128
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !10
  %i.aew = getelementptr inbounds [8 x i8], ptr %i.aev, i64 %i.aea
  %i.aex = load double, ptr %i.aew, align 8, !tbaa !32
  %i.aey = call i32 @simplerng_getpoisson(double noundef %i.aex) #24
  %i.aez = sext i32 %i.aey to i64
  %i.afa = load ptr, ptr %i.adi, align 8, !tbaa !10
  %i.afb = getelementptr inbounds [8 x i8], ptr %i.afa, i64 %i.aea
  store i64 %i.aez, ptr %i.afb, align 8, !tbaa !26
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.not1852 = icmp eq i64 %i.aea, 0
  br i1 %.not1852, label %.thread, label %bb.dg, !llvm.loop !276

bb.dl:                                            ; preds = %bb.db
  br i1 %i.adg, label %.preheader1909, label %.preheader1911

.preheader1911:                                   ; preds = %bb.dl
  br i1 %.not18542430, label %.thread, label %.lr.ph2425

.lr.ph2425:                                       ; preds = %.preheader1911
  %i.afc = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.dp

.preheader1909:                                   ; preds = %bb.dl
  br i1 %.not18542430, label %.thread, label %.lr.ph2427

.lr.ph2427:                                       ; preds = %.preheader1909
  %i.afe = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.dm

bb.dm:                                            ; preds = %.lr.ph2427, %bb.do
  %.in2547 = phi i64 [ %i.og, %.lr.ph2427 ], [ %i.afh, %bb.do ]
  %i.afh = add nsw i64 %.in2547, -1               ; 5 uses
  %i.afi = load i64, ptr %i.afe, align 16, !tbaa !10
  %.lobit = lshr i64 %i.afi, 63
  %i.afj = trunc nuw nsw i64 %.lobit to i8
  %i.afk = load ptr, ptr %i.aff, align 8, !tbaa !37
  %i.afl = getelementptr inbounds i8, ptr %i.afk, i64 %i.afh
  store i8 %i.afj, ptr %i.afl, align 1, !tbaa !10
end_hunk_0
