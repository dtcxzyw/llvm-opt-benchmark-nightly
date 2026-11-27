Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-other?download=true
inline.NumInlined: 11065
inline.NumDeleted: 4626
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 36
begin_hunk_0_@"_ZN2OT4cmap9serializeI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS5_E_RK4$_19LPv0EES2_IS3_IKNS_14EncodingRecordEEZNKS0_6subsetES9_EUlRSH_E_SD_LSE_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT0_NSN_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tT_SN_PKvP16hb_subset_plan_tbj":bb.a
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !214
  %.not.i1.i.i.i.i = icmp ult i32 %i.zf, %i.aaz
  br i1 %.not.i1.i.i.i.i, label %bb.do, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i.i.i.i

bb.do:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i.i.i.i
  store i32 %i.zf, ptr %i.aay, align 4, !tbaa !214
  %i.aba = load i32, ptr %i.aax, align 8, !tbaa !213
  %i.abb = add i32 %i.aba, -1
  %spec.select.i.i2.i.i.i.i = icmp ult i32 %i.abb, -2
  br i1 %spec.select.i.i2.i.i.i.i, label %bb.dp, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i.i.i.i

bb.dp:                                            ; preds = %bb.do
  %i.abc = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.aax, i32 noundef %i.zf, i1 noundef zeroext true) ; 0 uses
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i.i.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i.i.i.i: ; preds = %bb.dp, %bb.do, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i.i.i.i, %.critedge.i.i.i.i103
  store i32 0, ptr %i.c, align 4, !tbaa !148
  store ptr %i.yw, ptr %i.f, align 8, !tbaa !149
  store ptr %i.yx, ptr %i.l, align 8, !tbaa !150
  call void @_ZN22hb_serialize_context_t21discard_stale_objectsEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222"

.thread.i.i.i:                                    ; preds = %bb.dj, %bb.df
  %i.abd = phi i32 [ %i.aam, %bb.dj ], [ %.0216365, %bb.df ] ; 3 uses
  %i.abe = load i32, ptr %i.c, align 4, !tbaa !148
  %.not54.i.i.i = icmp eq i32 %i.abe, 0
  br i1 %.not54.i.i.i, label %bb.dq, label %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222", !prof !649

bb.dq:                                            ; preds = %.thread.i.i.i
  %i.abf = load ptr, ptr %i.u, align 8, !tbaa !168 ; 4 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 20 ; 3 uses
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !214 ; 2 uses
  %i.abi = add i32 %i.abh, 1                      ; 5 uses
  %i.abj = icmp slt i32 %i.abi, 0
  br i1 %i.abj, label %bb.dv, label %bb.dr, !prof !72

bb.dr:                                            ; preds = %bb.dq
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abf, i64 16
  %i.abl = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.abk, i32 noundef %i.abi, i1 noundef zeroext false)
  br i1 %i.abl, label %bb.ds, label %bb.dv, !prof !255

bb.ds:                                            ; preds = %bb.dr
  %i.abm = load i32, ptr %i.abg, align 4, !tbaa !214 ; 3 uses
  %i.abn = icmp ugt i32 %i.abi, %i.abm
  br i1 %i.abn, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.abo = sub nuw nsw i32 %i.abi, %i.abm
  %i.abp = mul i32 %i.abo, 12                     ; 2 uses
  %.not.i.i.i.i.i.i31.i.i.i = icmp eq i32 %i.abp, 0
  br i1 %.not.i.i.i.i.i.i31.i.i.i, label %bb.dw, label %bb.du, !prof !72

bb.du:                                            ; preds = %bb.dt
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abf, i64 24
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !215
  %i.abs = zext nneg i32 %i.abm to i64
  %i.abt = getelementptr inbounds nuw [12 x i8], ptr %i.abr, i64 %i.abs
  %i.abu = zext i32 %i.abp to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.abt, i8 0, i64 %i.abu, i1 false)
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dr, %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i.i.i

bb.dw:                                            ; preds = %bb.du, %bb.dt, %bb.ds
  store i32 %i.abi, ptr %i.abg, align 4, !tbaa !214
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abf, i64 24
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !215
  %i.abx = zext i32 %i.abh to i64
  %i.aby = getelementptr inbounds nuw [12 x i8], ptr %i.abw, i64 %i.abx
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i.i.i: ; preds = %bb.dw, %bb.dv
  %.0.i.i30.i.i.i = phi ptr [ @_hb_CrapPool, %bb.dv ], [ %i.aby, %bb.dw ] ; 5 uses
  %i.abz = load ptr, ptr %i.u, align 8, !tbaa !168
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 16
  %i.acb = load i32, ptr %i.aca, align 8, !tbaa !213
  %i.acc = icmp slt i32 %i.acb, 0
  br i1 %i.acc, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i.i.i
  %i.acd = load i32, ptr %i.c, align 4, !tbaa !148
  %i.ace = or i32 %i.acd, 1
  store i32 %i.ace, ptr %i.c, align 4, !tbaa !148
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i.i.i
  %i.acf = load i32, ptr %.0.i.i30.i.i.i, align 4
  %i.acg = getelementptr inbounds nuw i8, ptr %.0.i.i30.i.i.i, i64 8
  store i32 %i.abd, ptr %i.acg, align 4, !tbaa !373
  %i.ach = and i32 %i.acf, -64
  %i.aci = or disjoint i32 %i.ach, 4
  store i32 %i.aci, ptr %.0.i.i30.i.i.i, align 4
  %i.acj = load ptr, ptr %i.u, align 8, !tbaa !168
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !235
  %i.acl = ptrtoint ptr %i.zn to i64
  %i.acm = ptrtoint ptr %i.ack to i64
  %i.acn = sub i64 %i.acl, %i.acm
  %i.aco = trunc i64 %i.acn to i32
  %i.acp = getelementptr inbounds nuw i8, ptr %.0.i.i30.i.i.i, i64 4
  store i32 %i.aco, ptr %i.acp, align 4, !tbaa !374
  store i32 4, ptr %.0.i.i30.i.i.i, align 4
  br label %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222"

"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222": ; preds = %_ZNK2OT21SubtableUnicodesCache7set_forEPKNS_14EncodingRecordERS0_.exit.i, %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit", %bb.m, %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit", %bb.af, %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit164", %_ZN22hb_serialize_context_t8snapshotEv.exit.i.i.i, %.critedge.i.i.i.i.i, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT14EncodingRecordEEEPT_mb.exit.i.i.i.i, %bb.dk, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i.i.i.i, %.thread.i.i.i, %bb.dy
  %.1.ph = phi i32 [ %.0216365, %_ZN22hb_serialize_context_t8snapshotEv.exit.i.i.i ], [ %i.abd, %.thread.i.i.i ], [ %i.abd, %bb.dy ], [ 0, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i.i.i.i ], [ 0, %bb.dk ], [ %.0216365, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT14EncodingRecordEEEPT_mb.exit.i.i.i.i ], [ %.0216365, %.critedge.i.i.i.i.i ], [ %.0216365, %bb.m ], [ %.0216365, %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit" ], [ %.0216365, %bb.af ], [ %.0216365, %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit164" ], [ %.0216365, %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit" ], [ %.0216365, %_ZNK2OT21SubtableUnicodesCache7set_forEPKNS_14EncodingRecordERS0_.exit.i ]
  %i.acq = zext i32 %.sroa.7.0368 to i64
  %i.acr = shl nuw nsw i64 %i.acq, 3
  %scevgep481 = getelementptr i8, ptr %.sroa.0174.0369, i64 %i.acr
  %scevgep482 = getelementptr i8, ptr %.sroa.0174.0369, i64 8
  %i.acs = add i32 %.sroa.7.0368, -1
  %i.act = zext i32 %i.acs to i64
  %i.acu = shl nuw nsw i64 %i.act, 3
  %scevgep483 = getelementptr i8, ptr %scevgep482, i64 %i.acu
  %.not.i.i.i.i115852 = icmp eq i32 %.sroa.7.0368, 0
  br i1 %.not.i.i.i.i115852, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit", label %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEERS3_EppEv.exit.i.i, !prof !430

bb.dz:                                            ; preds = %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i"
  br label %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEERS3_EppEv.exit.i.i, !llvm.loop !47

_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEERS3_EppEv.exit.i.i: ; preds = %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222", %bb.dz
  %.sroa.0174.1854 = phi ptr [ %i.acw, %bb.dz ], [ %.sroa.0174.0369, %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222" ] ; 4 uses
  %.sroa.7.1853 = phi i32 [ %i.acv, %bb.dz ], [ %.sroa.7.0368, %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222" ]
  %i.acv = add i32 %.sroa.7.1853, -1              ; 7 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.sroa.0174.1854, i64 8 ; 7 uses
  %.not.i.i116 = icmp eq i32 %i.acv, 0
  br i1 %.not.i.i116, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit", label %bb.ea

bb.ea:                                            ; preds = %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEERS3_EppEv.exit.i.i
  %i.acx = load i16, ptr %i.acw, align 1, !tbaa !178
  %i.acy = call noundef i16 @llvm.bswap.i16(i16 %i.acx)
  switch i16 %i.acy, label %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i" [
    i16 0, label %bb.eb
    i16 3, label %bb.ec
  ]

bb.eb:                                            ; preds = %bb.ea
  %i.acz = getelementptr inbounds nuw i8, ptr %.sroa.0174.1854, i64 10
  %i.ada = load i16, ptr %i.acz, align 1, !tbaa !178
  switch i16 %i.ada, label %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i" [
    i16 1024, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit"
    i16 768, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit"
  ]

bb.ec:                                            ; preds = %bb.ea
  %i.adb = getelementptr inbounds nuw i8, ptr %.sroa.0174.1854, i64 10
  %i.adc = load i16, ptr %i.adb, align 1, !tbaa !178
  switch i16 %i.adc, label %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i" [
    i16 2560, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit"
    i16 256, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit"
  ]

"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i": ; preds = %bb.ec, %bb.eb, %bb.ea
  %i.add = getelementptr inbounds nuw i8, ptr %.sroa.0174.1854, i64 12
  %i.ade = load i32, ptr %i.add, align 1, !tbaa !176 ; 2 uses
  %i.adf = icmp eq i32 %i.ade, 0
  %i.adg = call i32 @llvm.bswap.i32(i32 %i.ade)
  %i.adh = zext i32 %i.adg to i64
  %i.adi = getelementptr inbounds nuw i8, ptr %.sroa.13.0.copyload, i64 %i.adh
  %.0.i.i.i.i.i.i.i.i.i.i117 = select i1 %i.adf, ptr @_hb_NullPool, ptr %i.adi, !prof !72
  %i.adj = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i117, align 1, !tbaa !178
  %i.adk = icmp eq i16 %i.adj, 3584
  br i1 %i.adk, label %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i._ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit_crit_edge", label %bb.dz, !llvm.loop !47

"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i._ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit_crit_edge": ; preds = %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i"
  br label %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit", !llvm.loop !47

"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit": ; preds = %bb.ec, %bb.ec, %bb.eb, %bb.eb, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEERS3_EppEv.exit.i.i, %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i._ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit_crit_edge", %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222"
  %.sroa.7.2 = phi i32 [ 0, %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222" ], [ %i.acv, %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i._ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit_crit_edge" ], [ %i.acv, %bb.ec ], [ %i.acv, %bb.eb ], [ %i.acv, %bb.eb ], [ 0, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEERS3_EppEv.exit.i.i ], [ %i.acv, %bb.ec ] ; 2 uses
  %.sroa.0174.2 = phi ptr [ %scevgep481, %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222" ], [ %i.acw, %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i._ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit_crit_edge" ], [ %i.acw, %bb.ec ], [ %i.acw, %bb.eb ], [ %i.acw, %bb.eb ], [ %scevgep483, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEERS3_EppEv.exit.i.i ], [ %i.acw, %bb.ec ] ; 2 uses
  %.not.i.i = icmp ne ptr %.sroa.0174.2, %.sroa.0173.1556
  %i.adl = icmp ne i32 %.sroa.7.2, %.sroa.5.1555
  %i.adm = or i1 %.not.i.i, %i.adl
  br i1 %i.adm, label %bb.l, label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread234.loopexit

_ZNK22hb_serialize_context_t13only_overflowEv.exit: ; preds = %bb.ae, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i
  %i.adn = call fastcc noundef zeroext i1 @"_ZN2OT4cmap9serializeI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS5_E_RK4$_19LPv0EES2_IS3_IKNS_14EncodingRecordEEZNKS0_6subsetES9_EUlRSH_E_SD_LSE_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT0_NSN_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tT_SN_PKvP16hb_subset_plan_tbj"(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.hb_filter_iter_t.802) align 8 %2, ptr noundef nonnull byval(%struct.hb_filter_iter_t.789) align 8 %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext true, i32 noundef %7)
  br label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread232

_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread234.loopexit: ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit"
  %.pre487 = load ptr, ptr %i.u, align 8, !tbaa !168
  br label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread234

_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread234: ; preds = %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread234.loopexit, %"_ZNK9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_E3endEv.exit"
  %i.ado = phi ptr [ %.pre487, %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread234.loopexit ], [ %i.v, %"_ZNK9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_E3endEv.exit" ] ; 2 uses
  %.not.i118 = icmp eq ptr %i.ado, null
  br i1 %.not.i118, label %_ZNK22hb_serialize_context_t6lengthEv.exit.thread, label %_ZNK22hb_serialize_context_t6lengthEv.exit, !prof !72

_ZNK22hb_serialize_context_t6lengthEv.exit.thread: ; preds = %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread234
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.adp, align 1, !tbaa !236
  br label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit

_ZNK22hb_serialize_context_t6lengthEv.exit:       ; preds = %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread234
  %i.adq = load ptr, ptr %i.f, align 8, !tbaa !149
  %i.adr = load ptr, ptr %i.ado, align 8, !tbaa !235
  %i.ads = ptrtoint ptr %i.adq to i64
  %i.adt = ptrtoint ptr %i.adr to i64
  %i.adu = sub i64 %i.ads, %i.adt
  %i.adv = trunc i64 %i.adu to i32
  %i.adw = call i32 @llvm.usub.sat.i32(i32 %i.adv, i32 4) ; 2 uses
  %i.adx = lshr i32 %i.adw, 3
  %i.ady = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.adz = trunc i32 %i.adx to i16
  %i.aea = call i16 @llvm.bswap.i16(i16 %i.adz)
  store i16 %i.aea, ptr %i.ady, align 1, !tbaa !236
  %.not.i.i120 = icmp ult i32 %i.adw, 524288
  br i1 %.not.i.i120, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit, label %bb.ed

bb.ed:                                            ; preds = %_ZNK22hb_serialize_context_t6lengthEv.exit
  %i.aeb = load i32, ptr %i.c, align 4, !tbaa !148
  %i.aec = or i32 %i.aeb, 8
  store i32 %i.aec, ptr %i.c, align 4, !tbaa !148
  br label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit: ; preds = %_ZNK22hb_serialize_context_t6lengthEv.exit.thread, %_ZNK22hb_serialize_context_t6lengthEv.exit, %bb.ed
  %i.aed = load i32, ptr %i.b, align 4
  %i.aee = icmp ne i32 %i.aed, 0
  %not. = xor i1 %6, true
  %i.aef = select i1 %not., i1 true, i1 %i.aee
  br label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread232

_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread232: ; preds = %bb.l, %_ZNK22hb_serialize_context_t13only_overflowEv.exit, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit
  %.5 = phi i1 [ %i.aef, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit ], [ %i.adn, %_ZNK22hb_serialize_context_t13only_overflowEv.exit ], [ false, %bb.l ]
  %i.aeg = load ptr, ptr %8, align 8, !tbaa !265
  call void @hb_blob_destroy(ptr noundef %i.aeg) #15
  store ptr null, ptr %8, align 8, !tbaa !265
  call void @_ZN12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE4finiEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN22hb_serialize_context_t10extend_minIN2OT4cmapEEEPT_RS3_.exit.thread

_ZN22hb_serialize_context_t10extend_minIN2OT4cmapEEEPT_RS3_.exit.thread: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i, %.critedge.i.i.i.i, %bb.a, %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread232
  %.6 = phi i1 [ %.5, %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread232 ], [ false, %bb.a ], [ false, %.critedge.i.i.i.i ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN22hb_serialize_context_t4copyIN2OT14EncodingRecordEJ16hb_filter_iter_tIS3_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS1_4cmap6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSG_0EEjRPKvRP16hb_subset_plan_tPjEEEPT_RKSW_DpOT0_"(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, i32 %.0.val, ptr %.0.val1, ptr %.0.val3, ptr nofree captures(none) %.0.val5) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %struct.Writer, align 8             ; 9 uses
  %.sroa.08.0.copyload.i = load ptr, ptr %2, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.49.0.copyload.i = load ptr, ptr %.sroa.49.0..sroa_idx.i, align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 28 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149, !noalias !2879 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150, !noalias !2879 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 13 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !168, !noalias !2879 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN22hb_serialize_context_t8snapshotEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !379, !noalias !2879
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !662, !noalias !2879
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  br label %_ZN22hb_serialize_context_t8snapshotEv.exit.i.i

_ZN22hb_serialize_context_t8snapshotEv.exit.i.i:  ; preds = %bb.b, %bb.a
  %.sink.i.i.i = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.m = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 23 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !148, !noalias !2879
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %"_ZN22hb_serialize_context_t5_copyIN2OT14EncodingRecordEJ16hb_filter_iter_tIS3_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS1_4cmap6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSG_0EEjRPKvRP16hb_subset_plan_tPjEEEN10_hb_head_tIPT_JDTcldtfp_4copyfpTspclsr3stdE7forwardIT0_Efp1_EEEEE4typeERKSX_11hb_priorityILj1EEDpOSZ_.exit", !prof !173

bb.c:                                             ; preds = %_ZN22hb_serialize_context_t8snapshotEv.exit.i.i
  %i.p = ptrtoint ptr %i.d to i64
  %i.q = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp slt i64 %i.r, 8
  br i1 %i.s, label %.critedge.i.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT14EncodingRecordEEEPT_mb.exit.i.i.i, !prof !72

.critedge.i.i.i.i:                                ; preds = %bb.c
  store i32 4, ptr %i.n, align 4, !tbaa !148
  br label %"_ZN22hb_serialize_context_t5_copyIN2OT14EncodingRecordEJ16hb_filter_iter_tIS3_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS1_4cmap6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSG_0EEjRPKvRP16hb_subset_plan_tPjEEEN10_hb_head_tIPT_JDTcldtfp_4copyfpTspclsr3stdE7forwardIT0_Efp1_EEEEE4typeERKSX_11hb_priorityILj1EEDpOSZ_.exit"

_ZN22hb_serialize_context_t13allocate_sizeIN2OT14EncodingRecordEEEPT_mb.exit.i.i.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.t, ptr %i.a, align 8, !tbaa !149
  %.not.i21.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i21.i.i, label %"_ZN22hb_serialize_context_t5_copyIN2OT14EncodingRecordEJ16hb_filter_iter_tIS3_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS1_4cmap6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSG_0EEjRPKvRP16hb_subset_plan_tPjEEEN10_hb_head_tIPT_JDTcldtfp_4copyfpTspclsr3stdE7forwardIT0_Efp1_EEEEE4typeERKSX_11hb_priorityILj1EEDpOSZ_.exit", label %bb.d, !prof !169

bb.d:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT14EncodingRecordEEEPT_mb.exit.i.i.i
  %i.u = load i64, ptr %1, align 1, !alias.scope !2880
  store i64 %i.u, ptr %i.b, align 1, !alias.scope !2880
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.v, align 1, !tbaa !236
  %i.w = load i32, ptr %.0.val5, align 4, !tbaa !172 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = tail call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT12CmapSubtableEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) ; 15 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !168  ; 2 uses
  %.not.i22.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i22.i.i, label %_ZNK22hb_serialize_context_t6lengthEv.exit.i.i, label %bb.f, !prof !72

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !235
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i32
  br label %_ZNK22hb_serialize_context_t6lengthEv.exit.i.i

_ZNK22hb_serialize_context_t6lengthEv.exit.i.i:   ; preds = %bb.f, %bb.e
  %.0.i23.i.i = phi i32 [ %i.af, %bb.f ], [ 0, %bb.e ]
  %.sroa.541.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.2.0.copyload.i to i32 ; 5 uses
  switch i32 %.0.val, label %"_ZN2OT12CmapSubtable9serializeI16hb_filter_iter_tIS2_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS_4cmap6subsetEP19hb_subset_context_tEUlS5_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELSF_0EEEvP22hb_serialize_context_tSP_jPK16hb_subset_plan_tPKv.exit.i.i" [
    i32 4, label %bb.g
    i32 12, label %bb.ay
    i32 14, label %bb.bx
  ]

bb.g:                                             ; preds = %_ZNK22hb_serialize_context_t6lengthEv.exit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !280
  %.not12.i.i.i.i.i.i.i = icmp eq i32 %.sroa.541.sroa.0.0.extract.trunc.i.i, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %"_ZN2OT12CmapSubtable9serializeI16hb_filter_iter_tIS2_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS_4cmap6subsetEP19hb_subset_context_tEUlS5_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELSF_0EEEvP22hb_serialize_context_tSP_jPK16hb_subset_plan_tPKv.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g
  %.val5.i14.i.i.i.i.i.i = load i64, ptr %.sroa.08.0.copyload.i, align 4, !tbaa !172, !noalias !2881
  %i.ag = and i64 %.val5.i14.i.i.i.i.i.i, 4294901760
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %"_ZorI16hb_filter_iter_tIS0_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSE_0EE24hb_filter_iter_factory_tIZNS6_19CmapSubtableFormat49serializeISM_TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSR_6item_tEEE5valueEvE4typeELSE_0EEEvP22hb_serialize_context_tSR_EUlS3_E_SD_ETnSV_LSE_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISR_Efp_EEEOSR_OS10_.exit.thread90.i.i.i.i", label %.preheader.i.preheader.i.i.preheader.i.i.i.i

.preheader.i.preheader.i.i.preheader.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.49.0.copyload.i, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.49.0.copyload.i, i64 36
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.49.0.copyload.i, i64 40
  %.sink.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.49.0.copyload.i, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.49.0.copyload.i, i64 64
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.backedge, %.preheader.i.preheader.i.i.preheader.i.i.i.i
  %.promoted3.i.i.i.i.i6.i.i.i.i.i.i = phi ptr [ %.sroa.08.0.copyload.i, %.preheader.i.preheader.i.i.preheader.i.i.i.i ], [ %i.ar, %.preheader.i.i.i.i.i.i.i.backedge ]
  %i.am = phi i32 [ %.sroa.541.sroa.0.0.extract.trunc.i.i, %.preheader.i.preheader.i.i.preheader.i.i.i.i ], [ %i.ap, %.preheader.i.i.i.i.i.i.i.backedge ]
  %i.an = add i32 %i.am, -1                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i45 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i45, label %"_ZN2OT12CmapSubtable9serializeI16hb_filter_iter_tIS2_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS_4cmap6subsetEP19hb_subset_context_tEUlS5_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELSF_0EEEvP22hb_serialize_context_tSP_jPK16hb_subset_plan_tPKv.exit.i.i", label %.lr.ph

_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.ao = add i32 %i.ap, -1                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN2OT12CmapSubtable9serializeI16hb_filter_iter_tIS2_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS_4cmap6subsetEP19hb_subset_context_tEUlS5_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELSF_0EEEvP22hb_serialize_context_tSP_jPK16hb_subset_plan_tPKv.exit.i.i", label %.lr.ph, !llvm.loop !49

.lr.ph:                                           ; preds = %.preheader.i.i.i.i.i.i.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ap = phi i32 [ %i.ao, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.an, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.aq = phi ptr [ %i.ar, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted3.i.i.i.i.i6.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 5 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 4, !noalias !2881 ; 4 uses
  %i.as = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i.i.i, -4294967296
  br i1 %i.as, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i.i.i.i.i.i.i.i.i", label %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !49

"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph
  %i.at = trunc i64 %.val.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.au = lshr i32 %i.at, 9                       ; 3 uses
  %i.av = load atomic i32, ptr %i.ai monotonic, align 4, !noalias !2881 ; 2 uses
  %i.aw = load i32, ptr %i.aj, align 4, !tbaa !442, !noalias !2881 ; 3 uses
  %i.ax = icmp ult i32 %i.av, %i.aw
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !443, !noalias !2881 ; 3 uses
  br i1 %i.ax, label %bb.h, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !173

bb.h:                                             ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i.i.i.i.i.i.i.i.i"
  %i.az = zext i32 %i.av to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !445, !noalias !2881
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bb, %i.au
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %bb.h, %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i.i.i.i.i.i.i.i.i"
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aw, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = add nsw i32 %i.aw, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ %i.bc, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bd = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.be = lshr i32 %i.bd, 1                       ; 4 uses
  %i.bf = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !445, !noalias !2881 ; 2 uses
  %i.bj = icmp slt i32 %i.au, %i.bi
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bk = add nsw i32 %i.be, -1
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.au, %i.bi
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_0
