Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlarrv?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dlarrv_:bb.a
  %i.go = getelementptr i8, ptr %i.gn, i64 -4
  store i32 %.07101022, ptr %i.go, align 4, !tbaa !33
  %i.gp = zext nneg i32 %i.gl to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.gp
  store i32 %.07101022, ptr %i.gq, align 4, !tbaa !33
  %i.gr = zext nneg i32 %.07051023 to i64         ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gr ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !35
  %i.gu = fadd double %i.cy, %i.gt                ; 2 uses
  store double %i.gu, ptr %i.gs, align 8, !tbaa !35
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.gr
  store double %i.gu, ptr %i.gv, align 8, !tbaa !35
  %i.gw = add nuw nsw i32 %.07051023, 1
  br label %bb.cb

bb.o:                                             ; preds = %bb.m
  %i.gx = zext nneg i32 %.07051023 to i64         ; 5 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.gx ; 6 uses
  call void @dcopy_(ptr noundef nonnull %i.p, ptr noundef nonnull %i.gy, ptr noundef nonnull @c__1, ptr noundef nonnull %i.gz, ptr noundef nonnull @c__1) #6
  %i.ha = load i32, ptr %i.p, align 4, !tbaa !33  ; 8 uses
  %.not797946 = icmp slt i32 %i.ha, 1
  br i1 %.not797946, label %._crit_edge950, label %iter.check1306

iter.check1306:                                   ; preds = %bb.o
  %i.hb = zext nneg i32 %.07051023 to i64
  %i.hc = add nuw i32 %i.ha, 1
  %wide.trip.count1064 = zext i32 %i.hc to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.ah, i64 %i.hb ; 3 uses
  %i.hd = zext nneg i32 %i.ha to i64              ; 5 uses
  %min.iters.check1288 = icmp ult i32 %i.ha, 4
  br i1 %min.iters.check1288, label %.lr.ph949.preheader, label %vector.main.loop.iter.check1289

vector.main.loop.iter.check1289:                  ; preds = %iter.check1306
  %min.iters.check1290 = icmp ult i32 %i.ha, 16
  br i1 %min.iters.check1290, label %vec.epilog.ph1310, label %vector.ph1291

vector.ph1291:                                    ; preds = %vector.main.loop.iter.check1289
  %i.he = and i64 %i.hd, 12
  %n.vec1292 = and i64 %i.hd, 2147483632          ; 4 uses
  %i.hf = or disjoint i64 %n.vec1292, 1
  %broadcast.splatinsert1293 = insertelement <4 x double> poison, double %i.cy, i64 0
  %broadcast.splat1294 = shufflevector <4 x double> %broadcast.splatinsert1293, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1291
  %index1296 = phi i64 [ 0, %vector.ph1291 ], [ %index.next1301, %vector.body1295 ] ; 2 uses
  %i.hg = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1296 ; 5 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 32     ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hg, i64 64     ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hg, i64 96     ; 2 uses
  %wide.load1297 = load <4 x double>, ptr %i.hg, align 8, !tbaa !35
  %wide.load1298 = load <4 x double>, ptr %i.hh, align 8, !tbaa !35
  %wide.load1299 = load <4 x double>, ptr %i.hi, align 8, !tbaa !35
  %wide.load1300 = load <4 x double>, ptr %i.hj, align 8, !tbaa !35
  %i.hk = fadd <4 x double> %broadcast.splat1294, %wide.load1297
  %i.hl = fadd <4 x double> %broadcast.splat1294, %wide.load1298
  %i.hm = fadd <4 x double> %broadcast.splat1294, %wide.load1299
  %i.hn = fadd <4 x double> %broadcast.splat1294, %wide.load1300
  store <4 x double> %i.hk, ptr %i.hg, align 8, !tbaa !35
  store <4 x double> %i.hl, ptr %i.hh, align 8, !tbaa !35
  store <4 x double> %i.hm, ptr %i.hi, align 8, !tbaa !35
  store <4 x double> %i.hn, ptr %i.hj, align 8, !tbaa !35
  %index.next1301 = add nuw i64 %index1296, 16    ; 2 uses
  %i.ho = icmp eq i64 %index.next1301, %n.vec1292
  br i1 %i.ho, label %middle.block1302, label %vector.body1295, !llvm.loop !10

middle.block1302:                                 ; preds = %vector.body1295
  %cmp.n1303 = icmp eq i64 %n.vec1292, %i.hd
  br i1 %cmp.n1303, label %.lr.ph1013, label %vec.epilog.iter.check1308

vec.epilog.iter.check1308:                        ; preds = %middle.block1302
  %min.epilog.iters.check1309 = icmp eq i64 %i.he, 0
  br i1 %min.epilog.iters.check1309, label %.lr.ph949.preheader, label %vec.epilog.ph1310, !prof !40

vec.epilog.ph1310:                                ; preds = %vector.main.loop.iter.check1289, %vec.epilog.iter.check1308
  %vec.epilog.resume.val1304 = phi i64 [ %n.vec1292, %vec.epilog.iter.check1308 ], [ 0, %vector.main.loop.iter.check1289 ]
  %n.vec1311 = and i64 %i.hd, 2147483644          ; 3 uses
  %i.hp = or disjoint i64 %n.vec1311, 1
  %broadcast.splatinsert1312 = insertelement <4 x double> poison, double %i.cy, i64 0
  %broadcast.splat1313 = shufflevector <4 x double> %broadcast.splatinsert1312, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1314

vec.epilog.vector.body1314:                       ; preds = %vec.epilog.vector.body1314, %vec.epilog.ph1310
  %index1315 = phi i64 [ %vec.epilog.resume.val1304, %vec.epilog.ph1310 ], [ %index.next1317, %vec.epilog.vector.body1314 ] ; 2 uses
  %i.hq = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1315 ; 2 uses
  %wide.load1316 = load <4 x double>, ptr %i.hq, align 8, !tbaa !35
  %i.hr = fadd <4 x double> %broadcast.splat1313, %wide.load1316
  store <4 x double> %i.hr, ptr %i.hq, align 8, !tbaa !35
  %index.next1317 = add nuw i64 %index1315, 4     ; 2 uses
  %i.hs = icmp eq i64 %index.next1317, %n.vec1311
  br i1 %i.hs, label %vec.epilog.middle.block1318, label %vec.epilog.vector.body1314, !llvm.loop !11

vec.epilog.middle.block1318:                      ; preds = %vec.epilog.vector.body1314
  %cmp.n1319 = icmp eq i64 %n.vec1311, %i.hd
  br i1 %cmp.n1319, label %.lr.ph1013, label %.lr.ph949.preheader

.lr.ph949.preheader:                              ; preds = %iter.check1306, %vec.epilog.iter.check1308, %vec.epilog.middle.block1318
  %indvars.iv1061.ph = phi i64 [ 1, %iter.check1306 ], [ %i.hf, %vec.epilog.iter.check1308 ], [ %i.hp, %vec.epilog.middle.block1318 ]
  br label %.lr.ph949

.lr.ph949:                                        ; preds = %.lr.ph949.preheader, %.lr.ph949
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %.lr.ph949 ], [ %indvars.iv1061.ph, %.lr.ph949.preheader ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1061
  %i.ht = getelementptr i8, ptr %gep, i64 -8      ; 2 uses
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !35
  %i.hv = fadd double %i.cy, %i.hu
  store double %i.hv, ptr %i.ht, align 8, !tbaa !35
  %indvars.iv.next1062 = add nuw nsw i64 %indvars.iv1061, 1 ; 2 uses
  %exitcond1065.not = icmp eq i64 %indvars.iv.next1062, %wide.trip.count1064
  br i1 %exitcond1065.not, label %.lr.ph1013, label %.lr.ph949, !llvm.loop !12

._crit_edge950:                                   ; preds = %bb.o
  store i32 1, ptr %i.ce, align 4, !tbaa !33
  store i32 %i.ha, ptr %i.cf, align 4, !tbaa !33
  br label %._crit_edge1014

.lr.ph1013:                                       ; preds = %.lr.ph949, %vec.epilog.middle.block1318, %middle.block1302
  store i32 1, ptr %i.ce, align 4, !tbaa !33
  store i32 %i.ha, ptr %i.cf, align 4, !tbaa !33
  %i.hw = sext i32 %.07101022 to i64              ; 7 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.hw ; 8 uses
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.hw ; 4 uses
  %i.hz = add nsw i32 %i.cv, -1
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.gx ; 4 uses
  %i.ib = add nsw i32 %.07101022, %i.be
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr [8 x i8], ptr %i.ar, i64 %i.ic
  %i.ie = getelementptr i8, ptr %i.id, i64 -8     ; 6 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.gx ; 5 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gx ; 6 uses
  %i.ih = add i32 %.07101022, %i.at
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.ii ; 3 uses
  %i.ik = zext nneg i32 %.07051023 to i64
  %invariant.gep1171 = getelementptr [8 x i8], ptr %i.aj, i64 %i.ik
  %i.il = add i32 %.07051023, -1                  ; 2 uses
  %i.im = add i32 %.07051023, -1
  %i.in = add i32 %.07051023, -1                  ; 2 uses
  %i.io = shl nsw i64 %i.hw, 3                    ; 4 uses
  %scevgep1238 = getelementptr i8, ptr %scevgep1237, i64 %i.io ; 2 uses
  %i.ip = add nsw i64 %i.cl, %i.cw
  %i.iq = shl nsw i64 %i.ip, 3
  %scevgep1240 = getelementptr i8, ptr %scevgep1239.a, i64 %i.iq ; 2 uses
  %scevgep1242 = getelementptr i8, ptr %scevgep1241.a, i64 %i.io ; 2 uses
  %i.ir = add nsw i64 %i.cm, %i.cw
  %i.is = shl nsw i64 %i.ir, 3
  %scevgep1244 = getelementptr i8, ptr %scevgep1243.a, i64 %i.is ; 2 uses
  %scevgep1246 = getelementptr i8, ptr %scevgep1245.a, i64 %i.io
  %i.it = shl nsw i64 %i.cw, 3                    ; 2 uses
  %scevgep1248 = getelementptr i8, ptr %scevgep1247.a, i64 %i.it
  %scevgep1250 = getelementptr i8, ptr %scevgep1249.a, i64 %i.io
  %scevgep1252 = getelementptr i8, ptr %scevgep1251.a, i64 %i.it
  %i.iu = insertelement <4 x ptr> poison, ptr %scevgep1238, i64 0
  %i.iv = insertelement <4 x ptr> %i.iu, ptr %scevgep1250, i64 1
  %i.iw = insertelement <4 x ptr> %i.iv, ptr %scevgep1242, i64 2 ; 2 uses
  %i.ix = shufflevector <4 x ptr> %i.iw, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.iy = insertelement <4 x ptr> poison, ptr %scevgep1248, i64 0
  %i.iz = insertelement <4 x ptr> %i.iy, ptr %scevgep1240, i64 1
  %i.ja = insertelement <4 x ptr> %i.iz, ptr %scevgep1244, i64 3 ; 2 uses
  %i.jb = shufflevector <4 x ptr> %i.ja, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.jc = shufflevector <4 x ptr> %i.iw, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.jd = insertelement <4 x ptr> %i.jc, ptr %scevgep1246, i64 0
  %i.je = shufflevector <4 x ptr> %i.jd, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.jf = shufflevector <4 x ptr> %i.ja, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.jg = insertelement <4 x ptr> %i.jf, ptr %scevgep1252, i64 1
  %i.jh = shufflevector <4 x ptr> %i.jg, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ji = sub nsw i64 %i.cw, %i.hw                ; 3 uses
  %min.iters.check1272 = icmp ult i64 %i.ji, 12
  %bound01253 = icmp ult ptr %scevgep1238, %scevgep1244
  %bound11254 = icmp ult ptr %scevgep1242, %scevgep1240
  %found.conflict1255 = and i1 %bound01253, %bound11254
  %i.jj = icmp ult <4 x ptr> %i.ix, %i.jb
  %i.jk = icmp ult <4 x ptr> %i.je, %i.jh
  %i.jl = and <4 x i1> %i.jk, %i.jj
  %i.jm = bitcast <4 x i1> %i.jl to i4
  %i.jn = icmp ne i4 %i.jm, 0
  %op.rdx = or i1 %i.jn, %found.conflict1255
  %n.vec1274 = and i64 %i.ji, -8                  ; 3 uses
  %i.jo = add nsw i64 %n.vec1274, %i.hw
  %cmp.n1285 = icmp eq i64 %i.ji, %n.vec1274
  %invariant.op1374 = add i32 2, %i.cz
  %invariant.op1376 = add i32 3, %i.cz
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph1013, %._crit_edge997
  %i.jp = phi i32 [ %i.ha, %.lr.ph1013 ], [ %i.afm, %._crit_edge997 ]
  %.11011 = phi double [ %.06851024, %.lr.ph1013 ], [ %.2.lcssa, %._crit_edge997 ] ; 2 uses
  %.06881010 = phi i32 [ 1, %.lr.ph1013 ], [ %i.js, %._crit_edge997 ] ; 2 uses
  %.06951009 = phi i32 [ 0, %.lr.ph1013 ], [ %i.afn, %._crit_edge997 ] ; 3 uses
  %.07171008 = phi i32 [ 1, %.lr.ph1013 ], [ %.1718.lcssa, %._crit_edge997 ] ; 2 uses
  %.07261007 = phi double [ %i.cy, %.lr.ph1013 ], [ %.1727.lcssa, %._crit_edge997 ] ; 2 uses
  %.07291006 = phi i32 [ 0, %.lr.ph1013 ], [ %.1730.lcssa, %._crit_edge997 ] ; 2 uses
  %.17461005 = phi double [ %.07451021, %.lr.ph1013 ], [ %.2747.lcssa, %._crit_edge997 ] ; 2 uses
  %i.jq = load i32, ptr %7, align 4, !tbaa !33
  %i.jr = icmp sgt i32 %.06951009, %i.jq
  br i1 %i.jr, label %.loopexit850.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.js = xor i32 %.06881010, 1
  %i.jt = icmp eq i32 %.06881010, 0               ; 2 uses
  %. = select i1 %i.jt, i32 %i.bd, i32 %i.at
  %.825 = select i1 %i.jt, i32 %i.at, i32 %i.bd
  %.not798987 = icmp slt i32 %.07171008, 1
  br i1 %.not798987, label %._crit_edge997, label %.lr.ph996

.lr.ph996:                                        ; preds = %bb.q
  %.not799 = icmp eq i32 %.06951009, 0            ; 2 uses
  %i.ju = add nuw i32 %.07171008, 1
  %wide.trip.count1097 = zext i32 %i.ju to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph996, %._crit_edge981
  %indvars.iv1094 = phi i64 [ 1, %.lr.ph996 ], [ %indvars.iv.next1095, %._crit_edge981 ] ; 2 uses
  %.2994 = phi double [ %.11011, %.lr.ph996 ], [ %.3.lcssa, %._crit_edge981 ] ; 2 uses
  %.1718993 = phi i32 [ 0, %.lr.ph996 ], [ %.2719.lcssa, %._crit_edge981 ] ; 2 uses
  %.1727992 = phi double [ %.07261007, %.lr.ph996 ], [ %.2728, %._crit_edge981 ]
  %.1730991 = phi i32 [ %.07291006, %.lr.ph996 ], [ %.2731.lcssa, %._crit_edge981 ] ; 2 uses
  %.2747989 = phi double [ %.17461005, %.lr.ph996 ], [ %.3748.lcssa, %._crit_edge981 ] ; 2 uses
  %indvars.iv1094.tr = trunc nuw i64 %indvars.iv1094 to i32
  %i.jv = shl nuw i32 %indvars.iv1094.tr, 1
  %i.jw = add nsw i32 %i.jv, %.
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr [4 x i8], ptr %i.as, i64 %i.jx ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 -4
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !33 ; 15 uses
  %i.kb = load i32, ptr %i.jy, align 4, !tbaa !33 ; 12 uses
  br i1 %.not799, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kc = load i32, ptr %8, align 4, !tbaa !33    ; 3 uses
  %i.kd = icmp eq i32 %i.kc, 1
  br i1 %i.kd, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ke = load i32, ptr %9, align 4, !tbaa !33
  %i.kf = load i32, ptr %7, align 4, !tbaa !33
  %i.kg = icmp eq i32 %i.ke, %i.kf
  br i1 %i.kg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kh = add i32 %i.cz, %i.ka
  br label %bb.y

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.ki = add nsw i32 %i.ka, %.07051023           ; 2 uses
  %.not800 = icmp sgt i32 %i.ki, %i.kc
  br i1 %.not800, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kj = add nsw i32 %i.kc, -1
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.kk = add nsw i32 %i.ki, -1
  %i.kl = load i32, ptr %9, align 4, !tbaa !33
  %.826 = call i32 @llvm.smin.i32(i32 %i.kk, i32 %i.kl)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.0736 = phi i32 [ %i.kh, %bb.u ], [ %i.kj, %bb.w ], [ %.826, %bb.x ] ; 2 uses
  %i.km = mul nsw i32 %.0736, %i.an
  %i.kn = add nsw i32 %i.km, %.07101022
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ko ; 2 uses
  call void @dcopy_(ptr noundef nonnull %i.q, ptr noundef %i.kp, ptr noundef nonnull @c__1, ptr noundef nonnull %i.hx, ptr noundef nonnull @c__1) #6
  %i.kq = load i32, ptr %i.q, align 4, !tbaa !33
  %i.kr = add nsw i32 %i.kq, -1
  store i32 %i.kr, ptr %i.c, align 4, !tbaa !33
  %i.ks = add nsw i32 %.0736, 1
  %i.kt = mul nsw i32 %i.ks, %i.an                ; 2 uses
  %i.ku = add nsw i32 %i.kt, %.07101022
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.kv
  call void @dcopy_(ptr noundef nonnull %i.c, ptr noundef %i.kw, ptr noundef nonnull @c__1, ptr noundef nonnull %i.hy, ptr noundef nonnull @c__1) #6
  %i.kx = add nsw i32 %i.kt, %i.cv
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !35
  call void @dlaset_(ptr noundef nonnull @.str, ptr noundef nonnull %i.q, ptr noundef nonnull @c__2, ptr noundef nonnull @c_b5, ptr noundef nonnull @c_b5, ptr noundef %i.kp, ptr noundef nonnull %20) #6
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.r
  %.2728 = phi double [ %i.la, %bb.y ], [ %.1727992, %bb.r ] ; 12 uses
  store i32 %i.hz, ptr %i.c, align 4, !tbaa !33
  br i1 %.not796.not940, label %.lr.ph954.preheader, label %._crit_edge955

.lr.ph954.preheader:                              ; preds = %bb.z
  %brmerge = select i1 %min.iters.check1272, i1 true, i1 %op.rdx
  br i1 %brmerge, label %.lr.ph954.preheader1325, label %vector.body1275

vector.body1275:                                  ; preds = %.lr.ph954.preheader, %vector.body1275
  %index1276 = phi i64 [ %index.next1283, %vector.body1275 ], [ 0, %.lr.ph954.preheader ] ; 2 uses
  %i.lb = add i64 %index1276, %i.hw               ; 4 uses
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.lb ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %wide.load1277 = load <4 x double>, ptr %i.lc, align 8, !tbaa !35, !alias.scope !41
  %wide.load1278 = load <4 x double>, ptr %i.ld, align 8, !tbaa !35, !alias.scope !41
  %i.le = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.lb ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32 ; 2 uses
  %wide.load1279 = load <4 x double>, ptr %i.le, align 8, !tbaa !35, !alias.scope !42
  %wide.load1280 = load <4 x double>, ptr %i.lf, align 8, !tbaa !35, !alias.scope !42
  %i.lg = fmul <4 x double> %wide.load1277, %wide.load1279 ; 2 uses
  %i.lh = fmul <4 x double> %wide.load1278, %wide.load1280 ; 2 uses
  %i.li = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %i.lb ; 2 uses
  %i.lj = getelementptr i8, ptr %i.li, i64 32
  store <4 x double> %i.lg, ptr %i.li, align 8, !tbaa !35, !alias.scope !43, !noalias !44
  store <4 x double> %i.lh, ptr %i.lj, align 8, !tbaa !35, !alias.scope !43, !noalias !44
  %wide.load1281 = load <4 x double>, ptr %i.le, align 8, !tbaa !35, !alias.scope !42
  %wide.load1282 = load <4 x double>, ptr %i.lf, align 8, !tbaa !35, !alias.scope !42
  %i.lk = fmul <4 x double> %i.lg, %wide.load1281
  %i.ll = fmul <4 x double> %i.lh, %wide.load1282
  %i.lm = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %i.lb ; 2 uses
  %i.ln = getelementptr i8, ptr %i.lm, i64 32
  store <4 x double> %i.lk, ptr %i.lm, align 8, !tbaa !35, !alias.scope !45, !noalias !46
  store <4 x double> %i.ll, ptr %i.ln, align 8, !tbaa !35, !alias.scope !45, !noalias !46
  %index.next1283 = add nuw i64 %index1276, 8     ; 2 uses
  %i.lo = icmp eq i64 %index.next1283, %n.vec1274
  br i1 %i.lo, label %middle.block1284, label %vector.body1275, !llvm.loop !18

middle.block1284:                                 ; preds = %vector.body1275
  br i1 %cmp.n1285, label %._crit_edge955, label %.lr.ph954.preheader1325

.lr.ph954.preheader1325:                          ; preds = %.lr.ph954.preheader, %middle.block1284
  %indvars.iv1066.ph = phi i64 [ %i.jo, %middle.block1284 ], [ %i.hw, %.lr.ph954.preheader ] ; 4 uses
  %i.lp = sub nsw i64 %i.cw, %indvars.iv1066.ph
  %xtraiter1344 = and i64 %i.lp, 3                ; 2 uses
  %lcmp.mod1345.not = icmp eq i64 %xtraiter1344, 0
  br i1 %lcmp.mod1345.not, label %.lr.ph954.prol.loopexit, label %.lr.ph954.prol

.lr.ph954.prol:                                   ; preds = %.lr.ph954.preheader1325, %.lr.ph954.prol
  %indvars.iv1066.prol = phi i64 [ %indvars.iv.next1067.prol, %.lr.ph954.prol ], [ %indvars.iv1066.ph, %.lr.ph954.preheader1325 ] ; 5 uses
  %prol.iter1346 = phi i64 [ %prol.iter1346.next, %.lr.ph954.prol ], [ 0, %.lr.ph954.preheader1325 ]
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv1066.prol
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !35
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.af, i64 %indvars.iv1066.prol ; 2 uses
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !35
  %i.lu = fmul double %i.lr, %i.lt                ; 2 uses
  %gep1168.prol = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %indvars.iv1066.prol
  store double %i.lu, ptr %gep1168.prol, align 8, !tbaa !35
  %i.lv = load double, ptr %i.ls, align 8, !tbaa !35
  %i.lw = fmul double %i.lu, %i.lv
  %gep1170.prol = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %indvars.iv1066.prol
  store double %i.lw, ptr %gep1170.prol, align 8, !tbaa !35
  %indvars.iv.next1067.prol = add nsw i64 %indvars.iv1066.prol, 1 ; 2 uses
  %prol.iter1346.next = add i64 %prol.iter1346, 1 ; 2 uses
  %prol.iter1346.cmp.not = icmp eq i64 %prol.iter1346.next, %xtraiter1344
  br i1 %prol.iter1346.cmp.not, label %.lr.ph954.prol.loopexit, label %.lr.ph954.prol, !llvm.loop !19

.lr.ph954.prol.loopexit:                          ; preds = %.lr.ph954.prol, %.lr.ph954.preheader1325
  %indvars.iv1066.unr = phi i64 [ %indvars.iv1066.ph, %.lr.ph954.preheader1325 ], [ %indvars.iv.next1067.prol, %.lr.ph954.prol ]
  %i.lx = sub nsw i64 %indvars.iv1066.ph, %i.cw
  %i.ly = icmp ugt i64 %i.lx, -4
  br i1 %i.ly, label %._crit_edge955, label %.lr.ph954

.lr.ph954:                                        ; preds = %.lr.ph954.prol.loopexit, %.lr.ph954
  %indvars.iv1066 = phi i64 [ %indvars.iv.next1067.3, %.lr.ph954 ], [ %indvars.iv1066.unr, %.lr.ph954.prol.loopexit ] ; 10 uses
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv1066
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !35
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.af, i64 %indvars.iv1066 ; 2 uses
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !35
  %i.md = fmul double %i.ma, %i.mc                ; 2 uses
  %gep1168 = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %indvars.iv1066
  store double %i.md, ptr %gep1168, align 8, !tbaa !35
  %i.me = load double, ptr %i.mb, align 8, !tbaa !35
  %i.mf = fmul double %i.md, %i.me
  %gep1170 = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %indvars.iv1066
  store double %i.mf, ptr %gep1170, align 8, !tbaa !35
  %indvars.iv.next1067 = add nsw i64 %indvars.iv1066, 1 ; 2 uses
  %i.mg = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1066
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !35
  %i.mi = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1066 ; 2 uses
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !35
  %i.mk = fmul double %i.mh, %i.mj                ; 2 uses
  %gep1168.1 = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %indvars.iv.next1067
  store double %i.mk, ptr %gep1168.1, align 8, !tbaa !35
  %i.ml = load double, ptr %i.mi, align 8, !tbaa !35
  %i.mm = fmul double %i.mk, %i.ml
  %gep1170.1 = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %indvars.iv.next1067
  store double %i.mm, ptr %gep1170.1, align 8, !tbaa !35
  %indvars.iv.next1067.1 = add nsw i64 %indvars.iv1066, 2 ; 4 uses
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv.next1067.1
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !35
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.af, i64 %indvars.iv.next1067.1 ; 2 uses
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !35
  %i.mr = fmul double %i.mo, %i.mq                ; 2 uses
  %gep1168.2 = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %indvars.iv.next1067.1
  store double %i.mr, ptr %gep1168.2, align 8, !tbaa !35
  %i.ms = load double, ptr %i.mp, align 8, !tbaa !35
  %i.mt = fmul double %i.mr, %i.ms
  %gep1170.2 = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %indvars.iv.next1067.1
  store double %i.mt, ptr %gep1170.2, align 8, !tbaa !35
  %indvars.iv.next1067.2 = add nsw i64 %indvars.iv1066, 3 ; 4 uses
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv.next1067.2
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !35
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.af, i64 %indvars.iv.next1067.2 ; 2 uses
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !35
  %i.my = fmul double %i.mv, %i.mx                ; 2 uses
  %gep1168.3 = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %indvars.iv.next1067.2
  store double %i.my, ptr %gep1168.3, align 8, !tbaa !35
  %i.mz = load double, ptr %i.mw, align 8, !tbaa !35
  %i.na = fmul double %i.my, %i.mz
  %gep1170.3 = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %indvars.iv.next1067.2
end_hunk_0
