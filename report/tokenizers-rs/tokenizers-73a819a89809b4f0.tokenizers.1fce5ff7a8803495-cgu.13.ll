Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.13?download=true
inline.NumInlined: 1330
inline.NumDeleted: 900
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEENCNvXs0_NtNtB1Y_10processors7robertaNtB30_17RobertaProcessingNtB1W_13PostProcessor17process_encodingss0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4A_8for_each4callB1S_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5Q_3VecB1S_E14extend_trustedBN_E0E0EB1Y_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !617
  br label %bb.cg

bb.bp:                                            ; preds = %bb.bn
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.k) #29
          to label %bb.bq unwind label %bb.ae, !noalias !617

bb.bq:                                            ; preds = %bb.bp
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.l) #29
          to label %bb.br unwind label %bb.ae, !noalias !617

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.m) #29
          to label %bb.bs unwind label %bb.ae, !noalias !617

bb.bs:                                            ; preds = %bb.br
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.n) #29
          to label %bb.bt unwind label %bb.ae, !noalias !617

bb.bt:                                            ; preds = %bb.bs
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.o) #29
          to label %bb.bu unwind label %bb.ae, !noalias !617

bb.bu:                                            ; preds = %bb.bt
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.p) #29
          to label %bb.bv unwind label %bb.ae, !noalias !617

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEENtNtBV_4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.r)
          to label %bb.ch unwind label %bb.ae, !noalias !617

.loopexit30.i.i:                                  ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit75.i.i.i.i.i
  %lpad.loopexit32.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp31.i.i:                         ; preds = %bb.bl
  %lpad.loopexit.split-lp33.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit.split-lp31.i.i, %.loopexit30.i.i
  %lpad.phi34.i.i = phi { ptr, i32 } [ %lpad.loopexit32.i.i, %.loopexit30.i.i ], [ %lpad.loopexit.split-lp33.i.i, %.loopexit.split-lp31.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.s) #29
          to label %bb.bx unwind label %bb.ae, !noalias !617

bb.bx:                                            ; preds = %bb.bw, %bb.bi, %.loopexit.split-lp26.i.i, %.loopexit25.i.i, %bb.be
  %.pn.pn.ph.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi34.i.i, %bb.bw ], [ %i.jf, %bb.be ], [ %i.jp, %bb.bi ], [ %lpad.loopexit27.i.i, %.loopexit25.i.i ], [ %lpad.loopexit.split-lp28.i.i, %.loopexit.split-lp26.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.v) #29
          to label %bb.by unwind label %bb.ae, !noalias !617

bb.by:                                            ; preds = %bb.bx, %bb.bc, %.loopexit.split-lp21.i.i, %.loopexit20.i.i
  %.pn.pn.pn.ph.i.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.ph.i.i.i.i.i, %bb.bx ], [ %i.je, %bb.bc ], [ %lpad.loopexit22.i.i, %.loopexit20.i.i ], [ %lpad.loopexit.split-lp23.i.i, %.loopexit.split-lp21.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.x) #29
          to label %bb.bz unwind label %bb.ae, !noalias !617

bb.bz:                                            ; preds = %bb.by, %bb.ay
  %.pn.pn.pn.pn.ph.i.i.i.i.i = phi { ptr, i32 } [ %i.iw, %bb.ay ], [ %.pn.pn.pn.ph.i.i.i.i.i, %bb.by ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.z) #29
          to label %bb.ca unwind label %bb.ae, !noalias !617

bb.ca:                                            ; preds = %bb.bz, %bb.aw
  %.pn.pn.pn.pn.pn.ph.i.i.i.i.i = phi { ptr, i32 } [ %i.ir, %bb.aw ], [ %.pn.pn.pn.pn.ph.i.i.i.i.i, %bb.bz ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #29
          to label %bb.cb unwind label %bb.ae, !noalias !617

bb.cb:                                            ; preds = %bb.ca, %bb.au
  %.pn.pn.pn.pn.pn.pn.ph.i.i.i.i.i = phi { ptr, i32 } [ %i.im, %bb.au ], [ %.pn.pn.pn.pn.pn.ph.i.i.i.i.i, %bb.ca ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #29
          to label %bb.cc unwind label %bb.ae, !noalias !617

bb.cc:                                            ; preds = %bb.cb, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.pn.pn.pn.pn.pn.pn.pn.ph.i.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.ph.i.i.i.i.i, %bb.cb ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.ce unwind label %bb.cd, !noalias !617

bb.cd:                                            ; preds = %bb.cc
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body18.i.i unwind label %bb.cf, !noalias !617

bb.ce:                                            ; preds = %bb.cc
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.ch unwind label %bb.ae, !noalias !620

bb.cf:                                            ; preds = %bb.cd
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !617
  unreachable

bb.cg:                                            ; preds = %bb.bo, %bb.ad
  %i.kf = getelementptr inbounds nuw [256 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.6.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.kf, ptr noundef nonnull readonly align 8 dereferenceable(256) %i.bi, i64 256, i1 false), !noalias !626
  %i.kg = add i64 %.sroa.6.0.i, 1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %i.kh = add i64 %i.fj, 1
  %i.ki = add nuw i64 %.sroa.01.0.i.i, 1          ; 2 uses
  %i.kj = icmp eq i64 %i.ki, %i.bu
  br i1 %i.kj, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjQB1B_EB1B_uNCNvXs0_NtNtB1H_10processors7robertaNtB3X_17RobertaProcessingNtB1F_13PostProcessor17process_encodingss0_0NCINvNvB2B_8for_each4callB1B_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB68_3VecB1B_E14extend_trustedINtB3k_3MapBS_B3P_EE0E0E0EB1H_.exit, label %bb.d

bb.ch:                                            ; preds = %bb.ce, %bb.bv, %bb.as, %bb.al, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.fi, %bb.c ], [ %.pn39.pn.pn.pn.pn.pn.pn.ph.i.i.i.i.i, %bb.as ], [ %i.ie, %bb.al ], [ %i.kc, %bb.bv ], [ %.pn.pn.pn.pn.pn.pn.pn.ph.i.i.i.i.i, %bb.ce ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.6.0.i, ptr %.sroa.0.0.copyload, align 8, !noalias !620
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjQB1B_EB1B_uNCNvXs0_NtNtB1H_10processors7robertaNtB3X_17RobertaProcessingNtB1F_13PostProcessor17process_encodingss0_0NCINvNvB2B_8for_each4callB1B_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB68_3VecB1B_E14extend_trustedINtB3k_3MapBS_B3P_EE0E0E0EB1H_.exit: ; preds = %bb.cg, %bb.a
  %storemerge.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.kg, %bb.cg ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload, align 8, !noalias !620
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1w_6string6StringEENCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB2I_10BPEDecoderNtNtB2M_9tokenizer7Decoder12decode_chain0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1u_13in_place_drop11InPlaceDropB2c_ENCINvNtB1u_16in_place_collect24write_in_place_with_dropB2c_E0INtNtBc_6result6ResultB54_zEEB2M_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !633
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.a, align 8, !noalias !633
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.d, align 8, !noalias !633
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.e, align 8, !noalias !633
  %i.f = call { ptr, ptr } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNvXs_NtNtB1o_8adapters9enumerateINtB3a_9EnumeratepEB1i_8try_fold9enumerateBW_B2m_INtNtB1q_6result6ResultB2m_zENCINvNtB3c_3map12map_try_foldTjBW_EBW_B2m_B4o_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB5J_10BPEDecoderNtNtB5N_9tokenizer7Decoder12decode_chain0NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0E0B4o_EB5N_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !633
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtB1w_6string6StringB2d_EEENCNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2O_10BpeBuilder5builds_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleINtNtB1w_5boxed3BoxDNtNtBc_5error5ErrorNtNtBc_6marker4SendNtB6J_4SyncEL_EEEB43_8try_folduNCINvMNtNtBc_3ops9try_traitINtB7B_17NeverShortCircuituE10wrap_mut_2uTTmmEB8C_ENCINvNvB43_8for_each4callB8B_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB9o_7HashMapB8C_B8C_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB47_7collect6ExtendB8B_E6extendB4U_E0E0E0B7W_E0INtNtB7D_12control_flow11ControlFlowB7W_EEB2U_(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !637
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !noalias !638
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !638
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !638
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %i.d, align 8, !noalias !637
  %i.e = call noundef zeroext i1 @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringBX_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1t_8adapters9enumerateINtB2C_9EnumeratepEB1n_8try_fold9enumerateBW_uINtNtNtB1v_3ops12control_flow11ControlFlowINtNtB3S_9try_trait17NeverShortCircuituEENCINvNtB2E_3map12map_try_foldTjBW_EINtNtB1v_6result6ResultTTmmEB65_EINtNtBa_5boxed3BoxDNtNtB1v_5error5ErrorNtNtB1v_6marker4SendNtB6T_4SyncEL_EEuB3N_NCNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB7E_10BpeBuilder5builds_0NCINvXB2E_INtB2E_12GenericShuntINtB5d_3MapIB34_BH_EB7w_EIB5I_NtNtB1v_7convert10InfallibleB6e_EEB1n_8try_folduNCINvMB4w_B4t_10wrap_mut_2uB64_NCINvNvB1n_8for_each4callB64_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtBbL_7HashMapB65_B65_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1r_7collect6ExtendB64_E6extendB92_E0E0E0B4t_E0E0E0B3N_EB7K_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !637
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTmmEmEEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2t_10BpeTrainer8do_trains3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3O_8for_each4callTB2d_B2d_ENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB5b_7HashMapB2d_B2d_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB3S_7collect6ExtendB4R_E6extendBN_E0E0EB2z_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 32, i1 false), !noalias !645
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !643, !noalias !645, !noundef !3
  call void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTmmEmEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1a_8adapters9enumerateINtB2f_9EnumeratepEB14_4fold9enumerateBW_uNCINvNtB2h_3map8map_foldTjBW_ETBX_BX_EuNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB47_10BpeTrainer8do_trains3_0NCINvNvB14_8for_each4callB3Q_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB64_7HashMapBX_BX_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB18_7collect6ExtendB3Q_E6extendINtB3r_3MapIB2H_BH_EB3Z_EE0E0E0E0EB4d_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.c), !noalias !643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !644
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateNtNtNtBc_3str4iter11CharIndicesENCNvMs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB23_26BytesToCharOffsetConverter3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4p_13FlattenCompatppE9iter_fold7flattenINtNtB8_4take4TakeINtNtNtBa_7sources11repeat_with10RepeatWithNCNCB1X_00EEuNCINvNvXsi_B4p_B4C_B3A_4fold7flattenB5j_uNCINvNvB3A_8for_each4callTjjENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7N_7HashMapjjNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtB3E_7collect6ExtendB7z_E6extendINtB4p_7FlatMapBX_B5j_B1V_EE0E0E0E0EB27_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !680, !noalias !681 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !680, !noalias !681, !nonnull !3, !noundef !3 ; 5 uses
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.4.0.copyload.i
  br i1 %i.c, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter11CharIndicesENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTjcEEINtNtB7_4take4TakeINtNtNtB9_7sources11repeat_with10RepeatWithNCNCNvMs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB3V_26BytesToCharOffsetConverter3new00EEuNCB3P_0NCINvNvMsg_NtB7_7flattenINtB5N_13FlattenCompatppE9iter_fold7flattenB2M_uNCINvNvXsi_B5N_B60_B1E_4fold7flattenB2M_uNCINvNvB1E_8for_each4callTjjENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB84_7HashMapjjNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtB1I_7collect6ExtendB7Q_E6extendINtB5N_7FlatMapBS_B2M_B5v_EE0E0E0E0E0EB3Z_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !680, !noalias !681, !noundef !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !680, !noalias !681
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTjcEuNCINvNtBb_3map8map_foldTjB21_EINtNtBb_4take4TakeINtNtNtBd_7sources11repeat_with10RepeatWithNCNCNvMs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB3J_26BytesToCharOffsetConverter3new00EEuNCB3D_0NCINvNvMsg_NtBb_7flattenINtB5B_13FlattenCompatppE9iter_fold7flattenB2A_uNCINvNvXsi_B5B_B5O_B1e_4fold7flattenB2A_uNCINvNvB1e_8for_each4callTjjENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7S_7HashMapjjNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtB1i_7collect6ExtendB7E_E6extendINtB5B_7FlatMapIBX_NtNtNtBf_3str4iter11CharIndicesEB2A_B5j_EE0E0E0E0E0E0B3N_.exit.i.i, %.lr.ph.i.i
  %i.g = phi i64 [ %.sroa.5.0.copyload.i, %.lr.ph.i.i ], [ %i.az, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTjcEuNCINvNtBb_3map8map_foldTjB21_EINtNtBb_4take4TakeINtNtNtBd_7sources11repeat_with10RepeatWithNCNCNvMs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB3J_26BytesToCharOffsetConverter3new00EEuNCB3D_0NCINvNvMsg_NtBb_7flattenINtB5B_13FlattenCompatppE9iter_fold7flattenB2A_uNCINvNvXsi_B5B_B5O_B1e_4fold7flattenB2A_uNCINvNvB1e_8for_each4callTjjENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7S_7HashMapjjNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtB1i_7collect6ExtendB7E_E6extendINtB5B_7FlatMapIBX_NtNtNtBf_3str4iter11CharIndicesEB2A_B5j_EE0E0E0E0E0E0B3N_.exit.i.i ] ; 4 uses
  %.sroa.2.09.i.i = phi i64 [ %i.e, %.lr.ph.i.i ], [ %i.bk, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTjcEuNCINvNtBb_3map8map_foldTjB21_EINtNtBb_4take4TakeINtNtNtBd_7sources11repeat_with10RepeatWithNCNCNvMs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB3J_26BytesToCharOffsetConverter3new00EEuNCB3D_0NCINvNvMsg_NtBb_7flattenINtB5B_13FlattenCompatppE9iter_fold7flattenB2A_uNCINvNvXsi_B5B_B5O_B1e_4fold7flattenB2A_uNCINvNvB1e_8for_each4callTjjENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7S_7HashMapjjNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtB1i_7collect6ExtendB7E_E6extendINtB5B_7FlatMapIBX_NtNtNtBf_3str4iter11CharIndicesEB2A_B5j_EE0E0E0E0E0E0B3N_.exit.i.i ] ; 3 uses
  %i.h = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph.i.i ], [ %i.ba, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTjcEuNCINvNtBb_3map8map_foldTjB21_EINtNtBb_4take4TakeINtNtNtBd_7sources11repeat_with10RepeatWithNCNCNvMs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB3J_26BytesToCharOffsetConverter3new00EEuNCB3D_0NCINvNvMsg_NtBb_7flattenINtB5B_13FlattenCompatppE9iter_fold7flattenB2A_uNCINvNvXsi_B5B_B5O_B1e_4fold7flattenB2A_uNCINvNvB1e_8for_each4callTjjENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7S_7HashMapjjNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtB1i_7collect6ExtendB7E_E6extendINtB5B_7FlatMapIBX_NtNtNtBf_3str4iter11CharIndicesEB2A_B5j_EE0E0E0E0E0E0B3N_.exit.i.i ] ; 6 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  %i.k = load i8, ptr %i.h, align 1, !noalias !682, !noundef !3 ; 4 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %.thread.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i: ; preds = %bb.b
  %i.m = and i8 %i.k, 31
  %i.n = zext nneg i8 %i.m to i32                 ; 3 uses
  %i.o = icmp ne ptr %i.j, %.sroa.4.0.copyload.i
  call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 3 uses
  %i.q = load i8, ptr %i.j, align 1, !noalias !682, !noundef !3
  %i.r = shl nuw nsw i32 %i.n, 6
  %i.s = and i8 %i.q, 63
  %i.t = zext nneg i8 %i.s to i32                 ; 2 uses
  %i.u = or disjoint i32 %i.r, %i.t
  %i.v = icmp samesign ugt i8 %i.k, -33
  br i1 %i.v, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i, label %bb.c

.thread.i.i:                                      ; preds = %bb.b
  %i.w = add i64 %i.g, 1
  br label %bb.f

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i
  %i.x = icmp ne ptr %i.p, %.sroa.4.0.copyload.i
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 3 ; 3 uses
  %i.z = load i8, ptr %i.p, align 1, !noalias !682, !noundef !3
  %i.aa = shl nuw nsw i32 %i.t, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.aa, %i.ac            ; 2 uses
  %i.ae = shl nuw nsw i32 %i.n, 12
  %i.af = or disjoint i32 %i.ad, %i.ae
  %i.ag = icmp samesign ugt i8 %i.k, -17
  br i1 %i.ag, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i
  %i.ah = icmp ne ptr %i.y, %.sroa.4.0.copyload.i
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.aj = load i8, ptr %i.y, align 1, !noalias !682, !noundef !3
  %i.ak = shl nuw nsw i32 %i.n, 18
  %i.al = and i32 %i.ak, 1835008
  %i.am = shl nuw nsw i32 %i.ad, 6
  %i.an = and i8 %i.aj, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = or disjoint i32 %i.ap, %i.al
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i
  %i.ar = phi ptr [ %i.y, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i ], [ %i.ai, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i ], [ %i.p, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i ] ; 4 uses
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.af, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i ], [ %i.aq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i ] ; 4 uses
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 1114112
  call void @llvm.assume(i1 %i.as)
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.at, %i.i
  %i.av = add i64 %i.au, %i.g                     ; 3 uses
  %i.aw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 128
  br i1 %i.aw, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 2048
  br i1 %i.ax, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 65536
  %..i.i.i.i.i = select i1 %i.ay, i64 3, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.thread.i.i
  %i.az = phi i64 [ %i.av, %bb.d ], [ %i.av, %bb.e ], [ %i.av, %bb.c ], [ %i.w, %.thread.i.i ]
  %i.ba = phi ptr [ %i.ar, %bb.d ], [ %i.ar, %bb.e ], [ %i.ar, %bb.c ], [ %i.j, %.thread.i.i ] ; 2 uses
  %.sroa.04.0.i.i.i.i.i = phi i64 [ 2, %bb.d ], [ %..i.i.i.i.i, %bb.e ], [ 1, %bb.c ], [ 1, %.thread.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !683
  store i64 %i.g, ptr %i.b, align 8, !noalias !684
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !684
  store i64 %.sroa.2.09.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !684
  store i64 %.sroa.04.0.i.i.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !685
  store ptr %.sroa.64.0..sroa_idx.i.i.i.i, ptr %i.a, align 8, !noalias !686
  store ptr %1, ptr %i.f, align 8, !noalias !686
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.bb = phi i64 [ %i.bi, %bb.g ], [ %.sroa.04.0.i.i.i.i.i, %bb.f ]
  %i.bc = phi ptr [ %i.bh, %bb.g ], [ %.sroa.64.0..sroa_idx.i.i.i.i, %bb.f ]
  %i.bd = phi i64 [ %i.bf, %bb.g ], [ 0, %bb.f ]  ; 2 uses
  %i.be = add i64 %i.bd, %i.g
  %i.bf = add i64 %i.bd, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.bg = add i64 %i.bb, -1
  store i64 %i.bg, ptr %i.bc, align 8, !noalias !688
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callTjjENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB22_7HashMapjjNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtBZ_7collect6ExtendB1O_E6extendINtNtNtB11_8adapters7flatten7FlatMapINtNtB4f_9enumerate9EnumerateNtNtNtBb_3str4iter11CharIndicesEINtNtB4f_4take4TakeINtNtNtB11_7sources11repeat_with10RepeatWithNCNCNvMs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB6U_26BytesToCharOffsetConverter3new00EENCB6O_0EE0E0INtB7_5FnMutTuB1O_EE8call_mutB6Y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.be, i64 noundef %.sroa.2.09.i.i), !noalias !689
  %i.bh = load ptr, ptr %i.a, align 8, !alias.scope !687, !noalias !686, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !689, !noundef !3 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTjcEuNCINvNtBb_3map8map_foldTjB21_EINtNtBb_4take4TakeINtNtNtBd_7sources11repeat_with10RepeatWithNCNCNvMs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB3J_26BytesToCharOffsetConverter3new00EEuNCB3D_0NCINvNvMsg_NtBb_7flattenINtB5B_13FlattenCompatppE9iter_fold7flattenB2A_uNCINvNvXsi_B5B_B5O_B1e_4fold7flattenB2A_uNCINvNvB1e_8for_each4callTjjENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7S_7HashMapjjNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtB1i_7collect6ExtendB7E_E6extendINtB5B_7FlatMapIBX_NtNtNtBf_3str4iter11CharIndicesEB2A_B5j_EE0E0E0E0E0E0B3N_.exit.i.i, label %bb.g

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTjcEuNCINvNtBb_3map8map_foldTjB21_EINtNtBb_4take4TakeINtNtNtBd_7sources11repeat_with10RepeatWithNCNCNvMs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB3J_26BytesToCharOffsetConverter3new00EEuNCB3D_0NCINvNvMsg_NtBb_7flattenINtB5B_13FlattenCompatppE9iter_fold7flattenB2A_uNCINvNvXsi_B5B_B5O_B1e_4fold7flattenB2A_uNCINvNvB1e_8for_each4callTjjENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7S_7HashMapjjNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtB1i_7collect6ExtendB7E_E6extendINtB5B_7FlatMapIBX_NtNtNtBf_3str4iter11CharIndicesEB2A_B5j_EE0E0E0E0E0E0B3N_.exit.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !683
  %i.bk = add i64 %.sroa.2.09.i.i, 1
  %i.bl = icmp eq ptr %i.ba, %.sroa.4.0.copyload.i
  br i1 %i.bl, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter11CharIndicesENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTjcEEINtNtB7_4take4TakeINtNtNtB9_7sources11repeat_with10RepeatWithNCNCNvMs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB3V_26BytesToCharOffsetConverter3new00EEuNCB3P_0NCINvNvMsg_NtB7_7flattenINtB5N_13FlattenCompatppE9iter_fold7flattenB2M_uNCINvNvXsi_B5N_B60_B1E_4fold7flattenB2M_uNCINvNvB1E_8for_each4callTjjENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB84_7HashMapjjNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtB1I_7collect6ExtendB7Q_E6extendINtB5N_7FlatMapBS_B2M_B5v_EE0E0E0E0E0EB3Z_.exit, label %bb.b

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter11CharIndicesENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTjcEEINtNtB7_4take4TakeINtNtNtB9_7sources11repeat_with10RepeatWithNCNCNvMs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB3V_26BytesToCharOffsetConverter3new00EEuNCB3P_0NCINvNvMsg_NtB7_7flattenINtB5N_13FlattenCompatppE9iter_fold7flattenB2M_uNCINvNvXsi_B5N_B60_B1E_4fold7flattenB2M_uNCINvNvB1E_8for_each4callTjjENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB84_7HashMapjjNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtB1I_7collect6ExtendB7Q_E6extendINtB5N_7FlatMapBS_B2M_B5v_EE0E0E0E0E0EB3Z_.exit: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTjcEuNCINvNtBb_3map8map_foldTjB21_EINtNtBb_4take4TakeINtNtNtBd_7sources11repeat_with10RepeatWithNCNCNvMs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB3J_26BytesToCharOffsetConverter3new00EEuNCB3D_0NCINvNvMsg_NtBb_7flattenINtB5B_13FlattenCompatppE9iter_fold7flattenB2A_uNCINvNvXsi_B5B_B5O_B1e_4fold7flattenB2A_uNCINvNvB1e_8for_each4callTjjENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7S_7HashMapjjNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtB1i_7collect6ExtendB7E_E6extendINtB5B_7FlatMapIBX_NtNtNtBf_3str4iter11CharIndicesEB2A_B5j_EE0E0E0E0E0E0B3N_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateNtNtNtBc_3str4iter5CharsENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1W_16NormalizedString7prepend0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTciEcuNCINvB1S_15transform_rangeINtNtNtBc_3ops5range5RangejEINtNtB8_5chain5ChainBN_INtNtNtBa_7sources4once4OnceB4g_EEEs_0NCINvNvB3k_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB6M_6StringINtNtB3o_7collect6ExtendcE6extendIBO_B5e_B4m_EE0E0E0EB20_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [96 x i8], align 8                ; 16 uses
  %i.d = alloca [96 x i8], align 8                ; 16 uses
  %i.e = alloca [96 x i8], align 8                ; 16 uses
  %i.f = alloca [96 x i8], align 8                ; 16 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [4 x i8], align 4                 ; 6 uses
  %i.s = alloca [16 x i8], align 16               ; 7 uses
  %i.t = alloca [64 x i8], align 8                ; 11 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [4 x i8], align 4                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.x = load ptr, ptr %0, align 8, !alias.scope !733, !noalias !734, !nonnull !3, !noundef !3 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !733, !noalias !734, !nonnull !3, !noundef !3 ; 5 uses
  %.not.i18.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not.i18.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjcETciEuNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2P_16NormalizedString7prepend0QNCIB2e_B2C_cuNCINvB2L_15transform_rangeINtNtNtBb_3ops5range5RangejEINtNtB7_5chain5ChainINtB2g_3MapBS_B2H_EINtNtNtB9_7sources4once4OnceB2C_EEEs_0NCINvNvB1x_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB76_6StringINtNtB1B_7collect6ExtendcE6extendIB5D_B5i_B4q_EE0E0E0E0EB2T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !733, !noalias !734, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.417.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.421.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.425.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.429.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.433.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.437.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.0.sroa.3.0..sroa_idx.i.i74.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i75.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.0.sroa.4.0..sroa_idx.i.i76.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.0.sroa.6.0..sroa_idx.i.i77.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i78.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.5.0..sroa_idx.i.i79.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.7.0..sroa_idx.i.i80.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.8.0..sroa_idx.i.i81.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.9.0..sroa_idx.i.i82.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.11.0..sroa_idx.i.i83.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  %.sroa.13.0..sroa_idx.i.i84.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.15.0..sroa_idx.i.i85.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.441.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.sroa.3.0..sroa_idx.i.i86.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i87.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.0.sroa.4.0..sroa_idx.i.i88.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.0.sroa.6.0..sroa_idx.i.i89.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i90.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.5.0..sroa_idx.i.i91.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.7.0..sroa_idx.i.i92.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.8.0..sroa_idx.i.i93.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.9.0..sroa_idx.i.i94.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.sroa.11.0..sroa_idx.i.i95.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %.sroa.13.0..sroa_idx.i.i96.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.sroa.15.0..sroa_idx.i.i97.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.sroa.0.sroa.3.0..sroa_idx.i.i98.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i99.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.sroa.4.0..sroa_idx.i.i100.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.sroa.6.0..sroa_idx.i.i101.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i102.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.5.0..sroa_idx.i.i103.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.7.0..sroa_idx.i.i104.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.8.0..sroa_idx.i.i105.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.9.0..sroa_idx.i.i106.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.11.0..sroa_idx.i.i107.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %.sroa.13.0..sroa_idx.i.i108.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.15.0..sroa_idx.i.i109.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.449.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.453.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0.sroa.3.0..sroa_idx.i.i110.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i111.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.sroa.4.0..sroa_idx.i.i112.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.sroa.6.0..sroa_idx.i.i113.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i114.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.5.0..sroa_idx.i.i115.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.7.0..sroa_idx.i.i116.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.8.0..sroa_idx.i.i117.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.9.0..sroa_idx.i.i118.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.11.0..sroa_idx.i.i119.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %.sroa.13.0..sroa_idx.i.i120.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.15.0..sroa_idx.i.i121.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !734, !noalias !733 ; 5 uses
  %i.ar = load ptr, ptr %i.ak, align 8, !alias.scope !734, !noalias !733, !nonnull !3, !align !4 ; 2 uses
  %i.as = load ptr, ptr %i.al, align 8, !alias.scope !734, !noalias !733, !nonnull !3, !align !4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.ao, align 8, !alias.scope !734, !noalias !733, !nonnull !3, !align !4
  %.val.i.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !734, !noalias !733, !nonnull !3, !align !4 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = insertelement <2 x ptr> <ptr poison, ptr @_RNvXsj_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impiNtB9_7Display3fmt>, ptr %.pre.i.i.i.i.i.i.i, i64 0
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumeratecuNCINvNtBb_3map8map_foldTjcETciEuNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2H_16NormalizedString7prepend0QNCIB26_B2u_cuNCINvB2D_15transform_rangeINtNtNtBf_3ops5range5RangejEINtNtBb_5chain5ChainINtB28_3MapIBX_NtNtNtBf_3str4iter5CharsEB2z_EINtNtNtBd_7sources4once4OnceB2u_EEEs_0NCINvNvB1e_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB7o_6StringINtNtB1i_7collect6ExtendcE6extendIB5v_B5a_B4i_EE0E0E0E0E0B2L_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.020.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %.sroa.0.1.ph.i.i, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumeratecuNCINvNtBb_3map8map_foldTjcETciEuNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2H_16NormalizedString7prepend0QNCIB26_B2u_cuNCINvB2D_15transform_rangeINtNtNtBf_3ops5range5RangejEINtNtBb_5chain5ChainINtB28_3MapIBX_NtNtNtBf_3str4iter5CharsEB2z_EINtNtNtBd_7sources4once4OnceB2u_EEEs_0NCINvNvB1e_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB7o_6StringINtNtB1i_7collect6ExtendcE6extendIB5v_B5a_B4i_EE0E0E0E0E0B2L_.exit.i.i ] ; 5 uses
  %.sroa.2.019.i.i = phi i64 [ %i.ab, %.lr.ph.i.i ], [ %i.gl, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumeratecuNCINvNtBb_3map8map_foldTjcETciEuNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2H_16NormalizedString7prepend0QNCIB26_B2u_cuNCINvB2D_15transform_rangeINtNtNtBf_3ops5range5RangejEINtNtBb_5chain5ChainINtB28_3MapIBX_NtNtNtBf_3str4iter5CharsEB2z_EINtNtNtBd_7sources4once4OnceB2u_EEEs_0NCINvNvB1e_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB7o_6StringINtNtB1i_7collect6ExtendcE6extendIB5v_B5a_B4i_EE0E0E0E0E0B2L_.exit.i.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 1 ; 3 uses
  %i.ba = load i8, ptr %.sroa.0.020.i.i, align 1, !noalias !735, !noundef !3 ; 5 uses
  %i.bb = icmp sgt i8 %i.ba, -1
  br i1 %i.bb, label %bb.c, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i: ; preds = %bb.b
  %i.bc = and i8 %i.ba, 31
  %i.bd = zext nneg i8 %i.bc to i32               ; 3 uses
  %i.be = icmp ne ptr %i.az, %i.z
  call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 2 ; 3 uses
  %i.bg = load i8, ptr %i.az, align 1, !noalias !735, !noundef !3
  %i.bh = shl nuw nsw i32 %i.bd, 6
  %i.bi = and i8 %i.bg, 63
  %i.bj = zext nneg i8 %i.bi to i32               ; 2 uses
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = icmp samesign ugt i8 %i.ba, -33
  br i1 %i.bl, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bm = zext nneg i8 %i.ba to i32
  br label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i
  %i.bn = icmp ne ptr %i.bf, %i.z
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 3 ; 3 uses
  %i.bp = load i8, ptr %i.bf, align 1, !noalias !735, !noundef !3
  %i.bq = shl nuw nsw i32 %i.bj, 6
  %i.br = and i8 %i.bp, 63
  %i.bs = zext nneg i8 %i.br to i32
end_hunk_0
