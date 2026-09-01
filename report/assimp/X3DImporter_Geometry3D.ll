Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/X3DImporter_Geometry3D?download=true
inline.NumInlined: 1396
inline.NumDeleted: 523
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE:bb.a
  %i.afc = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  %i.afd = load ptr, ptr %i.afc, align 8          ; 7 uses
  %i.afe = load ptr, ptr %17, align 8             ; 10 uses
  %i.aff = ptrtoint ptr %i.afd to i64             ; 2 uses
  %i.afg = ptrtoint ptr %i.afe to i64             ; 2 uses
  %i.afh = sub i64 %i.aff, %i.afg                 ; 2 uses
  %i.afi = sdiv exact i64 %i.afh, 24              ; 7 uses
  %i.afj = icmp ugt i64 %i.afb, %i.afi
  br i1 %i.afj, label %bb.db, label %bb.df

bb.db:                                            ; preds = %bb.da
  %i.afk = sub nuw nsw i64 %i.afb, %i.afi         ; 5 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.afm = load ptr, ptr %i.afl, align 8
  %i.afn = ptrtoint ptr %i.afm to i64             ; 2 uses
  %i.afo = sub i64 %i.afn, %i.aff
  %i.afp = sdiv exact i64 %i.afo, 24              ; 2 uses
  %i.afq = icmp ult i64 %i.afi, 384307168202282326
  call void @llvm.assume(i1 %i.afq)
  %i.afr = sub nuw nsw i64 384307168202282325, %i.afi
  %i.afs = icmp ule i64 %i.afp, %i.afr
  call void @llvm.assume(i1 %i.afs)
  %.not28.i673 = icmp ult i64 %i.afp, %i.afk
  br i1 %.not28.i673, label %bb.dc, label %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i: ; preds = %bb.db
  %i.aft = mul nuw nsw i64 %i.afk, 24             ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.afd, i8 0, i64 %i.aft, i1 false)
  %scevgep.i.i.i.i674 = getelementptr i8, ptr %i.afd, i64 %i.aft
  store ptr %scevgep.i.i.i.i674, ptr %i.afc, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.dc:                                            ; preds = %bb.db
  %i.afu = icmp ugt i64 %i.afb, 384307168202282325
  br i1 %i.afu, label %bb.dd, label %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23
          to label %.noexc682 unwind label %bb.dk

.noexc682:                                        ; preds = %bb.dd
  unreachable

_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.dc
  %.sroa.speculated.i.i675 = call i64 @llvm.umax.i64(i64 %i.afi, i64 %i.afk)
  %i.afv = add nuw nsw i64 %.sroa.speculated.i.i675, %i.afi
  %i.afw = call i64 @llvm.umin.i64(i64 %i.afv, i64 384307168202282325) ; 2 uses
  %i.afx = mul nuw nsw i64 %i.afw, 24
  %i.afy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afx) #21
          to label %.noexc683 unwind label %bb.dk ; 5 uses

.noexc683:                                        ; preds = %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 %i.afh ; 2 uses
  %i.aga = mul nuw nsw i64 %i.afk, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.afz, i8 0, i64 %i.aga, i1 false)
  %.not10.i.i.i.i676 = icmp eq ptr %i.afe, %i.afd
  br i1 %.not10.i.i.i.i676, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i677

.lr.ph.i.i.i.i677:                                ; preds = %.noexc683, %.lr.ph.i.i.i.i677
  %.012.i.i.i.i678 = phi ptr [ %i.agg, %.lr.ph.i.i.i.i677 ], [ %i.afy, %.noexc683 ] ; 3 uses
  %.0911.i.i.i.i679 = phi ptr [ %i.agf, %.lr.ph.i.i.i.i677 ], [ %i.afe, %.noexc683 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.agb = load <2 x ptr>, ptr %.0911.i.i.i.i679, align 8, !alias.scope !46, !noalias !43
  store <2 x ptr> %i.agb, ptr %.012.i.i.i.i678, align 8, !alias.scope !43, !noalias !46
  %i.agc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i678, i64 16
  %i.agd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i679, i64 16
  %i.age = load ptr, ptr %i.agd, align 8, !alias.scope !46, !noalias !43
  store ptr %i.age, ptr %i.agc, align 8, !alias.scope !43, !noalias !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i679, i8 0, i64 24, i1 false), !alias.scope !46, !noalias !43
  %i.agf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i679, i64 24 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i678, i64 24
  %.not.i.i.i.i680 = icmp eq ptr %i.agf, %i.afd
  br i1 %.not.i.i.i.i680, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i677, !llvm.loop !48

_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i677, %.noexc683
  %.not.i36.i681 = icmp eq ptr %i.afe, null
  br i1 %.not.i36.i681, label %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.agh = sub i64 %i.afn, %i.afg
  call void @_ZdlPvm(ptr noundef nonnull %i.afe, i64 noundef %i.agh) #22
  br label %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i

_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i: ; preds = %bb.de, %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.afy, ptr %17, align 8
  %i.agi = getelementptr inbounds nuw [24 x i8], ptr %i.afz, i64 %i.afk
  store ptr %i.agi, ptr %i.afc, align 8
  %i.agj = getelementptr inbounds nuw [24 x i8], ptr %i.afy, i64 %i.afw
  store ptr %i.agj, ptr %i.afl, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.df:                                            ; preds = %bb.da
  %i.agk = icmp ult i64 %i.afb, %i.afi
  br i1 %i.agk, label %bb.dg, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.dg:                                            ; preds = %bb.df
  %i.agl = getelementptr inbounds nuw [24 x i8], ptr %i.afe, i64 %i.afb ; 3 uses
  %.not.i.i376 = icmp eq ptr %i.afd, %i.agl
  br i1 %.not.i.i376, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i377

.lr.ph.i.i.i.i377:                                ; preds = %bb.dg, %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ags, %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.agl, %bb.dg ] ; 3 uses
  %i.agm = load ptr, ptr %.05.i.i.i.i, align 8    ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.agm, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph.i.i.i.i377
  %i.agn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ago = load ptr, ptr %i.agn, align 8
  %i.agp = ptrtoint ptr %i.ago to i64
  %i.agq = ptrtoint ptr %i.agm to i64
  %i.agr = sub i64 %i.agp, %i.agq
  call void @_ZdlPvm(ptr noundef nonnull %i.agm, i64 noundef %i.agr) #22
  br label %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.dh, %.lr.ph.i.i.i.i377
  %i.ags = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i378 = icmp eq ptr %i.ags, %i.afd
  br i1 %.not.i.i.i.i378, label %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i377, !llvm.loop !49

_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.agl, ptr %i.afc, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.dg, %bb.df, %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i
  %i.agt = phi ptr [ %i.afe, %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i ], [ %i.afe, %bb.dg ], [ %i.afe, %bb.df ], [ %i.afy, %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i ], [ %i.afe, %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i ]
  %i.agu = load ptr, ptr %i.av, align 8           ; 2 uses
  %i.agv = load ptr, ptr %15, align 8             ; 2 uses
  %.not1043 = icmp eq ptr %i.agu, %i.agv
  br i1 %.not1043, label %._crit_edge1018, label %.lr.ph1017.preheader

.lr.ph1017.preheader:                             ; preds = %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit
  %i.agw = ptrtoint ptr %i.agu to i64
  %i.agx = ptrtoint ptr %i.agv to i64
  %i.agy = sub i64 %i.agw, %i.agx
  %i.agz = sdiv exact i64 %i.agy, 12
  br label %.lr.ph1017

._crit_edge1018:                                  ; preds = %bb.dm, %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit
  %i.aha = load ptr, ptr %18, align 8             ; 3 uses
  %.not.i.i.i380 = icmp eq ptr %i.aha, null
  br i1 %.not.i.i.i380, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.di

bb.di:                                            ; preds = %._crit_edge1018
  %i.ahb = load ptr, ptr %i.aev, align 8
  %i.ahc = ptrtoint ptr %i.ahb to i64
  %i.ahd = ptrtoint ptr %i.aha to i64
  %i.ahe = sub i64 %i.ahc, %i.ahd
  call void @_ZdlPvm(ptr noundef nonnull %i.aha, i64 noundef %i.ahe) #22
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %._crit_edge1018, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.ahf = trunc nuw i8 %.08771345 to i1
  br i1 %i.ahf, label %bb.dn, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.dj:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.cf
  %i.ahg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit402

bb.dk:                                            ; preds = %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i, %bb.dd
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.lr.ph1017:                                       ; preds = %.lr.ph1017.preheader, %bb.dm
  %.02301016 = phi i64 [ %i.aja, %bb.dm ], [ 0, %.lr.ph1017.preheader ] ; 5 uses
  %i.ahi = load ptr, ptr %14, align 8
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.ahi, i64 %.02301016 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 4
  %i.ahl = load float, ptr %i.ahk, align 4
  %i.ahm = load ptr, ptr %i.cb, align 8           ; 2 uses
  %i.ahn = load ptr, ptr %12, align 8             ; 2 uses
  %.not1044 = icmp eq ptr %i.ahm, %i.ahn
  br i1 %.not1044, label %._crit_edge1015, label %.lr.ph1014.preheader

.lr.ph1014.preheader:                             ; preds = %.lr.ph1017
  %i.aho = load float, ptr %i.ahj, align 4
  %i.ahp = ptrtoint ptr %i.ahm to i64
  %i.ahq = ptrtoint ptr %i.ahn to i64
  %i.ahr = sub i64 %i.ahp, %i.ahq
  %i.ahs = ashr exact i64 %i.ahr, 3
  %i.aht = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aho, i64 0
  br label %.lr.ph1014

._crit_edge1015:                                  ; preds = %.lr.ph1014, %.lr.ph1017
  %i.ahu = getelementptr inbounds nuw [24 x i8], ptr %i.agt, i64 %.02301016
  %i.ahv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ahu, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.dm unwind label %bb.dl     ; 0 uses

bb.dl:                                            ; preds = %._crit_edge1015
  %i.ahw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.lr.ph1014:                                       ; preds = %.lr.ph1014.preheader, %.lr.ph1014
  %.02281012 = phi i64 [ %i.aiz, %.lr.ph1014 ], [ 0, %.lr.ph1014.preheader ] ; 4 uses
  %i.ahx = load ptr, ptr %12, align 8
  %i.ahy = getelementptr inbounds nuw [8 x i8], ptr %i.ahx, i64 %.02281012 ; 2 uses
  %20 = load float, ptr %i.ahy, align 4
  %21 = getelementptr inbounds nuw i8, ptr %i.ahy, i64 4
  %22 = load float, ptr %21, align 4              ; 2 uses
  %23 = insertelement <2 x float> poison, float %20, i64 0
  %i.ahz = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aia = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aht, <2 x float> %i.ahz, <2 x float> zeroinitializer) ; 2 uses
  %24 = insertelement <2 x float> poison, float %22, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> zeroinitializer, <2 x float> %i.aia)
  %27 = fadd <2 x float> %26, zeroinitializer
  %i.aib = extractelement <2 x float> %i.aia, i64 1
  %i.aic = call float @llvm.fmuladd.f32(float %i.ahl, float %22, float %i.aib)
  %i.aid = fadd float %i.aic, 0.000000e+00
  %i.aie = load ptr, ptr %18, align 8
  %i.aif = getelementptr inbounds nuw [12 x i8], ptr %i.aie, i64 %.02281012 ; 2 uses
  store <2 x float> %27, ptr %i.aif, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aif, i64 8
  store float %i.aid, ptr %.sroa.4.0..sroa_idx, align 4
  %i.aig = load ptr, ptr %16, align 8
  %i.aih = getelementptr inbounds nuw [36 x i8], ptr %i.aig, i64 %.02301016 ; 6 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 8
  %i.aij = load float, ptr %i.aii, align 4
  %i.aik = load ptr, ptr %18, align 8
  %i.ail = getelementptr inbounds nuw [12 x i8], ptr %i.aik, i64 %.02281012 ; 4 uses
  %28 = load float, ptr %i.ail, align 4           ; 2 uses
  %29 = fmul float %i.aij, %28
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aih, i64 12
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aih, i64 20
  %i.aio = load float, ptr %i.ain, align 4
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ail, i64 4
  %30 = load float, ptr %i.aip, align 4           ; 2 uses
  %31 = fmul float %i.aio, %30
  %32 = getelementptr inbounds nuw i8, ptr %i.aih, i64 24
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aih, i64 32
  %33 = load float, ptr %i.aiq, align 4
  %34 = getelementptr inbounds nuw i8, ptr %i.ail, i64 8 ; 2 uses
  %35 = load float, ptr %34, align 4              ; 2 uses
  %36 = fmul float %33, %35
  %37 = fadd float %29, %31
  %38 = fadd float %37, %36
  %39 = load ptr, ptr %15, align 8
  %40 = getelementptr inbounds nuw [12 x i8], ptr %39, i64 %.02301016 ; 2 uses
  %41 = load <2 x float>, ptr %i.aih, align 4
  %42 = insertelement <2 x float> poison, float %28, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %i.air = fmul <2 x float> %41, %43
  %44 = load <2 x float>, ptr %i.aim, align 4
  %45 = insertelement <2 x float> poison, float %30, i64 0
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ais = fmul <2 x float> %44, %46
  %47 = load <2 x float>, ptr %32, align 4
  %48 = insertelement <2 x float> poison, float %35, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  %50 = fmul <2 x float> %47, %49
  %i.ait = fadd <2 x float> %i.air, %i.ais
  %51 = fadd <2 x float> %i.ait, %50
  %i.aiu = load <2 x float>, ptr %40, align 4
  %i.aiv = fadd <2 x float> %51, %i.aiu
  %i.aiw = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.aix = load float, ptr %i.aiw, align 4
  %i.aiy = fadd float %38, %i.aix
  store <2 x float> %i.aiv, ptr %i.ail, align 4
  store float %i.aiy, ptr %34, align 4
  %i.aiz = add nuw i64 %.02281012, 1              ; 2 uses
  %exitcond1063.not = icmp eq i64 %i.aiz, %i.ahs
  br i1 %exitcond1063.not, label %._crit_edge1015, label %.lr.ph1014, !llvm.loop !50

bb.dm:                                            ; preds = %._crit_edge1015
  %i.aja = add nuw i64 %.02301016, 1              ; 2 uses
  %exitcond1065.not = icmp eq i64 %i.aja, %i.agz
  br i1 %exitcond1065.not, label %._crit_edge1018, label %.lr.ph1017, !llvm.loop !51

bb.dn:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  %i.ajb = load ptr, ptr %i.cb, align 8           ; 2 uses
  %i.ajc = load ptr, ptr %12, align 8             ; 2 uses
  %.not1045 = icmp eq ptr %i.ajb, %i.ajc
  br i1 %.not1045, label %.._crit_edge1022_crit_edge, label %.lr.ph1021

.._crit_edge1022_crit_edge:                       ; preds = %bb.dn
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.mq, i64 160
  %.pre1089 = load ptr, ptr %.phi.trans.insert, align 8
  br label %._crit_edge1022

.lr.ph1021:                                       ; preds = %bb.dn
  %i.ajd = ptrtoint ptr %i.ajb to i64
  %i.aje = ptrtoint ptr %i.ajc to i64
  %i.ajf = sub i64 %i.ajd, %i.aje
  %i.ajg = ashr exact i64 %i.ajf, 3
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.mq, i64 160 ; 4 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.mq, i64 168 ; 3 uses
  %.pre1088 = load ptr, ptr %i.ajh, align 8
  br label %bb.dv

._crit_edge1022:                                  ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit412, %.._crit_edge1022_crit_edge
  %i.ajj = phi ptr [ %.pre1089, %.._crit_edge1022_crit_edge ], [ %i.all, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit412 ] ; 3 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.mq, i64 160 ; 3 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.mq, i64 168 ; 3 uses
  %i.ajm = load ptr, ptr %i.ajl, align 8
  %.not.i.i397 = icmp eq ptr %i.ajj, %i.ajm
  br i1 %.not.i.i397, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %._crit_edge1022
  store i32 -1, ptr %i.ajj, align 4
  %i.ajn = load ptr, ptr %i.ajk, align 8
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 4
  store ptr %i.ajo, ptr %i.ajk, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.dp:                                            ; preds = %._crit_edge1022
  %i.ajp = load ptr, ptr %i.ng, align 8           ; 4 uses
  %i.ajq = ptrtoint ptr %i.ajj to i64
  %i.ajr = ptrtoint ptr %i.ajp to i64             ; 2 uses
  %i.ajs = sub i64 %i.ajq, %i.ajr                 ; 5 uses
  %i.ajt = icmp eq i64 %i.ajs, 9223372036854775804
  br i1 %i.ajt, label %bb.dq, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc399 unwind label %bb.eb

.noexc399:                                        ; preds = %bb.dq
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dp
  %i.aju = ashr exact i64 %i.ajs, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aju, i64 1)
  %i.ajv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aju ; 2 uses
  %i.ajw = icmp ult i64 %i.ajv, %i.aju
  %i.ajx = call i64 @llvm.umin.i64(i64 %i.ajv, i64 2305843009213693951)
  %i.ajy = select i1 %i.ajw, i64 2305843009213693951, i64 %i.ajx ; 3 uses
  %.not.i.i.i.i398 = icmp ne i64 %i.ajy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i398)
  %i.ajz = shl nuw nsw i64 %i.ajy, 2
  %i.aka = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajz) #21
          to label %.noexc400 unwind label %bb.eb ; 4 uses

.noexc400:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.akb = getelementptr inbounds i8, ptr %i.aka, i64 %i.ajs ; 2 uses
  store i32 -1, ptr %i.akb, align 4
  %i.akc = icmp sgt i64 %i.ajs, 0
  br i1 %i.akc, label %bb.dr, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.dr:                                            ; preds = %.noexc400
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aka, ptr align 4 %i.ajp, i64 %i.ajs, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.dr, %.noexc400
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akb, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ajp, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ake = load ptr, ptr %i.ajl, align 8
  %i.akf = ptrtoint ptr %i.ake to i64
  %i.akg = sub i64 %i.akf, %i.ajr
  call void @_ZdlPvm(ptr noundef nonnull %i.ajp, i64 noundef %i.akg) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ds, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aka, ptr %i.ng, align 8
  store ptr %i.akd, ptr %i.ajk, align 8
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.aka, i64 %i.ajy
  store ptr %i.akh, ptr %i.ajl, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.dt:                                            ; preds = %bb.dl, %bb.dk
  %.pn242.pn = phi { ptr, i32 } [ %i.ahh, %bb.dk ], [ %i.ahw, %bb.dl ] ; 2 uses
  %i.aki = load ptr, ptr %18, align 8             ; 3 uses
  %.not.i.i.i401 = icmp eq ptr %i.aki, null
  br i1 %.not.i.i.i401, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit402, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.akj = load ptr, ptr %i.aev, align 8
  %i.akk = ptrtoint ptr %i.akj to i64
  %i.akl = ptrtoint ptr %i.aki to i64
  %i.akm = sub i64 %i.akk, %i.akl
  call void @_ZdlPvm(ptr noundef nonnull %i.aki, i64 noundef %i.akm) #22
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit402

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit402: ; preds = %bb.du, %bb.dt, %bb.dj
  %.pn242.pn.pn = phi { ptr, i32 } [ %i.ahg, %bb.dj ], [ %.pn242.pn, %bb.dt ], [ %.pn242.pn, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.iz

bb.dv:                                            ; preds = %.lr.ph1021, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit412
  %i.akn = phi ptr [ %.pre1088, %.lr.ph1021 ], [ %i.all, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit412 ] ; 3 uses
  %.02101019 = phi i64 [ 0, %.lr.ph1021 ], [ %i.alm, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit412 ] ; 2 uses
  %i.ako = trunc i64 %.02101019 to i32            ; 2 uses
  %i.akp = load ptr, ptr %i.aji, align 8
  %.not.i.i403 = icmp eq ptr %i.akn, %i.akp
  br i1 %.not.i.i403, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  store i32 %i.ako, ptr %i.akn, align 4
  %i.akq = load ptr, ptr %i.ajh, align 8
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 4 ; 2 uses
  store ptr %i.akr, ptr %i.ajh, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit412

bb.dx:                                            ; preds = %bb.dv
  %i.aks = load ptr, ptr %i.ng, align 8           ; 4 uses
  %i.akt = ptrtoint ptr %i.akn to i64
  %i.aku = ptrtoint ptr %i.aks to i64             ; 2 uses
  %i.akv = sub i64 %i.akt, %i.aku                 ; 5 uses
  %i.akw = icmp eq i64 %i.akv, 9223372036854775804
  br i1 %i.akw, label %bb.dy, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i404

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc410 unwind label %.loopexit.split-lp978

.noexc410:                                        ; preds = %bb.dy
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i404: ; preds = %bb.dx
  %i.akx = ashr exact i64 %i.akv, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i405 = call i64 @llvm.umax.i64(i64 %i.akx, i64 1)
  %i.aky = add nsw i64 %.sroa.speculated.i.i.i.i405, %i.akx ; 2 uses
  %i.akz = icmp ult i64 %i.aky, %i.akx
  %i.ala = call i64 @llvm.umin.i64(i64 %i.aky, i64 2305843009213693951)
  %i.alb = select i1 %i.akz, i64 2305843009213693951, i64 %i.ala ; 3 uses
  %.not.i.i.i.i406 = icmp ne i64 %i.alb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i406)
  %i.alc = shl nuw nsw i64 %i.alb, 2
  %i.ald = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alc) #21
          to label %.noexc411 unwind label %.loopexit977 ; 4 uses

.noexc411:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i404
  %i.ale = getelementptr inbounds i8, ptr %i.ald, i64 %i.akv ; 2 uses
  store i32 %i.ako, ptr %i.ale, align 4
  %i.alf = icmp sgt i64 %i.akv, 0
  br i1 %i.alf, label %bb.dz, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i407

bb.dz:                                            ; preds = %.noexc411
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ald, ptr align 4 %i.aks, i64 %i.akv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i407

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i407: ; preds = %bb.dz, %.noexc411
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ale, i64 4 ; 2 uses
  %.not.i17.i.i.i408 = icmp eq ptr %i.aks, null
  br i1 %.not.i17.i.i.i408, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i409, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i407
  %i.alh = load ptr, ptr %i.aji, align 8
  %i.ali = ptrtoint ptr %i.alh to i64
  %i.alj = sub i64 %i.ali, %i.aku
  call void @_ZdlPvm(ptr noundef nonnull %i.aks, i64 noundef %i.alj) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i409

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i409: ; preds = %bb.ea, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i407
  store ptr %i.ald, ptr %i.ng, align 8
  store ptr %i.alg, ptr %i.ajh, align 8
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.ald, i64 %i.alb
  store ptr %i.alk, ptr %i.aji, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit412

_ZNSt6vectorIiSaIiEE9push_backEOi.exit412:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i409, %bb.dw
  %i.all = phi ptr [ %i.alg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i409 ], [ %i.akr, %bb.dw ] ; 2 uses
  %i.alm = add nuw i64 %.02101019, 1              ; 2 uses
  %exitcond1067.not = icmp eq i64 %i.alm, %i.ajg
  br i1 %exitcond1067.not, label %._crit_edge1022, label %bb.dv, !llvm.loop !52

.loopexit977:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i404
end_hunk_0
