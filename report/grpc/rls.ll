Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/rls?download=true
inline.NumInlined: 8216
inline.NumDeleted: 4032
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN9grpc_core12_GLOBAL__N_15RlsLb6Picker4PickENS_19LoadBalancingPolicy8PickArgsE:bb.a
.noexc138:                                        ; preds = %bb.dw
  %.val6.i.i = load ptr, ptr %i.qm, align 8, !tbaa !453 ; 4 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 144 ; 2 uses
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !461
  %i.qr = add i64 %i.qq, -1
  store i64 %i.qr, ptr %i.qp, align 8, !tbaa !461
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.val6.i.i) #38
  %i.qs = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.qt = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 32
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !101
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.qs, ptr noundef %i.qu)
          to label %_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache4FindERKNS1_10RequestKeyE.exit unwind label %bb.dx

bb.dx:                                            ; preds = %.noexc138
  %i.qv = landingpad { ptr, i32 }
          catch ptr null
  %i.qw = extractvalue { ptr, i32 } %i.qv, 0
  call void @__clang_call_terminate(ptr %i.qw) #42
  unreachable

_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache4FindERKNS1_10RequestKeyE.exit: ; preds = %.noexc138
  call void @_ZdlPvm(ptr noundef nonnull %.val6.i.i, i64 noundef 64) #41
  store ptr %i.qo, ptr %i.qm, align 8, !tbaa !462
  %.val4.i = load ptr, ptr %i.qj, align 8, !tbaa !325 ; 6 uses
  %i.qx = icmp eq ptr %.val4.i, null
  br i1 %i.qx, label %_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache4FindERKNS1_10RequestKeyE.exit.thread, label %bb.dy

bb.dy:                                            ; preds = %_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache4FindERKNS1_10RequestKeyE.exit
  %i.qy = getelementptr i8, ptr %.val4.i, i64 136
  %.val119 = load i64, ptr %i.qy, align 8, !tbaa !74
  %i.qz = icmp slt i64 %.val119, %i.pd
  br i1 %i.qz, label %bb.dz, label %.critedge.thread

bb.dz:                                            ; preds = %bb.dy
  %i.ra = getelementptr i8, ptr %.val4.i, i64 48
  %.val120 = load i64, ptr %i.ra, align 8, !tbaa !74
  %i.rb = icmp slt i64 %.val120, %i.pd
  br i1 %i.rb, label %_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache4FindERKNS1_10RequestKeyE.exit.thread, label %.critedge.thread

_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache4FindERKNS1_10RequestKeyE.exit.thread: ; preds = %.noexc137, %bb.dz, %_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache4FindERKNS1_10RequestKeyE.exit
  %i.rc = phi i1 [ true, %_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache4FindERKNS1_10RequestKeyE.exit ], [ false, %bb.dz ], [ true, %.noexc137 ] ; 5 uses
  %.0.i136249 = phi ptr [ null, %_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache4FindERKNS1_10RequestKeyE.exit ], [ %.val4.i, %bb.dz ], [ null, %.noexc137 ] ; 7 uses
  %.val107 = load ptr, ptr %i.u, align 8, !tbaa !347 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.val107, i64 232
  %i.re = getelementptr inbounds nuw i8, ptr %.val107, i64 256
  %.val.i.i139 = load i64, ptr %i.re, align 8, !tbaa !479
  %i.rf = icmp eq i64 %.val.i.i139, 0
  br i1 %i.rf, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache4FindERKNS1_10RequestKeyE.exit.thread
  %i.rg = getelementptr inbounds nuw i8, ptr %.val107, i64 248
  br label %bb.eb

bb.eb:                                            ; preds = %.noexc143, %bb.ea
  %.sroa.011.0.in.i.i = phi ptr [ %i.rg, %bb.ea ], [ %.sroa.011.0.i.i, %.noexc143 ]
  %.sroa.011.0.i.i = load ptr, ptr %.sroa.011.0.in.i.i, align 8, !tbaa !203 ; 3 uses
  %.not.i.i142 = icmp eq ptr %.sroa.011.0.i.i, null
  br i1 %.not.i.i142, label %_ZNSt13unordered_mapIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt10unique_ptrINS2_10RlsRequestENS0_16OrphanableDeleteEEN4absl12lts_2025051213hash_internal4HashIS3_EESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSG_.exit.thread, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 8
  %i.ri = invoke noundef zeroext i1 @_ZSteqRKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EESG_(ptr noundef nonnull align 8 dereferenceable(48) %36, ptr noundef nonnull align 8 dereferenceable(64) %i.rh)
          to label %.noexc143 unwind label %.loopexit278

.noexc143:                                        ; preds = %bb.ec
  br i1 %i.ri, label %_ZNSt13unordered_mapIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt10unique_ptrINS2_10RlsRequestENS0_16OrphanableDeleteEEN4absl12lts_2025051213hash_internal4HashIS3_EESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSG_.exit.thread253, label %bb.eb, !llvm.loop !932

_ZNSt13unordered_mapIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt10unique_ptrINS2_10RlsRequestENS0_16OrphanableDeleteEEN4absl12lts_2025051213hash_internal4HashIS3_EESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSG_.exit.thread253: ; preds = %.noexc143
  br i1 %i.rc, label %bb.lx, label %.critedge.thread

bb.ed:                                            ; preds = %_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache4FindERKNS1_10RequestKeyE.exit.thread
  %i.rj = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !102 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %.not18.i.i.i.i.i.i.i.i = icmp eq ptr %i.rk, %i.rl
  br i1 %.not18.i.i.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hash_code_baseIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt4pairIKS4_St10unique_ptrINS3_10RlsRequestENS1_16OrphanableDeleteEEENS_10_Select1stEN4absl12lts_2025051213hash_internal4HashIS4_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS6_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ed, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit10.i.i.i.i.i.i.i.i
  %.sroa.08.020.i.i.i.i.i.i.i.i = phi i64 [ %i.sf, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit10.i.i.i.i.i.i.i.i ], [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.ed ]
  %.sroa.012.019.i.i.i.i.i.i.i.i = phi ptr [ %i.sg, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit10.i.i.i.i.i.i.i.i ], [ %i.rk, %bb.ed ] ; 5 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.012.019.i.i.i.i.i.i.i.i, i64 32
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !78
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.012.019.i.i.i.i.i.i.i.i, i64 40
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !79
  %i.rq = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.rn, i64 noundef %i.rp, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i.i.i.i.i.i.i.i unwind label %bb.ee

bb.ee:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.rr = landingpad { ptr, i32 }
          catch ptr null
  %i.rs = extractvalue { ptr, i32 } %i.rr, 0
  call void @__clang_call_terminate(ptr %i.rs) #42
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.012.019.i.i.i.i.i.i.i.i, i64 64
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !78
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.012.019.i.i.i.i.i.i.i.i, i64 72
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !79
  %i.rx = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.ru, i64 noundef %i.rw, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit10.i.i.i.i.i.i.i.i unwind label %bb.ef

bb.ef:                                            ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i.i.i.i.i.i.i.i
  %i.ry = landingpad { ptr, i32 }
          catch ptr null
  %i.rz = extractvalue { ptr, i32 } %i.ry, 0
  call void @__clang_call_terminate(ptr %i.rz) #42
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit10.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i.i.i.i.i.i.i.i
  %i.sa = xor i64 %i.rq, %.sroa.08.020.i.i.i.i.i.i.i.i
  %i.sb = mul i64 %i.sa, -2543921745674291987
  %i.sc = call noundef i64 @llvm.bswap.i64(i64 %i.sb)
  %i.sd = xor i64 %i.rx, %i.sc
  %i.se = mul i64 %i.sd, -2543921745674291987
  %i.sf = call noundef i64 @llvm.bswap.i64(i64 %i.se) ; 2 uses
  %i.sg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.012.019.i.i.i.i.i.i.i.i) #43 ; 2 uses
  %.not.i.i.i.i.i.i.i.i140 = icmp eq ptr %i.sg, %i.rl
  br i1 %.not.i.i.i.i.i.i.i.i140, label %_ZNKSt8__detail15_Hash_code_baseIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt4pairIKS4_St10unique_ptrINS3_10RlsRequestENS1_16OrphanableDeleteEEENS_10_Select1stEN4absl12lts_2025051213hash_internal4HashIS4_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS6_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_ZNKSt8__detail15_Hash_code_baseIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt4pairIKS4_St10unique_ptrINS3_10RlsRequestENS1_16OrphanableDeleteEEENS_10_Select1stEN4absl12lts_2025051213hash_internal4HashIS4_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS6_.exit.i.i: ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit10.i.i.i.i.i.i.i.i, %bb.ed
  %.sroa.08.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.ed ], [ %i.sf, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit10.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.val107, i64 240 ; 2 uses
  %.val9.i.i = load i64, ptr %i.sh, align 8, !tbaa !312
  %i.si = urem i64 %.sroa.08.0.lcssa.i.i.i.i.i.i.i.i, %.val9.i.i ; 2 uses
  %i.sj = load ptr, ptr %i.rd, align 8, !tbaa !311
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.si
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !206 ; 3 uses
  %.not.i.i.i.i141 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i.i141, label %_ZNSt13unordered_mapIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt10unique_ptrINS2_10RlsRequestENS0_16OrphanableDeleteEEN4absl12lts_2025051213hash_internal4HashIS3_EESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSG_.exit.thread, label %bb.eg

bb.eg:                                            ; preds = %_ZNKSt8__detail15_Hash_code_baseIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt4pairIKS4_St10unique_ptrINS3_10RlsRequestENS1_16OrphanableDeleteEEENS_10_Select1stEN4absl12lts_2025051213hash_internal4HashIS4_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS6_.exit.i.i
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !203 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.sm, i64 64
  %.val.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !208
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ei, %bb.eg
  %.val.i.i.i.i.i = phi i64 [ %.val.i.pre.i.i.i.i, %bb.eg ], [ %.val21.i.i.i.i, %bb.ei ]
  %.015.i.i.i.i = phi ptr [ %i.sl, %bb.eg ], [ %.0.i.i.i.i, %bb.ei ]
  %.0.i.i.i.i = phi ptr [ %i.sm, %bb.eg ], [ %i.sq, %bb.ei ] ; 3 uses
  %i.sn = icmp eq i64 %.sroa.08.0.lcssa.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.sn, label %_ZNKSt8__detail15_Hashtable_baseIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt4pairIKS4_St10unique_ptrINS3_10RlsRequestENS1_16OrphanableDeleteEEENS_10_Select1stESt8equal_toIS4_EN4absl12lts_2025051213hash_internal4HashIS4_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS6_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt4pairIKS4_St10unique_ptrINS3_10RlsRequestENS1_16OrphanableDeleteEEENS_10_Select1stESt8equal_toIS4_EN4absl12lts_2025051213hash_internal4HashIS4_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS6_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt4pairIKS4_St10unique_ptrINS3_10RlsRequestENS1_16OrphanableDeleteEEENS_10_Select1stESt8equal_toIS4_EN4absl12lts_2025051213hash_internal4HashIS4_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS6_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i.i: ; preds = %bb.eh
  %i.so = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.sp = invoke noundef zeroext i1 @_ZSteqRKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EESG_(ptr noundef nonnull align 8 dereferenceable(48) %36, ptr noundef nonnull align 8 dereferenceable(64) %i.so)
          to label %.noexc144 unwind label %.loopexit.split-lp279

.noexc144:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt4pairIKS4_St10unique_ptrINS3_10RlsRequestENS1_16OrphanableDeleteEEENS_10_Select1stESt8equal_toIS4_EN4absl12lts_2025051213hash_internal4HashIS4_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS6_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i.i
  br i1 %i.sp, label %_ZNSt13unordered_mapIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt10unique_ptrINS2_10RlsRequestENS0_16OrphanableDeleteEEN4absl12lts_2025051213hash_internal4HashIS3_EESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSG_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt4pairIKS4_St10unique_ptrINS3_10RlsRequestENS1_16OrphanableDeleteEEENS_10_Select1stESt8equal_toIS4_EN4absl12lts_2025051213hash_internal4HashIS4_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS6_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt4pairIKS4_St10unique_ptrINS3_10RlsRequestENS1_16OrphanableDeleteEEENS_10_Select1stESt8equal_toIS4_EN4absl12lts_2025051213hash_internal4HashIS4_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS6_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i.i: ; preds = %.noexc144, %bb.eh
  %i.sq = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !203 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.sq, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt10unique_ptrINS2_10RlsRequestENS0_16OrphanableDeleteEEN4absl12lts_2025051213hash_internal4HashIS3_EESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSG_.exit.thread, label %bb.ei

bb.ei:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt4pairIKS4_St10unique_ptrINS3_10RlsRequestENS1_16OrphanableDeleteEEENS_10_Select1stESt8equal_toIS4_EN4absl12lts_2025051213hash_internal4HashIS4_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS6_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i.i
  %.val.i.i10.i.i = load i64, ptr %i.sh, align 8, !tbaa !312
  %i.sr = getelementptr i8, ptr %i.sq, i64 64
  %.val21.i.i.i.i = load i64, ptr %i.sr, align 8, !tbaa !208 ; 2 uses
  %i.ss = urem i64 %.val21.i.i.i.i, %.val.i.i10.i.i
  %.not19.i.i.i.i = icmp eq i64 %i.ss, %i.si
  br i1 %.not19.i.i.i.i, label %bb.eh, label %_ZNSt13unordered_mapIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt10unique_ptrINS2_10RlsRequestENS0_16OrphanableDeleteEEN4absl12lts_2025051213hash_internal4HashIS3_EESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSG_.exit.thread, !llvm.loop !44

_ZNSt13unordered_mapIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt10unique_ptrINS2_10RlsRequestENS0_16OrphanableDeleteEEN4absl12lts_2025051213hash_internal4HashIS3_EESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSG_.exit: ; preds = %.noexc144
  %i.st = load ptr, ptr %.015.i.i.i.i, align 8, !tbaa !203
  %i.su = icmp eq ptr %i.st, null
  br i1 %i.su, label %_ZNSt13unordered_mapIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt10unique_ptrINS2_10RlsRequestENS0_16OrphanableDeleteEEN4absl12lts_2025051213hash_internal4HashIS3_EESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSG_.exit.thread, label %.critedge

_ZNSt13unordered_mapIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt10unique_ptrINS2_10RlsRequestENS0_16OrphanableDeleteEEN4absl12lts_2025051213hash_internal4HashIS3_EESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSG_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt4pairIKS4_St10unique_ptrINS3_10RlsRequestENS1_16OrphanableDeleteEEENS_10_Select1stESt8equal_toIS4_EN4absl12lts_2025051213hash_internal4HashIS4_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS6_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i.i, %bb.ei, %bb.eb, %_ZNKSt8__detail15_Hash_code_baseIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt4pairIKS4_St10unique_ptrINS3_10RlsRequestENS1_16OrphanableDeleteEEENS_10_Select1stEN4absl12lts_2025051213hash_internal4HashIS4_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS6_.exit.i.i, %_ZNSt13unordered_mapIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt10unique_ptrINS2_10RlsRequestENS0_16OrphanableDeleteEEN4absl12lts_2025051213hash_internal4HashIS3_EESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSG_.exit
  %.val105 = load ptr, ptr %i.u, align 8, !tbaa !347
  %i.sv = getelementptr inbounds nuw i8, ptr %.val105, i64 288
  %.val125 = load ptr, ptr %i.sv, align 8, !tbaa !319 ; 26 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.val125, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  br i1 %.not.i.i, label %_ZN9grpc_core9Timestamp3NowEv.exit.i.i, label %bb.ej

bb.ej:                                            ; preds = %_ZNSt13unordered_mapIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt10unique_ptrINS2_10RlsRequestENS0_16OrphanableDeleteEEN4absl12lts_2025051213hash_internal4HashIS3_EESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSG_.exit.thread
  invoke void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E()
          to label %_ZN9grpc_core9Timestamp3NowEv.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp

_ZN9grpc_core9Timestamp3NowEv.exit.i.i:           ; preds = %bb.ej, %_ZNSt13unordered_mapIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESt10unique_ptrINS2_10RlsRequestENS0_16OrphanableDeleteEEN4absl12lts_2025051213hash_internal4HashIS3_EESt8equal_toIS3_ESaISt4pairIKS3_S7_EEE4findERSG_.exit.thread
  %i.sx = load ptr, ptr %i.oz, align 8, !tbaa !425 ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !63
  %i.sz = load ptr, ptr %i.sy, align 8
  %i.ta = invoke i64 %i.sz(ptr noundef nonnull align 8 dereferenceable(8) %i.sx)
          to label %.noexc149 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !933

.noexc149:                                        ; preds = %_ZN9grpc_core9Timestamp3NowEv.exit.i.i
  %.sroa.012.0.copyload.fr.i.i = freeze i64 %i.ta ; 14 uses
  store i64 %.sroa.012.0.copyload.fr.i.i, ptr %23, align 8
  %i.tb = getelementptr inbounds nuw i8, ptr %.val125, i64 5128 ; 6 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.val125, i64 5096 ; 4 uses
  %i.td = load ptr, ptr %i.tb, align 8, !tbaa !480 ; 5 uses
  %i.te = load ptr, ptr %i.tc, align 8, !tbaa !480 ; 3 uses
  %i.tf = icmp eq ptr %i.td, %i.te
  br i1 %i.tf, label %.critedge.i.i146, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc149
  %.not.i.i.i = icmp eq i64 %.sroa.012.0.copyload.fr.i.i, 9223372036854775807 ; 2 uses
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 9223372036854775807, i64 -9223372036854775808 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %.sroa.012.0.copyload.fr.i.i, -9223372036854775808 ; 3 uses
  %i.tg = icmp sgt i64 %.sroa.012.0.copyload.fr.i.i, 0
  %i.th = sub nsw i64 -9223372036854775808, %.sroa.012.0.copyload.fr.i.i
  %i.ti = sub nuw nsw i64 9223372036854775807, %.sroa.012.0.copyload.fr.i.i
  %i.tj = getelementptr inbounds nuw i8, ptr %.val125, i64 5112 ; 4 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.val125, i64 5104 ; 4 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.val125, i64 5120 ; 4 uses
  br i1 %.not.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.us.i.i
  %i.tm = phi ptr [ %i.tw, %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.us.i.i ], [ %i.td, %.lr.ph.i.i ] ; 2 uses
  %i.tn = phi ptr [ %storemerge.i.us.i.i, %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.us.i.i ], [ %i.te, %.lr.ph.i.i ] ; 4 uses
  %.sroa.011.0.copyload.us.i.i = load i64, ptr %i.tn, align 8, !tbaa !74
  switch i64 %.sroa.011.0.copyload.us.i.i, label %.thread.i.us.i.i [
    i64 -9223372036854775808, label %48
    i64 9223372036854775807, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.us.i.i
  ]

48:                                               ; preds = %.lr.ph.split.us.i.i
  br i1 %.not12.i.i.i, label %.thread.i.us.i.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.us.i.i

.thread.i.us.i.i:                                 ; preds = %48, %.lr.ph.split.us.i.i
  br label %_ZN9grpc_coremiENS_9TimestampES0_.exit.us.i.i

_ZN9grpc_coremiENS_9TimestampES0_.exit.us.i.i:    ; preds = %.thread.i.us.i.i, %48, %.lr.ph.split.us.i.i
  %.sroa.04.0.i.us.i.i = phi i64 [ 9223372036854775807, %.thread.i.us.i.i ], [ 9223372036854775807, %48 ], [ %spec.select.i.i.i, %.lr.ph.split.us.i.i ]
  %.sroa.010.0.copyload.us.i.i = load i64, ptr %i.sw, align 8, !tbaa !74
  %49 = icmp sgt i64 %.sroa.04.0.i.us.i.i, %.sroa.010.0.copyload.us.i.i
  br i1 %49, label %bb.ek, label %.critedge.i.i146

bb.ek:                                            ; preds = %_ZN9grpc_coremiENS_9TimestampES0_.exit.us.i.i
  %i.to = load ptr, ptr %i.tj, align 8, !tbaa !982
  %i.tp = getelementptr inbounds i8, ptr %i.to, i64 -8
  %.not.i14.us.i.i = icmp eq ptr %i.tn, %i.tp
  br i1 %.not.i14.us.i.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  br label %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.us.i.i

bb.em:                                            ; preds = %bb.ek
  %i.tr = load ptr, ptr %i.tk, align 8, !tbaa !983
  call void @_ZdlPvm(ptr noundef %i.tr, i64 noundef 512) #41
  %i.ts = load ptr, ptr %i.tl, align 8, !tbaa !481
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8 ; 2 uses
  store ptr %i.tt, ptr %i.tl, align 8, !tbaa !482
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !483 ; 3 uses
  store ptr %i.tu, ptr %i.tk, align 8, !tbaa !484
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 512
  store ptr %i.tv, ptr %i.tj, align 8, !tbaa !485
  %.pre63.i.i = load ptr, ptr %i.tb, align 8, !tbaa !480
  br label %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.us.i.i

_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.us.i.i: ; preds = %bb.em, %bb.el
  %i.tw = phi ptr [ %i.tm, %bb.el ], [ %.pre63.i.i, %bb.em ] ; 4 uses
  %storemerge.i.us.i.i = phi ptr [ %i.tq, %bb.el ], [ %i.tu, %bb.em ] ; 3 uses
  store ptr %storemerge.i.us.i.i, ptr %i.tc, align 8, !tbaa !486
  %i.tx = icmp eq ptr %i.tw, %storemerge.i.us.i.i
  br i1 %i.tx, label %.critedge.i.i146, label %.lr.ph.split.us.i.i, !llvm.loop !934

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.i.i
  %i.ty = phi ptr [ %i.uo, %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.i.i ], [ %i.td, %.lr.ph.i.i ] ; 5 uses
  %i.tz = phi ptr [ %storemerge.i.i.i, %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.i.i ], [ %i.te, %.lr.ph.i.i ] ; 7 uses
  %.sroa.011.0.copyload.i.i = load i64, ptr %i.tz, align 8, !tbaa !74 ; 4 uses
  switch i64 %.sroa.011.0.copyload.i.i, label %.thread.i.i.i [
    i64 -9223372036854775808, label %bb.en
    i64 9223372036854775807, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i
  ]

bb.en:                                            ; preds = %.lr.ph.split.i.i
  br i1 %.not12.i.i.i, label %.critedge.i.i146, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.split.i.i
  %i.ua = sub nsw i64 0, %.sroa.011.0.copyload.i.i ; 2 uses
  %i.ub = icmp eq i64 %.sroa.011.0.copyload.i.i, -9223372036854775807
  br i1 %i.ub, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i, label %bb.eo

bb.eo:                                            ; preds = %.thread.i.i.i
  br i1 %.not12.i.i.i, label %.critedge.i.i146, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  br i1 %i.tg, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.uc = icmp slt i64 %i.ti, %i.ua
  br i1 %i.uc, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i, label %bb.es

bb.er:                                            ; preds = %bb.ep
  %i.ud = icmp sgt i64 %i.th, %i.ua
  br i1 %i.ud, label %.critedge.i.i146, label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.ue = sub i64 %.sroa.012.0.copyload.fr.i.i, %.sroa.011.0.copyload.i.i
  br label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i

_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i:       ; preds = %bb.es, %bb.eq, %.thread.i.i.i, %bb.en, %.lr.ph.split.i.i
  %.sroa.04.0.i.i.i = phi i64 [ 9223372036854775807, %bb.eq ], [ 9223372036854775807, %bb.en ], [ %i.ue, %bb.es ], [ 9223372036854775807, %.thread.i.i.i ], [ %spec.select.i.i.i, %.lr.ph.split.i.i ]
  %.sroa.010.0.copyload.i.i = load i64, ptr %i.sw, align 8, !tbaa !74
  %i.uf = icmp sgt i64 %.sroa.04.0.i.i.i, %.sroa.010.0.copyload.i.i
  br i1 %i.uf, label %bb.et, label %.critedge.i.i146

bb.et:                                            ; preds = %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i
  %i.ug = load ptr, ptr %i.tj, align 8, !tbaa !982
  %i.uh = getelementptr inbounds i8, ptr %i.ug, i64 -8
  %.not.i14.i.i = icmp eq ptr %i.tz, %i.uh
  br i1 %.not.i14.i.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  br label %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.i.i

bb.ev:                                            ; preds = %bb.et
  %i.uj = load ptr, ptr %i.tk, align 8, !tbaa !983
  call void @_ZdlPvm(ptr noundef %i.uj, i64 noundef 512) #41
  %i.uk = load ptr, ptr %i.tl, align 8, !tbaa !481
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 8 ; 2 uses
  store ptr %i.ul, ptr %i.tl, align 8, !tbaa !482
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !483 ; 3 uses
  store ptr %i.um, ptr %i.tk, align 8, !tbaa !484
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 512
  store ptr %i.un, ptr %i.tj, align 8, !tbaa !485
  %.pre.i.i147 = load ptr, ptr %i.tb, align 8, !tbaa !480
  br label %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.i.i

_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.i.i: ; preds = %bb.ev, %bb.eu
  %i.uo = phi ptr [ %i.ty, %bb.eu ], [ %.pre.i.i147, %bb.ev ] ; 4 uses
  %storemerge.i.i.i = phi ptr [ %i.ui, %bb.eu ], [ %i.um, %bb.ev ] ; 3 uses
  store ptr %storemerge.i.i.i, ptr %i.tc, align 8, !tbaa !486
  %i.up = icmp eq ptr %i.uo, %storemerge.i.i.i
  br i1 %i.up, label %.critedge.i.i146, label %.lr.ph.split.i.i, !llvm.loop !934

.critedge.i.i146:                                 ; preds = %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.i.i, %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i, %bb.er, %bb.eo, %bb.en, %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.us.i.i, %_ZN9grpc_coremiENS_9TimestampES0_.exit.us.i.i, %.noexc149
  %50 = phi ptr [ %i.tn, %_ZN9grpc_coremiENS_9TimestampES0_.exit.us.i.i ], [ %i.td, %.noexc149 ], [ %i.tw, %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.us.i.i ], [ %i.uo, %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.i.i ], [ %i.tz, %bb.eo ], [ %i.tz, %bb.er ], [ %i.tz, %bb.en ], [ %i.tz, %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i ]
  %51 = phi ptr [ %i.tm, %_ZN9grpc_coremiENS_9TimestampES0_.exit.us.i.i ], [ %i.td, %.noexc149 ], [ %i.tw, %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.us.i.i ], [ %i.uo, %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit.i.i ], [ %i.ty, %bb.eo ], [ %i.ty, %bb.er ], [ %i.ty, %bb.en ], [ %i.ty, %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i ]
  %i.uq = getelementptr inbounds nuw i8, ptr %.val125, i64 5080
  %i.ur = getelementptr inbounds nuw i8, ptr %.val125, i64 5208 ; 4 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.val125, i64 5176 ; 2 uses
  %i.ut = load ptr, ptr %i.ur, align 8, !tbaa !480 ; 4 uses
  %i.uu = load ptr, ptr %i.us, align 8, !tbaa !480 ; 2 uses
  %i.uv = icmp eq ptr %i.ut, %i.uu
  br i1 %i.uv, label %.critedge2.i.i, label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.critedge.i.i146
  %.not.i15.i.i = icmp eq i64 %.sroa.012.0.copyload.fr.i.i, 9223372036854775807 ; 2 uses
  %spec.select.i16.i.i = select i1 %.not.i15.i.i, i64 9223372036854775807, i64 -9223372036854775808
  %.not12.i18.i.i = icmp eq i64 %.sroa.012.0.copyload.fr.i.i, -9223372036854775808 ; 2 uses
  %i.uw = icmp sgt i64 %.sroa.012.0.copyload.fr.i.i, 0
  %i.ux = sub nsw i64 -9223372036854775808, %.sroa.012.0.copyload.fr.i.i
  %i.uy = sub nuw nsw i64 9223372036854775807, %.sroa.012.0.copyload.fr.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %.val125, i64 5192 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.val125, i64 5184 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.val125, i64 5200 ; 2 uses
  br label %bb.ew

bb.ew:                                            ; preds = %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit25.i.i, %.lr.ph50.i.i
  %i.vc = phi ptr [ %i.ut, %.lr.ph50.i.i ], [ %i.vt, %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit25.i.i ] ; 4 uses
  %i.vd = phi ptr [ %i.uu, %.lr.ph50.i.i ], [ %storemerge.i24.i.i, %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit25.i.i ] ; 6 uses
  %.sroa.08.0.copyload.i.i = load i64, ptr %i.vd, align 8, !tbaa !74 ; 5 uses
  switch i64 %.sroa.08.0.copyload.i.i, label %.thread.i19.i.i [
    i64 -9223372036854775808, label %bb.ex
    i64 9223372036854775807, label %_ZN9grpc_coremiENS_9TimestampES0_.exit22.i.i
  ]

bb.ex:                                            ; preds = %bb.ew
  br i1 %.not12.i18.i.i, label %.thread.i19.i.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit22.i.i

.thread.i19.i.i:                                  ; preds = %bb.ex, %bb.ew
  %i.ve = sub nsw i64 0, %.sroa.08.0.copyload.i.i ; 2 uses
  %i.vf = icmp eq i64 %.sroa.08.0.copyload.i.i, -9223372036854775807
  %or.cond.i.i20.i.i = or i1 %.not.i15.i.i, %i.vf
  br i1 %or.cond.i.i20.i.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit22.i.i, label %bb.ey

bb.ey:                                            ; preds = %.thread.i19.i.i
  %i.vg = icmp eq i64 %.sroa.08.0.copyload.i.i, -9223372036854775808
  %or.cond9.i.i21.i.i = or i1 %.not12.i18.i.i, %i.vg
  br i1 %or.cond9.i.i21.i.i, label %.critedge2.loopexit.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  br i1 %i.uw, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.vh = icmp slt i64 %i.uy, %i.ve
  br i1 %i.vh, label %_ZN9grpc_coremiENS_9TimestampES0_.exit22.i.i, label %bb.fc

bb.fb:                                            ; preds = %bb.ez
  %i.vi = icmp sgt i64 %i.ux, %i.ve
  br i1 %i.vi, label %.critedge2.loopexit.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.vj = sub i64 %.sroa.012.0.copyload.fr.i.i, %.sroa.08.0.copyload.i.i
  br label %_ZN9grpc_coremiENS_9TimestampES0_.exit22.i.i

_ZN9grpc_coremiENS_9TimestampES0_.exit22.i.i:     ; preds = %bb.fc, %bb.fa, %.thread.i19.i.i, %bb.ex, %bb.ew
  %.sroa.04.0.i17.i.i = phi i64 [ 9223372036854775807, %bb.fa ], [ 9223372036854775807, %bb.ex ], [ %i.vj, %bb.fc ], [ 9223372036854775807, %.thread.i19.i.i ], [ %spec.select.i16.i.i, %bb.ew ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.sw, align 8, !tbaa !74
  %i.vk = icmp sgt i64 %.sroa.04.0.i17.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.vk, label %bb.fd, label %.critedge2.loopexit.i.i

bb.fd:                                            ; preds = %_ZN9grpc_coremiENS_9TimestampES0_.exit22.i.i
  %i.vl = load ptr, ptr %i.uz, align 8, !tbaa !982
  %i.vm = getelementptr inbounds i8, ptr %i.vl, i64 -8
  %.not.i23.i.i = icmp eq ptr %i.vd, %i.vm
  br i1 %.not.i23.i.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  br label %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit25.i.i

bb.ff:                                            ; preds = %bb.fd
  %i.vo = load ptr, ptr %i.va, align 8, !tbaa !983
  call void @_ZdlPvm(ptr noundef %i.vo, i64 noundef 512) #41
  %i.vp = load ptr, ptr %i.vb, align 8, !tbaa !481
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8 ; 2 uses
  store ptr %i.vq, ptr %i.vb, align 8, !tbaa !482
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !483 ; 3 uses
  store ptr %i.vr, ptr %i.va, align 8, !tbaa !484
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 512
  store ptr %i.vs, ptr %i.uz, align 8, !tbaa !485
  %.pre64.i.i = load ptr, ptr %i.ur, align 8, !tbaa !480
  br label %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit25.i.i

_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit25.i.i: ; preds = %bb.ff, %bb.fe
  %i.vt = phi ptr [ %i.vc, %bb.fe ], [ %.pre64.i.i, %bb.ff ] ; 4 uses
  %storemerge.i24.i.i = phi ptr [ %i.vn, %bb.fe ], [ %i.vr, %bb.ff ] ; 3 uses
  store ptr %storemerge.i24.i.i, ptr %i.us, align 8, !tbaa !486
  %i.vu = icmp eq ptr %i.vt, %storemerge.i24.i.i
  br i1 %i.vu, label %.critedge2.loopexit.i.i, label %bb.ew, !llvm.loop !935

.critedge2.loopexit.i.i:                          ; preds = %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit25.i.i, %_ZN9grpc_coremiENS_9TimestampES0_.exit22.i.i, %bb.fb, %bb.ey
  %.lcssa38.ph.i.i = phi ptr [ %i.vc, %_ZN9grpc_coremiENS_9TimestampES0_.exit22.i.i ], [ %i.vt, %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit25.i.i ], [ %i.vc, %bb.ey ], [ %i.vc, %bb.fb ]
  %.lcssa37.ph.i.i = phi ptr [ %i.vd, %_ZN9grpc_coremiENS_9TimestampES0_.exit22.i.i ], [ %i.vt, %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9pop_frontEv.exit25.i.i ], [ %i.vd, %bb.ey ], [ %i.vd, %bb.fb ]
  %.pre65.i.i = load ptr, ptr %i.tb, align 8, !tbaa !480
  %.pre66.i.i = load ptr, ptr %i.tc, align 8, !tbaa !480
  br label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %.critedge2.loopexit.i.i, %.critedge.i.i146
  %i.vv = phi ptr [ %50, %.critedge.i.i146 ], [ %.pre66.i.i, %.critedge2.loopexit.i.i ]
  %i.vw = phi ptr [ %51, %.critedge.i.i146 ], [ %.pre65.i.i, %.critedge2.loopexit.i.i ]
  %.lcssa38.i.i = phi ptr [ %i.ut, %.critedge.i.i146 ], [ %.lcssa38.ph.i.i, %.critedge2.loopexit.i.i ]
  %.lcssa37.i.i = phi ptr [ %i.ut, %.critedge.i.i146 ], [ %.lcssa37.ph.i.i, %.critedge2.loopexit.i.i ]
  %i.vx = getelementptr inbounds nuw i8, ptr %.val125, i64 5152
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !482 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.val125, i64 5120
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !482
  %i.wb = getelementptr inbounds nuw i8, ptr %.val125, i64 5136
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !484
  %i.wd = getelementptr inbounds nuw i8, ptr %.val125, i64 5112
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !485
  %i.wf = getelementptr inbounds nuw i8, ptr %.val125, i64 5232
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !482 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.val125, i64 5200
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !482
  %i.wj = getelementptr inbounds nuw i8, ptr %.val125, i64 5216
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !484
  %i.wl = getelementptr inbounds nuw i8, ptr %.val125, i64 5192
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !485
  %i.wn = getelementptr inbounds nuw i8, ptr %.val125, i64 64
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !371
  %i.wp = getelementptr inbounds nuw i8, ptr %.val125, i64 72
  %i.wq = load i32, ptr %i.wp, align 8, !tbaa !372
  %i.wr = getelementptr inbounds nuw i8, ptr %.val125, i64 80
  %i.ws = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401F8000000000000000)
  %i.wt = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.wu = fdiv x86_fp80 %i.ws, %i.wt
  %i.wv = fptoui x86_fp80 %i.wu to i64            ; 2 uses
  %i.ww = add i64 %i.wv, 23
  %i.wx = udiv i64 %i.ww, %i.wv
  %spec.select.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.wx, i64 1)
  br label %select.unfold.i.i.i.i.i.i

bb.fg:                                            ; preds = %.noexc150
  %i.wy = getelementptr inbounds nuw i8, ptr %.val125, i64 5160
  %i.wz = ptrtoint ptr %i.vy to i64
  %i.xa = ptrtoint ptr %i.wa to i64
  %i.xb = sub i64 %i.wz, %i.xa
  %i.xc = ashr exact i64 %i.xb, 3
  %i.xd = icmp ne ptr %i.vy, null
  %.neg.i.i.i.i = sext i1 %i.xd to i64
  %i.xe = add nsw i64 %i.xc, %.neg.i.i.i.i
  %i.xf = shl nsw i64 %i.xe, 6
  %i.xg = ptrtoint ptr %i.vw to i64
  %i.xh = ptrtoint ptr %i.wc to i64
  %i.xi = sub i64 %i.xg, %i.xh
  %i.xj = ashr exact i64 %i.xi, 3
  %i.xk = add nsw i64 %i.xf, %i.xj
  %i.xl = ptrtoint ptr %i.we to i64
  %i.xm = ptrtoint ptr %i.vv to i64
  %i.xn = sub i64 %i.xl, %i.xm
  %i.xo = ashr exact i64 %i.xn, 3
  %i.xp = add nsw i64 %i.xk, %i.xo
  %i.xq = uitofp i64 %i.xp to float               ; 3 uses
  %i.xr = ptrtoint ptr %i.wg to i64
  %i.xs = ptrtoint ptr %i.wi to i64
  %i.xt = sub i64 %i.xr, %i.xs
  %i.xu = ashr exact i64 %i.xt, 3
  %i.xv = icmp ne ptr %i.wg, null
  %.neg.i.i26.i.i = sext i1 %i.xv to i64
  %i.xw = add nsw i64 %i.xu, %.neg.i.i26.i.i
  %i.xx = shl nsw i64 %i.xw, 6
  %i.xy = ptrtoint ptr %.lcssa38.i.i to i64
  %i.xz = ptrtoint ptr %i.wk to i64
  %i.ya = sub i64 %i.xy, %i.xz
  %i.yb = ashr exact i64 %i.ya, 3
  %i.yc = add nsw i64 %i.xx, %i.yb
  %i.yd = ptrtoint ptr %i.wm to i64
  %i.ye = ptrtoint ptr %.lcssa37.i.i to i64
  %i.yf = sub i64 %i.yd, %i.ye
  %i.yg = ashr exact i64 %i.yf, 3
  %i.yh = add nsw i64 %i.yc, %i.yg
  %i.yi = uitofp i64 %i.yh to float
  %i.yj = fsub float %i.xq, %i.yi
  %i.yk = fpext float %i.xq to double
  %i.yl = fpext float %i.yj to double
  %i.ym = fneg double %i.yl
  %i.yn = call double @llvm.fmuladd.f64(double %i.ym, double %i.wo, double %i.yk)
  %i.yo = sitofp i32 %i.wq to float
  %i.yp = fadd float %i.xq, %i.yo
  %i.yq = fpext float %i.yp to double
  %i.yr = fdiv double %i.yn, %i.yq
  %i.ys = fptrunc double %i.yr to float
  %i.yt = fdiv float %i.yx, %i.yy                 ; 2 uses
  %i.yu = fcmp ult float %i.yt, 1.000000e+00
  br i1 %i.yu, label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit.i.i, label %bb.fh, !prof !137

select.unfold.i.i.i.i.i.i:                        ; preds = %.noexc150, %.critedge2.i.i
  %.023.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i, %.critedge2.i.i ], [ %i.yz, %.noexc150 ]
  %.01422.i.i.i.i.i.i = phi float [ 1.000000e+00, %.critedge2.i.i ], [ %i.yy, %.noexc150 ] ; 2 uses
  %.01521.i.i.i.i.i.i = phi float [ 0.000000e+00, %.critedge2.i.i ], [ %i.yx, %.noexc150 ]
  %i.yv = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.wr)
          to label %.noexc150 unwind label %.loopexit.split-lp.loopexit

.noexc150:                                        ; preds = %select.unfold.i.i.i.i.i.i
  %i.yw = uitofp i64 %i.yv to float
  %i.yx = call float @llvm.fmuladd.f32(float %i.yw, float %.01422.i.i.i.i.i.i, float %.01521.i.i.i.i.i.i) ; 2 uses
  %i.yy = fmul float %.01422.i.i.i.i.i.i, f0x4F800000 ; 2 uses
  %i.yz = add i64 %.023.i.i.i.i.i.i, -1           ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.yz, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.fg, label %select.unfold.i.i.i.i.i.i, !llvm.loop !936

bb.fh:                                            ; preds = %bb.fg
  br label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit.i.i

_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit.i.i: ; preds = %bb.fh, %bb.fg
  %.016.i.i.i.i.i.i = phi float [ f0x3F7FFFFF, %bb.fh ], [ %i.yt, %bb.fg ]
  %i.za = fcmp olt float %.016.i.i.i.i.i.i, %i.ys
  br i1 %i.za, label %bb.fi, label %bb.fu

bb.fi:                                            ; preds = %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit.i.i
  %i.zb = load ptr, ptr %i.tb, align 8, !tbaa !487 ; 3 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.val125, i64 5144
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !488
  %i.ze = getelementptr inbounds i8, ptr %i.zd, i64 -8
  %.not.i27.i.i = icmp eq ptr %i.zb, %i.ze
  br i1 %.not.i27.i.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  store i64 %.sroa.012.0.copyload.fr.i.i, ptr %i.zb, align 8, !tbaa !74
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  store ptr %i.zf, ptr %i.tb, align 8, !tbaa !487
  br label %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9push_backERKS1_.exit.i.i

bb.fk:                                            ; preds = %bb.fi
  invoke void @_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.uq, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9push_backERKS1_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp

_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9push_backERKS1_.exit.i.i: ; preds = %bb.fk, %bb.fj
  %i.zg = load ptr, ptr %i.ur, align 8, !tbaa !487 ; 3 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.val125, i64 5224
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !488
  %i.zj = getelementptr inbounds i8, ptr %i.zi, i64 -8
  %.not.i28.i.i = icmp eq ptr %i.zg, %i.zj
  br i1 %.not.i28.i.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9push_backERKS1_.exit.i.i
  %i.zk = load i64, ptr %23, align 8, !tbaa !74
  store i64 %i.zk, ptr %i.zg, align 8, !tbaa !74
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  store ptr %i.zl, ptr %i.ur, align 8, !tbaa !487
  br label %bb.fn

bb.fm:                                            ; preds = %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE9push_backERKS1_.exit.i.i
  invoke void @_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.wy, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.fn unwind label %.loopexit.split-lp.loopexit.split-lp

bb.fn:                                            ; preds = %bb.fl, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br i1 %i.rc, label %.critedge2, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.zm = getelementptr i8, ptr %.0.i136249, i64 128
  %.val126 = load i64, ptr %i.zm, align 8, !tbaa !74
  %i.zn = icmp slt i64 %.val126, %i.pd
  br i1 %i.zn, label %.critedge2, label %.thread

.thread:                                          ; preds = %bb.fo
  %.val257 = load ptr, ptr %i.u, align 8, !tbaa !347
  %i.zo = getelementptr inbounds nuw i8, ptr %.val257, i64 288
  %.val124258 = load ptr, ptr %i.zo, align 8, !tbaa !319
  br label %_ZNSt10unique_ptrIN9grpc_core7BackOffESt14default_deleteIS1_EED2Ev.exit.i

.critedge2:                                       ; preds = %bb.fn, %bb.fo
  invoke void @_ZN4absl12lts_2025051216UnavailableErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %40, i64 21, ptr nonnull @.str.144)
          to label %bb.fp unwind label %.loopexit.split-lp.loopexit.split-lp

bb.fp:                                            ; preds = %.critedge2
  invoke fastcc void @_ZN9grpc_core12_GLOBAL__N_15RlsLb6Picker27PickFromDefaultTargetOrFailEPKcNS_19LoadBalancingPolicy8PickArgsEN4absl12lts_202505126StatusE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.143, ptr noundef nonnull byval(%"struct.grpc_core::LoadBalancingPolicy::PickArgs") align 8 %2, ptr noundef align 8 %40)
          to label %bb.fq unwind label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  %i.zp = load i64, ptr %40, align 8, !tbaa !134  ; 2 uses
  %i.zq = trunc i64 %i.zp to i1
  br i1 %i.zq, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.zr = inttoptr i64 %i.zp to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.zr)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.zs = landingpad { ptr, i32 }
          catch ptr null
  %i.zt = extractvalue { ptr, i32 } %i.zs, 0
  call void @__clang_call_terminate(ptr %i.zt) #42
  unreachable

.loopexit:                                        ; preds = %bb.jj
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body189

.loopexit.split-lp.loopexit:                      ; preds = %select.unfold.i.i.i.i.i.i
  %lpad.loopexit271 = landingpad { ptr, i32 }
          cleanup
  br label %.body189

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.critedge86.i, %bb.jz, %bb.fm, %bb.fk, %_ZN9grpc_core9Timestamp3NowEv.exit.i.i, %bb.ej, %bb.dw, %bb.dv, %.critedge2
  %lpad.loopexit.split-lp272 = landingpad { ptr, i32 }
          cleanup
end_hunk_0
