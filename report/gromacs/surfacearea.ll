Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/surfacearea?download=true
inline.NumInlined: 537
inline.NumDeleted: 195
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3gmx21SurfaceAreaCalculator11setDotCountEi:bb.a
  %i.aay = fneg float %i.rg
  %i.aaz = fmul float %i.vf, %i.aay
  %i.aba = tail call float @llvm.fmuladd.f32(float %i.rh, float %i.vd, float %i.aaz) ; 5 uses
  %i.abb = fadd double %i.aal, %i.aan
  %i.abc = fdiv float %i.aar, %i.zn
  %i.abd = fpext float %i.abc to double
  %i.abe = fadd double %i.abb, %i.abd
  %i.abf = insertelement <2 x float> poison, float %i.aad, i64 0
  %i.abg = shufflevector <2 x float> %i.abf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abh = fmul <2 x float> %i.ya, %i.abg
  %i.abi = fpext <2 x float> %i.abh to <2 x double>
  %i.abj = insertelement <2 x double> poison, double %i.aaf, i64 0
  %i.abk = shufflevector <2 x double> %i.abj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abl = fmul <2 x double> %i.abk, %i.abi
  %i.abm = insertelement <2 x double> poison, double %i.aag, i64 0
  %i.abn = shufflevector <2 x double> %i.abm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abo = fdiv <2 x double> %i.abl, %i.abn
  %i.abp = insertelement <2 x float> poison, float %i.zw, i64 0
  %i.abq = shufflevector <2 x float> %i.abp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abr = fmul <2 x float> %i.rl, %i.abq
  %i.abs = fpext <2 x float> %i.abr to <2 x double>
  %i.abt = fmul <2 x float> %i.ri, %i.aah
  %i.abu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yb, <2 x float> %i.rj, <2 x float> %i.abt)
  %i.abv = insertelement <2 x float> poison, float %i.zv, i64 0
  %i.abw = shufflevector <2 x float> %i.abv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abx = fmul <2 x float> %i.abu, %i.abw
  %i.aby = fadd <2 x double> %i.abo, %i.abs
  %i.abz = shufflevector <2 x float> %i.zg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aca = fdiv <2 x float> %i.abx, %i.abz
  %i.acb = fpext <2 x float> %i.aca to <2 x double>
  %i.acc = fadd <2 x double> %i.aby, %i.acb
  %i.acd = fptrunc double %i.abe to float         ; 2 uses
  %i.ace = fptrunc <2 x double> %i.acc to <2 x float> ; 3 uses
  %i.acf = insertelement <2 x float> poison, float %i.acd, i64 0
  %i.acg = insertelement <2 x float> %i.acf, float %i.aax, i64 1 ; 2 uses
  %i.ach = fmul <2 x float> %i.acg, %i.acg
  %i.aci = shufflevector <2 x float> %i.ace, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.acj = insertelement <2 x float> %i.aci, float %i.aau, i64 1 ; 2 uses
  %i.ack = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acj, <2 x float> %i.acj, <2 x float> %i.ach)
  %i.acl = insertelement <2 x float> %i.ace, float %i.aba, i64 1 ; 2 uses
  %i.acm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acl, <2 x float> %i.acl, <2 x float> %i.ack)
  %i.acn = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.acm) ; 4 uses
  %i.aco = extractelement <2 x float> %i.acn, i64 0
  %i.acp = fdiv float %i.acd, %i.aco              ; 4 uses
  %i.acq = shufflevector <2 x float> %i.acn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acr = fdiv <2 x float> %i.ace, %i.acq        ; 4 uses
  %i.acs = tail call noundef float @sqrtf(float noundef %i.we) #19, !noalias !80
  %i.act = extractelement <2 x float> %i.acn, i64 1 ; 4 uses
  %i.acu = fdiv float %i.act, %i.acs              ; 2 uses
  %i.acv = tail call noundef float @llvm.fabs.f32(float %i.acu)
  %i.acw = fcmp olt float %i.acv, 1.000000e+00
  br i1 %i.acw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.acx = tail call noundef float @asinf(float noundef %i.acu) #19, !noalias !80
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.i.i195.us.us.us.i.i = phi float [ %i.acx, %bb.t ], [ f0x3FC90FDB, %bb.s ]
  %i.acy = fmul float %.0.i.i195.us.us.us.i.i, %i.zs
  %i.acz = fdiv float %i.acy, %i.aj               ; 2 uses
  %i.ada = tail call noundef float @sinf(float noundef %i.acz) #19, !noalias !80 ; 2 uses
  %i.adb = tail call noundef float @cosf(float noundef %i.acz) #19, !noalias !80 ; 3 uses
  %i.adc = fmul float %i.rg, %i.aax
  %i.add = tail call float @llvm.fmuladd.f32(float %i.rh, float %i.aau, float %i.adc)
  %i.ade = tail call float @llvm.fmuladd.f32(float %i.rf, float %i.aba, float %i.add)
  %i.adf = fdiv float %i.ade, %i.act              ; 3 uses
  %i.adg = fmul float %i.aau, %i.adf
  %i.adh = fpext float %i.adg to double
  %i.adi = fpext float %i.adb to double
  %i.adj = fsub double 1.000000e+00, %i.adi       ; 3 uses
  %i.adk = fpext float %i.act to double           ; 2 uses
  %i.adl = fneg float %i.aba
  %i.adm = fmul float %i.rg, %i.adl
  %i.adn = fmul float %i.aax, %i.adf
  %i.ado = fpext float %i.adn to double
  %i.adp = fneg float %i.aau
  %i.adq = fmul float %i.rf, %i.adp
  %i.adr = fmul float %i.aba, %i.adf
  %i.ads = fpext float %i.adr to double
  %i.adt = fmul double %i.adj, %i.ads
  %i.adu = fdiv double %i.adt, %i.adk
  %i.adv = fmul float %i.rf, %i.adb
  %i.adw = fpext float %i.adv to double
  %i.adx = fneg float %i.aax
  %i.ady = fmul float %i.rh, %i.adx
  %i.adz = tail call float @llvm.fmuladd.f32(float %i.aau, float %i.rg, float %i.ady)
  %i.aea = fmul float %i.adz, %i.ada
  %i.aeb = fmul double %i.adj, %i.ado
  %i.aec = fmul double %i.adj, %i.adh
  %i.aed = insertelement <2 x double> poison, double %i.aec, i64 0
  %i.aee = insertelement <2 x double> %i.aed, double %i.aeb, i64 1
  %i.aef = insertelement <2 x double> poison, double %i.adk, i64 0
  %i.aeg = shufflevector <2 x double> %i.aef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aeh = fdiv <2 x double> %i.aee, %i.aeg
  %i.aei = insertelement <2 x float> poison, float %i.adb, i64 0
  %i.aej = shufflevector <2 x float> %i.aei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aek = fmul <2 x float> %i.re, %i.aej
  %i.ael = fpext <2 x float> %i.aek to <2 x double>
  %i.aem = fadd <2 x double> %i.aeh, %i.ael
  %i.aen = tail call float @llvm.fmuladd.f32(float %i.aba, float %i.rh, float %i.adq)
  %i.aeo = tail call float @llvm.fmuladd.f32(float %i.aax, float %i.rf, float %i.adm)
  %i.aep = insertelement <2 x float> poison, float %i.aeo, i64 0
  %i.aeq = insertelement <2 x float> %i.aep, float %i.aen, i64 1
  %i.aer = insertelement <2 x float> poison, float %i.ada, i64 0
  %i.aes = shufflevector <2 x float> %i.aer, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aet = fmul <2 x float> %i.aeq, %i.aes
  %i.aeu = shufflevector <2 x float> %i.acn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aev = fdiv <2 x float> %i.aet, %i.aeu
  %i.aew = fpext <2 x float> %i.aev to <2 x double>
  %i.aex = fadd double %i.adu, %i.adw
  %i.aey = fdiv float %i.aea, %i.act
  %i.aez = fpext float %i.aey to double
  %i.afa = fadd <2 x double> %i.aem, %i.aew       ; 2 uses
  %i.afb = fadd double %i.aex, %i.aez
  %i.afc = shufflevector <2 x double> %i.afa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.afd = insertelement <2 x double> %i.afc, double %i.afb, i64 1
  %i.afe = fptrunc <2 x double> %i.afd to <2 x float> ; 4 uses
  %i.aff = fptrunc <2 x double> %i.afa to <2 x float> ; 2 uses
  %foldExtExtBinop64 = fmul <2 x float> %i.afe, %i.afe
  %i.afg = extractelement <2 x float> %foldExtExtBinop64, i64 0
  %i.afh = extractelement <2 x float> %i.aff, i64 0 ; 2 uses
  %i.afi = tail call float @llvm.fmuladd.f32(float %i.afh, float %i.afh, float %i.afg)
  %i.afj = extractelement <2 x float> %i.afe, i64 1 ; 2 uses
  %i.afk = tail call float @llvm.fmuladd.f32(float %i.afj, float %i.afj, float %i.afi)
  %sqrt95.i196.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.afk)
  %i.afl = insertelement <2 x float> poison, float %sqrt95.i196.us.us.us.i.i, i64 0
  %i.afm = shufflevector <2 x float> %i.afl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afn = fdiv <2 x float> %i.aff, %i.afm        ; 3 uses
  %i.afo = fdiv <2 x float> %i.afe, %i.afm        ; 6 uses
  %i.afp = tail call noundef float @sqrtf(float noundef %i.qd) #19, !noalias !80
  %i.afq = fdiv float %sqrt.i198.us.us.us.i.i, %i.afp ; 2 uses
  %i.afr = tail call noundef float @llvm.fabs.f32(float %i.afq)
  %i.afs = fcmp olt float %i.afr, 1.000000e+00
  br i1 %i.afs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aft = tail call noundef float @asinf(float noundef %i.afq) #19, !noalias !80
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0.i.i199.us.us.us.i.i = phi float [ %i.aft, %bb.v ], [ f0x3FC90FDB, %bb.u ]
  %i.afu = fmul float %.0.i.i199.us.us.us.i.i, %i.sp
  %i.afv = fdiv float %i.afu, %i.od               ; 2 uses
  %i.afw = tail call noundef float @sinf(float noundef %i.afv) #19, !noalias !80 ; 2 uses
  %i.afx = tail call noundef float @cosf(float noundef %i.afv) #19, !noalias !80 ; 3 uses
  %i.afy = fpext float %i.afx to double
  %i.afz = fsub double 1.000000e+00, %i.afy       ; 2 uses
  %i.aga = fmul double %i.afz, %i.qu
  %i.agb = fdiv double %i.aga, %i.ql
  %i.agc = fmul float %i.pj, %i.afx
  %i.agd = fpext float %i.agc to double
  %i.age = fadd double %i.agb, %i.agd
  %i.agf = fmul float %i.qx, %i.afw
  %i.agg = fdiv float %i.agf, %sqrt.i198.us.us.us.i.i
  %i.agh = fpext float %i.agg to double
  %i.agi = fadd double %i.age, %i.agh
  %i.agj = sub nuw nsw i32 %.fr.i.i, %.0267.us.us.us.i.i
  %i.agk = extractelement <2 x float> %i.zk, i64 1 ; 7 uses
  %i.agl = fneg float %i.agk
  %i.agm = extractelement <2 x float> %i.zi, i64 0 ; 7 uses
  %i.agn = fneg float %i.agm
  %i.ago = extractelement <2 x float> %i.zk, i64 0 ; 4 uses
  %i.agp = fneg float %i.ago
  %i.agq = insertelement <2 x double> poison, double %i.afz, i64 0
  %i.agr = shufflevector <2 x double> %i.agq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ags = fmul <2 x double> %i.agr, %i.qr
  %i.agt = fdiv <2 x double> %i.ags, %i.qz
  %i.agu = insertelement <2 x float> poison, float %i.afx, i64 0
  %i.agv = shufflevector <2 x float> %i.agu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agw = fmul <2 x float> %i.pi, %i.agv
  %i.agx = fpext <2 x float> %i.agw to <2 x double>
  %i.agy = fadd <2 x double> %i.agt, %i.agx
  %i.agz = insertelement <2 x float> poison, float %i.afw, i64 0
  %i.aha = shufflevector <2 x float> %i.agz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahb = fmul <2 x float> %i.rb, %i.aha
  %i.ahc = fdiv <2 x float> %i.ahb, %i.rd
  %i.ahd = fpext <2 x float> %i.ahc to <2 x double>
  %i.ahe = fadd <2 x double> %i.agy, %i.ahd
  %i.ahf = fptrunc <2 x double> %i.ahe to <2 x float> ; 4 uses
  %i.ahg = fptrunc double %i.agi to float         ; 3 uses
  %i.ahh = fmul float %i.vx, %i.agl
  %i.ahi = extractelement <2 x float> %i.wa, i64 1 ; 3 uses
  %i.ahj = fmul float %i.ahi, %i.agp
  %i.ahk = extractelement <2 x float> %i.wa, i64 0 ; 3 uses
  %i.ahl = fmul float %i.ahk, %i.agn
  %i.ahm = insertelement <2 x float> poison, float %i.ahh, i64 0
  %i.ahn = insertelement <2 x float> %i.ahm, float %i.ahl, i64 1
  %i.aho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zk, <2 x float> %i.wa, <2 x float> %i.ahn) ; 3 uses
  %i.ahp = tail call float @llvm.fmuladd.f32(float %i.agm, float %i.vx, float %i.ahj) ; 6 uses
  %i.ahq = extractelement <2 x float> %i.aho, i64 1 ; 5 uses
  %i.ahr = fmul float %i.ahq, %i.ahq
  %foldExtExtBinop66 = fmul <2 x float> %i.ahf, %i.ahf
  %i.ahs = extractelement <2 x float> %foldExtExtBinop66, i64 1
  %i.aht = extractelement <2 x float> %i.aho, i64 0 ; 5 uses
  %i.ahu = tail call float @llvm.fmuladd.f32(float %i.aht, float %i.aht, float %i.ahr)
  %i.ahv = extractelement <2 x float> %i.ahf, i64 0 ; 2 uses
  %i.ahw = tail call float @llvm.fmuladd.f32(float %i.ahv, float %i.ahv, float %i.ahs)
  %i.ahx = tail call float @llvm.fmuladd.f32(float %i.ahp, float %i.ahp, float %i.ahu)
  %i.ahy = tail call float @llvm.fmuladd.f32(float %i.ahg, float %i.ahg, float %i.ahw)
  %2 = insertelement <2 x float> poison, float %i.ahy, i64 0
  %3 = insertelement <2 x float> %2, float %i.ahx, i64 1
  %4 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %3) ; 4 uses
  %i.ahz = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aia = fdiv <2 x float> %i.ahf, %i.ahz
  %5 = extractelement <2 x float> %4, i64 0
  %i.aib = fdiv float %i.ahg, %5
  %foldExtExtBinop68 = fmul <2 x float> %i.zk, %i.zk
  %i.aic = extractelement <2 x float> %foldExtExtBinop68, i64 0
  %i.aid = tail call float @llvm.fmuladd.f32(float %i.agm, float %i.agm, float %i.aic)
  %i.aie = tail call float @llvm.fmuladd.f32(float %i.agk, float %i.agk, float %i.aid)
  %i.aif = fmul float %i.vx, %i.vx
  %i.aig = tail call float @llvm.fmuladd.f32(float %i.ahi, float %i.ahi, float %i.aif)
  %i.aih = tail call float @llvm.fmuladd.f32(float %i.ahk, float %i.ahk, float %i.aig)
  %i.aii = fmul float %i.aih, %i.aie
  %i.aij = tail call noundef float @sqrtf(float noundef %i.aii) #19, !noalias !80
  %6 = extractelement <2 x float> %4, i64 1       ; 4 uses
  %i.aik = fdiv float %6, %i.aij                  ; 2 uses
  %i.ail = tail call noundef float @llvm.fabs.f32(float %i.aik)
  %i.aim = fcmp olt float %i.ail, 1.000000e+00
  br i1 %i.aim, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ain = tail call noundef float @asinf(float noundef %i.aik) #19, !noalias !80
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i.i203.us.us.us.i.i = phi float [ %i.ain, %bb.x ], [ f0x3FC90FDB, %bb.w ]
  %i.aio = fmul float %.0.i.i203.us.us.us.i.i, %i.is
  %i.aip = uitofp nneg i32 %i.agj to float
  %i.aiq = fdiv float %i.aio, %i.aip              ; 2 uses
  %i.air = tail call noundef float @sinf(float noundef %i.aiq) #19, !noalias !80 ; 2 uses
  %i.ais = tail call noundef float @cosf(float noundef %i.aiq) #19, !noalias !80 ; 3 uses
  %i.ait = fmul float %i.ago, %i.ahq
  %i.aiu = tail call float @llvm.fmuladd.f32(float %i.agm, float %i.aht, float %i.ait)
  %i.aiv = tail call float @llvm.fmuladd.f32(float %i.agk, float %i.ahp, float %i.aiu)
  %i.aiw = fdiv float %i.aiv, %6                  ; 2 uses
  %i.aix = fpext float %i.ais to double
  %i.aiy = fsub double 1.000000e+00, %i.aix       ; 2 uses
  %i.aiz = fpext float %6 to double               ; 2 uses
  %i.aja = fneg float %i.ahp
  %i.ajb = fneg float %i.aht
  %i.ajc = fmul float %i.ahp, %i.aiw
  %i.ajd = fpext float %i.ajc to double
  %i.aje = fmul double %i.aiy, %i.ajd
  %i.ajf = fdiv double %i.aje, %i.aiz
  %i.ajg = fmul float %i.agk, %i.ais
  %i.ajh = fpext float %i.ajg to double
  %i.aji = fadd double %i.ajf, %i.ajh
  %i.ajj = fneg float %i.ahq
  %i.ajk = fmul float %i.agm, %i.ajj
  %i.ajl = tail call float @llvm.fmuladd.f32(float %i.aht, float %i.ago, float %i.ajk)
  %i.ajm = fmul float %i.ajl, %i.air
  %i.ajn = fdiv float %i.ajm, %6
  %i.ajo = fpext float %i.ajn to double
  %i.ajp = fadd double %i.aji, %i.ajo
  %i.ajq = add nuw nsw i32 %.0267.us.us.us.i.i, %.0153269.us.us.us.i.i
  %i.ajr = shufflevector <2 x float> %i.afo, <2 x float> %i.afn, <2 x i32> <i32 1, i32 2>
  %i.ajs = fneg <2 x float> %i.ajr
  %i.ajt = extractelement <2 x float> %i.afo, i64 0 ; 4 uses
  %i.aju = fneg float %i.ajt
  %i.ajv = insertelement <2 x float> poison, float %i.aiw, i64 0
  %i.ajw = shufflevector <2 x float> %i.ajv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajx = fmul <2 x float> %i.aho, %i.ajw
  %i.ajy = fpext <2 x float> %i.ajx to <2 x double>
  %i.ajz = insertelement <2 x double> poison, double %i.aiy, i64 0
  %i.aka = shufflevector <2 x double> %i.ajz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akb = fmul <2 x double> %i.aka, %i.ajy
  %i.akc = insertelement <2 x double> poison, double %i.aiz, i64 0
  %i.akd = shufflevector <2 x double> %i.akc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ake = fdiv <2 x double> %i.akb, %i.akd
  %i.akf = insertelement <2 x float> poison, float %i.ais, i64 0
  %i.akg = shufflevector <2 x float> %i.akf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akh = fmul <2 x float> %i.zi, %i.akg
  %i.aki = fpext <2 x float> %i.akh to <2 x double>
  %i.akj = fadd <2 x double> %i.ake, %i.aki
  %i.akk = fmul float %i.agk, %i.ajb
  %i.akl = fmul float %i.ago, %i.aja
  %i.akm = tail call float @llvm.fmuladd.f32(float %i.ahp, float %i.agm, float %i.akk)
  %i.akn = tail call float @llvm.fmuladd.f32(float %i.ahq, float %i.agk, float %i.akl)
  %i.ako = insertelement <2 x float> poison, float %i.akn, i64 0
  %i.akp = insertelement <2 x float> %i.ako, float %i.akm, i64 1
  %i.akq = insertelement <2 x float> poison, float %i.air, i64 0
  %i.akr = shufflevector <2 x float> %i.akq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aks = fmul <2 x float> %i.akp, %i.akr
  %7 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.akt = fdiv <2 x float> %i.aks, %7
  %i.aku = fpext <2 x float> %i.akt to <2 x double>
  %i.akv = fadd <2 x double> %i.akj, %i.aku
  %i.akw = fptrunc <2 x double> %i.akv to <2 x float> ; 4 uses
  %i.akx = fptrunc double %i.ajp to float         ; 3 uses
  %i.aky = shufflevector <2 x float> %i.acr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.akz = insertelement <2 x float> %i.aky, float %i.acp, i64 0
  %i.ala = fmul <2 x float> %i.akz, %i.ajs
  %i.alb = extractelement <2 x float> %i.acr, i64 1 ; 3 uses
  %i.alc = fmul float %i.alb, %i.aju
  %i.ald = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afo, <2 x float> %i.acr, <2 x float> %i.ala) ; 3 uses
  %i.ale = extractelement <2 x float> %i.afn, i64 0 ; 6 uses
  %i.alf = tail call float @llvm.fmuladd.f32(float %i.ale, float %i.acp, float %i.alc) ; 6 uses
  %i.alg = extractelement <2 x float> %i.ald, i64 1 ; 5 uses
  %i.alh = fmul float %i.alg, %i.alg
  %foldExtExtBinop70 = fmul <2 x float> %i.akw, %i.akw
  %i.ali = extractelement <2 x float> %foldExtExtBinop70, i64 1
  %i.alj = extractelement <2 x float> %i.ald, i64 0 ; 5 uses
  %i.alk = tail call float @llvm.fmuladd.f32(float %i.alj, float %i.alj, float %i.alh)
  %i.all = extractelement <2 x float> %i.akw, i64 0 ; 2 uses
  %i.alm = tail call float @llvm.fmuladd.f32(float %i.all, float %i.all, float %i.ali)
  %i.aln = tail call float @llvm.fmuladd.f32(float %i.alf, float %i.alf, float %i.alk)
  %i.alo = tail call float @llvm.fmuladd.f32(float %i.akx, float %i.akx, float %i.alm)
  %8 = insertelement <2 x float> poison, float %i.alo, i64 0
  %9 = insertelement <2 x float> %8, float %i.aln, i64 1
  %10 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %9) ; 4 uses
  %i.alp = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.alq = fdiv <2 x float> %i.akw, %i.alp
  %11 = extractelement <2 x float> %10, i64 0
  %i.alr = fdiv float %i.akx, %11
  %foldExtExtBinop72 = fmul <2 x float> %i.afo, %i.afo
  %i.als = extractelement <2 x float> %foldExtExtBinop72, i64 0
  %i.alt = tail call float @llvm.fmuladd.f32(float %i.ale, float %i.ale, float %i.als)
  %i.alu = extractelement <2 x float> %i.afo, i64 1 ; 6 uses
  %i.alv = tail call float @llvm.fmuladd.f32(float %i.alu, float %i.alu, float %i.alt)
  %i.alw = fmul float %i.acp, %i.acp
  %i.alx = tail call float @llvm.fmuladd.f32(float %i.alb, float %i.alb, float %i.alw)
  %i.aly = extractelement <2 x float> %i.acr, i64 0 ; 2 uses
  %i.alz = tail call float @llvm.fmuladd.f32(float %i.aly, float %i.aly, float %i.alx)
  %i.ama = fmul float %i.alz, %i.alv
  %i.amb = tail call noundef float @sqrtf(float noundef %i.ama) #19, !noalias !80
  %12 = extractelement <2 x float> %10, i64 1     ; 4 uses
  %i.amc = fdiv float %12, %i.amb                 ; 2 uses
  %i.amd = tail call noundef float @llvm.fabs.f32(float %i.amc)
  %i.ame = fcmp olt float %i.amd, 1.000000e+00
  br i1 %i.ame, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.amf = tail call noundef float @asinf(float noundef %i.amc) #19, !noalias !80
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i.i207.us.us.us.i.i = phi float [ %i.amf, %bb.z ], [ f0x3FC90FDB, %bb.y ]
  %i.amg = fmul float %.0.i.i207.us.us.us.i.i, %i.is
  %i.amh = uitofp nneg i32 %i.ajq to float
  %i.ami = fdiv float %i.amg, %i.amh              ; 2 uses
  %i.amj = tail call noundef float @sinf(float noundef %i.ami) #19, !noalias !80 ; 2 uses
  %i.amk = tail call noundef float @cosf(float noundef %i.ami) #19, !noalias !80 ; 3 uses
  %i.aml = fmul float %i.ajt, %i.alg
  %i.amm = tail call float @llvm.fmuladd.f32(float %i.ale, float %i.alj, float %i.aml)
  %i.amn = tail call float @llvm.fmuladd.f32(float %i.alu, float %i.alf, float %i.amm)
  %i.amo = fdiv float %i.amn, %12                 ; 2 uses
  %i.amp = fpext float %i.amk to double
  %i.amq = fsub double 1.000000e+00, %i.amp       ; 2 uses
  %i.amr = fpext float %12 to double              ; 2 uses
  %i.ams = fneg float %i.alf
  %i.amt = fneg float %i.alj
  %i.amu = fmul float %i.alf, %i.amo
  %i.amv = fpext float %i.amu to double
  %i.amw = fmul double %i.amq, %i.amv
  %i.amx = fdiv double %i.amw, %i.amr
  %i.amy = fmul float %i.alu, %i.amk
  %i.amz = fpext float %i.amy to double
  %i.ana = fadd double %i.amx, %i.amz
  %i.anb = fneg float %i.alg
  %i.anc = fmul float %i.ale, %i.anb
  %i.and = tail call float @llvm.fmuladd.f32(float %i.alj, float %i.ajt, float %i.anc)
  %i.ane = fmul float %i.and, %i.amj
  %i.anf = fdiv float %i.ane, %12
  %i.ang = fpext float %i.anf to double
  %i.anh = fadd double %i.ana, %i.ang
  %i.ani = fptrunc double %i.anh to float         ; 3 uses
  %i.anj = fadd <2 x float> %i.aia, %i.alq
  %i.ank = fadd float %i.aib, %i.alr
  %.idx339.i.i = mul i64 %indvars.iv301.i.i, 12
  %i.anl = getelementptr i8, ptr %i.aa, i64 %.idx339.i.i ; 2 uses
  %i.anm = insertelement <2 x float> poison, float %i.amo, i64 0
  %i.ann = shufflevector <2 x float> %i.anm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ano = fmul <2 x float> %i.ald, %i.ann
  %i.anp = fpext <2 x float> %i.ano to <2 x double>
  %i.anq = insertelement <2 x double> poison, double %i.amq, i64 0
  %i.anr = shufflevector <2 x double> %i.anq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ans = fmul <2 x double> %i.anr, %i.anp
  %i.ant = insertelement <2 x double> poison, double %i.amr, i64 0
  %i.anu = shufflevector <2 x double> %i.ant, <2 x double> poison, <2 x i32> zeroinitializer
  %i.anv = fdiv <2 x double> %i.ans, %i.anu
  %i.anw = insertelement <2 x float> poison, float %i.amk, i64 0
  %i.anx = shufflevector <2 x float> %i.anw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.any = fmul <2 x float> %i.afn, %i.anx
  %i.anz = fpext <2 x float> %i.any to <2 x double>
  %i.aoa = fadd <2 x double> %i.anv, %i.anz
  %i.aob = fmul float %i.alu, %i.amt
  %i.aoc = fmul float %i.ajt, %i.ams
  %i.aod = tail call float @llvm.fmuladd.f32(float %i.alf, float %i.ale, float %i.aob)
  %i.aoe = tail call float @llvm.fmuladd.f32(float %i.alg, float %i.alu, float %i.aoc)
  %i.aof = insertelement <2 x float> poison, float %i.aoe, i64 0
  %i.aog = insertelement <2 x float> %i.aof, float %i.aod, i64 1
  %i.aoh = insertelement <2 x float> poison, float %i.amj, i64 0
  %i.aoi = shufflevector <2 x float> %i.aoh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aoj = fmul <2 x float> %i.aog, %i.aoi
  %13 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aok = fdiv <2 x float> %i.aoj, %13
  %i.aol = fpext <2 x float> %i.aok to <2 x double>
  %i.aom = fadd <2 x double> %i.aoa, %i.aol
  %i.aon = fptrunc <2 x double> %i.aom to <2 x float> ; 4 uses
  %foldExtExtBinop74 = fmul <2 x float> %i.aon, %i.aon
  %i.aoo = extractelement <2 x float> %foldExtExtBinop74, i64 1
  %i.aop = extractelement <2 x float> %i.aon, i64 0 ; 2 uses
  %i.aoq = tail call float @llvm.fmuladd.f32(float %i.aop, float %i.aop, float %i.aoo)
  %i.aor = tail call float @llvm.fmuladd.f32(float %i.ani, float %i.ani, float %i.aoq)
  %sqrt95.i208.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.aor) ; 2 uses
  %i.aos = insertelement <2 x float> poison, float %sqrt95.i208.us.us.us.i.i, i64 0
  %i.aot = shufflevector <2 x float> %i.aos, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aou = fdiv <2 x float> %i.aon, %i.aot
  %i.aov = fdiv float %i.ani, %sqrt95.i208.us.us.us.i.i
  %i.aow = fadd <2 x float> %i.anj, %i.aou        ; 4 uses
  %i.aox = fadd float %i.ank, %i.aov              ; 3 uses
  %foldExtExtBinop76 = fmul <2 x float> %i.aow, %i.aow
  %i.aoy = extractelement <2 x float> %foldExtExtBinop76, i64 1
  %i.aoz = extractelement <2 x float> %i.aow, i64 0 ; 2 uses
  %i.apa = tail call float @llvm.fmuladd.f32(float %i.aoz, float %i.aoz, float %i.aoy)
  %i.apb = tail call float @llvm.fmuladd.f32(float %i.aox, float %i.aox, float %i.apa)
  %sqrt.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.apb) ; 2 uses
  %i.apc = insertelement <2 x float> poison, float %sqrt.us.us.us.i.i, i64 0
  %i.apd = shufflevector <2 x float> %i.apc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ape = fdiv <2 x float> %i.aow, %i.apd
  store <2 x float> %i.ape, ptr %i.anl, align 4, !tbaa !18, !noalias !80
  %i.apf = fdiv float %i.aox, %sqrt.us.us.us.i.i
  %i.apg = getelementptr i8, ptr %i.anl, i64 8
  store float %i.apf, ptr %i.apg, align 4, !tbaa !18, !noalias !80
  %indvars.iv.next302.i.i = add nsw i64 %indvars.iv301.i.i, 1 ; 3 uses
  %i.aph = add nuw nsw i32 %.0267.us.us.us.i.i, 1 ; 2 uses
  %exitcond306.not.i.i = icmp eq i32 %i.aph, %indvars.iv304.i.i
  br i1 %exitcond306.not.i.i, label %._crit_edge.us.us.us.loopexit.i.i, label %bb.m, !llvm.loop !58

._crit_edge.us.us.us.loopexit.i.i:                ; preds = %bb.aa
  %i.api = add nuw nsw i32 %.0153269.us.us.us.i.i, 1 ; 2 uses
  %indvars.iv.next305.i.i = add nsw i32 %indvars.iv304.i.i, -1
  %exitcond307.not.i.i = icmp eq i32 %i.api, %i.ff
  br i1 %exitcond307.not.i.i, label %..loopexit_crit_edge.us.us.us.i.i.loopexit, label %.preheader.us.us.us.i.i, !llvm.loop !59

..loopexit_crit_edge.us.us.us.i.i.loopexit:       ; preds = %._crit_edge.us.us.us.loopexit.i.i
  %i.apj = trunc nsw i64 %indvars.iv.next302.i.i to i32
  br label %..loopexit_crit_edge.us.us.us.i.i

..loopexit_crit_edge.us.us.us.i.i:                ; preds = %..loopexit_crit_edge.us.us.us.i.i.loopexit, %bb.i, %.lr.ph275.us.us.i.i
  %.9.us.us.us.i.i = phi i32 [ %.6273.us.us.us.i.i, %.lr.ph275.us.us.i.i ], [ %.6273.us.us.us.i.i, %bb.i ], [ %i.apj, %..loopexit_crit_edge.us.us.us.i.i.loopexit ] ; 2 uses
  %exitcond315.not.i.i = icmp eq i64 %indvars.iv.next313.i.i, 11
  br i1 %exitcond315.not.i.i, label %.loopexit249.us.us.i.i, label %.lr.ph275.us.us.i.i, !llvm.loop !60

bb.ab:                                            ; preds = %_ZL9unsp_typei.exit.i
  %i.apk = fdiv double %i.n, 3.000000e+01
  %i.apl = tail call double @sqrt(double noundef %i.apk) #19, !noalias !82
  %i.apm = fptrunc double %i.apl to float
  %i.apn = tail call noundef float @llvm.ceil.f32(float %i.apm)
  %i.apo = fptosi float %i.apn to i32
  %.fr.i128.i = freeze i32 %i.apo                 ; 4 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %.fr.i128.i, i32 1) ; 6 uses
  %i.app = mul nuw nsw i32 %.sroa.speculated.i.i, 30
  %i.apq = mul nuw nsw i32 %i.app, %.sroa.speculated.i.i
  %i.apr = add nuw nsw i32 %i.apq, 2              ; 2 uses
  %.not.i129.i = icmp slt i32 %i.apr, %1
  br i1 %.not.i129.i, label %.noexc147.i, label %.noexc148.i

.noexc147.i:                                      ; preds = %bb.ab
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL11ico_dot_dodiENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 345) #20, !noalias !81
  unreachable

.noexc148.i:                                      ; preds = %bb.ab
  %i.aps = mul nuw nsw i32 %i.apr, 3
  %i.apt = zext nneg i32 %i.aps to i64            ; 2 uses
  %i.apu = shl nuw nsw i64 %i.apt, 2              ; 3 uses
  %i.apv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apu) #17, !noalias !81 ; 22 uses
  %i.apw = getelementptr i8, ptr %i.apv, i64 4
  %.idx.i.i.i.i.i.i.i.i130.i = add nsw i64 %i.apu, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.apw, i8 0, i64 %.idx.i.i.i.i.i.i.i.i130.i, i1 false), !tbaa !18, !noalias !82
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float f0x3E8D8368, float f0x3F59C441, float f0x3EE4F92C, float f0xBF393E4D, float f0x3F069650>, ptr %i.apv, align 4, !tbaa !18, !noalias !82
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apv, i64 32
  store <8 x float> <float f0x3EE4F92C, float f0xBF393E4B, float f0xBF069652, float f0x3EE4F92C, float f0x3E8D836D, float f0xBF59C440, float f0x3EE4F92C, float f0x3F64F92F>, ptr %i.apx, align 4, !tbaa !18, !noalias !82
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apv, i64 64
  store <8 x float> <float 0.000000e+00, float f0x3EE4F92C, float f0x3F393E4C, float f0x3F069651, float f0xBEE4F92C, float f0xBE8D836B, float f0x3F59C441, float f0xBEE4F92C>, ptr %i.apy, align 4, !tbaa !18, !noalias !82
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apv, i64 96
  store <8 x float> <float f0xBF64F92F, float 0.000000e+00, float f0xBEE4F92C, float f0xBE8D8366, float f0xBF59C442, float f0xBEE4F92C, float f0x3F393E4E, float -5.257310e-01>, ptr %i.apz, align 4, !tbaa !18, !noalias !82
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apv, i64 128
  store <4 x float> <float f0xBEE4F92C, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.aqa, align 4, !tbaa !18, !noalias !82
  br label %.lr.ph370.i.i

.loopexit364.i.i:                                 ; preds = %.loopexit363.i.i
  %indvars.iv.next418.i.i = add nuw nsw i64 %indvars.iv417.i.i, 1 ; 2 uses
  %indvars.iv.next.i133.i = add nuw nsw i64 %indvars.iv.i131.i, 1
  %exitcond420.not.i.i = icmp eq i64 %indvars.iv.next418.i.i, 10
  br i1 %exitcond420.not.i.i, label %bb.ac, label %.lr.ph370.i.i, !llvm.loop !63

bb.ac:                                            ; preds = %.loopexit364.i.i
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %i.apt ; 3 uses
  %i.aqc = getelementptr i8, ptr %i.apv, i64 %i.apu ; 3 uses
  %i.aqd = icmp sgt i32 %.fr.i128.i, 1
  br i1 %i.aqd, label %.preheader361.split.us.preheader.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

.preheader361.split.us.preheader.i.i:             ; preds = %bb.ac
  %i.aqe = uitofp nneg i32 %.sroa.speculated.i.i to float ; 7 uses
  br label %.preheader361.split.us.i.i

.preheader361.split.us.i.i:                       ; preds = %.loopexit360.us.i.loopexit.i, %.preheader361.split.us.preheader.i.i
  %indvars.iv425.i.i = phi i64 [ 0, %.preheader361.split.us.preheader.i.i ], [ %indvars.iv.next426.i.i, %.loopexit360.us.i.loopexit.i ] ; 4 uses
  %.0249382.us.i.i = phi i32 [ 32, %.preheader361.split.us.preheader.i.i ], [ %.3.us.us.i145.i, %.loopexit360.us.i.loopexit.i ]
  %i.aqf = icmp samesign ult i64 %indvars.iv425.i.i, 12
  %spec.select.us.i.i = select i1 %i.aqf, float f0x3ED2461B, float 5.092880e-01
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %indvars.iv425.i.i, i64 11)
  %.idx462.i.i = mul nuw nsw i64 %indvars.iv425.i.i, 12
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.apv, i64 %.idx462.i.i ; 4 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 4 ; 2 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqg, i64 8
  br label %bb.ad

.loopexit360.us.i.loopexit.i:                     ; preds = %..loopexit359_crit_edge.us.us.i.i
  %indvars.iv.next426.i.i = add nuw nsw i64 %indvars.iv425.i.i, 1 ; 2 uses
  %exitcond430.not.i.i = icmp eq i64 %indvars.iv.next426.i.i, 31
  br i1 %exitcond430.not.i.i, label %.preheader356.i.i, label %.preheader361.split.us.i.i, !llvm.loop !64

bb.ad:                                            ; preds = %..loopexit359_crit_edge.us.us.i.i, %.preheader361.split.us.i.i
  %indvars.iv427.in.i.i = phi i64 [ %indvars.iv427.i.i, %..loopexit359_crit_edge.us.us.i.i ], [ %umax.i.i, %.preheader361.split.us.i.i ] ; 2 uses
  %.1378.us.us.i.i = phi i32 [ %.3.us.us.i145.i, %..loopexit359_crit_edge.us.us.i.i ], [ %.0249382.us.i.i, %.preheader361.split.us.i.i ] ; 2 uses
  %indvars.iv427.i.i = add nuw nsw i64 %indvars.iv427.in.i.i, 1 ; 2 uses
  %i.aqj = load float, ptr %i.aqg, align 4, !tbaa !18, !noalias !82
  %.idx463.i.i = mul nuw nsw i64 %indvars.iv427.i.i, 12
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.apv, i64 %.idx463.i.i ; 4 uses
  %i.aql = load float, ptr %i.aqk, align 4, !tbaa !18, !noalias !82
  %i.aqm = fsub float %i.aqj, %i.aql              ; 2 uses
  %i.aqn = load float, ptr %i.aqh, align 4, !tbaa !18, !noalias !82
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqk, i64 4 ; 2 uses
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !18, !noalias !82
  %i.aqq = fsub float %i.aqn, %i.aqp              ; 2 uses
  %i.aqr = load float, ptr %i.aqi, align 4, !tbaa !18, !noalias !82
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqk, i64 8
  %i.aqt = load float, ptr %i.aqs, align 4, !tbaa !18, !noalias !82
  %i.aqu = fsub float %i.aqr, %i.aqt              ; 2 uses
  %i.aqv = fmul float %i.aqq, %i.aqq
  %i.aqw = tail call float @llvm.fmuladd.f32(float %i.aqm, float %i.aqm, float %i.aqv)
  %i.aqx = tail call float @llvm.fmuladd.f32(float %i.aqu, float %i.aqu, float %i.aqw)
  %i.aqy = fsub float %spec.select.us.i.i, %i.aqx
  %i.aqz = tail call noundef float @llvm.fabs.f32(float %i.aqy)
  %i.ara = fpext float %i.aqz to double
  %i.arb = fcmp ogt double %i.ara, 1.000000e-03
  br i1 %i.arb, label %..loopexit359_crit_edge.us.us.i.i, label %.preheader358.us.us.preheader.i.i

.preheader358.us.us.preheader.i.i:                ; preds = %bb.ad
  %i.arc = sext i32 %.1378.us.us.i.i to i64
  br label %.preheader358.us.us.i.i

.preheader358.us.us.i.i:                          ; preds = %bb.af, %.preheader358.us.us.preheader.i.i
  %indvars.iv421.i.i = phi i64 [ %i.arc, %.preheader358.us.us.preheader.i.i ], [ %indvars.iv.next422.i.i, %bb.af ] ; 2 uses
  %.0245375.us.us.i.i = phi i32 [ 1, %.preheader358.us.us.preheader.i.i ], [ %i.auz, %bb.af ] ; 2 uses
  %.idx464.i.i = mul i64 %indvars.iv421.i.i, 12
  %i.ard = getelementptr i8, ptr %i.apv, i64 %.idx464.i.i ; 2 uses
  %i.are = getelementptr i8, ptr %i.ard, i64 8
  %i.arf = load <2 x float>, ptr %i.aqg, align 4, !tbaa !18, !noalias !82 ; 6 uses
  %i.arg = load <2 x float>, ptr %i.aqh, align 4, !tbaa !18, !noalias !82 ; 8 uses
  %i.arh = load <2 x float>, ptr %i.aqk, align 4, !tbaa !18, !noalias !82 ; 4 uses
  %i.ari = load <2 x float>, ptr %i.aqo, align 4, !tbaa !18, !noalias !82 ; 5 uses
  %i.arj = shufflevector <2 x float> %i.arg, <2 x float> %i.arf, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ark = fneg <2 x float> %i.arj
  %i.arl = fneg <2 x float> %i.arf
  %i.arm = fneg <2 x float> %i.arg
  %i.arn = fmul <2 x float> %i.ari, %i.ark
  %i.aro = shufflevector <2 x float> %i.ari, <2 x float> %i.arh, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.arp = fmul <2 x float> %i.aro, %i.arl
  %i.arq = fmul <2 x float> %i.arh, %i.arm
  %i.arr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arg, <2 x float> %i.aro, <2 x float> %i.arn) ; 3 uses
  %i.ars = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arj, <2 x float> %i.arh, <2 x float> %i.arp) ; 2 uses
  %i.art = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arf, <2 x float> %i.ari, <2 x float> %i.arq)
  %i.aru = extractelement <2 x float> %i.arr, i64 1 ; 4 uses
  %i.arv = fmul float %i.aru, %i.aru
  %i.arw = extractelement <2 x float> %i.arr, i64 0 ; 4 uses
  %i.arx = tail call float @llvm.fmuladd.f32(float %i.arw, float %i.arw, float %i.arv)
  %i.ary = extractelement <2 x float> %i.ars, i64 1 ; 4 uses
  %i.arz = tail call float @llvm.fmuladd.f32(float %i.ary, float %i.ary, float %i.arx)
  %sqrt.i.us.us.i142.i = tail call float @llvm.sqrt.f32(float %i.arz) ; 5 uses
  %i.asa = shufflevector <2 x float> %i.arg, <2 x float> %i.ari, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.asb = fmul <2 x float> %i.asa, %i.asa
  %i.asc = shufflevector <2 x float> %i.arf, <2 x float> %i.arh, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.asd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asc, <2 x float> %i.asc, <2 x float> %i.asb)
  %i.ase = shufflevector <2 x float> %i.arg, <2 x float> %i.ari, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.asf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ase, <2 x float> %i.ase, <2 x float> %i.asd) ; 2 uses
  %shift78 = shufflevector <2 x float> %i.asf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop79 = fmul <2 x float> %i.asf, %shift78
  %i.asg = extractelement <2 x float> %foldExtExtBinop79, i64 0
  %i.ash = tail call noundef float @sqrtf(float noundef %i.asg) #19, !noalias !82
  %i.asi = fdiv float %sqrt.i.us.us.i142.i, %i.ash ; 2 uses
  %i.asj = tail call noundef float @llvm.fabs.f32(float %i.asi)
  %i.ask = fcmp olt float %i.asj, 1.000000e+00
  br i1 %i.ask, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.preheader358.us.us.i.i
  %i.asl = tail call noundef float @asinf(float noundef %i.asi) #19, !noalias !82
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.preheader358.us.us.i.i
  %.0.i.i.us.us.i143.i = phi float [ %i.asl, %bb.ae ], [ f0x3FC90FDB, %.preheader358.us.us.i.i ]
  %i.asm = uitofp nneg i32 %.0245375.us.us.i.i to float
  %i.asn = fmul float %.0.i.i.us.us.i143.i, %i.asm
  %i.aso = fdiv float %i.asn, %i.aqe              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3gmx21SurfaceAreaCalculator11setDotCountEi:bb.a
  %i.bti = fneg float %i.bjq
  %i.btj = fmul float %i.bnp, %i.bti
  %i.btk = tail call float @llvm.fmuladd.f32(float %i.bjr, float %i.bnn, float %i.btj) ; 5 uses
  %i.btl = fadd double %i.bsv, %i.bsx
  %i.btm = fdiv float %i.btb, %i.brx
  %i.btn = fpext float %i.btm to double
  %i.bto = fadd double %i.btl, %i.btn
  %i.btp = insertelement <2 x float> poison, float %i.bsn, i64 0
  %i.btq = shufflevector <2 x float> %i.btp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.btr = fmul <2 x float> %i.bqk, %i.btq
  %i.bts = fpext <2 x float> %i.btr to <2 x double>
  %i.btt = insertelement <2 x double> poison, double %i.bsp, i64 0
  %i.btu = shufflevector <2 x double> %i.btt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.btv = fmul <2 x double> %i.btu, %i.bts
  %i.btw = insertelement <2 x double> poison, double %i.bsq, i64 0
  %i.btx = shufflevector <2 x double> %i.btw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bty = fdiv <2 x double> %i.btv, %i.btx
  %i.btz = insertelement <2 x float> poison, float %i.bsg, i64 0
  %i.bua = shufflevector <2 x float> %i.btz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bub = fmul <2 x float> %i.bjv, %i.bua
  %i.buc = fpext <2 x float> %i.bub to <2 x double>
  %i.bud = fmul <2 x float> %i.bjs, %i.bsr
  %i.bue = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bql, <2 x float> %i.bjt, <2 x float> %i.bud)
  %i.buf = insertelement <2 x float> poison, float %i.bsf, i64 0
  %i.bug = shufflevector <2 x float> %i.buf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.buh = fmul <2 x float> %i.bue, %i.bug
  %i.bui = fadd <2 x double> %i.bty, %i.buc
  %i.buj = shufflevector <2 x float> %i.brq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.buk = fdiv <2 x float> %i.buh, %i.buj
  %i.bul = fpext <2 x float> %i.buk to <2 x double>
  %i.bum = fadd <2 x double> %i.bui, %i.bul
  %i.bun = fptrunc double %i.bto to float         ; 2 uses
  %i.buo = fptrunc <2 x double> %i.bum to <2 x float> ; 3 uses
  %i.bup = insertelement <2 x float> poison, float %i.bun, i64 0
  %i.buq = insertelement <2 x float> %i.bup, float %i.bth, i64 1 ; 2 uses
  %i.bur = fmul <2 x float> %i.buq, %i.buq
  %i.bus = shufflevector <2 x float> %i.buo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.but = insertelement <2 x float> %i.bus, float %i.bte, i64 1 ; 2 uses
  %i.buu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.but, <2 x float> %i.but, <2 x float> %i.bur)
  %i.buv = insertelement <2 x float> %i.buo, float %i.btk, i64 1 ; 2 uses
  %i.buw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.buv, <2 x float> %i.buv, <2 x float> %i.buu)
  %i.bux = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.buw) ; 4 uses
  %i.buy = extractelement <2 x float> %i.bux, i64 0
  %i.buz = fdiv float %i.bun, %i.buy              ; 4 uses
  %i.bva = shufflevector <2 x float> %i.bux, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bvb = fdiv <2 x float> %i.buo, %i.bva        ; 4 uses
  %i.bvc = tail call noundef float @sqrtf(float noundef %i.boo) #19, !noalias !82
  %i.bvd = extractelement <2 x float> %i.bux, i64 1 ; 4 uses
  %i.bve = fdiv float %i.bvd, %i.bvc              ; 2 uses
  %i.bvf = tail call noundef float @llvm.fabs.f32(float %i.bve)
  %i.bvg = fcmp olt float %i.bvf, 1.000000e+00
  br i1 %i.bvg, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.bvh = tail call noundef float @asinf(float noundef %i.bve) #19, !noalias !82
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.0.i.i297.us.us.us.i.i = phi float [ %i.bvh, %bb.aw ], [ f0x3FC90FDB, %bb.av ]
  %i.bvi = fmul float %.0.i.i297.us.us.us.i.i, %i.bsc
  %i.bvj = fdiv float %i.bvi, %i.aqe              ; 2 uses
  %i.bvk = tail call noundef float @sinf(float noundef %i.bvj) #19, !noalias !82 ; 2 uses
  %i.bvl = tail call noundef float @cosf(float noundef %i.bvj) #19, !noalias !82 ; 3 uses
  %i.bvm = fmul float %i.bjq, %i.bth
  %i.bvn = tail call float @llvm.fmuladd.f32(float %i.bjr, float %i.bte, float %i.bvm)
  %i.bvo = tail call float @llvm.fmuladd.f32(float %i.bjp, float %i.btk, float %i.bvn)
  %i.bvp = fdiv float %i.bvo, %i.bvd              ; 3 uses
  %i.bvq = fmul float %i.bte, %i.bvp
  %i.bvr = fpext float %i.bvq to double
  %i.bvs = fpext float %i.bvl to double
  %i.bvt = fsub double 1.000000e+00, %i.bvs       ; 3 uses
  %i.bvu = fpext float %i.bvd to double           ; 2 uses
  %i.bvv = fneg float %i.btk
  %i.bvw = fmul float %i.bjq, %i.bvv
  %i.bvx = fmul float %i.bth, %i.bvp
  %i.bvy = fpext float %i.bvx to double
  %i.bvz = fneg float %i.bte
  %i.bwa = fmul float %i.bjp, %i.bvz
  %i.bwb = fmul float %i.btk, %i.bvp
  %i.bwc = fpext float %i.bwb to double
  %i.bwd = fmul double %i.bvt, %i.bwc
  %i.bwe = fdiv double %i.bwd, %i.bvu
  %i.bwf = fmul float %i.bjp, %i.bvl
  %i.bwg = fpext float %i.bwf to double
  %i.bwh = fneg float %i.bth
  %i.bwi = fmul float %i.bjr, %i.bwh
  %i.bwj = tail call float @llvm.fmuladd.f32(float %i.bte, float %i.bjq, float %i.bwi)
  %i.bwk = fmul float %i.bwj, %i.bvk
  %i.bwl = fmul double %i.bvt, %i.bvy
  %i.bwm = fmul double %i.bvt, %i.bvr
  %i.bwn = insertelement <2 x double> poison, double %i.bwm, i64 0
  %i.bwo = insertelement <2 x double> %i.bwn, double %i.bwl, i64 1
  %i.bwp = insertelement <2 x double> poison, double %i.bvu, i64 0
  %i.bwq = shufflevector <2 x double> %i.bwp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bwr = fdiv <2 x double> %i.bwo, %i.bwq
  %i.bws = insertelement <2 x float> poison, float %i.bvl, i64 0
  %i.bwt = shufflevector <2 x float> %i.bws, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bwu = fmul <2 x float> %i.bjo, %i.bwt
  %i.bwv = fpext <2 x float> %i.bwu to <2 x double>
  %i.bww = fadd <2 x double> %i.bwr, %i.bwv
  %i.bwx = tail call float @llvm.fmuladd.f32(float %i.btk, float %i.bjr, float %i.bwa)
  %i.bwy = tail call float @llvm.fmuladd.f32(float %i.bth, float %i.bjp, float %i.bvw)
  %i.bwz = insertelement <2 x float> poison, float %i.bwy, i64 0
  %i.bxa = insertelement <2 x float> %i.bwz, float %i.bwx, i64 1
  %i.bxb = insertelement <2 x float> poison, float %i.bvk, i64 0
  %i.bxc = shufflevector <2 x float> %i.bxb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bxd = fmul <2 x float> %i.bxa, %i.bxc
  %i.bxe = shufflevector <2 x float> %i.bux, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bxf = fdiv <2 x float> %i.bxd, %i.bxe
  %i.bxg = fpext <2 x float> %i.bxf to <2 x double>
  %i.bxh = fadd double %i.bwe, %i.bwg
  %i.bxi = fdiv float %i.bwk, %i.bvd
  %i.bxj = fpext float %i.bxi to double
  %i.bxk = fadd <2 x double> %i.bww, %i.bxg       ; 2 uses
  %i.bxl = fadd double %i.bxh, %i.bxj
  %i.bxm = shufflevector <2 x double> %i.bxk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bxn = insertelement <2 x double> %i.bxm, double %i.bxl, i64 1
  %i.bxo = fptrunc <2 x double> %i.bxn to <2 x float> ; 4 uses
  %i.bxp = fptrunc <2 x double> %i.bxk to <2 x float> ; 2 uses
  %foldExtExtBinop111 = fmul <2 x float> %i.bxo, %i.bxo
  %i.bxq = extractelement <2 x float> %foldExtExtBinop111, i64 0
  %i.bxr = extractelement <2 x float> %i.bxp, i64 0 ; 2 uses
  %i.bxs = tail call float @llvm.fmuladd.f32(float %i.bxr, float %i.bxr, float %i.bxq)
  %i.bxt = extractelement <2 x float> %i.bxo, i64 1 ; 2 uses
  %i.bxu = tail call float @llvm.fmuladd.f32(float %i.bxt, float %i.bxt, float %i.bxs)
  %sqrt95.i298.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.bxu)
  %i.bxv = insertelement <2 x float> poison, float %sqrt95.i298.us.us.us.i.i, i64 0
  %i.bxw = shufflevector <2 x float> %i.bxv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bxx = fdiv <2 x float> %i.bxp, %i.bxw        ; 3 uses
  %i.bxy = fdiv <2 x float> %i.bxo, %i.bxw        ; 6 uses
  %i.bxz = tail call noundef float @sqrtf(float noundef %i.bin) #19, !noalias !82
  %i.bya = fdiv float %sqrt.i300.us.us.us.i.i, %i.bxz ; 2 uses
  %i.byb = tail call noundef float @llvm.fabs.f32(float %i.bya)
  %i.byc = fcmp olt float %i.byb, 1.000000e+00
  br i1 %i.byc, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.byd = tail call noundef float @asinf(float noundef %i.bya) #19, !noalias !82
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0.i.i301.us.us.us.i.i = phi float [ %i.byd, %bb.ay ], [ f0x3FC90FDB, %bb.ax ]
  %i.bye = fmul float %.0.i.i301.us.us.us.i.i, %i.bkz
  %i.byf = fdiv float %i.bye, %i.bgn              ; 2 uses
  %i.byg = tail call noundef float @sinf(float noundef %i.byf) #19, !noalias !82 ; 2 uses
  %i.byh = tail call noundef float @cosf(float noundef %i.byf) #19, !noalias !82 ; 3 uses
  %i.byi = fpext float %i.byh to double
  %i.byj = fsub double 1.000000e+00, %i.byi       ; 2 uses
  %i.byk = fmul double %i.byj, %i.bje
  %i.byl = fdiv double %i.byk, %i.biv
  %i.bym = fmul float %i.bht, %i.byh
  %i.byn = fpext float %i.bym to double
  %i.byo = fadd double %i.byl, %i.byn
  %i.byp = fmul float %i.bjh, %i.byg
  %i.byq = fdiv float %i.byp, %sqrt.i300.us.us.us.i.i
  %i.byr = fpext float %i.byq to double
  %i.bys = fadd double %i.byo, %i.byr
  %i.byt = sub nuw nsw i32 %.sroa.speculated.i.i, %.0386.us.us.us.i.i
  %i.byu = extractelement <2 x float> %i.bru, i64 1 ; 7 uses
  %i.byv = fneg float %i.byu
  %i.byw = extractelement <2 x float> %i.brs, i64 0 ; 7 uses
  %i.byx = fneg float %i.byw
  %i.byy = extractelement <2 x float> %i.bru, i64 0 ; 4 uses
  %i.byz = fneg float %i.byy
  %i.bza = insertelement <2 x double> poison, double %i.byj, i64 0
  %i.bzb = shufflevector <2 x double> %i.bza, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bzc = fmul <2 x double> %i.bzb, %i.bjb
  %i.bzd = fdiv <2 x double> %i.bzc, %i.bjj
  %i.bze = insertelement <2 x float> poison, float %i.byh, i64 0
  %i.bzf = shufflevector <2 x float> %i.bze, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bzg = fmul <2 x float> %i.bhs, %i.bzf
  %i.bzh = fpext <2 x float> %i.bzg to <2 x double>
  %i.bzi = fadd <2 x double> %i.bzd, %i.bzh
  %i.bzj = insertelement <2 x float> poison, float %i.byg, i64 0
  %i.bzk = shufflevector <2 x float> %i.bzj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bzl = fmul <2 x float> %i.bjl, %i.bzk
  %i.bzm = fdiv <2 x float> %i.bzl, %i.bjn
  %i.bzn = fpext <2 x float> %i.bzm to <2 x double>
  %i.bzo = fadd <2 x double> %i.bzi, %i.bzn
  %i.bzp = fptrunc <2 x double> %i.bzo to <2 x float> ; 4 uses
  %i.bzq = fptrunc double %i.bys to float         ; 3 uses
  %i.bzr = fmul float %i.boh, %i.byv
  %i.bzs = extractelement <2 x float> %i.bok, i64 1 ; 3 uses
  %i.bzt = fmul float %i.bzs, %i.byz
  %i.bzu = extractelement <2 x float> %i.bok, i64 0 ; 3 uses
  %i.bzv = fmul float %i.bzu, %i.byx
  %i.bzw = insertelement <2 x float> poison, float %i.bzr, i64 0
  %i.bzx = insertelement <2 x float> %i.bzw, float %i.bzv, i64 1
  %i.bzy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bru, <2 x float> %i.bok, <2 x float> %i.bzx) ; 3 uses
  %i.bzz = tail call float @llvm.fmuladd.f32(float %i.byw, float %i.boh, float %i.bzt) ; 6 uses
  %i.caa = extractelement <2 x float> %i.bzy, i64 1 ; 5 uses
  %i.cab = fmul float %i.caa, %i.caa
  %foldExtExtBinop113 = fmul <2 x float> %i.bzp, %i.bzp
  %i.cac = extractelement <2 x float> %foldExtExtBinop113, i64 1
  %i.cad = extractelement <2 x float> %i.bzy, i64 0 ; 5 uses
  %i.cae = tail call float @llvm.fmuladd.f32(float %i.cad, float %i.cad, float %i.cab)
  %i.caf = extractelement <2 x float> %i.bzp, i64 0 ; 2 uses
  %i.cag = tail call float @llvm.fmuladd.f32(float %i.caf, float %i.caf, float %i.cac)
  %i.cah = tail call float @llvm.fmuladd.f32(float %i.bzz, float %i.bzz, float %i.cae)
  %i.cai = tail call float @llvm.fmuladd.f32(float %i.bzq, float %i.bzq, float %i.cag)
  %14 = insertelement <2 x float> poison, float %i.cai, i64 0
  %15 = insertelement <2 x float> %14, float %i.cah, i64 1
  %16 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %15) ; 4 uses
  %i.caj = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cak = fdiv <2 x float> %i.bzp, %i.caj
  %17 = extractelement <2 x float> %16, i64 0
  %i.cal = fdiv float %i.bzq, %17
  %foldExtExtBinop115 = fmul <2 x float> %i.bru, %i.bru
  %i.cam = extractelement <2 x float> %foldExtExtBinop115, i64 0
  %i.can = tail call float @llvm.fmuladd.f32(float %i.byw, float %i.byw, float %i.cam)
  %i.cao = tail call float @llvm.fmuladd.f32(float %i.byu, float %i.byu, float %i.can)
  %i.cap = fmul float %i.boh, %i.boh
  %i.caq = tail call float @llvm.fmuladd.f32(float %i.bzs, float %i.bzs, float %i.cap)
  %i.car = tail call float @llvm.fmuladd.f32(float %i.bzu, float %i.bzu, float %i.caq)
  %i.cas = fmul float %i.car, %i.cao
  %i.cat = tail call noundef float @sqrtf(float noundef %i.cas) #19, !noalias !82
  %18 = extractelement <2 x float> %16, i64 1     ; 4 uses
  %i.cau = fdiv float %18, %i.cat                 ; 2 uses
  %i.cav = tail call noundef float @llvm.fabs.f32(float %i.cau)
  %i.caw = fcmp olt float %i.cav, 1.000000e+00
  br i1 %i.caw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.cax = tail call noundef float @asinf(float noundef %i.cau) #19, !noalias !82
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.0.i.i305.us.us.us.i.i = phi float [ %i.cax, %bb.ba ], [ f0x3FC90FDB, %bb.az ]
  %i.cay = fmul float %.0.i.i305.us.us.us.i.i, %i.bbc
  %i.caz = uitofp nneg i32 %i.byt to float
  %i.cba = fdiv float %i.cay, %i.caz              ; 2 uses
  %i.cbb = tail call noundef float @sinf(float noundef %i.cba) #19, !noalias !82 ; 2 uses
  %i.cbc = tail call noundef float @cosf(float noundef %i.cba) #19, !noalias !82 ; 3 uses
  %i.cbd = fmul float %i.byy, %i.caa
  %i.cbe = tail call float @llvm.fmuladd.f32(float %i.byw, float %i.cad, float %i.cbd)
  %i.cbf = tail call float @llvm.fmuladd.f32(float %i.byu, float %i.bzz, float %i.cbe)
  %i.cbg = fdiv float %i.cbf, %18                 ; 2 uses
  %i.cbh = fpext float %i.cbc to double
  %i.cbi = fsub double 1.000000e+00, %i.cbh       ; 2 uses
  %i.cbj = fpext float %18 to double              ; 2 uses
  %i.cbk = fneg float %i.bzz
  %i.cbl = fneg float %i.cad
  %i.cbm = fmul float %i.bzz, %i.cbg
  %i.cbn = fpext float %i.cbm to double
  %i.cbo = fmul double %i.cbi, %i.cbn
  %i.cbp = fdiv double %i.cbo, %i.cbj
  %i.cbq = fmul float %i.byu, %i.cbc
  %i.cbr = fpext float %i.cbq to double
  %i.cbs = fadd double %i.cbp, %i.cbr
  %i.cbt = fneg float %i.caa
  %i.cbu = fmul float %i.byw, %i.cbt
  %i.cbv = tail call float @llvm.fmuladd.f32(float %i.cad, float %i.byy, float %i.cbu)
  %i.cbw = fmul float %i.cbv, %i.cbb
  %i.cbx = fdiv float %i.cbw, %18
  %i.cby = fpext float %i.cbx to double
  %i.cbz = fadd double %i.cbs, %i.cby
  %i.cca = add nuw nsw i32 %.0386.us.us.us.i.i, %.0241390.us.us.us.i.i
  %i.ccb = shufflevector <2 x float> %i.bxy, <2 x float> %i.bxx, <2 x i32> <i32 1, i32 2>
  %i.ccc = fneg <2 x float> %i.ccb
  %i.ccd = extractelement <2 x float> %i.bxy, i64 0 ; 4 uses
  %i.cce = fneg float %i.ccd
  %i.ccf = insertelement <2 x float> poison, float %i.cbg, i64 0
  %i.ccg = shufflevector <2 x float> %i.ccf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cch = fmul <2 x float> %i.bzy, %i.ccg
  %i.cci = fpext <2 x float> %i.cch to <2 x double>
  %i.ccj = insertelement <2 x double> poison, double %i.cbi, i64 0
  %i.cck = shufflevector <2 x double> %i.ccj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ccl = fmul <2 x double> %i.cck, %i.cci
  %i.ccm = insertelement <2 x double> poison, double %i.cbj, i64 0
  %i.ccn = shufflevector <2 x double> %i.ccm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cco = fdiv <2 x double> %i.ccl, %i.ccn
  %i.ccp = insertelement <2 x float> poison, float %i.cbc, i64 0
  %i.ccq = shufflevector <2 x float> %i.ccp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ccr = fmul <2 x float> %i.brs, %i.ccq
  %i.ccs = fpext <2 x float> %i.ccr to <2 x double>
  %i.cct = fadd <2 x double> %i.cco, %i.ccs
  %i.ccu = fmul float %i.byu, %i.cbl
  %i.ccv = fmul float %i.byy, %i.cbk
  %i.ccw = tail call float @llvm.fmuladd.f32(float %i.bzz, float %i.byw, float %i.ccu)
  %i.ccx = tail call float @llvm.fmuladd.f32(float %i.caa, float %i.byu, float %i.ccv)
  %i.ccy = insertelement <2 x float> poison, float %i.ccx, i64 0
  %i.ccz = insertelement <2 x float> %i.ccy, float %i.ccw, i64 1
  %i.cda = insertelement <2 x float> poison, float %i.cbb, i64 0
  %i.cdb = shufflevector <2 x float> %i.cda, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cdc = fmul <2 x float> %i.ccz, %i.cdb
  %19 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cdd = fdiv <2 x float> %i.cdc, %19
  %i.cde = fpext <2 x float> %i.cdd to <2 x double>
  %i.cdf = fadd <2 x double> %i.cct, %i.cde
  %i.cdg = fptrunc <2 x double> %i.cdf to <2 x float> ; 4 uses
  %i.cdh = fptrunc double %i.cbz to float         ; 3 uses
  %i.cdi = shufflevector <2 x float> %i.bvb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cdj = insertelement <2 x float> %i.cdi, float %i.buz, i64 0
  %i.cdk = fmul <2 x float> %i.cdj, %i.ccc
  %i.cdl = extractelement <2 x float> %i.bvb, i64 1 ; 3 uses
  %i.cdm = fmul float %i.cdl, %i.cce
  %i.cdn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bxy, <2 x float> %i.bvb, <2 x float> %i.cdk) ; 3 uses
  %i.cdo = extractelement <2 x float> %i.bxx, i64 0 ; 6 uses
  %i.cdp = tail call float @llvm.fmuladd.f32(float %i.cdo, float %i.buz, float %i.cdm) ; 6 uses
  %i.cdq = extractelement <2 x float> %i.cdn, i64 1 ; 5 uses
  %i.cdr = fmul float %i.cdq, %i.cdq
  %foldExtExtBinop117 = fmul <2 x float> %i.cdg, %i.cdg
  %i.cds = extractelement <2 x float> %foldExtExtBinop117, i64 1
  %i.cdt = extractelement <2 x float> %i.cdn, i64 0 ; 5 uses
  %i.cdu = tail call float @llvm.fmuladd.f32(float %i.cdt, float %i.cdt, float %i.cdr)
  %i.cdv = extractelement <2 x float> %i.cdg, i64 0 ; 2 uses
  %i.cdw = tail call float @llvm.fmuladd.f32(float %i.cdv, float %i.cdv, float %i.cds)
  %i.cdx = tail call float @llvm.fmuladd.f32(float %i.cdp, float %i.cdp, float %i.cdu)
  %i.cdy = tail call float @llvm.fmuladd.f32(float %i.cdh, float %i.cdh, float %i.cdw)
  %20 = insertelement <2 x float> poison, float %i.cdy, i64 0
  %21 = insertelement <2 x float> %20, float %i.cdx, i64 1
  %22 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %21) ; 4 uses
  %i.cdz = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cea = fdiv <2 x float> %i.cdg, %i.cdz
  %23 = extractelement <2 x float> %22, i64 0
  %i.ceb = fdiv float %i.cdh, %23
  %foldExtExtBinop119 = fmul <2 x float> %i.bxy, %i.bxy
  %i.cec = extractelement <2 x float> %foldExtExtBinop119, i64 0
  %i.ced = tail call float @llvm.fmuladd.f32(float %i.cdo, float %i.cdo, float %i.cec)
  %i.cee = extractelement <2 x float> %i.bxy, i64 1 ; 6 uses
  %i.cef = tail call float @llvm.fmuladd.f32(float %i.cee, float %i.cee, float %i.ced)
  %i.ceg = fmul float %i.buz, %i.buz
  %i.ceh = tail call float @llvm.fmuladd.f32(float %i.cdl, float %i.cdl, float %i.ceg)
  %i.cei = extractelement <2 x float> %i.bvb, i64 0 ; 2 uses
  %i.cej = tail call float @llvm.fmuladd.f32(float %i.cei, float %i.cei, float %i.ceh)
  %i.cek = fmul float %i.cej, %i.cef
  %i.cel = tail call noundef float @sqrtf(float noundef %i.cek) #19, !noalias !82
  %24 = extractelement <2 x float> %22, i64 1     ; 4 uses
  %i.cem = fdiv float %24, %i.cel                 ; 2 uses
  %i.cen = tail call noundef float @llvm.fabs.f32(float %i.cem)
  %i.ceo = fcmp olt float %i.cen, 1.000000e+00
  br i1 %i.ceo, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.cep = tail call noundef float @asinf(float noundef %i.cem) #19, !noalias !82
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.0.i.i309.us.us.us.i.i = phi float [ %i.cep, %bb.bc ], [ f0x3FC90FDB, %bb.bb ]
  %i.ceq = fmul float %.0.i.i309.us.us.us.i.i, %i.bbc
  %i.cer = uitofp nneg i32 %i.cca to float
  %i.ces = fdiv float %i.ceq, %i.cer              ; 2 uses
  %i.cet = tail call noundef float @sinf(float noundef %i.ces) #19, !noalias !82 ; 2 uses
  %i.ceu = tail call noundef float @cosf(float noundef %i.ces) #19, !noalias !82 ; 3 uses
  %i.cev = fmul float %i.ccd, %i.cdq
  %i.cew = tail call float @llvm.fmuladd.f32(float %i.cdo, float %i.cdt, float %i.cev)
  %i.cex = tail call float @llvm.fmuladd.f32(float %i.cee, float %i.cdp, float %i.cew)
  %i.cey = fdiv float %i.cex, %24                 ; 2 uses
  %i.cez = fpext float %i.ceu to double
  %i.cfa = fsub double 1.000000e+00, %i.cez       ; 2 uses
  %i.cfb = fpext float %24 to double              ; 2 uses
  %i.cfc = fneg float %i.cdp
  %i.cfd = fneg float %i.cdt
  %i.cfe = fmul float %i.cdp, %i.cey
  %i.cff = fpext float %i.cfe to double
  %i.cfg = fmul double %i.cfa, %i.cff
  %i.cfh = fdiv double %i.cfg, %i.cfb
  %i.cfi = fmul float %i.cee, %i.ceu
  %i.cfj = fpext float %i.cfi to double
  %i.cfk = fadd double %i.cfh, %i.cfj
  %i.cfl = fneg float %i.cdq
  %i.cfm = fmul float %i.cdo, %i.cfl
  %i.cfn = tail call float @llvm.fmuladd.f32(float %i.cdt, float %i.ccd, float %i.cfm)
  %i.cfo = fmul float %i.cfn, %i.cet
  %i.cfp = fdiv float %i.cfo, %24
  %i.cfq = fpext float %i.cfp to double
  %i.cfr = fadd double %i.cfk, %i.cfq
  %i.cfs = fptrunc double %i.cfr to float         ; 3 uses
  %i.cft = fadd <2 x float> %i.cak, %i.cea
  %i.cfu = fadd float %i.cal, %i.ceb
  %.idx468.i.i = mul i64 %indvars.iv431.i.i, 12
  %i.cfv = getelementptr i8, ptr %i.apv, i64 %.idx468.i.i ; 2 uses
  %i.cfw = insertelement <2 x float> poison, float %i.cey, i64 0
  %i.cfx = shufflevector <2 x float> %i.cfw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cfy = fmul <2 x float> %i.cdn, %i.cfx
  %i.cfz = fpext <2 x float> %i.cfy to <2 x double>
  %i.cga = insertelement <2 x double> poison, double %i.cfa, i64 0
  %i.cgb = shufflevector <2 x double> %i.cga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cgc = fmul <2 x double> %i.cgb, %i.cfz
  %i.cgd = insertelement <2 x double> poison, double %i.cfb, i64 0
  %i.cge = shufflevector <2 x double> %i.cgd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cgf = fdiv <2 x double> %i.cgc, %i.cge
  %i.cgg = insertelement <2 x float> poison, float %i.ceu, i64 0
  %i.cgh = shufflevector <2 x float> %i.cgg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cgi = fmul <2 x float> %i.bxx, %i.cgh
  %i.cgj = fpext <2 x float> %i.cgi to <2 x double>
  %i.cgk = fadd <2 x double> %i.cgf, %i.cgj
  %i.cgl = fmul float %i.cee, %i.cfd
  %i.cgm = fmul float %i.ccd, %i.cfc
  %i.cgn = tail call float @llvm.fmuladd.f32(float %i.cdp, float %i.cdo, float %i.cgl)
  %i.cgo = tail call float @llvm.fmuladd.f32(float %i.cdq, float %i.cee, float %i.cgm)
  %i.cgp = insertelement <2 x float> poison, float %i.cgo, i64 0
  %i.cgq = insertelement <2 x float> %i.cgp, float %i.cgn, i64 1
  %i.cgr = insertelement <2 x float> poison, float %i.cet, i64 0
  %i.cgs = shufflevector <2 x float> %i.cgr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cgt = fmul <2 x float> %i.cgq, %i.cgs
  %25 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cgu = fdiv <2 x float> %i.cgt, %25
  %i.cgv = fpext <2 x float> %i.cgu to <2 x double>
  %i.cgw = fadd <2 x double> %i.cgk, %i.cgv
  %i.cgx = fptrunc <2 x double> %i.cgw to <2 x float> ; 4 uses
  %foldExtExtBinop121 = fmul <2 x float> %i.cgx, %i.cgx
  %i.cgy = extractelement <2 x float> %foldExtExtBinop121, i64 1
  %i.cgz = extractelement <2 x float> %i.cgx, i64 0 ; 2 uses
  %i.cha = tail call float @llvm.fmuladd.f32(float %i.cgz, float %i.cgz, float %i.cgy)
  %i.chb = tail call float @llvm.fmuladd.f32(float %i.cfs, float %i.cfs, float %i.cha)
  %sqrt95.i310.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.chb) ; 2 uses
  %i.chc = insertelement <2 x float> poison, float %sqrt95.i310.us.us.us.i.i, i64 0
  %i.chd = shufflevector <2 x float> %i.chc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.che = fdiv <2 x float> %i.cgx, %i.chd
  %i.chf = fdiv float %i.cfs, %sqrt95.i310.us.us.us.i.i
  %i.chg = fadd <2 x float> %i.cft, %i.che        ; 4 uses
  %i.chh = fadd float %i.cfu, %i.chf              ; 3 uses
  %foldExtExtBinop123 = fmul <2 x float> %i.chg, %i.chg
  %i.chi = extractelement <2 x float> %foldExtExtBinop123, i64 1
  %i.chj = extractelement <2 x float> %i.chg, i64 0 ; 2 uses
  %i.chk = tail call float @llvm.fmuladd.f32(float %i.chj, float %i.chj, float %i.chi)
  %i.chl = tail call float @llvm.fmuladd.f32(float %i.chh, float %i.chh, float %i.chk)
  %sqrt352.us.us.us.i.i = tail call float @llvm.sqrt.f32(float %i.chl) ; 2 uses
  %i.chm = insertelement <2 x float> poison, float %sqrt352.us.us.us.i.i, i64 0
  %i.chn = shufflevector <2 x float> %i.chm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cho = fdiv <2 x float> %i.chg, %i.chn
  store <2 x float> %i.cho, ptr %i.cfv, align 4, !tbaa !18, !noalias !82
  %i.chp = fdiv float %i.chh, %sqrt352.us.us.us.i.i
  %i.chq = getelementptr i8, ptr %i.cfv, i64 8
  store float %i.chp, ptr %i.chq, align 4, !tbaa !18, !noalias !82
  %indvars.iv.next432.i.i = add nsw i64 %indvars.iv431.i.i, 1 ; 3 uses
  %i.chr = add nuw nsw i32 %.0386.us.us.us.i.i, 1 ; 2 uses
  %exitcond436.not.i.i = icmp eq i32 %i.chr, %indvars.iv434.i.i
  br i1 %exitcond436.not.i.i, label %._crit_edge.us.us.us.loopexit.i141.i, label %bb.ap, !llvm.loop !70

._crit_edge.us.us.us.loopexit.i141.i:             ; preds = %bb.bd
  %i.chs = add nuw nsw i32 %.0241390.us.us.us.i.i, 1 ; 2 uses
  %indvars.iv.next435.i.i = add nsw i32 %indvars.iv434.i.i, -1
  %exitcond437.not.i.i = icmp eq i32 %i.chs, %i.axp
  br i1 %exitcond437.not.i.i, label %..loopexit_crit_edge.us.us.us.i139.i.loopexit, label %.preheader.us.us.us.i136.i, !llvm.loop !71

..loopexit_crit_edge.us.us.us.i139.i.loopexit:    ; preds = %._crit_edge.us.us.us.loopexit.i141.i
  %i.cht = trunc nsw i64 %indvars.iv.next432.i.i to i32
  br label %..loopexit_crit_edge.us.us.us.i139.i

..loopexit_crit_edge.us.us.us.i139.i:             ; preds = %..loopexit_crit_edge.us.us.us.i139.i.loopexit, %bb.al, %.lr.ph396.us.us.i.i
  %.9.us.us.us.i140.i = phi i32 [ %.6394.us.us.us.i.i, %bb.al ], [ %.6394.us.us.us.i.i, %.lr.ph396.us.us.i.i ], [ %i.cht, %..loopexit_crit_edge.us.us.us.i139.i.loopexit ] ; 2 uses
  %exitcond443.not.i.i = icmp eq i64 %indvars.iv.next441.i.i, 31
  br i1 %exitcond443.not.i.i, label %.loopexit354.us.us.i.i, label %.lr.ph396.us.us.i.i, !llvm.loop !72

.split.us.us.i.i:                                 ; preds = %.loopexit354.us.us.i.i
  %indvars.iv.next447.i.i = add nuw nsw i64 %indvars.iv446.i.i, 1 ; 2 uses
  %exitcond449.not.i.i = icmp eq i64 %indvars.iv.next447.i.i, 12
  br i1 %exitcond449.not.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %.preheader355.us.i.i, !llvm.loop !73

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %.split.us.us.i.i, %.loopexit250.us.i.i, %.preheader356.i.i, %bb.ac, %.preheader251.i.i, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %.sink329.i = phi ptr [ %i.aa, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.apv, %bb.ac ], [ %i.aa, %.preheader251.i.i ], [ %i.aa, %.loopexit250.us.i.i ], [ %i.apv, %.preheader356.i.i ], [ %i.apv, %.split.us.us.i.i ] ; 12 uses
  %.sink327.i = phi ptr [ %i.ad, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.aqc, %bb.ac ], [ %i.ad, %.preheader251.i.i ], [ %i.ad, %.loopexit250.us.i.i ], [ %i.aqc, %.preheader356.i.i ], [ %i.aqc, %.split.us.us.i.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.ab, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.aqb, %bb.ac ], [ %i.ab, %.preheader251.i.i ], [ %i.ab, %.loopexit250.us.i.i ], [ %i.aqb, %.preheader356.i.i ], [ %i.aqb, %.split.us.us.i.i ] ; 2 uses
  %i.chu = ptrtoint ptr %.sink327.i to i64
  %i.chv = ptrtoint ptr %.sink329.i to i64        ; 2 uses
  %i.chw = sub i64 %i.chu, %i.chv
  %i.chx = ashr exact i64 %i.chw, 2
  %i.chy = sdiv i64 %i.chx, 3                     ; 6 uses
  %i.chz = trunc i64 %i.chy to i32                ; 5 uses
  %i.cia = icmp sgt i32 %i.chz, 0                 ; 2 uses
  br i1 %i.cia, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %wide.trip.count.i = and i64 %i.chy, 2147483647
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i, %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %.sroa.17.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorIfSaIfEED2Ev.exit.i ], [ %.sroa.17.1.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i ] ; 2 uses
  %.sroa.0188.0.lcssa.i = phi ptr [ null, %_ZNSt6vectorIfSaIfEED2Ev.exit.i ], [ %.sroa.0188.1.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i ] ; 21 uses
  %i.cib = invoke noalias noundef nonnull dereferenceable(516) ptr @_Znwm(i64 noundef 516) #17
          to label %bb.bj unwind label %bb.bk, !noalias !81 ; 16 uses

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i ] ; 2 uses
  %.sroa.0188.0224.i = phi ptr [ null, %.lr.ph.preheader.i ], [ %.sroa.0188.1.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i ] ; 7 uses
  %.sroa.17.0223.i = phi ptr [ null, %.lr.ph.preheader.i ], [ %.sroa.17.1.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i ] ; 5 uses
  %.sroa.14.0222.i = phi ptr [ null, %.lr.ph.preheader.i ], [ %.sroa.14.1.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i ] ; 3 uses
  %.idx.i = mul nuw nsw i64 %indvars.iv.i, 12
  %i.cic = getelementptr inbounds nuw i8, ptr %.sink329.i, i64 %.idx.i ; 2 uses
  %i.cid = load float, ptr %i.cic, align 4, !tbaa !18, !noalias !81
  %i.cie = fpext float %i.cid to double
  %i.cif = fadd double %i.cie, 1.000000e+00
  %i.cig = fmul double %i.cif, 2.000000e+00
  %i.cih = tail call double @llvm.floor.f64(double %i.cig)
  %i.cii = fptosi double %i.cih to i32
  %.sroa.speculated183.i = tail call i32 @llvm.smax.i32(i32 %i.cii, i32 0)
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated183.i, i32 3)
  %i.cij = getelementptr inbounds nuw i8, ptr %i.cic, i64 4
  %i.cik = load <2 x float>, ptr %i.cij, align 4, !tbaa !18, !noalias !81
  %i.cil = fpext <2 x float> %i.cik to <2 x double>
  %i.cim = fadd <2 x double> %i.cil, splat (double 1.000000e+00)
  %i.cin = fmul <2 x double> %i.cim, splat (double 2.000000e+00)
  %i.cio = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.cin)
  %i.cip = fptosi <2 x double> %i.cio to <2 x i32>
  %i.ciq = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cip, <2 x i32> zeroinitializer)
  %i.cir = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ciq, <2 x i32> splat (i32 3))
  %i.cis = shl nuw nsw <2 x i32> %i.cir, <i32 2, i32 4> ; 2 uses
  %i.cit = extractelement <2 x i32> %i.cis, i64 0
  %i.ciu = or disjoint i32 %i.cit, %spec.select.i
  %i.civ = extractelement <2 x i32> %i.cis, i64 1
  %i.ciw = or disjoint i32 %i.ciu, %i.civ         ; 2 uses
  %.not.i158.i = icmp eq ptr %.sroa.14.0222.i, %.sroa.17.0223.i
  br i1 %.not.i158.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i
  store i32 %i.ciw, ptr %.sroa.14.0222.i, align 4, !tbaa !19, !noalias !81
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i

bb.bf:                                            ; preds = %.lr.ph.i
  %i.cix = ptrtoint ptr %.sroa.17.0223.i to i64
  %i.ciy = ptrtoint ptr %.sroa.0188.0224.i to i64
  %i.ciz = sub i64 %i.cix, %i.ciy                 ; 6 uses
  %i.cja = icmp eq i64 %i.ciz, 9223372036854775804
  br i1 %i.cja, label %bb.bg, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc160.i unwind label %.loopexit.split-lp.i, !noalias !81

.noexc160.i:                                      ; preds = %bb.bg
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bf
  %i.cjb = ashr exact i64 %i.ciz, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cjb, i64 1)
  %i.cjc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cjb ; 2 uses
  %i.cjd = icmp ult i64 %i.cjc, %i.cjb
  %i.cje = tail call i64 @llvm.umin.i64(i64 %i.cjc, i64 2305843009213693951)
  %i.cjf = select i1 %i.cjd, i64 2305843009213693951, i64 %i.cje ; 3 uses
  %.not.i.i.i159.i = icmp ne i64 %i.cjf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i159.i)
  %i.cjg = shl nuw nsw i64 %i.cjf, 2
  %i.cjh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cjg) #17
          to label %.noexc161.i unwind label %.loopexit.i, !noalias !81 ; 4 uses

.noexc161.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cji = getelementptr inbounds i8, ptr %i.cjh, i64 %i.ciz ; 2 uses
  store i32 %i.ciw, ptr %i.cji, align 4, !tbaa !19, !noalias !81
  %i.cjj = icmp sgt i64 %i.ciz, 0
  br i1 %i.cjj, label %bb.bh, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.bh:                                            ; preds = %.noexc161.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cjh, ptr align 4 %.sroa.0188.0224.i, i64 %i.ciz, i1 false), !noalias !81
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bh, %.noexc161.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0188.0224.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0188.0224.i, i64 noundef %i.ciz) #18, !noalias !81
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.bi, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.cjk = getelementptr inbounds nuw [4 x i8], ptr %i.cjh, i64 %i.cjf
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.be
  %.pn210.i = phi ptr [ %i.cji, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.14.0222.i, %bb.be ]
  %.sroa.17.1.i = phi ptr [ %i.cjk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.17.0223.i, %bb.be ] ; 2 uses
  %.sroa.0188.1.i = phi ptr [ %i.cjh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0188.0224.i, %bb.be ] ; 2 uses
  %.sroa.14.1.i = getelementptr inbounds nuw i8, ptr %.pn210.i, i64 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !74

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp.i:                             ; preds = %bb.bg
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bj:                                            ; preds = %._crit_edge.i
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.cib, i64 256 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(516) %i.cib, i8 0, i64 516, i1 false), !noalias !81
  br i1 %i.cia, label %.lr.ph229.preheader.i, label %.preheader212.i

.lr.ph229.preheader.i:                            ; preds = %bb.bj
  %wide.trip.count255.i = and i64 %i.chy, 2147483647
  %i.cjm = add nsw i64 %wide.trip.count255.i, -1
  %xtraiter = and i64 %i.chy, 7                   ; 3 uses
  %i.cjn = icmp ult i64 %i.cjm, 7
  br i1 %i.cjn, label %.lr.ph229.i.epil.preheader, label %.lr.ph229.preheader.i.new

.lr.ph229.preheader.i.new:                        ; preds = %.lr.ph229.preheader.i
  %unroll_iter = and i64 %i.chy, 2147483640
  br label %.lr.ph229.i

.preheader212.i.loopexit.unr-lcssa:               ; preds = %.lr.ph229.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader212.i, label %.lr.ph229.i.epil.preheader

end_hunk_1
