Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/calculator?download=true
inline.NumInlined: 8941
inline.NumDeleted: 2472
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5nblib13computeForcesISt5arrayIiLm3EENS_10PairLJTypeENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES7_NS_9PbcHolderEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_:bb.a
  %i.ed = sext i32 %i.ec to i64
  %i.ee = urem i64 %i.ed, %i.dq
  %.not19.i.i.i.i52 = icmp eq i64 %i.ee, %i.dr
  br i1 %.not19.i.i.i.i52, label %bb.aa, label %..loopexit_crit_edge21.i.i.i.i53, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i53:                 ; preds = %bb.ab
  br label %.loopexit.i.i54, !llvm.loop !6

.loopexit.i.i54:                                  ; preds = %.lr.ph.i.i.i.i49, %..loopexit_crit_edge21.i.i.i.i53, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit36
  %i.ef = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ef, align 8, !tbaa !42
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i32 %.sroa.095.4.extract.trunc, ptr %i.eg, align 8, !tbaa !240
  %i.eh = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.dr, i64 noundef %i.j, ptr noundef nonnull %i.ef, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i55

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i55: ; preds = %.loopexit.i.i54
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58: ; preds = %bb.aa, %bb.z, %.loopexit.i.i54
  %.pn.i.i56 = phi ptr [ %i.eh, %.loopexit.i.i54 ], [ %i.dv, %bb.z ], [ %i.ea, %bb.aa ]
  %.1.i.i57 = getelementptr inbounds nuw i8, ptr %.pn.i.i56, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_10PairLJTypeES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEENS_11G96BondTypeENS_13CubicBondTypeENS_13MorseBondTypeENSC_INS_21FENEBondTypeParameterEEENSC_INS_38HalfAttractiveQuarticBondTypeParameterEEES6_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS13_IKSU_EEPT_NS13_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_10PairLJTypeES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEENS_11G96BondTypeENS_13CubicBondTypeENS_13MorseBondTypeENSC_INS_21FENEBondTypeParameterEEENSC_INS_38HalfAttractiveQuarticBondTypeParameterEEES6_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS13_IKSU_EEPT_NS13_IT2_EERKT3_.exit: ; preds = %bb.p, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58
  %.0.i.i = phi ptr [ %i.cg, %bb.p ], [ %.1.i.i57, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58 ] ; 3 uses
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %11, align 8 ; 4 uses
  %.sroa.210.0.copyload.i = load float, ptr %.sroa.210.0..sroa_idx.i, align 8, !tbaa !185 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.09.0.copyload.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.09.0.copyload.i, %.sroa.09.0.copyload.i
  %i.ej = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ek = call float @llvm.fmuladd.f32(float %.sroa.03.0.vec.extract.i, float %.sroa.03.0.vec.extract.i, float %i.ej)
  %i.el = call noundef float @llvm.fmuladd.f32(float %.sroa.210.0.copyload.i, float %.sroa.210.0.copyload.i, float %i.ek) ; 2 uses
  %sqrt = call float @llvm.sqrt.f32(float %i.el)  ; 2 uses
  %i.em = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.en = fmul float %i.em, %i.em                 ; 3 uses
  %i.eo = fmul float %i.en, %i.en
  %i.ep = fmul float %i.en, %i.eo                 ; 4 uses
  %i.eq = fneg float %i.n
  %i.er = call float @llvm.fmuladd.f32(float %i.o, float %i.ep, float %i.eq)
  %i.es = fmul float %i.ep, %i.er
  %i.et = fcmp une float %i.el, 0.000000e+00
  br i1 %i.et, label %bb.ac, label %_ZN5nblib16computeTwoCenterINS_10PairLJTypeEN3gmx11BasicVectorIfEES4_EEDaRKT_RKT0_PS8_SB_PT1_SD_.exit

bb.ac:                                            ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_10PairLJTypeES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEENS_11G96BondTypeENS_13CubicBondTypeENS_13MorseBondTypeENSC_INS_21FENEBondTypeParameterEEENSC_INS_38HalfAttractiveQuarticBondTypeParameterEEES6_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS13_IKSU_EEPT_NS13_IT2_EERKT3_.exit
  %i.eu = fmul float %i.o, 1.200000e+01
  %i.ev = fmul float %i.n, -6.000000e+00
  %i.ew = call float @llvm.fmuladd.f32(float %i.eu, float %i.ep, float %i.ev)
  %i.ex = fmul float %i.ep, %i.ew
  %i.ey = fmul float %i.em, %i.ex
  %i.ez = fdiv float %i.ey, %sqrt                 ; 2 uses
  %i.fa = fmul float %.sroa.210.0.copyload.i, %i.ez ; 4 uses
  %i.fb = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x float> %i.fc, %.sroa.09.0.copyload.i ; 4 uses
  %i.fe = load <2 x float>, ptr %.0.i11.i, align 4, !tbaa !169
  %i.ff = fadd <2 x float> %i.fd, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 8 ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !169
  %i.fi = fadd float %i.fa, %i.fh
  store <2 x float> %i.ff, ptr %.0.i11.i, align 4
  store float %i.fi, ptr %i.fg, align 4, !tbaa !185
  %i.fj = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.fk = fsub <2 x float> %i.fj, %i.fd
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !169
  %i.fn = fsub float %i.fm, %i.fa
  store <2 x float> %i.fk, ptr %.0.i.i, align 4
  store float %i.fn, ptr %i.fl, align 4, !tbaa !185
  %i.fo = load <2 x float>, ptr %i.r, align 4, !tbaa !169
  %i.fp = fadd <2 x float> %i.fd, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !169
  %i.fs = fadd float %i.fa, %i.fr
  store <2 x float> %i.fp, ptr %i.r, align 4
  store float %i.fs, ptr %i.fq, align 4, !tbaa !185
  %i.ft = load <2 x float>, ptr %i.s, align 4, !tbaa !169
  %i.fu = fsub <2 x float> %i.ft, %i.fd
  %i.fv = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !169
  %i.fx = fsub float %i.fw, %i.fa
  store <2 x float> %i.fu, ptr %i.s, align 4
  store float %i.fx, ptr %i.fv, align 4, !tbaa !185
  br label %_ZN5nblib16computeTwoCenterINS_10PairLJTypeEN3gmx11BasicVectorIfEES4_EEDaRKT_RKT0_PS8_SB_PT1_SD_.exit

_ZN5nblib16computeTwoCenterINS_10PairLJTypeEN3gmx11BasicVectorIfEES4_EEDaRKT_RKT0_PS8_SB_PT1_SD_.exit: ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_10PairLJTypeES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEENS_11G96BondTypeENS_13CubicBondTypeENS_13MorseBondTypeENSC_INS_21FENEBondTypeParameterEEENSC_INS_38HalfAttractiveQuarticBondTypeParameterEEES6_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS13_IKSU_EEPT_NS13_IT2_EERKT3_.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %.sroa.073.0.vec.extract = extractelement <2 x float> %.sroa.073.0143, i64 0
  %i.fy = fadd float %.sroa.073.0.vec.extract, %i.es
  %.sroa.073.0.vec.insert = insertelement <2 x float> %.sroa.073.0143, float %i.fy, i64 0 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.065.0144, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.fz, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES9_NS_9PbcHolderEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef") align 8 %7, ptr noundef nonnull align 4 dereferenceable(384) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0184 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0177 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0171 = alloca [3 x float], align 4       ; 6 uses
  %9 = alloca %"class.gmx::BasicVector", align 4  ; 5 uses
  %10 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %11 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %12 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %13 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %14 = alloca %"class.gmx::BasicVector", align 4 ; 3 uses
  %.not235 = icmp eq ptr %0, %1
  br i1 %.not235, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0113.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0113.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0113.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0105.0237 = phi ptr [ %0, %.lr.ph ], [ %i.lb, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0113.0236 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0113.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0105.0237, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0105.0237, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !216    ; 4 uses
  %.sroa.0166.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0166.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0166.4.extract.trunc = trunc nuw i64 %.sroa.0166.4.extract.shift to i32 ; 11 uses
  %.sroa.5167.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.h = ashr exact i64 %sext, 32                 ; 7 uses
  %i.i = getelementptr inbounds [12 x i8], ptr %4, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.j = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.k = getelementptr inbounds [12 x i8], ptr %4, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %sext203 = shl i64 %.sroa.2.0.copyload, 32
  %i.l = ashr exact i64 %sext203, 32              ; 7 uses
  %i.m = getelementptr inbounds [12 x i8], ptr %4, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %i.m, i64 12, i1 false), !tbaa.struct !186
  %i.n = ashr i64 %.sroa.2.0.copyload, 32
  %i.o = getelementptr inbounds [8 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.p = load float, ptr %i.o, align 4            ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load float, ptr %.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.r = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %12)
  %i.s = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %13)
  %i.t = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %14) ; 0 uses
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.u ; 3 uses
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 2 uses
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %12, align 8 ; 4 uses
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 8, !tbaa !185 ; 5 uses
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %13, align 8 ; 4 uses
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !185 ; 5 uses
  %.sroa.033.0.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.i, i64 0 ; 3 uses
  %i.z = fpext float %.sroa.033.0.vec.extract.i to double ; 3 uses
  %.sroa.033.4.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.i, i64 1 ; 3 uses
  %i.aa = fpext float %.sroa.033.4.vec.extract.i to double ; 3 uses
  %i.ab = fpext float %.sroa.28.0.copyload.i to double ; 3 uses
  %.sroa.031.0.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 0 ; 3 uses
  %i.ac = fpext float %.sroa.031.0.vec.extract.i to double ; 3 uses
  %.sroa.031.4.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 1 ; 3 uses
  %i.ad = fpext float %.sroa.031.4.vec.extract.i to double ; 3 uses
  %i.ae = fpext float %.sroa.26.0.copyload.i to double ; 3 uses
  %i.af = fmul double %i.aa, %i.aa
  %i.ag = call double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.af)
  %i.ah = call noundef double @llvm.fmuladd.f64(double %i.ab, double %i.ab, double %i.ag)
  %i.ai = fmul double %i.ad, %i.ad
  %i.aj = call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.ai)
  %i.ak = call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %i.aj)
  %i.al = fmul double %i.ah, %i.ak                ; 2 uses
  %i.am = fcmp ogt double %i.al, 0.000000e+00
  br i1 %i.am, label %bb.c, label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

bb.c:                                             ; preds = %bb.b
  %i.an = fmul double %i.aa, %i.ad
  %i.ao = call double @llvm.fmuladd.f64(double %i.z, double %i.ac, double %i.an)
  %i.ap = call noundef double @llvm.fmuladd.f64(double %i.ab, double %i.ae, double %i.ao)
  %i.aq = call nnan double @llvm.sqrt.f64(double %i.al)
  %i.ar = fdiv nnan double 1.000000e+00, %i.aq
  %i.as = fmul double %i.ap, %i.ar
  %i.at = fptrunc double %i.as to float
  br label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit: ; preds = %bb.b, %bb.c
  %i.au = phi float [ %i.at, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.av = fcmp ogt float %i.au, 1.000000e+00
  %.sroa.speculated7.i = select i1 %i.av, float 1.000000e+00, float %i.au ; 2 uses
  %i.aw = fcmp olt float %.sroa.speculated7.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.aw, float -1.000000e+00, float %.sroa.speculated7.i ; 4 uses
  %i.ax = call noundef float @acosf(float noundef %.sroa.speculated.i) #9
  %i.ay = fsub float %i.ax, %i.q                  ; 3 uses
  %i.az = fmul float %i.ay, %i.ay
  %i.ba = fpext float %i.p to double
  %i.bb = fmul double %i.ba, 5.000000e-01
  %i.bc = fpext float %i.az to double
  %i.bd = fmul double %i.bb, %i.bc
  %i.be = fptrunc double %i.bd to float
  %i.bf = fmul float %.sroa.speculated.i, %.sroa.speculated.i ; 2 uses
  %i.bg = fcmp olt float %i.bf, 1.000000e+00
  br i1 %i.bg, label %bb.d, label %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit

bb.d:                                             ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit
  %i.bh = fneg float %i.p
  %i.bi = fmul float %i.ay, %i.bh
  %i.bj = fsub float 1.000000e+00, %i.bf
  %i.bk = call noundef float @sqrtf(float noundef %i.bj) #9
  %i.bl = fdiv float %i.bi, %i.bk                 ; 2 uses
  %i.bm = fmul float %.sroa.speculated.i, %i.bl   ; 2 uses
  %i.bn = fmul float %.sroa.033.4.vec.extract.i, %.sroa.033.4.vec.extract.i
  %i.bo = call float @llvm.fmuladd.f32(float %.sroa.033.0.vec.extract.i, float %.sroa.033.0.vec.extract.i, float %i.bn)
  %i.bp = fmul float %.sroa.031.4.vec.extract.i, %.sroa.031.4.vec.extract.i
  %i.bq = call float @llvm.fmuladd.f32(float %.sroa.031.0.vec.extract.i, float %.sroa.031.0.vec.extract.i, float %i.bp)
  %i.br = call noundef float @llvm.fmuladd.f32(float %.sroa.28.0.copyload.i, float %.sroa.28.0.copyload.i, float %i.bo) ; 2 uses
  %i.bs = fdiv float %i.bm, %i.br                 ; 2 uses
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %.sroa.07.0.copyload.i, %i.bu
  %i.bw = fmul float %.sroa.28.0.copyload.i, %i.bs
  %i.bx = call noundef float @llvm.fmuladd.f32(float %.sroa.26.0.copyload.i, float %.sroa.26.0.copyload.i, float %i.bq) ; 2 uses
  %i.by = fdiv float %i.bm, %i.bx                 ; 2 uses
  %i.bz = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %.sroa.05.0.copyload.i, %i.ca
  %i.cc = fmul float %.sroa.26.0.copyload.i, %i.by
  %i.cd = fmul float %i.br, %i.bx
  %i.ce = call float @llvm.sqrt.f32(float %i.cd)
  %i.cf = fdiv float %i.bl, %i.ce                 ; 3 uses
  %i.cg = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = fmul <2 x float> %.sroa.05.0.copyload.i, %i.ch
  %i.cj = fmul float %.sroa.26.0.copyload.i, %i.cf
  %i.ck = fsub <2 x float> %i.bv, %i.ci           ; 3 uses
  %i.cl = fsub float %i.bw, %i.cj                 ; 3 uses
  %i.cm = fmul <2 x float> %.sroa.07.0.copyload.i, %i.ch
  %i.cn = fmul float %.sroa.28.0.copyload.i, %i.cf
  %i.co = fsub <2 x float> %i.cb, %i.cm           ; 3 uses
  %i.cp = fsub float %i.cc, %i.cn                 ; 3 uses
  %i.cq = fadd float %i.cl, %i.cp                 ; 2 uses
  %i.cr = fadd <2 x float> %i.ck, zeroinitializer
  %i.cs = fadd float %i.cl, 0.000000e+00
  %i.ct = fadd <2 x float> %i.ck, %i.co           ; 2 uses
  %i.cu = fsub <2 x float> zeroinitializer, %i.ct
  %i.cv = fsub float 0.000000e+00, %i.cq
  %i.cw = fadd <2 x float> %i.co, zeroinitializer
  %i.cx = fadd float %i.cp, 0.000000e+00
  %i.cy = load <2 x float>, ptr %i.v, align 4, !tbaa !169
  %i.cz = fadd <2 x float> %i.cy, %i.ck
  %i.da = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !169
  %i.dc = fadd float %i.db, %i.cl
  store <2 x float> %i.cz, ptr %i.v, align 4
  store float %i.dc, ptr %i.da, align 4, !tbaa !185
  %i.dd = load <2 x float>, ptr %i.y, align 4, !tbaa !169
  %i.de = fsub <2 x float> %i.dd, %i.ct
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !169
  %i.dh = fsub float %i.dg, %i.cq
  store <2 x float> %i.de, ptr %i.y, align 4
  store float %i.dh, ptr %i.df, align 4, !tbaa !185
  %i.di = load <2 x float>, ptr %i.x, align 4, !tbaa !169
  %i.dj = fadd <2 x float> %i.co, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !169
  %i.dm = fadd float %i.cp, %i.dl
  store <2 x float> %i.dj, ptr %i.x, align 4
  store float %i.dm, ptr %i.dk, align 4, !tbaa !185
  br label %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit

_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit: ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit, %bb.d
  %.sroa.9155.0 = phi float [ %i.cs, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0148.0 = phi <2 x float> [ %i.cr, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9146.0 = phi float [ %i.cv, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0139.0 = phi <2 x float> [ %i.cu, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9.0 = phi float [ %i.cx, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0131.0 = phi <2 x float> [ %i.cw, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %i.dn = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.dn, %.sroa.0166.0.extract.trunc
  %i.do = load i32, ptr %i.b, align 4
  %i.dp = icmp sgt i32 %i.do, %.sroa.0166.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.dp, i1 false
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit
  %i.dq = load i64, ptr %6, align 8
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds [12 x i8], ptr %i.dr, i64 %i.h
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.f:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit
  %i.dt = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.not.i.i.i, label %.preheader243, label %bb.h

.preheader243:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit209.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader243
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !160
  %i.dw = icmp eq i32 %i.dv, %.sroa.0166.0.extract.trunc
  br i1 %i.dw, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader243, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.dx = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.dy = urem i64 %i.h, %i.dx                    ; 5 uses
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i.i, label %.loopexit209.thread, label %bb.i

.loopexit209.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0184)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !42 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !160
  %i.ef = icmp eq i32 %i.ee, %.sroa.0166.0.extract.trunc
  br i1 %i.ef, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.eg = icmp eq i32 %i.ej, %.sroa.0166.0.extract.trunc
  br i1 %i.eg, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.eh, %bb.j ], [ %i.ec, %bb.i ]
  %i.eh = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit209, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !160 ; 2 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = urem i64 %i.ek, %i.dx
  %.not19.i.i.i.i.i = icmp eq i64 %i.el, %i.dy
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.loopexit209, !llvm.loop !6

.loopexit209.loopexit:                            ; preds = %.preheader243
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre263 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre268.a = urem i64 %i.h, %.pre               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre263, i64 %.pre268.a
  %.pre273 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit209

.loopexit209:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit209.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.em = phi ptr [ %i.eb, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre273, %.loopexit209.loopexit ], [ %i.eb, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.dy, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre268.a, %.loopexit209.loopexit ], [ %i.dy, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.en = phi i64 [ %i.dx, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit209.loopexit ], [ %i.dx, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0184)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit209
  %i.eo = load ptr, ptr %i.em, align 8, !tbaa !42 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !160
  %i.er = icmp eq i32 %i.eq, %.sroa.0166.0.extract.trunc
  br i1 %i.er, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.es = icmp eq i32 %i.ev, %.sroa.0166.0.extract.trunc
  br i1 %i.es, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.et, %bb.m ], [ %i.eo, %bb.l ]
  %i.et = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !160 ; 2 uses
  %i.ew = sext i32 %i.ev to i64
  %i.ex = urem i64 %i.ew, %i.en
  %.not19.i.i.i.i = icmp eq i64 %i.ex, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit209.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit209
  %.pre-phi305 = phi i64 [ %i.dy, %.loopexit209.thread ], [ %.pre-phi, %.loopexit209 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.ey = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ey, align 8, !tbaa !42
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i32 %.sroa.0166.0.extract.trunc, ptr %i.ez, align 8, !tbaa !240
  %i.fa = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi305, i64 noundef %i.h, ptr noundef nonnull %i.ey, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa334.sink = phi ptr [ %i.kr, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91 ], [ %i.jy, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80 ], [ %i.ie, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53 ], [ %i.hl, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42 ], [ %i.fr, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17 ], [ %i.ey, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.ku, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91 ], [ %i.kb, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80 ], [ %i.ih, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53 ], [ %i.ho, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42 ], [ %i.fu, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17 ], [ %i.fb, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa334.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.fa, %.loopexit.i.i ], [ %i.eo, %bb.l ], [ %i.et, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0184)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.fc = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.fd = urem i64 %i.h, %i.fc                    ; 3 uses
  %i.fe = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fd
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.fg, null
end_hunk_0
begin_hunk_1_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES9_NS_9PbcHolderEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_:bb.a

.preheader:                                       ; preds = %bb.af, %bb.ag
  %.sroa.06.0.in.i.i.i69 = phi ptr [ %.sroa.06.0.i.i.i70, %bb.ag ], [ %i.f, %bb.af ]
  %.sroa.06.0.i.i.i70 = load ptr, ptr %.sroa.06.0.in.i.i.i69, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %.sroa.06.0.i.i.i70, null
  br i1 %.not.i.i.i71, label %.loopexit.loopexit, label %bb.ag

bb.ag:                                            ; preds = %.preheader
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i70, i64 8
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !160
  %i.iw = icmp eq i32 %i.iv, %.sroa.5167.8.extract.trunc
  br i1 %i.iw, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72, label %.preheader, !llvm.loop !5

bb.ah:                                            ; preds = %bb.af
  %i.ix = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.iy = urem i64 %i.l, %i.ix                    ; 5 uses
  %i.iz = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.iy
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i60 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i.i.i60, label %.loopexit.thread, label %bb.ai

.loopexit.thread:                                 ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0171)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0171, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i79

bb.ai:                                            ; preds = %bb.ah
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !42 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !160
  %i.jf = icmp eq i32 %i.je, %.sroa.5167.8.extract.trunc
  br i1 %i.jf, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72, label %.lr.ph.i.i.i.i.i61

bb.aj:                                            ; preds = %bb.ak
  %i.jg = icmp eq i32 %i.jj, %.sroa.5167.8.extract.trunc
  br i1 %i.jg, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72, label %.lr.ph.i.i.i.i.i61, !llvm.loop !6

.lr.ph.i.i.i.i.i61:                               ; preds = %bb.ai, %bb.aj
  %.020.i.i.i.i.i62 = phi ptr [ %i.jh, %bb.aj ], [ %i.jc, %bb.ai ]
  %i.jh = load ptr, ptr %.020.i.i.i.i.i62, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i63 = icmp eq ptr %i.jh, null
  br i1 %.not18.i.i.i.i.i63, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i61
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !160 ; 2 uses
  %i.jk = sext i32 %i.jj to i64
  %i.jl = urem i64 %i.jk, %i.ix
  %.not19.i.i.i.i.i64 = icmp eq i64 %i.jl, %i.iy
  br i1 %.not19.i.i.i.i.i64, label %bb.aj, label %..loopexit_crit_edge21.i.i.i.i.i65, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i65:               ; preds = %bb.ak
  br label %.loopexit, !llvm.loop !6

.loopexit.loopexit:                               ; preds = %.preheader
  %.pre266 = load i64, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %.pre267 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre271 = urem i64 %i.l, %.pre266              ; 2 uses
  %.phi.trans.insert276 = getelementptr inbounds nuw [8 x i8], ptr %.pre267, i64 %.pre271
  %.pre277 = load ptr, ptr %.phi.trans.insert276, align 8, !tbaa !172
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i61, %.loopexit.loopexit, %..loopexit_crit_edge21.i.i.i.i.i65
  %i.jm = phi ptr [ %i.jb, %..loopexit_crit_edge21.i.i.i.i.i65 ], [ %.pre277, %.loopexit.loopexit ], [ %i.jb, %.lr.ph.i.i.i.i.i61 ] ; 2 uses
  %.pre-phi272 = phi i64 [ %i.iy, %..loopexit_crit_edge21.i.i.i.i.i65 ], [ %.pre271, %.loopexit.loopexit ], [ %i.iy, %.lr.ph.i.i.i.i.i61 ] ; 4 uses
  %i.jn = phi i64 [ %i.ix, %..loopexit_crit_edge21.i.i.i.i.i65 ], [ %.pre266, %.loopexit.loopexit ], [ %i.ix, %.lr.ph.i.i.i.i.i61 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0171)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0171, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i73 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i.i73, label %.loopexit.i.i79, label %bb.al

bb.al:                                            ; preds = %.loopexit
  %i.jo = load ptr, ptr %i.jm, align 8, !tbaa !42 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !160
  %i.jr = icmp eq i32 %i.jq, %.sroa.5167.8.extract.trunc
  br i1 %i.jr, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83, label %.lr.ph.i.i.i.i74

bb.am:                                            ; preds = %bb.an
  %i.js = icmp eq i32 %i.jv, %.sroa.5167.8.extract.trunc
  br i1 %i.js, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83, label %.lr.ph.i.i.i.i74, !llvm.loop !6

.lr.ph.i.i.i.i74:                                 ; preds = %bb.al, %bb.am
  %.020.i.i.i.i75 = phi ptr [ %i.jt, %bb.am ], [ %i.jo, %bb.al ]
  %i.jt = load ptr, ptr %.020.i.i.i.i75, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i76 = icmp eq ptr %i.jt, null
  br i1 %.not18.i.i.i.i76, label %.loopexit.i.i79, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i74
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !160 ; 2 uses
  %i.jw = sext i32 %i.jv to i64
  %i.jx = urem i64 %i.jw, %i.jn
  %.not19.i.i.i.i77 = icmp eq i64 %i.jx, %.pre-phi272
  br i1 %.not19.i.i.i.i77, label %bb.am, label %..loopexit_crit_edge21.i.i.i.i78, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i78:                 ; preds = %bb.an
  br label %.loopexit.i.i79, !llvm.loop !6

.loopexit.i.i79:                                  ; preds = %.lr.ph.i.i.i.i74, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i78, %.loopexit
  %.pre-phi272311 = phi i64 [ %i.iy, %.loopexit.thread ], [ %.pre-phi272, %.loopexit ], [ %.pre-phi272, %..loopexit_crit_edge21.i.i.i.i78 ], [ %.pre-phi272, %.lr.ph.i.i.i.i74 ]
  %i.jy = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.jy, align 8, !tbaa !42
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store i32 %.sroa.5167.8.extract.trunc, ptr %i.jz, align 8, !tbaa !240
  %i.ka = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi272311, i64 noundef %i.l, ptr noundef nonnull %i.jy, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80: ; preds = %.loopexit.i.i79
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83: ; preds = %bb.am, %bb.al, %.loopexit.i.i79
  %.pn.i.i81 = phi ptr [ %i.ka, %.loopexit.i.i79 ], [ %i.jo, %bb.al ], [ %i.jt, %bb.am ]
  %.1.i.i82 = getelementptr inbounds nuw i8, ptr %.pn.i.i81, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i82, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0171, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0171)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72: ; preds = %bb.aj, %bb.ag, %bb.ai, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83
  %i.kc = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.kd = urem i64 %i.l, %i.kc                    ; 3 uses
  %i.ke = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.kd
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i.i84, label %.loopexit.i.i90, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !42 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !160
  %i.kk = icmp eq i32 %i.kj, %.sroa.5167.8.extract.trunc
  br i1 %i.kk, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94, label %.lr.ph.i.i.i.i85

bb.ap:                                            ; preds = %bb.aq
  %i.kl = icmp eq i32 %i.ko, %.sroa.5167.8.extract.trunc
  br i1 %i.kl, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94, label %.lr.ph.i.i.i.i85, !llvm.loop !6

.lr.ph.i.i.i.i85:                                 ; preds = %bb.ao, %bb.ap
  %.020.i.i.i.i86 = phi ptr [ %i.km, %bb.ap ], [ %i.kh, %bb.ao ]
  %i.km = load ptr, ptr %.020.i.i.i.i86, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i87 = icmp eq ptr %i.km, null
  br i1 %.not18.i.i.i.i87, label %.loopexit.i.i90, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i85
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !160 ; 2 uses
  %i.kp = sext i32 %i.ko to i64
  %i.kq = urem i64 %i.kp, %i.kc
  %.not19.i.i.i.i88 = icmp eq i64 %i.kq, %i.kd
  br i1 %.not19.i.i.i.i88, label %bb.ap, label %..loopexit_crit_edge21.i.i.i.i89, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i89:                 ; preds = %bb.aq
  br label %.loopexit.i.i90, !llvm.loop !6

.loopexit.i.i90:                                  ; preds = %.lr.ph.i.i.i.i85, %..loopexit_crit_edge21.i.i.i.i89, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72
  %i.kr = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.kr, align 8, !tbaa !42
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store i32 %.sroa.5167.8.extract.trunc, ptr %i.ks, align 8, !tbaa !240
  %i.kt = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.kd, i64 noundef %i.l, ptr noundef nonnull %i.kr, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91: ; preds = %.loopexit.i.i90
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94: ; preds = %bb.ap, %bb.ao, %.loopexit.i.i90
  %.pn.i.i92 = phi ptr [ %i.kt, %.loopexit.i.i90 ], [ %i.kh, %bb.ao ], [ %i.km, %bb.ap ]
  %.1.i.i93 = getelementptr inbounds nuw i8, ptr %.pn.i.i92, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ae, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94
  %.0.i.i = phi ptr [ %i.is, %bb.ae ], [ %.1.i.i93, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94 ] ; 3 uses
  %i.kv = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.kw = fadd <2 x float> %.sroa.0131.0, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !169
  %i.kz = fadd float %.sroa.9.0, %i.ky
  store <2 x float> %i.kw, ptr %.0.i.i, align 4
  store float %i.kz, ptr %i.kx, align 4, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %.sroa.0113.0.vec.extract = extractelement <2 x float> %.sroa.0113.0236, i64 0
  %i.la = fadd float %.sroa.0113.0.vec.extract, %i.be
  %.sroa.0113.0.vec.insert = insertelement <2 x float> %.sroa.0113.0236, float %i.la, i64 0 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0105.0237, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.lb, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_16CosineParamAngleINS_17G96AngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES9_NS_9PbcHolderEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef") align 8 %7, ptr noundef nonnull align 4 dereferenceable(384) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0184 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0177 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0171 = alloca [3 x float], align 4       ; 6 uses
  %9 = alloca %"class.gmx::BasicVector", align 4  ; 5 uses
  %10 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %11 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %12 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %13 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %14 = alloca %"class.gmx::BasicVector", align 4 ; 3 uses
  %.not235 = icmp eq ptr %0, %1
  br i1 %.not235, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0113.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0113.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0113.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0105.0237 = phi ptr [ %0, %.lr.ph ], [ %i.lh, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0113.0236 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0113.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0105.0237, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0105.0237, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !216    ; 4 uses
  %.sroa.0166.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0166.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0166.4.extract.trunc = trunc nuw i64 %.sroa.0166.4.extract.shift to i32 ; 11 uses
  %.sroa.5167.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.h = ashr exact i64 %sext, 32                 ; 7 uses
  %i.i = getelementptr inbounds [12 x i8], ptr %4, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.j = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.k = getelementptr inbounds [12 x i8], ptr %4, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %sext203 = shl i64 %.sroa.2.0.copyload, 32
  %i.l = ashr exact i64 %sext203, 32              ; 7 uses
  %i.m = getelementptr inbounds [12 x i8], ptr %4, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %i.m, i64 12, i1 false), !tbaa.struct !186
  %i.n = ashr i64 %.sroa.2.0.copyload, 32
  %i.o = getelementptr inbounds [8 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.p = load float, ptr %i.o, align 4            ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load float, ptr %.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.r = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %12)
  %i.s = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %13)
  %i.t = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %14) ; 0 uses
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.u ; 3 uses
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 2 uses
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %12, align 8 ; 4 uses
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 8, !tbaa !185 ; 5 uses
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %13, align 8 ; 4 uses
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !185 ; 5 uses
  %.sroa.033.0.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.i, i64 0 ; 3 uses
  %i.z = fpext float %.sroa.033.0.vec.extract.i to double ; 3 uses
  %.sroa.033.4.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.i, i64 1 ; 3 uses
  %i.aa = fpext float %.sroa.033.4.vec.extract.i to double ; 3 uses
  %i.ab = fpext float %.sroa.28.0.copyload.i to double ; 3 uses
  %.sroa.031.0.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 0 ; 3 uses
  %i.ac = fpext float %.sroa.031.0.vec.extract.i to double ; 3 uses
  %.sroa.031.4.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 1 ; 3 uses
  %i.ad = fpext float %.sroa.031.4.vec.extract.i to double ; 3 uses
  %i.ae = fpext float %.sroa.26.0.copyload.i to double ; 3 uses
  %i.af = fmul double %i.aa, %i.aa
  %i.ag = call double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.af)
  %i.ah = call noundef double @llvm.fmuladd.f64(double %i.ab, double %i.ab, double %i.ag)
  %i.ai = fmul double %i.ad, %i.ad
  %i.aj = call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.ai)
  %i.ak = call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %i.aj)
  %i.al = fmul double %i.ah, %i.ak                ; 2 uses
  %i.am = fcmp ogt double %i.al, 0.000000e+00
  br i1 %i.am, label %bb.c, label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

bb.c:                                             ; preds = %bb.b
  %i.an = fmul double %i.aa, %i.ad
  %i.ao = call double @llvm.fmuladd.f64(double %i.z, double %i.ac, double %i.an)
  %i.ap = call noundef double @llvm.fmuladd.f64(double %i.ab, double %i.ae, double %i.ao)
  %i.aq = call nnan double @llvm.sqrt.f64(double %i.al)
  %i.ar = fdiv nnan double 1.000000e+00, %i.aq
  %i.as = fmul double %i.ap, %i.ar
  %i.at = fptrunc double %i.as to float
  br label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit: ; preds = %bb.b, %bb.c
  %i.au = phi float [ %i.at, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.av = fcmp ogt float %i.au, 1.000000e+00
  %.sroa.speculated7.i = select i1 %i.av, float 1.000000e+00, float %i.au ; 2 uses
  %i.aw = fcmp olt float %.sroa.speculated7.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.aw, float -1.000000e+00, float %.sroa.speculated7.i ; 4 uses
  %i.ax = call noundef float @acosf(float noundef %.sroa.speculated.i) #9
  %i.ay = call noundef float @cosf(float noundef %i.ax) #9, !noalias !305 ; 3 uses
  %i.az = fsub float %i.ay, %i.q                  ; 3 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fpext float %i.p to double
  %i.bc = fmul double %i.bb, 5.000000e-01
  %i.bd = fpext float %i.ba to double
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = fptrunc double %i.be to float
  %i.bg = fneg float %i.ay
  %i.bh = call float @llvm.fmuladd.f32(float %i.bg, float %i.ay, float 1.000000e+00)
  %i.bi = call noundef float @sqrtf(float noundef %i.bh) #9, !noalias !305
  %i.bj = fmul float %.sroa.speculated.i, %.sroa.speculated.i ; 2 uses
  %i.bk = fcmp olt float %i.bj, 1.000000e+00
  br i1 %i.bk, label %bb.d, label %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit

bb.d:                                             ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit
  %i.bl = fneg float %i.p
  %i.bm = fmul float %i.az, %i.bl
  %i.bn = fneg float %i.bi
  %i.bo = fmul float %i.bm, %i.bn
  %i.bp = fsub float 1.000000e+00, %i.bj
  %i.bq = call noundef float @sqrtf(float noundef %i.bp) #9
  %i.br = fdiv float %i.bo, %i.bq                 ; 2 uses
  %i.bs = fmul float %.sroa.speculated.i, %i.br   ; 2 uses
  %i.bt = fmul float %.sroa.033.4.vec.extract.i, %.sroa.033.4.vec.extract.i
  %i.bu = call float @llvm.fmuladd.f32(float %.sroa.033.0.vec.extract.i, float %.sroa.033.0.vec.extract.i, float %i.bt)
  %i.bv = fmul float %.sroa.031.4.vec.extract.i, %.sroa.031.4.vec.extract.i
  %i.bw = call float @llvm.fmuladd.f32(float %.sroa.031.0.vec.extract.i, float %.sroa.031.0.vec.extract.i, float %i.bv)
  %i.bx = call noundef float @llvm.fmuladd.f32(float %.sroa.28.0.copyload.i, float %.sroa.28.0.copyload.i, float %i.bu) ; 2 uses
  %i.by = fdiv float %i.bs, %i.bx                 ; 2 uses
  %i.bz = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %.sroa.07.0.copyload.i, %i.ca
  %i.cc = fmul float %.sroa.28.0.copyload.i, %i.by
  %i.cd = call noundef float @llvm.fmuladd.f32(float %.sroa.26.0.copyload.i, float %.sroa.26.0.copyload.i, float %i.bw) ; 2 uses
  %i.ce = fdiv float %i.bs, %i.cd                 ; 2 uses
  %i.cf = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x float> %.sroa.05.0.copyload.i, %i.cg
  %i.ci = fmul float %.sroa.26.0.copyload.i, %i.ce
  %i.cj = fmul float %i.bx, %i.cd
  %i.ck = call float @llvm.sqrt.f32(float %i.cj)
  %i.cl = fdiv float %i.br, %i.ck                 ; 3 uses
  %i.cm = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = fmul <2 x float> %.sroa.05.0.copyload.i, %i.cn
  %i.cp = fmul float %.sroa.26.0.copyload.i, %i.cl
  %i.cq = fsub <2 x float> %i.cb, %i.co           ; 3 uses
  %i.cr = fsub float %i.cc, %i.cp                 ; 3 uses
  %i.cs = fmul <2 x float> %.sroa.07.0.copyload.i, %i.cn
  %i.ct = fmul float %.sroa.28.0.copyload.i, %i.cl
  %i.cu = fsub <2 x float> %i.ch, %i.cs           ; 3 uses
  %i.cv = fsub float %i.ci, %i.ct                 ; 3 uses
  %i.cw = fadd float %i.cr, %i.cv                 ; 2 uses
  %i.cx = fadd <2 x float> %i.cq, zeroinitializer
  %i.cy = fadd float %i.cr, 0.000000e+00
  %i.cz = fadd <2 x float> %i.cq, %i.cu           ; 2 uses
  %i.da = fsub <2 x float> zeroinitializer, %i.cz
  %i.db = fsub float 0.000000e+00, %i.cw
  %i.dc = fadd <2 x float> %i.cu, zeroinitializer
  %i.dd = fadd float %i.cv, 0.000000e+00
  %i.de = load <2 x float>, ptr %i.v, align 4, !tbaa !169
  %i.df = fadd <2 x float> %i.de, %i.cq
  %i.dg = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !169
  %i.di = fadd float %i.dh, %i.cr
  store <2 x float> %i.df, ptr %i.v, align 4
  store float %i.di, ptr %i.dg, align 4, !tbaa !185
  %i.dj = load <2 x float>, ptr %i.y, align 4, !tbaa !169
  %i.dk = fsub <2 x float> %i.dj, %i.cz
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !169
  %i.dn = fsub float %i.dm, %i.cw
  store <2 x float> %i.dk, ptr %i.y, align 4
  store float %i.dn, ptr %i.dl, align 4, !tbaa !185
  %i.do = load <2 x float>, ptr %i.x, align 4, !tbaa !169
  %i.dp = fadd <2 x float> %i.cu, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !169
  %i.ds = fadd float %i.cv, %i.dr
  store <2 x float> %i.dp, ptr %i.x, align 4
  store float %i.ds, ptr %i.dq, align 4, !tbaa !185
  br label %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit

_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit: ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit, %bb.d
  %.sroa.9155.0 = phi float [ %i.cy, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0148.0 = phi <2 x float> [ %i.cx, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9146.0 = phi float [ %i.db, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0139.0 = phi <2 x float> [ %i.da, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9.0 = phi float [ %i.dd, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0131.0 = phi <2 x float> [ %i.dc, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %i.dt = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.dt, %.sroa.0166.0.extract.trunc
  %i.du = load i32, ptr %i.b, align 4
  %i.dv = icmp sgt i32 %i.du, %.sroa.0166.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.dv, i1 false
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit
  %i.dw = load i64, ptr %6, align 8
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.h
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.f:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit
  %i.dz = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not.not.i.i.i, label %.preheader243, label %bb.h

.preheader243:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit209.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader243
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !160
  %i.ec = icmp eq i32 %i.eb, %.sroa.0166.0.extract.trunc
  br i1 %i.ec, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader243, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.ed = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.ee = urem i64 %i.h, %i.ed                    ; 5 uses
  %i.ef = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ee
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i, label %.loopexit209.thread, label %bb.i

.loopexit209.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0184)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !42 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !160
  %i.el = icmp eq i32 %i.ek, %.sroa.0166.0.extract.trunc
  br i1 %i.el, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.em = icmp eq i32 %i.ep, %.sroa.0166.0.extract.trunc
  br i1 %i.em, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.en, %bb.j ], [ %i.ei, %bb.i ]
  %i.en = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit209, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !160 ; 2 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = urem i64 %i.eq, %i.ed
  %.not19.i.i.i.i.i = icmp eq i64 %i.er, %i.ee
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.loopexit209, !llvm.loop !6

.loopexit209.loopexit:                            ; preds = %.preheader243
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre263 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre268.a = urem i64 %i.h, %.pre               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre263, i64 %.pre268.a
  %.pre273 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit209

.loopexit209:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit209.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.es = phi ptr [ %i.eh, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre273, %.loopexit209.loopexit ], [ %i.eh, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.ee, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre268.a, %.loopexit209.loopexit ], [ %i.ee, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.et = phi i64 [ %i.ed, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit209.loopexit ], [ %i.ed, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0184)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit209
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !42 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !160
  %i.ex = icmp eq i32 %i.ew, %.sroa.0166.0.extract.trunc
  br i1 %i.ex, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.ey = icmp eq i32 %i.fb, %.sroa.0166.0.extract.trunc
  br i1 %i.ey, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.ez, %bb.m ], [ %i.eu, %bb.l ]
  %i.ez = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !160 ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = urem i64 %i.fc, %i.et
  %.not19.i.i.i.i = icmp eq i64 %i.fd, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit209.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit209
  %.pre-phi305 = phi i64 [ %i.ee, %.loopexit209.thread ], [ %.pre-phi, %.loopexit209 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.fe = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.fe, align 8, !tbaa !42
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i32 %.sroa.0166.0.extract.trunc, ptr %i.ff, align 8, !tbaa !240
  %i.fg = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi305, i64 noundef %i.h, ptr noundef nonnull %i.fe, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa334.sink = phi ptr [ %i.kx, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91 ], [ %i.ke, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80 ], [ %i.ik, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53 ], [ %i.hr, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42 ], [ %i.fx, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17 ], [ %i.fe, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.la, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91 ], [ %i.kh, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80 ], [ %i.in, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53 ], [ %i.hu, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42 ], [ %i.ga, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17 ], [ %i.fh, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa334.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.fg, %.loopexit.i.i ], [ %i.eu, %bb.l ], [ %i.ez, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0184)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.fi = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.fj = urem i64 %i.h, %i.fi                    ; 3 uses
  %i.fk = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fj
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.fm, null
end_hunk_1
begin_hunk_2_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_16CosineParamAngleINS_17G96AngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES9_NS_9PbcHolderEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_:bb.a
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83: ; preds = %bb.am, %bb.al, %.loopexit.i.i79
  %.pn.i.i81 = phi ptr [ %i.kg, %.loopexit.i.i79 ], [ %i.ju, %bb.al ], [ %i.jz, %bb.am ]
  %.1.i.i82 = getelementptr inbounds nuw i8, ptr %.pn.i.i81, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i82, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0171, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0171)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72: ; preds = %bb.aj, %bb.ag, %bb.ai, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83
  %i.ki = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.kj = urem i64 %i.l, %i.ki                    ; 3 uses
  %i.kk = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kj
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i.i84, label %.loopexit.i.i90, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !42 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !160
  %i.kq = icmp eq i32 %i.kp, %.sroa.5167.8.extract.trunc
  br i1 %i.kq, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94, label %.lr.ph.i.i.i.i85

bb.ap:                                            ; preds = %bb.aq
  %i.kr = icmp eq i32 %i.ku, %.sroa.5167.8.extract.trunc
  br i1 %i.kr, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94, label %.lr.ph.i.i.i.i85, !llvm.loop !6

.lr.ph.i.i.i.i85:                                 ; preds = %bb.ao, %bb.ap
  %.020.i.i.i.i86 = phi ptr [ %i.ks, %bb.ap ], [ %i.kn, %bb.ao ]
  %i.ks = load ptr, ptr %.020.i.i.i.i86, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i87 = icmp eq ptr %i.ks, null
  br i1 %.not18.i.i.i.i87, label %.loopexit.i.i90, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i85
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !160 ; 2 uses
  %i.kv = sext i32 %i.ku to i64
  %i.kw = urem i64 %i.kv, %i.ki
  %.not19.i.i.i.i88 = icmp eq i64 %i.kw, %i.kj
  br i1 %.not19.i.i.i.i88, label %bb.ap, label %..loopexit_crit_edge21.i.i.i.i89, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i89:                 ; preds = %bb.aq
  br label %.loopexit.i.i90, !llvm.loop !6

.loopexit.i.i90:                                  ; preds = %.lr.ph.i.i.i.i85, %..loopexit_crit_edge21.i.i.i.i89, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72
  %i.kx = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.kx, align 8, !tbaa !42
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store i32 %.sroa.5167.8.extract.trunc, ptr %i.ky, align 8, !tbaa !240
  %i.kz = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.kj, i64 noundef %i.l, ptr noundef nonnull %i.kx, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91: ; preds = %.loopexit.i.i90
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94: ; preds = %bb.ap, %bb.ao, %.loopexit.i.i90
  %.pn.i.i92 = phi ptr [ %i.kz, %.loopexit.i.i90 ], [ %i.kn, %bb.ao ], [ %i.ks, %bb.ap ]
  %.1.i.i93 = getelementptr inbounds nuw i8, ptr %.pn.i.i92, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ae, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94
  %.0.i.i = phi ptr [ %i.iy, %bb.ae ], [ %.1.i.i93, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94 ] ; 3 uses
  %i.lb = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.lc = fadd <2 x float> %.sroa.0131.0, %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !169
  %i.lf = fadd float %.sroa.9.0, %i.le
  store <2 x float> %i.lc, ptr %.0.i.i, align 4
  store float %i.lf, ptr %i.ld, align 4, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %.sroa.0113.0.vec.extract = extractelement <2 x float> %.sroa.0113.0236, i64 0
  %i.lg = fadd float %.sroa.0113.0.vec.extract, %i.bf
  %.sroa.0113.0.vec.insert = insertelement <2 x float> %.sroa.0113.0236, float %i.lg, i64 0 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0105.0237, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.lh, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_12QuarticAngleENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES7_NS_9PbcHolderEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef") align 8 %7, ptr noundef nonnull align 4 dereferenceable(384) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0188 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0181 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0175 = alloca [3 x float], align 4       ; 6 uses
  %9 = alloca %"class.gmx::BasicVector", align 4  ; 5 uses
  %10 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %11 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %12 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %13 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %14 = alloca %"class.gmx::BasicVector", align 4 ; 3 uses
  %.not239 = icmp eq ptr %0, %1
  br i1 %.not239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0116.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0116.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0116.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0108.0241 = phi ptr [ %0, %.lr.ph ], [ %i.lf, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0116.0240 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0116.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0108.0241, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0108.0241, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !216    ; 4 uses
  %.sroa.0170.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0170.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0170.4.extract.trunc = trunc nuw i64 %.sroa.0170.4.extract.shift to i32 ; 11 uses
  %.sroa.5171.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.h = ashr exact i64 %sext, 32                 ; 7 uses
  %i.i = getelementptr inbounds [12 x i8], ptr %4, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.j = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.k = getelementptr inbounds [12 x i8], ptr %4, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %sext207 = shl i64 %.sroa.2.0.copyload, 32
  %i.l = ashr exact i64 %sext207, 32              ; 7 uses
  %i.m = getelementptr inbounds [12 x i8], ptr %4, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %i.m, i64 12, i1 false), !tbaa.struct !186
  %i.n = ashr i64 %.sroa.2.0.copyload, 32
  %i.o = getelementptr inbounds [24 x i8], ptr %2, i64 %i.n ; 6 uses
  %.sroa.0160.0.copyload = load float, ptr %i.o, align 4
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.4161.0.copyload = load float, ptr %.sroa.4161.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5162.0.copyload = load float, ptr %.sroa.5162.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.sroa.6163.0.copyload = load float, ptr %.sroa.6163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !185 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.p = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %12)
  %i.q = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %13)
  %i.r = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %14) ; 0 uses
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.s ; 3 uses
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 2 uses
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %12, align 8 ; 4 uses
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 8, !tbaa !185 ; 5 uses
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %13, align 8 ; 4 uses
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !185 ; 5 uses
  %.sroa.033.0.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.i, i64 0 ; 3 uses
  %i.x = fpext float %.sroa.033.0.vec.extract.i to double ; 3 uses
  %.sroa.033.4.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.i, i64 1 ; 3 uses
  %i.y = fpext float %.sroa.033.4.vec.extract.i to double ; 3 uses
  %i.z = fpext float %.sroa.28.0.copyload.i to double ; 3 uses
  %.sroa.031.0.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 0 ; 3 uses
  %i.aa = fpext float %.sroa.031.0.vec.extract.i to double ; 3 uses
  %.sroa.031.4.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 1 ; 3 uses
  %i.ab = fpext float %.sroa.031.4.vec.extract.i to double ; 3 uses
  %i.ac = fpext float %.sroa.26.0.copyload.i to double ; 3 uses
  %i.ad = fmul double %i.y, %i.y
  %i.ae = call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.ad)
  %i.af = call noundef double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.ae)
  %i.ag = fmul double %i.ab, %i.ab
  %i.ah = call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.ag)
  %i.ai = call noundef double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.ah)
  %i.aj = fmul double %i.af, %i.ai                ; 2 uses
  %i.ak = fcmp ogt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.c, label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

bb.c:                                             ; preds = %bb.b
  %i.al = fmul double %i.y, %i.ab
  %i.am = call double @llvm.fmuladd.f64(double %i.x, double %i.aa, double %i.al)
  %i.an = call noundef double @llvm.fmuladd.f64(double %i.z, double %i.ac, double %i.am)
  %i.ao = call nnan double @llvm.sqrt.f64(double %i.aj)
  %i.ap = fdiv nnan double 1.000000e+00, %i.ao
  %i.aq = fmul double %i.an, %i.ap
  %i.ar = fptrunc double %i.aq to float
  br label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit: ; preds = %bb.b, %bb.c
  %i.as = phi float [ %i.ar, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.at = fcmp ogt float %i.as, 1.000000e+00
  %.sroa.speculated7.i = select i1 %i.at, float 1.000000e+00, float %i.as ; 2 uses
  %i.au = fcmp olt float %.sroa.speculated7.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.au, float -1.000000e+00, float %.sroa.speculated7.i ; 4 uses
  %i.av = call noundef float @acosf(float noundef %.sroa.speculated.i) #9
  %i.aw = fsub float %i.av, %.sroa.8.0.copyload   ; 6 uses
  %i.ax = call float @llvm.fmuladd.f32(float %.sroa.4161.0.copyload, float %i.aw, float %.sroa.0160.0.copyload)
  %i.ay = fmul float %i.aw, %i.aw                 ; 3 uses
  %i.az = call float @llvm.fmuladd.f32(float %.sroa.5162.0.copyload, float %i.ay, float %i.ax)
  %i.ba = fmul float %i.aw, %i.ay                 ; 3 uses
  %i.bb = call float @llvm.fmuladd.f32(float %.sroa.6163.0.copyload, float %i.ba, float %i.az)
  %i.bc = fmul float %i.aw, %i.ba
  %i.bd = call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.bc, float %i.bb)
  %i.be = fmul float %.sroa.speculated.i, %.sroa.speculated.i ; 2 uses
  %i.bf = fcmp olt float %i.be, 1.000000e+00
  br i1 %i.bf, label %bb.d, label %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit

bb.d:                                             ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit
  %i.bg = fmul float %.sroa.7.0.copyload, -4.000000e+00
  %i.bh = fmul float %.sroa.6163.0.copyload, -3.000000e+00
  %i.bi = fmul float %.sroa.5162.0.copyload, -2.000000e+00
  %i.bj = fsub float 0.000000e+00, %.sroa.4161.0.copyload
  %i.bk = call float @llvm.fmuladd.f32(float %i.bi, float %i.aw, float %i.bj)
  %i.bl = call float @llvm.fmuladd.f32(float %i.bh, float %i.ay, float %i.bk)
  %i.bm = call float @llvm.fmuladd.f32(float %i.bg, float %i.ba, float %i.bl)
  %i.bn = fsub float 1.000000e+00, %i.be
  %i.bo = call noundef float @sqrtf(float noundef %i.bn) #9
  %i.bp = fdiv float %i.bm, %i.bo                 ; 2 uses
  %i.bq = fmul float %.sroa.speculated.i, %i.bp   ; 2 uses
  %i.br = fmul float %.sroa.033.4.vec.extract.i, %.sroa.033.4.vec.extract.i
  %i.bs = call float @llvm.fmuladd.f32(float %.sroa.033.0.vec.extract.i, float %.sroa.033.0.vec.extract.i, float %i.br)
  %i.bt = fmul float %.sroa.031.4.vec.extract.i, %.sroa.031.4.vec.extract.i
  %i.bu = call float @llvm.fmuladd.f32(float %.sroa.031.0.vec.extract.i, float %.sroa.031.0.vec.extract.i, float %i.bt)
  %i.bv = call noundef float @llvm.fmuladd.f32(float %.sroa.28.0.copyload.i, float %.sroa.28.0.copyload.i, float %i.bs) ; 2 uses
  %i.bw = fdiv float %i.bq, %i.bv                 ; 2 uses
  %i.bx = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %.sroa.07.0.copyload.i, %i.by
  %i.ca = fmul float %.sroa.28.0.copyload.i, %i.bw
  %i.cb = call noundef float @llvm.fmuladd.f32(float %.sroa.26.0.copyload.i, float %.sroa.26.0.copyload.i, float %i.bu) ; 2 uses
  %i.cc = fdiv float %i.bq, %i.cb                 ; 2 uses
  %i.cd = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %.sroa.05.0.copyload.i, %i.ce
  %i.cg = fmul float %.sroa.26.0.copyload.i, %i.cc
  %i.ch = fmul float %i.bv, %i.cb
  %i.ci = call float @llvm.sqrt.f32(float %i.ch)
  %i.cj = fdiv float %i.bp, %i.ci                 ; 3 uses
  %i.ck = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cm = fmul <2 x float> %.sroa.05.0.copyload.i, %i.cl
  %i.cn = fmul float %.sroa.26.0.copyload.i, %i.cj
  %i.co = fsub <2 x float> %i.bz, %i.cm           ; 3 uses
  %i.cp = fsub float %i.ca, %i.cn                 ; 3 uses
  %i.cq = fmul <2 x float> %.sroa.07.0.copyload.i, %i.cl
  %i.cr = fmul float %.sroa.28.0.copyload.i, %i.cj
  %i.cs = fsub <2 x float> %i.cf, %i.cq           ; 3 uses
  %i.ct = fsub float %i.cg, %i.cr                 ; 3 uses
  %i.cu = fadd float %i.cp, %i.ct                 ; 2 uses
  %i.cv = fadd <2 x float> %i.co, zeroinitializer
  %i.cw = fadd float %i.cp, 0.000000e+00
  %i.cx = fadd <2 x float> %i.co, %i.cs           ; 2 uses
  %i.cy = fsub <2 x float> zeroinitializer, %i.cx
  %i.cz = fsub float 0.000000e+00, %i.cu
  %i.da = fadd <2 x float> %i.cs, zeroinitializer
  %i.db = fadd float %i.ct, 0.000000e+00
  %i.dc = load <2 x float>, ptr %i.t, align 4, !tbaa !169
  %i.dd = fadd <2 x float> %i.dc, %i.co
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !169
  %i.dg = fadd float %i.df, %i.cp
  store <2 x float> %i.dd, ptr %i.t, align 4
  store float %i.dg, ptr %i.de, align 4, !tbaa !185
  %i.dh = load <2 x float>, ptr %i.w, align 4, !tbaa !169
  %i.di = fsub <2 x float> %i.dh, %i.cx
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !169
  %i.dl = fsub float %i.dk, %i.cu
  store <2 x float> %i.di, ptr %i.w, align 4
  store float %i.dl, ptr %i.dj, align 4, !tbaa !185
  %i.dm = load <2 x float>, ptr %i.v, align 4, !tbaa !169
  %i.dn = fadd <2 x float> %i.cs, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !169
  %i.dq = fadd float %i.ct, %i.dp
  store <2 x float> %i.dn, ptr %i.v, align 4
  store float %i.dq, ptr %i.do, align 4, !tbaa !185
  br label %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit

_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit: ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit, %bb.d
  %.sroa.9158.0 = phi float [ %i.cw, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0151.0 = phi <2 x float> [ %i.cv, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9149.0 = phi float [ %i.cz, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0142.0 = phi <2 x float> [ %i.cy, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9.0 = phi float [ %i.db, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0134.0 = phi <2 x float> [ %i.da, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %i.dr = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.dr, %.sroa.0170.0.extract.trunc
  %i.ds = load i32, ptr %i.b, align 4
  %i.dt = icmp sgt i32 %i.ds, %.sroa.0170.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.dt, i1 false
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit
  %i.du = load i64, ptr %6, align 8
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = getelementptr inbounds [12 x i8], ptr %i.dv, i64 %i.h
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.f:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit
  %i.dx = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.not.i.i.i, label %.preheader247, label %bb.h

.preheader247:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit213.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader247
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !160
  %i.ea = icmp eq i32 %i.dz, %.sroa.0170.0.extract.trunc
  br i1 %i.ea, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader247, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.eb = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.ec = urem i64 %i.h, %i.eb                    ; 5 uses
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ec
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i.i, label %.loopexit213.thread, label %bb.i

.loopexit213.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0188)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0188, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !42 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !160
  %i.ej = icmp eq i32 %i.ei, %.sroa.0170.0.extract.trunc
  br i1 %i.ej, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.ek = icmp eq i32 %i.en, %.sroa.0170.0.extract.trunc
  br i1 %i.ek, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.el, %bb.j ], [ %i.eg, %bb.i ]
  %i.el = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit213, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i32, ptr %i.em, align 4, !tbaa !160 ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = urem i64 %i.eo, %i.eb
  %.not19.i.i.i.i.i = icmp eq i64 %i.ep, %i.ec
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.loopexit213, !llvm.loop !6

.loopexit213.loopexit:                            ; preds = %.preheader247
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre267 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre272.a = urem i64 %i.h, %.pre               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre267, i64 %.pre272.a
  %.pre277 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit213

.loopexit213:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit213.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.eq = phi ptr [ %i.ef, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre277, %.loopexit213.loopexit ], [ %i.ef, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.ec, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre272.a, %.loopexit213.loopexit ], [ %i.ec, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.er = phi i64 [ %i.eb, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit213.loopexit ], [ %i.eb, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0188)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0188, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit213
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !42 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !160
  %i.ev = icmp eq i32 %i.eu, %.sroa.0170.0.extract.trunc
  br i1 %i.ev, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.ew = icmp eq i32 %i.ez, %.sroa.0170.0.extract.trunc
  br i1 %i.ew, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.ex, %bb.m ], [ %i.es, %bb.l ]
  %i.ex = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !160 ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = urem i64 %i.fa, %i.er
  %.not19.i.i.i.i = icmp eq i64 %i.fb, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit213.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit213
  %.pre-phi309 = phi i64 [ %i.ec, %.loopexit213.thread ], [ %.pre-phi, %.loopexit213 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.fc = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.fc, align 8, !tbaa !42
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i32 %.sroa.0170.0.extract.trunc, ptr %i.fd, align 8, !tbaa !240
  %i.fe = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi309, i64 noundef %i.h, ptr noundef nonnull %i.fc, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa338.sink = phi ptr [ %i.kv, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91 ], [ %i.kc, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80 ], [ %i.ii, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53 ], [ %i.hp, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42 ], [ %i.fv, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17 ], [ %i.fc, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.ky, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91 ], [ %i.kf, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80 ], [ %i.il, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53 ], [ %i.hs, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42 ], [ %i.fy, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17 ], [ %i.ff, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa338.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.fe, %.loopexit.i.i ], [ %i.es, %bb.l ], [ %i.ex, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0188, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0188)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.fg = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.fh = urem i64 %i.h, %i.fg                    ; 3 uses
  %i.fi = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fh
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.fk, null
end_hunk_2
begin_hunk_3_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_12QuarticAngleENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES7_NS_9PbcHolderEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_:bb.a
.loopexit.i.i79:                                  ; preds = %.lr.ph.i.i.i.i74, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i78, %.loopexit
  %.pre-phi276315 = phi i64 [ %i.jc, %.loopexit.thread ], [ %.pre-phi276, %.loopexit ], [ %.pre-phi276, %..loopexit_crit_edge21.i.i.i.i78 ], [ %.pre-phi276, %.lr.ph.i.i.i.i74 ]
  %i.kc = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.kc, align 8, !tbaa !42
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store i32 %.sroa.5171.8.extract.trunc, ptr %i.kd, align 8, !tbaa !240
  %i.ke = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi276315, i64 noundef %i.l, ptr noundef nonnull %i.kc, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80: ; preds = %.loopexit.i.i79
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83: ; preds = %bb.am, %bb.al, %.loopexit.i.i79
  %.pn.i.i81 = phi ptr [ %i.ke, %.loopexit.i.i79 ], [ %i.js, %bb.al ], [ %i.jx, %bb.am ]
  %.1.i.i82 = getelementptr inbounds nuw i8, ptr %.pn.i.i81, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i82, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0175, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0175)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72: ; preds = %bb.aj, %bb.ag, %bb.ai, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83
  %i.kg = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.kh = urem i64 %i.l, %i.kg                    ; 3 uses
  %i.ki = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kh
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.i.i84, label %.loopexit.i.i90, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !42 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !160
  %i.ko = icmp eq i32 %i.kn, %.sroa.5171.8.extract.trunc
  br i1 %i.ko, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94, label %.lr.ph.i.i.i.i85

bb.ap:                                            ; preds = %bb.aq
  %i.kp = icmp eq i32 %i.ks, %.sroa.5171.8.extract.trunc
  br i1 %i.kp, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94, label %.lr.ph.i.i.i.i85, !llvm.loop !6

.lr.ph.i.i.i.i85:                                 ; preds = %bb.ao, %bb.ap
  %.020.i.i.i.i86 = phi ptr [ %i.kq, %bb.ap ], [ %i.kl, %bb.ao ]
  %i.kq = load ptr, ptr %.020.i.i.i.i86, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i87 = icmp eq ptr %i.kq, null
  br i1 %.not18.i.i.i.i87, label %.loopexit.i.i90, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i85
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !160 ; 2 uses
  %i.kt = sext i32 %i.ks to i64
  %i.ku = urem i64 %i.kt, %i.kg
  %.not19.i.i.i.i88 = icmp eq i64 %i.ku, %i.kh
  br i1 %.not19.i.i.i.i88, label %bb.ap, label %..loopexit_crit_edge21.i.i.i.i89, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i89:                 ; preds = %bb.aq
  br label %.loopexit.i.i90, !llvm.loop !6

.loopexit.i.i90:                                  ; preds = %.lr.ph.i.i.i.i85, %..loopexit_crit_edge21.i.i.i.i89, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72
  %i.kv = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.kv, align 8, !tbaa !42
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store i32 %.sroa.5171.8.extract.trunc, ptr %i.kw, align 8, !tbaa !240
  %i.kx = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.kh, i64 noundef %i.l, ptr noundef nonnull %i.kv, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91: ; preds = %.loopexit.i.i90
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94: ; preds = %bb.ap, %bb.ao, %.loopexit.i.i90
  %.pn.i.i92 = phi ptr [ %i.kx, %.loopexit.i.i90 ], [ %i.kl, %bb.ao ], [ %i.kq, %bb.ap ]
  %.1.i.i93 = getelementptr inbounds nuw i8, ptr %.pn.i.i92, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ae, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94
  %.0.i.i = phi ptr [ %i.iw, %bb.ae ], [ %.1.i.i93, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94 ] ; 3 uses
  %i.kz = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.la = fadd <2 x float> %.sroa.0134.0, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !169
  %i.ld = fadd float %.sroa.9.0, %i.lc
  store <2 x float> %i.la, ptr %.0.i.i, align 4
  store float %i.ld, ptr %i.lb, align 4, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %.sroa.0116.0.vec.extract = extractelement <2 x float> %.sroa.0116.0240, i64 0
  %i.le = fadd float %.sroa.0116.0.vec.extract, %i.bd
  %.sroa.0116.0.vec.insert = insertelement <2 x float> %.sroa.0116.0240, float %i.le, i64 0 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0108.0241, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.lf, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_16CosineParamAngleINS_24RestrictedAngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES9_NS_9PbcHolderEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef") align 8 %7, ptr noundef nonnull align 4 dereferenceable(384) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0184 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0177 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0171 = alloca [3 x float], align 4       ; 6 uses
  %9 = alloca %"class.gmx::BasicVector", align 4  ; 5 uses
  %10 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %11 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %12 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %13 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %14 = alloca %"class.gmx::BasicVector", align 4 ; 3 uses
  %.not235 = icmp eq ptr %0, %1
  br i1 %.not235, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0113.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0113.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0113.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0105.0237 = phi ptr [ %0, %.lr.ph ], [ %i.lk, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0113.0236 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0113.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0105.0237, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0105.0237, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !216    ; 4 uses
  %.sroa.0166.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0166.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0166.4.extract.trunc = trunc nuw i64 %.sroa.0166.4.extract.shift to i32 ; 11 uses
  %.sroa.5167.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.h = ashr exact i64 %sext, 32                 ; 7 uses
  %i.i = getelementptr inbounds [12 x i8], ptr %4, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.j = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.k = getelementptr inbounds [12 x i8], ptr %4, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %sext203 = shl i64 %.sroa.2.0.copyload, 32
  %i.l = ashr exact i64 %sext203, 32              ; 7 uses
  %i.m = getelementptr inbounds [12 x i8], ptr %4, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %i.m, i64 12, i1 false), !tbaa.struct !186
  %i.n = ashr i64 %.sroa.2.0.copyload, 32
  %i.o = getelementptr inbounds [8 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.p = load float, ptr %i.o, align 4            ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load float, ptr %.sroa_idx, align 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.r = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %12)
  %i.s = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %13)
  %i.t = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %14) ; 0 uses
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.u ; 3 uses
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 2 uses
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %12, align 8 ; 4 uses
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 8, !tbaa !185 ; 5 uses
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %13, align 8 ; 4 uses
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !185 ; 5 uses
  %.sroa.033.0.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.i, i64 0 ; 3 uses
  %i.z = fpext float %.sroa.033.0.vec.extract.i to double ; 3 uses
  %.sroa.033.4.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.i, i64 1 ; 3 uses
  %i.aa = fpext float %.sroa.033.4.vec.extract.i to double ; 3 uses
  %i.ab = fpext float %.sroa.28.0.copyload.i to double ; 3 uses
  %.sroa.031.0.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 0 ; 3 uses
  %i.ac = fpext float %.sroa.031.0.vec.extract.i to double ; 3 uses
  %.sroa.031.4.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 1 ; 3 uses
  %i.ad = fpext float %.sroa.031.4.vec.extract.i to double ; 3 uses
  %i.ae = fpext float %.sroa.26.0.copyload.i to double ; 3 uses
  %i.af = fmul double %i.aa, %i.aa
  %i.ag = call double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.af)
  %i.ah = call noundef double @llvm.fmuladd.f64(double %i.ab, double %i.ab, double %i.ag)
  %i.ai = fmul double %i.ad, %i.ad
  %i.aj = call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.ai)
  %i.ak = call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %i.aj)
  %i.al = fmul double %i.ah, %i.ak                ; 2 uses
  %i.am = fcmp ogt double %i.al, 0.000000e+00
  br i1 %i.am, label %bb.c, label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

bb.c:                                             ; preds = %bb.b
  %i.an = fmul double %i.aa, %i.ad
  %i.ao = call double @llvm.fmuladd.f64(double %i.z, double %i.ac, double %i.an)
  %i.ap = call noundef double @llvm.fmuladd.f64(double %i.ab, double %i.ae, double %i.ao)
  %i.aq = call nnan double @llvm.sqrt.f64(double %i.al)
  %i.ar = fdiv nnan double 1.000000e+00, %i.aq
  %i.as = fmul double %i.ap, %i.ar
  %i.at = fptrunc double %i.as to float
  br label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit: ; preds = %bb.b, %bb.c
  %i.au = phi float [ %i.at, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.av = fcmp ogt float %i.au, 1.000000e+00
  %.sroa.speculated7.i = select i1 %i.av, float 1.000000e+00, float %i.au ; 2 uses
  %i.aw = fcmp olt float %.sroa.speculated7.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.aw, float -1.000000e+00, float %.sroa.speculated7.i ; 4 uses
  %i.ax = call noundef float @acosf(float noundef %.sroa.speculated.i) #9
  %i.ay = call noundef float @cosf(float noundef %i.ax) #9, !noalias !308 ; 4 uses
  %i.az = fsub float %i.ay, %i.q                  ; 3 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fpext float %i.p to double
  %i.bc = fmul double %i.bb, 5.000000e-01
  %i.bd = fpext float %i.ba to double
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = fptrunc double %i.be to float
  %i.bg = fneg float %i.ay
  %i.bh = call float @llvm.fmuladd.f32(float %i.bg, float %i.ay, float 1.000000e+00) ; 3 uses
  %i.bi = call noundef float @sqrtf(float noundef %i.bh) #9, !noalias !308
  %i.bj = fdiv float %i.bf, %i.bh
  %i.bk = fmul float %.sroa.speculated.i, %.sroa.speculated.i ; 2 uses
  %i.bl = fcmp olt float %i.bk, 1.000000e+00
  br i1 %i.bl, label %bb.d, label %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit

bb.d:                                             ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit
  %i.bm = fneg float %i.p
  %i.bn = fmul float %i.az, %i.bm
  %i.bo = call float @llvm.fmuladd.f32(float %i.ay, float %i.q, float -1.000000e+00)
  %i.bp = fmul float %i.bh, %i.bi
  %i.bq = fdiv float %i.bo, %i.bp
  %i.br = fmul float %i.bn, %i.bq
  %i.bs = fsub float 1.000000e+00, %i.bk
  %i.bt = call noundef float @sqrtf(float noundef %i.bs) #9
  %i.bu = fdiv float %i.br, %i.bt                 ; 2 uses
  %i.bv = fmul float %.sroa.speculated.i, %i.bu   ; 2 uses
  %i.bw = fmul float %.sroa.033.4.vec.extract.i, %.sroa.033.4.vec.extract.i
  %i.bx = call float @llvm.fmuladd.f32(float %.sroa.033.0.vec.extract.i, float %.sroa.033.0.vec.extract.i, float %i.bw)
  %i.by = fmul float %.sroa.031.4.vec.extract.i, %.sroa.031.4.vec.extract.i
  %i.bz = call float @llvm.fmuladd.f32(float %.sroa.031.0.vec.extract.i, float %.sroa.031.0.vec.extract.i, float %i.by)
  %i.ca = call noundef float @llvm.fmuladd.f32(float %.sroa.28.0.copyload.i, float %.sroa.28.0.copyload.i, float %i.bx) ; 2 uses
  %i.cb = fdiv float %i.bv, %i.ca                 ; 2 uses
  %i.cc = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %.sroa.07.0.copyload.i, %i.cd
  %i.cf = fmul float %.sroa.28.0.copyload.i, %i.cb
  %i.cg = call noundef float @llvm.fmuladd.f32(float %.sroa.26.0.copyload.i, float %.sroa.26.0.copyload.i, float %i.bz) ; 2 uses
  %i.ch = fdiv float %i.bv, %i.cg                 ; 2 uses
  %i.ci = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %.sroa.05.0.copyload.i, %i.cj
  %i.cl = fmul float %.sroa.26.0.copyload.i, %i.ch
  %i.cm = fmul float %i.ca, %i.cg
  %i.cn = call float @llvm.sqrt.f32(float %i.cm)
  %i.co = fdiv float %i.bu, %i.cn                 ; 3 uses
  %i.cp = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = fmul <2 x float> %.sroa.05.0.copyload.i, %i.cq
  %i.cs = fmul float %.sroa.26.0.copyload.i, %i.co
  %i.ct = fsub <2 x float> %i.ce, %i.cr           ; 3 uses
  %i.cu = fsub float %i.cf, %i.cs                 ; 3 uses
  %i.cv = fmul <2 x float> %.sroa.07.0.copyload.i, %i.cq
  %i.cw = fmul float %.sroa.28.0.copyload.i, %i.co
  %i.cx = fsub <2 x float> %i.ck, %i.cv           ; 3 uses
  %i.cy = fsub float %i.cl, %i.cw                 ; 3 uses
  %i.cz = fadd float %i.cu, %i.cy                 ; 2 uses
  %i.da = fadd <2 x float> %i.ct, zeroinitializer
  %i.db = fadd float %i.cu, 0.000000e+00
  %i.dc = fadd <2 x float> %i.ct, %i.cx           ; 2 uses
  %i.dd = fsub <2 x float> zeroinitializer, %i.dc
  %i.de = fsub float 0.000000e+00, %i.cz
  %i.df = fadd <2 x float> %i.cx, zeroinitializer
  %i.dg = fadd float %i.cy, 0.000000e+00
  %i.dh = load <2 x float>, ptr %i.v, align 4, !tbaa !169
  %i.di = fadd <2 x float> %i.dh, %i.ct
  %i.dj = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !169
  %i.dl = fadd float %i.dk, %i.cu
  store <2 x float> %i.di, ptr %i.v, align 4
  store float %i.dl, ptr %i.dj, align 4, !tbaa !185
  %i.dm = load <2 x float>, ptr %i.y, align 4, !tbaa !169
  %i.dn = fsub <2 x float> %i.dm, %i.dc
  %i.do = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !169
  %i.dq = fsub float %i.dp, %i.cz
  store <2 x float> %i.dn, ptr %i.y, align 4
  store float %i.dq, ptr %i.do, align 4, !tbaa !185
  %i.dr = load <2 x float>, ptr %i.x, align 4, !tbaa !169
  %i.ds = fadd <2 x float> %i.cx, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !169
  %i.dv = fadd float %i.cy, %i.du
  store <2 x float> %i.ds, ptr %i.x, align 4
  store float %i.dv, ptr %i.dt, align 4, !tbaa !185
  br label %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit

_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit: ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit, %bb.d
  %.sroa.9155.0 = phi float [ %i.db, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0148.0 = phi <2 x float> [ %i.da, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9146.0 = phi float [ %i.de, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0139.0 = phi <2 x float> [ %i.dd, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9.0 = phi float [ %i.dg, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0131.0 = phi <2 x float> [ %i.df, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %i.dw = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.dw, %.sroa.0166.0.extract.trunc
  %i.dx = load i32, ptr %i.b, align 4
  %i.dy = icmp sgt i32 %i.dx, %.sroa.0166.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.dy, i1 false
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit
  %i.dz = load i64, ptr %6, align 8
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = getelementptr inbounds [12 x i8], ptr %i.ea, i64 %i.h
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.f:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit
  %i.ec = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.not.i.i.i, label %.preheader243, label %bb.h

.preheader243:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit209.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader243
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !160
  %i.ef = icmp eq i32 %i.ee, %.sroa.0166.0.extract.trunc
  br i1 %i.ef, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader243, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.eg = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.eh = urem i64 %i.h, %i.eg                    ; 5 uses
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i, label %.loopexit209.thread, label %bb.i

.loopexit209.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0184)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !42 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i32, ptr %i.em, align 4, !tbaa !160
  %i.eo = icmp eq i32 %i.en, %.sroa.0166.0.extract.trunc
  br i1 %i.eo, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.ep = icmp eq i32 %i.es, %.sroa.0166.0.extract.trunc
  br i1 %i.ep, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.eq, %bb.j ], [ %i.el, %bb.i ]
  %i.eq = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit209, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i32, ptr %i.er, align 4, !tbaa !160 ; 2 uses
  %i.et = sext i32 %i.es to i64
  %i.eu = urem i64 %i.et, %i.eg
  %.not19.i.i.i.i.i = icmp eq i64 %i.eu, %i.eh
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.loopexit209, !llvm.loop !6

.loopexit209.loopexit:                            ; preds = %.preheader243
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre263 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre268.a = urem i64 %i.h, %.pre               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre263, i64 %.pre268.a
  %.pre273 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit209

.loopexit209:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit209.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.ev = phi ptr [ %i.ek, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre273, %.loopexit209.loopexit ], [ %i.ek, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.eh, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre268.a, %.loopexit209.loopexit ], [ %i.eh, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.ew = phi i64 [ %i.eg, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit209.loopexit ], [ %i.eg, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0184)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit209
  %i.ex = load ptr, ptr %i.ev, align 8, !tbaa !42 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !160
  %i.fa = icmp eq i32 %i.ez, %.sroa.0166.0.extract.trunc
  br i1 %i.fa, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.fb = icmp eq i32 %i.fe, %.sroa.0166.0.extract.trunc
  br i1 %i.fb, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.fc, %bb.m ], [ %i.ex, %bb.l ]
  %i.fc = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !160 ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = urem i64 %i.ff, %i.ew
  %.not19.i.i.i.i = icmp eq i64 %i.fg, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit209.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit209
  %.pre-phi305 = phi i64 [ %i.eh, %.loopexit209.thread ], [ %.pre-phi, %.loopexit209 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.fh = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.fh, align 8, !tbaa !42
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i32 %.sroa.0166.0.extract.trunc, ptr %i.fi, align 8, !tbaa !240
  %i.fj = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi305, i64 noundef %i.h, ptr noundef nonnull %i.fh, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa334.sink = phi ptr [ %i.la, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91 ], [ %i.kh, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80 ], [ %i.in, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53 ], [ %i.hu, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42 ], [ %i.ga, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17 ], [ %i.fh, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.ld, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91 ], [ %i.kk, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80 ], [ %i.iq, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53 ], [ %i.hx, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42 ], [ %i.gd, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17 ], [ %i.fk, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa334.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.fj, %.loopexit.i.i ], [ %i.ex, %bb.l ], [ %i.fc, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0184)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.fl = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.fm = urem i64 %i.h, %i.fl                    ; 3 uses
  %i.fn = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fm
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.fp, null
end_hunk_3
begin_hunk_4_@_ZN5nblib13computeForcesISt5arrayIiLm3EENS_10PairLJTypeENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES7_NS_5NoPbcEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_:bb.a
  br i1 %.not.i.i.i.i48, label %.loopexit.i.i54, label %bb.z

bb.z:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit36
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !42 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !160
  %i.dz = icmp eq i32 %i.dy, %.sroa.0104.4.extract.trunc
  br i1 %i.dz, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58, label %.lr.ph.i.i.i.i49

bb.aa:                                            ; preds = %bb.ab
  %i.ea = icmp eq i32 %i.ed, %.sroa.0104.4.extract.trunc
  br i1 %i.ea, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58, label %.lr.ph.i.i.i.i49, !llvm.loop !6

.lr.ph.i.i.i.i49:                                 ; preds = %bb.z, %bb.aa
  %.020.i.i.i.i50 = phi ptr [ %i.eb, %bb.aa ], [ %i.dw, %bb.z ]
  %i.eb = load ptr, ptr %.020.i.i.i.i50, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i51 = icmp eq ptr %i.eb, null
  br i1 %.not18.i.i.i.i51, label %.loopexit.i.i54, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i49
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !160 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = urem i64 %i.ee, %i.dr
  %.not19.i.i.i.i52 = icmp eq i64 %i.ef, %i.ds
  br i1 %.not19.i.i.i.i52, label %bb.aa, label %..loopexit_crit_edge21.i.i.i.i53, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i53:                 ; preds = %bb.ab
  br label %.loopexit.i.i54, !llvm.loop !6

.loopexit.i.i54:                                  ; preds = %.lr.ph.i.i.i.i49, %..loopexit_crit_edge21.i.i.i.i53, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit36
  %i.eg = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.eg, align 8, !tbaa !42
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i32 %.sroa.0104.4.extract.trunc, ptr %i.eh, align 8, !tbaa !240
  %i.ei = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.ds, i64 noundef %i.j, ptr noundef nonnull %i.eg, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i55

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i55: ; preds = %.loopexit.i.i54
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58: ; preds = %bb.aa, %bb.z, %.loopexit.i.i54
  %.pn.i.i56 = phi ptr [ %i.ei, %.loopexit.i.i54 ], [ %i.dw, %bb.z ], [ %i.eb, %bb.aa ]
  %.1.i.i57 = getelementptr inbounds nuw i8, ptr %.pn.i.i56, i64 12
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit.i

_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit.i: ; preds = %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58, %bb.p
  %.0.i.i = phi ptr [ %i.ch, %bb.p ], [ %.1.i.i57, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58 ] ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.r, %i.r
  %i.ek = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.el = extractelement <2 x float> %i.r, i64 0  ; 2 uses
  %i.em = tail call float @llvm.fmuladd.f32(float %i.el, float %i.el, float %i.ek)
  %i.en = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.em) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.en) ; 2 uses
  %i.eo = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.ep = fmul float %i.eo, %i.eo                 ; 3 uses
  %i.eq = fmul float %i.ep, %i.ep
  %i.er = fmul float %i.ep, %i.eq                 ; 4 uses
  %i.es = fneg float %i.p
  %i.et = tail call float @llvm.fmuladd.f32(float %i.q, float %i.er, float %i.es)
  %i.eu = fmul float %i.er, %i.et
  %i.ev = fcmp une float %i.en, 0.000000e+00
  br i1 %i.ev, label %bb.ac, label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_10PairLJTypeES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEENS_11G96BondTypeENS_13CubicBondTypeENS_13MorseBondTypeENSC_INS_21FENEBondTypeParameterEEENSC_INS_38HalfAttractiveQuarticBondTypeParameterEEES6_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS13_IKSU_EEPT_NS13_IT2_EERKT3_.exit

bb.ac:                                            ; preds = %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit.i
  %i.ew = fmul float %i.q, 1.200000e+01
  %i.ex = fmul float %i.p, -6.000000e+00
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.er, float %i.ex)
  %i.ez = fmul float %i.er, %i.ey
  %i.fa = fmul float %i.eo, %i.ez
  %i.fb = fdiv float %i.fa, %sqrt                 ; 2 uses
  %i.fc = fmul float %i.s, %i.fb                  ; 4 uses
  %i.fd = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = fmul <2 x float> %i.r, %i.fe            ; 4 uses
  %i.fg = load <2 x float>, ptr %.0.i11.i, align 4, !tbaa !169
  %i.fh = fadd <2 x float> %i.ff, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 8 ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !169
  %i.fk = fadd float %i.fc, %i.fj
  store <2 x float> %i.fh, ptr %.0.i11.i, align 4
  store float %i.fk, ptr %i.fi, align 4, !tbaa !185
  %i.fl = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.fm = fsub <2 x float> %i.fl, %i.ff
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !169
  %i.fp = fsub float %i.fo, %i.fc
  store <2 x float> %i.fm, ptr %.0.i.i, align 4
  store float %i.fp, ptr %i.fn, align 4, !tbaa !185
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !169
  %i.fs = fadd float %i.fc, %i.fr
  %i.ft = load <2 x float>, ptr %i.t, align 4, !tbaa !169
  %i.fu = fadd <2 x float> %i.ff, %i.ft
  %i.fv = fsub <2 x float> %i.fu, %i.ff
  %i.fw = fsub float %i.fs, %i.fc
  store <2 x float> %i.fv, ptr %i.t, align 4
  store float %i.fw, ptr %i.fq, align 4, !tbaa !185
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_10PairLJTypeES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEENS_11G96BondTypeENS_13CubicBondTypeENS_13MorseBondTypeENSC_INS_21FENEBondTypeParameterEEENSC_INS_38HalfAttractiveQuarticBondTypeParameterEEES6_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS13_IKSU_EEPT_NS13_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_10PairLJTypeES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEENS_11G96BondTypeENS_13CubicBondTypeENS_13MorseBondTypeENSC_INS_21FENEBondTypeParameterEEENSC_INS_38HalfAttractiveQuarticBondTypeParameterEEES6_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS13_IKSU_EEPT_NS13_IT2_EERKT3_.exit: ; preds = %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit.i, %bb.ac
  %.sroa.073.0.vec.extract = extractelement <2 x float> %.sroa.073.0152, i64 0
  %i.fx = fadd float %.sroa.073.0.vec.extract, %i.eu
  %.sroa.073.0.vec.insert = insertelement <2 x float> %.sroa.073.0152, float %i.fx, i64 0 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.065.0153, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.fy, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES9_NS_5NoPbcEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0216 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0209 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0203 = alloca [3 x float], align 4       ; 6 uses
  %.not267 = icmp eq ptr %0, %1
  br i1 %.not267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0121.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0121.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0121.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0113.0269 = phi ptr [ %0, %.lr.ph ], [ %i.kt, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0121.0268 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0121.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0113.0269, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0113.0269, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !216    ; 2 uses
  %.sroa.0198.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0198.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0198.4.extract.trunc = trunc nuw i64 %.sroa.0198.4.extract.shift to i32 ; 11 uses
  %.sroa.5199.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.h = ashr exact i64 %sext, 32                 ; 7 uses
  %i.i = getelementptr inbounds [12 x i8], ptr %4, i64 %i.h ; 2 uses
  %.sroa.7190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.7190.0.copyload = load float, ptr %.sroa.7190.0..sroa_idx, align 4, !tbaa !185
  %i.j = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.k = getelementptr inbounds [12 x i8], ptr %4, i64 %i.j ; 2 uses
  %.sroa.7184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.7184.0.copyload = load float, ptr %.sroa.7184.0..sroa_idx, align 4, !tbaa !185
  %sext235 = shl i64 %.sroa.2.0.copyload, 32
  %i.l = ashr exact i64 %sext235, 32              ; 7 uses
  %i.m = getelementptr inbounds [12 x i8], ptr %4, i64 %i.l ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !185
  %i.n = ashr i64 %.sroa.2.0.copyload, 32
  %i.o = getelementptr inbounds [8 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.p = load float, ptr %i.o, align 4            ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load float, ptr %.sroa_idx, align 4
  %i.r = load <2 x float>, ptr %i.i, align 4
  %i.s = load <2 x float>, ptr %i.k, align 4      ; 2 uses
  %i.t = load <2 x float>, ptr %i.m, align 4
  %i.u = fsub <2 x float> %i.r, %i.s              ; 4 uses
  %i.v = fsub <2 x float> %i.t, %i.s              ; 4 uses
  %i.w = insertelement <2 x float> poison, float %.sroa.7190.0.copyload, i64 0
  %i.x = insertelement <2 x float> %i.w, float %.sroa.7.0.copyload, i64 1
  %i.y = insertelement <2 x float> poison, float %.sroa.7184.0.copyload, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fsub <2 x float> %i.x, %i.z             ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 2 uses
  %i.ac = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ad = fpext <2 x float> %i.ac to <2 x double> ; 4 uses
  %i.ae = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.af = fpext <2 x float> %i.ae to <2 x double> ; 4 uses
  %i.ag = fpext <2 x float> %i.aa to <2 x double> ; 4 uses
  %i.ah = fmul <2 x double> %i.af, %i.af
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.ad, <2 x double> %i.ah)
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.ag, <2 x double> %i.ai) ; 2 uses
  %shift = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.aj, %shift
  %i.ak = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.al = fcmp ogt double %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.c, label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

bb.c:                                             ; preds = %bb.b
  %shift393 = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop394 = fmul <2 x double> %shift393, %i.af
  %i.am = extractelement <2 x double> %foldExtExtBinop394, i64 0
  %i.an = extractelement <2 x double> %i.ad, i64 0
  %i.ao = extractelement <2 x double> %i.ad, i64 1
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ao, double %i.am)
  %i.aq = extractelement <2 x double> %i.ag, i64 0
  %i.ar = extractelement <2 x double> %i.ag, i64 1
  %i.as = tail call noundef double @llvm.fmuladd.f64(double %i.aq, double %i.ar, double %i.ap)
  %i.at = tail call nnan double @llvm.sqrt.f64(double %i.ak)
  %i.au = fdiv nnan double 1.000000e+00, %i.at
  %i.av = fmul double %i.as, %i.au
  %i.aw = fptrunc double %i.av to float
  br label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit: ; preds = %bb.b, %bb.c
  %i.ax = phi float [ %i.aw, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.ay = fcmp ogt float %i.ax, 1.000000e+00
  %.sroa.speculated7.i = select i1 %i.ay, float 1.000000e+00, float %i.ax ; 2 uses
  %i.az = fcmp olt float %.sroa.speculated7.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.az, float -1.000000e+00, float %.sroa.speculated7.i ; 4 uses
  %i.ba = tail call noundef float @acosf(float noundef %.sroa.speculated.i) #9
  %i.bb = fsub float %i.ba, %i.q                  ; 3 uses
  %i.bc = fmul float %i.bb, %i.bb
  %i.bd = fpext float %i.p to double
  %i.be = fmul double %i.bd, 5.000000e-01
  %i.bf = fpext float %i.bc to double
  %i.bg = fmul double %i.be, %i.bf
  %i.bh = fptrunc double %i.bg to float
  %i.bi = fmul float %.sroa.speculated.i, %.sroa.speculated.i ; 2 uses
  %i.bj = fcmp olt float %i.bi, 1.000000e+00
  br i1 %i.bj, label %bb.d, label %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit

bb.d:                                             ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit
  %i.bk = fneg float %i.p
  %i.bl = fmul float %i.bb, %i.bk
  %i.bm = fsub float 1.000000e+00, %i.bi
  %i.bn = tail call noundef float @sqrtf(float noundef %i.bm) #9
  %i.bo = fdiv float %i.bl, %i.bn                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %9 = load float, ptr %i.bp, align 4, !tbaa !169
  %i.bq = fmul <2 x float> %i.ae, %i.ae
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ac, <2 x float> %i.bq)
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.aa, <2 x float> %i.br) ; 3 uses
  %shift396 = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop397 = fmul <2 x float> %i.bs, %shift396
  %i.bt = extractelement <2 x float> %foldExtExtBinop397, i64 0
  %i.bu = tail call float @llvm.sqrt.f32(float %i.bt)
  %i.bv = fmul float %.sroa.speculated.i, %i.bo
  %i.bw = fdiv float %i.bo, %i.bu
  %i.bx = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fdiv <2 x float> %i.by, %i.bs           ; 3 uses
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.u, %i.ca
  %i.cc = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ce = fmul <2 x float> %i.v, %i.cd
  %i.cf = fsub <2 x float> %i.cb, %i.ce           ; 3 uses
  %i.cg = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ch = fmul <2 x float> %i.v, %i.cg
  %i.ci = fmul <2 x float> %i.aa, %i.bz
  %i.cj = fmul <2 x float> %i.u, %i.cd
  %i.ck = fmul <2 x float> %i.aa, %i.cd
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cm = fsub <2 x float> %i.ch, %i.cj           ; 3 uses
  %i.cn = fsub <2 x float> %i.ci, %i.cl           ; 2 uses
  %i.co = fadd <2 x float> %i.cf, %i.cm           ; 2 uses
  %i.cp = extractelement <2 x float> %i.cn, i64 0 ; 3 uses
  %i.cq = extractelement <2 x float> %i.cn, i64 1 ; 3 uses
  %i.cr = fadd float %i.cp, %i.cq                 ; 2 uses
  %i.cs = fadd <2 x float> %i.cf, zeroinitializer
  %i.ct = fadd float %i.cp, 0.000000e+00
  %i.cu = fsub <2 x float> zeroinitializer, %i.co
  %i.cv = fsub float 0.000000e+00, %i.cr
  %i.cw = fadd <2 x float> %i.cm, zeroinitializer
  %i.cx = fadd float %i.cq, 0.000000e+00
  %i.cy = load <2 x float>, ptr %i.ab, align 4, !tbaa !169
  %i.cz = fadd <2 x float> %i.cy, %i.cf
  %i.da = fadd float %9, %i.cp
  %i.db = fsub <2 x float> %i.cz, %i.co
  %i.dc = fsub float %i.da, %i.cr
  %i.dd = fadd <2 x float> %i.cm, %i.db
  %i.de = fadd float %i.cq, %i.dc
  store <2 x float> %i.dd, ptr %i.ab, align 4
  store float %i.de, ptr %i.bp, align 4, !tbaa !185
  br label %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit

_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit: ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit, %bb.d
  %.sroa.9170.0 = phi float [ %i.ct, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0163.0 = phi <2 x float> [ %i.cs, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9161.0 = phi float [ %i.cv, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0154.0 = phi <2 x float> [ %i.cu, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9.0 = phi float [ %i.cx, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0146.0 = phi <2 x float> [ %i.cw, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %i.df = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.df, %.sroa.0198.0.extract.trunc
  %i.dg = load i32, ptr %i.b, align 4
  %i.dh = icmp sgt i32 %i.dg, %.sroa.0198.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.dh, i1 false
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit
  %i.di = load i64, ptr %6, align 8
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = getelementptr inbounds [12 x i8], ptr %i.dj, i64 %i.h
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.f:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit
  %i.dl = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not.not.i.i.i, label %.preheader275, label %bb.h

.preheader275:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit241.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader275
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !160
  %i.do = icmp eq i32 %i.dn, %.sroa.0198.0.extract.trunc
  br i1 %i.do, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader275, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.dp = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.dq = urem i64 %i.h, %i.dp                    ; 5 uses
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dq
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i, label %.loopexit241.thread, label %bb.i

.loopexit241.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0216)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !42 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !160
  %i.dx = icmp eq i32 %i.dw, %.sroa.0198.0.extract.trunc
  br i1 %i.dx, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.dy = icmp eq i32 %i.eb, %.sroa.0198.0.extract.trunc
  br i1 %i.dy, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.dz, %bb.j ], [ %i.du, %bb.i ]
  %i.dz = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit241, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !160 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = urem i64 %i.ec, %i.dp
  %.not19.i.i.i.i.i = icmp eq i64 %i.ed, %i.dq
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.loopexit241, !llvm.loop !6

.loopexit241.loopexit:                            ; preds = %.preheader275
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre295 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre300.a = urem i64 %i.h, %.pre               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre295, i64 %.pre300.a
  %.pre305 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit241

.loopexit241:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit241.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.ee = phi ptr [ %i.dt, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre305, %.loopexit241.loopexit ], [ %i.dt, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.dq, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre300.a, %.loopexit241.loopexit ], [ %i.dq, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.ef = phi i64 [ %i.dp, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit241.loopexit ], [ %i.dp, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0216)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit241
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !42 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !160
  %i.ej = icmp eq i32 %i.ei, %.sroa.0198.0.extract.trunc
  br i1 %i.ej, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.ek = icmp eq i32 %i.en, %.sroa.0198.0.extract.trunc
  br i1 %i.ek, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.el, %bb.m ], [ %i.eg, %bb.l ]
  %i.el = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i32, ptr %i.em, align 4, !tbaa !160 ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = urem i64 %i.eo, %i.ef
  %.not19.i.i.i.i = icmp eq i64 %i.ep, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit241.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit241
  %.pre-phi339 = phi i64 [ %i.dq, %.loopexit241.thread ], [ %.pre-phi, %.loopexit241 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.eq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.eq, align 8, !tbaa !42
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i32 %.sroa.0198.0.extract.trunc, ptr %i.er, align 8, !tbaa !240
  %i.es = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi339, i64 noundef %i.h, ptr noundef nonnull %i.eq, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa368.sink = phi ptr [ %i.kj, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.jq, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.hw, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.hd, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50 ], [ %i.fj, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23 ], [ %i.eq, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.km, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.jt, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.hz, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.hg, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50 ], [ %i.fm, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23 ], [ %i.et, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa368.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.es, %.loopexit.i.i ], [ %i.eg, %bb.l ], [ %i.el, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0216)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.eu = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.ev = urem i64 %i.h, %i.eu                    ; 3 uses
  %i.ew = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ev
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i16, label %.loopexit.i.i22, label %bb.o

bb.o:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !42 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !160
  %i.fc = icmp eq i32 %i.fb, %.sroa.0198.0.extract.trunc
  br i1 %i.fc, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit26, label %.lr.ph.i.i.i.i17

bb.p:                                             ; preds = %bb.q
  %i.fd = icmp eq i32 %i.fg, %.sroa.0198.0.extract.trunc
  br i1 %i.fd, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit26, label %.lr.ph.i.i.i.i17, !llvm.loop !6

.lr.ph.i.i.i.i17:                                 ; preds = %bb.o, %bb.p
  %.020.i.i.i.i18 = phi ptr [ %i.fe, %bb.p ], [ %i.ez, %bb.o ]
  %i.fe = load ptr, ptr %.020.i.i.i.i18, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i19 = icmp eq ptr %i.fe, null
  br i1 %.not18.i.i.i.i19, label %.loopexit.i.i22, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !160 ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = urem i64 %i.fh, %i.eu
  %.not19.i.i.i.i20 = icmp eq i64 %i.fi, %i.ev
  br i1 %.not19.i.i.i.i20, label %bb.p, label %..loopexit_crit_edge21.i.i.i.i21, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i21:                 ; preds = %bb.q
  br label %.loopexit.i.i22, !llvm.loop !6

.loopexit.i.i22:                                  ; preds = %.lr.ph.i.i.i.i17, %..loopexit_crit_edge21.i.i.i.i21, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.fj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.fj, align 8, !tbaa !42
end_hunk_4
begin_hunk_5_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES9_NS_5NoPbcEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_:bb.a

.lr.ph.i.i.i.i82:                                 ; preds = %bb.al, %bb.am
  %.020.i.i.i.i83 = phi ptr [ %i.jl, %bb.am ], [ %i.jg, %bb.al ]
  %i.jl = load ptr, ptr %.020.i.i.i.i83, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i84 = icmp eq ptr %i.jl, null
  br i1 %.not18.i.i.i.i84, label %.loopexit.i.i87, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i82
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !160 ; 2 uses
  %i.jo = sext i32 %i.jn to i64
  %i.jp = urem i64 %i.jo, %i.jf
  %.not19.i.i.i.i85 = icmp eq i64 %i.jp, %.pre-phi304
  br i1 %.not19.i.i.i.i85, label %bb.am, label %..loopexit_crit_edge21.i.i.i.i86, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i86:                 ; preds = %bb.an
  br label %.loopexit.i.i87, !llvm.loop !6

.loopexit.i.i87:                                  ; preds = %.lr.ph.i.i.i.i82, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i86, %.loopexit
  %.pre-phi304345 = phi i64 [ %i.iq, %.loopexit.thread ], [ %.pre-phi304, %.loopexit ], [ %.pre-phi304, %..loopexit_crit_edge21.i.i.i.i86 ], [ %.pre-phi304, %.lr.ph.i.i.i.i82 ]
  %i.jq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.jq, align 8, !tbaa !42
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store i32 %.sroa.5199.8.extract.trunc, ptr %i.jr, align 8, !tbaa !240
  %i.js = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi304345, i64 noundef %i.l, ptr noundef nonnull %i.jq, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88: ; preds = %.loopexit.i.i87
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91: ; preds = %bb.am, %bb.al, %.loopexit.i.i87
  %.pn.i.i89 = phi ptr [ %i.js, %.loopexit.i.i87 ], [ %i.jg, %bb.al ], [ %i.jl, %bb.am ]
  %.1.i.i90 = getelementptr inbounds nuw i8, ptr %.pn.i.i89, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i90, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0203, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0203)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80: ; preds = %bb.aj, %bb.ag, %bb.ai, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91
  %i.ju = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.jv = urem i64 %i.l, %i.ju                    ; 3 uses
  %i.jw = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.jv
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i92, label %.loopexit.i.i98, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !42 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !160
  %i.kc = icmp eq i32 %i.kb, %.sroa.5199.8.extract.trunc
  br i1 %i.kc, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102, label %.lr.ph.i.i.i.i93

bb.ap:                                            ; preds = %bb.aq
  %i.kd = icmp eq i32 %i.kg, %.sroa.5199.8.extract.trunc
  br i1 %i.kd, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102, label %.lr.ph.i.i.i.i93, !llvm.loop !6

.lr.ph.i.i.i.i93:                                 ; preds = %bb.ao, %bb.ap
  %.020.i.i.i.i94 = phi ptr [ %i.ke, %bb.ap ], [ %i.jz, %bb.ao ]
  %i.ke = load ptr, ptr %.020.i.i.i.i94, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i95 = icmp eq ptr %i.ke, null
  br i1 %.not18.i.i.i.i95, label %.loopexit.i.i98, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i93
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !160 ; 2 uses
  %i.kh = sext i32 %i.kg to i64
  %i.ki = urem i64 %i.kh, %i.ju
  %.not19.i.i.i.i96 = icmp eq i64 %i.ki, %i.jv
  br i1 %.not19.i.i.i.i96, label %bb.ap, label %..loopexit_crit_edge21.i.i.i.i97, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i97:                 ; preds = %bb.aq
  br label %.loopexit.i.i98, !llvm.loop !6

.loopexit.i.i98:                                  ; preds = %.lr.ph.i.i.i.i93, %..loopexit_crit_edge21.i.i.i.i97, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80
  %i.kj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.kj, align 8, !tbaa !42
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store i32 %.sroa.5199.8.extract.trunc, ptr %i.kk, align 8, !tbaa !240
  %i.kl = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.jv, i64 noundef %i.l, ptr noundef nonnull %i.kj, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99: ; preds = %.loopexit.i.i98
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102: ; preds = %bb.ap, %bb.ao, %.loopexit.i.i98
  %.pn.i.i100 = phi ptr [ %i.kl, %.loopexit.i.i98 ], [ %i.jz, %bb.ao ], [ %i.ke, %bb.ap ]
  %.1.i.i101 = getelementptr inbounds nuw i8, ptr %.pn.i.i100, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ae, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102
  %.0.i.i = phi ptr [ %i.ik, %bb.ae ], [ %.1.i.i101, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102 ] ; 3 uses
  %i.kn = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.ko = fadd <2 x float> %.sroa.0146.0, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !169
  %i.kr = fadd float %.sroa.9.0, %i.kq
  store <2 x float> %i.ko, ptr %.0.i.i, align 4
  store float %i.kr, ptr %i.kp, align 4, !tbaa !185
  %.sroa.0121.0.vec.extract = extractelement <2 x float> %.sroa.0121.0268, i64 0
  %i.ks = fadd float %.sroa.0121.0.vec.extract, %i.bh
  %.sroa.0121.0.vec.insert = insertelement <2 x float> %.sroa.0121.0268, float %i.ks, i64 0 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0113.0269, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.kt, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_16CosineParamAngleINS_17G96AngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES9_NS_5NoPbcEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0216 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0209 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0203 = alloca [3 x float], align 4       ; 6 uses
  %.not267 = icmp eq ptr %0, %1
  br i1 %.not267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0121.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0121.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0121.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0113.0269 = phi ptr [ %0, %.lr.ph ], [ %i.kz, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0121.0268 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0121.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0113.0269, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0113.0269, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !216    ; 2 uses
  %.sroa.0198.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0198.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0198.4.extract.trunc = trunc nuw i64 %.sroa.0198.4.extract.shift to i32 ; 11 uses
  %.sroa.5199.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.h = ashr exact i64 %sext, 32                 ; 7 uses
  %i.i = getelementptr inbounds [12 x i8], ptr %4, i64 %i.h ; 2 uses
  %.sroa.7190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.7190.0.copyload = load float, ptr %.sroa.7190.0..sroa_idx, align 4, !tbaa !185
  %i.j = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.k = getelementptr inbounds [12 x i8], ptr %4, i64 %i.j ; 2 uses
  %.sroa.7184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.7184.0.copyload = load float, ptr %.sroa.7184.0..sroa_idx, align 4, !tbaa !185
  %sext235 = shl i64 %.sroa.2.0.copyload, 32
  %i.l = ashr exact i64 %sext235, 32              ; 7 uses
  %i.m = getelementptr inbounds [12 x i8], ptr %4, i64 %i.l ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !185
  %i.n = ashr i64 %.sroa.2.0.copyload, 32
  %i.o = getelementptr inbounds [8 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.p = load float, ptr %i.o, align 4            ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load float, ptr %.sroa_idx, align 4
  %i.r = load <2 x float>, ptr %i.i, align 4
  %i.s = load <2 x float>, ptr %i.k, align 4      ; 2 uses
  %i.t = load <2 x float>, ptr %i.m, align 4
  %i.u = fsub <2 x float> %i.r, %i.s              ; 4 uses
  %i.v = fsub <2 x float> %i.t, %i.s              ; 4 uses
  %i.w = insertelement <2 x float> poison, float %.sroa.7190.0.copyload, i64 0
  %i.x = insertelement <2 x float> %i.w, float %.sroa.7.0.copyload, i64 1
  %i.y = insertelement <2 x float> poison, float %.sroa.7184.0.copyload, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fsub <2 x float> %i.x, %i.z             ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 2 uses
  %i.ac = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ad = fpext <2 x float> %i.ac to <2 x double> ; 4 uses
  %i.ae = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.af = fpext <2 x float> %i.ae to <2 x double> ; 4 uses
  %i.ag = fpext <2 x float> %i.aa to <2 x double> ; 4 uses
  %i.ah = fmul <2 x double> %i.af, %i.af
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.ad, <2 x double> %i.ah)
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.ag, <2 x double> %i.ai) ; 2 uses
  %shift = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.aj, %shift
  %i.ak = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.al = fcmp ogt double %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.c, label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

bb.c:                                             ; preds = %bb.b
  %shift393 = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop394 = fmul <2 x double> %shift393, %i.af
  %i.am = extractelement <2 x double> %foldExtExtBinop394, i64 0
  %i.an = extractelement <2 x double> %i.ad, i64 0
  %i.ao = extractelement <2 x double> %i.ad, i64 1
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ao, double %i.am)
  %i.aq = extractelement <2 x double> %i.ag, i64 0
  %i.ar = extractelement <2 x double> %i.ag, i64 1
  %i.as = tail call noundef double @llvm.fmuladd.f64(double %i.aq, double %i.ar, double %i.ap)
  %i.at = tail call nnan double @llvm.sqrt.f64(double %i.ak)
  %i.au = fdiv nnan double 1.000000e+00, %i.at
  %i.av = fmul double %i.as, %i.au
  %i.aw = fptrunc double %i.av to float
  br label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit: ; preds = %bb.b, %bb.c
  %i.ax = phi float [ %i.aw, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.ay = fcmp ogt float %i.ax, 1.000000e+00
  %.sroa.speculated7.i = select i1 %i.ay, float 1.000000e+00, float %i.ax ; 2 uses
  %i.az = fcmp olt float %.sroa.speculated7.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.az, float -1.000000e+00, float %.sroa.speculated7.i ; 4 uses
  %i.ba = tail call noundef float @acosf(float noundef %.sroa.speculated.i) #9
  %i.bb = tail call noundef float @cosf(float noundef %i.ba) #9, !noalias !331 ; 3 uses
  %i.bc = fsub float %i.bb, %i.q                  ; 3 uses
  %i.bd = fmul float %i.bc, %i.bc
  %i.be = fpext float %i.p to double
  %i.bf = fmul double %i.be, 5.000000e-01
  %i.bg = fpext float %i.bd to double
  %i.bh = fmul double %i.bf, %i.bg
  %i.bi = fptrunc double %i.bh to float
  %i.bj = fneg float %i.bb
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bb, float 1.000000e+00)
  %i.bl = tail call noundef float @sqrtf(float noundef %i.bk) #9, !noalias !331
  %i.bm = fmul float %.sroa.speculated.i, %.sroa.speculated.i ; 2 uses
  %i.bn = fcmp olt float %i.bm, 1.000000e+00
  br i1 %i.bn, label %bb.d, label %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit

bb.d:                                             ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit
  %i.bo = fneg float %i.p
  %i.bp = fmul float %i.bc, %i.bo
  %i.bq = fneg float %i.bl
  %i.br = fmul float %i.bp, %i.bq
  %i.bs = fsub float 1.000000e+00, %i.bm
  %i.bt = tail call noundef float @sqrtf(float noundef %i.bs) #9
  %i.bu = fdiv float %i.br, %i.bt                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %9 = load float, ptr %i.bv, align 4, !tbaa !169
  %i.bw = fmul <2 x float> %i.ae, %i.ae
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ac, <2 x float> %i.bw)
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.aa, <2 x float> %i.bx) ; 3 uses
  %shift396 = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop397 = fmul <2 x float> %i.by, %shift396
  %i.bz = extractelement <2 x float> %foldExtExtBinop397, i64 0
  %i.ca = tail call float @llvm.sqrt.f32(float %i.bz)
  %i.cb = fmul float %.sroa.speculated.i, %i.bu
  %i.cc = fdiv float %i.bu, %i.ca
  %i.cd = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fdiv <2 x float> %i.ce, %i.by           ; 3 uses
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x float> %i.u, %i.cg
  %i.ci = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ck = fmul <2 x float> %i.v, %i.cj
  %i.cl = fsub <2 x float> %i.ch, %i.ck           ; 3 uses
  %i.cm = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cn = fmul <2 x float> %i.v, %i.cm
  %i.co = fmul <2 x float> %i.aa, %i.cf
  %i.cp = fmul <2 x float> %i.u, %i.cj
  %i.cq = fmul <2 x float> %i.aa, %i.cj
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cs = fsub <2 x float> %i.cn, %i.cp           ; 3 uses
  %i.ct = fsub <2 x float> %i.co, %i.cr           ; 2 uses
  %i.cu = fadd <2 x float> %i.cl, %i.cs           ; 2 uses
  %i.cv = extractelement <2 x float> %i.ct, i64 0 ; 3 uses
  %i.cw = extractelement <2 x float> %i.ct, i64 1 ; 3 uses
  %i.cx = fadd float %i.cv, %i.cw                 ; 2 uses
  %i.cy = fadd <2 x float> %i.cl, zeroinitializer
  %i.cz = fadd float %i.cv, 0.000000e+00
  %i.da = fsub <2 x float> zeroinitializer, %i.cu
  %i.db = fsub float 0.000000e+00, %i.cx
  %i.dc = fadd <2 x float> %i.cs, zeroinitializer
  %i.dd = fadd float %i.cw, 0.000000e+00
  %i.de = load <2 x float>, ptr %i.ab, align 4, !tbaa !169
  %i.df = fadd <2 x float> %i.de, %i.cl
  %i.dg = fadd float %9, %i.cv
  %i.dh = fsub <2 x float> %i.df, %i.cu
  %i.di = fsub float %i.dg, %i.cx
  %i.dj = fadd <2 x float> %i.cs, %i.dh
  %i.dk = fadd float %i.cw, %i.di
  store <2 x float> %i.dj, ptr %i.ab, align 4
  store float %i.dk, ptr %i.bv, align 4, !tbaa !185
  br label %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit

_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit: ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit, %bb.d
  %.sroa.9170.0 = phi float [ %i.cz, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0163.0 = phi <2 x float> [ %i.cy, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9161.0 = phi float [ %i.db, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0154.0 = phi <2 x float> [ %i.da, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9.0 = phi float [ %i.dd, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0146.0 = phi <2 x float> [ %i.dc, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %i.dl = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.dl, %.sroa.0198.0.extract.trunc
  %i.dm = load i32, ptr %i.b, align 4
  %i.dn = icmp sgt i32 %i.dm, %.sroa.0198.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.dn, i1 false
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit
  %i.do = load i64, ptr %6, align 8
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = getelementptr inbounds [12 x i8], ptr %i.dp, i64 %i.h
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.f:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit
  %i.dr = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.dr, 0
  br i1 %.not.not.i.i.i, label %.preheader275, label %bb.h

.preheader275:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit241.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader275
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !160
  %i.du = icmp eq i32 %i.dt, %.sroa.0198.0.extract.trunc
  br i1 %i.du, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader275, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.dv = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.dw = urem i64 %i.h, %i.dv                    ; 5 uses
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i, label %.loopexit241.thread, label %bb.i

.loopexit241.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0216)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !42 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !160
  %i.ed = icmp eq i32 %i.ec, %.sroa.0198.0.extract.trunc
  br i1 %i.ed, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.ee = icmp eq i32 %i.eh, %.sroa.0198.0.extract.trunc
  br i1 %i.ee, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.ef, %bb.j ], [ %i.ea, %bb.i ]
  %i.ef = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit241, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !160 ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = urem i64 %i.ei, %i.dv
  %.not19.i.i.i.i.i = icmp eq i64 %i.ej, %i.dw
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.loopexit241, !llvm.loop !6

.loopexit241.loopexit:                            ; preds = %.preheader275
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre295 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre300.a = urem i64 %i.h, %.pre               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre295, i64 %.pre300.a
  %.pre305 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit241

.loopexit241:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit241.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.ek = phi ptr [ %i.dz, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre305, %.loopexit241.loopexit ], [ %i.dz, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.dw, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre300.a, %.loopexit241.loopexit ], [ %i.dw, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.el = phi i64 [ %i.dv, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit241.loopexit ], [ %i.dv, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0216)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit241
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !42 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !160
  %i.ep = icmp eq i32 %i.eo, %.sroa.0198.0.extract.trunc
  br i1 %i.ep, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.eq = icmp eq i32 %i.et, %.sroa.0198.0.extract.trunc
  br i1 %i.eq, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.er, %bb.m ], [ %i.em, %bb.l ]
  %i.er = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i32, ptr %i.es, align 4, !tbaa !160 ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = urem i64 %i.eu, %i.el
  %.not19.i.i.i.i = icmp eq i64 %i.ev, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit241.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit241
  %.pre-phi339 = phi i64 [ %i.dw, %.loopexit241.thread ], [ %.pre-phi, %.loopexit241 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.ew = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ew, align 8, !tbaa !42
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i32 %.sroa.0198.0.extract.trunc, ptr %i.ex, align 8, !tbaa !240
  %i.ey = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi339, i64 noundef %i.h, ptr noundef nonnull %i.ew, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa368.sink = phi ptr [ %i.kp, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.jw, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.ic, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.hj, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50 ], [ %i.fp, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23 ], [ %i.ew, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.ks, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.jz, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.if, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.hm, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50 ], [ %i.fs, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23 ], [ %i.ez, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa368.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.ey, %.loopexit.i.i ], [ %i.em, %bb.l ], [ %i.er, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0216)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.fa = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.fb = urem i64 %i.h, %i.fa                    ; 3 uses
  %i.fc = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fb
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i16, label %.loopexit.i.i22, label %bb.o

bb.o:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !42 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !160
  %i.fi = icmp eq i32 %i.fh, %.sroa.0198.0.extract.trunc
  br i1 %i.fi, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit26, label %.lr.ph.i.i.i.i17

bb.p:                                             ; preds = %bb.q
  %i.fj = icmp eq i32 %i.fm, %.sroa.0198.0.extract.trunc
  br i1 %i.fj, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit26, label %.lr.ph.i.i.i.i17, !llvm.loop !6

.lr.ph.i.i.i.i17:                                 ; preds = %bb.o, %bb.p
  %.020.i.i.i.i18 = phi ptr [ %i.fk, %bb.p ], [ %i.ff, %bb.o ]
  %i.fk = load ptr, ptr %.020.i.i.i.i18, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i19 = icmp eq ptr %i.fk, null
  br i1 %.not18.i.i.i.i19, label %.loopexit.i.i22, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !160 ; 2 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = urem i64 %i.fn, %i.fa
  %.not19.i.i.i.i20 = icmp eq i64 %i.fo, %i.fb
  br i1 %.not19.i.i.i.i20, label %bb.p, label %..loopexit_crit_edge21.i.i.i.i21, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i21:                 ; preds = %bb.q
  br label %.loopexit.i.i22, !llvm.loop !6

.loopexit.i.i22:                                  ; preds = %.lr.ph.i.i.i.i17, %..loopexit_crit_edge21.i.i.i.i21, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.fp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.fp, align 8, !tbaa !42
end_hunk_5
begin_hunk_6_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_16CosineParamAngleINS_17G96AngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES9_NS_5NoPbcEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_:bb.a
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !160 ; 2 uses
  %i.ju = sext i32 %i.jt to i64
  %i.jv = urem i64 %i.ju, %i.jl
  %.not19.i.i.i.i85 = icmp eq i64 %i.jv, %.pre-phi304
  br i1 %.not19.i.i.i.i85, label %bb.am, label %..loopexit_crit_edge21.i.i.i.i86, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i86:                 ; preds = %bb.an
  br label %.loopexit.i.i87, !llvm.loop !6

.loopexit.i.i87:                                  ; preds = %.lr.ph.i.i.i.i82, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i86, %.loopexit
  %.pre-phi304345 = phi i64 [ %i.iw, %.loopexit.thread ], [ %.pre-phi304, %.loopexit ], [ %.pre-phi304, %..loopexit_crit_edge21.i.i.i.i86 ], [ %.pre-phi304, %.lr.ph.i.i.i.i82 ]
  %i.jw = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.jw, align 8, !tbaa !42
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store i32 %.sroa.5199.8.extract.trunc, ptr %i.jx, align 8, !tbaa !240
  %i.jy = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi304345, i64 noundef %i.l, ptr noundef nonnull %i.jw, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88: ; preds = %.loopexit.i.i87
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91: ; preds = %bb.am, %bb.al, %.loopexit.i.i87
  %.pn.i.i89 = phi ptr [ %i.jy, %.loopexit.i.i87 ], [ %i.jm, %bb.al ], [ %i.jr, %bb.am ]
  %.1.i.i90 = getelementptr inbounds nuw i8, ptr %.pn.i.i89, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i90, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0203, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0203)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80: ; preds = %bb.aj, %bb.ag, %bb.ai, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91
  %i.ka = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.kb = urem i64 %i.l, %i.ka                    ; 3 uses
  %i.kc = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kb
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i.i92, label %.loopexit.i.i98, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !42 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !160
  %i.ki = icmp eq i32 %i.kh, %.sroa.5199.8.extract.trunc
  br i1 %i.ki, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102, label %.lr.ph.i.i.i.i93

bb.ap:                                            ; preds = %bb.aq
  %i.kj = icmp eq i32 %i.km, %.sroa.5199.8.extract.trunc
  br i1 %i.kj, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102, label %.lr.ph.i.i.i.i93, !llvm.loop !6

.lr.ph.i.i.i.i93:                                 ; preds = %bb.ao, %bb.ap
  %.020.i.i.i.i94 = phi ptr [ %i.kk, %bb.ap ], [ %i.kf, %bb.ao ]
  %i.kk = load ptr, ptr %.020.i.i.i.i94, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i95 = icmp eq ptr %i.kk, null
  br i1 %.not18.i.i.i.i95, label %.loopexit.i.i98, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i93
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !160 ; 2 uses
  %i.kn = sext i32 %i.km to i64
  %i.ko = urem i64 %i.kn, %i.ka
  %.not19.i.i.i.i96 = icmp eq i64 %i.ko, %i.kb
  br i1 %.not19.i.i.i.i96, label %bb.ap, label %..loopexit_crit_edge21.i.i.i.i97, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i97:                 ; preds = %bb.aq
  br label %.loopexit.i.i98, !llvm.loop !6

.loopexit.i.i98:                                  ; preds = %.lr.ph.i.i.i.i93, %..loopexit_crit_edge21.i.i.i.i97, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80
  %i.kp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.kp, align 8, !tbaa !42
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i32 %.sroa.5199.8.extract.trunc, ptr %i.kq, align 8, !tbaa !240
  %i.kr = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.kb, i64 noundef %i.l, ptr noundef nonnull %i.kp, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99: ; preds = %.loopexit.i.i98
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102: ; preds = %bb.ap, %bb.ao, %.loopexit.i.i98
  %.pn.i.i100 = phi ptr [ %i.kr, %.loopexit.i.i98 ], [ %i.kf, %bb.ao ], [ %i.kk, %bb.ap ]
  %.1.i.i101 = getelementptr inbounds nuw i8, ptr %.pn.i.i100, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ae, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102
  %.0.i.i = phi ptr [ %i.iq, %bb.ae ], [ %.1.i.i101, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102 ] ; 3 uses
  %i.kt = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.ku = fadd <2 x float> %.sroa.0146.0, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !169
  %i.kx = fadd float %.sroa.9.0, %i.kw
  store <2 x float> %i.ku, ptr %.0.i.i, align 4
  store float %i.kx, ptr %i.kv, align 4, !tbaa !185
  %.sroa.0121.0.vec.extract = extractelement <2 x float> %.sroa.0121.0268, i64 0
  %i.ky = fadd float %.sroa.0121.0.vec.extract, %i.bi
  %.sroa.0121.0.vec.insert = insertelement <2 x float> %.sroa.0121.0268, float %i.ky, i64 0 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0113.0269, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.kz, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_12QuarticAngleENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES7_NS_5NoPbcEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0221 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0214 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0208 = alloca [3 x float], align 4       ; 6 uses
  %.not272 = icmp eq ptr %0, %1
  br i1 %.not272, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0124.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0124.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0124.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0116.0274 = phi ptr [ %0, %.lr.ph ], [ %i.kx, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0124.0273 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0124.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0116.0274, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0116.0274, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !216    ; 2 uses
  %.sroa.0203.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0203.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0203.4.extract.trunc = trunc nuw i64 %.sroa.0203.4.extract.shift to i32 ; 11 uses
  %.sroa.5204.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.h = ashr exact i64 %sext, 32                 ; 7 uses
  %i.i = getelementptr inbounds [12 x i8], ptr %4, i64 %i.h ; 2 uses
  %.sroa.7195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.7195.0.copyload = load float, ptr %.sroa.7195.0..sroa_idx, align 4, !tbaa !185
  %i.j = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.k = getelementptr inbounds [12 x i8], ptr %4, i64 %i.j ; 2 uses
  %.sroa.7189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.7189.0.copyload = load float, ptr %.sroa.7189.0..sroa_idx, align 4, !tbaa !185
  %sext240 = shl i64 %.sroa.2.0.copyload, 32
  %i.l = ashr exact i64 %sext240, 32              ; 7 uses
  %i.m = getelementptr inbounds [12 x i8], ptr %4, i64 %i.l ; 2 uses
  %.sroa.7183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7183.0.copyload = load float, ptr %.sroa.7183.0..sroa_idx, align 4, !tbaa !185
  %i.n = ashr i64 %.sroa.2.0.copyload, 32
  %i.o = getelementptr inbounds [24 x i8], ptr %2, i64 %i.n ; 6 uses
  %.sroa.0175.0.copyload = load float, ptr %i.o, align 4
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.4176.0.copyload = load float, ptr %.sroa.4176.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5177.0.copyload = load float, ptr %.sroa.5177.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.sroa.6178.0.copyload = load float, ptr %.sroa.6178.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !185 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !169
  %i.p = load <2 x float>, ptr %i.i, align 4
  %i.q = load <2 x float>, ptr %i.k, align 4      ; 2 uses
  %i.r = load <2 x float>, ptr %i.m, align 4
  %i.s = fsub <2 x float> %i.p, %i.q              ; 4 uses
  %i.t = fsub <2 x float> %i.r, %i.q              ; 4 uses
  %i.u = insertelement <2 x float> poison, float %.sroa.7195.0.copyload, i64 0
  %i.v = insertelement <2 x float> %i.u, float %.sroa.7183.0.copyload, i64 1
  %i.w = insertelement <2 x float> poison, float %.sroa.7189.0.copyload, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fsub <2 x float> %i.v, %i.x              ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 2 uses
  %i.aa = shufflevector <2 x float> %i.s, <2 x float> %i.t, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ab = fpext <2 x float> %i.aa to <2 x double> ; 4 uses
  %i.ac = shufflevector <2 x float> %i.s, <2 x float> %i.t, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ad = fpext <2 x float> %i.ac to <2 x double> ; 4 uses
  %i.ae = fpext <2 x float> %i.y to <2 x double>  ; 4 uses
  %i.af = fmul <2 x double> %i.ad, %i.ad
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ab, <2 x double> %i.af)
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ae, <2 x double> %i.ag) ; 2 uses
  %shift = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.ah, %shift
  %i.ai = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.aj = fcmp ogt double %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.c, label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

bb.c:                                             ; preds = %bb.b
  %shift398 = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop399 = fmul <2 x double> %shift398, %i.ad
  %i.ak = extractelement <2 x double> %foldExtExtBinop399, i64 0
  %i.al = extractelement <2 x double> %i.ab, i64 0
  %i.am = extractelement <2 x double> %i.ab, i64 1
  %i.an = tail call double @llvm.fmuladd.f64(double %i.al, double %i.am, double %i.ak)
  %i.ao = extractelement <2 x double> %i.ae, i64 0
  %i.ap = extractelement <2 x double> %i.ae, i64 1
  %i.aq = tail call noundef double @llvm.fmuladd.f64(double %i.ao, double %i.ap, double %i.an)
  %i.ar = tail call nnan double @llvm.sqrt.f64(double %i.ai)
  %i.as = fdiv nnan double 1.000000e+00, %i.ar
  %i.at = fmul double %i.aq, %i.as
  %i.au = fptrunc double %i.at to float
  br label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit: ; preds = %bb.b, %bb.c
  %i.av = phi float [ %i.au, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.aw = fcmp ogt float %i.av, 1.000000e+00
  %.sroa.speculated7.i = select i1 %i.aw, float 1.000000e+00, float %i.av ; 2 uses
  %i.ax = fcmp olt float %.sroa.speculated7.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.ax, float -1.000000e+00, float %.sroa.speculated7.i ; 4 uses
  %i.ay = tail call noundef float @acosf(float noundef %.sroa.speculated.i) #9
  %i.az = fsub float %i.ay, %.sroa.8.0.copyload   ; 6 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %.sroa.4176.0.copyload, float %i.az, float %.sroa.0175.0.copyload)
  %i.bb = fmul float %i.az, %i.az                 ; 3 uses
  %i.bc = tail call float @llvm.fmuladd.f32(float %.sroa.5177.0.copyload, float %i.bb, float %i.ba)
  %i.bd = fmul float %i.az, %i.bb                 ; 3 uses
  %i.be = tail call float @llvm.fmuladd.f32(float %.sroa.6178.0.copyload, float %i.bd, float %i.bc)
  %i.bf = fmul float %i.az, %i.bd
  %i.bg = tail call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.bf, float %i.be)
  %i.bh = fmul float %.sroa.speculated.i, %.sroa.speculated.i ; 2 uses
  %i.bi = fcmp olt float %i.bh, 1.000000e+00
  br i1 %i.bi, label %bb.d, label %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit

bb.d:                                             ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit
  %i.bj = fmul float %.sroa.7.0.copyload, -4.000000e+00
  %i.bk = fmul float %.sroa.6178.0.copyload, -3.000000e+00
  %i.bl = fmul float %.sroa.5177.0.copyload, -2.000000e+00
  %i.bm = fsub float 0.000000e+00, %.sroa.4176.0.copyload
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.az, float %i.bm)
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.bb, float %i.bn)
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bd, float %i.bo)
  %i.bq = fsub float 1.000000e+00, %i.bh
  %i.br = tail call noundef float @sqrtf(float noundef %i.bq) #9
  %i.bs = fdiv float %i.bp, %i.br                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %9 = load float, ptr %i.bt, align 4, !tbaa !169
  %i.bu = fmul <2 x float> %i.ac, %i.ac
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.aa, <2 x float> %i.bu)
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.y, <2 x float> %i.bv) ; 3 uses
  %shift401 = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop402 = fmul <2 x float> %i.bw, %shift401
  %i.bx = extractelement <2 x float> %foldExtExtBinop402, i64 0
  %i.by = tail call float @llvm.sqrt.f32(float %i.bx)
  %i.bz = fmul float %.sroa.speculated.i, %i.bs
  %i.ca = fdiv float %i.bs, %i.by
  %i.cb = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fdiv <2 x float> %i.cc, %i.bw           ; 3 uses
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.s, %i.ce
  %i.cg = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ci = fmul <2 x float> %i.t, %i.ch
  %i.cj = fsub <2 x float> %i.cf, %i.ci           ; 3 uses
  %i.ck = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = fmul <2 x float> %i.t, %i.ck
  %i.cm = fmul <2 x float> %i.y, %i.cd
  %i.cn = fmul <2 x float> %i.s, %i.ch
  %i.co = fmul <2 x float> %i.y, %i.ch
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cq = fsub <2 x float> %i.cl, %i.cn           ; 3 uses
  %i.cr = fsub <2 x float> %i.cm, %i.cp           ; 2 uses
  %i.cs = fadd <2 x float> %i.cj, %i.cq           ; 2 uses
  %i.ct = extractelement <2 x float> %i.cr, i64 0 ; 3 uses
  %i.cu = extractelement <2 x float> %i.cr, i64 1 ; 3 uses
  %i.cv = fadd float %i.ct, %i.cu                 ; 2 uses
  %i.cw = fadd <2 x float> %i.cj, zeroinitializer
  %i.cx = fadd float %i.ct, 0.000000e+00
  %i.cy = fsub <2 x float> zeroinitializer, %i.cs
  %i.cz = fsub float 0.000000e+00, %i.cv
  %i.da = fadd <2 x float> %i.cq, zeroinitializer
  %i.db = fadd float %i.cu, 0.000000e+00
  %i.dc = load <2 x float>, ptr %i.z, align 4, !tbaa !169
  %i.dd = fadd <2 x float> %i.dc, %i.cj
  %i.de = fadd float %9, %i.ct
  %i.df = fsub <2 x float> %i.dd, %i.cs
  %i.dg = fsub float %i.de, %i.cv
  %i.dh = fadd <2 x float> %i.cq, %i.df
  %i.di = fadd float %i.cu, %i.dg
  store <2 x float> %i.dh, ptr %i.z, align 4
  store float %i.di, ptr %i.bt, align 4, !tbaa !185
  br label %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit

_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit: ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit, %bb.d
  %.sroa.9173.0 = phi float [ %i.cx, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0166.0 = phi <2 x float> [ %i.cw, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9164.0 = phi float [ %i.cz, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0157.0 = phi <2 x float> [ %i.cy, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9.0 = phi float [ %i.db, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0149.0 = phi <2 x float> [ %i.da, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %i.dj = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.dj, %.sroa.0203.0.extract.trunc
  %i.dk = load i32, ptr %i.b, align 4
  %i.dl = icmp sgt i32 %i.dk, %.sroa.0203.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.dl, i1 false
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit
  %i.dm = load i64, ptr %6, align 8
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = getelementptr inbounds [12 x i8], ptr %i.dn, i64 %i.h
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.f:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit
  %i.dp = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.not.i.i.i, label %.preheader280, label %bb.h

.preheader280:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit246.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader280
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !160
  %i.ds = icmp eq i32 %i.dr, %.sroa.0203.0.extract.trunc
  br i1 %i.ds, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader280, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.dt = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.du = urem i64 %i.h, %i.dt                    ; 5 uses
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i, label %.loopexit246.thread, label %bb.i

.loopexit246.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0221)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0221, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !42 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !160
  %i.eb = icmp eq i32 %i.ea, %.sroa.0203.0.extract.trunc
  br i1 %i.eb, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.ec = icmp eq i32 %i.ef, %.sroa.0203.0.extract.trunc
  br i1 %i.ec, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.ed, %bb.j ], [ %i.dy, %bb.i ]
  %i.ed = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit246, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !160 ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = urem i64 %i.eg, %i.dt
  %.not19.i.i.i.i.i = icmp eq i64 %i.eh, %i.du
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.loopexit246, !llvm.loop !6

.loopexit246.loopexit:                            ; preds = %.preheader280
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre300 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre305.a = urem i64 %i.h, %.pre               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre300, i64 %.pre305.a
  %.pre310 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit246

.loopexit246:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit246.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.ei = phi ptr [ %i.dx, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre310, %.loopexit246.loopexit ], [ %i.dx, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.du, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre305.a, %.loopexit246.loopexit ], [ %i.du, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.ej = phi i64 [ %i.dt, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit246.loopexit ], [ %i.dt, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0221)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0221, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit246
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !42 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i32, ptr %i.el, align 4, !tbaa !160
  %i.en = icmp eq i32 %i.em, %.sroa.0203.0.extract.trunc
  br i1 %i.en, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.eo = icmp eq i32 %i.er, %.sroa.0203.0.extract.trunc
  br i1 %i.eo, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.ep, %bb.m ], [ %i.ek, %bb.l ]
  %i.ep = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !160 ; 2 uses
  %i.es = sext i32 %i.er to i64
  %i.et = urem i64 %i.es, %i.ej
  %.not19.i.i.i.i = icmp eq i64 %i.et, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit246.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit246
  %.pre-phi344 = phi i64 [ %i.du, %.loopexit246.thread ], [ %.pre-phi, %.loopexit246 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.eu = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.eu, align 8, !tbaa !42
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i32 %.sroa.0203.0.extract.trunc, ptr %i.ev, align 8, !tbaa !240
  %i.ew = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi344, i64 noundef %i.h, ptr noundef nonnull %i.eu, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa373.sink = phi ptr [ %i.kn, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.ju, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.ia, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.hh, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50 ], [ %i.fn, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23 ], [ %i.eu, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.kq, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.jx, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.id, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.hk, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50 ], [ %i.fq, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23 ], [ %i.ex, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa373.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.ew, %.loopexit.i.i ], [ %i.ek, %bb.l ], [ %i.ep, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0221, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0221)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.ey = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.ez = urem i64 %i.h, %i.ey                    ; 3 uses
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ez
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i16, label %.loopexit.i.i22, label %bb.o

bb.o:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !42 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !160
  %i.fg = icmp eq i32 %i.ff, %.sroa.0203.0.extract.trunc
  br i1 %i.fg, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit26, label %.lr.ph.i.i.i.i17

bb.p:                                             ; preds = %bb.q
  %i.fh = icmp eq i32 %i.fk, %.sroa.0203.0.extract.trunc
  br i1 %i.fh, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit26, label %.lr.ph.i.i.i.i17, !llvm.loop !6

.lr.ph.i.i.i.i17:                                 ; preds = %bb.o, %bb.p
  %.020.i.i.i.i18 = phi ptr [ %i.fi, %bb.p ], [ %i.fd, %bb.o ]
  %i.fi = load ptr, ptr %.020.i.i.i.i18, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i19 = icmp eq ptr %i.fi, null
  br i1 %.not18.i.i.i.i19, label %.loopexit.i.i22, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !160 ; 2 uses
  %i.fl = sext i32 %i.fk to i64
  %i.fm = urem i64 %i.fl, %i.ey
  %.not19.i.i.i.i20 = icmp eq i64 %i.fm, %i.ez
  br i1 %.not19.i.i.i.i20, label %bb.p, label %..loopexit_crit_edge21.i.i.i.i21, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i21:                 ; preds = %bb.q
  br label %.loopexit.i.i22, !llvm.loop !6

.loopexit.i.i22:                                  ; preds = %.lr.ph.i.i.i.i17, %..loopexit_crit_edge21.i.i.i.i21, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.fn = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.fn, align 8, !tbaa !42
end_hunk_6
begin_hunk_7_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_12QuarticAngleENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES7_NS_5NoPbcEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_:bb.a

.lr.ph.i.i.i.i82:                                 ; preds = %bb.al, %bb.am
  %.020.i.i.i.i83 = phi ptr [ %i.jp, %bb.am ], [ %i.jk, %bb.al ]
  %i.jp = load ptr, ptr %.020.i.i.i.i83, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i84 = icmp eq ptr %i.jp, null
  br i1 %.not18.i.i.i.i84, label %.loopexit.i.i87, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i82
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !160 ; 2 uses
  %i.js = sext i32 %i.jr to i64
  %i.jt = urem i64 %i.js, %i.jj
  %.not19.i.i.i.i85 = icmp eq i64 %i.jt, %.pre-phi309
  br i1 %.not19.i.i.i.i85, label %bb.am, label %..loopexit_crit_edge21.i.i.i.i86, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i86:                 ; preds = %bb.an
  br label %.loopexit.i.i87, !llvm.loop !6

.loopexit.i.i87:                                  ; preds = %.lr.ph.i.i.i.i82, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i86, %.loopexit
  %.pre-phi309350 = phi i64 [ %i.iu, %.loopexit.thread ], [ %.pre-phi309, %.loopexit ], [ %.pre-phi309, %..loopexit_crit_edge21.i.i.i.i86 ], [ %.pre-phi309, %.lr.ph.i.i.i.i82 ]
  %i.ju = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ju, align 8, !tbaa !42
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store i32 %.sroa.5204.8.extract.trunc, ptr %i.jv, align 8, !tbaa !240
  %i.jw = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi309350, i64 noundef %i.l, ptr noundef nonnull %i.ju, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88: ; preds = %.loopexit.i.i87
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91: ; preds = %bb.am, %bb.al, %.loopexit.i.i87
  %.pn.i.i89 = phi ptr [ %i.jw, %.loopexit.i.i87 ], [ %i.jk, %bb.al ], [ %i.jp, %bb.am ]
  %.1.i.i90 = getelementptr inbounds nuw i8, ptr %.pn.i.i89, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i90, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0208, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0208)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80: ; preds = %bb.aj, %bb.ag, %bb.ai, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91
  %i.jy = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.jz = urem i64 %i.l, %i.jy                    ; 3 uses
  %i.ka = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.jz
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i.i92, label %.loopexit.i.i98, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !42 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !160
  %i.kg = icmp eq i32 %i.kf, %.sroa.5204.8.extract.trunc
  br i1 %i.kg, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102, label %.lr.ph.i.i.i.i93

bb.ap:                                            ; preds = %bb.aq
  %i.kh = icmp eq i32 %i.kk, %.sroa.5204.8.extract.trunc
  br i1 %i.kh, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102, label %.lr.ph.i.i.i.i93, !llvm.loop !6

.lr.ph.i.i.i.i93:                                 ; preds = %bb.ao, %bb.ap
  %.020.i.i.i.i94 = phi ptr [ %i.ki, %bb.ap ], [ %i.kd, %bb.ao ]
  %i.ki = load ptr, ptr %.020.i.i.i.i94, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i95 = icmp eq ptr %i.ki, null
  br i1 %.not18.i.i.i.i95, label %.loopexit.i.i98, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i93
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !160 ; 2 uses
  %i.kl = sext i32 %i.kk to i64
  %i.km = urem i64 %i.kl, %i.jy
  %.not19.i.i.i.i96 = icmp eq i64 %i.km, %i.jz
  br i1 %.not19.i.i.i.i96, label %bb.ap, label %..loopexit_crit_edge21.i.i.i.i97, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i97:                 ; preds = %bb.aq
  br label %.loopexit.i.i98, !llvm.loop !6

.loopexit.i.i98:                                  ; preds = %.lr.ph.i.i.i.i93, %..loopexit_crit_edge21.i.i.i.i97, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80
  %i.kn = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.kn, align 8, !tbaa !42
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  store i32 %.sroa.5204.8.extract.trunc, ptr %i.ko, align 8, !tbaa !240
  %i.kp = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.jz, i64 noundef %i.l, ptr noundef nonnull %i.kn, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99: ; preds = %.loopexit.i.i98
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102: ; preds = %bb.ap, %bb.ao, %.loopexit.i.i98
  %.pn.i.i100 = phi ptr [ %i.kp, %.loopexit.i.i98 ], [ %i.kd, %bb.ao ], [ %i.ki, %bb.ap ]
  %.1.i.i101 = getelementptr inbounds nuw i8, ptr %.pn.i.i100, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ae, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102
  %.0.i.i = phi ptr [ %i.io, %bb.ae ], [ %.1.i.i101, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102 ] ; 3 uses
  %i.kr = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.ks = fadd <2 x float> %.sroa.0149.0, %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !169
  %i.kv = fadd float %.sroa.9.0, %i.ku
  store <2 x float> %i.ks, ptr %.0.i.i, align 4
  store float %i.kv, ptr %i.kt, align 4, !tbaa !185
  %.sroa.0124.0.vec.extract = extractelement <2 x float> %.sroa.0124.0273, i64 0
  %i.kw = fadd float %.sroa.0124.0.vec.extract, %i.bg
  %.sroa.0124.0.vec.insert = insertelement <2 x float> %.sroa.0124.0273, float %i.kw, i64 0 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0116.0274, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.kx, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_16CosineParamAngleINS_24RestrictedAngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES9_NS_5NoPbcEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0216 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0209 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0203 = alloca [3 x float], align 4       ; 6 uses
  %.not267 = icmp eq ptr %0, %1
  br i1 %.not267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0121.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0121.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0121.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0113.0269 = phi ptr [ %0, %.lr.ph ], [ %i.lc, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0121.0268 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0121.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0113.0269, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0113.0269, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !216    ; 2 uses
  %.sroa.0198.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0198.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0198.4.extract.trunc = trunc nuw i64 %.sroa.0198.4.extract.shift to i32 ; 11 uses
  %.sroa.5199.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.h = ashr exact i64 %sext, 32                 ; 7 uses
  %i.i = getelementptr inbounds [12 x i8], ptr %4, i64 %i.h ; 2 uses
  %.sroa.7190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.7190.0.copyload = load float, ptr %.sroa.7190.0..sroa_idx, align 4, !tbaa !185
  %i.j = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.k = getelementptr inbounds [12 x i8], ptr %4, i64 %i.j ; 2 uses
  %.sroa.7184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.7184.0.copyload = load float, ptr %.sroa.7184.0..sroa_idx, align 4, !tbaa !185
  %sext235 = shl i64 %.sroa.2.0.copyload, 32
  %i.l = ashr exact i64 %sext235, 32              ; 7 uses
  %i.m = getelementptr inbounds [12 x i8], ptr %4, i64 %i.l ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !185
  %i.n = ashr i64 %.sroa.2.0.copyload, 32
  %i.o = getelementptr inbounds [8 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.p = load float, ptr %i.o, align 4            ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load float, ptr %.sroa_idx, align 4      ; 2 uses
  %i.r = load <2 x float>, ptr %i.i, align 4
  %i.s = load <2 x float>, ptr %i.k, align 4      ; 2 uses
  %i.t = load <2 x float>, ptr %i.m, align 4
  %i.u = fsub <2 x float> %i.r, %i.s              ; 4 uses
  %i.v = fsub <2 x float> %i.t, %i.s              ; 4 uses
  %i.w = insertelement <2 x float> poison, float %.sroa.7190.0.copyload, i64 0
  %i.x = insertelement <2 x float> %i.w, float %.sroa.7.0.copyload, i64 1
  %i.y = insertelement <2 x float> poison, float %.sroa.7184.0.copyload, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fsub <2 x float> %i.x, %i.z             ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 2 uses
  %i.ac = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ad = fpext <2 x float> %i.ac to <2 x double> ; 4 uses
  %i.ae = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.af = fpext <2 x float> %i.ae to <2 x double> ; 4 uses
  %i.ag = fpext <2 x float> %i.aa to <2 x double> ; 4 uses
  %i.ah = fmul <2 x double> %i.af, %i.af
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.ad, <2 x double> %i.ah)
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.ag, <2 x double> %i.ai) ; 2 uses
  %shift = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.aj, %shift
  %i.ak = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.al = fcmp ogt double %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.c, label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

bb.c:                                             ; preds = %bb.b
  %shift393 = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop394 = fmul <2 x double> %shift393, %i.af
  %i.am = extractelement <2 x double> %foldExtExtBinop394, i64 0
  %i.an = extractelement <2 x double> %i.ad, i64 0
  %i.ao = extractelement <2 x double> %i.ad, i64 1
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ao, double %i.am)
  %i.aq = extractelement <2 x double> %i.ag, i64 0
  %i.ar = extractelement <2 x double> %i.ag, i64 1
  %i.as = tail call noundef double @llvm.fmuladd.f64(double %i.aq, double %i.ar, double %i.ap)
  %i.at = tail call nnan double @llvm.sqrt.f64(double %i.ak)
  %i.au = fdiv nnan double 1.000000e+00, %i.at
  %i.av = fmul double %i.as, %i.au
  %i.aw = fptrunc double %i.av to float
  br label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit: ; preds = %bb.b, %bb.c
  %i.ax = phi float [ %i.aw, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.ay = fcmp ogt float %i.ax, 1.000000e+00
  %.sroa.speculated7.i = select i1 %i.ay, float 1.000000e+00, float %i.ax ; 2 uses
  %i.az = fcmp olt float %.sroa.speculated7.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.az, float -1.000000e+00, float %.sroa.speculated7.i ; 4 uses
  %i.ba = tail call noundef float @acosf(float noundef %.sroa.speculated.i) #9
  %i.bb = tail call noundef float @cosf(float noundef %i.ba) #9, !noalias !334 ; 4 uses
  %i.bc = fsub float %i.bb, %i.q                  ; 3 uses
  %i.bd = fmul float %i.bc, %i.bc
  %i.be = fpext float %i.p to double
  %i.bf = fmul double %i.be, 5.000000e-01
  %i.bg = fpext float %i.bd to double
  %i.bh = fmul double %i.bf, %i.bg
  %i.bi = fptrunc double %i.bh to float
  %i.bj = fneg float %i.bb
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bb, float 1.000000e+00) ; 3 uses
  %i.bl = tail call noundef float @sqrtf(float noundef %i.bk) #9, !noalias !334
  %i.bm = fdiv float %i.bi, %i.bk
  %i.bn = fmul float %.sroa.speculated.i, %.sroa.speculated.i ; 2 uses
  %i.bo = fcmp olt float %i.bn, 1.000000e+00
  br i1 %i.bo, label %bb.d, label %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit

bb.d:                                             ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit
  %i.bp = fneg float %i.p
  %i.bq = fmul float %i.bc, %i.bp
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.q, float -1.000000e+00)
  %i.bs = fmul float %i.bk, %i.bl
  %i.bt = fdiv float %i.br, %i.bs
  %i.bu = fmul float %i.bq, %i.bt
  %i.bv = fsub float 1.000000e+00, %i.bn
  %i.bw = tail call noundef float @sqrtf(float noundef %i.bv) #9
  %i.bx = fdiv float %i.bu, %i.bw                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %9 = load float, ptr %i.by, align 4, !tbaa !169
  %i.bz = fmul <2 x float> %i.ae, %i.ae
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ac, <2 x float> %i.bz)
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.aa, <2 x float> %i.ca) ; 3 uses
  %shift396 = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop397 = fmul <2 x float> %i.cb, %shift396
  %i.cc = extractelement <2 x float> %foldExtExtBinop397, i64 0
  %i.cd = tail call float @llvm.sqrt.f32(float %i.cc)
  %i.ce = fmul float %.sroa.speculated.i, %i.bx
  %i.cf = fdiv float %i.bx, %i.cd
  %i.cg = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fdiv <2 x float> %i.ch, %i.cb           ; 3 uses
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %i.u, %i.cj
  %i.cl = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cn = fmul <2 x float> %i.v, %i.cm
  %i.co = fsub <2 x float> %i.ck, %i.cn           ; 3 uses
  %i.cp = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cq = fmul <2 x float> %i.v, %i.cp
  %i.cr = fmul <2 x float> %i.aa, %i.ci
  %i.cs = fmul <2 x float> %i.u, %i.cm
  %i.ct = fmul <2 x float> %i.aa, %i.cm
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cv = fsub <2 x float> %i.cq, %i.cs           ; 3 uses
  %i.cw = fsub <2 x float> %i.cr, %i.cu           ; 2 uses
  %i.cx = fadd <2 x float> %i.co, %i.cv           ; 2 uses
  %i.cy = extractelement <2 x float> %i.cw, i64 0 ; 3 uses
  %i.cz = extractelement <2 x float> %i.cw, i64 1 ; 3 uses
  %i.da = fadd float %i.cy, %i.cz                 ; 2 uses
  %i.db = fadd <2 x float> %i.co, zeroinitializer
  %i.dc = fadd float %i.cy, 0.000000e+00
  %i.dd = fsub <2 x float> zeroinitializer, %i.cx
  %i.de = fsub float 0.000000e+00, %i.da
  %i.df = fadd <2 x float> %i.cv, zeroinitializer
  %i.dg = fadd float %i.cz, 0.000000e+00
  %i.dh = load <2 x float>, ptr %i.ab, align 4, !tbaa !169
  %i.di = fadd <2 x float> %i.dh, %i.co
  %i.dj = fadd float %9, %i.cy
  %i.dk = fsub <2 x float> %i.di, %i.cx
  %i.dl = fsub float %i.dj, %i.da
  %i.dm = fadd <2 x float> %i.cv, %i.dk
  %i.dn = fadd float %i.cz, %i.dl
  store <2 x float> %i.dm, ptr %i.ab, align 4
  store float %i.dn, ptr %i.by, align 4, !tbaa !185
  br label %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit

_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit: ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit, %bb.d
  %.sroa.9170.0 = phi float [ %i.dc, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0163.0 = phi <2 x float> [ %i.db, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9161.0 = phi float [ %i.de, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0154.0 = phi <2 x float> [ %i.dd, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9.0 = phi float [ %i.dg, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0146.0 = phi <2 x float> [ %i.df, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %i.do = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.do, %.sroa.0198.0.extract.trunc
  %i.dp = load i32, ptr %i.b, align 4
  %i.dq = icmp sgt i32 %i.dp, %.sroa.0198.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.dq, i1 false
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit
  %i.dr = load i64, ptr %6, align 8
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = getelementptr inbounds [12 x i8], ptr %i.ds, i64 %i.h
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.f:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfN3gmx11BasicVectorIfEEEEvT_S4_RKNS2_IS4_EES7_PS5_S8_S8_PT0_SA_SA_.exit
  %i.du = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.not.i.i.i, label %.preheader275, label %bb.h

.preheader275:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit241.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader275
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !160
  %i.dx = icmp eq i32 %i.dw, %.sroa.0198.0.extract.trunc
  br i1 %i.dx, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader275, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.dy = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.dz = urem i64 %i.h, %i.dy                    ; 5 uses
  %i.ea = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dz
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i, label %.loopexit241.thread, label %bb.i

.loopexit241.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0216)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !42 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !160
  %i.eg = icmp eq i32 %i.ef, %.sroa.0198.0.extract.trunc
  br i1 %i.eg, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.eh = icmp eq i32 %i.ek, %.sroa.0198.0.extract.trunc
  br i1 %i.eh, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.ei, %bb.j ], [ %i.ed, %bb.i ]
  %i.ei = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit241, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !160 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = urem i64 %i.el, %i.dy
  %.not19.i.i.i.i.i = icmp eq i64 %i.em, %i.dz
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.loopexit241, !llvm.loop !6

.loopexit241.loopexit:                            ; preds = %.preheader275
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre295 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre300.a = urem i64 %i.h, %.pre               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre295, i64 %.pre300.a
  %.pre305 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit241

.loopexit241:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit241.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.en = phi ptr [ %i.ec, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre305, %.loopexit241.loopexit ], [ %i.ec, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.dz, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre300.a, %.loopexit241.loopexit ], [ %i.dz, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.eo = phi i64 [ %i.dy, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit241.loopexit ], [ %i.dy, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0216)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit241
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !42 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !160
  %i.es = icmp eq i32 %i.er, %.sroa.0198.0.extract.trunc
  br i1 %i.es, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.et = icmp eq i32 %i.ew, %.sroa.0198.0.extract.trunc
  br i1 %i.et, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.eu, %bb.m ], [ %i.ep, %bb.l ]
  %i.eu = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !160 ; 2 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = urem i64 %i.ex, %i.eo
  %.not19.i.i.i.i = icmp eq i64 %i.ey, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit241.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit241
  %.pre-phi339 = phi i64 [ %i.dz, %.loopexit241.thread ], [ %.pre-phi, %.loopexit241 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.ez = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ez, align 8, !tbaa !42
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i32 %.sroa.0198.0.extract.trunc, ptr %i.fa, align 8, !tbaa !240
  %i.fb = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi339, i64 noundef %i.h, ptr noundef nonnull %i.ez, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa368.sink = phi ptr [ %i.ks, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.jz, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.if, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.hm, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50 ], [ %i.fs, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23 ], [ %i.ez, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.kv, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.kc, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.ii, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.hp, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50 ], [ %i.fv, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23 ], [ %i.fc, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa368.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.fb, %.loopexit.i.i ], [ %i.ep, %bb.l ], [ %i.eu, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0216)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.fd = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.fe = urem i64 %i.h, %i.fd                    ; 3 uses
  %i.ff = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fe
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i16, label %.loopexit.i.i22, label %bb.o

bb.o:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !42 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !160
  %i.fl = icmp eq i32 %i.fk, %.sroa.0198.0.extract.trunc
  br i1 %i.fl, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit26, label %.lr.ph.i.i.i.i17

bb.p:                                             ; preds = %bb.q
  %i.fm = icmp eq i32 %i.fp, %.sroa.0198.0.extract.trunc
  br i1 %i.fm, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit26, label %.lr.ph.i.i.i.i17, !llvm.loop !6

.lr.ph.i.i.i.i17:                                 ; preds = %bb.o, %bb.p
  %.020.i.i.i.i18 = phi ptr [ %i.fn, %bb.p ], [ %i.fi, %bb.o ]
  %i.fn = load ptr, ptr %.020.i.i.i.i18, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i19 = icmp eq ptr %i.fn, null
  br i1 %.not18.i.i.i.i19, label %.loopexit.i.i22, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !160 ; 2 uses
  %i.fq = sext i32 %i.fp to i64
  %i.fr = urem i64 %i.fq, %i.fd
  %.not19.i.i.i.i20 = icmp eq i64 %i.fr, %i.fe
  br i1 %.not19.i.i.i.i20, label %bb.p, label %..loopexit_crit_edge21.i.i.i.i21, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i21:                 ; preds = %bb.q
  br label %.loopexit.i.i22, !llvm.loop !6

.loopexit.i.i22:                                  ; preds = %.lr.ph.i.i.i.i17, %..loopexit_crit_edge21.i.i.i.i21, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.fs = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.fs, align 8, !tbaa !42
end_hunk_7
begin_hunk_8_@_ZN5nblib13computeForcesISt5arrayIiLm3EENS_10PairLJTypeENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_9PbcHolderEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_:bb.a
bb.z:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit36
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !42 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !160
  %i.du = icmp eq i32 %i.dt, %.sroa.095.4.extract.trunc
  br i1 %i.du, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58, label %.lr.ph.i.i.i.i49

bb.aa:                                            ; preds = %bb.ab
  %i.dv = icmp eq i32 %i.dy, %.sroa.095.4.extract.trunc
  br i1 %i.dv, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58, label %.lr.ph.i.i.i.i49, !llvm.loop !6

.lr.ph.i.i.i.i49:                                 ; preds = %bb.z, %bb.aa
  %.020.i.i.i.i50 = phi ptr [ %i.dw, %bb.aa ], [ %i.dr, %bb.z ]
  %i.dw = load ptr, ptr %.020.i.i.i.i50, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i51 = icmp eq ptr %i.dw, null
  br i1 %.not18.i.i.i.i51, label %.loopexit.i.i54, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i49
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !160 ; 2 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = urem i64 %i.dz, %i.dm
  %.not19.i.i.i.i52 = icmp eq i64 %i.ea, %i.dn
  br i1 %.not19.i.i.i.i52, label %bb.aa, label %..loopexit_crit_edge21.i.i.i.i53, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i53:                 ; preds = %bb.ab
  br label %.loopexit.i.i54, !llvm.loop !6

.loopexit.i.i54:                                  ; preds = %.lr.ph.i.i.i.i49, %..loopexit_crit_edge21.i.i.i.i53, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit36
  %i.eb = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.eb, align 8, !tbaa !42
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i32 %.sroa.095.4.extract.trunc, ptr %i.ec, align 8, !tbaa !240
  %i.ed = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.dn, i64 noundef %i.i, ptr noundef nonnull %i.eb, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i55

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i55: ; preds = %.loopexit.i.i54
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58: ; preds = %bb.aa, %bb.z, %.loopexit.i.i54
  %.pn.i.i56 = phi ptr [ %i.ed, %.loopexit.i.i54 ], [ %i.dr, %bb.z ], [ %i.dw, %bb.aa ]
  %.1.i.i57 = getelementptr inbounds nuw i8, ptr %.pn.i.i56, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_10PairLJTypeES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEENS_11G96BondTypeENS_13CubicBondTypeENS_13MorseBondTypeENSC_INS_21FENEBondTypeParameterEEENSC_INS_38HalfAttractiveQuarticBondTypeParameterEEES6_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS13_IKSU_EEPT_NS13_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_10PairLJTypeES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEENS_11G96BondTypeENS_13CubicBondTypeENS_13MorseBondTypeENSC_INS_21FENEBondTypeParameterEEENSC_INS_38HalfAttractiveQuarticBondTypeParameterEEES6_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS13_IKSU_EEPT_NS13_IT2_EERKT3_.exit: ; preds = %bb.p, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58
  %.0.i.i = phi ptr [ %i.cc, %bb.p ], [ %.1.i.i57, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58 ] ; 3 uses
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %11, align 8 ; 4 uses
  %.sroa.210.0.copyload.i = load float, ptr %.sroa.210.0..sroa_idx.i, align 8, !tbaa !185 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.09.0.copyload.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.09.0.copyload.i, %.sroa.09.0.copyload.i
  %i.ef = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.eg = call float @llvm.fmuladd.f32(float %.sroa.03.0.vec.extract.i, float %.sroa.03.0.vec.extract.i, float %i.ef)
  %i.eh = call noundef float @llvm.fmuladd.f32(float %.sroa.210.0.copyload.i, float %.sroa.210.0.copyload.i, float %i.eg) ; 2 uses
  %sqrt = call float @llvm.sqrt.f32(float %i.eh)  ; 2 uses
  %i.ei = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.ej = fmul float %i.ei, %i.ei                 ; 3 uses
  %i.ek = fmul float %i.ej, %i.ej
  %i.el = fmul float %i.ej, %i.ek                 ; 4 uses
  %i.em = fneg float %i.m
  %i.en = call float @llvm.fmuladd.f32(float %i.n, float %i.el, float %i.em)
  %i.eo = fmul float %i.el, %i.en
  %i.ep = fcmp une float %i.eh, 0.000000e+00
  br i1 %i.ep, label %bb.ac, label %_ZN5nblib16computeTwoCenterINS_10PairLJTypeEN3gmx11BasicVectorIfEEDnEEDaRKT_RKT0_PS8_SB_PT1_SD_.exit

bb.ac:                                            ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_10PairLJTypeES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEENS_11G96BondTypeENS_13CubicBondTypeENS_13MorseBondTypeENSC_INS_21FENEBondTypeParameterEEENSC_INS_38HalfAttractiveQuarticBondTypeParameterEEES6_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS13_IKSU_EEPT_NS13_IT2_EERKT3_.exit
  %i.eq = fmul float %i.n, 1.200000e+01
  %i.er = fmul float %i.m, -6.000000e+00
  %i.es = call float @llvm.fmuladd.f32(float %i.eq, float %i.el, float %i.er)
  %i.et = fmul float %i.el, %i.es
  %i.eu = fmul float %i.ei, %i.et
  %i.ev = fdiv float %i.eu, %sqrt                 ; 2 uses
  %i.ew = fmul float %.sroa.210.0.copyload.i, %i.ev ; 2 uses
  %i.ex = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.ey, %.sroa.09.0.copyload.i ; 2 uses
  %i.fa = load <2 x float>, ptr %.0.i11.i, align 4, !tbaa !169
  %i.fb = fadd <2 x float> %i.ez, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 8 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !169
  %i.fe = fadd float %i.ew, %i.fd
  store <2 x float> %i.fb, ptr %.0.i11.i, align 4
  store float %i.fe, ptr %i.fc, align 4, !tbaa !185
  %i.ff = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.fg = fsub <2 x float> %i.ff, %i.ez
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !169
  %i.fj = fsub float %i.fi, %i.ew
  store <2 x float> %i.fg, ptr %.0.i.i, align 4
  store float %i.fj, ptr %i.fh, align 4, !tbaa !185
  br label %_ZN5nblib16computeTwoCenterINS_10PairLJTypeEN3gmx11BasicVectorIfEEDnEEDaRKT_RKT0_PS8_SB_PT1_SD_.exit

_ZN5nblib16computeTwoCenterINS_10PairLJTypeEN3gmx11BasicVectorIfEEDnEEDaRKT_RKT0_PS8_SB_PT1_SD_.exit: ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_10PairLJTypeES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEENS_11G96BondTypeENS_13CubicBondTypeENS_13MorseBondTypeENSC_INS_21FENEBondTypeParameterEEENSC_INS_38HalfAttractiveQuarticBondTypeParameterEEES6_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS13_IKSU_EEPT_NS13_IT2_EERKT3_.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %.sroa.073.0.vec.extract = extractelement <2 x float> %.sroa.073.0143, i64 0
  %i.fk = fadd float %.sroa.073.0.vec.extract, %i.eo
  %.sroa.073.0.vec.insert = insertelement <2 x float> %.sroa.073.0143, float %i.fk, i64 0 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.065.0144, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.fl, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_9PbcHolderEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef.429") align 8 %7, ptr noundef nonnull align 4 dereferenceable(384) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0184 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0177 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0171 = alloca [3 x float], align 4       ; 6 uses
  %9 = alloca %"class.gmx::BasicVector", align 4  ; 5 uses
  %10 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %11 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %12 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %13 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %14 = alloca %"class.gmx::BasicVector", align 4 ; 3 uses
  %.not235 = icmp eq ptr %0, %1
  br i1 %.not235, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0113.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0113.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0113.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0105.0237 = phi ptr [ %0, %.lr.ph ], [ %i.kg, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0113.0236 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0113.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0105.0237, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0105.0237, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %.sroa.0166.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0166.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0166.4.extract.trunc = trunc nuw i64 %.sroa.0166.4.extract.shift to i32 ; 11 uses
  %.sroa.5167.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.g = ashr exact i64 %sext, 32                 ; 7 uses
  %i.h = getelementptr inbounds [12 x i8], ptr %4, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.i = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.j = getelementptr inbounds [12 x i8], ptr %4, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %sext203 = shl i64 %.sroa.2.0.copyload, 32
  %i.k = ashr exact i64 %sext203, 32              ; 7 uses
  %i.l = getelementptr inbounds [12 x i8], ptr %4, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false), !tbaa.struct !186
  %i.m = ashr i64 %.sroa.2.0.copyload, 32
  %i.n = getelementptr inbounds [8 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = load float, ptr %i.n, align 4            ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load float, ptr %.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.q = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %12) ; 0 uses
  %i.r = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %13) ; 0 uses
  %i.s = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %14) ; 0 uses
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %12, align 8 ; 4 uses
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 8, !tbaa !185 ; 5 uses
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %13, align 8 ; 4 uses
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !185 ; 5 uses
  %.sroa.033.0.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.i, i64 0 ; 3 uses
  %i.t = fpext float %.sroa.033.0.vec.extract.i to double ; 3 uses
  %.sroa.033.4.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.i, i64 1 ; 3 uses
  %i.u = fpext float %.sroa.033.4.vec.extract.i to double ; 3 uses
  %i.v = fpext float %.sroa.28.0.copyload.i to double ; 3 uses
  %.sroa.031.0.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 0 ; 3 uses
  %i.w = fpext float %.sroa.031.0.vec.extract.i to double ; 3 uses
  %.sroa.031.4.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 1 ; 3 uses
  %i.x = fpext float %.sroa.031.4.vec.extract.i to double ; 3 uses
  %i.y = fpext float %.sroa.26.0.copyload.i to double ; 3 uses
  %i.z = fmul double %i.u, %i.u
  %i.aa = call double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.z)
  %i.ab = call noundef double @llvm.fmuladd.f64(double %i.v, double %i.v, double %i.aa)
  %i.ac = fmul double %i.x, %i.x
  %i.ad = call double @llvm.fmuladd.f64(double %i.w, double %i.w, double %i.ac)
  %i.ae = call noundef double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.ad)
  %i.af = fmul double %i.ab, %i.ae                ; 2 uses
  %i.ag = fcmp ogt double %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.c, label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

bb.c:                                             ; preds = %bb.b
  %i.ah = fmul double %i.u, %i.x
  %i.ai = call double @llvm.fmuladd.f64(double %i.t, double %i.w, double %i.ah)
  %i.aj = call noundef double @llvm.fmuladd.f64(double %i.v, double %i.y, double %i.ai)
  %i.ak = call nnan double @llvm.sqrt.f64(double %i.af)
  %i.al = fdiv nnan double 1.000000e+00, %i.ak
  %i.am = fmul double %i.aj, %i.al
  %i.an = fptrunc double %i.am to float
  br label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit: ; preds = %bb.b, %bb.c
  %i.ao = phi float [ %i.an, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.ap = fcmp ogt float %i.ao, 1.000000e+00
  %.sroa.speculated7.i = select i1 %i.ap, float 1.000000e+00, float %i.ao ; 2 uses
  %i.aq = fcmp olt float %.sroa.speculated7.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.aq, float -1.000000e+00, float %.sroa.speculated7.i ; 4 uses
  %i.ar = call noundef float @acosf(float noundef %.sroa.speculated.i) #9
  %i.as = fsub float %i.ar, %i.p                  ; 3 uses
  %i.at = fmul float %i.as, %i.as
  %i.au = fpext float %i.o to double
  %i.av = fmul double %i.au, 5.000000e-01
  %i.aw = fpext float %i.at to double
  %i.ax = fmul double %i.av, %i.aw
  %i.ay = fptrunc double %i.ax to float
  %i.az = fmul float %.sroa.speculated.i, %.sroa.speculated.i ; 2 uses
  %i.ba = fcmp olt float %i.az, 1.000000e+00
  br i1 %i.ba, label %bb.d, label %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit

bb.d:                                             ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit
  %i.bb = fneg float %i.o
  %i.bc = fmul float %i.as, %i.bb
  %i.bd = fsub float 1.000000e+00, %i.az
  %i.be = call noundef float @sqrtf(float noundef %i.bd) #9
  %i.bf = fdiv float %i.bc, %i.be                 ; 2 uses
  %i.bg = fmul float %.sroa.speculated.i, %i.bf   ; 2 uses
  %i.bh = fmul float %.sroa.033.4.vec.extract.i, %.sroa.033.4.vec.extract.i
  %i.bi = call float @llvm.fmuladd.f32(float %.sroa.033.0.vec.extract.i, float %.sroa.033.0.vec.extract.i, float %i.bh)
  %i.bj = fmul float %.sroa.031.4.vec.extract.i, %.sroa.031.4.vec.extract.i
  %i.bk = call float @llvm.fmuladd.f32(float %.sroa.031.0.vec.extract.i, float %.sroa.031.0.vec.extract.i, float %i.bj)
  %i.bl = call noundef float @llvm.fmuladd.f32(float %.sroa.26.0.copyload.i, float %.sroa.26.0.copyload.i, float %i.bk) ; 2 uses
  %i.bm = fdiv float %i.bg, %i.bl                 ; 2 uses
  %i.bn = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %.sroa.05.0.copyload.i, %i.bo
  %i.bq = fmul float %.sroa.26.0.copyload.i, %i.bm
  %i.br = call noundef float @llvm.fmuladd.f32(float %.sroa.28.0.copyload.i, float %.sroa.28.0.copyload.i, float %i.bi) ; 2 uses
  %i.bs = fdiv float %i.bg, %i.br                 ; 2 uses
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %.sroa.07.0.copyload.i, %i.bu
  %i.bw = fmul float %.sroa.28.0.copyload.i, %i.bs
  %i.bx = fmul float %i.br, %i.bl
  %i.by = call float @llvm.sqrt.f32(float %i.bx)
  %i.bz = fdiv float %i.bf, %i.by                 ; 3 uses
  %i.ca = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cc = fmul <2 x float> %.sroa.05.0.copyload.i, %i.cb
  %i.cd = fmul float %.sroa.26.0.copyload.i, %i.bz
  %i.ce = fsub <2 x float> %i.bv, %i.cc           ; 2 uses
  %i.cf = fsub float %i.bw, %i.cd                 ; 2 uses
  %i.cg = fmul <2 x float> %.sroa.07.0.copyload.i, %i.cb
  %i.ch = fmul float %.sroa.28.0.copyload.i, %i.bz
  %i.ci = fsub <2 x float> %i.bp, %i.cg           ; 2 uses
  %i.cj = fsub float %i.bq, %i.ch                 ; 2 uses
  %i.ck = fadd <2 x float> %i.ce, %i.ci
  %i.cl = fadd float %i.cf, %i.cj
  %i.cm = fadd <2 x float> %i.ce, zeroinitializer
  %i.cn = fadd float %i.cf, 0.000000e+00
  %i.co = fsub <2 x float> zeroinitializer, %i.ck
  %i.cp = fsub float 0.000000e+00, %i.cl
  %i.cq = fadd <2 x float> %i.ci, zeroinitializer
  %i.cr = fadd float %i.cj, 0.000000e+00
  br label %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit

_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit: ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit, %bb.d
  %.sroa.9155.0 = phi float [ %i.cn, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0148.0 = phi <2 x float> [ %i.cm, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9146.0 = phi float [ %i.cp, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0139.0 = phi <2 x float> [ %i.co, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9.0 = phi float [ %i.cr, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0131.0 = phi <2 x float> [ %i.cq, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %i.cs = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.cs, %.sroa.0166.0.extract.trunc
  %i.ct = load i32, ptr %i.b, align 4
  %i.cu = icmp sgt i32 %i.ct, %.sroa.0166.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.cu, i1 false
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit
  %i.cv = load i64, ptr %6, align 8
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %i.g
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.f:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit
  %i.cy = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.not.i.i.i, label %.preheader243, label %bb.h

.preheader243:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit209.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader243
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !160
  %i.db = icmp eq i32 %i.da, %.sroa.0166.0.extract.trunc
  br i1 %i.db, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader243, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.dc = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.dd = urem i64 %i.g, %i.dc                    ; 5 uses
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dd
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i, label %.loopexit209.thread, label %bb.i

.loopexit209.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0184)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !42 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !160
  %i.dk = icmp eq i32 %i.dj, %.sroa.0166.0.extract.trunc
  br i1 %i.dk, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.dl = icmp eq i32 %i.do, %.sroa.0166.0.extract.trunc
  br i1 %i.dl, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.dm, %bb.j ], [ %i.dh, %bb.i ]
  %i.dm = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit209, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !160 ; 2 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = urem i64 %i.dp, %i.dc
  %.not19.i.i.i.i.i = icmp eq i64 %i.dq, %i.dd
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.loopexit209, !llvm.loop !6

.loopexit209.loopexit:                            ; preds = %.preheader243
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre263 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre268.a = urem i64 %i.g, %.pre               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre263, i64 %.pre268.a
  %.pre273 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit209

.loopexit209:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit209.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.dr = phi ptr [ %i.dg, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre273, %.loopexit209.loopexit ], [ %i.dg, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.dd, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre268.a, %.loopexit209.loopexit ], [ %i.dd, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.ds = phi i64 [ %i.dc, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit209.loopexit ], [ %i.dc, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0184)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit209
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !42 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !160
  %i.dw = icmp eq i32 %i.dv, %.sroa.0166.0.extract.trunc
  br i1 %i.dw, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.dx = icmp eq i32 %i.ea, %.sroa.0166.0.extract.trunc
  br i1 %i.dx, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.dy, %bb.m ], [ %i.dt, %bb.l ]
  %i.dy = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !160 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = urem i64 %i.eb, %i.ds
  %.not19.i.i.i.i = icmp eq i64 %i.ec, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit209.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit209
  %.pre-phi305 = phi i64 [ %i.dd, %.loopexit209.thread ], [ %.pre-phi, %.loopexit209 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.ed = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ed, align 8, !tbaa !42
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i32 %.sroa.0166.0.extract.trunc, ptr %i.ee, align 8, !tbaa !240
  %i.ef = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi305, i64 noundef %i.g, ptr noundef nonnull %i.ed, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa334.sink = phi ptr [ %i.jw, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91 ], [ %i.jd, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80 ], [ %i.hj, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53 ], [ %i.gq, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42 ], [ %i.ew, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17 ], [ %i.ed, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.jz, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91 ], [ %i.jg, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80 ], [ %i.hm, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53 ], [ %i.gt, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42 ], [ %i.ez, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17 ], [ %i.eg, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa334.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.ef, %.loopexit.i.i ], [ %i.dt, %bb.l ], [ %i.dy, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0184)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.eh = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.ei = urem i64 %i.g, %i.eh                    ; 3 uses
  %i.ej = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ei
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i10, label %.loopexit.i.i16, label %bb.o

bb.o:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !42 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !160
  %i.ep = icmp eq i32 %i.eo, %.sroa.0166.0.extract.trunc
  br i1 %i.ep, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit20, label %.lr.ph.i.i.i.i11

bb.p:                                             ; preds = %bb.q
  %i.eq = icmp eq i32 %i.et, %.sroa.0166.0.extract.trunc
  br i1 %i.eq, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit20, label %.lr.ph.i.i.i.i11, !llvm.loop !6

.lr.ph.i.i.i.i11:                                 ; preds = %bb.o, %bb.p
  %.020.i.i.i.i12 = phi ptr [ %i.er, %bb.p ], [ %i.em, %bb.o ]
  %i.er = load ptr, ptr %.020.i.i.i.i12, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i13 = icmp eq ptr %i.er, null
  br i1 %.not18.i.i.i.i13, label %.loopexit.i.i16, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
end_hunk_8
begin_hunk_9_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_9PbcHolderEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_:bb.a
  %.not19.i.i.i.i77 = icmp eq i64 %i.jc, %.pre-phi272
  br i1 %.not19.i.i.i.i77, label %bb.am, label %..loopexit_crit_edge21.i.i.i.i78, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i78:                 ; preds = %bb.an
  br label %.loopexit.i.i79, !llvm.loop !6

.loopexit.i.i79:                                  ; preds = %.lr.ph.i.i.i.i74, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i78, %.loopexit
  %.pre-phi272311 = phi i64 [ %i.id, %.loopexit.thread ], [ %.pre-phi272, %.loopexit ], [ %.pre-phi272, %..loopexit_crit_edge21.i.i.i.i78 ], [ %.pre-phi272, %.lr.ph.i.i.i.i74 ]
  %i.jd = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.jd, align 8, !tbaa !42
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i32 %.sroa.5167.8.extract.trunc, ptr %i.je, align 8, !tbaa !240
  %i.jf = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi272311, i64 noundef %i.k, ptr noundef nonnull %i.jd, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80: ; preds = %.loopexit.i.i79
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83: ; preds = %bb.am, %bb.al, %.loopexit.i.i79
  %.pn.i.i81 = phi ptr [ %i.jf, %.loopexit.i.i79 ], [ %i.it, %bb.al ], [ %i.iy, %bb.am ]
  %.1.i.i82 = getelementptr inbounds nuw i8, ptr %.pn.i.i81, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i82, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0171, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0171)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72: ; preds = %bb.aj, %bb.ag, %bb.ai, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83
  %i.jh = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.ji = urem i64 %i.k, %i.jh                    ; 3 uses
  %i.jj = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.ji
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i.i84, label %.loopexit.i.i90, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !42 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !160
  %i.jp = icmp eq i32 %i.jo, %.sroa.5167.8.extract.trunc
  br i1 %i.jp, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94, label %.lr.ph.i.i.i.i85

bb.ap:                                            ; preds = %bb.aq
  %i.jq = icmp eq i32 %i.jt, %.sroa.5167.8.extract.trunc
  br i1 %i.jq, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94, label %.lr.ph.i.i.i.i85, !llvm.loop !6

.lr.ph.i.i.i.i85:                                 ; preds = %bb.ao, %bb.ap
  %.020.i.i.i.i86 = phi ptr [ %i.jr, %bb.ap ], [ %i.jm, %bb.ao ]
  %i.jr = load ptr, ptr %.020.i.i.i.i86, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i87 = icmp eq ptr %i.jr, null
  br i1 %.not18.i.i.i.i87, label %.loopexit.i.i90, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i85
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !160 ; 2 uses
  %i.ju = sext i32 %i.jt to i64
  %i.jv = urem i64 %i.ju, %i.jh
  %.not19.i.i.i.i88 = icmp eq i64 %i.jv, %i.ji
  br i1 %.not19.i.i.i.i88, label %bb.ap, label %..loopexit_crit_edge21.i.i.i.i89, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i89:                 ; preds = %bb.aq
  br label %.loopexit.i.i90, !llvm.loop !6

.loopexit.i.i90:                                  ; preds = %.lr.ph.i.i.i.i85, %..loopexit_crit_edge21.i.i.i.i89, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72
  %i.jw = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.jw, align 8, !tbaa !42
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store i32 %.sroa.5167.8.extract.trunc, ptr %i.jx, align 8, !tbaa !240
  %i.jy = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.ji, i64 noundef %i.k, ptr noundef nonnull %i.jw, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91: ; preds = %.loopexit.i.i90
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94: ; preds = %bb.ap, %bb.ao, %.loopexit.i.i90
  %.pn.i.i92 = phi ptr [ %i.jy, %.loopexit.i.i90 ], [ %i.jm, %bb.ao ], [ %i.jr, %bb.ap ]
  %.1.i.i93 = getelementptr inbounds nuw i8, ptr %.pn.i.i92, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ae, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94
  %.0.i.i = phi ptr [ %i.hx, %bb.ae ], [ %.1.i.i93, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94 ] ; 3 uses
  %i.ka = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.kb = fadd <2 x float> %.sroa.0131.0, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !169
  %i.ke = fadd float %.sroa.9.0, %i.kd
  store <2 x float> %i.kb, ptr %.0.i.i, align 4
  store float %i.ke, ptr %i.kc, align 4, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %.sroa.0113.0.vec.extract = extractelement <2 x float> %.sroa.0113.0236, i64 0
  %i.kf = fadd float %.sroa.0113.0.vec.extract, %i.ay
  %.sroa.0113.0.vec.insert = insertelement <2 x float> %.sroa.0113.0236, float %i.kf, i64 0 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0105.0237, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.kg, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_16CosineParamAngleINS_17G96AngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_9PbcHolderEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef.429") align 8 %7, ptr noundef nonnull align 4 dereferenceable(384) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0184 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0177 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0171 = alloca [3 x float], align 4       ; 6 uses
  %9 = alloca %"class.gmx::BasicVector", align 4  ; 5 uses
  %10 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %11 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %12 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %13 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %14 = alloca %"class.gmx::BasicVector", align 4 ; 3 uses
  %.not235 = icmp eq ptr %0, %1
  br i1 %.not235, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0113.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0113.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0113.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0105.0237 = phi ptr [ %0, %.lr.ph ], [ %i.km, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0113.0236 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0113.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0105.0237, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0105.0237, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %.sroa.0166.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0166.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0166.4.extract.trunc = trunc nuw i64 %.sroa.0166.4.extract.shift to i32 ; 11 uses
  %.sroa.5167.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.g = ashr exact i64 %sext, 32                 ; 7 uses
  %i.h = getelementptr inbounds [12 x i8], ptr %4, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.i = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.j = getelementptr inbounds [12 x i8], ptr %4, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %sext203 = shl i64 %.sroa.2.0.copyload, 32
  %i.k = ashr exact i64 %sext203, 32              ; 7 uses
  %i.l = getelementptr inbounds [12 x i8], ptr %4, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false), !tbaa.struct !186
  %i.m = ashr i64 %.sroa.2.0.copyload, 32
  %i.n = getelementptr inbounds [8 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = load float, ptr %i.n, align 4            ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load float, ptr %.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.q = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %12) ; 0 uses
  %i.r = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %13) ; 0 uses
  %i.s = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %14) ; 0 uses
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %12, align 8 ; 4 uses
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 8, !tbaa !185 ; 5 uses
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %13, align 8 ; 4 uses
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !185 ; 5 uses
  %.sroa.033.0.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.i, i64 0 ; 3 uses
  %i.t = fpext float %.sroa.033.0.vec.extract.i to double ; 3 uses
  %.sroa.033.4.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.i, i64 1 ; 3 uses
  %i.u = fpext float %.sroa.033.4.vec.extract.i to double ; 3 uses
  %i.v = fpext float %.sroa.28.0.copyload.i to double ; 3 uses
  %.sroa.031.0.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 0 ; 3 uses
  %i.w = fpext float %.sroa.031.0.vec.extract.i to double ; 3 uses
  %.sroa.031.4.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 1 ; 3 uses
  %i.x = fpext float %.sroa.031.4.vec.extract.i to double ; 3 uses
  %i.y = fpext float %.sroa.26.0.copyload.i to double ; 3 uses
  %i.z = fmul double %i.u, %i.u
  %i.aa = call double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.z)
  %i.ab = call noundef double @llvm.fmuladd.f64(double %i.v, double %i.v, double %i.aa)
  %i.ac = fmul double %i.x, %i.x
  %i.ad = call double @llvm.fmuladd.f64(double %i.w, double %i.w, double %i.ac)
  %i.ae = call noundef double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.ad)
  %i.af = fmul double %i.ab, %i.ae                ; 2 uses
  %i.ag = fcmp ogt double %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.c, label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

bb.c:                                             ; preds = %bb.b
  %i.ah = fmul double %i.u, %i.x
  %i.ai = call double @llvm.fmuladd.f64(double %i.t, double %i.w, double %i.ah)
  %i.aj = call noundef double @llvm.fmuladd.f64(double %i.v, double %i.y, double %i.ai)
  %i.ak = call nnan double @llvm.sqrt.f64(double %i.af)
  %i.al = fdiv nnan double 1.000000e+00, %i.ak
  %i.am = fmul double %i.aj, %i.al
  %i.an = fptrunc double %i.am to float
  br label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit: ; preds = %bb.b, %bb.c
  %i.ao = phi float [ %i.an, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.ap = fcmp ogt float %i.ao, 1.000000e+00
  %.sroa.speculated7.i = select i1 %i.ap, float 1.000000e+00, float %i.ao ; 2 uses
  %i.aq = fcmp olt float %.sroa.speculated7.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.aq, float -1.000000e+00, float %.sroa.speculated7.i ; 4 uses
  %i.ar = call noundef float @acosf(float noundef %.sroa.speculated.i) #9
  %i.as = call noundef float @cosf(float noundef %i.ar) #9, !noalias !366 ; 3 uses
  %i.at = fsub float %i.as, %i.p                  ; 3 uses
  %i.au = fmul float %i.at, %i.at
  %i.av = fpext float %i.o to double
  %i.aw = fmul double %i.av, 5.000000e-01
  %i.ax = fpext float %i.au to double
  %i.ay = fmul double %i.aw, %i.ax
  %i.az = fptrunc double %i.ay to float
  %i.ba = fneg float %i.as
  %i.bb = call float @llvm.fmuladd.f32(float %i.ba, float %i.as, float 1.000000e+00)
  %i.bc = call noundef float @sqrtf(float noundef %i.bb) #9, !noalias !366
  %i.bd = fmul float %.sroa.speculated.i, %.sroa.speculated.i ; 2 uses
  %i.be = fcmp olt float %i.bd, 1.000000e+00
  br i1 %i.be, label %bb.d, label %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit

bb.d:                                             ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit
  %i.bf = fneg float %i.o
  %i.bg = fmul float %i.at, %i.bf
  %i.bh = fneg float %i.bc
  %i.bi = fmul float %i.bg, %i.bh
  %i.bj = fsub float 1.000000e+00, %i.bd
  %i.bk = call noundef float @sqrtf(float noundef %i.bj) #9
  %i.bl = fdiv float %i.bi, %i.bk                 ; 2 uses
  %i.bm = fmul float %.sroa.speculated.i, %i.bl   ; 2 uses
  %i.bn = fmul float %.sroa.033.4.vec.extract.i, %.sroa.033.4.vec.extract.i
  %i.bo = call float @llvm.fmuladd.f32(float %.sroa.033.0.vec.extract.i, float %.sroa.033.0.vec.extract.i, float %i.bn)
  %i.bp = fmul float %.sroa.031.4.vec.extract.i, %.sroa.031.4.vec.extract.i
  %i.bq = call float @llvm.fmuladd.f32(float %.sroa.031.0.vec.extract.i, float %.sroa.031.0.vec.extract.i, float %i.bp)
  %i.br = call noundef float @llvm.fmuladd.f32(float %.sroa.26.0.copyload.i, float %.sroa.26.0.copyload.i, float %i.bq) ; 2 uses
  %i.bs = fdiv float %i.bm, %i.br                 ; 2 uses
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %.sroa.05.0.copyload.i, %i.bu
  %i.bw = fmul float %.sroa.26.0.copyload.i, %i.bs
  %i.bx = call noundef float @llvm.fmuladd.f32(float %.sroa.28.0.copyload.i, float %.sroa.28.0.copyload.i, float %i.bo) ; 2 uses
  %i.by = fdiv float %i.bm, %i.bx                 ; 2 uses
  %i.bz = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %.sroa.07.0.copyload.i, %i.ca
  %i.cc = fmul float %.sroa.28.0.copyload.i, %i.by
  %i.cd = fmul float %i.bx, %i.br
  %i.ce = call float @llvm.sqrt.f32(float %i.cd)
  %i.cf = fdiv float %i.bl, %i.ce                 ; 3 uses
  %i.cg = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = fmul <2 x float> %.sroa.05.0.copyload.i, %i.ch
  %i.cj = fmul float %.sroa.26.0.copyload.i, %i.cf
  %i.ck = fsub <2 x float> %i.cb, %i.ci           ; 2 uses
  %i.cl = fsub float %i.cc, %i.cj                 ; 2 uses
  %i.cm = fmul <2 x float> %.sroa.07.0.copyload.i, %i.ch
  %i.cn = fmul float %.sroa.28.0.copyload.i, %i.cf
  %i.co = fsub <2 x float> %i.bv, %i.cm           ; 2 uses
  %i.cp = fsub float %i.bw, %i.cn                 ; 2 uses
  %i.cq = fadd <2 x float> %i.ck, %i.co
  %i.cr = fadd float %i.cl, %i.cp
  %i.cs = fadd <2 x float> %i.ck, zeroinitializer
  %i.ct = fadd float %i.cl, 0.000000e+00
  %i.cu = fsub <2 x float> zeroinitializer, %i.cq
  %i.cv = fsub float 0.000000e+00, %i.cr
  %i.cw = fadd <2 x float> %i.co, zeroinitializer
  %i.cx = fadd float %i.cp, 0.000000e+00
  br label %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit

_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit: ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit, %bb.d
  %.sroa.9155.0 = phi float [ %i.ct, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0148.0 = phi <2 x float> [ %i.cs, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9146.0 = phi float [ %i.cv, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0139.0 = phi <2 x float> [ %i.cu, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9.0 = phi float [ %i.cx, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0131.0 = phi <2 x float> [ %i.cw, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.cy, %.sroa.0166.0.extract.trunc
  %i.cz = load i32, ptr %i.b, align 4
  %i.da = icmp sgt i32 %i.cz, %.sroa.0166.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.da, i1 false
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit
  %i.db = load i64, ptr %6, align 8
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = getelementptr inbounds [12 x i8], ptr %i.dc, i64 %i.g
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.f:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit
  %i.de = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.not.i.i.i, label %.preheader243, label %bb.h

.preheader243:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit209.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader243
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !160
  %i.dh = icmp eq i32 %i.dg, %.sroa.0166.0.extract.trunc
  br i1 %i.dh, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader243, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.di = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.dj = urem i64 %i.g, %i.di                    ; 5 uses
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i, label %.loopexit209.thread, label %bb.i

.loopexit209.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0184)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !42 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !160
  %i.dq = icmp eq i32 %i.dp, %.sroa.0166.0.extract.trunc
  br i1 %i.dq, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.dr = icmp eq i32 %i.du, %.sroa.0166.0.extract.trunc
  br i1 %i.dr, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.ds, %bb.j ], [ %i.dn, %bb.i ]
  %i.ds = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit209, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !160 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = urem i64 %i.dv, %i.di
  %.not19.i.i.i.i.i = icmp eq i64 %i.dw, %i.dj
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.loopexit209, !llvm.loop !6

.loopexit209.loopexit:                            ; preds = %.preheader243
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre263 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre268.a = urem i64 %i.g, %.pre               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre263, i64 %.pre268.a
  %.pre273 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit209

.loopexit209:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit209.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.dx = phi ptr [ %i.dm, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre273, %.loopexit209.loopexit ], [ %i.dm, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.dj, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre268.a, %.loopexit209.loopexit ], [ %i.dj, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.dy = phi i64 [ %i.di, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit209.loopexit ], [ %i.di, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0184)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit209
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !42 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !160
  %i.ec = icmp eq i32 %i.eb, %.sroa.0166.0.extract.trunc
  br i1 %i.ec, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.ed = icmp eq i32 %i.eg, %.sroa.0166.0.extract.trunc
  br i1 %i.ed, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.ee, %bb.m ], [ %i.dz, %bb.l ]
  %i.ee = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !160 ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = urem i64 %i.eh, %i.dy
  %.not19.i.i.i.i = icmp eq i64 %i.ei, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit209.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit209
  %.pre-phi305 = phi i64 [ %i.dj, %.loopexit209.thread ], [ %.pre-phi, %.loopexit209 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.ej = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ej, align 8, !tbaa !42
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 %.sroa.0166.0.extract.trunc, ptr %i.ek, align 8, !tbaa !240
  %i.el = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi305, i64 noundef %i.g, ptr noundef nonnull %i.ej, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa334.sink = phi ptr [ %i.kc, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91 ], [ %i.jj, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80 ], [ %i.hp, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53 ], [ %i.gw, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42 ], [ %i.fc, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17 ], [ %i.ej, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.kf, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91 ], [ %i.jm, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80 ], [ %i.hs, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53 ], [ %i.gz, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42 ], [ %i.ff, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17 ], [ %i.em, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa334.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.el, %.loopexit.i.i ], [ %i.dz, %bb.l ], [ %i.ee, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0184)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.en = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.eo = urem i64 %i.g, %i.en                    ; 3 uses
  %i.ep = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eo
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i10, label %.loopexit.i.i16, label %bb.o

bb.o:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !42 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !160
  %i.ev = icmp eq i32 %i.eu, %.sroa.0166.0.extract.trunc
  br i1 %i.ev, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit20, label %.lr.ph.i.i.i.i11

bb.p:                                             ; preds = %bb.q
  %i.ew = icmp eq i32 %i.ez, %.sroa.0166.0.extract.trunc
  br i1 %i.ew, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit20, label %.lr.ph.i.i.i.i11, !llvm.loop !6

.lr.ph.i.i.i.i11:                                 ; preds = %bb.o, %bb.p
  %.020.i.i.i.i12 = phi ptr [ %i.ex, %bb.p ], [ %i.es, %bb.o ]
  %i.ex = load ptr, ptr %.020.i.i.i.i12, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i13 = icmp eq ptr %i.ex, null
  br i1 %.not18.i.i.i.i13, label %.loopexit.i.i16, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
end_hunk_9
begin_hunk_10_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_16CosineParamAngleINS_17G96AngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_9PbcHolderEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_:bb.a
  %i.jj = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.jj, align 8, !tbaa !42
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store i32 %.sroa.5167.8.extract.trunc, ptr %i.jk, align 8, !tbaa !240
  %i.jl = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi272311, i64 noundef %i.k, ptr noundef nonnull %i.jj, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80: ; preds = %.loopexit.i.i79
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83: ; preds = %bb.am, %bb.al, %.loopexit.i.i79
  %.pn.i.i81 = phi ptr [ %i.jl, %.loopexit.i.i79 ], [ %i.iz, %bb.al ], [ %i.je, %bb.am ]
  %.1.i.i82 = getelementptr inbounds nuw i8, ptr %.pn.i.i81, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i82, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0171, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0171)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72: ; preds = %bb.aj, %bb.ag, %bb.ai, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83
  %i.jn = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.jo = urem i64 %i.k, %i.jn                    ; 3 uses
  %i.jp = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jo
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i84, label %.loopexit.i.i90, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !42 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !160
  %i.jv = icmp eq i32 %i.ju, %.sroa.5167.8.extract.trunc
  br i1 %i.jv, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94, label %.lr.ph.i.i.i.i85

bb.ap:                                            ; preds = %bb.aq
  %i.jw = icmp eq i32 %i.jz, %.sroa.5167.8.extract.trunc
  br i1 %i.jw, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94, label %.lr.ph.i.i.i.i85, !llvm.loop !6

.lr.ph.i.i.i.i85:                                 ; preds = %bb.ao, %bb.ap
  %.020.i.i.i.i86 = phi ptr [ %i.jx, %bb.ap ], [ %i.js, %bb.ao ]
  %i.jx = load ptr, ptr %.020.i.i.i.i86, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i87 = icmp eq ptr %i.jx, null
  br i1 %.not18.i.i.i.i87, label %.loopexit.i.i90, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i85
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !160 ; 2 uses
  %i.ka = sext i32 %i.jz to i64
  %i.kb = urem i64 %i.ka, %i.jn
  %.not19.i.i.i.i88 = icmp eq i64 %i.kb, %i.jo
  br i1 %.not19.i.i.i.i88, label %bb.ap, label %..loopexit_crit_edge21.i.i.i.i89, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i89:                 ; preds = %bb.aq
  br label %.loopexit.i.i90, !llvm.loop !6

.loopexit.i.i90:                                  ; preds = %.lr.ph.i.i.i.i85, %..loopexit_crit_edge21.i.i.i.i89, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72
  %i.kc = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.kc, align 8, !tbaa !42
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store i32 %.sroa.5167.8.extract.trunc, ptr %i.kd, align 8, !tbaa !240
  %i.ke = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.jo, i64 noundef %i.k, ptr noundef nonnull %i.kc, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91: ; preds = %.loopexit.i.i90
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94: ; preds = %bb.ap, %bb.ao, %.loopexit.i.i90
  %.pn.i.i92 = phi ptr [ %i.ke, %.loopexit.i.i90 ], [ %i.js, %bb.ao ], [ %i.jx, %bb.ap ]
  %.1.i.i93 = getelementptr inbounds nuw i8, ptr %.pn.i.i92, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ae, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94
  %.0.i.i = phi ptr [ %i.id, %bb.ae ], [ %.1.i.i93, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94 ] ; 3 uses
  %i.kg = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.kh = fadd <2 x float> %.sroa.0131.0, %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !169
  %i.kk = fadd float %.sroa.9.0, %i.kj
  store <2 x float> %i.kh, ptr %.0.i.i, align 4
  store float %i.kk, ptr %i.ki, align 4, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %.sroa.0113.0.vec.extract = extractelement <2 x float> %.sroa.0113.0236, i64 0
  %i.kl = fadd float %.sroa.0113.0.vec.extract, %i.az
  %.sroa.0113.0.vec.insert = insertelement <2 x float> %.sroa.0113.0236, float %i.kl, i64 0 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0105.0237, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.km, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_12QuarticAngleENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_9PbcHolderEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef.429") align 8 %7, ptr noundef nonnull align 4 dereferenceable(384) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0188 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0181 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0175 = alloca [3 x float], align 4       ; 6 uses
  %9 = alloca %"class.gmx::BasicVector", align 4  ; 5 uses
  %10 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %11 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %12 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %13 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %14 = alloca %"class.gmx::BasicVector", align 4 ; 3 uses
  %.not239 = icmp eq ptr %0, %1
  br i1 %.not239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0116.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0116.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0116.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0108.0241 = phi ptr [ %0, %.lr.ph ], [ %i.kk, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0116.0240 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0116.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0108.0241, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0108.0241, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %.sroa.0170.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0170.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0170.4.extract.trunc = trunc nuw i64 %.sroa.0170.4.extract.shift to i32 ; 11 uses
  %.sroa.5171.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.g = ashr exact i64 %sext, 32                 ; 7 uses
  %i.h = getelementptr inbounds [12 x i8], ptr %4, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.i = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.j = getelementptr inbounds [12 x i8], ptr %4, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %sext207 = shl i64 %.sroa.2.0.copyload, 32
  %i.k = ashr exact i64 %sext207, 32              ; 7 uses
  %i.l = getelementptr inbounds [12 x i8], ptr %4, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false), !tbaa.struct !186
  %i.m = ashr i64 %.sroa.2.0.copyload, 32
  %i.n = getelementptr inbounds [24 x i8], ptr %2, i64 %i.m ; 6 uses
  %.sroa.0160.0.copyload = load float, ptr %i.n, align 4
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.4161.0.copyload = load float, ptr %.sroa.4161.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5162.0.copyload = load float, ptr %.sroa.5162.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.6163.0.copyload = load float, ptr %.sroa.6163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !185 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.o = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %12) ; 0 uses
  %i.p = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %13) ; 0 uses
  %i.q = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %14) ; 0 uses
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %12, align 8 ; 4 uses
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 8, !tbaa !185 ; 5 uses
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %13, align 8 ; 4 uses
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !185 ; 5 uses
  %.sroa.033.0.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.i, i64 0 ; 3 uses
  %i.r = fpext float %.sroa.033.0.vec.extract.i to double ; 3 uses
  %.sroa.033.4.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.i, i64 1 ; 3 uses
  %i.s = fpext float %.sroa.033.4.vec.extract.i to double ; 3 uses
  %i.t = fpext float %.sroa.28.0.copyload.i to double ; 3 uses
  %.sroa.031.0.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 0 ; 3 uses
  %i.u = fpext float %.sroa.031.0.vec.extract.i to double ; 3 uses
  %.sroa.031.4.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 1 ; 3 uses
  %i.v = fpext float %.sroa.031.4.vec.extract.i to double ; 3 uses
  %i.w = fpext float %.sroa.26.0.copyload.i to double ; 3 uses
  %i.x = fmul double %i.s, %i.s
  %i.y = call double @llvm.fmuladd.f64(double %i.r, double %i.r, double %i.x)
  %i.z = call noundef double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.y)
  %i.aa = fmul double %i.v, %i.v
  %i.ab = call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.aa)
  %i.ac = call noundef double @llvm.fmuladd.f64(double %i.w, double %i.w, double %i.ab)
  %i.ad = fmul double %i.z, %i.ac                 ; 2 uses
  %i.ae = fcmp ogt double %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.c, label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

bb.c:                                             ; preds = %bb.b
  %i.af = fmul double %i.s, %i.v
  %i.ag = call double @llvm.fmuladd.f64(double %i.r, double %i.u, double %i.af)
  %i.ah = call noundef double @llvm.fmuladd.f64(double %i.t, double %i.w, double %i.ag)
  %i.ai = call nnan double @llvm.sqrt.f64(double %i.ad)
  %i.aj = fdiv nnan double 1.000000e+00, %i.ai
  %i.ak = fmul double %i.ah, %i.aj
  %i.al = fptrunc double %i.ak to float
  br label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit: ; preds = %bb.b, %bb.c
  %i.am = phi float [ %i.al, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.an = fcmp ogt float %i.am, 1.000000e+00
  %.sroa.speculated7.i = select i1 %i.an, float 1.000000e+00, float %i.am ; 2 uses
  %i.ao = fcmp olt float %.sroa.speculated7.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.ao, float -1.000000e+00, float %.sroa.speculated7.i ; 4 uses
  %i.ap = call noundef float @acosf(float noundef %.sroa.speculated.i) #9
  %i.aq = fsub float %i.ap, %.sroa.8.0.copyload   ; 6 uses
  %i.ar = call float @llvm.fmuladd.f32(float %.sroa.4161.0.copyload, float %i.aq, float %.sroa.0160.0.copyload)
  %i.as = fmul float %i.aq, %i.aq                 ; 3 uses
  %i.at = call float @llvm.fmuladd.f32(float %.sroa.5162.0.copyload, float %i.as, float %i.ar)
  %i.au = fmul float %i.aq, %i.as                 ; 3 uses
  %i.av = call float @llvm.fmuladd.f32(float %.sroa.6163.0.copyload, float %i.au, float %i.at)
  %i.aw = fmul float %i.aq, %i.au
  %i.ax = call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.aw, float %i.av)
  %i.ay = fmul float %.sroa.speculated.i, %.sroa.speculated.i ; 2 uses
  %i.az = fcmp olt float %i.ay, 1.000000e+00
  br i1 %i.az, label %bb.d, label %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit

bb.d:                                             ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit
  %i.ba = fmul float %.sroa.7.0.copyload, -4.000000e+00
  %i.bb = fmul float %.sroa.6163.0.copyload, -3.000000e+00
  %i.bc = fmul float %.sroa.5162.0.copyload, -2.000000e+00
  %i.bd = fsub float 0.000000e+00, %.sroa.4161.0.copyload
  %i.be = call float @llvm.fmuladd.f32(float %i.bc, float %i.aq, float %i.bd)
  %i.bf = call float @llvm.fmuladd.f32(float %i.bb, float %i.as, float %i.be)
  %i.bg = call float @llvm.fmuladd.f32(float %i.ba, float %i.au, float %i.bf)
  %i.bh = fsub float 1.000000e+00, %i.ay
  %i.bi = call noundef float @sqrtf(float noundef %i.bh) #9
  %i.bj = fdiv float %i.bg, %i.bi                 ; 2 uses
  %i.bk = fmul float %.sroa.speculated.i, %i.bj   ; 2 uses
  %i.bl = fmul float %.sroa.033.4.vec.extract.i, %.sroa.033.4.vec.extract.i
  %i.bm = call float @llvm.fmuladd.f32(float %.sroa.033.0.vec.extract.i, float %.sroa.033.0.vec.extract.i, float %i.bl)
  %i.bn = fmul float %.sroa.031.4.vec.extract.i, %.sroa.031.4.vec.extract.i
  %i.bo = call float @llvm.fmuladd.f32(float %.sroa.031.0.vec.extract.i, float %.sroa.031.0.vec.extract.i, float %i.bn)
  %i.bp = call noundef float @llvm.fmuladd.f32(float %.sroa.26.0.copyload.i, float %.sroa.26.0.copyload.i, float %i.bo) ; 2 uses
  %i.bq = fdiv float %i.bk, %i.bp                 ; 2 uses
  %i.br = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %.sroa.05.0.copyload.i, %i.bs
  %i.bu = fmul float %.sroa.26.0.copyload.i, %i.bq
  %i.bv = call noundef float @llvm.fmuladd.f32(float %.sroa.28.0.copyload.i, float %.sroa.28.0.copyload.i, float %i.bm) ; 2 uses
  %i.bw = fdiv float %i.bk, %i.bv                 ; 2 uses
  %i.bx = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %.sroa.07.0.copyload.i, %i.by
  %i.ca = fmul float %.sroa.28.0.copyload.i, %i.bw
  %i.cb = fmul float %i.bv, %i.bp
  %i.cc = call float @llvm.sqrt.f32(float %i.cb)
  %i.cd = fdiv float %i.bj, %i.cc                 ; 3 uses
  %i.ce = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cg = fmul <2 x float> %.sroa.05.0.copyload.i, %i.cf
  %i.ch = fmul float %.sroa.26.0.copyload.i, %i.cd
  %i.ci = fsub <2 x float> %i.bz, %i.cg           ; 2 uses
  %i.cj = fsub float %i.ca, %i.ch                 ; 2 uses
  %i.ck = fmul <2 x float> %.sroa.07.0.copyload.i, %i.cf
  %i.cl = fmul float %.sroa.28.0.copyload.i, %i.cd
  %i.cm = fsub <2 x float> %i.bt, %i.ck           ; 2 uses
  %i.cn = fsub float %i.bu, %i.cl                 ; 2 uses
  %i.co = fadd <2 x float> %i.ci, %i.cm
  %i.cp = fadd float %i.cj, %i.cn
  %i.cq = fadd <2 x float> %i.ci, zeroinitializer
  %i.cr = fadd float %i.cj, 0.000000e+00
  %i.cs = fsub <2 x float> zeroinitializer, %i.co
  %i.ct = fsub float 0.000000e+00, %i.cp
  %i.cu = fadd <2 x float> %i.cm, zeroinitializer
  %i.cv = fadd float %i.cn, 0.000000e+00
  br label %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit

_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit: ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit, %bb.d
  %.sroa.9158.0 = phi float [ %i.cr, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0151.0 = phi <2 x float> [ %i.cq, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9149.0 = phi float [ %i.ct, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0142.0 = phi <2 x float> [ %i.cs, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9.0 = phi float [ %i.cv, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0134.0 = phi <2 x float> [ %i.cu, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %i.cw = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.cw, %.sroa.0170.0.extract.trunc
  %i.cx = load i32, ptr %i.b, align 4
  %i.cy = icmp sgt i32 %i.cx, %.sroa.0170.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.cy, i1 false
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit
  %i.cz = load i64, ptr %6, align 8
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = getelementptr inbounds [12 x i8], ptr %i.da, i64 %i.g
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.f:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit
  %i.dc = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not.not.i.i.i, label %.preheader247, label %bb.h

.preheader247:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit213.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader247
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !160
  %i.df = icmp eq i32 %i.de, %.sroa.0170.0.extract.trunc
  br i1 %i.df, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader247, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.dg = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.dh = urem i64 %i.g, %i.dg                    ; 5 uses
  %i.di = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dh
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i, label %.loopexit213.thread, label %bb.i

.loopexit213.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0188)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0188, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !42 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !160
  %i.do = icmp eq i32 %i.dn, %.sroa.0170.0.extract.trunc
  br i1 %i.do, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.dp = icmp eq i32 %i.ds, %.sroa.0170.0.extract.trunc
  br i1 %i.dp, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.dq, %bb.j ], [ %i.dl, %bb.i ]
  %i.dq = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit213, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !160 ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = urem i64 %i.dt, %i.dg
  %.not19.i.i.i.i.i = icmp eq i64 %i.du, %i.dh
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.loopexit213, !llvm.loop !6

.loopexit213.loopexit:                            ; preds = %.preheader247
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre267 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre272.a = urem i64 %i.g, %.pre               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre267, i64 %.pre272.a
  %.pre277 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit213

.loopexit213:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit213.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.dv = phi ptr [ %i.dk, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre277, %.loopexit213.loopexit ], [ %i.dk, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.dh, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre272.a, %.loopexit213.loopexit ], [ %i.dh, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.dw = phi i64 [ %i.dg, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit213.loopexit ], [ %i.dg, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0188)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0188, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit213
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !42 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !160
  %i.ea = icmp eq i32 %i.dz, %.sroa.0170.0.extract.trunc
  br i1 %i.ea, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.eb = icmp eq i32 %i.ee, %.sroa.0170.0.extract.trunc
  br i1 %i.eb, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.ec, %bb.m ], [ %i.dx, %bb.l ]
  %i.ec = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !160 ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = urem i64 %i.ef, %i.dw
  %.not19.i.i.i.i = icmp eq i64 %i.eg, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit213.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit213
  %.pre-phi309 = phi i64 [ %i.dh, %.loopexit213.thread ], [ %.pre-phi, %.loopexit213 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.eh = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.eh, align 8, !tbaa !42
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %.sroa.0170.0.extract.trunc, ptr %i.ei, align 8, !tbaa !240
  %i.ej = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi309, i64 noundef %i.g, ptr noundef nonnull %i.eh, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa338.sink = phi ptr [ %i.ka, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91 ], [ %i.jh, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80 ], [ %i.hn, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53 ], [ %i.gu, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42 ], [ %i.fa, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17 ], [ %i.eh, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.kd, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91 ], [ %i.jk, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80 ], [ %i.hq, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53 ], [ %i.gx, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42 ], [ %i.fd, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17 ], [ %i.ek, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa338.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.ej, %.loopexit.i.i ], [ %i.dx, %bb.l ], [ %i.ec, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0188, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0188)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.el = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.em = urem i64 %i.g, %i.el                    ; 3 uses
  %i.en = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.em
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i10, label %.loopexit.i.i16, label %bb.o

bb.o:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !42 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i32, ptr %i.er, align 4, !tbaa !160
  %i.et = icmp eq i32 %i.es, %.sroa.0170.0.extract.trunc
  br i1 %i.et, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit20, label %.lr.ph.i.i.i.i11

bb.p:                                             ; preds = %bb.q
  %i.eu = icmp eq i32 %i.ex, %.sroa.0170.0.extract.trunc
  br i1 %i.eu, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit20, label %.lr.ph.i.i.i.i11, !llvm.loop !6

.lr.ph.i.i.i.i11:                                 ; preds = %bb.o, %bb.p
  %.020.i.i.i.i12 = phi ptr [ %i.ev, %bb.p ], [ %i.eq, %bb.o ]
  %i.ev = load ptr, ptr %.020.i.i.i.i12, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i13 = icmp eq ptr %i.ev, null
  br i1 %.not18.i.i.i.i13, label %.loopexit.i.i16, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
end_hunk_10
begin_hunk_11_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_12QuarticAngleENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_9PbcHolderEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_:bb.a
  %.not19.i.i.i.i77 = icmp eq i64 %i.jg, %.pre-phi276
  br i1 %.not19.i.i.i.i77, label %bb.am, label %..loopexit_crit_edge21.i.i.i.i78, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i78:                 ; preds = %bb.an
  br label %.loopexit.i.i79, !llvm.loop !6

.loopexit.i.i79:                                  ; preds = %.lr.ph.i.i.i.i74, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i78, %.loopexit
  %.pre-phi276315 = phi i64 [ %i.ih, %.loopexit.thread ], [ %.pre-phi276, %.loopexit ], [ %.pre-phi276, %..loopexit_crit_edge21.i.i.i.i78 ], [ %.pre-phi276, %.lr.ph.i.i.i.i74 ]
  %i.jh = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.jh, align 8, !tbaa !42
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store i32 %.sroa.5171.8.extract.trunc, ptr %i.ji, align 8, !tbaa !240
  %i.jj = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi276315, i64 noundef %i.k, ptr noundef nonnull %i.jh, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80: ; preds = %.loopexit.i.i79
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83: ; preds = %bb.am, %bb.al, %.loopexit.i.i79
  %.pn.i.i81 = phi ptr [ %i.jj, %.loopexit.i.i79 ], [ %i.ix, %bb.al ], [ %i.jc, %bb.am ]
  %.1.i.i82 = getelementptr inbounds nuw i8, ptr %.pn.i.i81, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i82, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0175, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0175)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72: ; preds = %bb.aj, %bb.ag, %bb.ai, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit83
  %i.jl = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.jm = urem i64 %i.k, %i.jl                    ; 3 uses
  %i.jn = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jm
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i84, label %.loopexit.i.i90, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !42 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !160
  %i.jt = icmp eq i32 %i.js, %.sroa.5171.8.extract.trunc
  br i1 %i.jt, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94, label %.lr.ph.i.i.i.i85

bb.ap:                                            ; preds = %bb.aq
  %i.ju = icmp eq i32 %i.jx, %.sroa.5171.8.extract.trunc
  br i1 %i.ju, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94, label %.lr.ph.i.i.i.i85, !llvm.loop !6

.lr.ph.i.i.i.i85:                                 ; preds = %bb.ao, %bb.ap
  %.020.i.i.i.i86 = phi ptr [ %i.jv, %bb.ap ], [ %i.jq, %bb.ao ]
  %i.jv = load ptr, ptr %.020.i.i.i.i86, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i87 = icmp eq ptr %i.jv, null
  br i1 %.not18.i.i.i.i87, label %.loopexit.i.i90, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i85
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !160 ; 2 uses
  %i.jy = sext i32 %i.jx to i64
  %i.jz = urem i64 %i.jy, %i.jl
  %.not19.i.i.i.i88 = icmp eq i64 %i.jz, %i.jm
  br i1 %.not19.i.i.i.i88, label %bb.ap, label %..loopexit_crit_edge21.i.i.i.i89, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i89:                 ; preds = %bb.aq
  br label %.loopexit.i.i90, !llvm.loop !6

.loopexit.i.i90:                                  ; preds = %.lr.ph.i.i.i.i85, %..loopexit_crit_edge21.i.i.i.i89, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit72
  %i.ka = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ka, align 8, !tbaa !42
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i32 %.sroa.5171.8.extract.trunc, ptr %i.kb, align 8, !tbaa !240
  %i.kc = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.jm, i64 noundef %i.k, ptr noundef nonnull %i.ka, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91: ; preds = %.loopexit.i.i90
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94: ; preds = %bb.ap, %bb.ao, %.loopexit.i.i90
  %.pn.i.i92 = phi ptr [ %i.kc, %.loopexit.i.i90 ], [ %i.jq, %bb.ao ], [ %i.jv, %bb.ap ]
  %.1.i.i93 = getelementptr inbounds nuw i8, ptr %.pn.i.i92, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ae, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94
  %.0.i.i = phi ptr [ %i.ib, %bb.ae ], [ %.1.i.i93, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit94 ] ; 3 uses
  %i.ke = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.kf = fadd <2 x float> %.sroa.0134.0, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !169
  %i.ki = fadd float %.sroa.9.0, %i.kh
  store <2 x float> %i.kf, ptr %.0.i.i, align 4
  store float %i.ki, ptr %i.kg, align 4, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %.sroa.0116.0.vec.extract = extractelement <2 x float> %.sroa.0116.0240, i64 0
  %i.kj = fadd float %.sroa.0116.0.vec.extract, %i.ax
  %.sroa.0116.0.vec.insert = insertelement <2 x float> %.sroa.0116.0240, float %i.kj, i64 0 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0108.0241, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.kk, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_16CosineParamAngleINS_24RestrictedAngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_9PbcHolderEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef.429") align 8 %7, ptr noundef nonnull align 4 dereferenceable(384) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0184 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0177 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0171 = alloca [3 x float], align 4       ; 6 uses
  %9 = alloca %"class.gmx::BasicVector", align 4  ; 5 uses
  %10 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %11 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %12 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %13 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %14 = alloca %"class.gmx::BasicVector", align 4 ; 3 uses
  %.not235 = icmp eq ptr %0, %1
  br i1 %.not235, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0113.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0113.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0113.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0105.0237 = phi ptr [ %0, %.lr.ph ], [ %i.kp, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0113.0236 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0113.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0105.0237, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0105.0237, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %.sroa.0166.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0166.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0166.4.extract.trunc = trunc nuw i64 %.sroa.0166.4.extract.shift to i32 ; 11 uses
  %.sroa.5167.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.g = ashr exact i64 %sext, 32                 ; 7 uses
  %i.h = getelementptr inbounds [12 x i8], ptr %4, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.i = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.j = getelementptr inbounds [12 x i8], ptr %4, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %sext203 = shl i64 %.sroa.2.0.copyload, 32
  %i.k = ashr exact i64 %sext203, 32              ; 7 uses
  %i.l = getelementptr inbounds [12 x i8], ptr %4, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false), !tbaa.struct !186
  %i.m = ashr i64 %.sroa.2.0.copyload, 32
  %i.n = getelementptr inbounds [8 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = load float, ptr %i.n, align 4            ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load float, ptr %.sroa_idx, align 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.q = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %12) ; 0 uses
  %i.r = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %13) ; 0 uses
  %i.s = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %14) ; 0 uses
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %12, align 8 ; 4 uses
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 8, !tbaa !185 ; 5 uses
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %13, align 8 ; 4 uses
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !185 ; 5 uses
  %.sroa.033.0.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.i, i64 0 ; 3 uses
  %i.t = fpext float %.sroa.033.0.vec.extract.i to double ; 3 uses
  %.sroa.033.4.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.i, i64 1 ; 3 uses
  %i.u = fpext float %.sroa.033.4.vec.extract.i to double ; 3 uses
  %i.v = fpext float %.sroa.28.0.copyload.i to double ; 3 uses
  %.sroa.031.0.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 0 ; 3 uses
  %i.w = fpext float %.sroa.031.0.vec.extract.i to double ; 3 uses
  %.sroa.031.4.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 1 ; 3 uses
  %i.x = fpext float %.sroa.031.4.vec.extract.i to double ; 3 uses
  %i.y = fpext float %.sroa.26.0.copyload.i to double ; 3 uses
  %i.z = fmul double %i.u, %i.u
  %i.aa = call double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.z)
  %i.ab = call noundef double @llvm.fmuladd.f64(double %i.v, double %i.v, double %i.aa)
  %i.ac = fmul double %i.x, %i.x
  %i.ad = call double @llvm.fmuladd.f64(double %i.w, double %i.w, double %i.ac)
  %i.ae = call noundef double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.ad)
  %i.af = fmul double %i.ab, %i.ae                ; 2 uses
  %i.ag = fcmp ogt double %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.c, label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

bb.c:                                             ; preds = %bb.b
  %i.ah = fmul double %i.u, %i.x
  %i.ai = call double @llvm.fmuladd.f64(double %i.t, double %i.w, double %i.ah)
  %i.aj = call noundef double @llvm.fmuladd.f64(double %i.v, double %i.y, double %i.ai)
  %i.ak = call nnan double @llvm.sqrt.f64(double %i.af)
  %i.al = fdiv nnan double 1.000000e+00, %i.ak
  %i.am = fmul double %i.aj, %i.al
  %i.an = fptrunc double %i.am to float
  br label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit: ; preds = %bb.b, %bb.c
  %i.ao = phi float [ %i.an, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.ap = fcmp ogt float %i.ao, 1.000000e+00
  %.sroa.speculated7.i = select i1 %i.ap, float 1.000000e+00, float %i.ao ; 2 uses
  %i.aq = fcmp olt float %.sroa.speculated7.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.aq, float -1.000000e+00, float %.sroa.speculated7.i ; 4 uses
  %i.ar = call noundef float @acosf(float noundef %.sroa.speculated.i) #9
  %i.as = call noundef float @cosf(float noundef %i.ar) #9, !noalias !369 ; 4 uses
  %i.at = fsub float %i.as, %i.p                  ; 3 uses
  %i.au = fmul float %i.at, %i.at
  %i.av = fpext float %i.o to double
  %i.aw = fmul double %i.av, 5.000000e-01
  %i.ax = fpext float %i.au to double
  %i.ay = fmul double %i.aw, %i.ax
  %i.az = fptrunc double %i.ay to float
  %i.ba = fneg float %i.as
  %i.bb = call float @llvm.fmuladd.f32(float %i.ba, float %i.as, float 1.000000e+00) ; 3 uses
  %i.bc = call noundef float @sqrtf(float noundef %i.bb) #9, !noalias !369
  %i.bd = fdiv float %i.az, %i.bb
  %i.be = fmul float %.sroa.speculated.i, %.sroa.speculated.i ; 2 uses
  %i.bf = fcmp olt float %i.be, 1.000000e+00
  br i1 %i.bf, label %bb.d, label %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit

bb.d:                                             ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit
  %i.bg = fneg float %i.o
  %i.bh = fmul float %i.at, %i.bg
  %i.bi = call float @llvm.fmuladd.f32(float %i.as, float %i.p, float -1.000000e+00)
  %i.bj = fmul float %i.bb, %i.bc
  %i.bk = fdiv float %i.bi, %i.bj
  %i.bl = fmul float %i.bh, %i.bk
  %i.bm = fsub float 1.000000e+00, %i.be
  %i.bn = call noundef float @sqrtf(float noundef %i.bm) #9
  %i.bo = fdiv float %i.bl, %i.bn                 ; 2 uses
  %i.bp = fmul float %.sroa.speculated.i, %i.bo   ; 2 uses
  %i.bq = fmul float %.sroa.033.4.vec.extract.i, %.sroa.033.4.vec.extract.i
  %i.br = call float @llvm.fmuladd.f32(float %.sroa.033.0.vec.extract.i, float %.sroa.033.0.vec.extract.i, float %i.bq)
  %i.bs = fmul float %.sroa.031.4.vec.extract.i, %.sroa.031.4.vec.extract.i
  %i.bt = call float @llvm.fmuladd.f32(float %.sroa.031.0.vec.extract.i, float %.sroa.031.0.vec.extract.i, float %i.bs)
  %i.bu = call noundef float @llvm.fmuladd.f32(float %.sroa.26.0.copyload.i, float %.sroa.26.0.copyload.i, float %i.bt) ; 2 uses
  %i.bv = fdiv float %i.bp, %i.bu                 ; 2 uses
  %i.bw = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x float> %.sroa.05.0.copyload.i, %i.bx
  %i.bz = fmul float %.sroa.26.0.copyload.i, %i.bv
  %i.ca = call noundef float @llvm.fmuladd.f32(float %.sroa.28.0.copyload.i, float %.sroa.28.0.copyload.i, float %i.br) ; 2 uses
  %i.cb = fdiv float %i.bp, %i.ca                 ; 2 uses
  %i.cc = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %.sroa.07.0.copyload.i, %i.cd
  %i.cf = fmul float %.sroa.28.0.copyload.i, %i.cb
  %i.cg = fmul float %i.ca, %i.bu
  %i.ch = call float @llvm.sqrt.f32(float %i.cg)
  %i.ci = fdiv float %i.bo, %i.ch                 ; 3 uses
  %i.cj = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cl = fmul <2 x float> %.sroa.05.0.copyload.i, %i.ck
  %i.cm = fmul float %.sroa.26.0.copyload.i, %i.ci
  %i.cn = fsub <2 x float> %i.ce, %i.cl           ; 2 uses
  %i.co = fsub float %i.cf, %i.cm                 ; 2 uses
  %i.cp = fmul <2 x float> %.sroa.07.0.copyload.i, %i.ck
  %i.cq = fmul float %.sroa.28.0.copyload.i, %i.ci
  %i.cr = fsub <2 x float> %i.by, %i.cp           ; 2 uses
  %i.cs = fsub float %i.bz, %i.cq                 ; 2 uses
  %i.ct = fadd <2 x float> %i.cn, %i.cr
  %i.cu = fadd float %i.co, %i.cs
  %i.cv = fadd <2 x float> %i.cn, zeroinitializer
  %i.cw = fadd float %i.co, 0.000000e+00
  %i.cx = fsub <2 x float> zeroinitializer, %i.ct
  %i.cy = fsub float 0.000000e+00, %i.cu
  %i.cz = fadd <2 x float> %i.cr, zeroinitializer
  %i.da = fadd float %i.cs, 0.000000e+00
  br label %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit

_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit: ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit, %bb.d
  %.sroa.9155.0 = phi float [ %i.cw, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0148.0 = phi <2 x float> [ %i.cv, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9146.0 = phi float [ %i.cy, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0139.0 = phi <2 x float> [ %i.cx, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9.0 = phi float [ %i.da, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0131.0 = phi <2 x float> [ %i.cz, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %i.db = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.db, %.sroa.0166.0.extract.trunc
  %i.dc = load i32, ptr %i.b, align 4
  %i.dd = icmp sgt i32 %i.dc, %.sroa.0166.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.dd, i1 false
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit
  %i.de = load i64, ptr %6, align 8
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = getelementptr inbounds [12 x i8], ptr %i.df, i64 %i.g
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.f:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit
  %i.dh = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.not.i.i.i, label %.preheader243, label %bb.h

.preheader243:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit209.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader243
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !160
  %i.dk = icmp eq i32 %i.dj, %.sroa.0166.0.extract.trunc
  br i1 %i.dk, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader243, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.dl = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.dm = urem i64 %i.g, %i.dl                    ; 5 uses
  %i.dn = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dm
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i, label %.loopexit209.thread, label %bb.i

.loopexit209.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0184)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !42 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !160
  %i.dt = icmp eq i32 %i.ds, %.sroa.0166.0.extract.trunc
  br i1 %i.dt, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.du = icmp eq i32 %i.dx, %.sroa.0166.0.extract.trunc
  br i1 %i.du, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.dv, %bb.j ], [ %i.dq, %bb.i ]
  %i.dv = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit209, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !160 ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = urem i64 %i.dy, %i.dl
  %.not19.i.i.i.i.i = icmp eq i64 %i.dz, %i.dm
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.loopexit209, !llvm.loop !6

.loopexit209.loopexit:                            ; preds = %.preheader243
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre263 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre268.a = urem i64 %i.g, %.pre               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre263, i64 %.pre268.a
  %.pre273 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit209

.loopexit209:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit209.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.ea = phi ptr [ %i.dp, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre273, %.loopexit209.loopexit ], [ %i.dp, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.dm, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre268.a, %.loopexit209.loopexit ], [ %i.dm, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.eb = phi i64 [ %i.dl, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit209.loopexit ], [ %i.dl, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0184)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit209
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !42 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !160
  %i.ef = icmp eq i32 %i.ee, %.sroa.0166.0.extract.trunc
  br i1 %i.ef, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.eg = icmp eq i32 %i.ej, %.sroa.0166.0.extract.trunc
  br i1 %i.eg, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.eh, %bb.m ], [ %i.ec, %bb.l ]
  %i.eh = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !160 ; 2 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = urem i64 %i.ek, %i.eb
  %.not19.i.i.i.i = icmp eq i64 %i.el, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit209.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit209
  %.pre-phi305 = phi i64 [ %i.dm, %.loopexit209.thread ], [ %.pre-phi, %.loopexit209 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.em = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.em, align 8, !tbaa !42
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 %.sroa.0166.0.extract.trunc, ptr %i.en, align 8, !tbaa !240
  %i.eo = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi305, i64 noundef %i.g, ptr noundef nonnull %i.em, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa334.sink = phi ptr [ %i.kf, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91 ], [ %i.jm, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80 ], [ %i.hs, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53 ], [ %i.gz, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42 ], [ %i.ff, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17 ], [ %i.em, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.ki, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i91 ], [ %i.jp, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i80 ], [ %i.hv, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i53 ], [ %i.hc, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i42 ], [ %i.fi, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i17 ], [ %i.ep, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa334.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.eo, %.loopexit.i.i ], [ %i.ec, %bb.l ], [ %i.eh, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0184, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0184)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.eq = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.er = urem i64 %i.g, %i.eq                    ; 3 uses
  %i.es = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.er
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i10, label %.loopexit.i.i16, label %bb.o

bb.o:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !42 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !160
  %i.ey = icmp eq i32 %i.ex, %.sroa.0166.0.extract.trunc
  br i1 %i.ey, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit20, label %.lr.ph.i.i.i.i11

bb.p:                                             ; preds = %bb.q
  %i.ez = icmp eq i32 %i.fc, %.sroa.0166.0.extract.trunc
  br i1 %i.ez, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit20, label %.lr.ph.i.i.i.i11, !llvm.loop !6

.lr.ph.i.i.i.i11:                                 ; preds = %bb.o, %bb.p
  %.020.i.i.i.i12 = phi ptr [ %i.fa, %bb.p ], [ %i.ev, %bb.o ]
  %i.fa = load ptr, ptr %.020.i.i.i.i12, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i13 = icmp eq ptr %i.fa, null
  br i1 %.not18.i.i.i.i13, label %.loopexit.i.i16, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
end_hunk_11
begin_hunk_12_@_ZN5nblib13computeForcesISt5arrayIiLm3EENS_10PairLJTypeENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_5NoPbcEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i46, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0109, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0109)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit36

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit36: ; preds = %bb.u, %bb.r, %bb.t, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit47
  %i.dp = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.dq = urem i64 %i.i, %i.dp                    ; 3 uses
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dq
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i48, label %.loopexit.i.i54, label %bb.z

bb.z:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit36
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !42 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !160
  %i.dx = icmp eq i32 %i.dw, %.sroa.0104.4.extract.trunc
  br i1 %i.dx, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58, label %.lr.ph.i.i.i.i49

bb.aa:                                            ; preds = %bb.ab
  %i.dy = icmp eq i32 %i.eb, %.sroa.0104.4.extract.trunc
  br i1 %i.dy, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58, label %.lr.ph.i.i.i.i49, !llvm.loop !6

.lr.ph.i.i.i.i49:                                 ; preds = %bb.z, %bb.aa
  %.020.i.i.i.i50 = phi ptr [ %i.dz, %bb.aa ], [ %i.du, %bb.z ]
  %i.dz = load ptr, ptr %.020.i.i.i.i50, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i51 = icmp eq ptr %i.dz, null
  br i1 %.not18.i.i.i.i51, label %.loopexit.i.i54, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i49
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !160 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = urem i64 %i.ec, %i.dp
  %.not19.i.i.i.i52 = icmp eq i64 %i.ed, %i.dq
  br i1 %.not19.i.i.i.i52, label %bb.aa, label %..loopexit_crit_edge21.i.i.i.i53, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i53:                 ; preds = %bb.ab
  br label %.loopexit.i.i54, !llvm.loop !6

.loopexit.i.i54:                                  ; preds = %.lr.ph.i.i.i.i49, %..loopexit_crit_edge21.i.i.i.i53, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit36
  %i.ee = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ee, align 8, !tbaa !42
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 %.sroa.0104.4.extract.trunc, ptr %i.ef, align 8, !tbaa !240
  %i.eg = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.dq, i64 noundef %i.i, ptr noundef nonnull %i.ee, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i55

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i55: ; preds = %.loopexit.i.i54
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58: ; preds = %bb.aa, %bb.z, %.loopexit.i.i54
  %.pn.i.i56 = phi ptr [ %i.eg, %.loopexit.i.i54 ], [ %i.du, %bb.z ], [ %i.dz, %bb.aa ]
  %.1.i.i57 = getelementptr inbounds nuw i8, ptr %.pn.i.i56, i64 12
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit.i

_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit.i: ; preds = %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58, %bb.p
  %.0.i.i = phi ptr [ %i.cf, %bb.p ], [ %.1.i.i57, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit58 ] ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.q, %i.q
  %i.ei = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ej = extractelement <2 x float> %i.q, i64 0  ; 2 uses
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.ej, float %i.ei)
  %i.el = tail call noundef float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.ek) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.el) ; 2 uses
  %i.em = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.en = fmul float %i.em, %i.em                 ; 3 uses
  %i.eo = fmul float %i.en, %i.en
  %i.ep = fmul float %i.en, %i.eo                 ; 4 uses
  %i.eq = fneg float %i.o
  %i.er = tail call float @llvm.fmuladd.f32(float %i.p, float %i.ep, float %i.eq)
  %i.es = fmul float %i.ep, %i.er
  %i.et = fcmp une float %i.el, 0.000000e+00
  br i1 %i.et, label %bb.ac, label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_10PairLJTypeES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEENS_11G96BondTypeENS_13CubicBondTypeENS_13MorseBondTypeENSC_INS_21FENEBondTypeParameterEEENSC_INS_38HalfAttractiveQuarticBondTypeParameterEEES6_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS13_IKSU_EEPT_NS13_IT2_EERKT3_.exit

bb.ac:                                            ; preds = %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit.i
  %i.eu = fmul float %i.p, 1.200000e+01
  %i.ev = fmul float %i.o, -6.000000e+00
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.ep, float %i.ev)
  %i.ex = fmul float %i.ep, %i.ew
  %i.ey = fmul float %i.em, %i.ex
  %i.ez = fdiv float %i.ey, %sqrt                 ; 2 uses
  %i.fa = fmul float %i.r, %i.ez                  ; 2 uses
  %i.fb = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x float> %i.q, %i.fc            ; 2 uses
  %i.fe = load <2 x float>, ptr %.0.i11.i, align 4, !tbaa !169
  %i.ff = fadd <2 x float> %i.fd, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 8 ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !169
  %i.fi = fadd float %i.fa, %i.fh
  store <2 x float> %i.ff, ptr %.0.i11.i, align 4
  store float %i.fi, ptr %i.fg, align 4, !tbaa !185
  %i.fj = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.fk = fsub <2 x float> %i.fj, %i.fd
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !169
  %i.fn = fsub float %i.fm, %i.fa
  store <2 x float> %i.fk, ptr %.0.i.i, align 4
  store float %i.fn, ptr %i.fl, align 4, !tbaa !185
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_10PairLJTypeES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEENS_11G96BondTypeENS_13CubicBondTypeENS_13MorseBondTypeENSC_INS_21FENEBondTypeParameterEEENSC_INS_38HalfAttractiveQuarticBondTypeParameterEEES6_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS13_IKSU_EEPT_NS13_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_10PairLJTypeES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEENS_11G96BondTypeENS_13CubicBondTypeENS_13MorseBondTypeENSC_INS_21FENEBondTypeParameterEEENSC_INS_38HalfAttractiveQuarticBondTypeParameterEEES6_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS13_IKSU_EEPT_NS13_IT2_EERKT3_.exit: ; preds = %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit.i, %bb.ac
  %.sroa.073.0.vec.extract = extractelement <2 x float> %.sroa.073.0152, i64 0
  %i.fo = fadd float %.sroa.073.0.vec.extract, %i.es
  %.sroa.073.0.vec.insert = insertelement <2 x float> %.sroa.073.0152, float %i.fo, i64 0 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.065.0153, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.fp, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_5NoPbcEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef.429") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0216 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0209 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0203 = alloca [3 x float], align 4       ; 6 uses
  %.not267 = icmp eq ptr %0, %1
  br i1 %.not267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0121.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0121.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0121.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0113.0269 = phi ptr [ %0, %.lr.ph ], [ %i.ki, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0121.0268 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0121.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0113.0269, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0113.0269, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %.sroa.0198.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0198.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0198.4.extract.trunc = trunc nuw i64 %.sroa.0198.4.extract.shift to i32 ; 11 uses
  %.sroa.5199.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.g = ashr exact i64 %sext, 32                 ; 7 uses
  %i.h = getelementptr inbounds [12 x i8], ptr %4, i64 %i.g ; 2 uses
  %.sroa.7190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7190.0.copyload = load float, ptr %.sroa.7190.0..sroa_idx, align 4, !tbaa !185
  %i.i = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.j = getelementptr inbounds [12 x i8], ptr %4, i64 %i.i ; 2 uses
  %.sroa.7184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7184.0.copyload = load float, ptr %.sroa.7184.0..sroa_idx, align 4, !tbaa !185
  %sext235 = shl i64 %.sroa.2.0.copyload, 32
  %i.k = ashr exact i64 %sext235, 32              ; 7 uses
  %i.l = getelementptr inbounds [12 x i8], ptr %4, i64 %i.k ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !185
  %i.m = ashr i64 %.sroa.2.0.copyload, 32
  %i.n = getelementptr inbounds [8 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = load float, ptr %i.n, align 4            ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load float, ptr %.sroa_idx, align 4
  %i.q = load <2 x float>, ptr %i.h, align 4
  %i.r = load <2 x float>, ptr %i.j, align 4      ; 2 uses
  %i.s = load <2 x float>, ptr %i.l, align 4
  %i.t = fsub <2 x float> %i.q, %i.r              ; 4 uses
  %i.u = fsub <2 x float> %i.s, %i.r              ; 4 uses
  %i.v = insertelement <2 x float> poison, float %.sroa.7190.0.copyload, i64 0
  %i.w = insertelement <2 x float> %i.v, float %.sroa.7.0.copyload, i64 1
  %i.x = insertelement <2 x float> poison, float %.sroa.7184.0.copyload, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fsub <2 x float> %i.w, %i.y              ; 5 uses
  %i.aa = shufflevector <2 x float> %i.t, <2 x float> %i.u, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ab = fpext <2 x float> %i.aa to <2 x double> ; 4 uses
  %i.ac = shufflevector <2 x float> %i.t, <2 x float> %i.u, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ad = fpext <2 x float> %i.ac to <2 x double> ; 4 uses
  %i.ae = fpext <2 x float> %i.z to <2 x double>  ; 4 uses
  %i.af = fmul <2 x double> %i.ad, %i.ad
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ab, <2 x double> %i.af)
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ae, <2 x double> %i.ag) ; 2 uses
  %shift = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.ah, %shift
  %i.ai = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.aj = fcmp ogt double %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.c, label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

bb.c:                                             ; preds = %bb.b
  %shift391 = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop392 = fmul <2 x double> %shift391, %i.ad
  %i.ak = extractelement <2 x double> %foldExtExtBinop392, i64 0
  %i.al = extractelement <2 x double> %i.ab, i64 0
  %i.am = extractelement <2 x double> %i.ab, i64 1
  %i.an = tail call double @llvm.fmuladd.f64(double %i.al, double %i.am, double %i.ak)
  %i.ao = extractelement <2 x double> %i.ae, i64 0
  %i.ap = extractelement <2 x double> %i.ae, i64 1
  %i.aq = tail call noundef double @llvm.fmuladd.f64(double %i.ao, double %i.ap, double %i.an)
  %i.ar = tail call nnan double @llvm.sqrt.f64(double %i.ai)
  %i.as = fdiv nnan double 1.000000e+00, %i.ar
  %i.at = fmul double %i.aq, %i.as
  %i.au = fptrunc double %i.at to float
  br label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit: ; preds = %bb.b, %bb.c
  %i.av = phi float [ %i.au, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.aw = fcmp ogt float %i.av, 1.000000e+00
  %.sroa.speculated7.i = select i1 %i.aw, float 1.000000e+00, float %i.av ; 2 uses
  %i.ax = fcmp olt float %.sroa.speculated7.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.ax, float -1.000000e+00, float %.sroa.speculated7.i ; 4 uses
  %i.ay = tail call noundef float @acosf(float noundef %.sroa.speculated.i) #9
  %i.az = fsub float %i.ay, %i.p                  ; 3 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fpext float %i.o to double
  %i.bc = fmul double %i.bb, 5.000000e-01
  %i.bd = fpext float %i.ba to double
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = fptrunc double %i.be to float
  %i.bg = fmul float %.sroa.speculated.i, %.sroa.speculated.i ; 2 uses
  %i.bh = fcmp olt float %i.bg, 1.000000e+00
  br i1 %i.bh, label %bb.d, label %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit

bb.d:                                             ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit
  %i.bi = fneg float %i.o
  %i.bj = fmul float %i.az, %i.bi
  %i.bk = fsub float 1.000000e+00, %i.bg
  %i.bl = tail call noundef float @sqrtf(float noundef %i.bk) #9
  %i.bm = fdiv float %i.bj, %i.bl                 ; 2 uses
  %i.bn = fmul <2 x float> %i.ac, %i.ac
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.aa, <2 x float> %i.bn)
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.z, <2 x float> %i.bo) ; 3 uses
  %shift394 = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop395 = fmul <2 x float> %i.bp, %shift394
  %i.bq = extractelement <2 x float> %foldExtExtBinop395, i64 0
  %i.br = tail call float @llvm.sqrt.f32(float %i.bq)
  %i.bs = fmul float %.sroa.speculated.i, %i.bm
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fdiv <2 x float> %i.bu, %i.bp           ; 3 uses
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul <2 x float> %i.u, %i.bw
  %i.by = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.t, %i.by
  %i.ca = fmul <2 x float> %i.z, %i.bv
  %i.cb = fdiv float %i.bm, %i.br
  %i.cc = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ce = fmul <2 x float> %i.u, %i.cd
  %i.cf = fsub <2 x float> %i.bz, %i.ce           ; 2 uses
  %i.cg = fmul <2 x float> %i.t, %i.cd
  %i.ch = fmul <2 x float> %i.z, %i.cd
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cj = fsub <2 x float> %i.bx, %i.cg           ; 2 uses
  %i.ck = fsub <2 x float> %i.ca, %i.ci           ; 3 uses
  %i.cl = fadd <2 x float> %i.cf, %i.cj
  %shift397 = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop398 = fadd <2 x float> %i.ck, %shift397
  %i.cm = extractelement <2 x float> %foldExtExtBinop398, i64 0
  %i.cn = fadd <2 x float> %i.cf, zeroinitializer
  %i.co = fsub <2 x float> zeroinitializer, %i.cl
  %i.cp = fsub float 0.000000e+00, %i.cm
  %i.cq = fadd <2 x float> %i.cj, zeroinitializer
  %i.cr = fadd <2 x float> %i.ck, zeroinitializer ; 2 uses
  %i.cs = extractelement <2 x float> %i.cr, i64 0
  %i.ct = extractelement <2 x float> %i.cr, i64 1
  br label %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit

_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit: ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit, %bb.d
  %.sroa.9170.0 = phi float [ %i.cs, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0163.0 = phi <2 x float> [ %i.cn, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9161.0 = phi float [ %i.cp, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0154.0 = phi <2 x float> [ %i.co, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9.0 = phi float [ %i.ct, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0146.0 = phi <2 x float> [ %i.cq, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %i.cu = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.cu, %.sroa.0198.0.extract.trunc
  %i.cv = load i32, ptr %i.b, align 4
  %i.cw = icmp sgt i32 %i.cv, %.sroa.0198.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.cw, i1 false
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit
  %i.cx = load i64, ptr %6, align 8
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr inbounds [12 x i8], ptr %i.cy, i64 %i.g
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.f:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit
  %i.da = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.not.i.i.i, label %.preheader275, label %bb.h

.preheader275:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit241.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader275
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !160
  %i.dd = icmp eq i32 %i.dc, %.sroa.0198.0.extract.trunc
  br i1 %i.dd, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader275, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.de = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.df = urem i64 %i.g, %i.de                    ; 5 uses
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.df
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i, label %.loopexit241.thread, label %bb.i

.loopexit241.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0216)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !42 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !160
  %i.dm = icmp eq i32 %i.dl, %.sroa.0198.0.extract.trunc
  br i1 %i.dm, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.dn = icmp eq i32 %i.dq, %.sroa.0198.0.extract.trunc
  br i1 %i.dn, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.do, %bb.j ], [ %i.dj, %bb.i ]
  %i.do = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit241, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !160 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = urem i64 %i.dr, %i.de
  %.not19.i.i.i.i.i = icmp eq i64 %i.ds, %i.df
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.loopexit241, !llvm.loop !6

.loopexit241.loopexit:                            ; preds = %.preheader275
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre295 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre300.a = urem i64 %i.g, %.pre               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre295, i64 %.pre300.a
  %.pre305 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit241

.loopexit241:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit241.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.dt = phi ptr [ %i.di, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre305, %.loopexit241.loopexit ], [ %i.di, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.df, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre300.a, %.loopexit241.loopexit ], [ %i.df, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.du = phi i64 [ %i.de, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit241.loopexit ], [ %i.de, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0216)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit241
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !42 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !160
  %i.dy = icmp eq i32 %i.dx, %.sroa.0198.0.extract.trunc
  br i1 %i.dy, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.dz = icmp eq i32 %i.ec, %.sroa.0198.0.extract.trunc
  br i1 %i.dz, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.ea, %bb.m ], [ %i.dv, %bb.l ]
  %i.ea = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !160 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = urem i64 %i.ed, %i.du
  %.not19.i.i.i.i = icmp eq i64 %i.ee, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit241.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit241
  %.pre-phi337 = phi i64 [ %i.df, %.loopexit241.thread ], [ %.pre-phi, %.loopexit241 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.ef = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ef, align 8, !tbaa !42
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i32 %.sroa.0198.0.extract.trunc, ptr %i.eg, align 8, !tbaa !240
  %i.eh = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi337, i64 noundef %i.g, ptr noundef nonnull %i.ef, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa366.sink = phi ptr [ %i.jy, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.jf, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.hl, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.gs, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50 ], [ %i.ey, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23 ], [ %i.ef, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.kb, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.ji, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.ho, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.gv, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50 ], [ %i.fb, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23 ], [ %i.ei, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa366.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.eh, %.loopexit.i.i ], [ %i.dv, %bb.l ], [ %i.ea, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0216)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.ej = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.ek = urem i64 %i.g, %i.ej                    ; 3 uses
  %i.el = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ek
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i16, label %.loopexit.i.i22, label %bb.o

bb.o:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !42 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !160
  %i.er = icmp eq i32 %i.eq, %.sroa.0198.0.extract.trunc
  br i1 %i.er, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit26, label %.lr.ph.i.i.i.i17

bb.p:                                             ; preds = %bb.q
end_hunk_12
begin_hunk_13_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_5NoPbcEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_:bb.a
  %i.iz = icmp eq i32 %i.jc, %.sroa.5199.8.extract.trunc
  br i1 %i.iz, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91, label %.lr.ph.i.i.i.i82, !llvm.loop !6

.lr.ph.i.i.i.i82:                                 ; preds = %bb.al, %bb.am
  %.020.i.i.i.i83 = phi ptr [ %i.ja, %bb.am ], [ %i.iv, %bb.al ]
  %i.ja = load ptr, ptr %.020.i.i.i.i83, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i84 = icmp eq ptr %i.ja, null
  br i1 %.not18.i.i.i.i84, label %.loopexit.i.i87, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i82
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !160 ; 2 uses
  %i.jd = sext i32 %i.jc to i64
  %i.je = urem i64 %i.jd, %i.iu
  %.not19.i.i.i.i85 = icmp eq i64 %i.je, %.pre-phi304
  br i1 %.not19.i.i.i.i85, label %bb.am, label %..loopexit_crit_edge21.i.i.i.i86, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i86:                 ; preds = %bb.an
  br label %.loopexit.i.i87, !llvm.loop !6

.loopexit.i.i87:                                  ; preds = %.lr.ph.i.i.i.i82, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i86, %.loopexit
  %.pre-phi304343 = phi i64 [ %i.if, %.loopexit.thread ], [ %.pre-phi304, %.loopexit ], [ %.pre-phi304, %..loopexit_crit_edge21.i.i.i.i86 ], [ %.pre-phi304, %.lr.ph.i.i.i.i82 ]
  %i.jf = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.jf, align 8, !tbaa !42
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store i32 %.sroa.5199.8.extract.trunc, ptr %i.jg, align 8, !tbaa !240
  %i.jh = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi304343, i64 noundef %i.k, ptr noundef nonnull %i.jf, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88: ; preds = %.loopexit.i.i87
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91: ; preds = %bb.am, %bb.al, %.loopexit.i.i87
  %.pn.i.i89 = phi ptr [ %i.jh, %.loopexit.i.i87 ], [ %i.iv, %bb.al ], [ %i.ja, %bb.am ]
  %.1.i.i90 = getelementptr inbounds nuw i8, ptr %.pn.i.i89, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i90, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0203, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0203)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80: ; preds = %bb.aj, %bb.ag, %bb.ai, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91
  %i.jj = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.jk = urem i64 %i.k, %i.jj                    ; 3 uses
  %i.jl = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jk
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i.i92, label %.loopexit.i.i98, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !42 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !160
  %i.jr = icmp eq i32 %i.jq, %.sroa.5199.8.extract.trunc
  br i1 %i.jr, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102, label %.lr.ph.i.i.i.i93

bb.ap:                                            ; preds = %bb.aq
  %i.js = icmp eq i32 %i.jv, %.sroa.5199.8.extract.trunc
  br i1 %i.js, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102, label %.lr.ph.i.i.i.i93, !llvm.loop !6

.lr.ph.i.i.i.i93:                                 ; preds = %bb.ao, %bb.ap
  %.020.i.i.i.i94 = phi ptr [ %i.jt, %bb.ap ], [ %i.jo, %bb.ao ]
  %i.jt = load ptr, ptr %.020.i.i.i.i94, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i95 = icmp eq ptr %i.jt, null
  br i1 %.not18.i.i.i.i95, label %.loopexit.i.i98, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i93
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !160 ; 2 uses
  %i.jw = sext i32 %i.jv to i64
  %i.jx = urem i64 %i.jw, %i.jj
  %.not19.i.i.i.i96 = icmp eq i64 %i.jx, %i.jk
  br i1 %.not19.i.i.i.i96, label %bb.ap, label %..loopexit_crit_edge21.i.i.i.i97, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i97:                 ; preds = %bb.aq
  br label %.loopexit.i.i98, !llvm.loop !6

.loopexit.i.i98:                                  ; preds = %.lr.ph.i.i.i.i93, %..loopexit_crit_edge21.i.i.i.i97, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80
  %i.jy = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.jy, align 8, !tbaa !42
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store i32 %.sroa.5199.8.extract.trunc, ptr %i.jz, align 8, !tbaa !240
  %i.ka = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.jk, i64 noundef %i.k, ptr noundef nonnull %i.jy, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99: ; preds = %.loopexit.i.i98
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102: ; preds = %bb.ap, %bb.ao, %.loopexit.i.i98
  %.pn.i.i100 = phi ptr [ %i.ka, %.loopexit.i.i98 ], [ %i.jo, %bb.ao ], [ %i.jt, %bb.ap ]
  %.1.i.i101 = getelementptr inbounds nuw i8, ptr %.pn.i.i100, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJS8_NS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSE_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ae, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102
  %.0.i.i = phi ptr [ %i.hz, %bb.ae ], [ %.1.i.i101, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102 ] ; 3 uses
  %i.kc = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.kd = fadd <2 x float> %.sroa.0146.0, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !169
  %i.kg = fadd float %.sroa.9.0, %i.kf
  store <2 x float> %i.kd, ptr %.0.i.i, align 4
  store float %i.kg, ptr %i.ke, align 4, !tbaa !185
  %.sroa.0121.0.vec.extract = extractelement <2 x float> %.sroa.0121.0268, i64 0
  %i.kh = fadd float %.sroa.0121.0.vec.extract, %i.bf
  %.sroa.0121.0.vec.insert = insertelement <2 x float> %.sroa.0121.0268, float %i.kh, i64 0 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0113.0269, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ki, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_16CosineParamAngleINS_17G96AngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_5NoPbcEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef.429") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0216 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0209 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0203 = alloca [3 x float], align 4       ; 6 uses
  %.not267 = icmp eq ptr %0, %1
  br i1 %.not267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0121.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0121.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0121.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0113.0269 = phi ptr [ %0, %.lr.ph ], [ %i.ko, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0121.0268 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0121.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0113.0269, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0113.0269, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %.sroa.0198.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0198.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0198.4.extract.trunc = trunc nuw i64 %.sroa.0198.4.extract.shift to i32 ; 11 uses
  %.sroa.5199.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.g = ashr exact i64 %sext, 32                 ; 7 uses
  %i.h = getelementptr inbounds [12 x i8], ptr %4, i64 %i.g ; 2 uses
  %.sroa.7190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7190.0.copyload = load float, ptr %.sroa.7190.0..sroa_idx, align 4, !tbaa !185
  %i.i = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.j = getelementptr inbounds [12 x i8], ptr %4, i64 %i.i ; 2 uses
  %.sroa.7184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7184.0.copyload = load float, ptr %.sroa.7184.0..sroa_idx, align 4, !tbaa !185
  %sext235 = shl i64 %.sroa.2.0.copyload, 32
  %i.k = ashr exact i64 %sext235, 32              ; 7 uses
  %i.l = getelementptr inbounds [12 x i8], ptr %4, i64 %i.k ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !185
  %i.m = ashr i64 %.sroa.2.0.copyload, 32
  %i.n = getelementptr inbounds [8 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = load float, ptr %i.n, align 4            ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load float, ptr %.sroa_idx, align 4
  %i.q = load <2 x float>, ptr %i.h, align 4
  %i.r = load <2 x float>, ptr %i.j, align 4      ; 2 uses
  %i.s = load <2 x float>, ptr %i.l, align 4
  %i.t = fsub <2 x float> %i.q, %i.r              ; 4 uses
  %i.u = fsub <2 x float> %i.s, %i.r              ; 4 uses
  %i.v = insertelement <2 x float> poison, float %.sroa.7190.0.copyload, i64 0
  %i.w = insertelement <2 x float> %i.v, float %.sroa.7.0.copyload, i64 1
  %i.x = insertelement <2 x float> poison, float %.sroa.7184.0.copyload, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fsub <2 x float> %i.w, %i.y              ; 5 uses
  %i.aa = shufflevector <2 x float> %i.t, <2 x float> %i.u, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ab = fpext <2 x float> %i.aa to <2 x double> ; 4 uses
  %i.ac = shufflevector <2 x float> %i.t, <2 x float> %i.u, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ad = fpext <2 x float> %i.ac to <2 x double> ; 4 uses
  %i.ae = fpext <2 x float> %i.z to <2 x double>  ; 4 uses
  %i.af = fmul <2 x double> %i.ad, %i.ad
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ab, <2 x double> %i.af)
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ae, <2 x double> %i.ag) ; 2 uses
  %shift = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.ah, %shift
  %i.ai = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.aj = fcmp ogt double %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.c, label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

bb.c:                                             ; preds = %bb.b
  %shift391 = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop392 = fmul <2 x double> %shift391, %i.ad
  %i.ak = extractelement <2 x double> %foldExtExtBinop392, i64 0
  %i.al = extractelement <2 x double> %i.ab, i64 0
  %i.am = extractelement <2 x double> %i.ab, i64 1
  %i.an = tail call double @llvm.fmuladd.f64(double %i.al, double %i.am, double %i.ak)
  %i.ao = extractelement <2 x double> %i.ae, i64 0
  %i.ap = extractelement <2 x double> %i.ae, i64 1
  %i.aq = tail call noundef double @llvm.fmuladd.f64(double %i.ao, double %i.ap, double %i.an)
  %i.ar = tail call nnan double @llvm.sqrt.f64(double %i.ai)
  %i.as = fdiv nnan double 1.000000e+00, %i.ar
  %i.at = fmul double %i.aq, %i.as
  %i.au = fptrunc double %i.at to float
  br label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit: ; preds = %bb.b, %bb.c
  %i.av = phi float [ %i.au, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.aw = fcmp ogt float %i.av, 1.000000e+00
  %.sroa.speculated7.i = select i1 %i.aw, float 1.000000e+00, float %i.av ; 2 uses
  %i.ax = fcmp olt float %.sroa.speculated7.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.ax, float -1.000000e+00, float %.sroa.speculated7.i ; 4 uses
  %i.ay = tail call noundef float @acosf(float noundef %.sroa.speculated.i) #9
  %i.az = tail call noundef float @cosf(float noundef %i.ay) #9, !noalias !392 ; 3 uses
  %i.ba = fsub float %i.az, %i.p                  ; 3 uses
  %i.bb = fmul float %i.ba, %i.ba
  %i.bc = fpext float %i.o to double
  %i.bd = fmul double %i.bc, 5.000000e-01
  %i.be = fpext float %i.bb to double
  %i.bf = fmul double %i.bd, %i.be
  %i.bg = fptrunc double %i.bf to float
  %i.bh = fneg float %i.az
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.az, float 1.000000e+00)
  %i.bj = tail call noundef float @sqrtf(float noundef %i.bi) #9, !noalias !392
  %i.bk = fmul float %.sroa.speculated.i, %.sroa.speculated.i ; 2 uses
  %i.bl = fcmp olt float %i.bk, 1.000000e+00
  br i1 %i.bl, label %bb.d, label %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit

bb.d:                                             ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit
  %i.bm = fneg float %i.o
  %i.bn = fmul float %i.ba, %i.bm
  %i.bo = fneg float %i.bj
  %i.bp = fmul float %i.bn, %i.bo
  %i.bq = fsub float 1.000000e+00, %i.bk
  %i.br = tail call noundef float @sqrtf(float noundef %i.bq) #9
  %i.bs = fdiv float %i.bp, %i.br                 ; 2 uses
  %i.bt = fmul <2 x float> %i.ac, %i.ac
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.aa, <2 x float> %i.bt)
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.z, <2 x float> %i.bu) ; 3 uses
  %shift394 = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop395 = fmul <2 x float> %i.bv, %shift394
  %i.bw = extractelement <2 x float> %foldExtExtBinop395, i64 0
  %i.bx = tail call float @llvm.sqrt.f32(float %i.bw)
  %i.by = fmul float %.sroa.speculated.i, %i.bs
  %i.bz = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fdiv <2 x float> %i.ca, %i.bv           ; 3 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = fmul <2 x float> %i.u, %i.cc
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.t, %i.ce
  %i.cg = fmul <2 x float> %i.z, %i.cb
  %i.ch = fdiv float %i.bs, %i.bx
  %i.ci = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ck = fmul <2 x float> %i.u, %i.cj
  %i.cl = fsub <2 x float> %i.cf, %i.ck           ; 2 uses
  %i.cm = fmul <2 x float> %i.t, %i.cj
  %i.cn = fmul <2 x float> %i.z, %i.cj
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cp = fsub <2 x float> %i.cd, %i.cm           ; 2 uses
  %i.cq = fsub <2 x float> %i.cg, %i.co           ; 3 uses
  %i.cr = fadd <2 x float> %i.cl, %i.cp
  %shift397 = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop398 = fadd <2 x float> %i.cq, %shift397
  %i.cs = extractelement <2 x float> %foldExtExtBinop398, i64 0
  %i.ct = fadd <2 x float> %i.cl, zeroinitializer
  %i.cu = fsub <2 x float> zeroinitializer, %i.cr
  %i.cv = fsub float 0.000000e+00, %i.cs
  %i.cw = fadd <2 x float> %i.cp, zeroinitializer
  %i.cx = fadd <2 x float> %i.cq, zeroinitializer ; 2 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 0
  %i.cz = extractelement <2 x float> %i.cx, i64 1
  br label %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit

_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit: ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit, %bb.d
  %.sroa.9170.0 = phi float [ %i.cy, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0163.0 = phi <2 x float> [ %i.ct, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9161.0 = phi float [ %i.cv, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0154.0 = phi <2 x float> [ %i.cu, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9.0 = phi float [ %i.cz, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0146.0 = phi <2 x float> [ %i.cw, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %i.da = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.da, %.sroa.0198.0.extract.trunc
  %i.db = load i32, ptr %i.b, align 4
  %i.dc = icmp sgt i32 %i.db, %.sroa.0198.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.dc, i1 false
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit
  %i.dd = load i64, ptr %6, align 8
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = getelementptr inbounds [12 x i8], ptr %i.de, i64 %i.g
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.f:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit
  %i.dg = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.not.i.i.i, label %.preheader275, label %bb.h

.preheader275:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit241.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader275
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !160
  %i.dj = icmp eq i32 %i.di, %.sroa.0198.0.extract.trunc
  br i1 %i.dj, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader275, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.dk = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.dl = urem i64 %i.g, %i.dk                    ; 5 uses
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dl
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i, label %.loopexit241.thread, label %bb.i

.loopexit241.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0216)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !42 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !160
  %i.ds = icmp eq i32 %i.dr, %.sroa.0198.0.extract.trunc
  br i1 %i.ds, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.dt = icmp eq i32 %i.dw, %.sroa.0198.0.extract.trunc
  br i1 %i.dt, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.du, %bb.j ], [ %i.dp, %bb.i ]
  %i.du = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit241, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !160 ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = urem i64 %i.dx, %i.dk
  %.not19.i.i.i.i.i = icmp eq i64 %i.dy, %i.dl
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.loopexit241, !llvm.loop !6

.loopexit241.loopexit:                            ; preds = %.preheader275
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre295 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre300.a = urem i64 %i.g, %.pre               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre295, i64 %.pre300.a
  %.pre305 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit241

.loopexit241:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit241.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.dz = phi ptr [ %i.do, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre305, %.loopexit241.loopexit ], [ %i.do, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.dl, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre300.a, %.loopexit241.loopexit ], [ %i.dl, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.ea = phi i64 [ %i.dk, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit241.loopexit ], [ %i.dk, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0216)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit241
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !42 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !160
  %i.ee = icmp eq i32 %i.ed, %.sroa.0198.0.extract.trunc
  br i1 %i.ee, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.ef = icmp eq i32 %i.ei, %.sroa.0198.0.extract.trunc
  br i1 %i.ef, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.eg, %bb.m ], [ %i.eb, %bb.l ]
  %i.eg = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !160 ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = urem i64 %i.ej, %i.ea
  %.not19.i.i.i.i = icmp eq i64 %i.ek, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit241.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit241
  %.pre-phi337 = phi i64 [ %i.dl, %.loopexit241.thread ], [ %.pre-phi, %.loopexit241 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.el = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.el, align 8, !tbaa !42
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i32 %.sroa.0198.0.extract.trunc, ptr %i.em, align 8, !tbaa !240
  %i.en = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi337, i64 noundef %i.g, ptr noundef nonnull %i.el, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa366.sink = phi ptr [ %i.ke, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.jl, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.hr, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.gy, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50 ], [ %i.fe, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23 ], [ %i.el, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.kh, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.jo, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.hu, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.hb, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50 ], [ %i.fh, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23 ], [ %i.eo, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa366.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.en, %.loopexit.i.i ], [ %i.eb, %bb.l ], [ %i.eg, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0216)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.ep = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.eq = urem i64 %i.g, %i.ep                    ; 3 uses
  %i.er = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eq
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i16, label %.loopexit.i.i22, label %bb.o

bb.o:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !42 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !160
  %i.ex = icmp eq i32 %i.ew, %.sroa.0198.0.extract.trunc
  br i1 %i.ex, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit26, label %.lr.ph.i.i.i.i17

bb.p:                                             ; preds = %bb.q
end_hunk_13
begin_hunk_14_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_16CosineParamAngleINS_17G96AngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_5NoPbcEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_:bb.a

bb.an:                                            ; preds = %.lr.ph.i.i.i.i82
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !160 ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %i.jk = urem i64 %i.jj, %i.ja
  %.not19.i.i.i.i85 = icmp eq i64 %i.jk, %.pre-phi304
  br i1 %.not19.i.i.i.i85, label %bb.am, label %..loopexit_crit_edge21.i.i.i.i86, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i86:                 ; preds = %bb.an
  br label %.loopexit.i.i87, !llvm.loop !6

.loopexit.i.i87:                                  ; preds = %.lr.ph.i.i.i.i82, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i86, %.loopexit
  %.pre-phi304343 = phi i64 [ %i.il, %.loopexit.thread ], [ %.pre-phi304, %.loopexit ], [ %.pre-phi304, %..loopexit_crit_edge21.i.i.i.i86 ], [ %.pre-phi304, %.lr.ph.i.i.i.i82 ]
  %i.jl = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.jl, align 8, !tbaa !42
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store i32 %.sroa.5199.8.extract.trunc, ptr %i.jm, align 8, !tbaa !240
  %i.jn = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi304343, i64 noundef %i.k, ptr noundef nonnull %i.jl, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88: ; preds = %.loopexit.i.i87
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91: ; preds = %bb.am, %bb.al, %.loopexit.i.i87
  %.pn.i.i89 = phi ptr [ %i.jn, %.loopexit.i.i87 ], [ %i.jb, %bb.al ], [ %i.jg, %bb.am ]
  %.1.i.i90 = getelementptr inbounds nuw i8, ptr %.pn.i.i89, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i90, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0203, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0203)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80: ; preds = %bb.aj, %bb.ag, %bb.ai, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91
  %i.jp = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.jq = urem i64 %i.k, %i.jp                    ; 3 uses
  %i.jr = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.jq
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i92, label %.loopexit.i.i98, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !42 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !160
  %i.jx = icmp eq i32 %i.jw, %.sroa.5199.8.extract.trunc
  br i1 %i.jx, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102, label %.lr.ph.i.i.i.i93

bb.ap:                                            ; preds = %bb.aq
  %i.jy = icmp eq i32 %i.kb, %.sroa.5199.8.extract.trunc
  br i1 %i.jy, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102, label %.lr.ph.i.i.i.i93, !llvm.loop !6

.lr.ph.i.i.i.i93:                                 ; preds = %bb.ao, %bb.ap
  %.020.i.i.i.i94 = phi ptr [ %i.jz, %bb.ap ], [ %i.ju, %bb.ao ]
  %i.jz = load ptr, ptr %.020.i.i.i.i94, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i95 = icmp eq ptr %i.jz, null
  br i1 %.not18.i.i.i.i95, label %.loopexit.i.i98, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i93
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !160 ; 2 uses
  %i.kc = sext i32 %i.kb to i64
  %i.kd = urem i64 %i.kc, %i.jp
  %.not19.i.i.i.i96 = icmp eq i64 %i.kd, %i.jq
  br i1 %.not19.i.i.i.i96, label %bb.ap, label %..loopexit_crit_edge21.i.i.i.i97, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i97:                 ; preds = %bb.aq
  br label %.loopexit.i.i98, !llvm.loop !6

.loopexit.i.i98:                                  ; preds = %.lr.ph.i.i.i.i93, %..loopexit_crit_edge21.i.i.i.i97, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80
  %i.ke = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ke, align 8, !tbaa !42
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store i32 %.sroa.5199.8.extract.trunc, ptr %i.kf, align 8, !tbaa !240
  %i.kg = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.jq, i64 noundef %i.k, ptr noundef nonnull %i.ke, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99: ; preds = %.loopexit.i.i98
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102: ; preds = %bb.ap, %bb.ao, %.loopexit.i.i98
  %.pn.i.i100 = phi ptr [ %i.kg, %.loopexit.i.i98 ], [ %i.ju, %bb.ao ], [ %i.jz, %bb.ap ]
  %.1.i.i101 = getelementptr inbounds nuw i8, ptr %.pn.i.i100, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_17G96AngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEES8_NS_12QuarticAngleENS6_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ae, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102
  %.0.i.i = phi ptr [ %i.if, %bb.ae ], [ %.1.i.i101, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102 ] ; 3 uses
  %i.ki = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.kj = fadd <2 x float> %.sroa.0146.0, %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !169
  %i.km = fadd float %.sroa.9.0, %i.kl
  store <2 x float> %i.kj, ptr %.0.i.i, align 4
  store float %i.km, ptr %i.kk, align 4, !tbaa !185
  %.sroa.0121.0.vec.extract = extractelement <2 x float> %.sroa.0121.0268, i64 0
  %i.kn = fadd float %.sroa.0121.0.vec.extract, %i.bg
  %.sroa.0121.0.vec.insert = insertelement <2 x float> %.sroa.0121.0268, float %i.kn, i64 0 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0113.0269, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ko, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_12QuarticAngleENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_5NoPbcEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef.429") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0221 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0214 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0208 = alloca [3 x float], align 4       ; 6 uses
  %.not272 = icmp eq ptr %0, %1
  br i1 %.not272, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0124.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0124.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0124.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0116.0274 = phi ptr [ %0, %.lr.ph ], [ %i.km, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0124.0273 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0124.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0116.0274, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0116.0274, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %.sroa.0203.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0203.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0203.4.extract.trunc = trunc nuw i64 %.sroa.0203.4.extract.shift to i32 ; 11 uses
  %.sroa.5204.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.g = ashr exact i64 %sext, 32                 ; 7 uses
  %i.h = getelementptr inbounds [12 x i8], ptr %4, i64 %i.g ; 2 uses
  %.sroa.7195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7195.0.copyload = load float, ptr %.sroa.7195.0..sroa_idx, align 4, !tbaa !185
  %i.i = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.j = getelementptr inbounds [12 x i8], ptr %4, i64 %i.i ; 2 uses
  %.sroa.7189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7189.0.copyload = load float, ptr %.sroa.7189.0..sroa_idx, align 4, !tbaa !185
  %sext240 = shl i64 %.sroa.2.0.copyload, 32
  %i.k = ashr exact i64 %sext240, 32              ; 7 uses
  %i.l = getelementptr inbounds [12 x i8], ptr %4, i64 %i.k ; 2 uses
  %.sroa.7183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7183.0.copyload = load float, ptr %.sroa.7183.0..sroa_idx, align 4, !tbaa !185
  %i.m = ashr i64 %.sroa.2.0.copyload, 32
  %i.n = getelementptr inbounds [24 x i8], ptr %2, i64 %i.m ; 6 uses
  %.sroa.0175.0.copyload = load float, ptr %i.n, align 4
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.4176.0.copyload = load float, ptr %.sroa.4176.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5177.0.copyload = load float, ptr %.sroa.5177.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.6178.0.copyload = load float, ptr %.sroa.6178.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !185 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !169
  %i.o = load <2 x float>, ptr %i.h, align 4
  %i.p = load <2 x float>, ptr %i.j, align 4      ; 2 uses
  %i.q = load <2 x float>, ptr %i.l, align 4
  %i.r = fsub <2 x float> %i.o, %i.p              ; 4 uses
  %i.s = fsub <2 x float> %i.q, %i.p              ; 4 uses
  %i.t = insertelement <2 x float> poison, float %.sroa.7195.0.copyload, i64 0
  %i.u = insertelement <2 x float> %i.t, float %.sroa.7183.0.copyload, i64 1
  %i.v = insertelement <2 x float> poison, float %.sroa.7189.0.copyload, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fsub <2 x float> %i.u, %i.w              ; 5 uses
  %i.y = shufflevector <2 x float> %i.r, <2 x float> %i.s, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.z = fpext <2 x float> %i.y to <2 x double>   ; 4 uses
  %i.aa = shufflevector <2 x float> %i.r, <2 x float> %i.s, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ab = fpext <2 x float> %i.aa to <2 x double> ; 4 uses
  %i.ac = fpext <2 x float> %i.x to <2 x double>  ; 4 uses
  %i.ad = fmul <2 x double> %i.ab, %i.ab
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.z, <2 x double> %i.ad)
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ac, <2 x double> %i.ae) ; 2 uses
  %shift = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.af, %shift
  %i.ag = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ah = fcmp ogt double %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.c, label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

bb.c:                                             ; preds = %bb.b
  %shift396 = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop397 = fmul <2 x double> %shift396, %i.ab
  %i.ai = extractelement <2 x double> %foldExtExtBinop397, i64 0
  %i.aj = extractelement <2 x double> %i.z, i64 0
  %i.ak = extractelement <2 x double> %i.z, i64 1
  %i.al = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.ak, double %i.ai)
  %i.am = extractelement <2 x double> %i.ac, i64 0
  %i.an = extractelement <2 x double> %i.ac, i64 1
  %i.ao = tail call noundef double @llvm.fmuladd.f64(double %i.am, double %i.an, double %i.al)
  %i.ap = tail call nnan double @llvm.sqrt.f64(double %i.ag)
  %i.aq = fdiv nnan double 1.000000e+00, %i.ap
  %i.ar = fmul double %i.ao, %i.aq
  %i.as = fptrunc double %i.ar to float
  br label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit: ; preds = %bb.b, %bb.c
  %i.at = phi float [ %i.as, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.au = fcmp ogt float %i.at, 1.000000e+00
  %.sroa.speculated7.i = select i1 %i.au, float 1.000000e+00, float %i.at ; 2 uses
  %i.av = fcmp olt float %.sroa.speculated7.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.av, float -1.000000e+00, float %.sroa.speculated7.i ; 4 uses
  %i.aw = tail call noundef float @acosf(float noundef %.sroa.speculated.i) #9
  %i.ax = fsub float %i.aw, %.sroa.8.0.copyload   ; 6 uses
  %i.ay = tail call float @llvm.fmuladd.f32(float %.sroa.4176.0.copyload, float %i.ax, float %.sroa.0175.0.copyload)
  %i.az = fmul float %i.ax, %i.ax                 ; 3 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %.sroa.5177.0.copyload, float %i.az, float %i.ay)
  %i.bb = fmul float %i.ax, %i.az                 ; 3 uses
  %i.bc = tail call float @llvm.fmuladd.f32(float %.sroa.6178.0.copyload, float %i.bb, float %i.ba)
  %i.bd = fmul float %i.ax, %i.bb
  %i.be = tail call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.bd, float %i.bc)
  %i.bf = fmul float %.sroa.speculated.i, %.sroa.speculated.i ; 2 uses
  %i.bg = fcmp olt float %i.bf, 1.000000e+00
  br i1 %i.bg, label %bb.d, label %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit

bb.d:                                             ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit
  %i.bh = fmul float %.sroa.7.0.copyload, -4.000000e+00
  %i.bi = fmul float %.sroa.6178.0.copyload, -3.000000e+00
  %i.bj = fmul float %.sroa.5177.0.copyload, -2.000000e+00
  %i.bk = fsub float 0.000000e+00, %.sroa.4176.0.copyload
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.ax, float %i.bk)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.az, float %i.bl)
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bb, float %i.bm)
  %i.bo = fsub float 1.000000e+00, %i.bf
  %i.bp = tail call noundef float @sqrtf(float noundef %i.bo) #9
  %i.bq = fdiv float %i.bn, %i.bp                 ; 2 uses
  %i.br = fmul <2 x float> %i.aa, %i.aa
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.y, <2 x float> %i.br)
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.x, <2 x float> %i.bs) ; 3 uses
  %shift399 = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop400 = fmul <2 x float> %i.bt, %shift399
  %i.bu = extractelement <2 x float> %foldExtExtBinop400, i64 0
  %i.bv = tail call float @llvm.sqrt.f32(float %i.bu)
  %i.bw = fmul float %.sroa.speculated.i, %i.bq
  %i.bx = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fdiv <2 x float> %i.by, %i.bt           ; 3 uses
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = fmul <2 x float> %i.s, %i.ca
  %i.cc = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.r, %i.cc
  %i.ce = fmul <2 x float> %i.x, %i.bz
  %i.cf = fdiv float %i.bq, %i.bv
  %i.cg = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ci = fmul <2 x float> %i.s, %i.ch
  %i.cj = fsub <2 x float> %i.cd, %i.ci           ; 2 uses
  %i.ck = fmul <2 x float> %i.r, %i.ch
  %i.cl = fmul <2 x float> %i.x, %i.ch
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cn = fsub <2 x float> %i.cb, %i.ck           ; 2 uses
  %i.co = fsub <2 x float> %i.ce, %i.cm           ; 3 uses
  %i.cp = fadd <2 x float> %i.cj, %i.cn
  %shift402 = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop403 = fadd <2 x float> %i.co, %shift402
  %i.cq = extractelement <2 x float> %foldExtExtBinop403, i64 0
  %i.cr = fadd <2 x float> %i.cj, zeroinitializer
  %i.cs = fsub <2 x float> zeroinitializer, %i.cp
  %i.ct = fsub float 0.000000e+00, %i.cq
  %i.cu = fadd <2 x float> %i.cn, zeroinitializer
  %i.cv = fadd <2 x float> %i.co, zeroinitializer ; 2 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 0
  %i.cx = extractelement <2 x float> %i.cv, i64 1
  br label %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit

_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit: ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit, %bb.d
  %.sroa.9173.0 = phi float [ %i.cw, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0166.0 = phi <2 x float> [ %i.cr, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9164.0 = phi float [ %i.ct, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0157.0 = phi <2 x float> [ %i.cs, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9.0 = phi float [ %i.cx, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0149.0 = phi <2 x float> [ %i.cu, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.cy, %.sroa.0203.0.extract.trunc
  %i.cz = load i32, ptr %i.b, align 4
  %i.da = icmp sgt i32 %i.cz, %.sroa.0203.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.da, i1 false
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit
  %i.db = load i64, ptr %6, align 8
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = getelementptr inbounds [12 x i8], ptr %i.dc, i64 %i.g
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.f:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit
  %i.de = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.not.i.i.i, label %.preheader280, label %bb.h

.preheader280:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit246.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader280
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !160
  %i.dh = icmp eq i32 %i.dg, %.sroa.0203.0.extract.trunc
  br i1 %i.dh, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader280, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.di = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.dj = urem i64 %i.g, %i.di                    ; 5 uses
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i, label %.loopexit246.thread, label %bb.i

.loopexit246.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0221)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0221, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !42 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !160
  %i.dq = icmp eq i32 %i.dp, %.sroa.0203.0.extract.trunc
  br i1 %i.dq, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.dr = icmp eq i32 %i.du, %.sroa.0203.0.extract.trunc
  br i1 %i.dr, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.ds, %bb.j ], [ %i.dn, %bb.i ]
  %i.ds = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit246, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !160 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = urem i64 %i.dv, %i.di
  %.not19.i.i.i.i.i = icmp eq i64 %i.dw, %i.dj
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.loopexit246, !llvm.loop !6

.loopexit246.loopexit:                            ; preds = %.preheader280
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre300 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre305.a = urem i64 %i.g, %.pre               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre300, i64 %.pre305.a
  %.pre310 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit246

.loopexit246:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit246.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.dx = phi ptr [ %i.dm, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre310, %.loopexit246.loopexit ], [ %i.dm, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.dj, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre305.a, %.loopexit246.loopexit ], [ %i.dj, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.dy = phi i64 [ %i.di, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit246.loopexit ], [ %i.di, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0221)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0221, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit246
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !42 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !160
  %i.ec = icmp eq i32 %i.eb, %.sroa.0203.0.extract.trunc
  br i1 %i.ec, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.ed = icmp eq i32 %i.eg, %.sroa.0203.0.extract.trunc
  br i1 %i.ed, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.ee, %bb.m ], [ %i.dz, %bb.l ]
  %i.ee = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !160 ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = urem i64 %i.eh, %i.dy
  %.not19.i.i.i.i = icmp eq i64 %i.ei, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit246.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit246
  %.pre-phi342 = phi i64 [ %i.dj, %.loopexit246.thread ], [ %.pre-phi, %.loopexit246 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.ej = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ej, align 8, !tbaa !42
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 %.sroa.0203.0.extract.trunc, ptr %i.ek, align 8, !tbaa !240
  %i.el = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi342, i64 noundef %i.g, ptr noundef nonnull %i.ej, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa371.sink = phi ptr [ %i.kc, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.jj, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.hp, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.gw, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50 ], [ %i.fc, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23 ], [ %i.ej, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.kf, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.jm, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.hs, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.gz, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50 ], [ %i.ff, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23 ], [ %i.em, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa371.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.el, %.loopexit.i.i ], [ %i.dz, %bb.l ], [ %i.ee, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0221, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0221)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.en = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.eo = urem i64 %i.g, %i.en                    ; 3 uses
  %i.ep = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eo
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i16, label %.loopexit.i.i22, label %bb.o

bb.o:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !42 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !160
  %i.ev = icmp eq i32 %i.eu, %.sroa.0203.0.extract.trunc
  br i1 %i.ev, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit26, label %.lr.ph.i.i.i.i17

bb.p:                                             ; preds = %bb.q
end_hunk_14
begin_hunk_15_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_12QuarticAngleENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_5NoPbcEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_:bb.a
  %i.jd = icmp eq i32 %i.jg, %.sroa.5204.8.extract.trunc
  br i1 %i.jd, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91, label %.lr.ph.i.i.i.i82, !llvm.loop !6

.lr.ph.i.i.i.i82:                                 ; preds = %bb.al, %bb.am
  %.020.i.i.i.i83 = phi ptr [ %i.je, %bb.am ], [ %i.iz, %bb.al ]
  %i.je = load ptr, ptr %.020.i.i.i.i83, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i84 = icmp eq ptr %i.je, null
  br i1 %.not18.i.i.i.i84, label %.loopexit.i.i87, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i82
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !160 ; 2 uses
  %i.jh = sext i32 %i.jg to i64
  %i.ji = urem i64 %i.jh, %i.iy
  %.not19.i.i.i.i85 = icmp eq i64 %i.ji, %.pre-phi309
  br i1 %.not19.i.i.i.i85, label %bb.am, label %..loopexit_crit_edge21.i.i.i.i86, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i86:                 ; preds = %bb.an
  br label %.loopexit.i.i87, !llvm.loop !6

.loopexit.i.i87:                                  ; preds = %.lr.ph.i.i.i.i82, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i86, %.loopexit
  %.pre-phi309348 = phi i64 [ %i.ij, %.loopexit.thread ], [ %.pre-phi309, %.loopexit ], [ %.pre-phi309, %..loopexit_crit_edge21.i.i.i.i86 ], [ %.pre-phi309, %.lr.ph.i.i.i.i82 ]
  %i.jj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.jj, align 8, !tbaa !42
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store i32 %.sroa.5204.8.extract.trunc, ptr %i.jk, align 8, !tbaa !240
  %i.jl = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi309348, i64 noundef %i.k, ptr noundef nonnull %i.jj, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88: ; preds = %.loopexit.i.i87
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91: ; preds = %bb.am, %bb.al, %.loopexit.i.i87
  %.pn.i.i89 = phi ptr [ %i.jl, %.loopexit.i.i87 ], [ %i.iz, %bb.al ], [ %i.je, %bb.am ]
  %.1.i.i90 = getelementptr inbounds nuw i8, ptr %.pn.i.i89, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i90, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0208, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0208)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80: ; preds = %bb.aj, %bb.ag, %bb.ai, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit91
  %i.jn = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.jo = urem i64 %i.k, %i.jn                    ; 3 uses
  %i.jp = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jo
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i92, label %.loopexit.i.i98, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !42 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !160
  %i.jv = icmp eq i32 %i.ju, %.sroa.5204.8.extract.trunc
  br i1 %i.jv, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102, label %.lr.ph.i.i.i.i93

bb.ap:                                            ; preds = %bb.aq
  %i.jw = icmp eq i32 %i.jz, %.sroa.5204.8.extract.trunc
  br i1 %i.jw, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102, label %.lr.ph.i.i.i.i93, !llvm.loop !6

.lr.ph.i.i.i.i93:                                 ; preds = %bb.ao, %bb.ap
  %.020.i.i.i.i94 = phi ptr [ %i.jx, %bb.ap ], [ %i.js, %bb.ao ]
  %i.jx = load ptr, ptr %.020.i.i.i.i94, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i95 = icmp eq ptr %i.jx, null
  br i1 %.not18.i.i.i.i95, label %.loopexit.i.i98, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i93
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !160 ; 2 uses
  %i.ka = sext i32 %i.jz to i64
  %i.kb = urem i64 %i.ka, %i.jn
  %.not19.i.i.i.i96 = icmp eq i64 %i.kb, %i.jo
  br i1 %.not19.i.i.i.i96, label %bb.ap, label %..loopexit_crit_edge21.i.i.i.i97, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i97:                 ; preds = %bb.aq
  br label %.loopexit.i.i98, !llvm.loop !6

.loopexit.i.i98:                                  ; preds = %.lr.ph.i.i.i.i93, %..loopexit_crit_edge21.i.i.i.i97, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit80
  %i.kc = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.kc, align 8, !tbaa !42
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store i32 %.sroa.5204.8.extract.trunc, ptr %i.kd, align 8, !tbaa !240
  %i.ke = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.jo, i64 noundef %i.k, ptr noundef nonnull %i.kc, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99: ; preds = %.loopexit.i.i98
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102: ; preds = %bb.ap, %bb.ao, %.loopexit.i.i98
  %.pn.i.i100 = phi ptr [ %i.ke, %.loopexit.i.i98 ], [ %i.js, %bb.ao ], [ %i.jx, %bb.ap ]
  %.1.i.i101 = getelementptr inbounds nuw i8, ptr %.pn.i.i100, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_12QuarticAngleES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEES6_NSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ae, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102
  %.0.i.i = phi ptr [ %i.id, %bb.ae ], [ %.1.i.i101, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit102 ] ; 3 uses
  %i.kg = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.kh = fadd <2 x float> %.sroa.0149.0, %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !169
  %i.kk = fadd float %.sroa.9.0, %i.kj
  store <2 x float> %i.kh, ptr %.0.i.i, align 4
  store float %i.kk, ptr %i.ki, align 4, !tbaa !185
  %.sroa.0124.0.vec.extract = extractelement <2 x float> %.sroa.0124.0273, i64 0
  %i.kl = fadd float %.sroa.0124.0.vec.extract, %i.be
  %.sroa.0124.0.vec.insert = insertelement <2 x float> %.sroa.0124.0273, float %i.kl, i64 0 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0116.0274, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.km, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_16CosineParamAngleINS_24RestrictedAngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_5NoPbcEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef.429") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0216 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0209 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0203 = alloca [3 x float], align 4       ; 6 uses
  %.not267 = icmp eq ptr %0, %1
  br i1 %.not267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0121.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0121.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0121.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0113.0269 = phi ptr [ %0, %.lr.ph ], [ %i.kr, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0121.0268 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0121.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_16CosineParamAngleINS_24RestrictedAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS6_INS_17G96AngleParameterEEENS_12QuarticAngleES8_NS_13CrossBondBondENS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0113.0269, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0113.0269, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %.sroa.0198.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0198.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0198.4.extract.trunc = trunc nuw i64 %.sroa.0198.4.extract.shift to i32 ; 11 uses
  %.sroa.5199.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.g = ashr exact i64 %sext, 32                 ; 7 uses
  %i.h = getelementptr inbounds [12 x i8], ptr %4, i64 %i.g ; 2 uses
  %.sroa.7190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7190.0.copyload = load float, ptr %.sroa.7190.0..sroa_idx, align 4, !tbaa !185
  %i.i = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.j = getelementptr inbounds [12 x i8], ptr %4, i64 %i.i ; 2 uses
  %.sroa.7184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7184.0.copyload = load float, ptr %.sroa.7184.0..sroa_idx, align 4, !tbaa !185
  %sext235 = shl i64 %.sroa.2.0.copyload, 32
  %i.k = ashr exact i64 %sext235, 32              ; 7 uses
  %i.l = getelementptr inbounds [12 x i8], ptr %4, i64 %i.k ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !185
  %i.m = ashr i64 %.sroa.2.0.copyload, 32
  %i.n = getelementptr inbounds [8 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = load float, ptr %i.n, align 4            ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load float, ptr %.sroa_idx, align 4      ; 2 uses
  %i.q = load <2 x float>, ptr %i.h, align 4
  %i.r = load <2 x float>, ptr %i.j, align 4      ; 2 uses
  %i.s = load <2 x float>, ptr %i.l, align 4
  %i.t = fsub <2 x float> %i.q, %i.r              ; 4 uses
  %i.u = fsub <2 x float> %i.s, %i.r              ; 4 uses
  %i.v = insertelement <2 x float> poison, float %.sroa.7190.0.copyload, i64 0
  %i.w = insertelement <2 x float> %i.v, float %.sroa.7.0.copyload, i64 1
  %i.x = insertelement <2 x float> poison, float %.sroa.7184.0.copyload, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fsub <2 x float> %i.w, %i.y              ; 5 uses
  %i.aa = shufflevector <2 x float> %i.t, <2 x float> %i.u, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ab = fpext <2 x float> %i.aa to <2 x double> ; 4 uses
  %i.ac = shufflevector <2 x float> %i.t, <2 x float> %i.u, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ad = fpext <2 x float> %i.ac to <2 x double> ; 4 uses
  %i.ae = fpext <2 x float> %i.z to <2 x double>  ; 4 uses
  %i.af = fmul <2 x double> %i.ad, %i.ad
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ab, <2 x double> %i.af)
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ae, <2 x double> %i.ag) ; 2 uses
  %shift = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.ah, %shift
  %i.ai = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.aj = fcmp ogt double %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.c, label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

bb.c:                                             ; preds = %bb.b
  %shift391 = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop392 = fmul <2 x double> %shift391, %i.ad
  %i.ak = extractelement <2 x double> %foldExtExtBinop392, i64 0
  %i.al = extractelement <2 x double> %i.ab, i64 0
  %i.am = extractelement <2 x double> %i.ab, i64 1
  %i.an = tail call double @llvm.fmuladd.f64(double %i.al, double %i.am, double %i.ak)
  %i.ao = extractelement <2 x double> %i.ae, i64 0
  %i.ap = extractelement <2 x double> %i.ae, i64 1
  %i.aq = tail call noundef double @llvm.fmuladd.f64(double %i.ao, double %i.ap, double %i.an)
  %i.ar = tail call nnan double @llvm.sqrt.f64(double %i.ai)
  %i.as = fdiv nnan double 1.000000e+00, %i.ar
  %i.at = fmul double %i.aq, %i.as
  %i.au = fptrunc double %i.at to float
  br label %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit

_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit: ; preds = %bb.b, %bb.c
  %i.av = phi float [ %i.au, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.aw = fcmp ogt float %i.av, 1.000000e+00
  %.sroa.speculated7.i = select i1 %i.aw, float 1.000000e+00, float %i.av ; 2 uses
  %i.ax = fcmp olt float %.sroa.speculated7.i, -1.000000e+00
  %.sroa.speculated.i = select i1 %i.ax, float -1.000000e+00, float %.sroa.speculated7.i ; 4 uses
  %i.ay = tail call noundef float @acosf(float noundef %.sroa.speculated.i) #9
  %i.az = tail call noundef float @cosf(float noundef %i.ay) #9, !noalias !395 ; 4 uses
  %i.ba = fsub float %i.az, %i.p                  ; 3 uses
  %i.bb = fmul float %i.ba, %i.ba
  %i.bc = fpext float %i.o to double
  %i.bd = fmul double %i.bc, 5.000000e-01
  %i.be = fpext float %i.bb to double
  %i.bf = fmul double %i.bd, %i.be
  %i.bg = fptrunc double %i.bf to float
  %i.bh = fneg float %i.az
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.az, float 1.000000e+00) ; 3 uses
  %i.bj = tail call noundef float @sqrtf(float noundef %i.bi) #9, !noalias !395
  %i.bk = fdiv float %i.bg, %i.bi
  %i.bl = fmul float %.sroa.speculated.i, %.sroa.speculated.i ; 2 uses
  %i.bm = fcmp olt float %i.bl, 1.000000e+00
  br i1 %i.bm, label %bb.d, label %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit

bb.d:                                             ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit
  %i.bn = fneg float %i.o
  %i.bo = fmul float %i.ba, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.az, float %i.p, float -1.000000e+00)
  %i.bq = fmul float %i.bi, %i.bj
  %i.br = fdiv float %i.bp, %i.bq
  %i.bs = fmul float %i.bo, %i.br
  %i.bt = fsub float 1.000000e+00, %i.bl
  %i.bu = tail call noundef float @sqrtf(float noundef %i.bt) #9
  %i.bv = fdiv float %i.bs, %i.bu                 ; 2 uses
  %i.bw = fmul <2 x float> %i.ac, %i.ac
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.aa, <2 x float> %i.bw)
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.z, <2 x float> %i.bx) ; 3 uses
  %shift394 = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop395 = fmul <2 x float> %i.by, %shift394
  %i.bz = extractelement <2 x float> %foldExtExtBinop395, i64 0
  %i.ca = tail call float @llvm.sqrt.f32(float %i.bz)
  %i.cb = fmul float %.sroa.speculated.i, %i.bv
  %i.cc = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fdiv <2 x float> %i.cd, %i.by           ; 3 uses
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = fmul <2 x float> %i.u, %i.cf
  %i.ch = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.t, %i.ch
  %i.cj = fmul <2 x float> %i.z, %i.ce
  %i.ck = fdiv float %i.bv, %i.ca
  %i.cl = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cn = fmul <2 x float> %i.u, %i.cm
  %i.co = fsub <2 x float> %i.ci, %i.cn           ; 2 uses
  %i.cp = fmul <2 x float> %i.t, %i.cm
  %i.cq = fmul <2 x float> %i.z, %i.cm
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cs = fsub <2 x float> %i.cg, %i.cp           ; 2 uses
  %i.ct = fsub <2 x float> %i.cj, %i.cr           ; 3 uses
  %i.cu = fadd <2 x float> %i.co, %i.cs
  %shift397 = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop398 = fadd <2 x float> %i.ct, %shift397
  %i.cv = extractelement <2 x float> %foldExtExtBinop398, i64 0
  %i.cw = fadd <2 x float> %i.co, zeroinitializer
  %i.cx = fsub <2 x float> zeroinitializer, %i.cu
  %i.cy = fsub float 0.000000e+00, %i.cv
  %i.cz = fadd <2 x float> %i.cs, zeroinitializer
  %i.da = fadd <2 x float> %i.ct, zeroinitializer ; 2 uses
  %i.db = extractelement <2 x float> %i.da, i64 0
  %i.dc = extractelement <2 x float> %i.da, i64 1
  br label %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit

_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit: ; preds = %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit, %bb.d
  %.sroa.9170.0 = phi float [ %i.db, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0163.0 = phi <2 x float> [ %i.cw, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9161.0 = phi float [ %i.cy, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0154.0 = phi <2 x float> [ %i.cx, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.9.0 = phi float [ %i.dc, %bb.d ], [ 0.000000e+00, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %.sroa.0146.0 = phi <2 x float> [ %i.cz, %bb.d ], [ zeroinitializer, %_ZN5nblib19basicVectorCosAngleIfEET_N3gmx11BasicVectorIS1_EES4_.exit ]
  %i.dd = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.dd, %.sroa.0198.0.extract.trunc
  %i.de = load i32, ptr %i.b, align 4
  %i.df = icmp sgt i32 %i.de, %.sroa.0198.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.df, i1 false
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit
  %i.dg = load i64, ptr %6, align 8
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = getelementptr inbounds [12 x i8], ptr %i.dh, i64 %i.g
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.f:                                             ; preds = %_ZN5nblib23spreadThreeCenterForcesIfDnEEvT_S1_RKN3gmx11BasicVectorIS1_EES6_PS4_S7_S7_PT0_S9_S9_.exit
  %i.dj = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not.not.i.i.i, label %.preheader275, label %bb.h

.preheader275:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.f, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit241.loopexit, label %bb.g

bb.g:                                             ; preds = %.preheader275
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !160
  %i.dm = icmp eq i32 %i.dl, %.sroa.0198.0.extract.trunc
  br i1 %i.dm, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader275, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.dn = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.do = urem i64 %i.g, %i.dn                    ; 5 uses
  %i.dp = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i, label %.loopexit241.thread, label %bb.i

.loopexit241.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0216)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !42 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !160
  %i.dv = icmp eq i32 %i.du, %.sroa.0198.0.extract.trunc
  br i1 %i.dv, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.dw = icmp eq i32 %i.dz, %.sroa.0198.0.extract.trunc
  br i1 %i.dw, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.dx, %bb.j ], [ %i.ds, %bb.i ]
  %i.dx = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit241, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !160 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = urem i64 %i.ea, %i.dn
  %.not19.i.i.i.i.i = icmp eq i64 %i.eb, %i.do
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.loopexit241, !llvm.loop !6

.loopexit241.loopexit:                            ; preds = %.preheader275
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre295 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre300.a = urem i64 %i.g, %.pre               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre295, i64 %.pre300.a
  %.pre305 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit241

.loopexit241:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit241.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.ec = phi ptr [ %i.dr, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre305, %.loopexit241.loopexit ], [ %i.dr, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.do, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre300.a, %.loopexit241.loopexit ], [ %i.do, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.ed = phi i64 [ %i.dn, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit241.loopexit ], [ %i.dn, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0216)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit241
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !42 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !160
  %i.eh = icmp eq i32 %i.eg, %.sroa.0198.0.extract.trunc
  br i1 %i.eh, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.ei = icmp eq i32 %i.el, %.sroa.0198.0.extract.trunc
  br i1 %i.ei, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.ej, %bb.m ], [ %i.ee, %bb.l ]
  %i.ej = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !160 ; 2 uses
  %i.em = sext i32 %i.el to i64
  %i.en = urem i64 %i.em, %i.ed
  %.not19.i.i.i.i = icmp eq i64 %i.en, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit241.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit241
  %.pre-phi337 = phi i64 [ %i.do, %.loopexit241.thread ], [ %.pre-phi, %.loopexit241 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.eo = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.eo, align 8, !tbaa !42
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i32 %.sroa.0198.0.extract.trunc, ptr %i.ep, align 8, !tbaa !240
  %i.eq = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi337, i64 noundef %i.g, ptr noundef nonnull %i.eo, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa366.sink = phi ptr [ %i.kh, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.jo, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.hu, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.hb, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50 ], [ %i.fh, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23 ], [ %i.eo, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.kk, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.jr, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.hx, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.he, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i50 ], [ %i.fk, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i23 ], [ %i.er, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa366.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.eq, %.loopexit.i.i ], [ %i.ee, %bb.l ], [ %i.ej, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0216, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0216)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.j, %bb.g, %bb.i, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.es = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.et = urem i64 %i.g, %i.es                    ; 3 uses
  %i.eu = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i.i16, label %.loopexit.i.i22, label %bb.o

bb.o:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !42 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !160
  %i.fa = icmp eq i32 %i.ez, %.sroa.0198.0.extract.trunc
  br i1 %i.fa, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit26, label %.lr.ph.i.i.i.i17

bb.p:                                             ; preds = %bb.q
end_hunk_15
begin_hunk_16_@_ZN5nblib13computeForcesISt5arrayIiLm5EENS_24RyckaertBellemanDihedralENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_5NoPbcEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_:bb.a

bb.at:                                            ; preds = %bb.ar
  %i.mt = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.mu = urem i64 %i.m, %i.mt                    ; 5 uses
  %i.mv = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %i.mu
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i111 = icmp eq ptr %i.mx, null
  br i1 %.not.i.i.i.i.i111, label %.loopexit.thread, label %bb.au

.loopexit.thread:                                 ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0280)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0280, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i130

bb.au:                                            ; preds = %bb.at
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !42 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !160
  %i.nb = icmp eq i32 %.sroa.0152.sroa.4.0.copyload, %i.na
  br i1 %i.nb, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit123, label %.lr.ph.i.i.i.i.i112

bb.av:                                            ; preds = %bb.aw
  %i.nc = icmp eq i32 %.sroa.0152.sroa.4.0.copyload, %i.nf
  br i1 %i.nc, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit123, label %.lr.ph.i.i.i.i.i112, !llvm.loop !6

.lr.ph.i.i.i.i.i112:                              ; preds = %bb.au, %bb.av
  %.020.i.i.i.i.i113 = phi ptr [ %i.nd, %bb.av ], [ %i.my, %bb.au ]
  %i.nd = load ptr, ptr %.020.i.i.i.i.i113, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i114 = icmp eq ptr %i.nd, null
  br i1 %.not18.i.i.i.i.i114, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i.i112
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !160 ; 2 uses
  %i.ng = sext i32 %i.nf to i64
  %i.nh = urem i64 %i.ng, %i.mt
  %.not19.i.i.i.i.i115 = icmp eq i64 %i.nh, %i.mu
  br i1 %.not19.i.i.i.i.i115, label %bb.av, label %..loopexit_crit_edge21.i.i.i.i.i116, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i116:              ; preds = %bb.aw
  br label %.loopexit, !llvm.loop !6

.loopexit.loopexit:                               ; preds = %.preheader
  %.pre403 = load i64, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %.pre404 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre410 = urem i64 %i.m, %.pre403              ; 2 uses
  %.phi.trans.insert417 = getelementptr inbounds nuw [8 x i8], ptr %.pre404, i64 %.pre410
  %.pre418 = load ptr, ptr %.phi.trans.insert417, align 8, !tbaa !172
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i112, %.loopexit.loopexit, %..loopexit_crit_edge21.i.i.i.i.i116
  %i.ni = phi ptr [ %i.mx, %..loopexit_crit_edge21.i.i.i.i.i116 ], [ %.pre418, %.loopexit.loopexit ], [ %i.mx, %.lr.ph.i.i.i.i.i112 ] ; 2 uses
  %.pre-phi411 = phi i64 [ %i.mu, %..loopexit_crit_edge21.i.i.i.i.i116 ], [ %.pre410, %.loopexit.loopexit ], [ %i.mu, %.lr.ph.i.i.i.i.i112 ] ; 4 uses
  %i.nj = phi i64 [ %i.mt, %..loopexit_crit_edge21.i.i.i.i.i116 ], [ %.pre403, %.loopexit.loopexit ], [ %i.mt, %.lr.ph.i.i.i.i.i112 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0280)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0280, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i124 = icmp eq ptr %i.ni, null
  br i1 %.not.i.i.i.i124, label %.loopexit.i.i130, label %bb.ax

bb.ax:                                            ; preds = %.loopexit
  %i.nk = load ptr, ptr %i.ni, align 8, !tbaa !42 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !160
  %i.nn = icmp eq i32 %.sroa.0152.sroa.4.0.copyload, %i.nm
  br i1 %i.nn, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit134, label %.lr.ph.i.i.i.i125

bb.ay:                                            ; preds = %bb.az
  %i.no = icmp eq i32 %.sroa.0152.sroa.4.0.copyload, %i.nr
  br i1 %i.no, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit134, label %.lr.ph.i.i.i.i125, !llvm.loop !6

.lr.ph.i.i.i.i125:                                ; preds = %bb.ax, %bb.ay
  %.020.i.i.i.i126 = phi ptr [ %i.np, %bb.ay ], [ %i.nk, %bb.ax ]
  %i.np = load ptr, ptr %.020.i.i.i.i126, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i127 = icmp eq ptr %i.np, null
  br i1 %.not18.i.i.i.i127, label %.loopexit.i.i130, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i.i125
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !160 ; 2 uses
  %i.ns = sext i32 %i.nr to i64
  %i.nt = urem i64 %i.ns, %i.nj
  %.not19.i.i.i.i128 = icmp eq i64 %i.nt, %.pre-phi411
  br i1 %.not19.i.i.i.i128, label %bb.ay, label %..loopexit_crit_edge21.i.i.i.i129, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i129:                ; preds = %bb.az
  br label %.loopexit.i.i130, !llvm.loop !6

.loopexit.i.i130:                                 ; preds = %.lr.ph.i.i.i.i125, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i129, %.loopexit
  %.pre-phi411462 = phi i64 [ %i.mu, %.loopexit.thread ], [ %.pre-phi411, %.loopexit ], [ %.pre-phi411, %..loopexit_crit_edge21.i.i.i.i129 ], [ %.pre-phi411, %.lr.ph.i.i.i.i125 ]
  %i.nu = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.nu, align 8, !tbaa !42
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  store i32 %.sroa.0152.sroa.4.0.copyload, ptr %i.nv, align 8, !tbaa !240
  %i.nw = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi411462, i64 noundef %i.m, ptr noundef nonnull %i.nu, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit134 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i131

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i131: ; preds = %.loopexit.i.i130
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit134: ; preds = %bb.ay, %bb.ax, %.loopexit.i.i130
  %.pn.i.i132 = phi ptr [ %i.nw, %.loopexit.i.i130 ], [ %i.nk, %bb.ax ], [ %i.np, %bb.ay ]
  %.1.i.i133 = getelementptr inbounds nuw i8, ptr %.pn.i.i132, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i133, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0280, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0280)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit123

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit123: ; preds = %bb.av, %bb.as, %bb.au, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit134
  %i.ny = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.nz = urem i64 %i.m, %i.ny                    ; 3 uses
  %i.oa = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %i.nz
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i135 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i.i135, label %.loopexit.i.i141, label %bb.ba

bb.ba:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit123
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !42 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !160
  %i.og = icmp eq i32 %.sroa.0152.sroa.4.0.copyload, %i.of
  br i1 %i.og, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit145, label %.lr.ph.i.i.i.i136

bb.bb:                                            ; preds = %bb.bc
  %i.oh = icmp eq i32 %.sroa.0152.sroa.4.0.copyload, %i.ok
  br i1 %i.oh, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit145, label %.lr.ph.i.i.i.i136, !llvm.loop !6

.lr.ph.i.i.i.i136:                                ; preds = %bb.ba, %bb.bb
  %.020.i.i.i.i137 = phi ptr [ %i.oi, %bb.bb ], [ %i.od, %bb.ba ]
  %i.oi = load ptr, ptr %.020.i.i.i.i137, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i138 = icmp eq ptr %i.oi, null
  br i1 %.not18.i.i.i.i138, label %.loopexit.i.i141, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i136
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !160 ; 2 uses
  %i.ol = sext i32 %i.ok to i64
  %i.om = urem i64 %i.ol, %i.ny
  %.not19.i.i.i.i139 = icmp eq i64 %i.om, %i.nz
  br i1 %.not19.i.i.i.i139, label %bb.bb, label %..loopexit_crit_edge21.i.i.i.i140, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i140:                ; preds = %bb.bc
  br label %.loopexit.i.i141, !llvm.loop !6

.loopexit.i.i141:                                 ; preds = %.lr.ph.i.i.i.i136, %..loopexit_crit_edge21.i.i.i.i140, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit123
  %i.on = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.on, align 8, !tbaa !42
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  store i32 %.sroa.0152.sroa.4.0.copyload, ptr %i.oo, align 8, !tbaa !240
  %i.op = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.nz, i64 noundef %i.m, ptr noundef nonnull %i.on, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit145 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i142

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i142: ; preds = %.loopexit.i.i141
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit145: ; preds = %bb.bb, %bb.ba, %.loopexit.i.i141
  %.pn.i.i143 = phi ptr [ %i.op, %.loopexit.i.i141 ], [ %i.od, %bb.ba ], [ %i.oi, %bb.bb ]
  %.1.i.i144 = getelementptr inbounds nuw i8, ptr %.pn.i.i143, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_24RyckaertBellemanDihedralES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_14ProperDihedralENS_16ImproperDihedralES6_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENSV_IKSM_EEPT_NSV_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_24RyckaertBellemanDihedralES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_14ProperDihedralENS_16ImproperDihedralES6_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENSV_IKSM_EEPT_NSV_IT2_EERKT3_.exit: ; preds = %bb.aq, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit145
  %.0.i.i = phi ptr [ %i.mo, %bb.aq ], [ %.1.i.i144, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit145 ] ; 3 uses
  %i.or = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.os = fadd <2 x float> %.sroa.0210.0, %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !169
  %i.ov = fadd float %.sroa.9.0, %i.ou
  store <2 x float> %i.os, ptr %.0.i.i, align 4
  store float %i.ov, ptr %i.ot, align 4, !tbaa !185
  %.sroa.0162.0.vec.extract = extractelement <2 x float> %.sroa.0162.0362, i64 0
  %i.ow = fadd float %.sroa.0162.0.vec.extract, %i.bz
  %.sroa.0162.0.vec.insert = insertelement <2 x float> %.sroa.0162.0362, float %i.ow, i64 0 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.0154.0363, i64 20 ; 2 uses
  %.not = icmp eq ptr %i.ox, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #20

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nounwind }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { cold noreturn }
attributes #16 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = distinct !{!3, !27}
!4 = distinct !{!4, !27}
!5 = distinct !{!5, !27}
!6 = distinct !{!6, !27}
!7 = !{i32 7, !"openmp", i32 51}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 _ZTSN5nblib9PbcHolderE", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 _ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !16, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN3gmx11BasicVectorIfEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !19, i64 8}
!23 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !16, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!24, !23, i64 0}
!26 = !{!24, !23, i64 16}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!20, !19, i64 16}
!29 = !{!"p1 _ZTSN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEE", !16, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEESaIS5_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!30, !29, i64 0}
!32 = !{!30, !29, i64 8}
!33 = !{!"any p2 pointer", !16, i64 0}
!34 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !33, i64 0}
!35 = !{!"long", !12, i64 0}
!36 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!37 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !36, i64 0}
!38 = !{!"float", !12, i64 0}
!39 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !38, i64 0, !35, i64 8}
!40 = !{!"_ZTSSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE", !34, i64 0, !35, i64 8, !37, i64 16, !35, i64 24, !39, i64 32, !36, i64 48}
!41 = !{!40, !36, i64 16}
!42 = !{!37, !36, i64 0}
!43 = !{!40, !34, i64 0}
!44 = !{!40, !35, i64 8}
!45 = !{!30, !29, i64 16}
!46 = !{!"p1 _ZTSSt5tupleIJN5nblib14ListedTypeDataINS0_23TwoParameterInteractionINS0_25HarmonicBondTypeParameterEEEEENS1_INS0_11G96BondTypeEEENS1_INS0_13CubicBondTypeEEENS1_INS0_13MorseBondTypeEEENS1_INS2_INS0_21FENEBondTypeParameterEEEEENS1_INS2_INS0_38HalfAttractiveQuarticBondTypeParameterEEEEENS1_INS0_10PairLJTypeEEENS1_INS0_20AngleInteractionTypeINS0_22HarmonicAngleParameterEEEEENS1_INS0_16CosineParamAngleINS0_17G96AngleParameterEEEEENS1_INS0_12QuarticAngleEEENS1_INSO_INS0_24RestrictedAngleParameterEEEEENS1_INS0_13CrossBondBondEEENS1_INS0_14CrossBondAngleEEENS1_INS2_INS0_20LinearAngleParameterEEEEENS1_INS0_14ProperDihedralEEENS1_INS0_16ImproperDihedralEEENS1_INS0_24RyckaertBellemanDihedralEEENS1_INS0_14Default5CenterEEEEE", !16, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseISt5tupleIJN5nblib14ListedTypeDataINS1_23TwoParameterInteractionINS1_25HarmonicBondTypeParameterEEEEENS2_INS1_11G96BondTypeEEENS2_INS1_13CubicBondTypeEEENS2_INS1_13MorseBondTypeEEENS2_INS3_INS1_21FENEBondTypeParameterEEEEENS2_INS3_INS1_38HalfAttractiveQuarticBondTypeParameterEEEEENS2_INS1_10PairLJTypeEEENS2_INS1_20AngleInteractionTypeINS1_22HarmonicAngleParameterEEEEENS2_INS1_16CosineParamAngleINS1_17G96AngleParameterEEEEENS2_INS1_12QuarticAngleEEENS2_INSP_INS1_24RestrictedAngleParameterEEEEENS2_INS1_13CrossBondBondEEENS2_INS1_14CrossBondAngleEEENS2_INS3_INS1_20LinearAngleParameterEEEEENS2_INS1_14ProperDihedralEEENS2_INS1_16ImproperDihedralEEENS2_INS1_24RyckaertBellemanDihedralEEENS2_INS1_14Default5CenterEEEEESaIS1D_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!47, !46, i64 0}
!49 = !{!47, !46, i64 8}
!50 = !{!47, !46, i64 16}
!51 = !{!"p1 _ZTSSt5arrayIiLm3EE", !16, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseISt5arrayIiLm3EESaIS1_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!52, !51, i64 0}
!54 = !{!52, !51, i64 16}
!55 = !{!"p1 _ZTSN5nblib23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEE", !16, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN5nblib23TwoParameterInteractionINS0_25HarmonicBondTypeParameterEEESaIS3_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!56, !55, i64 0}
!58 = !{!56, !55, i64 16}
!59 = !{!"p1 _ZTSN5nblib11G96BondTypeE", !16, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN5nblib11G96BondTypeESaIS1_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!60, !59, i64 0}
!62 = !{!60, !59, i64 16}
!63 = !{!"p1 _ZTSN5nblib13CubicBondTypeE", !16, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN5nblib13CubicBondTypeESaIS1_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!64, !63, i64 0}
!66 = !{!64, !63, i64 16}
!67 = !{!"p1 _ZTSN5nblib13MorseBondTypeE", !16, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIN5nblib13MorseBondTypeESaIS1_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!69 = !{!68, !67, i64 0}
!70 = !{!68, !67, i64 16}
!71 = !{!"p1 _ZTSN5nblib23TwoParameterInteractionINS_21FENEBondTypeParameterEEE", !16, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN5nblib23TwoParameterInteractionINS0_21FENEBondTypeParameterEEESaIS3_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!72, !71, i64 0}
!74 = !{!72, !71, i64 16}
!75 = !{!"p1 _ZTSN5nblib23TwoParameterInteractionINS_38HalfAttractiveQuarticBondTypeParameterEEE", !16, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIN5nblib23TwoParameterInteractionINS0_38HalfAttractiveQuarticBondTypeParameterEEESaIS3_EE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!77 = !{!76, !75, i64 0}
!78 = !{!76, !75, i64 16}
!79 = !{!"p1 _ZTSN5nblib10PairLJTypeE", !16, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIN5nblib10PairLJTypeESaIS1_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!80, !79, i64 0}
!82 = !{!80, !79, i64 16}
!83 = !{!"p1 _ZTSSt5arrayIiLm4EE", !16, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseISt5arrayIiLm4EESaIS1_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!85 = !{!84, !83, i64 0}
!86 = !{!84, !83, i64 16}
!87 = !{!"p1 _ZTSN5nblib20AngleInteractionTypeINS_22HarmonicAngleParameterEEE", !16, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEESaIS3_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!88, !87, i64 0}
!90 = !{!88, !87, i64 16}
!91 = !{!"p1 _ZTSN5nblib16CosineParamAngleINS_17G96AngleParameterEEE", !16, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIN5nblib16CosineParamAngleINS0_17G96AngleParameterEEESaIS3_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!92, !91, i64 0}
!94 = !{!92, !91, i64 16}
!95 = !{!"p1 _ZTSN5nblib12QuarticAngleE", !16, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIN5nblib12QuarticAngleESaIS1_EE17_Vector_impl_dataE", !95, i64 0, !95, i64 8, !95, i64 16}
!97 = !{!96, !95, i64 0}
!98 = !{!96, !95, i64 16}
!99 = !{!"p1 _ZTSN5nblib16CosineParamAngleINS_24RestrictedAngleParameterEEE", !16, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseIN5nblib16CosineParamAngleINS0_24RestrictedAngleParameterEEESaIS3_EE17_Vector_impl_dataE", !99, i64 0, !99, i64 8, !99, i64 16}
!101 = !{!100, !99, i64 0}
!102 = !{!100, !99, i64 16}
!103 = !{!"p1 _ZTSN5nblib13CrossBondBondE", !16, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIN5nblib13CrossBondBondESaIS1_EE17_Vector_impl_dataE", !103, i64 0, !103, i64 8, !103, i64 16}
!105 = !{!104, !103, i64 0}
!106 = !{!104, !103, i64 16}
!107 = !{!"p1 _ZTSN5nblib14CrossBondAngleE", !16, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseIN5nblib14CrossBondAngleESaIS1_EE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!109 = !{!108, !107, i64 0}
!110 = !{!108, !107, i64 16}
!111 = !{!"p1 _ZTSN5nblib23TwoParameterInteractionINS_20LinearAngleParameterEEE", !16, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIN5nblib23TwoParameterInteractionINS0_20LinearAngleParameterEEESaIS3_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!113 = !{!112, !111, i64 0}
!114 = !{!112, !111, i64 16}
!115 = !{!"p1 _ZTSSt5arrayIiLm5EE", !16, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseISt5arrayIiLm5EESaIS1_EE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!117 = !{!116, !115, i64 0}
!118 = !{!116, !115, i64 16}
!119 = !{!"p1 _ZTSN5nblib14ProperDihedralE", !16, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIN5nblib14ProperDihedralESaIS1_EE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!121 = !{!120, !119, i64 0}
!122 = !{!120, !119, i64 16}
!123 = !{!"p1 _ZTSN5nblib16ImproperDihedralE", !16, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIN5nblib16ImproperDihedralESaIS1_EE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!125 = !{!124, !123, i64 0}
!126 = !{!124, !123, i64 16}
!127 = !{!"p1 _ZTSN5nblib24RyckaertBellemanDihedralE", !16, i64 0}
!128 = !{!"_ZTSNSt12_Vector_baseIN5nblib24RyckaertBellemanDihedralESaIS1_EE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!129 = !{!128, !127, i64 0}
!130 = !{!128, !127, i64 16}
!131 = !{!"p1 _ZTSSt5arrayIiLm6EE", !16, i64 0}
!132 = !{!"_ZTSNSt12_Vector_baseISt5arrayIiLm6EESaIS1_EE17_Vector_impl_dataE", !131, i64 0, !131, i64 8, !131, i64 16}
!133 = !{!132, !131, i64 0}
!134 = !{!132, !131, i64 16}
!135 = !{!"p1 _ZTSN5nblib14Default5CenterE", !16, i64 0}
!136 = !{!"_ZTSNSt12_Vector_baseIN5nblib14Default5CenterESaIS1_EE17_Vector_impl_dataE", !135, i64 0, !135, i64 8, !135, i64 16}
!137 = !{!136, !135, i64 0}
!138 = !{!136, !135, i64 16}
!139 = !{!35, !35, i64 0}
!140 = !{!"_ZTSSt5arrayIfLm18EE", !12, i64 0}
!141 = !{!"_ZTSNSt12_Vector_baseISt5tupleIJN5nblib14ListedTypeDataINS1_23TwoParameterInteractionINS1_25HarmonicBondTypeParameterEEEEENS2_INS1_11G96BondTypeEEENS2_INS1_13CubicBondTypeEEENS2_INS1_13MorseBondTypeEEENS2_INS3_INS1_21FENEBondTypeParameterEEEEENS2_INS3_INS1_38HalfAttractiveQuarticBondTypeParameterEEEEENS2_INS1_10PairLJTypeEEENS2_INS1_20AngleInteractionTypeINS1_22HarmonicAngleParameterEEEEENS2_INS1_16CosineParamAngleINS1_17G96AngleParameterEEEEENS2_INS1_12QuarticAngleEEENS2_INSP_INS1_24RestrictedAngleParameterEEEEENS2_INS1_13CrossBondBondEEENS2_INS1_14CrossBondAngleEEENS2_INS3_INS1_20LinearAngleParameterEEEEENS2_INS1_14ProperDihedralEEENS2_INS1_16ImproperDihedralEEENS2_INS1_24RyckaertBellemanDihedralEEENS2_INS1_14Default5CenterEEEEESaIS1D_EE12_Vector_implE", !47, i64 0}
!142 = !{!"_ZTSSt12_Vector_baseISt5tupleIJN5nblib14ListedTypeDataINS1_23TwoParameterInteractionINS1_25HarmonicBondTypeParameterEEEEENS2_INS1_11G96BondTypeEEENS2_INS1_13CubicBondTypeEEENS2_INS1_13MorseBondTypeEEENS2_INS3_INS1_21FENEBondTypeParameterEEEEENS2_INS3_INS1_38HalfAttractiveQuarticBondTypeParameterEEEEENS2_INS1_10PairLJTypeEEENS2_INS1_20AngleInteractionTypeINS1_22HarmonicAngleParameterEEEEENS2_INS1_16CosineParamAngleINS1_17G96AngleParameterEEEEENS2_INS1_12QuarticAngleEEENS2_INSP_INS1_24RestrictedAngleParameterEEEEENS2_INS1_13CrossBondBondEEENS2_INS1_14CrossBondAngleEEENS2_INS3_INS1_20LinearAngleParameterEEEEENS2_INS1_14ProperDihedralEEENS2_INS1_16ImproperDihedralEEENS2_INS1_24RyckaertBellemanDihedralEEENS2_INS1_14Default5CenterEEEEESaIS1D_EE", !141, i64 0}
!143 = !{!"_ZTSSt6vectorISt5tupleIJN5nblib14ListedTypeDataINS1_23TwoParameterInteractionINS1_25HarmonicBondTypeParameterEEEEENS2_INS1_11G96BondTypeEEENS2_INS1_13CubicBondTypeEEENS2_INS1_13MorseBondTypeEEENS2_INS3_INS1_21FENEBondTypeParameterEEEEENS2_INS3_INS1_38HalfAttractiveQuarticBondTypeParameterEEEEENS2_INS1_10PairLJTypeEEENS2_INS1_20AngleInteractionTypeINS1_22HarmonicAngleParameterEEEEENS2_INS1_16CosineParamAngleINS1_17G96AngleParameterEEEEENS2_INS1_12QuarticAngleEEENS2_INSP_INS1_24RestrictedAngleParameterEEEEENS2_INS1_13CrossBondBondEEENS2_INS1_14CrossBondAngleEEENS2_INS3_INS1_20LinearAngleParameterEEEEENS2_INS1_14ProperDihedralEEENS2_INS1_16ImproperDihedralEEENS2_INS1_24RyckaertBellemanDihedralEEENS2_INS1_14Default5CenterEEEEESaIS1D_EE", !142, i64 0}
!144 = !{!"_ZTSNSt12_Vector_baseIN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEESaIS5_EE12_Vector_implE", !30, i64 0}
!145 = !{!"_ZTSSt12_Vector_baseIN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEESaIS5_EE", !144, i64 0}
!146 = !{!"_ZTSSt6vectorIN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEESaIS5_EE", !145, i64 0}
!147 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN3gmx11BasicVectorIfEESaIS3_EESaIS5_EE12_Vector_implE", !20, i64 0}
!148 = !{!"_ZTSSt12_Vector_baseISt6vectorIN3gmx11BasicVectorIfEESaIS3_EESaIS5_EE", !147, i64 0}
!149 = !{!"_ZTSSt6vectorIS_IN3gmx11BasicVectorIfEESaIS2_EESaIS4_EE", !148, i64 0}
!150 = !{!"_ZTSSt10_Head_baseILm0EPN5nblib9PbcHolderELb0EE", !17, i64 0}
!151 = !{!"_ZTSSt11_Tuple_implILm0EJPN5nblib9PbcHolderESt14default_deleteIS1_EEE", !150, i64 0}
!152 = !{!"_ZTSSt5tupleIJPN5nblib9PbcHolderESt14default_deleteIS1_EEE", !151, i64 0}
!153 = !{!"_ZTSSt15__uniq_ptr_implIN5nblib9PbcHolderESt14default_deleteIS1_EE", !152, i64 0}
!154 = !{!"_ZTSSt15__uniq_ptr_dataIN5nblib9PbcHolderESt14default_deleteIS1_ELb1ELb1EE", !153, i64 0}
!155 = !{!"_ZTSSt10unique_ptrIN5nblib9PbcHolderESt14default_deleteIS1_EE", !154, i64 0}
!156 = !{!"_ZTSN5nblib21ListedForceCalculatorE", !13, i64 0, !140, i64 4, !143, i64 80, !146, i64 104, !149, i64 128, !155, i64 152}
!157 = !{!156, !13, i64 0}
!158 = !{!39, !38, i64 0}
end_hunk_16
