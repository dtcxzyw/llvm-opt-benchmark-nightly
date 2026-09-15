Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/X3DImporter_Geometry3D?download=true
inline.NumInlined: 1396
inline.NumDeleted: 523
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE:bb.a
  %i.aea = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  %i.aeb = load ptr, ptr %i.aea, align 8          ; 7 uses
  %i.aec = load ptr, ptr %17, align 8             ; 10 uses
  %i.aed = ptrtoint ptr %i.aeb to i64             ; 2 uses
  %i.aee = ptrtoint ptr %i.aec to i64             ; 2 uses
  %i.aef = sub i64 %i.aed, %i.aee                 ; 2 uses
  %i.aeg = sdiv exact i64 %i.aef, 24              ; 7 uses
  %i.aeh = icmp ugt i64 %i.adz, %i.aeg
  br i1 %i.aeh, label %bb.db, label %bb.df

bb.db:                                            ; preds = %bb.da
  %i.aei = sub nuw nsw i64 %i.adz, %i.aeg         ; 5 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.aek = load ptr, ptr %i.aej, align 8
  %i.ael = ptrtoint ptr %i.aek to i64             ; 2 uses
  %i.aem = sub i64 %i.ael, %i.aed
  %i.aen = sdiv exact i64 %i.aem, 24              ; 2 uses
  %i.aeo = icmp ult i64 %i.aeg, 384307168202282326
  call void @llvm.assume(i1 %i.aeo)
  %i.aep = sub nuw nsw i64 384307168202282325, %i.aeg
  %i.aeq = icmp ule i64 %i.aen, %i.aep
  call void @llvm.assume(i1 %i.aeq)
  %.not28.i673 = icmp ult i64 %i.aen, %i.aei
  br i1 %.not28.i673, label %bb.dc, label %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i: ; preds = %bb.db
  %i.aer = mul nuw nsw i64 %i.aei, 24             ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.aeb, i8 0, i64 %i.aer, i1 false)
  %scevgep.i.i.i.i674 = getelementptr i8, ptr %i.aeb, i64 %i.aer
  store ptr %scevgep.i.i.i.i674, ptr %i.aea, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.dc:                                            ; preds = %bb.db
  %i.aes = icmp ugt i64 %i.adz, 384307168202282325
  br i1 %i.aes, label %bb.dd, label %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23
          to label %.noexc682 unwind label %bb.dk

.noexc682:                                        ; preds = %bb.dd
  unreachable

_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.dc
  %.sroa.speculated.i.i675 = call i64 @llvm.umax.i64(i64 %i.aeg, i64 %i.aei)
  %i.aet = add nuw nsw i64 %.sroa.speculated.i.i675, %i.aeg
  %i.aeu = call i64 @llvm.umin.i64(i64 %i.aet, i64 384307168202282325) ; 2 uses
  %i.aev = mul nuw nsw i64 %i.aeu, 24
  %i.aew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aev) #21
          to label %.noexc683 unwind label %bb.dk ; 5 uses

.noexc683:                                        ; preds = %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 %i.aef ; 2 uses
  %i.aey = mul nuw nsw i64 %i.aei, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aex, i8 0, i64 %i.aey, i1 false)
  %.not10.i.i.i.i676 = icmp eq ptr %i.aec, %i.aeb
  br i1 %.not10.i.i.i.i676, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i677

.lr.ph.i.i.i.i677:                                ; preds = %.noexc683, %.lr.ph.i.i.i.i677
  %.012.i.i.i.i678 = phi ptr [ %i.afe, %.lr.ph.i.i.i.i677 ], [ %i.aew, %.noexc683 ] ; 3 uses
  %.0911.i.i.i.i679 = phi ptr [ %i.afd, %.lr.ph.i.i.i.i677 ], [ %i.aec, %.noexc683 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.aez = load <2 x ptr>, ptr %.0911.i.i.i.i679, align 8, !alias.scope !59, !noalias !58
  store <2 x ptr> %i.aez, ptr %.012.i.i.i.i678, align 8, !alias.scope !58, !noalias !59
  %i.afa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i678, i64 16
  %i.afb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i679, i64 16
  %i.afc = load ptr, ptr %i.afb, align 8, !alias.scope !59, !noalias !58
  store ptr %i.afc, ptr %i.afa, align 8, !alias.scope !58, !noalias !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i679, i8 0, i64 24, i1 false), !alias.scope !59, !noalias !58
  %i.afd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i679, i64 24 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i678, i64 24
  %.not.i.i.i.i680 = icmp eq ptr %i.afd, %i.aeb
  br i1 %.not.i.i.i.i680, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i677, !llvm.loop !44

_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i677, %.noexc683
  %.not.i36.i681 = icmp eq ptr %i.aec, null
  br i1 %.not.i36.i681, label %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.aff = sub i64 %i.ael, %i.aee
  call void @_ZdlPvm(ptr noundef nonnull %i.aec, i64 noundef %i.aff) #22
  br label %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i

_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i: ; preds = %bb.de, %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.aew, ptr %17, align 8
  %i.afg = getelementptr inbounds nuw [24 x i8], ptr %i.aex, i64 %i.aei
  store ptr %i.afg, ptr %i.aea, align 8
  %i.afh = getelementptr inbounds nuw [24 x i8], ptr %i.aew, i64 %i.aeu
  store ptr %i.afh, ptr %i.aej, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.df:                                            ; preds = %bb.da
  %i.afi = icmp ult i64 %i.adz, %i.aeg
  br i1 %i.afi, label %bb.dg, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.dg:                                            ; preds = %bb.df
  %i.afj = getelementptr inbounds nuw [24 x i8], ptr %i.aec, i64 %i.adz ; 3 uses
  %.not.i.i376 = icmp eq ptr %i.aeb, %i.afj
  br i1 %.not.i.i376, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i377

.lr.ph.i.i.i.i377:                                ; preds = %bb.dg, %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.afq, %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.afj, %bb.dg ] ; 3 uses
  %i.afk = load ptr, ptr %.05.i.i.i.i, align 8    ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.afk, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph.i.i.i.i377
  %i.afl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.afm = load ptr, ptr %i.afl, align 8
  %i.afn = ptrtoint ptr %i.afm to i64
  %i.afo = ptrtoint ptr %i.afk to i64
  %i.afp = sub i64 %i.afn, %i.afo
  call void @_ZdlPvm(ptr noundef nonnull %i.afk, i64 noundef %i.afp) #22
  br label %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.dh, %.lr.ph.i.i.i.i377
  %i.afq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i378 = icmp eq ptr %i.afq, %i.aeb
  br i1 %.not.i.i.i.i378, label %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i377, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.afj, ptr %i.aea, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.dg, %bb.df, %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i
  %i.afr = phi ptr [ %i.aec, %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i ], [ %i.aec, %bb.dg ], [ %i.aec, %bb.df ], [ %i.aew, %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i ], [ %i.aec, %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i ]
  %i.afs = load ptr, ptr %i.av, align 8           ; 2 uses
  %i.aft = load ptr, ptr %15, align 8             ; 2 uses
  %.not1043 = icmp eq ptr %i.afs, %i.aft
  br i1 %.not1043, label %._crit_edge1018, label %.lr.ph1017.preheader

.lr.ph1017.preheader:                             ; preds = %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit
  %i.afu = ptrtoint ptr %i.afs to i64
  %i.afv = ptrtoint ptr %i.aft to i64
  %i.afw = sub i64 %i.afu, %i.afv
  %i.afx = sdiv exact i64 %i.afw, 12
  br label %.lr.ph1017

._crit_edge1018:                                  ; preds = %bb.dm, %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit
  %i.afy = load ptr, ptr %18, align 8             ; 3 uses
  %.not.i.i.i380 = icmp eq ptr %i.afy, null
  br i1 %.not.i.i.i380, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.di

bb.di:                                            ; preds = %._crit_edge1018
  %i.afz = load ptr, ptr %i.adt, align 8
  %i.aga = ptrtoint ptr %i.afz to i64
  %i.agb = ptrtoint ptr %i.afy to i64
  %i.agc = sub i64 %i.aga, %i.agb
  call void @_ZdlPvm(ptr noundef nonnull %i.afy, i64 noundef %i.agc) #22
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %._crit_edge1018, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.agd = trunc nuw i8 %.08771345 to i1
  br i1 %i.agd, label %bb.dn, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.dj:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.cf
  %i.age = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit402

bb.dk:                                            ; preds = %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i, %bb.dd
  %i.agf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.lr.ph1017:                                       ; preds = %.lr.ph1017.preheader, %bb.dm
  %.02301016 = phi i64 [ %i.aim, %bb.dm ], [ 0, %.lr.ph1017.preheader ] ; 5 uses
  %i.agg = load ptr, ptr %14, align 8
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.agg, i64 %.02301016 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 4
  %i.agj = load float, ptr %i.agi, align 4
  %i.agk = load ptr, ptr %i.cb, align 8           ; 2 uses
  %i.agl = load ptr, ptr %12, align 8             ; 2 uses
  %.not1044 = icmp eq ptr %i.agk, %i.agl
  br i1 %.not1044, label %._crit_edge1015, label %.lr.ph1014.preheader

.lr.ph1014.preheader:                             ; preds = %.lr.ph1017
  %i.agm = load float, ptr %i.agh, align 4
  %i.agn = ptrtoint ptr %i.agk to i64
  %i.ago = ptrtoint ptr %i.agl to i64
  %i.agp = sub i64 %i.agn, %i.ago
  %i.agq = ashr exact i64 %i.agp, 3
  %i.agr = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.agm, i64 0
  br label %.lr.ph1014

._crit_edge1015:                                  ; preds = %.lr.ph1014, %.lr.ph1017
  %i.ags = getelementptr inbounds nuw [24 x i8], ptr %i.afr, i64 %.02301016
  %i.agt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ags, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.dm unwind label %bb.dl     ; 0 uses

bb.dl:                                            ; preds = %._crit_edge1015
  %i.agu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.lr.ph1014:                                       ; preds = %.lr.ph1014.preheader, %.lr.ph1014
  %.02281012 = phi i64 [ %i.ail, %.lr.ph1014 ], [ 0, %.lr.ph1014.preheader ] ; 4 uses
  %i.agv = load ptr, ptr %12, align 8
  %i.agw = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %.02281012 ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.agw, i64 4
  %21 = load float, ptr %i.agw, align 4
  %22 = load float, ptr %20, align 4              ; 2 uses
  %23 = insertelement <2 x float> poison, float %21, i64 0
  %i.agx = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agr, <2 x float> %i.agx, <2 x float> zeroinitializer) ; 2 uses
  %24 = insertelement <2 x float> poison, float %22, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> zeroinitializer, <2 x float> %i.agy)
  %27 = fadd <2 x float> %26, zeroinitializer
  %i.agz = extractelement <2 x float> %i.agy, i64 1
  %i.aha = call float @llvm.fmuladd.f32(float %i.agj, float %22, float %i.agz)
  %i.ahb = fadd float %i.aha, 0.000000e+00
  %i.ahc = load ptr, ptr %18, align 8
  %i.ahd = getelementptr inbounds nuw [12 x i8], ptr %i.ahc, i64 %.02281012 ; 2 uses
  store <2 x float> %27, ptr %i.ahd, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  store float %i.ahb, ptr %.sroa.4.0..sroa_idx, align 4
  %i.ahe = load ptr, ptr %16, align 8
  %i.ahf = getelementptr inbounds nuw [36 x i8], ptr %i.ahe, i64 %.02301016 ; 6 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ahh = load float, ptr %i.ahg, align 4
  %i.ahi = load ptr, ptr %18, align 8
  %i.ahj = getelementptr inbounds nuw [12 x i8], ptr %i.ahi, i64 %.02281012 ; 4 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahf, i64 12
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahf, i64 20
  %i.ahm = load float, ptr %i.ahl, align 4
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahj, i64 4
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahf, i64 24
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahf, i64 32
  %i.ahq = load float, ptr %i.ahp, align 4
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8 ; 2 uses
  %i.ahs = load ptr, ptr %15, align 8
  %i.aht = getelementptr inbounds nuw [12 x i8], ptr %i.ahs, i64 %.02301016 ; 2 uses
  %i.ahu = load <2 x float>, ptr %i.ahf, align 4
  %28 = load float, ptr %i.ahr, align 4           ; 2 uses
  %29 = load float, ptr %i.ahn, align 4           ; 2 uses
  %i.ahv = load float, ptr %i.ahj, align 4        ; 2 uses
  %30 = insertelement <2 x float> poison, float %i.ahv, i64 0
  %i.ahw = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahx = fmul <2 x float> %i.ahu, %i.ahw
  %31 = fmul float %i.ahh, %i.ahv
  %32 = load <2 x float>, ptr %i.ahk, align 4
  %33 = insertelement <2 x float> poison, float %29, i64 0
  %34 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahy = fmul <2 x float> %32, %34
  %i.ahz = fmul float %i.ahm, %29
  %i.aia = load <2 x float>, ptr %i.aho, align 4
  %35 = insertelement <2 x float> poison, float %28, i64 0
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  %37 = fmul <2 x float> %i.aia, %36
  %i.aib = fmul float %i.ahq, %28
  %i.aic = fadd <2 x float> %i.ahx, %i.ahy
  %i.aid = fadd float %31, %i.ahz
  %i.aie = fadd <2 x float> %i.aic, %37
  %i.aif = fadd float %i.aid, %i.aib
  %i.aig = load <2 x float>, ptr %i.aht, align 4
  %i.aih = fadd <2 x float> %i.aie, %i.aig
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  %i.aij = load float, ptr %i.aii, align 4
  %i.aik = fadd float %i.aif, %i.aij
  store <2 x float> %i.aih, ptr %i.ahj, align 4
  store float %i.aik, ptr %i.ahr, align 4
  %i.ail = add nuw i64 %.02281012, 1              ; 2 uses
  %exitcond1063.not = icmp eq i64 %i.ail, %i.agq
  br i1 %exitcond1063.not, label %._crit_edge1015, label %.lr.ph1014, !llvm.loop !45

bb.dm:                                            ; preds = %._crit_edge1015
  %i.aim = add nuw i64 %.02301016, 1              ; 2 uses
  %exitcond1065.not = icmp eq i64 %i.aim, %i.afx
  br i1 %exitcond1065.not, label %._crit_edge1018, label %.lr.ph1017, !llvm.loop !46

bb.dn:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  %i.ain = load ptr, ptr %i.cb, align 8           ; 2 uses
  %i.aio = load ptr, ptr %12, align 8             ; 2 uses
  %.not1045 = icmp eq ptr %i.ain, %i.aio
  br i1 %.not1045, label %.._crit_edge1022_crit_edge, label %.lr.ph1021

.._crit_edge1022_crit_edge:                       ; preds = %bb.dn
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.lo, i64 160
  %.pre1089 = load ptr, ptr %.phi.trans.insert, align 8
  br label %._crit_edge1022

.lr.ph1021:                                       ; preds = %bb.dn
  %i.aip = ptrtoint ptr %i.ain to i64
  %i.aiq = ptrtoint ptr %i.aio to i64
  %i.air = sub i64 %i.aip, %i.aiq
  %i.ais = ashr exact i64 %i.air, 3
  %i.ait = getelementptr inbounds nuw i8, ptr %i.lo, i64 160 ; 4 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.lo, i64 168 ; 3 uses
  %.pre1088 = load ptr, ptr %i.ait, align 8
  br label %bb.dv

._crit_edge1022:                                  ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit412, %.._crit_edge1022_crit_edge
  %i.aiv = phi ptr [ %.pre1089, %.._crit_edge1022_crit_edge ], [ %i.akx, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit412 ] ; 3 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.lo, i64 160 ; 3 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.lo, i64 168 ; 3 uses
  %i.aiy = load ptr, ptr %i.aix, align 8
  %.not.i.i397 = icmp eq ptr %i.aiv, %i.aiy
  br i1 %.not.i.i397, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %._crit_edge1022
  store i32 -1, ptr %i.aiv, align 4
  %i.aiz = load ptr, ptr %i.aiw, align 8
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 4
  store ptr %i.aja, ptr %i.aiw, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.dp:                                            ; preds = %._crit_edge1022
  %i.ajb = load ptr, ptr %i.me, align 8           ; 4 uses
  %i.ajc = ptrtoint ptr %i.aiv to i64
  %i.ajd = ptrtoint ptr %i.ajb to i64             ; 2 uses
  %i.aje = sub i64 %i.ajc, %i.ajd                 ; 5 uses
  %i.ajf = icmp eq i64 %i.aje, 9223372036854775804
  br i1 %i.ajf, label %bb.dq, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc399 unwind label %bb.eb

.noexc399:                                        ; preds = %bb.dq
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dp
  %i.ajg = ashr exact i64 %i.aje, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ajg, i64 1)
  %i.ajh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ajg ; 2 uses
  %i.aji = icmp ult i64 %i.ajh, %i.ajg
  %i.ajj = call i64 @llvm.umin.i64(i64 %i.ajh, i64 2305843009213693951)
  %i.ajk = select i1 %i.aji, i64 2305843009213693951, i64 %i.ajj ; 3 uses
  %.not.i.i.i.i398 = icmp ne i64 %i.ajk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i398)
  %i.ajl = shl nuw nsw i64 %i.ajk, 2
  %i.ajm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajl) #21
          to label %.noexc400 unwind label %bb.eb ; 4 uses

.noexc400:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ajn = getelementptr inbounds i8, ptr %i.ajm, i64 %i.aje ; 2 uses
  store i32 -1, ptr %i.ajn, align 4
  %i.ajo = icmp sgt i64 %i.aje, 0
  br i1 %i.ajo, label %bb.dr, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.dr:                                            ; preds = %.noexc400
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ajm, ptr align 4 %i.ajb, i64 %i.aje, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.dr, %.noexc400
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajn, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ajb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ajq = load ptr, ptr %i.aix, align 8
  %i.ajr = ptrtoint ptr %i.ajq to i64
  %i.ajs = sub i64 %i.ajr, %i.ajd
  call void @_ZdlPvm(ptr noundef nonnull %i.ajb, i64 noundef %i.ajs) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ds, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ajm, ptr %i.me, align 8
  store ptr %i.ajp, ptr %i.aiw, align 8
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.ajm, i64 %i.ajk
  store ptr %i.ajt, ptr %i.aix, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.dt:                                            ; preds = %bb.dl, %bb.dk
  %.pn242.pn = phi { ptr, i32 } [ %i.agf, %bb.dk ], [ %i.agu, %bb.dl ] ; 2 uses
  %i.aju = load ptr, ptr %18, align 8             ; 3 uses
  %.not.i.i.i401 = icmp eq ptr %i.aju, null
  br i1 %.not.i.i.i401, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit402, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ajv = load ptr, ptr %i.adt, align 8
  %i.ajw = ptrtoint ptr %i.ajv to i64
  %i.ajx = ptrtoint ptr %i.aju to i64
  %i.ajy = sub i64 %i.ajw, %i.ajx
  call void @_ZdlPvm(ptr noundef nonnull %i.aju, i64 noundef %i.ajy) #22
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit402

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit402: ; preds = %bb.du, %bb.dt, %bb.dj
  %.pn242.pn.pn = phi { ptr, i32 } [ %i.age, %bb.dj ], [ %.pn242.pn, %bb.dt ], [ %.pn242.pn, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.iz

bb.dv:                                            ; preds = %.lr.ph1021, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit412
  %i.ajz = phi ptr [ %.pre1088, %.lr.ph1021 ], [ %i.akx, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit412 ] ; 3 uses
  %.02101019 = phi i64 [ 0, %.lr.ph1021 ], [ %i.aky, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit412 ] ; 2 uses
  %i.aka = trunc i64 %.02101019 to i32            ; 2 uses
  %i.akb = load ptr, ptr %i.aiu, align 8
  %.not.i.i403 = icmp eq ptr %i.ajz, %i.akb
  br i1 %.not.i.i403, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  store i32 %i.aka, ptr %i.ajz, align 4
  %i.akc = load ptr, ptr %i.ait, align 8
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 4 ; 2 uses
  store ptr %i.akd, ptr %i.ait, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit412

bb.dx:                                            ; preds = %bb.dv
  %i.ake = load ptr, ptr %i.me, align 8           ; 4 uses
  %i.akf = ptrtoint ptr %i.ajz to i64
  %i.akg = ptrtoint ptr %i.ake to i64             ; 2 uses
  %i.akh = sub i64 %i.akf, %i.akg                 ; 5 uses
  %i.aki = icmp eq i64 %i.akh, 9223372036854775804
  br i1 %i.aki, label %bb.dy, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i404

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc410 unwind label %.loopexit.split-lp978

.noexc410:                                        ; preds = %bb.dy
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i404: ; preds = %bb.dx
  %i.akj = ashr exact i64 %i.akh, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i405 = call i64 @llvm.umax.i64(i64 %i.akj, i64 1)
  %i.akk = add nsw i64 %.sroa.speculated.i.i.i.i405, %i.akj ; 2 uses
  %i.akl = icmp ult i64 %i.akk, %i.akj
  %i.akm = call i64 @llvm.umin.i64(i64 %i.akk, i64 2305843009213693951)
  %i.akn = select i1 %i.akl, i64 2305843009213693951, i64 %i.akm ; 3 uses
  %.not.i.i.i.i406 = icmp ne i64 %i.akn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i406)
  %i.ako = shl nuw nsw i64 %i.akn, 2
  %i.akp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ako) #21
          to label %.noexc411 unwind label %.loopexit977 ; 4 uses

.noexc411:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i404
  %i.akq = getelementptr inbounds i8, ptr %i.akp, i64 %i.akh ; 2 uses
  store i32 %i.aka, ptr %i.akq, align 4
  %i.akr = icmp sgt i64 %i.akh, 0
  br i1 %i.akr, label %bb.dz, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i407

bb.dz:                                            ; preds = %.noexc411
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.akp, ptr align 4 %i.ake, i64 %i.akh, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i407

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i407: ; preds = %bb.dz, %.noexc411
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akq, i64 4 ; 2 uses
  %.not.i17.i.i.i408 = icmp eq ptr %i.ake, null
  br i1 %.not.i17.i.i.i408, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i409, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i407
  %i.akt = load ptr, ptr %i.aiu, align 8
  %i.aku = ptrtoint ptr %i.akt to i64
  %i.akv = sub i64 %i.aku, %i.akg
  call void @_ZdlPvm(ptr noundef nonnull %i.ake, i64 noundef %i.akv) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i409

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i409: ; preds = %bb.ea, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i407
  store ptr %i.akp, ptr %i.me, align 8
  store ptr %i.aks, ptr %i.ait, align 8
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.akp, i64 %i.akn
  store ptr %i.akw, ptr %i.aiu, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit412
end_hunk_0
