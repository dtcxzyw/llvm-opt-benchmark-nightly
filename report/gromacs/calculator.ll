Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/calculator?download=true
inline.NumInlined: 8941
inline.NumDeleted: 2472
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_13CrossBondBondENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES7_NS_5NoPbcEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_:bb.a
  br i1 %i.hl, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit107, label %.lr.ph.i.i.i.i.i96, !llvm.loop !6

.lr.ph.i.i.i.i.i96:                               ; preds = %bb.ag, %bb.ah
  %.020.i.i.i.i.i97 = phi ptr [ %i.hm, %bb.ah ], [ %i.hh, %bb.ag ]
  %i.hm = load ptr, ptr %.020.i.i.i.i.i97, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i98 = icmp eq ptr %i.hm, null
  br i1 %.not18.i.i.i.i.i98, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i96
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !160 ; 2 uses
  %i.hp = sext i32 %i.ho to i64
  %i.hq = urem i64 %i.hp, %i.hc
  %.not19.i.i.i.i.i99 = icmp eq i64 %i.hq, %i.hd
  br i1 %.not19.i.i.i.i.i99, label %bb.ah, label %..loopexit_crit_edge21.i.i.i.i.i100, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i100:              ; preds = %bb.ai
  br label %.loopexit, !llvm.loop !6

.loopexit.loopexit:                               ; preds = %.preheader
  %.pre360 = load i64, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %.pre361 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre365 = urem i64 %i.l, %.pre360              ; 2 uses
  %.phi.trans.insert370 = getelementptr inbounds nuw [8 x i8], ptr %.pre361, i64 %.pre365
  %.pre371 = load ptr, ptr %.phi.trans.insert370, align 8, !tbaa !172
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i96, %.loopexit.loopexit, %..loopexit_crit_edge21.i.i.i.i.i100
  %i.hr = phi ptr [ %i.hg, %..loopexit_crit_edge21.i.i.i.i.i100 ], [ %.pre371, %.loopexit.loopexit ], [ %i.hg, %.lr.ph.i.i.i.i.i96 ] ; 2 uses
  %.pre-phi366 = phi i64 [ %i.hd, %..loopexit_crit_edge21.i.i.i.i.i100 ], [ %.pre365, %.loopexit.loopexit ], [ %i.hd, %.lr.ph.i.i.i.i.i96 ] ; 4 uses
  %i.hs = phi i64 [ %i.hc, %..loopexit_crit_edge21.i.i.i.i.i100 ], [ %.pre360, %.loopexit.loopexit ], [ %i.hc, %.lr.ph.i.i.i.i.i96 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0230)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0230, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i108 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i108, label %.loopexit.i.i114, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.ht = load ptr, ptr %i.hr, align 8, !tbaa !42 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !160
  %i.hw = icmp eq i32 %i.hv, %.sroa.5226.8.extract.trunc
  br i1 %i.hw, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit118, label %.lr.ph.i.i.i.i109

bb.ak:                                            ; preds = %bb.al
  %i.hx = icmp eq i32 %i.ia, %.sroa.5226.8.extract.trunc
  br i1 %i.hx, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit118, label %.lr.ph.i.i.i.i109, !llvm.loop !6

.lr.ph.i.i.i.i109:                                ; preds = %bb.aj, %bb.ak
  %.020.i.i.i.i110 = phi ptr [ %i.hy, %bb.ak ], [ %i.ht, %bb.aj ]
  %i.hy = load ptr, ptr %.020.i.i.i.i110, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i111 = icmp eq ptr %i.hy, null
  br i1 %.not18.i.i.i.i111, label %.loopexit.i.i114, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i109
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !160 ; 2 uses
  %i.ib = sext i32 %i.ia to i64
  %i.ic = urem i64 %i.ib, %i.hs
  %.not19.i.i.i.i112 = icmp eq i64 %i.ic, %.pre-phi366
  br i1 %.not19.i.i.i.i112, label %bb.ak, label %..loopexit_crit_edge21.i.i.i.i113, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i113:                ; preds = %bb.al
  br label %.loopexit.i.i114, !llvm.loop !6

.loopexit.i.i114:                                 ; preds = %.lr.ph.i.i.i.i109, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i113, %.loopexit
  %.pre-phi366405 = phi i64 [ %i.hd, %.loopexit.thread ], [ %.pre-phi366, %.loopexit ], [ %.pre-phi366, %..loopexit_crit_edge21.i.i.i.i113 ], [ %.pre-phi366, %.lr.ph.i.i.i.i109 ]
  %i.id = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.id, align 8, !tbaa !42
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i32 %.sroa.5226.8.extract.trunc, ptr %i.ie, align 8, !tbaa !239
  %i.if = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi366405, i64 noundef %i.l, ptr noundef nonnull %i.id, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit118 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i115

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i115: ; preds = %.loopexit.i.i114
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit118: ; preds = %bb.ak, %bb.aj, %.loopexit.i.i114
  %.pn.i.i116 = phi ptr [ %i.if, %.loopexit.i.i114 ], [ %i.ht, %bb.aj ], [ %i.hy, %bb.ak ]
  %.1.i.i117 = getelementptr inbounds nuw i8, ptr %.pn.i.i116, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i117, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0230, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0230)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit107

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit107: ; preds = %bb.ah, %bb.ae, %bb.ag, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit118
  %i.ih = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.ii = urem i64 %i.l, %i.ih                    ; 3 uses
  %i.ij = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ii
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i119 = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i.i119, label %.loopexit.i.i125, label %bb.am

bb.am:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit107
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !42 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load i32, ptr %i.in, align 4, !tbaa !160
  %i.ip = icmp eq i32 %i.io, %.sroa.5226.8.extract.trunc
  br i1 %i.ip, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit129, label %.lr.ph.i.i.i.i120

bb.an:                                            ; preds = %bb.ao
  %i.iq = icmp eq i32 %i.it, %.sroa.5226.8.extract.trunc
  br i1 %i.iq, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit129, label %.lr.ph.i.i.i.i120, !llvm.loop !6

.lr.ph.i.i.i.i120:                                ; preds = %bb.am, %bb.an
  %.020.i.i.i.i121 = phi ptr [ %i.ir, %bb.an ], [ %i.im, %bb.am ]
  %i.ir = load ptr, ptr %.020.i.i.i.i121, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i122 = icmp eq ptr %i.ir, null
  br i1 %.not18.i.i.i.i122, label %.loopexit.i.i125, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i120
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load i32, ptr %i.is, align 4, !tbaa !160 ; 2 uses
  %i.iu = sext i32 %i.it to i64
  %i.iv = urem i64 %i.iu, %i.ih
  %.not19.i.i.i.i123 = icmp eq i64 %i.iv, %i.ii
  br i1 %.not19.i.i.i.i123, label %bb.an, label %..loopexit_crit_edge21.i.i.i.i124, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i124:                ; preds = %bb.ao
  br label %.loopexit.i.i125, !llvm.loop !6

.loopexit.i.i125:                                 ; preds = %.lr.ph.i.i.i.i120, %..loopexit_crit_edge21.i.i.i.i124, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit107
  %i.iw = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.iw, align 8, !tbaa !42
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store i32 %.sroa.5226.8.extract.trunc, ptr %i.ix, align 8, !tbaa !239
  %i.iy = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.ii, i64 noundef %i.l, ptr noundef nonnull %i.iw, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit129 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i126

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i126: ; preds = %.loopexit.i.i125
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit129: ; preds = %bb.an, %bb.am, %.loopexit.i.i125
  %.pn.i.i127 = phi ptr [ %i.iy, %.loopexit.i.i125 ], [ %i.im, %bb.am ], [ %i.ir, %bb.an ]
  %.1.i.i128 = getelementptr inbounds nuw i8, ptr %.pn.i.i127, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_13CrossBondBondES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEES6_NS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_13CrossBondBondES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEES6_NS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ac, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit129
  %.0.i.i = phi ptr [ %i.gx, %bb.ac ], [ %.1.i.i128, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit129 ] ; 3 uses
  %i.ja = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.jb = fadd <2 x float> %i.bh, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !169
  %i.je = fadd float %i.bi, %i.jd
  store <2 x float> %i.jb, ptr %.0.i.i, align 4
  store float %i.je, ptr %i.jc, align 4, !tbaa !185
  %.sroa.0148.0.vec.extract = extractelement <2 x float> %.sroa.0148.0330, i64 0
  %i.jf = fadd float %.sroa.0148.0.vec.extract, %i.ao
  %.sroa.0148.0.vec.insert = insertelement <2 x float> %.sroa.0148.0330, float %i.jf, i64 0 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0140.0331, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.jg, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_14CrossBondAngleENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES7_NS_5NoPbcEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0269 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0262 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0256 = alloca [3 x float], align 4       ; 6 uses
  %.not365 = icmp eq ptr %0, %1
  br i1 %.not365, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0167.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0167.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0167.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0159.0367 = phi ptr [ %0, %.lr.ph ], [ %i.im, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0167.0366 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0167.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0159.0367, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0159.0367, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !216    ; 2 uses
  %.sroa.0251.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0251.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0251.4.extract.trunc = trunc nuw i64 %.sroa.0251.4.extract.shift to i32 ; 11 uses
  %.sroa.5252.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.h = ashr exact i64 %sext, 32                 ; 7 uses
  %i.i = getelementptr inbounds [12 x i8], ptr %4, i64 %i.h ; 2 uses
  %.sroa.7243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.7243.0.copyload = load float, ptr %.sroa.7243.0..sroa_idx, align 4, !tbaa !185 ; 2 uses
  %i.j = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.k = getelementptr inbounds [12 x i8], ptr %4, i64 %i.j ; 2 uses
  %.sroa.7237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.7237.0.copyload = load float, ptr %.sroa.7237.0..sroa_idx, align 4, !tbaa !185 ; 2 uses
  %sext332 = shl i64 %.sroa.2.0.copyload, 32
  %i.l = ashr exact i64 %sext332, 32              ; 7 uses
  %i.m = getelementptr inbounds [12 x i8], ptr %4, i64 %i.l ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !185 ; 2 uses
  %i.n = ashr i64 %.sroa.2.0.copyload, 32
  %i.o = getelementptr inbounds [16 x i8], ptr %2, i64 %i.n ; 4 uses
  %.sroa.0224.0.copyload = load float, ptr %i.o, align 4, !tbaa !169 ; 2 uses
  %.sroa.4225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.4225.0.copyload = load float, ptr %.sroa.4225.0..sroa_idx, align 4, !tbaa !169
  %.sroa.5226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5226.0.copyload = load float, ptr %.sroa.5226.0..sroa_idx, align 4, !tbaa !169
  %.sroa.6227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.sroa.6227.0.copyload = load float, ptr %.sroa.6227.0..sroa_idx, align 4, !tbaa !169
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 2 uses
  %i.q = fneg float %.sroa.0224.0.copyload
  %9 = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %10 = load float, ptr %9, align 4, !tbaa !169
  %i.r = load <2 x float>, ptr %i.i, align 4      ; 2 uses
  %i.s = load <2 x float>, ptr %i.k, align 4      ; 2 uses
  %i.t = load <2 x float>, ptr %i.m, align 4      ; 2 uses
  %i.u = fsub <2 x float> %i.t, %i.s              ; 3 uses
  %i.v = fsub <2 x float> %i.r, %i.t              ; 3 uses
  %i.w = fsub float %.sroa.7243.0.copyload, %.sroa.7237.0.copyload ; 3 uses
  %11 = fsub <2 x float> %i.r, %i.s               ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %11, %11
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.y = extractelement <2 x float> %11, i64 0    ; 2 uses
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.x)
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.z)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aa) ; 2 uses
  %i.ab = fsub float %sqrt.i.i, %.sroa.4225.0.copyload
  %i.ac = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %.sroa.7243.0.copyload, i64 1
  %i.ae = insertelement <2 x float> poison, float %.sroa.7237.0.copyload, i64 0
  %12 = insertelement <2 x float> %i.ae, float %.sroa.7.0.copyload, i64 1
  %i.af = fsub <2 x float> %i.ad, %12             ; 3 uses
  %i.ag = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ah = fmul <2 x float> %i.ag, %i.ag
  %i.ai = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ai, <2 x float> %i.ah)
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.af, <2 x float> %i.aj)
  %i.al = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ak) ; 3 uses
  %i.am = extractelement <2 x float> %i.al, i64 0
  %13 = fsub float %i.am, %.sroa.5226.0.copyload
  %14 = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.an = insertelement <2 x float> %14, float %i.ab, i64 1 ; 2 uses
  %15 = insertelement <2 x float> poison, float %.sroa.6227.0.copyload, i64 0
  %16 = insertelement <2 x float> %15, float %13, i64 1 ; 2 uses
  %17 = fsub <2 x float> %i.an, %16               ; 2 uses
  %18 = fadd <2 x float> %i.an, %16               ; 2 uses
  %19 = shufflevector <2 x float> %17, <2 x float> %18, <2 x i32> <i32 0, i32 3>
  %20 = extractelement <2 x float> %17, i64 0
  %21 = fmul float %.sroa.0224.0.copyload, %20
  %i.ao = extractelement <2 x float> %18, i64 1
  %i.ap = fmul float %i.ao, %21
  %22 = insertelement <2 x float> poison, float %i.q, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = fmul <2 x float> %19, %23                 ; 2 uses
  %i.aq = extractelement <2 x float> %24, i64 0
  %i.ar = fdiv float %i.aq, %sqrt.i.i             ; 2 uses
  %25 = fdiv <2 x float> %24, %i.al               ; 3 uses
  %26 = fmul float %i.w, %i.ar
  %27 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %28 = fmul <2 x float> %i.v, %27                ; 2 uses
  %i.as = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %11, %i.at
  %29 = fadd <2 x float> %i.au, %28               ; 4 uses
  %30 = fmul <2 x float> %i.af, %25               ; 2 uses
  %31 = extractelement <2 x float> %30, i64 1     ; 2 uses
  %32 = fadd float %26, %31                       ; 3 uses
  %i.av = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x float> %i.u, %i.av
  %33 = fsub <2 x float> %i.aw, %28               ; 4 uses
  %34 = extractelement <2 x float> %30, i64 0
  %35 = fsub float %34, %31                       ; 3 uses
  %i.ax = fadd <2 x float> %29, %33               ; 3 uses
  %i.ay = fadd float %32, %35                     ; 2 uses
  %36 = extractelement <2 x float> %29, i64 0
  %37 = fadd float %36, 0.000000e+00
  %38 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %39 = insertelement <2 x float> %38, float %32, i64 1
  %i.az = fadd <2 x float> %39, zeroinitializer
  %40 = extractelement <2 x float> %i.ax, i64 0
  %41 = fsub float 0.000000e+00, %40
  %42 = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %43 = insertelement <2 x float> %42, float %i.ay, i64 1
  %44 = fsub <2 x float> zeroinitializer, %43
  %45 = extractelement <2 x float> %33, i64 0
  %46 = fadd float %45, 0.000000e+00
  %47 = extractelement <2 x float> %33, i64 1
  %i.ba = fadd float %47, 0.000000e+00
  %48 = fadd float %35, 0.000000e+00
  %i.bb = load <2 x float>, ptr %i.p, align 4, !tbaa !169
  %i.bc = fadd <2 x float> %i.bb, %29
  %49 = fadd float %10, %32
  %i.bd = fsub <2 x float> %i.bc, %i.ax
  %50 = fsub float %49, %i.ay
  %i.be = fadd <2 x float> %33, %i.bd
  %i.bf = fadd float %35, %50
  store <2 x float> %i.be, ptr %i.p, align 4
  store float %i.bf, ptr %9, align 4, !tbaa !185
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.bg, %.sroa.0251.0.extract.trunc
  %i.bh = load i32, ptr %i.b, align 4
  %i.bi = icmp sgt i32 %i.bh, %.sroa.0251.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.bi, i1 false
  br i1 %or.cond.i24.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bj = load i64, ptr %6, align 8
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds [12 x i8], ptr %i.bk, i64 %i.h
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.d:                                             ; preds = %bb.b
  %i.bm = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.not.i.i.i, label %.preheader373, label %bb.f

.preheader373:                                    ; preds = %bb.d, %bb.e
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.f, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit339.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader373
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !160
  %i.bp = icmp eq i32 %i.bo, %.sroa.0251.0.extract.trunc
  br i1 %i.bp, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader373, !llvm.loop !5

bb.f:                                             ; preds = %bb.d
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.br = urem i64 %i.h, %i.bq                    ; 5 uses
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i, label %.loopexit339.thread, label %bb.g

.loopexit339.thread:                              ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0269)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0269, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !42 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !160
  %i.by = icmp eq i32 %i.bx, %.sroa.0251.0.extract.trunc
  br i1 %i.by, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.bz = icmp eq i32 %i.cc, %.sroa.0251.0.extract.trunc
  br i1 %i.bz, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.ca, %bb.h ], [ %i.bv, %bb.g ]
  %i.ca = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit339, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !160 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = urem i64 %i.cd, %i.bq
  %.not19.i.i.i.i.i = icmp eq i64 %i.ce, %i.br
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %.loopexit339, !llvm.loop !6

.loopexit339.loopexit:                            ; preds = %.preheader373
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre393 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre398 = urem i64 %i.h, %.pre                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre393, i64 %.pre398
  %.pre403 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit339

.loopexit339:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit339.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.cf = phi ptr [ %i.bu, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre403, %.loopexit339.loopexit ], [ %i.bu, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.br, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre398, %.loopexit339.loopexit ], [ %i.br, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.cg = phi i64 [ %i.bq, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit339.loopexit ], [ %i.bq, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0269)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0269, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %.loopexit339
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !42 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !160
  %i.ck = icmp eq i32 %i.cj, %.sroa.0251.0.extract.trunc
  br i1 %i.ck, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.cl = icmp eq i32 %i.co, %.sroa.0251.0.extract.trunc
  br i1 %i.cl, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %.020.i.i.i.i = phi ptr [ %i.cm, %bb.k ], [ %i.ch, %bb.j ]
  %i.cm = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !160 ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = urem i64 %i.cp, %i.cg
  %.not19.i.i.i.i = icmp eq i64 %i.cq, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.k, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.l
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit339.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit339
  %.pre-phi435 = phi i64 [ %i.br, %.loopexit339.thread ], [ %.pre-phi, %.loopexit339 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.cr = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.cr, align 8, !tbaa !42
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %.sroa.0251.0.extract.trunc, ptr %i.cs, align 8, !tbaa !239
  %i.ct = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi435, i64 noundef %i.h, ptr noundef nonnull %i.cr, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i145, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i134, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i107, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i96, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i69, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa464.sink = phi ptr [ %i.ie, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i145 ], [ %i.hl, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i134 ], [ %i.fu, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i107 ], [ %i.fb, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i96 ], [ %i.dk, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i69 ], [ %i.cr, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.ih, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i145 ], [ %i.ho, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i134 ], [ %i.fx, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i107 ], [ %i.fe, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i96 ], [ %i.dn, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i69 ], [ %i.cu, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa464.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.k, %bb.j, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.ct, %.loopexit.i.i ], [ %i.ch, %bb.j ], [ %i.cm, %bb.k ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0269, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0269)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.h, %bb.e, %bb.g, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.cv = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.cw = urem i64 %i.h, %i.cv                    ; 3 uses
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i62 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i62, label %.loopexit.i.i68, label %bb.m

bb.m:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !42 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !160
  %i.dd = icmp eq i32 %i.dc, %.sroa.0251.0.extract.trunc
  br i1 %i.dd, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit72, label %.lr.ph.i.i.i.i63

bb.n:                                             ; preds = %bb.o
  %i.de = icmp eq i32 %i.dh, %.sroa.0251.0.extract.trunc
  br i1 %i.de, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit72, label %.lr.ph.i.i.i.i63, !llvm.loop !6

.lr.ph.i.i.i.i63:                                 ; preds = %bb.m, %bb.n
  %.020.i.i.i.i64 = phi ptr [ %i.df, %bb.n ], [ %i.da, %bb.m ]
  %i.df = load ptr, ptr %.020.i.i.i.i64, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i65 = icmp eq ptr %i.df, null
  br i1 %.not18.i.i.i.i65, label %.loopexit.i.i68, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i63
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !160 ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = urem i64 %i.di, %i.cv
  %.not19.i.i.i.i66 = icmp eq i64 %i.dj, %i.cw
  br i1 %.not19.i.i.i.i66, label %bb.n, label %..loopexit_crit_edge21.i.i.i.i67, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i67:                 ; preds = %bb.o
  br label %.loopexit.i.i68, !llvm.loop !6

.loopexit.i.i68:                                  ; preds = %.lr.ph.i.i.i.i63, %..loopexit_crit_edge21.i.i.i.i67, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.dk = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.dk, align 8, !tbaa !42
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 %.sroa.0251.0.extract.trunc, ptr %i.dl, align 8, !tbaa !239
  %i.dm = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.cw, i64 noundef %i.h, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit72 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i69

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i69: ; preds = %.loopexit.i.i68
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit72: ; preds = %bb.n, %bb.m, %.loopexit.i.i68
  %.pn.i.i70 = phi ptr [ %i.dm, %.loopexit.i.i68 ], [ %i.da, %bb.m ], [ %i.df, %bb.n ]
  %.1.i.i71 = getelementptr inbounds nuw i8, ptr %.pn.i.i70, i64 12
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i: ; preds = %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit72, %bb.c
  %.0.i25.i = phi ptr [ %i.bl, %bb.c ], [ %.1.i.i71, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit72 ] ; 4 uses
  %51 = load float, ptr %.0.i25.i, align 4, !tbaa !169
  %52 = fadd float %37, %51
  %53 = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 4
  %54 = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 8
  %i.do = load <2 x float>, ptr %53, align 4, !tbaa !169
  %i.dp = fadd <2 x float> %i.az, %i.do           ; 2 uses
  %.sroa.0.0.vec.insert.i.i73 = insertelement <2 x float> poison, float %52, i64 0
  %55 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i73, <2 x float> %i.dp, <2 x i32> <i32 0, i32 2>
  store <2 x float> %55, ptr %.0.i25.i, align 4
  %56 = extractelement <2 x float> %i.dp, i64 1
  store float %56, ptr %54, align 4, !tbaa !185
  %i.dq = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i19.i = icmp sle i32 %i.dq, %.sroa.0251.4.extract.trunc
  %i.dr = load i32, ptr %i.b, align 4
  %i.ds = icmp sgt i32 %i.dr, %.sroa.0251.4.extract.trunc
  %or.cond.i20.i = select i1 %.not.i19.i, i1 %i.ds, i1 false
  br i1 %or.cond.i20.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i
  %i.dt = load i64, ptr %6, align 8
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = getelementptr inbounds [12 x i8], ptr %i.du, i64 %i.j
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit22.i

bb.q:                                             ; preds = %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i
  %i.dw = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i75 = icmp eq i64 %i.dw, 0
  br i1 %.not.not.i.i.i75, label %.preheader370, label %bb.s

.preheader370:                                    ; preds = %bb.q, %bb.r
  %.sroa.06.0.in.i.i.i85 = phi ptr [ %.sroa.06.0.i.i.i86, %bb.r ], [ %i.f, %bb.q ]
  %.sroa.06.0.i.i.i86 = load ptr, ptr %.sroa.06.0.in.i.i.i85, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %.sroa.06.0.i.i.i86, null
  br i1 %.not.i.i.i87, label %.loopexit336.loopexit, label %bb.r

bb.r:                                             ; preds = %.preheader370
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i86, i64 8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !160
  %i.dz = icmp eq i32 %i.dy, %.sroa.0251.4.extract.trunc
  br i1 %i.dz, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit88, label %.preheader370, !llvm.loop !5

bb.s:                                             ; preds = %bb.q
  %i.ea = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.eb = urem i64 %i.j, %i.ea                    ; 5 uses
  %i.ec = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i76, label %.loopexit336.thread, label %bb.t

.loopexit336.thread:                              ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0262)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0262, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i95

bb.t:                                             ; preds = %bb.s
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !42 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !160
  %i.ei = icmp eq i32 %i.eh, %.sroa.0251.4.extract.trunc
  br i1 %i.ei, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit88, label %.lr.ph.i.i.i.i.i77

bb.u:                                             ; preds = %bb.v
  %i.ej = icmp eq i32 %i.em, %.sroa.0251.4.extract.trunc
  br i1 %i.ej, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit88, label %.lr.ph.i.i.i.i.i77, !llvm.loop !6

.lr.ph.i.i.i.i.i77:                               ; preds = %bb.t, %bb.u
  %.020.i.i.i.i.i78 = phi ptr [ %i.ek, %bb.u ], [ %i.ef, %bb.t ]
  %i.ek = load ptr, ptr %.020.i.i.i.i.i78, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i79 = icmp eq ptr %i.ek, null
  br i1 %.not18.i.i.i.i.i79, label %.loopexit336, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i77
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i32, ptr %i.el, align 4, !tbaa !160 ; 2 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = urem i64 %i.en, %i.ea
  %.not19.i.i.i.i.i80 = icmp eq i64 %i.eo, %i.eb
  br i1 %.not19.i.i.i.i.i80, label %bb.u, label %..loopexit_crit_edge21.i.i.i.i.i81, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i81:               ; preds = %bb.v
  br label %.loopexit336, !llvm.loop !6

.loopexit336.loopexit:                            ; preds = %.preheader370
  %.pre394 = load i64, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %.pre395 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre399 = urem i64 %i.j, %.pre394              ; 2 uses
  %.phi.trans.insert404 = getelementptr inbounds nuw [8 x i8], ptr %.pre395, i64 %.pre399
  %.pre405 = load ptr, ptr %.phi.trans.insert404, align 8, !tbaa !172
  br label %.loopexit336

.loopexit336:                                     ; preds = %.lr.ph.i.i.i.i.i77, %.loopexit336.loopexit, %..loopexit_crit_edge21.i.i.i.i.i81
  %i.ep = phi ptr [ %i.ee, %..loopexit_crit_edge21.i.i.i.i.i81 ], [ %.pre405, %.loopexit336.loopexit ], [ %i.ee, %.lr.ph.i.i.i.i.i77 ] ; 2 uses
  %.pre-phi400 = phi i64 [ %i.eb, %..loopexit_crit_edge21.i.i.i.i.i81 ], [ %.pre399, %.loopexit336.loopexit ], [ %i.eb, %.lr.ph.i.i.i.i.i77 ] ; 4 uses
  %i.eq = phi i64 [ %i.ea, %..loopexit_crit_edge21.i.i.i.i.i81 ], [ %.pre394, %.loopexit336.loopexit ], [ %i.ea, %.lr.ph.i.i.i.i.i77 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0262)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0262, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i89 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i89, label %.loopexit.i.i95, label %bb.w

bb.w:                                             ; preds = %.loopexit336
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !42 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i32, ptr %i.es, align 4, !tbaa !160
  %i.eu = icmp eq i32 %i.et, %.sroa.0251.4.extract.trunc
  br i1 %i.eu, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit99, label %.lr.ph.i.i.i.i90

bb.x:                                             ; preds = %bb.y
  %i.ev = icmp eq i32 %i.ey, %.sroa.0251.4.extract.trunc
  br i1 %i.ev, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit99, label %.lr.ph.i.i.i.i90, !llvm.loop !6

.lr.ph.i.i.i.i90:                                 ; preds = %bb.w, %bb.x
  %.020.i.i.i.i91 = phi ptr [ %i.ew, %bb.x ], [ %i.er, %bb.w ]
  %i.ew = load ptr, ptr %.020.i.i.i.i91, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i92 = icmp eq ptr %i.ew, null
  br i1 %.not18.i.i.i.i92, label %.loopexit.i.i95, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i90
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !160 ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = urem i64 %i.ez, %i.eq
  %.not19.i.i.i.i93 = icmp eq i64 %i.fa, %.pre-phi400
  br i1 %.not19.i.i.i.i93, label %bb.x, label %..loopexit_crit_edge21.i.i.i.i94, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i94:                 ; preds = %bb.y
  br label %.loopexit.i.i95, !llvm.loop !6

.loopexit.i.i95:                                  ; preds = %.lr.ph.i.i.i.i90, %.loopexit336.thread, %..loopexit_crit_edge21.i.i.i.i94, %.loopexit336
  %.pre-phi400438 = phi i64 [ %i.eb, %.loopexit336.thread ], [ %.pre-phi400, %.loopexit336 ], [ %.pre-phi400, %..loopexit_crit_edge21.i.i.i.i94 ], [ %.pre-phi400, %.lr.ph.i.i.i.i90 ]
  %i.fb = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.fb, align 8, !tbaa !42
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i32 %.sroa.0251.4.extract.trunc, ptr %i.fc, align 8, !tbaa !239
  %i.fd = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi400438, i64 noundef %i.j, ptr noundef nonnull %i.fb, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit99 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i96

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i96: ; preds = %.loopexit.i.i95
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit99: ; preds = %bb.x, %bb.w, %.loopexit.i.i95
  %.pn.i.i97 = phi ptr [ %i.fd, %.loopexit.i.i95 ], [ %i.er, %bb.w ], [ %i.ew, %bb.x ]
  %.1.i.i98 = getelementptr inbounds nuw i8, ptr %.pn.i.i97, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i98, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0262, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0262)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit88

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit88: ; preds = %bb.u, %bb.r, %bb.t, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit99
  %i.ff = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.fg = urem i64 %i.j, %i.ff                    ; 3 uses
  %i.fh = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fg
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i100, label %.loopexit.i.i106, label %bb.z

bb.z:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit88
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !42 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !160
  %i.fn = icmp eq i32 %i.fm, %.sroa.0251.4.extract.trunc
  br i1 %i.fn, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit110, label %.lr.ph.i.i.i.i101

bb.aa:                                            ; preds = %bb.ab
  %i.fo = icmp eq i32 %i.fr, %.sroa.0251.4.extract.trunc
  br i1 %i.fo, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit110, label %.lr.ph.i.i.i.i101, !llvm.loop !6

.lr.ph.i.i.i.i101:                                ; preds = %bb.z, %bb.aa
  %.020.i.i.i.i102 = phi ptr [ %i.fp, %bb.aa ], [ %i.fk, %bb.z ]
  %i.fp = load ptr, ptr %.020.i.i.i.i102, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i103 = icmp eq ptr %i.fp, null
  br i1 %.not18.i.i.i.i103, label %.loopexit.i.i106, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i101
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !160 ; 2 uses
  %i.fs = sext i32 %i.fr to i64
  %i.ft = urem i64 %i.fs, %i.ff
  %.not19.i.i.i.i104 = icmp eq i64 %i.ft, %i.fg
  br i1 %.not19.i.i.i.i104, label %bb.aa, label %..loopexit_crit_edge21.i.i.i.i105, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i105:                ; preds = %bb.ab
  br label %.loopexit.i.i106, !llvm.loop !6

.loopexit.i.i106:                                 ; preds = %.lr.ph.i.i.i.i101, %..loopexit_crit_edge21.i.i.i.i105, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit88
  %i.fu = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.fu, align 8, !tbaa !42
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i32 %.sroa.0251.4.extract.trunc, ptr %i.fv, align 8, !tbaa !239
  %i.fw = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.fg, i64 noundef %i.j, ptr noundef nonnull %i.fu, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit110 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i107

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i107: ; preds = %.loopexit.i.i106
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit110: ; preds = %bb.aa, %bb.z, %.loopexit.i.i106
  %.pn.i.i108 = phi ptr [ %i.fw, %.loopexit.i.i106 ], [ %i.fk, %bb.z ], [ %i.fp, %bb.aa ]
  %.1.i.i109 = getelementptr inbounds nuw i8, ptr %.pn.i.i108, i64 12
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit22.i

_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit22.i: ; preds = %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit110, %bb.p
  %.0.i21.i = phi ptr [ %i.dv, %bb.p ], [ %.1.i.i109, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit110 ] ; 4 uses
  %57 = load float, ptr %.0.i21.i, align 4, !tbaa !169
  %58 = fadd float %41, %57
  %59 = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 4
  %60 = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 8
  %i.fy = load <2 x float>, ptr %59, align 4, !tbaa !169
  %i.fz = fadd <2 x float> %44, %i.fy             ; 2 uses
  %.sroa.0.0.vec.insert.i.i111 = insertelement <2 x float> poison, float %58, i64 0
  %61 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i111, <2 x float> %i.fz, <2 x i32> <i32 0, i32 2>
  store <2 x float> %61, ptr %.0.i21.i, align 4
  %62 = extractelement <2 x float> %i.fz, i64 1
  store float %62, ptr %60, align 4, !tbaa !185
  %i.ga = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i.i = icmp sle i32 %i.ga, %.sroa.5252.8.extract.trunc
  %i.gb = load i32, ptr %i.b, align 4
  %i.gc = icmp sgt i32 %i.gb, %.sroa.5252.8.extract.trunc
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.gc, i1 false
  br i1 %or.cond.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit22.i
  %i.gd = load i64, ptr %6, align 8
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = getelementptr inbounds [12 x i8], ptr %i.ge, i64 %i.l
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

bb.ad:                                            ; preds = %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit22.i
  %i.gg = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i113 = icmp eq i64 %i.gg, 0
  br i1 %.not.not.i.i.i113, label %.preheader, label %bb.af

.preheader:                                       ; preds = %bb.ad, %bb.ae
  %.sroa.06.0.in.i.i.i123 = phi ptr [ %.sroa.06.0.i.i.i124, %bb.ae ], [ %i.f, %bb.ad ]
  %.sroa.06.0.i.i.i124 = load ptr, ptr %.sroa.06.0.in.i.i.i123, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i125 = icmp eq ptr %.sroa.06.0.i.i.i124, null
  br i1 %.not.i.i.i125, label %.loopexit.loopexit, label %bb.ae

bb.ae:                                            ; preds = %.preheader
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i124, i64 8
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !160
  %i.gj = icmp eq i32 %i.gi, %.sroa.5252.8.extract.trunc
  br i1 %i.gj, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit126, label %.preheader, !llvm.loop !5

bb.af:                                            ; preds = %bb.ad
  %i.gk = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.gl = urem i64 %i.l, %i.gk                    ; 5 uses
  %i.gm = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gl
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i114 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i114, label %.loopexit.thread, label %bb.ag

.loopexit.thread:                                 ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0256)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0256, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i133

bb.ag:                                            ; preds = %bb.af
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !42 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !160
  %i.gs = icmp eq i32 %i.gr, %.sroa.5252.8.extract.trunc
  br i1 %i.gs, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit126, label %.lr.ph.i.i.i.i.i115

bb.ah:                                            ; preds = %bb.ai
  %i.gt = icmp eq i32 %i.gw, %.sroa.5252.8.extract.trunc
  br i1 %i.gt, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit126, label %.lr.ph.i.i.i.i.i115, !llvm.loop !6

.lr.ph.i.i.i.i.i115:                              ; preds = %bb.ag, %bb.ah
  %.020.i.i.i.i.i116 = phi ptr [ %i.gu, %bb.ah ], [ %i.gp, %bb.ag ]
  %i.gu = load ptr, ptr %.020.i.i.i.i.i116, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i117 = icmp eq ptr %i.gu, null
  br i1 %.not18.i.i.i.i.i117, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i115
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !160 ; 2 uses
  %i.gx = sext i32 %i.gw to i64
  %i.gy = urem i64 %i.gx, %i.gk
  %.not19.i.i.i.i.i118 = icmp eq i64 %i.gy, %i.gl
  br i1 %.not19.i.i.i.i.i118, label %bb.ah, label %..loopexit_crit_edge21.i.i.i.i.i119, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i119:              ; preds = %bb.ai
  br label %.loopexit, !llvm.loop !6

.loopexit.loopexit:                               ; preds = %.preheader
  %.pre396 = load i64, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %.pre397 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre401 = urem i64 %i.l, %.pre396              ; 2 uses
  %.phi.trans.insert406 = getelementptr inbounds nuw [8 x i8], ptr %.pre397, i64 %.pre401
  %.pre407 = load ptr, ptr %.phi.trans.insert406, align 8, !tbaa !172
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i115, %.loopexit.loopexit, %..loopexit_crit_edge21.i.i.i.i.i119
  %i.gz = phi ptr [ %i.go, %..loopexit_crit_edge21.i.i.i.i.i119 ], [ %.pre407, %.loopexit.loopexit ], [ %i.go, %.lr.ph.i.i.i.i.i115 ] ; 2 uses
  %.pre-phi402 = phi i64 [ %i.gl, %..loopexit_crit_edge21.i.i.i.i.i119 ], [ %.pre401, %.loopexit.loopexit ], [ %i.gl, %.lr.ph.i.i.i.i.i115 ] ; 4 uses
  %i.ha = phi i64 [ %i.gk, %..loopexit_crit_edge21.i.i.i.i.i119 ], [ %.pre396, %.loopexit.loopexit ], [ %i.gk, %.lr.ph.i.i.i.i.i115 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0256)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0256, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i127 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i127, label %.loopexit.i.i133, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.hb = load ptr, ptr %i.gz, align 8, !tbaa !42 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !160
  %i.he = icmp eq i32 %i.hd, %.sroa.5252.8.extract.trunc
  br i1 %i.he, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit137, label %.lr.ph.i.i.i.i128

bb.ak:                                            ; preds = %bb.al
  %i.hf = icmp eq i32 %i.hi, %.sroa.5252.8.extract.trunc
  br i1 %i.hf, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit137, label %.lr.ph.i.i.i.i128, !llvm.loop !6

.lr.ph.i.i.i.i128:                                ; preds = %bb.aj, %bb.ak
  %.020.i.i.i.i129 = phi ptr [ %i.hg, %bb.ak ], [ %i.hb, %bb.aj ]
  %i.hg = load ptr, ptr %.020.i.i.i.i129, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i130 = icmp eq ptr %i.hg, null
  br i1 %.not18.i.i.i.i130, label %.loopexit.i.i133, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i128
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !160 ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = urem i64 %i.hj, %i.ha
  %.not19.i.i.i.i131 = icmp eq i64 %i.hk, %.pre-phi402
  br i1 %.not19.i.i.i.i131, label %bb.ak, label %..loopexit_crit_edge21.i.i.i.i132, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i132:                ; preds = %bb.al
  br label %.loopexit.i.i133, !llvm.loop !6

.loopexit.i.i133:                                 ; preds = %.lr.ph.i.i.i.i128, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i132, %.loopexit
  %.pre-phi402441 = phi i64 [ %i.gl, %.loopexit.thread ], [ %.pre-phi402, %.loopexit ], [ %.pre-phi402, %..loopexit_crit_edge21.i.i.i.i132 ], [ %.pre-phi402, %.lr.ph.i.i.i.i128 ]
  %i.hl = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.hl, align 8, !tbaa !42
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i32 %.sroa.5252.8.extract.trunc, ptr %i.hm, align 8, !tbaa !239
  %i.hn = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi402441, i64 noundef %i.l, ptr noundef nonnull %i.hl, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit137 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i134

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i134: ; preds = %.loopexit.i.i133
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit137: ; preds = %bb.ak, %bb.aj, %.loopexit.i.i133
  %.pn.i.i135 = phi ptr [ %i.hn, %.loopexit.i.i133 ], [ %i.hb, %bb.aj ], [ %i.hg, %bb.ak ]
  %.1.i.i136 = getelementptr inbounds nuw i8, ptr %.pn.i.i135, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i136, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0256, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0256)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit126

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit126: ; preds = %bb.ah, %bb.ae, %bb.ag, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit137
  %i.hp = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.hq = urem i64 %i.l, %i.hp                    ; 3 uses
  %i.hr = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hq
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i138 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i138, label %.loopexit.i.i144, label %bb.am

bb.am:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit126
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !42 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !160
  %i.hx = icmp eq i32 %i.hw, %.sroa.5252.8.extract.trunc
  br i1 %i.hx, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit148, label %.lr.ph.i.i.i.i139

bb.an:                                            ; preds = %bb.ao
  %i.hy = icmp eq i32 %i.ib, %.sroa.5252.8.extract.trunc
  br i1 %i.hy, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit148, label %.lr.ph.i.i.i.i139, !llvm.loop !6

.lr.ph.i.i.i.i139:                                ; preds = %bb.am, %bb.an
  %.020.i.i.i.i140 = phi ptr [ %i.hz, %bb.an ], [ %i.hu, %bb.am ]
  %i.hz = load ptr, ptr %.020.i.i.i.i140, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i141 = icmp eq ptr %i.hz, null
  br i1 %.not18.i.i.i.i141, label %.loopexit.i.i144, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i139
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !160 ; 2 uses
  %i.ic = sext i32 %i.ib to i64
  %i.id = urem i64 %i.ic, %i.hp
  %.not19.i.i.i.i142 = icmp eq i64 %i.id, %i.hq
  br i1 %.not19.i.i.i.i142, label %bb.an, label %..loopexit_crit_edge21.i.i.i.i143, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i143:                ; preds = %bb.ao
  br label %.loopexit.i.i144, !llvm.loop !6

.loopexit.i.i144:                                 ; preds = %.lr.ph.i.i.i.i139, %..loopexit_crit_edge21.i.i.i.i143, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit126
  %i.ie = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ie, align 8, !tbaa !42
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store i32 %.sroa.5252.8.extract.trunc, ptr %i.if, align 8, !tbaa !239
  %i.ig = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.hq, i64 noundef %i.l, ptr noundef nonnull %i.ie, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit148 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i145

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i145: ; preds = %.loopexit.i.i144
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit148: ; preds = %bb.an, %bb.am, %.loopexit.i.i144
  %.pn.i.i146 = phi ptr [ %i.ig, %.loopexit.i.i144 ], [ %i.hu, %bb.am ], [ %i.hz, %bb.an ]
  %.1.i.i147 = getelementptr inbounds nuw i8, ptr %.pn.i.i146, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ac, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit148
  %.0.i.i = phi ptr [ %i.gf, %bb.ac ], [ %.1.i.i147, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit148 ] ; 4 uses
  %63 = load float, ptr %.0.i.i, align 4, !tbaa !169
  %64 = fadd float %46, %63
  %65 = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %66 = load float, ptr %65, align 4, !tbaa !169
  %67 = fadd float %i.ba, %66
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !169
  %i.ik = fadd float %48, %i.ij
  %.sroa.0.0.vec.insert.i.i149 = insertelement <2 x float> poison, float %64, i64 0
  %.sroa.0.4.vec.insert.i.i150 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i149, float %67, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i150, ptr %.0.i.i, align 4
  store float %i.ik, ptr %i.ii, align 4, !tbaa !185
  %.sroa.0167.0.vec.extract = extractelement <2 x float> %.sroa.0167.0366, i64 0
  %i.il = fadd float %.sroa.0167.0.vec.extract, %i.ap
  %.sroa.0167.0.vec.insert = insertelement <2 x float> %.sroa.0167.0366, float %i.il, i64 0 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0159.0367, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.im, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_23TwoParameterInteractionINS_20LinearAngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES9_NS_5NoPbcEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0252 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0245 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0239 = alloca [3 x float], align 4       ; 6 uses
  %.not350 = icmp eq ptr %0, %1
  br i1 %.not350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0157.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0157.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0157.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0149.0352 = phi ptr [ %0, %.lr.ph ], [ %i.jk, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0157.0351 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0157.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_S4_NS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0149.0352, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0149.0352, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !216    ; 2 uses
  %.sroa.0234.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0234.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0234.4.extract.trunc = trunc nuw i64 %.sroa.0234.4.extract.shift to i32 ; 11 uses
  %.sroa.5235.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.h = ashr exact i64 %sext, 32                 ; 7 uses
  %i.i = getelementptr inbounds [12 x i8], ptr %4, i64 %i.h ; 2 uses
  %.sroa.7226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.7226.0.copyload = load float, ptr %.sroa.7226.0..sroa_idx, align 4, !tbaa !185
  %i.j = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.k = getelementptr inbounds [12 x i8], ptr %4, i64 %i.j ; 2 uses
  %.sroa.7220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.7220.0.copyload = load float, ptr %.sroa.7220.0..sroa_idx, align 4, !tbaa !185 ; 2 uses
  %sext317 = shl i64 %.sroa.2.0.copyload, 32
  %i.l = ashr exact i64 %sext317, 32              ; 7 uses
  %i.m = getelementptr inbounds [12 x i8], ptr %4, i64 %i.l ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !185
  %i.n = ashr i64 %.sroa.2.0.copyload, 32
  %i.o = getelementptr inbounds [8 x i8], ptr %2, i64 %i.n ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.p = fsub float %.sroa.7226.0.copyload, %.sroa.7220.0.copyload
  %i.q = fsub float %.sroa.7.0.copyload, %.sroa.7220.0.copyload
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 2 uses
  %i.s = load <2 x float>, ptr %i.i, align 4
  %i.t = load <2 x float>, ptr %i.k, align 4      ; 2 uses
  %i.u = load <2 x float>, ptr %i.m, align 4
  %i.v = load float, ptr %.sroa_idx, align 4      ; 5 uses
  %i.w = load float, ptr %i.o, align 4            ; 3 uses
  %i.x = fsub <2 x float> %i.s, %i.t
  %i.y = fsub <2 x float> %i.u, %i.t
  %i.z = fsub float 1.000000e+00, %i.v
  %i.aa = fadd float %i.v, -1.000000e+00          ; 2 uses
  %i.ab = fmul float %i.w, %i.z                   ; 2 uses
  %i.ac = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.y, %i.ad
  %i.af = fmul float %i.q, %i.aa
  %i.ag = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.x, %i.ah
  %i.aj = fmul float %i.p, %i.v
  %i.ak = fsub <2 x float> %i.ae, %i.ai           ; 5 uses
  %i.al = fsub float %i.af, %i.aj                 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ak, %i.ak
  %i.am = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.an = extractelement <2 x float> %i.ak, i64 0 ; 2 uses
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.am)
  %i.ap = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.ao)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ap) ; 2 uses
  %i.aq = fmul float %i.w, %sqrt.i.i
  %i.ar = fpext float %i.aq to double
  %i.as = fmul double %i.ar, 5.000000e-01
  %i.at = fpext float %sqrt.i.i to double
  %i.au = fmul double %i.as, %i.at
  %i.av = fptrunc double %i.au to float
  %i.aw = fmul float %i.w, %i.v                   ; 2 uses
  %i.ax = fmul float %i.aw, %i.al                 ; 3 uses
  %i.ay = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %i.az, %i.ak           ; 3 uses
  %i.bb = fmul float %i.ab, %i.al                 ; 3 uses
  %i.bc = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bd, %i.ak           ; 3 uses
  %i.bf = fadd <2 x float> %i.be, %i.ba           ; 2 uses
  %i.bg = fadd float %i.ax, %i.bb                 ; 2 uses
  %i.bh = fadd <2 x float> %i.be, zeroinitializer
  %i.bi = fadd float %i.ax, 0.000000e+00
  %i.bj = fsub <2 x float> zeroinitializer, %i.bf
  %i.bk = fsub float 0.000000e+00, %i.bg
  %i.bl = fadd <2 x float> %i.ba, zeroinitializer
  %i.bm = fadd float %i.bb, 0.000000e+00
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !169
  %i.bp = fadd float %i.bo, %i.ax
  %i.bq = fsub float %i.bp, %i.bg
  %i.br = load <2 x float>, ptr %i.r, align 4, !tbaa !169
  %i.bs = fadd <2 x float> %i.br, %i.be
  %i.bt = fsub <2 x float> %i.bs, %i.bf
  %i.bu = fadd <2 x float> %i.ba, %i.bt
  %i.bv = fadd float %i.bb, %i.bq
  store <2 x float> %i.bu, ptr %i.r, align 4
  store float %i.bv, ptr %i.bn, align 4, !tbaa !185
  %i.bw = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.bw, %.sroa.0234.0.extract.trunc
  %i.bx = load i32, ptr %i.b, align 4
  %i.by = icmp sgt i32 %i.bx, %.sroa.0234.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.by, i1 false
  br i1 %or.cond.i24.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bz = load i64, ptr %6, align 8
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds [12 x i8], ptr %i.ca, i64 %i.h
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.d:                                             ; preds = %bb.b
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.not.i.i.i, label %.preheader358, label %bb.f

.preheader358:                                    ; preds = %bb.d, %bb.e
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.f, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit324.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader358
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !160
  %i.cf = icmp eq i32 %i.ce, %.sroa.0234.0.extract.trunc
  br i1 %i.cf, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader358, !llvm.loop !5

bb.f:                                             ; preds = %bb.d
  %i.cg = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.ch = urem i64 %i.h, %i.cg                    ; 5 uses
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i, label %.loopexit324.thread, label %bb.g

.loopexit324.thread:                              ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0252)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0252, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !42 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !160
  %i.co = icmp eq i32 %i.cn, %.sroa.0234.0.extract.trunc
  br i1 %i.co, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.cp = icmp eq i32 %i.cs, %.sroa.0234.0.extract.trunc
  br i1 %i.cp, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.cq, %bb.h ], [ %i.cl, %bb.g ]
  %i.cq = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit324, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !160 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = urem i64 %i.ct, %i.cg
  %.not19.i.i.i.i.i = icmp eq i64 %i.cu, %i.ch
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %.loopexit324, !llvm.loop !6

.loopexit324.loopexit:                            ; preds = %.preheader358
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre378 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre383 = urem i64 %i.h, %.pre                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_13CrossBondBondENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_5NoPbcEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_:bb.a
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !160
  %i.gw = icmp eq i32 %i.gv, %.sroa.5222.8.extract.trunc
  br i1 %i.gw, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit103, label %.lr.ph.i.i.i.i.i92

bb.ah:                                            ; preds = %bb.ai
  %i.gx = icmp eq i32 %i.ha, %.sroa.5222.8.extract.trunc
  br i1 %i.gx, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit103, label %.lr.ph.i.i.i.i.i92, !llvm.loop !6

.lr.ph.i.i.i.i.i92:                               ; preds = %bb.ag, %bb.ah
  %.020.i.i.i.i.i93 = phi ptr [ %i.gy, %bb.ah ], [ %i.gt, %bb.ag ]
  %i.gy = load ptr, ptr %.020.i.i.i.i.i93, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i94 = icmp eq ptr %i.gy, null
  br i1 %.not18.i.i.i.i.i94, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i92
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !160 ; 2 uses
  %i.hb = sext i32 %i.ha to i64
  %i.hc = urem i64 %i.hb, %i.go
  %.not19.i.i.i.i.i95 = icmp eq i64 %i.hc, %i.gp
  br i1 %.not19.i.i.i.i.i95, label %bb.ah, label %..loopexit_crit_edge21.i.i.i.i.i96, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i96:               ; preds = %bb.ai
  br label %.loopexit, !llvm.loop !6

.loopexit.loopexit:                               ; preds = %.preheader
  %.pre341 = load i64, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %.pre342 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre346 = urem i64 %i.k, %.pre341              ; 2 uses
  %.phi.trans.insert351 = getelementptr inbounds nuw [8 x i8], ptr %.pre342, i64 %.pre346
  %.pre352 = load ptr, ptr %.phi.trans.insert351, align 8, !tbaa !172
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i92, %.loopexit.loopexit, %..loopexit_crit_edge21.i.i.i.i.i96
  %i.hd = phi ptr [ %i.gs, %..loopexit_crit_edge21.i.i.i.i.i96 ], [ %.pre352, %.loopexit.loopexit ], [ %i.gs, %.lr.ph.i.i.i.i.i92 ] ; 2 uses
  %.pre-phi347 = phi i64 [ %i.gp, %..loopexit_crit_edge21.i.i.i.i.i96 ], [ %.pre346, %.loopexit.loopexit ], [ %i.gp, %.lr.ph.i.i.i.i.i92 ] ; 4 uses
  %i.he = phi i64 [ %i.go, %..loopexit_crit_edge21.i.i.i.i.i96 ], [ %.pre341, %.loopexit.loopexit ], [ %i.go, %.lr.ph.i.i.i.i.i92 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0226)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0226, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i104 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i104, label %.loopexit.i.i110, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !42 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !160
  %i.hi = icmp eq i32 %i.hh, %.sroa.5222.8.extract.trunc
  br i1 %i.hi, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit114, label %.lr.ph.i.i.i.i105

bb.ak:                                            ; preds = %bb.al
  %i.hj = icmp eq i32 %i.hm, %.sroa.5222.8.extract.trunc
  br i1 %i.hj, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit114, label %.lr.ph.i.i.i.i105, !llvm.loop !6

.lr.ph.i.i.i.i105:                                ; preds = %bb.aj, %bb.ak
  %.020.i.i.i.i106 = phi ptr [ %i.hk, %bb.ak ], [ %i.hf, %bb.aj ]
  %i.hk = load ptr, ptr %.020.i.i.i.i106, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i107 = icmp eq ptr %i.hk, null
  br i1 %.not18.i.i.i.i107, label %.loopexit.i.i110, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i105
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !160 ; 2 uses
  %i.hn = sext i32 %i.hm to i64
  %i.ho = urem i64 %i.hn, %i.he
  %.not19.i.i.i.i108 = icmp eq i64 %i.ho, %.pre-phi347
  br i1 %.not19.i.i.i.i108, label %bb.ak, label %..loopexit_crit_edge21.i.i.i.i109, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i109:                ; preds = %bb.al
  br label %.loopexit.i.i110, !llvm.loop !6

.loopexit.i.i110:                                 ; preds = %.lr.ph.i.i.i.i105, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i109, %.loopexit
  %.pre-phi347384 = phi i64 [ %i.gp, %.loopexit.thread ], [ %.pre-phi347, %.loopexit ], [ %.pre-phi347, %..loopexit_crit_edge21.i.i.i.i109 ], [ %.pre-phi347, %.lr.ph.i.i.i.i105 ]
  %i.hp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.hp, align 8, !tbaa !42
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i32 %.sroa.5222.8.extract.trunc, ptr %i.hq, align 8, !tbaa !239
  %i.hr = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi347384, i64 noundef %i.k, ptr noundef nonnull %i.hp, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit114 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i111

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i111: ; preds = %.loopexit.i.i110
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit114: ; preds = %bb.ak, %bb.aj, %.loopexit.i.i110
  %.pn.i.i112 = phi ptr [ %i.hr, %.loopexit.i.i110 ], [ %i.hf, %bb.aj ], [ %i.hk, %bb.ak ]
  %.1.i.i113 = getelementptr inbounds nuw i8, ptr %.pn.i.i112, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i113, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0226, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0226)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit103

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit103: ; preds = %bb.ah, %bb.ae, %bb.ag, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit114
  %i.ht = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.hu = urem i64 %i.k, %i.ht                    ; 3 uses
  %i.hv = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.hu
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i115 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i115, label %.loopexit.i.i121, label %bb.am

bb.am:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit103
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !42 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !160
  %i.ib = icmp eq i32 %i.ia, %.sroa.5222.8.extract.trunc
  br i1 %i.ib, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit125, label %.lr.ph.i.i.i.i116

bb.an:                                            ; preds = %bb.ao
  %i.ic = icmp eq i32 %i.if, %.sroa.5222.8.extract.trunc
  br i1 %i.ic, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit125, label %.lr.ph.i.i.i.i116, !llvm.loop !6

.lr.ph.i.i.i.i116:                                ; preds = %bb.am, %bb.an
  %.020.i.i.i.i117 = phi ptr [ %i.id, %bb.an ], [ %i.hy, %bb.am ]
  %i.id = load ptr, ptr %.020.i.i.i.i117, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i118 = icmp eq ptr %i.id, null
  br i1 %.not18.i.i.i.i118, label %.loopexit.i.i121, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i116
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !160 ; 2 uses
  %i.ig = sext i32 %i.if to i64
  %i.ih = urem i64 %i.ig, %i.ht
  %.not19.i.i.i.i119 = icmp eq i64 %i.ih, %i.hu
  br i1 %.not19.i.i.i.i119, label %bb.an, label %..loopexit_crit_edge21.i.i.i.i120, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i120:                ; preds = %bb.ao
  br label %.loopexit.i.i121, !llvm.loop !6

.loopexit.i.i121:                                 ; preds = %.lr.ph.i.i.i.i116, %..loopexit_crit_edge21.i.i.i.i120, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit103
  %i.ii = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ii, align 8, !tbaa !42
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store i32 %.sroa.5222.8.extract.trunc, ptr %i.ij, align 8, !tbaa !239
  %i.ik = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.hu, i64 noundef %i.k, ptr noundef nonnull %i.ii, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit125 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i122

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i122: ; preds = %.loopexit.i.i121
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit125: ; preds = %bb.an, %bb.am, %.loopexit.i.i121
  %.pn.i.i123 = phi ptr [ %i.ik, %.loopexit.i.i121 ], [ %i.hy, %bb.am ], [ %i.id, %bb.an ]
  %.1.i.i124 = getelementptr inbounds nuw i8, ptr %.pn.i.i123, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_13CrossBondBondES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEES6_NS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_13CrossBondBondES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEES6_NS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ac, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit125
  %.0.i.i = phi ptr [ %i.gj, %bb.ac ], [ %.1.i.i124, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit125 ] ; 3 uses
  %i.im = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.in = fadd <2 x float> %i.bb, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ip = load float, ptr %i.io, align 4, !tbaa !169
  %i.iq = extractelement <2 x float> %i.bc, i64 1
  %i.ir = fadd float %i.iq, %i.ip
  store <2 x float> %i.in, ptr %.0.i.i, align 4
  store float %i.ir, ptr %i.io, align 4, !tbaa !185
  %shift432 = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop433 = fadd <2 x float> %.sroa.0144.0311, %shift432
  %.sroa.0144.0.vec.insert = shufflevector <2 x float> %foldExtExtBinop433, <2 x float> %.sroa.0144.0311, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0136.0312, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.is, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_14CrossBondAngleENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_5NoPbcEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef.429") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0265 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0258 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0252 = alloca [3 x float], align 4       ; 6 uses
  %.not346 = icmp eq ptr %0, %1
  br i1 %.not346, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0163.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0163.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0163.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0155.0348 = phi ptr [ %0, %.lr.ph ], [ %i.ho, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0163.0347 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0163.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0155.0348, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0155.0348, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %.sroa.0247.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0247.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0247.4.extract.trunc = trunc nuw i64 %.sroa.0247.4.extract.shift to i32 ; 11 uses
  %.sroa.5248.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.g = ashr exact i64 %sext, 32                 ; 7 uses
  %i.h = getelementptr inbounds [12 x i8], ptr %4, i64 %i.g ; 3 uses
  %.sroa.5237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.7239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7239.0.copyload = load float, ptr %.sroa.7239.0..sroa_idx, align 4, !tbaa !185 ; 2 uses
  %i.i = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.j = getelementptr inbounds [12 x i8], ptr %4, i64 %i.i ; 3 uses
  %.sroa.5231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.7233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7233.0.copyload = load float, ptr %.sroa.7233.0..sroa_idx, align 4, !tbaa !185
  %sext313 = shl i64 %.sroa.2.0.copyload, 32
  %i.k = ashr exact i64 %sext313, 32              ; 7 uses
  %i.l = getelementptr inbounds [12 x i8], ptr %4, i64 %i.k ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !185 ; 2 uses
  %i.m = ashr i64 %.sroa.2.0.copyload, 32
  %i.n = getelementptr inbounds [16 x i8], ptr %2, i64 %i.m ; 4 uses
  %.sroa.0220.0.copyload = load float, ptr %i.n, align 4, !tbaa !169 ; 2 uses
  %.sroa.4221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.5222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.6223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.6223.0.copyload = load float, ptr %.sroa.6223.0..sroa_idx, align 4, !tbaa !169
  %9 = fsub float %.sroa.7239.0.copyload, %.sroa.7.0.copyload ; 3 uses
  %i.o = fneg float %.sroa.0220.0.copyload        ; 2 uses
  %.sroa.5237.0.copyload = load float, ptr %.sroa.5237.0..sroa_idx, align 4
  %i.p = load <2 x float>, ptr %i.h, align 4      ; 2 uses
  %.sroa.5231.0.copyload = load float, ptr %.sroa.5231.0..sroa_idx, align 4
  %i.q = load <2 x float>, ptr %i.j, align 4
  %10 = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %11 = load <2 x float>, ptr %i.l, align 4       ; 2 uses
  %.sroa.5222.0.copyload = load float, ptr %.sroa.5222.0..sroa_idx, align 4, !tbaa !169
  %.sroa.4221.0.copyload = load float, ptr %.sroa.4221.0..sroa_idx, align 4, !tbaa !169
  %12 = shufflevector <2 x float> %11, <2 x float> %i.p, <4 x i32> <i32 0, i32 2, i32 0, i32 1>
  %13 = fsub <4 x float> %12, %10                 ; 3 uses
  %14 = fsub float %.sroa.5237.0.copyload, %.sroa.5231.0.copyload ; 2 uses
  %15 = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %16 = insertelement <2 x float> %15, float %.sroa.7239.0.copyload, i64 1
  %17 = insertelement <2 x float> poison, float %.sroa.7233.0.copyload, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = fsub <2 x float> %16, %18                 ; 4 uses
  %i.r = fsub <2 x float> %i.p, %11               ; 3 uses
  %20 = extractelement <2 x float> %i.r, i64 1    ; 3 uses
  %21 = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.s = insertelement <2 x float> %21, float %14, i64 1 ; 2 uses
  %22 = fmul <2 x float> %i.s, %i.s
  %23 = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %23, <2 x float> %22)
  %25 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %19, <2 x float> %24) ; 2 uses
  %26 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %25) ; 2 uses
  %27 = fmul float %20, %20
  %28 = extractelement <2 x float> %i.r, i64 0    ; 2 uses
  %29 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %27)
  %30 = tail call noundef float @llvm.fmuladd.f32(float %9, float %9, float %29)
  %sqrt.i.i20 = tail call noundef float @llvm.sqrt.f32(float %30) ; 2 uses
  %31 = extractelement <2 x float> %26, i64 1
  %32 = fsub float %31, %.sroa.4221.0.copyload
  %i.t = extractelement <2 x float> %26, i64 0
  %33 = fsub float %i.t, %.sroa.5222.0.copyload
  %34 = fsub float %sqrt.i.i20, %.sroa.6223.0.copyload ; 2 uses
  %35 = fmul float %.sroa.0220.0.copyload, %34
  %36 = fadd float %32, %33                       ; 2 uses
  %37 = fmul float %36, %35
  %i.u = fmul float %34, %i.o
  %38 = insertelement <2 x float> poison, float %i.u, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <4 x i32> zeroinitializer
  %40 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %25)
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %42 = fdiv <4 x float> %39, %41                 ; 3 uses
  %i.v = fmul float %36, %i.o
  %43 = fdiv float %i.v, %sqrt.i.i20              ; 3 uses
  %44 = extractelement <4 x float> %42, i64 1     ; 2 uses
  %i.w = fmul float %14, %44
  %i.x = extractelement <2 x float> %19, i64 1
  %45 = fmul float %i.x, %44
  %46 = fmul float %20, %43
  %i.y = insertelement <2 x float> poison, float %43, i64 0
  %47 = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %48 = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> zeroinitializer
  %49 = fmul <4 x float> %47, %48                 ; 2 uses
  %i.z = fmul float %9, %43                       ; 2 uses
  %50 = fmul <4 x float> %13, %42                 ; 2 uses
  %51 = fadd float %i.w, %46                      ; 2 uses
  %52 = fadd float %45, %i.z                      ; 2 uses
  %53 = extractelement <4 x float> %42, i64 0
  %54 = extractelement <2 x float> %19, i64 0
  %i.aa = fmul float %54, %53
  %55 = fsub <4 x float> %50, %49                 ; 2 uses
  %56 = fadd <4 x float> %50, %49                 ; 2 uses
  %57 = shufflevector <4 x float> %55, <4 x float> %56, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.ab = fsub float %i.aa, %i.z                  ; 2 uses
  %58 = extractelement <4 x float> %55, i64 3
  %59 = fadd float %51, %58
  %i.ac = fadd float %52, %i.ab
  %60 = fadd float %51, 0.000000e+00
  %i.ad = fadd float %52, 0.000000e+00
  %61 = shufflevector <4 x float> %56, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %62 = fadd <4 x float> %57, %61                 ; 4 uses
  %63 = extractelement <4 x float> %62, i64 0
  %64 = fsub float 0.000000e+00, %63
  %i.ae = fsub float 0.000000e+00, %59
  %65 = fsub float 0.000000e+00, %i.ac
  %i.af = fadd float %i.ab, 0.000000e+00
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.ag, %.sroa.0247.0.extract.trunc
  %i.ah = load i32, ptr %i.b, align 4
  %i.ai = icmp sgt i32 %i.ah, %.sroa.0247.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.ai, i1 false
  br i1 %or.cond.i24.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = load i64, ptr %6, align 8
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds [12 x i8], ptr %i.ak, i64 %i.g
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.d:                                             ; preds = %bb.b
  %i.am = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.not.i.i.i, label %.preheader354, label %bb.f

.preheader354:                                    ; preds = %bb.d, %bb.e
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.f, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit320.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader354
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !160
  %i.ap = icmp eq i32 %i.ao, %.sroa.0247.0.extract.trunc
  br i1 %i.ap, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader354, !llvm.loop !5

bb.f:                                             ; preds = %bb.d
  %i.aq = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.ar = urem i64 %i.g, %i.aq                    ; 5 uses
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %.loopexit320.thread, label %bb.g

.loopexit320.thread:                              ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0265)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0265, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !160
  %i.ay = icmp eq i32 %i.ax, %.sroa.0247.0.extract.trunc
  br i1 %i.ay, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.az = icmp eq i32 %i.bc, %.sroa.0247.0.extract.trunc
  br i1 %i.az, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.ba, %bb.h ], [ %i.av, %bb.g ]
  %i.ba = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit320, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !160 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = urem i64 %i.bd, %i.aq
  %.not19.i.i.i.i.i = icmp eq i64 %i.be, %i.ar
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %.loopexit320, !llvm.loop !6

.loopexit320.loopexit:                            ; preds = %.preheader354
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre374 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre379 = urem i64 %i.g, %.pre                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre374, i64 %.pre379
  %.pre384 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit320

.loopexit320:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit320.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.bf = phi ptr [ %i.au, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre384, %.loopexit320.loopexit ], [ %i.au, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.ar, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre379, %.loopexit320.loopexit ], [ %i.ar, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.bg = phi i64 [ %i.aq, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit320.loopexit ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0265)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0265, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %.loopexit320
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !42 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !160
  %i.bk = icmp eq i32 %i.bj, %.sroa.0247.0.extract.trunc
  br i1 %i.bk, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.bl = icmp eq i32 %i.bo, %.sroa.0247.0.extract.trunc
  br i1 %i.bl, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %.020.i.i.i.i = phi ptr [ %i.bm, %bb.k ], [ %i.bh, %bb.j ]
  %i.bm = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !160 ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = urem i64 %i.bp, %i.bg
  %.not19.i.i.i.i = icmp eq i64 %i.bq, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.k, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.l
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit320.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit320
  %.pre-phi414 = phi i64 [ %i.ar, %.loopexit320.thread ], [ %.pre-phi, %.loopexit320 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.br = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.br, align 8, !tbaa !42
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %.sroa.0247.0.extract.trunc, ptr %i.bs, align 8, !tbaa !239
  %i.bt = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi414, i64 noundef %i.g, ptr noundef nonnull %i.br, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i141, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i130, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i103, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i92, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i65, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa443.sink = phi ptr [ %i.hg, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i141 ], [ %i.gn, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i130 ], [ %i.ev, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i103 ], [ %i.ec, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i92 ], [ %i.ck, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i65 ], [ %i.br, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.hj, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i141 ], [ %i.gq, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i130 ], [ %i.ey, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i103 ], [ %i.ef, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i92 ], [ %i.cn, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i65 ], [ %i.bu, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa443.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.k, %bb.j, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.bt, %.loopexit.i.i ], [ %i.bh, %bb.j ], [ %i.bm, %bb.k ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0265, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0265)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.h, %bb.e, %bb.g, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.bv = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.bw = urem i64 %i.g, %i.bv                    ; 3 uses
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i58 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i58, label %.loopexit.i.i64, label %bb.m

bb.m:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !42 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !160
  %i.cd = icmp eq i32 %i.cc, %.sroa.0247.0.extract.trunc
  br i1 %i.cd, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit68, label %.lr.ph.i.i.i.i59

bb.n:                                             ; preds = %bb.o
  %i.ce = icmp eq i32 %i.ch, %.sroa.0247.0.extract.trunc
  br i1 %i.ce, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit68, label %.lr.ph.i.i.i.i59, !llvm.loop !6

.lr.ph.i.i.i.i59:                                 ; preds = %bb.m, %bb.n
  %.020.i.i.i.i60 = phi ptr [ %i.cf, %bb.n ], [ %i.ca, %bb.m ]
  %i.cf = load ptr, ptr %.020.i.i.i.i60, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i61 = icmp eq ptr %i.cf, null
  br i1 %.not18.i.i.i.i61, label %.loopexit.i.i64, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i59
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !160 ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = urem i64 %i.ci, %i.bv
  %.not19.i.i.i.i62 = icmp eq i64 %i.cj, %i.bw
  br i1 %.not19.i.i.i.i62, label %bb.n, label %..loopexit_crit_edge21.i.i.i.i63, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i63:                 ; preds = %bb.o
  br label %.loopexit.i.i64, !llvm.loop !6

.loopexit.i.i64:                                  ; preds = %.lr.ph.i.i.i.i59, %..loopexit_crit_edge21.i.i.i.i63, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.ck = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ck, align 8, !tbaa !42
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 %.sroa.0247.0.extract.trunc, ptr %i.cl, align 8, !tbaa !239
  %i.cm = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.bw, i64 noundef %i.g, ptr noundef nonnull %i.ck, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit68 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i65

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i65: ; preds = %.loopexit.i.i64
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit68: ; preds = %bb.n, %bb.m, %.loopexit.i.i64
  %.pn.i.i66 = phi ptr [ %i.cm, %.loopexit.i.i64 ], [ %i.ca, %bb.m ], [ %i.cf, %bb.n ]
  %.1.i.i67 = getelementptr inbounds nuw i8, ptr %.pn.i.i66, i64 12
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i: ; preds = %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit68, %bb.c
  %.0.i25.i = phi ptr [ %i.al, %bb.c ], [ %.1.i.i67, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit68 ] ; 4 uses
  %66 = load float, ptr %.0.i25.i, align 4, !tbaa !169
  %67 = extractelement <4 x float> %62, i64 1
  %68 = fadd float %67, %66
  %69 = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 4
  %70 = load float, ptr %69, align 4, !tbaa !169
  %71 = fadd float %60, %70
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 8 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !169
  %i.cq = fadd float %i.ad, %i.cp
  %.sroa.0.0.vec.insert.i.i69 = insertelement <2 x float> poison, float %68, i64 0
  %.sroa.0.4.vec.insert.i.i70 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i69, float %71, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i70, ptr %.0.i25.i, align 4
  store float %i.cq, ptr %i.co, align 4, !tbaa !185
  %i.cr = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i19.i = icmp sle i32 %i.cr, %.sroa.0247.4.extract.trunc
  %i.cs = load i32, ptr %i.b, align 4
  %i.ct = icmp sgt i32 %i.cs, %.sroa.0247.4.extract.trunc
  %or.cond.i20.i = select i1 %.not.i19.i, i1 %i.ct, i1 false
  br i1 %or.cond.i20.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i
  %i.cu = load i64, ptr %6, align 8
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = getelementptr inbounds [12 x i8], ptr %i.cv, i64 %i.i
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit22.i

bb.q:                                             ; preds = %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i71 = icmp eq i64 %i.cx, 0
  br i1 %.not.not.i.i.i71, label %.preheader351, label %bb.s

.preheader351:                                    ; preds = %bb.q, %bb.r
  %.sroa.06.0.in.i.i.i81 = phi ptr [ %.sroa.06.0.i.i.i82, %bb.r ], [ %i.f, %bb.q ]
  %.sroa.06.0.i.i.i82 = load ptr, ptr %.sroa.06.0.in.i.i.i81, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i83 = icmp eq ptr %.sroa.06.0.i.i.i82, null
  br i1 %.not.i.i.i83, label %.loopexit317.loopexit, label %bb.r

bb.r:                                             ; preds = %.preheader351
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i82, i64 8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !160
  %i.da = icmp eq i32 %i.cz, %.sroa.0247.4.extract.trunc
  br i1 %i.da, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit84, label %.preheader351, !llvm.loop !5

bb.s:                                             ; preds = %bb.q
  %i.db = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.dc = urem i64 %i.i, %i.db                    ; 5 uses
  %i.dd = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dc
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i72 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i72, label %.loopexit317.thread, label %bb.t

.loopexit317.thread:                              ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0258)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0258, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i91

bb.t:                                             ; preds = %bb.s
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !42 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !160
  %i.dj = icmp eq i32 %i.di, %.sroa.0247.4.extract.trunc
  br i1 %i.dj, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit84, label %.lr.ph.i.i.i.i.i73

bb.u:                                             ; preds = %bb.v
  %i.dk = icmp eq i32 %i.dn, %.sroa.0247.4.extract.trunc
  br i1 %i.dk, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit84, label %.lr.ph.i.i.i.i.i73, !llvm.loop !6

.lr.ph.i.i.i.i.i73:                               ; preds = %bb.t, %bb.u
  %.020.i.i.i.i.i74 = phi ptr [ %i.dl, %bb.u ], [ %i.dg, %bb.t ]
  %i.dl = load ptr, ptr %.020.i.i.i.i.i74, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i75 = icmp eq ptr %i.dl, null
  br i1 %.not18.i.i.i.i.i75, label %.loopexit317, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i73
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !160 ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = urem i64 %i.do, %i.db
  %.not19.i.i.i.i.i76 = icmp eq i64 %i.dp, %i.dc
  br i1 %.not19.i.i.i.i.i76, label %bb.u, label %..loopexit_crit_edge21.i.i.i.i.i77, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i77:               ; preds = %bb.v
  br label %.loopexit317, !llvm.loop !6

.loopexit317.loopexit:                            ; preds = %.preheader351
  %.pre375 = load i64, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %.pre376 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre380 = urem i64 %i.i, %.pre375              ; 2 uses
  %.phi.trans.insert385 = getelementptr inbounds nuw [8 x i8], ptr %.pre376, i64 %.pre380
  %.pre386 = load ptr, ptr %.phi.trans.insert385, align 8, !tbaa !172
  br label %.loopexit317

.loopexit317:                                     ; preds = %.lr.ph.i.i.i.i.i73, %.loopexit317.loopexit, %..loopexit_crit_edge21.i.i.i.i.i77
  %i.dq = phi ptr [ %i.df, %..loopexit_crit_edge21.i.i.i.i.i77 ], [ %.pre386, %.loopexit317.loopexit ], [ %i.df, %.lr.ph.i.i.i.i.i73 ] ; 2 uses
  %.pre-phi381 = phi i64 [ %i.dc, %..loopexit_crit_edge21.i.i.i.i.i77 ], [ %.pre380, %.loopexit317.loopexit ], [ %i.dc, %.lr.ph.i.i.i.i.i73 ] ; 4 uses
  %i.dr = phi i64 [ %i.db, %..loopexit_crit_edge21.i.i.i.i.i77 ], [ %.pre375, %.loopexit317.loopexit ], [ %i.db, %.lr.ph.i.i.i.i.i73 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0258)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0258, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i85 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i85, label %.loopexit.i.i91, label %bb.w

bb.w:                                             ; preds = %.loopexit317
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !42 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !160
  %i.dv = icmp eq i32 %i.du, %.sroa.0247.4.extract.trunc
  br i1 %i.dv, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit95, label %.lr.ph.i.i.i.i86

bb.x:                                             ; preds = %bb.y
  %i.dw = icmp eq i32 %i.dz, %.sroa.0247.4.extract.trunc
  br i1 %i.dw, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit95, label %.lr.ph.i.i.i.i86, !llvm.loop !6

.lr.ph.i.i.i.i86:                                 ; preds = %bb.w, %bb.x
  %.020.i.i.i.i87 = phi ptr [ %i.dx, %bb.x ], [ %i.ds, %bb.w ]
  %i.dx = load ptr, ptr %.020.i.i.i.i87, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i88 = icmp eq ptr %i.dx, null
  br i1 %.not18.i.i.i.i88, label %.loopexit.i.i91, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i86
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !160 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = urem i64 %i.ea, %i.dr
  %.not19.i.i.i.i89 = icmp eq i64 %i.eb, %.pre-phi381
  br i1 %.not19.i.i.i.i89, label %bb.x, label %..loopexit_crit_edge21.i.i.i.i90, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i90:                 ; preds = %bb.y
  br label %.loopexit.i.i91, !llvm.loop !6

.loopexit.i.i91:                                  ; preds = %.lr.ph.i.i.i.i86, %.loopexit317.thread, %..loopexit_crit_edge21.i.i.i.i90, %.loopexit317
  %.pre-phi381417 = phi i64 [ %i.dc, %.loopexit317.thread ], [ %.pre-phi381, %.loopexit317 ], [ %.pre-phi381, %..loopexit_crit_edge21.i.i.i.i90 ], [ %.pre-phi381, %.lr.ph.i.i.i.i86 ]
  %i.ec = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ec, align 8, !tbaa !42
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i32 %.sroa.0247.4.extract.trunc, ptr %i.ed, align 8, !tbaa !239
  %i.ee = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi381417, i64 noundef %i.i, ptr noundef nonnull %i.ec, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit95 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i92

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i92: ; preds = %.loopexit.i.i91
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit95: ; preds = %bb.x, %bb.w, %.loopexit.i.i91
  %.pn.i.i93 = phi ptr [ %i.ee, %.loopexit.i.i91 ], [ %i.ds, %bb.w ], [ %i.dx, %bb.x ]
  %.1.i.i94 = getelementptr inbounds nuw i8, ptr %.pn.i.i93, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i94, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0258, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0258)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit84

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit84: ; preds = %bb.u, %bb.r, %bb.t, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit95
  %i.eg = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.eh = urem i64 %i.i, %i.eg                    ; 3 uses
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i96 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i96, label %.loopexit.i.i102, label %bb.z

bb.z:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit84
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !42 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i32, ptr %i.em, align 4, !tbaa !160
  %i.eo = icmp eq i32 %i.en, %.sroa.0247.4.extract.trunc
  br i1 %i.eo, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit106, label %.lr.ph.i.i.i.i97

bb.aa:                                            ; preds = %bb.ab
  %i.ep = icmp eq i32 %i.es, %.sroa.0247.4.extract.trunc
  br i1 %i.ep, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit106, label %.lr.ph.i.i.i.i97, !llvm.loop !6

.lr.ph.i.i.i.i97:                                 ; preds = %bb.z, %bb.aa
  %.020.i.i.i.i98 = phi ptr [ %i.eq, %bb.aa ], [ %i.el, %bb.z ]
  %i.eq = load ptr, ptr %.020.i.i.i.i98, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i99 = icmp eq ptr %i.eq, null
  br i1 %.not18.i.i.i.i99, label %.loopexit.i.i102, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i97
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i32, ptr %i.er, align 4, !tbaa !160 ; 2 uses
  %i.et = sext i32 %i.es to i64
  %i.eu = urem i64 %i.et, %i.eg
  %.not19.i.i.i.i100 = icmp eq i64 %i.eu, %i.eh
  br i1 %.not19.i.i.i.i100, label %bb.aa, label %..loopexit_crit_edge21.i.i.i.i101, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i101:                ; preds = %bb.ab
  br label %.loopexit.i.i102, !llvm.loop !6

.loopexit.i.i102:                                 ; preds = %.lr.ph.i.i.i.i97, %..loopexit_crit_edge21.i.i.i.i101, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit84
  %i.ev = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ev, align 8, !tbaa !42
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 %.sroa.0247.4.extract.trunc, ptr %i.ew, align 8, !tbaa !239
  %i.ex = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.eh, i64 noundef %i.i, ptr noundef nonnull %i.ev, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit106 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i103

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i103: ; preds = %.loopexit.i.i102
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit106: ; preds = %bb.aa, %bb.z, %.loopexit.i.i102
  %.pn.i.i104 = phi ptr [ %i.ex, %.loopexit.i.i102 ], [ %i.el, %bb.z ], [ %i.eq, %bb.aa ]
  %.1.i.i105 = getelementptr inbounds nuw i8, ptr %.pn.i.i104, i64 12
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit22.i

_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit22.i: ; preds = %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit106, %bb.p
  %.0.i21.i = phi ptr [ %i.cw, %bb.p ], [ %.1.i.i105, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit106 ] ; 4 uses
  %72 = load float, ptr %.0.i21.i, align 4, !tbaa !169
  %73 = fadd float %64, %72
  %74 = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 4
  %75 = load float, ptr %74, align 4, !tbaa !169
  %76 = fadd float %i.ae, %75
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 8 ; 2 uses
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !169
  %i.fb = fadd float %65, %i.fa
  %.sroa.0.0.vec.insert.i.i107 = insertelement <2 x float> poison, float %73, i64 0
  %.sroa.0.4.vec.insert.i.i108 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i107, float %76, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i108, ptr %.0.i21.i, align 4
  store float %i.fb, ptr %i.ez, align 4, !tbaa !185
  %i.fc = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i.i = icmp sle i32 %i.fc, %.sroa.5248.8.extract.trunc
  %i.fd = load i32, ptr %i.b, align 4
  %i.fe = icmp sgt i32 %i.fd, %.sroa.5248.8.extract.trunc
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.fe, i1 false
  br i1 %or.cond.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit22.i
  %i.ff = load i64, ptr %6, align 8
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = getelementptr inbounds [12 x i8], ptr %i.fg, i64 %i.k
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

bb.ad:                                            ; preds = %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit22.i
  %i.fi = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i109 = icmp eq i64 %i.fi, 0
  br i1 %.not.not.i.i.i109, label %.preheader, label %bb.af

.preheader:                                       ; preds = %bb.ad, %bb.ae
  %.sroa.06.0.in.i.i.i119 = phi ptr [ %.sroa.06.0.i.i.i120, %bb.ae ], [ %i.f, %bb.ad ]
  %.sroa.06.0.i.i.i120 = load ptr, ptr %.sroa.06.0.in.i.i.i119, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i121 = icmp eq ptr %.sroa.06.0.i.i.i120, null
  br i1 %.not.i.i.i121, label %.loopexit.loopexit, label %bb.ae

bb.ae:                                            ; preds = %.preheader
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i120, i64 8
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !160
  %i.fl = icmp eq i32 %i.fk, %.sroa.5248.8.extract.trunc
  br i1 %i.fl, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit122, label %.preheader, !llvm.loop !5

bb.af:                                            ; preds = %bb.ad
  %i.fm = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.fn = urem i64 %i.k, %i.fm                    ; 5 uses
  %i.fo = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fn
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i110 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i110, label %.loopexit.thread, label %bb.ag

.loopexit.thread:                                 ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0252)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0252, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i129

bb.ag:                                            ; preds = %bb.af
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !42 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !160
  %i.fu = icmp eq i32 %i.ft, %.sroa.5248.8.extract.trunc
  br i1 %i.fu, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit122, label %.lr.ph.i.i.i.i.i111

bb.ah:                                            ; preds = %bb.ai
  %i.fv = icmp eq i32 %i.fy, %.sroa.5248.8.extract.trunc
  br i1 %i.fv, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit122, label %.lr.ph.i.i.i.i.i111, !llvm.loop !6

.lr.ph.i.i.i.i.i111:                              ; preds = %bb.ag, %bb.ah
  %.020.i.i.i.i.i112 = phi ptr [ %i.fw, %bb.ah ], [ %i.fr, %bb.ag ]
  %i.fw = load ptr, ptr %.020.i.i.i.i.i112, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i113 = icmp eq ptr %i.fw, null
  br i1 %.not18.i.i.i.i.i113, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i111
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !160 ; 2 uses
  %i.fz = sext i32 %i.fy to i64
  %i.ga = urem i64 %i.fz, %i.fm
  %.not19.i.i.i.i.i114 = icmp eq i64 %i.ga, %i.fn
  br i1 %.not19.i.i.i.i.i114, label %bb.ah, label %..loopexit_crit_edge21.i.i.i.i.i115, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i115:              ; preds = %bb.ai
  br label %.loopexit, !llvm.loop !6

.loopexit.loopexit:                               ; preds = %.preheader
  %.pre377 = load i64, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %.pre378 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre382 = urem i64 %i.k, %.pre377              ; 2 uses
  %.phi.trans.insert387 = getelementptr inbounds nuw [8 x i8], ptr %.pre378, i64 %.pre382
  %.pre388 = load ptr, ptr %.phi.trans.insert387, align 8, !tbaa !172
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i111, %.loopexit.loopexit, %..loopexit_crit_edge21.i.i.i.i.i115
  %i.gb = phi ptr [ %i.fq, %..loopexit_crit_edge21.i.i.i.i.i115 ], [ %.pre388, %.loopexit.loopexit ], [ %i.fq, %.lr.ph.i.i.i.i.i111 ] ; 2 uses
  %.pre-phi383 = phi i64 [ %i.fn, %..loopexit_crit_edge21.i.i.i.i.i115 ], [ %.pre382, %.loopexit.loopexit ], [ %i.fn, %.lr.ph.i.i.i.i.i111 ] ; 4 uses
  %i.gc = phi i64 [ %i.fm, %..loopexit_crit_edge21.i.i.i.i.i115 ], [ %.pre377, %.loopexit.loopexit ], [ %i.fm, %.lr.ph.i.i.i.i.i111 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0252)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0252, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i123 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i123, label %.loopexit.i.i129, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.gd = load ptr, ptr %i.gb, align 8, !tbaa !42 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !160
  %i.gg = icmp eq i32 %i.gf, %.sroa.5248.8.extract.trunc
  br i1 %i.gg, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit133, label %.lr.ph.i.i.i.i124

bb.ak:                                            ; preds = %bb.al
  %i.gh = icmp eq i32 %i.gk, %.sroa.5248.8.extract.trunc
  br i1 %i.gh, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit133, label %.lr.ph.i.i.i.i124, !llvm.loop !6

.lr.ph.i.i.i.i124:                                ; preds = %bb.aj, %bb.ak
  %.020.i.i.i.i125 = phi ptr [ %i.gi, %bb.ak ], [ %i.gd, %bb.aj ]
  %i.gi = load ptr, ptr %.020.i.i.i.i125, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i126 = icmp eq ptr %i.gi, null
  br i1 %.not18.i.i.i.i126, label %.loopexit.i.i129, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i124
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !160 ; 2 uses
  %i.gl = sext i32 %i.gk to i64
  %i.gm = urem i64 %i.gl, %i.gc
  %.not19.i.i.i.i127 = icmp eq i64 %i.gm, %.pre-phi383
  br i1 %.not19.i.i.i.i127, label %bb.ak, label %..loopexit_crit_edge21.i.i.i.i128, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i128:                ; preds = %bb.al
  br label %.loopexit.i.i129, !llvm.loop !6

.loopexit.i.i129:                                 ; preds = %.lr.ph.i.i.i.i124, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i128, %.loopexit
  %.pre-phi383420 = phi i64 [ %i.fn, %.loopexit.thread ], [ %.pre-phi383, %.loopexit ], [ %.pre-phi383, %..loopexit_crit_edge21.i.i.i.i128 ], [ %.pre-phi383, %.lr.ph.i.i.i.i124 ]
  %i.gn = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.gn, align 8, !tbaa !42
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i32 %.sroa.5248.8.extract.trunc, ptr %i.go, align 8, !tbaa !239
  %i.gp = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi383420, i64 noundef %i.k, ptr noundef nonnull %i.gn, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit133 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i130

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i130: ; preds = %.loopexit.i.i129
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit133: ; preds = %bb.ak, %bb.aj, %.loopexit.i.i129
  %.pn.i.i131 = phi ptr [ %i.gp, %.loopexit.i.i129 ], [ %i.gd, %bb.aj ], [ %i.gi, %bb.ak ]
  %.1.i.i132 = getelementptr inbounds nuw i8, ptr %.pn.i.i131, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i132, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0252, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0252)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit122

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit122: ; preds = %bb.ah, %bb.ae, %bb.ag, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit133
  %i.gr = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.gs = urem i64 %i.k, %i.gr                    ; 3 uses
  %i.gt = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gs
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i134 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i134, label %.loopexit.i.i140, label %bb.am

bb.am:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit122
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !42 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !160
  %i.gz = icmp eq i32 %i.gy, %.sroa.5248.8.extract.trunc
  br i1 %i.gz, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit144, label %.lr.ph.i.i.i.i135

bb.an:                                            ; preds = %bb.ao
  %i.ha = icmp eq i32 %i.hd, %.sroa.5248.8.extract.trunc
  br i1 %i.ha, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit144, label %.lr.ph.i.i.i.i135, !llvm.loop !6

.lr.ph.i.i.i.i135:                                ; preds = %bb.am, %bb.an
  %.020.i.i.i.i136 = phi ptr [ %i.hb, %bb.an ], [ %i.gw, %bb.am ]
  %i.hb = load ptr, ptr %.020.i.i.i.i136, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i137 = icmp eq ptr %i.hb, null
  br i1 %.not18.i.i.i.i137, label %.loopexit.i.i140, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i135
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !160 ; 2 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = urem i64 %i.he, %i.gr
  %.not19.i.i.i.i138 = icmp eq i64 %i.hf, %i.gs
  br i1 %.not19.i.i.i.i138, label %bb.an, label %..loopexit_crit_edge21.i.i.i.i139, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i139:                ; preds = %bb.ao
  br label %.loopexit.i.i140, !llvm.loop !6

.loopexit.i.i140:                                 ; preds = %.lr.ph.i.i.i.i135, %..loopexit_crit_edge21.i.i.i.i139, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit122
  %i.hg = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.hg, align 8, !tbaa !42
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store i32 %.sroa.5248.8.extract.trunc, ptr %i.hh, align 8, !tbaa !239
  %i.hi = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.gs, i64 noundef %i.k, ptr noundef nonnull %i.hg, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit144 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i141

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i141: ; preds = %.loopexit.i.i140
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit144: ; preds = %bb.an, %bb.am, %.loopexit.i.i140
  %.pn.i.i142 = phi ptr [ %i.hi, %.loopexit.i.i140 ], [ %i.gw, %bb.am ], [ %i.hb, %bb.an ]
  %.1.i.i143 = getelementptr inbounds nuw i8, ptr %.pn.i.i142, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ac, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit144
  %.0.i.i = phi ptr [ %i.fh, %bb.ac ], [ %.1.i.i143, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit144 ] ; 4 uses
  %77 = load float, ptr %.0.i.i, align 4, !tbaa !169
  %78 = extractelement <4 x float> %62, i64 2
  %79 = fadd float %78, %77
  %80 = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %81 = load float, ptr %80, align 4, !tbaa !169
  %82 = extractelement <4 x float> %62, i64 3
  %83 = fadd float %82, %81
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !169
  %i.hm = fadd float %i.af, %i.hl
  %.sroa.0.0.vec.insert.i.i145 = insertelement <2 x float> poison, float %79, i64 0
  %.sroa.0.4.vec.insert.i.i146 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i145, float %83, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i146, ptr %.0.i.i, align 4
  store float %i.hm, ptr %i.hk, align 4, !tbaa !185
  %.sroa.0163.0.vec.extract = extractelement <2 x float> %.sroa.0163.0347, i64 0
  %i.hn = fadd float %.sroa.0163.0.vec.extract, %37
  %.sroa.0163.0.vec.insert = insertelement <2 x float> %.sroa.0163.0347, float %i.hn, i64 0 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0155.0348, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ho, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_23TwoParameterInteractionINS_20LinearAngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_5NoPbcEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef.429") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0248 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0241 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0235 = alloca [3 x float], align 4       ; 6 uses
  %.not331 = icmp eq ptr %0, %1
  br i1 %.not331, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0153.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0153.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0153.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0145.0333 = phi ptr [ %0, %.lr.ph ], [ %i.iz, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0153.0332 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0153.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_DnNS_5NoPbcETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0145.0333, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0145.0333, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %.sroa.0230.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0230.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0230.4.extract.trunc = trunc nuw i64 %.sroa.0230.4.extract.shift to i32 ; 11 uses
  %.sroa.5231.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.g = ashr exact i64 %sext, 32                 ; 7 uses
  %i.h = getelementptr inbounds [12 x i8], ptr %4, i64 %i.g ; 2 uses
  %.sroa.7222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7222.0.copyload = load float, ptr %.sroa.7222.0..sroa_idx, align 4, !tbaa !185
  %i.i = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.j = getelementptr inbounds [12 x i8], ptr %4, i64 %i.i ; 2 uses
  %.sroa.7216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7216.0.copyload = load float, ptr %.sroa.7216.0..sroa_idx, align 4, !tbaa !185 ; 2 uses
  %sext298 = shl i64 %.sroa.2.0.copyload, 32
  %i.k = ashr exact i64 %sext298, 32              ; 7 uses
  %i.l = getelementptr inbounds [12 x i8], ptr %4, i64 %i.k ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !185
  %i.m = ashr i64 %.sroa.2.0.copyload, 32
  %i.n = getelementptr inbounds [8 x i8], ptr %2, i64 %i.m ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.o = fsub float %.sroa.7222.0.copyload, %.sroa.7216.0.copyload
  %i.p = fsub float %.sroa.7.0.copyload, %.sroa.7216.0.copyload
  %i.q = load <2 x float>, ptr %i.h, align 4
  %i.r = load <2 x float>, ptr %i.j, align 4      ; 2 uses
  %i.s = load <2 x float>, ptr %i.l, align 4
  %i.t = load float, ptr %.sroa_idx, align 4      ; 5 uses
  %i.u = load float, ptr %i.n, align 4            ; 3 uses
  %i.v = fsub <2 x float> %i.q, %i.r
  %i.w = fsub <2 x float> %i.s, %i.r
  %i.x = fsub float 1.000000e+00, %i.t
  %i.y = fadd float %i.t, -1.000000e+00           ; 2 uses
  %i.z = fmul float %i.u, %i.x                    ; 2 uses
  %i.aa = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.w, %i.ab
  %i.ad = fmul float %i.p, %i.y
  %i.ae = insertelement <2 x float> poison, float %i.t, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %i.v, %i.af
  %i.ah = fmul float %i.o, %i.t
  %i.ai = fsub <2 x float> %i.ac, %i.ag           ; 5 uses
  %i.aj = fsub float %i.ad, %i.ah                 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ai, %i.ai
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.ak)
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.am)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.an) ; 2 uses
  %i.ao = fmul float %i.u, %sqrt.i.i
  %i.ap = fpext float %i.ao to double
  %i.aq = fmul double %i.ap, 5.000000e-01
  %i.ar = fpext float %sqrt.i.i to double
  %i.as = fmul double %i.aq, %i.ar
  %i.at = fptrunc double %i.as to float
  %i.au = fmul float %i.u, %i.t                   ; 2 uses
  %i.av = fmul float %i.au, %i.aj                 ; 2 uses
  %i.aw = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.ax, %i.ai           ; 2 uses
  %i.az = fmul float %i.z, %i.aj                  ; 2 uses
  %i.ba = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.bb, %i.ai           ; 2 uses
  %i.bd = fadd <2 x float> %i.bc, %i.ay
  %i.be = fadd float %i.av, %i.az
  %i.bf = fadd <2 x float> %i.bc, zeroinitializer
  %i.bg = fadd float %i.av, 0.000000e+00
  %i.bh = fsub <2 x float> zeroinitializer, %i.bd
  %i.bi = fsub float 0.000000e+00, %i.be
  %i.bj = fadd <2 x float> %i.ay, zeroinitializer
  %i.bk = fadd float %i.az, 0.000000e+00
  %i.bl = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.bl, %.sroa.0230.0.extract.trunc
  %i.bm = load i32, ptr %i.b, align 4
  %i.bn = icmp sgt i32 %i.bm, %.sroa.0230.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.bn, i1 false
  br i1 %or.cond.i24.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %6, align 8
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds [12 x i8], ptr %i.bp, i64 %i.g
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.d:                                             ; preds = %bb.b
  %i.br = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.not.i.i.i, label %.preheader339, label %bb.f

.preheader339:                                    ; preds = %bb.d, %bb.e
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.f, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit305.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader339
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !160
  %i.bu = icmp eq i32 %i.bt, %.sroa.0230.0.extract.trunc
  br i1 %i.bu, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader339, !llvm.loop !5

bb.f:                                             ; preds = %bb.d
  %i.bv = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.bw = urem i64 %i.g, %i.bv                    ; 5 uses
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i, label %.loopexit305.thread, label %bb.g

.loopexit305.thread:                              ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0248)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0248, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !42 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !160
  %i.cd = icmp eq i32 %i.cc, %.sroa.0230.0.extract.trunc
  br i1 %i.cd, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.ce = icmp eq i32 %i.ch, %.sroa.0230.0.extract.trunc
  br i1 %i.ce, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.cf, %bb.h ], [ %i.ca, %bb.g ]
  %i.cf = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit305, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !160 ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = urem i64 %i.ci, %i.bv
  %.not19.i.i.i.i.i = icmp eq i64 %i.cj, %i.bw
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %.loopexit305, !llvm.loop !6

.loopexit305.loopexit:                            ; preds = %.preheader339
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre359 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre364 = urem i64 %i.g, %.pre                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre359, i64 %.pre364
  %.pre369 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit305

.loopexit305:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit305.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.ck = phi ptr [ %i.bz, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre369, %.loopexit305.loopexit ], [ %i.bz, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.bw, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre364, %.loopexit305.loopexit ], [ %i.bw, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.cl = phi i64 [ %i.bv, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit305.loopexit ], [ %i.bv, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0248)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0248, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %.loopexit305
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !42 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
end_hunk_1
