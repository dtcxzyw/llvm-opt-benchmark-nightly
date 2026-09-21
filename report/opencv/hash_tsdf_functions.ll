Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hash_tsdf_functions?download=true
inline.NumInlined: 1895
inline.NumDeleted: 775
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2cv27integrateHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_4MatxIfLi4ELi4EEERiiibRKNS_11_InputArrayESA_RKNS_17_InputOutputArrayERSt13unordered_mapINS_3VecIiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISG_ESaISt4pairIKSG_SH_EEE:bb.a
  %i.fu = getelementptr inbounds nuw i8, ptr %19, i64 8
  br label %bb.aw

._crit_edge:                                      ; preds = %bb.cb
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
  br label %bb.cf

bb.ah:                                            ; preds = %bb.k, %bb.j, %bb.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.body, %bb.ah
  %.pn88 = phi { ptr, i32 } [ %i.x, %.body ], [ %i.gd, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  br label %bb.dp

bb.aj:                                            ; preds = %_ZN2cv4Mat_IfEC2EONS_3MatE.exit
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.ak:                                            ; preds = %bb.n, %bb.m, %bb.l
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.al:                                            ; preds = %bb.o
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br label %bb.dm

bb.am:                                            ; preds = %bb.p
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.an:                                            ; preds = %bb.r
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  br label %bb.dk

bb.ao:                                            ; preds = %bb.s
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.ap:                                            ; preds = %bb.t
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.aq:                                            ; preds = %bb.u
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  br label %bb.di

bb.ar:                                            ; preds = %bb.w
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.as:                                            ; preds = %bb.x
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

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

bb.aw:                                            ; preds = %.lr.ph, %bb.cb
  %.sroa.0214.0262 = phi ptr [ %i.fe, %.lr.ph ], [ %i.li, %bb.cb ] ; 3 uses
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
          to label %bb.ax unwind label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  %.fca.0.extract9 = extractvalue { ptr, i8 } %i.gx, 0 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  %i.gy = load float, ptr %35, align 4, !tbaa !41, !noalias !236
  %i.gz = load float, ptr %i.fh, align 4, !tbaa !41, !noalias !236
  %i.ha = load float, ptr %i.fi, align 4, !tbaa !41, !noalias !236
  %i.hb = load float, ptr %i.c, align 4, !tbaa !41 ; 3 uses
  %i.hc = load i32, ptr %48, align 8, !tbaa !29
  %i.hd = load <2 x i32>, ptr %i.ff, align 4, !tbaa !29
  %i.he = sitofp <2 x i32> %i.hd to <2 x float>   ; 2 uses
  %i.hf = extractelement <2 x float> %i.he, i64 0
  %i.hg = extractelement <2 x float> %i.he, i64 1
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !237
  %.sroa.08.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 68
  %.sroa.08.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 84
  %i.hh = load float, ptr %i.fk, align 4, !tbaa !41, !noalias !236
  %i.hi = load float, ptr %i.fl, align 4, !tbaa !41, !noalias !236
  %i.hj = load float, ptr %i.fm, align 4, !tbaa !41, !noalias !236
  %i.hk = sitofp i32 %i.hc to float
  %i.hl = fmul float %i.hb, %i.hk                 ; 2 uses
  %i.hm = fmul float %i.hb, %i.hf                 ; 2 uses
  %i.hn = fmul float %i.hb, %i.hg                 ; 2 uses
  %i.ho = call float @llvm.fmuladd.f32(float %i.gy, float %i.hl, float 0.000000e+00)
  %i.hp = call float @llvm.fmuladd.f32(float %i.gz, float %i.hm, float %i.ho)
  %i.hq = call float @llvm.fmuladd.f32(float %i.ha, float %i.hn, float %i.hp)
  %i.hr = load <4 x float>, ptr %i.fj, align 4, !noalias !92 ; 4 uses
  %i.hs = shufflevector <4 x float> %i.hr, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ht = insertelement <2 x float> %i.hs, float %i.hh, i64 1
  %i.hu = insertelement <2 x float> poison, float %i.hl, i64 0
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ht, <2 x float> %i.hv, <2 x float> zeroinitializer)
  %i.hx = shufflevector <4 x float> %i.hr, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hy = insertelement <2 x float> %i.hx, float %i.hi, i64 1
  %i.hz = insertelement <2 x float> poison, float %i.hm, i64 0
  %i.ia = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ib = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.ia, <2 x float> %i.hw)
  %i.ic = shufflevector <4 x float> %i.hr, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.id = insertelement <2 x float> %i.ic, float %i.hj, i64 1
  %i.ie = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.if = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ig = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.if, <2 x float> %i.ib)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.fk, i64 12, i1 false)
  %.sroa.811.0.copyload.i = load float, ptr %.sroa.811.0..sroa_idx.i, align 4, !noalias !237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.08.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.0..sroa_idx.i, i64 16, i1 false)
  %i.ih = fadd float %.sroa.4.0.copyload.i, %i.hq
  %i.ii = shufflevector <4 x float> %i.hr, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.ij = insertelement <2 x float> %i.ii, float %.sroa.811.0.copyload.i, i64 1
  %i.ik = fadd <2 x float> %i.ig, %i.ij           ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.il, ptr noundef nonnull align 4 dereferenceable(12) %35, i64 12, i1 false)
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 48
  store float %i.ih, ptr %.sroa.08.sroa.5.0..sroa_idx, align 4
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.fj, i64 12, i1 false)
  %.sroa.08.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 64
  %i.im = extractelement <2 x float> %i.ik, i64 0
  store float %i.im, ptr %.sroa.08.sroa.7.0..sroa_idx, align 4
  %.sroa.08.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 80
  %i.in = extractelement <2 x float> %i.ik, i64 1
  store float %i.in, ptr %.sroa.08.sroa.9.0..sroa_idx, align 4
  %i.io = load i32, ptr %2, align 4, !tbaa !29    ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 32 ; 2 uses
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !98
  %i.iq = load i32, ptr %i.fn, align 8, !tbaa !99 ; 3 uses
  %i.ir = icmp slt i32 %i.iq, 3
  br i1 %i.ir, label %56, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %.noexc147 unwind label %bb.be

.noexc147:                                        ; preds = %bb.ay
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.10, i32 noundef 109) #22
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %.noexc147
  unreachable

bb.ba:                                            ; preds = %.noexc147
  %i.is = landingpad { ptr, i32 }
          cleanup
  %i.it = load ptr, ptr %22, align 8, !tbaa !26   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ba
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !27
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %.body148

56:                                               ; preds = %bb.ax
  %or.cond.not = icmp eq i32 %i.iq, 2
  br i1 %or.cond.not, label %57, label %.thread.i

57:                                               ; preds = %56
  %58 = load i32, ptr %i.fo, align 4, !tbaa !29
  br label %bb.bb

.thread.i:                                        ; preds = %56
  %59 = icmp sgt i32 %i.iq, -1
  %60 = zext i1 %59 to i32
  br label %bb.bb

bb.bb:                                            ; preds = %.thread.i, %57
  %61 = phi i32 [ %58, %57 ], [ %60, %.thread.i ]
  %.not = icmp slt i32 %i.io, %61
  br i1 %.not, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iy = shl nsw i32 %i.io, 1
  %i.iz = sext i32 %i.iy to i64
  invoke void @_ZN2cv3Mat6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %i.y, i64 noundef %i.iz)
          to label %._crit_edge269 unwind label %bb.bf

._crit_edge269:                                   ; preds = %bb.bc
  %.pre = load i32, ptr %2, align 4, !tbaa !29
  br label %bb.bg

bb.bd:                                            ; preds = %bb.aw
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %.body148

bb.be:                                            ; preds = %bb.ay
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body148

bb.bf:                                            ; preds = %bb.bc
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %.body148

bb.bg:                                            ; preds = %._crit_edge269, %bb.bb
  %i.jd = phi i32 [ %.pre, %._crit_edge269 ], [ %i.io, %bb.bb ]
  %i.je = add nsw i32 %i.jd, 1
  store i32 %i.je, ptr %2, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  %i.jf = load i32, ptr %i.ip, align 4, !tbaa !98 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21, !noalias !238
  %i.jg = add nsw i32 %i.jf, 1
  store i32 %i.jf, ptr %20, align 4, !tbaa !64, !noalias !238
  store i32 %i.jg, ptr %i.fp, align 4, !tbaa !65, !noalias !238
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21, !noalias !238
  store i64 9223372034707292160, ptr %21, align 8, !noalias !238
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %50, ptr noundef nonnull align 8 dereferenceable(208) %i.y, ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef nonnull align 4 dereferenceable(8) %21)
          to label %bb.bh unwind label %bb.cc

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21, !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21, !noalias !238
  %i.jh = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %50)
          to label %.noexc151.a unwind label %.loopexit

.noexc151.a:                                      ; preds = %bb.bh
  br i1 %i.jh, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %.noexc151.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @"__func__._ZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_27integrateHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_4MatxIfLi4ELi4EEERiiibRKNS_11_InputArrayESE_RKNS_17_InputOutputArrayERSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISJ_ESaISt4pairIKSJ_SK_EEEE3$_3EEvRKT0_", ptr noundef nonnull @.str.14, i32 noundef 722) #22
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  unreachable

bb.bl:                                            ; preds = %bb.bi
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

bb.bm:                                            ; preds = %bb.bj
  %i.jj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jk = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bm
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !27
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.bl
  %.pn8.i.i = phi { ptr, i32 } [ %i.ji, %bb.bl ], [ %i.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.jj, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %.body154

bb.bn:                                            ; preds = %.noexc151.a
  %i.jp = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %50)
          to label %.noexc152.a unwind label %.loopexit

.noexc152.a:                                      ; preds = %bb.bn
  %i.jq = load i32, ptr %i.fr, align 4, !tbaa !100
  %i.jr = add nsw i32 %i.jq, -1                   ; 2 uses
  %i.js = load i32, ptr %i.fq, align 8, !tbaa !99
  %narrow.i.i.i = call i32 @llvm.smax.i32(i32 %i.js, i32 1)
  %i.jt = icmp ult i32 %i.jr, %narrow.i.i.i
  br i1 %i.jt, label %_ZN2cv8MatShapeixEm.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %.noexc152.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc153 unwind label %.loopexit.split-lp

.noexc153:                                        ; preds = %bb.bo
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.10, i32 noundef 97) #22
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %.noexc153
  unreachable

bb.bq:                                            ; preds = %.noexc153
  %i.ju = landingpad { ptr, i32 }
          cleanup
  %i.jv = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bq
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !27
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.body154

_ZN2cv8MatShapeixEm.exit.i.i:                     ; preds = %.noexc152.a
  %i.ka = zext nneg i32 %i.jr to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !29
  %i.kd = sext i32 %i.kc to i64
  %i.ke = udiv i64 %i.jp, %i.kd
  %i.kf = icmp ult i64 %i.ke, 2147483648
  br i1 %i.kf, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %_ZN2cv8MatShapeixEm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.bs unwind label %bb.bu

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @"__func__._ZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_27integrateHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_4MatxIfLi4ELi4EEERiiibRKNS_11_InputArrayESE_RKNS_17_InputOutputArrayERSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISJ_ESaISt4pairIKSJ_SK_EEEE3$_3EEvRKT0_", ptr noundef nonnull @.str.14, i32 noundef 723) #22
          to label %bb.bt unwind label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  unreachable

bb.bu:                                            ; preds = %bb.br
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

bb.bv:                                            ; preds = %bb.bs
  %i.kh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ki = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.kk = icmp eq ptr %i.ki, %i.kj
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i: ; preds = %bb.bv
  %i.kl = load i64, ptr %i.kj, align 8, !tbaa !27
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.km) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i, %bb.bu
  %.pn.i.i = phi { ptr, i32 } [ %i.kg, %bb.bu ], [ %i.kh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i ], [ %i.kh, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %.body154

bb.bw:                                            ; preds = %_ZN2cv8MatShapeixEm.exit.i.i
  %i.kn = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %50)
          to label %.noexc156.a unwind label %.loopexit

.noexc156.a:                                      ; preds = %bb.bw
  %i.ko = load i32, ptr %i.fr, align 4, !tbaa !100
  %i.kp = add nsw i32 %i.ko, -1                   ; 2 uses
  %i.kq = load i32, ptr %i.fq, align 8, !tbaa !99
  %narrow.i14.i.i = call i32 @llvm.smax.i32(i32 %i.kq, i32 1)
  %i.kr = icmp ult i32 %i.kp, %narrow.i14.i.i
  br i1 %i.kr, label %_ZN2cv8MatShapeixEm.exit19.i.i, label %bb.bx

bb.bx:                                            ; preds = %.noexc156.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc157 unwind label %.loopexit.split-lp

.noexc157:                                        ; preds = %bb.bx
end_hunk_0
