Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmap?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN9ClientMap22invalidateMapBlockMeshEP12MapBlockMesh:bb.a
  %.pre.i = load ptr, ptr %i.dg, align 8, !tbaa !53 ; 2 uses
  %.pre9.i = load ptr, ptr %i.di, align 8, !tbaa !54
  %i.dk = icmp eq ptr %.pre9.i, %.pre.i
  br i1 %i.dk, label %_ZN16CachedMeshBuffer4dropEv.exit, label %_ZSt8_DestroyIPPN5scene11IMeshBufferES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPPN5scene11IMeshBufferES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge.i
  store ptr %.pre.i, ptr %i.di, align 8, !tbaa !54
  br label %_ZN16CachedMeshBuffer4dropEv.exit

.lr.ph.i33:                                       ; preds = %"_ZZN9ClientMap22invalidateMapBlockMeshEP12MapBlockMeshENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit", %_ZNK17IReferenceCounted4dropEv.exit.i
  %.sroa.04.08.i = phi ptr [ %i.dw, %_ZNK17IReferenceCounted4dropEv.exit.i ], [ %i.dh, %"_ZZN9ClientMap22invalidateMapBlockMeshEP12MapBlockMeshENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit" ] ; 2 uses
  %i.dl = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !56 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !58
  %i.dn = getelementptr i8, ptr %i.dm, i64 -24
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 %i.do ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !60
  %i.ds = add nsw i32 %i.dr, -1                   ; 2 uses
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !60
  %.not.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i, label %bb.w, label %_ZNK17IReferenceCounted4dropEv.exit.i

bb.w:                                             ; preds = %.lr.ph.i33
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !58
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(12) %i.dp) #2, !inline_history !3
  br label %_ZNK17IReferenceCounted4dropEv.exit.i

_ZNK17IReferenceCounted4dropEv.exit.i:            ; preds = %bb.w, %.lr.ph.i33
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i34 = icmp eq ptr %i.dw, %i.dj
  br i1 %.not.i34, label %._crit_edge.i, label %.lr.ph.i33

_ZN16CachedMeshBuffer4dropEv.exit:                ; preds = %_ZSt8_DestroyIPPN5scene11IMeshBufferES2_EvT_S4_RSaIT0_E.exit.i.i.i, %._crit_edge.i, %"_ZZN9ClientMap22invalidateMapBlockMeshEP12MapBlockMeshENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit"
  %i.dx = load i64, ptr %i.bx, align 8, !tbaa !169
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.039.0133, i64 72
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !254
  %i.ea = urem i64 %i.dz, %i.dx                   ; 2 uses
  %i.eb = load ptr, ptr %i.bo, align 8, !tbaa !168
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !252
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %_ZN16CachedMeshBuffer4dropEv.exit
  %.0.i.i.i.i = phi ptr [ %i.ed, %_ZN16CachedMeshBuffer4dropEv.exit ], [ %i.ee, %bb.x ] ; 2 uses
  %i.ee = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !243 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ee, %.sroa.039.0133
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5eraseENSB_14_Node_iteratorIS9_Lb0ELb1EEE.exit.i, label %bb.x, !llvm.loop !17

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5eraseENSB_14_Node_iteratorIS9_Lb0ELb1EEE.exit.i: ; preds = %bb.x
  %i.ef = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSB_15_Hash_node_baseEPNSB_10_Hash_nodeIS9_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i64 noundef %i.ea, ptr noundef nonnull %.0.i.i.i.i, ptr noundef nonnull %.sroa.039.0133)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit unwind label %bb.y

bb.y:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5eraseENSB_14_Node_iteratorIS9_Lb0ELb1EEE.exit.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit71

.loopexit:                                        ; preds = %.lr.ph.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.thread.i, %bb.n
  %i.eh = load ptr, ptr %.sroa.039.0133, align 8, !tbaa !243
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5eraseENSB_14_Node_iteratorIS9_Lb0ELb1EEE.exit.i, %.loopexit
  %.sroa.039.1 = phi ptr [ %i.eh, %.loopexit ], [ %i.ef, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5eraseENSB_14_Node_iteratorIS9_Lb0ELb1EEE.exit.i ] ; 2 uses
  %.not68 = icmp eq ptr %.sroa.039.1, null
  br i1 %.not68, label %.loopexit69, label %bb.n, !llvm.loop !891

.loopexit69:                                      ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit, %bb.m, %._crit_edge.1
  %.not.i.i.i36 = icmp eq ptr %.sroa.0.1.lcssa.1, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %.loopexit69
  %i.ei = ptrtoint ptr %.sroa.16.1.lcssa.1 to i64
  %i.ej = ptrtoint ptr %.sroa.0.1.lcssa.1 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1.lcssa.1, i64 noundef %i.ek) #34
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit

_ZNSt6vectorIPvSaIS0_EED2Ev.exit:                 ; preds = %.loopexit69, %bb.z
  call void @_ZNSt5arrayISt13unordered_mapIN5video9SMaterialESt6vectorISt4pairIN4core8vector3dIsEEPN5scene11IMeshBufferEESaISB_EESt4hashIS2_ESt8equal_toIS2_ESaIS4_IKS2_SD_EEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %2) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  ret void

.loopexit71:                                      ; preds = %.loopexit71.loopexit, %.loopexit71.loopexit.split-lp, %.loopexit.split-lp, %bb.y
  %.sroa.0.3 = phi ptr [ %.sroa.0.1.lcssa.1, %bb.y ], [ %.sroa.0.2100.lcssa, %.loopexit.split-lp ], [ %.sroa.0.2100, %.loopexit71.loopexit ], [ %.sroa.0.2100.1, %.loopexit71.loopexit.split-lp ] ; 3 uses
  %.sroa.16.3 = phi ptr [ %.sroa.16.1.lcssa.1, %bb.y ], [ %.sroa.16.2102.lcssa, %.loopexit.split-lp ], [ %.sroa.16.2102, %.loopexit71.loopexit ], [ %.sroa.16.2102.1, %.loopexit71.loopexit.split-lp ]
  %.pn25 = phi { ptr, i32 } [ %i.eg, %bb.y ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit148, %.loopexit71.loopexit ], [ %lpad.loopexit.split-lp149, %.loopexit71.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit38, label %bb.aa

bb.aa:                                            ; preds = %.loopexit71
  %i.el = ptrtoint ptr %.sroa.16.3 to i64
  %i.em = ptrtoint ptr %.sroa.0.3 to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3, i64 noundef %i.en) #34
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit38

_ZNSt6vectorIPvSaIS0_EED2Ev.exit38:               ; preds = %bb.aa, %.loopexit71, %bb.d
  %.pn25.pn = phi { ptr, i32 } [ %i.t, %bb.d ], [ %.pn25, %.loopexit71 ], [ %.pn25, %bb.aa ]
  call void @_ZNSt5arrayISt13unordered_mapIN5video9SMaterialESt6vectorISt4pairIN4core8vector3dIsEEPN5scene11IMeshBufferEESaISB_EESt4hashIS2_ESt8equal_toIS2_ESaIS4_IKS2_SD_EEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %2) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  resume { ptr, i32 } %.pn25.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ClientMap23getBackgroundBrightnessEfjiPb(ptr noundef nonnull align 8 dereferenceable(656) %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.core::vector3d", align 4    ; 6 uses
  %8 = alloca %"class.core::CMatrix4", align 16   ; 16 uses
  %9 = alloca %"class.core::vector3d", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #2
  %i.b = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #2
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i64 27, ptr %i.a, align 8, !tbaa !178
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %6, align 8, !tbaa !64
  %i.e = load i64, ptr %i.a, align 8, !tbaa !178  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.d, ptr noundef nonnull align 1 dereferenceable(27) @.str.33, i64 27, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !176
  %i.g = load ptr, ptr %6, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %5, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %.noexc
  %i.i = load ptr, ptr %6, align 8, !tbaa !64     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.c, align 8, !tbaa !65
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #2
  %i.m = load float, ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE12z_directions, align 16, !tbaa !481
  %i.n = fcmp nsz olt float %i.m, -9.900000e+01
  br i1 %i.n, label %.preheader, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

bb.b:                                             ; preds = %.noexc.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.c:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %6, align 8, !tbaa !64     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !65
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.b ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %i.p, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #2
  br label %bb.aj

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.u = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef -100, i32 noundef 100)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %.preheader
  %i.v = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef -100, i32 noundef 100)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %i.x = insertelement <2 x i32> %i.w, i32 %i.v, i64 1
  %i.y = sitofp <2 x i32> %i.x to <2 x double>
  %i.z = fmul nnan nsz <2 x double> %i.y, <double 2.000000e-02, double 1.000000e-02>
  %i.aa = fptrunc <2 x double> %i.z to <2 x float> ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = call nsz float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float 1.000000e+00)
  %i.ad = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ae = call nsz float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.ac)
  %i.af = fpext nsz float %i.ae to double
  %i.ag = call nsz double @llvm.sqrt.f64(double %i.af)
  %i.ah = fdiv nsz double 1.000000e+00, %i.ag     ; 2 uses
  %i.ai = fpext nnan <2 x float> %i.aa to <2 x double>
  %10 = insertelement <2 x double> poison, double %i.ah, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = fmul nsz <2 x double> %11, %i.ai          ; 2 uses
  %13 = extractelement <2 x double> %12, i64 1
  %i.aj = fptrunc nsz double %13 to float
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE12z_directions, i64 %indvars.iv ; 2 uses
  %i.al = insertelement <2 x double> %12, double %i.ah, i64 1
  %i.am = fptrunc <2 x double> %i.al to <2 x float>
  store <2 x float> %i.am, ptr %i.ak, align 4, !tbaa !82
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store float %i.aj, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !82
  %i.an = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef 0, i32 noundef 100)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ao = sitofp nsz i32 %i.an to double
  %i.ap = fmul nnan nsz double %i.ao, 1.000000e-02
  %i.aq = fptrunc nsz double %i.ap to float
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE9z_offsets, i64 %indvars.iv
  store float %i.aq, ptr %i.ar, align 4, !tbaa !82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond.not, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %.preheader, !llvm.loop !893

bb.g:                                             ; preds = %bb.d, %.preheader
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit118

bb.h:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit118

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = fpext nsz float %1 to double            ; 2 uses
  %i.av = fmul nsz double %i.au, 8.000000e-01
  %i.aw = fptrunc nsz double %i.av to float       ; 2 uses
  %i.ax = fcmp nsz ogt float %i.aw, 3.500000e+02
  %spec.store.select = select i1 %i.ax, float 3.500000e+02, float %i.aw
  %i.ay = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #38
          to label %_ZNSt6vectorIiSaIiEE7reserveEm.exit unwind label %.thread156 ; 3 uses

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 200
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bn = fcmp nsz ogt float %1, 3.500000e+02
  %i.bo = fdiv nnan nsz float %1, 3.500000e+01
  %i.bp = fmul nnan nsz float %i.bo, 1.500000e+00
  %.085 = select nsz i1 %i.bn, float %i.bp, float 1.500000e+01 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.bs = sub i32 1000, %2                        ; 2 uses
  %i.bt = insertelement <2 x float> poison, float %.085, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.i

.thread156:                                       ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit118

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %bb.x
  %indvars.iv220 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %indvars.iv.next221, %bb.x ] ; 3 uses
  %.074200 = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %spec.select146.ph, %bb.x ] ; 2 uses
  %.sroa.24.0198 = phi ptr [ %i.az, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.24.1.ph, %bb.x ] ; 5 uses
  %.sroa.15.0197 = phi ptr [ %i.ay, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.15.1.ph, %bb.x ] ; 4 uses
  %.sroa.0122.0196 = phi ptr [ %i.ay, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.0122.1.ph, %bb.x ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE12z_directions, i64 %indvars.iv220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false), !tbaa.struct !501
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.ba, i8 0, i64 56, i1 false)
  store float 1.000000e+00, ptr %i.bb, align 4, !tbaa !82
  store float 1.000000e+00, ptr %i.bc, align 8, !tbaa !82
  store float 1.000000e+00, ptr %i.bd, align 4, !tbaa !82
  store float 1.000000e+00, ptr %8, align 16, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #2
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %9, align 8, !tbaa !82
  store float 0.000000e+00, ptr %i.be, align 8, !tbaa !483
  %i.bx = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE17buildRotateFromToERKNS_8vector3dIfEES5_(ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %7)
          to label %bb.j unwind label %bb.q       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #2
  %i.by = load <4 x float>, ptr %8, align 16
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ca = load <4 x float>, ptr %i.bh, align 16
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cc = load <4 x float>, ptr %i.bj, align 16
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ce = load float, ptr %i.ba, align 4, !tbaa !82
  %i.cf = load float, ptr %i.bd, align 4, !tbaa !82
  %i.cg = load float, ptr %i.bk, align 4, !tbaa !82
  %i.ch = load float, ptr %i.bl, align 8, !tbaa !82
  %i.ci = load float, ptr %i.bm, align 8, !tbaa !82
  %i.cj = load float, ptr %i.bc, align 8, !tbaa !82
  %i.ck = load float, ptr %i.bf, align 4, !tbaa !481 ; 2 uses
  %i.cl = load float, ptr %i.bg, align 8, !tbaa !482 ; 2 uses
  %i.cm = load float, ptr %i.bi, align 4, !tbaa !483 ; 2 uses
  %i.cn = fmul nsz float %i.cl, %i.cf
  %i.co = call nsz float @llvm.fmuladd.f32(float %i.ck, float %i.ce, float %i.cn)
  %i.cp = call nsz float @llvm.fmuladd.f32(float %i.cm, float %i.cg, float %i.co) ; 4 uses
  %i.cq = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = insertelement <2 x float> %i.cb, float %i.ci, i64 1
  %i.ct = fmul nsz <2 x float> %i.cr, %i.cs
  %i.cu = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = insertelement <2 x float> %i.bz, float %i.ch, i64 1
  %i.cx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.cw, <2 x float> %i.ct)
  %i.cy = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = insertelement <2 x float> %i.cd, float %i.cj, i64 1
  %i.db = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.da, <2 x float> %i.cx) ; 4 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE9z_offsets, i64 %indvars.iv220
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !82
  %i.de = fmul nsz float %.085, %i.dd
  %i.df = fpext nsz float %i.de to double
  %i.dg = call nsz double @llvm.fmuladd.f64(double %i.au, double 6.000000e-01, double %i.df)
  %i.dh = fptrunc nsz double %i.dg to float       ; 3 uses
  %i.di = load ptr, ptr %i.br, align 8, !tbaa !566
  %i.dj = fmul nsz float %i.cp, %i.cp
  %i.dk = extractelement <2 x float> %i.db, i64 0 ; 2 uses
  %i.dl = call nsz float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.dj)
  %i.dm = extractelement <2 x float> %i.db, i64 1 ; 2 uses
  %i.dn = call nsz float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %i.dl) ; 2 uses
  %i.do = fcmp nsz oeq float %i.dn, 0.000000e+00
  br i1 %i.do, label %_ZN4core8vector3dIfE9normalizeEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = fpext nsz float %i.dn to double
  %i.dq = call nsz double @llvm.sqrt.f64(double %i.dp)
  %i.dr = fdiv nsz double 1.000000e+00, %i.dq     ; 2 uses
  %i.ds = fpext <2 x float> %i.db to <2 x double>
  %i.dt = fpext nsz float %i.cp to double
  %i.du = fmul nsz double %i.dr, %i.dt
  %i.dv = fptrunc nsz double %i.du to float
  %i.dw = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = fmul nsz <2 x double> %i.dx, %i.ds
  %i.dz = fptrunc <2 x double> %i.dy to <2 x float>
  br label %_ZN4core8vector3dIfE9normalizeEv.exit.i

_ZN4core8vector3dIfE9normalizeEv.exit.i:          ; preds = %bb.k, %bb.j
  %.sroa.0183.4.vec.extract193.pre-phi.i = phi float [ %i.cp, %bb.j ], [ %i.dv, %bb.k ] ; 3 uses
  %i.ea = phi <2 x float> [ %i.db, %bb.j ], [ %i.dz, %bb.k ] ; 4 uses
  %.sroa.0169.0.copyload.i = load <2 x float>, ptr %i.bq, align 8, !tbaa !82 ; 2 uses
  %.sroa.14.0.copyload.i = load float, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !82
  %i.eb = fmul nsz float %.sroa.0183.4.vec.extract193.pre-phi.i, %i.dh
  %.sroa.0169.4.vec.extract.i = extractelement <2 x float> %.sroa.0169.0.copyload.i, i64 1 ; 3 uses
  %i.ec = fadd nsz float %i.eb, %.sroa.0169.4.vec.extract.i ; 3 uses
  %i.ed = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fmul nsz <2 x float> %i.ea, %i.ee
  %i.eg = insertelement <2 x float> %.sroa.0169.0.copyload.i, float %.sroa.14.0.copyload.i, i64 1 ; 3 uses
  %i.eh = fadd nsz <2 x float> %i.ef, %i.eg       ; 4 uses
  %.sroa.0169.4.vec.insert.i = insertelement <2 x float> %i.eh, float %i.ec, i64 1
  %i.ei = fcmp nsz ogt float %.sroa.0169.4.vec.extract.i, 0.000000e+00
  %i.ej = select nsz i1 %i.ei, float 5.000000e+00, float -5.000000e+00
  %i.ek = fadd nsz float %.sroa.0169.4.vec.extract.i, %i.ej
  %i.el = fdiv nsz float %i.ek, 1.000000e+01
  %i.em = fptosi float %i.el to i16
  %i.en = fcmp nsz ogt <2 x float> %i.eg, zeroinitializer
  %i.eo = select <2 x i1> %i.en, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.ep = fadd nsz <2 x float> %i.eg, %i.eo
  %i.eq = fdiv nsz <2 x float> %i.ep, splat (float 1.000000e+01)
  %.sroa.2.0.insert.ext.i.i = zext i16 %i.em to i48
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i, 16
  %i.er = fptosi <2 x float> %i.eq to <2 x i16>   ; 2 uses
  %i.es = extractelement <2 x i16> %i.er, i64 1
  %i.et = zext i16 %i.es to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %i.et, 32
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %i.eu = extractelement <2 x i16> %i.er, i64 0
  %i.ev = zext i16 %i.eu to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %i.ev
  %i.ew = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.i, ptr noundef null)
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit

.noexc107:                                        ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.di, i64 336 ; 2 uses
  %i.ey = and i32 %i.ew, 65535
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ez
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.fa, align 1, !tbaa !65
  %i.fb = and i8 %.sroa.0.0.copyload.i.i.i, 80
  %.0107.i = icmp eq i8 %i.fb, 16
  %i.fc = fcmp nsz ogt <2 x float> %i.eh, zeroinitializer
  %i.fd = fcmp nsz ogt float %i.ec, 0.000000e+00
  %i.fe = select nsz i1 %i.fd, float 5.000000e+00, float -5.000000e+00
  %i.ff = fadd nsz float %i.ec, %i.fe
  %i.fg = fdiv nsz float %i.ff, 1.000000e+01
  %i.fh = fptosi float %i.fg to i16
end_hunk_0
begin_hunk_1_@_ZN5video9SMaterialC2ERKS0_:bb.a
  store ptr %i.ci, ptr %i.cc, align 8, !tbaa !642
  br label %bb.l

bb.l:                                             ; preds = %.noexc.3, %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.cl = load i16, ptr %i.ck, align 8
  %i.cm = and i16 %i.cl, 15
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.co = load i16, ptr %i.cn, align 8
  %i.cp = and i16 %i.co, -16
  %i.cq = or disjoint i16 %i.cp, %i.cm            ; 2 uses
  store i16 %i.cq, ptr %i.cn, align 8
  %i.cr = load i16, ptr %i.ck, align 8
  %i.cs = and i16 %i.cr, 240
  %i.ct = and i16 %i.cq, -241
  %i.cu = or disjoint i16 %i.ct, %i.cs            ; 2 uses
  store i16 %i.cu, ptr %i.cn, align 8
  %i.cv = load i16, ptr %i.ck, align 8
  %i.cw = and i16 %i.cv, 3840
  %i.cx = and i16 %i.cu, -3841
  %i.cy = or disjoint i16 %i.cx, %i.cw
  store i16 %i.cy, ptr %i.cn, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.db = load <4 x i8>, ptr %i.cz, align 2, !tbaa !65
  store <4 x i8> %i.db, ptr %i.da, align 2, !tbaa !65
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit.3

_ZN5video14SMaterialLayerC2ERKS0_.exit.3:         ; preds = %bb.l, %_ZN5video14SMaterialLayerC2ERKS0_.exit.2
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(31) %i.dc, ptr noundef nonnull align 8 dereferenceable(31) %i.dd, i64 31, i1 false)
  ret void

.preheader.preheader:                             ; preds = %bb.e, %bb.h, %bb.k
  %.lcssa.ph = phi ptr [ %i.cb, %bb.k ], [ %i.ba, %bb.h ], [ %i.z, %bb.e ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN5video14SMaterialLayerD2Ev.exit
  %i.de = phi ptr [ %i.df, %_ZN5video14SMaterialLayerD2Ev.exit ], [ %.lcssa.ph, %.preheader.preheader ] ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -24 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !642 ; 2 uses
  %.not.i = icmp eq ptr %i.dh, null
  br i1 %.not.i, label %_ZN5video14SMaterialLayerD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.preheader
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 64) #34
  br label %_ZN5video14SMaterialLayerD2Ev.exit

_ZN5video14SMaterialLayerD2Ev.exit:               ; preds = %.preheader, %bb.m
  %i.di = icmp eq ptr %i.df, %0
  br i1 %i.di, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN5video14SMaterialLayerD2Ev.exit
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5video9SMaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !642  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5video14SMaterialLayerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #34
  br label %_ZN5video14SMaterialLayerD2Ev.exit

_ZN5video14SMaterialLayerD2Ev.exit:               ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !642  ; 2 uses
  %.not.i.1 = icmp eq ptr %i.d, null
  br i1 %.not.i.1, label %_ZN5video14SMaterialLayerD2Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #34
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1

_ZN5video14SMaterialLayerD2Ev.exit.1:             ; preds = %bb.c, %_ZN5video14SMaterialLayerD2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !642  ; 2 uses
  %.not.i.2 = icmp eq ptr %i.f, null
  br i1 %.not.i.2, label %_ZN5video14SMaterialLayerD2Ev.exit.2, label %bb.d

bb.d:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 64) #34
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2

_ZN5video14SMaterialLayerD2Ev.exit.2:             ; preds = %bb.d, %_ZN5video14SMaterialLayerD2Ev.exit.1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !642  ; 2 uses
  %.not.i.3 = icmp eq ptr %i.h, null
  br i1 %.not.i.3, label %_ZN5video14SMaterialLayerD2Ev.exit.3, label %bb.e

bb.e:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 64) #34
  br label %_ZN5video14SMaterialLayerD2Ev.exit.3

_ZN5video14SMaterialLayerD2Ev.exit.3:             ; preds = %bb.e, %_ZN5video14SMaterialLayerD2Ev.exit.2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap20updateDrawListShadowEN4core8vector3dIfEES2_ff(ptr noundef nonnull align 8 dereferenceable(656) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, float noundef %5, float noundef %6) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2
  %i.e = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #2
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.f, ptr %8, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #2
  store i64 26, ptr %i.d, align 8, !tbaa !178
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.g, ptr %8, align 8, !tbaa !64
  %i.h = load i64, ptr %i.d, align 8, !tbaa !178  ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.g, ptr noundef nonnull align 1 dereferenceable(26) @.str.38, i64 26, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !176
  %i.j = load ptr, ptr %8, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #2
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %7, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %.noexc
  %i.l = load ptr, ptr %8, align 8, !tbaa !64     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.f
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.n = load i64, ptr %i.f, align 8, !tbaa !65
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !165  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 9 uses
  %.not8.i = icmp eq ptr %i.r, %i.s
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !164
  invoke void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef %i.u)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #35
  unreachable

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !206
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 22 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !239
  %i.ab = add i16 %i.aa, -1
  store i16 %i.ab, ptr %i.z, align 2, !tbaa !239
  %i.ac = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.05.09.i) #37 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, %i.s
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.c:                                             ; preds = %._crit_edge.i
  store ptr null, ptr %i.t, align 8, !tbaa !164
  store ptr %i.s, ptr %i.q, align 8, !tbaa !165
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %i.s, ptr %i.ad, align 8, !tbaa !166
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !167
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0173.0206 = load ptr, ptr %i.af, align 8, !tbaa !243 ; 2 uses
  %.not194207 = icmp eq ptr %.sroa.0173.0206, null
  br i1 %.not194207, label %.noexc.i93, label %.lr.ph211

.lr.ph211:                                        ; preds = %bb.c
  %.sroa.0177.0.vec.extract = extractelement <2 x float> %3, i64 0
  br label %bb.f

.noexc.i93.loopexit:                              ; preds = %.loopexit
  %i.ag = uitofp nsz i32 %.470 to float
  %i.ah = uitofp nsz i32 %.165 to float
  br label %.noexc.i93

.noexc.i93:                                       ; preds = %.noexc.i93.loopexit, %bb.c
  %.066.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.ag, %.noexc.i93.loopexit ]
  %.064.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.ah, %.noexc.i93.loopexit ]
  %i.ai = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #2
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.aj, ptr %9, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #2
  store i64 35, ptr %i.c, align 8, !tbaa !178
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc94 unwind label %bb.ad  ; 3 uses

.noexc94:                                         ; preds = %.noexc.i93
  store ptr %i.ak, ptr %9, align 8, !tbaa !64
  %i.al = load i64, ptr %i.c, align 8, !tbaa !178 ; 3 uses
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.ak, ptr noundef nonnull align 1 dereferenceable(35) @.str.39, i64 35, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !176
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  store i8 0, ptr %i.an, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #2
  invoke void @_ZN8Profiler3avgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %9, float noundef %.066.lcssa)
          to label %bb.aa unwind label %bb.ae

bb.d:                                             ; preds = %.noexc.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.e:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %8, align 8, !tbaa !64    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.e
  %i.as = load i64, ptr %i.f, align 8, !tbaa !65
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.d ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %i.ap, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #2
  br label %bb.aj

bb.f:                                             ; preds = %.lr.ph211, %.loopexit
  %.sroa.0173.0210 = phi ptr [ %.sroa.0173.0206, %.lr.ph211 ], [ %.sroa.0173.0, %.loopexit ] ; 2 uses
  %.064209 = phi i32 [ 0, %.lr.ph211 ], [ %.165, %.loopexit ] ; 2 uses
  %.066208 = phi i32 [ 0, %.lr.ph211 ], [ %.470, %.loopexit ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0173.0210, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !256 ; 3 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !602
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add i32 %.064209, %i.ay                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.0169.0202 = load ptr, ptr %i.ba, align 8, !tbaa !243 ; 2 uses
  %.not195203 = icmp eq ptr %.sroa.0169.0202, null
  br i1 %.not195203, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.thread
  %.sroa.0169.0205 = phi ptr [ %.sroa.0169.0, %.thread ], [ %.sroa.0169.0202, %bb.g ] ; 2 uses
  %.167204 = phi i32 [ %.369, %.thread ], [ %.066208, %bb.g ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0169.0205, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !241 ; 6 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !445 ; 4 uses
  %.not83 = icmp eq ptr %i.bd, null
  br i1 %.not83, label %.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.0.0.copyload.i = load i48, ptr %i.be, align 8, !tbaa !162 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.bf = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.bg = fmul nnan nsz float %i.bf, 1.000000e+01
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 60
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.bh, align 4, !tbaa !82
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 68
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !82
  %i.bi = fadd nsz float %.sroa.22.0.copyload.i, %i.bg ; 2 uses
  %i.bj = bitcast i48 %.sroa.0.0.copyload.i to <3 x i16>
  %i.bk = shufflevector <3 x i16> %i.bj, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.bl = sitofp <2 x i16> %i.bk to <2 x float>
  %i.bm = fmul nnan nsz <2 x float> %i.bl, splat (float 1.000000e+01)
  %i.bn = fadd nsz <2 x float> %.sroa.01.0.copyload.i, %i.bm ; 3 uses
  %i.bo = fsub nsz <2 x float> %i.bn, %1          ; 2 uses
  %i.bp = fsub nsz float %i.bi, %2
  %foldExtExtBinop = fmul nsz <2 x float> %3, %i.bo
  %i.bq = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.br = extractelement <2 x float> %i.bo, i64 0
  %i.bs = call nsz float @llvm.fmuladd.f32(float %.sroa.0177.0.vec.extract, float %i.br, float %i.bq)
  %i.bt = call nsz noundef float @llvm.fmuladd.f32(float %4, float %i.bp, float %i.bs) ; 2 uses
  %i.bu = fmul nsz float %4, %i.bt
  %12 = insertelement <2 x float> poison, float %i.bt, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = fmul nsz <2 x float> %3, %13
  %15 = fadd nsz <2 x float> %1, %14              ; 2 uses
  %i.bv = fadd nsz float %2, %i.bu
  %foldExtExtBinop245 = fsub nsz <2 x float> %15, %i.bn
  %16 = extractelement <2 x float> %foldExtExtBinop245, i64 0 ; 2 uses
  %foldExtExtBinop247 = fsub nsz <2 x float> %15, %i.bn ; 2 uses
  %i.bw = fsub nsz float %i.bv, %i.bi             ; 2 uses
  %foldExtExtBinop249 = fmul nsz <2 x float> %foldExtExtBinop247, %foldExtExtBinop247
  %17 = extractelement <2 x float> %foldExtExtBinop249, i64 1
  %i.bx = call nsz float @llvm.fmuladd.f32(float %16, float %16, float %17)
  %i.by = call nsz float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.bx)
  %i.bz = call nsz noundef float @llvm.sqrt.f32(float %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !480
  %i.cc = fadd nsz float %5, %i.cb
  %i.cd = fcmp nsz ogt float %i.bz, %i.cc
  br i1 %i.cd, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = add i32 %.167204, 1                     ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store float 0.000000e+00, ptr %i.cf, align 8, !tbaa !603
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  %.sroa.0.0.copyload.i113 = load i48, ptr %i.cg, align 2, !tbaa !162 ; 3 uses
  %.sroa.0147.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i113 to i16 ; 5 uses
  %.sroa.6.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i113, 16
  %.sroa.6.0.extract.trunc = trunc i48 %.sroa.6.0.extract.shift to i16 ; 5 uses
  %.sroa.7.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i113, 32
  %.sroa.7.0.extract.trunc = trunc nuw i48 %.sroa.7.0.extract.shift to i16 ; 3 uses
  %i.ch = load ptr, ptr %i.t, align 8, !tbaa !164 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.ch, %bb.i ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.s, %bb.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !157 ; 2 uses
  %i.ck = icmp slt i16 %i.cj, %.sroa.0147.0.extract.trunc
  br i1 %i.ck, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cl = icmp eq i16 %i.cj, %.sroa.0147.0.extract.trunc
  br i1 %i.cl, label %bb.k, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 34
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !158 ; 2 uses
  %i.co = icmp slt i16 %i.cn, %.sroa.6.0.extract.trunc
  br i1 %i.co, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = icmp eq i16 %i.cn, %.sroa.6.0.extract.trunc
  br i1 %i.cp, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i: ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !159
  %i.cs = icmp slt i16 %i.cr, %.sroa.7.0.extract.trunc
  br i1 %i.cs, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.k, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.l, %bb.j
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.l ], [ %.014.i.i.i.i, %bb.j ], [ %.014.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ] ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !600 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !973

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %i.cu = icmp eq ptr %.19.i.i.i.i, %i.s
  br i1 %i.cu, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !157 ; 2 uses
  %i.cx = icmp sgt i16 %i.cw, %.sroa.0147.0.extract.trunc
  br i1 %i.cx, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cy = icmp eq i16 %i.cw, %.sroa.0147.0.extract.trunc
  br i1 %i.cy, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 34
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !158 ; 2 uses
  %i.db = icmp sgt i16 %i.da, %.sroa.6.0.extract.trunc
  br i1 %i.db, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = icmp eq i16 %i.da, %.sroa.6.0.extract.trunc
  br i1 %i.dc, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, label %.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i: ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !159
  %i.df = icmp sgt i16 %i.de, %.sroa.7.0.extract.trunc
  br i1 %i.df, label %.critedge.i, label %.thread

.critedge.i:                                      ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.o, %bb.m, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %bb.i
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.s, %bb.i ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ %.19.i.i.i.i, %bb.o ], [ %.19.i.i.i.i, %bb.m ]
  %i.dg = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %.noexc144 unwind label %bb.z  ; 7 uses

.noexc144:                                        ; preds = %.critedge.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 3 uses
  store i16 %.sroa.0147.0.extract.trunc, ptr %i.dh, align 8, !tbaa !162
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 34 ; 2 uses
  store i16 %.sroa.6.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !162
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 36 ; 2 uses
  store i16 %.sroa.7.0.extract.trunc, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !162
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store ptr %i.bc, ptr %i.di, align 8, !tbaa !206
  %i.dj = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 2 dereferenceable(6) %i.dh)
          to label %bb.q unwind label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.q:                                             ; preds = %.noexc144
  %i.dk = extractvalue { ptr, ptr } %i.dj, 1      ; 6 uses
  %.not.i143 = icmp eq ptr %i.dk, null
  br i1 %.not.i143, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dl = extractvalue { ptr, ptr } %i.dj, 0
  %.not.i.i.i = icmp ne ptr %i.dl, null
  %i.dm = icmp eq ptr %i.dk, %i.s
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.dm
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.do = load i16, ptr %i.dh, align 8, !tbaa !157 ; 2 uses
  %i.dp = load i16, ptr %i.dn, align 2, !tbaa !157 ; 2 uses
  %i.dq = icmp slt i16 %i.do, %i.dp
  br i1 %i.dq, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dr = icmp eq i16 %i.do, %i.dp
  br i1 %i.dr, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %bb.t
  %i.ds = load i16, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !158 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 34
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !158 ; 2 uses
  %i.dv = icmp slt i16 %i.ds, %i.du
  br i1 %i.dv, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = icmp eq i16 %i.ds, %i.du
  br i1 %i.dw, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %bb.v
  %i.dx = load i16, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !159
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 36
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !159
  %i.ea = icmp slt i16 %i.dx, %i.dz
  br label %.thread.i

.thread.i:                                        ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %i.eb = phi i1 [ false, %bb.t ], [ true, %bb.r ], [ true, %bb.u ], [ true, %bb.s ], [ false, %bb.v ], [ %i.ea, %bb.w ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.eb, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %i.s) #2
  %i.ec = load i64, ptr %i.ae, align 8, !tbaa !167
  %i.ed = add i64 %i.ec, 1
  store i64 %i.ed, ptr %i.ae, align 8, !tbaa !167
  br label %bb.y

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc144
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 48) #34
  br label %.body

bb.x:                                             ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 48) #34
  br label %bb.y

bb.y:                                             ; preds = %.thread.i, %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bc, i64 22 ; 2 uses
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !239
  %i.eh = add i16 %i.eg, 1
  store i16 %i.eh, ptr %i.ef, align 2, !tbaa !239
  br label %.thread

bb.z:                                             ; preds = %.critedge.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %bb.n, %bb.p, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.h, %bb.y, %.lr.ph
  %.369 = phi i32 [ %.167204, %.lr.ph ], [ %.167204, %bb.h ], [ %i.ce, %bb.y ], [ %i.ce, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %i.ce, %bb.p ], [ %i.ce, %bb.n ] ; 2 uses
  %.sroa.0169.0 = load ptr, ptr %.sroa.0169.0205, align 8, !tbaa !243 ; 2 uses
  %.not195 = icmp eq ptr %.sroa.0169.0, null
  br i1 %.not195, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.thread, %bb.g, %bb.f
  %.470 = phi i32 [ %.066208, %bb.f ], [ %.066208, %bb.g ], [ %.369, %.thread ] ; 2 uses
  %.165 = phi i32 [ %.064209, %bb.f ], [ %i.az, %bb.g ], [ %i.az, %.thread ] ; 2 uses
  %.sroa.0173.0 = load ptr, ptr %.sroa.0173.0210, align 8, !tbaa !243 ; 2 uses
  %.not194 = icmp eq ptr %.sroa.0173.0, null
  br i1 %.not194, label %.noexc.i93.loopexit, label %bb.f

bb.aa:                                            ; preds = %.noexc94
  %i.ej = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.aj
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.aa
  %i.el = load i64, ptr %i.aj, align 8, !tbaa !65
  %i.em = add i64 %i.el, 1
end_hunk_1
