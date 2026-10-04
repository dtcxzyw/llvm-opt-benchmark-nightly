Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGjkPairDetector?download=true
inline.NumInlined: 372
inline.NumDeleted: 65
begin_hunk_0_@_ZN17btGjkPairDetector26getClosestPointsNonVirtualERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDraw:bb.a
  store i32 9, ptr %i.bg, align 8, !tbaa !32
  br label %.split

bb.bc:                                            ; preds = %bb.au
  %i.aam = fcmp ogt float %i.za, 0.000000e+00
  br i1 %i.aam, label %bb.bd, label %.split

bb.bd:                                            ; preds = %bb.bc
  %i.aan = load float, ptr %21, align 4, !tbaa !12
  %i.aao = load float, ptr %22, align 4, !tbaa !12
  %i.aap = fsub float %i.aan, %i.aao              ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !12
  %i.aas = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !12
  %i.aau = fsub float %i.aar, %i.aat              ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.aaw = load float, ptr %i.aav, align 4, !tbaa !12
  %i.aax = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !12
  %i.aaz = fsub float %i.aaw, %i.aay              ; 2 uses
  %i.aba = fmul float %i.aau, %i.aau
  %i.abb = call float @llvm.fmuladd.f32(float %i.aap, float %i.aap, float %i.aba)
  %i.abc = call noundef float @llvm.fmuladd.f32(float %i.aaz, float %i.aaz, float %i.abb)
  %sqrt.i227 = call noundef float @llvm.sqrt.f32(float %i.abc)
  %i.abd = fsub float %sqrt.i227, %i.bj           ; 2 uses
  %i.abe = fcmp uge float %i.abd, %.1
  %or.cond135.not = select i1 %.1114, i1 %i.abe, i1 false
  br i1 %or.cond135.not, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !36
  %i.abf = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abg = fmul <2 x float> %i.abf, %i.yv
  %i.abh = fmul float %i.bh, %i.yz
  %i.abi = load <2 x float>, ptr %9, align 8, !tbaa !12
  %i.abj = fsub <2 x float> %i.abi, %i.abg
  store <2 x float> %i.abj, ptr %9, align 8, !tbaa !12
  %i.abk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.abl = load float, ptr %i.abk, align 8, !tbaa !12
  %i.abm = fsub float %i.abl, %i.abh
  store float %i.abm, ptr %i.abk, align 8, !tbaa !12
  %i.abn = fmul float %i.bi, %i.yz
  %i.abo = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.abp = fmul <2 x float> %i.abo, %i.yv
  %i.abq = load <2 x float>, ptr %10, align 8, !tbaa !12
  %i.abr = fadd <2 x float> %i.abp, %i.abq
  store <2 x float> %i.abr, ptr %10, align 8, !tbaa !12
  %i.abs = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.abt = load float, ptr %i.abs, align 8, !tbaa !12
  %i.abu = fadd float %i.abn, %i.abt
  store float %i.abu, ptr %i.abs, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !36
  %i.abv = load float, ptr %8, align 16, !tbaa !12 ; 3 uses
  %i.abw = load float, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.abx = fmul float %i.abw, %i.abw
  %i.aby = call float @llvm.fmuladd.f32(float %i.abv, float %i.abv, float %i.abx)
  %i.abz = load float, ptr %i.c, align 8, !tbaa !12 ; 3 uses
  %i.aca = call noundef float @llvm.fmuladd.f32(float %i.abz, float %i.abz, float %i.aby)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.aca)
  %i.acb = fdiv float 1.000000e+00, %sqrt.i.i     ; 3 uses
  %i.acc = fmul float %i.abv, %i.acb
  store float %i.acc, ptr %8, align 16, !tbaa !12
  %i.acd = fmul float %i.abw, %i.acb
  store float %i.acd, ptr %i.b, align 4, !tbaa !12
  %i.ace = fmul float %i.abz, %i.acb
  store float %i.ace, ptr %i.c, align 8, !tbaa !12
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %storemerge130 = phi i32 [ 6, %bb.be ], [ 5, %bb.bd ]
  %.4 = phi float [ %i.abd, %bb.be ], [ %.1, %bb.bd ]
  store i32 %storemerge130, ptr %i.bg, align 8, !tbaa !32
  br label %.split.thread

.split.thread:                                    ; preds = %bb.bf, %bb.az, %bb.ba
  %.5.ph = phi float [ %.1, %bb.ba ], [ %i.aaf, %bb.az ], [ %.4, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %.sink.split

.split:                                           ; preds = %bb.bb, %bb.at, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br i1 %.1114, label %bb.bh, label %bb.bo

bb.bg:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br i1 %.1114, label %bb.bh, label %bb.bo

.sink.split:                                      ; preds = %bb.ar, %.split.thread
  %.6548.ph = phi float [ %.5.ph, %.split.thread ], [ %.1, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split, %.split, %bb.bg
  %.6548 = phi float [ %.1, %.split ], [ %.1, %bb.bg ], [ %.6548.ph, %.sink.split ] ; 6 uses
  %i.acf = fcmp olt float %.6548, 0.000000e+00
  br i1 %i.acf, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.acg = fmul float %.6548, %.6548
  %i.ach = load float, ptr %i.rg, align 4, !tbaa !50
  %i.aci = fcmp olt float %i.acg, %i.ach
  br i1 %i.aci, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 16 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !36
  store float %.6548, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  %i.acj = fneg <3 x float> %i.yc                 ; 5 uses
  %i.ack = fneg float %.sroa.0470.0
  %i.acl = load <2 x float>, ptr %11, align 8, !tbaa !12
  %i.acm = load <2 x float>, ptr %i.f, align 8, !tbaa !12
  %i.acn = shufflevector <3 x float> %i.acj, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aco = fmul <2 x float> %i.acm, %i.acn
  %i.acp = shufflevector <3 x float> %i.acj, <3 x float> poison, <2 x i32> zeroinitializer
  %i.acq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acl, <2 x float> %i.acp, <2 x float> %i.aco)
  %i.acr = load <2 x float>, ptr %i.h, align 8, !tbaa !12
  %i.acs = shufflevector <3 x float> %i.acj, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.act = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acr, <2 x float> %i.acs, <2 x float> %i.acq)
  %i.acu = load float, ptr %i.bq, align 8, !tbaa !12
  %i.acv = load float, ptr %i.bs, align 8, !tbaa !12
  %i.acw = extractelement <3 x float> %i.acj, i64 1
  %i.acx = fmul float %i.acv, %i.acw
  %i.acy = call float @llvm.fmuladd.f32(float %i.acu, float %i.ack, float %i.acx)
  %i.acz = load float, ptr %i.bw, align 8, !tbaa !12
  %i.ada = extractelement <3 x float> %i.acj, i64 2
  %i.adb = call noundef float @llvm.fmuladd.f32(float %i.acz, float %i.ada, float %i.acy)
  %.sroa.3.12.vec.insert.i245 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.adb, i64 0
  store <2 x float> %i.act, ptr %23, align 8
  %i.adc = getelementptr inbounds nuw i8, ptr %23, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i245, ptr %i.adc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #13
  %i.add = load <2 x float>, ptr %12, align 8, !tbaa !12
  %i.ade = load <2 x float>, ptr %i.m, align 8, !tbaa !12
  %i.adf = insertelement <2 x float> poison, float %.sroa.9.0, i64 0
  %i.adg = shufflevector <2 x float> %i.adf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adh = fmul <2 x float> %i.adg, %i.ade
  %i.adi = insertelement <2 x float> poison, float %.sroa.0470.0, i64 0
  %i.adj = shufflevector <2 x float> %i.adi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.add, <2 x float> %i.adj, <2 x float> %i.adh)
  %i.adl = load <2 x float>, ptr %i.o, align 8, !tbaa !12
  %i.adm = insertelement <2 x float> poison, float %.sroa.14.0, i64 0
  %i.adn = shufflevector <2 x float> %i.adm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ado = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adl, <2 x float> %i.adn, <2 x float> %i.adk)
  %i.adp = load float, ptr %i.cd, align 8, !tbaa !12
  %i.adq = load float, ptr %i.cf, align 8, !tbaa !12
  %i.adr = fmul float %.sroa.9.0, %i.adq
  %i.ads = call float @llvm.fmuladd.f32(float %i.adp, float %.sroa.0470.0, float %i.adr)
  %i.adt = load float, ptr %i.cj, align 8, !tbaa !12
  %i.adu = call noundef float @llvm.fmuladd.f32(float %i.adt, float %.sroa.14.0, float %i.ads)
  %.sroa.3.12.vec.insert.i250 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.adu, i64 0
  store <2 x float> %i.ado, ptr %24, align 8
  %i.adv = getelementptr inbounds nuw i8, ptr %24, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i250, ptr %i.adv, align 8
  %i.adw = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.adx = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %i.adw, ptr noundef nonnull align 4 dereferenceable(16) %23) ; 2 uses
  %i.ady = extractvalue { <2 x float>, <2 x float> } %i.adx, 0 ; 2 uses
  %i.adz = extractvalue { <2 x float>, <2 x float> } %i.adx, 1
  %i.aea = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.aeb = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %i.aea, ptr noundef nonnull align 4 dereferenceable(16) %24) ; 2 uses
  %i.aec = extractvalue { <2 x float>, <2 x float> } %i.aeb, 0 ; 4 uses
  %i.aed = extractvalue { <2 x float>, <2 x float> } %i.aeb, 1 ; 2 uses
  %i.aee = load float, ptr %i.bq, align 8, !tbaa !12 ; 2 uses
  %i.aef = load float, ptr %i.bs, align 8, !tbaa !12 ; 2 uses
  %i.aeg = load float, ptr %i.bw, align 8, !tbaa !12 ; 2 uses
  %i.aeh = load float, ptr %i.t, align 8, !tbaa !12
  %i.aei = load float, ptr %i.cd, align 8, !tbaa !12 ; 2 uses
  %i.aej = load float, ptr %i.cf, align 8, !tbaa !12 ; 2 uses
  %i.aek = load float, ptr %i.cj, align 8, !tbaa !12 ; 2 uses
  %i.ael = load float, ptr %i.p, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #13
  %i.aem = load <2 x float>, ptr %11, align 8, !tbaa !12 ; 3 uses
  %i.aen = load <2 x float>, ptr %i.f, align 8, !tbaa !12 ; 3 uses
  %i.aeo = load <2 x float>, ptr %i.h, align 8, !tbaa !12 ; 3 uses
  %i.aep = shufflevector <2 x float> %i.aeo, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aeq = getelementptr inbounds nuw i8, ptr %25, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  %i.aer = load <2 x float>, ptr %12, align 8, !tbaa !12 ; 3 uses
  %i.aes = shufflevector <2 x float> %i.aer, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aet = shufflevector <2 x float> %i.ady, <2 x float> %i.aec, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.aeu = shufflevector <2 x float> %i.aem, <2 x float> %i.aen, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.aev = shufflevector <2 x float> %i.aeo, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aew = shufflevector <4 x float> %i.aeu, <4 x float> %i.aev, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aex = shufflevector <2 x float> %i.aer, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aey = shufflevector <4 x float> %i.aew, <4 x float> %i.aex, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aez = fmul <4 x float> %i.aet, %i.aey
  %i.afa = shufflevector <2 x float> %i.ady, <2 x float> %i.aec, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.afb = shufflevector <2 x float> %i.aem, <2 x float> %i.aen, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.afc = shufflevector <4 x float> %i.afb, <4 x float> %i.aep, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.afd = shufflevector <4 x float> %i.afc, <4 x float> %i.aes, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.afe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.afa, <4 x float> %i.afd, <4 x float> %i.aez)
  %30 = load <2 x float>, ptr %i.m, align 8, !tbaa !12 ; 3 uses
  %31 = load <2 x float>, ptr %i.o, align 8, !tbaa !12 ; 3 uses
  %32 = load <4 x float>, ptr %i.i, align 8
  %33 = shufflevector <2 x float> %i.adz, <2 x float> %i.aed, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.aff = insertelement <4 x float> poison, float %i.aee, i64 0
  %34 = insertelement <4 x float> %i.aff, float %i.aef, i64 1
  %35 = insertelement <4 x float> %34, float %i.aeg, i64 2
  %36 = insertelement <4 x float> %35, float %i.aei, i64 3
  %37 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %33, <4 x float> %36, <4 x float> %i.afe)
  %i.afg = insertelement <4 x float> %32, float %i.aeh, i64 2
  %i.afh = insertelement <4 x float> %i.afg, float %i.ael, i64 3
  %i.afi = fadd <4 x float> %37, %i.afh           ; 3 uses
  %i.afj = load <2 x float>, ptr %i.s, align 4, !tbaa !12
  %i.afk = shufflevector <2 x float> %i.aec, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.afl = shufflevector <2 x float> %30, <2 x float> %31, <2 x i32> <i32 1, i32 3>
  %i.afm = fmul <2 x float> %i.afk, %i.afl
  %i.afn = shufflevector <2 x float> %i.aec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afo = shufflevector <2 x float> %30, <2 x float> %31, <2 x i32> <i32 0, i32 2>
  %i.afp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afn, <2 x float> %i.afo, <2 x float> %i.afm)
  %i.afq = shufflevector <2 x float> %i.aed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afr = insertelement <2 x float> poison, float %i.aej, i64 0
  %i.afs = insertelement <2 x float> %i.afr, float %i.aek, i64 1
  %i.aft = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afq, <2 x float> %i.afs, <2 x float> %i.afp)
  %i.afu = fadd <2 x float> %i.aft, %i.afj
  %shift692 = shufflevector <4 x float> %i.afi, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop693 = fsub <4 x float> %i.afi, %shift692
  %i.afv = extractelement <4 x float> %foldExtExtBinop693, i64 0
  %i.afw = shufflevector <4 x float> %i.afi, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.afx = fsub <2 x float> %i.afw, %i.afu        ; 2 uses
  %i.afy = extractelement <2 x float> %i.afx, i64 0
  %i.afz = fmul float %.sroa.9.0, %i.afy
  %i.aga = call float @llvm.fmuladd.f32(float %.sroa.0470.0, float %i.afv, float %i.afz)
  %i.agb = extractelement <2 x float> %i.afx, i64 1
  %i.agc = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0, float %i.agb, float %i.aga)
  %i.agd = fsub float %i.agc, %i.bj               ; 3 uses
  %i.age = load float, ptr %8, align 16, !tbaa !12 ; 3 uses
  %i.agf = load float, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.agg = load float, ptr %i.c, align 8, !tbaa !12 ; 3 uses
  %i.agh = insertelement <2 x float> poison, float %i.agf, i64 0
  %i.agi = shufflevector <2 x float> %i.agh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agj = fmul <2 x float> %i.aen, %i.agi
  %i.agk = insertelement <2 x float> poison, float %i.age, i64 0
  %i.agl = shufflevector <2 x float> %i.agk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aem, <2 x float> %i.agl, <2 x float> %i.agj)
  %i.agn = insertelement <2 x float> poison, float %i.agg, i64 0
  %i.ago = shufflevector <2 x float> %i.agn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aeo, <2 x float> %i.ago, <2 x float> %i.agm)
  %i.agq = fmul float %i.aef, %i.agf
  %i.agr = call float @llvm.fmuladd.f32(float %i.aee, float %i.age, float %i.agq)
  %i.ags = call noundef float @llvm.fmuladd.f32(float %i.aeg, float %i.agg, float %i.agr)
  %.sroa.3.12.vec.insert.i270 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ags, i64 0
  store <2 x float> %i.agp, ptr %25, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i270, ptr %i.aeq, align 8
  %i.agt = fneg float %i.age                      ; 2 uses
  %i.agu = fneg float %i.agf                      ; 2 uses
  %i.agv = fneg float %i.agg                      ; 2 uses
  %i.agw = insertelement <2 x float> poison, float %i.agu, i64 0
  %i.agx = shufflevector <2 x float> %i.agw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agy = fmul <2 x float> %30, %i.agx
  %i.agz = insertelement <2 x float> poison, float %i.agt, i64 0
  %i.aha = shufflevector <2 x float> %i.agz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aer, <2 x float> %i.aha, <2 x float> %i.agy)
  %i.ahc = insertelement <2 x float> poison, float %i.agv, i64 0
  %i.ahd = shufflevector <2 x float> %i.ahc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> %i.ahd, <2 x float> %i.ahb)
  %i.ahf = fmul float %i.aej, %i.agu
  %i.ahg = call float @llvm.fmuladd.f32(float %i.aei, float %i.agt, float %i.ahf)
  %i.ahh = call noundef float @llvm.fmuladd.f32(float %i.aek, float %i.agv, float %i.ahg)
  %.sroa.3.12.vec.insert.i280 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ahh, i64 0
  store <2 x float> %i.ahe, ptr %26, align 8
  %i.ahi = getelementptr inbounds nuw i8, ptr %26, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i280, ptr %i.ahi, align 8
  %i.ahj = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.ahk = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %i.ahj, ptr noundef nonnull align 4 dereferenceable(16) %25) ; 2 uses
  %i.ahl = extractvalue { <2 x float>, <2 x float> } %i.ahk, 0 ; 2 uses
  %i.ahm = extractvalue { <2 x float>, <2 x float> } %i.ahk, 1
  %i.ahn = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.aho = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %i.ahn, ptr noundef nonnull align 4 dereferenceable(16) %26) ; 2 uses
  %i.ahp = extractvalue { <2 x float>, <2 x float> } %i.aho, 0 ; 2 uses
  %i.ahq = extractvalue { <2 x float>, <2 x float> } %i.aho, 1
  %i.ahr = load <4 x float>, ptr %i.bq, align 8
  %i.ahs = shufflevector <4 x float> %i.ahr, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.aht = load <4 x float>, ptr %i.bs, align 8
  %i.ahu = shufflevector <4 x float> %i.aht, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ahv = load <4 x float>, ptr %i.bw, align 8
  %i.ahw = shufflevector <4 x float> %i.ahv, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ahx = load float, ptr %i.t, align 8, !tbaa !12
  %i.ahy = load <4 x float>, ptr %i.cd, align 8
  %i.ahz = shufflevector <4 x float> %i.ahy, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.aia = load <4 x float>, ptr %i.cf, align 8
  %i.aib = shufflevector <4 x float> %i.aia, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.aic = load <4 x float>, ptr %i.cj, align 8
  %i.aid = shufflevector <4 x float> %i.aic, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.aie = load float, ptr %i.v, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  %i.aif = load <2 x float>, ptr %1, align 4, !tbaa !12
  %i.aig = load <2 x float>, ptr %i.e, align 4, !tbaa !12
  %i.aih = load <2 x float>, ptr %i.g, align 4, !tbaa !12
  %i.aii = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !12
  %i.aik = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !12
  %i.aim = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ain = load float, ptr %i.aim, align 4, !tbaa !12
  %i.aio = getelementptr inbounds nuw i8, ptr %27, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #13
  %i.aip = load float, ptr %8, align 16, !tbaa !12 ; 3 uses
  %i.aiq = fneg float %i.aip                      ; 3 uses
  %i.air = load float, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.ais = fneg float %i.air                      ; 3 uses
  %i.ait = load float, ptr %i.c, align 8, !tbaa !12 ; 3 uses
  %i.aiu = fneg float %i.ait                      ; 3 uses
  %i.aiv = insertelement <2 x float> poison, float %i.ais, i64 0
  %i.aiw = shufflevector <2 x float> %i.aiv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aix = fmul <2 x float> %i.aig, %i.aiw
  %i.aiy = insertelement <2 x float> poison, float %i.aiq, i64 0
  %i.aiz = shufflevector <2 x float> %i.aiy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aja = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aif, <2 x float> %i.aiz, <2 x float> %i.aix)
  %i.ajb = insertelement <2 x float> poison, float %i.aiu, i64 0
  %i.ajc = shufflevector <2 x float> %i.ajb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aih, <2 x float> %i.ajc, <2 x float> %i.aja)
  %i.aje = fmul float %i.ail, %i.ais
  %i.ajf = call float @llvm.fmuladd.f32(float %i.aij, float %i.aiq, float %i.aje)
  %i.ajg = call noundef float @llvm.fmuladd.f32(float %i.ain, float %i.aiu, float %i.ajf)
  %.sroa.3.12.vec.insert.i310 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ajg, i64 0
  store <2 x float> %i.ajd, ptr %27, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i310, ptr %i.aio, align 8
  %i.ajh = load <2 x float>, ptr %i.k, align 4, !tbaa !12
  %i.aji = load <2 x float>, ptr %i.l, align 4, !tbaa !12
  %i.ajj = insertelement <2 x float> poison, float %i.air, i64 0
  %i.ajk = shufflevector <2 x float> %i.ajj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajl = fmul <2 x float> %i.ajk, %i.aji
  %i.ajm = insertelement <2 x float> poison, float %i.aip, i64 0
  %i.ajn = shufflevector <2 x float> %i.ajm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajh, <2 x float> %i.ajn, <2 x float> %i.ajl)
  %i.ajp = load <2 x float>, ptr %i.n, align 4, !tbaa !12
  %i.ajq = insertelement <2 x float> poison, float %i.ait, i64 0
  %i.ajr = shufflevector <2 x float> %i.ajq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajp, <2 x float> %i.ajr, <2 x float> %i.ajo)
  %i.ajt = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aju = load float, ptr %i.ajt, align 4, !tbaa !12
  %i.ajv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !12
  %i.ajx = fmul float %i.air, %i.ajw
  %i.ajy = call float @llvm.fmuladd.f32(float %i.aju, float %i.aip, float %i.ajx)
  %i.ajz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aka = load float, ptr %i.ajz, align 4, !tbaa !12
  %i.akb = call noundef float @llvm.fmuladd.f32(float %i.aka, float %i.ait, float %i.ajy)
  %.sroa.3.12.vec.insert.i315 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.akb, i64 0
  store <2 x float> %i.ajs, ptr %28, align 8
  %i.akc = getelementptr inbounds nuw i8, ptr %28, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i315, ptr %i.akc, align 8
  %i.akd = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.ake = load <2 x float>, ptr %11, align 8, !tbaa !12 ; 2 uses
  %i.akf = load <2 x float>, ptr %i.f, align 8, !tbaa !12 ; 2 uses
  %i.akg = load <2 x float>, ptr %i.h, align 8, !tbaa !12 ; 2 uses
  %i.akh = load <2 x float>, ptr %i.i, align 8, !tbaa !12 ; 2 uses
  %i.aki = load <2 x float>, ptr %12, align 8, !tbaa !12 ; 2 uses
  %i.akj = load <2 x float>, ptr %i.m, align 8, !tbaa !12 ; 2 uses
  %i.akk = load <2 x float>, ptr %i.o, align 8, !tbaa !12 ; 2 uses
  %i.akl = load <2 x float>, ptr %i.p, align 8, !tbaa !12 ; 2 uses
  %i.akm = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %i.akd, ptr noundef nonnull align 4 dereferenceable(16) %27) ; 2 uses
  %i.akn = extractvalue { <2 x float>, <2 x float> } %i.akm, 0 ; 2 uses
  %i.ako = extractvalue { <2 x float>, <2 x float> } %i.akm, 1
  %i.akp = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.akq = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %i.akp, ptr noundef nonnull align 4 dereferenceable(16) %28) ; 2 uses
  %i.akr = extractvalue { <2 x float>, <2 x float> } %i.akq, 0 ; 2 uses
  %i.aks = extractvalue { <2 x float>, <2 x float> } %i.akq, 1
  %i.akt = load float, ptr %11, align 8, !tbaa !12
  %i.aku = load float, ptr %i.bn, align 4, !tbaa !12
  %i.akv = shufflevector <2 x float> %i.ahl, <2 x float> %i.akn, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.akw = shufflevector <2 x float> %i.ake, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.akx = insertelement <2 x float> %i.akw, float %i.aku, i64 1
  %i.aky = fmul <2 x float> %i.akv, %i.akx
  %i.akz = shufflevector <2 x float> %i.ahl, <2 x float> %i.akn, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ala = insertelement <2 x float> %i.ake, float %i.akt, i64 1
  %i.alb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akz, <2 x float> %i.ala, <2 x float> %i.aky)
  %i.alc = load float, ptr %i.bq, align 8, !tbaa !12
  %i.ald = shufflevector <2 x float> %i.ahm, <2 x float> %i.ako, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ale = insertelement <2 x float> %i.ahs, float %i.alc, i64 1
  %i.alf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ald, <2 x float> %i.ale, <2 x float> %i.alb)
  %i.alg = load float, ptr %i.f, align 8, !tbaa !12
  %i.alh = load float, ptr %i.bo, align 4, !tbaa !12
  %i.ali = shufflevector <2 x float> %i.akf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.alj = insertelement <2 x float> %i.ali, float %i.alh, i64 1
  %i.alk = fmul <2 x float> %i.akv, %i.alj
  %i.all = insertelement <2 x float> %i.akf, float %i.alg, i64 1
  %i.alm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akz, <2 x float> %i.all, <2 x float> %i.alk)
  %i.aln = load float, ptr %i.bs, align 8, !tbaa !12
  %i.alo = insertelement <2 x float> %i.ahu, float %i.aln, i64 1
  %i.alp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ald, <2 x float> %i.alo, <2 x float> %i.alm)
  %i.alq = load float, ptr %i.h, align 8, !tbaa !12
  %i.alr = load float, ptr %i.bp, align 4, !tbaa !12
  %i.als = shufflevector <2 x float> %i.akg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.alt = insertelement <2 x float> %i.als, float %i.alr, i64 1
  %i.alu = fmul <2 x float> %i.akv, %i.alt
  %i.alv = insertelement <2 x float> %i.akg, float %i.alq, i64 1
  %i.alw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akz, <2 x float> %i.alv, <2 x float> %i.alu)
  %i.alx = load float, ptr %i.bw, align 8, !tbaa !12
  %i.aly = insertelement <2 x float> %i.ahw, float %i.alx, i64 1
  %i.alz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ald, <2 x float> %i.aly, <2 x float> %i.alw)
  %i.ama = load float, ptr %i.i, align 8, !tbaa !12
  %i.amb = insertelement <2 x float> %i.akh, float %i.ama, i64 1
  %i.amc = fadd <2 x float> %i.alf, %i.amb
  %i.amd = load float, ptr %i.r, align 4, !tbaa !12
  %i.ame = shufflevector <2 x float> %i.akh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.amf = insertelement <2 x float> %i.ame, float %i.amd, i64 1
  %i.amg = fadd <2 x float> %i.alp, %i.amf
  %i.amh = load float, ptr %i.t, align 8, !tbaa !12
  %i.ami = insertelement <2 x float> poison, float %i.ahx, i64 0
  %i.amj = insertelement <2 x float> %i.ami, float %i.amh, i64 1
  %i.amk = fadd <2 x float> %i.alz, %i.amj
  %i.aml = load float, ptr %12, align 8, !tbaa !12
  %i.amm = load float, ptr %i.ca, align 4, !tbaa !12
  %i.amn = shufflevector <2 x float> %i.ahp, <2 x float> %i.akr, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.amo = shufflevector <2 x float> %i.aki, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.amp = insertelement <2 x float> %i.amo, float %i.amm, i64 1
  %i.amq = fmul <2 x float> %i.amn, %i.amp
  %i.amr = shufflevector <2 x float> %i.ahp, <2 x float> %i.akr, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ams = insertelement <2 x float> %i.aki, float %i.aml, i64 1
  %i.amt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amr, <2 x float> %i.ams, <2 x float> %i.amq)
  %i.amu = load float, ptr %i.cd, align 8, !tbaa !12
  %i.amv = shufflevector <2 x float> %i.ahq, <2 x float> %i.aks, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.amw = insertelement <2 x float> %i.ahz, float %i.amu, i64 1
  %i.amx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amv, <2 x float> %i.amw, <2 x float> %i.amt)
  %i.amy = load float, ptr %i.m, align 8, !tbaa !12
  %i.amz = load float, ptr %i.cb, align 4, !tbaa !12
  %i.ana = shufflevector <2 x float> %i.akj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.anb = insertelement <2 x float> %i.ana, float %i.amz, i64 1
  %i.anc = fmul <2 x float> %i.amn, %i.anb
  %i.and = insertelement <2 x float> %i.akj, float %i.amy, i64 1
  %i.ane = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amr, <2 x float> %i.and, <2 x float> %i.anc)
  %i.anf = load float, ptr %i.cf, align 8, !tbaa !12
  %i.ang = insertelement <2 x float> %i.aib, float %i.anf, i64 1
  %i.anh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amv, <2 x float> %i.ang, <2 x float> %i.ane)
  %i.ani = load float, ptr %i.o, align 8, !tbaa !12
  %i.anj = load float, ptr %i.cc, align 4, !tbaa !12
  %i.ank = shufflevector <2 x float> %i.akk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.anl = insertelement <2 x float> %i.ank, float %i.anj, i64 1
  %i.anm = fmul <2 x float> %i.amn, %i.anl
  %i.ann = insertelement <2 x float> %i.akk, float %i.ani, i64 1
  %i.ano = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amr, <2 x float> %i.ann, <2 x float> %i.anm)
  %i.anp = load float, ptr %i.cj, align 8, !tbaa !12
  %i.anq = insertelement <2 x float> %i.aid, float %i.anp, i64 1
  %i.anr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amv, <2 x float> %i.anq, <2 x float> %i.ano)
  %i.ans = load float, ptr %i.p, align 8, !tbaa !12
  %i.ant = insertelement <2 x float> %i.akl, float %i.ans, i64 1
  %i.anu = fadd <2 x float> %i.amx, %i.ant
  %i.anv = load float, ptr %i.s, align 4, !tbaa !12
  %i.anw = shufflevector <2 x float> %i.akl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.anx = insertelement <2 x float> %i.anw, float %i.anv, i64 1
  %i.any = fadd <2 x float> %i.anh, %i.anx
  %i.anz = load float, ptr %i.v, align 8, !tbaa !12
  %i.aoa = insertelement <2 x float> poison, float %i.aie, i64 0
  %i.aob = insertelement <2 x float> %i.aoa, float %i.anz, i64 1
  %i.aoc = fadd <2 x float> %i.anr, %i.aob
  %i.aod = fsub <2 x float> %i.amc, %i.anu
  %i.aoe = fsub <2 x float> %i.amg, %i.any
  %i.aof = fsub <2 x float> %i.amk, %i.aoc
  %i.aog = load <2 x float>, ptr %8, align 16, !tbaa !12 ; 3 uses
  %i.aoh = insertelement <2 x float> %i.aog, float %i.ais, i64 0
  %i.aoi = fmul <2 x float> %i.aoe, %i.aoh
  %i.aoj = shufflevector <2 x float> %i.aog, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
end_hunk_0
