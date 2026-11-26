Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/layout?download=true
inline.NumInlined: 73
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@layout:bb.a
  %i.xz = extractelement <2 x double> %i.xu, i64 0 ; 3 uses
  br i1 %.not.i135, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.loopexit115.i
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xx, i64 40
  %i.yb = load double, ptr %i.ya, align 8, !tbaa !154
  %i.yc = call double @llvm.round.f64(double %i.yb)
  %foldExtExtBinop = fsub <2 x double> %i.xt, %i.xu
  %i.yd = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ye = fsub double %i.yc, %i.yd                ; 2 uses
  %i.yf = fcmp ogt double %i.ye, 0.000000e+00     ; 2 uses
  %i.yg = fmul nnan double %i.ye, 5.000000e-01    ; 2 uses
  %i.yh = fsub double %i.xz, %i.yg
  %i.yi = fadd double %i.xy, %i.yg
  %.sroa.056.3.i = select i1 %i.yf, double %i.yh, double %i.xz
  %.sroa.22.3.i = select i1 %i.yf, double %i.yi, double %i.xy
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %.loopexit115.i
  %.sroa.056.4.i = phi double [ %.sroa.056.3.i, %bb.da ], [ %i.xz, %.loopexit115.i ]
  %.1.i136 = phi i32 [ 0, %bb.da ], [ %.0102.i, %.loopexit115.i ]
  %.sroa.22.4.i = phi double [ %.sroa.22.3.i, %bb.da ], [ %i.xy, %.loopexit115.i ]
  %i.yj = icmp ne i32 %.1.i136, 0
  %or.cond.i = or i1 %i.xs, %i.yj
  br i1 %or.cond.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.yk = load ptr, ptr @G_margin, align 8, !tbaa !62
  %i.yl = call i32 @late_int(ptr noundef nonnull %0, ptr noundef %i.yk, i32 noundef 8, i32 noundef 0) #18
  %i.ym = sitofp i32 %i.yl to double
  %.pre.i = load ptr, ptr %i.am, align 8, !tbaa !17
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.yn = phi ptr [ %.pre.i, %bb.dc ], [ %i.xv, %bb.db ] ; 2 uses
  %.0105.i = phi double [ %i.ym, %bb.dc ], [ 0.000000e+00, %bb.db ] ; 4 uses
  %i.yo = fsub double %.0105.i, %.sroa.056.4.i    ; 2 uses
  %i.yp = extractelement <2 x double> %i.xu, i64 1
  %i.yq = fsub double %.0105.i, %i.yp
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yn, i64 72
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !65
  %i.yt = fadd double %i.yq, %i.ys                ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yn, i64 104
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !65
  %.val111.i = load i64, ptr %i.ms, align 8, !tbaa !75
  %i.yw = icmp eq i64 %.val111.i, 0
  br i1 %i.yw, label %finalCC.exit, label %.lr.ph132.i.preheader

.lr.ph132.i.preheader:                            ; preds = %bb.dd
  %i.yx = insertelement <2 x double> poison, double %i.yo, i64 0
  %i.yy = insertelement <2 x double> %i.yx, double %i.yt, i64 1 ; 2 uses
  br label %.lr.ph132.i

.lr.ph132.i:                                      ; preds = %.lr.ph132.i.preheader, %._crit_edge.i138
  %.0100131.i = phi i64 [ %i.zq, %._crit_edge.i138 ], [ 0, %.lr.ph132.i.preheader ] ; 2 uses
  %.1104130.i = phi ptr [ %.2.i137, %._crit_edge.i138 ], [ %.0102153, %.lr.ph132.i.preheader ] ; 3 uses
  %i.yz = load ptr, ptr %6, align 8, !tbaa !69
  %i.za = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0100131.i) #18
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.yz, i64 %i.za
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !70 ; 2 uses
  %.not109.i = icmp eq ptr %.1104130.i, null
  br i1 %.not109.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.lr.ph132.i
  %i.zd = getelementptr inbounds nuw i8, ptr %.1104130.i, i64 16
  %i.ze = load <2 x double>, ptr %.1104130.i, align 8, !tbaa !9
  %i.zf = fadd <2 x double> %i.yy, %i.ze
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %.lr.ph132.i
  %.2.i137 = phi ptr [ %i.zd, %bb.de ], [ null, %.lr.ph132.i ]
  %i.zg = phi <2 x double> [ %i.zf, %bb.de ], [ %i.yy, %.lr.ph132.i ]
  %i.zh = fdiv <2 x double> %i.zg, splat (double 7.200000e+01)
  %i.zi = call ptr @agfstnode(ptr noundef %i.zc) #18 ; 2 uses
  %.not110126.i = icmp eq ptr %i.zi, null
  br i1 %.not110126.i, label %._crit_edge.i138, label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %bb.df, %.lr.ph128.i
  %.0127.i = phi ptr [ %i.zp, %.lr.ph128.i ], [ %i.zi, %bb.df ] ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.0127.i, i64 16
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !17
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 176
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !61 ; 2 uses
  %i.zn = load <2 x double>, ptr %i.zm, align 8, !tbaa !9
  %i.zo = fadd <2 x double> %i.zh, %i.zn
  store <2 x double> %i.zo, ptr %i.zm, align 8, !tbaa !9
  %i.zp = call ptr @agnxtnode(ptr noundef %i.zc, ptr noundef nonnull %.0127.i) #18 ; 2 uses
  %.not110.i = icmp eq ptr %i.zp, null
  br i1 %.not110.i, label %._crit_edge.i138, label %.lr.ph128.i, !llvm.loop !116

._crit_edge.i138:                                 ; preds = %.lr.ph128.i, %bb.df
  %i.zq = add nuw i64 %.0100131.i, 1              ; 2 uses
  %.val.i139 = load i64, ptr %i.ms, align 8, !tbaa !75
  %i.zr = icmp ult i64 %i.zq, %.val.i139
  br i1 %i.zr, label %.lr.ph132.i, label %finalCC.exit, !llvm.loop !117

finalCC.exit:                                     ; preds = %._crit_edge.i138, %bb.dd
  %i.zs = fadd double %.0105.i, %i.yt
  %i.zt = load ptr, ptr %i.ac, align 8, !tbaa !17
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 160
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !38 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zv, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zw, i8 0, i64 16, i1 false)
  %i.zx = insertelement <2 x double> poison, double %.0105.i, i64 0
  %i.zy = insertelement <2 x double> %i.zx, double %i.yv, i64 1
  %i.zz = insertelement <2 x double> poison, double %i.yo, i64 0
  %i.aaa = insertelement <2 x double> %i.zz, double %i.zs, i64 1
  %i.aab = fadd <2 x double> %i.zy, %i.aaa
  %i.aac = insertelement <2 x double> %i.xt, double %.sroa.22.4.i, i64 0
  %i.aad = fadd <2 x double> %i.aac, %i.aab
  %i.aae = fdiv <2 x double> %i.aad, splat (double 7.200000e+01)
  store <2 x double> %i.aae, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !9
  call void @free(ptr noundef %.0102153) #18
  %i.aaf = call ptr @agfstnode(ptr noundef nonnull %i.w) #18 ; 2 uses
  %.not115193 = icmp eq ptr %i.aaf, null
  br i1 %.not115193, label %._crit_edge196, label %.lr.ph195

.lr.ph195:                                        ; preds = %finalCC.exit, %bb.dj
  %.0101194 = phi ptr [ %i.abv, %bb.dj ], [ %i.aaf, %finalCC.exit ] ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.0101194, i64 16
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !17 ; 6 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 336
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !60 ; 2 uses
  %.not118 = icmp eq ptr %i.aaj, null
  br i1 %.not118, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph195
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aah, i64 176
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !61 ; 2 uses
  %i.aam = load double, ptr %i.aal, align 8, !tbaa !9
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aah, i64 48
  %i.aao = load double, ptr %i.aan, align 8, !tbaa !155 ; 2 uses
  %i.aap = fmul double %i.aao, 5.000000e-01
  %i.aaq = fsub double %i.aam, %i.aap             ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !17
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 160
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !38 ; 4 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 16
  store double %i.aaq, ptr %i.aav, align 8, !tbaa !156
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aal, i64 8
  %i.aax = load double, ptr %i.aaw, align 8, !tbaa !9
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aah, i64 56
  %i.aaz = load double, ptr %i.aay, align 8, !tbaa !157 ; 2 uses
  %i.aba = fmul double %i.aaz, 5.000000e-01
  %i.abb = fsub double %i.aax, %i.aba             ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aau, i64 24
  store double %i.abb, ptr %i.abc, align 8, !tbaa !158
  %i.abd = fadd double %i.aao, %i.aaq
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aau, i64 32
  store double %i.abd, ptr %i.abe, align 8, !tbaa !159
  %i.abf = fadd double %i.aaz, %i.abb
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aau, i64 40
  store double %i.abf, ptr %i.abg, align 8, !tbaa !160
  br label %bb.dj

bb.dh:                                            ; preds = %.lr.ph195
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aah, i64 152
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !79
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !128 ; 2 uses
  %.not119 = icmp eq ptr %i.abk, null
  br i1 %.not119, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aah, i64 176
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !61 ; 2 uses
  %i.abn = load double, ptr %i.abm, align 8, !tbaa !9
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abk, i64 16
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !17
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 176
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !61 ; 2 uses
  store double %i.abn, ptr %i.abr, align 8, !tbaa !9
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abt = load double, ptr %i.abs, align 8, !tbaa !9
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  store double %i.abt, ptr %i.abu, align 8, !tbaa !9
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dg, %bb.di, %bb.dh
  %i.abv = call ptr @agnxtnode(ptr noundef nonnull %i.w, ptr noundef nonnull %.0101194) #18 ; 2 uses
  %.not115 = icmp eq ptr %i.abv, null
  br i1 %.not115, label %._crit_edge196, label %.lr.ph195, !llvm.loop !118

._crit_edge196:                                   ; preds = %bb.dj, %finalCC.exit
  %i.abw = load ptr, ptr %i.am, align 8, !tbaa !17
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 160
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !38
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 16
  %i.aca = load ptr, ptr %i.ac, align 8, !tbaa !17
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 160
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !38
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.abz, ptr noundef nonnull align 8 dereferenceable(32) %i.acd, i64 32, i1 false), !tbaa.struct !161
  %.val32.i = load i64, ptr %i.ms, align 8, !tbaa !75
  %.not44.i = icmp eq i64 %.val32.i, 0
  br i1 %.not44.i, label %._crit_edge.i143, label %.lr.ph.i141

._crit_edge.i143:                                 ; preds = %.lr.ph.i141, %._crit_edge196
  %i.ace = load ptr, ptr %i.ac, align 8, !tbaa !17
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 160
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !38 ; 2 uses
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !142 ; 2 uses
  %.not.i144 = icmp eq ptr %i.ach, null
  br i1 %.not.i144, label %bb.dl, label %bb.dk

.lr.ph.i141:                                      ; preds = %._crit_edge196, %.lr.ph.i141
  %.02533.i = phi i64 [ %i.acp, %.lr.ph.i141 ], [ 0, %._crit_edge196 ] ; 2 uses
  %i.aci = load ptr, ptr %6, align 8, !tbaa !69
  %i.acj = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.02533.i) #18
  %i.ack = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %i.acj
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !70 ; 2 uses
  %i.acm = getelementptr i8, ptr %i.acl, i64 16
  %.val31.i = load ptr, ptr %i.acm, align 8, !tbaa !17
  %i.acn = getelementptr i8, ptr %.val31.i, i64 160
  %.val31.val.i = load ptr, ptr %i.acn, align 8, !tbaa !38
  call void @free(ptr noundef %.val31.val.i) #18
  %i.aco = call i32 @agdelrec(ptr noundef %i.acl, ptr noundef nonnull @.str.3) #18 ; 0 uses
  %i.acp = add nuw i64 %.02533.i, 1               ; 2 uses
  %.val.i142 = load i64, ptr %i.ms, align 8, !tbaa !75
  %i.acq = icmp ult i64 %i.acp, %.val.i142
  br i1 %i.acq, label %.lr.ph.i141, label %._crit_edge.i143, !llvm.loop !119

bb.dk:                                            ; preds = %._crit_edge.i143
  call void @free(ptr noundef nonnull %i.ach) #18
  %.val30.pre.i = load ptr, ptr %i.ac, align 8, !tbaa !17
  %.phi.trans.insert.i = getelementptr i8, ptr %.val30.pre.i, i64 160
  %.val30.val.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !38
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %._crit_edge.i143
  %.val30.val.i.a = phi ptr [ %.val30.val.pre.i, %bb.dk ], [ %i.acg, %._crit_edge.i143 ]
  call void @free(ptr noundef %.val30.val.i.a) #18
  %i.acr = call i32 @agdelrec(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.3) #18 ; 0 uses
  %i.acs = call ptr @agfstnode(ptr noundef nonnull %i.w) #18 ; 2 uses
  %.not2839.i = icmp eq ptr %i.acs, null
  br i1 %.not2839.i, label %freeDerivedGraph.exit, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %bb.dl, %._crit_edge38.i
  %.040.i = phi ptr [ %i.act, %._crit_edge38.i ], [ %i.acs, %bb.dl ] ; 4 uses
  %i.act = call ptr @agnxtnode(ptr noundef nonnull %i.w, ptr noundef nonnull %.040.i) #18 ; 2 uses
  %i.acu = call ptr @agfstout(ptr noundef nonnull %i.w, ptr noundef nonnull %.040.i) #18 ; 2 uses
  %.not2934.i = icmp eq ptr %i.acu, null
  br i1 %.not2934.i, label %._crit_edge38.i, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.lr.ph42.i, %.lr.ph37.i
  %.02635.i = phi ptr [ %i.ada, %.lr.ph37.i ], [ %i.acu, %.lr.ph42.i ] ; 3 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %.02635.i, i64 16
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !17
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 232
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !138
  call void @free(ptr noundef %i.acy) #18
  %i.acz = call i32 @agdelrec(ptr noundef nonnull %.02635.i, ptr noundef nonnull @.str.15) #18 ; 0 uses
  %i.ada = call ptr @agnxtout(ptr noundef nonnull %i.w, ptr noundef nonnull %.02635.i) #18 ; 2 uses
  %.not29.i = icmp eq ptr %i.ada, null
  br i1 %.not29.i, label %._crit_edge38.i, label %.lr.ph37.i, !llvm.loop !120

._crit_edge38.i:                                  ; preds = %.lr.ph37.i, %.lr.ph42.i
  %i.adb = getelementptr inbounds nuw i8, ptr %.040.i, i64 16 ; 2 uses
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !17
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 152
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !79
  call void @free(ptr noundef %i.ade) #18
  %i.adf = load ptr, ptr %i.adb, align 8, !tbaa !17
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 176
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !61
  call void @free(ptr noundef %i.adh) #18
  %i.adi = call i32 @agdelrec(ptr noundef nonnull %.040.i, ptr noundef nonnull @.str.16) #18 ; 0 uses
  %.not28.i = icmp eq ptr %i.act, null
  br i1 %.not28.i, label %freeDerivedGraph.exit, label %.lr.ph42.i, !llvm.loop !121

freeDerivedGraph.exit:                            ; preds = %._crit_edge38.i, %bb.dl
  %i.adj = call i32 @agclose(ptr noundef nonnull %i.w) #18 ; 0 uses
  %.val197 = load i64, ptr %i.ms, align 8, !tbaa !75
  %.not201 = icmp eq i64 %.val197, 0
  br i1 %.not201, label %._crit_edge200, label %.lr.ph199

.lr.ph199:                                        ; preds = %freeDerivedGraph.exit
  %i.adk = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.dm

._crit_edge200:                                   ; preds = %bb.dp, %freeDerivedGraph.exit
  call void @gv_list_clear_(ptr noundef nonnull %6, i64 noundef 8) #18
  call void @gv_list_free_(ptr noundef nonnull %6) #18
  %i.adl = load i8, ptr @Verbose, align 1, !tbaa !69
  %.not116 = icmp eq i8 %i.adl, 0
  br i1 %.not116, label %.critedge.thread150, label %bb.dq

bb.dm:                                            ; preds = %.lr.ph199, %bb.dp
  %.093198 = phi i64 [ 0, %.lr.ph199 ], [ %i.adt, %bb.dp ] ; 2 uses
  %i.adm = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.093198) #18 ; 2 uses
  %i.adn = load ptr, ptr %i.adk, align 8, !tbaa !77 ; 2 uses
  %magicptr = ptrtoint ptr %i.adn to i64
  switch i64 %magicptr, label %bb.do [
    i64 1, label %bb.dn
    i64 0, label %bb.dp
  ]

bb.dn:                                            ; preds = %bb.dm
  %i.ado = load ptr, ptr %6, align 8, !tbaa !69
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.ado, i64 %i.adm
  %.0.copyload = load ptr, ptr %i.adp, align 8
  call void @free(ptr noundef %.0.copyload) #18
  br label %bb.dp

bb.do:                                            ; preds = %bb.dm
  %i.adq = load ptr, ptr %6, align 8, !tbaa !69
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %i.adq, i64 %i.adm
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !70
  call void %i.adn(ptr noundef %i.ads) #18
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dm, %bb.do, %bb.dn
  %i.adt = add nuw i64 %.093198, 1                ; 2 uses
  %.val = load i64, ptr %i.ms, align 8, !tbaa !75
  %i.adu = icmp ult i64 %i.adt, %.val
  br i1 %i.adu, label %bb.dm, label %._crit_edge200, !llvm.loop !122

bb.dq:                                            ; preds = %._crit_edge200
  %i.adv = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.adw = call ptr @agnameof(ptr noundef nonnull %0) #18
  %i.adx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adv, ptr noundef nonnull @.str.8, ptr noundef %i.adw) #20 ; 0 uses
  br label %.critedge.thread150

.critedge.thread150:                              ; preds = %expandCluster.exit, %expandCluster.exit.thread, %._crit_edge200, %bb.dq
  %.6 = phi i32 [ 0, %._crit_edge200 ], [ 0, %bb.dq ], [ -1, %expandCluster.exit.thread ], [ -1, %expandCluster.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.dr

bb.dr:                                            ; preds = %deriveGraph.exit.thread, %deriveGraph.exit, %.critedge.thread150
  %.7 = phi i32 [ %.6, %.critedge.thread150 ], [ -1, %deriveGraph.exit ], [ -1, %deriveGraph.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc void @evalPositions(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !9 ; 3 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %.loopexit.thread53, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @agfstnode(ptr noundef nonnull %0) #18 ; 2 uses
  %.not3639 = icmp eq ptr %i.g, null
  br i1 %.not3639, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.040 = phi ptr [ %i.p, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.040, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 336
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60
  %.not38 = icmp eq ptr %i.k, %0
  br i1 %.not38, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61   ; 2 uses
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !9
  %i.o = fadd <2 x double> %i.f, %i.n
  store <2 x double> %i.o, ptr %i.m, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.p = tail call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.040) #18 ; 2 uses
  %.not36 = icmp eq ptr %i.p, null
  br i1 %.not36, label %.loopexit, label %.lr.ph, !llvm.loop !162

.loopexit:                                        ; preds = %bb.d
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 236
  %i.s = load i32, ptr %i.r, align 4, !tbaa !76
  %.not3741 = icmp slt i32 %i.s, 1
  br i1 %.not3741, label %._crit_edge, label %.lr.ph43.split.preheader

.loopexit.thread53:                               ; preds = %bb.a
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 236
  %i.v = load i32, ptr %i.u, align 4, !tbaa !76
  %.not374154 = icmp slt i32 %i.v, 1
  br i1 %.not374154, label %._crit_edge, label %.lr.ph43.split.us

.loopexit.thread:                                 ; preds = %bb.b
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 236
  %i.y = load i32, ptr %i.x, align 4, !tbaa !76
  %.not374152 = icmp slt i32 %i.y, 1
  br i1 %.not374152, label %._crit_edge, label %.lr.ph43.split.preheader

.lr.ph43.split.preheader:                         ; preds = %.loopexit, %.loopexit.thread
  %.ph = phi ptr [ %i.w, %.loopexit.thread ], [ %i.q, %.loopexit ]
  br label %.lr.ph43.split

.lr.ph43.split.us:                                ; preds = %.loopexit.thread53, %.lr.ph43.split.us
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %.lr.ph43.split.us ], [ 1, %.loopexit.thread53 ] ; 3 uses
  %i.z = phi ptr [ %i.ae, %.lr.ph43.split.us ], [ %i.t, %.loopexit.thread53 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv46
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70
  tail call fastcc void @evalPositions(ptr noundef %i.ad, ptr noundef %1)
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 236
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !76
  %i.ah = sext i32 %i.ag to i64
  %.not37.us.not = icmp slt i64 %indvars.iv46, %i.ah
  br i1 %.not37.us.not, label %.lr.ph43.split.us, label %._crit_edge, !llvm.loop !163

.lr.ph43.split:                                   ; preds = %.lr.ph43.split.preheader, %.lr.ph43.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph43.split ], [ 1, %.lr.ph43.split.preheader ] ; 3 uses
  %i.ai = phi ptr [ %i.aw, %.lr.ph43.split ], [ %.ph, %.lr.ph43.split.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 240
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !78
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !70 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !9
  %i.at = fadd <2 x double> %i.f, %i.as
  store <2 x double> %i.at, ptr %i.ar, align 8, !tbaa !9
  %i.au = load <2 x double>, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !9
end_hunk_0
