Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/md_support?download=true
inline.NumInlined: 480
inline.NumDeleted: 250
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z15compute_globalsP15gmx_global_statRKN3gmx7MpiCommEPK10t_inputrecP10t_forcerecP14gmx_ekindata_tNS1_8ArrayRefIKNS1_11BasicVectorIfEEEESG_PA3_KfPK9t_mdatomsP6t_nrnbP5t_vcmP13gmx_wallcycleP14gmx_enerdata_tPA3_fSW_SW_SW_PNS1_19SimulationSignallerESJ_PbilPNS1_18ObservablesReducerE:bb.a
  store ptr %i.aaq, ptr %27, align 8, !tbaa !389
  %i.acc = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.acd = ptrtoint ptr %i.aar to i64
  %i.ace = ptrtoint ptr %i.aaq to i64
  %i.acf = sub i64 %i.acd, %i.ace
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.acf
  store ptr %i.acg, ptr %i.acc, align 8, !tbaa !389
  %i.ach = load i8, ptr %19, align 1, !tbaa !201, !range !137, !noundef !138
  %i.aci = trunc nuw i8 %i.ach to i1
  %i.acj = select i1 %i.aci, i1 %i.ah, i1 false
  call void @_Z11global_statRK15gmx_global_statRKN3gmx7MpiCommEP14gmx_enerdata_tPA3_fS9_RK10t_inputrecP14gmx_ekindata_tP5t_vcmNS2_8ArrayRefIfEEbilPNS2_18ObservablesReducerE(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(888) %2, ptr noundef %4, ptr noundef %i.acb, ptr noundef nonnull byval(%"class.gmx::ArrayRef.202") align 8 %27, i1 noundef zeroext %i.acj, i32 noundef %20, i64 noundef %21, ptr noundef %22)
  br i1 %i.aav, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit141.thread, label %bb.am

bb.am:                                            ; preds = %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit137
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %11)
  %i.ack = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !243 ; 2 uses
  %i.acl = extractvalue { i32, i32 } %i.ack, 0
  %i.acm = extractvalue { i32, i32 } %i.ack, 1
  %i.acn = zext i32 %i.acl to i64
  %i.aco = zext i32 %i.acm to i64
  %i.acp = shl nuw i64 %i.aco, 32
  %i.acq = or disjoint i64 %i.acp, %i.acn         ; 3 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %11, i64 1248 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %11, i64 1264
  %i.act = load i64, ptr %i.acs, align 8, !tbaa !246 ; 2 uses
  %.not.i138 = icmp ult i64 %i.acq, %i.act
  br i1 %.not.i138, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.acu = sub nuw i64 %i.acq, %i.act
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.acv = getelementptr inbounds nuw i8, ptr %11, i64 2624
  store i8 1, ptr %i.acv, align 8, !tbaa !388
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0.i139 = phi i64 [ %i.acu, %bb.an ], [ 0, %bb.ao ]
  %i.acw = getelementptr inbounds nuw i8, ptr %11, i64 1256 ; 2 uses
  %i.acx = load i64, ptr %i.acw, align 8, !tbaa !269
  %i.acy = add i64 %i.acx, %.0.i139
  store i64 %i.acy, ptr %i.acw, align 8, !tbaa !269
  %i.acz = load i32, ptr %i.acr, align 8, !tbaa !267
  %i.ada = add nsw i32 %i.acz, 1
  store i32 %i.ada, ptr %i.acr, align 8, !tbaa !267
  %i.adb = getelementptr inbounds nuw i8, ptr %11, i64 2584
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !248
  %i.add = getelementptr inbounds nuw i8, ptr %11, i64 2592
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !248
  %i.adf = icmp eq ptr %i.adc, %i.ade
  br i1 %i.adf, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit141, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.adg = getelementptr inbounds nuw i8, ptr %11, i64 2608 ; 2 uses
  %i.adh = load i32, ptr %i.adg, align 8, !tbaa !265
  %i.adi = add nsw i32 %i.adh, -1                 ; 2 uses
  store i32 %i.adi, ptr %i.adg, align 8, !tbaa !265
  %i.adj = icmp eq i32 %i.adi, 2
  br i1 %i.adj, label %bb.ar, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit141

bb.ar:                                            ; preds = %bb.aq
  %i.adk = getelementptr inbounds nuw i8, ptr %11, i64 2612
  store i32 52, ptr %i.adk, align 4, !tbaa !266
  %i.adl = getelementptr inbounds nuw i8, ptr %11, i64 2616
  store i64 %i.acq, ptr %i.adl, align 8, !tbaa !268
  br label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit141

_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit141: ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ah
  %i.adm = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 5 uses
  %i.adn = load i8, ptr %i.adm, align 8, !tbaa !394, !range !137, !noundef !138
  %i.ado = trunc nuw i8 %i.adn to i1
  %i.adp = icmp ne ptr %11, null
  %or.cond163.not = and i1 %i.adp, %i.ado
  br i1 %or.cond163.not, label %bb.as, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit142

_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit141.thread: ; preds = %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit137
  %i.adq = getelementptr inbounds nuw i8, ptr %17, i64 24
  br label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit142

bb.as:                                            ; preds = %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit141
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %11)
  %i.adr = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !243 ; 2 uses
  %i.ads = extractvalue { i32, i32 } %i.adr, 0
  %i.adt = extractvalue { i32, i32 } %i.adr, 1
  %i.adu = zext i32 %i.ads to i64
  %i.adv = zext i32 %i.adt to i64
  %i.adw = shl nuw i64 %i.adv, 32
  %i.adx = or disjoint i64 %i.adw, %i.adu         ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %11, i64 1288
  store i64 %i.adx, ptr %i.ady, align 8, !tbaa !246
  %i.adz = getelementptr inbounds nuw i8, ptr %11, i64 2584
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !248 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %11, i64 2592
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !248
  %i.aed = icmp eq ptr %i.aea, %i.aec
  br i1 %i.aed, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit142, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.aee = getelementptr inbounds nuw i8, ptr %11, i64 2608 ; 2 uses
  %i.aef = load i32, ptr %i.aee, align 8, !tbaa !265
  %i.aeg = add nsw i32 %i.aef, 1                  ; 2 uses
  store i32 %i.aeg, ptr %i.aee, align 8, !tbaa !265
  %i.aeh = icmp eq i32 %i.aeg, 3
  br i1 %i.aeh, label %bb.au, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit142

bb.au:                                            ; preds = %bb.at
  %i.aei = getelementptr inbounds nuw i8, ptr %11, i64 2612
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !266
  %i.aek = mul nsw i32 %i.aej, 60
  %i.ael = sext i32 %i.aek to i64
  %i.aem = getelementptr [24 x i8], ptr %i.aea, i64 %i.ael ; 2 uses
  %i.aen = getelementptr i8, ptr %i.aem, i64 1272 ; 2 uses
  %i.aeo = load i32, ptr %i.aen, align 8, !tbaa !267
  %i.aep = add nsw i32 %i.aeo, 1
  store i32 %i.aep, ptr %i.aen, align 8, !tbaa !267
  %i.aeq = getelementptr inbounds nuw i8, ptr %11, i64 2616
  %i.aer = load i64, ptr %i.aeq, align 8, !tbaa !268
  %i.aes = sub i64 %i.adx, %i.aer
  %i.aet = getelementptr i8, ptr %i.aem, i64 1280 ; 2 uses
  %i.aeu = load i64, ptr %i.aet, align 8, !tbaa !269
  %i.aev = add i64 %i.aes, %i.aeu
  store i64 %i.aev, ptr %i.aet, align 8, !tbaa !269
  br label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit142

_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit142: ; preds = %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit141.thread, %bb.au, %bb.at, %bb.as, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit141
  %i.aew = phi ptr [ %i.adq, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit141.thread ], [ %i.adm, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit141 ], [ %i.adm, %bb.au ], [ %i.adm, %bb.at ], [ %i.adm, %bb.as ]
  call void @_ZN3gmx19SimulationSignaller15finalizeSignalsEv(ptr noundef nonnull align 8 dereferenceable(40) %17)
  %i.aex = load i8, ptr %i.aew, align 8, !tbaa !394, !range !137, !noundef !138
  %i.aey = trunc nuw i8 %i.aex to i1
  %i.aez = icmp ne ptr %11, null
  %or.cond165.not = and i1 %i.aez, %i.aey
  br i1 %or.cond165.not, label %bb.av, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit146

bb.av:                                            ; preds = %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit142
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %11)
  %i.afa = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !243 ; 2 uses
  %i.afb = extractvalue { i32, i32 } %i.afa, 0
  %i.afc = extractvalue { i32, i32 } %i.afa, 1
  %i.afd = zext i32 %i.afb to i64
  %i.afe = zext i32 %i.afc to i64
  %i.aff = shl nuw i64 %i.afe, 32
  %i.afg = or disjoint i64 %i.aff, %i.afd         ; 3 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %11, i64 1272 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %11, i64 1288
  %i.afj = load i64, ptr %i.afi, align 8, !tbaa !246 ; 2 uses
  %.not.i143 = icmp ult i64 %i.afg, %i.afj
  br i1 %.not.i143, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.afk = sub nuw i64 %i.afg, %i.afj
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.afl = getelementptr inbounds nuw i8, ptr %11, i64 2624
  store i8 1, ptr %i.afl, align 8, !tbaa !388
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0.i144 = phi i64 [ %i.afk, %bb.aw ], [ 0, %bb.ax ]
  %i.afm = getelementptr inbounds nuw i8, ptr %11, i64 1280 ; 2 uses
  %i.afn = load i64, ptr %i.afm, align 8, !tbaa !269
  %i.afo = add i64 %i.afn, %.0.i144
  store i64 %i.afo, ptr %i.afm, align 8, !tbaa !269
  %i.afp = load i32, ptr %i.afh, align 8, !tbaa !267
  %i.afq = add nsw i32 %i.afp, 1
  store i32 %i.afq, ptr %i.afh, align 8, !tbaa !267
  %i.afr = getelementptr inbounds nuw i8, ptr %11, i64 2584
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !248
  %i.aft = getelementptr inbounds nuw i8, ptr %11, i64 2592
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !248
  %i.afv = icmp eq ptr %i.afs, %i.afu
  br i1 %i.afv, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit146, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.afw = getelementptr inbounds nuw i8, ptr %11, i64 2608 ; 2 uses
  %i.afx = load i32, ptr %i.afw, align 8, !tbaa !265
  %i.afy = add nsw i32 %i.afx, -1                 ; 2 uses
  store i32 %i.afy, ptr %i.afw, align 8, !tbaa !265
  %i.afz = icmp eq i32 %i.afy, 2
  br i1 %i.afz, label %bb.ba, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit146

bb.ba:                                            ; preds = %bb.az
  %i.aga = getelementptr inbounds nuw i8, ptr %11, i64 2612
  store i32 53, ptr %i.aga, align 4, !tbaa !266
  %i.agb = getelementptr inbounds nuw i8, ptr %11, i64 2616
  store i64 %i.afg, ptr %i.agb, align 8, !tbaa !268
  br label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit146

_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit146: ; preds = %bb.ba, %bb.az, %bb.ay, %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit142
  %i.agc = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.agd = load i8, ptr %i.agc, align 8, !tbaa !370, !range !137, !noundef !138
  %i.age = trunc nuw i8 %i.agd to i1
  %or.cond13 = and i1 %i.s, %i.age
  %or.cond13.not = xor i1 %or.cond13, true
  %or.cond15 = or i1 %i.n, %or.cond13.not
  br i1 %or.cond15, label %.sink.split, label %bb.bb

bb.bb:                                            ; preds = %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit146
  %i.agf = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !395 ; 15 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !395 ; 9 uses
  br i1 %i.ag, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.not2836.i = icmp eq ptr %i.agg, %i.agi
  br i1 %.not2836.i, label %.sink.split, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %bb.bc
  %i.agj = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !376 ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 64
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agk, i64 88
  %i.agn = load double, ptr %i.agm, align 8, !tbaa !159
  %i.ago = fdiv double 5.000000e-01, %i.agn       ; 3 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agk, i64 80
  %i.agq = load double, ptr %i.agp, align 8, !tbaa !149 ; 2 uses
  %i.agr = load <3 x double>, ptr %i.agl, align 8, !tbaa !149 ; 2 uses
  %i.ags = shufflevector <3 x double> %i.agr, <3 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.agt = fneg double %i.agq
  %i.agu = fneg <3 x double> %i.agr
  %i.agv = shufflevector <3 x double> %i.agu, <3 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.agw = fmul <8 x double> %i.ags, %i.agv       ; 9 uses
  %i.agx = fmul double %i.agq, %i.agt             ; 2 uses
  %28 = ptrtoaddr ptr %i.agi to i64
  %29 = ptrtoaddr ptr %i.agg to i64
  %i.agy = add i64 %28, -144
  %i.agz = sub i64 %i.agy, %29                    ; 2 uses
  %i.aha = udiv i64 %i.agz, 144
  %i.ahb = add nuw nsw i64 %i.aha, 1              ; 2 uses
  %min.iters.check328 = icmp ult i64 %i.agz, 432
  br i1 %min.iters.check328, label %scalar.ph327.preheader, label %vector.ph329

vector.ph329:                                     ; preds = %.lr.ph38.i
  %n.vec330 = and i64 %i.ahb, 288230376151711740  ; 3 uses
  %i.ahc = mul i64 %n.vec330, 144
  %i.ahd = getelementptr i8, ptr %i.agg, i64 %i.ahc
  %broadcast.splatinsert331 = insertelement <4 x double> poison, double %i.ago, i64 0
  %broadcast.splat332 = shufflevector <4 x double> %broadcast.splatinsert331, <4 x double> poison, <4 x i32> zeroinitializer ; 9 uses
  %broadcast.splat334 = shufflevector <8 x double> %i.agw, <8 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat336 = shufflevector <8 x double> %i.agw, <8 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat338 = shufflevector <8 x double> %i.agw, <8 x double> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat340 = shufflevector <8 x double> %i.agw, <8 x double> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat342 = shufflevector <8 x double> %i.agw, <8 x double> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat344 = shufflevector <8 x double> %i.agw, <8 x double> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat346 = shufflevector <8 x double> %i.agw, <8 x double> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat348 = shufflevector <8 x double> %i.agw, <8 x double> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %broadcast.splatinsert349 = insertelement <4 x double> poison, double %i.agx, i64 0
  %broadcast.splat350 = shufflevector <4 x double> %broadcast.splatinsert349, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph329
  %index352 = phi i64 [ 0, %vector.ph329 ], [ %index.next373, %vector.body351 ]
  %pointer.phi353 = phi ptr [ %i.agg, %vector.ph329 ], [ %ptr.ind374, %vector.body351 ] ; 2 uses
  %vector.gep354 = getelementptr i8, ptr %pointer.phi353, <4 x i64> <i64 0, i64 144, i64 288, i64 432> ; 9 uses
  %wide.gep355 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep354, i64 80 ; 2 uses
  %wide.masked.gather356 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep355, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.ahe = fpext <4 x float> %wide.masked.gather356 to <4 x double>
  %i.ahf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat334, <4 x double> %broadcast.splat332, <4 x double> %i.ahe)
  %i.ahg = fptrunc <4 x double> %i.ahf to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ahg, <4 x ptr> align 4 %wide.gep355, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep357 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep354, i64 84 ; 2 uses
  %wide.masked.gather358 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep357, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.ahh = fpext <4 x float> %wide.masked.gather358 to <4 x double>
  %i.ahi = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat336, <4 x double> %broadcast.splat332, <4 x double> %i.ahh)
  %i.ahj = fptrunc <4 x double> %i.ahi to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ahj, <4 x ptr> align 4 %wide.gep357, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep359 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep354, i64 88 ; 2 uses
  %wide.masked.gather360 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep359, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.ahk = fpext <4 x float> %wide.masked.gather360 to <4 x double>
  %i.ahl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat338, <4 x double> %broadcast.splat332, <4 x double> %i.ahk)
  %i.ahm = fptrunc <4 x double> %i.ahl to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ahm, <4 x ptr> align 4 %wide.gep359, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep361 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep354, i64 92 ; 2 uses
  %wide.masked.gather362 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep361, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.ahn = fpext <4 x float> %wide.masked.gather362 to <4 x double>
  %i.aho = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat340, <4 x double> %broadcast.splat332, <4 x double> %i.ahn)
  %i.ahp = fptrunc <4 x double> %i.aho to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ahp, <4 x ptr> align 4 %wide.gep361, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep363 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep354, i64 96 ; 2 uses
  %wide.masked.gather364 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep363, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.ahq = fpext <4 x float> %wide.masked.gather364 to <4 x double>
  %i.ahr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat342, <4 x double> %broadcast.splat332, <4 x double> %i.ahq)
  %i.ahs = fptrunc <4 x double> %i.ahr to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ahs, <4 x ptr> align 4 %wide.gep363, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep365 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep354, i64 100 ; 2 uses
  %wide.masked.gather366 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep365, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.aht = fpext <4 x float> %wide.masked.gather366 to <4 x double>
  %i.ahu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat344, <4 x double> %broadcast.splat332, <4 x double> %i.aht)
  %i.ahv = fptrunc <4 x double> %i.ahu to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ahv, <4 x ptr> align 4 %wide.gep365, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep367 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep354, i64 104 ; 2 uses
  %wide.masked.gather368 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep367, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.ahw = fpext <4 x float> %wide.masked.gather368 to <4 x double>
  %i.ahx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat346, <4 x double> %broadcast.splat332, <4 x double> %i.ahw)
  %i.ahy = fptrunc <4 x double> %i.ahx to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ahy, <4 x ptr> align 4 %wide.gep367, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep369 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep354, i64 108 ; 2 uses
  %wide.masked.gather370 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep369, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.ahz = fpext <4 x float> %wide.masked.gather370 to <4 x double>
  %i.aia = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat348, <4 x double> %broadcast.splat332, <4 x double> %i.ahz)
  %i.aib = fptrunc <4 x double> %i.aia to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.aib, <4 x ptr> align 4 %wide.gep369, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep371 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep354, i64 112 ; 2 uses
  %wide.masked.gather372 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep371, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.aic = fpext <4 x float> %wide.masked.gather372 to <4 x double>
  %i.aid = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat350, <4 x double> %broadcast.splat332, <4 x double> %i.aic)
  %i.aie = fptrunc <4 x double> %i.aid to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.aie, <4 x ptr> align 4 %wide.gep371, <4 x i1> splat (i1 true)), !tbaa !146
  %index.next373 = add nuw i64 %index352, 4       ; 2 uses
  %ptr.ind374 = getelementptr i8, ptr %pointer.phi353, i64 576
  %i.aif = icmp eq i64 %index.next373, %n.vec330
  br i1 %i.aif, label %middle.block375, label %vector.body351, !llvm.loop !236

middle.block375:                                  ; preds = %vector.body351
  %cmp.n376 = icmp eq i64 %i.ahb, %n.vec330
  br i1 %cmp.n376, label %.sink.split, label %scalar.ph327.preheader

scalar.ph327.preheader:                           ; preds = %.lr.ph38.i, %middle.block375
  %.sroa.024.037.i.ph = phi ptr [ %i.agg, %.lr.ph38.i ], [ %i.ahd, %middle.block375 ]
  %i.aig = insertelement <8 x double> poison, double %i.ago, i64 0
  %i.aih = shufflevector <8 x double> %i.aig, <8 x double> poison, <8 x i32> zeroinitializer
  br label %scalar.ph327

scalar.ph327:                                     ; preds = %scalar.ph327.preheader, %scalar.ph327
  %.sroa.024.037.i = phi ptr [ %i.ais, %scalar.ph327 ], [ %.sroa.024.037.i.ph, %scalar.ph327.preheader ] ; 3 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %.sroa.024.037.i, i64 80 ; 2 uses
  %i.aij = load <8 x float>, ptr %i.aii, align 4, !tbaa !146
  %i.aik = fpext <8 x float> %i.aij to <8 x double>
  %i.ail = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.agw, <8 x double> %i.aih, <8 x double> %i.aik)
  %i.aim = fptrunc <8 x double> %i.ail to <8 x float>
  store <8 x float> %i.aim, ptr %i.aii, align 4, !tbaa !146
  %i.ain = getelementptr inbounds nuw i8, ptr %.sroa.024.037.i, i64 112 ; 2 uses
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !146
  %i.aip = fpext float %i.aio to double
  %i.aiq = call double @llvm.fmuladd.f64(double %i.agx, double %i.ago, double %i.aip)
  %i.air = fptrunc double %i.aiq to float
  store float %i.air, ptr %i.ain, align 4, !tbaa !146
  %i.ais = getelementptr inbounds nuw i8, ptr %.sroa.024.037.i, i64 144 ; 2 uses
  %.not28.i = icmp eq ptr %i.ais, %i.agi
  br i1 %.not28.i, label %.sink.split, label %scalar.ph327, !llvm.loop !237

bb.bd:                                            ; preds = %bb.bb
  %i.ait = load i8, ptr %19, align 1, !tbaa !201, !range !137, !noundef !138
  %i.aiu = trunc nuw i8 %i.ait to i1
  br i1 %i.aiu, label %bb.be, label %.loopexit30.i

bb.be:                                            ; preds = %bb.bd
  %.not31.i = icmp eq ptr %i.agg, %i.agi
  br i1 %.not31.i, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.be
  %i.aiv = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !376 ; 3 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 32
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiw, i64 56
  %i.aiz = load double, ptr %i.aiy, align 8, !tbaa !159
  %i.aja = fdiv double 5.000000e-01, %i.aiz       ; 3 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiw, i64 48
  %i.ajc = load double, ptr %i.ajb, align 8, !tbaa !149 ; 2 uses
  %i.ajd = load <3 x double>, ptr %i.aix, align 8, !tbaa !149 ; 2 uses
  %i.aje = shufflevector <3 x double> %i.ajd, <3 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.ajf = fneg double %i.ajc
  %i.ajg = fneg <3 x double> %i.ajd
  %i.ajh = shufflevector <3 x double> %i.ajg, <3 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.aji = fmul <8 x double> %i.aje, %i.ajh       ; 9 uses
  %i.ajj = fmul double %i.ajc, %i.ajf             ; 2 uses
  %30 = ptrtoaddr ptr %i.agi to i64
  %31 = ptrtoaddr ptr %i.agg to i64
  %i.ajk = add i64 %30, -144
  %i.ajl = sub i64 %i.ajk, %31                    ; 2 uses
  %i.ajm = udiv i64 %i.ajl, 144
  %i.ajn = add nuw nsw i64 %i.ajm, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.ajl, 432
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.ajn, 288230376151711740     ; 3 uses
  %i.ajo = mul i64 %n.vec, 144
  %i.ajp = getelementptr i8, ptr %i.agg, i64 %i.ajo
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aja, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 9 uses
  %broadcast.splat243 = shufflevector <8 x double> %i.aji, <8 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat245 = shufflevector <8 x double> %i.aji, <8 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat247 = shufflevector <8 x double> %i.aji, <8 x double> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat249 = shufflevector <8 x double> %i.aji, <8 x double> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat251 = shufflevector <8 x double> %i.aji, <8 x double> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat253 = shufflevector <8 x double> %i.aji, <8 x double> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat255 = shufflevector <8 x double> %i.aji, <8 x double> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat257 = shufflevector <8 x double> %i.aji, <8 x double> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %broadcast.splatinsert258 = insertelement <4 x double> poison, double %i.ajj, i64 0
  %broadcast.splat259 = shufflevector <4 x double> %broadcast.splatinsert258, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.agg, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 144, i64 288, i64 432> ; 9 uses
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 44 ; 2 uses
  %wide.masked.gather = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.ajq = fpext <4 x float> %wide.masked.gather to <4 x double>
  %i.ajr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat243, <4 x double> %broadcast.splat, <4 x double> %i.ajq)
  %i.ajs = fptrunc <4 x double> %i.ajr to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ajs, <4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep260 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 48 ; 2 uses
  %wide.masked.gather261 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep260, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.ajt = fpext <4 x float> %wide.masked.gather261 to <4 x double>
  %i.aju = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat245, <4 x double> %broadcast.splat, <4 x double> %i.ajt)
  %i.ajv = fptrunc <4 x double> %i.aju to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ajv, <4 x ptr> align 4 %wide.gep260, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep262 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 52 ; 2 uses
  %wide.masked.gather263 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep262, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.ajw = fpext <4 x float> %wide.masked.gather263 to <4 x double>
  %i.ajx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat247, <4 x double> %broadcast.splat, <4 x double> %i.ajw)
  %i.ajy = fptrunc <4 x double> %i.ajx to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ajy, <4 x ptr> align 4 %wide.gep262, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep264 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 56 ; 2 uses
  %wide.masked.gather265 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep264, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.ajz = fpext <4 x float> %wide.masked.gather265 to <4 x double>
  %i.aka = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat249, <4 x double> %broadcast.splat, <4 x double> %i.ajz)
  %i.akb = fptrunc <4 x double> %i.aka to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.akb, <4 x ptr> align 4 %wide.gep264, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep266 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 60 ; 2 uses
  %wide.masked.gather267 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep266, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.akc = fpext <4 x float> %wide.masked.gather267 to <4 x double>
  %i.akd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat251, <4 x double> %broadcast.splat, <4 x double> %i.akc)
  %i.ake = fptrunc <4 x double> %i.akd to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ake, <4 x ptr> align 4 %wide.gep266, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep268 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 64 ; 2 uses
  %wide.masked.gather269 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep268, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.akf = fpext <4 x float> %wide.masked.gather269 to <4 x double>
  %i.akg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat253, <4 x double> %broadcast.splat, <4 x double> %i.akf)
  %i.akh = fptrunc <4 x double> %i.akg to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.akh, <4 x ptr> align 4 %wide.gep268, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep270 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 68 ; 2 uses
  %wide.masked.gather271 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep270, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.aki = fpext <4 x float> %wide.masked.gather271 to <4 x double>
  %i.akj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat255, <4 x double> %broadcast.splat, <4 x double> %i.aki)
  %i.akk = fptrunc <4 x double> %i.akj to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.akk, <4 x ptr> align 4 %wide.gep270, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep272 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 72 ; 2 uses
  %wide.masked.gather273 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep272, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.akl = fpext <4 x float> %wide.masked.gather273 to <4 x double>
  %i.akm = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat257, <4 x double> %broadcast.splat, <4 x double> %i.akl)
  %i.akn = fptrunc <4 x double> %i.akm to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.akn, <4 x ptr> align 4 %wide.gep272, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep274 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 76 ; 2 uses
  %wide.masked.gather275 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep274, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.ako = fpext <4 x float> %wide.masked.gather275 to <4 x double>
  %i.akp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat259, <4 x double> %broadcast.splat, <4 x double> %i.ako)
  %i.akq = fptrunc <4 x double> %i.akp to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.akq, <4 x ptr> align 4 %wide.gep274, <4 x i1> splat (i1 true)), !tbaa !146
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 576
  %i.akr = icmp eq i64 %index.next, %n.vec
  br i1 %i.akr, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ajn, %n.vec
  br i1 %cmp.n, label %.loopexit30.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.020.032.i.ph = phi ptr [ %i.agg, %.lr.ph.i ], [ %i.ajp, %middle.block ]
  %i.aks = insertelement <8 x double> poison, double %i.aja, i64 0
  %i.akt = shufflevector <8 x double> %i.aks, <8 x double> poison, <8 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.020.032.i = phi ptr [ %i.ale, %scalar.ph ], [ %.sroa.020.032.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %.sroa.020.032.i, i64 44 ; 2 uses
  %i.akv = load <8 x float>, ptr %i.aku, align 4, !tbaa !146
  %i.akw = fpext <8 x float> %i.akv to <8 x double>
  %i.akx = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.aji, <8 x double> %i.akt, <8 x double> %i.akw)
  %i.aky = fptrunc <8 x double> %i.akx to <8 x float>
  store <8 x float> %i.aky, ptr %i.aku, align 4, !tbaa !146
  %i.akz = getelementptr inbounds nuw i8, ptr %.sroa.020.032.i, i64 76 ; 2 uses
  %i.ala = load float, ptr %i.akz, align 4, !tbaa !146
  %i.alb = fpext float %i.ala to double
  %i.alc = call double @llvm.fmuladd.f64(double %i.ajj, double %i.aja, double %i.alb)
  %i.ald = fptrunc double %i.alc to float
  store float %i.ald, ptr %i.akz, align 4, !tbaa !146
  %i.ale = getelementptr inbounds nuw i8, ptr %.sroa.020.032.i, i64 144 ; 2 uses
  %.not.i147 = icmp eq ptr %i.ale, %i.agi
  br i1 %.not.i147, label %.loopexit30.i, label %scalar.ph, !llvm.loop !239

.loopexit30.i:                                    ; preds = %scalar.ph, %middle.block, %bb.bd
  %.not2733.i = icmp eq ptr %i.agg, %i.agi
  br i1 %.not2733.i, label %.sink.split, label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %.loopexit30.i
  %i.alf = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !376 ; 3 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 24
  %i.ali = load double, ptr %i.alh, align 8, !tbaa !159
  %i.alj = fdiv double 5.000000e-01, %i.ali       ; 3 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alg, i64 16
  %i.all = load double, ptr %i.alk, align 8, !tbaa !149 ; 2 uses
  %i.alm = load <3 x double>, ptr %i.alg, align 8, !tbaa !149 ; 2 uses
  %i.aln = shufflevector <3 x double> %i.alm, <3 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.alo = fneg double %i.all
  %i.alp = fneg <3 x double> %i.alm
  %i.alq = shufflevector <3 x double> %i.alp, <3 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.alr = fmul <8 x double> %i.aln, %i.alq       ; 9 uses
  %i.als = fmul double %i.all, %i.alo             ; 2 uses
  %32 = ptrtoaddr ptr %i.agi to i64
  %33 = ptrtoaddr ptr %i.agg to i64
  %i.alt = add i64 %32, -144
  %i.alu = sub i64 %i.alt, %33                    ; 2 uses
  %i.alv = udiv i64 %i.alu, 144
  %i.alw = add nuw nsw i64 %i.alv, 1              ; 2 uses
  %min.iters.check277 = icmp ult i64 %i.alu, 432
  br i1 %min.iters.check277, label %scalar.ph276.preheader, label %vector.ph278

vector.ph278:                                     ; preds = %.lr.ph35.i
  %n.vec279 = and i64 %i.alw, 288230376151711740  ; 3 uses
  %i.alx = mul i64 %n.vec279, 144
  %i.aly = getelementptr i8, ptr %i.agg, i64 %i.alx
  %broadcast.splatinsert280 = insertelement <4 x double> poison, double %i.alj, i64 0
  %broadcast.splat281 = shufflevector <4 x double> %broadcast.splatinsert280, <4 x double> poison, <4 x i32> zeroinitializer ; 9 uses
  %broadcast.splat283 = shufflevector <8 x double> %i.alr, <8 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat285 = shufflevector <8 x double> %i.alr, <8 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat287 = shufflevector <8 x double> %i.alr, <8 x double> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat289 = shufflevector <8 x double> %i.alr, <8 x double> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat291 = shufflevector <8 x double> %i.alr, <8 x double> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat293 = shufflevector <8 x double> %i.alr, <8 x double> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat295 = shufflevector <8 x double> %i.alr, <8 x double> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat297 = shufflevector <8 x double> %i.alr, <8 x double> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %broadcast.splatinsert298 = insertelement <4 x double> poison, double %i.als, i64 0
  %broadcast.splat299 = shufflevector <4 x double> %broadcast.splatinsert298, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph278
  %index301 = phi i64 [ 0, %vector.ph278 ], [ %index.next322, %vector.body300 ]
  %pointer.phi302 = phi ptr [ %i.agg, %vector.ph278 ], [ %ptr.ind323, %vector.body300 ] ; 2 uses
  %vector.gep303 = getelementptr i8, ptr %pointer.phi302, <4 x i64> <i64 0, i64 144, i64 288, i64 432> ; 9 uses
  %wide.gep304 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep303, i64 8 ; 2 uses
  %wide.masked.gather305 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep304, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.alz = fpext <4 x float> %wide.masked.gather305 to <4 x double>
  %i.ama = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat283, <4 x double> %broadcast.splat281, <4 x double> %i.alz)
  %i.amb = fptrunc <4 x double> %i.ama to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.amb, <4 x ptr> align 4 %wide.gep304, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep306 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep303, i64 12 ; 2 uses
  %wide.masked.gather307 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep306, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.amc = fpext <4 x float> %wide.masked.gather307 to <4 x double>
  %i.amd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat285, <4 x double> %broadcast.splat281, <4 x double> %i.amc)
  %i.ame = fptrunc <4 x double> %i.amd to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ame, <4 x ptr> align 4 %wide.gep306, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep308 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep303, i64 16 ; 2 uses
  %wide.masked.gather309 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep308, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.amf = fpext <4 x float> %wide.masked.gather309 to <4 x double>
  %i.amg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat287, <4 x double> %broadcast.splat281, <4 x double> %i.amf)
  %i.amh = fptrunc <4 x double> %i.amg to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.amh, <4 x ptr> align 4 %wide.gep308, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep310 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep303, i64 20 ; 2 uses
  %wide.masked.gather311 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep310, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.ami = fpext <4 x float> %wide.masked.gather311 to <4 x double>
  %i.amj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat289, <4 x double> %broadcast.splat281, <4 x double> %i.ami)
  %i.amk = fptrunc <4 x double> %i.amj to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.amk, <4 x ptr> align 4 %wide.gep310, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep312 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep303, i64 24 ; 2 uses
  %wide.masked.gather313 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep312, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.aml = fpext <4 x float> %wide.masked.gather313 to <4 x double>
  %i.amm = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat291, <4 x double> %broadcast.splat281, <4 x double> %i.aml)
  %i.amn = fptrunc <4 x double> %i.amm to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.amn, <4 x ptr> align 4 %wide.gep312, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep314 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep303, i64 28 ; 2 uses
  %wide.masked.gather315 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep314, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.amo = fpext <4 x float> %wide.masked.gather315 to <4 x double>
  %i.amp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat293, <4 x double> %broadcast.splat281, <4 x double> %i.amo)
  %i.amq = fptrunc <4 x double> %i.amp to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.amq, <4 x ptr> align 4 %wide.gep314, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep316 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep303, i64 32 ; 2 uses
  %wide.masked.gather317 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep316, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.amr = fpext <4 x float> %wide.masked.gather317 to <4 x double>
  %i.ams = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat295, <4 x double> %broadcast.splat281, <4 x double> %i.amr)
  %i.amt = fptrunc <4 x double> %i.ams to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.amt, <4 x ptr> align 4 %wide.gep316, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep318 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep303, i64 36 ; 2 uses
  %wide.masked.gather319 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep318, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.amu = fpext <4 x float> %wide.masked.gather319 to <4 x double>
  %i.amv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat297, <4 x double> %broadcast.splat281, <4 x double> %i.amu)
  %i.amw = fptrunc <4 x double> %i.amv to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.amw, <4 x ptr> align 4 %wide.gep318, <4 x i1> splat (i1 true)), !tbaa !146
  %wide.gep320 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep303, i64 40 ; 2 uses
  %wide.masked.gather321 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep320, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !146
  %i.amx = fpext <4 x float> %wide.masked.gather321 to <4 x double>
  %i.amy = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat299, <4 x double> %broadcast.splat281, <4 x double> %i.amx)
  %i.amz = fptrunc <4 x double> %i.amy to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.amz, <4 x ptr> align 4 %wide.gep320, <4 x i1> splat (i1 true)), !tbaa !146
  %index.next322 = add nuw i64 %index301, 4       ; 2 uses
  %ptr.ind323 = getelementptr i8, ptr %pointer.phi302, i64 576
  %i.ana = icmp eq i64 %index.next322, %n.vec279
  br i1 %i.ana, label %middle.block324, label %vector.body300, !llvm.loop !240

middle.block324:                                  ; preds = %vector.body300
  %cmp.n325 = icmp eq i64 %i.alw, %n.vec279
  br i1 %cmp.n325, label %.sink.split, label %scalar.ph276.preheader

scalar.ph276.preheader:                           ; preds = %.lr.ph35.i, %middle.block324
  %.sroa.016.034.i.ph = phi ptr [ %i.agg, %.lr.ph35.i ], [ %i.aly, %middle.block324 ]
  %i.anb = insertelement <8 x double> poison, double %i.alj, i64 0
  %i.anc = shufflevector <8 x double> %i.anb, <8 x double> poison, <8 x i32> zeroinitializer
  br label %scalar.ph276

scalar.ph276:                                     ; preds = %scalar.ph276.preheader, %scalar.ph276
  %.sroa.016.034.i = phi ptr [ %i.ann, %scalar.ph276 ], [ %.sroa.016.034.i.ph, %scalar.ph276.preheader ] ; 3 uses
  %i.and = getelementptr inbounds nuw i8, ptr %.sroa.016.034.i, i64 8 ; 2 uses
  %i.ane = load <8 x float>, ptr %i.and, align 4, !tbaa !146
  %i.anf = fpext <8 x float> %i.ane to <8 x double>
  %i.ang = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.alr, <8 x double> %i.anc, <8 x double> %i.anf)
  %i.anh = fptrunc <8 x double> %i.ang to <8 x float>
  store <8 x float> %i.anh, ptr %i.and, align 4, !tbaa !146
  %i.ani = getelementptr inbounds nuw i8, ptr %.sroa.016.034.i, i64 40 ; 2 uses
  %i.anj = load float, ptr %i.ani, align 4, !tbaa !146
  %i.ank = fpext float %i.anj to double
  %i.anl = call double @llvm.fmuladd.f64(double %i.als, double %i.alj, double %i.ank)
  %i.anm = fptrunc double %i.anl to float
  store float %i.anm, ptr %i.ani, align 4, !tbaa !146
  %i.ann = getelementptr inbounds nuw i8, ptr %.sroa.016.034.i, i64 144 ; 2 uses
  %.not27.i = icmp eq ptr %i.ann, %i.agi
  br i1 %.not27.i, label %.sink.split, label %scalar.ph276, !llvm.loop !241

.sink.split:                                      ; preds = %scalar.ph276, %scalar.ph327, %middle.block324, %middle.block375, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit146, %bb.bc, %bb.be, %.loopexit30.i, %bb.ag
  %.sink = phi i8 [ 1, %bb.ag ], [ 0, %middle.block375 ], [ 0, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit146 ], [ 0, %.loopexit30.i ], [ 0, %bb.be ], [ 0, %bb.bc ], [ 0, %middle.block324 ], [ 0, %scalar.ph327 ], [ 0, %scalar.ph276 ]
  store i8 %.sink, ptr %19, align 1, !tbaa !201
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split, %bb.af
  br i1 %.not134, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ano = getelementptr inbounds nuw i8, ptr %4, i64 196
  %i.anp = load float, ptr %i.ano, align 4, !tbaa !398
  %i.anq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.anr = load float, ptr %i.anq, align 8, !tbaa !399
  %i.ans = fdiv float %i.anp, %i.anr
  %i.ant = getelementptr inbounds nuw i8, ptr %4, i64 200
  store float %i.ans, ptr %i.ant, align 8, !tbaa !400
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.s, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %.not = xor i1 %spec.select136160, true
  %or.cond17 = select i1 %.not, i1 true, i1 %i.ah
  br i1 %or.cond17, label %.loopexit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.anu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.anv = load i64, ptr %i.anu, align 8, !tbaa !401
  %.not135 = icmp slt i64 %21, %i.anv
  br i1 %.not135, label %.loopexit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.anw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !395 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !395 ; 2 uses
  %.not168182 = icmp eq ptr %i.anx, %i.anz
  br i1 %.not168182, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bk, %.lr.ph
  %.sroa.0148.0183 = phi ptr [ %i.aog, %.lr.ph ], [ %i.anx, %bb.bk ] ; 5 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %.sroa.0148.0183, i64 8
  %i.aob = getelementptr inbounds nuw i8, ptr %.sroa.0148.0183, i64 44
  %i.aoc = load <8 x float>, ptr %i.aoa, align 4, !tbaa !146
  store <8 x float> %i.aoc, ptr %i.aob, align 4, !tbaa !146
  %i.aod = getelementptr inbounds nuw i8, ptr %.sroa.0148.0183, i64 40
  %i.aoe = load float, ptr %i.aod, align 4, !tbaa !146
  %i.aof = getelementptr inbounds nuw i8, ptr %.sroa.0148.0183, i64 76
  store float %i.aoe, ptr %i.aof, align 4, !tbaa !146
  %i.aog = getelementptr inbounds nuw i8, ptr %.sroa.0148.0183, i64 144 ; 2 uses
  %.not168 = icmp eq ptr %i.aog, %i.anz
  br i1 %.not168, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.bk, %bb.bj, %bb.bi
  %i.aoh = getelementptr inbounds nuw i8, ptr %2, i64 744
  %i.aoi = call noundef float @_Z8sum_ekinPK9t_grpoptsP14gmx_ekindata_tPfbb(ptr noundef nonnull %i.aoh, ptr noundef %4, ptr noundef nonnull %i.j, i1 noundef zeroext %i.ag, i1 noundef zeroext %i.p)
  %i.aoj = getelementptr inbounds nuw i8, ptr %12, i64 332
  store float %i.aoi, ptr %i.aoj, align 4, !tbaa !146
  %i.aok = load float, ptr %i.j, align 4, !tbaa !146
  %i.aol = fpext float %i.aok to double
  %i.aom = getelementptr inbounds nuw i8, ptr %12, i64 520
  store double %i.aol, ptr %i.aom, align 8, !tbaa !149
  %i.aon = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aoo = load float, ptr %i.aon, align 4, !tbaa !146
  %i.aop = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.aoq = load float, ptr %i.aop, align 4, !tbaa !146
  %i.aor = fadd float %i.aoo, %i.aoq
  %i.aos = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.aot = load float, ptr %i.aos, align 4, !tbaa !146
  %i.aou = fadd float %i.aor, %i.aot
  %i.aov = getelementptr inbounds nuw i8, ptr %12, i64 320
  store float %i.aou, ptr %i.aov, align 8, !tbaa !146
  %i.aow = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i64 %21, ptr %i.aow, align 8, !tbaa !242
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit, %bb.bh
  %i.aox = and i32 %20, 768
  %or.cond19.not = icmp eq i32 %i.aox, 0
  br i1 %or.cond19.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.aoy = load float, ptr %13, align 4, !tbaa !146
  %i.aoz = load float, ptr %14, align 4, !tbaa !146
  %i.apa = fadd float %i.aoy, %i.aoz
end_hunk_0
