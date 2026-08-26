Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_cluster_parser?download=true
inline.NumInlined: 4181
inline.NumDeleted: 2063
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN9grpc_core12_GLOBAL__N_116CdsResourceParseERKNS_15XdsResourceType13DecodeContextEPK31envoy_config_cluster_v3_Cluster:bb.a
          to label %bb.gt unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.sb = landingpad { ptr, i32 }
          catch ptr null
  %i.sc = extractvalue { ptr, i32 } %i.sb, 0
  call void @__clang_call_terminate(ptr %i.sc) #32
  unreachable

bb.gs:                                            ; preds = %bb.gl, %.body.i, %bb.gj
  %.pn196.i = phi { ptr, i32 } [ %i.rp, %bb.gl ], [ %.pn194.i, %.body.i ], [ %i.rn, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  br label %bb.gv

bb.gt:                                            ; preds = %bb.gq, %bb.gp, %bb.go, %bb.gn, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  %.pre.i360 = load ptr, ptr %18, align 8, !tbaa !142 ; 2 uses
  %.not.i202.i = icmp eq ptr %.pre.i360, null
  br i1 %.not.i202.i, label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit.i358, label %.thread.i357

.thread.i357:                                     ; preds = %bb.gt, %_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev.exit.i
  %i.sd = phi ptr [ %.pre.i360, %bb.gt ], [ %71, %_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev.exit.i ]
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.sd)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit.i358 unwind label %bb.gu

bb.gu:                                            ; preds = %.thread.i357
  %i.se = landingpad { ptr, i32 }
          catch ptr null
  %i.sf = extractvalue { ptr, i32 } %i.se, 0
  call void @__clang_call_terminate(ptr %i.sf) #32
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit.i358: ; preds = %.thread.i357, %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %bb.je

bb.gv:                                            ; preds = %bb.gs, %bb.gi
  %.pn196.pn.i = phi { ptr, i32 } [ %.pn196.i, %bb.gs ], [ %i.rm, %bb.gi ]
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %.body370

bb.gw:                                            ; preds = %bb.fv
  %i.sg = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.sh = load i32, ptr %i.sg, align 4
  switch i32 %i.sh, label %bb.ja [
    i32 0, label %bb.gx
    i32 2, label %bb.hm
  ]

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #31
  %i.si = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.sk = getelementptr inbounds nuw i8, ptr %34, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  store ptr %i.si, ptr %i.sk, align 8, !tbaa !125
  %i.sl = getelementptr inbounds nuw i8, ptr %34, i64 32
  store ptr %i.si, ptr %i.sl, align 8, !tbaa !126
  %i.sm = getelementptr inbounds nuw i8, ptr %34, i64 40
  store i64 0, ptr %i.sm, align 8, !tbaa !186
  %i.sn = getelementptr inbounds nuw i8, ptr %33, i64 48
  store i8 0, ptr %i.sn, align 8, !tbaa !194, !alias.scope !203
  %i.so = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %33, ptr noundef nonnull align 8 dereferenceable(48) %34) #31 ; 0 uses
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA12_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %32, ptr noundef nonnull align 1 dereferenceable(12) @.str.76, ptr noundef nonnull align 8 dereferenceable(56) %33)
          to label %.lr.ph.i.i.i unwind label %bb.hi

.lr.ph.i.i.i:                                     ; preds = %bb.gx
  %i.sp = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 4 uses
  store i32 0, ptr %i.sp, align 8, !tbaa !119
  %i.sq = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  store ptr null, ptr %i.sq, align 8, !tbaa !124
  %i.sr = getelementptr inbounds nuw i8, ptr %31, i64 24
  store ptr %i.sp, ptr %i.sr, align 8, !tbaa !125
  %i.ss = getelementptr inbounds nuw i8, ptr %31, i64 32
  store ptr %i.sp, ptr %i.ss, align 8, !tbaa !126
  %i.st = getelementptr inbounds nuw i8, ptr %31, i64 40
  store i64 0, ptr %i.st, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  store ptr %31, ptr %17, align 8, !tbaa !206
  %i.su = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %31, ptr nonnull %i.sp, ptr noundef nonnull align 8 dereferenceable(88) %32, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %.noexc.i.i364 unwind label %bb.gy ; 0 uses

.noexc.i.i364:                                    ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  %i.sv = getelementptr inbounds nuw i8, ptr %30, i64 48
  store i8 0, ptr %i.sv, align 8, !tbaa !194, !alias.scope !208
  %i.sw = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %30, ptr noundef nonnull align 8 dereferenceable(48) %31) #31 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %i.sx = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #37
          to label %_ZNSt12_Vector_baseIN9grpc_core12experimental4JsonESaIS2_EE11_M_allocateEm.exit.i.i.i unwind label %.thread380.i ; 5 uses

.thread380.i:                                     ; preds = %.noexc.i.i364
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %.body206.i

bb.gy:                                            ; preds = %.lr.ph.i.i.i
  %i.sz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %31) #31
  br label %.body204.i

_ZNSt12_Vector_baseIN9grpc_core12experimental4JsonESaIS2_EE11_M_allocateEm.exit.i.i.i: ; preds = %.noexc.i.i364
  %i.ta = getelementptr inbounds nuw i8, ptr %30, i64 56
  store ptr %i.sx, ptr %29, align 8, !tbaa !187
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 56 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr %i.tb, ptr %i.tc, align 8, !tbaa !189
  %i.td = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN9grpc_core12experimental4JsonEPS2_ET0_T_S7_S6_(ptr noundef nonnull %30, ptr noundef nonnull %i.ta, ptr noundef nonnull %i.sx)
          to label %bb.ha unwind label %bb.gz

bb.gz:                                            ; preds = %_ZNSt12_Vector_baseIN9grpc_core12experimental4JsonESaIS2_EE11_M_allocateEm.exit.i.i.i
  %i.te = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.sx, i64 noundef 56) #36
  br label %.body206.i

bb.ha:                                            ; preds = %_ZNSt12_Vector_baseIN9grpc_core12experimental4JsonESaIS2_EE11_M_allocateEm.exit.i.i.i
  %i.tf = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 2 uses
  store i8 0, ptr %i.tf, align 8, !tbaa !194, !alias.scope !211
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(49) %28)
          to label %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISL_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_.exit.i unwind label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.tg = landingpad { ptr, i32 }
          catch ptr null
  %i.th = extractvalue { ptr, i32 } %i.tg, 0
  call void @__clang_call_terminate(ptr %i.th) #32
  unreachable

_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISL_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_.exit.i: ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  store ptr %i.sx, ptr %28, align 8, !tbaa !187
  %i.ti = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %i.td, ptr %i.ti, align 8, !tbaa !188
  %i.tj = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %i.tb, ptr %i.tj, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  store i8 5, ptr %i.tf, align 8, !tbaa !194
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA12_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %27, ptr noundef nonnull align 1 dereferenceable(12) @.str.75, ptr noundef nonnull align 8 dereferenceable(56) %28)
          to label %.lr.ph.i.i208.i unwind label %bb.hj

.lr.ph.i.i208.i:                                  ; preds = %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISL_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_.exit.i
  %i.tk = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 4 uses
  store i32 0, ptr %i.tk, align 8, !tbaa !119
  %i.tl = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  store ptr null, ptr %i.tl, align 8, !tbaa !124
  %i.tm = getelementptr inbounds nuw i8, ptr %26, i64 24
  store ptr %i.tk, ptr %i.tm, align 8, !tbaa !125
  %i.tn = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %i.tk, ptr %i.tn, align 8, !tbaa !126
  %i.to = getelementptr inbounds nuw i8, ptr %26, i64 40
  store i64 0, ptr %i.to, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  store ptr %26, ptr %16, align 8, !tbaa !206
  %i.tp = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr nonnull %i.tk, ptr noundef nonnull align 8 dereferenceable(88) %27, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %.noexc.i210.i unwind label %bb.hc ; 0 uses

.noexc.i210.i:                                    ; preds = %.lr.ph.i.i208.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  %i.tq = getelementptr inbounds nuw i8, ptr %25, i64 48
  store i8 0, ptr %i.tq, align 8, !tbaa !194, !alias.scope !214
  %i.tr = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %25, ptr noundef nonnull align 8 dereferenceable(48) %26) #31 ; 0 uses
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA30_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %24, ptr noundef nonnull align 1 dereferenceable(30) @.str.74, ptr noundef nonnull align 8 dereferenceable(56) %25)
          to label %.lr.ph.i.i215.i unwind label %bb.hk

bb.hc:                                            ; preds = %.lr.ph.i.i208.i
  %i.ts = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %26) #31
  br label %.body212.i

.lr.ph.i.i215.i:                                  ; preds = %.noexc.i210.i
  %i.tt = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  store i32 0, ptr %i.tt, align 8, !tbaa !119
  %i.tu = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  store ptr null, ptr %i.tu, align 8, !tbaa !124
  %i.tv = getelementptr inbounds nuw i8, ptr %23, i64 24
  store ptr %i.tt, ptr %i.tv, align 8, !tbaa !125
  %i.tw = getelementptr inbounds nuw i8, ptr %23, i64 32
  store ptr %i.tt, ptr %i.tw, align 8, !tbaa !126
  %i.tx = getelementptr inbounds nuw i8, ptr %23, i64 40
  store i64 0, ptr %i.tx, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  store ptr %23, ptr %15, align 8, !tbaa !206
  %i.ty = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr nonnull %i.tt, ptr noundef nonnull align 8 dereferenceable(88) %24, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i217.i unwind label %bb.hd ; 0 uses

.noexc.i217.i:                                    ; preds = %.lr.ph.i.i215.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  %i.tz = getelementptr inbounds nuw i8, ptr %22, i64 48
  store i8 0, ptr %i.tz, align 8, !tbaa !194, !alias.scope !217
  %i.ua = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %22, ptr noundef nonnull align 8 dereferenceable(48) %23) #31 ; 0 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.pq, i64 48
  %i.uc = getelementptr inbounds nuw i8, ptr %22, i64 56
  invoke void @_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ub, ptr noundef nonnull %22, ptr noundef nonnull %i.uc)
          to label %_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader.i unwind label %bb.hl

bb.hd:                                            ; preds = %.lr.ph.i.i215.i
  %107 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %23) #31
  br label %.body219.i

_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader.i: ; preds = %.noexc.i217.i
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #31
  %108 = load ptr, ptr %i.tu, align 8, !tbaa !124
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef %108)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader.i unwind label %bb.he, !inline_history !220

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader.i: ; preds = %_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader.i
  %i.ud = getelementptr inbounds nuw i8, ptr %24, i64 32
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ud) #31, !inline_history !221
  %i.ue = load ptr, ptr %24, align 8, !tbaa !41   ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ug = icmp eq ptr %i.ue, %i.uf
  br i1 %i.ug, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i365

bb.he:                                            ; preds = %_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader.i
  %i.uh = landingpad { ptr, i32 }
          catch ptr null
  %i.ui = extractvalue { ptr, i32 } %i.uh, 0
  call void @__clang_call_terminate(ptr %i.ui) #32, !inline_history !220
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i365: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader.i
  %i.uj = load i64, ptr %i.uf, align 8, !tbaa !43
  %i.uk = add i64 %i.uj, 1
  call void @_ZdlPvm(ptr noundef %i.ue, i64 noundef %i.uk) #36, !inline_history !221
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i365
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %25) #31
  %i.ul = load ptr, ptr %i.tl, align 8, !tbaa !124
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef %i.ul)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit223.preheader.i unwind label %bb.hf, !inline_history !220

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit223.preheader.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit.i
  %i.um = getelementptr inbounds nuw i8, ptr %27, i64 32
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.um) #31, !inline_history !221
  %i.un = load ptr, ptr %27, align 8, !tbaa !41   ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.up = icmp eq ptr %i.un, %i.uo
  br i1 %i.up, label %_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev.exit236.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i224.i

bb.hf:                                            ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit.i
  %i.uq = landingpad { ptr, i32 }
          catch ptr null
  %i.ur = extractvalue { ptr, i32 } %i.uq, 0
  call void @__clang_call_terminate(ptr %i.ur) #32, !inline_history !220
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i224.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit223.preheader.i
  %i.us = load i64, ptr %i.uo, align 8, !tbaa !43
  %i.ut = add i64 %i.us, 1
  call void @_ZdlPvm(ptr noundef %i.un, i64 noundef %i.ut) #36, !inline_history !221
  br label %_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev.exit236.i

_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev.exit236.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit223.preheader.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i224.i
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %28) #31
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %30) #31
  %i.uu = load ptr, ptr %i.sq, align 8, !tbaa !124
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %31, ptr noundef %i.uu)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit237.preheader.i unwind label %bb.hg, !inline_history !220

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit237.preheader.i: ; preds = %_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev.exit236.i
  %i.uv = getelementptr inbounds nuw i8, ptr %32, i64 32
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.uv) #31, !inline_history !221
  %i.uw = load ptr, ptr %32, align 8, !tbaa !41   ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.uy = icmp eq ptr %i.uw, %i.ux
  br i1 %i.uy, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit240.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238.i

bb.hg:                                            ; preds = %_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev.exit236.i
  %i.uz = landingpad { ptr, i32 }
          catch ptr null
  %i.va = extractvalue { ptr, i32 } %i.uz, 0
  call void @__clang_call_terminate(ptr %i.va) #32, !inline_history !220
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit237.preheader.i
  %i.vb = load i64, ptr %i.ux, align 8, !tbaa !43
  %i.vc = add i64 %i.vb, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.vc) #36, !inline_history !221
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit240.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit240.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit237.preheader.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238.i
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %33) #31
  %i.vd = load ptr, ptr %i.sj, align 8, !tbaa !124
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef %i.vd)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit241.i unwind label %bb.hh, !inline_history !220

bb.hh:                                            ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit240.i
  %i.ve = landingpad { ptr, i32 }
          catch ptr null
  %i.vf = extractvalue { ptr, i32 } %i.ve, 0
  call void @__clang_call_terminate(ptr %i.vf) #32, !inline_history !220
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit241.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit240.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %bb.je

bb.hi:                                            ; preds = %bb.gx
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

bb.hj:                                            ; preds = %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISL_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_.exit.i
  %i.vh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit349.i

bb.hk:                                            ; preds = %.noexc.i210.i
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit350.i

bb.hl:                                            ; preds = %.noexc.i217.i
  %i.vj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #31
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %23) #31
  br label %.body219.i

.body219.i:                                       ; preds = %bb.hl, %bb.hd
  %.pn186.i = phi { ptr, i32 } [ %i.vj, %bb.hl ], [ %107, %bb.hd ]
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %24) #31
  br label %.loopexit350.i

.loopexit350.i:                                   ; preds = %.body219.i, %bb.hk
  %.pn186.pn.i = phi { ptr, i32 } [ %i.vi, %bb.hk ], [ %.pn186.i, %.body219.i ]
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %25) #31
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %26) #31
  br label %.body212.i

.body212.i:                                       ; preds = %.loopexit350.i, %bb.hc
  %.pn186.pn.pn.i = phi { ptr, i32 } [ %.pn186.pn.i, %.loopexit350.i ], [ %i.ts, %bb.hc ]
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %27) #31
  br label %.loopexit349.i

.loopexit349.i:                                   ; preds = %.body212.i, %bb.hj
  %.pn186.pn.pn.pn.i = phi { ptr, i32 } [ %i.vh, %bb.hj ], [ %.pn186.pn.pn.i, %.body212.i ]
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %28) #31
  call void @_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #31
  br label %.body206.i

.body206.i:                                       ; preds = %.loopexit349.i, %bb.gz, %.thread380.i
  %.pn186.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn186.pn.pn.pn.i, %.loopexit349.i ], [ %i.sy, %.thread380.i ], [ %i.te, %bb.gz ]
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %30) #31
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %31) #31
  br label %.body204.i

.body204.i:                                       ; preds = %.body206.i, %bb.gy
  %.pn186.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn186.pn.pn.pn.pn.i, %.body206.i ], [ %i.sz, %bb.gy ]
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %32) #31
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.body204.i, %bb.hi
  %.pn186.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.vg, %bb.hi ], [ %.pn186.pn.pn.pn.pn.pn.i, %.body204.i ]
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %33) #31
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %34) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %.body370

bb.hm:                                            ; preds = %bb.gw
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @envoy__config__cluster__v3__Cluster__RingHashLbConfig_msg_init) #31, !srcloc !145
  %i.vk = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !60
  %i.vm = icmp eq i32 %i.vl, 23
  br i1 %i.vm, label %envoy_config_cluster_v3_Cluster_ring_hash_lb_config.exit.i, label %envoy_config_cluster_v3_Cluster_ring_hash_lb_config.exit.thread.i

envoy_config_cluster_v3_Cluster_ring_hash_lb_config.exit.i: ; preds = %bb.hm
  %i.vn = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.0.in.then.val.i.i361 = load i64, ptr %i.vn, align 4 ; 2 uses
  %i.vo = inttoptr i64 %.0.in.then.val.i.i361 to ptr ; 3 uses
  %.not169.i = icmp eq i64 %.0.in.then.val.i.i361, 0
  br i1 %.not169.i, label %envoy_config_cluster_v3_Cluster_ring_hash_lb_config.exit.thread.i, label %bb.hn

bb.hn:                                            ; preds = %envoy_config_cluster_v3_Cluster_ring_hash_lb_config.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  store ptr %71, ptr %35, align 8, !tbaa !142
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 20, ptr nonnull @.str.77)
          to label %.noexc368 unwind label %bb.ak

.noexc368:                                        ; preds = %bb.hn
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__UInt64Value_msg_init) #31, !srcloc !145
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 24
  %i.vq = load i64, ptr %i.vp, align 1            ; 2 uses
  %i.vr = icmp eq i64 %i.vq, 0
  br i1 %i.vr, label %bb.hv, label %bb.ho

bb.ho:                                            ; preds = %.noexc368
  %i.vs = inttoptr i64 %i.vq to ptr
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vu = load i64, ptr %i.vt, align 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #31
  store ptr %71, ptr %36, align 8, !tbaa !142
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 18, ptr nonnull @.str.78)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit.i363 unwind label %bb.hq

_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit.i363: ; preds = %bb.ho
  %i.vv = add i64 %i.vu, -8388609
  %or.cond.i = icmp ult i64 %i.vv, -8388608
  br i1 %or.cond.i, label %bb.hp, label %bb.hs

bb.hp:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit.i363
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 36, ptr nonnull @.str.79)
          to label %bb.hs unwind label %bb.hr

bb.hq:                                            ; preds = %bb.ho
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.hr:                                            ; preds = %bb.hp
  %i.vx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #31
  br label %bb.hu

bb.hs:                                            ; preds = %bb.hp, %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit.i363
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %71)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit247.i unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.vy = landingpad { ptr, i32 }
          catch ptr null
  %i.vz = extractvalue { ptr, i32 } %i.vy, 0
  call void @__clang_call_terminate(ptr %i.vz) #32
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit247.i: ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hr, %bb.hq
  %.pn.i362 = phi { ptr, i32 } [ %i.vx, %bb.hr ], [ %i.vw, %bb.hq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31
  br label %bb.io

bb.hv:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit247.i, %.noexc368
  %.0146.i = phi i64 [ %i.vu, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit247.i ], [ 8388608, %.noexc368 ] ; 2 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__UInt64Value_msg_init) #31, !srcloc !145
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  %i.wb = load i64, ptr %i.wa, align 1            ; 2 uses
  %i.wc = icmp eq i64 %i.wb, 0
  br i1 %i.wc, label %bb.if, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.wd = inttoptr i64 %i.wb to ptr
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wf = load i64, ptr %i.we, align 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  store ptr %71, ptr %37, align 8, !tbaa !142
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 18, ptr nonnull @.str.80)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit254.i unwind label %bb.hy

_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit254.i: ; preds = %bb.hw
  %i.wg = add i64 %i.wf, -8388609
  %or.cond3.i = icmp ult i64 %i.wg, -8388608
  br i1 %or.cond3.i, label %bb.hx, label %bb.ia

bb.hx:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit254.i
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 36, ptr nonnull @.str.79)
          to label %bb.ia unwind label %bb.hz

bb.hy:                                            ; preds = %bb.hw
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ie

bb.hz:                                            ; preds = %bb.ib, %bb.hx
  %i.wi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #31
  br label %bb.ie

bb.ia:                                            ; preds = %bb.hx, %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit254.i
  %i.wj = icmp ugt i64 %i.wf, %.0146.i
  br i1 %i.wj, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 40, ptr nonnull @.str.81)
          to label %bb.ic unwind label %bb.hz

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %71)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit256.i unwind label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.wk = landingpad { ptr, i32 }
          catch ptr null
  %i.wl = extractvalue { ptr, i32 } %i.wk, 0
  call void @__clang_call_terminate(ptr %i.wl) #32
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit256.i: ; preds = %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  br label %bb.if

bb.ie:                                            ; preds = %bb.hz, %bb.hy
  %.pn171.i = phi { ptr, i32 } [ %i.wi, %bb.hz ], [ %i.wh, %bb.hy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  br label %bb.io

bb.if:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit256.i, %bb.hv
  %.0148.i = phi i64 [ %i.wf, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit256.i ], [ 1024, %bb.hv ]
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vo, i64 12
  %i.wn = load i32, ptr %i.wm, align 1
  %.not173.i = icmp eq i32 %i.wn, 0
  br i1 %.not173.i, label %bb.im, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #31
  store ptr %71, ptr %38, align 8, !tbaa !142
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 14, ptr nonnull @.str.82)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit258.i unwind label %bb.ij

_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit258.i: ; preds = %bb.ig
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 21, ptr nonnull @.str.83)
          to label %bb.ih unwind label %bb.ik

bb.ih:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit258.i
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %71)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit260.i unwind label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.wo = landingpad { ptr, i32 }
          catch ptr null
  %i.wp = extractvalue { ptr, i32 } %i.wo, 0
  call void @__clang_call_terminate(ptr %i.wp) #32
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit260.i: ; preds = %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #31
  br label %bb.im

bb.ij:                                            ; preds = %bb.ig
  %i.wq = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.ik:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit258.i
  %i.wr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #31
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %.pn174.i = phi { ptr, i32 } [ %i.wr, %bb.ik ], [ %i.wq, %bb.ij ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #31
  br label %bb.io

bb.im:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit260.i, %bb.if
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %71)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit262.i unwind label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.ws = landingpad { ptr, i32 }
          catch ptr null
  %i.wt = extractvalue { ptr, i32 } %i.ws, 0
  call void @__clang_call_terminate(ptr %i.wt) #32
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit262.i: ; preds = %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  br label %envoy_config_cluster_v3_Cluster_ring_hash_lb_config.exit.thread.i

bb.io:                                            ; preds = %bb.il, %bb.ie, %bb.hu
  %.pn174.pn.i = phi { ptr, i32 } [ %.pn174.i, %bb.il ], [ %.pn.i362, %bb.hu ], [ %.pn171.i, %bb.ie ]
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  br label %.body370

envoy_config_cluster_v3_Cluster_ring_hash_lb_config.exit.thread.i: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit262.i, %envoy_config_cluster_v3_Cluster_ring_hash_lb_config.exit.i, %bb.hm
  %.1149.i = phi i64 [ %.0148.i, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit262.i ], [ 1024, %envoy_config_cluster_v3_Cluster_ring_hash_lb_config.exit.i ], [ 1024, %bb.hm ]
  %.1147.i = phi i64 [ %.0146.i, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit262.i ], [ 8388608, %envoy_config_cluster_v3_Cluster_ring_hash_lb_config.exit.i ], [ 8388608, %bb.hm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #31
  invoke void @_ZN9grpc_core12experimental4Json10FromNumberImEENSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EES1_E4typeES4_(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::experimental::Json") align 8 %45, i64 noundef %.1149.i)
          to label %bb.ip unwind label %.thread338.i

bb.ip:                                            ; preds = %envoy_config_cluster_v3_Cluster_ring_hash_lb_config.exit.thread.i
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA12_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %44, ptr noundef nonnull align 1 dereferenceable(12) @.str.85, ptr noundef nonnull align 8 dereferenceable(56) %45)
          to label %bb.iq unwind label %.thread344.i

bb.iq:                                            ; preds = %bb.ip
  %i.wu = getelementptr inbounds nuw i8, ptr %44, i64 88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #31
  invoke void @_ZN9grpc_core12experimental4Json10FromNumberImEENSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EES1_E4typeES4_(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::experimental::Json") align 8 %46, i64 noundef %.1147.i)
          to label %bb.ir unwind label %.thread382.i

bb.ir:                                            ; preds = %bb.iq
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA12_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %i.wu, ptr noundef nonnull align 1 dereferenceable(12) @.str.86, ptr noundef nonnull align 8 dereferenceable(56) %46)
          to label %.lr.ph.i.i263.i unwind label %bb.iw

.lr.ph.i.i263.i:                                  ; preds = %bb.ir
  %i.wv = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 5 uses
  store i32 0, ptr %i.wv, align 8, !tbaa !119
  %i.ww = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  store ptr null, ptr %i.ww, align 8, !tbaa !124
  %i.wx = getelementptr inbounds nuw i8, ptr %43, i64 24
  store ptr %i.wv, ptr %i.wx, align 8, !tbaa !125
  %i.wy = getelementptr inbounds nuw i8, ptr %43, i64 32
  store ptr %i.wv, ptr %i.wy, align 8, !tbaa !126
  %i.wz = getelementptr inbounds nuw i8, ptr %43, i64 40
  store i64 0, ptr %i.wz, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  store ptr %43, ptr %14, align 8, !tbaa !206
  %i.xa = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %43, ptr nonnull %i.wv, ptr noundef nonnull align 8 dereferenceable(88) %44, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc.i265.i unwind label %bb.is ; 0 uses

.noexc.i265.i:                                    ; preds = %.lr.ph.i.i263.i
  %i.xb = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %43, ptr nonnull %i.wv, ptr noundef nonnull align 8 dereferenceable(88) %i.wu, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc.i265.1.i unwind label %bb.is ; 0 uses

.noexc.i265.1.i:                                  ; preds = %.noexc.i265.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  %i.xc = getelementptr inbounds nuw i8, ptr %42, i64 48
  store i8 0, ptr %i.xc, align 8, !tbaa !194, !alias.scope !222
  %i.xd = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %42, ptr noundef nonnull align 8 dereferenceable(48) %43) #31 ; 0 uses
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA23_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %41, ptr noundef nonnull align 1 dereferenceable(23) @.str.84, ptr noundef nonnull align 8 dereferenceable(56) %42)
          to label %.lr.ph.i.i270.i unwind label %bb.ix

bb.is:                                            ; preds = %.noexc.i265.i, %.lr.ph.i.i263.i
  %i.xe = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %43) #31
  br label %.body267.i

.lr.ph.i.i270.i:                                  ; preds = %.noexc.i265.1.i
  %i.xf = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 4 uses
  store i32 0, ptr %i.xf, align 8, !tbaa !119
  %i.xg = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  store ptr null, ptr %i.xg, align 8, !tbaa !124
  %i.xh = getelementptr inbounds nuw i8, ptr %40, i64 24
  store ptr %i.xf, ptr %i.xh, align 8, !tbaa !125
  %i.xi = getelementptr inbounds nuw i8, ptr %40, i64 32
  store ptr %i.xf, ptr %i.xi, align 8, !tbaa !126
  %i.xj = getelementptr inbounds nuw i8, ptr %40, i64 40
  store i64 0, ptr %i.xj, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  store ptr %40, ptr %13, align 8, !tbaa !206
  %i.xk = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %40, ptr nonnull %i.xf, ptr noundef nonnull align 8 dereferenceable(88) %41, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc.i272.i unwind label %bb.it ; 0 uses

.noexc.i272.i:                                    ; preds = %.lr.ph.i.i270.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.xl = getelementptr inbounds nuw i8, ptr %39, i64 48
  store i8 0, ptr %i.xl, align 8, !tbaa !194, !alias.scope !225
  %i.xm = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %39, ptr noundef nonnull align 8 dereferenceable(48) %40) #31 ; 0 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.pq, i64 48
  %i.xo = getelementptr inbounds nuw i8, ptr %39, i64 56
  invoke void @_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.xn, ptr noundef nonnull %39, ptr noundef nonnull %i.xo)
          to label %_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EEaSESt16initializer_listIS2_E.exit278.preheader.i unwind label %bb.iy

bb.it:                                            ; preds = %.lr.ph.i.i270.i
  %109 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %40) #31
  br label %.body274.i

_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EEaSESt16initializer_listIS2_E.exit278.preheader.i: ; preds = %.noexc.i272.i
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %39) #31
  %110 = load ptr, ptr %i.xg, align 8, !tbaa !124
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef %110)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit279.preheader.i unwind label %bb.iu, !inline_history !220

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit279.preheader.i: ; preds = %_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EEaSESt16initializer_listIS2_E.exit278.preheader.i
  %i.xp = getelementptr inbounds nuw i8, ptr %41, i64 32
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.xp) #31, !inline_history !221
  %i.xq = load ptr, ptr %41, align 8, !tbaa !41   ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.xs = icmp eq ptr %i.xq, %i.xr
  br i1 %i.xs, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit282.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i280.i

bb.iu:                                            ; preds = %_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EEaSESt16initializer_listIS2_E.exit278.preheader.i
  %i.xt = landingpad { ptr, i32 }
          catch ptr null
  %i.xu = extractvalue { ptr, i32 } %i.xt, 0
  call void @__clang_call_terminate(ptr %i.xu) #32, !inline_history !220
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i280.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit279.preheader.i
  %i.xv = load i64, ptr %i.xr, align 8, !tbaa !43
  %i.xw = add i64 %i.xv, 1
  call void @_ZdlPvm(ptr noundef %i.xq, i64 noundef %i.xw) #36, !inline_history !221
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit282.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit282.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit279.preheader.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i280.i
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %42) #31
  %i.xx = load ptr, ptr %i.ww, align 8, !tbaa !124
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %43, ptr noundef %i.xx)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit283.preheader.i unwind label %bb.iv, !inline_history !220

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit283.preheader.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit282.i
  %i.xy = getelementptr inbounds nuw i8, ptr %44, i64 120
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.xy) #31, !inline_history !221
  %i.xz = load ptr, ptr %i.wu, align 8, !tbaa !41 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %44, i64 104 ; 2 uses
  %i.yb = icmp eq ptr %i.xz, %i.ya
  br i1 %i.yb, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit286.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i284.i

bb.iv:                                            ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit282.i
  %i.yc = landingpad { ptr, i32 }
          catch ptr null
  %i.yd = extractvalue { ptr, i32 } %i.yc, 0
  call void @__clang_call_terminate(ptr %i.yd) #32, !inline_history !220
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i284.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit283.preheader.i
  %i.ye = load i64, ptr %i.ya, align 8, !tbaa !43
  %i.yf = add i64 %i.ye, 1
  call void @_ZdlPvm(ptr noundef %i.xz, i64 noundef %i.yf) #36, !inline_history !221
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit286.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit286.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit283.preheader.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i284.i
  %i.yg = getelementptr inbounds nuw i8, ptr %44, i64 32
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.yg) #31, !inline_history !221
  %i.yh = load ptr, ptr %44, align 8, !tbaa !41   ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.yj = icmp eq ptr %i.yh, %i.yi
  br i1 %i.yj, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit286.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i284.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i284.1.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit286.i
  %i.yk = load i64, ptr %i.yi, align 8, !tbaa !43
  %i.yl = add i64 %i.yk, 1
  call void @_ZdlPvm(ptr noundef %i.yh, i64 noundef %i.yl) #36, !inline_history !221
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit286.1.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit286.1.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit286.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i284.1.i
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %46) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %45) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  br label %bb.je

.thread338.i:                                     ; preds = %envoy_config_cluster_v3_Cluster_ring_hash_lb_config.exit.thread.i
  %i.ym = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  br label %.loopexit351.i

.thread344.i:                                     ; preds = %bb.ip
  %i.yn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %45) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  br label %.loopexit351.i

.thread382.i:                                     ; preds = %bb.iq
  %i.yo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %45) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  br label %.preheader.preheader.i

bb.iw:                                            ; preds = %bb.ir
  %i.yp = landingpad { ptr, i32 }
          cleanup
  br label %bb.iz

bb.ix:                                            ; preds = %.noexc.i265.1.i
  %i.yq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit353.i

bb.iy:                                            ; preds = %.noexc.i272.i
  %i.yr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %39) #31
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %40) #31
  br label %.body274.i

.body274.i:                                       ; preds = %bb.iy, %bb.it
  %.pn177.i = phi { ptr, i32 } [ %i.yr, %bb.iy ], [ %109, %bb.it ]
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %41) #31
  br label %.loopexit353.i

.loopexit353.i:                                   ; preds = %.body274.i, %bb.ix
  %.pn177.pn.i = phi { ptr, i32 } [ %i.yq, %bb.ix ], [ %.pn177.i, %.body274.i ]
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %42) #31
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %43) #31
  br label %.body267.i

.body267.i:                                       ; preds = %.loopexit353.i, %bb.is
  %.pn177.pn.pn.i = phi { ptr, i32 } [ %.pn177.pn.i, %.loopexit353.i ], [ %i.xe, %bb.is ]
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.wu) #31
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %44) #31
  br label %bb.iz

bb.iz:                                            ; preds = %.body267.i, %bb.iw
  %.pn177.pn.pn.pn.i = phi { ptr, i32 } [ %i.yp, %bb.iw ], [ %.pn177.pn.pn.i, %.body267.i ] ; 2 uses
  %i.ys = phi i1 [ false, %bb.iw ], [ true, %.body267.i ]
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %46) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %45) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  br i1 %i.ys, label %.loopexit351.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.iz, %.thread382.i
  %.pn177.pn.pn.pn.pn385.i = phi { ptr, i32 } [ %i.yo, %.thread382.i ], [ %.pn177.pn.pn.pn.i, %bb.iz ]
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %44) #31
  br label %.loopexit351.i

.loopexit351.i:                                   ; preds = %.preheader.preheader.i, %bb.iz, %.thread344.i, %.thread338.i
  %.pn177.pn.pn.pn.pn.pn.pn343.i = phi { ptr, i32 } [ %i.ym, %.thread338.i ], [ %i.yn, %.thread344.i ], [ %.pn177.pn.pn.pn.i, %bb.iz ], [ %.pn177.pn.pn.pn.pn385.i, %.preheader.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  br label %.body370

bb.ja:                                            ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #31
  store ptr %71, ptr %47, align 8, !tbaa !142
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 10, ptr nonnull @.str.87)
          to label %.noexc369 unwind label %bb.ak

.noexc369:                                        ; preds = %bb.ja
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 26, ptr nonnull @.str.88)
          to label %bb.jb unwind label %bb.jd

bb.jb:                                            ; preds = %.noexc369
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %71)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit288.i unwind label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.yt = landingpad { ptr, i32 }
          catch ptr null
  %i.yu = extractvalue { ptr, i32 } %i.yt, 0
  call void @__clang_call_terminate(ptr %i.yu) #32
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit288.i: ; preds = %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  br label %bb.je

bb.jd:                                            ; preds = %.noexc369
  %i.yv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %47) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  br label %.body370

bb.je:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit.i358, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit241.i, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit286.1.i, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit288.i
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @envoy__config__core__v3__TransportSocket_msg_init) #31, !srcloc !145
  %i.yw = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.yx = load i64, ptr %i.yw, align 4            ; 2 uses
  %i.yy = inttoptr i64 %i.yx to ptr               ; 2 uses
  %.not197 = icmp eq i64 %i.yx, 0
  br i1 %.not197, label %bb.ly, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #31
  store ptr %71, ptr %84, align 8, !tbaa !142
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 30, ptr nonnull @.str.24)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit373 unwind label %bb.kt

_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit373: ; preds = %bb.jf
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__Any_msg_init) #31, !srcloc !145
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !60
  %i.zb = icmp eq i32 %i.za, 3
  br i1 %i.zb, label %upb_Message_HasBaseField.exit.then.i375, label %envoy_config_core_v3_TransportSocket_typed_config.exit

upb_Message_HasBaseField.exit.then.i375:          ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit373
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yy, i64 32
  %.0.in.then.val.i376 = load i64, ptr %i.zc, align 4
  %i.zd = inttoptr i64 %.0.in.then.val.i376 to ptr
  br label %envoy_config_core_v3_TransportSocket_typed_config.exit

envoy_config_core_v3_TransportSocket_typed_config.exit: ; preds = %upb_Message_HasBaseField.exit.then.i375, %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit373
  %.0.in.i374 = phi ptr [ %i.zd, %upb_Message_HasBaseField.exit.then.i375 ], [ null, %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit373 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #31
  invoke void @_ZN9grpc_core19ExtractXdsExtensionERKNS_15XdsResourceType13DecodeContextEPK19google_protobuf_AnyPNS_16ValidationErrorsE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.113") align 8 %85, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %.0.in.i374, ptr noundef nonnull %71)
          to label %bb.jg unwind label %bb.ku

bb.jg:                                            ; preds = %envoy_config_core_v3_TransportSocket_typed_config.exit
  %i.ze = getelementptr inbounds nuw i8, ptr %85, i64 104 ; 3 uses
  %i.zf = load i8, ptr %i.ze, align 8, !tbaa !228, !range !31, !noundef !32
  %i.zg = trunc nuw i8 %i.zf to i1
  br i1 %i.zg, label %bb.jh, label %bb.ln

bb.jh:                                            ; preds = %bb.jg
  %i.zh = invoke noundef zeroext i1 @_ZN9grpc_core25IsExperimentEnvVarEnabledEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext false)
          to label %_ZN9grpc_core21XdsHttpConnectEnabledEv.exit unwind label %bb.kv

_ZN9grpc_core21XdsHttpConnectEnabledEv.exit:      ; preds = %bb.jh
  %.sroa.055.0.copyload.pr.pre = load i64, ptr %85, align 8, !tbaa !40 ; 2 uses
  %i.zi = icmp eq i64 %.sroa.055.0.copyload.pr.pre, 80
  %or.cond = select i1 %i.zh, i1 %i.zi, i1 false
  br i1 %or.cond, label %bb.ji, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread

bb.ji:                                            ; preds = %_ZN9grpc_core21XdsHttpConnectEnabledEv.exit
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %85, i64 8
  %.sroa.260.0.copyload = load ptr, ptr %.sroa.260.0..sroa_idx, align 8, !tbaa !181
  %bcmp.i379 = call i32 @bcmp(ptr noundef nonnull dereferenceable(80) %.sroa.260.0.copyload, ptr noundef nonnull dereferenceable(80) @.str.90, i64 80)
  %i.zj = icmp eq i32 %bcmp.i379, 0
  br i1 %i.zj, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %bb.ji
  %i.zk = load ptr, ptr %70, align 8, !tbaa !150
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 96
  store i8 1, ptr %i.zl, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.zm = getelementptr inbounds nuw i8, ptr %85, i64 72
  %i.zn = load i8, ptr %i.zm, align 8, !tbaa !234, !noalias !231
  %.not.i381 = icmp eq i8 %i.zn, 0
  br i1 %.not.i381, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %71, i64 41, ptr nonnull @.str.91)
          to label %.noexc392 unwind label %bb.kw

.noexc392:                                        ; preds = %bb.jj
  %i.zo = getelementptr inbounds nuw i8, ptr %86, i64 96
  %i.zp = getelementptr inbounds nuw i8, ptr %86, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %86, i8 0, i64 96, i1 false), !alias.scope !231
  store ptr %i.zp, ptr %i.zo, align 8, !tbaa !38, !alias.scope !231
  %i.zq = getelementptr inbounds nuw i8, ptr %86, i64 104
  store i64 0, ptr %i.zq, align 8, !tbaa !44, !alias.scope !231
  store i8 0, ptr %i.zp, align 8, !tbaa !43, !alias.scope !231
  %i.zr = getelementptr inbounds nuw i8, ptr %86, i64 128
  %i.zs = getelementptr inbounds nuw i8, ptr %86, i64 144 ; 2 uses
  store ptr %i.zs, ptr %i.zr, align 8, !tbaa !38, !alias.scope !231
  %i.zt = getelementptr inbounds nuw i8, ptr %86, i64 136
  store i64 0, ptr %i.zt, align 8, !tbaa !44, !alias.scope !231
  store i8 0, ptr %i.zs, align 8, !tbaa !43, !alias.scope !231
  %i.zu = getelementptr inbounds nuw i8, ptr %86, i64 160
  %i.zv = getelementptr inbounds nuw i8, ptr %86, i64 176 ; 2 uses
  store ptr %i.zv, ptr %i.zu, align 8, !tbaa !38, !alias.scope !231
  %i.zw = getelementptr inbounds nuw i8, ptr %86, i64 168
  store i64 0, ptr %i.zw, align 8, !tbaa !44, !alias.scope !231
  store i8 0, ptr %i.zv, align 8, !tbaa !43, !alias.scope !231
  %i.zx = getelementptr inbounds nuw i8, ptr %86, i64 192
  store i8 0, ptr %i.zx, align 8, !tbaa !236, !alias.scope !231
  %i.zy = getelementptr inbounds nuw i8, ptr %86, i64 193
  store i8 0, ptr %i.zy, align 1, !tbaa !237, !alias.scope !231
  br label %_ZN9grpc_core12_GLOBAL__N_133Http11ProxyUpstreamTransportParseERKNS_15XdsResourceType13DecodeContextERKNS_12XdsExtensionEPNS_16ValidationErrorsE.exit

bb.jk:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
  %i.zz = getelementptr inbounds nuw i8, ptr %85, i64 16
  %i.aaa = getelementptr inbounds nuw i8, ptr %85, i64 24
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !160, !noalias !231
  %i.aac = load i64, ptr %i.zz, align 8, !tbaa !158, !noalias !231
  %i.aad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !15, !noalias !231 ; 5 uses
  %i.aaf = load i16, ptr getelementptr inbounds nuw (i8, ptr @envoy__extensions__transport_0sockets__http_011_0proxy__v3__Http11ProxyUpstreamTransport_msg_init, i64 8), align 8, !tbaa !22, !noalias !231
  %i.aag = zext i16 %i.aaf to i64                 ; 5 uses
  %i.aah = and i64 %i.aag, 7
  %i.aai = icmp eq i64 %i.aah, 0
  call void @llvm.assume(i1 %i.aai)
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !26
  %i.aal = load ptr, ptr %i.aae, align 8, !tbaa !29 ; 4 uses
  %i.aam = ptrtoint ptr %i.aak to i64
  %i.aan = ptrtoint ptr %i.aal to i64
  %i.aao = sub i64 %i.aam, %i.aan
  %i.aap = icmp ult i64 %i.aao, %i.aag
  br i1 %i.aap, label %upb_Arena_Malloc.exit.i.i.i.i390, label %upb_Arena_Malloc.exit.thread.i.i.i.i382, !prof !14

upb_Arena_Malloc.exit.thread.i.i.i.i382:          ; preds = %bb.jk
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.aag
  store ptr %i.aaq, ptr %i.aae, align 8, !tbaa !29
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aal) ]
  br label %bb.jl

upb_Arena_Malloc.exit.i.i.i.i390:                 ; preds = %bb.jk
  %i.aar = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.aae, i64 noundef %i.aag)
          to label %.noexc393 unwind label %bb.kw ; 2 uses

.noexc393:                                        ; preds = %upb_Arena_Malloc.exit.i.i.i.i390
end_hunk_0
