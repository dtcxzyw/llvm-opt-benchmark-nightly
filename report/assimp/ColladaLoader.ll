Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ColladaLoader?download=true
inline.NumInlined: 3826
inline.NumDeleted: 1929
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6Assimp13ColladaLoader10CreateMeshERKNS_13ColladaParserEPKNS_7Collada4MeshERKNS4_7SubMeshEPKNS4_10ControllerEmm:bb.a
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 1056 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.afz, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.aga, align 8
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afz, i64 1060 ; 3 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afz, i64 1076 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.agc, align 4
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afz, i64 1080 ; 3 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.afz, i64 1096 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agd, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.age, align 8
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afz, i64 1100 ; 3 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.afz, i64 1116 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agf, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.agg, align 4
  %i.agh = load i64, ptr %i.aei, align 8
  %i.agi = mul i64 %i.agh, %.0325968
  %i.agj = load i64, ptr %i.aej, align 8
  %i.agk = load ptr, ptr %i.za, align 8
  %i.agl = getelementptr [32 x i8], ptr %i.agk, i64 %i.agi
  %i.agm = getelementptr [32 x i8], ptr %i.agl, i64 %i.agj ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  %i.ago = load i64, ptr %i.agn, align 8          ; 4 uses
  %i.agp = icmp ugt i64 %i.ago, 1023
  br i1 %i.agp, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit530, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.agq = trunc nuw nsw i64 %i.ago to i32
  store i32 %i.agq, ptr %i.afz, align 8
  %i.agr = getelementptr inbounds nuw i8, ptr %i.afz, i64 4 ; 2 uses
  %i.ags = load ptr, ptr %i.agm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.agr, ptr align 1 %i.ags, i64 %i.ago, i1 false)
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agr, i64 %i.ago
  store i8 0, ptr %i.agt, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit530

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit530: ; preds = %bb.gm, %bb.gn
  %.val476 = load i64, ptr %i.aek, align 8
  %.val477 = load i64, ptr %i.ael, align 8
  %.val478 = load ptr, ptr %i.aem, align 8
  %i.agu = mul i64 %.val477, %.0325968
  %i.agv = getelementptr [4 x i8], ptr %.val478, i64 %i.agu
  %i.agw = getelementptr [4 x i8], ptr %i.agv, i64 %.val476
  %i.agx = load float, ptr %i.agw, align 4
  store float %i.agx, ptr %i.aga, align 8
  %.val473 = load i64, ptr %i.aek, align 8
  %.val474 = load i64, ptr %i.ael, align 8
  %.val475 = load ptr, ptr %i.aem, align 8
  %i.agy = mul i64 %.val474, %.0325968
  %i.agz = getelementptr [4 x i8], ptr %.val475, i64 %i.agy
  %i.aha = getelementptr [4 x i8], ptr %i.agz, i64 %.val473
  %i.ahb = getelementptr i8, ptr %i.aha, i64 4
  %i.ahc = load float, ptr %i.ahb, align 4
  store float %i.ahc, ptr %i.agb, align 4
  %.val470 = load i64, ptr %i.aek, align 8
  %.val471 = load i64, ptr %i.ael, align 8
  %.val472 = load ptr, ptr %i.aem, align 8
  %i.ahd = mul i64 %.val471, %.0325968
  %i.ahe = getelementptr [4 x i8], ptr %.val472, i64 %i.ahd
  %i.ahf = getelementptr [4 x i8], ptr %i.ahe, i64 %.val470
  %i.ahg = getelementptr i8, ptr %i.ahf, i64 8
  %i.ahh = load float, ptr %i.ahg, align 4
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.afz, i64 1064 ; 2 uses
  store float %i.ahh, ptr %i.ahi, align 8
  %.val467 = load i64, ptr %i.aek, align 8
  %.val468 = load i64, ptr %i.ael, align 8
  %.val469 = load ptr, ptr %i.aem, align 8
  %i.ahj = mul i64 %.val468, %.0325968
  %i.ahk = getelementptr [4 x i8], ptr %.val469, i64 %i.ahj
  %i.ahl = getelementptr [4 x i8], ptr %i.ahk, i64 %.val467
  %i.ahm = getelementptr i8, ptr %i.ahl, i64 12
  %i.ahn = load float, ptr %i.ahm, align 4
  %i.aho = getelementptr inbounds nuw i8, ptr %i.afz, i64 1068 ; 2 uses
  store float %i.ahn, ptr %i.aho, align 4
  %.val464 = load i64, ptr %i.aek, align 8
  %.val465 = load i64, ptr %i.ael, align 8
  %.val466 = load ptr, ptr %i.aem, align 8
  %i.ahp = mul i64 %.val465, %.0325968
  %i.ahq = getelementptr [4 x i8], ptr %.val466, i64 %i.ahp
  %i.ahr = getelementptr [4 x i8], ptr %i.ahq, i64 %.val464
  %i.ahs = getelementptr i8, ptr %i.ahr, i64 16
  %i.aht = load float, ptr %i.ahs, align 4
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.afz, i64 1072 ; 3 uses
  store float %i.aht, ptr %i.ahu, align 8
  %.val461 = load i64, ptr %i.aek, align 8
  %.val462 = load i64, ptr %i.ael, align 8
  %.val463 = load ptr, ptr %i.aem, align 8
  %i.ahv = mul i64 %.val462, %.0325968
  %i.ahw = getelementptr [4 x i8], ptr %.val463, i64 %i.ahv
  %i.ahx = getelementptr [4 x i8], ptr %i.ahw, i64 %.val461
  %i.ahy = getelementptr i8, ptr %i.ahx, i64 20
  %i.ahz = load float, ptr %i.ahy, align 4
  store float %i.ahz, ptr %i.agc, align 4
  %.val458 = load i64, ptr %i.aek, align 8
  %.val459 = load i64, ptr %i.ael, align 8
  %.val460 = load ptr, ptr %i.aem, align 8
  %i.aia = mul i64 %.val459, %.0325968
  %i.aib = getelementptr [4 x i8], ptr %.val460, i64 %i.aia
  %i.aic = getelementptr [4 x i8], ptr %i.aib, i64 %.val458
  %i.aid = getelementptr i8, ptr %i.aic, i64 24
  %i.aie = load float, ptr %i.aid, align 4
  store float %i.aie, ptr %i.agd, align 8
  %.val455 = load i64, ptr %i.aek, align 8
  %.val456 = load i64, ptr %i.ael, align 8
  %.val457 = load ptr, ptr %i.aem, align 8
  %i.aif = mul i64 %.val456, %.0325968
  %i.aig = getelementptr [4 x i8], ptr %.val457, i64 %i.aif
  %i.aih = getelementptr [4 x i8], ptr %i.aig, i64 %.val455
  %i.aii = getelementptr i8, ptr %i.aih, i64 28
  %i.aij = load float, ptr %i.aii, align 4
  %i.aik = getelementptr inbounds nuw i8, ptr %i.afz, i64 1084 ; 2 uses
  store float %i.aij, ptr %i.aik, align 4
  %.val452 = load i64, ptr %i.aek, align 8
  %.val453 = load i64, ptr %i.ael, align 8
  %.val454 = load ptr, ptr %i.aem, align 8
  %i.ail = mul i64 %.val453, %.0325968
  %i.aim = getelementptr [4 x i8], ptr %.val454, i64 %i.ail
  %i.ain = getelementptr [4 x i8], ptr %i.aim, i64 %.val452
  %i.aio = getelementptr i8, ptr %i.ain, i64 32
  %i.aip = load float, ptr %i.aio, align 4
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.afz, i64 1088 ; 3 uses
  store float %i.aip, ptr %i.aiq, align 8
  %.val449 = load i64, ptr %i.aek, align 8
  %.val450 = load i64, ptr %i.ael, align 8
  %.val451 = load ptr, ptr %i.aem, align 8
  %i.air = mul i64 %.val450, %.0325968
  %i.ais = getelementptr [4 x i8], ptr %.val451, i64 %i.air
  %i.ait = getelementptr [4 x i8], ptr %i.ais, i64 %.val449
  %i.aiu = getelementptr i8, ptr %i.ait, i64 36
  %i.aiv = load float, ptr %i.aiu, align 4
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.afz, i64 1092 ; 2 uses
  store float %i.aiv, ptr %i.aiw, align 4
  %.val446 = load i64, ptr %i.aek, align 8
  %.val447 = load i64, ptr %i.ael, align 8
  %.val448 = load ptr, ptr %i.aem, align 8
  %i.aix = mul i64 %.val447, %.0325968
  %i.aiy = getelementptr [4 x i8], ptr %.val448, i64 %i.aix
  %i.aiz = getelementptr [4 x i8], ptr %i.aiy, i64 %.val446
  %i.aja = getelementptr i8, ptr %i.aiz, i64 40
  %i.ajb = load float, ptr %i.aja, align 4
  store float %i.ajb, ptr %i.age, align 8
  %.val443 = load i64, ptr %i.aek, align 8
  %.val444 = load i64, ptr %i.ael, align 8
  %.val445 = load ptr, ptr %i.aem, align 8
  %i.ajc = mul i64 %.val444, %.0325968
  %i.ajd = getelementptr [4 x i8], ptr %.val445, i64 %i.ajc
  %i.aje = getelementptr [4 x i8], ptr %i.ajd, i64 %.val443
  %i.ajf = getelementptr i8, ptr %i.aje, i64 44
  %i.ajg = load float, ptr %i.ajf, align 4
  store float %i.ajg, ptr %i.agf, align 4
  %i.ajh = load ptr, ptr %8, align 8
  %i.aji = getelementptr inbounds nuw [24 x i8], ptr %i.ajh, i64 %.0325968 ; 3 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 8 ; 2 uses
  %i.ajk = load ptr, ptr %i.ajj, align 8
  %i.ajl = load ptr, ptr %i.aji, align 8
  %i.ajm = ptrtoint ptr %i.ajk to i64
  %i.ajn = ptrtoint ptr %i.ajl to i64
  %i.ajo = sub i64 %i.ajm, %i.ajn
  %i.ajp = ashr exact i64 %i.ajo, 3               ; 2 uses
  %i.ajq = trunc i64 %i.ajp to i32
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.afz, i64 1028
  store i32 %i.ajq, ptr %i.ajr, align 4
  %i.ajs = and i64 %i.ajp, 4294967295             ; 2 uses
  %i.ajt = shl nuw nsw i64 %i.ajs, 3              ; 2 uses
  %i.aju = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ajt) #30
          to label %bb.go unwind label %bb.ha     ; 4 uses

bb.go:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit530
  %i.ajv = icmp eq i64 %i.ajs, 0
  br i1 %i.ajv, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.go
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aju, i8 0, i64 %i.ajt, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.go
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.afz, i64 1048
  store ptr %i.aju, ptr %i.ajw, align 8
  %i.ajx = load ptr, ptr %i.aji, align 8          ; 3 uses
  %i.ajy = load ptr, ptr %i.ajj, align 8
  %i.ajz = ptrtoint ptr %i.ajy to i64
  %i.aka = ptrtoint ptr %i.ajx to i64
  %i.akb = sub i64 %i.ajz, %i.aka                 ; 3 uses
  %i.akc = icmp sgt i64 %i.akb, 8
  br i1 %i.akc, label %bb.gp, label %bb.gq, !prof !14

bb.gp:                                            ; preds = %.loopexit
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aju, ptr align 4 %i.ajx, i64 %i.akb, i1 false)
  br label %bb.gs

bb.gq:                                            ; preds = %.loopexit
  %i.akd = icmp eq i64 %i.akb, 8
  br i1 %i.akd, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.ake = load i64, ptr %i.ajx, align 4
  store i64 %i.ake, ptr %i.aju, align 4
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gp, %bb.gq, %bb.gr
  %14 = load float, ptr %i.aga, align 8
  %15 = load float, ptr %i.agb, align 4
  %16 = load float, ptr %i.ahi, align 8
  %17 = load float, ptr %i.aho, align 4
  %18 = load float, ptr %i.ahu, align 8
  %19 = load float, ptr %i.agc, align 4
  %20 = load float, ptr %i.agd, align 8
  %21 = load float, ptr %i.aik, align 4
  %22 = load float, ptr %i.aiq, align 8
  %23 = load float, ptr %i.aiw, align 4
  %24 = load float, ptr %i.age, align 8
  %25 = load float, ptr %i.agf, align 4
  %i.akf = getelementptr inbounds nuw i8, ptr %i.afz, i64 1104 ; 2 uses
  %26 = load float, ptr %i.akf, align 8
  %i.akg = getelementptr inbounds nuw i8, ptr %i.afz, i64 1108
  %i.akh = load float, ptr %i.akg, align 4
  %i.aki = getelementptr inbounds nuw i8, ptr %i.afz, i64 1112
  %i.akj = load float, ptr %i.aki, align 8
  %i.akk = load float, ptr %i.agg, align 4
  %i.akl = load <4 x float>, ptr %i.aen, align 8  ; 4 uses
  %i.akm = load <4 x float>, ptr %i.aeo, align 8  ; 4 uses
  %i.akn = load <4 x float>, ptr %i.aep, align 8  ; 4 uses
  %i.ako = load <4 x float>, ptr %i.aeq, align 8  ; 4 uses
  %27 = insertelement <4 x float> poison, float %15, i64 0
  %i.akp = shufflevector <4 x float> %27, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akq = fmul <4 x float> %i.akm, %i.akp
  %28 = insertelement <4 x float> poison, float %14, i64 0
  %i.akr = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aks = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akl, <4 x float> %i.akr, <4 x float> %i.akq)
  %29 = insertelement <4 x float> poison, float %16, i64 0
  %i.akt = shufflevector <4 x float> %29, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aku = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akn, <4 x float> %i.akt, <4 x float> %i.aks)
  %30 = insertelement <4 x float> poison, float %17, i64 0
  %i.akv = shufflevector <4 x float> %30, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ako, <4 x float> %i.akv, <4 x float> %i.aku)
  store <4 x float> %i.akw, ptr %i.aga, align 8
  %31 = insertelement <4 x float> poison, float %19, i64 0
  %i.akx = shufflevector <4 x float> %31, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aky = fmul <4 x float> %i.akm, %i.akx
  %32 = insertelement <4 x float> poison, float %18, i64 0
  %i.akz = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ala = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akl, <4 x float> %i.akz, <4 x float> %i.aky)
  %33 = insertelement <4 x float> poison, float %20, i64 0
  %i.alb = shufflevector <4 x float> %33, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akn, <4 x float> %i.alb, <4 x float> %i.ala)
  %34 = insertelement <4 x float> poison, float %21, i64 0
  %i.ald = shufflevector <4 x float> %34, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ale = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ako, <4 x float> %i.ald, <4 x float> %i.alc)
  store <4 x float> %i.ale, ptr %i.ahu, align 8
  %35 = insertelement <4 x float> poison, float %23, i64 0
  %i.alf = shufflevector <4 x float> %35, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alg = fmul <4 x float> %i.akm, %i.alf
  %36 = insertelement <4 x float> poison, float %22, i64 0
  %i.alh = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ali = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akl, <4 x float> %i.alh, <4 x float> %i.alg)
  %37 = insertelement <4 x float> poison, float %24, i64 0
  %i.alj = shufflevector <4 x float> %37, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akn, <4 x float> %i.alj, <4 x float> %i.ali)
  %38 = insertelement <4 x float> poison, float %25, i64 0
  %i.all = shufflevector <4 x float> %38, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ako, <4 x float> %i.all, <4 x float> %i.alk)
  store <4 x float> %i.alm, ptr %i.aiq, align 8
  %i.aln = insertelement <4 x float> poison, float %i.akh, i64 0
  %i.alo = shufflevector <4 x float> %i.aln, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alp = fmul <4 x float> %i.akm, %i.alo
  %39 = insertelement <4 x float> poison, float %26, i64 0
  %i.alq = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akl, <4 x float> %i.alq, <4 x float> %i.alp)
  %i.als = insertelement <4 x float> poison, float %i.akj, i64 0
  %i.alt = shufflevector <4 x float> %i.als, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akn, <4 x float> %i.alt, <4 x float> %i.alr)
  %i.alv = insertelement <4 x float> poison, float %i.akk, i64 0
  %i.alw = shufflevector <4 x float> %i.alv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ako, <4 x float> %i.alw, <4 x float> %i.alu)
  store <4 x float> %i.alx, ptr %i.akf, align 8
  %i.aly = load ptr, ptr %i.aer, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.alz = getelementptr inbounds nuw i8, ptr %i.afz, i64 4 ; 9 uses
  store ptr %i.aes, ptr %11, align 8
  %i.ama = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.alz) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.ama, ptr %i.b, align 8
  %i.amb = icmp ugt i64 %i.ama, 15
  %.pre1092 = load ptr, ptr %8, align 8
  br i1 %i.amb, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.gs
  %i.amc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc531 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541 ; 2 uses

.noexc531:                                        ; preds = %.noexc.i
  store ptr %i.amc, ptr %11, align 8
  %i.amd = load i64, ptr %i.b, align 8
  store i64 %i.amd, ptr %i.aes, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc531, %bb.gs
  %i.ame = phi ptr [ %i.amc, %.noexc531 ], [ %i.aes, %bb.gs ] ; 2 uses
  switch i64 %i.ama, label %bb.gu [
    i64 1, label %bb.gt
    i64 0, label %bb.gv
  ]

bb.gt:                                            ; preds = %._crit_edge.i.i
  %i.amf = load i8, ptr %i.alz, align 4
  store i8 %i.amf, ptr %i.ame, align 1
  br label %bb.gv

bb.gu:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ame, ptr nonnull align 4 %i.alz, i64 %i.ama, i1 false)
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %._crit_edge.i.i
  %i.amg = load i64, ptr %i.b, align 8            ; 2 uses
  store i64 %i.amg, ptr %i.aet, align 8
  %i.amh = load ptr, ptr %11, align 8
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 %i.amg
  store i8 0, ptr %i.ami, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.amj = call noundef ptr @_ZNK6Assimp13ColladaLoader8FindNodeEPKNS_7Collada4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %i.aly, ptr noundef nonnull align 8 dereferenceable(32) %11) ; 2 uses
  %i.amk = load ptr, ptr %11, align 8             ; 2 uses
  %i.aml = icmp eq ptr %i.amk, %i.aes
  br i1 %i.aml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.gv
  %i.amm = load i64, ptr %i.aes, align 8
  %i.amn = add i64 %i.amm, 1
  call void @_ZdlPvm(ptr noundef %i.amk, i64 noundef %i.amn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.amo = icmp eq ptr %i.amj, null
  br i1 %i.amo, label %bb.gw, label %.thread659

bb.gw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.amp = load ptr, ptr %i.aer, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr %i.aeu, ptr %12, align 8
  %i.amq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.alz) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.amq, ptr %i.a, align 8
  %i.amr = icmp ugt i64 %i.amq, 15
  br i1 %i.amr, label %.noexc.i533, label %._crit_edge.i.i532

.noexc.i533:                                      ; preds = %bb.gw
  %i.ams = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc534 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544 ; 2 uses

.noexc534:                                        ; preds = %.noexc.i533
  store ptr %i.ams, ptr %12, align 8
  %i.amt = load i64, ptr %i.a, align 8
  store i64 %i.amt, ptr %i.aeu, align 8
  br label %._crit_edge.i.i532

._crit_edge.i.i532:                               ; preds = %.noexc534, %bb.gw
  %i.amu = phi ptr [ %i.ams, %.noexc534 ], [ %i.aeu, %bb.gw ] ; 2 uses
  switch i64 %i.amq, label %bb.gy [
    i64 1, label %bb.gx
    i64 0, label %bb.gz
  ]

bb.gx:                                            ; preds = %._crit_edge.i.i532
  %i.amv = load i8, ptr %i.alz, align 4
  store i8 %i.amv, ptr %i.amu, align 1
  br label %bb.gz

bb.gy:                                            ; preds = %._crit_edge.i.i532
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amu, ptr nonnull align 4 %i.alz, i64 %i.amq, i1 false)
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx, %._crit_edge.i.i532
  %i.amw = load i64, ptr %i.a, align 8            ; 2 uses
  store i64 %i.amw, ptr %i.aev, align 8
  %i.amx = load ptr, ptr %12, align 8
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 %i.amw
  store i8 0, ptr %i.amy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.amz = call noundef ptr @_ZNK6Assimp13ColladaLoader13FindNodeBySIDEPKNS_7Collada4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %i.amp, ptr noundef nonnull align 8 dereferenceable(32) %12) ; 2 uses
  %i.ana = load ptr, ptr %12, align 8             ; 2 uses
  %i.anb = icmp eq ptr %i.ana, %i.aeu
  br i1 %i.anb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i537, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536: ; preds = %bb.gz
  %i.anc = load i64, ptr %i.aeu, align 8
  %i.and = add i64 %i.anc, 1
  call void @_ZdlPvm(ptr noundef %i.ana, i64 noundef %i.and) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i537

bb.ha:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit530, %bb.gl
  %i.ane = landingpad { ptr, i32 }
          cleanup
  br label %bb.hj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541: ; preds = %.noexc.i
  %i.anf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.hj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544: ; preds = %.noexc.i533
  %i.ang = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.hj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i537: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %.not403 = icmp eq ptr %i.amz, null
  br i1 %.not403, label %bb.he, label %.thread659

.thread659:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i537
  %.0662 = phi ptr [ %i.amz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i537 ], [ %i.amj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZN6Assimp13ColladaLoader15FindNameForNodeB5cxx11EPKNS_7Collada4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %.0662)
          to label %bb.hb unwind label %bb.hd

bb.hb:                                            ; preds = %.thread659
  %i.anh = load i64, ptr %i.aew, align 8          ; 5 uses
  %i.ani = icmp ugt i64 %i.anh, 1023
  %.pre1094 = load ptr, ptr %13, align 8          ; 3 uses
  br i1 %i.ani, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.anj = trunc nuw nsw i64 %i.anh to i32
  store i32 %i.anj, ptr %i.afz, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.alz, ptr align 1 %.pre1094, i64 %i.anh, i1 false)
  %i.ank = getelementptr inbounds nuw i8, ptr %i.alz, i64 %i.anh
  store i8 0, ptr %i.ank, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.hb, %bb.hc
  %i.anl = icmp eq ptr %.pre1094, %i.aex
  br i1 %i.anl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i546, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i546: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.anm = icmp ult i64 %i.anh, 16
  call void @llvm.assume(i1 %i.anm)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ann = load i64, ptr %i.aex, align 8
  %i.ano = add i64 %i.ann, 1
  call void @_ZdlPvm(ptr noundef %.pre1094, i64 noundef %i.ano) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i546, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.hh

bb.hd:                                            ; preds = %.thread659
  %i.anp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.hj

bb.he:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i537
  %i.anq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.hf unwind label %bb.hg

bb.hf:                                            ; preds = %bb.he
  invoke void @_ZN6Assimp6Logger4warnIJRA75_KcRA1024_cRA3_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.anq, ptr noundef nonnull align 1 dereferenceable(75) @.str.25, ptr noundef nonnull align 1 dereferenceable(1024) %i.alz, ptr noundef nonnull align 1 dereferenceable(3) @.str.26)
          to label %bb.hh unwind label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.anr = landingpad { ptr, i32 }
          cleanup
end_hunk_0
