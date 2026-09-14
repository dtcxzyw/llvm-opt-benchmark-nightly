Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hash_tsdf_functions?download=true
inline.NumInlined: 1895
inline.NumDeleted: 775
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2cv27integrateHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_4MatxIfLi4ELi4EEERiiibRKNS_11_InputArrayESA_RKNS_17_InputOutputArrayERSt13unordered_mapINS_3VecIiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISG_ESaISt4pairIKSG_SH_EEE:bb.a
  %.sroa.11224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  store ptr %i.c, ptr %.sroa.11224.0..sroa_idx, align 8, !tbaa !73
  %.sroa.12225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  store ptr %9, ptr %.sroa.12225.0..sroa_idx, align 16, !tbaa !81
  %.sroa.13226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 72
  store ptr %45, ptr %.sroa.13226.0..sroa_idx, align 8, !tbaa !83
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 80
  store ptr %44, ptr %.sroa.14.0..sroa_idx, align 16, !tbaa !85
  store ptr %i.et, ptr %47, align 8, !tbaa !86
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_27integrateHashTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_4MatxIfLi4ELi4EEERiiibRKNS0_11_InputArrayESF_RKNS0_17_InputOutputArrayERSt13unordered_mapINS0_3VecIiLi3EEENS0_10VolumeUnitENS0_9tsdf_hashESt8equal_toISL_ESaISt4pairIKSL_SM_EEEE3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.ez, align 8, !tbaa !88
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_27integrateHashTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_4MatxIfLi4ELi4EEERiiibRKNS0_11_InputArrayESF_RKNS0_17_InputOutputArrayERSt13unordered_mapINS0_3VecIiLi3EEENS0_10VolumeUnitENS0_9tsdf_hashESt8equal_toISL_ESaISt4pairIKSL_SM_EEEE3$_0E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation", ptr %i.es, align 8, !tbaa !67
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %46, ptr noundef align 8 %47)
          to label %bb.ad unwind label %bb.at

bb.ad:                                            ; preds = %bb.ac
  %i.fa = load ptr, ptr %i.es, align 8, !tbaa !67 ; 2 uses
  %.not.i = icmp eq ptr %i.fa, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fb = invoke noundef zeroext i1 %i.fa(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(32) %47, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.ad, %bb.ae
  %i.fe = load ptr, ptr %i.el, align 8, !tbaa !89 ; 2 uses
  %.not259261 = icmp eq ptr %i.fe, null
  br i1 %.not259261, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  br label %_ZNSt10_HashtableIN2cv3VecIiLi3EEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_9tsdf_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i

.lr.ph:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %48, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %35, i64 4
  %i.fi = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %35, i64 36
  %i.fm = getelementptr inbounds nuw i8, ptr %35, i64 40
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %35, i64 12
  %.sroa.811.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %35, i64 44
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %35, i64 48
  %i.fn = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.fo = getelementptr inbounds nuw i8, ptr %i.y, i64 84
  %i.fp = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %50, i64 72 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %50, i64 4 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %50, i64 84 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %19, i64 8
  br label %bb.aw

._crit_edge:                                      ; preds = %bb.cd
  %.pre270 = load ptr, ptr %i.el, align 8, !tbaa !89 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  %.not5.i.i.i.i = icmp eq ptr %.pre270, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN2cv3VecIiLi3EEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_9tsdf_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.fv, %.lr.ph.i.i.i.i ], [ %.pre270, %._crit_edge ] ; 2 uses
  %i.fv = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !90 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #23
  %.not.i.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN2cv3VecIiLi3EEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_9tsdf_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt10_HashtableIN2cv3VecIiLi3EEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_9tsdf_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge.thread, %._crit_edge
  %i.fw = load ptr, ptr %44, align 8, !tbaa !54
  %i.fx = load i64, ptr %i.ek, align 8, !tbaa !55
  %i.fy = shl i64 %i.fx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fw, i8 0, i64 %i.fy, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i8 0, i64 16, i1 false)
  %i.fz = load ptr, ptr %44, align 8, !tbaa !54   ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.ej
  br i1 %i.ga, label %_ZNSt13unordered_setIN2cv3VecIiLi3EEENS0_9tsdf_hashESt8equal_toIS2_ESaIS2_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt10_HashtableIN2cv3VecIiLi3EEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_9tsdf_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.gb = load i64, ptr %i.ek, align 8, !tbaa !55
  %i.gc = shl i64 %i.gb, 3
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #23
  br label %_ZNSt13unordered_setIN2cv3VecIiLi3EEENS0_9tsdf_hashESt8equal_toIS2_ESaIS2_EED2Ev.exit

_ZNSt13unordered_setIN2cv3VecIiLi3EEENS0_9tsdf_hashESt8equal_toIS2_ESaIS2_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN2cv3VecIiLi3EEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_9tsdf_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.ch

bb.ah:                                            ; preds = %bb.k, %bb.j, %bb.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.body, %bb.ah
  %.pn88 = phi { ptr, i32 } [ %i.x, %.body ], [ %i.gd, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  br label %bb.dr

bb.aj:                                            ; preds = %_ZN2cv4Mat_IfEC2EONS_3MatE.exit
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.ak:                                            ; preds = %bb.n, %bb.m, %bb.l
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.al:                                            ; preds = %bb.o
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br label %bb.do

bb.am:                                            ; preds = %bb.p
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.an:                                            ; preds = %bb.r
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  br label %bb.dm

bb.ao:                                            ; preds = %bb.s
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ap:                                            ; preds = %bb.t
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.aq:                                            ; preds = %bb.u
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  br label %bb.dk

bb.ar:                                            ; preds = %bb.w
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.as:                                            ; preds = %bb.x
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.at:                                            ; preds = %bb.ac
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %i.es, align 8, !tbaa !67 ; 2 uses
  %.not.i137 = icmp eq ptr %i.gp, null
  br i1 %.not.i137, label %.body135, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gq = invoke noundef zeroext i1 %i.gp(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(32) %47, i32 noundef 3)
          to label %.body135 unwind label %bb.av  ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #25
  unreachable

bb.aw:                                            ; preds = %.lr.ph, %bb.cd
  %.sroa.0214.0262 = phi ptr [ %i.fe, %.lr.ph ], [ %i.lb, %bb.cd ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0214.0262, i64 8
  %i.gu = load <2 x i32>, ptr %i.gt, align 4, !tbaa !29
  store <2 x i32> %i.gu, ptr %48, align 8, !tbaa !29
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0214.0262, i64 16
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !29
  store i32 %i.gw, ptr %i.fg, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %49, i8 0, i64 88, i1 false)
  %i.gx = invoke { ptr, i8 } @_ZNSt10_HashtableIN2cv3VecIiLi3EEESt4pairIKS2_NS0_10VolumeUnitEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ENS0_9tsdf_hashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS2_S5_EEES3_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 4 dereferenceable(12) %48, ptr noundef nonnull align 4 dereferenceable(85) %49)
          to label %bb.ax unwind label %bb.bf

bb.ax:                                            ; preds = %bb.aw
  %.fca.0.extract9 = extractvalue { ptr, i8 } %i.gx, 0 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  %i.gy = load float, ptr %35, align 4, !tbaa !41, !noalias !236
  %i.gz = load float, ptr %i.fh, align 4, !tbaa !41, !noalias !236
  %i.ha = load float, ptr %i.fi, align 4, !tbaa !41, !noalias !236
  %i.hb = load float, ptr %i.c, align 4, !tbaa !41
  %i.hc = load i32, ptr %48, align 8, !tbaa !29
  %i.hd = load <2 x i32>, ptr %i.ff, align 4, !tbaa !29
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !237
  %.sroa.08.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 68
  %.sroa.08.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 84
  %i.he = load float, ptr %i.fk, align 4, !tbaa !41, !noalias !236
  %i.hf = load float, ptr %i.fl, align 4, !tbaa !41, !noalias !236
  %i.hg = load float, ptr %i.fm, align 4, !tbaa !41, !noalias !236
  %i.hh = sitofp i32 %i.hc to float
  %56 = insertelement <3 x float> poison, float %i.hb, i64 0
  %57 = shufflevector <3 x float> %56, <3 x float> poison, <3 x i32> zeroinitializer
  %58 = shufflevector <2 x i32> %i.hd, <2 x i32> poison, <3 x i32> <i32 1, i32 0, i32 poison>
  %59 = sitofp <3 x i32> %58 to <3 x float>
  %60 = insertelement <3 x float> %59, float %i.hh, i64 2
  %61 = fmul <3 x float> %57, %60                 ; 6 uses
  %62 = extractelement <3 x float> %61, i64 2
  %i.hi = call float @llvm.fmuladd.f32(float %i.gy, float %62, float 0.000000e+00)
  %63 = extractelement <3 x float> %61, i64 1
  %i.hj = call float @llvm.fmuladd.f32(float %i.gz, float %63, float %i.hi)
  %64 = extractelement <3 x float> %61, i64 0
  %i.hk = call float @llvm.fmuladd.f32(float %i.ha, float %64, float %i.hj)
  %i.hl = load <4 x float>, ptr %i.fj, align 4, !noalias !92 ; 4 uses
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.hn = insertelement <2 x float> %i.hm, float %i.he, i64 1
  %65 = shufflevector <3 x float> %61, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ho = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hn, <2 x float> %65, <2 x float> zeroinitializer)
  %i.hp = shufflevector <4 x float> %i.hl, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hq = insertelement <2 x float> %i.hp, float %i.hf, i64 1
  %66 = shufflevector <3 x float> %61, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hq, <2 x float> %66, <2 x float> %i.ho)
  %i.hs = shufflevector <4 x float> %i.hl, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ht = insertelement <2 x float> %i.hs, float %i.hg, i64 1
  %i.hu = shufflevector <3 x float> %61, <3 x float> poison, <2 x i32> zeroinitializer
  %i.hv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ht, <2 x float> %i.hu, <2 x float> %i.hr)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.fk, i64 12, i1 false)
  %.sroa.811.0.copyload.i = load float, ptr %.sroa.811.0..sroa_idx.i, align 4, !noalias !237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.08.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.0..sroa_idx.i, i64 16, i1 false)
  %i.hw = fadd float %.sroa.4.0.copyload.i, %i.hk
  %i.hx = shufflevector <4 x float> %i.hl, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.hy = insertelement <2 x float> %i.hx, float %.sroa.811.0.copyload.i, i64 1
  %i.hz = fadd <2 x float> %i.hv, %i.hy           ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ia, ptr noundef nonnull align 4 dereferenceable(12) %35, i64 12, i1 false)
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 48
  store float %i.hw, ptr %.sroa.08.sroa.5.0..sroa_idx, align 4
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.fj, i64 12, i1 false)
  %.sroa.08.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 64
  %i.ib = extractelement <2 x float> %i.hz, i64 0
  store float %i.ib, ptr %.sroa.08.sroa.7.0..sroa_idx, align 4
  %.sroa.08.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 80
  %i.ic = extractelement <2 x float> %i.hz, i64 1
  store float %i.ic, ptr %.sroa.08.sroa.9.0..sroa_idx, align 4
  %i.id = load i32, ptr %2, align 4, !tbaa !29    ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 32 ; 2 uses
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !98
  %i.if = load i32, ptr %i.fn, align 8, !tbaa !99 ; 3 uses
  %i.ig = icmp slt i32 %i.if, 3
  br i1 %i.ig, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %.noexc147 unwind label %bb.bg

.noexc147:                                        ; preds = %bb.ay
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.10, i32 noundef 109) #22
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %.noexc147
  unreachable

bb.ba:                                            ; preds = %.noexc147
  %i.ih = landingpad { ptr, i32 }
          cleanup
  %i.ii = load ptr, ptr %22, align 8, !tbaa !26   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ba
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !27
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %.body148

bb.bb:                                            ; preds = %bb.ax
  %or.cond.not = icmp eq i32 %i.if, 2
  br i1 %or.cond.not, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.in = load i32, ptr %i.fo, align 4, !tbaa !29
  br label %bb.bd

.thread.i:                                        ; preds = %bb.bb
  %i.io = icmp sgt i32 %i.if, -1
  %i.ip = zext i1 %i.io to i32
  br label %bb.bd

bb.bd:                                            ; preds = %.thread.i, %bb.bc
  %i.iq = phi i32 [ %i.in, %bb.bc ], [ %i.ip, %.thread.i ]
  %.not = icmp slt i32 %i.id, %i.iq
  br i1 %.not, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ir = shl nsw i32 %i.id, 1
  %i.is = sext i32 %i.ir to i64
  invoke void @_ZN2cv3Mat6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %i.y, i64 noundef %i.is)
          to label %._crit_edge269 unwind label %bb.bh

._crit_edge269:                                   ; preds = %bb.be
  %.pre = load i32, ptr %2, align 4, !tbaa !29
  br label %bb.bi

bb.bf:                                            ; preds = %bb.aw
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %.body148

bb.bg:                                            ; preds = %bb.ay
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %.body148

bb.bh:                                            ; preds = %bb.be
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.body148

bb.bi:                                            ; preds = %._crit_edge269, %bb.bd
  %i.iw = phi i32 [ %.pre, %._crit_edge269 ], [ %i.id, %bb.bd ]
  %i.ix = add nsw i32 %i.iw, 1
  store i32 %i.ix, ptr %2, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  %i.iy = load i32, ptr %i.ie, align 4, !tbaa !98 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21, !noalias !238
  %i.iz = add nsw i32 %i.iy, 1
  store i32 %i.iy, ptr %20, align 4, !tbaa !64, !noalias !238
  store i32 %i.iz, ptr %i.fp, align 4, !tbaa !65, !noalias !238
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21, !noalias !238
  store i64 9223372034707292160, ptr %21, align 8, !noalias !238
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %50, ptr noundef nonnull align 8 dereferenceable(208) %i.y, ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef nonnull align 4 dereferenceable(8) %21)
          to label %bb.bj unwind label %bb.ce

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21, !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21, !noalias !238
  %i.ja = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %50)
          to label %.noexc151 unwind label %.loopexit

.noexc151:                                        ; preds = %bb.bj
  br i1 %i.ja, label %bb.bk, label %bb.bp

bb.bk:                                            ; preds = %.noexc151
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @"__func__._ZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_27integrateHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_4MatxIfLi4ELi4EEERiiibRKNS_11_InputArrayESE_RKNS_17_InputOutputArrayERSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISJ_ESaISt4pairIKSJ_SK_EEEE3$_3EEvRKT0_", ptr noundef nonnull @.str.14, i32 noundef 722) #22
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  unreachable

bb.bn:                                            ; preds = %bb.bk
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

bb.bo:                                            ; preds = %bb.bl
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jd = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bo
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !27
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.bn
  %.pn8.i.i = phi { ptr, i32 } [ %i.jb, %bb.bn ], [ %i.jc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.jc, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %.body154

bb.bp:                                            ; preds = %.noexc151
  %i.ji = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %50)
          to label %.noexc152 unwind label %.loopexit

.noexc152:                                        ; preds = %bb.bp
  %i.jj = load i32, ptr %i.fr, align 4, !tbaa !100
  %i.jk = add nsw i32 %i.jj, -1                   ; 2 uses
  %i.jl = load i32, ptr %i.fq, align 8, !tbaa !99
  %narrow.i.i.i = call i32 @llvm.smax.i32(i32 %i.jl, i32 1)
  %i.jm = icmp ult i32 %i.jk, %narrow.i.i.i
  br i1 %i.jm, label %_ZN2cv8MatShapeixEm.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %.noexc152
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc153 unwind label %.loopexit.split-lp

.noexc153:                                        ; preds = %bb.bq
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.10, i32 noundef 97) #22
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %.noexc153
  unreachable

bb.bs:                                            ; preds = %.noexc153
  %i.jn = landingpad { ptr, i32 }
          cleanup
  %i.jo = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bs
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !27
  %i.js = add i64 %i.jr, 1
end_hunk_0
