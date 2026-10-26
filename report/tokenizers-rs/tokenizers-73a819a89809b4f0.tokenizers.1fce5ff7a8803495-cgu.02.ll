Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.02?download=true
inline.NumInlined: 1144
inline.NumDeleted: 636
begin_hunk_0_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB21_8adapters3map12map_try_foldBW_BW_B2Z_INtNtB23_6result6ResultB2Z_zENCNCNvXs0_NtNtB12_10processors7robertaNtB54_17RobertaProcessingNtB10_13PostProcessor17process_encodingss0_0s_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0B4r_EB12_:bb.a
  %i.ek = add nuw nsw i64 %.sroa.0.0.i.i.i239, 1  ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %i.ej)
          to label %.noexc unwind label %bb.au, !noalias !526

bb.at:                                            ; preds = %.lr.ph243
  %i.el = add i64 %.sroa.0.1.i.i.i241, 1          ; 2 uses
  %i.em = icmp eq i64 %i.el, %i.eg
  br i1 %i.em, label %.body, label %.lr.ph243

bb.au:                                            ; preds = %.lr.ph240
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.eo = icmp eq i64 %i.ek, %i.eg
  br i1 %i.eo, label %.body, label %.lr.ph243

.lr.ph243:                                        ; preds = %bb.au, %bb.at
  %.sroa.0.1.i.i.i241 = phi i64 [ %i.el, %bb.at ], [ %i.ek, %bb.au ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %.sroa.0.1.i.i.i241
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %i.ep) #24
          to label %bb.at unwind label %bb.av, !noalias !526

bb.av:                                            ; preds = %.lr.ph243
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !526
  unreachable

bb.aw:                                            ; preds = %.body.i
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.at, %bb.au, %bb.aw
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !526
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_0s_0NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4.0121, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.01.i, i64 168, i1 false), !noalias !526
  %.sroa.4.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0121, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.13.i, i64 64, i1 false), !noalias !526
  %.sroa.4.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0121, i64 168
  store i64 0, ptr %.sroa.4.sroa.4.0..sroa_idx.i, align 8, !noalias !526
  %.sroa.4.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0121, i64 176
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.5.0..sroa_idx.i, align 8, !noalias !526
  %.sroa.4.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0121, i64 184
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx.i, align 8, !noalias !526
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.4.0121, i64 256 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !526
  %.not = icmp eq ptr %i.bz, %i.z
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_0s_0NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.es, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_0s_0NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit ]
  %i.et = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.eu = insertvalue { ptr, ptr } %i.et, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.eu
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterReENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldBW_TBW_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB2S_7HashSetBW_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB13_7collect6ExtendBW_E6extendBH_E0NCINvNvBZ_8for_each4callB2C_NCINvXs1i_NtB2U_3mapINtB5K_7HashMapBW_uB3E_EIB4v_B2C_E6extendINtB25_3MapBH_B2J_EE0E0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.e, align 8
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldReTBU_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB1c_7HashSetBU_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EE0NCINvNvNtNtB2T_8iterator8Iterator8for_each4callBW_NCINvXs1i_NtB1e_3mapINtB5m_7HashMapBU_uB1Y_EIB2P_BW_E6extendINtB4_3MapB3v_B13_EE0E0E0Cs2JiOgHzbbc7_10tokenizers.exit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldReTBU_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB1c_7HashSetBU_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EE0NCINvNvNtNtB2T_8iterator8Iterator8for_each4callBW_NCINvXs1i_NtB1e_3mapINtB5m_7HashMapBU_uB1Y_EIB2P_BW_E6extendINtB4_3MapB3v_B13_EE0E0E0Cs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.j, %bb.b ], [ %.promoted, %bb.a ] ; 4 uses
  %.not.not = icmp eq ptr %i.f, %i.d
  br i1 %.not.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldReTBU_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB1c_7HashSetBU_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EE0NCINvNvNtNtB2T_8iterator8Iterator8for_each4callBW_NCINvXs1i_NtB1e_3mapINtB5m_7HashMapBU_uB1Y_EIB2P_BW_E6extendINtB4_3MapB3v_B13_EE0E0E0Cs2JiOgHzbbc7_10tokenizers.exit
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapReuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldReTBU_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB1c_7HashSetBU_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EE0NCINvNvNtNtB2T_8iterator8Iterator8for_each4callBW_NCINvXs1i_NtB1e_3mapINtB5m_7HashMapBU_uB1Y_EIB2P_BW_E6extendINtB4_3MapB3v_B13_EE0E0E0Cs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.c ; 0 uses

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldReTBU_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB1c_7HashSetBU_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EE0NCINvNvNtNtB2T_8iterator8Iterator8for_each4callBW_NCINvXs1i_NtB1e_3mapINtB5m_7HashMapBU_uB1Y_EIB2P_BW_E6extendINtB4_3MapB3v_B13_EE0E0E0Cs2JiOgHzbbc7_10tokenizers.exit
  %i.l = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.n, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val4 = load ptr, ptr %0, align 8, !alias.scope !540, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.q, align 8, !alias.scope !540, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !541
  store i64 %.val5, ptr %i.a, align 8, !noalias !541
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val4, ptr %i.r, align 8, !noalias !541
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterReEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterReEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !541
  resume { ptr, i32 } %i.p

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterReENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB15_8adapters3map12map_try_foldBW_INtNtB17_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtBa_6string6StringEuINtNtNtB17_3ops12control_flow11ControlFlowIB4t_B38_EENCNvXs6_B3a_NtB3a_8TemplateINtNtB17_7convert7TryFromINtB8_3VecBW_EE8try_from0NCINvXB2b_INtB2b_12GenericShuntINtB29_3MapBH_B5j_EIB2M_NtB5N_10InfallibleB45_EEBZ_8try_folduNCINvNvBZ_12try_for_each4callB38_B58_NcNtB58_5Break0E0B58_E0E0B4s_EB3e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not15 = icmp eq ptr %.promoted, %i.c
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.f = phi ptr [ %.promoted, %.lr.ph ], [ %i.j, %bb.h ] ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB5_5PieceINtNtCs4NRVxsYgnAr_4core7convert7TryFromReE8try_from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i), !noalias !550
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !551 ; 3 uses
  %i.k = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %i.k, label %bb.c, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtCscdodAO9FK5_5alloc6string6StringEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCNvXs6_B1p_NtB1p_8TemplateINtNtBa_7convert7TryFromINtNtB2o_3vec3VecBZ_EE8try_from0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4F_9into_iter8IntoIterBZ_EB3N_EIB12_NtB4h_10InfallibleB2k_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0B1t_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.m = load i64, ptr %.val.le, align 8, !range !5, !alias.scope !552, !noalias !553, !noundef !6
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtCscdodAO9FK5_5alloc6string6StringEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCNvXs6_B1p_NtB1p_8TemplateINtNtBa_7convert7TryFromINtNtB2o_3vec3VecBZ_EE8try_from0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4F_9into_iter8IntoIterBZ_EB3N_EIB12_NtB4h_10InfallibleB2k_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0B1t_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.le)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.e, !noalias !554

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.le)
          to label %.body.i.i unwind label %bb.f, !noalias !554

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !554
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.le)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtCscdodAO9FK5_5alloc6string6StringEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCNvXs6_B1p_NtB1p_8TemplateINtNtBa_7convert7TryFromINtNtB2o_3vec3VecBZ_EE8try_from0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4F_9into_iter8IntoIterBZ_EB3N_EIB12_NtB4h_10InfallibleB2k_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0B1t_.exit.thread unwind label %bb.g, !noalias !554

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.o, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val.le, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !551
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtCscdodAO9FK5_5alloc6string6StringEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCNvXs6_B1p_NtB1p_8TemplateINtNtBa_7convert7TryFromINtNtB2o_3vec3VecBZ_EE8try_from0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4F_9into_iter8IntoIterBZ_EB3N_EIB12_NtB4h_10InfallibleB2k_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0B1t_.exit.thread: ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val.le, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtCscdodAO9FK5_5alloc6string6StringEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCNvXs6_B1p_NtB1p_8TemplateINtNtBa_7convert7TryFromINtNtB2o_3vec3VecBZ_EE8try_from0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4F_9into_iter8IntoIterBZ_EB3N_EIB12_NtB4h_10InfallibleB2k_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0B1t_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -3
  br i1 %.not.i, label %bb.h, label %.loopexit

._crit_edge:                                      ; preds = %bb.h, %bb.a, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %.loopexit ], [ -3, %bb.a ], [ -3, %bb.h ]
  store i64 %storemerge, ptr %0, align 8
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtCscdodAO9FK5_5alloc6string6StringEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCNvXs6_B1p_NtB1p_8TemplateINtNtBa_7convert7TryFromINtNtB2o_3vec3VecBZ_EE8try_from0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4F_9into_iter8IntoIterBZ_EB3N_EIB12_NtB4h_10InfallibleB2k_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0B1t_.exit, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtCscdodAO9FK5_5alloc6string6StringEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCNvXs6_B1p_NtB1p_8TemplateINtNtBa_7convert7TryFromINtNtB2o_3vec3VecBZ_EE8try_from0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4F_9into_iter8IntoIterBZ_EB3N_EIB12_NtB4h_10InfallibleB2k_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0B1t_.exit.thread
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %._crit_edge

bb.h:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtCscdodAO9FK5_5alloc6string6StringEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCNvXs6_B1p_NtB1p_8TemplateINtNtBa_7convert7TryFromINtNtB2o_3vec3VecBZ_EE8try_from0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4F_9into_iter8IntoIterBZ_EB3N_EIB12_NtB4h_10InfallibleB2k_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0B1t_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq ptr %i.j, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTINtNtCs4NRVxsYgnAr_4core6option6OptionmETjjEEENtNtNtNtB12_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldBW_TNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringIBY_INtB8_3VecNtB3a_5TokenEEEuNCNvMs2_NtB3a_16added_vocabularyNtB4S_15AddedVocabulary18split_with_indices0NCINvNvB1H_8for_each4callB35_NCINvMsj_B8_IB4l_B35_E14extend_trustedINtB2y_3MapBH_B4K_EE0E0E0EB3c_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [80 x i8], align 8                ; 5 uses
  %i.g = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.0.i = alloca [80 x i8], align 8          ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.k, align 8        ; 2 uses
  %.not.not36 = icmp eq ptr %.promoted, %i.j
  br i1 %.not.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.l, align 8, !alias.scope !570, !nonnull !6, !align !8, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.615.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted37 = load i64, ptr %i.t, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %.val729 = phi i64 [ %.promoted37, %.lr.ph ], [ %i.ar, %bb.r ] ; 3 uses
  %i.u = phi ptr [ %.promoted, %.lr.ph ], [ %i.v, %bb.r ] ; 4 uses
  %.sroa.013.0.copyload = load i32, ptr %i.u, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.414.0.copyload = load i32, ptr %.sroa.414.0..sroa_idx, align 4
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.w = load <2 x i64>, ptr %.sroa.515.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !571
  store <2 x i64> %i.w, ptr %i.m, align 8, !noalias !571
  store i64 1, ptr %i.e, align 8, !noalias !571
  invoke void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.val.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc unwind label %.thread26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !571
  %i.x = load i64, ptr %i.f, align 8, !range !5, !noalias !571, !noundef !6
  %.not.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !571
  %i.y = trunc nuw i32 %.sroa.013.0.copyload to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.d:                                             ; preds = %.noexc
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #26
          to label %.noexc10 unwind label %.thread26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !571
  %i.z = load ptr, ptr %i.n, align 8, !noalias !571, !nonnull !6, !noundef !6
  %i.aa = load i64, ptr %i.o, align 8, !noalias !571, !noundef !6 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !571
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.aa, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !571

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !572
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %i.b, align 8, !range !14, !noalias !571, !noundef !6
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = load i64, ptr %i.p, align 8, !range !15, !noalias !571, !noundef !6 ; 3 uses
  br i1 %i.ac, label %bb.h, label %bb.i, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %i.q, align 8, !noalias !571
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ad, i64 %i.ae) #26
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !571

bb.i:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.q, align 8, !noalias !571, !nonnull !6, !noundef !6 ; 2 uses
  %i.ag = icmp ule i64 %i.aa, %i.ad
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !571
  %.not18.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not18.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.l, %bb.i
  store i64 %i.ad, ptr %i.d, align 8, !noalias !571
  store ptr %i.af, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !571
  store i64 %i.aa, ptr %.sroa.615.0..sroa_idx.i.i, align 8, !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !571
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !571
  %i.ah = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 49) 48, i64 noundef 8) #25, !noalias !571 ; 6 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i, !prof !16

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26
          to label %.noexc.i.i unwind label %bb.m, !noalias !571

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.z, i64 %i.aa, i1 false), !noalias !571
  br label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.c) #24
          to label %bb.o unwind label %bb.n, !noalias !571

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !571
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 0, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !571
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %i.aa, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !noalias !571
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i32 %.sroa.414.0.copyload, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !571
  br label %bb.r

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o, %bb.m
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !571
  unreachable

bb.o:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #24
          to label %.thread20 unwind label %bb.n, !noalias !571

bb.p:                                             ; preds = %bb.h
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.h
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.g) #24
          to label %.thread20 unwind label %bb.n, !noalias !571

._crit_edge:                                      ; preds = %bb.r, %bb.a
  %i.al = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.an, ptr %i.h, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.al, ptr %i.ao, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTINtNtCs4NRVxsYgnAr_4core6option6OptionmETjjEEENtNtNtBR_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.ap, align 8, !noundef !6
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.r:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i, %bb.f
  %.sroa.7.0.i = phi ptr [ %i.ah, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i ], [ undef, %bb.f ]
  %.sroa.5.0.i = phi i64 [ 1, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !571
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
end_hunk_0
begin_hunk_1_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBW_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2r_16NormalizedString5splitcEs_0EB2v_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.p:                                             ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEECs2JiOgHzbbc7_10tokenizers.exit
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.v, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.ak, %bb.n ]
  resume { ptr, i32 } %eh.lpad-body8

.critedge:                                        ; preds = %bb.f
  %.val = load ptr, ptr %1, align 8, !alias.scope !18, !nonnull !6, !noundef !6
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4 = load i64, ptr %i.am, align 8, !alias.scope !18, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1031
  store i64 %.val4, ptr %i.a, align 8, !noalias !1031
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val, ptr %i.an, align 8, !noalias !1031
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.o

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1031
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB14_8for_each4callBW_NCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2G_16NormalizedString7replaceRNtNtNtB2K_5utils4onig8SysRegexE0E0EB2K_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.n, align 8        ; 2 uses
  %.not.not109 = icmp eq ptr %.promoted, %i.m
  br i1 %.not.not109, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !nonnull !6, !align !8 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !6, !align !8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !6, !align !8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !6, !align !8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !6, !align !8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTTjjEbENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1v_16NormalizedString7replaceRNtNtNtB1z_5utils4onig8SysRegexE0E0B1z_.exit
  %i.al = phi ptr [ %.promoted, %.lr.ph ], [ %i.am, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTTjjEbENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1v_16NormalizedString7replaceRNtNtNtB1z_5utils4onig8SysRegexE0E0B1z_.exit ] ; 4 uses
  %.sroa.017.0.copyload = load i64, ptr %i.al, align 8 ; 28 uses
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.418.0.copyload = load i64, ptr %.sroa.418.0..sroa_idx, align 8 ; 13 uses
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.519.0.copyload = load i8, ptr %.sroa.519.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.an = trunc nuw i8 %.sroa.519.0.copyload to i1
  br i1 %i.an, label %bb.c, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTTjjEbENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1v_16NormalizedString7replaceRNtNtNtB1z_5utils4onig8SysRegexE0E0B1z_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1067
  store i64 0, ptr %i.j, align 8, !noalias !1067
  %i.ao = load ptr, ptr %i.o, align 8, !noalias !1067, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !1067, !nonnull !6, !noundef !6 ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !noalias !1067, !noundef !6 ; 9 uses
  %.not.i.i.i = icmp ugt i64 %.sroa.017.0.copyload, %.sroa.418.0.copyload
  br i1 %.not.i.i.i, label %.invoke, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = icmp eq i64 %.sroa.017.0.copyload, 0    ; 2 uses
  br i1 %i.at, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not5.i.i.i = icmp ult i64 %.sroa.017.0.copyload, %i.as
  br i1 %.not5.i.i.i, label %bb.g, label %.split.i.i.i

bb.f:                                             ; preds = %bb.g, %.split.i.i.i, %bb.d
  %i.au = icmp eq i64 %.sroa.418.0.copyload, 0
  br i1 %i.au, label %bb.j, label %bb.h

.split.i.i.i:                                     ; preds = %bb.e
  %i.av = icmp eq i64 %.sroa.017.0.copyload, %i.as
  br i1 %i.av, label %bb.f, label %.invoke

bb.g:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.017.0.copyload
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !1068, !noalias !1067, !noundef !6
  %i.ay = icmp sgt i8 %i.ax, -65
  br i1 %i.ay, label %bb.f, label %.invoke

bb.h:                                             ; preds = %bb.f
  %.not6.i.i.i = icmp ult i64 %.sroa.418.0.copyload, %i.as
  br i1 %.not6.i.i.i, label %bb.i, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.h
  %i.az = icmp eq i64 %.sroa.418.0.copyload, %i.as
  br i1 %i.az, label %bb.j, label %.invoke

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.418.0.copyload
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !1068, !noalias !1067, !noundef !6
  %i.bc = icmp sgt i8 %i.bb, -65
  br i1 %i.bc, label %bb.j, label %.invoke

bb.j:                                             ; preds = %bb.i, %.split7.i.i.i, %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.017.0.copyload ; 2 uses
  %gepdiff.i.i = sub nuw nsw i64 %.sroa.418.0.copyload, %.sroa.017.0.copyload ; 3 uses
  %i.be = icmp ult i64 %gepdiff.i.i, 32
  br i1 %i.be, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = invoke noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count14do_count_chars(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %gepdiff.i.i)
          to label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i unwind label %.body.thread205.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.j
  %i.bg = invoke noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count23char_count_general_case(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %gepdiff.i.i)
          to label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i unwind label %.body.thread205.loopexit.split-lp.loopexit.split-lp

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i32.i.i = phi i64 [ %i.bf, %bb.k ], [ %i.bg, %bb.l ] ; 2 uses
  %i.bh = load ptr, ptr %i.o, align 8, !noalias !1067, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.bi = load i64, ptr %i.s, align 8, !noalias !1067, !noundef !6 ; 13 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !1067, !nonnull !6, !noundef !6 ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !1067, !noundef !6 ; 9 uses
  %.not.i33.i.i = icmp ugt i64 %i.bi, %.sroa.017.0.copyload
  br i1 %.not.i33.i.i, label %.invoke, label %bb.m

bb.m:                                             ; preds = %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i
  %i.bn = icmp eq i64 %i.bi, 0
  br i1 %i.bn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not5.i34.i.i = icmp ult i64 %i.bi, %i.bm
  br i1 %.not5.i34.i.i, label %bb.p, label %.split.i35.i.i

bb.o:                                             ; preds = %bb.p, %.split.i35.i.i, %bb.m
  br i1 %i.at, label %bb.s, label %bb.q

.split.i35.i.i:                                   ; preds = %bb.n
  %i.bo = icmp eq i64 %i.bi, %i.bm
  br i1 %i.bo, label %bb.o, label %.invoke

bb.p:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !1069, !noalias !1067, !noundef !6
  %i.br = icmp sgt i8 %i.bq, -65
  br i1 %i.br, label %bb.o, label %.invoke

bb.q:                                             ; preds = %bb.o
  %.not6.i38.i.i = icmp ult i64 %.sroa.017.0.copyload, %i.bm
  br i1 %.not6.i38.i.i, label %bb.r, label %.split7.i39.i.i

.split7.i39.i.i:                                  ; preds = %bb.q
  %i.bs = icmp eq i64 %.sroa.017.0.copyload, %i.bm
  br i1 %i.bs, label %bb.s, label %.invoke

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.017.0.copyload
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !1069, !noalias !1067, !noundef !6
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.s, label %.invoke

.invoke:                                          ; preds = %.noexc11, %.split.i44.i.i, %bb.z, %.split7.i48.i.i, %bb.ab, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i, %.split.i35.i.i, %bb.p, %.split7.i39.i.i, %bb.r, %bb.c, %.split.i.i.i, %bb.g, %.split7.i.i.i, %bb.i
  %i.bw = phi ptr [ %i.bk, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i ], [ %i.aq, %bb.c ], [ %i.aq, %bb.i ], [ %i.aq, %.split7.i.i.i ], [ %i.aq, %bb.g ], [ %i.aq, %.split.i.i.i ], [ %i.bk, %bb.r ], [ %i.bk, %.split7.i39.i.i ], [ %i.bk, %bb.p ], [ %i.bk, %.split.i35.i.i ], [ %i.db, %bb.ab ], [ %i.db, %.split7.i48.i.i ], [ %i.db, %bb.z ], [ %i.db, %.split.i44.i.i ], [ %i.db, %.noexc11 ]
  %i.bx = phi i64 [ %i.bm, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i ], [ %i.as, %bb.c ], [ %i.as, %bb.i ], [ %i.as, %.split7.i.i.i ], [ %i.as, %bb.g ], [ %i.as, %.split.i.i.i ], [ %i.bm, %bb.r ], [ %i.bm, %.split7.i39.i.i ], [ %i.bm, %bb.p ], [ %i.bm, %.split.i35.i.i ], [ %i.dd, %bb.ab ], [ %i.dd, %.split7.i48.i.i ], [ %i.dd, %bb.z ], [ %i.dd, %.split.i44.i.i ], [ %i.dd, %.noexc11 ]
  %i.by = phi i64 [ %i.bi, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i ], [ %.sroa.017.0.copyload, %bb.c ], [ %.sroa.017.0.copyload, %bb.i ], [ %.sroa.017.0.copyload, %.split7.i.i.i ], [ %.sroa.017.0.copyload, %bb.g ], [ %.sroa.017.0.copyload, %.split.i.i.i ], [ %i.bi, %bb.r ], [ %i.bi, %.split7.i39.i.i ], [ %i.bi, %bb.p ], [ %i.bi, %.split.i35.i.i ], [ %i.cx, %bb.ab ], [ %i.cx, %.split7.i48.i.i ], [ %i.cx, %bb.z ], [ %i.cx, %.split.i44.i.i ], [ %i.cx, %.noexc11 ]
  %i.bz = phi i64 [ %.sroa.017.0.copyload, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i ], [ %.sroa.418.0.copyload, %bb.c ], [ %.sroa.418.0.copyload, %bb.i ], [ %.sroa.418.0.copyload, %.split7.i.i.i ], [ %.sroa.418.0.copyload, %bb.g ], [ %.sroa.418.0.copyload, %.split.i.i.i ], [ %.sroa.017.0.copyload, %bb.r ], [ %.sroa.017.0.copyload, %.split7.i39.i.i ], [ %.sroa.017.0.copyload, %bb.p ], [ %.sroa.017.0.copyload, %.split.i35.i.i ], [ %i.cy, %bb.ab ], [ %i.cy, %.split7.i48.i.i ], [ %i.cy, %bb.z ], [ %i.cy, %.split.i44.i.i ], [ %i.cy, %.noexc11 ]
  %i.ca = phi ptr [ @23, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i ], [ @22, %bb.c ], [ @22, %bb.i ], [ @22, %.split7.i.i.i ], [ @22, %bb.g ], [ @22, %.split.i.i.i ], [ @23, %bb.r ], [ @23, %.split7.i39.i.i ], [ @23, %bb.p ], [ @23, %.split.i35.i.i ], [ @24, %bb.ab ], [ @24, %.split7.i48.i.i ], [ @24, %bb.z ], [ @24, %.split.i44.i.i ], [ @24, %.noexc11 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bx, i64 noundef %i.by, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca) #26
          to label %.cont unwind label %.body.thread205.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.s:                                             ; preds = %bb.r, %.split7.i39.i.i, %bb.o
  %i.cb = sub nuw i64 %.sroa.017.0.copyload, %i.bi ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.cb)
          to label %.noexc7 unwind label %.body.thread205.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.s
  %i.cc = load i64, ptr %i.t, align 8, !alias.scope !1070, !noalias !1067, !noundef !6 ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, -1
  call void @llvm.assume(i1 %i.cd)
  %.not.i41.i.i = icmp eq i64 %.sroa.017.0.copyload, %i.bi
  br i1 %.not.i41.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i, label %bb.t

bb.t:                                             ; preds = %.noexc7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  %i.cf = load ptr, ptr %i.u, align 8, !alias.scope !1070, !noalias !1067, !nonnull !6, !noundef !6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull readonly align 1 %i.ce, i64 %i.cb, i1 false), !noalias !1067
  %.pre.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !1070, !noalias !1067
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.t, %.noexc7
  %i.ch = phi i64 [ %.pre.i.i.i, %bb.t ], [ %i.cc, %.noexc7 ]
  %i.ci = add i64 %i.ch, %i.cb
  store i64 %i.ci, ptr %i.t, align 8, !alias.scope !1070, !noalias !1067
  %i.cj = load ptr, ptr %i.o, align 8, !noalias !1067, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.ck = load i64, ptr %i.s, align 8, !noalias !1067, !noundef !6 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !1067, !noundef !6 ; 2 uses
  %i.cn = icmp ult i64 %.sroa.017.0.copyload, %i.ck
  %.not22.i.i = icmp ugt i64 %.sroa.017.0.copyload, %i.cm
  %or.cond.i.i = or i1 %i.cn, %.not22.i.i
  br i1 %or.cond.i.i, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ck, i64 noundef %.sroa.017.0.copyload, i64 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #26
          to label %.noexc9 unwind label %.body.thread205.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !1067, !nonnull !6, !noundef !6 ; 2 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.ck
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %.sroa.017.0.copyload
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTjjEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB19_5slice4iter4IterBF_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cr)
          to label %.noexc10 unwind label %.body.thread205.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1067
  store i64 %.sroa.017.0.copyload, ptr %i.x, align 8, !noalias !1067
  store i64 %.sroa.418.0.copyload, ptr %i.y, align 8, !noalias !1067
  store i64 1, ptr %i.i, align 8, !noalias !1067
  %i.cs = load ptr, ptr %i.o, align 8, !noalias !1067, !nonnull !6, !align !8, !noundef !6
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !1067, !noundef !6 ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  call void @llvm.assume(i1 %i.cv)
  %i.cw = invoke { i64, i64 } @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerINtB2_5RangeINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEE15into_full_rangeB6_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.cu)
          to label %.noexc11 unwind label %.body.thread205.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc11:                                         ; preds = %.noexc10
  %i.cx = extractvalue { i64, i64 } %i.cw, 0      ; 12 uses
  %i.cy = extractvalue { i64, i64 } %i.cw, 1      ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1067
  %i.cz = load ptr, ptr %i.o, align 8, !noalias !1067, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !noalias !1067, !nonnull !6, !noundef !6 ; 9 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !1067, !noundef !6 ; 9 uses
  %.not.i42.i.i = icmp ugt i64 %i.cx, %i.cy
  br i1 %.not.i42.i.i, label %.invoke, label %bb.w

bb.w:                                             ; preds = %.noexc11
  %i.de = icmp eq i64 %i.cx, 0
  br i1 %i.de, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not5.i43.i.i = icmp ult i64 %i.cx, %i.dd
  br i1 %.not5.i43.i.i, label %bb.z, label %.split.i44.i.i

bb.y:                                             ; preds = %bb.z, %.split.i44.i.i, %bb.w
  %i.df = icmp eq i64 %i.cy, 0
  br i1 %i.df, label %bb.ac, label %bb.aa

.split.i44.i.i:                                   ; preds = %bb.x
  %i.dg = icmp eq i64 %i.cx, %i.dd
  br i1 %i.dg, label %bb.y, label %.invoke

bb.z:                                             ; preds = %bb.x
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cx
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !1071, !noalias !1067, !noundef !6
  %i.dj = icmp sgt i8 %i.di, -65
  br i1 %i.dj, label %bb.y, label %.invoke

bb.aa:                                            ; preds = %bb.y
  %.not6.i47.i.i = icmp ult i64 %i.cy, %i.dd
  br i1 %.not6.i47.i.i, label %bb.ab, label %.split7.i48.i.i

.split7.i48.i.i:                                  ; preds = %bb.aa
  %i.dk = icmp eq i64 %i.cy, %i.dd
  br i1 %i.dk, label %bb.ac, label %.invoke

bb.ab:                                            ; preds = %bb.aa
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cy
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !1071, !noalias !1067, !noundef !6
  %i.dn = icmp sgt i8 %i.dm, -65
  br i1 %i.dn, label %bb.ac, label %.invoke

bb.ac:                                            ; preds = %bb.ab, %.split7.i48.i.i, %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cx
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cy
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE9from_iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dp)
          to label %.noexc12 unwind label %.body.thread205.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.ac
  %i.dq = load ptr, ptr %i.z, align 8, !noalias !1067, !nonnull !6, !noundef !6 ; 4 uses
  %i.dr = load i64, ptr %i.g, align 8, !range !9, !noalias !1067, !noundef !6
  %i.ds = load i64, ptr %i.aa, align 8, !noalias !1067, !noundef !6 ; 2 uses
  %i.dt = icmp ult i64 %i.ds, 2305843009213693952
  call void @llvm.assume(i1 %i.dt)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ds ; 2 uses
  store ptr %i.dq, ptr %i.h, align 8, !noalias !1067
  store i64 %i.dr, ptr %i.ab, align 8, !noalias !1067
  store ptr %i.dq, ptr %i.ac, align 8, !noalias !1067
  store ptr %i.du, ptr %i.ad, align 8, !noalias !1067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1067
  call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %i.dv = icmp eq i64 %.sroa.0.0.i32.i.i, 0
  br i1 %i.dv, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString7replaceRNtNtNtB2U_5utils4onig8SysRegexE00NCINvXsK_NtNtBa_6traits5accumjNtB4T_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc12
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  br label %bb.ae

bb.ae:                                            ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replaceRNtNtNtB3J_5utils4onig8SysRegexE00NCINvXsK_NtB18_5accumjNtB5I_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i, %bb.ad
  %i.dw = phi i64 [ %.sroa.0.0.i32.i.i, %bb.ad ], [ %i.ea, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replaceRNtNtNtB3J_5utils4onig8SysRegexE00NCINvXsK_NtB18_5accumjNtB5I_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i ]
  %i.dx = phi ptr [ %i.dq, %bb.ad ], [ %i.dz, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replaceRNtNtNtB3J_5utils4onig8SysRegexE00NCINvXsK_NtB18_5accumjNtB5I_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ad ], [ %i.ee, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replaceRNtNtNtB3J_5utils4onig8SysRegexE00NCINvXsK_NtB18_5accumjNtB5I_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dx, %i.du
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString7replaceRNtNtNtB2U_5utils4onig8SysRegexE00NCINvXsK_NtNtBa_6traits5accumjNtB4T_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = load i32, ptr %i.dx, align 4, !range !12, !noalias !1074, !noundef !6 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 4 ; 2 uses
  store ptr %i.dz, ptr %i.ac, align 8, !alias.scope !1075, !noalias !1076
  %i.ea = add i64 %i.dw, -1                       ; 2 uses
  %i.eb = icmp samesign ult i32 %i.dy, 128
  br i1 %i.eb, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replaceRNtNtNtB3J_5utils4onig8SysRegexE00NCINvXsK_NtB18_5accumjNtB5I_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ec = icmp samesign ult i32 %i.dy, 2048
  br i1 %i.ec, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replaceRNtNtNtB3J_5utils4onig8SysRegexE00NCINvXsK_NtB18_5accumjNtB5I_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ed = icmp samesign ult i32 %i.dy, 65536
  %..i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ed, i64 3, i64 4
  br label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replaceRNtNtNtB3J_5utils4onig8SysRegexE00NCINvXsK_NtB18_5accumjNtB5I_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replaceRNtNtNtB3J_5utils4onig8SysRegexE00NCINvXsK_NtB18_5accumjNtB5I_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.af
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.ag ], [ %..i.i.i.i.i.i.i.i.i.i.i, %bb.ah ], [ 1, %bb.af ]
  %i.ee = add i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i ; 2 uses
  %i.ef = icmp eq i64 %i.ea, 0
  br i1 %i.ef, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString7replaceRNtNtNtB2U_5utils4onig8SysRegexE00NCINvXsK_NtNtBa_6traits5accumjNtB4T_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i, label %bb.ae

.body.i.i:                                        ; preds = %bb.an, %bb.al, %bb.ai
  %.pn.i.i = phi { ptr, i32 } [ %i.es, %bb.al ], [ %i.eh, %bb.ai ], [ %i.ev, %bb.an ]
  %.val30.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1077, !noalias !1067, !nonnull !6, !noundef !6
  %.val31.i.i = load i64, ptr %i.ab, align 8, !alias.scope !1077, !noalias !1067, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1078
  store i64 %.val31.i.i, ptr %i.c, align 8, !noalias !1078
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.val30.i.i, ptr %i.eg, align 8, !noalias !1078
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeccENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.aq unwind label %bb.ap, !noalias !1067

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString7replaceRNtNtNtB2U_5utils4onig8SysRegexE00NCINvXsK_NtNtBa_6traits5accumjNtB4T_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString7replaceRNtNtNtB2U_5utils4onig8SysRegexE00NCINvXsK_NtNtBa_6traits5accumjNtB4T_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replaceRNtNtNtB3J_5utils4onig8SysRegexE00NCINvXsK_NtB18_5accumjNtB5I_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i, %bb.ae, %.noexc12
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %.noexc12 ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.ae ], [ %i.ee, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replaceRNtNtNtB3J_5utils4onig8SysRegexE00NCINvXsK_NtB18_5accumjNtB5I_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i ]
  %i.ei = load ptr, ptr %i.af, align 8, !noalias !1067, !nonnull !6, !noundef !6 ; 2 uses
  %i.ej = load i64, ptr %i.ag, align 8, !noalias !1067, !noundef !6
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1067
  %i.el = add i64 %.sroa.0.0.i.i.i.i, %i.cx
  store i64 %i.el, ptr %i.f, align 8, !noalias !1067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1067
  store ptr %i.ei, ptr %i.d, align 8, !noalias !1067
  store ptr %i.ek, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1067
end_hunk_1
begin_hunk_2_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB14_8for_each4callBW_NCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2G_16NormalizedString7replaceRNtNtNtB2K_5utils4onig8SysRegexE0E0EB2K_:bb.a

.body.thread:                                     ; preds = %bb.aq, %.body.thread205.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body202 = phi { ptr, i32 } [ %lpad.loopexit.split-lp296, %.body.thread205.loopexit.split-lp.loopexit.split-lp ], [ %.pn.i.i, %bb.aq ]
  %.val = load ptr, ptr %0, align 8, !alias.scope !18, !nonnull !6, !noundef !6
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load i64, ptr %i.fc, align 8, !alias.scope !18, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1081
  store i64 %.val4, ptr %i.a, align 8, !noalias !1081
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val, ptr %i.fd, align 8, !noalias !1081
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1081
  resume { ptr, i32 } %eh.lpad-body202

bb.ar:                                            ; preds = %.body.thread
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB14_8for_each4callBW_NCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2G_16NormalizedString7replacecE0E0EB2K_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.n, align 8        ; 2 uses
  %.not.not109 = icmp eq ptr %.promoted, %i.m
  br i1 %.not.not109, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !nonnull !6, !align !8 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !6, !align !8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !6, !align !8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !6, !align !8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !6, !align !8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTTjjEbENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1v_16NormalizedString7replacecE0E0B1z_.exit
  %i.al = phi ptr [ %.promoted, %.lr.ph ], [ %i.am, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTTjjEbENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1v_16NormalizedString7replacecE0E0B1z_.exit ] ; 4 uses
  %.sroa.017.0.copyload = load i64, ptr %i.al, align 8 ; 28 uses
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.418.0.copyload = load i64, ptr %.sroa.418.0..sroa_idx, align 8 ; 13 uses
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.519.0.copyload = load i8, ptr %.sroa.519.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.an = trunc nuw i8 %.sroa.519.0.copyload to i1
  br i1 %i.an, label %bb.c, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTTjjEbENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1v_16NormalizedString7replacecE0E0B1z_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1117
  store i64 0, ptr %i.j, align 8, !noalias !1117
  %i.ao = load ptr, ptr %i.o, align 8, !noalias !1117, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !1117, !nonnull !6, !noundef !6 ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !noalias !1117, !noundef !6 ; 9 uses
  %.not.i.i.i = icmp ugt i64 %.sroa.017.0.copyload, %.sroa.418.0.copyload
  br i1 %.not.i.i.i, label %.invoke, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = icmp eq i64 %.sroa.017.0.copyload, 0    ; 2 uses
  br i1 %i.at, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not5.i.i.i = icmp ult i64 %.sroa.017.0.copyload, %i.as
  br i1 %.not5.i.i.i, label %bb.g, label %.split.i.i.i

bb.f:                                             ; preds = %bb.g, %.split.i.i.i, %bb.d
  %i.au = icmp eq i64 %.sroa.418.0.copyload, 0
  br i1 %i.au, label %bb.j, label %bb.h

.split.i.i.i:                                     ; preds = %bb.e
  %i.av = icmp eq i64 %.sroa.017.0.copyload, %i.as
  br i1 %i.av, label %bb.f, label %.invoke

bb.g:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.017.0.copyload
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !1118, !noalias !1117, !noundef !6
  %i.ay = icmp sgt i8 %i.ax, -65
  br i1 %i.ay, label %bb.f, label %.invoke

bb.h:                                             ; preds = %bb.f
  %.not6.i.i.i = icmp ult i64 %.sroa.418.0.copyload, %i.as
  br i1 %.not6.i.i.i, label %bb.i, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.h
  %i.az = icmp eq i64 %.sroa.418.0.copyload, %i.as
  br i1 %i.az, label %bb.j, label %.invoke

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.418.0.copyload
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !1118, !noalias !1117, !noundef !6
  %i.bc = icmp sgt i8 %i.bb, -65
  br i1 %i.bc, label %bb.j, label %.invoke

bb.j:                                             ; preds = %bb.i, %.split7.i.i.i, %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.017.0.copyload ; 2 uses
  %gepdiff.i.i = sub nuw nsw i64 %.sroa.418.0.copyload, %.sroa.017.0.copyload ; 3 uses
  %i.be = icmp ult i64 %gepdiff.i.i, 32
  br i1 %i.be, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = invoke noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count14do_count_chars(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %gepdiff.i.i)
          to label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i unwind label %.body.thread205.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.j
  %i.bg = invoke noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count23char_count_general_case(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %gepdiff.i.i)
          to label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i unwind label %.body.thread205.loopexit.split-lp.loopexit.split-lp

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i32.i.i = phi i64 [ %i.bf, %bb.k ], [ %i.bg, %bb.l ] ; 2 uses
  %i.bh = load ptr, ptr %i.o, align 8, !noalias !1117, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.bi = load i64, ptr %i.s, align 8, !noalias !1117, !noundef !6 ; 13 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !1117, !nonnull !6, !noundef !6 ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !1117, !noundef !6 ; 9 uses
  %.not.i33.i.i = icmp ugt i64 %i.bi, %.sroa.017.0.copyload
  br i1 %.not.i33.i.i, label %.invoke, label %bb.m

bb.m:                                             ; preds = %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i
  %i.bn = icmp eq i64 %i.bi, 0
  br i1 %i.bn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not5.i34.i.i = icmp ult i64 %i.bi, %i.bm
  br i1 %.not5.i34.i.i, label %bb.p, label %.split.i35.i.i

bb.o:                                             ; preds = %bb.p, %.split.i35.i.i, %bb.m
  br i1 %i.at, label %bb.s, label %bb.q

.split.i35.i.i:                                   ; preds = %bb.n
  %i.bo = icmp eq i64 %i.bi, %i.bm
  br i1 %i.bo, label %bb.o, label %.invoke

bb.p:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !1119, !noalias !1117, !noundef !6
  %i.br = icmp sgt i8 %i.bq, -65
  br i1 %i.br, label %bb.o, label %.invoke

bb.q:                                             ; preds = %bb.o
  %.not6.i38.i.i = icmp ult i64 %.sroa.017.0.copyload, %i.bm
  br i1 %.not6.i38.i.i, label %bb.r, label %.split7.i39.i.i

.split7.i39.i.i:                                  ; preds = %bb.q
  %i.bs = icmp eq i64 %.sroa.017.0.copyload, %i.bm
  br i1 %i.bs, label %bb.s, label %.invoke

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.017.0.copyload
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !1119, !noalias !1117, !noundef !6
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.s, label %.invoke

.invoke:                                          ; preds = %.noexc11, %.split.i44.i.i, %bb.z, %.split7.i48.i.i, %bb.ab, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i, %.split.i35.i.i, %bb.p, %.split7.i39.i.i, %bb.r, %bb.c, %.split.i.i.i, %bb.g, %.split7.i.i.i, %bb.i
  %i.bw = phi ptr [ %i.bk, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i ], [ %i.aq, %bb.c ], [ %i.aq, %bb.i ], [ %i.aq, %.split7.i.i.i ], [ %i.aq, %bb.g ], [ %i.aq, %.split.i.i.i ], [ %i.bk, %bb.r ], [ %i.bk, %.split7.i39.i.i ], [ %i.bk, %bb.p ], [ %i.bk, %.split.i35.i.i ], [ %i.db, %bb.ab ], [ %i.db, %.split7.i48.i.i ], [ %i.db, %bb.z ], [ %i.db, %.split.i44.i.i ], [ %i.db, %.noexc11 ]
  %i.bx = phi i64 [ %i.bm, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i ], [ %i.as, %bb.c ], [ %i.as, %bb.i ], [ %i.as, %.split7.i.i.i ], [ %i.as, %bb.g ], [ %i.as, %.split.i.i.i ], [ %i.bm, %bb.r ], [ %i.bm, %.split7.i39.i.i ], [ %i.bm, %bb.p ], [ %i.bm, %.split.i35.i.i ], [ %i.dd, %bb.ab ], [ %i.dd, %.split7.i48.i.i ], [ %i.dd, %bb.z ], [ %i.dd, %.split.i44.i.i ], [ %i.dd, %.noexc11 ]
  %i.by = phi i64 [ %i.bi, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i ], [ %.sroa.017.0.copyload, %bb.c ], [ %.sroa.017.0.copyload, %bb.i ], [ %.sroa.017.0.copyload, %.split7.i.i.i ], [ %.sroa.017.0.copyload, %bb.g ], [ %.sroa.017.0.copyload, %.split.i.i.i ], [ %i.bi, %bb.r ], [ %i.bi, %.split7.i39.i.i ], [ %i.bi, %bb.p ], [ %i.bi, %.split.i35.i.i ], [ %i.cx, %bb.ab ], [ %i.cx, %.split7.i48.i.i ], [ %i.cx, %bb.z ], [ %i.cx, %.split.i44.i.i ], [ %i.cx, %.noexc11 ]
  %i.bz = phi i64 [ %.sroa.017.0.copyload, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i ], [ %.sroa.418.0.copyload, %bb.c ], [ %.sroa.418.0.copyload, %bb.i ], [ %.sroa.418.0.copyload, %.split7.i.i.i ], [ %.sroa.418.0.copyload, %bb.g ], [ %.sroa.418.0.copyload, %.split.i.i.i ], [ %.sroa.017.0.copyload, %bb.r ], [ %.sroa.017.0.copyload, %.split7.i39.i.i ], [ %.sroa.017.0.copyload, %bb.p ], [ %.sroa.017.0.copyload, %.split.i35.i.i ], [ %i.cy, %bb.ab ], [ %i.cy, %.split7.i48.i.i ], [ %i.cy, %bb.z ], [ %i.cy, %.split.i44.i.i ], [ %i.cy, %.noexc11 ]
  %i.ca = phi ptr [ @23, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i.i ], [ @22, %bb.c ], [ @22, %bb.i ], [ @22, %.split7.i.i.i ], [ @22, %bb.g ], [ @22, %.split.i.i.i ], [ @23, %bb.r ], [ @23, %.split7.i39.i.i ], [ @23, %bb.p ], [ @23, %.split.i35.i.i ], [ @24, %bb.ab ], [ @24, %.split7.i48.i.i ], [ @24, %bb.z ], [ @24, %.split.i44.i.i ], [ @24, %.noexc11 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bx, i64 noundef %i.by, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca) #26
          to label %.cont unwind label %.body.thread205.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.s:                                             ; preds = %bb.r, %.split7.i39.i.i, %bb.o
  %i.cb = sub nuw i64 %.sroa.017.0.copyload, %i.bi ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.cb)
          to label %.noexc7 unwind label %.body.thread205.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.s
  %i.cc = load i64, ptr %i.t, align 8, !alias.scope !1120, !noalias !1117, !noundef !6 ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, -1
  call void @llvm.assume(i1 %i.cd)
  %.not.i41.i.i = icmp eq i64 %.sroa.017.0.copyload, %i.bi
  br i1 %.not.i41.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i, label %bb.t

bb.t:                                             ; preds = %.noexc7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  %i.cf = load ptr, ptr %i.u, align 8, !alias.scope !1120, !noalias !1117, !nonnull !6, !noundef !6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull readonly align 1 %i.ce, i64 %i.cb, i1 false), !noalias !1117
  %.pre.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !1120, !noalias !1117
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.t, %.noexc7
  %i.ch = phi i64 [ %.pre.i.i.i, %bb.t ], [ %i.cc, %.noexc7 ]
  %i.ci = add i64 %i.ch, %i.cb
  store i64 %i.ci, ptr %i.t, align 8, !alias.scope !1120, !noalias !1117
  %i.cj = load ptr, ptr %i.o, align 8, !noalias !1117, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.ck = load i64, ptr %i.s, align 8, !noalias !1117, !noundef !6 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !1117, !noundef !6 ; 2 uses
  %i.cn = icmp ult i64 %.sroa.017.0.copyload, %i.ck
  %.not22.i.i = icmp ugt i64 %.sroa.017.0.copyload, %i.cm
  %or.cond.i.i = or i1 %i.cn, %.not22.i.i
  br i1 %or.cond.i.i, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ck, i64 noundef %.sroa.017.0.copyload, i64 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #26
          to label %.noexc9 unwind label %.body.thread205.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !1117, !nonnull !6, !noundef !6 ; 2 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.ck
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %.sroa.017.0.copyload
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTjjEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB19_5slice4iter4IterBF_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cr)
          to label %.noexc10 unwind label %.body.thread205.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1117
  store i64 %.sroa.017.0.copyload, ptr %i.x, align 8, !noalias !1117
  store i64 %.sroa.418.0.copyload, ptr %i.y, align 8, !noalias !1117
  store i64 1, ptr %i.i, align 8, !noalias !1117
  %i.cs = load ptr, ptr %i.o, align 8, !noalias !1117, !nonnull !6, !align !8, !noundef !6
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !1117, !noundef !6 ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  call void @llvm.assume(i1 %i.cv)
  %i.cw = invoke { i64, i64 } @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerINtB2_5RangeINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEE15into_full_rangeB6_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.cu)
          to label %.noexc11 unwind label %.body.thread205.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc11:                                         ; preds = %.noexc10
  %i.cx = extractvalue { i64, i64 } %i.cw, 0      ; 12 uses
  %i.cy = extractvalue { i64, i64 } %i.cw, 1      ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1117
  %i.cz = load ptr, ptr %i.o, align 8, !noalias !1117, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !noalias !1117, !nonnull !6, !noundef !6 ; 9 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !1117, !noundef !6 ; 9 uses
  %.not.i42.i.i = icmp ugt i64 %i.cx, %i.cy
  br i1 %.not.i42.i.i, label %.invoke, label %bb.w

bb.w:                                             ; preds = %.noexc11
  %i.de = icmp eq i64 %i.cx, 0
  br i1 %i.de, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not5.i43.i.i = icmp ult i64 %i.cx, %i.dd
  br i1 %.not5.i43.i.i, label %bb.z, label %.split.i44.i.i

bb.y:                                             ; preds = %bb.z, %.split.i44.i.i, %bb.w
  %i.df = icmp eq i64 %i.cy, 0
  br i1 %i.df, label %bb.ac, label %bb.aa

.split.i44.i.i:                                   ; preds = %bb.x
  %i.dg = icmp eq i64 %i.cx, %i.dd
  br i1 %i.dg, label %bb.y, label %.invoke

bb.z:                                             ; preds = %bb.x
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cx
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !1121, !noalias !1117, !noundef !6
  %i.dj = icmp sgt i8 %i.di, -65
  br i1 %i.dj, label %bb.y, label %.invoke

bb.aa:                                            ; preds = %bb.y
  %.not6.i47.i.i = icmp ult i64 %i.cy, %i.dd
  br i1 %.not6.i47.i.i, label %bb.ab, label %.split7.i48.i.i

.split7.i48.i.i:                                  ; preds = %bb.aa
  %i.dk = icmp eq i64 %i.cy, %i.dd
  br i1 %i.dk, label %bb.ac, label %.invoke

bb.ab:                                            ; preds = %bb.aa
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cy
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !1121, !noalias !1117, !noundef !6
  %i.dn = icmp sgt i8 %i.dm, -65
  br i1 %i.dn, label %bb.ac, label %.invoke

bb.ac:                                            ; preds = %bb.ab, %.split7.i48.i.i, %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cx
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cy
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE9from_iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dp)
          to label %.noexc12 unwind label %.body.thread205.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.ac
  %i.dq = load ptr, ptr %i.z, align 8, !noalias !1117, !nonnull !6, !noundef !6 ; 4 uses
  %i.dr = load i64, ptr %i.g, align 8, !range !9, !noalias !1117, !noundef !6
  %i.ds = load i64, ptr %i.aa, align 8, !noalias !1117, !noundef !6 ; 2 uses
  %i.dt = icmp ult i64 %i.ds, 2305843009213693952
  call void @llvm.assume(i1 %i.dt)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ds ; 2 uses
  store ptr %i.dq, ptr %i.h, align 8, !noalias !1117
  store i64 %i.dr, ptr %i.ab, align 8, !noalias !1117
  store ptr %i.dq, ptr %i.ac, align 8, !noalias !1117
  store ptr %i.du, ptr %i.ad, align 8, !noalias !1117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1117
  call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  %i.dv = icmp eq i64 %.sroa.0.0.i32.i.i, 0
  br i1 %i.dv, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString7replacecE00NCINvXsK_NtNtBa_6traits5accumjNtB4p_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc12
  call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  br label %bb.ae

bb.ae:                                            ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replacecE00NCINvXsK_NtB18_5accumjNtB5e_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i, %bb.ad
  %i.dw = phi i64 [ %.sroa.0.0.i32.i.i, %bb.ad ], [ %i.ea, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replacecE00NCINvXsK_NtB18_5accumjNtB5e_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i ]
  %i.dx = phi ptr [ %i.dq, %bb.ad ], [ %i.dz, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replacecE00NCINvXsK_NtB18_5accumjNtB5e_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ad ], [ %i.ee, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replacecE00NCINvXsK_NtB18_5accumjNtB5e_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dx, %i.du
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString7replacecE00NCINvXsK_NtNtBa_6traits5accumjNtB4p_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = load i32, ptr %i.dx, align 4, !range !12, !noalias !1124, !noundef !6 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 4 ; 2 uses
  store ptr %i.dz, ptr %i.ac, align 8, !alias.scope !1125, !noalias !1126
  %i.ea = add i64 %i.dw, -1                       ; 2 uses
  %i.eb = icmp samesign ult i32 %i.dy, 128
  br i1 %i.eb, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replacecE00NCINvXsK_NtB18_5accumjNtB5e_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ec = icmp samesign ult i32 %i.dy, 2048
  br i1 %i.ec, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replacecE00NCINvXsK_NtB18_5accumjNtB5e_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ed = icmp samesign ult i32 %i.dy, 65536
  %..i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ed, i64 3, i64 4
  br label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replacecE00NCINvXsK_NtB18_5accumjNtB5e_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replacecE00NCINvXsK_NtB18_5accumjNtB5e_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.af
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.ag ], [ %..i.i.i.i.i.i.i.i.i.i.i, %bb.ah ], [ 1, %bb.af ]
  %i.ee = add i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i ; 2 uses
  %i.ef = icmp eq i64 %i.ea, 0
  br i1 %i.ef, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString7replacecE00NCINvXsK_NtNtBa_6traits5accumjNtB4p_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i, label %bb.ae

.body.i.i:                                        ; preds = %bb.an, %bb.al, %bb.ai
  %.pn.i.i = phi { ptr, i32 } [ %i.es, %bb.al ], [ %i.eh, %bb.ai ], [ %i.ev, %bb.an ]
  %.val30.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1127, !noalias !1117, !nonnull !6, !noundef !6
  %.val31.i.i = load i64, ptr %i.ab, align 8, !alias.scope !1127, !noalias !1117, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1128
  store i64 %.val31.i.i, ptr %i.c, align 8, !noalias !1128
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.val30.i.i, ptr %i.eg, align 8, !noalias !1128
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeccENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.aq unwind label %bb.ap, !noalias !1117

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString7replacecE00NCINvXsK_NtNtBa_6traits5accumjNtB4p_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString7replacecE00NCINvXsK_NtNtBa_6traits5accumjNtB4p_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replacecE00NCINvXsK_NtB18_5accumjNtB5e_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i, %bb.ae, %.noexc12
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %.noexc12 ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.ae ], [ %i.ee, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString7replacecE00NCINvXsK_NtB18_5accumjNtB5e_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i ]
  %i.ei = load ptr, ptr %i.af, align 8, !noalias !1117, !nonnull !6, !noundef !6 ; 2 uses
  %i.ej = load i64, ptr %i.ag, align 8, !noalias !1117, !noundef !6
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1117
  %i.el = add i64 %.sroa.0.0.i.i.i.i, %i.cx
  store i64 %i.el, ptr %i.f, align 8, !noalias !1117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1117
  store ptr %i.ei, ptr %i.d, align 8, !noalias !1117
  store ptr %i.ek, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1117
end_hunk_2
begin_hunk_3_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTciEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB17_8adapters3map8map_foldBW_cuNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2P_16NormalizedString15transform_rangeNtNtNtB19_3ops5range9RangeFullINtB8_3VecBW_EEs_0NCINvNvB11_8for_each4callcNCINvXsd_NtBa_6stringNtB5F_6StringINtNtB15_7collect6ExtendcE6extendINtB27_3MapBH_B2G_EE0E0E0EB2T_:bb.a
bb.h:                                             ; preds = %bb.f
  %i.cm = icmp sgt i64 %i.by, 0
  br i1 %i.cm, label %bb.l, label %.split.i.i

bb.i:                                             ; preds = %.noexc
  %i.cn = load i64, ptr %i.ai, align 8, !noalias !1236
  br label %.invoke71

bb.j:                                             ; preds = %.noexc
  %i.co = load ptr, ptr %i.ai, align 8, !noalias !1236, !nonnull !6, !noundef !6 ; 2 uses
  %i.cp = icmp samesign ugt i64 %i.cl, 8
  call void @llvm.assume(i1 %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.co, ptr noundef nonnull align 1 dereferenceable(9) @5, i64 9, i1 false), !noalias !1236
  store i64 %i.cl, ptr %i.x, align 8, !noalias !1236
  store ptr %i.co, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !1236
  store i64 9, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !1236
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.noexc7, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1236
  store ptr %i.z, ptr %i.t, align 8, !noalias !1236
  store ptr @_RNvXsj_NtCs4NRVxsYgnAr_4core3fmtcNtB5_5Debug3fmt, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !1236
  store ptr %i.y, ptr %i.aj, align 8, !noalias !1236
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !noalias !1236
  store ptr %i.x, ptr %i.ak, align 8, !noalias !1236
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !noalias !1236
  store ptr %.pre.i.i, ptr %i.al, align 8, !noalias !1236
  store ptr @_RNvXsj_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impiNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i.i, align 8, !noalias !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1236
  store ptr @11, ptr %i.s, align 8, !noalias !1236
  store i64 33, ptr %i.am, align 8, !noalias !1236
  store ptr @11, ptr %i.an, align 8, !noalias !1236
  store i64 33, ptr %i.ao, align 8, !noalias !1236
  store ptr @10, ptr %i.ap, align 8, !noalias !1236
  invoke void @_RINvNtCsbKm4k1ctY99_3log13___private_api3loguNtB2_12GlobalLoggerECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull @8, ptr noundef nonnull %i.t, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s)
          to label %bb.p unwind label %bb.o, !noalias !1236

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1236
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc6 unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.l
  %i.cq = load i64, ptr %i.b, align 8, !range !14, !noalias !1236, !noundef !6
  %i.cr = trunc nuw i64 %i.cq to i1
  %i.cs = load i64, ptr %i.af, align 8, !range !15, !noalias !1236, !noundef !6 ; 3 uses
  br i1 %i.cr, label %bb.m, label %bb.n, !prof !16

.split.i.i:                                       ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1236
  store i64 %i.by, ptr %i.w, align 8, !noalias !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1236
  store ptr %i.w, ptr %i.u, align 8, !noalias !1236
  store ptr @_RNvXsj_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impiNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !1236
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @6, ptr noundef nonnull %i.u)
          to label %.noexc7 unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1236
  br label %bb.k

bb.m:                                             ; preds = %.noexc6
  %i.ct = load i64, ptr %i.ag, align 8, !noalias !1236
  br label %.invoke71

.invoke71:                                        ; preds = %bb.i, %bb.m
  %i.cu = phi i64 [ %i.cs, %bb.m ], [ %i.cl, %bb.i ]
  %i.cv = phi i64 [ %i.ct, %bb.m ], [ %i.cn, %bb.i ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cu, i64 %i.cv) #26
          to label %.cont72 unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont72:                                          ; preds = %.invoke71
  unreachable

bb.n:                                             ; preds = %.noexc6
  %i.cw = load ptr, ptr %i.ag, align 8, !noalias !1236, !nonnull !6, !noundef !6 ; 2 uses
  %i.cx = icmp samesign ugt i64 %i.cs, 5
  call void @llvm.assume(i1 %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.cw, ptr noundef nonnull align 1 dereferenceable(6) @7, i64 6, i1 false), !noalias !1236
  store i64 %i.cs, ptr %i.x, align 8, !noalias !1236
  store ptr %i.cw, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !1236
  store i64 6, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !1236
  br label %bb.k

bb.o:                                             ; preds = %bb.k
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.x) #24
          to label %.body.thread unwind label %bb.az, !noalias !1236

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1236
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.q, !noalias !1236

bb.q:                                             ; preds = %bb.p
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body.thread unwind label %bb.r, !noalias !1236

bb.r:                                             ; preds = %bb.q
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1236
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.noexc9 unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1236
  br label %._crit_edge.i.i

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.db = load ptr, ptr %i.ar, align 8, !noalias !1236, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !1236, !noundef !6 ; 2 uses
  %i.de = icmp ult i64 %i.ce, %i.dd
  br i1 %i.de, label %bb.u, label %.invoke

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.df = icmp eq i64 %i.ce, 0
  br i1 %i.df, label %bb.z, label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !1236, !nonnull !6, !noundef !6
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.ce
  %i.dj = load <2 x i64>, ptr %i.di, align 8, !noalias !1236
  store <2 x i64> %i.dj, ptr %i.r, align 16, !noalias !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1236
  call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  %i.dk = load ptr, ptr %i.au, align 8, !alias.scope !1237, !noalias !1236, !nonnull !6, !noundef !6
  %i.dl = load ptr, ptr %i.av, align 8, !alias.scope !1237, !noalias !1236, !nonnull !6, !noundef !6 ; 3 uses
  %i.dm = icmp eq ptr %i.dl, %i.dk
  br i1 %i.dm, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i, label %bb.v

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i: ; preds = %bb.ab, %bb.u
  store i32 -1, ptr %i.q, align 4, !noalias !1236
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB13_16NormalizedString15transform_rangeNtNtNtB5_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_00EB17_.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store ptr %i.dn, ptr %i.av, align 8, !alias.scope !1237, !noalias !1236
  %i.do = load i32, ptr %i.dl, align 4, !range !12, !noalias !1238, !noundef !6 ; 4 uses
  store i32 %i.do, ptr %i.q, align 4, !noalias !1236
  %i.dp = icmp samesign ult i32 %i.do, 128
  br i1 %i.dp, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB13_16NormalizedString15transform_rangeNtNtNtB5_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_00EB17_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = icmp samesign ult i32 %i.do, 2048
  br i1 %i.dq, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB13_16NormalizedString15transform_rangeNtNtNtB5_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_00EB17_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = icmp samesign ult i32 %i.do, 65536
  %..i.i.i.i = select i1 %i.dr, i64 3, i64 4
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB13_16NormalizedString15transform_rangeNtNtNtB5_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_00EB17_.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB13_16NormalizedString15transform_rangeNtNtNtB5_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_00EB17_.exit.i.i: ; preds = %bb.x, %bb.w, %bb.v, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i
  %.not.i77.i.i = phi i1 [ true, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i ], [ false, %bb.w ], [ false, %bb.x ], [ false, %bb.v ]
  %.sroa.02.0.i.i.i = phi i64 [ 0, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i ], [ 2, %bb.w ], [ %..i.i.i.i, %bb.x ], [ 1, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1236
  %i.ds = load i32, ptr %i.z, align 4, !range !12, !noalias !1236, !noundef !6 ; 7 uses
  %i.dt = icmp samesign ult i32 %i.ds, 128        ; 3 uses
  br i1 %i.dt, label %bb.ae, label %bb.ac

bb.y:                                             ; preds = %bb.t
  %i.du = load ptr, ptr %i.ar, align 8, !noalias !1236, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.dv = add i64 %i.ce, -1                       ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !1236, !noundef !6 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %bb.aa, label %.invoke

bb.z:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.r, i8 0, i64 16, i1 false), !noalias !1236
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !1236, !nonnull !6, !noundef !6
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.dv
  %i.ec = load <2 x i64>, ptr %i.eb, align 8, !noalias !1236
  store <2 x i64> %i.ec, ptr %i.r, align 16, !noalias !1236
  br label %bb.ab

.invoke:                                          ; preds = %bb.y, %bb.s
  %i.ed = phi i64 [ %i.ce, %bb.s ], [ %i.dv, %bb.y ]
  %i.ee = phi i64 [ %i.dd, %bb.s ], [ %i.dx, %bb.y ]
  %i.ef = phi ptr [ @12, %bb.s ], [ @13, %bb.y ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ed, i64 noundef %i.ee, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef) #26
          to label %.cont unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1236
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i

bb.ac:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB13_16NormalizedString15transform_rangeNtNtNtB5_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_00EB17_.exit.i.i
  %i.eg = icmp samesign ult i32 %i.ds, 2048
  br i1 %i.eg, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = icmp samesign ult i32 %i.ds, 65536
  %..i.i = select i1 %i.eh, i64 3, i64 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB13_16NormalizedString15transform_rangeNtNtNtB5_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_00EB17_.exit.i.i
  %.sroa.0.0.i.i = phi i64 [ 2, %bb.ac ], [ %..i.i, %bb.ad ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB13_16NormalizedString15transform_rangeNtNtNtB5_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_00EB17_.exit.i.i ]
  %i.ei = sub nsw i64 %.sroa.0.0.i.i, %.sroa.02.0.i.i.i
  store i64 %i.ei, ptr %i.p, align 8, !noalias !1236
  br i1 %.not.i77.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1236
  store ptr %i.q, ptr %i.o, align 8, !noalias !1236
  %i.ej = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1236 ; 2 uses
  %i.ek = icmp ult i64 %i.ej, 6
  call void @llvm.assume(i1 %i.ek)
  %i.el = icmp samesign ugt i64 %i.ej, 4
  br i1 %i.el, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ai, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1236
  %i.em = icmp slt i64 %i.by, 0
  br i1 %i.em, label %bb.aj, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString15transform_rangeNtNtNtBc_3ops5range9RangeFullINtB15_3VecTciEEEs_0s_0NCINvXsK_NtNtBa_6traits5accumjNtB5k_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1236
  store ptr %i.o, ptr %i.n, align 8, !noalias !1236
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRcNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.433.0..sroa_idx.i.i, align 8, !noalias !1236
  store ptr %i.p, ptr %i.aw, align 8, !noalias !1236
  store ptr @_RNvXsj_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impiNtB9_7Display3fmt, ptr %.sroa.437.0..sroa_idx.i.i, align 8, !noalias !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1236
  store ptr @11, ptr %i.m, align 8, !noalias !1236
  store i64 33, ptr %i.ax, align 8, !noalias !1236
  store ptr @11, ptr %i.ay, align 8, !noalias !1236
  store i64 33, ptr %i.az, align 8, !noalias !1236
  store ptr @15, ptr %i.ba, align 8, !noalias !1236
  invoke void @_RINvNtCsbKm4k1ctY99_3log13___private_api3loguNtB2_12GlobalLoggerECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull @14, ptr noundef nonnull %i.n, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m)
          to label %.noexc12 unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1236
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc12, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1236
  br label %bb.ag

bb.aj:                                            ; preds = %bb.ag
  %i.en = sub i64 0, %i.by
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %i.eo = load ptr, ptr %i.au, align 8, !alias.scope !1241, !noalias !1242, !nonnull !6, !noundef !6
  %.promoted.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !1241, !noalias !1242
  br label %bb.ak

bb.ak:                                            ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString15transform_rangeNtNtB1Y_5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_0s_0NCINvXsK_NtB18_5accumjNtB6p_3Sum3sumINtB39_3MapIBS_QINtNtB5B_9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i, %bb.aj
  %i.ep = phi i64 [ %i.en, %bb.aj ], [ %i.et, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString15transform_rangeNtNtB1Y_5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_0s_0NCINvXsK_NtB18_5accumjNtB6p_3Sum3sumINtB39_3MapIBS_QINtNtB5B_9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i ]
  %i.eq = phi ptr [ %.promoted.i.i.i.i.i.i.i, %bb.aj ], [ %i.es, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString15transform_rangeNtNtB1Y_5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_0s_0NCINvXsK_NtB18_5accumjNtB6p_3Sum3sumINtB39_3MapIBS_QINtNtB5B_9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.aj ], [ %i.ex, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString15transform_rangeNtNtB1Y_5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_0s_0NCINvXsK_NtB18_5accumjNtB6p_3Sum3sumINtB39_3MapIBS_QINtNtB5B_9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.eq, %i.eo
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString15transform_rangeNtNtNtBc_3ops5range9RangeFullINtB15_3VecTciEEEs_0s_0NCINvXsK_NtNtBa_6traits5accumjNtB5k_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.er = load i32, ptr %i.eq, align 4, !range !12, !noalias !1243, !noundef !6 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 4 ; 2 uses
  store ptr %i.es, ptr %i.av, align 8, !alias.scope !1241, !noalias !1242
  %i.et = add i64 %i.ep, -1                       ; 2 uses
  %i.eu = icmp samesign ult i32 %i.er, 128
  br i1 %i.eu, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString15transform_rangeNtNtB1Y_5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_0s_0NCINvXsK_NtB18_5accumjNtB6p_3Sum3sumINtB39_3MapIBS_QINtNtB5B_9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = icmp samesign ult i32 %i.er, 2048
  br i1 %i.ev, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString15transform_rangeNtNtB1Y_5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_0s_0NCINvXsK_NtB18_5accumjNtB6p_3Sum3sumINtB39_3MapIBS_QINtNtB5B_9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ew = icmp samesign ult i32 %i.er, 65536
  %..i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ew, i64 3, i64 4
  br label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString15transform_rangeNtNtB1Y_5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_0s_0NCINvXsK_NtB18_5accumjNtB6p_3Sum3sumINtB39_3MapIBS_QINtNtB5B_9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString15transform_rangeNtNtB1Y_5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_0s_0NCINvXsK_NtB18_5accumjNtB6p_3Sum3sumINtB39_3MapIBS_QINtNtB5B_9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.am ], [ %..i.i.i.i.i.i.i.i.i.i.i, %bb.an ], [ 1, %bb.al ]
  %i.ex = add i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i ; 2 uses
  %i.ey = icmp eq i64 %i.et, 0
  br i1 %i.ey, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString15transform_rangeNtNtNtBc_3ops5range9RangeFullINtB15_3VecTciEEEs_0s_0NCINvXsK_NtNtBa_6traits5accumjNtB5k_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i, label %bb.ak

_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString15transform_rangeNtNtNtBc_3ops5range9RangeFullINtB15_3VecTciEEEs_0s_0NCINvXsK_NtNtBa_6traits5accumjNtB5k_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString15transform_rangeNtNtB1Y_5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_0s_0NCINvXsK_NtB18_5accumjNtB6p_3Sum3sumINtB39_3MapIBS_QINtNtB5B_9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i, %bb.ak, %bb.ag
  %storemerge72.i.i = phi i64 [ 0, %bb.ag ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.ak ], [ %i.ex, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3F_16NormalizedString15transform_rangeNtNtB1Y_5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_0s_0NCINvXsK_NtB18_5accumjNtB6p_3Sum3sumINtB39_3MapIBS_QINtNtB5B_9into_iter8IntoItercEEB3u_EE0E0E0E0B3J_.exit.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %storemerge72.i.i, ptr %i.l, align 8, !noalias !1236
  %i.ez = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1236 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6
  call void @llvm.assume(i1 %i.fa)
  %i.fb = icmp samesign ugt i64 %i.ez, 4
  br i1 %i.fb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString15transform_rangeNtNtNtBc_3ops5range9RangeFullINtB15_3VecTciEEEs_0s_0NCINvXsK_NtNtBa_6traits5accumjNtB5k_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1236
  store ptr %i.l, ptr %i.k, align 8, !noalias !1236
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !noalias !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1236
  store ptr @11, ptr %i.j, align 8, !noalias !1236
  store i64 33, ptr %i.bb, align 8, !noalias !1236
  store ptr @11, ptr %i.bc, align 8, !noalias !1236
  store i64 33, ptr %i.bd, align 8, !noalias !1236
  store ptr @17, ptr %i.be, align 8, !noalias !1236
  invoke void @_RINvNtCsbKm4k1ctY99_3log13___private_api3loguNtB2_12GlobalLoggerECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull @16, ptr noundef nonnull %i.k, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %.noexc13 unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1236
  %.pre78.i.i = load i64, ptr %i.l, align 8, !noalias !1236
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc13, %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString15transform_rangeNtNtNtBc_3ops5range9RangeFullINtB15_3VecTciEEEs_0s_0NCINvXsK_NtNtBa_6traits5accumjNtB5k_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i
  %i.fc = phi i64 [ %storemerge72.i.i, %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString15transform_rangeNtNtNtBc_3ops5range9RangeFullINtB15_3VecTciEEEs_0s_0NCINvXsK_NtNtBa_6traits5accumjNtB5k_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i ], [ %.pre78.i.i, %.noexc13 ]
  %i.fd = load i64, ptr %.pre.i.i, align 8, !noalias !1236, !noundef !6
  %i.fe = add i64 %i.fc, %.sroa.02.0.i.i.i
  %i.ff = add i64 %i.fe, %i.fd
  store i64 %i.ff, ptr %.pre.i.i, align 8, !noalias !1236
  %i.fg = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1236 ; 2 uses
  %i.fh = icmp ult i64 %i.fg, 6
  call void @llvm.assume(i1 %i.fh)
  %i.fi = icmp samesign ugt i64 %i.fg, 4
  br i1 %i.fi, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1236
  store <2 x ptr> %i.bu, ptr %i.i, align 16, !noalias !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1236
  store ptr @11, ptr %i.h, align 8, !noalias !1236
  store i64 33, ptr %i.bf, align 8, !noalias !1236
  store ptr @11, ptr %i.bg, align 8, !noalias !1236
  store i64 33, ptr %i.bh, align 8, !noalias !1236
  store ptr @19, ptr %i.bi, align 8, !noalias !1236
  invoke void @_RINvNtCsbKm4k1ctY99_3log13___private_api3loguNtB2_12GlobalLoggerECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull @18, ptr noundef nonnull %i.i, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %.noexc14 unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1236
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc14, %bb.ap
  %i.fj = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1236 ; 2 uses
  %i.fk = icmp ult i64 %i.fj, 6
  call void @llvm.assume(i1 %i.fk)
  %i.fl = icmp samesign ugt i64 %i.fj, 4
  br i1 %i.fl, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1236
  br i1 %i.dt, label %bb.aw, label %bb.au

bb.at:                                            ; preds = %.noexc15, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1236
  br i1 %i.dt, label %_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString15transform_rangeNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_0Bc_.exit.i, label %bb.ax

bb.au:                                            ; preds = %bb.as
  %i.fm = icmp samesign ult i32 %i.ds, 2048
  br i1 %i.fm, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fn = icmp samesign ult i32 %i.ds, 65536
  %.95.i.i = select i1 %i.fn, i64 3, i64 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.as
  %.sink93.i.i = phi i64 [ 1, %bb.as ], [ 2, %bb.au ], [ %.95.i.i, %bb.av ]
  store i64 %.sink93.i.i, ptr %i.g, align 8, !noalias !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1236
  store ptr %i.g, ptr %i.f, align 8, !noalias !1236
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.449.0..sroa_idx.i.i, align 8, !noalias !1236
  store ptr %i.r, ptr %i.bj, align 8, !noalias !1236
  store ptr @_RNvXs1G_NtCs4NRVxsYgnAr_4core3fmtTjjENtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.453.0..sroa_idx.i.i, align 8, !noalias !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1236
  store ptr @11, ptr %i.e, align 8, !noalias !1236
  store i64 33, ptr %i.bk, align 8, !noalias !1236
  store ptr @11, ptr %i.bl, align 8, !noalias !1236
  store i64 33, ptr %i.bm, align 8, !noalias !1236
  store ptr @21, ptr %i.bn, align 8, !noalias !1236
  invoke void @_RINvNtCsbKm4k1ctY99_3log13___private_api3loguNtB2_12GlobalLoggerECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull @20, ptr noundef nonnull %i.f, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %.noexc15 unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1236
end_hunk_3
