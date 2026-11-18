Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot?download=true
inline.NumInlined: 2055
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN6ImPlot12Locator_TimeER12ImPlotTickerRK11ImPlotRangefbPFidPciPvES6_:bb.a
  %. = select i1 %i.gt, ptr %8, ptr %7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ec, ptr noundef nonnull align 8 dereferenceable(10) %., i64 10, i1 false), !tbaa.struct !538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.gu = load i32, ptr %i.ed, align 8, !tbaa !225
  %spec.select.i.i230 = call noundef i32 @llvm.usub.sat.i32(i32 %i.gu, i32 1) ; 2 uses
  %.sroa.01.0.copyload.i316 = load i64, ptr %i.ec, align 8, !tbaa !29 ; 2 uses
  %.sroa.22.0.copyload.i318 = load i32, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.012.0.extract.trunc.i.i319 = trunc i64 %.sroa.01.0.copyload.i316 to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i.i320 = lshr i64 %.sroa.01.0.copyload.i316, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i.i321 = trunc nuw i64 %.sroa.4.0.extract.shift.i.i320 to i32
  %.not.i.i322 = icmp eq i32 %.sroa.012.0.extract.trunc.i.i319, 0
  br i1 %.not.i.i322, label %bb.aa, label %.thread.i.i323

bb.aa:                                            ; preds = %_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit
  %.not16.i.i327 = icmp eq i64 %.sroa.4.0.extract.shift.i.i320, 0
  br i1 %.not16.i.i327, label %_ZN6ImPlotL14Formatter_TimeEdPciPv.exit328, label %bb.ac

.thread.i.i323:                                   ; preds = %_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit
  %i.gv = trunc i32 %.sroa.22.0.copyload.i318 to i1
  %i.gw = call noundef i32 @_ZN6ImPlot10FormatDateERK10ImPlotTimePciib(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull %i.c, i32 noundef 32, i32 noundef %.sroa.012.0.extract.trunc.i.i319, i1 noundef zeroext %i.gv) ; 2 uses
  %.not1618.i.i324 = icmp eq i64 %.sroa.4.0.extract.shift.i.i320, 0
  br i1 %.not1618.i.i324, label %_ZN6ImPlotL14Formatter_TimeEdPciPv.exit328, label %bb.ab

bb.ab:                                            ; preds = %.thread.i.i323
  %i.gx = add nsw i32 %i.gw, 1
  %i.gy = sext i32 %i.gw to i64
  %i.gz = getelementptr inbounds i8, ptr %i.c, i64 %i.gy
  store i8 32, ptr %i.gz, align 1, !tbaa !170
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.i.i325 = phi i32 [ %i.gx, %bb.ab ], [ 0, %bb.aa ] ; 2 uses
  %i.ha = sext i32 %.1.i.i325 to i64
  %i.hb = getelementptr inbounds i8, ptr %i.c, i64 %i.ha
  %i.hc = sub nsw i32 32, %.1.i.i325
  %i.hd = and i32 %.sroa.22.0.copyload.i318, 256
  %i.he = icmp ne i32 %i.hd, 0
  %i.hf = call noundef i32 @_ZN6ImPlot10FormatTimeERK10ImPlotTimePciib(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull %i.hb, i32 noundef %i.hc, i32 noundef %.sroa.4.0.extract.trunc.i.i321, i1 noundef zeroext %i.he) ; 0 uses
  br label %_ZN6ImPlotL14Formatter_TimeEdPciPv.exit328

_ZN6ImPlotL14Formatter_TimeEdPciPv.exit328:       ; preds = %bb.aa, %.thread.i.i323, %bb.ac
  %i.hg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #33
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull %i.c, ptr noundef nonnull %i.hi) #32
  %i.hj = load ptr, ptr %i.ee, align 8, !tbaa !270
  %i.hk = sext i32 %spec.select.i.i230 to i64
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 %i.hk
  %i.hm = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.hl, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #32 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %i.hn = load <2 x float>, ptr %i.ef, align 8, !tbaa !41 ; 2 uses
  %i.ho = fcmp ogt <2 x float> %i.hm, %i.hn
  %i.hp = select <2 x i1> %i.ho, <2 x float> %i.hm, <2 x float> %i.hn
  store <2 x float> %i.hp, ptr %i.ef, align 8, !tbaa !41
  %i.hq = load i32, ptr %0, align 8, !tbaa !271   ; 7 uses
  %i.hr = load i32, ptr %i.eg, align 4, !tbaa !272
  %i.hs = icmp eq i32 %i.hq, %i.hr
  br i1 %i.hs, label %bb.ad, label %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i.i234

._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i.i234: ; preds = %_ZN6ImPlotL14Formatter_TimeEdPciPv.exit328
  %.pre.i.i.i236 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !273
  br label %_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit248

bb.ad:                                            ; preds = %_ZN6ImPlotL14Formatter_TimeEdPciPv.exit328
  %i.ht = add nsw i32 %i.hq, 1
  %.not.i.i.i.i244 = icmp eq i32 %i.hq, 0
  br i1 %.not.i.i.i.i244, label %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i.i245, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hu = sdiv i32 %i.hq, 2
  %i.hv = add nsw i32 %i.hu, %i.hq
  br label %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i.i245

_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i.i245: ; preds = %bb.ae, %bb.ad
  %i.hw = phi i32 [ %i.hv, %bb.ae ], [ 8, %bb.ad ]
  %i.hx = call noundef i32 @llvm.smax.i32(i32 %i.hw, i32 %i.ht) ; 2 uses
  %i.hy = sext i32 %i.hx to i64
  %i.hz = mul nsw i64 %i.hy, 40
  %i.ia = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.hz) #32 ; 3 uses
  %i.ib = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !273 ; 2 uses
  %.not6.i.i.i.i246 = icmp eq ptr %i.ib, null
  br i1 %.not6.i.i.i.i246, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i.i245
  %i.ic = load i32, ptr %0, align 8, !tbaa !271
  %i.id = sext i32 %i.ic to i64
  %i.ie = mul nsw i64 %i.id, 40
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ia, ptr nonnull align 8 %i.ib, i64 %i.ie, i1 false)
  %i.if = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !273
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.if) #32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i.i245
  store ptr %i.ia, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !273
  store i32 %i.hx, ptr %i.eg, align 4, !tbaa !272
  %.pre3.i.i.i247 = load i32, ptr %0, align 8, !tbaa !271
  br label %_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit248

_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit248: ; preds = %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i.i234, %bb.ag
  %i.ig = phi i32 [ %i.hq, %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i.i234 ], [ %.pre3.i.i.i247, %bb.ag ]
  %i.ih = phi ptr [ %.pre.i.i.i236, %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i.i234 ], [ %i.ia, %bb.ag ]
  %i.ii = sext i32 %i.ig to i64
  %i.ij = getelementptr inbounds [40 x i8], ptr %i.ih, i64 %i.ii ; 8 uses
  store double %i.fa, ptr %i.ij, align 8
  %.sroa.415.0..sroa_idx.i237 = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store float 0.000000e+00, ptr %.sroa.415.0..sroa_idx.i237, align 8
  %.sroa.516.0..sroa_idx.i238 = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  store <2 x float> %i.hm, ptr %.sroa.516.0..sroa_idx.i238, align 4
  %.sroa.817.0..sroa_idx.i239 = getelementptr inbounds nuw i8, ptr %i.ij, i64 20
  store i32 %spec.select.i.i230, ptr %.sroa.817.0..sroa_idx.i239, align 4
  %.sroa.918.0..sroa_idx.i240 = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  store i8 1, ptr %.sroa.918.0..sroa_idx.i240, align 8
  %.sroa.10.0..sroa_idx.i241 = getelementptr inbounds nuw i8, ptr %i.ij, i64 25
  store i8 1, ptr %.sroa.10.0..sroa_idx.i241, align 1
  %.sroa.1320.0..sroa_idx.i242 = getelementptr inbounds nuw i8, ptr %i.ij, i64 28
  store i32 1, ptr %.sroa.1320.0..sroa_idx.i242, align 4
  %.sroa.1421.0..sroa_idx.i243 = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  store i32 %i.hq, ptr %.sroa.1421.0..sroa_idx.i243, align 8
  %i.ik = load i32, ptr %0, align 8, !tbaa !271
  %i.il = add nsw i32 %i.ik, 1                    ; 2 uses
  store i32 %i.il, ptr %0, align 8, !tbaa !271
  %i.im = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !273 ; 2 uses
  %i.in = sext i32 %i.il to i64
  %i.io = getelementptr [40 x i8], ptr %i.im, i64 %i.in ; 3 uses
  %i.ip = icmp sgt i32 %.0147396, -1
  br i1 %i.ip, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit248
  %i.iq = load ptr, ptr %i.ee, align 8, !tbaa !270 ; 2 uses
  %i.ir = getelementptr i8, ptr %i.io, i64 -8
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !539
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [40 x i8], ptr %i.im, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 20
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !292
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds i8, ptr %i.iq, i64 %i.ix ; 2 uses
  %i.iz = zext nneg i32 %.0147396 to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.iz ; 2 uses
  %i.jb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ja) #33 ; 2 uses
  %i.jc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.iy) #33 ; 2 uses
  %i.jd = call i64 @llvm.umin.i64(i64 %i.jb, i64 %i.jc)
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jb
  %i.jf = sub i64 0, %i.jd                        ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %i.je, i64 %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.jc
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 %i.jf
  %i.jj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jg, ptr noundef nonnull dereferenceable(1) %i.ji) #33
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jl = getelementptr i8, ptr %i.io, i64 -15
  store i8 0, ptr %i.jl, align 1, !tbaa !275
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit248
  %i.jm = getelementptr i8, ptr %i.io, i64 -20
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !292
  br label %bb.ak

bb.ak:                                            ; preds = %_ZgeRK10ImPlotTimeS1_.exit.thread, %bb.s, %bb.aj
  %.1 = phi i32 [ %i.jn, %bb.aj ], [ %.0147396, %_ZgeRK10ImPlotTimeS1_.exit.thread ], [ %.0147396, %bb.s ] ; 5 uses
  br i1 %i.eh, label %bb.al, label %bb.av

bb.al:                                            ; preds = %bb.ak
  %.val183 = load i64, ptr %9, align 8, !tbaa !288 ; 2 uses
  %.val184 = load i32, ptr %.sroa.298.0..sroa_idx, align 8 ; 2 uses
  %i.jo = icmp eq i64 %.val183, %.fca.0.extract53 ; 2 uses
  %i.jp = icmp slt i32 %.val184, %.fca.1.extract54
  %i.jq = icmp slt i64 %.val183, %.fca.0.extract53
  %i.jr = select i1 %i.jo, i1 %i.jp, i1 %i.jq
  %i.js = icmp eq i32 %.val184, %.fca.1.extract54
  %i.jt = select i1 %i.jo, i1 %i.js, i1 false
  %or.cond372 = select i1 %i.jr, i1 true, i1 %i.jt
  br i1 %or.cond372, label %_ZleRK10ImPlotTimeS1_.exit249.thread, label %bb.av

_ZleRK10ImPlotTimeS1_.exit249.thread:             ; preds = %bb.al
  %.val181 = load i64, ptr %10, align 8, !tbaa !288 ; 2 uses
  %.val182 = load i32, ptr %.sroa.294.0..sroa_idx, align 8 ; 2 uses
  %i.ju = icmp eq i64 %.fca.0.extract53390395, %.val181 ; 2 uses
  %i.jv = icmp slt i32 %.fca.1.extract54391394, %.val182
  %i.jw = icmp slt i64 %.fca.0.extract53390395, %.val181
  %i.jx = select i1 %i.ju, i1 %i.jv, i1 %i.jw
  %i.jy = icmp eq i32 %.fca.1.extract54391394, %.val182
  %i.jz = select i1 %i.ju, i1 %i.jy, i1 false
  %or.cond374 = select i1 %i.jx, i1 true, i1 %i.jz
  br i1 %or.cond374, label %_ZleRK10ImPlotTimeS1_.exit250.thread, label %bb.av

_ZleRK10ImPlotTimeS1_.exit250.thread:             ; preds = %_ZleRK10ImPlotTimeS1_.exit249.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.ka = call { i64, i32 } @_ZN6ImPlot7AddTimeERK10ImPlotTimeii(ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef %i.aa, i32 noundef %.0.i) ; 2 uses
  %.fca.0.extract45 = extractvalue { i64, i32 } %i.ka, 0 ; 4 uses
  store i64 %.fca.0.extract45, ptr %14, align 8
  %storemerge385 = extractvalue { i64, i32 } %i.ka, 1 ; 3 uses
  store i32 %storemerge385, ptr %.sroa.248.0..sroa_idx, align 8
  %i.kb = icmp eq i64 %.fca.0.extract45, %.fca.0.extract53
  %i.kc = icmp slt i32 %storemerge385, %.fca.1.extract54
  %i.kd = icmp slt i64 %.fca.0.extract45, %.fca.0.extract53
  %i.ke = select i1 %i.kb, i1 %i.kc, i1 %i.kd
  br i1 %i.ke, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZleRK10ImPlotTimeS1_.exit250.thread
  %.val165 = load i64, ptr %9, align 8, !tbaa !288 ; 2 uses
  %.val166 = load i32, ptr %.sroa.298.0..sroa_idx, align 8 ; 2 uses
  %.val177 = load i64, ptr %10, align 8           ; 2 uses
  %.val178 = load i32, ptr %.sroa.294.0..sroa_idx, align 8 ; 2 uses
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph, %bb.au
  %storemerge388 = phi i32 [ %storemerge385, %.lr.ph ], [ %storemerge, %bb.au ] ; 6 uses
  %.2387 = phi i32 [ %.1, %.lr.ph ], [ %.3, %bb.au ] ; 4 uses
  %.val384386 = phi i64 [ %.fca.0.extract45, %.lr.ph ], [ %.fca.0.extract31, %bb.au ] ; 6 uses
  %i.kf = sub i64 %.fca.0.extract53, %.val384386
  %i.kg = sub nsw i32 %.fca.1.extract54, %storemerge388 ; 2 uses
  %i.kh = sdiv i32 %i.kg, 1000000
  %i.ki = sext i32 %i.kh to i64
  %i.kj = add nsw i64 %i.kf, %i.ki
  %i.kk = srem i32 %i.kg, 1000000
  %i.kl = sitofp i64 %i.kj to double
  %i.km = sitofp i32 %i.kk to double
  %i.kn = fdiv double %i.km, 1.000000e+06
  %i.ko = fadd double %i.kn, %i.kl
  %i.kp = load double, ptr %i.f, align 8, !tbaa !276
  %i.kq = load double, ptr %1, align 8, !tbaa !269
  %i.kr = fsub double %i.kp, %i.kq
  %i.ks = fdiv double %i.ko, %i.kr
  %i.kt = fptrunc double %i.ks to float
  %i.ku = fmul float %2, %i.kt                    ; 2 uses
  %i.kv = icmp eq i64 %.val165, %.val384386       ; 2 uses
  %i.kw = icmp slt i32 %.val166, %storemerge388
  %i.kx = icmp slt i64 %.val165, %.val384386
  %i.ky = select i1 %i.kv, i1 %i.kw, i1 %i.kx
  %i.kz = icmp eq i32 %storemerge388, %.val166
  %i.la = select i1 %i.kv, i1 %i.kz, i1 false
  %or.cond376 = select i1 %i.ky, i1 true, i1 %i.la
  br i1 %or.cond376, label %_ZgeRK10ImPlotTimeS1_.exit253.thread, label %bb.au

_ZgeRK10ImPlotTimeS1_.exit253.thread:             ; preds = %.lr.ph.a
  %i.lb = icmp eq i64 %.val384386, %.val177       ; 2 uses
  %i.lc = icmp slt i32 %storemerge388, %.val178
  %i.ld = icmp slt i64 %.val384386, %.val177
  %i.le = select i1 %i.lb, i1 %i.lc, i1 %i.ld
  %i.lf = icmp eq i32 %storemerge388, %.val178
  %i.lg = select i1 %i.lb, i1 %i.lf, i1 false
  %or.cond378 = select i1 %i.le, i1 true, i1 %i.lg
  br i1 %or.cond378, label %_ZleRK10ImPlotTimeS1_.exit254.thread, label %bb.au

_ZleRK10ImPlotTimeS1_.exit254.thread:             ; preds = %_ZgeRK10ImPlotTimeS1_.exit253.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %14, i64 12, i1 false), !tbaa.struct !286
  store i64 %.sroa.03.0.copyload.i, ptr %i.ec, align 8, !tbaa !29
  store i16 %.sroa.2110.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !262
  %i.lh = sitofp i64 %.val384386 to double
  %i.li = sitofp i32 %storemerge388 to double
  %i.lj = fdiv double %i.li, 1.000000e+06
  %i.lk = fadd double %i.lj, %i.lh                ; 2 uses
  %i.ll = fcmp oge float %i.ku, %i.bz             ; 2 uses
  %i.lm = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_(ptr noundef nonnull align 8 dereferenceable(52) %0, double noundef %i.lk, i1 noundef zeroext false, i32 noundef 0, i1 noundef zeroext %i.ll, ptr noundef nonnull @_ZN6ImPlotL14Formatter_TimeEdPciPv, ptr noundef nonnull %11) ; 0 uses
  %i.ln = icmp slt i32 %.2387, 0
  %i.lo = fcmp oge float %i.ku, %i.ej
  %i.lp = and i1 %i.ln, %i.lo
  %or.cond401.not = and i1 %i.lp, %i.ll
  br i1 %or.cond401.not, label %bb.am, label %bb.au

bb.am:                                            ; preds = %_ZleRK10ImPlotTimeS1_.exit254.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %14, i64 12, i1 false), !tbaa.struct !286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ec, ptr noundef nonnull align 8 dereferenceable(10) %8, i64 10, i1 false), !tbaa.struct !538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.lq = load i32, ptr %i.ed, align 8, !tbaa !225
  %spec.select.i.i255 = call noundef i32 @llvm.usub.sat.i32(i32 %i.lq, i32 1) ; 2 uses
  %.sroa.01.0.copyload.i329 = load i64, ptr %i.ec, align 8, !tbaa !29 ; 2 uses
  %.sroa.22.0.copyload.i331 = load i32, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.012.0.extract.trunc.i.i332 = trunc i64 %.sroa.01.0.copyload.i329 to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i.i333 = lshr i64 %.sroa.01.0.copyload.i329, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i.i334 = trunc nuw i64 %.sroa.4.0.extract.shift.i.i333 to i32
  %.not.i.i335 = icmp eq i32 %.sroa.012.0.extract.trunc.i.i332, 0
  br i1 %.not.i.i335, label %bb.an, label %.thread.i.i336

bb.an:                                            ; preds = %bb.am
  %.not16.i.i340 = icmp eq i64 %.sroa.4.0.extract.shift.i.i333, 0
  br i1 %.not16.i.i340, label %_ZN6ImPlotL14Formatter_TimeEdPciPv.exit341, label %bb.ap

.thread.i.i336:                                   ; preds = %bb.am
  %i.lr = trunc i32 %.sroa.22.0.copyload.i331 to i1
  %i.ls = call noundef i32 @_ZN6ImPlot10FormatDateERK10ImPlotTimePciib(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull %i.b, i32 noundef 32, i32 noundef %.sroa.012.0.extract.trunc.i.i332, i1 noundef zeroext %i.lr) ; 2 uses
  %.not1618.i.i337 = icmp eq i64 %.sroa.4.0.extract.shift.i.i333, 0
  br i1 %.not1618.i.i337, label %_ZN6ImPlotL14Formatter_TimeEdPciPv.exit341, label %bb.ao

bb.ao:                                            ; preds = %.thread.i.i336
  %i.lt = add nsw i32 %i.ls, 1
  %i.lu = sext i32 %i.ls to i64
  %i.lv = getelementptr inbounds i8, ptr %i.b, i64 %i.lu
  store i8 32, ptr %i.lv, align 1, !tbaa !170
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.1.i.i338 = phi i32 [ %i.lt, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %i.lw = sext i32 %.1.i.i338 to i64
  %i.lx = getelementptr inbounds i8, ptr %i.b, i64 %i.lw
  %i.ly = sub nsw i32 32, %.1.i.i338
  %i.lz = and i32 %.sroa.22.0.copyload.i331, 256
  %i.ma = icmp ne i32 %i.lz, 0
  %i.mb = call noundef i32 @_ZN6ImPlot10FormatTimeERK10ImPlotTimePciib(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull %i.lx, i32 noundef %i.ly, i32 noundef %.sroa.4.0.extract.trunc.i.i334, i1 noundef zeroext %i.ma) ; 0 uses
  br label %_ZN6ImPlotL14Formatter_TimeEdPciPv.exit341

_ZN6ImPlotL14Formatter_TimeEdPciPv.exit341:       ; preds = %bb.an, %.thread.i.i336, %bb.ap
  %i.mc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #33
  %i.md = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 1
  call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull %i.b, ptr noundef nonnull %i.me) #32
  %i.mf = load ptr, ptr %i.ee, align 8, !tbaa !270
  %i.mg = sext i32 %spec.select.i.i255 to i64
  %i.mh = getelementptr inbounds i8, ptr %i.mf, i64 %i.mg
  %i.mi = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.mh, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #32 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.mj = load <2 x float>, ptr %i.ef, align 8, !tbaa !41 ; 2 uses
  %i.mk = fcmp ogt <2 x float> %i.mi, %i.mj
  %i.ml = select <2 x i1> %i.mk, <2 x float> %i.mi, <2 x float> %i.mj
  store <2 x float> %i.ml, ptr %i.ef, align 8, !tbaa !41
  %i.mm = load i32, ptr %0, align 8, !tbaa !271   ; 7 uses
  %i.mn = load i32, ptr %i.eg, align 4, !tbaa !272
  %i.mo = icmp eq i32 %i.mm, %i.mn
  br i1 %i.mo, label %bb.aq, label %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i.i259

._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i.i259: ; preds = %_ZN6ImPlotL14Formatter_TimeEdPciPv.exit341
  %.pre.i.i.i261 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !273
  br label %_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit273

bb.aq:                                            ; preds = %_ZN6ImPlotL14Formatter_TimeEdPciPv.exit341
  %i.mp = add nsw i32 %i.mm, 1
  %.not.i.i.i.i269 = icmp eq i32 %i.mm, 0
  br i1 %.not.i.i.i.i269, label %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i.i270, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mq = sdiv i32 %i.mm, 2
  %i.mr = add nsw i32 %i.mq, %i.mm
  br label %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i.i270

_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i.i270: ; preds = %bb.ar, %bb.aq
  %i.ms = phi i32 [ %i.mr, %bb.ar ], [ 8, %bb.aq ]
  %i.mt = call noundef i32 @llvm.smax.i32(i32 %i.ms, i32 %i.mp) ; 2 uses
  %i.mu = sext i32 %i.mt to i64
  %i.mv = mul nsw i64 %i.mu, 40
  %i.mw = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.mv) #32 ; 3 uses
  %i.mx = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !273 ; 2 uses
  %.not6.i.i.i.i271 = icmp eq ptr %i.mx, null
  br i1 %.not6.i.i.i.i271, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i.i270
  %i.my = load i32, ptr %0, align 8, !tbaa !271
  %i.mz = sext i32 %i.my to i64
  %i.na = mul nsw i64 %i.mz, 40
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.mw, ptr nonnull align 8 %i.mx, i64 %i.na, i1 false)
  %i.nb = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !273
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.nb) #32
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i.i270
  store ptr %i.mw, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !273
  store i32 %i.mt, ptr %i.eg, align 4, !tbaa !272
  %.pre3.i.i.i272 = load i32, ptr %0, align 8, !tbaa !271
  br label %_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit273

_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit273: ; preds = %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i.i259, %bb.at
  %i.nc = phi i32 [ %i.mm, %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i.i259 ], [ %.pre3.i.i.i272, %bb.at ]
  %i.nd = phi ptr [ %.pre.i.i.i261, %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i.i259 ], [ %i.mw, %bb.at ]
  %i.ne = sext i32 %i.nc to i64
  %i.nf = getelementptr inbounds [40 x i8], ptr %i.nd, i64 %i.ne ; 8 uses
  store double %i.lk, ptr %i.nf, align 8
  %.sroa.415.0..sroa_idx.i262 = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store float 0.000000e+00, ptr %.sroa.415.0..sroa_idx.i262, align 8
  %.sroa.516.0..sroa_idx.i263 = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  store <2 x float> %i.mi, ptr %.sroa.516.0..sroa_idx.i263, align 4
  %.sroa.817.0..sroa_idx.i264 = getelementptr inbounds nuw i8, ptr %i.nf, i64 20
  store i32 %spec.select.i.i255, ptr %.sroa.817.0..sroa_idx.i264, align 4
  %.sroa.918.0..sroa_idx.i265 = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  store i8 1, ptr %.sroa.918.0..sroa_idx.i265, align 8
  %.sroa.10.0..sroa_idx.i266 = getelementptr inbounds nuw i8, ptr %i.nf, i64 25
  store i8 1, ptr %.sroa.10.0..sroa_idx.i266, align 1
  %.sroa.1320.0..sroa_idx.i267 = getelementptr inbounds nuw i8, ptr %i.nf, i64 28
  store i32 1, ptr %.sroa.1320.0..sroa_idx.i267, align 4
  %.sroa.1421.0..sroa_idx.i268 = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  store i32 %i.mm, ptr %.sroa.1421.0..sroa_idx.i268, align 8
  %i.ng = load i32, ptr %0, align 8, !tbaa !271
  %i.nh = add nsw i32 %i.ng, 1                    ; 2 uses
  store i32 %i.nh, ptr %0, align 8, !tbaa !271
  %i.ni = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !273
  %i.nj = sext i32 %i.nh to i64
  %i.nk = getelementptr [40 x i8], ptr %i.ni, i64 %i.nj
  %i.nl = getelementptr i8, ptr %i.nk, i64 -20
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !292
  br label %bb.au

bb.au:                                            ; preds = %_ZgeRK10ImPlotTimeS1_.exit253.thread, %.lr.ph.a, %_ZleRK10ImPlotTimeS1_.exit254.thread, %_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit273
  %.3 = phi i32 [ %i.nm, %_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit273 ], [ %.2387, %_ZgeRK10ImPlotTimeS1_.exit253.thread ], [ %.2387, %.lr.ph.a ], [ %.2387, %_ZleRK10ImPlotTimeS1_.exit254.thread ] ; 2 uses
  %i.nn = call { i64, i32 } @_ZN6ImPlot7AddTimeERK10ImPlotTimeii(ptr noundef nonnull align 8 dereferenceable(12) %14, i32 noundef %i.aa, i32 noundef %.0.i) ; 2 uses
  %.fca.0.extract31 = extractvalue { i64, i32 } %i.nn, 0 ; 4 uses
  store i64 %.fca.0.extract31, ptr %14, align 8, !tbaa !285
  %storemerge = extractvalue { i64, i32 } %i.nn, 1 ; 3 uses
  store i32 %storemerge, ptr %.sroa.248.0..sroa_idx, align 8
  %i.no = icmp eq i64 %.fca.0.extract31, %.fca.0.extract53
  %i.np = icmp slt i32 %storemerge, %.fca.1.extract54
  %i.nq = icmp slt i64 %.fca.0.extract31, %.fca.0.extract53
  %i.nr = select i1 %i.no, i1 %i.np, i1 %i.nq
  br i1 %i.nr, label %.lr.ph.a, label %._crit_edge, !llvm.loop !531

._crit_edge:                                      ; preds = %bb.au, %_ZleRK10ImPlotTimeS1_.exit250.thread
  %.2.lcssa = phi i32 [ %.1, %_ZleRK10ImPlotTimeS1_.exit250.thread ], [ %.3, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.av

bb.av:                                            ; preds = %_ZleRK10ImPlotTimeS1_.exit249.thread, %bb.al, %._crit_edge, %bb.ak
  %.4 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %.1, %_ZleRK10ImPlotTimeS1_.exit249.thread ], [ %.1, %bb.al ], [ %.1, %bb.ak ]
  store i64 %.fca.0.extract53, ptr %12, align 8, !tbaa !285
  store i32 %.fca.1.extract54, ptr %.sroa.260.0..sroa_idx, align 8, !tbaa !29
  %.val157 = load i64, ptr %10, align 8, !tbaa !288 ; 2 uses
  %.val158 = load i32, ptr %.sroa.294.0..sroa_idx, align 8
  %i.ns = icmp eq i64 %.fca.0.extract53, %.val157
  %i.nt = icmp slt i32 %.fca.1.extract54, %.val158
  %i.nu = icmp slt i64 %.fca.0.extract53, %.val157
  %i.nv = select i1 %i.ns, i1 %i.nt, i1 %i.nu
  br i1 %i.nv, label %bb.s, label %._crit_edge398, !llvm.loop !532

._crit_edge398:                                   ; preds = %bb.av, %_ZN6ImPlot11GetTimeStepEii.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %.loopexit

_ZN6ImPlot14GetDateTimeFmtEPK18ImPlotDateTimeSpeci.exit282: ; preds = %_ZN6ImPlot14GetDateTimeFmtEPK18ImPlotDateTimeSpeci.exit222
  %i.nw = getelementptr inbounds nuw i8, ptr %i.af, i64 769
  %i.nx = load i16, ptr %i.nw, align 1            ; 2 uses
  %i.ny = zext i16 %i.nx to i32
  %i.nz = tail call noundef float @_ZN6ImPlot16GetDateTimeWidthE18ImPlotDateTimeSpec(i64 5, i32 %i.ny)
  %i.oa = fmul float %2, 5.000000e-01
  %i.ob = fdiv float %i.oa, %i.nz
  %i.oc = fptosi float %i.ob to i32
  %i.od = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 4 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 992 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i, label %bb.aw, label %_ZN6ImPlot8GetStyleEv.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN6ImPlot13ColormapScaleEPKcddRK6ImVec2S1_ii:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 424
  %i.x = load float, ptr %i.w, align 4, !tbaa !422 ; 3 uses
  %i.y = fcmp olt float %.sroa.0166.4.vec.extract174, %i.x
  br i1 %i.y, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !173
  %i.ab = fcmp olt float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0166.4.vec.insert = insertelement <2 x float> %i.v, float %i.x, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.0166.4.vec.extract171.pre-phi = phi float [ %i.x, %bb.k ], [ %.sroa.0166.4.vec.extract174, %bb.j ], [ %.sroa.0166.4.vec.extract174, %bb.i ] ; 3 uses
  %.sroa.0166.0 = phi <2 x float> [ %.sroa.0166.4.vec.insert, %bb.k ], [ %i.v, %bb.j ], [ %i.v, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.ac = fcmp olt double %1, %2
  %i.ad = select i1 %i.ac, double %1, double %2   ; 2 uses
  %i.ae = fcmp oge double %1, %2
  %i.af = select i1 %i.ae, double %1, double %2   ; 2 uses
  store double %i.ad, ptr %10, align 8, !tbaa !269
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.af, ptr %i.ag, align 8, !tbaa !276
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 120 ; 4 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !271
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  store i32 0, ptr %i.ai, align 8, !tbaa !186
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 160 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 152 ; 3 uses
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !41
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !41
  store i32 0, ptr %i.aj, align 8, !tbaa !41
  %.sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.j, i64 164
  store i32 0, ptr %.sroa_idx1.i, align 4, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  store i32 1, ptr %i.am, align 8, !tbaa !177
  call void @_ZN6ImPlot15Locator_DefaultER12ImPlotTickerRK11ImPlotRangefbPFidPciPvES6_(ptr noundef nonnull align 8 dereferenceable(52) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %10, float noundef %.sroa.0166.4.vec.extract171.pre-phi, i1 noundef zeroext true, ptr noundef nonnull @_ZN6ImPlotL17Formatter_DefaultEdPciPv, ptr noundef %4)
  %.sroa.0177.0.vec.extract = extractelement <2 x float> %.sroa.0177.0, i64 0 ; 2 uses
  %i.an = fcmp ogt float %.sroa.0177.0.vec.extract, 0.000000e+00 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 356
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !353 ; 5 uses
  %i.aq = load float, ptr %i.ak, align 8, !tbaa !720
  %i.ar = fadd float %i.ap, %i.aq
  %.sroa.0177.4.vec.extract = extractelement <2 x float> %.sroa.0177.0, i64 1
  %i.as = fadd float %.sroa.0177.4.vec.extract, %i.ap
  %i.at = select i1 %i.an, float %i.as, float 0.000000e+00
  %i.au = fadd float %i.ar, %i.at                 ; 3 uses
  %.sroa.0166.0.vec.extract = extractelement <2 x float> %.sroa.0166.0, i64 0 ; 4 uses
  %i.av = fcmp oeq float %.sroa.0166.0.vec.extract, 0.000000e+00
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = fadd float %i.au, 2.000000e+01
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 348
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !425
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float 2.000000e+00, float %i.aw)
  %.pre187 = extractelement <2 x float> %.sroa.0166.0, i64 1
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 348
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !425
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float 2.000000e+00, float %i.au)
  %i.bd = fsub float %.sroa.0166.0.vec.extract, %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 304
  %i.bf = load float, ptr %i.be, align 8, !tbaa !481 ; 2 uses
  %i.bg = fcmp olt float %i.bd, %i.bf
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.sroa.0166.4.vec.extract176.pre-phi = phi float [ %.sroa.0166.4.vec.extract171.pre-phi, %bb.n ], [ %.sroa.0166.4.vec.extract171.pre-phi, %bb.o ], [ %.pre187, %bb.m ] ; 2 uses
  %.sroa.0166.0.vec.extract169.pre-phi = phi float [ %.sroa.0166.0.vec.extract, %bb.n ], [ %.sroa.0166.0.vec.extract, %bb.o ], [ %i.az, %bb.m ]
  %.0133 = phi float [ %i.bd, %bb.n ], [ %i.bf, %bb.o ], [ 2.000000e+01, %bb.m ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !423 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.bk = load <2 x float>, ptr %i.bj, align 8, !tbaa !41 ; 3 uses
  %i.bl = insertelement <2 x float> poison, float %.sroa.0166.0.vec.extract169.pre-phi, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %.sroa.0166.4.vec.extract176.pre-phi, i64 1
  %i.bn = fadd <2 x float> %i.bm, %i.bk           ; 2 uses
  store <2 x float> %i.bk, ptr %11, align 8, !tbaa !41
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store <2 x float> %i.bn, ptr %i.bo, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.bp = fsub <2 x float> %i.bn, %i.bk
  store <2 x float> %i.bp, ptr %9, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %9, float noundef -1.000000e+00) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.bq = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %i.g, ptr noundef nonnull %11, i32 noundef 0) #32
  br i1 %i.bq, label %bb.q, label %bb.ak

bb.q:                                             ; preds = %bb.p
  %.sroa.044.0.copyload = load <2 x float>, ptr %11, align 8, !tbaa !41
  %.sroa.043.0.copyload = load <2 x float>, ptr %i.bo, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.br = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 3 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 520
  %.val.i.i.i = load float, ptr %i.bs, align 4, !tbaa !46
  %i.bt = fcmp oeq float %.val.i.i.i, -1.000000e+00
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 7) #32, !inline_history !0 ; 2 uses
  %.sroa.30.0..sroa_idx113.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit

bb.s:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 508
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 516
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit

_ZN6ImPlotL16GetStyleColorU32Ei.exit:             ; preds = %bb.r, %bb.s
  %.sroa.078.0.copyload92.i.pn.in = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %bb.s ]
  %.sroa.30.0.copyload114.i.pn.in = phi ptr [ %.sroa.30.0..sroa_idx113.i, %bb.r ], [ %.sroa.3.0..sroa_idx.i.i, %bb.s ]
  %.sroa.30.0.copyload114.i.pn = load <2 x float>, ptr %.sroa.30.0.copyload114.i.pn.in, align 4, !tbaa !41
  %.sroa.078.0.copyload92.i.pn = load <2 x float>, ptr %.sroa.078.0.copyload92.i.pn.in, align 4, !tbaa !41
  store <2 x float> %.sroa.078.0.copyload92.i.pn, ptr %8, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.30.0.copyload114.i.pn, ptr %i.bw, align 8
  %i.bx = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 3220
  %i.bz = load float, ptr %i.by, align 4, !tbaa !482
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.044.0.copyload, <2 x float> %.sroa.043.0.copyload, i32 noundef %i.bx, i1 noundef zeroext true, float noundef %i.bz) #32
  %i.ca = and i32 %5, 2
  %.not182 = icmp eq i32 %i.ca, 0                 ; 4 uses
  %i.cb = and i32 %5, 4
  %i.cc = icmp ne i32 %i.cb, 0                    ; 2 uses
  %i.cd = fcmp ogt double %1, %2
  %i.ce = select i1 %.not182, float 0.000000e+00, float %i.au
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 348 ; 2 uses
  %i.cg = load <2 x float>, ptr %11, align 8, !tbaa !41
  %i.ch = load <2 x float>, ptr %i.cf, align 4, !tbaa !41 ; 2 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 0
  %i.cj = fadd float %.0133, %i.ci
  %i.ck = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 0, i32 poison>
  %i.cl = insertelement <4 x float> %i.ck, float %.sroa.0166.4.vec.extract176.pre-phi, i64 0
  %i.cm = insertelement <4 x float> %i.cl, float %i.ce, i64 3 ; 3 uses
  %i.cn = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 poison>
  %i.co = insertelement <4 x float> %i.cn, float %i.cj, i64 3 ; 2 uses
  %i.cp = fsub <4 x float> %i.cm, %i.co
  %i.cq = fadd <4 x float> %i.cm, %i.co
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.cs = shufflevector <4 x float> %i.cm, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 3, i32 2>
  %i.ct = fadd <4 x float> %i.cs, %i.cr           ; 8 uses
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  store <2 x float> %i.cu, ptr %12, align 8, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store <2 x float> %i.cv, ptr %i.cw, align 8, !tbaa !41
  call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %i.bo, i1 noundef zeroext true) #32
  %i.cx = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00) #32 ; 2 uses
  %i.cy = xor i1 %i.cd, %i.cc                     ; 2 uses
  %i.cz = extractelement <4 x float> %i.ct, i64 0 ; 3 uses
  %i.da = extractelement <4 x float> %i.ct, i64 1 ; 3 uses
  %i.db = select i1 %i.cy, float %i.cz, float %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 848
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !222
  %i.de = sext i32 %i.n to i64                    ; 6 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !29
  %i.dh = getelementptr inbounds nuw i8, ptr %i.j, i64 816
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !224
  %i.dj = sext i32 %i.dg to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 832
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !222
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.de
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !29
  %i.dp = xor i1 %i.cc, true
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 944 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !226
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %i.de
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !262, !range !263, !noundef !264
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = xor i1 %i.du, true
  call void @_ZN6ImPlot14RenderColorBarEPKjiR10ImDrawListRK6ImRectbbb(ptr noundef %i.dk, i32 noundef %i.do, ptr noundef nonnull align 8 dereferenceable(224) %i.bi, ptr noundef nonnull align 4 dereferenceable(16) %12, i1 noundef zeroext true, i1 noundef zeroext %i.dp, i1 noundef zeroext %i.dv)
  %i.dw = load i32, ptr %i.ah, align 8, !tbaa !267
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6ImPlotL16GetStyleColorU32Ei.exit
  %i.dy = select i1 %i.cy, float %i.da, float %i.cz
  %i.dz = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  %i.ea = fptrunc double %i.af to float           ; 2 uses
  %i.eb = fptrunc double %i.ad to float
  %i.ec = fsub float %i.dy, %i.db
  %i.ed = fsub float %i.eb, %i.ea
  %i.ee = fsub double %2, %1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 896
  %i.eg = getelementptr inbounds nuw i8, ptr %i.j, i64 880
  %i.eh = getelementptr inbounds nuw i8, ptr %i.j, i64 864
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.ek = fadd <4 x float> %i.ct, <float -2.000000e+00, float 2.000000e+00, float 1.000000e+00, float -1.000000e+00> ; 4 uses
  %i.el = extractelement <4 x float> %i.ct, i64 2 ; 2 uses
  %i.em = fsub float %i.el, %i.ap
  %i.en = extractelement <4 x float> %i.ct, i64 3 ; 2 uses
  %i.eo = fadd float %i.ap, %i.en
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %17 = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.ep = extractelement <4 x float> %i.ek, i64 0
  %i.eq = extractelement <4 x float> %i.ek, i64 1
  %i.er = extractelement <4 x float> %i.ek, i64 2
  %i.es = extractelement <4 x float> %i.ek, i64 3
  br label %bb.t

._crit_edge:                                      ; preds = %bb.ac, %_ZN6ImPlotL16GetStyleColorU32Ei.exit
  br i1 %i.an, label %bb.ad, label %bb.ah

bb.t:                                             ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 4 uses
  %i.et = load ptr, ptr %i.dz, align 8, !tbaa !273
  %i.eu = getelementptr inbounds nuw [40 x i8], ptr %i.et, i64 %indvars.iv ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !332 ; 2 uses
  %i.ew = fptrunc double %i.ev to float
  %i.ex = fsub float %i.ew, %i.ea
  %i.ey = fmul float %i.ec, %i.ex
  %i.ez = fdiv float %i.ey, %i.ed
  %i.fa = fadd float %i.db, %i.ez                 ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !439, !range !263, !noundef !264
  %i.fd = trunc nuw i8 %i.fc to i1                ; 2 uses
  %.in.v = select i1 %i.fd, i64 304, i64 312
  %.in = getelementptr inbounds nuw i8, ptr %i.j, i64 %.in.v
  %i.fe = load float, ptr %.in, align 4, !tbaa !41 ; 2 uses
  %.in141.v = select i1 %i.fd, i64 320, i64 328
  %.in141 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.in141.v
  %i.ff = load float, ptr %.in141, align 4, !tbaa !41
  %i.fg = fsub double %i.ev, %1
  %i.fh = fdiv double %i.fg, %i.ee
  %i.fi = fptrunc double %i.fh to float           ; 2 uses
  %i.fj = load ptr, ptr %i.ef, align 8, !tbaa !222
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.de
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !29
  %i.fm = load ptr, ptr %i.eg, align 8, !tbaa !222
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.de
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !29 ; 3 uses
  %i.fp = load ptr, ptr %i.dq, align 8, !tbaa !226
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.de
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !262, !range !263, !noundef !264
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ft = sitofp i32 %i.fo to float
  %i.fu = fmul float %i.fi, %i.ft
  %i.fv = fptosi float %i.fu to i32               ; 2 uses
  %i.fw = add nsw i32 %i.fo, -1
  %i.fx = icmp slt i32 %i.fv, 0
  %i.fy = call i32 @llvm.smin.i32(i32 %i.fv, i32 range(i32 -2147483648, 2147483647) %i.fw)
  %i.fz = select i1 %i.fx, i32 0, i32 %i.fy
  br label %_ZNK18ImPlotColormapData9LerpTableEif.exit

bb.v:                                             ; preds = %bb.t
  %i.ga = add nsw i32 %i.fo, -1
  %i.gb = sitofp i32 %i.ga to float
  %i.gc = call float @llvm.fmuladd.f32(float %i.gb, float %i.fi, float 5.000000e-01)
  %i.gd = fptosi float %i.gc to i32
  br label %_ZNK18ImPlotColormapData9LerpTableEif.exit

_ZNK18ImPlotColormapData9LerpTableEif.exit:       ; preds = %bb.u, %bb.v
  %i.ge = phi i32 [ %i.fz, %bb.u ], [ %i.gd, %bb.v ]
  %i.gf = add nsw i32 %i.ge, %i.fl
  %i.gg = load ptr, ptr %i.eh, align 8, !tbaa !224
  %i.gh = sext i32 %i.gf to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !29
  %i.gk = call { <2 x float>, <2 x float> } @_ZN5ImGui23ColorConvertU32ToFloat4Ej(i32 noundef %i.gj) #32 ; 2 uses
  %i.gl = extractvalue { <2 x float>, <2 x float> } %i.gk, 0 ; 2 uses
  %i.gm = extractvalue { <2 x float>, <2 x float> } %i.gk, 1
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.gl, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.gl, i64 1
  %i.gn = fmul float %.sroa.0.4.vec.extract.i, 5.870000e-01
  %i.go = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float 2.990000e-01, float %i.gn)
  %.sroa.5.8.vec.extract.i = extractelement <2 x float> %i.gm, i64 0
  %i.gp = call float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract.i, float 1.140000e-01, float %i.go)
  %i.gq = fcmp ogt float %i.gp, 5.000000e-01
  %i.gr = select i1 %i.gq, i32 -16777216, i32 -1
  %i.gs = fcmp olt float %i.fa, %i.ep
  %i.gt = fcmp ogt float %i.fa, %i.eq
  %or.cond = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %_ZNK18ImPlotColormapData9LerpTableEif.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  br i1 %.not182, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store float %i.er, ptr %13, align 4, !tbaa !172
  store float %i.fa, ptr %i.ei, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.gu = fadd float %i.fe, %i.el
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  store float %i.es, ptr %13, align 4, !tbaa !172
  store float %i.fa, ptr %i.ei, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.gv = fsub float %i.en, %i.fe
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %storemerge = phi float [ %i.gu, %bb.x ], [ %i.gv, %bb.y ]
  store float %storemerge, ptr %14, align 4, !tbaa !172
  store float %i.fa, ptr %i.ej, align 4, !tbaa !173
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.bi, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef %i.gr, float noundef %i.ff) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNK18ImPlotColormapData9LerpTableEif.exit
  %.pre = load ptr, ptr %i.dz, align 8, !tbaa !273 ; 2 uses
  br i1 %.not182, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gw = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !436
  %i.gz = fsub float %i.em, %i.gy
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.ha = phi float [ %i.gz, %bb.ab ], [ %i.eo, %bb.aa ]
  %i.hb = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !438
  %i.he = fneg float %i.hd
  %i.hf = call float @llvm.fmuladd.f32(float %i.he, float 5.000000e-01, float %i.fa)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store float %i.ha, ptr %15, align 4, !tbaa !172
  store float %i.hf, ptr %16, align 4, !tbaa !173
  %i.hg = load ptr, ptr %17, align 8, !tbaa !270
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 20
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !292
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds i8, ptr %i.hg, i64 %i.hj
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.bi, ptr noundef nonnull align 4 dereferenceable(8) %15, i32 noundef %i.cx, ptr noundef %i.hk, ptr noundef null) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hl = load i32, ptr %i.ah, align 8, !tbaa !267
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next, %i.hm
  br i1 %i.hn, label %bb.t, label %._crit_edge, !llvm.loop !719

bb.ad:                                            ; preds = %._crit_edge
  br i1 %.not182, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ho = load float, ptr %11, align 8, !tbaa !244
  %i.hp = load float, ptr %i.cf, align 4, !tbaa !425
  %i.hq = fadd float %i.ho, %i.hp
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.hr = extractelement <4 x float> %i.ct, i64 3
  %i.hs = call float @llvm.fmuladd.f32(float %i.ap, float 2.000000e+00, float %i.hr)
  %i.ht = load float, ptr %i.ak, align 8, !tbaa !720
  %i.hu = fadd float %i.hs, %i.ht
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hv = phi float [ %i.hq, %bb.ae ], [ %i.hu, %bb.af ]
  %i.hw = fadd float %i.da, %i.cz
  %i.hx = fmul float %i.hw, 5.000000e-01
  %i.hy = call float @llvm.fmuladd.f32(float %.sroa.0177.0.vec.extract, float 5.000000e-01, float %i.hx)
  %i.hz = call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) #32
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.hv, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.hy, i64 1
  call void @_ZN6ImPlot15AddTextVerticalEP10ImDrawList6ImVec2jPKcS4_(ptr noundef nonnull %i.bi, <2 x float> %.sroa.0.4.vec.insert, i32 noundef %i.cx, ptr noundef %0, ptr noundef %i.hz)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.ia = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 3 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 552
  %.val.i.i.i150 = load float, ptr %i.ib, align 4, !tbaa !46
  %i.ic = fcmp oeq float %.val.i.i.i150, -1.000000e+00
  br i1 %i.ic, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.id = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 5) #32, !inline_history !0 ; 2 uses
  %.sroa.30.0..sroa_idx117.i = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit155

bb.aj:                                            ; preds = %bb.ah
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 540
  %.sroa.3.0..sroa_idx.i.i152 = getelementptr inbounds nuw i8, ptr %i.ia, i64 548
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit155

_ZN6ImPlotL16GetStyleColorU32Ei.exit155:          ; preds = %bb.ai, %bb.aj
  %.sroa.078.0.copyload94.i.pn.in = phi ptr [ %i.id, %bb.ai ], [ %i.ie, %bb.aj ]
  %.sroa.30.0.copyload118.i.pn.in = phi ptr [ %.sroa.30.0..sroa_idx117.i, %bb.ai ], [ %.sroa.3.0..sroa_idx.i.i152, %bb.aj ]
  %.sroa.30.0.copyload118.i.pn = load <2 x float>, ptr %.sroa.30.0.copyload118.i.pn.in, align 4, !tbaa !41
  %.sroa.078.0.copyload94.i.pn = load <2 x float>, ptr %.sroa.078.0.copyload94.i.pn.in, align 4, !tbaa !41
  store <2 x float> %.sroa.078.0.copyload94.i.pn, ptr %7, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.30.0.copyload118.i.pn, ptr %i.if, align 8
  %i.ig = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.bi, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %i.cw, i32 noundef %i.ig, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #32
  call void @_ZN5ImGui11PopClipRectEv() #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.p, %_ZN6ImPlotL16GetStyleColorU32Ei.exit155
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.al

bb.al:                                            ; preds = %bb.a, %bb.ak
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6ImPlot14ColormapSliderEPKcPfP6ImVec4S1_i(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.ImRect, align 8             ; 11 uses
  %6 = alloca %struct.ImVec4, align 16            ; 4 uses
  %i.a = load float, ptr %1, align 4, !tbaa !41   ; 3 uses
  %i.b = fcmp olt float %i.a, 0.000000e+00
  %i.c = fcmp ogt float %i.a, 1.000000e+00
  %i.d = select i1 %i.c, float 1.000000e+00, float %i.a
  %i.e = select i1 %i.b, float 0.000000e+00, float %i.d
  store float %i.e, ptr %1, align 4, !tbaa !41
  %i.f = load ptr, ptr @GImGui, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 5184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !228  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 209
  %i.j = load i8, ptr %i.i, align 1, !tbaa !416, !range !263, !noundef !264
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 9 uses
  %i.m = icmp eq i32 %4, -1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 764
  %i.o = load i32, ptr %i.n, align 4, !tbaa !490
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %i.o, %bb.c ], [ %4, %bb.b ]   ; 3 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 968
  %i.s = load i32, ptr %i.r, align 8, !tbaa !488
  %i.t = icmp slt i32 %i.p, %i.s
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.185) #32 ; 0 uses
  %.pre = load ptr, ptr @GImGui, align 8, !tbaa !48
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 5184
  %.pre44 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !228
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %.pre44, %bb.f ], [ %i.h, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 848
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !222
  %i.y = sext i32 %i.p to i64                     ; 9 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 816
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !224
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 832
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !222
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.y
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 944 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !226
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.y
  %i.am = load i8, ptr %i.al, align 1, !tbaa !262, !range !263, !noundef !264
  %i.an = trunc nuw i8 %i.am to i1                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 206
  store i8 1, ptr %i.ao, align 2, !tbaa !445
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 280
  %i.aq = xor i1 %i.an, true
  %i.ar = sext i1 %i.aq to i32
  %i.as = add i32 %i.ai, %i.ar                    ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  %i.au = sitofp i32 %i.as to float
  %i.av = load <2 x float>, ptr %i.ap, align 8, !tbaa !41 ; 3 uses
  %i.aw = tail call noundef float @_ZN5ImGui13CalcItemWidthEv() #32
  %i.ax = tail call noundef float @_ZN5ImGui14GetFrameHeightEv() #32
  %i.ay = extractelement <2 x float> %i.av, i64 0 ; 3 uses
  %i.az = fadd float %i.ay, %i.aw
  %i.ba = extractelement <2 x float> %i.av, i64 1
  %i.bb = fadd float %i.ba, %i.ax
  %i.bc = tail call noundef ptr @_ZN5ImGui17GetWindowDrawListEv() #32 ; 2 uses
  %i.bd = fsub float %i.az, %i.ay
  %i.be = fdiv float %i.bd, %i.au                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.bf = fadd float %i.ay, %i.be
  store <2 x float> %i.av, ptr %5, align 8, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store float %i.bf, ptr %i.bg, align 8, !tbaa !172
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.bb, ptr %i.bh, align 4, !tbaa !173
  br i1 %i.at, label %.lr.ph.i, label %_ZN6ImPlot14RenderColorBarEPKjiR10ImDrawListRK6ImRectbbb.exit

.lr.ph.i:                                         ; preds = %bb.g
  %wide.trip.count84.i = zext nneg i32 %i.as to i64 ; 2 uses
  br i1 %i.an, label %.lr.ph.split.split.i, label %.lr.ph.split.split.us.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.i, %.lr.ph.split.split.us.i
  %indvars.iv81.i = phi i64 [ %indvars.iv.next82.i, %.lr.ph.split.split.us.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv81.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !29 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !29 ; 2 uses
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.bc, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %i.bg, i32 noundef %i.bj, i32 noundef %i.bl, i32 noundef %i.bl, i32 noundef %i.bj) #32
  %i.bm = load float, ptr %5, align 8, !tbaa !244
  %i.bn = fadd float %i.be, %i.bm
  store float %i.bn, ptr %5, align 8, !tbaa !244
  %i.bo = load float, ptr %i.bg, align 8, !tbaa !245
  %i.bp = fadd float %i.be, %i.bo
  store float %i.bp, ptr %i.bg, align 8, !tbaa !245
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1 ; 2 uses
  %exitcond85.not.i = icmp eq i64 %indvars.iv.next82.i, %wide.trip.count84.i
  br i1 %exitcond85.not.i, label %_ZN6ImPlot14RenderColorBarEPKjiR10ImDrawListRK6ImRectbbb.exit, label %.lr.ph.split.split.us.i, !llvm.loop !13

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i, %.lr.ph.split.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.split.split.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !29 ; 4 uses
end_hunk_1
