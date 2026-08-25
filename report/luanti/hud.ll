Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/hud?download=true
inline.NumInlined: 2250
inline.NumDeleted: 686
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3Hud15drawLuaElementsERKN4core8vector3dIsEE:bb.a
  %i.aem = sitofp nsz i32 %i.aee to float
  %i.aen = getelementptr inbounds nuw i8, ptr %i.jl, i64 52
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !427 ; 3 uses
  %i.aep = fmul nsz float %i.aeo, %i.aem
  %i.aeq = fmul nsz float %i.aej, %i.aep
  %i.aer = fptosi float %i.aeq to i32
  %i.aes = fcmp nsz olt float %i.aeh, 0.000000e+00
  br i1 %i.aes, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aet = load i32, ptr %i.hc, align 8, !tbaa !410
  %i.aeu = uitofp nsz i32 %i.aet to double
  %i.aev = fpext nnan nsz float %i.aeh to double
  %i.aew = fmul nnan nsz double %i.aev, -1.000000e-02
  %i.aex = fmul nsz double %i.aew, %i.aeu
  %i.aey = fptosi double %i.aex to i32
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sroa.0850.0 = phi i32 [ %i.aey, %bb.ed ], [ %i.ael, %bb.ec ]
  %i.aez = fcmp nsz olt float %i.aeo, 0.000000e+00
  br i1 %i.aez, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.afa = load i32, ptr %i.hd, align 4, !tbaa !409
  %i.afb = uitofp nsz i32 %i.afa to double
  %i.afc = fpext nnan nsz float %i.aeo to double
  %i.afd = fmul nnan nsz double %i.afc, -1.000000e-02
  %i.afe = fmul nsz double %i.afd, %i.afb
  %i.aff = fptosi double %i.afe to i32
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.sroa.7852.0 = phi i32 [ %i.aff, %bb.ef ], [ %i.aer, %bb.ee ]
  %i.afg = getelementptr inbounds nuw i8, ptr %i.jl, i64 100
  %i.afh = insertelement <2 x i32> poison, i32 %.sroa.0850.0, i64 0
  %i.afi = insertelement <2 x i32> %i.afh, i32 %.sroa.7852.0, i64 1 ; 2 uses
  %i.afj = sitofp <2 x i32> %i.afi to <2 x double>
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #34
  %i.afk = getelementptr inbounds nuw i8, ptr %i.jl, i64 108
  %i.afl = load <2 x float>, ptr %i.afg, align 4, !tbaa !54
  %i.afm = fpext <2 x float> %i.afl to <2 x double>
  %i.afn = fadd nsz <2 x double> %i.afm, splat (double -1.000000e+00)
  %i.afo = fmul nsz <2 x double> %i.afn, %i.afj
  %i.afp = fmul nsz <2 x double> %i.afo, splat (double 5.000000e-01)
  %i.afq = fptosi <2 x double> %i.afp to <2 x i32>
  %i.afr = load <2 x i32>, ptr %9, align 8, !tbaa !86
  %i.afs = add nsw <2 x i32> %i.afr, %i.afq
  %i.aft = load <2 x float>, ptr %i.afk, align 4, !tbaa !54
  %i.afu = insertelement <2 x float> poison, float %i.aej, i64 0
  %i.afv = shufflevector <2 x float> %i.afu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afw = fmul nsz <2 x float> %i.afv, %i.aft
  %i.afx = fptosi <2 x float> %i.afw to <2 x i32>
  %i.afy = add nsw <2 x i32> %i.afs, %i.afx       ; 2 uses
  store <2 x i32> %i.afy, ptr %29, align 8, !tbaa !86
  %i.afz = add nsw <2 x i32> %i.afy, %i.afi
  store <2 x i32> %i.afz, ptr %i.hj, align 8, !tbaa !86
  %i.aga = load ptr, ptr %i.hk, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #34
  store i64 0, ptr %30, align 8
  store i32 %i.aec, ptr %i.hl, align 8, !tbaa !472
  store i32 %i.aee, ptr %i.hm, align 4, !tbaa !473
  invoke void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.aga, ptr noundef nonnull %i.adz, ptr noundef nonnull align 4 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %30, ptr noundef null, ptr noundef nonnull %28, i1 noundef zeroext true)
          to label %bb.eh unwind label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #34
  br label %.critedge.thread

bb.ei:                                            ; preds = %bb.eg
  %i.agb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #34
  br label %bb.fx

bb.ej:                                            ; preds = %bb.ac
  %i.agc = load ptr, ptr %i.hg, align 8, !tbaa !87 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.jl, i64 56
  %i.age = load ptr, ptr %i.agc, align 8, !tbaa !75
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 16
  %i.agg = load ptr, ptr %i.agf, align 8
  %i.agh = invoke noundef ptr %i.agg(ptr noundef nonnull align 8 dereferenceable(8) %i.agc, ptr noundef nonnull align 8 dereferenceable(32) %i.agd, ptr noundef null)
          to label %bb.ek unwind label %bb.el     ; 3 uses

bb.ek:                                            ; preds = %bb.ej
  %.not281 = icmp eq ptr %i.agh, null
  br i1 %.not281, label %.critedge.thread, label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.agi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.em:                                            ; preds = %bb.ek
  %i.agj = getelementptr inbounds nuw i8, ptr %i.jl, i64 128
  %i.agk = load float, ptr %i.agj, align 8, !tbaa !411 ; 3 uses
  %i.agl = fptosi float %i.agk to i32
  %i.agm = getelementptr inbounds nuw i8, ptr %i.jl, i64 132
  %i.agn = load float, ptr %i.agm, align 4, !tbaa !492 ; 3 uses
  %i.ago = fptosi float %i.agn to i32
  %i.agp = fcmp nsz olt float %i.agk, 0.000000e+00
  br i1 %i.agp, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.agq = load i32, ptr %i.hc, align 8, !tbaa !410
  %i.agr = uitofp nsz i32 %i.agq to double
  %i.ags = fpext nnan nsz float %i.agk to double
  %i.agt = fmul nnan nsz double %i.ags, -1.000000e-02
  %i.agu = fmul nsz double %i.agt, %i.agr
  %i.agv = fptosi double %i.agu to i32
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.sroa.0832.0 = phi i32 [ %i.agv, %bb.en ], [ %i.agl, %bb.em ] ; 3 uses
  %i.agw = fcmp nsz olt float %i.agn, 0.000000e+00
  br i1 %i.agw, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.agx = load i32, ptr %i.hd, align 4, !tbaa !409
  %i.agy = uitofp nsz i32 %i.agx to double
  %i.agz = fpext nnan nsz float %i.agn to double
  %i.aha = fmul nnan nsz double %i.agz, -1.000000e-02
  %i.ahb = fmul nsz double %i.aha, %i.agy
  %i.ahc = fptosi double %i.ahb to i32
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.sroa.8.0 = phi i32 [ %i.ahc, %bb.ep ], [ %i.ago, %bb.eo ] ; 3 uses
  %i.ahd = icmp slt i32 %.sroa.0832.0, 1
  %i.ahe = icmp slt i32 %.sroa.8.0, 1
  %or.cond = select i1 %i.ahd, i1 true, i1 %i.ahe
  br i1 %or.cond, label %.loopexit.sink.split, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ahf = load ptr, ptr %i.by, align 8, !tbaa !79
  %i.ahg = invoke noundef ptr @_ZN6Client15getSceneManagerEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.ahf)
          to label %bb.es unwind label %bb.ev     ; 2 uses

bb.es:                                            ; preds = %bb.er
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !75
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 112
  %i.ahj = load ptr, ptr %i.ahi, align 8
  %i.ahk = invoke noundef ptr %i.ahj(ptr noundef nonnull align 8 dereferenceable(8) %i.ahg)
          to label %bb.et unwind label %bb.ev     ; 2 uses

bb.et:                                            ; preds = %bb.es
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !75
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 80
  %i.ahn = load ptr, ptr %i.ahm, align 8
  %i.aho = invoke noundef nonnull align 4 dereferenceable(64) ptr %i.ahn(ptr noundef nonnull align 8 dereferenceable(218) %i.ahk)
          to label %bb.eu unwind label %bb.ew     ; 6 uses

bb.eu:                                            ; preds = %bb.et
  %i.ahp = load <4 x float>, ptr %i.aho, align 4
  %i.ahq = shufflevector <4 x float> %i.ahp, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.aho, i64 16
  %i.ahs = load <4 x float>, ptr %i.ahr, align 4
  %i.aht = shufflevector <4 x float> %i.ahs, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aho, i64 32
  %i.ahv = load <4 x float>, ptr %i.ahu, align 4
  %i.ahw = shufflevector <4 x float> %i.ahv, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.aho, i64 8
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !54
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.aho, i64 24
  %i.aia = load float, ptr %i.ahz, align 4, !tbaa !54
  %i.aib = insertelement <2 x float> %i.aht, float %i.aia, i64 1
  %i.aic = fmul nsz <2 x float> %i.aib, zeroinitializer
  %i.aid = insertelement <2 x float> %i.ahq, float %i.ahy, i64 1
  %i.aie = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aid, <2 x float> zeroinitializer, <2 x float> %i.aic)
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aho, i64 40
  %i.aig = load float, ptr %i.aif, align 4, !tbaa !54
  %i.aih = insertelement <2 x float> %i.ahw, float %i.aig, i64 1
  %i.aii = fadd nsz <2 x float> %i.aih, %i.aie
  %i.aij = fpext <2 x float> %i.aii to <2 x double> ; 2 uses
  %i.aik = extractelement <2 x double> %i.aij, i64 0
  %i.ail = extractelement <2 x double> %i.aij, i64 1
  %i.aim = call nsz double @llvm.atan2.f64(double %i.aik, double %i.ail)
  %i.ain = fmul nsz double %i.aim, f0x404CA5DC1A63C1F8 ; 2 uses
  %i.aio = fptrunc nsz double %i.ain to float     ; 2 uses
  %i.aip = fcmp nsz olt double %i.ain, f0xB690000000000000
  %i.aiq = fadd nsz float %i.aio, 3.600000e+02
  %storemerge.i = select i1 %i.aip, float %i.aiq, float %i.aio ; 3 uses
  %i.air = fcmp nsz ult float %storemerge.i, 3.600000e+02
  %i.ais = fadd nsz float %storemerge.i, -3.600000e+02
  %storemerge7.i = select i1 %i.air, float %storemerge.i, float %i.ais
  %i.ait = fneg nsz float %storemerge7.i
  %i.aiu = fptosi float %i.ait to i32
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.jl, i64 88
  %i.aiw = load i32, ptr %i.aiv, align 8, !tbaa !400
  %i.aix = add nsw i32 %i.aiw, %i.aiu
  %i.aiy = srem i32 %i.aix, 360                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #34
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.jl, i64 100
  %i.aja = uitofp nneg i32 %.sroa.0832.0 to double
  %i.ajb = uitofp nneg i32 %.sroa.8.0 to double
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.jl, i64 108
  %32 = load <4 x float>, ptr %i.hi, align 8
  %i.ajd = load <2 x float>, ptr %i.aiz, align 4, !tbaa !54
  %i.aje = fpext <2 x float> %i.ajd to <2 x double>
  %i.ajf = fadd nsz <2 x double> %i.aje, splat (double -1.000000e+00)
  %i.ajg = insertelement <2 x double> poison, double %i.aja, i64 0
  %i.ajh = insertelement <2 x double> %i.ajg, double %i.ajb, i64 1
  %i.aji = fmul nsz <2 x double> %i.ajf, %i.ajh
  %i.ajj = fmul nsz <2 x double> %i.aji, splat (double 5.000000e-01)
  %i.ajk = fptosi <2 x double> %i.ajj to <2 x i32>
  %i.ajl = add nsw <2 x i32> %i.ajk, %i.jy
  %i.ajm = load <2 x float>, ptr %i.ajc, align 4, !tbaa !54
  %i.ajn = shufflevector <4 x float> %32, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ajo = fmul nsz <2 x float> %i.ajn, %i.ajm
  %i.ajp = fptosi <2 x float> %i.ajo to <2 x i32>
  %i.ajq = add nsw <2 x i32> %i.ajl, %i.ajp       ; 2 uses
  store <2 x i32> %i.ajq, ptr %31, align 8, !tbaa !86
  %i.ajr = insertelement <2 x i32> poison, i32 %.sroa.0832.0, i64 0
  %i.ajs = insertelement <2 x i32> %i.ajr, i32 %.sroa.8.0, i64 1
  %i.ajt = add nsw <2 x i32> %i.ajq, %i.ajs
  store <2 x i32> %i.ajt, ptr %i.hh, align 8, !tbaa !86
  %i.aju = getelementptr inbounds nuw i8, ptr %i.jl, i64 96
  %i.ajv = load i32, ptr %i.aju, align 8, !tbaa !402
  switch i32 %i.ajv, label %bb.fa [
    i32 0, label %.invoke1306
    i32 1, label %bb.ey
    i32 2, label %.invoke
    i32 3, label %bb.ez
  ]

bb.ev:                                            ; preds = %bb.es, %bb.er
  %i.ajw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.ew:                                            ; preds = %bb.et
  %i.ajx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.ex:                                            ; preds = %.invoke1306, %.invoke
  %i.ajy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #34
  br label %bb.fx

bb.ey:                                            ; preds = %bb.eu
  %i.ajz = sub nsw i32 0, %i.aiy
  br label %.invoke1306

.invoke1306:                                      ; preds = %bb.eu, %bb.ey
  %i.aka = phi i32 [ %i.ajz, %bb.ey ], [ %i.aiy, %bb.eu ]
  invoke void @_ZN3Hud17drawCompassRotateEP10HudElementPN5video8ITextureERKN4core4rectIiEEi(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr nonnull poison, ptr noundef nonnull %i.agh, ptr noundef nonnull align 4 dereferenceable(16) %31, i32 noundef %i.aka)
          to label %bb.fa unwind label %bb.ex

bb.ez:                                            ; preds = %bb.eu
  %i.akb = sub nsw i32 0, %i.aiy
  br label %.invoke

.invoke:                                          ; preds = %bb.eu, %bb.ez
  %i.akc = phi i32 [ %i.akb, %bb.ez ], [ %i.aiy, %bb.eu ]
  invoke void @_ZN3Hud20drawCompassTranslateEP10HudElementPN5video8ITextureERKN4core4rectIiEEi(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr noundef nonnull %i.jl, ptr noundef nonnull %i.agh, ptr noundef nonnull align 4 dereferenceable(16) %31, i32 noundef %i.akc)
          to label %bb.fa unwind label %bb.ex

bb.fa:                                            ; preds = %.invoke1306, %.invoke, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #34
  br label %.critedge.thread

bb.fb:                                            ; preds = %bb.ac
  %i.akd = load ptr, ptr %i.by, align 8, !tbaa !79
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 632
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !493 ; 2 uses
  %.not274 = icmp eq ptr %i.akf, null
  br i1 %.not274, label %.critedge.thread, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.akg = getelementptr inbounds nuw i8, ptr %i.jl, i64 128
  %i.akh = load float, ptr %i.hf, align 4, !tbaa !142 ; 2 uses
  %i.aki = load <2 x float>, ptr %i.akg, align 8, !tbaa !54 ; 3 uses
  %i.akj = extractelement <2 x float> %i.aki, i64 0 ; 2 uses
  %i.akk = fcmp nsz olt float %i.akj, 0.000000e+00
  br i1 %i.akk, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.akl = uitofp nsz i32 %i.jp to double
  %i.akm = fpext nnan nsz float %i.akj to double
  %i.akn = fmul nnan nsz double %i.akm, -1.000000e-02
  %i.ako = fmul nsz double %i.akn, %i.akl
  %i.akp = fptosi double %i.ako to i32
  %i.akq = insertelement <2 x i32> poison, i32 %i.akp, i64 0
  %i.akr = shufflevector <2 x i32> %i.akq, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.fg

bb.fe:                                            ; preds = %bb.fc
  %i.aks = insertelement <2 x float> poison, float %i.akh, i64 0
  %i.akt = shufflevector <2 x float> %i.aks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aku = fmul nsz <2 x float> %i.akt, %i.aki
  %i.akv = fptosi <2 x float> %i.aku to <2 x i32>
  %i.akw = extractelement <2 x float> %i.aki, i64 1 ; 2 uses
  %i.akx = fcmp nsz olt float %i.akw, 0.000000e+00
  br i1 %i.akx, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.aky = uitofp nsz i32 %i.jo to double
  %i.akz = fpext nnan nsz float %i.akw to double
  %i.ala = fmul nnan nsz double %i.akz, -1.000000e-02
  %i.alb = fmul nsz double %i.ala, %i.aky
  %i.alc = fptosi double %i.alb to i32
  %i.ald = insertelement <2 x i32> poison, i32 %i.alc, i64 0
  %i.ale = shufflevector <2 x i32> %i.ald, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fe, %bb.ff, %bb.fd
  %i.alf = phi <2 x i32> [ %i.akr, %bb.fd ], [ %i.ale, %bb.ff ], [ %i.akv, %bb.fe ] ; 4 uses
  %i.alg = extractelement <2 x i32> %i.alf, i64 0
  %i.alh = icmp sgt i32 %i.alg, 0
  %i.ali = extractelement <2 x i32> %i.alf, i64 1
  %i.alj = icmp sgt i32 %i.ali, 0
  %or.cond9.not = select i1 %i.alh, i1 %i.alj, i1 false
  br i1 %or.cond9.not, label %bb.fh, label %.loopexit.sink.split

bb.fh:                                            ; preds = %bb.fg
  %i.alk = getelementptr inbounds nuw i8, ptr %i.jl, i64 100
  %i.all = uitofp <2 x i32> %i.alf to <2 x double>
  %i.alm = load <2 x float>, ptr %i.alk, align 4, !tbaa !54
  %i.aln = fpext <2 x float> %i.alm to <2 x double>
  %i.alo = fadd nsz <2 x double> %i.aln, splat (double -1.000000e+00)
  %i.alp = getelementptr inbounds nuw i8, ptr %i.jl, i64 108
  %i.alq = fmul nsz <2 x double> %i.alo, %i.all
  %i.alr = fmul nsz <2 x double> %i.alq, splat (double 5.000000e-01)
  %i.als = fptosi <2 x double> %i.alr to <2 x i32>
  %i.alt = load <2 x float>, ptr %i.alp, align 4, !tbaa !54
  %i.alu = insertelement <2 x float> poison, float %i.akh, i64 0
  %i.alv = shufflevector <2 x float> %i.alu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.alw = fmul nsz <2 x float> %i.alv, %i.alt
  %i.alx = fptosi <2 x float> %i.alw to <2 x i32>
  %i.aly = add <2 x i32> %i.alx, %i.jy
  %i.alz = add <2 x i32> %i.aly, %i.als           ; 2 uses
  %.sroa.0793.4.insert.insert800 = bitcast <2 x i32> %i.alz to i64
  %i.ama = add nsw <2 x i32> %i.alz, %i.alf
  %.sroa.10.12.insert.insert810 = bitcast <2 x i32> %i.ama to i64
  invoke void @_ZN7Minimap11drawMinimapEN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(192) %i.akf, i64 %.sroa.0793.4.insert.insert800, i64 %.sroa.10.12.insert.insert810)
          to label %.critedge.thread unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.amb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fj:                                            ; preds = %bb.ac
  %i.amc = getelementptr inbounds nuw i8, ptr %i.jl, i64 108
  %i.amd = getelementptr inbounds nuw i8, ptr %i.jl, i64 96
  %i.ame = load i32, ptr %i.amd, align 8, !tbaa !402
  %i.amf = trunc i32 %i.ame to i16
  %i.amg = getelementptr inbounds nuw i8, ptr %i.jl, i64 100
  invoke void @_ZN3Hud10drawHotbarERKN4core8vector2dIiEERKNS1_IfEEtS7_(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.amc, i16 noundef zeroext %i.amf, ptr noundef nonnull align 4 dereferenceable(8) %i.amg)
          to label %.critedge.thread unwind label %.loopexit1011

bb.fk:                                            ; preds = %bb.ac
  br i1 %.not.i736, label %_ZTW10infostream.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.fk, %bb.fl
  %i.amh = load ptr, ptr %i.jk, align 8, !tbaa !436, !nonnull !158, !align !449 ; 2 uses
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !75
  %i.amj = load ptr, ptr %i.ami, align 8
  %i.amk = invoke noundef zeroext i1 %i.amj(ptr noundef nonnull align 8 dereferenceable(8) %i.amh)
          to label %.noexc738 unwind label %.loopexit1011, !inline_history !494

.noexc738:                                        ; preds = %_ZTW10infostream.exit
  %.v.i737 = select i1 %i.amk, i64 976, i64 984
  %i.aml = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.v.i737 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.16, ptr %i.b, align 8, !tbaa !451
  %i.amm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aml, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.fm unwind label %.loopexit1011 ; 0 uses

bb.fm:                                            ; preds = %.noexc738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.amn = load ptr, ptr %i.aml, align 8, !tbaa !452 ; 5 uses
  %.not.i740 = icmp eq ptr %i.amn, null
  br i1 %.not.i740, label %_ZN11StreamProxylsIR14HudElementTypeEERS_OT_.exit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !75
  %i.amp = getelementptr i8, ptr %i.amo, i64 -24
  %i.amq = load i64, ptr %i.amp, align 8
  %i.amr = getelementptr inbounds i8, ptr %i.amn, i64 %i.amq
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 32
  %i.amt = load i32, ptr %i.ams, align 8, !tbaa !453
  %i.amu = icmp eq i32 %i.amt, 0
  br i1 %i.amu, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.amn)
          to label %.noexc742 unwind label %.loopexit1011

.noexc742:                                        ; preds = %bb.fo
  %.pre.i741 = load ptr, ptr %i.aml, align 8, !tbaa !452
  br label %bb.fp

bb.fp:                                            ; preds = %.noexc742, %bb.fn
  %i.amv = phi ptr [ %.pre.i741, %.noexc742 ], [ %i.amn, %bb.fn ]
  %i.amw = load i32, ptr %i.jl, align 8, !tbaa !495
  %i.amx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.amv, i32 noundef %i.amw)
          to label %_ZN11StreamProxylsIR14HudElementTypeEERS_OT_.exit unwind label %.loopexit1011 ; 0 uses

_ZN11StreamProxylsIR14HudElementTypeEERS_OT_.exit: ; preds = %bb.fm, %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.17, ptr %i.a, align 8, !tbaa !451
end_hunk_0
begin_hunk_1_@_ZN3Hud10drawHotbarERKN4core8vector2dIiEERKNS1_IfEEtS7_:bb.a
  %i.au = load ptr, ptr %6, align 8, !tbaa !85
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.aw = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %.noexc50
  %i.ax = fcmp nsz ugt float %i.ao, %i.aw
  %i.ay = load ptr, ptr %6, align 8, !tbaa !85    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.aq
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.g
  %i.ba = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br i1 %i.ax, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.sroa.09.0.copyload = load i64, ptr %1, align 4
  %.sroa.7.0.insert.ext70 = zext i32 %i.z to i64
  %.sroa.7.0.insert.shift71 = shl nuw i64 %.sroa.7.0.insert.ext70, 32
  %.sroa.059.0.insert.ext63 = zext i32 %i.w to i64
  %.sroa.059.0.insert.insert65 = or disjoint i64 %.sroa.7.0.insert.shift71, %.sroa.059.0.insert.ext63
  %.sroa.07.0.copyload = load <2 x float>, ptr %4, align 4
  %i.bc = add i16 %i.u, 1
  call void @_ZN3Hud9drawItemsEN4core8vector2dIiEES2_iNS1_IfEEiP13InventoryListttb(ptr noundef nonnull align 8 dereferenceable(572) %0, i64 %.sroa.09.0.copyload, i64 %.sroa.059.0.insert.insert65, i32 noundef %i.ac, <2 x float> %.sroa.07.0.copyload, i32 noundef 0, ptr noundef nonnull %i.h, i16 noundef zeroext %i.bc, i16 noundef zeroext %3, i1 noundef zeroext true)
  br label %bb.l

bb.i:                                             ; preds = %_ZN15RenderingEngine13getWindowSizeEv.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.j:                                             ; preds = %.noexc50
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %6, align 8, !tbaa !85    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.aq
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.j
  %i.bh = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.i
  %.pn42 = phi { ptr, i32 } [ %i.bd, %bb.i ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.be, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.m

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.bj = load i32, ptr %i.ad, align 8, !tbaa !143
  %i.bk = load i32, ptr %i.ae, align 4, !tbaa !144
  %i.bl = load i32, ptr %1, align 4, !tbaa !472
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !473
  %i.bo = add i32 %i.bk, %i.bj
  %i.bp = sub i32 %i.bn, %i.bo
  %.sroa.2.0.insert.ext.i = zext i32 %i.bp to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bl to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.7.0.insert.ext66 = zext i32 %i.z to i64
  %.sroa.7.0.insert.shift67 = shl nuw i64 %.sroa.7.0.insert.ext66, 32
  %.sroa.059.0.insert.ext60 = zext i32 %i.w to i64
  %.sroa.059.0.insert.insert62 = or disjoint i64 %.sroa.7.0.insert.shift67, %.sroa.059.0.insert.ext60 ; 2 uses
  %i.bq = lshr i32 %i.ac, 1                       ; 2 uses
  %.sroa.03.0.copyload = load <2 x float>, ptr %4, align 4
  %i.br = add i16 %i.u, 1                         ; 2 uses
  call void @_ZN3Hud9drawItemsEN4core8vector2dIiEES2_iNS1_IfEEiP13InventoryListttb(ptr noundef nonnull align 8 dereferenceable(572) %0, i64 %.sroa.0.0.insert.insert.i, i64 %.sroa.059.0.insert.insert62, i32 noundef %i.bq, <2 x float> %.sroa.03.0.copyload, i32 noundef 0, ptr noundef nonnull %i.h, i16 noundef zeroext %i.br, i16 noundef zeroext %3, i1 noundef zeroext true)
  %.sroa.02.0.copyload = load i64, ptr %1, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %4, align 4
  call void @_ZN3Hud9drawItemsEN4core8vector2dIiEES2_iNS1_IfEEiP13InventoryListttb(ptr noundef nonnull align 8 dereferenceable(572) %0, i64 %.sroa.02.0.copyload, i64 %.sroa.059.0.insert.insert62, i32 noundef %i.ac, <2 x float> %.sroa.0.0.copyload, i32 noundef %i.bq, ptr noundef nonnull %i.h, i16 noundef zeroext %i.br, i16 noundef zeroext %3, i1 noundef zeroext true)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  resume { ptr, i32 } %.pn42.pn
}

declare void @_ZN13TouchControls16resetHotbarRectsEv(ptr noundef nonnull align 8 dereferenceable(712)) local_unnamed_addr #3

declare noundef zeroext i16 @_ZN6Player13getWieldIndexEv(ptr noundef nonnull align 8 dereferenceable(416)) local_unnamed_addr #3

declare noundef zeroext i16 @_ZN6Player21getMaxHotbarItemcountEv(ptr noundef nonnull align 8 dereferenceable(416)) local_unnamed_addr #3

declare noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Hud13drawCrosshairEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(572) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.core::rect", align 4        ; 7 uses
  %2 = alloca %"class.core::rect", align 8        ; 6 uses
  %3 = alloca [4 x %"class.video::SColor"], align 16 ; 4 uses
  %4 = alloca %"class.core::rect", align 4        ; 7 uses
  %5 = alloca %"class.core::rect", align 8        ; 6 uses
  %6 = alloca [4 x %"class.video::SColor"], align 16 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.core::vector2d.0", align 8  ; 4 uses
  %9 = alloca %"class.core::vector2d.0", align 8  ; 4 uses
  %10 = alloca %"class.core::vector2d.0", align 8 ; 4 uses
  %11 = alloca %"class.core::vector2d.0", align 8 ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.core::vector2d.0", align 8 ; 4 uses
  %14 = alloca %"class.core::vector2d.0", align 8 ; 4 uses
  %15 = alloca %"class.core::vector2d.0", align 8 ; 4 uses
  %16 = alloca %"class.core::vector2d.0", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.c = load i8, ptr %i.b, align 1, !tbaa !50, !range !157, !noundef !158
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.f = load i8, ptr %i.e, align 1, !tbaa !89, !range !157, !noundef !158
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 20, ptr %i.a, align 8, !tbaa !84
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %7, align 8, !tbaa !85
  %i.l = load i64, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.k, ptr noundef nonnull align 1 dereferenceable(20) @.str.8, i64 20, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !13
  %i.n = load ptr, ptr %7, align 8, !tbaa !85
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef null)
          to label %bb.c unwind label %bb.f       ; 3 uses

bb.c:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load i32, ptr %i.t, align 4, !tbaa !489  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 76
  %i.w = load i32, ptr %i.v, align 4, !tbaa !491  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.y = load float, ptr %i.x, align 4, !tbaa !142
  %i.z = call nsz noundef float @llvm.floor.f32(float %i.y) ; 2 uses
  %i.aa = fcmp nsz olt float %i.z, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.aa, float 1.000000e+00, float %i.z
  %i.ab = fptosi float %.sroa.speculated.i to i32 ; 2 uses
  %i.ac = mul nsw i32 %i.u, %i.ab                 ; 2 uses
  %i.ad = mul nsw i32 %i.w, %i.ab                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store i32 0, ptr %4, align 4, !tbaa !472
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.ae, align 4, !tbaa !473
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.u, ptr %i.af, align 4, !tbaa !472
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.w, ptr %i.ag, align 4, !tbaa !473
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !504
  %.neg.i = sdiv i32 %i.ac, -2
  %i.aj = add i32 %.neg.i, %i.ai                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !505
  %.neg3.i = sdiv i32 %i.ad, -2
  %i.am = add i32 %i.al, %.neg3.i                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %.sroa.5.0.insert.ext.i = zext i32 %i.am to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.aj to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %5, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = add nsw i32 %i.aj, %i.ac
  %i.ap = add nsw i32 %i.am, %i.ad
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !472
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !473
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  %17 = load <4 x i32>, ptr %i.ar, align 4
  %i.as = shufflevector <4 x i32> %17, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.as, ptr %6, align 16, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !78
  invoke void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.au, ptr noundef nonnull %i.s, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef null, ptr noundef nonnull %6, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.av = load ptr, ptr %7, align 8, !tbaa !85    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.j
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ax = load i64, ptr %i.j, align 8, !tbaa !16
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.m

bb.e:                                             ; preds = %.noexc.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.f:                                             ; preds = %bb.c, %.noexc
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %7, align 8, !tbaa !85    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.j
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.f
  %i.bd = load i64, ptr %i.j, align 8, !tbaa !16
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.e
  %.pn21 = phi { ptr, i32 } [ %i.az, %bb.e ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.ba, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.n

bb.g:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !142
  %i.bh = fmul nsz float %i.bg, 8.000000e+00
  %i.bi = fadd nsz float %i.bh, 5.000000e-01
  %i.bj = tail call nsz noundef float @llvm.floor.f32(float %i.bi)
  %i.bk = fptosi float %i.bj to i32               ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !78 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !472 ; 2 uses
  %i.bp = sub nsw i32 %i.bo, %i.bk
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !473 ; 2 uses
  %i.bs = sub nsw i32 %i.br, %i.bk
  %.sroa.2.0.insert.ext.i = zext i32 %i.bs to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i29 = zext i32 %i.bp to i64
  %.sroa.0.0.insert.insert.i30 = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i29
  store i64 %.sroa.0.0.insert.insert.i30, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.bt = add nsw i32 %i.bo, %i.bk
  %i.bu = add nsw i32 %i.br, %i.bk
  %.sroa.2.0.insert.ext.i31 = zext i32 %i.bu to i64
  %.sroa.2.0.insert.shift.i32 = shl nuw i64 %.sroa.2.0.insert.ext.i31, 32
  %.sroa.0.0.insert.ext.i33 = zext i32 %i.bt to i64
  %.sroa.0.0.insert.insert.i34 = or disjoint i64 %.sroa.2.0.insert.shift.i32, %.sroa.0.0.insert.ext.i33
  store i64 %.sroa.0.0.insert.insert.i34, ptr %9, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.06.0.copyload = load i32, ptr %i.bv, align 4, !tbaa !86
  %i.bw = load ptr, ptr %i.bm, align 8, !tbaa !75
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 440
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 %.sroa.06.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.bz = load ptr, ptr %i.bl, align 8, !tbaa !78 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.ca = load i32, ptr %i.bn, align 8, !tbaa !472 ; 2 uses
  %i.cb = add nsw i32 %i.ca, %i.bk
  %i.cc = load i32, ptr %i.bq, align 4, !tbaa !473 ; 2 uses
  %i.cd = sub nsw i32 %i.cc, %i.bk
  %.sroa.2.0.insert.ext.i35 = zext i32 %i.cd to i64
  %.sroa.2.0.insert.shift.i36 = shl nuw i64 %.sroa.2.0.insert.ext.i35, 32
  %.sroa.0.0.insert.ext.i37 = zext i32 %i.cb to i64
  %.sroa.0.0.insert.insert.i38 = or disjoint i64 %.sroa.2.0.insert.shift.i36, %.sroa.0.0.insert.ext.i37
  store i64 %.sroa.0.0.insert.insert.i38, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.ce = sub nsw i32 %i.ca, %i.bk
  %i.cf = add nsw i32 %i.cc, %i.bk
  %.sroa.2.0.insert.ext.i39 = zext i32 %i.cf to i64
  %.sroa.2.0.insert.shift.i40 = shl nuw i64 %.sroa.2.0.insert.ext.i39, 32
  %.sroa.0.0.insert.ext.i41 = zext i32 %i.ce to i64
  %.sroa.0.0.insert.insert.i42 = or disjoint i64 %.sroa.2.0.insert.shift.i40, %.sroa.0.0.insert.ext.i41
  store i64 %.sroa.0.0.insert.insert.i42, ptr %11, align 8
  %.sroa.05.0.copyload = load i32, ptr %i.bv, align 4, !tbaa !86
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !75
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 440
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %11, i32 %.sroa.05.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !88, !range !157, !noundef !158
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %._crit_edge.i.i43, label %bb.l

._crit_edge.i.i43:                                ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !87 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.co, ptr %12, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.co, ptr noundef nonnull align 1 dereferenceable(13) @.str.7, i64 13, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 13, ptr %i.cp, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 29
  store i8 0, ptr %i.cq, align 1, !tbaa !16
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !75
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = invoke noundef ptr %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef null)
          to label %bb.i unwind label %bb.k       ; 3 uses

bb.i:                                             ; preds = %._crit_edge.i.i43
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !489 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 76
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !491 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.da = load float, ptr %i.cz, align 4, !tbaa !142
  %i.db = call nsz noundef float @llvm.floor.f32(float %i.da) ; 2 uses
  %i.dc = fcmp nsz olt float %i.db, 1.000000e+00
  %.sroa.speculated.i47 = select i1 %i.dc, float 1.000000e+00, float %i.db
  %i.dd = fptosi float %.sroa.speculated.i47 to i32 ; 2 uses
  %i.de = mul nsw i32 %i.cw, %i.dd                ; 2 uses
  %i.df = mul nsw i32 %i.cy, %i.dd                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  store i32 0, ptr %1, align 4, !tbaa !472
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.dg, align 4, !tbaa !473
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.cw, ptr %i.dh, align 4, !tbaa !472
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.cy, ptr %i.di, align 4, !tbaa !473
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !504
  %.neg.i48 = sdiv i32 %i.de, -2
  %i.dl = add i32 %.neg.i48, %i.dk                ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !505
  %.neg3.i49 = sdiv i32 %i.df, -2
  %i.do = add i32 %i.dn, %.neg3.i49               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %.sroa.5.0.insert.ext.i50 = zext i32 %i.do to i64
  %.sroa.5.0.insert.shift.i51 = shl nuw i64 %.sroa.5.0.insert.ext.i50, 32
  %.sroa.0.0.insert.ext.i52 = zext i32 %i.dl to i64
  %.sroa.0.0.insert.insert.i53 = or disjoint i64 %.sroa.5.0.insert.shift.i51, %.sroa.0.0.insert.ext.i52
  store i64 %.sroa.0.0.insert.insert.i53, ptr %2, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dq = add nsw i32 %i.dl, %i.de
  %i.dr = add nsw i32 %i.do, %i.df
  store i32 %i.dq, ptr %i.dp, align 8, !tbaa !472
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !473
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %18 = load <4 x i32>, ptr %i.dt, align 4
  %i.du = shufflevector <4 x i32> %18, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.du, ptr %3, align 16, !tbaa !86
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !78
  invoke void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.dw, ptr noundef nonnull %i.cu, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef null, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.dx = load ptr, ptr %12, align 8, !tbaa !85   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.co
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.j
  %i.dz = load i64, ptr %i.co, align 8, !tbaa !16
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.m

bb.k:                                             ; preds = %bb.i, %._crit_edge.i.i43
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = load ptr, ptr %12, align 8, !tbaa !85   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.co
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.k
  %i.ee = load i64, ptr %i.co, align 8, !tbaa !16
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !142
  %i.ei = fmul nsz float %i.eh, 1.000000e+01
  %i.ej = fadd nsz float %i.ei, 5.000000e-01
  %i.ek = tail call nsz noundef float @llvm.floor.f32(float %i.ej)
  %i.el = fptosi float %i.ek to i32               ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !78 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !472 ; 2 uses
  %i.eq = sub nsw i32 %i.ep, %i.el
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !473
  %.sroa.2.0.insert.ext.i62 = zext i32 %i.es to i64
  %.sroa.2.0.insert.shift.i63 = shl nuw i64 %.sroa.2.0.insert.ext.i62, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i64 = zext i32 %i.eq to i64
  %.sroa.0.0.insert.insert.i65 = or disjoint i64 %.sroa.2.0.insert.shift.i63, %.sroa.0.0.insert.ext.i64
  store i64 %.sroa.0.0.insert.insert.i65, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.et = add nsw i32 %i.ep, %i.el
  %.sroa.0.0.insert.ext.i68 = zext i32 %i.et to i64
  %.sroa.0.0.insert.insert.i69 = or disjoint i64 %.sroa.2.0.insert.shift.i63, %.sroa.0.0.insert.ext.i68
  store i64 %.sroa.0.0.insert.insert.i69, ptr %14, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %i.eu, align 4, !tbaa !86
  %i.ev = load ptr, ptr %i.en, align 8, !tbaa !75
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 440
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 %.sroa.01.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.ey = load ptr, ptr %i.em, align 8, !tbaa !78 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  %i.ez = load i32, ptr %i.eo, align 8, !tbaa !472
  %i.fa = load i32, ptr %i.er, align 4, !tbaa !473 ; 2 uses
  %i.fb = sub nsw i32 %i.fa, %i.el
  %.sroa.2.0.insert.ext.i70 = zext i32 %i.fb to i64
  %.sroa.2.0.insert.shift.i71 = shl nuw i64 %.sroa.2.0.insert.ext.i70, 32
  %.sroa.0.0.insert.ext.i72 = zext i32 %i.ez to i64 ; 2 uses
  %.sroa.0.0.insert.insert.i73 = or disjoint i64 %.sroa.2.0.insert.shift.i71, %.sroa.0.0.insert.ext.i72
  store i64 %.sroa.0.0.insert.insert.i73, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  %i.fc = add nsw i32 %i.fa, %i.el
  %.sroa.2.0.insert.ext.i74 = zext i32 %i.fc to i64
  %.sroa.2.0.insert.shift.i75 = shl nuw i64 %.sroa.2.0.insert.ext.i74, 32
  %.sroa.0.0.insert.insert.i77 = or disjoint i64 %.sroa.2.0.insert.shift.i75, %.sroa.0.0.insert.ext.i72
  store i64 %.sroa.0.0.insert.insert.i77, ptr %16, align 8
  %.sroa.0.0.copyload = load i32, ptr %i.eu, align 4, !tbaa !86
  %i.fd = load ptr, ptr %i.ey, align 8, !tbaa !75
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 440
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %16, i32 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3Hud15setSelectionPosERKN4core8vector3dIfEERKNS1_IsEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(572) initializes((144, 150), (240, 264)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 2 dereferenceable(6) %2, i64 6, i1 false), !tbaa.struct !506
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !507
  %.sroa.05.0.copyload = load i48, ptr %2, align 2 ; 3 uses
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.05.0.copyload, 16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.05.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.c = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.d = fmul nnan nsz float %i.c, 1.000000e+01
  %i.e = trunc i48 %.sroa.05.0.copyload to i16
  %i.f = insertelement <2 x i16> poison, i16 %i.e, i64 0
  %i.g = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %i.h = insertelement <2 x i16> %i.f, i16 %i.g, i64 1
  %i.i = sitofp <2 x i16> %i.h to <2 x float>
  %i.j = fmul nnan nsz <2 x float> %i.i, splat (float 1.000000e+01)
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !54
  %i.l = fsub nsz <2 x float> %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !184
  %i.o = fsub nsz float %i.n, %i.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 252
  store <2 x float> %i.l, ptr %i.p, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 260
  store float %i.o, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Hud17drawSelectionMeshEv(ptr noundef nonnull align 8 dereferenceable(572) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.core::CMatrix4", align 4    ; 4 uses
  %2 = alloca %"class.core::CMatrix4", align 16   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !92
  switch i32 %i.b, label %bb.c [
    i32 2, label %bb.h
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(127) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !78   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef 1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %i.o, i64 64, i1 false), !tbaa.struct !498
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.r = load float, ptr %i.q, align 4, !tbaa !184 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !78   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.y = load <2 x float>, ptr %i.p, align 4, !tbaa !54 ; 2 uses
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aa = insertelement <4 x float> %i.z, float %i.r, i64 2 ; 3 uses
  %i.ab = load float, ptr %i.t, align 8, !tbaa !184
  %i.ac = fpext nsz float %i.ab to double
  %sincos39.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.ac) ; 2 uses
  %sin40.i = extractvalue { double, double } %sincos39.i, 0 ; 4 uses
  %cos41.i = extractvalue { double, double } %sincos39.i, 1 ; 4 uses
  %i.ad = fneg nsz double %sin40.i
  %i.ae = fneg nsz double %cos41.i
  %i.af = load <2 x float>, ptr %i.s, align 8, !tbaa !54
  %i.ag = fpext <2 x float> %i.af to <2 x double>
  %i.ah = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.ag) ; 2 uses
  %i.ai = extractvalue { <2 x double>, <2 x double> } %i.ah, 0 ; 5 uses
  %i.aj = extractvalue { <2 x double>, <2 x double> } %i.ah, 1 ; 5 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0 ; 2 uses
  %i.al = extractelement <2 x double> %i.aj, i64 1 ; 2 uses
  %i.am = fmul nsz double %i.al, %cos41.i
  %i.an = fptrunc nsz double %i.am to float       ; 2 uses
end_hunk_1
