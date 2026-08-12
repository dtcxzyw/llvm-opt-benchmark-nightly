inline.NumInlined: 325
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 80
begin_hunk_0_@process:bb.a
  %i.aau = shufflevector <4 x float> %i.aad, <4 x float> poison, <2 x i32> zeroinitializer
  %i.aav = shufflevector <4 x float> %i.aab, <4 x float> poison, <2 x i32> zeroinitializer
  %i.aaw = shufflevector <4 x float> %i.aaf, <4 x float> poison, <2 x i32> zeroinitializer
  %i.aax = shufflevector <4 x float> %i.zy, <4 x float> poison, <2 x i32> zeroinitializer
  %i.aay = shufflevector <4 x float> %i.zx, <4 x float> poison, <2 x i32> zeroinitializer
  %i.aaz = shufflevector <4 x float> %i.zz, <4 x float> poison, <2 x i32> zeroinitializer
  %i.aba = shufflevector <4 x float> %i.aaj, <4 x float> poison, <2 x i32> zeroinitializer
  %i.abb = shufflevector <4 x float> %i.aah, <4 x float> poison, <2 x i32> zeroinitializer
  %i.abc = shufflevector <4 x float> %i.aal, <4 x float> poison, <2 x i32> zeroinitializer
  %i.abd = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.zd
  %i.abe = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.zh
  br label %bb.r

bb.r:                                             ; preds = %norm_tone_mapping_v4.exit.i, %.lr.ph.i229
  %.03761.i = phi i64 [ 0, %.lr.ph.i229 ], [ %i.aha, %norm_tone_mapping_v4.exit.i ] ; 3 uses
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %.1, i64 %.03761.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #20, !noalias !196
  call fastcc void @RGB_tone_mapping_v4(ptr noundef readonly %i.abf, ptr noundef %i.s, ptr noundef nonnull readonly %i.af, ptr noundef nonnull byval(%struct.dt_iop_filmic_rgb_spline_t) align 16 %6, float noundef %i.yr)
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 4
  %i.abh = load <2 x float>, ptr %i.abf, align 4, !tbaa !16, !alias.scope !191, !noalias !194 ; 3 uses
  %i.abi = load float, ptr %i.abg, align 4, !tbaa !16, !alias.scope !191, !noalias !194 ; 2 uses
  %i.abj = extractelement <2 x float> %i.abh, i64 0 ; 2 uses
  %i.abk = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abj, float %i.abi)
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !16, !alias.scope !191, !noalias !194 ; 3 uses
  %i.abn = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abk, float %i.abm) ; 3 uses
  %i.abo = fcmp reassoc nsz arcp contract afn ult float %i.abn, %i.zl
  br i1 %i.abo, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.abp = fcmp reassoc nsz arcp contract afn ugt float %i.abn, %i.zo
  br i1 %i.abp, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.abq = phi reassoc nsz arcp contract afn float [ %i.zo, %bb.s ], [ %i.abn, %bb.t ], [ %i.zl, %bb.r ] ; 4 uses
  %i.abr = fmul reassoc nsz arcp contract afn float %i.abq, %i.abd
  %i.abs = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.abr)
  %i.abt = fsub reassoc nsz arcp contract afn float %i.abs, %i.zf
  %i.abu = fmul reassoc nsz arcp contract afn float %i.abt, %i.abe
  %i.abv = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abu, float 0.000000e+00)
  %i.abw = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.abv, float 1.000000e+00) ; 19 uses
  %i.abx = fcmp reassoc nsz arcp contract afn olt float %i.abw, %.sroa.2758.0.copyload.i
  br i1 %i.abx, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  switch i32 %.sroa.2959.0.copyload.i, label %bb.y [
    i32 0, label %bb.w
    i32 1, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.aby = fmul reassoc nsz arcp contract afn float %i.abw, %.sroa.2557.0.copyload.i
  %i.abz = fadd reassoc nsz arcp contract afn float %i.aby, %.sroa.2154.0.copyload.i
  %i.aca = fmul reassoc nsz arcp contract afn float %i.abz, %i.abw
  %i.acb = fadd reassoc nsz arcp contract afn float %i.aca, %.sroa.1549.0.copyload.i
  %i.acc = fmul reassoc nsz arcp contract afn float %i.acb, %i.abw
  %i.acd = fadd reassoc nsz arcp contract afn float %i.acc, %.sroa.1046.0.copyload.i
  %i.ace = fmul reassoc nsz arcp contract afn float %i.acd, %i.abw
  %i.acf = fadd reassoc nsz arcp contract afn float %i.ace, %.sroa.0.0.copyload.i
  br label %filmic_spline.exit.i

bb.x:                                             ; preds = %bb.v
  %i.acg = fmul reassoc nsz arcp contract afn float %i.abw, %.sroa.2154.0.copyload.i
  %i.ach = fadd reassoc nsz arcp contract afn float %i.acg, %.sroa.1549.0.copyload.i
  %i.aci = fmul reassoc nsz arcp contract afn float %i.ach, %i.abw
  %i.acj = fadd reassoc nsz arcp contract afn float %i.aci, %.sroa.1046.0.copyload.i
  %i.ack = fmul reassoc nsz arcp contract afn float %i.acj, %i.abw
  %i.acl = fadd reassoc nsz arcp contract afn float %i.ack, %.sroa.0.0.copyload.i
  br label %filmic_spline.exit.i

bb.y:                                             ; preds = %bb.v
  %i.acm = fsub reassoc nsz arcp contract afn float %.sroa.2758.0.copyload.i, %i.abw ; 2 uses
  %i.acn = fmul reassoc nsz arcp contract afn float %i.acm, %.sroa.1046.0.copyload.i
  %i.aco = fadd reassoc nsz arcp contract afn float %i.acn, 1.000000e+00
  %i.acp = fmul reassoc nsz arcp contract afn float %i.aco, %i.acm ; 2 uses
  %i.acq = fmul reassoc nsz arcp contract afn float %i.acp, %.sroa.0.0.copyload.i
  %i.acr = fadd reassoc nsz arcp contract afn float %i.acp, %.sroa.1549.0.copyload.i
  %i.acs = fdiv reassoc nsz arcp contract afn float %i.acq, %i.acr
  %i.act = fsub reassoc nsz arcp contract afn float %.sroa.2154.0.copyload.i, %i.acs
  br label %filmic_spline.exit.i

bb.z:                                             ; preds = %bb.u
  %i.acu = fcmp reassoc nsz arcp contract afn ogt float %i.abw, %.sroa.28.0.copyload.i
  br i1 %i.acu, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  switch i32 %.sroa.30.0.copyload.i, label %bb.ad [
    i32 0, label %bb.ab
    i32 1, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.acv = fmul reassoc nsz arcp contract afn float %i.abw, %.sroa.26.0.copyload.i
  %i.acw = fadd reassoc nsz arcp contract afn float %i.acv, %.sroa.24.0.copyload.i
  %i.acx = fmul reassoc nsz arcp contract afn float %i.acw, %i.abw
  %i.acy = fadd reassoc nsz arcp contract afn float %i.acx, %.sroa.18.0.copyload.i
  %i.acz = fmul reassoc nsz arcp contract afn float %i.acy, %i.abw
  %i.ada = fadd reassoc nsz arcp contract afn float %i.acz, %.sroa.11.0.copyload.i
  %i.adb = fmul reassoc nsz arcp contract afn float %i.ada, %i.abw
  %i.adc = fadd reassoc nsz arcp contract afn float %i.adb, %.sroa.6.0.copyload.i
  br label %filmic_spline.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.add = fmul reassoc nsz arcp contract afn float %i.abw, %.sroa.24.0.copyload.i
  %i.ade = fadd reassoc nsz arcp contract afn float %i.add, %.sroa.18.0.copyload.i
  %i.adf = fmul reassoc nsz arcp contract afn float %i.ade, %i.abw
  %i.adg = fadd reassoc nsz arcp contract afn float %i.adf, %.sroa.11.0.copyload.i
  %i.adh = fmul reassoc nsz arcp contract afn float %i.adg, %i.abw
  %i.adi = fadd reassoc nsz arcp contract afn float %i.adh, %.sroa.6.0.copyload.i
  br label %filmic_spline.exit.i

bb.ad:                                            ; preds = %bb.aa
  %i.adj = fsub reassoc nsz arcp contract afn float %i.abw, %.sroa.28.0.copyload.i ; 2 uses
  %i.adk = fmul reassoc nsz arcp contract afn float %i.adj, %.sroa.11.0.copyload.i
  %i.adl = fadd reassoc nsz arcp contract afn float %i.adk, 1.000000e+00
  %i.adm = fmul reassoc nsz arcp contract afn float %i.adl, %i.adj ; 2 uses
  %i.adn = fmul reassoc nsz arcp contract afn float %i.adm, %.sroa.6.0.copyload.i
  %i.ado = fadd reassoc nsz arcp contract afn float %i.adm, %.sroa.18.0.copyload.i
  %i.adp = fdiv reassoc nsz arcp contract afn float %i.adn, %i.ado
  %i.adq = fadd reassoc nsz arcp contract afn float %i.adp, %.sroa.24.0.copyload.i
  br label %filmic_spline.exit.i

bb.ae:                                            ; preds = %bb.z
  %i.adr = fmul reassoc nsz arcp contract afn float %i.abw, %.sroa.14.0.copyload.i
  %i.ads = fadd reassoc nsz arcp contract afn float %i.adr, %.sroa.9.0.copyload.i
  br label %filmic_spline.exit.i

filmic_spline.exit.i:                             ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.y, %bb.x, %bb.w
  %.0.i.i = phi nsz float [ %i.acf, %bb.w ], [ %i.acl, %bb.x ], [ %i.act, %bb.y ], [ %i.adc, %bb.ab ], [ %i.adi, %bb.ac ], [ %i.adq, %bb.ad ], [ %i.ads, %bb.ae ] ; 3 uses
  %i.adt = fcmp reassoc nsz arcp contract afn ogt float %.0.i.i, %i.yr
  br i1 %i.adt, label %norm_tone_mapping_v4.exit.i, label %bb.af

bb.af:                                            ; preds = %filmic_spline.exit.i
  %i.adu = fcmp reassoc nsz arcp contract afn olt float %.0.i.i, %i.yt
  br i1 %i.adu, label %norm_tone_mapping_v4.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br label %norm_tone_mapping_v4.exit.i

norm_tone_mapping_v4.exit.i:                      ; preds = %bb.ag, %bb.af, %filmic_spline.exit.i
  %i.adv = phi reassoc nsz arcp contract afn float [ %.0.i.i, %bb.ag ], [ %i.yr, %filmic_spline.exit.i ], [ %i.yt, %bb.af ]
  %i.adw = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.adv, float %i.yq) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #20, !noalias !196
  %i.adx = load float, ptr %i.s, align 16, !tbaa !16, !noalias !196
  %i.ady = fmul reassoc nsz arcp contract afn float %i.adx, %i.zt
  %i.adz = fmul reassoc nsz arcp contract afn float %i.abj, %i.zu
  %i.aea = fmul reassoc nsz arcp contract afn float %i.adz, %i.adw
  %i.aeb = fdiv reassoc nsz arcp contract afn float %i.aea, %i.abq
  %i.aec = fadd reassoc nsz arcp contract afn float %i.aeb, %i.ady
  %i.aed = load float, ptr %i.aas, align 4, !tbaa !16, !noalias !196
  %i.aee = fmul reassoc nsz arcp contract afn float %i.aed, %i.zt
  %i.aef = fmul reassoc nsz arcp contract afn float %i.abi, %i.zu
  %i.aeg = fmul reassoc nsz arcp contract afn float %i.aef, %i.adw
  %i.aeh = fdiv reassoc nsz arcp contract afn float %i.aeg, %i.abq
  %i.aei = fadd reassoc nsz arcp contract afn float %i.aeh, %i.aee
  %i.aej = load float, ptr %i.aat, align 8, !tbaa !16, !noalias !196
  %i.aek = fmul reassoc nsz arcp contract afn float %i.aej, %i.zt
  %i.ael = fmul reassoc nsz arcp contract afn float %i.abm, %i.zu
  %i.aem = fmul reassoc nsz arcp contract afn float %i.ael, %i.adw
  %i.aen = fdiv reassoc nsz arcp contract afn float %i.aem, %i.abq
  %i.aeo = fadd reassoc nsz arcp contract afn float %i.aek, %i.aen
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #20, !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #20, !noalias !196
  %i.aep = insertelement <2 x float> %i.abh, float %i.aec, i64 1 ; 3 uses
  %i.aeq = fmul reassoc nsz arcp contract afn <2 x float> %i.aep, %i.aay
  %i.aer = shufflevector <2 x float> %i.abh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aes = insertelement <2 x float> %i.aer, float %i.aei, i64 1 ; 3 uses
  %i.aet = fmul reassoc nsz arcp contract afn <2 x float> %i.aes, %i.aax
  %i.aeu = fadd reassoc nsz arcp contract afn <2 x float> %i.aet, %i.aeq
  %i.aev = insertelement <2 x float> poison, float %i.abm, i64 0
  %i.aew = insertelement <2 x float> %i.aev, float %i.aeo, i64 1 ; 3 uses
  %i.aex = fmul reassoc nsz arcp contract afn <2 x float> %i.aew, %i.aaz
  %i.aey = fadd reassoc nsz arcp contract afn <2 x float> %i.aeu, %i.aex ; 3 uses
  %i.aez = fmul reassoc nsz arcp contract afn <2 x float> %i.aep, %i.aav
  %i.afa = fmul reassoc nsz arcp contract afn <2 x float> %i.aes, %i.aau
  %i.afb = fadd reassoc nsz arcp contract afn <2 x float> %i.afa, %i.aez
  %i.afc = fmul reassoc nsz arcp contract afn <2 x float> %i.aew, %i.aaw
  %i.afd = fadd reassoc nsz arcp contract afn <2 x float> %i.afb, %i.afc ; 3 uses
  %i.afe = fmul reassoc nsz arcp contract afn <2 x float> %i.aep, %i.abb
  %i.aff = fmul reassoc nsz arcp contract afn <2 x float> %i.aes, %i.aba
  %i.afg = fadd reassoc nsz arcp contract afn <2 x float> %i.aff, %i.afe
  %i.afh = fmul reassoc nsz arcp contract afn <2 x float> %i.aew, %i.abc
  %i.afi = fadd reassoc nsz arcp contract afn <2 x float> %i.afg, %i.afh ; 2 uses
  %i.afj = fadd reassoc nsz arcp contract afn <2 x float> %i.afd, %i.aey
  %i.afk = fadd reassoc nsz arcp contract afn <2 x float> %i.afj, %i.afi ; 4 uses
  %i.afl = fcmp reassoc nsz arcp contract afn oeq <2 x float> %i.afk, zeroinitializer ; 3 uses
  %i.afm = fdiv reassoc nsz arcp contract afn <2 x float> %i.aey, %i.afk
  %i.afn = fdiv reassoc nsz arcp contract afn <2 x float> %i.afd, %i.afk
  %i.afo = fdiv reassoc nsz arcp contract afn <2 x float> %i.afi, %i.afk
  %i.afp = select <2 x i1> %i.afl, <2 x float> zeroinitializer, <2 x float> %i.afm
  %i.afq = shufflevector <2 x float> %i.afp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.afr = select <2 x i1> %i.afl, <2 x float> zeroinitializer, <2 x float> %i.afn
  %i.afs = shufflevector <2 x float> %i.afr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aft = select <2 x i1> %i.afl, <2 x float> zeroinitializer, <2 x float> %i.afo
  %i.afu = shufflevector <2 x float> %i.aft, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.afv = fmul reassoc nsz arcp contract afn <4 x float> %i.afq, <float f0xBDB3A62D, float f0xBDB3A62D, float f0x3F8B3A63, float f0x3F8B3A63>
  %i.afw = fmul reassoc nsz arcp contract afn <4 x float> %i.afs, <float f0x3FD55555, float f0x3FD55555, float f0xBF2AAAAB, float f0xBF2AAAAB>
  %7 = fadd reassoc nsz arcp contract afn <4 x float> %i.afw, %i.afv
  %8 = fmul reassoc nsz arcp contract afn <4 x float> %i.afu, <float f0xBD53224F, float f0xBD53224F, float f0x3CA8E841, float f0x3CA8E841>
  %i.afx = fadd reassoc nsz arcp contract afn <4 x float> %8, %7
  %i.afy = fadd reassoc nsz arcp contract afn <4 x float> %i.afx, <float -5.437140e-01, float -5.437140e-01, float f0xBE604727, float f0xBE604727> ; 5 uses
  %i.afz = extractelement <4 x float> %i.afy, i64 0
  %i.aga = extractelement <4 x float> %i.afy, i64 2
  %i.agb = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.afz, float noundef %i.aga) #37 ; 4 uses
  store float %i.agb, ptr %i.aam, align 4, !tbaa !16, !noalias !196
  %i.agc = fmul reassoc nsz arcp contract afn <2 x float> %i.aey, splat (float f0x3F309D77)
  %i.agd = fmul reassoc nsz arcp contract afn <2 x float> %i.afd, splat (float f0x3EB2573F)
  %i.age = fadd reassoc nsz arcp contract afn <2 x float> %i.agd, %i.agc ; 2 uses
  %i.agf = extractelement <2 x float> %i.age, i64 0
  store float %i.agf, ptr %i.u, align 16, !tbaa !16, !noalias !196
  %i.agg = extractelement <4 x float> %i.afy, i64 1
  %i.agh = extractelement <4 x float> %i.afy, i64 3
  %i.agi = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.agg, float noundef %i.agh) #37 ; 3 uses
  %i.agj = fcmp reassoc nsz arcp contract afn une float %i.agi, 0.000000e+00
  %i.agk = fcmp reassoc nsz arcp contract afn une float %i.agb, 0.000000e+00
  %i.agl = insertelement <4 x float> poison, float %i.agb, i64 0
  %i.agm = insertelement <4 x float> %i.agl, float %i.agi, i64 1
  %i.agn = shufflevector <4 x float> %i.agm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ago = fdiv reassoc nsz arcp contract afn <4 x float> %i.afy, %i.agn
  %i.agp = insertelement <4 x i1> poison, i1 %i.agk, i64 0
  %i.agq = insertelement <4 x i1> %i.agp, i1 %i.agj, i64 1
  %i.agr = shufflevector <4 x i1> %i.agq, <4 x i1> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ags = select <4 x i1> %i.agr, <4 x float> %i.ago, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 4 uses
  %i.agt = extractelement <4 x float> %i.ags, i64 2
  store float %i.agt, ptr %i.aan, align 8, !tbaa !16, !noalias !196
  %i.agu = extractelement <4 x float> %i.ags, i64 0
  store float %i.agu, ptr %i.aao, align 4, !tbaa !16, !noalias !196
  %i.agv = extractelement <2 x float> %i.age, i64 1
  store float %i.agv, ptr %i.v, align 16, !tbaa !16, !noalias !196
  %i.agw = extractelement <4 x float> %i.ags, i64 3
  store float %i.agw, ptr %i.aaq, align 8, !tbaa !16, !noalias !196
  %i.agx = extractelement <4 x float> %i.ags, i64 1
  store float %i.agx, ptr %i.aar, align 4, !tbaa !16, !noalias !196
  %i.agy = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.agb, float %i.agi)
  store float %i.agy, ptr %i.aap, align 4, !tbaa !16, !noalias !196
  call fastcc void @gamut_mapping(ptr noundef %i.v, ptr noundef %i.u, ptr noundef %i.t, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.r, float noundef %i.yt, float noundef %i.yr, float noundef 0.000000e+00, i32 noundef %i.zb), !noalias !196
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03761.i
  %.val.i = load <4 x float>, ptr %i.t, align 16, !tbaa !154, !noalias !196
  store <4 x float> %.val.i, ptr %i.agz, align 16, !tbaa !154, !alias.scope !201, !noalias !191, !nontemporal !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #20, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #20, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #20, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #20, !noalias !196
  %i.aha = add nuw i64 %.03761.i, 4               ; 2 uses
  %i.ahb = icmp ult i64 %i.aha, %i.zq
  br i1 %i.ahb, label %bb.r, label %filmic_v5.exit

filmic_v5.exit:                                   ; preds = %norm_tone_mapping_v4.exit.i, %bb.q
  call void @llvm.x86.sse.sfence(), !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #20, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #20, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #20, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #20, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #20, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.sink.split

bb.ah:                                            ; preds = %.thread
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.af, i64 68
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !204 ; 5 uses
  %i.ahe = icmp eq i32 %i.ahd, 0
  br i1 %i.ahe, label %bb.ai, label %bb.bu

bb.ai:                                            ; preds = %bb.ah
  switch i32 %i.yv, label %.sink.split [
    i32 0, label %bb.aj
    i32 1, label %bb.ak
    i32 2, label %bb.ak
    i32 3, label %bb.bt
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ahf = load i32, ptr %i.al, align 4, !tbaa !97
  %i.ahg = sext i32 %i.ahf to i64
  %i.ahh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ahi = load i32, ptr %i.ahh, align 4, !tbaa !98
  %i.ahj = sext i32 %i.ahi to i64
  call fastcc void @filmic_split_v1(ptr noundef %.1, ptr noundef %3, ptr noundef %i.ai, ptr noundef nonnull %i.af, ptr noundef nonnull byval(%struct.dt_iop_filmic_rgb_spline_t) align 16 %i.yl, i64 noundef %i.ahg, i64 noundef %i.ahj)
  br label %.sink.split

bb.ak:                                            ; preds = %bb.ai, %bb.ai
  %i.ahk = load i32, ptr %i.al, align 4, !tbaa !97
  %i.ahl = sext i32 %i.ahk to i64
  %i.ahm = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !98
  %i.aho = sext i32 %i.ahn to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %.sroa.0.0.copyload = load float, ptr %i.yl, align 16 ; 9 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 132
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4 ; 9 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  %.sroa.6289.0.copyload = load float, ptr %.sroa.6289.0..sroa_idx, align 16 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 148
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 9 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8 ; 3 uses
  %.sroa.9290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  %.sroa.9290.0.copyload = load float, ptr %.sroa.9290.0..sroa_idx, align 16 ; 9 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 164
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4 ; 9 uses
  %.sroa.11291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 176
  %.sroa.11291.0.copyload = load float, ptr %.sroa.11291.0..sroa_idx, align 16 ; 9 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 180
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4 ; 9 uses
  %.sroa.13292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %.sroa.13292.0.copyload = load float, ptr %.sroa.13292.0..sroa_idx, align 16 ; 3 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 196
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4 ; 3 uses
  %.sroa.15293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 208
  %.sroa.15293.0.copyload = load float, ptr %.sroa.15293.0..sroa_idx, align 16 ; 6 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 212
  %.sroa.16.0.copyload = load float, ptr %.sroa.16.0..sroa_idx, align 4 ; 6 uses
  %.sroa.17294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 256
  %.sroa.17294.0.copyload = load i32, ptr %.sroa.17294.0..sroa_idx, align 16 ; 3 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 260
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 4 ; 3 uses
  %i.ahp = shl nsw i64 %i.ahl, 2
  %i.ahq = mul i64 %i.ahp, %i.aho                 ; 2 uses
  %.not44.i = icmp eq i64 %i.ahq, 0
  br i1 %.not44.i, label %filmic_split_v2_v3.exit, label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %bb.ak
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ahs = load float, ptr %i.ahr, align 8, !tbaa !197, !noalias !210
  %i.aht = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !198, !noalias !210
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ahw = load float, ptr %i.ahv, align 8, !tbaa !199, !noalias !210
  %.not.i232 = icmp eq ptr %i.ai, null
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ai, i64 576
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ai, i64 712
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ai, i64 768
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ai, i64 704
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ai, i64 852
  %i.aic = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.aid = load <2 x float>, ptr %i.aic, align 8, !tbaa !16, !noalias !210
  %i.aie = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.aif = load float, ptr %i.aie, align 4, !tbaa !200, !noalias !210 ; 3 uses
  %i.aig = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aif)
  %i.aih = fdiv reassoc nsz arcp contract afn float -5.000000e-01, %i.aig
  %i.aii = insertelement <4 x float> poison, float %i.yq, i64 0
  %i.aij = shufflevector <4 x float> %i.aii, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aik = insertelement <2 x float> poison, float %i.aih, i64 0
  %i.ail = shufflevector <2 x float> %i.aik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aim = insertelement <4 x float> poison, float %i.ahs, i64 0
  %i.ain = shufflevector <4 x float> %i.aim, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aio = insertelement <4 x float> poison, float %i.ahu, i64 0
  %i.aip = shufflevector <4 x float> %i.aio, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aiq = insertelement <4 x float> poison, float %i.ahw, i64 0
  %i.air = shufflevector <4 x float> %i.aiq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ais = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ain
  %i.ait = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.air
  %i.aiu = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aid
  br label %bb.al

bb.al:                                            ; preds = %filmic_spline.exit.2.i, %.lr.ph.i231
  %.03743.i = phi i64 [ 0, %.lr.ph.i231 ], [ %i.arn, %filmic_spline.exit.2.i ] ; 3 uses
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %.1, i64 %.03743.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20, !noalias !210
  %i.aiw = load <4 x float>, ptr %i.aiv, align 4, !tbaa !16, !alias.scope !205, !noalias !208 ; 2 uses
  %i.aix = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.aiw, splat (float f0x37800000)
  %i.aiy = select <4 x i1> %i.aix, <4 x float> %i.aiw, <4 x float> splat (float f0x37800000)
  %i.aiz = fmul reassoc nsz arcp contract afn <4 x float> %i.aiy, %i.ais
  %i.aja = call reassoc nsz arcp contract afn <4 x float> @llvm.log2.v4f32(<4 x float> %i.aiz)
  %i.ajb = fsub reassoc nsz arcp contract afn <4 x float> %i.aja, %i.aip
  %i.ajc = fmul reassoc nsz arcp contract afn <4 x float> %i.ajb, %i.ait
  %i.ajd = call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ajc, <4 x float> zeroinitializer)
  %i.aje = call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ajd, <4 x float> splat (float 1.000000e+00)) ; 4 uses
  store <4 x float> %i.aje, ptr %i.l, align 16, !tbaa !154, !noalias !210
  %i.ajf = extractelement <4 x float> %i.aje, i64 0 ; 2 uses
  %i.ajg = extractelement <4 x float> %i.aje, i64 1 ; 2 uses
  %i.ajh = extractelement <4 x float> %i.aje, i64 2 ; 2 uses
  br i1 %.not.i232, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.aji = load i32, ptr %i.aia, align 64, !tbaa !211, !noalias !210
  %i.ajj = load i32, ptr %i.aib, align 4, !tbaa !213, !noalias !210
  %i.ajk = call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef nonnull %i.l, ptr noundef readonly %i.ahx, ptr noundef readonly %i.ahy, ptr noundef readonly %i.ahz, i32 noundef %i.aji, i32 noundef %i.ajj), !noalias !210
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ajl = fmul reassoc nsz arcp contract afn float %i.ajf, f0x3E63D838
  %i.ajm = fmul reassoc nsz arcp contract afn float %i.ajg, f0x3F37855B
  %i.ajn = fadd reassoc nsz arcp contract afn float %i.ajm, %i.ajl
  %i.ajo = fmul reassoc nsz arcp contract afn float %i.ajh, 6.061690e-02
  %i.ajp = fadd reassoc nsz arcp contract afn float %i.ajn, %i.ajo
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ajq = phi reassoc nsz arcp contract afn float [ %i.ajk, %bb.am ], [ %i.ajp, %bb.an ] ; 8 uses
  %i.ajr = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ajq
  %i.ajs = insertelement <2 x float> poison, float %i.ajq, i64 0
  %i.ajt = insertelement <2 x float> %i.ajs, float %i.ajr, i64 1 ; 2 uses
  %i.aju = fmul reassoc nsz arcp contract afn <2 x float> %i.ajt, %i.ajt
  %i.ajv = fmul reassoc nsz arcp contract afn <2 x float> %i.aju, %i.ail
  %i.ajw = fmul reassoc nsz arcp contract afn <2 x float> %i.ajv, %i.aiu
  %i.ajx = call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.ajw)
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.bet = load <4 x float>, ptr %i.bes, align 4
  %i.beu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bev = load <4 x float>, ptr %i.beu, align 8
  %i.bew = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bex = load <4 x float>, ptr %i.bew, align 8
  %i.bey = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bez = load <4 x float>, ptr %i.bey, align 8
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bff = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.bfh = load float, ptr %i.bfg, align 4, !tbaa !200, !noalias !240
  %i.bfi = shufflevector <4 x float> %i.ber, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bfj = shufflevector <4 x float> %i.bep, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bfk = shufflevector <4 x float> %i.bet, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bfl = shufflevector <4 x float> %i.bem, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bfm = shufflevector <4 x float> %i.bel, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bfn = shufflevector <4 x float> %i.ben, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bfo = shufflevector <4 x float> %i.bex, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bfp = shufflevector <4 x float> %i.bev, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bfq = shufflevector <4 x float> %i.bez, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bfr = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bdv
  %i.bfs = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bdz
  br label %bb.dl

bb.dl:                                            ; preds = %norm_tone_mapping_v4.exit.i281, %.lr.ph.i259
  %.049.i = phi i64 [ 0, %.lr.ph.i259 ], [ %i.bla, %norm_tone_mapping_v4.exit.i281 ] ; 3 uses
  %i.bft = getelementptr inbounds nuw [4 x i8], ptr %.1, i64 %.049.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20, !noalias !240
  %i.bfu = call reassoc nsz arcp contract afn fastcc float @get_pixel_norm(ptr noundef readonly %i.bft, i32 noundef range(i32 1, 0) %i.ahd, ptr noundef readonly %i.ai), !noalias !238 ; 3 uses
  %i.bfv = fcmp reassoc nsz arcp contract afn ult float %i.bfu, %i.bed
  br i1 %i.bfv, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.bfw = fcmp reassoc nsz arcp contract afn ugt float %i.bfu, %i.beg
  br i1 %i.bfw, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %bb.dl
  %i.bfx = phi reassoc nsz arcp contract afn float [ %i.beg, %bb.dm ], [ %i.bfu, %bb.dn ], [ %i.bed, %bb.dl ] ; 4 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bft, i64 4
  %i.bfz = load <2 x float>, ptr %i.bft, align 4, !tbaa !16, !alias.scope !235, !noalias !238 ; 3 uses
  %i.bga = load float, ptr %i.bfy, align 4, !tbaa !16, !alias.scope !235, !noalias !238
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bft, i64 8
  %i.bgc = load float, ptr %i.bgb, align 4, !tbaa !16, !alias.scope !235, !noalias !238 ; 2 uses
  %i.bgd = fmul reassoc nsz arcp contract afn float %i.bfx, %i.bfr
  %i.bge = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.bgd)
  %i.bgf = fsub reassoc nsz arcp contract afn float %i.bge, %i.bdx
  %i.bgg = fmul reassoc nsz arcp contract afn float %i.bgf, %i.bfs
  %i.bgh = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bgg, float 0.000000e+00)
  %i.bgi = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bgh, float 1.000000e+00) ; 19 uses
  %i.bgj = fcmp reassoc nsz arcp contract afn olt float %i.bgi, %.sroa.15373.0.copyload
  br i1 %i.bgj, label %bb.dp, label %bb.dt

bb.dp:                                            ; preds = %bb.do
  switch i32 %.sroa.17376.0.copyload, label %bb.ds [
    i32 0, label %bb.dq
    i32 1, label %bb.dr
  ]

bb.dq:                                            ; preds = %bb.dp
  %i.bgk = fmul reassoc nsz arcp contract afn float %i.bgi, %.sroa.13370.0.copyload
  %i.bgl = fadd reassoc nsz arcp contract afn float %i.bgk, %.sroa.11367.0.copyload
  %i.bgm = fmul reassoc nsz arcp contract afn float %i.bgl, %i.bgi
  %i.bgn = fadd reassoc nsz arcp contract afn float %i.bgm, %.sroa.9364.0.copyload
  %i.bgo = fmul reassoc nsz arcp contract afn float %i.bgn, %i.bgi
  %i.bgp = fadd reassoc nsz arcp contract afn float %i.bgo, %.sroa.6360.0.copyload
  %i.bgq = fmul reassoc nsz arcp contract afn float %i.bgp, %i.bgi
  %i.bgr = fadd reassoc nsz arcp contract afn float %i.bgq, %.sroa.0356.0.copyload
  br label %filmic_spline.exit.i279

bb.dr:                                            ; preds = %bb.dp
  %i.bgs = fmul reassoc nsz arcp contract afn float %i.bgi, %.sroa.11367.0.copyload
  %i.bgt = fadd reassoc nsz arcp contract afn float %i.bgs, %.sroa.9364.0.copyload
  %i.bgu = fmul reassoc nsz arcp contract afn float %i.bgt, %i.bgi
  %i.bgv = fadd reassoc nsz arcp contract afn float %i.bgu, %.sroa.6360.0.copyload
  %i.bgw = fmul reassoc nsz arcp contract afn float %i.bgv, %i.bgi
  %i.bgx = fadd reassoc nsz arcp contract afn float %i.bgw, %.sroa.0356.0.copyload
  br label %filmic_spline.exit.i279

bb.ds:                                            ; preds = %bb.dp
  %i.bgy = fsub reassoc nsz arcp contract afn float %.sroa.15373.0.copyload, %i.bgi ; 2 uses
  %i.bgz = fmul reassoc nsz arcp contract afn float %i.bgy, %.sroa.6360.0.copyload
  %i.bha = fadd reassoc nsz arcp contract afn float %i.bgz, 1.000000e+00
  %i.bhb = fmul reassoc nsz arcp contract afn float %i.bha, %i.bgy ; 2 uses
  %i.bhc = fmul reassoc nsz arcp contract afn float %i.bhb, %.sroa.0356.0.copyload
  %i.bhd = fadd reassoc nsz arcp contract afn float %i.bhb, %.sroa.9364.0.copyload
  %i.bhe = fdiv reassoc nsz arcp contract afn float %i.bhc, %i.bhd
  %i.bhf = fsub reassoc nsz arcp contract afn float %.sroa.11367.0.copyload, %i.bhe
  br label %filmic_spline.exit.i279

bb.dt:                                            ; preds = %bb.do
  %i.bhg = fcmp reassoc nsz arcp contract afn ogt float %i.bgi, %.sroa.16374.0.copyload
  br i1 %i.bhg, label %bb.du, label %bb.dy

bb.du:                                            ; preds = %bb.dt
  switch i32 %.sroa.18377.0.copyload, label %bb.dx [
    i32 0, label %bb.dv
    i32 1, label %bb.dw
  ]

bb.dv:                                            ; preds = %bb.du
  %i.bhh = fmul reassoc nsz arcp contract afn float %i.bgi, %.sroa.14371.0.copyload
  %i.bhi = fadd reassoc nsz arcp contract afn float %i.bhh, %.sroa.12368.0.copyload
  %i.bhj = fmul reassoc nsz arcp contract afn float %i.bhi, %i.bgi
  %i.bhk = fadd reassoc nsz arcp contract afn float %i.bhj, %.sroa.10365.0.copyload
  %i.bhl = fmul reassoc nsz arcp contract afn float %i.bhk, %i.bgi
  %i.bhm = fadd reassoc nsz arcp contract afn float %i.bhl, %.sroa.7361.0.copyload
  %i.bhn = fmul reassoc nsz arcp contract afn float %i.bhm, %i.bgi
  %i.bho = fadd reassoc nsz arcp contract afn float %i.bhn, %.sroa.4357.0.copyload
  br label %filmic_spline.exit.i279

bb.dw:                                            ; preds = %bb.du
  %i.bhp = fmul reassoc nsz arcp contract afn float %i.bgi, %.sroa.12368.0.copyload
  %i.bhq = fadd reassoc nsz arcp contract afn float %i.bhp, %.sroa.10365.0.copyload
  %i.bhr = fmul reassoc nsz arcp contract afn float %i.bhq, %i.bgi
  %i.bhs = fadd reassoc nsz arcp contract afn float %i.bhr, %.sroa.7361.0.copyload
  %i.bht = fmul reassoc nsz arcp contract afn float %i.bhs, %i.bgi
  %i.bhu = fadd reassoc nsz arcp contract afn float %i.bht, %.sroa.4357.0.copyload
  br label %filmic_spline.exit.i279

bb.dx:                                            ; preds = %bb.du
  %i.bhv = fsub reassoc nsz arcp contract afn float %i.bgi, %.sroa.16374.0.copyload ; 2 uses
  %i.bhw = fmul reassoc nsz arcp contract afn float %i.bhv, %.sroa.7361.0.copyload
  %i.bhx = fadd reassoc nsz arcp contract afn float %i.bhw, 1.000000e+00
  %i.bhy = fmul reassoc nsz arcp contract afn float %i.bhx, %i.bhv ; 2 uses
  %i.bhz = fmul reassoc nsz arcp contract afn float %i.bhy, %.sroa.4357.0.copyload
  %i.bia = fadd reassoc nsz arcp contract afn float %i.bhy, %.sroa.10365.0.copyload
  %i.bib = fdiv reassoc nsz arcp contract afn float %i.bhz, %i.bia
  %i.bic = fadd reassoc nsz arcp contract afn float %i.bib, %.sroa.12368.0.copyload
  br label %filmic_spline.exit.i279

bb.dy:                                            ; preds = %bb.dt
  %i.bid = fmul reassoc nsz arcp contract afn float %i.bgi, %.sroa.8362.0.copyload
  %i.bie = fadd reassoc nsz arcp contract afn float %i.bid, %.sroa.5358.0.copyload
  br label %filmic_spline.exit.i279

filmic_spline.exit.i279:                          ; preds = %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.ds, %bb.dr, %bb.dq
  %.0.i.i280 = phi nsz float [ %i.bgr, %bb.dq ], [ %i.bgx, %bb.dr ], [ %i.bhf, %bb.ds ], [ %i.bho, %bb.dv ], [ %i.bhu, %bb.dw ], [ %i.bic, %bb.dx ], [ %i.bie, %bb.dy ] ; 3 uses
  %i.bif = fcmp reassoc nsz arcp contract afn ogt float %.0.i.i280, %i.yr
  br i1 %i.bif, label %norm_tone_mapping_v4.exit.i281, label %bb.dz

bb.dz:                                            ; preds = %filmic_spline.exit.i279
  %i.big = fcmp reassoc nsz arcp contract afn olt float %.0.i.i280, %i.yt
  br i1 %i.big, label %norm_tone_mapping_v4.exit.i281, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  br label %norm_tone_mapping_v4.exit.i281

norm_tone_mapping_v4.exit.i281:                   ; preds = %bb.ea, %bb.dz, %filmic_spline.exit.i279
  %i.bih = phi reassoc nsz arcp contract afn float [ %.0.i.i280, %bb.ea ], [ %i.yr, %filmic_spline.exit.i279 ], [ %i.yt, %bb.dz ]
  %i.bii = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bih, float %i.yq) ; 3 uses
  %i.bij = extractelement <2 x float> %i.bfz, i64 0
  %i.bik = fmul reassoc nsz arcp contract afn float %i.bii, %i.bij
  %i.bil = fdiv reassoc nsz arcp contract afn float %i.bik, %i.bfx
  %i.bim = fmul reassoc nsz arcp contract afn float %i.bii, %i.bga
  %i.bin = fdiv reassoc nsz arcp contract afn float %i.bim, %i.bfx
  %i.bio = fmul reassoc nsz arcp contract afn float %i.bii, %i.bgc
  %i.bip = fdiv reassoc nsz arcp contract afn float %i.bio, %i.bfx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20, !noalias !240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20, !noalias !240
  %i.biq = insertelement <2 x float> %i.bfz, float %i.bil, i64 1 ; 3 uses
  %i.bir = fmul reassoc nsz arcp contract afn <2 x float> %i.biq, %i.bfm
  %i.bis = shufflevector <2 x float> %i.bfz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bit = insertelement <2 x float> %i.bis, float %i.bin, i64 1 ; 3 uses
  %i.biu = fmul reassoc nsz arcp contract afn <2 x float> %i.bit, %i.bfl
  %i.biv = fadd reassoc nsz arcp contract afn <2 x float> %i.biu, %i.bir
  %i.biw = insertelement <2 x float> poison, float %i.bgc, i64 0
  %i.bix = insertelement <2 x float> %i.biw, float %i.bip, i64 1 ; 3 uses
  %i.biy = fmul reassoc nsz arcp contract afn <2 x float> %i.bix, %i.bfn
  %i.biz = fadd reassoc nsz arcp contract afn <2 x float> %i.biv, %i.biy ; 3 uses
  %i.bja = fmul reassoc nsz arcp contract afn <2 x float> %i.biq, %i.bfj
  %i.bjb = fmul reassoc nsz arcp contract afn <2 x float> %i.bit, %i.bfi
  %i.bjc = fadd reassoc nsz arcp contract afn <2 x float> %i.bjb, %i.bja
  %i.bjd = fmul reassoc nsz arcp contract afn <2 x float> %i.bix, %i.bfk
  %i.bje = fadd reassoc nsz arcp contract afn <2 x float> %i.bjc, %i.bjd ; 3 uses
  %i.bjf = fmul reassoc nsz arcp contract afn <2 x float> %i.biq, %i.bfp
  %i.bjg = fmul reassoc nsz arcp contract afn <2 x float> %i.bit, %i.bfo
  %i.bjh = fadd reassoc nsz arcp contract afn <2 x float> %i.bjg, %i.bjf
  %i.bji = fmul reassoc nsz arcp contract afn <2 x float> %i.bix, %i.bfq
  %i.bjj = fadd reassoc nsz arcp contract afn <2 x float> %i.bjh, %i.bji ; 2 uses
  %i.bjk = fadd reassoc nsz arcp contract afn <2 x float> %i.bje, %i.biz
  %i.bjl = fadd reassoc nsz arcp contract afn <2 x float> %i.bjk, %i.bjj ; 4 uses
  %i.bjm = fcmp reassoc nsz arcp contract afn oeq <2 x float> %i.bjl, zeroinitializer ; 3 uses
  %i.bjn = fdiv reassoc nsz arcp contract afn <2 x float> %i.biz, %i.bjl
  %i.bjo = fdiv reassoc nsz arcp contract afn <2 x float> %i.bje, %i.bjl
  %i.bjp = fdiv reassoc nsz arcp contract afn <2 x float> %i.bjj, %i.bjl
  %i.bjq = select <2 x i1> %i.bjm, <2 x float> zeroinitializer, <2 x float> %i.bjn
  %i.bjr = shufflevector <2 x float> %i.bjq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bjs = select <2 x i1> %i.bjm, <2 x float> zeroinitializer, <2 x float> %i.bjo
  %i.bjt = shufflevector <2 x float> %i.bjs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bju = select <2 x i1> %i.bjm, <2 x float> zeroinitializer, <2 x float> %i.bjp
  %i.bjv = shufflevector <2 x float> %i.bju, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bjw = fmul reassoc nsz arcp contract afn <4 x float> %i.bjr, <float f0xBDB3A62D, float f0xBDB3A62D, float f0x3F8B3A63, float f0x3F8B3A63>
  %i.bjx = fmul reassoc nsz arcp contract afn <4 x float> %i.bjt, <float f0x3FD55555, float f0x3FD55555, float f0xBF2AAAAB, float f0xBF2AAAAB>
  %9 = fadd reassoc nsz arcp contract afn <4 x float> %i.bjx, %i.bjw
  %10 = fmul reassoc nsz arcp contract afn <4 x float> %i.bjv, <float f0xBD53224F, float f0xBD53224F, float f0x3CA8E841, float f0x3CA8E841>
  %i.bjy = fadd reassoc nsz arcp contract afn <4 x float> %10, %9
  %i.bjz = fadd reassoc nsz arcp contract afn <4 x float> %i.bjy, <float -5.437140e-01, float -5.437140e-01, float f0xBE604727, float f0xBE604727> ; 5 uses
  %i.bka = extractelement <4 x float> %i.bjz, i64 0
  %i.bkb = extractelement <4 x float> %i.bjz, i64 2
  %i.bkc = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.bka, float noundef %i.bkb) #37 ; 3 uses
  store float %i.bkc, ptr %i.bfa, align 4, !tbaa !16, !noalias !240
  %i.bkd = fmul reassoc nsz arcp contract afn <2 x float> %i.biz, splat (float f0x3F309D77)
  %i.bke = fmul reassoc nsz arcp contract afn <2 x float> %i.bje, splat (float f0x3EB2573F)
  %i.bkf = fadd reassoc nsz arcp contract afn <2 x float> %i.bke, %i.bkd ; 2 uses
  %i.bkg = extractelement <2 x float> %i.bkf, i64 0
  store float %i.bkg, ptr %i.h, align 16, !tbaa !16, !noalias !240
  %i.bkh = extractelement <4 x float> %i.bjz, i64 1
  %i.bki = extractelement <4 x float> %i.bjz, i64 3
  %i.bkj = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.bkh, float noundef %i.bki) #37 ; 3 uses
  %i.bkk = fcmp reassoc nsz arcp contract afn une float %i.bkj, 0.000000e+00
  %i.bkl = fcmp reassoc nsz arcp contract afn une float %i.bkc, 0.000000e+00
  %i.bkm = insertelement <4 x float> poison, float %i.bkc, i64 0
  %i.bkn = insertelement <4 x float> %i.bkm, float %i.bkj, i64 1
  %i.bko = shufflevector <4 x float> %i.bkn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bkp = fdiv reassoc nsz arcp contract afn <4 x float> %i.bjz, %i.bko
  %i.bkq = insertelement <4 x i1> poison, i1 %i.bkl, i64 0
  %i.bkr = insertelement <4 x i1> %i.bkq, i1 %i.bkk, i64 1
  %i.bks = shufflevector <4 x i1> %i.bkr, <4 x i1> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bkt = select <4 x i1> %i.bks, <4 x float> %i.bkp, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 4 uses
  %i.bku = extractelement <4 x float> %i.bkt, i64 2
  store float %i.bku, ptr %i.bfb, align 8, !tbaa !16, !noalias !240
  %i.bkv = extractelement <4 x float> %i.bkt, i64 0
  store float %i.bkv, ptr %i.bfc, align 4, !tbaa !16, !noalias !240
  %i.bkw = extractelement <2 x float> %i.bkf, i64 1
  store float %i.bkw, ptr %i.i, align 16, !tbaa !16, !noalias !240
  store float %i.bkj, ptr %i.bfd, align 4, !tbaa !16, !noalias !240
  %i.bkx = extractelement <4 x float> %i.bkt, i64 3
  store float %i.bkx, ptr %i.bfe, align 8, !tbaa !16, !noalias !240
  %i.bky = extractelement <4 x float> %i.bkt, i64 1
  store float %i.bky, ptr %i.bff, align 4, !tbaa !16, !noalias !240
  call fastcc void @gamut_mapping(ptr noundef %i.i, ptr noundef %i.h, ptr noundef %i.g, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, float noundef %i.yt, float noundef %i.yr, float noundef %i.bfh, i32 noundef %i.bdt), !noalias !240
  %i.bkz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.049.i
  %.val.i285 = load <4 x float>, ptr %i.g, align 16, !tbaa !154, !noalias !240
  store <4 x float> %.val.i285, ptr %i.bkz, align 16, !tbaa !154, !alias.scope !241, !noalias !235, !nontemporal !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20, !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20, !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20, !noalias !240
  %i.bla = add nuw i64 %.049.i, 4                 ; 2 uses
  %i.blb = icmp ult i64 %i.bla, %i.bei
  br i1 %i.blb, label %bb.dl, label %filmic_chroma_v4.exit

filmic_chroma_v4.exit:                            ; preds = %norm_tone_mapping_v4.exit.i281, %bb.dk
  call void @llvm.x86.sse.sfence(), !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20, !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20, !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20, !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !240
  br label %.sink.split

.sink.split:                                      ; preds = %filmic_v5.exit, %filmic_chroma_v1.exit, %filmic_chroma_v4.exit, %filmic_chroma_v2_v3.exit, %bb.aj, %bb.bt, %filmic_split_v2_v3.exit, %bb.ai, %bb.bu, %display_mask.exit
  %.sink = phi ptr [ %i.at, %display_mask.exit ], [ %i.yk, %bb.bu ], [ %i.yk, %bb.ai ], [ %i.yk, %filmic_split_v2_v3.exit ], [ %i.yk, %bb.bt ], [ %i.yk, %bb.aj ], [ %i.yk, %filmic_chroma_v2_v3.exit ], [ %i.yk, %filmic_chroma_v4.exit ], [ %i.yk, %filmic_chroma_v1.exit ], [ %i.yk, %filmic_v5.exit ]
  call void @free(ptr noundef %.sink) #20
  br label %bb.eb

bb.eb:                                            ; preds = %.sink.split, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_get_pipe_output_profile_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @reconstruct_highlights(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef nonnull captures(none) %2, i32 noundef range(i32 0, 2) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, float %.16.val, ptr nofree noundef readonly captures(none) %6) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.b = load float, ptr %i.a, align 8, !tbaa !49 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !65
  %i.e = sitofp reassoc nsz arcp contract afn i32 %i.d to float
  %i.f = fmul reassoc nsz arcp contract afn float %i.b, %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !66
  %i.i = sitofp reassoc nsz arcp contract afn i32 %i.h to float
  %i.j = fmul reassoc nsz arcp contract afn float %i.b, %i.i ; 2 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.f, %i.j
  %..i = select reassoc nsz arcp contract afn i1 %i.k, float %i.f, float %i.j
  %i.l = fptoui float %..i to i64
  %i.m = uitofp reassoc nsz arcp contract afn i64 %i.l to float
  %i.n = fmul reassoc nsz arcp contract afn float %.16.val, 1.000000e-01
  %i.o = fmul reassoc nsz arcp contract afn float %i.n, %i.m
  %i.p = fdiv reassoc nsz arcp contract afn float %i.o, %i.b
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, -1.000000e+00
  %i.r = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.q)
  %i.s = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.r)
  %i.t = fptosi float %i.s to i32
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 1)
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.u, i32 10)
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !97
  %i.y = shl nsw i32 %i.x, 2
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 7 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !98
  %i.ab = mul nsw i32 %i.y, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 2
  %i.ae = tail call ptr @dt_alloc_aligned(i64 noundef %i.ad) #20 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ae, i64 64) ]
  %i.af = load i32, ptr %i.w, align 4, !tbaa !97
  %i.ag = shl nsw i32 %i.af, 2
  %i.ah = load i32, ptr %i.z, align 4, !tbaa !98
  %i.ai = mul nsw i32 %i.ag, %i.ah
  %i.aj = sext i32 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 2
  %i.al = tail call ptr @dt_alloc_aligned(i64 noundef %i.ak) #20 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.al, i64 64) ]
  %i.am = load i32, ptr %i.w, align 4, !tbaa !97
  %i.an = shl nsw i32 %i.am, 2
  %i.ao = load i32, ptr %i.z, align 4, !tbaa !98
  %i.ap = mul nsw i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 2
  %i.as = tail call ptr @dt_alloc_aligned(i64 noundef %i.ar) #20 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.as, i64 64) ]
  %i.at = load i32, ptr %i.w, align 4, !tbaa !97
  %i.au = shl nsw i32 %i.at, 2
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = add nsw i64 %i.aw, 48
  %i.ay = and i64 %i.ax, -64
  %i.az = tail call ptr @dt_alloc_aligned(i64 noundef %i.ay) #20 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.az, i64 64) ]
  %i.ba = icmp ne ptr %i.ae, null
  %i.bb = icmp ne ptr %i.al, null
  %or.cond = select i1 %i.ba, i1 %i.bb, i1 false
  %i.bc = icmp ne ptr %i.as, null
  %or.cond3 = select i1 %or.cond, i1 %i.bc, i1 false
  %i.bd = icmp ne ptr %i.az, null
  %or.cond5 = select i1 %or.cond3, i1 %i.bd, i1 false
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.be = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.149, i32 noundef 5) #20
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.be) #20
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.bf = load i32, ptr %i.w, align 4, !tbaa !97
  %i.bg = sext i32 %i.bf to i64
  %i.bh = load i32, ptr %i.z, align 4, !tbaa !98
  %i.bi = sext i32 %i.bh to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.bj = mul nsw i64 %i.bi, %i.bg                ; 4 uses
  %.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i, label %init_reconstruct.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter = and i64 %i.bj, 3                    ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 4
  br i1 %i.bk, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.bj, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01822.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.dg, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %.idx20.i = shl i64 %.01822.i, 4                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx20.i
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01822.i
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !16, !alias.scope !247, !noalias !251
  %i.bo = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bn
  %i.bp = load <4 x float>, ptr %i.bl, align 4, !tbaa !16, !alias.scope !244, !noalias !252
  %i.bq = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bs = fmul reassoc nsz arcp contract afn <4 x float> %i.br, %i.bp ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bs, zeroinitializer
  %i.bu = select <4 x i1> %i.bt, <4 x float> %i.bs, <4 x float> zeroinitializer
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 %.idx20.i
  store <4 x float> %i.bu, ptr %i.bv, align 16, !tbaa !154, !alias.scope !253, !noalias !256, !nontemporal !158
  %i.bw = or disjoint i64 %.01822.i, 1            ; 2 uses
  %.idx20.i.1 = shl i64 %i.bw, 4                  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %.idx20.i.1
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bw
  %i.bz = load float, ptr %i.by, align 4, !tbaa !16, !alias.scope !247, !noalias !251
  %i.ca = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bz
  %i.cb = load <4 x float>, ptr %i.bx, align 4, !tbaa !16, !alias.scope !244, !noalias !252
  %i.cc = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ce = fmul reassoc nsz arcp contract afn <4 x float> %i.cd, %i.cb ; 2 uses
  %i.cf = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ce, zeroinitializer
  %i.cg = select <4 x i1> %i.cf, <4 x float> %i.ce, <4 x float> zeroinitializer
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %.idx20.i.1
  store <4 x float> %i.cg, ptr %i.ch, align 16, !tbaa !154, !alias.scope !253, !noalias !256, !nontemporal !158
end_hunk_1
begin_hunk_2_@filmic_split_v1:bb.a
bb.ag:                                            ; preds = %bb.af
  %i.il = fmul reassoc nsz arcp contract afn float %i.ay, %i.hk
  %i.im = fadd reassoc nsz arcp contract afn float %i.il, %i.ax
  %i.in = fmul reassoc nsz arcp contract afn float %i.im, %i.hk
  %i.io = fadd reassoc nsz arcp contract afn float %i.in, %i.av
  %i.ip = fmul reassoc nsz arcp contract afn float %i.io, %i.hk
  %i.iq = fadd reassoc nsz arcp contract afn float %i.ip, %i.aw
  br label %filmic_spline.exit.2

bb.ah:                                            ; preds = %bb.af
  %i.ir = fmul reassoc nsz arcp contract afn float %i.az, %i.hk
  %i.is = fadd reassoc nsz arcp contract afn float %i.ir, %i.ay
  %i.it = fmul reassoc nsz arcp contract afn float %i.is, %i.hk
  %i.iu = fadd reassoc nsz arcp contract afn float %i.it, %i.ax
  %i.iv = fmul reassoc nsz arcp contract afn float %i.iu, %i.hk
  %i.iw = fadd reassoc nsz arcp contract afn float %i.iv, %i.av
  %i.ix = fmul reassoc nsz arcp contract afn float %i.iw, %i.hk
  %i.iy = fadd reassoc nsz arcp contract afn float %i.ix, %i.aw
  br label %filmic_spline.exit.2

bb.ai:                                            ; preds = %bb.af
  %i.iz = fsub reassoc nsz arcp contract afn float %i.z, %i.hk ; 2 uses
  %i.ja = fmul reassoc nsz arcp contract afn float %i.av, %i.iz
  %i.jb = fadd reassoc nsz arcp contract afn float %i.ja, 1.000000e+00
  %i.jc = fmul reassoc nsz arcp contract afn float %i.jb, %i.iz ; 2 uses
  %i.jd = fmul reassoc nsz arcp contract afn float %i.aw, %i.jc
  %i.je = fadd reassoc nsz arcp contract afn float %i.ax, %i.jc
  %i.jf = fdiv reassoc nsz arcp contract afn float %i.jd, %i.je
  %i.jg = fsub reassoc nsz arcp contract afn float %i.ay, %i.jf
  br label %filmic_spline.exit.2

filmic_spline.exit.2:                             ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %.0.i.2 = phi nsz float [ %i.iy, %bb.ah ], [ %i.iq, %bb.ag ], [ %i.jg, %bb.ai ], [ %i.ic, %bb.ad ], [ %i.hu, %bb.ac ], [ %i.ik, %bb.ae ], [ %i.ho, %bb.aa ]
  %.sroa.0.8.vec.insert56 = insertelement <4 x float> %.sroa.0.4.vec.insert53, float %.0.i.2, i64 2
  %i.jh = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0.8.vec.insert56, <4 x float> zeroinitializer)
  %i.ji = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jh, <4 x float> splat (float 1.000000e+00))
  %i.jj = bitcast <4 x float> %i.ji to <4 x i32>  ; 2 uses
  %i.jk = and <4 x i32> %i.jj, splat (i32 8388607)
  %i.jl = or disjoint <4 x i32> %i.jk, splat (i32 1065353216)
  %i.jm = bitcast <4 x i32> %i.jl to <4 x float>  ; 5 uses
  %i.jn = lshr <4 x i32> %i.jj, splat (i32 23)
  %i.jo = and <4 x i32> %i.jn, splat (i32 255)
  %i.jp = add nsw <4 x i32> %i.jo, splat (i32 -127)
  %i.jq = sitofp <4 x i32> %i.jp to <4 x float>
  %i.jr = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jm, splat (float f0x3D74552F)
  %i.js = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jr, splat (float f0xBEEE7397)
  %i.jt = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.js, %i.jm
  %i.ju = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jt, splat (float f0x3FBD96DD)
  %i.jv = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ju, %i.jm
  %i.jw = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jv, splat (float f0xC02153F6)
  %i.jx = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jw, %i.jm
  %i.jy = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jx, splat (float f0x4038D96C)
  %i.jz = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jm, splat (float -1.000000e+00)
  %i.ka = fmul reassoc nsz arcp contract afn <4 x float> %i.jy, %i.jz
  %i.kb = fadd reassoc nsz arcp contract afn <4 x float> %i.ka, %i.jq
  %i.kc = fmul reassoc nsz arcp contract afn <4 x float> %i.kb, %i.bb
  %i.kd = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kc, <4 x float> splat (float 1.290000e+02))
  %i.ke = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kd, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.kf = fadd reassoc nsz arcp contract afn <4 x float> %i.ke, splat (float -5.000000e-01)
  %i.kg = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.kf)
  %i.kh = sitofp reassoc nsz arcp contract afn <4 x i32> %i.kg to <4 x float> ; 2 uses
  %i.ki = fsub reassoc nsz arcp contract afn <4 x float> %i.ke, %i.kh ; 4 uses
  %i.kj = fptosi <4 x float> %i.kh to <4 x i32>
  %i.kk = shl <4 x i32> %i.kj, splat (i32 23)
  %i.kl = add <4 x i32> %i.kk, splat (i32 1065353216)
  %i.km = fmul reassoc nsz arcp contract afn <4 x float> %i.ki, splat (float f0x3C5DBE69)
  %i.kn = fadd reassoc nsz arcp contract afn <4 x float> %i.km, splat (float f0x3D5509F9)
  %i.ko = fmul reassoc nsz arcp contract afn <4 x float> %i.kn, %i.ki
  %i.kp = fadd reassoc nsz arcp contract afn <4 x float> %i.ko, splat (float f0x3E773CC5)
  %i.kq = fmul reassoc nsz arcp contract afn <4 x float> %i.kp, %i.ki
  %i.kr = fadd reassoc nsz arcp contract afn <4 x float> %i.kq, splat (float f0x3F3168B3)
  %i.ks = fmul reassoc nsz arcp contract afn <4 x float> %i.kr, %i.ki
  %i.kt = fadd reassoc nsz arcp contract afn <4 x float> %i.ks, splat (float f0x3F800016)
  %i.ku = bitcast <4 x i32> %i.kl to <4 x float>
  %i.kv = fmul reassoc nsz arcp contract afn <4 x float> %i.kt, %i.ku
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.03743
  store <4 x float> %i.kv, ptr %i.kw, align 16, !tbaa !154, !alias.scope !302, !nontemporal !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.kx = add nuw i64 %.03743, 4                  ; 2 uses
  %i.ky = icmp ult i64 %i.kx, %i.c
  br i1 %i.ky, label %bb.b, label %._crit_edge
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @filmic_split_v4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly byval(%struct.dt_iop_filmic_rgb_spline_t) align 16 captures(none) %5, i64 noundef range(i64 -2147483648, 2147483648) %6, i64 noundef range(i64 -2147483648, 2147483648) %7, float noundef %8, float noundef %9) unnamed_addr #11 {
bb.a:
  %i.a = alloca [4 x [4 x float]], align 64       ; 13 uses
  %i.b = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.c = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.d = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.e = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.f = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.g = alloca [4 x float], align 16             ; 7 uses
  %i.h = alloca [4 x float], align 16             ; 7 uses
  %i.i = alloca [4 x float], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.j = call fastcc i32 @filmic_v4_prepare_matrices(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %2, ptr noundef %3)
  %i.k = shl nsw i64 %6, 2
  %i.l = mul i64 %i.k, %7                         ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = load <4 x float>, ptr %i.a, align 64
  %i.p = load <4 x float>, ptr %i.m, align 16
  %i.q = load <4 x float>, ptr %i.n, align 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = load <4 x float>, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.u = load <4 x float>, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.w = load <4 x float>, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load <4 x float>, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aa = load <4 x float>, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ac = load <4 x float>, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.al = load float, ptr %i.ak, align 4, !tbaa !200
  %i.am = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> zeroinitializer
  %i.an = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ao = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ap = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> zeroinitializer
  %i.aq = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ar = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> zeroinitializer
  %i.as = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> zeroinitializer
  %i.at = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> zeroinitializer
  %i.au = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void @llvm.x86.sse.sfence()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.021 = phi i64 [ 0, %.lr.ph ], [ %i.dm, %bb.b ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.021 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call fastcc void @RGB_tone_mapping_v4(ptr noundef %i.av, ptr noundef %i.g, ptr noundef nonnull %4, ptr noundef nonnull byval(%struct.dt_iop_filmic_rgb_spline_t) align 16 %5, float noundef %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  %i.ay = load float, ptr %i.ag, align 8, !tbaa !16
  %i.az = load <2 x float>, ptr %i.av, align 4, !tbaa !16 ; 2 uses
  %i.ba = load <2 x float>, ptr %i.g, align 16, !tbaa !16 ; 2 uses
  %i.bb = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bc = fmul reassoc nsz arcp contract afn <2 x float> %i.bb, %i.aq
  %i.bd = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.be = fmul reassoc nsz arcp contract afn <2 x float> %i.bd, %i.ap
  %i.bf = fadd reassoc nsz arcp contract afn <2 x float> %i.be, %i.bc
  %i.bg = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.ay, i64 1 ; 3 uses
  %i.bi = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, %i.ar
  %i.bj = fadd reassoc nsz arcp contract afn <2 x float> %i.bf, %i.bi ; 3 uses
  %i.bk = fmul reassoc nsz arcp contract afn <2 x float> %i.bb, %i.an
  %i.bl = fmul reassoc nsz arcp contract afn <2 x float> %i.bd, %i.am
  %i.bm = fadd reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bk
  %i.bn = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, %i.ao
  %i.bo = fadd reassoc nsz arcp contract afn <2 x float> %i.bm, %i.bn ; 3 uses
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bb, %i.at
  %i.bq = fmul reassoc nsz arcp contract afn <2 x float> %i.bd, %i.as
  %i.br = fadd reassoc nsz arcp contract afn <2 x float> %i.bq, %i.bp
  %i.bs = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, %i.au
  %i.bt = fadd reassoc nsz arcp contract afn <2 x float> %i.br, %i.bs ; 2 uses
  %i.bu = fadd reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bj
  %i.bv = fadd reassoc nsz arcp contract afn <2 x float> %i.bu, %i.bt ; 4 uses
  %i.bw = fcmp reassoc nsz arcp contract afn oeq <2 x float> %i.bv, zeroinitializer ; 3 uses
  %i.bx = fdiv reassoc nsz arcp contract afn <2 x float> %i.bj, %i.bv
  %i.by = fdiv reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bv
  %i.bz = fdiv reassoc nsz arcp contract afn <2 x float> %i.bt, %i.bv
  %i.ca = select <2 x i1> %i.bw, <2 x float> zeroinitializer, <2 x float> %i.bx
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cc = select <2 x i1> %i.bw, <2 x float> zeroinitializer, <2 x float> %i.by
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ce = select <2 x i1> %i.bw, <2 x float> zeroinitializer, <2 x float> %i.bz
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cg = fmul reassoc nsz arcp contract afn <4 x float> %i.cb, <float f0xBDB3A62D, float f0xBDB3A62D, float f0x3F8B3A63, float f0x3F8B3A63>
  %i.ch = fmul reassoc nsz arcp contract afn <4 x float> %i.cd, <float f0x3FD55555, float f0x3FD55555, float f0xBF2AAAAB, float f0xBF2AAAAB>
  %10 = fadd reassoc nsz arcp contract afn <4 x float> %i.ch, %i.cg
  %11 = fmul reassoc nsz arcp contract afn <4 x float> %i.cf, <float f0xBD53224F, float f0xBD53224F, float f0x3CA8E841, float f0x3CA8E841>
  %i.ci = fadd reassoc nsz arcp contract afn <4 x float> %11, %10
  %i.cj = fadd reassoc nsz arcp contract afn <4 x float> %i.ci, <float -5.437140e-01, float -5.437140e-01, float f0xBE604727, float f0xBE604727> ; 5 uses
  %i.ck = extractelement <4 x float> %i.cj, i64 0
  %i.cl = extractelement <4 x float> %i.cj, i64 2
  %i.cm = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ck, float noundef %i.cl) #37 ; 5 uses
  store float %i.cm, ptr %i.ad, align 4, !tbaa !16
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.bj, splat (float f0x3F309D77)
  %i.co = fmul reassoc nsz arcp contract afn <2 x float> %i.bo, splat (float f0x3EB2573F)
  %i.cp = fadd reassoc nsz arcp contract afn <2 x float> %i.co, %i.cn ; 2 uses
  %i.cq = extractelement <2 x float> %i.cp, i64 0
  store float %i.cq, ptr %i.h, align 16, !tbaa !16
  %i.cr = extractelement <4 x float> %i.cj, i64 1
  %i.cs = extractelement <4 x float> %i.cj, i64 3
  %i.ct = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.cr, float noundef %i.cs) #37 ; 4 uses
  %i.cu = fcmp reassoc nsz arcp contract afn une float %i.ct, 0.000000e+00
  %i.cv = fcmp reassoc nsz arcp contract afn une float %i.cm, 0.000000e+00
  %i.cw = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cx = insertelement <4 x float> %i.cw, float %i.ct, i64 1
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cz = fdiv reassoc nsz arcp contract afn <4 x float> %i.cj, %i.cy
  %i.da = insertelement <4 x i1> poison, i1 %i.cv, i64 0
  %i.db = insertelement <4 x i1> %i.da, i1 %i.cu, i64 1
  %i.dc = shufflevector <4 x i1> %i.db, <4 x i1> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dd = select <4 x i1> %i.dc, <4 x float> %i.cz, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 4 uses
  %i.de = extractelement <4 x float> %i.dd, i64 2
  store float %i.de, ptr %i.ae, align 8, !tbaa !16
  %i.df = extractelement <4 x float> %i.dd, i64 0
  store float %i.df, ptr %i.af, align 4, !tbaa !16
  %i.dg = extractelement <2 x float> %i.cp, i64 1
  store float %i.dg, ptr %i.i, align 16, !tbaa !16
  %i.dh = extractelement <4 x float> %i.dd, i64 3
  store float %i.dh, ptr %i.ai, align 8, !tbaa !16
  %i.di = extractelement <4 x float> %i.dd, i64 1
  store float %i.di, ptr %i.aj, align 4, !tbaa !16
  %i.dj = fcmp reassoc nsz arcp contract afn olt float %i.cm, %i.ct
  %i.dk = select reassoc nsz arcp contract afn i1 %i.dj, float %i.cm, float %i.ct
  store float %i.dk, ptr %i.ah, align 4, !tbaa !16
  call fastcc void @gamut_mapping(ptr noundef %i.i, ptr noundef %i.h, ptr noundef %i.g, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, float noundef %8, float noundef %9, float noundef %i.al, i32 noundef %i.j)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.021
  %.val = load <4 x float>, ptr %i.g, align 16, !tbaa !154
  store <4 x float> %.val, ptr %i.dl, align 16, !tbaa !154, !alias.scope !305, !nontemporal !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.dm = add nuw i64 %.021, 4                    ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.l
  br i1 %i.dn, label %bb.b, label %._crit_edge
}

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !141 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !308
  %i.e = icmp eq ptr %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !309  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2088
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !310
  %i.l = tail call ptr @dt_ioppr_get_iop_work_profile_info(ptr noundef nonnull %0, ptr noundef %i.k) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.o = load i32, ptr %i.n, align 4, !tbaa !311
  %i.p = tail call reassoc nsz arcp contract afn fastcc float @get_pixel_norm(ptr noundef nonnull %i.m, i32 noundef %i.o, ptr noundef %i.l)
  %i.q = load float, ptr %i.g, align 4, !tbaa !312
  %i.r = fmul reassoc nsz arcp contract afn float %i.p, 5.000000e+01 ; 3 uses
  %i.s = fcmp reassoc nsz arcp contract afn ogt float %i.r, 1.000000e+02
  %i.t = fcmp reassoc nsz arcp contract afn olt float %i.r, 1.000000e-03
  %i.u = select reassoc nsz arcp contract afn i1 %i.t, float 1.000000e-03, float %i.r
  %i.v = select reassoc nsz arcp contract afn i1 %i.s, float 1.000000e+02, float %i.u ; 2 uses
  store float %i.v, ptr %i.g, align 4, !tbaa !312
  %i.w = fdiv reassoc nsz arcp contract afn float %i.q, %i.v
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.w) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 4 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !43
  %i.aa = fsub reassoc nsz arcp contract afn float %i.z, %i.x
  store float %i.aa, ptr %i.y, align 4, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !42
  %i.ad = fadd reassoc nsz arcp contract afn float %i.x, %i.ac
  store float %i.ad, ptr %i.ab, align 4, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !313
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 472
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !314
  %i.ai = tail call ptr %i.ah(ptr noundef nonnull @.str.11) #20, !inline_history !318
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !154 ; 2 uses
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !313
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !314
  %i.ao = tail call ptr %i.an(ptr noundef nonnull @.str.11) #20, !inline_history !318
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 68
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !154 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.as = load float, ptr %i.ar, align 4, !tbaa !319
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, f0x3C23D70A
  %i.au = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.at)
  %i.av = load float, ptr %i.y, align 4, !tbaa !43 ; 2 uses
  %i.aw = fneg reassoc nsz arcp contract afn float %i.av
  %i.ax = load float, ptr %i.ab, align 4, !tbaa !42
  %i.ay = fsub reassoc nsz arcp contract afn float %i.ax, %i.av
  %i.az = fdiv reassoc nsz arcp contract afn float %i.aw, %i.ay
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.az)
  %i.bb = fdiv reassoc nsz arcp contract afn float %i.au, %i.ba ; 3 uses
  %i.bc = fcmp reassoc nsz arcp contract afn ult float %i.bb, %i.ak
  %.inv.i.i = fcmp reassoc nsz arcp contract afn ole float %i.bb, %i.aq
  %..i.i = select reassoc nsz arcp contract afn i1 %.inv.i.i, float %i.bb, float %i.aq
  %i.bd = select reassoc nsz arcp contract afn i1 %i.bc, float %i.ak, float %..i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  store float %i.bd, ptr %i.be, align 4, !tbaa !41
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !320
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %i.bh = cmpxchg ptr %i.bg, i32 0, i32 1 seq_cst seq_cst, align 4
  %i.bi = extractvalue { i32, i1 } %i.bh, 1
  br i1 %i.bi, label %bb.c, label %apply_auto_grey.exit

bb.c:                                             ; preds = %bb.b
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !308
  %i.bk = load float, ptr %i.g, align 4, !tbaa !312
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bj, float noundef %i.bk) #20
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bm = load ptr, ptr %i.bl, align 16, !tbaa !358
  %i.bn = load float, ptr %i.y, align 4, !tbaa !43
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bm, float noundef %i.bn) #20
  %i.bo = load ptr, ptr %i.b, align 64, !tbaa !359
  %i.bp = load float, ptr %i.ab, align 4, !tbaa !42
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bo, float noundef %i.bp) #20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !360
  %i.bs = load float, ptr %i.be, align 4, !tbaa !41
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.br, float noundef %i.bs) #20
  br label %apply_auto_grey.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 16, !tbaa !358
  %i.bv = icmp eq ptr %1, %i.bu
  br i1 %i.bv, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !320
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  %i.by = load atomic i32, ptr %i.bx seq_cst, align 4
  %.not.i = icmp eq i32 %i.by, 0
  br i1 %.not.i, label %bb.f, label %apply_auto_grey.exit

bb.f:                                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !309 ; 6 uses
  %i.cb = load ptr, ptr %i.a, align 16, !tbaa !141 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !113
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2088
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !310
  %i.cg = tail call ptr @dt_ioppr_get_iop_work_profile_info(ptr noundef nonnull %0, ptr noundef %i.cf) #20 ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ci = load float, ptr %i.ch, align 16, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !16
  %i.cl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ci, float %i.ck)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !16
  %i.co = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cl, float %i.cn)
  %i.cp = load float, ptr %i.ca, align 4, !tbaa !312
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, f0x3C23D70A
  %i.cr = fdiv reassoc nsz arcp contract afn float %i.co, %i.cq
  %i.cs = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.cr) ; 3 uses
  %i.ct = fcmp reassoc nsz arcp contract afn ogt float %i.cs, -1.000000e+00
  br i1 %i.ct, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cu = fcmp reassoc nsz arcp contract afn olt float %i.cs, -1.600000e+01
  br i1 %i.cu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.cv = phi reassoc nsz arcp contract afn float [ -1.000000e+00, %bb.f ], [ %i.cs, %bb.h ], [ -1.600000e+01, %bb.g ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !361
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cx, f0x3C23D70A
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cy, 1.000000e+00
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, %i.cv
  %i.db = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.da, float -1.600000e+01)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 3 uses
  store float %i.db, ptr %i.dc, align 4, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !313
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 472
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !314
  %i.dh = tail call ptr %i.dg(ptr noundef nonnull @.str.11) #20, !inline_history !362
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dj = load float, ptr %i.di, align 8, !tbaa !154 ; 2 uses
end_hunk_2
begin_hunk_3_@commit_params:bb.a
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !376
  %i.cc = fdiv reassoc nsz arcp contract afn float 1.200000e+01, %i.cb
  %i.cd = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.cc) ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %i.cd, ptr %i.ce, align 4, !tbaa !100
  %i.cf = fdiv reassoc nsz arcp contract afn float %i.cd, %i.by
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store float %i.cf, ptr %i.cg, align 4, !tbaa !99
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !377
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ci, 5.000000e-03
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, 5.000000e-01
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store float %i.ck, ptr %i.cl, align 32, !tbaa !259
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.co = load <2 x float>, ptr %i.cm, align 4, !tbaa !16
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.co, splat (float 5.000000e-03)
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.cp, splat (float 5.000000e-01)
  store <2 x float> %i.cq, ptr %i.cn, align 8, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !378
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !68
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @dt_iop_filmic_rgb_compute_spline(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 12), (16, 28), (32, 44), (48, 60), (72, 76), (80, 136)) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [25 x double], align 16           ; 18 uses
  %i.b = alloca [5 x double], align 16            ; 8 uses
  %i.c = alloca [16 x double], align 16           ; 14 uses
  %i.d = alloca [4 x double], align 16            ; 7 uses
  %i.e = alloca [16 x double], align 16           ; 13 uses
  %i.f = alloca [4 x double], align 16            ; 7 uses
  %i.g = alloca [25 x double], align 16           ; 17 uses
  %i.h = alloca [5 x double], align 16            ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !365
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load float, ptr %i.k, align 4, !tbaa !319 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load float, ptr %i.m, align 4, !tbaa !379 ; 2 uses
  %i.o = fcmp reassoc nsz arcp contract afn ogt float %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load float, ptr %i.p, align 4, !tbaa !380 ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.l, %i.q
  %. = select reassoc nsz arcp contract afn i1 %i.r, float %i.q, float %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi reassoc nsz arcp contract afn float [ %i.n, %bb.b ], [ %., %bb.c ]
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, f0x3C23D70A
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load float, ptr %i.u, align 4, !tbaa !41 ; 2 uses
  %i.w = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.v
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.t, float %i.w)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load float, ptr %i.y, align 4, !tbaa !41 ; 2 uses
  %i.aa = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float 1.845000e-01, float %i.aa)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = phi float [ %i.v, %bb.d ], [ %i.z, %bb.e ] ; 3 uses
  %.0 = phi nsz float [ %i.x, %bb.d ], [ %i.ab, %bb.e ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !42 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !43 ; 3 uses
  %i.ah = fsub reassoc nsz arcp contract afn float %i.ae, %i.ag ; 7 uses
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ag)
  %i.aj = fdiv reassoc nsz arcp contract afn float %i.ai, %i.ah ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !39 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load float, ptr %i.an, align 4, !tbaa !380 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !319 ; 5 uses
  %i.ar = fcmp reassoc nsz arcp contract afn ogt float %i.ao, %i.aq ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  br i1 %i.ar, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = fcmp reassoc nsz arcp contract afn olt float %i.ao, 0.000000e+00
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %i.at = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.h ], [ %i.ao, %bb.i ], [ %i.aq, %bb.g ]
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, f0x3C23D70A
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aw = load float, ptr %i.av, align 4, !tbaa !379
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aw, float %i.aq)
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, f0x3C23D70A
  br label %bb.o

bb.k:                                             ; preds = %bb.f
  br i1 %i.ar, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = fcmp reassoc nsz arcp contract afn olt float %i.ao, 0.000000e+00
  br i1 %i.az, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %i.ba = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.l ], [ %i.ao, %bb.m ], [ %i.aq, %bb.k ]
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, f0x3C23D70A
  %i.bc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ac ; 2 uses
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bb, float %i.bc)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bf = load float, ptr %i.be, align 4, !tbaa !379
  %i.bg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bf, float %i.aq)
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, f0x3C23D70A
  %i.bi = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bh, float %i.bc)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %.0336 = phi nsz float [ %i.ay, %bb.j ], [ %i.bi, %bb.n ] ; 5 uses
  %.0335 = phi nsz float [ %i.au, %bb.j ], [ %i.bd, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !46 ; 3 uses
  %i.bl = fcmp reassoc nsz arcp contract afn ogt float %i.bk, 5.000000e+01
  br i1 %i.bl, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = fcmp reassoc nsz arcp contract afn olt float %i.bk, -5.000000e+01
  br i1 %i.bm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bk, f0x3C23D70A
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.bo = phi float [ 5.000000e-01, %bb.o ], [ %i.bn, %bb.q ], [ -5.000000e-01, %bb.p ] ; 3 uses
  %i.bp = icmp ult i32 %i.al, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.br = load float, ptr %i.bq, align 4, !tbaa !44 ; 5 uses
  %i.bs = fcmp reassoc nsz arcp contract afn ogt float %i.br, 1.000000e+02 ; 2 uses
  br i1 %i.bp, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  br i1 %i.bs, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = fcmp reassoc nsz arcp contract afn olt float %i.br, 0.000000e+00
  br i1 %i.bt, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = fmul reassoc nsz arcp contract afn float %i.br, f0x3C23D70A
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.bv = phi float [ 1.000000e+00, %bb.s ], [ %i.bu, %bb.u ], [ 0.000000e+00, %bb.t ]
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, %i.ah ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = load float, ptr %i.bx, align 4, !tbaa !45 ; 3 uses
  %i.bz = fcmp reassoc nsz arcp contract afn ogt float %i.by, 6.000000e+00
  br i1 %i.bz, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = fcmp reassoc nsz arcp contract afn olt float %i.by, 1.000010e+00
  br i1 %i.ca, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.cb = phi reassoc nsz arcp contract afn float [ 6.000000e+00, %bb.v ], [ %i.by, %bb.x ], [ 1.000010e+00, %bb.w ] ; 8 uses
  %i.cc = fdiv reassoc nsz arcp contract afn float %i.bw, %i.ah ; 2 uses
  %i.cd = fdiv reassoc nsz arcp contract afn float %i.ag, %i.ah
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cd)
  %i.cf = fmul reassoc nsz arcp contract afn float %i.cc, %i.ce
  %i.cg = fsub reassoc nsz arcp contract afn float %i.aj, %i.cf ; 2 uses
  %i.ch = fdiv reassoc nsz arcp contract afn float %i.ae, %i.ah
  %i.ci = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ch)
  %i.cj = fmul reassoc nsz arcp contract afn float %i.cc, %i.ci
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, %i.aj ; 2 uses
  %i.cl = fmul reassoc nsz arcp contract afn float %i.cb, %i.aj
  %i.cm = fsub reassoc nsz arcp contract afn float %.0, %i.cl ; 2 uses
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cb, %i.cg
  %2 = fadd reassoc nsz arcp contract afn float %i.cn, %i.cm
  %i.co = fmul reassoc nsz arcp contract afn float %i.cb, %i.ck
  %3 = fadd reassoc nsz arcp contract afn float %i.co, %i.cm
  %i.cp = fmul reassoc nsz arcp contract afn float %i.cb, %i.cb
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, 1.000000e+00
  %i.cr = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cq) ; 2 uses
  %i.cs = fmul reassoc nsz arcp contract afn float %i.bo, -2.000000e+00
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %i.bw
  %i.cu = fdiv reassoc nsz arcp contract afn float %i.ct, %i.ah ; 2 uses
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cb, %i.cu
  %i.cw = fdiv reassoc nsz arcp contract afn float %i.cv, %i.cr ; 2 uses
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, %2
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cw, %3
  %i.cz = fdiv reassoc nsz arcp contract afn float %i.cu, %i.cr ; 2 uses
  %i.da = fadd reassoc nsz arcp contract afn float %i.cz, %i.cg ; 2 uses
  %i.db = fadd reassoc nsz arcp contract afn float %i.cz, %i.ck
  %.pre = fmul reassoc nsz arcp contract afn float %i.da, %i.cb
  br label %bb.af

bb.z:                                             ; preds = %bb.r
  br i1 %i.bs, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = fcmp reassoc nsz arcp contract afn olt float %i.br, 0.000000e+00
  br i1 %i.dc, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = fmul reassoc nsz arcp contract afn float %i.br, f0x3C23D70A
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.de = phi float [ 1.000000e+00, %bb.z ], [ %i.dd, %bb.ab ], [ 0.000000e+00, %bb.aa ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dg = load float, ptr %i.df, align 4, !tbaa !45
  %i.dh = fmul reassoc nsz arcp contract afn float %i.ah, 1.250000e-01
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.dg
  %i.dj = fadd reassoc nsz arcp contract afn float %i.ac, -1.000000e+00
  %i.dk = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.0, float %i.dj)
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.ac
  %i.dm = fdiv reassoc nsz arcp contract afn float %i.di, %i.dl ; 4 uses
  %i.dn = fcmp reassoc nsz arcp contract afn ogt float %i.dm, 1.000000e+02
  br i1 %i.dn, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = fsub reassoc nsz arcp contract afn float %.0336, %.0
  %i.dp = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aj
  %i.dq = fdiv reassoc nsz arcp contract afn float %i.do, %i.dp
  %i.dr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dq, float 1.000000e+00)
  %i.ds = fsub reassoc nsz arcp contract afn float %.0, %.0335
  %i.dt = fdiv reassoc nsz arcp contract afn float %i.ds, %i.aj
  %i.du = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dr, float %i.dt)
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, f0x3C23D70A ; 2 uses
  %i.dw = fcmp reassoc nsz arcp contract afn olt float %i.dm, %i.dv
  %i.dx = select reassoc nsz arcp contract afn i1 %i.dw, float %i.dv, float %i.dm
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.dy = phi reassoc nsz arcp contract afn float [ %i.dx, %bb.ad ], [ 1.000000e+02, %bb.ac ] ; 7 uses
  %i.dz = fcmp reassoc nsz arcp contract afn une float %i.dy, %i.dm
  %i.ea = zext i1 %i.dz to i32
  %i.eb = fmul reassoc nsz arcp contract afn float %i.dy, %i.aj
  %i.ec = fsub reassoc nsz arcp contract afn float %.0, %i.eb ; 4 uses
  %i.ed = fsub reassoc nsz arcp contract afn float %.0336, %.0335
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, f0x3C23D70A ; 2 uses
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, %.0335
  %i.eg = fsub reassoc nsz arcp contract afn float %i.ef, %i.ec
  %i.eh = fdiv reassoc nsz arcp contract afn float %i.eg, %i.dy ; 2 uses
  %i.ei = fadd reassoc nsz arcp contract afn float %i.ee, %i.ec
  %i.ej = fsub reassoc nsz arcp contract afn float %.0336, %i.ei
  %i.ek = fdiv reassoc nsz arcp contract afn float %i.ej, %i.dy ; 3 uses
  %i.el = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.de
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, %i.aj ; 2 uses
  %i.en = fmul reassoc nsz arcp contract afn float %i.eh, %i.de
  %i.eo = fadd reassoc nsz arcp contract afn float %i.en, %i.em ; 2 uses
  %i.ep = fmul reassoc nsz arcp contract afn float %i.ek, %i.de
  %i.eq = fadd reassoc nsz arcp contract afn float %i.ep, %i.em ; 2 uses
  %i.er = fcmp reassoc nsz arcp contract afn ogt float %i.bo, 0.000000e+00
  %i.es = fmul reassoc nsz arcp contract afn float %i.bo, 2.000000e+00
  %i.et = fsub reassoc nsz arcp contract afn float %i.aj, %i.eo
  %i.eu = fsub reassoc nsz arcp contract afn float %i.eq, %i.aj
  %.sink = select i1 %i.er, float %i.eu, float %i.et
  %i.ev = fmul reassoc nsz arcp contract afn float %i.es, %.sink ; 2 uses
  %i.ew = fsub reassoc nsz arcp contract afn float %i.eo, %i.ev
  %i.ex = fsub reassoc nsz arcp contract afn float %i.eq, %i.ev ; 2 uses
  %i.ey = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ew, float %i.eh) ; 2 uses
  %i.ez = fcmp reassoc nsz arcp contract afn olt float %i.ex, %i.ek
  %i.fa = select reassoc nsz arcp contract afn i1 %i.ez, float %i.ex, float %i.ek ; 2 uses
  %i.fb = fmul reassoc nsz arcp contract afn float %i.ey, %i.dy ; 2 uses
  %i.fc = fadd reassoc nsz arcp contract afn float %i.fb, %i.ec
  %i.fd = fmul reassoc nsz arcp contract afn float %i.fa, %i.dy
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fd, %i.ec
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.y
  %.pre-phi = phi float [ %i.fb, %bb.ae ], [ %.pre, %bb.y ] ; 2 uses
  %.0341 = phi nsz float [ %i.dy, %bb.ae ], [ %i.cb, %bb.y ] ; 10 uses
  %.0340 = phi nsz float [ %i.fe, %bb.ae ], [ %i.cy, %bb.y ] ; 3 uses
  %.0339 = phi nsz float [ %i.fc, %bb.ae ], [ %i.cx, %bb.y ] ; 6 uses
  %.0338 = phi nsz float [ %i.fa, %bb.ae ], [ %i.db, %bb.y ] ; 4 uses
  %.0337 = phi nsz float [ %i.ey, %bb.ae ], [ %i.da, %bb.y ] ; 7 uses
  %.0334 = phi i32 [ %i.ea, %bb.ae ], [ 0, %bb.y ]
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 108
  store float 0.000000e+00, ptr %i.ff, align 4, !tbaa !16
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 112
  store float %.0337, ptr %i.fg, align 4, !tbaa !16
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.aj, ptr %i.fh, align 4, !tbaa !16
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %.0338, ptr %i.fi, align 4, !tbaa !16
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float 1.000000e+00, ptr %i.fj, align 4, !tbaa !16
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %.0335, ptr %i.fk, align 8, !tbaa !16
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %.0339, ptr %i.fl, align 4, !tbaa !16
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 96
  store float %.0, ptr %i.fm, align 8, !tbaa !16
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 3 uses
  store float %.0340, ptr %i.fn, align 4, !tbaa !16
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  store float %.0336, ptr %i.fo, align 8, !tbaa !16
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %.0337, ptr %i.fp, align 16, !tbaa !300
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %.0338, ptr %i.fq, align 4, !tbaa !301
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !381
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 %i.fs, ptr %i.ft, align 16, !tbaa !24
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !382
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 132
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !24
  %i.fx = fpext reassoc nsz arcp contract afn float %.0337 to double ; 10 uses
  %i.fy = fmul reassoc nsz arcp contract afn double %i.fx, %i.fx ; 6 uses
  %i.fz = fmul reassoc nsz arcp contract afn double %i.fy, %i.fx ; 4 uses
  %i.ga = fpext reassoc nsz arcp contract afn float %.0338 to double ; 10 uses
  %i.gb = fmul reassoc nsz arcp contract afn double %i.ga, %i.ga ; 6 uses
  %i.gc = fmul reassoc nsz arcp contract afn double %i.gb, %i.ga ; 4 uses
  %i.gd = fmul reassoc nsz arcp contract afn double %i.gc, %i.ga
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store float %.0341, ptr %i.gf, align 8, !tbaa !16
  %i.gg = fsub reassoc nsz arcp contract afn float %.0339, %.pre-phi
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.gg, ptr %i.gh, align 8, !tbaa !16
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float 0.000000e+00, ptr %i.gj, align 8, !tbaa !16
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float 0.000000e+00, ptr %i.gl, align 8, !tbaa !16
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float 0.000000e+00, ptr %i.gn, align 8, !tbaa !16
  %i.go = load i32, ptr %i.fr, align 4, !tbaa !381
  switch i32 %i.go, label %bb.ai [
    i32 0, label %bb.ag
    i32 1, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.gp = fmul reassoc nsz arcp contract afn double %i.fz, %i.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.gq, align 16, !tbaa !383
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gr, i8 0, i64 24, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.gs, align 16, !tbaa !383
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %i.gp, ptr %i.gt, align 16, !tbaa !383
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store double %i.fz, ptr %i.gu, align 8, !tbaa !383
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store double %i.fy, ptr %i.gv, align 16, !tbaa !383
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store double %i.fx, ptr %i.gw, align 8, !tbaa !383
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store double 1.000000e+00, ptr %i.gx, align 16, !tbaa !383
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.gz = insertelement <4 x double> <double poison, double poison, double poison, double 1.000000e+00>, double %i.fz, i64 0
  %i.ha = insertelement <4 x double> %i.gz, double %i.fy, i64 1
  %i.hb = insertelement <4 x double> %i.ha, double %i.fx, i64 2
  %i.hc = fmul reassoc nsz arcp contract afn <4 x double> %i.hb, <double 4.000000e+00, double 3.000000e+00, double 2.000000e+00, double 1.000000e+00>
  store <4 x double> %i.hc, ptr %i.gy, align 8, !tbaa !383
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store double 0.000000e+00, ptr %i.hd, align 8, !tbaa !383
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.hf = fmul reassoc nsz arcp contract afn double %i.fy, 1.200000e+01
  store double %i.hf, ptr %i.he, align 16, !tbaa !383
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.hh = fmul reassoc nsz arcp contract afn double %i.fx, 6.000000e+00
  store double %i.hh, ptr %i.hg, align 8, !tbaa !383
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store double 2.000000e+00, ptr %i.hi, align 16, !tbaa !383
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.hk = fpext reassoc nsz arcp contract afn float %.0335 to double
  store double %i.hk, ptr %i.b, align 16, !tbaa !383
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double 0.000000e+00, ptr %i.hl, align 8, !tbaa !383
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hn = insertelement <2 x float> poison, float %.0339, i64 0
  %i.ho = insertelement <2 x float> %i.hn, float %.0341, i64 1
  %i.hp = fpext <2 x float> %i.ho to <2 x double>
  store <2 x double> %i.hp, ptr %i.hm, align 16, !tbaa !383
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store double 0.000000e+00, ptr %i.hq, align 16, !tbaa !383
  call fastcc void @gauss_solve(ptr noundef %i.a, ptr noundef %i.b, i32 noundef 5)
  %i.hr = load <4 x double>, ptr %i.b, align 16, !tbaa !383
end_hunk_3
begin_hunk_4_@reload_defaults:bb.a
  %i.u = tail call ptr %i.t(ptr noundef nonnull @.str.11) #20
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load float, ptr %i.v, align 8, !tbaa !154
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store float %i.w, ptr %i.x, align 4, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 676
  store i32 0, ptr %i.y, align 4, !tbaa !406
  %i.z = tail call i32 @dt_is_scene_referred() #20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.ad = tail call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.ac) #20
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = icmp ne i32 %i.z, 0
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !113
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.ai = tail call reassoc nsz arcp contract afn float @dt_image_get_exposure_bias(ptr noundef nonnull %i.ah) #20
  %i.aj = fsub reassoc nsz arcp contract afn float f0x3F333333, %i.ai
  %i.ak = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul reassoc nsz arcp contract afn <2 x float> %i.al, <float 5.000000e-01, float 8.000000e-01>
  %i.an = load <2 x float>, ptr %i.j, align 4, !tbaa !16
  %i.ao = fadd reassoc nsz arcp contract afn <2 x float> %i.am, %i.an
  store <2 x float> %i.ao, ptr %i.j, align 4, !tbaa !16
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !313
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 472
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !314
  %i.as = tail call ptr %i.ar(ptr noundef nonnull @.str.11) #20, !inline_history !394
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load float, ptr %i.at, align 8, !tbaa !154 ; 2 uses
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !313
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 472
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !314
  %i.ay = tail call ptr %i.ax(ptr noundef nonnull @.str.11) #20, !inline_history !394
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 68
  %i.ba = load float, ptr %i.az, align 4, !tbaa !154 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !319
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, f0x3C23D70A
  %i.be = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.bd)
  %i.bf = load float, ptr %i.j, align 4, !tbaa !43 ; 2 uses
  %i.bg = fneg reassoc nsz arcp contract afn float %i.bf
  %i.bh = load float, ptr %i.q, align 4, !tbaa !42
  %i.bi = fsub reassoc nsz arcp contract afn float %i.bh, %i.bf
  %i.bj = fdiv reassoc nsz arcp contract afn float %i.bg, %i.bi
  %i.bk = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.bj)
  %i.bl = fdiv reassoc nsz arcp contract afn float %i.be, %i.bk ; 3 uses
  %i.bm = fcmp reassoc nsz arcp contract afn ult float %i.bl, %i.au
  %.inv.i = fcmp reassoc nsz arcp contract afn ole float %i.bl, %i.ba
  %..i = select reassoc nsz arcp contract afn i1 %.inv.i, float %i.bl, float %i.ba
  %i.bn = select reassoc nsz arcp contract afn i1 %i.bm, float %i.au, float %..i
  store float %i.bn, ptr %i.x, align 4, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @dt_is_scene_referred() local_unnamed_addr #3

declare i32 @dt_image_is_matrix_correction_supported(ptr noundef) local_unnamed_addr #3

declare float @dt_image_get_exposure_bias(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef initializes((548, 552)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i32 1, ptr %i.a, align 4, !tbaa !407
  %i.b = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.12) #20
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(24) @.str.13) #38
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !408
  %i.h = tail call i32 (...) %i.g() #20
  tail call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.e, i32 noundef %i.h, ptr noundef null, i32 noundef 0, i32 noundef 1, i32 noundef 4) #20
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !408
  %i.j = tail call i32 (...) %i.i() #20
  tail call void @dt_gui_presets_update_format(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.e, i32 noundef %i.j, i32 noundef 34) #20
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !408
  %i.l = tail call i32 (...) %i.k() #20
  tail call void @dt_gui_presets_update_autoapply(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.e, i32 noundef %i.l, i32 noundef 1) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @dt_conf_get_string_const(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_presets_update_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_presets_update_autoapply(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #36 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !409
  store <8 x i32> splat (i32 -999), ptr %i.a, align 4, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i32> splat (i32 -999), ptr %i.c, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409
  tail call void @free(ptr noundef %i.b) #20
  store ptr null, ptr %i.a, align 8, !tbaa !409
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_color_picker_reset(ptr noundef %0, i32 noundef 1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @filmic_gui_draw_icon(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 480
  %i.b = load i32, ptr %i.a, align 32, !tbaa !388
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @cairo_save(ptr noundef %0) #20
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !410 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 680
  %i.e = load double, ptr %i.d, align 8, !tbaa !411
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 688
  %i.g = load double, ptr %i.f, align 8, !tbaa !418
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 696
  %i.i = load double, ptr %i.h, align 8, !tbaa !419
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 704
  %i.k = load double, ptr %i.j, align 8, !tbaa !420 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !421
  %.not29 = icmp eq i32 %i.m, 0
  %i.n = fmul reassoc nsz arcp contract afn double %i.k, 5.000000e-01
  %.sink = select i1 %.not29, double %i.n, double %i.k
  tail call void @cairo_set_source_rgba(ptr noundef %0, double noundef %i.e, double noundef %i.g, double noundef %i.i, double noundef %.sink) #20
  %i.o = load float, ptr %1, align 8, !tbaa !423
  %i.p = fpext reassoc nsz arcp contract afn float %i.o to double
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !424
  %i.s = fpext reassoc nsz arcp contract afn float %i.r to double
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.u = load float, ptr %i.t, align 8, !tbaa !425
  %i.v = fpext reassoc nsz arcp contract afn float %i.u to double
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !320
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1432
  %i.y = load double, ptr %i.x, align 8, !tbaa !426
  %i.z = fmul reassoc nsz arcp contract afn double %i.y, 5.000000e-01 ; 2 uses
  %i.aa = fsub reassoc nsz arcp contract afn double %i.v, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !432
  %i.ad = fpext reassoc nsz arcp contract afn float %i.ac to double
  %i.ae = fsub reassoc nsz arcp contract afn double %i.ad, %i.z
  tail call void @cairo_rectangle(ptr noundef %0, double noundef %i.p, double noundef %i.s, double noundef %i.aa, double noundef %i.ae) #20
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !320
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1432
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !426
  tail call void @cairo_set_line_width(ptr noundef %0, double noundef %i.ah) #20
  tail call void @cairo_stroke(ptr noundef %0) #20
  %i.ai = load float, ptr %1, align 8, !tbaa !423
  %i.aj = fpext reassoc nsz arcp contract afn float %i.ai to double
  %i.ak = load float, ptr %i.t, align 8, !tbaa !425
  %i.al = fpext reassoc nsz arcp contract afn float %i.ak to double
  %i.am = fmul reassoc nsz arcp contract afn double %i.al, 5.000000e-01
  %i.an = fadd reassoc nsz arcp contract afn double %i.am, %i.aj
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !320
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1432
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !426
  %.neg = fmul reassoc nsz arcp contract afn double %i.aq, -2.500000e-01 ; 2 uses
  %i.ar = fadd reassoc nsz arcp contract afn double %i.an, %.neg
  %i.as = load float, ptr %i.q, align 8, !tbaa !424
  %i.at = fpext reassoc nsz arcp contract afn float %i.as to double
  %i.au = load float, ptr %i.ab, align 4, !tbaa !432
  %i.av = fpext reassoc nsz arcp contract afn float %i.au to double
  %i.aw = fmul reassoc nsz arcp contract afn double %i.av, 5.000000e-01
  %i.ax = fadd reassoc nsz arcp contract afn double %i.aw, %i.at
  %i.ay = fadd reassoc nsz arcp contract afn double %i.ax, %.neg
  tail call void @cairo_translate(ptr noundef %0, double noundef %i.ar, double noundef %i.ay) #20
  tail call void @cairo_scale(ptr noundef %0, double noundef f0x3FEB333340000000, double noundef f0x3FEB333340000000) #20
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !433
  %i.bb = load float, ptr %i.t, align 8, !tbaa !425 ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, -8.500000e-01
  %i.bd = fpext reassoc nsz arcp contract afn float %i.bc to double
  %i.be = fmul reassoc nsz arcp contract afn double %i.bd, 5.000000e-01
  %i.bf = fptosi double %i.be to i32
  %i.bg = load float, ptr %i.ab, align 4, !tbaa !432 ; 2 uses
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, -8.500000e-01
  %i.bi = fpext reassoc nsz arcp contract afn float %i.bh to double
  %i.bj = fmul reassoc nsz arcp contract afn double %i.bi, 5.000000e-01
  %i.bk = fptosi double %i.bj to i32
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bb, 8.500000e-01
  %i.bm = fptosi float %i.bl to i32
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bg, 8.500000e-01
  %i.bo = fptosi float %i.bn to i32
  tail call void %i.ba(ptr noundef %0, i32 noundef %i.bf, i32 noundef %i.bk, i32 noundef %i.bm, i32 noundef %i.bo, i32 noundef 0, ptr noundef null) #20
  tail call void @cairo_restore(ptr noundef %0) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @cairo_save(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #3

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #3

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_restore(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 3 uses
  %i.b = alloca [2 x ptr], align 8                ; 3 uses
  %i.c = alloca [2 x ptr], align 8                ; 3 uses
  %i.d = alloca [3 x ptr], align 8                ; 4 uses
  %i.e = alloca [3 x ptr], align 16               ; 3 uses
  %i.f = tail call ptr @dt_alloc_aligned(i64 noundef 640) #20 ; 38 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(640) %i.f, i8 0, i64 640, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.f, ptr %i.g, align 16, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 464
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %i.h, align 16, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  store i32 0, ptr %i.i, align 32, !tbaa !388
  %i.j = tail call ptr @dt_ui_resize_wrap(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.28) #20 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 8 uses
  store ptr %i.j, ptr %i.k, align 64, !tbaa !367
  tail call void @g_object_set_data(ptr noundef %i.j, ptr noundef nonnull @.str.29, ptr noundef %0) #20
  %i.l = load ptr, ptr %i.k, align 64, !tbaa !367
  %i.m = tail call ptr @dt_action_define_iop(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef %i.l, ptr noundef null) #20 ; 0 uses
  %i.n = load ptr, ptr %i.k, align 64, !tbaa !367
  tail call void @gtk_widget_set_can_focus(ptr noundef %i.n, i32 noundef 1) #20
  %i.o = load ptr, ptr %i.k, align 64, !tbaa !367
  %i.p = tail call i64 @g_signal_connect_data(ptr noundef %i.o, ptr noundef nonnull @.str.31, ptr noundef nonnull @dt_iop_tonecurve_draw, ptr noundef %0, ptr noundef null, i32 noundef 0) #20 ; 0 uses
  %i.q = load ptr, ptr %i.k, align 64, !tbaa !367
  %i.r = tail call i64 @g_signal_connect_data(ptr noundef %i.q, ptr noundef nonnull @.str.32, ptr noundef nonnull @area_button_press, ptr noundef %0, ptr noundef null, i32 noundef 0) #20 ; 0 uses
  %i.s = load ptr, ptr %i.k, align 64, !tbaa !367
  %i.t = tail call i64 @g_signal_connect_data(ptr noundef %i.s, ptr noundef nonnull @.str.33, ptr noundef nonnull @area_enter_leave_notify, ptr noundef %0, ptr noundef null, i32 noundef 0) #20 ; 0 uses
  %i.u = load ptr, ptr %i.k, align 64, !tbaa !367
  %i.v = tail call i64 @g_signal_connect_data(ptr noundef %i.u, ptr noundef nonnull @.str.34, ptr noundef nonnull @area_enter_leave_notify, ptr noundef %0, ptr noundef null, i32 noundef 0) #20 ; 0 uses
  %i.w = load ptr, ptr %i.k, align 64, !tbaa !367
  %i.x = tail call i64 @g_signal_connect_data(ptr noundef %i.w, ptr noundef nonnull @.str.35, ptr noundef nonnull @area_motion_notify, ptr noundef %0, ptr noundef null, i32 noundef 0) #20 ; 0 uses
  %i.y = tail call ptr @dt_ui_notebook_new(ptr noundef nonnull @gui_init.notebook_def) #20 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 248 ; 7 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !434
  %i.aa = tail call ptr @dt_action_define_iop(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef %i.y, ptr noundef nonnull @gui_init.notebook_def) #20 ; 0 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !434
  %i.ac = tail call ptr @dt_ui_notebook_page(ptr noundef %i.ab, ptr noundef nonnull @.str.37, ptr noundef null) #20
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 8 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !435
  %i.ae = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.38) #20
  %i.af = tail call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 6, ptr noundef %i.ae) #20 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !308
  tail call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.af, float noundef 1.000000e-01, float noundef 3.600000e+01) #20
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !308
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.ah, ptr noundef nonnull @.str.39) #20
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !308
  %i.aj = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #20
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.ai, ptr noundef %i.aj) #20
  %i.ak = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.10) #20
  %i.al = tail call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 6, ptr noundef %i.ak) #20 ; 2 uses
  store ptr %i.al, ptr %i.f, align 64, !tbaa !359
  tail call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.al, float noundef 2.000000e+00, float noundef 8.000000e+00) #20
  %i.am = load ptr, ptr %i.f, align 64, !tbaa !359
  %i.an = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #20
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.am, ptr noundef %i.an) #20
  %i.ao = load ptr, ptr %i.f, align 64, !tbaa !359
  %i.ap = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #20
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.ao, ptr noundef %i.ap) #20
  %i.aq = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.9) #20
  %i.ar = tail call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 6, ptr noundef %i.aq) #20 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.ar, ptr %i.as, align 16, !tbaa !358
  tail call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.ar, float noundef -1.400000e+01, float noundef -3.000000e+00) #20
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !358
  %i.au = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #20
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.at, ptr noundef %i.au) #20
  %i.av = load ptr, ptr %i.as, align 16, !tbaa !358
  %i.aw = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #20
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.av, ptr noundef %i.aw) #20
  %i.ax = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.44) #20 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 3 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !393
  tail call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.ax, float noundef 5.000000e+01) #20
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !393
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.az, ptr noundef nonnull @.str.39) #20
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !393
  %i.bb = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #20
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.ba, ptr noundef %i.bb) #20
  %i.bc = tail call ptr @dt_bauhaus_combobox_new(ptr noundef %0) #20
  %i.bd = tail call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 6, ptr noundef %i.bc) #20 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  store ptr %i.bd, ptr %i.be, align 16, !tbaa !364
  %i.bf = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.bd, ptr noundef null, ptr noundef nonnull @.str.46) #20 ; 0 uses
  %i.bg = load ptr, ptr %i.be, align 16, !tbaa !364
  %i.bh = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #20
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.bg, ptr noundef %i.bh) #20
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !435
  %i.bj = load ptr, ptr %i.be, align 16, !tbaa !364
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bk, align 8, !tbaa !37
  %i.bl = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.48, i32 noundef 4422, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.bi, ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.bm = load ptr, ptr %i.z, align 8, !tbaa !434
  %i.bn = call ptr @dt_ui_notebook_page(ptr noundef %i.bm, ptr noundef nonnull @.str.49, ptr noundef null) #20 ; 2 uses
  store ptr %i.bn, ptr %i.ad, align 8, !tbaa !435
  %i.bo = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.50, i64 noundef 8) #20
  %i.bp = call ptr @gtk_label_new(ptr noundef %i.bo) #20 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.bp, i32 noundef 0) #20
  call void @gtk_label_set_xalign(ptr noundef %i.bp, float noundef 5.000000e-01) #20
  call void @gtk_label_set_ellipsize(ptr noundef %i.bp, i32 noundef 3) #20
  call void @dt_gui_add_class(ptr noundef %i.bp, ptr noundef nonnull @.str.170) #20
  store ptr %i.bp, ptr %i.b, align 8, !tbaa !37
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bq, align 8, !tbaa !37
  %i.br = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.48, i32 noundef 4427, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.bn, ptr noundef nonnull %i.b) #20 ; 0 uses
  %i.bs = call ptr @dt_bauhaus_toggle_from_params(ptr noundef %0, ptr noundef nonnull @.str.51) #20
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  store ptr %i.bs, ptr %i.bt, align 16, !tbaa !392
  %i.bu = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.52) #20 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !398
  %i.bw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #20
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.bu, ptr noundef %i.bw) #20
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !398
  %i.by = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bx, ptr noundef %i.by) #20
  %i.bz = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.54) #20 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !399
  %i.cb = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #20
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.bz, ptr noundef %i.cb) #20
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !399
  %i.cd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.cc, ptr noundef %i.cd) #20
  %i.ce = call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #20
  %i.cf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #20
  %i.cg = call ptr @gtk_label_new(ptr noundef %i.cf) #20 ; 2 uses
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.cg, ptr noundef nonnull @.str.171, i32 noundef 1, ptr noundef nonnull @.str.172, double noundef 0.000000e+00, ptr noundef nonnull @.str.173, i32 noundef 3, ptr noundef null) #20
  store ptr %i.cg, ptr %i.c, align 8, !tbaa !37
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ch, align 8, !tbaa !37
  %i.ci = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.48, i32 noundef 4449, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ce, ptr noundef nonnull %i.c) #20 ; 2 uses
  %i.cj = call ptr @dt_iop_togglebutton_new(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef null, ptr noundef nonnull @show_mask_callback, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @dtgtk_cairo_paint_showmask, ptr noundef %i.ci) #20 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  store ptr %i.cj, ptr %i.ck, align 64, !tbaa !384
  call void @dtgtk_togglebutton_set_paint(ptr noundef %i.cj, ptr noundef nonnull @dtgtk_cairo_paint_showmask, i32 noundef 0, ptr noundef null) #20
  %i.cl = load ptr, ptr %i.ck, align 64, !tbaa !384
  call void @dt_gui_add_class(ptr noundef %i.cl, ptr noundef nonnull @.str.57) #20
  %i.cm = load ptr, ptr %i.ck, align 64, !tbaa !384
  call void @dt_gui_add_class(ptr noundef %i.cm, ptr noundef nonnull @.str.58) #20
  %i.cn = load ptr, ptr %i.ad, align 8, !tbaa !435
  store ptr %i.ci, ptr %i.d, align 8, !tbaa !37
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cp = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.59, i64 noundef 8) #20
  %i.cq = call ptr @gtk_label_new(ptr noundef %i.cp) #20 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.cq, i32 noundef 0) #20
  call void @gtk_label_set_xalign(ptr noundef %i.cq, float noundef 5.000000e-01) #20
end_hunk_4
begin_hunk_5_@dt_iop_tonecurve_draw:bb.a
  %i.adw = load i32, ptr %i.bc, align 4, !tbaa !454
  %i.adx = sitofp reassoc nsz arcp contract afn i32 %i.adw to double
  %i.ady = load i32, ptr %i.aw, align 4, !tbaa !465
  %i.adz = sitofp reassoc nsz arcp contract afn i32 %i.ady to double
  %.neg1243 = fmul reassoc nnan nsz arcp contract afn double %i.adx, -5.000000e-01
  %.neg1245 = fsub reassoc nsz arcp contract afn double %i.adv, %i.adz
  %i.aea = fadd reassoc nsz arcp contract afn double %.neg1245, %.neg1243
  %i.aeb = fpext reassoc nsz arcp contract afn float %i.aco to double ; 3 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.aea, double noundef %i.aeb) #20
  call void @pango_cairo_show_layout(ptr noundef %i.aj, ptr noundef %i.ak) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.aec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !410 ; 4 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 680
  %.sroa.01164.0.copyload = load double, ptr %i.aed, align 8
  %.sroa.41165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aec, i64 688
  %.sroa.41165.0.copyload = load double, ptr %.sroa.41165.0..sroa_idx, align 8
  %.sroa.51166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aec, i64 696
  %.sroa.51166.0.copyload = load double, ptr %.sroa.51166.0..sroa_idx, align 8
  %.sroa.61167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aec, i64 704
  %.sroa.61167.0.copyload = load double, ptr %.sroa.61167.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01164.0.copyload, double noundef %.sroa.41165.0.copyload, double noundef %.sroa.51166.0.copyload, double noundef %.sroa.61167.0.copyload) #20
  %i.aee = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aef = load float, ptr %i.aee, align 4, !tbaa !380
  %i.aeg = fpext reassoc nsz arcp contract afn float %i.aef to double
  %i.aeh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.157, double noundef %i.aeg) #20 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.ak, ptr noundef nonnull %i.a, i32 noundef -1) #20
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ak, ptr noundef nonnull %i.aw, ptr noundef null) #20
  %i.aei = load i32, ptr %i.bs, align 4, !tbaa !458
  %i.aej = sitofp reassoc nsz arcp contract afn i32 %i.aei to double
  %i.aek = fmul reassoc nnan nsz arcp contract afn double %i.aej, -2.000000e+00
  %i.ael = load i32, ptr %i.bc, align 4, !tbaa !454
  %i.aem = sitofp reassoc nsz arcp contract afn i32 %i.ael to double
  %i.aen = load i32, ptr %i.aw, align 4, !tbaa !465
  %i.aeo = sitofp reassoc nsz arcp contract afn i32 %i.aen to double
  %i.aep = fadd reassoc nsz arcp contract afn double %i.aem, %i.aeo
  %i.aeq = fsub reassoc nsz arcp contract afn double %i.aek, %i.aep
  %i.aer = fpext reassoc nsz arcp contract afn float %.01079.peel to double
  %i.aes = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.aer
  %i.aet = load float, ptr %i.cz, align 8, !tbaa !461
  %i.aeu = fpext reassoc nsz arcp contract afn float %i.aet to double
  %i.aev = fmul reassoc nsz arcp contract afn double %i.aes, %i.aeu
  %i.aew = load i32, ptr %i.ax, align 16, !tbaa !452
  %i.aex = sitofp reassoc nsz arcp contract afn i32 %i.aew to double
  %i.aey = load i32, ptr %i.fu, align 8, !tbaa !466
  %i.aez = sitofp reassoc nsz arcp contract afn i32 %i.aey to double
  %.neg1249 = fmul reassoc nnan nsz arcp contract afn double %i.aex, -5.000000e-01
  %.neg1251 = fsub reassoc nsz arcp contract afn double %i.aev, %i.aez
  %i.afa = fadd reassoc nsz arcp contract afn double %.neg1251, %.neg1249
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.aeq, double noundef %i.afa) #20
  call void @pango_cairo_show_layout(ptr noundef %i.aj, ptr noundef %i.ak) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.afb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !410 ; 4 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 680
  %.sroa.01168.0.copyload = load double, ptr %i.afc, align 8
  %.sroa.41169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afb, i64 688
  %.sroa.41169.0.copyload = load double, ptr %.sroa.41169.0..sroa_idx, align 8
  %.sroa.51170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afb, i64 696
  %.sroa.51170.0.copyload = load double, ptr %.sroa.51170.0..sroa_idx, align 8
  %.sroa.61171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afb, i64 704
  %.sroa.61171.0.copyload = load double, ptr %.sroa.61171.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01168.0.copyload, double noundef %.sroa.41169.0.copyload, double noundef %.sroa.51170.0.copyload, double noundef %.sroa.61171.0.copyload) #20
  %i.afd = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !379
  %i.aff = fpext reassoc nsz arcp contract afn float %i.afe to double
  %i.afg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.157, double noundef %i.aff) #20 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.ak, ptr noundef nonnull %i.a, i32 noundef -1) #20
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ak, ptr noundef nonnull %i.aw, ptr noundef null) #20
  %i.afh = load i32, ptr %i.bs, align 4, !tbaa !458
  %i.afi = sitofp reassoc nsz arcp contract afn i32 %i.afh to double
  %i.afj = fmul reassoc nnan nsz arcp contract afn double %i.afi, -2.000000e+00
  %i.afk = load i32, ptr %i.bc, align 4, !tbaa !454
  %i.afl = sitofp reassoc nsz arcp contract afn i32 %i.afk to double
  %i.afm = load i32, ptr %i.aw, align 4, !tbaa !465
  %i.afn = sitofp reassoc nsz arcp contract afn i32 %i.afm to double
  %i.afo = fadd reassoc nsz arcp contract afn double %i.afl, %i.afn
  %i.afp = fsub reassoc nsz arcp contract afn double %i.afj, %i.afo
  %i.afq = fpext reassoc nsz arcp contract afn float %.01079.2 to double
  %i.afr = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.afq
  %i.afs = load float, ptr %i.cz, align 8, !tbaa !461
  %i.aft = fpext reassoc nsz arcp contract afn float %i.afs to double
  %i.afu = fmul reassoc nsz arcp contract afn double %i.afr, %i.aft
  %i.afv = load i32, ptr %i.ax, align 16, !tbaa !452
  %i.afw = sitofp reassoc nsz arcp contract afn i32 %i.afv to double
  %i.afx = load i32, ptr %i.fu, align 8, !tbaa !466
  %i.afy = sitofp reassoc nsz arcp contract afn i32 %i.afx to double
  %.neg1255 = fmul reassoc nnan nsz arcp contract afn double %i.afw, -5.000000e-01
  %.neg1257 = fsub reassoc nsz arcp contract afn double %i.afu, %i.afy
  %i.afz = fadd reassoc nsz arcp contract afn double %.neg1257, %.neg1255
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.afp, double noundef %i.afz) #20
  call void @pango_cairo_show_layout(ptr noundef %i.aj, ptr noundef %i.ak) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.aga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !410 ; 4 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 680
  %.sroa.01172.0.copyload = load double, ptr %i.agb, align 8
  %.sroa.41173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aga, i64 688
  %.sroa.41173.0.copyload = load double, ptr %.sroa.41173.0..sroa_idx, align 8
  %.sroa.51174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aga, i64 696
  %.sroa.51174.0.copyload = load double, ptr %.sroa.51174.0..sroa_idx, align 8
  %.sroa.61175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aga, i64 704
  %.sroa.61175.0.copyload = load double, ptr %.sroa.61175.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01172.0.copyload, double noundef %.sroa.41173.0.copyload, double noundef %.sroa.51174.0.copyload, double noundef %.sroa.61175.0.copyload) #20
  %i.agc = load i32, ptr %i.er, align 4, !tbaa !385
  switch i32 %i.agc, label %bb.bh [
    i32 0, label %bb.bf
    i32 1, label %bb.bg
    i32 2, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.agd = load float, ptr %i.em, align 4, !tbaa !43
  br label %.sink.split1436

bb.bg:                                            ; preds = %bb.be, %bb.be
  %i.age = load float, ptr %i.em, align 4, !tbaa !43
  %i.agf = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.age)
  %i.agg = load float, ptr %i.c, align 4, !tbaa !312
  %i.agh = fmul reassoc nsz arcp contract afn float %i.agf, %i.agg
  br label %.sink.split1436

.sink.split1436:                                  ; preds = %bb.bf, %bb.bg
  %.sink1438 = phi float [ %i.agh, %bb.bg ], [ %i.agd, %bb.bf ]
  %.str.157.sink = phi ptr [ @.str.157, %bb.bg ], [ @.str.158, %bb.bf ]
  %i.agi = fpext reassoc nsz arcp contract afn float %.sink1438 to double
  %i.agj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull %.str.157.sink, double noundef %i.agi) #20 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split1436, %bb.be
  call void @pango_layout_set_text(ptr noundef %i.ak, ptr noundef nonnull %i.a, i32 noundef -1) #20
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ak, ptr noundef nonnull %i.aw, ptr noundef null) #20
  %i.agk = load float, ptr %i.cu, align 4, !tbaa !460
  %i.agl = fmul reassoc nsz arcp contract afn float %i.agk, %.01078.peel
  %i.agm = fpext reassoc nsz arcp contract afn float %i.agl to double
  %i.agn = load i32, ptr %i.bc, align 4, !tbaa !454
  %i.ago = sitofp reassoc nsz arcp contract afn i32 %i.agn to double
  %i.agp = load i32, ptr %i.aw, align 4, !tbaa !465
  %i.agq = sitofp reassoc nsz arcp contract afn i32 %i.agp to double
  %.neg1258 = fmul reassoc nnan nsz arcp contract afn double %i.ago, -5.000000e-01
  %.neg1260 = fsub reassoc nsz arcp contract afn double %i.agm, %i.agq
  %i.agr = fadd reassoc nsz arcp contract afn double %.neg1260, %.neg1258
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.agr, double noundef %i.aeb) #20
  call void @pango_cairo_show_layout(ptr noundef %i.aj, ptr noundef %i.ak) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ags = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !410 ; 4 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 680
  %.sroa.01176.0.copyload = load double, ptr %i.agt, align 8
  %.sroa.41177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ags, i64 688
  %.sroa.41177.0.copyload = load double, ptr %.sroa.41177.0..sroa_idx, align 8
  %.sroa.51178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ags, i64 696
  %.sroa.51178.0.copyload = load double, ptr %.sroa.51178.0..sroa_idx, align 8
  %.sroa.61179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ags, i64 704
  %.sroa.61179.0.copyload = load double, ptr %.sroa.61179.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01176.0.copyload, double noundef %.sroa.41177.0.copyload, double noundef %.sroa.51178.0.copyload, double noundef %.sroa.61179.0.copyload) #20
  %i.agu = load i32, ptr %i.er, align 4, !tbaa !385
  switch i32 %i.agu, label %bb.bm [
    i32 0, label %bb.bi
    i32 1, label %bb.bj
    i32 2, label %bb.bj
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.agv = load float, ptr %i.ek, align 4, !tbaa !42
  %i.agw = fpext reassoc nsz arcp contract afn float %i.agv to double
  %i.agx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.158, double noundef %i.agw) #20 ; 0 uses
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bh, %bb.bh
  %i.agy = fcmp reassoc nsz arcp contract afn ogt float %.01078.2, 1.000000e+00
  br i1 %i.agy, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.agz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.159, double noundef 1.000000e+02) #20 ; 0 uses
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.aha = load float, ptr %i.ek, align 4, !tbaa !42
  %i.ahb = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.aha)
  %i.ahc = load float, ptr %i.c, align 4, !tbaa !312
  %i.ahd = fmul reassoc nsz arcp contract afn float %i.ahb, %i.ahc
  %i.ahe = fpext reassoc nsz arcp contract afn float %i.ahd to double
  %i.ahf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.157, double noundef %i.ahe) #20 ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bh, %bb.bl, %bb.bk, %bb.bi
  call void @pango_layout_set_text(ptr noundef %i.ak, ptr noundef nonnull %i.a, i32 noundef -1) #20
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ak, ptr noundef nonnull %i.aw, ptr noundef null) #20
  %i.ahg = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.01078.2, float 1.000000e+00)
  %i.ahh = load float, ptr %i.cu, align 4, !tbaa !460
  %i.ahi = fmul reassoc nsz arcp contract afn float %i.ahh, %i.ahg
  %i.ahj = fpext reassoc nsz arcp contract afn float %i.ahi to double
  %i.ahk = load i32, ptr %i.bc, align 4, !tbaa !454
  %i.ahl = sitofp reassoc nsz arcp contract afn i32 %i.ahk to double
  %i.ahm = load i32, ptr %i.aw, align 4, !tbaa !465
  %i.ahn = sitofp reassoc nsz arcp contract afn i32 %i.ahm to double
  %.neg1261 = fmul reassoc nnan nsz arcp contract afn double %i.ahl, -5.000000e-01
  %i.aho = fcmp reassoc nsz arcp contract afn ogt float %.01078.2, 1.000000e+00 ; 3 uses
  %i.ahp = select reassoc nnan nsz arcp contract afn i1 %i.aho, double 2.000000e+00, double 0.000000e+00
  %i.ahq = load float, ptr %i.bh, align 4, !tbaa !455
  %i.ahr = fpext reassoc nsz arcp contract afn float %i.ahq to double
  %i.ahs = fmul reassoc nsz arcp contract afn double %i.ahp, %i.ahr
  %.neg1263 = fsub reassoc nsz arcp contract afn double %i.ahj, %i.ahn
  %i.aht = fadd reassoc nsz arcp contract afn double %.neg1261, %.neg1263
  %i.ahu = fadd reassoc nsz arcp contract afn double %i.aht, %i.ahs
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.ahu, double noundef %i.aeb) #20
  call void @pango_cairo_show_layout(ptr noundef %i.aj, ptr noundef %i.ak) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ahv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !410 ; 4 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 680
  %.sroa.01180.0.copyload = load double, ptr %i.ahw, align 8
  %.sroa.41181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahv, i64 688
  %.sroa.41181.0.copyload = load double, ptr %.sroa.41181.0..sroa_idx, align 8
  %.sroa.51182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahv, i64 696
  %.sroa.51182.0.copyload = load double, ptr %.sroa.51182.0..sroa_idx, align 8
  %.sroa.61183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahv, i64 704
  %.sroa.61183.0.copyload = load double, ptr %.sroa.61183.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01180.0.copyload, double noundef %.sroa.41181.0.copyload, double noundef %.sroa.51182.0.copyload, double noundef %.sroa.61183.0.copyload) #20
  %i.ahx = load i32, ptr %i.er, align 4, !tbaa !385 ; 2 uses
  %i.ahy = icmp eq i32 %i.ahx, 1
  br i1 %i.ahy, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ahz = icmp eq i32 %i.ahx, 2
  %or.cond = and i1 %i.aho, %i.ahz
  br i1 %or.cond, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  br i1 %i.aho, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %i.aia = call i32 @pango_font_description_get_style(ptr noundef %i.ai) #38
  call void @pango_font_description_set_style(ptr noundef %i.ai, i32 noundef 2) #20
  call void @pango_layout_set_font_description(ptr noundef %i.ak, ptr noundef %i.ai) #20
  %i.aib = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.160, i32 noundef 5) #20
  %i.aic = load float, ptr %i.ek, align 4, !tbaa !42
  %i.aid = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.aic)
  %i.aie = load float, ptr %i.c, align 4, !tbaa !312
  %i.aif = fmul reassoc nsz arcp contract afn float %i.aid, %i.aie
  %i.aig = fpext reassoc nsz arcp contract afn float %i.aif to double
  %i.aih = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef %i.aib, double noundef %i.aig) #20 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.ak, ptr noundef nonnull %i.a, i32 noundef -1) #20
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ak, ptr noundef nonnull %i.aw, ptr noundef null) #20
  %i.aii = load i32, ptr %i.r, align 4, !tbaa !447
  %i.aij = load i32, ptr %i.bc, align 4, !tbaa !454
  %i.aik = load i32, ptr %i.aw, align 4, !tbaa !465
  %i.ail = add i32 %i.aij, %i.aik
  %i.aim = sub i32 %i.aii, %i.ail
  %i.ain = sitofp reassoc nsz arcp contract afn i32 %i.aim to float
  %i.aio = fsub reassoc nsz arcp contract afn float %i.ain, %.0
  %i.aip = fpext reassoc nsz arcp contract afn float %i.aio to double
  %i.aiq = load float, ptr %i.cz, align 8, !tbaa !461
  %i.air = fpext reassoc nsz arcp contract afn float %i.aiq to double
  %i.ais = load i32, ptr %i.bs, align 4, !tbaa !458
  %i.ait = sitofp reassoc nsz arcp contract afn i32 %i.ais to double
  %i.aiu = fmul reassoc nnan nsz arcp contract afn double %i.ait, 3.000000e+00
  %i.aiv = fadd reassoc nsz arcp contract afn double %i.aiu, %i.air
  %i.aiw = load float, ptr %i.ba, align 8, !tbaa !453
  %i.aix = fpext reassoc nsz arcp contract afn float %i.aiw to double
  %i.aiy = fadd reassoc nsz arcp contract afn double %i.aiv, %i.aix
  %i.aiz = load i32, ptr %i.fu, align 8, !tbaa !466
  %i.aja = sitofp reassoc nsz arcp contract afn i32 %i.aiz to double
  %i.ajb = fsub reassoc nsz arcp contract afn double %i.aiy, %i.aja
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.aip, double noundef %i.ajb) #20
  call void @pango_cairo_show_layout(ptr noundef %i.aj, ptr noundef %i.ak) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  call void @pango_font_description_set_style(ptr noundef %i.ai, i32 noundef %i.aia) #20
  call void @pango_layout_set_font_description(ptr noundef %i.ak, ptr noundef %i.ai) #20
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.ajc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !410 ; 4 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 680
  %.sroa.01184.0.copyload = load double, ptr %i.ajd, align 8
  %.sroa.41185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajc, i64 688
  %.sroa.41185.0.copyload = load double, ptr %.sroa.41185.0..sroa_idx, align 8
  %.sroa.51186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajc, i64 696
  %.sroa.51186.0.copyload = load double, ptr %.sroa.51186.0..sroa_idx, align 8
  %.sroa.61187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajc, i64 704
  %.sroa.61187.0.copyload = load double, ptr %.sroa.61187.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01184.0.copyload, double noundef %.sroa.41185.0.copyload, double noundef %.sroa.51186.0.copyload, double noundef %.sroa.61187.0.copyload) #20
  %i.aje = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.161, i32 noundef 5) #20
  %i.ajf = call i64 @g_strlcpy(ptr noundef nonnull %i.a, ptr noundef %i.aje, i64 noundef 256) #20 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.ak, ptr noundef nonnull %i.a, i32 noundef -1) #20
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ak, ptr noundef nonnull %i.aw, ptr noundef null) #20
  %i.ajg = load i32, ptr %i.bs, align 4, !tbaa !458 ; 2 uses
  %i.ajh = sitofp reassoc nsz arcp contract afn i32 %i.ajg to double
  %i.aji = fmul reassoc nnan nsz arcp contract afn double %i.ajh, -2.000000e+00
  %i.ajj = load float, ptr %i.bl, align 64, !tbaa !456
  %i.ajk = fpext reassoc nsz arcp contract afn float %i.ajj to double
  %i.ajl = load i32, ptr %i.aw, align 4, !tbaa !465
  %i.ajm = sitofp reassoc nsz arcp contract afn i32 %i.ajl to double
  %i.ajn = fadd reassoc nsz arcp contract afn double %i.ajk, %i.ajm
  %i.ajo = fsub reassoc nsz arcp contract afn double %i.aji, %i.ajn
  %i.ajp = load float, ptr %i.ba, align 8, !tbaa !453
  %i.ajq = sitofp reassoc nsz arcp contract afn i32 %i.ajg to float
  %i.ajr = fadd reassoc nsz arcp contract afn float %i.ajp, %i.ajq
  %i.ajs = fneg reassoc nsz arcp contract afn float %i.ajr
  %i.ajt = fpext reassoc nsz arcp contract afn float %i.ajs to double
  %i.aju = load i32, ptr %i.ax, align 16, !tbaa !452
  %i.ajv = sitofp reassoc nsz arcp contract afn i32 %i.aju to double
  %i.ajw = load i32, ptr %i.fu, align 8, !tbaa !466
  %i.ajx = sitofp reassoc nsz arcp contract afn i32 %i.ajw to double
  %.neg1271 = fmul reassoc nnan nsz arcp contract afn double %i.ajv, -5.000000e-01
  %.neg1273 = fsub reassoc nsz arcp contract afn double %i.ajt, %i.ajx
  %i.ajy = fadd reassoc nsz arcp contract afn double %.neg1273, %.neg1271
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.ajo, double noundef %i.ajy) #20
  call void @pango_cairo_show_layout(ptr noundef %i.aj, ptr noundef %i.ak) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ajz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !410 ; 4 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 680
  %.sroa.01188.0.copyload = load double, ptr %i.aka, align 8
  %.sroa.41189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajz, i64 688
  %.sroa.41189.0.copyload = load double, ptr %.sroa.41189.0..sroa_idx, align 8
  %.sroa.51190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajz, i64 696
  %.sroa.51190.0.copyload = load double, ptr %.sroa.51190.0..sroa_idx, align 8
  %.sroa.61191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajz, i64 704
  %.sroa.61191.0.copyload = load double, ptr %.sroa.61191.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01188.0.copyload, double noundef %.sroa.41189.0.copyload, double noundef %.sroa.51190.0.copyload, double noundef %.sroa.61191.0.copyload) #20
  %i.akb = load i32, ptr %i.er, align 4, !tbaa !385 ; 2 uses
  %i.akc = icmp ult i32 %i.akb, 3
  br i1 %i.akc, label %switch.lookup1445, label %bb.br

switch.lookup1445:                                ; preds = %bb.bq
  %i.akd = zext nneg i32 %i.akb to i64
  %switch.gep1446 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dt_iop_tonecurve_draw.13, i64 %i.akd
  %switch.load1447 = load ptr, ptr %switch.gep1446, align 8
  %i.ake = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %switch.load1447, i32 noundef 5) #20
  %i.akf = call i64 @g_strlcpy(ptr noundef nonnull %i.a, ptr noundef %i.ake, i64 noundef 256) #20 ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %switch.lookup1445
  call void @pango_layout_set_text(ptr noundef %i.ak, ptr noundef nonnull %i.a, i32 noundef -1) #20
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ak, ptr noundef nonnull %i.aw, ptr noundef null) #20
  %i.akg = load i32, ptr %i.bc, align 4, !tbaa !454
  %i.akh = load i32, ptr %i.bs, align 4, !tbaa !458
  %i.aki = load float, ptr %i.ba, align 8, !tbaa !453
  %i.akj = fpext reassoc nsz arcp contract afn float %i.aki to double
  %i.akk = load <2 x float>, ptr %i.cu, align 4, !tbaa !16
  %i.akl = fpext <2 x float> %i.akk to <2 x double> ; 2 uses
  %i.akm = insertelement <2 x i32> poison, i32 %i.akg, i64 0
  %i.akn = insertelement <2 x i32> %i.akm, i32 %i.akh, i64 1
  %i.ako = sitofp <2 x i32> %i.akn to <2 x double>
  %i.akp = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.ako, <double 1.000000e+00, double 3.000000e+00> ; 2 uses
  %i.akq = fsub reassoc nsz arcp contract afn <2 x double> %i.akl, %i.akp
  %i.akr = fadd reassoc nsz arcp contract afn <2 x double> %i.akp, %i.akl
  %i.aks = shufflevector <2 x double> %i.akq, <2 x double> %i.akr, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.akt = insertelement <2 x double> <double 5.000000e-01, double poison>, double %i.akj, i64 1 ; 2 uses
  %i.aku = fmul reassoc nsz arcp contract afn <2 x double> %i.aks, %i.akt
  %i.akv = fadd reassoc nsz arcp contract afn <2 x double> %i.aks, %i.akt
  %i.akw = shufflevector <2 x double> %i.aku, <2 x double> %i.akv, <2 x i32> <i32 0, i32 3>
  %i.akx = load <2 x i32>, ptr %i.aw, align 4, !tbaa !24
  %i.aky = sitofp <2 x i32> %i.akx to <2 x double>
  %i.akz = fsub reassoc nsz arcp contract afn <2 x double> %i.akw, %i.aky ; 2 uses
  %i.ala = extractelement <2 x double> %i.akz, i64 0
  %i.alb = extractelement <2 x double> %i.akz, i64 1
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.ala, double noundef %i.alb) #20
  br label %.sink.split1443

bb.bs:                                            ; preds = %bb.e
  call void @cairo_identity_matrix(ptr noundef %i.aj) #20
  %i.alc = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 3 uses
  %i.ald = load float, ptr %i.alc, align 4, !tbaa !379 ; 2 uses
  %i.ale = fmul reassoc nsz arcp contract afn float %i.ald, f0x3C23D70A
  %i.alf = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ale) ; 2 uses
  %i.alg = fadd reassoc nsz arcp contract afn float %i.alf, 1.200000e+01 ; 2 uses
  %i.alh = load i32, ptr %i.m, align 32, !tbaa !446 ; 2 uses
  %i.ali = sitofp reassoc nsz arcp contract afn i32 %i.alh to float
  %i.alj = fmul reassoc nnan nsz arcp contract afn float %i.ali, f0x3EAAAAAB
  %i.alk = load float, ptr %i.ba, align 8, !tbaa !453 ; 5 uses
  %i.all = fadd reassoc nsz arcp contract afn float %i.alj, %i.alk ; 3 uses
  %i.alm = sitofp reassoc nsz arcp contract afn i32 %i.alh to double
  %i.aln = fmul reassoc nnan nsz arcp contract afn double %i.alm, f0x3FE5555555555555
  %i.alo = fpext reassoc nsz arcp contract afn float %i.alk to double
  %i.alp = fadd reassoc nsz arcp contract afn double %i.aln, %i.alo
  %i.alq = fptrunc reassoc nsz arcp contract afn double %i.alp to float ; 3 uses
  %i.alr = fmul reassoc nsz arcp contract afn float %i.alk, 5.000000e-01 ; 2 uses
  %i.als = fsub reassoc nsz arcp contract afn float %i.all, %i.alr ; 3 uses
  %i.alt = fadd reassoc nsz arcp contract afn float %i.als, %i.alk
  %i.alu = fsub reassoc nsz arcp contract afn float %i.alq, %i.alr ; 2 uses
  %i.alv = fadd reassoc nsz arcp contract afn float %i.alu, %i.alk ; 2 uses
  %i.alw = load i32, ptr %i.bt, align 8, !tbaa !386
  %.not1113 = icmp eq i32 %i.alw, 0
  %i.alx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !410 ; 5 uses
  br i1 %.not1113, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 680
  %.sroa.01192.0.copyload = load double, ptr %i.aly, align 8
  %.sroa.41193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alx, i64 688
  %.sroa.41193.0.copyload = load double, ptr %.sroa.41193.0..sroa_idx, align 8
  %.sroa.51194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alx, i64 696
  %.sroa.51194.0.copyload = load double, ptr %.sroa.51194.0..sroa_idx, align 8
  %.sroa.61195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alx, i64 704
  %.sroa.61195.0.copyload = load double, ptr %.sroa.61195.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01192.0.copyload, double noundef %.sroa.41193.0.copyload, double noundef %.sroa.51194.0.copyload, double noundef %.sroa.61195.0.copyload) #20
  %i.alz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #20
  %i.ama = call i64 @g_strlcpy(ptr noundef nonnull %i.a, ptr noundef %i.alz, i64 noundef 256) #20 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.ak, ptr noundef nonnull %i.a, i32 noundef -1) #20
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ak, ptr noundef nonnull %i.aw, ptr noundef null) #20
  %i.amb = fpext reassoc nsz arcp contract afn float %i.all to double
  %i.amc = load i32, ptr %i.ax, align 16, !tbaa !452
  %i.amd = sitofp reassoc nsz arcp contract afn i32 %i.amc to double
  %i.ame = load i32, ptr %i.fu, align 8, !tbaa !466
end_hunk_5
begin_hunk_6_@get_f:bb.a

bb.t:                                             ; preds = %bb.s
  %i.t = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.84) #20
  %.not48 = icmp eq i32 %i.t, 0
  br i1 %.not48, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.u = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.94) #20
  %.not49 = icmp eq i32 %i.u, 0
  br i1 %.not49, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.v = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.92) #20
  %.not50 = icmp eq i32 %i.v, 0
  br i1 %.not50, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.w = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.96) #20
  %.not51 = icmp eq i32 %i.w, 0
  br i1 %.not51, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.x = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.100) #20
  %.not52 = icmp eq i32 %i.x, 0
  br i1 %.not52, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.y = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.90) #20
  %.not53 = icmp eq i32 %i.y, 0
  br i1 %.not53, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.z = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.88) #20
  %.not54 = icmp eq i32 %i.z, 0
  br i1 %.not54, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aa = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.147) #20
  %.not55 = icmp eq i32 %i.aa, 0
  br i1 %.not55, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ab = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.148) #20
  %.not56 = icmp eq i32 %i.ab, 0
  br i1 %.not56, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ac = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.51) #20
  %.not57 = icmp eq i32 %i.ac, 0
  %. = select i1 %.not57, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2464), ptr null
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2376), %bb.ab ], [ %., %bb.ac ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2288), %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2200), %bb.z ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2112), %bb.y ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2024), %bb.x ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1936), %bb.w ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1848), %bb.v ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1760), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1672), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1584), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1496), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1408), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1320), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1232), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1144), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1056), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 968), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #9

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nounwind memory(argmem: write)
declare void @llvm.x86.sse.stmxcsr(ptr) #19

; Function Attrs: nounwind
declare void @llvm.x86.sse.ldmxcsr(ptr) #20

; Function Attrs: nounwind
declare void @llvm.x86.sse.sfence() #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #9

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @blur_2D_Bspline(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, ptr noalias nofree noundef nonnull captures(none) %2, i64 noundef range(i64 -2147483648, 2147483648) %3, i64 noundef range(i64 -2147483648, 2147483648) %4, i32 noundef %5) unnamed_addr #22 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.a
  %invariant.op = add i32 %5, -1
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64) ]
  %i.a = trunc nsw i64 %4 to i32                  ; 3 uses
  %.not.i = icmp slt i32 %5, %i.a
  %.reass = add i32 %invariant.op, %i.a
  %i.b = shl nsw i64 %3, 2                        ; 5 uses
  %i.c = shl nsw i32 %5, 1                        ; 4 uses
  %i.d = sext i32 %5 to i64                       ; 3 uses
  %i.e = add nsw i64 %4, -1                       ; 2 uses
  %i.f = sext i32 %i.c to i64                     ; 3 uses
  %.not.i29 = icmp eq i64 %3, 0
  %i.g = add nsw i64 %3, -1                       ; 3 uses
  %min.iters.check45 = icmp ult i64 %3, 4
  %n.vec47 = and i64 %3, -4                       ; 3 uses
  %cmp.n78 = icmp eq i64 %3, %n.vec47
  %min.iters.check = icmp ult i64 %3, 8
  %n.vec = and i64 %3, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1 = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat2 = shufflevector <8 x i32> %broadcast.splatinsert1, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert3 = insertelement <8 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat4 = shufflevector <8 x i64> %broadcast.splatinsert3, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert5 = insertelement <8 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat6 = shufflevector <8 x i64> %broadcast.splatinsert5, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert7 = insertelement <8 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat8 = shufflevector <8 x i64> %broadcast.splatinsert7, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %3, %n.vec
  br label %bb.b

._crit_edge51:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph50, %._crit_edge
  %.02648 = phi i64 [ 0, %.lr.ph50 ], [ %i.el, %._crit_edge ] ; 2 uses
  %i.h = trunc i64 %.02648 to i32                 ; 5 uses
  br i1 %.not.i, label %bb.c, label %dwt_interleave_rows.exit

bb.c:                                             ; preds = %bb.b
  %i.i = sdiv i32 %.reass, %5                     ; 4 uses
  %i.j = srem i32 %i.a, %5                        ; 3 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = mul nsw i32 %i.j, %i.i                   ; 2 uses
  %i.m = icmp sgt i32 %i.l, %i.h
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = sdiv i32 %i.h, %i.i
  %i.o = srem i32 %i.h, %i.i
  %i.p = mul nsw i32 %i.o, %5
  %i.q = add nsw i32 %i.p, %i.n
  br label %dwt_interleave_rows.exit

bb.f:                                             ; preds = %bb.d
  %i.r = sub nsw i32 %i.h, %i.l                   ; 2 uses
  %i.s = add nsw i32 %i.i, -1                     ; 2 uses
  %i.t = sdiv i32 %i.r, %i.s
  %i.u = add nsw i32 %i.t, %i.j
  %i.v = srem i32 %i.r, %i.s
  %i.w = mul nsw i32 %i.v, %5
  %i.x = add nsw i32 %i.u, %i.w
  br label %dwt_interleave_rows.exit

dwt_interleave_rows.exit:                         ; preds = %bb.b, %bb.e, %bb.f
  %.1.i = phi i32 [ %i.h, %bb.b ], [ %i.q, %bb.e ], [ %i.x, %bb.f ] ; 3 uses
  %i.y = sext i32 %.1.i to i64                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.z = sub nsw i32 %.1.i, %i.c
  %i.aa = tail call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = mul i64 %i.b, %i.ab                     ; 2 uses
  %i.ad = sub nsw i32 %.1.i, %5
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = mul i64 %i.b, %i.af                     ; 2 uses
  %i.ah = mul i64 %i.b, %i.y                      ; 2 uses
  %i.ai = add nsw i64 %i.y, %i.d
  %..i = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.e)
  %i.aj = mul i64 %..i, %i.b                      ; 2 uses
  %i.ak = add nsw i64 %i.y, %i.f
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.e)
  %i.am = mul i64 %i.al, %i.b                     ; 2 uses
  br i1 %.not.i29, label %._crit_edge, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %dwt_interleave_rows.exit
  br i1 %min.iters.check45, label %.lr.ph.i.preheader80, label %vector.body48

vector.body48:                                    ; preds = %.lr.ph.i.preheader, %vector.body48
  %index49 = phi i64 [ %index.next76, %vector.body48 ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.an = shl i64 %index49, 2                     ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an ; 5 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.an
  %i.aq = getelementptr [4 x i8], ptr %i.ao, i64 %i.ac
  %i.ar = getelementptr [4 x i8], ptr %i.ao, i64 %i.ag
  %i.as = getelementptr [4 x i8], ptr %i.ao, i64 %i.ah
  %i.at = getelementptr [4 x i8], ptr %i.ao, i64 %i.aj
  %i.au = getelementptr [4 x i8], ptr %i.ao, i64 %i.am
  %wide.vec50 = load <16 x float>, ptr %i.aq, align 4, !tbaa !16, !alias.scope !484, !noalias !487 ; 4 uses
  %strided.vec51 = shufflevector <16 x float> %wide.vec50, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec52 = shufflevector <16 x float> %wide.vec50, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec53 = shufflevector <16 x float> %wide.vec50, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec54 = shufflevector <16 x float> %wide.vec50, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %6 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec51, splat (float 6.250000e-02)
  %wide.vec55 = load <16 x float>, ptr %i.ar, align 4, !tbaa !16, !alias.scope !484, !noalias !487 ; 4 uses
  %strided.vec56 = shufflevector <16 x float> %wide.vec55, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec57 = shufflevector <16 x float> %wide.vec55, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec58 = shufflevector <16 x float> %wide.vec55, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec59 = shufflevector <16 x float> %wide.vec55, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %7 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec56, splat (float 2.500000e-01)
  %8 = fadd reassoc nsz arcp contract afn <4 x float> %6, %7
  %wide.vec60 = load <16 x float>, ptr %i.as, align 4, !tbaa !16, !alias.scope !484, !noalias !487 ; 4 uses
  %strided.vec61 = shufflevector <16 x float> %wide.vec60, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec62 = shufflevector <16 x float> %wide.vec60, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec63 = shufflevector <16 x float> %wide.vec60, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec64 = shufflevector <16 x float> %wide.vec60, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.av = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec61, splat (float 3.750000e-01)
  %9 = fadd reassoc nsz arcp contract afn <4 x float> %8, %i.av
  %wide.vec65 = load <16 x float>, ptr %i.at, align 4, !tbaa !16, !alias.scope !484, !noalias !487 ; 4 uses
  %strided.vec66 = shufflevector <16 x float> %wide.vec65, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec67 = shufflevector <16 x float> %wide.vec65, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec68 = shufflevector <16 x float> %wide.vec65, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec69 = shufflevector <16 x float> %wide.vec65, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %10 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec66, splat (float 2.500000e-01)
  %11 = fadd reassoc nsz arcp contract afn <4 x float> %9, %10
  %wide.vec70 = load <16 x float>, ptr %i.au, align 4, !tbaa !16, !alias.scope !484, !noalias !487 ; 4 uses
  %strided.vec71 = shufflevector <16 x float> %wide.vec70, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec72 = shufflevector <16 x float> %wide.vec70, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec73 = shufflevector <16 x float> %wide.vec70, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec74 = shufflevector <16 x float> %wide.vec70, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %12 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec71, splat (float 6.250000e-02)
  %i.aw = fadd reassoc nsz arcp contract afn <4 x float> %12, %11 ; 2 uses
  %i.ax = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec52, splat (float 6.250000e-02)
  %13 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec57, splat (float 2.500000e-01)
  %14 = fadd reassoc nsz arcp contract afn <4 x float> %i.ax, %13
  %15 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec62, splat (float 3.750000e-01)
  %i.ay = fadd reassoc nsz arcp contract afn <4 x float> %14, %15
  %i.az = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec67, splat (float 2.500000e-01)
  %i.ba = fadd reassoc nsz arcp contract afn <4 x float> %i.ay, %i.az
  %i.bb = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec72, splat (float 6.250000e-02)
  %i.bc = fadd reassoc nsz arcp contract afn <4 x float> %i.bb, %i.ba ; 2 uses
  %i.bd = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec53, splat (float 6.250000e-02)
  %16 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec58, splat (float 2.500000e-01)
  %i.be = fadd reassoc nsz arcp contract afn <4 x float> %i.bd, %16
  %i.bf = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec63, splat (float 3.750000e-01)
  %i.bg = fadd reassoc nsz arcp contract afn <4 x float> %i.be, %i.bf
  %i.bh = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec68, splat (float 2.500000e-01)
  %i.bi = fadd reassoc nsz arcp contract afn <4 x float> %i.bg, %i.bh
  %i.bj = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec73, splat (float 6.250000e-02)
  %i.bk = fadd reassoc nsz arcp contract afn <4 x float> %i.bj, %i.bi ; 2 uses
  %17 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec54, splat (float 6.250000e-02)
  %i.bl = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec59, splat (float 2.500000e-01)
  %i.bm = fadd reassoc nsz arcp contract afn <4 x float> %17, %i.bl
  %i.bn = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec64, splat (float 3.750000e-01)
  %i.bo = fadd reassoc nsz arcp contract afn <4 x float> %i.bm, %i.bn
  %i.bp = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec69, splat (float 2.500000e-01)
  %i.bq = fadd reassoc nsz arcp contract afn <4 x float> %i.bo, %i.bp
  %18 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec74, splat (float 6.250000e-02)
  %i.br = fadd reassoc nsz arcp contract afn <4 x float> %18, %i.bq ; 2 uses
  %i.bs = shufflevector <4 x float> %i.aw, <4 x float> %i.bc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bt = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.bs, zeroinitializer
  %i.bu = shufflevector <4 x float> %i.aw, <4 x float> %i.bc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bv = select reassoc nsz arcp contract afn <8 x i1> %i.bt, <8 x float> zeroinitializer, <8 x float> %i.bu
  %i.bw = shufflevector <4 x float> %i.bk, <4 x float> %i.br, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bx = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.bw, zeroinitializer
  %i.by = shufflevector <4 x float> %i.bk, <4 x float> %i.br, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bz = select reassoc nsz arcp contract afn <8 x i1> %i.bx, <8 x float> zeroinitializer, <8 x float> %i.by
  %interleaved.vec75 = shufflevector <8 x float> %i.bv, <8 x float> %i.bz, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec75, ptr %i.ap, align 64, !tbaa !16, !alias.scope !487, !noalias !484
  %index.next76 = add nuw i64 %index49, 4         ; 2 uses
  %i.ca = icmp eq i64 %index.next76, %n.vec47
  br i1 %i.ca, label %middle.block77, label %vector.body48, !llvm.loop !489

middle.block77:                                   ; preds = %vector.body48
  br i1 %cmp.n78, label %.lr.ph, label %.lr.ph.i.preheader80

.lr.ph.i.preheader80:                             ; preds = %.lr.ph.i.preheader, %middle.block77
  %.036.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec47, %middle.block77 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader80, %.lr.ph.i
  %.036.i = phi i64 [ %i.ct, %.lr.ph.i ], [ %.036.i.ph, %.lr.ph.i.preheader80 ] ; 2 uses
  %i.cb = shl i64 %.036.i, 2                      ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cb ; 5 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cb
  %i.ce = getelementptr [4 x i8], ptr %i.cc, i64 %i.ac
  %i.cf = getelementptr [4 x i8], ptr %i.cc, i64 %i.ag
  %i.cg = getelementptr [4 x i8], ptr %i.cc, i64 %i.ah
  %i.ch = getelementptr [4 x i8], ptr %i.cc, i64 %i.aj
  %i.ci = getelementptr [4 x i8], ptr %i.cc, i64 %i.am
  %i.cj = load <4 x float>, ptr %i.ce, align 4, !tbaa !16, !alias.scope !484, !noalias !487
  %19 = fmul reassoc nsz arcp contract afn <4 x float> %i.cj, splat (float 6.250000e-02)
  %i.ck = load <4 x float>, ptr %i.cf, align 4, !tbaa !16, !alias.scope !484, !noalias !487
  %i.cl = fmul reassoc nsz arcp contract afn <4 x float> %i.ck, splat (float 2.500000e-01)
  %20 = fadd reassoc nsz arcp contract afn <4 x float> %19, %i.cl
  %i.cm = load <4 x float>, ptr %i.cg, align 4, !tbaa !16, !alias.scope !484, !noalias !487
  %21 = fmul reassoc nsz arcp contract afn <4 x float> %i.cm, splat (float 3.750000e-01)
  %i.cn = fadd reassoc nsz arcp contract afn <4 x float> %20, %21
  %22 = load <4 x float>, ptr %i.ch, align 4, !tbaa !16, !alias.scope !484, !noalias !487
  %i.co = fmul reassoc nsz arcp contract afn <4 x float> %22, splat (float 2.500000e-01)
  %i.cp = fadd reassoc nsz arcp contract afn <4 x float> %i.cn, %i.co
  %23 = load <4 x float>, ptr %i.ci, align 4, !tbaa !16, !alias.scope !484, !noalias !487
  %24 = fmul reassoc nsz arcp contract afn <4 x float> %23, splat (float 6.250000e-02)
  %i.cq = fadd reassoc nsz arcp contract afn <4 x float> %24, %i.cp ; 2 uses
  %i.cr = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.cq, zeroinitializer
  %i.cs = select <4 x i1> %i.cr, <4 x float> zeroinitializer, <4 x float> %i.cq
  store <4 x float> %i.cs, ptr %i.cd, align 16, !tbaa !16, !alias.scope !487, !noalias !484
  %i.ct = add nuw i64 %.036.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ct, %3
  br i1 %exitcond.not.i, label %.lr.ph, label %.lr.ph.i, !llvm.loop !490

.lr.ph:                                           ; preds = %.lr.ph.i, %middle.block77
  %i.cu = mul nsw i64 %3, %i.y                    ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 3 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph ] ; 3 uses
  %vec.ind9 = phi <8 x i32> [ %vec.ind.next43, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.lr.ph ] ; 3 uses
  %i.cv = add i64 %index, %i.cu
  %i.cw = shl i64 %i.cv, 4
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.cy = sub nsw <8 x i32> %vec.ind9, %broadcast.splat
  %i.cz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cy, <8 x i32> zeroinitializer)
  %i.da = shl nsw <8 x i32> %i.cz, splat (i32 2)
  %i.db = zext nneg <8 x i32> %i.da to <8 x i64>
  %i.dc = sub nsw <8 x i32> %vec.ind9, %broadcast.splat2
  %i.dd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dc, <8 x i32> zeroinitializer)
  %i.de = shl nsw <8 x i32> %i.dd, splat (i32 2)
  %i.df = zext nneg <8 x i32> %i.de to <8 x i64>
  %i.dg = add <8 x i64> %vec.ind, %broadcast.splat4
  %i.dh = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %i.dg, <8 x i64> %broadcast.splat6)
  %i.di = add <8 x i64> %vec.ind, %broadcast.splat8
  %i.dj = tail call <8 x i64> @llvm.umin.v8i64(<8 x i64> %i.di, <8 x i64> %broadcast.splat6)
  %wide.gep = getelementptr [4 x i8], ptr %2, <8 x i64> %i.db ; 4 uses
  %wide.gep10 = getelementptr [4 x i8], ptr %2, <8 x i64> %i.df ; 4 uses
  %i.dk = shl i64 %index, 4
  %i.dl = getelementptr i8, ptr %2, i64 %i.dk
  %i.dm = shl <8 x i64> %i.dh, splat (i64 4)
  %wide.gep11 = getelementptr i8, ptr %2, <8 x i64> %i.dm ; 4 uses
  %i.dn = shl <8 x i64> %i.dj, splat (i64 4)
  %wide.gep12 = getelementptr i8, ptr %2, <8 x i64> %i.dn ; 4 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !alias.scope !491, !noalias !494
  %25 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, splat (float 6.250000e-02)
  %wide.masked.gather13 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep10, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !alias.scope !491, !noalias !494
  %26 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather13, splat (float 2.500000e-01)
  %27 = fadd reassoc nsz arcp contract afn <8 x float> %25, %26
  %wide.vec = load <32 x float>, ptr %i.dl, align 64, !tbaa !16, !alias.scope !491, !noalias !494 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec14 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec15 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec16 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.do = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float 3.750000e-01)
  %28 = fadd reassoc nsz arcp contract afn <8 x float> %27, %i.do
  %wide.masked.gather18.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep11, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !alias.scope !491, !noalias !494
  %i.dp = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather18.a, splat (float 2.500000e-01)
  %i.dq = fadd reassoc nsz arcp contract afn <8 x float> %28, %i.dp
  %wide.masked.gather18 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep12, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !alias.scope !491, !noalias !494
  %29 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather18, splat (float 6.250000e-02)
  %i.dr = fadd reassoc nsz arcp contract afn <8 x float> %29, %i.dq ; 2 uses
  %wide.gep19 = getelementptr i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather20 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep19, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !alias.scope !491, !noalias !494
  %30 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather20, splat (float 6.250000e-02)
  %wide.gep21 = getelementptr i8, <8 x ptr> %wide.gep10, i64 4
  %wide.masked.gather22 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep21, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !alias.scope !491, !noalias !494
  %i.ds = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather22, splat (float 2.500000e-01)
  %31 = fadd reassoc nsz arcp contract afn <8 x float> %30, %i.ds
  %32 = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec14, splat (float 3.750000e-01)
  %33 = fadd reassoc nsz arcp contract afn <8 x float> %31, %32
  %wide.gep25.a = getelementptr i8, <8 x ptr> %wide.gep11, i64 4
  %wide.masked.gather26.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep25.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !alias.scope !491, !noalias !494
  %34 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather26.a, splat (float 2.500000e-01)
  %i.dt = fadd reassoc nsz arcp contract afn <8 x float> %33, %34
  %wide.gep25 = getelementptr i8, <8 x ptr> %wide.gep12, i64 4
  %wide.masked.gather26 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep25, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !alias.scope !491, !noalias !494
  %i.du = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather26, splat (float 6.250000e-02)
  %i.dv = fadd reassoc nsz arcp contract afn <8 x float> %i.du, %i.dt ; 2 uses
  %wide.gep27 = getelementptr i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather28 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep27, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !alias.scope !491, !noalias !494
  %35 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather28, splat (float 6.250000e-02)
  %wide.gep29 = getelementptr i8, <8 x ptr> %wide.gep10, i64 8
  %wide.masked.gather30 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep29, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !alias.scope !491, !noalias !494
  %i.dw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather30, splat (float 2.500000e-01)
  %36 = fadd reassoc nsz arcp contract afn <8 x float> %35, %i.dw
  %37 = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec15, splat (float 3.750000e-01)
  %38 = fadd reassoc nsz arcp contract afn <8 x float> %36, %37
  %wide.gep33.a = getelementptr i8, <8 x ptr> %wide.gep11, i64 8
  %wide.masked.gather34.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep33.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !alias.scope !491, !noalias !494
  %39 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather34.a, splat (float 2.500000e-01)
  %i.dx = fadd reassoc nsz arcp contract afn <8 x float> %38, %39
  %wide.gep33 = getelementptr i8, <8 x ptr> %wide.gep12, i64 8
  %wide.masked.gather34 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep33, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !alias.scope !491, !noalias !494
  %i.dy = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather34, splat (float 6.250000e-02)
  %i.dz = fadd reassoc nsz arcp contract afn <8 x float> %i.dy, %i.dx ; 2 uses
  %wide.gep35 = getelementptr i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather36 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep35, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !alias.scope !491, !noalias !494
  %40 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather36, splat (float 6.250000e-02)
  %wide.gep37 = getelementptr i8, <8 x ptr> %wide.gep10, i64 12
  %wide.masked.gather38 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep37, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !alias.scope !491, !noalias !494
  %i.ea = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather38, splat (float 2.500000e-01)
  %41 = fadd reassoc nsz arcp contract afn <8 x float> %40, %i.ea
  %42 = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec16, splat (float 3.750000e-01)
  %43 = fadd reassoc nsz arcp contract afn <8 x float> %41, %42
  %wide.gep41.a = getelementptr i8, <8 x ptr> %wide.gep11, i64 12
  %wide.masked.gather42.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep41.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !alias.scope !491, !noalias !494
  %44 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather42.a, splat (float 2.500000e-01)
  %45 = fadd reassoc nsz arcp contract afn <8 x float> %43, %44
  %wide.gep41 = getelementptr i8, <8 x ptr> %wide.gep12, i64 12
  %wide.masked.gather42 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep41, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !alias.scope !491, !noalias !494
  %46 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather42, splat (float 6.250000e-02)
  %i.eb = fadd reassoc nsz arcp contract afn <8 x float> %46, %45 ; 2 uses
  %i.ec = shufflevector <8 x float> %i.dr, <8 x float> %i.dv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ed = fcmp reassoc nsz arcp contract afn olt <16 x float> %i.ec, zeroinitializer
  %i.ee = shufflevector <8 x float> %i.dr, <8 x float> %i.dv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ef = select reassoc nsz arcp contract afn <16 x i1> %i.ed, <16 x float> zeroinitializer, <16 x float> %i.ee
  %i.eg = shufflevector <8 x float> %i.dz, <8 x float> %i.eb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eh = fcmp reassoc nsz arcp contract afn olt <16 x float> %i.eg, zeroinitializer
  %i.ei = shufflevector <8 x float> %i.dz, <8 x float> %i.eb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ej = select reassoc nsz arcp contract afn <16 x i1> %i.eh, <16 x float> zeroinitializer, <16 x float> %i.ei
  %interleaved.vec = shufflevector <16 x float> %i.ef, <16 x float> %i.ej, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.cx, align 4, !tbaa !16, !alias.scope !494, !noalias !491
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next43 = add <8 x i32> %vec.ind9, splat (i32 8)
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !496

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.047.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %dwt_interleave_rows.exit
  %i.el = add nuw i64 %.02648, 1                  ; 2 uses
  %exitcond53.not = icmp eq i64 %i.el, %4
  br i1 %exitcond53.not, label %._crit_edge51, label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.047 = phi i64 [ %i.fp, %scalar.ph ], [ %.047.ph, %scalar.ph.preheader ] ; 6 uses
  %i.em = add i64 %.047, %i.cu
  %.idx = shl i64 %i.em, 4
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.eo = trunc i64 %.047 to i32                  ; 2 uses
  %i.ep = sub nsw i32 %i.eo, %i.c
  %i.eq = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 0)
  %i.er = shl nsw i32 %i.eq, 2
  %i.es = zext nneg i32 %i.er to i64
  %i.et = sub nsw i32 %i.eo, %5
  %i.eu = tail call i32 @llvm.smax.i32(i32 %i.et, i32 0)
  %i.ev = shl nsw i32 %i.eu, 2
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = add i64 %.047, %i.d
  %..i30 = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 %i.g)
  %i.ey = add i64 %.047, %i.f
  %i.ez = tail call i64 @llvm.umin.i64(i64 %i.ey, i64 %i.g)
  %i.fa = getelementptr [4 x i8], ptr %2, i64 %i.es
  %i.fb = getelementptr [4 x i8], ptr %2, i64 %i.ew
  %.idx.i = shl i64 %.047, 4
  %i.fc = getelementptr i8, ptr %2, i64 %.idx.i
  %.idx25.i = shl i64 %..i30, 4
  %i.fd = getelementptr i8, ptr %2, i64 %.idx25.i
  %.idx26.i = shl i64 %i.ez, 4
  %i.fe = getelementptr i8, ptr %2, i64 %.idx26.i
  %i.ff = load <4 x float>, ptr %i.fa, align 16, !tbaa !16, !alias.scope !491, !noalias !494
  %47 = fmul reassoc nsz arcp contract afn <4 x float> %i.ff, splat (float 6.250000e-02)
  %i.fg = load <4 x float>, ptr %i.fb, align 16, !tbaa !16, !alias.scope !491, !noalias !494
  %i.fh = fmul reassoc nsz arcp contract afn <4 x float> %i.fg, splat (float 2.500000e-01)
  %48 = fadd reassoc nsz arcp contract afn <4 x float> %47, %i.fh
  %i.fi = load <4 x float>, ptr %i.fc, align 16, !tbaa !16, !alias.scope !491, !noalias !494
  %49 = fmul reassoc nsz arcp contract afn <4 x float> %i.fi, splat (float 3.750000e-01)
  %i.fj = fadd reassoc nsz arcp contract afn <4 x float> %48, %49
  %50 = load <4 x float>, ptr %i.fd, align 16, !tbaa !16, !alias.scope !491, !noalias !494
  %i.fk = fmul reassoc nsz arcp contract afn <4 x float> %50, splat (float 2.500000e-01)
  %i.fl = fadd reassoc nsz arcp contract afn <4 x float> %i.fj, %i.fk
  %51 = load <4 x float>, ptr %i.fe, align 16, !tbaa !16, !alias.scope !491, !noalias !494
  %52 = fmul reassoc nsz arcp contract afn <4 x float> %51, splat (float 6.250000e-02)
  %i.fm = fadd reassoc nsz arcp contract afn <4 x float> %52, %i.fl ; 2 uses
  %i.fn = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.fm, zeroinitializer
  %i.fo = select <4 x i1> %i.fn, <4 x float> zeroinitializer, <4 x float> %i.fm
  store <4 x float> %i.fo, ptr %i.en, align 4, !tbaa !16, !alias.scope !494, !noalias !491
  %i.fp = add nuw i64 %.047, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fp, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !497
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc float @get_pixel_norm(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #23 {
bb.a:
  switch i32 %1, label %bb.i [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load float, ptr %0, align 4, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !16
  %i.d = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.a, float %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !16
  %i.g = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.d, float %i.f)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 712
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.l = load i32, ptr %i.k, align 64, !tbaa !211
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 852
  %i.n = load i32, ptr %i.m, align 4, !tbaa !213
  %i.o = tail call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef %0, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, i32 noundef %i.l, i32 noundef %i.n)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.p = load float, ptr %0, align 4, !tbaa !16
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, f0x3E63D838
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load <2 x float>, ptr %i.r, align 4, !tbaa !16
  %i.t = fmul reassoc nsz arcp contract afn <2 x float> %i.s, <float f0x3F37855B, float 6.061690e-02> ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 0
  %i.v = fadd reassoc nsz arcp contract afn float %i.u, %i.q
  %i.w = extractelement <2 x float> %i.t, i64 1
  %i.x = fadd reassoc nsz arcp contract afn float %i.v, %i.w
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.y = load float, ptr %0, align 4, !tbaa !16   ; 3 uses
  %i.z = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.y)
  %i.aa = fmul reassoc nsz arcp contract afn float %i.y, %i.y ; 2 uses
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load <2 x float>, ptr %i.ac, align 4, !tbaa !16 ; 3 uses
  %i.ae = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ad)
  %i.af = fmul reassoc nsz arcp contract afn <2 x float> %i.ad, %i.ad ; 3 uses
  %i.ag = fmul reassoc nsz arcp contract afn <2 x float> %i.af, %i.ae ; 2 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, %i.ab
  %i.aj = extractelement <2 x float> %i.af, i64 0
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, %i.aa
  %i.al = extractelement <2 x float> %i.ag, i64 1
  %i.am = fadd reassoc nsz arcp contract afn float %i.ai, %i.al
  %i.an = extractelement <2 x float> %i.af, i64 1
  %i.ao = fadd reassoc nsz arcp contract afn float %i.ak, %i.an
  %i.ap = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ao, float f0x2B8CBCCC)
  %i.aq = fdiv reassoc nsz arcp contract afn float %i.am, %i.ap
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ar = load float, ptr %0, align 4, !tbaa !16  ; 2 uses
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = load <2 x float>, ptr %i.at, align 4, !tbaa !16 ; 2 uses
  %i.av = fmul reassoc nsz arcp contract afn <2 x float> %i.au, %i.au ; 2 uses
  %i.aw = extractelement <2 x float> %i.av, i64 0
  %i.ax = fadd reassoc nsz arcp contract afn float %i.aw, %i.as
  %i.ay = extractelement <2 x float> %i.av, i64 1
  %i.az = fadd reassoc nsz arcp contract afn float %i.ax, %i.ay
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.az)
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.bb = load float, ptr %0, align 4, !tbaa !16  ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = load <2 x float>, ptr %i.bd, align 4, !tbaa !16 ; 2 uses
  %i.bf = fmul reassoc nsz arcp contract afn <2 x float> %i.be, %i.be ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, %i.bc
  %i.bi = extractelement <2 x float> %i.bf, i64 1
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bh, %i.bi
  %i.bk = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bj)
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, f0x3F13CD3A
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %.not26 = icmp eq ptr %2, null
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 712
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.bq = load i32, ptr %i.bp, align 64, !tbaa !211
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 852
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !213
  %i.bt = tail call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef %0, ptr noundef %i.bm, ptr noundef %i.bn, ptr noundef %i.bo, i32 noundef %i.bq, i32 noundef %i.bs)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bu = load float, ptr %0, align 4, !tbaa !16
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, f0x3E63D838
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bx = load <2 x float>, ptr %i.bw, align 4, !tbaa !16
  %i.by = fmul reassoc nsz arcp contract afn <2 x float> %i.bx, <float f0x3F37855B, float 6.061690e-02> ; 2 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bz, %i.bv
  %i.cb = extractelement <2 x float> %i.by, i64 1
  %i.cc = fadd reassoc nsz arcp contract afn float %i.ca, %i.cb
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.d, %bb.e, %bb.h, %bb.g, %bb.f, %bb.b
  %.0 = phi nsz float [ %i.x, %bb.e ], [ %i.g, %bb.b ], [ %i.bl, %bb.h ], [ %i.aq, %bb.f ], [ %i.ba, %bb.g ], [ %i.o, %bb.d ], [ %i.bt, %bb.j ], [ %i.cc, %bb.k ]
  ret float %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #23 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add nsw i32 %4, -1
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to float ; 9 uses
  %i.c = add nsw i32 %4, -2
  %i.d = sitofp reassoc nsz arcp contract afn i32 %i.c to float ; 6 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !498    ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !16
  %i.g = fcmp reassoc nsz arcp contract afn ult float %i.f, 0.000000e+00
  %i.h = load float, ptr %0, align 4, !tbaa !16   ; 4 uses
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp reassoc nsz arcp contract afn olt float %i.h, 1.000000e+00
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = fmul reassoc nsz arcp contract afn float %i.h, %i.b ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 0.000000e+00
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.j, %i.b
  %..i.i = select reassoc nsz arcp contract afn i1 %i.l, float %i.j, float %i.b
  %i.m = select reassoc nsz arcp contract afn i1 %i.k, float %..i.i, float 0.000000e+00 ; 3 uses
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.m, %i.d
  %i.o = select reassoc nsz arcp contract afn i1 %i.n, float %i.m, float %i.d
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.r = fsub reassoc nnan nsz arcp contract afn float %i.m, %i.q
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !16 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !16
  %i.x = fsub reassoc nsz arcp contract afn float %i.w, %i.u
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.r
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.u
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !16
  %i.ac = load float, ptr %3, align 4, !tbaa !16
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !16
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ad, float %i.af)
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.ai = phi reassoc nsz arcp contract afn float [ %i.ah, %bb.e ], [ %i.z, %bb.d ], [ %i.h, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !498 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !16
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.al, 0.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !16 ; 4 uses
  br i1 %i.am, label %bb.j, label %bb.g

end_hunk_6
begin_hunk_7_@gamut_check_RGB:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !16
  %i.bj = fmul reassoc nsz arcp contract afn float %i.ah, %i.bi
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, %i.bg
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !16
  %i.bn = fmul reassoc nsz arcp contract afn float %i.ai, %i.bm
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bk, %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bs = fcmp reassoc nsz arcp contract afn olt float %i.as, %i.bd
  %i.bt = select reassoc nsz arcp contract afn i1 %i.bs, float %i.as, float %i.bd ; 2 uses
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bt, %i.bo
  %. = select reassoc nsz arcp contract afn i1 %i.bu, float %i.bt, float %i.bo
  %i.bv = fneg reassoc nsz arcp contract afn float %. ; 2 uses
  %i.bw = fcmp reassoc nsz arcp contract afn ogt float %i.bv, 0.000000e+00
  %i.bx = select reassoc nsz arcp contract afn i1 %i.bw, float %i.bv, float 0.000000e+00 ; 3 uses
  %i.by = fadd reassoc nsz arcp contract afn float %i.as, %i.bx
  %i.bz = fadd reassoc nsz arcp contract afn float %i.bd, %i.bx
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bo, %i.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = load <2 x float>, ptr %0, align 4, !tbaa !16
  %i.ce = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul reassoc nsz arcp contract afn <2 x float> %i.cf, %i.cd
  %i.ch = load <2 x float>, ptr %i.cb, align 4, !tbaa !16
  %i.ci = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul reassoc nsz arcp contract afn <2 x float> %i.cj, %i.ch
  %i.cl = fadd reassoc nsz arcp contract afn <2 x float> %i.ck, %i.cg
  %i.cm = load <2 x float>, ptr %i.cc, align 4, !tbaa !16
  %i.cn = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.cm
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.cl, %i.cp
  %i.cr = fmul reassoc nsz arcp contract afn <2 x float> %i.cq, <float f0x3F309D77, float f0x3EB2573F> ; 2 uses
  %i.cs = extractelement <2 x float> %i.cr, i64 0
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cs, %i.a
  %i.cu = extractelement <2 x float> %i.cr, i64 1
  %i.cv = fadd reassoc nsz arcp contract afn float %i.ct, %i.cu
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, 5.000000e-01 ; 3 uses
  %i.cx = fmul reassoc nsz arcp contract afn float %4, f0x3F8767CD ; 2 uses
  %i.cy = fcmp reassoc nsz arcp contract afn ogt float %i.cw, %i.cx
  %i.cz = fmul reassoc nsz arcp contract afn float %3, f0x3F8767CD ; 2 uses
  %i.da = fcmp reassoc nsz arcp contract afn olt float %i.cw, %i.cz
  %.55 = select reassoc nsz arcp contract afn i1 %i.da, float %i.cz, float %i.cw
  %i.db = select reassoc nsz arcp contract afn i1 %i.cy, float %i.cx, float %.55 ; 2 uses
  %i.dc = tail call reassoc nsz arcp contract afn fastcc float @Ych_max_chroma(ptr noundef %1, float noundef %4, float noundef %i.db, float noundef %i.e, float noundef %i.g) ; 2 uses
  %i.dd = fcmp reassoc nsz arcp contract afn olt float %i.c, %i.dc
  %i.de = select reassoc nsz arcp contract afn i1 %i.dd, float %i.c, float %i.dc ; 2 uses
  %i.df = fmul reassoc nsz arcp contract afn float %i.de, %i.e
  %i.dg = fadd reassoc nsz arcp contract afn float %i.df, f0x3E604727 ; 3 uses
  %i.dh = fmul reassoc nsz arcp contract afn float %i.de, %i.g
  %i.di = fadd reassoc nsz arcp contract afn float %i.dh, 5.437140e-01 ; 3 uses
  %i.dj = fadd reassoc nsz arcp contract afn float %i.di, %i.dg ; 2 uses
  %i.dk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dj ; 3 uses
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dg, f0x3F733333
  %i.dm = fmul reassoc nsz arcp contract afn float %i.di, 3.800000e-01
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dm, %i.dl
  %i.do = fmul reassoc nsz arcp contract afn float %i.dk, 0.000000e+00
  %i.dp = fadd reassoc nsz arcp contract afn float %i.dn, %i.do ; 2 uses
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dg, 5.000000e-02
  %i.dr = fmul reassoc nsz arcp contract afn float %i.di, 6.200000e-01
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dr, %i.dq
  %i.dt = fmul reassoc nsz arcp contract afn float %i.dk, 3.000000e-02
  %i.du = fadd reassoc nsz arcp contract afn float %i.ds, %i.dt ; 2 uses
  %i.dv = fmul reassoc nsz arcp contract afn float %i.dj, 0.000000e+00
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dk, 9.700000e-01
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dw, %i.dv
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dp, f0x3F309D77
  %i.dz = fmul reassoc nsz arcp contract afn float %i.du, f0x3EB2573F
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dy, %i.dz ; 2 uses
  %i.eb = fcmp reassoc nsz arcp contract afn oeq float %i.ea, 0.000000e+00
  %i.ec = fdiv reassoc nsz arcp contract afn float %i.db, %i.ea
  %i.ed = select reassoc nsz arcp contract afn i1 %i.eb, float 0.000000e+00, float %i.ec ; 3 uses
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, %i.dp ; 4 uses
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ed, %i.du ; 4 uses
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ed, %i.dx ; 4 uses
  %i.eh = fmul reassoc nsz arcp contract afn float %i.ee, %i.al
  %i.ei = fmul reassoc nsz arcp contract afn float %i.ef, %i.an
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ei, %i.eh
  %i.ek = fmul reassoc nsz arcp contract afn float %i.eg, %i.aq
  %i.el = fadd reassoc nsz arcp contract afn float %i.ej, %i.ek ; 4 uses
  store float %i.el, ptr %6, align 4, !tbaa !16
  %i.em = load float, ptr %i.at, align 4, !tbaa !16
  %i.en = fmul reassoc nsz arcp contract afn float %i.ee, %i.em
  %i.eo = load float, ptr %i.aw, align 4, !tbaa !16
  %i.ep = fmul reassoc nsz arcp contract afn float %i.ef, %i.eo
  %i.eq = fadd reassoc nsz arcp contract afn float %i.ep, %i.en
  %i.er = load float, ptr %i.ba, align 4, !tbaa !16
  %i.es = fmul reassoc nsz arcp contract afn float %i.eg, %i.er
  %i.et = fadd reassoc nsz arcp contract afn float %i.eq, %i.es ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store float %i.et, ptr %i.eu, align 4, !tbaa !16
  %i.ev = load float, ptr %i.be, align 4, !tbaa !16
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ee, %i.ev
  %i.ex = load float, ptr %i.bh, align 4, !tbaa !16
  %i.ey = fmul reassoc nsz arcp contract afn float %i.ef, %i.ex
  %i.ez = fadd reassoc nsz arcp contract afn float %i.ey, %i.ew
  %i.fa = load float, ptr %i.bl, align 4, !tbaa !16
  %i.fb = fmul reassoc nsz arcp contract afn float %i.eg, %i.fa
  %i.fc = fadd reassoc nsz arcp contract afn float %i.ez, %i.fb ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float %i.fc, ptr %i.fd, align 4, !tbaa !16
  %i.fe = load float, ptr %i.bp, align 4, !tbaa !16
  %i.ff = fmul reassoc nsz arcp contract afn float %i.ee, %i.fe
  %i.fg = load float, ptr %i.bq, align 4, !tbaa !16
  %i.fh = fmul reassoc nsz arcp contract afn float %i.ef, %i.fg
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fh, %i.ff
  %i.fj = load float, ptr %i.br, align 4, !tbaa !16
  %i.fk = fmul reassoc nsz arcp contract afn float %i.eg, %i.fj
  %i.fl = fadd reassoc nsz arcp contract afn float %i.fi, %i.fk ; 3 uses
  %i.fm = fcmp reassoc nsz arcp contract afn ogt float %i.el, %4
  br i1 %i.fm, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.fn = fcmp reassoc nsz arcp contract afn olt float %i.el, 0.000000e+00
  br i1 %i.fn, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.fo = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.b ], [ %i.el, %bb.c ], [ %4, %bb.a ]
  store float %i.fo, ptr %6, align 4, !tbaa !16
  %i.fp = fcmp reassoc nsz arcp contract afn ogt float %i.et, %4
  br i1 %i.fp, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fq = fcmp reassoc nsz arcp contract afn olt float %i.et, 0.000000e+00
  br i1 %i.fq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.fr = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.e ], [ %i.et, %bb.f ], [ %4, %bb.d ]
  store float %i.fr, ptr %i.eu, align 4, !tbaa !16
  %i.fs = fcmp reassoc nsz arcp contract afn ogt float %i.fc, %4
  br i1 %i.fs, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ft = fcmp reassoc nsz arcp contract afn olt float %i.fc, 0.000000e+00
  br i1 %i.ft, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.fu = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.h ], [ %i.fc, %bb.i ], [ %4, %bb.g ]
  store float %i.fu, ptr %i.fd, align 4, !tbaa !16
  %i.fv = fcmp reassoc nsz arcp contract afn ogt float %i.fl, %4
  br i1 %i.fv, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fw = fcmp reassoc nsz arcp contract afn olt float %i.fl, 0.000000e+00
  br i1 %i.fw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.fx = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.k ], [ %i.fl, %bb.l ], [ %4, %bb.j ]
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.fx, ptr %i.fy, align 4, !tbaa !16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc float @Ych_max_chroma(ptr nofree noundef nonnull readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #27 {
bb.a:
  %i.a = tail call reassoc nsz arcp contract afn fastcc float @_clip_chroma_white(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = tail call reassoc nsz arcp contract afn fastcc float @_clip_chroma_white(ptr noundef %i.b, float noundef %1, float noundef %2, float noundef %3, float noundef %4) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = tail call reassoc nsz arcp contract afn fastcc float @_clip_chroma_white(ptr noundef %i.d, float noundef %1, float noundef %2, float noundef %3, float noundef %4) ; 2 uses
  %i.f = load float, ptr %0, align 4, !tbaa !16   ; 2 uses
  %i.g = fmul reassoc nsz arcp contract afn float %3, f0x3F7AB8BE
  %i.h = fmul reassoc nsz arcp contract afn float %4, f0x3EC893CB
  %i.i = fadd reassoc nsz arcp contract afn float %i.h, %i.g ; 3 uses
  %i.j = fmul reassoc nsz arcp contract afn float %i.f, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !16 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn float %3, f0x3CA8E83F
  %i.n = fmul reassoc nsz arcp contract afn float %4, f0x3F1BB61A
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, %i.m ; 3 uses
  %i.p = fmul reassoc nsz arcp contract afn float %i.l, %i.o
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !16 ; 2 uses
  %i.t = fadd reassoc nsz arcp contract afn float %4, %3 ; 3 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.t, %i.s
  %i.v = fsub reassoc nsz arcp contract afn float %i.q, %i.u ; 2 uses
  %i.w = fcmp reassoc nsz arcp contract afn oeq float %i.v, 0.000000e+00
  br i1 %i.w, label %_clip_chroma_black.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = fmul reassoc nsz arcp contract afn float %i.l, f0x3F5B4315
  %i.y = fadd reassoc nsz arcp contract afn float %i.f, %i.x
  %i.z = fmul reassoc nsz arcp contract afn float %i.s, f0x3F0E1437
  %i.aa = fadd reassoc nsz arcp contract afn float %i.y, %i.z
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, f0xBEDAE22E
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.ab, %i.v ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn oge float %i.ac, 0.000000e+00
  %i.ae = select reassoc nsz arcp contract afn i1 %i.ad, float %i.ac, float f0x7F7FFFFF
  br label %_clip_chroma_black.exit.i

_clip_chroma_black.exit.i:                        ; preds = %bb.b, %bb.a
  %.0.i.i = phi nsz float [ %i.ae, %bb.b ], [ f0x7F7FFFFF, %bb.a ] ; 2 uses
  %i.af = load float, ptr %i.b, align 4, !tbaa !16 ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !16 ; 2 uses
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.o
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load float, ptr %i.al, align 4, !tbaa !16 ; 2 uses
  %i.an = fmul reassoc nsz arcp contract afn float %i.t, %i.am
  %i.ao = fsub reassoc nsz arcp contract afn float %i.ak, %i.an ; 2 uses
  %i.ap = fcmp reassoc nsz arcp contract afn oeq float %i.ao, 0.000000e+00
  br i1 %i.ap, label %_clip_chroma_black.exit21.i, label %bb.c

bb.c:                                             ; preds = %_clip_chroma_black.exit.i
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ai, f0x3F5B4315
  %i.ar = fadd reassoc nsz arcp contract afn float %i.af, %i.aq
  %i.as = fmul reassoc nsz arcp contract afn float %i.am, f0x3F0E1437
  %i.at = fadd reassoc nsz arcp contract afn float %i.ar, %i.as
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, f0xBEDAE22E
  %i.av = fdiv reassoc nsz arcp contract afn float %i.au, %i.ao ; 2 uses
  %i.aw = fcmp reassoc nsz arcp contract afn oge float %i.av, 0.000000e+00
  %i.ax = select reassoc nsz arcp contract afn i1 %i.aw, float %i.av, float f0x7F7FFFFF
  br label %_clip_chroma_black.exit21.i

_clip_chroma_black.exit21.i:                      ; preds = %bb.c, %_clip_chroma_black.exit.i
  %.0.i20.i = phi nsz float [ %i.ax, %bb.c ], [ f0x7F7FFFFF, %_clip_chroma_black.exit.i ] ; 2 uses
  %i.ay = load float, ptr %i.d, align 4, !tbaa !16 ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !16 ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.o
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load float, ptr %i.be, align 4, !tbaa !16 ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn float %i.t, %i.bf
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bd, %i.bg ; 2 uses
  %i.bi = fcmp reassoc nsz arcp contract afn oeq float %i.bh, 0.000000e+00
  br i1 %i.bi, label %Ych_max_chroma_without_negatives.exit, label %bb.d

bb.d:                                             ; preds = %_clip_chroma_black.exit21.i
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bb, f0x3F5B4315
  %i.bk = fadd reassoc nsz arcp contract afn float %i.ay, %i.bj
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bf, f0x3F0E1437
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bk, %i.bl
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, f0xBEDAE22E
  %i.bo = fdiv reassoc nsz arcp contract afn float %i.bn, %i.bh ; 2 uses
  %i.bp = fcmp reassoc nsz arcp contract afn oge float %i.bo, 0.000000e+00
  %i.bq = select reassoc nsz arcp contract afn i1 %i.bp, float %i.bo, float f0x7F7FFFFF
  br label %Ych_max_chroma_without_negatives.exit

Ych_max_chroma_without_negatives.exit:            ; preds = %_clip_chroma_black.exit21.i, %bb.d
  %.0.i22.i = phi nsz float [ %i.bq, %bb.d ], [ f0x7F7FFFFF, %_clip_chroma_black.exit21.i ] ; 2 uses
  %i.br = fcmp reassoc nsz arcp contract afn olt float %i.a, %i.c
  %i.bs = select reassoc nsz arcp contract afn i1 %i.br, float %i.a, float %i.c ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn olt float %i.bs, %i.e
  %. = select reassoc nsz arcp contract afn i1 %i.bt, float %i.bs, float %i.e ; 2 uses
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %.0.i.i, %.0.i20.i
  %i.bv = select reassoc nsz arcp contract afn i1 %i.bu, float %.0.i.i, float %.0.i20.i ; 2 uses
  %i.bw = fcmp reassoc nsz arcp contract afn olt float %i.bv, %.0.i22.i
  %..i = select reassoc nsz arcp contract afn i1 %i.bw, float %i.bv, float %.0.i22.i ; 2 uses
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %..i, %.
  %i.by = select reassoc nsz arcp contract afn i1 %i.bx, float %..i, float %.
  ret float %i.by
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc float @_clip_chroma_white(ptr nofree noundef nonnull readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #27 {
bb.a:
  %i.a = fmul reassoc nsz arcp contract afn float %1, f0x3F8767CD
  %i.b = fsub reassoc nsz arcp contract afn float %i.a, %2 ; 2 uses
  %i.c = fcmp reassoc nsz arcp contract afn ogt float %i.b, 0.000000e+00
  %i.d = select reassoc nsz arcp contract afn i1 %i.c, float %i.b, float 0.000000e+00 ; 2 uses
  %i.e = fcmp reassoc nsz arcp contract afn olt float %i.d, 1.000000e-03
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = fmul reassoc nsz arcp contract afn float %1, f0x3A8AA7BC
  %i.g = fmul reassoc nsz arcp contract afn float %1, f0x3F874523 ; 3 uses
  %i.h = load float, ptr %0, align 4, !tbaa !16   ; 2 uses
  %i.i = fmul reassoc nsz arcp contract afn float %3, f0x3F7AB8BE
  %i.j = fmul reassoc nsz arcp contract afn float %4, f0x3EC893CB
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, %i.i
  %i.l = fmul reassoc nsz arcp contract afn float %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !16 ; 2 uses
  %i.o = fmul reassoc nsz arcp contract afn float %3, f0x3CA8E83F
  %i.p = fmul reassoc nsz arcp contract afn float %4, f0x3F1BB61A
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, %i.o
  %i.r = fmul reassoc nsz arcp contract afn float %i.n, %i.q
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !16 ; 2 uses
  %i.v = fadd reassoc nsz arcp contract afn float %4, %3
  %i.w = fmul reassoc nsz arcp contract afn float %i.v, %i.u
  %i.x = fsub reassoc nsz arcp contract afn float %i.s, %i.w ; 3 uses
  %i.y = fmul reassoc nsz arcp contract afn float %3, f0x3F2ECFE7
  %i.z = fmul reassoc nsz arcp contract afn float %4, f0x3EF6DAAB
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %i.y
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %1 ; 2 uses
  %i.ac = fcmp reassoc nsz arcp contract afn une float %i.x, 0.000000e+00
  %i.ad = fdiv reassoc nsz arcp contract afn float %i.ab, %i.x
  %i.ae = fcmp reassoc nsz arcp contract afn ugt float %i.g, %i.ad
  %or.cond.i = and i1 %i.ac, %i.ae
  br i1 %or.cond.i, label %bb.c, label %_clip_chroma_white_raw.exit

bb.c:                                             ; preds = %bb.b
  %i.af = fmul reassoc nsz arcp contract afn float %i.x, %i.g
  %i.ag = fsub reassoc nsz arcp contract afn float %i.af, %i.ab
  %i.ah = fmul reassoc nsz arcp contract afn float %i.n, f0x3F5B4315
  %i.ai = fadd reassoc nsz arcp contract afn float %i.h, %i.ah
  %i.aj = fmul reassoc nsz arcp contract afn float %i.u, f0x3F0E1437
  %i.ak = fadd reassoc nsz arcp contract afn float %i.ai, %i.aj
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, %i.g
  %i.am = fmul reassoc nsz arcp contract afn float %1, f0x3F7CFD26
  %i.an = fsub reassoc nsz arcp contract afn float %i.al, %i.am
  %i.ao = fmul reassoc nsz arcp contract afn float %i.an, f0xBEDAE22E
  %i.ap = fdiv reassoc nsz arcp contract afn float %i.ao, %i.ag
  br label %_clip_chroma_white_raw.exit

_clip_chroma_white_raw.exit:                      ; preds = %bb.b, %bb.c
  %.1.i = phi nsz float [ f0x7F7FFFFF, %bb.b ], [ %i.ap, %bb.c ]
  %i.aq = fmul reassoc nsz arcp contract afn float %.1.i, %i.d
  %i.ar = fdiv reassoc nsz arcp contract afn float %i.aq, %i.f
  br label %_clip_chroma_white_raw.exit23

bb.d:                                             ; preds = %bb.a
  %i.as = load float, ptr %0, align 4, !tbaa !16  ; 2 uses
  %i.at = fmul reassoc nsz arcp contract afn float %3, f0x3F7AB8BE
  %i.au = fmul reassoc nsz arcp contract afn float %4, f0x3EC893CB
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, %i.at
  %i.aw = fmul reassoc nsz arcp contract afn float %i.as, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !16 ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %3, f0x3CA8E83F
  %i.ba = fmul reassoc nsz arcp contract afn float %4, f0x3F1BB61A
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, %i.az
  %i.bc = fmul reassoc nsz arcp contract afn float %i.ay, %i.bb
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.aw
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !16 ; 2 uses
  %i.bg = fadd reassoc nsz arcp contract afn float %4, %3
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, %i.bf
  %i.bi = fsub reassoc nsz arcp contract afn float %i.bd, %i.bh ; 3 uses
  %i.bj = fmul reassoc nsz arcp contract afn float %3, f0x3F2ECFE7
  %i.bk = fmul reassoc nsz arcp contract afn float %4, f0x3EF6DAAB
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %i.bj
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, %1 ; 2 uses
  %i.bn = fcmp reassoc nsz arcp contract afn une float %i.bi, 0.000000e+00
  %i.bo = fdiv reassoc nsz arcp contract afn float %i.bm, %i.bi
  %i.bp = fcmp reassoc nsz arcp contract afn ugt float %2, %i.bo
  %or.cond.i21 = and i1 %i.bn, %i.bp
  br i1 %or.cond.i21, label %bb.e, label %_clip_chroma_white_raw.exit23

bb.e:                                             ; preds = %bb.d
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bi, %2
  %i.br = fsub reassoc nsz arcp contract afn float %i.bq, %i.bm
  %i.bs = fmul reassoc nsz arcp contract afn float %i.ay, f0x3F5B4315
  %i.bt = fadd reassoc nsz arcp contract afn float %i.as, %i.bs
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bf, f0x3F0E1437
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bt, %i.bu
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, %2
  %i.bx = fmul reassoc nsz arcp contract afn float %1, f0x3F7CFD26
  %i.by = fsub reassoc nsz arcp contract afn float %i.bw, %i.bx
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, f0xBEDAE22E
  %i.ca = fdiv reassoc nsz arcp contract afn float %i.bz, %i.br
  br label %_clip_chroma_white_raw.exit23

_clip_chroma_white_raw.exit23:                    ; preds = %bb.e, %bb.d, %_clip_chroma_white_raw.exit
  %.0 = phi nsz float [ %i.ar, %_clip_chroma_white_raw.exit ], [ f0x7F7FFFFF, %bb.d ], [ %i.ca, %bb.e ] ; 2 uses
  %i.cb = fcmp reassoc nsz arcp contract afn oge float %.0, 0.000000e+00
  %i.cc = select reassoc nsz arcp contract afn i1 %i.cb, float %.0, float f0x7F7FFFFF
  ret float %i.cc
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #9

declare ptr @dt_ioppr_get_iop_work_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @gauss_solve(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 4, 6) %2) unnamed_addr #4 {
bb.a:
  %i.a = shl nuw nsw i32 %2, 2
  %i.b = zext nneg i32 %i.a to i64
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #36 ; 4 uses
  %i.d = add nsw i32 %2, -1                       ; 2 uses
  %i.e = zext nneg i32 %i.d to i64                ; 9 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  store i32 %i.d, ptr %i.f, align 4, !tbaa !24
  %i.g = zext nneg i32 %2 to i64                  ; 57 uses
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 4 uses
  %i.i = add nuw nsw i64 %i.h, 8                  ; 2 uses
  %i.j = mul nuw nsw i64 %i.g, %i.g
  %i.k = shl nuw nsw i64 %i.j, 3
  %scevgep1 = getelementptr i8, ptr %0, i64 %i.k  ; 2 uses
  %i.l = add nsw i64 %i.h, -8
  %i.m = mul nuw nsw i64 %i.l, %i.g
  %i.n = shl nuw nsw i64 %i.g, 3
  %i.o = shl nuw nsw i64 %i.g, 3                  ; 3 uses
  %scevgep29 = getelementptr i8, ptr %0, i64 %i.o
  %i.p = add nuw nsw i64 %i.o, 8
  %i.q = shl nuw nsw i64 %i.g, 3
  %i.r = add nsw i64 %i.g, -1                     ; 2 uses
  %i.s = add nsw i64 %i.g, -2                     ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.o
  %i.u = getelementptr i8, ptr %0, i64 %i.i
  %i.v = getelementptr i8, ptr %0, i64 %i.h
  %i.w = getelementptr i8, ptr %0, i64 %i.m
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = getelementptr i8, ptr %0, i64 %i.h
  br label %bb.b

.loopexit.i:                                      ; preds = %._crit_edge120.i, %.preheader110.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next147.i, %i.g
  br i1 %exitcond150.not.i, label %.lr.ph.preheader.i9.preheader, label %bb.b

.lr.ph.preheader.i9.preheader:                    ; preds = %.loopexit.i
  %i.z = shl nuw nsw i64 %i.g, 3                  ; 4 uses
  %scevgep50 = getelementptr i8, ptr %1, i64 %i.z
  %i.aa = add nsw i64 %i.z, -8
  %i.ab = mul nuw nsw i64 %i.aa, %i.g
  %i.ac = add nuw nsw i64 %i.z, 8
  %i.ad = getelementptr i8, ptr %0, i64 %i.ab
  %i.ae = getelementptr i8, ptr %0, i64 %i.z
  %broadcast.splatinsert63 = insertelement <4 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat64 = shufflevector <4 x i64> %broadcast.splatinsert63, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.preheader.i9

bb.b:                                             ; preds = %.loopexit.i, %bb.a
  %indvars.iv146.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next147.i, %.loopexit.i ] ; 18 uses
  %indvars.iv.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i, %.loopexit.i ] ; 15 uses
  %i.af = sub nsw i64 %i.r, %indvars.iv146.i
  %i.ag = sub nsw i64 %i.s, %indvars.iv146.i
  %i.ah = sub nsw i64 %i.s, %indvars.iv146.i
  %i.ai = shl nuw nsw i64 %indvars.iv146.i, 3
  %i.aj = getelementptr i8, ptr %0, i64 %i.ai
  %scevgep27 = getelementptr i8, ptr %i.aj, i64 8
  %i.ak = mul i64 %i.p, %indvars.iv146.i
  %i.al = getelementptr i8, ptr %0, i64 %i.ak
  %scevgep31 = getelementptr i8, ptr %i.al, i64 8
  %i.am = mul i64 %i.q, %indvars.iv146.i
  %scevgep32 = getelementptr i8, ptr %i.t, i64 %i.am
  %i.an = xor i64 %indvars.iv146.i, -1
  %i.ao = add nsw i64 %i.an, %i.g                 ; 10 uses
  %i.ap = mul i64 %i.i, %indvars.iv146.i          ; 3 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ap ; 2 uses
  %scevgep2 = getelementptr i8, ptr %i.v, i64 %i.ap
  %i.aq = shl nuw nsw i64 %indvars.iv146.i, 3
  %scevgep3 = getelementptr i8, ptr %i.x, i64 %i.aq
  %i.ar = getelementptr i8, ptr %0, i64 %i.ap
  %scevgep4 = getelementptr i8, ptr %i.ar, i64 8
  %i.as = mul i64 %i.n, %indvars.iv146.i
  %scevgep5 = getelementptr i8, ptr %i.y, i64 %i.as
  %indvars148.i = trunc i64 %indvars.iv146.i to i32 ; 4 uses
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 3 uses
  %i.at = icmp samesign ult i64 %indvars.iv.next147.i, %i.g ; 2 uses
  br i1 %i.at, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.au = sub nsw i64 %i.r, %indvars.iv146.i
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv146.i ; 10 uses
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv123.i.prol = phi i64 [ %indvars.iv.next124.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i, %.lr.ph.preheader.i ] ; 3 uses
  %.0101111.i.prol = phi i32 [ %.1102.i.prol, %.lr.ph.i.prol ], [ %indvars148.i, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.av = mul nuw nsw i64 %indvars.iv123.i.prol, %i.g
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.av
  %i.aw = load double, ptr %gep.i.prol, align 8, !tbaa !383
  %i.ax = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aw)
  %i.ay = mul nsw i32 %.0101111.i.prol, %2
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !383
  %i.bc = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp reassoc nsz arcp contract afn ogt double %i.ax, %i.bc
  %i.be = trunc nuw nsw i64 %indvars.iv123.i.prol to i32
  %.1102.i.prol = select i1 %i.bd, i32 %i.be, i32 %.0101111.i.prol ; 3 uses
  %indvars.iv.next124.i.prol = add nuw nsw i64 %indvars.iv123.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !499

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.1102.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %.1102.i.prol, %.lr.ph.i.prol ]
  %indvars.iv123.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next124.i.prol, %.lr.ph.i.prol ]
  %.0101111.i.unr = phi i32 [ %indvars148.i, %.lr.ph.preheader.i ], [ %.1102.i.prol, %.lr.ph.i.prol ]
  %i.bf = icmp ult i64 %i.ah, 3
  br i1 %i.bf, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.0101.lcssa.i = phi i32 [ %indvars148.i, %bb.b ], [ %.1102.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.1102.i.3, %.lr.ph.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv146.i
  store i32 %.0101.lcssa.i, ptr %i.bg, align 4, !tbaa !24
  %i.bh = mul nsw i32 %.0101.lcssa.i, %2
  %i.bi = sext i32 %i.bh to i64                   ; 3 uses
  %i.bj = getelementptr [8 x i8], ptr %0, i64 %indvars.iv146.i ; 8 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bi ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !383 ; 7 uses
  %i.bm = mul nuw nsw i64 %indvars.iv146.i, %i.g  ; 2 uses
  %i.bn = mul nuw nsw i32 %2, %indvars148.i
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bo ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !383
  store double %i.bq, ptr %i.bk, align 8, !tbaa !383
  store double %i.bl, ptr %i.bp, align 8, !tbaa !383
  %i.br = fcmp reassoc nsz arcp contract afn une double %i.bl, 0.000000e+00
  br i1 %i.br, label %.preheader110.i, label %gauss_make_triangular.exit.thread

.preheader110.i:                                  ; preds = %._crit_edge.i
  br i1 %i.at, label %.lr.ph114.i.preheader, label %.loopexit.i

.lr.ph114.i.preheader:                            ; preds = %.preheader110.i
  %xtraiter83 = and i64 %i.af, 3                  ; 2 uses
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %.lr.ph114.i.prol.loopexit, label %.lr.ph114.i.prol.preheader

.lr.ph114.i.prol.preheader:                       ; preds = %.lr.ph114.i.preheader
  %i.bs = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bl
  br label %.lr.ph114.i.prol

.lr.ph114.i.prol:                                 ; preds = %.lr.ph114.i.prol, %.lr.ph114.i.prol.preheader
  %indvars.iv126.i.prol = phi i64 [ %indvars.iv.next127.i.prol, %.lr.ph114.i.prol ], [ %indvars.iv.i, %.lr.ph114.i.prol.preheader ] ; 2 uses
  %prol.iter85 = phi i64 [ %prol.iter85.next, %.lr.ph114.i.prol ], [ 0, %.lr.ph114.i.prol.preheader ]
  %i.bt = mul nuw nsw i64 %indvars.iv126.i.prol, %i.g
  %gep155.i.prol = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bt ; 2 uses
  %i.bu = load double, ptr %gep155.i.prol, align 8, !tbaa !383
  %i.bv = fneg reassoc nsz arcp contract afn double %i.bu
  %i.bw = fmul reassoc nsz arcp contract afn double %i.bv, %i.bs
  store double %i.bw, ptr %gep155.i.prol, align 8, !tbaa !383
  %indvars.iv.next127.i.prol = add nuw nsw i64 %indvars.iv126.i.prol, 1 ; 2 uses
  %prol.iter85.next = add i64 %prol.iter85, 1     ; 2 uses
  %prol.iter85.cmp.not = icmp eq i64 %prol.iter85.next, %xtraiter83
  br i1 %prol.iter85.cmp.not, label %.lr.ph114.i.prol.loopexit, label %.lr.ph114.i.prol, !llvm.loop !500

.lr.ph114.i.prol.loopexit:                        ; preds = %.lr.ph114.i.prol, %.lr.ph114.i.preheader
  %indvars.iv126.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph114.i.preheader ], [ %indvars.iv.next127.i.prol, %.lr.ph114.i.prol ]
  %i.bx = icmp ult i64 %i.ag, 3
  br i1 %i.bx, label %._crit_edge115.i, label %.lr.ph114.i.preheader.new

.lr.ph114.i.preheader.new:                        ; preds = %.lr.ph114.i.prol.loopexit
  %i.by = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bl
  %i.bz = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bl
  %i.ca = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bl
  %i.cb = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bl
  br label %.lr.ph114.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv123.i = phi i64 [ %indvars.iv.next124.i.3, %.lr.ph.i ], [ %indvars.iv123.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0101111.i = phi i32 [ %.1102.i.3, %.lr.ph.i ], [ %.0101111.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.cc = mul nuw nsw i64 %indvars.iv123.i, %i.g
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.cc
end_hunk_7
