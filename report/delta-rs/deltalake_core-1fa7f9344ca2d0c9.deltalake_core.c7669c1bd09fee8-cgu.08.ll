inline.NumInlined: 16156
inline.NumDeleted: 5265
begin_hunk_0_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvMNtNtNtB1D_6kernel8snapshot6streamINtB2E_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB2G_NtB2G_8Snapshot10tombstones0Es_00EB1D_:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 512 ; 11 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  br label %bb.f

bb.f:                                             ; preds = %bb.ae, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1199
  call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1205
  %i.aj = load ptr, ptr %i.ac, align 16, !alias.scope !1203, !noalias !1206, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commitNtB4_12CommitReaderNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !noalias !1207

.noexc.i.i:                                       ; preds = %bb.g
  %i.ak = load i64, ptr %i.d, align 16, !range !1118, !noalias !1205, !noundef !4
  %.not3.i.i.i = icmp eq i64 %i.ak, -9223372036854775742
  br i1 %.not3.i.i.i, label %bb.h, label %bb.p

.thread.i.i:                                      ; preds = %bb.f
  store i64 -9223372036854775742, ptr %i.f, align 16, !alias.scope !1200, !noalias !1208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1205
  br label %bb.q

bb.h:                                             ; preds = %.noexc.i.i
  %.val.i.i.i = load ptr, ptr %i.ac, align 16, !alias.scope !1203, !noalias !1206, !noundef !4 ; 4 uses
  %.val4.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !1203, !noalias !1206 ; 6 uses
  %i.al = icmp eq ptr %.val.i.i.i, null
  br i1 %i.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i.i) ]
  %i.am = load ptr, ptr %.val4.i.i.i, align 8, !invariant.load !4, !noalias !1209 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.am(ptr noundef nonnull %.val.i.i.i)
          to label %bb.k unwind label %bb.m, !noalias !1209

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !1123, !invariant.load !4, !noalias !1209 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !947, !invariant.load !4, !noalias !1209
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.ao, i64 noundef range(i64 1, 536870913) %i.ar) #33, !noalias !1209
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.m:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !1123, !invariant.load !4, !noalias !1209 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.body.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !947, !invariant.load !4, !noalias !1209
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #33, !noalias !1209
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.n, %bb.m
  store ptr null, ptr %i.ac, align 16, !alias.scope !1203, !noalias !1206
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.d) #40
          to label %.body.i.i unwind label %bb.o, !noalias !1209

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.h
  store ptr null, ptr %i.ac, align 16, !alias.scope !1203, !noalias !1206
  br label %bb.p

bb.o:                                             ; preds = %.body.i.i.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1209
  unreachable

.loopexit.i.i:                                    ; preds = %bb.aa, %bb.z, %bb.w, %bb.g
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.ad, %bb.ac
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.s, %.loopexit.split-lp.i.i, %.loopexit.i.i, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.as, %.body.i.i.i ], [ %i.bb, %bb.s ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3y_DNtNtB1o_11engine_data10EngineDataEL_ENtNtB1o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1o_11log_segmentNtB6B_10LogSegment24create_checkpoint_streams_0EINtNtNtB2I_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4L_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3x_EEEINtB7J_18MapSpecialCaseFnOkNCNCB6y_s_00EEB5O_ENCB6y_s0_0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(512) %i.j) #40
          to label %bb.af unwind label %bb.as, !noalias !1207

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.f, ptr noundef nonnull align 16 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !1208
  %.pr.i.i = load i64, ptr %i.f, align 16, !alias.scope !1210, !noalias !1213 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1205
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  %.not.i75.i.i = icmp eq i64 %.pr.i.i, -9223372036854775742
  br i1 %.not.i75.i.i, label %bb.q, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread99.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread99.i.i: ; preds = %bb.p
  %.sroa.9.0.copyload.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !1218, !noalias !1219
  %.sroa.1090.0.copyload.i.i = load ptr, ptr %.sroa.1090.0..sroa_idx.i.i, align 16, !alias.scope !1218, !noalias !1219
  %.sroa.11.0.copyload.i.i = load i8, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !1218, !noalias !1219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx.i.i, i64 7, i1 false), !noalias !1199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.13.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.13.0..sroa_idx.i.i, i64 64, i1 false), !noalias !1199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1199
  br label %bb.u

bb.q:                                             ; preds = %bb.p, %.thread.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %i.az = load i64, ptr %i.ae, align 16, !range !1223, !alias.scope !1224, !noalias !1225, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.az, 4
  br i1 %.not.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %bb.r

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1199
  br label %.loopexit115.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1227
  invoke void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB11_6traits8iterator8Iteratorp4ItemINtNtB13_6result6ResultIB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3u_5error5ErrorENtNtB13_6marker4SendEL_ENCNvMNtB3u_11log_segmentNtB5d_10LogSegment24create_checkpoint_streams_0EINtNtNtB4_8adaptors3map14MapSpecialCaseINtNtBZ_5chain5ChainINtNtNtB11_7sources4once4OnceB2X_EINtNtBZ_7flatten7FlattenINtNtB13_6option8IntoIterB1I_EEEINtB6l_18MapSpecialCaseFnOkNCNCB5a_s_00EEB4p_EB2i_4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 16 dereferenceable(496) %i.j)
          to label %.noexc.i.i.i unwind label %bb.s, !noalias !1231

.noexc.i.i.i:                                     ; preds = %bb.r
  %i.ba = load i128, ptr %i.c, align 16, !range !1232, !noalias !1227, !noundef !4
  %.not.i.i.i.i.i = icmp eq i128 %i.ba, 2
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread109.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread109.i.i: ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1199
  br label %.loopexit115.i.i

bb.s:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.f) #40
          to label %.body.i.i unwind label %bb.t, !noalias !1233

bb.t:                                             ; preds = %bb.s
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1233
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.noexc.i.i.i
  %.sroa.0.0.copyload88.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 16, !noalias !1234 ; 2 uses
  %.sroa.9.0.copyload89.i.i = load ptr, ptr %.sroa.9.0..sroa.42.0..sroa_idx.i.i.i.sroa_idx.i.i, align 8, !noalias !1234
  %.sroa.1090.0.copyload91.i.i = load ptr, ptr %.sroa.1090.0..sroa.42.0..sroa_idx.i.i.i.sroa_idx.i.i, align 16, !noalias !1234
  %.sroa.11.0.copyload92.i.i = load i8, ptr %.sroa.11.0..sroa.42.0..sroa_idx.i.i.i.sroa_idx.i.i, align 8, !noalias !1234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa.42.0..sroa_idx.i.i.i.sroa_idx.i.i, i64 7, i1 false), !noalias !1199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.13.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.13.0..sroa.42.0..sroa_idx.i.i.i.sroa_idx.i.i, i64 64, i1 false), !noalias !1199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1199
  %.not.i6.i = icmp eq i64 %.sroa.0.0.copyload88.i.i, -9223372036854775742
  br i1 %.not.i6.i, label %.loopexit115.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread99.i.i
  %.sroa.0.1108.i.i = phi i64 [ %.pr.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread99.i.i ], [ %.sroa.0.0.copyload88.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.sroa.9.2107.i.i = phi ptr [ %.sroa.9.0.copyload.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread99.i.i ], [ %.sroa.9.0.copyload89.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 3 uses
  %.sroa.1090.2106.i.i = phi ptr [ %.sroa.1090.0.copyload.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread99.i.i ], [ %.sroa.1090.0.copyload91.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 3 uses
  %.sroa.11.2105.i.i = phi i8 [ %.sroa.11.0.copyload.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread99.i.i ], [ %.sroa.11.0.copyload92.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1199
  %.not71.i.i = icmp eq i64 %.sroa.0.1108.i.i, -9223372036854775743
  br i1 %.not71.i.i, label %bb.w, label %bb.v

.loopexit115.i.i:                                 ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB30_.exit83.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread109.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3y_DNtNtB1o_11engine_data10EngineDataEL_ENtNtB1o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1o_11log_segmentNtB6B_10LogSegment24create_checkpoint_streams_0EINtNtNtB2I_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4L_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3x_EEEINtB7J_18MapSpecialCaseFnOkNCNCB6y_s_00EEB5O_ENCB6y_s0_0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(512) %i.j)
          to label %bb.ah unwind label %bb.ag, !noalias !1207

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1045.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, i64 7, i1 false), !noalias !1192
  %.sroa.1045.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.1045.i.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %.sroa.1045.32..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.13.i.i, i64 64, i1 false), !noalias !1192
  %.sroa.755.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.755.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.1045.i.i, i64 71, i1 false), !noalias !1187
  store i64 %.sroa.0.1108.i.i, ptr %0, align 16, !alias.scope !1235, !noalias !1236
  %.sroa.452.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.2107.i.i, ptr %.sroa.452.0..sroa_idx.i.i, align 8, !alias.scope !1235, !noalias !1236
  %.sroa.553.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.1090.2106.i.i, ptr %.sroa.553.0..sroa_idx.i.i, align 16, !alias.scope !1235, !noalias !1236
  %.sroa.654.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.11.2105.i.i, ptr %.sroa.654.0..sroa_idx.i.i, align 8, !alias.scope !1235, !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1199
  br label %bb.am

bb.w:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.2107.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1090.2106.i.i) ]
  invoke void @_RNvMs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_dataNtB5_15ArrowEngineData20try_from_engine_data(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.h, ptr noundef nonnull %.sroa.9.2107.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.1090.2106.i.i)
          to label %bb.x unwind label %.loopexit.i.i, !noalias !1207

bb.x:                                             ; preds = %bb.w
  %i.bd = load i64, ptr %i.h, align 16, !range !1237, !noalias !1199, !noundef !4 ; 2 uses
  %.not72.i.i = icmp eq i64 %i.bd, -9223372036854775743
  %i.be = load ptr, ptr %i.af, align 8, !noalias !1199 ; 2 uses
  br i1 %.not72.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.661.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.567.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.567.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.661.0..sroa_idx.i.i, i64 80, i1 false), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1199
  store i64 %i.bd, ptr %0, align 16, !alias.scope !1235, !noalias !1236
  %.sroa.466.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %.sroa.466.0..sroa_idx.i.i, align 8, !alias.scope !1235, !noalias !1236
  br label %bb.am

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1199
  invoke void @_RNvXs4_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_dataNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtB5_15ArrowEngineDataEE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias noundef nonnull align 8 %i.be)
          to label %bb.aa unwind label %.loopexit.i.i, !noalias !1207

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.427.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !1199
  store ptr %i.ag, ptr %i.ah, align 16, !noalias !1199
  store i64 -9223372036854775711, ptr %i.e, align 16, !noalias !1199
  store i8 0, ptr %i.ai, align 8, !noalias !1199
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio6future8block_on8block_onNCNvMs1_NtNtNtB6_4sync4mpsc7boundedINtBX_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB3d_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147)
          to label %bb.ab unwind label %.loopexit.i.i, !noalias !1207

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1199
  %i.bf = load i64, ptr %i.g, align 16, !range !1238, !noalias !1199, !noundef !4
  switch i64 %i.bf, label %bb.ad [
    i64 -9223372036854775710, label %bb.ae
    i64 -9223372036854775711, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.bg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB30_.exit83.i.i unwind label %.loopexit.split-lp.i.i, !noalias !1207

bb.ad:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB30_.exit83.i.i unwind label %.loopexit.split-lp.i.i, !noalias !1207

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1199
  br label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB30_.exit83.i.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1199
  br label %.loopexit115.i.i

bb.af:                                            ; preds = %bb.ag, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.bh, %bb.ag ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2U_(ptr noalias noundef align 8 dereferenceable(8) %i.ag) #40
          to label %.body.i unwind label %bb.as, !noalias !1207

bb.ag:                                            ; preds = %bb.am, %.loopexit115.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ah:                                            ; preds = %.loopexit115.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1199
  store i64 -9223372036854775711, ptr %0, align 16, !alias.scope !1235, !noalias !1236
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  %i.bi = load ptr, ptr %i.ag, align 16, !alias.scope !1248, !noalias !1207, !nonnull !4, !noundef !4 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 496
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 acq_rel, align 8, !noalias !1249
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.ai, label %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 128
  invoke void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB2_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE5closeB2s_(ptr noundef nonnull align 8 %i.bm)
          to label %.noexc.i.i.i.i unwind label %bb.aj, !noalias !1250

.noexc.i.i.i.i:                                   ; preds = %bb.ai
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 256
  invoke void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.bn)
          to label %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i.i.i unwind label %bb.aj, !noalias !1250

bb.aj:                                            ; preds = %.noexc.i.i.i.i, %bb.ai
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  %i.bp = load ptr, ptr %i.ag, align 16, !alias.scope !1257, !noalias !1207, !nonnull !4, !noundef !4
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 release, align 8, !noalias !1258
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.ak, label %.body.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB35_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag) #42
          to label %.body.i unwind label %bb.al, !noalias !1207

_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i, %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  %i.bs = load ptr, ptr %i.ag, align 16, !alias.scope !1265, !noalias !1207, !nonnull !4, !noundef !4
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !1266
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2U_.exit.sink.split.i.i, label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1207
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2U_.exit.sink.split.i.i: ; preds = %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i84.i.i, %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB35_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag) #42
          to label %bb.au unwind label %bb.at, !noalias !1192

bb.am:                                            ; preds = %bb.y, %bb.v
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3y_DNtNtB1o_11engine_data10EngineDataEL_ENtNtB1o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1o_11log_segmentNtB6B_10LogSegment24create_checkpoint_streams_0EINtNtNtB2I_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4L_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3x_EEEINtB7J_18MapSpecialCaseFnOkNCNCB6y_s_00EEB5O_ENCB6y_s0_0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(512) %i.j)
          to label %bb.an unwind label %bb.ag, !noalias !1207

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1199
  call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %i.bw = load ptr, ptr %i.ag, align 16, !alias.scope !1276, !noalias !1207, !nonnull !4, !noundef !4 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 496
  %i.by = atomicrmw sub ptr %i.bx, i64 1 acq_rel, align 8, !noalias !1277
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %bb.ao, label %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i84.i.i

bb.ao:                                            ; preds = %bb.an
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  invoke void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB2_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE5closeB2s_(ptr noundef nonnull align 8 %i.ca)
          to label %.noexc.i.i86.i.i unwind label %bb.ap, !noalias !1278

.noexc.i.i86.i.i:                                 ; preds = %bb.ao
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 256
  invoke void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.cb)
          to label %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i84.i.i unwind label %bb.ap, !noalias !1278

bb.ap:                                            ; preds = %.noexc.i.i86.i.i, %bb.ao
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  %i.cd = load ptr, ptr %i.ag, align 16, !alias.scope !1285, !noalias !1207, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !1286
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.aq, label %.body.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB35_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag) #42
          to label %.body.i unwind label %bb.ar, !noalias !1207

_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i84.i.i: ; preds = %.noexc.i.i86.i.i, %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  %i.cg = load ptr, ptr %i.ag, align 16, !alias.scope !1293, !noalias !1207, !nonnull !4, !noundef !4
  %i.ch = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !1294
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2U_.exit.sink.split.i.i, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1207
  unreachable

bb.as:                                            ; preds = %bb.af, %.body.i.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1207
  unreachable

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2U_.exit.sink.split.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.at, %bb.aq, %bb.ap, %bb.ak, %bb.aj, %bb.af
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cl, %bb.at ], [ %i.cc, %bb.ap ], [ %i.bo, %bb.aj ], [ %i.bo, %bb.ak ], [ %i.cc, %bb.aq ], [ %.pn.i.i, %bb.af ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.q) #40
          to label %.body unwind label %bb.ax, !noalias !1192

bb.au:                                            ; preds = %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i84.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2U_.exit.sink.split.i.i, %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1192
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1192
end_hunk_0
begin_hunk_1_@_RNCINvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB8_9MergePlan13rewrite_filesINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2s_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB2s_6marker4SendEL_EENtNtBc_6errors15DeltaTableErrorEEE0Bc_:bb.a
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.critedge89:                                      ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.av, %bb.aw, %.critedge89
  %.pn29596 = phi { ptr, i32 } [ %i.fe, %.critedge89 ], [ %i.er, %bb.aw ], [ %i.er, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ax

bb.av:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ff = atomicrmw sub ptr %i.ei, i64 1 release, align 8, !noalias !25958
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.aw:                                            ; preds = %bb.av
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.au

bb.ax:                                            ; preds = %bb.fv, %bb.ez, %.body163, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %.pn67.pn = phi { ptr, i32 } [ %.pn29596, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.nc, %bb.ez ], [ %.pn64.pn, %bb.fv ], [ %.pn64.pn, %.body163 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 1538
  store i8 0, ptr %i.fh, align 2
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 1541
  %i.fj = load i8, ptr %i.fi, align 1, !range !34, !noundef !4
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.fw, label %bb.bg

bb.ay:                                            ; preds = %bb.al
  %i.fl = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.6265.sroa.6.8.copyload = load i64, ptr %i.fl, align 16, !alias.scope !25946
  %.sroa.6265.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.6265.sroa.8.8.copyload = load i64, ptr %.sroa.6265.sroa.8.8..sroa_idx, align 8, !alias.scope !25946
  %.sroa.6265.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.6265.sroa.9.8.copyload = load ptr, ptr %.sroa.6265.sroa.9.8..sroa_idx, align 16, !alias.scope !25946
  %.sroa.6265.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.6265.sroa.10.8.copyload = load i64, ptr %.sroa.6265.sroa.10.8..sroa_idx, align 8, !alias.scope !25946
  %.sroa.6265.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.fm = load <2 x i64>, ptr %.sroa.6265.sroa.11.8..sroa_idx, align 16, !alias.scope !25946
  %.sroa.6265.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6265.sroa.13, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6265.sroa.13.8..sroa_idx, i64 48, i1 false), !alias.scope !25946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.28.sroa.10.sroa.9, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6265.sroa.13, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6265.sroa.13)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.at
  %.sroa.10389.1 = phi i64 [ %.sroa.6265.sroa.6.8.copyload, %bb.ay ], [ %.sroa.10389.0, %bb.at ]
  %.sroa.18.1 = phi i64 [ %.sroa.6265.sroa.8.8.copyload, %bb.ay ], [ %.sroa.18.0, %bb.at ]
  %.sroa.24.1 = phi ptr [ %.sroa.6265.sroa.9.8.copyload, %bb.ay ], [ %.sroa.24.0, %bb.at ]
  %.sroa.26.1 = phi i64 [ %.sroa.6265.sroa.10.8.copyload, %bb.ay ], [ %.sroa.26.0, %bb.at ]
  %i.fn = phi <2 x i64> [ %i.fm, %bb.ay ], [ %i.fb, %bb.at ]
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 1541
  store i8 0, ptr %i.fo, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fp)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fp)
          to label %.body unwind label %bb.bc

bb.bb:                                            ; preds = %bb.az
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit unwind label %bb.fa

bb.bc:                                            ; preds = %bb.ba
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.bd:                                            ; preds = %bb.ak
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.be:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.experimental.noalias.scope.decl(metadata !25963)
  call void @llvm.experimental.noalias.scope.decl(metadata !25966)
  %i.ft = load ptr, ptr %i.x, align 8, !alias.scope !25969, !nonnull !4, !noundef !4
  %i.fu = atomicrmw sub ptr %i.ft, i64 1 release, align 8, !noalias !25969
  %i.fv = icmp eq i64 %i.fu, 1
  br i1 %i.fv, label %bb.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.au

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bd, %bb.bf, %bb.be, %bb.af, %bb.ae
  %.pn70 = phi { ptr, i32 } [ %i.du, %bb.af ], [ %i.du, %bb.ae ], [ %i.fs, %bb.bd ], [ %i.dz, %bb.bf ], [ %i.dz, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6265.sroa.13)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.fw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ax
  %.pn70.pn = phi { ptr, i32 } [ %.pn70, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.pn67.pn, %bb.fw ], [ %.pn67.pn, %bb.ax ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 1541
  store i8 0, ptr %i.fw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 1542
  %i.fy = load i8, ptr %i.fx, align 2, !range !34, !noundef !4
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.fx, label %.body

bb.bh:                                            ; preds = %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCINvMs7_NtNtB1p_10operations8optimizeNtB2v_9MergePlan13rewrite_filesINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtBc_6result6ResultINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB4m_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtBc_6marker4SendEL_EENtNtB1p_6errors15DeltaTableErrorEEE00ENtNtNtBa_6traits8iterator8Iterator7collectIB4m_INtNtB52_3vec3VecNtB1l_6ActionEB8y_EEB1p_.exit
  %.sroa.10.0..sroa_idx238 = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ga = load <2 x i64>, ptr %.sroa.10.0..sroa_idx238, align 16, !alias.scope !25929
  %.sroa.10.sroa.6.sroa.6.0..sroa.10.sroa.6.0..sroa.10.0..sroa_idx238.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.28.sroa.10.sroa.9, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.10.sroa.6.sroa.6.0..sroa.10.sroa.6.0..sroa.10.0..sroa_idx238.sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit: ; preds = %bb.bb, %bb.bh
  %.sroa.10389.2 = phi i64 [ %i.cx, %bb.bh ], [ %.sroa.10389.1, %bb.bb ] ; 2 uses
  %.sroa.18.2 = phi i64 [ %.sroa.8236.sroa.0.0.copyload418, %bb.bh ], [ %.sroa.18.1, %bb.bb ] ; 2 uses
  %.sroa.24.2 = phi ptr [ %.sroa.8236.sroa.8.0.copyload421, %bb.bh ], [ %.sroa.24.1, %bb.bb ] ; 2 uses
  %.sroa.26.2 = phi i64 [ %.sroa.8236.sroa.9.0.copyload424, %bb.bh ], [ %.sroa.26.1, %bb.bb ] ; 2 uses
  %i.gb = phi <2 x i64> [ %i.ga, %bb.bh ], [ %i.fn, %bb.bb ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 1542
  store i8 0, ptr %i.gc, align 2
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 1539 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !range !34, !noundef !4
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.fb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB5P_.exit202

.body:                                            ; preds = %bb.fa, %bb.ba, %bb.fx, %bb.ab, %bb.bg
  %.pn74.pn = phi { ptr, i32 } [ %i.cw, %bb.ab ], [ %.pn70.pn, %bb.bg ], [ %.pn70.pn, %bb.fx ], [ %i.nd, %bb.fa ], [ %i.fq, %bb.ba ]
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 1542
  store i8 0, ptr %i.gg, align 2
  br label %bb.bi

bb.bi:                                            ; preds = %bb.p, %bb.v, %bb.s, %bb.i, %bb.k, %bb.y, %.body
  %.pn74.pn.pn = phi { ptr, i32 } [ %.pn74.pn, %.body ], [ %i.cq, %bb.y ], [ %i.bv, %bb.p ], [ %i.bm, %bb.i ], [ %i.cl, %bb.v ], [ %i.cf, %bb.s ], [ %i.bo, %bb.k ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 1539
  %i.gi = load i8, ptr %i.gh, align 1, !range !34, !noundef !4
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.fy, label %.body199

bb.bj:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41
  unreachable

bb.bk:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41
  unreachable

bb.bl:                                            ; preds = %bb.bn
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB5P_(ptr noalias noundef align 16 dereferenceable(96) %i.gl) #40
          to label %.body163 unwind label %bb.au

bb.bm:                                            ; preds = %bb.b, %bb.ar
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 1552 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25970)
  %.sroa.01.0.copyload.i = load i64, ptr %i.gl, align 16, !alias.scope !25973, !noalias !25970 ; 3 uses
  store i64 -9223372036854775710, ptr %i.gl, align 16, !alias.scope !25973, !noalias !25970
  %.not.i149 = icmp eq i64 %.sroa.01.0.copyload.i, -9223372036854775710
  br i1 %.not.i149, label %bb.bn, label %bb.bo, !prof !1176

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @683, i64 noundef 29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @685) #41
          to label %.noexc151 unwind label %bb.bl

.noexc151:                                        ; preds = %bb.bn
  unreachable

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize19MergeTaskParametersEEB1k_.exit194, %bb.df, %bb.ch, %bb.bu
  %.sink = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize19MergeTaskParametersEEB1k_.exit194 ], [ 6, %bb.df ], [ 4, %bb.ch ], [ 5, %bb.bu ]
  store i8 %.sink, ptr %i.an, align 1
  ret void

bb.bo:                                            ; preds = %bb.bm
  %.sroa.5.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1560
  %.sroa.7280.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i, align 8, !alias.scope !25975 ; 3 uses
  %.sroa.7280.sroa.6.0..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1568
  %.sroa.7280.sroa.6.0.copyload = load ptr, ptr %.sroa.7280.sroa.6.0..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx, align 16, !alias.scope !25975 ; 3 uses
  %.not.i155 = icmp eq i64 %.sroa.01.0.copyload.i, -9223372036854775711
  br i1 %.not.i155, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7280.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7280.sroa.6.0.copyload) ]
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %.sroa.7280.sroa.0.0.copyload, ptr %i.gm, align 16
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %.sroa.7280.sroa.6.0.copyload, ptr %i.gn, align 8
  br label %bb.cd

bb.bq:                                            ; preds = %bb.bo
  %.sroa.7280.sroa.7.sroa.6.sroa.6.sroa.6.0..sroa.7280.sroa.7.sroa.6.sroa.6.0..sroa.7280.sroa.7.sroa.6.0..sroa.7280.sroa.7.0..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1600
  %.sroa.7280.sroa.7.sroa.6.0..sroa.7280.sroa.7.0..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1584
  %i.go = load <2 x i64>, ptr %.sroa.7280.sroa.7.sroa.6.0..sroa.7280.sroa.7.0..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx.sroa_idx, align 16, !alias.scope !25975
  %.sroa.7280.sroa.7.0..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %.sroa.7280.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7280.sroa.7.0..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !25975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.28.sroa.10.sroa.9, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.7280.sroa.7.sroa.6.sroa.6.sroa.6.0..sroa.7280.sroa.7.sroa.6.sroa.6.0..sroa.7280.sroa.7.sroa.6.0..sroa.7280.sroa.7.0..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx.sroa_idx, i64 48, i1 false)
  %i.gp = ptrtoint ptr %.sroa.7280.sroa.0.0.copyload to i64
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cy, %bb.cx, %bb.bq
  %.sroa.10389.3 = phi i64 [ %.sroa.01.0.copyload.i, %bb.bq ], [ %.sroa.10389.5, %bb.cx ], [ %.sroa.10389.5, %bb.cy ] ; 2 uses
  %.sroa.18.3 = phi i64 [ %i.gp, %bb.bq ], [ %.sroa.18.5, %bb.cx ], [ %.sroa.18.5, %bb.cy ] ; 2 uses
  %.sroa.24.3 = phi ptr [ %.sroa.7280.sroa.6.0.copyload, %bb.bq ], [ %.sroa.24.5, %bb.cx ], [ %.sroa.24.5, %bb.cy ] ; 2 uses
  %.sroa.26.3 = phi i64 [ %.sroa.7280.sroa.7.sroa.0.0.copyload, %bb.bq ], [ %.sroa.26.5, %bb.cx ], [ %.sroa.26.5, %bb.cy ] ; 2 uses
  %i.gq = phi <2 x i64> [ %i.go, %bb.bq ], [ %i.it, %bb.cx ], [ %i.it, %bb.cy ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 1538
  %i.gs = load i8, ptr %i.gr, align 2, !range !34, !noundef !4
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.ey, label %bb.at

.body163:                                         ; preds = %bb.bl, %bb.da, %bb.cz, %bb.eh, %bb.ei, %bb.db
  %.pn64.pn = phi { ptr, i32 } [ %i.lq, %bb.ei ], [ %.pn62, %bb.db ], [ %i.jc, %bb.cz ], [ %i.jc, %bb.da ], [ %i.lq, %bb.eh ], [ %i.gk, %bb.bl ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 1538
  %i.gv = load i8, ptr %i.gu, align 2, !range !34, !noundef !4
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.fv, label %bb.ax

bb.br:                                            ; preds = %bb.bs
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_(ptr noundef nonnull align 8 %i.gy) #40
          to label %.body157 unwind label %bb.au

bb.bs:                                            ; preds = %bb.d, %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 1592 ; 2 uses
  invoke fastcc void @_RNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB7_15PartitionWriter5write0Bd_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.n, ptr noundef nonnull align 8 %i.gy, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.bt unwind label %bb.br

bb.bt:                                            ; preds = %bb.bs
  %i.gz = load i64, ptr %i.n, align 16, !range !1238, !noundef !4 ; 3 uses
  %i.ha = icmp eq i64 %i.gz, -9223372036854775710
  br i1 %i.ha, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 -9223372036854775807, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %common.ret

bb.bv:                                            ; preds = %bb.bt
  %.sroa.3321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3321.sroa.0.0.copyload = load i64, ptr %.sroa.3321.0..sroa_idx, align 8
  %.sroa.3321.sroa.2.0..sroa.3321.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3321.sroa.2.0.copyload = load ptr, ptr %.sroa.3321.sroa.2.0..sroa.3321.0..sroa_idx.sroa_idx, align 16
  %.sroa.3321.sroa.3.0..sroa.3321.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.3321.sroa.3.0.copyload = load i64, ptr %.sroa.3321.sroa.3.0..sroa.3321.0..sroa_idx.sroa_idx, align 8
  %.sroa.3321.sroa.4.0..sroa.3321.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.hb = load <2 x i64>, ptr %.sroa.3321.sroa.4.0..sroa.3321.0..sroa_idx.sroa_idx, align 16
  %.sroa.3321.sroa.6.0..sroa.3321.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3321.sroa.6, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.3321.sroa.6.0..sroa.3321.0..sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 2320
  %i.hd = load i8, ptr %i.hc, align 16, !range !3169, !noundef !4
  %cond.i = icmp eq i8 %i.hd, 3
  br i1 %cond.i, label %bb.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit

bb.bw:                                            ; preds = %bb.bv
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 1704
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15LazyArrowWriter11write_batch0EBU_(ptr noundef nonnull align 8 %i.he)
          to label %bb.by unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hf = landingpad { ptr, i32 }
          cleanup
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 1664
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.hg) #40
          to label %.body157 unwind label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 1664
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.hh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit unwind label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %.body157

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit: ; preds = %bb.bv, %bb.by
  %.not.i159 = icmp eq i64 %i.gz, -9223372036854775711
  br i1 %.not.i159, label %bb.cb, label %bb.cu

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 1552
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.hk)
          to label %bb.cd unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cs, %bb.cb
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cd:                                            ; preds = %bb.cb, %bb.bp
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 1552
  store ptr %i.hm, ptr %i.hn, align 16
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cf
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cf:                                            ; preds = %bb.c, %bb.cd
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 1552 ; 8 uses
  invoke void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4nextINtB5_4NextINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1c_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cg unwind label %bb.ce

bb.cg:                                            ; preds = %bb.cf
  %i.hq = load i64, ptr %i.p, align 8, !range !19020, !noundef !4
  %i.hr = icmp eq i64 %i.hq, -9223372036854775806
  br i1 %i.hr, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i64 -9223372036854775807, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %common.ret

bb.ci:                                            ; preds = %bb.cg
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 1496 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hs, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  %i.ht = load i64, ptr %i.hs, align 8, !range !1700, !noundef !4 ; 3 uses
  %.not34 = icmp eq i64 %i.ht, -9223372036854775807
  br i1 %.not34, label %bb.ct, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.sroa.3292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %.sroa.3292.sroa.0.0.copyload = load i64, ptr %.sroa.3292.0..sroa_idx, align 16 ; 2 uses
  %.sroa.3292.sroa.3.0..sroa.3292.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %.sroa.3292.sroa.3.0.copyload = load ptr, ptr %.sroa.3292.sroa.3.0..sroa.3292.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3292.sroa.5.0..sroa.3292.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1520
  %i.hu = load <2 x i64>, ptr %.sroa.3292.sroa.5.0..sroa.3292.0..sroa_idx.sroa_idx, align 16 ; 3 uses
  %i.hv = icmp eq i64 %i.ht, -9223372036854775808
  %i.hw = shufflevector <2 x i64> %i.hu, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.hx = extractelement <2 x i64> %i.hu, i64 0
  br i1 %i.hv, label %bb.cv, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  store i64 %i.ht, ptr %i.hp, align 16
  %.sroa.4297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1560 ; 3 uses
  store i64 %.sroa.3292.sroa.0.0.copyload, ptr %.sroa.4297.0..sroa_idx, align 8
  %.sroa.4297.sroa.4.0..sroa.4297.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1568 ; 3 uses
  store ptr %.sroa.3292.sroa.3.0.copyload, ptr %.sroa.4297.sroa.4.0..sroa.4297.0..sroa_idx.sroa_idx, align 16
  %.sroa.4297.sroa.5.0..sroa.4297.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1576 ; 3 uses
  %.sroa.4297.sroa.6.0..sroa.4297.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1584
  store <2 x i64> %i.hu, ptr %.sroa.4297.sroa.5.0..sroa.4297.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val120 = load ptr, ptr %i.hy, align 16, !nonnull !4, !noundef !4
  %i.hz = getelementptr inbounds nuw i8, ptr %.val120, i64 336
  %.val126 = load ptr, ptr %i.hz, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ia = atomicrmw add ptr %.val126, i64 1 monotonic, align 8
  %i.ib = icmp slt i64 %i.ia, 0
  br i1 %i.ib, label %bb.cl, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit161

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit161: ; preds = %bb.ck
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast17cast_record_batch(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hp, ptr noundef nonnull %.val126, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.cn unwind label %bb.cm

bb.cm:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit161
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.body157

bb.cn:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit161
  call void @llvm.experimental.noalias.scope.decl(metadata !25976)
end_hunk_1
begin_hunk_2_@_RNCINvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB8_9MergePlan13rewrite_filesNCNvB4_11read_zorder0E0Bc_:bb.a
bb.cs:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.851.i)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ds, %bb.cs
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 5289
  store i8 0, ptr %i.ji, align 1, !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !26108
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 5290
  store i8 0, ptr %i.jj, align 2, !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !26108
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 5291
  store i8 0, ptr %i.jk, align 1, !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !26108
  br label %bb.db

bb.cu:                                            ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.dh, %bb.de, %bb.cj
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !26112
  unreachable

bb.cv:                                            ; preds = %bb.cl, %bb.cj
  %.pn784.i = phi { ptr, i32 } [ %i.iw, %bb.cj ], [ %i.iz, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !26108
  br label %bb.cq

bb.cw:                                            ; preds = %bb.dt, %bb.cq, %bb.cp
  %.pn15.pn.i = phi { ptr, i32 } [ %.pn15.i, %bb.cq ], [ %.pn13.i, %bb.dt ], [ %.pn13.i, %bb.cp ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 5289
  store i8 0, ptr %i.jm, align 1, !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !26108
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 5290
  %i.jo = load i8, ptr %i.jn, align 2, !range !34, !noalias !26108, !noundef !4
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %bb.du, label %.body31.i

.body31.i:                                        ; preds = %bb.cb, %bb.ce, %bb.cf, %bb.du, %bb.cw
  %.pn15.pn.pn.i = phi { ptr, i32 } [ %.pn15.pn.i, %bb.du ], [ %.pn15.pn.i, %bb.cw ], [ %i.ip, %bb.ce ], [ %i.ih, %bb.cb ], [ %i.ip, %bb.cf ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 5290
  store i8 0, ptr %i.jq, align 2, !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !26108
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 5291
  %i.js = load i8, ptr %i.jr, align 1, !range !34, !noalias !26108, !noundef !4
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.dv, label %bb.cx

bb.cx:                                            ; preds = %bb.dv, %.body31.i, %bb.bz
  %.pn15.pn.pn.pn.i = phi { ptr, i32 } [ %.pn15.pn.pn.i, %bb.dv ], [ %.pn15.pn.pn.i, %.body31.i ], [ %i.if, %bb.bz ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 5291
  store i8 0, ptr %i.ju, align 1, !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !26108
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 5292
  %i.jw = load i8, ptr %i.jv, align 4, !range !34, !noalias !26108, !noundef !4
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %bb.dw, label %bb.dc

bb.cy:                                            ; preds = %bb.cz, %.body.i
  %.pn20.i = phi { ptr, i32 } [ %i.jy, %bb.cz ], [ %.pn.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %bb.dc

bb.cz:                                            ; preds = %bb.bx
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.da:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.ct
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 5292
  store i8 0, ptr %i.jz, align 4, !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !26108
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 5293
  store i8 0, ptr %i.ka, align 1, !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !26108
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 5280 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26154)
  call void @llvm.experimental.noalias.scope.decl(metadata !26157)
  %i.kc = load ptr, ptr %i.kb, align 16, !alias.scope !26160, !noalias !26108, !nonnull !4, !noundef !4
  %i.kd = atomicrmw sub ptr %i.kc, i64 1 release, align 8, !noalias !26161
  %i.ke = icmp eq i64 %i.kd, 1
  br i1 %i.ke, label %.invoke.i, label %bb.dy

bb.dc:                                            ; preds = %bb.dw, %bb.cy, %bb.cx
  %.pn20.pn.i = phi { ptr, i32 } [ %.pn20.i, %bb.cy ], [ %.pn15.pn.pn.pn.i, %bb.dw ], [ %.pn15.pn.pn.pn.i, %bb.cx ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 5292
  store i8 0, ptr %i.kf, align 4, !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !26108
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 5293
  %i.kh = load i8, ptr %i.kg, align 1, !range !34, !noalias !26108, !noundef !4
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %bb.dx, label %bb.dd

bb.dd:                                            ; preds = %bb.dx, %bb.dc, %bb.bp
  %.pn20.pn.pn.i = phi { ptr, i32 } [ %.pn20.pn.i, %bb.dx ], [ %.pn20.pn.i, %bb.dc ], [ %i.ho, %bb.bp ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 5293
  store i8 0, ptr %i.kj, align 1, !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !26108
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 5280 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26162)
  call void @llvm.experimental.noalias.scope.decl(metadata !26165)
  %i.kl = load ptr, ptr %i.kk, align 16, !alias.scope !26168, !noalias !26108, !nonnull !4, !noundef !4
  %i.km = atomicrmw sub ptr %i.kl, i64 1 release, align 8, !noalias !26169
  %i.kn = icmp eq i64 %i.km, 1
  br i1 %i.kn, label %bb.de, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextEEB1o_.exit38.i

bb.de:                                            ; preds = %bb.dd
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kk) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextEEB1o_.exit38.i unwind label %bb.cu, !noalias !26112

bb.df:                                            ; preds = %bb.bm
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #41
          to label %.noexc152 unwind label %bb.bl

.noexc152:                                        ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %bb.bm
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #41
          to label %.noexc153 unwind label %bb.bl

.noexc153:                                        ; preds = %bb.dg
  unreachable

bb.dh:                                            ; preds = %bb.di
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !26108
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame14execute_stream0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.kp) #40
          to label %bb.cp unwind label %bb.cu, !noalias !26112

bb.di:                                            ; preds = %bb.co, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !26108
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 3408 ; 3 uses
  invoke fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame14execute_stream0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.h, ptr noundef nonnull align 16 %i.kp, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dj unwind label %bb.dh, !noalias !26112

bb.dj:                                            ; preds = %bb.di
  %i.kq = load i64, ptr %i.h, align 8, !range !2144, !noalias !26108, !noundef !4 ; 3 uses
  %i.kr = icmp eq i64 %i.kq, 21
  br i1 %i.kr, label %.thread619, label %bb.dk

.thread619:                                       ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !26108
  store i8 3, ptr %i.he, align 8, !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.776.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.dz

bb.dk:                                            ; preds = %bb.dj
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !26108 ; 3 uses
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.575.0.copyload.i = load ptr, ptr %.sroa.575.0..sroa_idx.i, align 8, !noalias !26108 ; 3 uses
  %.sroa.776.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.776.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.776.0..sroa_idx.i, i64 16, i1 false), !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !26108
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame14execute_stream0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.kp)
          to label %bb.dm unwind label %bb.dl, !noalias !26112

bb.dl:                                            ; preds = %bb.dk
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.dm:                                            ; preds = %bb.dk
  %.not.i.i = icmp eq i64 %i.kq, 20
  br i1 %.not.i.i, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.sroa.479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.479.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.776.i, i64 16, i1 false), !noalias !26108
  store i64 %i.kq, ptr %i.b, align 8, !noalias !26170
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !26170
  %.sroa.378.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.575.0.copyload.i, ptr %.sroa.378.0..sroa_idx.i, align 8, !noalias !26170
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.ds unwind label %bb.do, !noalias !26112

bb.do:                                            ; preds = %bb.dp, %bb.dn
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.dp:                                            ; preds = %bb.dm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.575.0.copyload.i) ]
  %i.ku = invoke { ptr, ptr } @_RNvYINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream6MapErrINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB16_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB16_6marker4SendEL_EENCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB68_9MergePlan11read_zorder0s_0ENtNtB7_6stream9StreamExt5boxedB6c_(ptr noundef nonnull %.sroa.3.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.575.0.copyload.i)
          to label %bb.dq unwind label %bb.do, !noalias !26112 ; 2 uses

bb.dq:                                            ; preds = %bb.dp
  %i.kv = extractvalue { ptr, ptr } %i.ku, 0
  %i.kw = extractvalue { ptr, ptr } %i.ku, 1
  %i.kx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.kv, ptr %i.kx, align 8, !noalias !26108
  %i.ky = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.kw, ptr %i.ky, align 16, !noalias !26108
  store i64 -9223372036854775711, ptr %i.g, align 16, !noalias !26108
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 5289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !26108
  store <4 x i8> zeroinitializer, ptr %i.kz, align 1, !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !26108
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 5293
  store i8 0, ptr %i.la, align 1, !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !26108
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 5280 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26173)
  call void @llvm.experimental.noalias.scope.decl(metadata !26176)
  %i.lc = load ptr, ptr %i.lb, align 16, !alias.scope !26179, !noalias !26108, !nonnull !4, !noundef !4
  %i.ld = atomicrmw sub ptr %i.lc, i64 1 release, align 8, !noalias !26180
  %i.le = icmp eq i64 %i.ld, 1
  br i1 %i.le, label %.invoke.i, label %bb.dy

.invoke.i:                                        ; preds = %bb.dq, %bb.db
  %i.lf = phi ptr [ %i.kb, %bb.db ], [ %i.lb, %bb.dq ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.lf) #42
          to label %bb.dy unwind label %bb.dr, !noalias !26112

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextEEB1o_.exit38.i: ; preds = %bb.dr, %bb.de, %bb.dd
  %.pn24.i = phi { ptr, i32 } [ %i.lg, %bb.dr ], [ %.pn20.pn.pn.i, %bb.de ], [ %.pn20.pn.pn.i, %bb.dd ]
  store i8 2, ptr %i.he, align 8, !noalias !26108
  br label %.body154

bb.dr:                                            ; preds = %.invoke.i
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextEEB1o_.exit38.i

bb.ds:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26108
  br label %bb.ct

bb.dt:                                            ; preds = %bb.cp
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %i.l) #40
          to label %bb.cw unwind label %bb.cu, !noalias !26112

bb.du:                                            ; preds = %bb.cw
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.m) #40
          to label %.body31.i unwind label %bb.cu, !noalias !26112

bb.dv:                                            ; preds = %.body31.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.n) #40
          to label %bb.cx unwind label %bb.cu, !noalias !26112

bb.dw:                                            ; preds = %bb.cx
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %i.p) #40
          to label %bb.dc unwind label %bb.cu, !noalias !26112

bb.dx:                                            ; preds = %bb.dc
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderEBM_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.r) #40
          to label %bb.dd unwind label %bb.cu, !noalias !26112

bb.dy:                                            ; preds = %bb.db, %bb.dq, %.invoke.i
  %.sroa.0273.0.copyload274 = load i64, ptr %i.g, align 16, !noalias !26181 ; 3 uses
  %.sroa.8275.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.8275.sroa.0.0.copyload = load ptr, ptr %.sroa.8275.0..sroa_idx276, align 8, !noalias !26181 ; 3 uses
  %.sroa.8275.sroa.6.0..sroa.8275.0..sroa_idx276.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.8275.sroa.6.0.copyload = load ptr, ptr %.sroa.8275.sroa.6.0..sroa.8275.0..sroa_idx276.sroa_idx, align 16, !noalias !26181 ; 3 uses
  %.sroa.8275.sroa.7.0..sroa.8275.0..sroa_idx276.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.8275.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.8275.sroa.7.0..sroa.8275.0..sroa_idx276.sroa_idx, align 8, !noalias !26181
  %.sroa.8275.sroa.7.sroa.6.0..sroa.8275.sroa.7.0..sroa.8275.0..sroa_idx276.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.lh = load <2 x i64>, ptr %.sroa.8275.sroa.7.sroa.6.0..sroa.8275.sroa.7.0..sroa.8275.0..sroa_idx276.sroa_idx.sroa_idx, align 16, !noalias !26181
  %.sroa.8275.sroa.7.sroa.6.sroa.6.sroa.6.0..sroa.8275.sroa.7.sroa.6.sroa.6.0..sroa.8275.sroa.7.sroa.6.0..sroa.8275.sroa.7.0..sroa.8275.0..sroa_idx276.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8275.sroa.7.sroa.6.sroa.6.sroa.6, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.8275.sroa.7.sroa.6.sroa.6.sroa.6.0..sroa.8275.sroa.7.sroa.6.sroa.6.0..sroa.8275.sroa.7.sroa.6.0..sroa.8275.sroa.7.0..sroa.8275.0..sroa_idx276.sroa_idx.sroa_idx.sroa_idx.sroa_idx, i64 48, i1 false), !noalias !26181
  store i8 1, ptr %i.he, align 8, !noalias !26108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.776.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.li = icmp eq i64 %.sroa.0273.0.copyload274, -9223372036854775710
  br i1 %i.li, label %bb.dz, label %bb.ea

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize19MergeTaskParametersEEB1k_.exit196, %bb.ft, %bb.ev, %bb.ei, %bb.dz
  %.sink = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize19MergeTaskParametersEEB1k_.exit196 ], [ 6, %bb.ft ], [ 4, %bb.ev ], [ 5, %bb.ei ], [ 3, %bb.dz ]
  store i8 %.sink, ptr %i.bf, align 1
  ret void

bb.dz:                                            ; preds = %.thread619, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8275.sroa.7.sroa.6.sroa.6.sroa.6)
  store i64 -9223372036854775807, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %common.ret

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8281.sroa.2.sroa.2.sroa.2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8275.sroa.7.sroa.6.sroa.6.sroa.6, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8275.sroa.7.sroa.6.sroa.6.sroa.6)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBO_9MergePlan11read_zorder0EBS_(ptr noundef nonnull align 16 %i.hd)
          to label %bb.ec unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body165

bb.ec:                                            ; preds = %bb.ea
  %.not.i156 = icmp eq i64 %.sroa.0273.0.copyload274, -9223372036854775711
  br i1 %.not.i156, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8275.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8275.sroa.6.0.copyload) ]
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 2000
  store ptr %.sroa.8275.sroa.0.0.copyload, ptr %i.lk, align 16
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 2008
  store ptr %.sroa.8275.sroa.6.0.copyload, ptr %i.ll, align 8
  br label %bb.er

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.28.sroa.10.sroa.9, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8281.sroa.2.sroa.2.sroa.2, i64 48, i1 false)
  %i.lm = ptrtoint ptr %.sroa.8275.sroa.0.0.copyload to i64
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.fm, %bb.fl, %bb.ee
  %.sroa.10385.3 = phi i64 [ %.sroa.0273.0.copyload274, %bb.ee ], [ %.sroa.10385.5, %bb.fl ], [ %.sroa.10385.5, %bb.fm ] ; 2 uses
  %.sroa.18.3 = phi i64 [ %i.lm, %bb.ee ], [ %.sroa.18.5, %bb.fl ], [ %.sroa.18.5, %bb.fm ] ; 2 uses
  %.sroa.24.3 = phi ptr [ %.sroa.8275.sroa.6.0.copyload, %bb.ee ], [ %.sroa.24.5, %bb.fl ], [ %.sroa.24.5, %bb.fm ] ; 2 uses
  %.sroa.26.3 = phi i64 [ %.sroa.8275.sroa.7.sroa.0.0.copyload, %bb.ee ], [ %.sroa.26.5, %bb.fl ], [ %.sroa.26.5, %bb.fm ] ; 2 uses
  %i.ln = phi <2 x i64> [ %i.lh, %bb.ee ], [ %i.nq, %bb.fl ], [ %i.nq, %bb.fm ] ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 3362
  %i.lp = load i8, ptr %i.lo, align 2, !range !34, !noundef !4
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.hm, label %bb.at

.body165:                                         ; preds = %.body154, %bb.eb, %bb.fo, %bb.fn, %bb.gv, %bb.gw, %bb.fp
  %.pn64.pn = phi { ptr, i32 } [ %i.qn, %bb.gw ], [ %.pn62, %bb.fp ], [ %i.nz, %bb.fn ], [ %i.nz, %bb.fo ], [ %i.qn, %bb.gv ], [ %i.lj, %bb.eb ], [ %eh.lpad-body155, %.body154 ] ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 3362
  %i.ls = load i8, ptr %i.lr, align 2, !range !34, !noundef !4
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %bb.id, label %bb.ax

bb.ef:                                            ; preds = %bb.eg
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_(ptr noundef nonnull align 8 %i.lv) #40
          to label %.body158 unwind label %bb.au

bb.eg:                                            ; preds = %bb.d, %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 3416 ; 2 uses
  invoke fastcc void @_RNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB7_15PartitionWriter5write0Bd_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.af, ptr noundef nonnull align 8 %i.lv, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.eh unwind label %bb.ef

bb.eh:                                            ; preds = %bb.eg
  %i.lw = load i64, ptr %i.af, align 16, !range !1238, !noundef !4 ; 3 uses
  %i.lx = icmp eq i64 %i.lw, -9223372036854775710
  br i1 %i.lx, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  store i64 -9223372036854775807, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %common.ret

bb.ej:                                            ; preds = %bb.eh
  %.sroa.3317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.3317.sroa.0.0.copyload = load i64, ptr %.sroa.3317.0..sroa_idx, align 8
  %.sroa.3317.sroa.2.0..sroa.3317.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.3317.sroa.2.0.copyload = load ptr, ptr %.sroa.3317.sroa.2.0..sroa.3317.0..sroa_idx.sroa_idx, align 16
  %.sroa.3317.sroa.3.0..sroa.3317.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.3317.sroa.3.0.copyload = load i64, ptr %.sroa.3317.sroa.3.0..sroa.3317.0..sroa_idx.sroa_idx, align 8
  %.sroa.3317.sroa.4.0..sroa.3317.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ly = load <2 x i64>, ptr %.sroa.3317.sroa.4.0..sroa.3317.0..sroa_idx.sroa_idx, align 16
  %.sroa.3317.sroa.6.0..sroa.3317.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3317.sroa.6, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.3317.sroa.6.0..sroa.3317.0..sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 4144
  %i.ma = load i8, ptr %i.lz, align 16, !range !3169, !noundef !4
  %cond.i = icmp eq i8 %i.ma, 3
  br i1 %cond.i, label %bb.ek, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit

bb.ek:                                            ; preds = %bb.ej
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 3528
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15LazyArrowWriter11write_batch0EBU_(ptr noundef nonnull align 8 %i.mb)
          to label %bb.em unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.mc = landingpad { ptr, i32 }
          cleanup
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 3488
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.md) #40
          to label %.body158 unwind label %bb.en

bb.em:                                            ; preds = %bb.ek
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 3488
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.me)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit unwind label %bb.eo

bb.en:                                            ; preds = %bb.el
  %i.mf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.eo:                                            ; preds = %bb.em
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %.body158

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit: ; preds = %bb.ej, %bb.em
  %.not.i160 = icmp eq i64 %i.lw, -9223372036854775711
  br i1 %.not.i160, label %bb.ep, label %bb.fi

bb.ep:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 3376
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.mh)
          to label %bb.er unwind label %bb.eq

bb.eq:                                            ; preds = %bb.fg, %bb.ep
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.er:                                            ; preds = %bb.ep, %bb.ed
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 2000
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 3376
  store ptr %i.mj, ptr %i.mk, align 16
  br label %bb.et

bb.es:                                            ; preds = %bb.et
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.et:                                            ; preds = %bb.c, %bb.er
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 3376 ; 8 uses
  invoke void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4nextINtB5_4NextINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1c_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.mm, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.eu unwind label %bb.es

bb.eu:                                            ; preds = %bb.et
  %i.mn = load i64, ptr %i.ah, align 8, !range !19020, !noundef !4
  %i.mo = icmp eq i64 %i.mn, -9223372036854775806
  br i1 %i.mo, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store i64 -9223372036854775807, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %common.ret

bb.ew:                                            ; preds = %bb.eu
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 3320 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mp, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false)
  %i.mq = load i64, ptr %i.mp, align 8, !range !1700, !noundef !4 ; 3 uses
  %.not34 = icmp eq i64 %i.mq, -9223372036854775807
  br i1 %.not34, label %bb.fh, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %.sroa.3288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3328
  %.sroa.3288.sroa.0.0.copyload = load i64, ptr %.sroa.3288.0..sroa_idx, align 16 ; 2 uses
  %.sroa.3288.sroa.3.0..sroa.3288.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3336
  %.sroa.3288.sroa.3.0.copyload = load ptr, ptr %.sroa.3288.sroa.3.0..sroa.3288.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3288.sroa.5.0..sroa.3288.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3344
  %i.mr = load <2 x i64>, ptr %.sroa.3288.sroa.5.0..sroa.3288.0..sroa_idx.sroa_idx, align 16 ; 3 uses
  %i.ms = icmp eq i64 %i.mq, -9223372036854775808
  %i.mt = shufflevector <2 x i64> %i.mr, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.mu = extractelement <2 x i64> %i.mr, i64 0
  br i1 %i.ms, label %bb.fj, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  store i64 %i.mq, ptr %i.mm, align 16
  %.sroa.4293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3384 ; 3 uses
  store i64 %.sroa.3288.sroa.0.0.copyload, ptr %.sroa.4293.0..sroa_idx, align 8
  %.sroa.4293.sroa.4.0..sroa.4293.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3392 ; 3 uses
  store ptr %.sroa.3288.sroa.3.0.copyload, ptr %.sroa.4293.sroa.4.0..sroa.4293.0..sroa_idx.sroa_idx, align 16
  %.sroa.4293.sroa.5.0..sroa.4293.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3400 ; 3 uses
  %.sroa.4293.sroa.6.0..sroa.4293.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3408
  store <2 x i64> %i.mr, ptr %.sroa.4293.sroa.5.0..sroa.4293.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %.val120 = load ptr, ptr %i.mv, align 16, !nonnull !4, !noundef !4
  %i.mw = getelementptr inbounds nuw i8, ptr %.val120, i64 336
  %.val126 = load ptr, ptr %i.mw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.mx = atomicrmw add ptr %.val126, i64 1 monotonic, align 8
  %i.my = icmp slt i64 %i.mx, 0
  br i1 %i.my, label %bb.ez, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit162

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit162: ; preds = %bb.ey
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast17cast_record_batch(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.mm, ptr noundef nonnull %.val126, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.fb unwind label %bb.fa

bb.fa:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit162
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %.body158

bb.fb:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit162
  call void @llvm.experimental.noalias.scope.decl(metadata !26182)
  %i.na = load i64, ptr %i.ag, align 16, !range !212, !alias.scope !26185, !noalias !26182, !noundef !4 ; 2 uses
  %.not.i163 = icmp eq i64 %i.na, -9223372036854775711
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.8296.sroa.0.0.copyload455 = load i64, ptr %i.nb, align 8, !alias.scope !26187 ; 3 uses
  %.sroa.8296.sroa.8.0..sroa_idx457 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
end_hunk_2
begin_hunk_3_@_RNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB8_23TokioBackgroundExecutorNtBa_12TaskExecutor8block_onNCNvXs0_NtBc_7parquetINtB2g_21DefaultParquetHandlerB1c_ENtBg_14ParquetHandler18write_parquet_file0E0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %i.f = alloca [248 x i8], align 8               ; 5 uses
  %i.g = alloca [224 x i8], align 8               ; 5 uses
  %i.h = alloca [520 x i8], align 8               ; 10 uses
  %i.i = alloca [224 x i8], align 8               ; 26 uses
  %i.j = alloca [96 x i8], align 16               ; 9 uses
  %.sroa.6.sroa.10.i = alloca [72 x i8], align 8  ; 7 uses
  %i.k = alloca [96 x i8], align 16               ; 7 uses
  %i.l = alloca [112 x i8], align 16              ; 11 uses
  %i.m = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.8.sroa.8.i = alloca [16 x i8], align 8   ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 17 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.325 = alloca [16 x i8], align 8          ; 2 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [112 x i8], align 16              ; 10 uses
  %.sroa.4 = alloca [72 x i8], align 8            ; 2 uses
  %.sroa.12 = alloca [72 x i8], align 8           ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 3 uses
  %i.s = load i8, ptr %i.r, align 16, !range !16574, !noundef !4
  switch i8 %i.s, label %default.unreachable61 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 960
  %.val12.pre = load ptr, ptr %.phi.trans.insert, align 16
  br label %bb.ff

default.unreachable61:                            ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 945
  store i8 1, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 960
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(928) %i.v, ptr noundef nonnull align 16 dereferenceable(928) %i.u, i64 928, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #41
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #41
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3274.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5275.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3256.sroa.2.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3209.sroa.2.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8190.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.10.i)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 5 uses
  %i.y = load i8, ptr %i.x, align 16, !range !16510, !noalias !26317, !noundef !4
  switch i8 %i.y, label %default.unreachable61 [
    i8 0, label %bb.f
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1649 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1654 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1655
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1651
  store i64 65792, ptr %i.z, align 1, !noalias !26317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !26317
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !26317
  %i.ae = invoke { ptr, i64 } @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url4path(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(88) %i.w)
          to label %bb.k unwind label %bb.j, !noalias !26321 ; 2 uses

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !26317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !26317
  br label %bb.au

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !26317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !26317
  br label %bb.bk

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !26317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !26317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26317
  br label %bb.df

bb.j:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ag = extractvalue { ptr, i64 } %i.ae, 0
  %i.ah = extractvalue { ptr, i64 } %i.ae, 1
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path13from_url_pathReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ah)
          to label %bb.m unwind label %bb.l, !noalias !26321

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !26322)
  %i.aj = load i64, ptr %i.m, align 8, !range !21322, !alias.scope !26325, !noalias !26327, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.aj, -9223372036854775802
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.8.sroa.0.0.copyload290.i = load ptr, ptr %i.ak, align 8, !alias.scope !26328, !noalias !26317 ; 2 uses
  %.sroa.8.sroa.8.0..sroa_idx291.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.8.0..sroa_idx291.i, i64 16, i1 false), !alias.scope !26328, !noalias !26317
  br i1 %.not.i.i, label %bb.o, label %bb.ap

bb.n:                                             ; preds = %bb.l, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.af, %bb.j ], [ %i.ai, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.8.i)
  br label %.body127.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !26317
  %.sroa.4293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4293.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.8.i, i64 16, i1 false), !noalias !26317
  store i8 1, ptr %i.z, align 1, !noalias !26317
  store ptr %.sroa.8.sroa.0.0.copyload290.i, ptr %i.n, align 8, !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !26317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !26317
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1048
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %bb.q unwind label %bb.p, !noalias !26321

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !26329)
  %i.an = load i64, ptr %i.k, align 16, !range !1118, !alias.scope !26332, !noalias !26334, !noundef !4
  %.not.i83.i = icmp eq i64 %i.an, -9223372036854775742
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  br i1 %.not.i83.i, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvMNtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB3_5Error7genericReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ao, ptr noalias noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 50)
          to label %bb.u unwind label %bb.t, !noalias !26321

bb.s:                                             ; preds = %bb.t, %bb.p
  %.pn2.i = phi { ptr, i32 } [ %i.ap, %bb.t ], [ %i.am, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !26317
  br label %bb.ao

bb.t:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !26317
  %.sroa.6.sroa.0.0.copyload160.i = load i64, ptr %i.ao, align 16, !alias.scope !26335, !noalias !26317
  %.sroa.6.sroa.8.0..sroa_idx163.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.6.sroa.8.0.copyload164.i = load ptr, ptr %.sroa.6.sroa.8.0..sroa_idx163.i, align 8, !alias.scope !26335, !noalias !26317
  %.sroa.6.sroa.9.0..sroa_idx167.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.6.sroa.9.0.copyload168.i = load ptr, ptr %.sroa.6.sroa.9.0..sroa_idx167.i, align 16, !alias.scope !26335, !noalias !26317
  %.sroa.6.sroa.10.0..sroa_idx170.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.10.0..sroa_idx170.i, i64 72, i1 false), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !26317
  br label %bb.am

bb.v:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ao, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.k, i64 96, i1 false), !alias.scope !26339, !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !26317
  %.sroa.6.sroa.0.0.copyload159.i = load i64, ptr %i.ao, align 16, !alias.scope !26335, !noalias !26317 ; 2 uses
  %.sroa.6.sroa.8.0..sroa_idx161.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.6.sroa.8.0.copyload162.i = load ptr, ptr %.sroa.6.sroa.8.0..sroa_idx161.i, align 8, !alias.scope !26335, !noalias !26317 ; 7 uses
  %.sroa.6.sroa.9.0..sroa_idx165.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.6.sroa.9.0.copyload166.i = load ptr, ptr %.sroa.6.sroa.9.0..sroa_idx165.i, align 16, !alias.scope !26335, !noalias !26317 ; 7 uses
  %.sroa.6.sroa.10.0..sroa_idx169.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.10.0..sroa_idx169.i, i64 72, i1 false), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !26317
  %.not.i85.i = icmp eq i64 %.sroa.6.sroa.0.0.copyload159.i, -9223372036854775743
  br i1 %.not.i85.i, label %bb.w, label %bb.am

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.8.0.copyload162.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.9.0.copyload166.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !26317
  store i8 0, ptr %i.aa, align 8, !noalias !26317
  invoke void @_RNvMs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_dataNtB5_15ArrowEngineData20try_from_engine_data(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.j, ptr noundef nonnull %.sroa.6.sroa.8.0.copyload162.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.6.sroa.9.0.copyload166.i)
          to label %bb.y unwind label %bb.x, !noalias !26321

bb.x:                                             ; preds = %bb.w
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !26317
  br label %bb.al

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !26340)
  %i.ar = load i64, ptr %i.j, align 16, !range !1237, !alias.scope !26343, !noalias !26345, !noundef !4 ; 2 uses
  %.not.i86.i = icmp eq i64 %i.ar, -9223372036854775743
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !26346, !noalias !26317 ; 3 uses
  br i1 %.not.i86.i, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !26317
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store ptr %i.at, ptr %i.au, align 8, !noalias !26317
  store i8 0, ptr %i.ac, align 1, !noalias !26317
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false), !noalias !26321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !26317
  store i8 0, ptr %i.ad, align 1, !noalias !26317
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store i8 0, ptr %i.z, align 1, !noalias !26317
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !26317
  store i64 0, ptr %i.i, align 8, !alias.scope !26347, !noalias !26350
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 -9223372036854775808, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !26347, !noalias !26350
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 -9223372036854775807, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !26347, !noalias !26350
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !26347, !noalias !26350
  %.sroa.6.sroa.5.sroa.0.sroa.4.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.5.sroa.0.sroa.4.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !alias.scope !26347, !noalias !26350
  %.sroa.6.sroa.5.sroa.0.sroa.5.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.6.sroa.5.sroa.0.sroa.6.sroa.4.0..sroa.6.sroa.5.sroa.0.sroa.6.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5.sroa.0.sroa.5.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !26347, !noalias !26350
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.sroa.5.sroa.0.sroa.6.sroa.4.0..sroa.6.sroa.5.sroa.0.sroa.6.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !alias.scope !26347, !noalias !26350
  %.sroa.6.sroa.5.sroa.0.sroa.6.sroa.5.0..sroa.6.sroa.5.sroa.0.sroa.6.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %.sroa.6.sroa.5.sroa.5.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5.sroa.0.sroa.6.sroa.5.0..sroa.6.sroa.5.sroa.0.sroa.6.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !26347, !noalias !26350
  store i64 8192, ptr %.sroa.6.sroa.5.sroa.5.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !alias.scope !26347, !noalias !26350
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.ax = load <2 x ptr>, ptr %i.aw, align 8, !noalias !26317
  store <2 x ptr> %i.ax, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !26347, !noalias !26350
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  store i64 10485760, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !26347, !noalias !26350
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  store i64 8, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !26347, !noalias !26350
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  store ptr null, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !26347, !noalias !26350
  store i8 1, ptr %i.ab, align 2, !noalias !26317
  %i.ay = getelementptr i8, ptr %0, i64 1112
  %.val82.i = load ptr, ptr %i.ay, align 8, !noalias !26317, !nonnull !4, !noundef !4 ; 2 uses
  %i.az = atomicrmw add ptr %.val82.i, i64 1 monotonic, align 8, !noalias !26321
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.aa, label %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.trap()
  unreachable

_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit.i: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !26317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !26317
  store i8 0, ptr %i.ab, align 2, !noalias !26317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 8 dereferenceable(224) %i.i, i64 224, i1 false), !noalias !26317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26317
  store i64 2, ptr %i.f, align 8, !noalias !26317
  invoke void @_RNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtB5_16AsyncArrowWriterNtNtB5_5store19ParquetObjectWriterE7try_newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([520 x i8]) align 8 captures(address) dereferenceable(520) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.g, ptr noundef nonnull %.val82.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(248) %i.f)
          to label %bb.ac unwind label %bb.ab, !noalias !26321

bb.ab:                                            ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !26317
  br label %bb.ag

bb.ac:                                            ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26317
  call void @llvm.experimental.noalias.scope.decl(metadata !26353)
  %i.bc = load i64, ptr %i.h, align 8, !range !48, !alias.scope !26356, !noalias !26358, !noundef !4 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8190.sroa.0.0.copyload305.i = load i64, ptr %i.be, align 8, !alias.scope !26359, !noalias !26317 ; 2 uses
  %.sroa.8190.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.8190.sroa.8.0.copyload307.i = load ptr, ptr %.sroa.8190.sroa.8.0..sroa_idx.i, align 8, !alias.scope !26359, !noalias !26317 ; 2 uses
  %.sroa.8190.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8190.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8190.sroa.9.0..sroa_idx.i, i64 16, i1 false), !noalias !26317
  br i1 %i.bd, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.10192.0..sroa_idx193.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5196.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %.sroa.5196.i, ptr noundef nonnull align 8 dereferenceable(480) %.sroa.10192.0..sroa_idx193.i, i64 480, i1 false), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !26317
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  store i64 %i.bc, ptr %i.bf, align 8, !noalias !26317
  %.sroa.4195.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i64 %.sroa.8190.sroa.0.0.copyload305.i, ptr %.sroa.4195.0..sroa_idx.i, align 16, !noalias !26317
  %.sroa.4195.sroa.4.0..sroa.4195.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store ptr %.sroa.8190.sroa.8.0.copyload307.i, ptr %.sroa.4195.sroa.4.0..sroa.4195.0..sroa_idx.sroa_idx.i, align 8, !noalias !26317
  %.sroa.4195.sroa.5.0..sroa.4195.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4195.sroa.5.0..sroa.4195.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8190.sroa.9.i, i64 16, i1 false), !noalias !26317
  %.sroa.5196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(480) %.sroa.5196.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(480) %.sroa.5196.i, i64 480, i1 false), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5196.i)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1664
  store ptr %i.bf, ptr %i.bg, align 16, !noalias !26317
  %.sroa.8206.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1672
  store ptr %i.av, ptr %.sroa.8206.0..sroa_idx.i, align 8, !noalias !26317
  %.sroa.10207.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1712
  store i8 0, ptr %.sroa.10207.0..sroa_idx.i, align 16, !noalias !26317
  br label %bb.au

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !26317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.30.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8190.sroa.9.i, i64 16, i1 false), !noalias !26317
  br label %bb.af

bb.af:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit116.i, %bb.ae
  %.sroa.0279.0.i = phi i64 [ -9223372036854775778, %bb.ae ], [ %.sroa.0279.5.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit116.i ]
  %.sroa.12280.0.i = phi i64 [ %.sroa.8190.sroa.0.0.copyload305.i, %bb.ae ], [ %.sroa.12280.5.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit116.i ]
  %.sroa.22.0.i = phi ptr [ %.sroa.8190.sroa.8.0.copyload307.i, %bb.ae ], [ %.sroa.22.5.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit116.i ]
  %.sroa.13.1.i = phi ptr [ %.sroa.6.sroa.9.0.copyload166.i, %bb.ae ], [ %.sroa.13.6.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit116.i ]
  %.sroa.0146.1.i = phi ptr [ %.sroa.6.sroa.8.0.copyload162.i, %bb.ae ], [ %.sroa.0146.6.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit116.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1654
  store i8 0, ptr %i.bh, align 2, !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !26317
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1088
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.bi)
          to label %bb.dw unwind label %bb.dq, !noalias !26321

bb.ag:                                            ; preds = %bb.do, %.body108.i, %bb.ab
  %.sroa.13.2.i = phi ptr [ %.sroa.13.14.i, %bb.do ], [ %.sroa.13.7.i, %.body108.i ], [ %.sroa.6.sroa.9.0.copyload166.i, %bb.ab ]
  %.sroa.0146.2.i = phi ptr [ %.sroa.0146.14.i, %bb.do ], [ %.sroa.0146.7.i, %.body108.i ], [ %.sroa.6.sroa.8.0.copyload162.i, %bb.ab ]
  %.pn42.pn.i = phi { ptr, i32 } [ %i.hd, %bb.do ], [ %.pn39.pn.i, %.body108.i ], [ %i.bb, %bb.ab ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1654 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 2, !range !34, !noalias !26317, !noundef !4
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.en, label %bb.ah

bb.ah:                                            ; preds = %bb.en, %bb.ag
  store i8 0, ptr %i.bj, align 2, !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !26317
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1088
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.bm) #40
          to label %bb.ai unwind label %bb.bj, !noalias !26321

bb.ai:                                            ; preds = %bb.dq, %bb.ah
  %.sroa.13.3.i = phi ptr [ %.sroa.13.15.i, %bb.dq ], [ %.sroa.13.2.i, %bb.ah ]
  %.sroa.0146.3.i = phi ptr [ %.sroa.0146.15.i, %bb.dq ], [ %.sroa.0146.2.i, %bb.ah ]
  %.pn46.i = phi { ptr, i32 } [ %i.hg, %bb.dq ], [ %.pn42.pn.i, %bb.ah ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1655
  %i.bp = load i8, ptr %i.bo, align 1, !range !34, !noalias !26317, !noundef !4
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.eo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit139.i

bb.aj:                                            ; preds = %bb.y
  %.sroa.10183.0..sroa_idx184.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.10183.sroa.0.0.copyload.i = load ptr, ptr %.sroa.10183.0..sroa_idx184.i, align 16, !alias.scope !26360, !noalias !26317
  %.sroa.10183.sroa.6.0..sroa.10183.0..sroa_idx184.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.30.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10183.sroa.6.0..sroa.10183.0..sroa_idx184.sroa_idx.i, i64 72, i1 false), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !26317
  %i.br = ptrtoint ptr %i.at to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.dw, %bb.aj
  %.sroa.0279.1.i = phi i64 [ %.sroa.0279.0.i, %bb.dw ], [ %i.ar, %bb.aj ]
  %.sroa.12280.1.i = phi i64 [ %.sroa.12280.0.i, %bb.dw ], [ %i.br, %bb.aj ]
  %.sroa.22.1.i = phi ptr [ %.sroa.22.0.i, %bb.dw ], [ %.sroa.10183.sroa.0.0.copyload.i, %bb.aj ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1655
  store i8 0, ptr %i.bs, align 1, !noalias !26317
  br label %bb.an

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit139.i, %bb.x
  %.sroa.13.4.i = phi ptr [ %.sroa.13.3.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit139.i ], [ %.sroa.6.sroa.9.0.copyload166.i, %bb.x ] ; 2 uses
  %.sroa.0146.4.i = phi ptr [ %.sroa.0146.3.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit139.i ], [ %.sroa.6.sroa.8.0.copyload162.i, %bb.x ]
  %.pn48.pn.i = phi { ptr, i32 } [ %.pn46.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit139.i ], [ %i.aq, %bb.x ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1655
  store i8 0, ptr %i.bt, align 1, !noalias !26317
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.bv = load i8, ptr %i.bu, align 8, !range !34, !noalias !26317, !noundef !4
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.ep, label %bb.ao

bb.am:                                            ; preds = %bb.v, %bb.u
  %.sroa.6.sroa.9.0321.i = phi ptr [ %.sroa.6.sroa.9.0.copyload168.i, %bb.u ], [ %.sroa.6.sroa.9.0.copyload166.i, %bb.v ]
  %.sroa.0279.2.i = phi i64 [ %.sroa.6.sroa.0.0.copyload160.i, %bb.u ], [ %.sroa.6.sroa.0.0.copyload159.i, %bb.v ]
end_hunk_3
begin_hunk_4_@_RNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB8_23TokioBackgroundExecutorNtBa_12TaskExecutor8block_onNCNvXs0_NtBc_7parquetINtB2g_21DefaultParquetHandlerB1c_ENtBg_14ParquetHandler18write_parquet_file0E0Cs14kWLkQVSKO_14deltalake_core:bb.a

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !26317
  br label %.thread

bb.bo:                                            ; preds = %bb.bm
  %.sroa.3256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3256.sroa.0.0.copyload.i = load ptr, ptr %.sroa.3256.0..sroa_idx.i, align 8, !noalias !26317
  %.sroa.3256.sroa.2.0..sroa.3256.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3256.sroa.2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3256.sroa.2.0..sroa.3256.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26317
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.dt = load i8, ptr %i.ds, align 16, !range !3169, !noalias !26317, !noundef !4
  %cond.i93.i = icmp eq i8 %i.dt, 3
  br i1 %cond.i93.i, label %bb.bp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit101.i

bb.bp:                                            ; preds = %bb.bo
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1752
  %i.dv = load i8, ptr %i.du, align 8, !range !3169, !noalias !26317, !noundef !4
  %cond.i.i94.i = icmp eq i8 %i.dv, 3
  br i1 %cond.i.i94.i, label %bb.bq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit101.i

bb.bq:                                            ; preds = %bb.bp
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %.val.i.i95.i = load ptr, ptr %i.dw, align 8, !noalias !26317 ; 5 uses
  %i.dx = getelementptr i8, ptr %0, i64 1744
  %.val1.i.i96.i = load ptr, ptr %i.dx, align 16, !noalias !26317, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.dy = load ptr, ptr %.val1.i.i96.i, align 8, !invariant.load !4, !noalias !26321 ; 2 uses
  %.not.i.i.i.i97.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i97.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i95.i) ]
  invoke void %i.dy(ptr noundef nonnull %.val.i.i95.i)
          to label %bb.bs unwind label %bb.bu, !noalias !26321

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.dz = getelementptr inbounds nuw i8, ptr %.val1.i.i96.i, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !range !1123, !invariant.load !4, !noalias !26321 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit101.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ec = getelementptr inbounds nuw i8, ptr %.val1.i.i96.i, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !range !947, !invariant.load !4, !noalias !26321
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i95.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i95.i, i64 noundef range(i64 1, 0) %i.ea, i64 noundef range(i64 1, 536870913) %i.ed) #33, !noalias !26321
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit101.i

bb.bu:                                            ; preds = %bb.br
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.val1.i.i96.i, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !range !1123, !invariant.load !4, !noalias !26321 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %.body99.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ei = getelementptr inbounds nuw i8, ptr %.val1.i.i96.i, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !range !947, !invariant.load !4, !noalias !26321
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i95.i, i64 noundef range(i64 1, 0) %i.eg, i64 noundef range(i64 1, 536870913) %i.ej) #33, !noalias !26321
  br label %.body99.i

.body99.i:                                        ; preds = %bb.bv, %bb.bu, %bb.bl
  %.pn29.i = phi { ptr, i32 } [ %i.ee, %bb.bv ], [ %i.dp, %bb.bl ], [ %i.ee, %bb.bu ]
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1672
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.ek) #40
          to label %bb.bx unwind label %bb.bj, !noalias !26321

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit101.i: ; preds = %bb.bt, %bb.bs, %bb.bp, %bb.bo
  %.not.i102.i = icmp eq i64 %i.dq, 8
  br i1 %.not.i102.i, label %bb.bw, label %bb.db

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit101.i
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1672
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.el)
          to label %bb.ca unwind label %bb.by, !noalias !26321

bb.bx:                                            ; preds = %bb.by, %.body99.i
  %.pn31.i = phi { ptr, i32 } [ %i.eq, %bb.by ], [ %.pn29.i, %.body99.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1652
  %i.eo = load i8, ptr %i.en, align 4, !range !34, !noalias !26317, !noundef !4
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.dd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i

bb.by:                                            ; preds = %bb.db, %bb.bw
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.co
  %.sroa.0222.1.i = phi ptr [ %.sroa.0222.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.3214.0.copyload.i, %bb.co ]
  %.sroa.9223.1.i = phi ptr [ %.sroa.9223.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.4217.0.copyload.i, %bb.co ] ; 2 uses
  %.sroa.13.9.i = phi ptr [ %.sroa.13.8.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.13.5.i, %bb.co ]
  %.sroa.0146.9.i = phi ptr [ %.sroa.0146.8.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.0146.5.i, %bb.co ]
  %.pn33.pn.i = phi { ptr, i32 } [ %.pn31.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.fs, %bb.co ]
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1652
  store i8 0, ptr %i.er, align 4, !noalias !26317
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 1653 ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !range !34, !noalias !26317, !noundef !4
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.de, label %bb.da

bb.ca:                                            ; preds = %bb.bw
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %.val81.i = load ptr, ptr %i.ev, align 16, !noalias !26317, !nonnull !4, !noundef !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val81.i, i64 noundef 40, i64 noundef 8) #33, !noalias !26321
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1652
  store i8 0, ptr %i.ew, align 4, !noalias !26317
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 1653
  store i8 0, ptr %i.ex, align 1, !noalias !26317
  br label %bb.bh

bb.cb:                                            ; preds = %bb.da, %bb.cc
  %.sroa.13.10.i = phi ptr [ %.sroa.13.9.i, %bb.da ], [ %.sroa.13.5.i, %bb.cc ]
  %.sroa.0146.10.i = phi ptr [ %.sroa.0146.9.i, %bb.da ], [ %.sroa.0146.5.i, %bb.cc ]
  %.pn36.pn.i = phi { ptr, i32 } [ %.pn33.pn.i, %bb.da ], [ %i.fa, %bb.cc ]
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %.val70.i = load ptr, ptr %i.ey, align 8, !noalias !26317
  %i.ez = getelementptr i8, ptr %0, i64 1776
  %.val71.i = load ptr, ptr %i.ez, align 16, !noalias !26317, !nonnull !4, !align !17, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val70.i, ptr nonnull %.val71.i) #40
          to label %.body108.i unwind label %bb.bj, !noalias !26321

bb.cc:                                            ; preds = %bb.bh
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cd:                                            ; preds = %bb.bh
  %i.fb = load i64, ptr %i.dk, align 16, !range !1118, !noalias !26317, !noundef !4 ; 3 uses
  %.not15.i = icmp eq i64 %i.fb, -9223372036854775742
  br i1 %.not15.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.sroa.3214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %.sroa.3214.0.copyload.i = load ptr, ptr %.sroa.3214.0..sroa_idx.i, align 8, !noalias !26317 ; 5 uses
  %.sroa.4217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %.sroa.4217.0.copyload.i = load ptr, ptr %.sroa.4217.0..sroa_idx.i, align 16, !noalias !26317 ; 5 uses
  %.not.i105.i = icmp eq i64 %i.fb, -9223372036854775743
  br i1 %.not.i105.i, label %bb.cn, label %bb.ct

bb.cf:                                            ; preds = %bb.cd
  %.val68.i = load ptr, ptr %i.dj, align 8, !noalias !26317 ; 5 uses
  %i.fc = getelementptr i8, ptr %0, i64 1776
  %.val69.i = load ptr, ptr %i.fc, align 16, !noalias !26317, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.fd = load ptr, ptr %.val69.i, align 8, !invariant.load !4, !noalias !26321 ; 2 uses
  %.not.i107.i = icmp eq ptr %i.fd, null
  br i1 %.not.i107.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68.i) ]
  invoke void %i.fd(ptr noundef nonnull %.val68.i)
          to label %bb.ch unwind label %bb.cj, !noalias !26321

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.fe = getelementptr inbounds nuw i8, ptr %.val69.i, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !range !1123, !invariant.load !4, !noalias !26321 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fh = getelementptr inbounds nuw i8, ptr %.val69.i, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !range !947, !invariant.load !4, !noalias !26321
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val68.i, i64 noundef range(i64 1, 0) %i.ff, i64 noundef range(i64 1, 536870913) %i.fi) #33, !noalias !26321
  br label %bb.cl

bb.cj:                                            ; preds = %bb.cg
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val69.i, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !range !1123, !invariant.load !4, !noalias !26321 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %.body108.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.fn = getelementptr inbounds nuw i8, ptr %.val69.i, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !range !947, !invariant.load !4, !noalias !26321
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val68.i, i64 noundef range(i64 1, 0) %i.fl, i64 noundef range(i64 1, 536870913) %i.fo) #33, !noalias !26321
  br label %.body108.i

bb.cl:                                            ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26317
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1664
  store ptr %i.fp, ptr %i.fq, align 16, !noalias !26317
  %.sroa.9271.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1848
  store i8 0, ptr %.sroa.9271.0..sroa_idx.i, align 8, !noalias !26317
  br label %bb.df

bb.cm:                                            ; preds = %bb.dk, %bb.dg
  %.pn20.i = phi { ptr, i32 } [ %i.ha, %bb.dk ], [ %i.gx, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26317
  br label %.body108.i

bb.cn:                                            ; preds = %bb.ce
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3214.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4217.0.copyload.i) ]
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26317
  store i8 0, ptr %i.fr, align 1, !noalias !26317
  invoke void @_RNvMs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_dataNtB5_15ArrowEngineData20try_from_engine_data(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.d, ptr noundef nonnull %.sroa.3214.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.4217.0.copyload.i)
          to label %bb.cp unwind label %bb.co, !noalias !26321

bb.co:                                            ; preds = %bb.cn
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26317
  br label %bb.bz

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.experimental.noalias.scope.decl(metadata !26361)
  %i.ft = load i64, ptr %i.d, align 16, !range !1237, !alias.scope !26364, !noalias !26366, !noundef !4 ; 2 uses
  %.not.i110.i = icmp eq i64 %i.ft, -9223372036854775743
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !26367, !noalias !26317 ; 3 uses
  br i1 %.not.i110.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26317
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1652
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 1664
  store ptr %i.fv, ptr %i.fx, align 16, !noalias !26317
  store i8 0, ptr %i.fw, align 4, !noalias !26317
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fy, ptr noundef nonnull align 8 dereferenceable(40) %i.fv, i64 40, i1 false), !noalias !26321
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1712
  store ptr %i.fz, ptr %i.ga, align 16, !noalias !26317
  %.sroa.8251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1720
  store ptr %i.fy, ptr %.sroa.8251.0..sroa_idx.i, align 8, !noalias !26317
  %.sroa.10253.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1760
  store i8 0, ptr %.sroa.10253.0..sroa_idx.i, align 16, !noalias !26317
  br label %bb.bk

bb.cr:                                            ; preds = %bb.cp
  %.sroa.10236.0..sroa_idx237.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.10236.sroa.0.0.copyload.i = load ptr, ptr %.sroa.10236.0..sroa_idx237.i, align 16, !alias.scope !26368, !noalias !26317
  %.sroa.10236.sroa.6.0..sroa.10236.0..sroa_idx237.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.30.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10236.sroa.6.0..sroa.10236.0..sroa_idx237.sroa_idx.i, i64 72, i1 false), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26317
  %i.gb = ptrtoint ptr %i.fv to i64
  br label %bb.cs

bb.cs:                                            ; preds = %bb.dc, %bb.cr
  %.sroa.0279.6.i = phi i64 [ -9223372036854775778, %bb.dc ], [ %i.ft, %bb.cr ]
  %.sroa.12280.6.i = phi i64 [ %i.dq, %bb.dc ], [ %i.gb, %bb.cr ]
  %.sroa.22.6.i = phi ptr [ %.sroa.3256.sroa.0.0.copyload.i, %bb.dc ], [ %.sroa.10236.sroa.0.0.copyload.i, %bb.cr ]
  %.sroa.13.12.i = phi ptr [ %.sroa.13.8.i, %bb.dc ], [ %.sroa.13.5.i, %bb.cr ]
  %.sroa.0146.12.i = phi ptr [ %.sroa.0146.8.i, %bb.dc ], [ %.sroa.0146.5.i, %bb.cr ]
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1652
  store i8 0, ptr %i.gc, align 4, !noalias !26317
  br label %bb.cu

bb.ct:                                            ; preds = %bb.ce
  %.sroa.5220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.30.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5220.0..sroa_idx.i, i64 72, i1 false), !noalias !26317
  %i.gd = ptrtoint ptr %.sroa.3214.0.copyload.i to i64
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.sroa.0279.7.i = phi i64 [ %.sroa.0279.6.i, %bb.cs ], [ %i.fb, %bb.ct ] ; 2 uses
  %.sroa.12280.7.i = phi i64 [ %.sroa.12280.6.i, %bb.cs ], [ %i.gd, %bb.ct ] ; 2 uses
  %.sroa.22.7.i = phi ptr [ %.sroa.22.6.i, %bb.cs ], [ %.sroa.4217.0.copyload.i, %bb.ct ] ; 2 uses
  %.sroa.13.13.i = phi ptr [ %.sroa.13.12.i, %bb.cs ], [ %.sroa.13.5.i, %bb.ct ] ; 4 uses
  %.sroa.0146.13.i = phi ptr [ %.sroa.0146.12.i, %bb.cs ], [ %.sroa.0146.5.i, %bb.ct ] ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1653
  store i8 0, ptr %i.ge, align 1, !noalias !26317
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %.val66.i = load ptr, ptr %i.gf, align 8, !noalias !26317 ; 5 uses
  %i.gg = getelementptr i8, ptr %0, i64 1776
  %.val67.i = load ptr, ptr %i.gg, align 16, !noalias !26317, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.gh = load ptr, ptr %.val67.i, align 8, !invariant.load !4, !noalias !26321 ; 2 uses
  %.not.i112.i = icmp eq ptr %i.gh, null
  br i1 %.not.i112.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val66.i) ]
  invoke void %i.gh(ptr noundef nonnull %.val66.i)
          to label %bb.cw unwind label %bb.cy, !noalias !26321

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.gi = getelementptr inbounds nuw i8, ptr %.val67.i, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !range !1123, !invariant.load !4, !noalias !26321 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit116.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.gl = getelementptr inbounds nuw i8, ptr %.val67.i, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !range !947, !invariant.load !4, !noalias !26321
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val66.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66.i, i64 noundef range(i64 1, 0) %i.gj, i64 noundef range(i64 1, 536870913) %i.gm) #33, !noalias !26321
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit116.i

bb.cy:                                            ; preds = %bb.cv
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.val67.i, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !range !1123, !invariant.load !4, !noalias !26321 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %.body108.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.gr = getelementptr inbounds nuw i8, ptr %.val67.i, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !range !947, !invariant.load !4, !noalias !26321
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66.i, i64 noundef range(i64 1, 0) %i.gp, i64 noundef range(i64 1, 536870913) %i.gs) #33, !noalias !26321
  br label %.body108.i

bb.da:                                            ; preds = %bb.de, %bb.bz
  store i8 0, ptr %i.es, align 1, !noalias !26317
  br label %bb.cb

bb.db:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit101.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.30.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3256.sroa.2.i, i64 16, i1 false), !noalias !26317
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1672
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.gt)
          to label %bb.dc unwind label %bb.by, !noalias !26321

bb.dc:                                            ; preds = %bb.db
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %.val80.i = load ptr, ptr %i.gu, align 16, !noalias !26317, !nonnull !4, !noundef !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val80.i, i64 noundef 40, i64 noundef 8) #33, !noalias !26321
  br label %bb.cs

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.dd, %bb.bx
  %.val79.i = load ptr, ptr %i.em, align 16, !noalias !26317, !nonnull !4, !noundef !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val79.i, i64 noundef 40, i64 noundef 8) #33, !noalias !26321
  br label %bb.bz

bb.dd:                                            ; preds = %bb.bx
  %i.gv = load ptr, ptr %i.em, align 16, !noalias !26317, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bj, !noalias !26321

bb.de:                                            ; preds = %bb.bz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9223.1.i) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.sroa.0222.1.i, ptr nonnull %.sroa.9223.1.i) #40
          to label %bb.da unwind label %bb.bj, !noalias !26321

bb.df:                                            ; preds = %bb.cl, %bb.i
  %.sroa.13.11.i = phi ptr [ %.sroa.13.5.i, %bb.cl ], [ undef, %bb.i ] ; 4 uses
  %.sroa.0146.11.i = phi ptr [ %.sroa.0146.5.i, %bb.cl ], [ undef, %bb.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26317
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  invoke fastcc void @_RNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtB7_16AsyncArrowWriterNtNtB7_5store19ParquetObjectWriterE6finish0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.a, ptr noundef nonnull align 8 %i.gw, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.dh unwind label %bb.dg, !noalias !26321

bb.dg:                                            ; preds = %bb.df
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26317
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE6finish0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.gw) #40
          to label %bb.cm unwind label %bb.bj, !noalias !26321

bb.dh:                                            ; preds = %bb.df
  %i.gy = load i64, ptr %i.a, align 8, !range !1700, !noalias !26317, !noundef !4 ; 3 uses
  %i.gz = icmp eq i64 %i.gy, -9223372036854775807
  br i1 %i.gz, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26317
  br label %.thread

bb.dj:                                            ; preds = %bb.dh
  %.sroa.3274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3274.sroa.0.0.copyload.i = load i64, ptr %.sroa.3274.0..sroa_idx.i, align 8, !noalias !26317 ; 2 uses
  %.sroa.3274.sroa.3.0..sroa.3274.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3274.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3274.sroa.3.0..sroa.3274.0..sroa_idx.sroa_idx.i, align 8, !noalias !26317 ; 2 uses
  %.sroa.3274.sroa.5.0..sroa.3274.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3274.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3274.sroa.5.0..sroa.3274.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !26317
  %.sroa.5275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5275.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5275.0..sroa_idx.i, i64 128, i1 false), !noalias !26317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26317
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE6finish0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.gw)
          to label %bb.dl unwind label %bb.dk, !noalias !26321

bb.dk:                                            ; preds = %bb.dm, %bb.dj
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.dl:                                            ; preds = %bb.dj
  %i.hb = icmp eq i64 %i.gy, -9223372036854775808
  br i1 %i.hb, label %bb.dv, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %.sroa.5278.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5278.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5275.i, i64 128, i1 false), !noalias !26317
  %.sroa.4277.sroa.5.0..sroa.4277.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4277.sroa.5.0..sroa.4277.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3274.sroa.5.i, i64 16, i1 false), !noalias !26317
  store i64 %i.gy, ptr %i.b, align 8, !noalias !26317
  %.sroa.4277.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.3274.sroa.0.0.copyload.i, ptr %.sroa.4277.0..sroa_idx.i, align 8, !noalias !26317
  %.sroa.4277.sroa.4.0..sroa.4277.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.3274.sroa.3.0.copyload.i, ptr %.sroa.4277.sroa.4.0..sroa.4277.0..sroa_idx.sroa_idx.i, align 8, !noalias !26317
end_hunk_4
begin_hunk_5_@_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0Bb_:bb.a
  unreachable

bb.di:                                            ; preds = %bb.dh
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj4_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 6)
          to label %bb.dl unwind label %bb.dk

bb.dj:                                            ; preds = %bb.dm, %bb.dk
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %bb.dm ], [ %i.hf, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hc, i64 noundef 448, i64 noundef 16) #33
  br label %bb.gt

bb.dk:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj4_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.dl:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj4_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.ad, ptr noalias noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 6)
          to label %bb.do unwind label %bb.dn

bb.dm:                                            ; preds = %bb.dp, %bb.dn
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %bb.dp ], [ %i.hg, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ae) #40
          to label %bb.dj unwind label %bb.ft

bb.dn:                                            ; preds = %bb.dl
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.do:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.ac, ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 15)
          to label %bb.dr unwind label %bb.dq

bb.dp:                                            ; preds = %bb.ds, %bb.dq
  %.pn39 = phi { ptr, i32 } [ %i.hi, %bb.ds ], [ %i.hh, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ad) #40
          to label %bb.dm unwind label %bb.ft

bb.dq:                                            ; preds = %bb.do
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dr:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 16)
          to label %bb.dt unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ac) #40
          to label %bb.dp unwind label %bb.ft

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.hc, ptr noundef nonnull align 16 dereferenceable(112) %i.ae, i64 112, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.hj, ptr noundef nonnull align 16 dereferenceable(112) %i.ad, i64 112, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hc, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.hk, ptr noundef nonnull align 16 dereferenceable(112) %i.ac, i64 112, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hc, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.hl, ptr noundef nonnull align 16 dereferenceable(112) %i.ab, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  store i64 4, ptr %i.af, align 8, !alias.scope !26801, !noalias !26804
  %i.hm = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.hc, ptr %i.hm, align 8, !alias.scope !26801, !noalias !26804
  %i.hn = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 4, ptr %i.hn, align 8, !alias.scope !26801, !noalias !26804
  invoke void @_RNvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4Expr7in_list(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ah, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.ag, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.af, i1 noundef zeroext false)
          to label %bb.dv unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.gv

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke void @_RNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5_9DataFrame6filter(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.aj, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.ai, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.ah)
          to label %bb.dx unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.gu

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.hq = load i64, ptr %i.aj, align 16, !range !18805, !alias.scope !26806, !noalias !26809, !noundef !4 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 36
  %i.hs = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8308, ptr noundef nonnull align 8 dereferenceable(40) %i.hs, i64 40, i1 false)
  br i1 %i.hr, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8308, i64 40, i1 false)
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.f)
          to label %bb.gs unwind label %bb.gr

bb.dz:                                            ; preds = %bb.dx
  %.sroa.10310.0..sroa_idx311 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5316)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5316, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.10310.0..sroa_idx311, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 874
  store i8 1, ptr %i.ht, align 2
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 448
  store i64 %i.hq, ptr %i.hu, align 16
  %.sroa.4315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4315.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8308, i64 40, i1 false)
  %.sroa.5316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5316.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5316, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5316)
  store i8 0, ptr %i.ha, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.dv, ptr noundef nonnull align 16 dereferenceable(336) %i.as, i64 336, i1 false)
  %.sroa.8329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2616
  store i8 0, ptr %.sroa.8329.0..sroa_idx, align 8
  br label %bb.eb

bb.ea:                                            ; preds = %bb.eb
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame14execute_stream0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.hw) #40
          to label %.body149 unwind label %bb.ft

bb.eb:                                            ; preds = %bb.c, %bb.dz
  %.sroa.3.2 = phi i64 [ %.sroa.3.1, %bb.dz ], [ undef, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 3 uses
  invoke fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame14execute_stream0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.aa, ptr noundef nonnull align 16 %i.hw, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.ec unwind label %bb.ea

bb.ec:                                            ; preds = %bb.eb
  %i.hx = load i64, ptr %i.aa, align 8, !range !2144, !noundef !4 ; 3 uses
  %i.hy = icmp eq i64 %i.hx, 21
  br i1 %i.hy, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %common.ret

bb.ee:                                            ; preds = %bb.ec
  %.sroa.3331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.3331.0.copyload = load ptr, ptr %.sroa.3331.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.5332.0.copyload = load ptr, ptr %.sroa.5332.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7333, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7333.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame14execute_stream0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.hw)
          to label %bb.eg unwind label %bb.ef

bb.ef:                                            ; preds = %bb.eh, %bb.ee
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %.body149

bb.eg:                                            ; preds = %bb.ee
  %.not.i182 = icmp eq i64 %i.hx, 20
  br i1 %.not.i182, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %.sroa.4337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4337.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7333, i64 16, i1 false)
  store i64 %i.hx, ptr %i.e, align 8, !noalias !26811
  %.sroa.2335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.3331.0.copyload, ptr %.sroa.2335.0..sroa_idx, align 8, !noalias !26811
  %.sroa.3336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.5332.0.copyload, ptr %.sroa.3336.0..sroa_idx, align 8, !noalias !26811
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %bb.gq unwind label %bb.ef

bb.ei:                                            ; preds = %bb.eg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3331.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5332.0.copyload) ]
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 784
  store ptr %.sroa.3331.0.copyload, ptr %i.ia, align 16
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 792
  store ptr %.sroa.5332.0.copyload, ptr %i.ib, align 8
  br label %bb.ej

bb.ej:                                            ; preds = %bb.fq, %bb.ei
  %.sroa.3.9 = phi i64 [ %.sroa.3.2, %bb.ei ], [ %.sroa.3.4, %bb.fq ]
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 880
  store ptr %i.ic, ptr %i.id, align 16
  br label %bb.el

bb.ek:                                            ; preds = %bb.el
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.body145

bb.el:                                            ; preds = %bb.d, %bb.ej
  %.sroa.3.3 = phi i64 [ %.sroa.3.9, %bb.ej ], [ undef, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 4 uses
  invoke void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream8try_nextINtB5_7TryNextINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB1o_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1o_6marker4SendEL_EEENtNtNtB1o_6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.if, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.em unwind label %bb.ek

bb.em:                                            ; preds = %bb.el
  %i.ig = load i64, ptr %i.z, align 8, !range !48, !noundef !4 ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 2
  br i1 %i.ih, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %common.ret

bb.eo:                                            ; preds = %bb.em
  %.sroa.2339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2339, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2339.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 2 uses
  %i.ij = trunc nuw i64 %i.ig to i1
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ik, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2339, i64 40, i1 false)
  br i1 %i.ij, label %bb.eq, label %bb.er

bb.ep:                                            ; preds = %bb.eq
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body145

bb.eq:                                            ; preds = %bb.eo
  store i64 1, ptr %i.ii, align 16, !alias.scope !26814, !noalias !26817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2339, i64 40, i1 false)
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualBP_.exit188 unwind label %bb.ep

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualBP_.exit188: ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit231

bb.er:                                            ; preds = %bb.eo
  store i64 0, ptr %i.ii, align 16, !alias.scope !26814, !noalias !26817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.if, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2339, i64 40, i1 false)
  %i.im = load i64, ptr %i.if, align 16, !range !201, !noundef !4
  %.not54 = icmp eq i64 %i.im, -9223372036854775808
  br i1 %.not54, label %bb.ga, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 873 ; 2 uses
  store i8 1, ptr %i.in, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 920 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.io, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2339, i64 40, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 944
  %.val138 = load ptr, ptr %i.ip, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.val138, i64 16
  %.val139 = load ptr, ptr %i.iq, align 8, !nonnull !4, !noundef !4
  %i.ir = getelementptr i8, ptr %.val138, i64 24
  %.val140 = load i64, ptr %i.ir, align 8, !noundef !4 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.val139, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %.val140, 3
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %.idx
  %.not548549 = icmp eq i64 %.val140, 0
  br i1 %.not548549, label %.thread510, label %.lr.ph

.thread510:                                       ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.es
  %.not548.lcssa = phi i1 [ true, %bb.es ], [ true, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ false, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.3.10 = phi i64 [ %.sroa.3.3, %bb.es ], [ %.sroa.3.3, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.8348.0551, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10359)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericReEB8_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 64)
          to label %bb.eu unwind label %bb.et

.lr.ph:                                           ; preds = %bb.es, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.8348.0551 = phi i64 [ %i.iv, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ 0, %bb.es ] ; 2 uses
  %.sroa.0346.0550 = phi ptr [ %i.iu, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.is, %bb.es ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0346.0550, i64 8 ; 2 uses
  %i.iv = add nuw nsw i64 %.sroa.8348.0551, 1
  %.val141 = load ptr, ptr %.sroa.0346.0550, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.iw = getelementptr i8, ptr %.val141, i64 32
  %.val1.i = load i64, ptr %i.iw, align 8, !noundef !4
  %i.ix = icmp eq i64 %.val1.i, 12
  br i1 %i.ix, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph
  %i.iy = getelementptr i8, ptr %.val141, i64 24
  %.val.i = load ptr, ptr %i.iy, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.iz = load i64, ptr %.val.i, align 1
  %i.ja = xor i64 %i.iz, 6874014130029224799
  %i.jb = getelementptr i8, ptr %.val.i, i64 8
  %i.jc = load i32, ptr %i.jb, align 1
  %i.jd = zext i32 %i.jc to i64
  %i.je = xor i64 %i.jd, 1701869940
  %i.jf = or i64 %i.ja, %i.je
  %i.jg = icmp ne i64 %i.jf, 0
  %i.jh = zext i1 %i.jg to i32
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %.thread510, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %.lr.ph, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit
  %.not548 = icmp eq ptr %i.iu, %i.it
  br i1 %.not548, label %.thread510, label %.lr.ph

bb.et:                                            ; preds = %bb.ev, %.thread510
  %i.jj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10359)
  br label %bb.fa

bb.eu:                                            ; preds = %.thread510
  br i1 %.not548.lcssa, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.x)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit.thread unwind label %bb.et

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit.thread: ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ew

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit: ; preds = %bb.eu
  %.sroa.0357.0.copyload = load i64, ptr %i.x, align 16, !alias.scope !26819 ; 2 uses
  %.sroa.7358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.7358.0.copyload = load i64, ptr %.sroa.7358.0..sroa_idx, align 8, !alias.scope !26819 ; 2 uses
  %.sroa.10359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.10359, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.10359.0..sroa_idx, i64 80, i1 false), !alias.scope !26819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.not.i190 = icmp eq i64 %.sroa.0357.0.copyload, -9223372036854775711
  br i1 %.not.i190, label %bb.ew, label %bb.fu

bb.ew:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit.thread, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit
  %.sroa.7358.0520.ph = phi i64 [ %.sroa.7358.0.copyload, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit ], [ %.sroa.3.10, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10359)
  %i.jk = invoke { ptr, ptr } @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch13remove_column(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.io, i64 noundef %.sroa.7358.0520.ph)
          to label %bb.ey unwind label %bb.ex     ; 2 uses

bb.ex:                                            ; preds = %bb.ew
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ey:                                            ; preds = %bb.ew
  %i.jm = extractvalue { ptr, ptr } %i.jk, 0      ; 2 uses
  %i.jn = extractvalue { ptr, ptr } %i.jk, 1
  store ptr %i.jm, ptr %i.y, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.jn, ptr %i.jo, align 8
  %i.jp = atomicrmw sub ptr %i.jm, i64 1 release, align 8, !noalias !26823
  %i.jq = icmp eq i64 %i.jp, 1
  br i1 %i.jq, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %bb.ey
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y) #42
          to label %bb.fc unwind label %bb.fb

bb.fa:                                            ; preds = %bb.fb, %bb.ex, %bb.et
  %.pn86 = phi { ptr, i32 } [ %i.jl, %bb.ex ], [ %i.jr, %bb.fb ], [ %i.jj, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %.body197

bb.fb:                                            ; preds = %bb.ez
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.fc:                                            ; preds = %bb.ey, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 816
  store i8 0, ptr %i.in, align 1
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 1008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.jt, ptr noundef nonnull align 8 dereferenceable(40) %i.io, i64 40, i1 false)
  %.sroa.8378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store ptr %i.js, ptr %.sroa.8378.0..sroa_idx, align 8
  %.sroa.10380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1224
end_hunk_5
begin_hunk_6_@_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0Bb_:bb.a
bb.fh:                                            ; preds = %bb.ff
  %.sroa.3384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3384, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3384.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtBO_6SenderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE4send0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.jv)
          to label %bb.fj unwind label %bb.fi

bb.fi:                                            ; preds = %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0s_0Bd_.exit.i, %bb.fh
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %.body197

bb.fj:                                            ; preds = %bb.fh
  %.not.i192 = icmp eq i64 %i.jw, -9223372036854775808
  br i1 %.not.i192, label %bb.fq, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26828
  store i64 %i.jw, ptr %i.c, align 8, !noalias !26832
  %.sroa.3384.0..sroa_idx385 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3384.0..sroa_idx385, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3384, i64 32, i1 false), !noalias !26832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26833
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 33, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.fm unwind label %bb.fl, !noalias !26833

bb.fl:                                            ; preds = %bb.fn, %bb.fk
  %i.jz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body197 unwind label %bb.fp, !noalias !26837

bb.fm:                                            ; preds = %bb.fk
  %i.ka = load i64, ptr %i.b, align 8, !range !3, !noalias !26833, !noundef !4
  %i.kb = trunc nuw i64 %i.ka to i1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.kd = load i64, ptr %i.kc, align 8, !range !201, !noalias !26833, !noundef !4 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.kb, label %bb.fn, label %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0s_0Bd_.exit.i, !prof !1176

bb.fn:                                            ; preds = %bb.fm
  %i.kf = load i64, ptr %i.ke, align 8, !noalias !26833
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.kd, i64 %i.kf) #39
          to label %bb.fo unwind label %bb.fl, !noalias !26833

bb.fo:                                            ; preds = %bb.fn
  unreachable

bb.fp:                                            ; preds = %bb.fl
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !26837
  unreachable

_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0s_0Bd_.exit.i: ; preds = %bb.fm
  %i.kh = load ptr, ptr %i.ke, align 8, !noalias !26833, !nonnull !4, !noundef !4 ; 2 uses
  %i.ki = icmp samesign ugt i64 %i.kd, 32
  call void @llvm.assume(i1 %i.ki)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.kh, ptr noundef nonnull align 1 dereferenceable(33) @102, i64 33, i1 false), !noalias !26833
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.fr unwind label %bb.fi

bb.fq:                                            ; preds = %bb.fj
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 873
  store i8 0, ptr %i.kj, align 1
  br label %bb.ej

bb.fr:                                            ; preds = %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0s_0Bd_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26828
  store i64 -9223372036854775722, ptr %i.s, align 16, !alias.scope !26838
  %.sroa.2387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.kd, ptr %.sroa.2387.0..sroa_idx, align 8, !alias.scope !26838
  %.sroa.3388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.kh, ptr %.sroa.3388.0..sroa_idx, align 16, !alias.scope !26838
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 33, ptr %.sroa.4389.0..sroa_idx, align 8, !alias.scope !26838
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fu, %bb.fr
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 873 ; 2 uses
  %i.kl = load i8, ptr %i.kk, align 1, !range !34, !noundef !4
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.fw, label %bb.fv

bb.ft:                                            ; preds = %bb.jm, %bb.hg, %.body, %.body145, %bb.as, %bb.jp, %bb.jo, %bb.jn, %bb.jk, %bb.jj, %bb.ji, %.body252, %bb.iv, %.body214, %.body218, %bb.ho, %.body155, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit, %bb.hb, %bb.gz, %bb.gv, %bb.gt, %bb.gb, %bb.fz, %bb.fd, %bb.ea, %bb.ds, %bb.dp, %bb.dm, %bb.cx, %bb.cu, %bb.k
  %i.kn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.body197:                                         ; preds = %bb.fd, %bb.fi, %bb.fl, %bb.fa
  %.pn86.pn = phi { ptr, i32 } [ %.pn86, %bb.fa ], [ %i.ju, %bb.fd ], [ %i.jy, %bb.fi ], [ %i.jz, %bb.fl ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 873
  %i.kp = load i8, ptr %i.ko, align 1, !range !34, !noundef !4
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %bb.fz, label %bb.fx

bb.fu:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit
  %.sroa.3362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.3362.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.10359, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10359)
  store i64 %.sroa.0357.0.copyload, ptr %i.s, align 16, !alias.scope !26842
  %.sroa.2361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.7358.0.copyload, ptr %.sroa.2361.0..sroa_idx, align 8, !alias.scope !26842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.fs

bb.fv:                                            ; preds = %bb.fw, %bb.fs
  store i8 0, ptr %i.kk, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit231

bb.fw:                                            ; preds = %bb.fs
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 920
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.kr)
          to label %bb.fv unwind label %bb.fy

bb.fx:                                            ; preds = %bb.fz, %bb.fy, %.body197
  %.pn89 = phi { ptr, i32 } [ %i.kt, %bb.fy ], [ %.pn86.pn, %bb.fz ], [ %.pn86.pn, %.body197 ]
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 873
  store i8 0, ptr %i.ks, align 1
  br label %.body145

bb.fy:                                            ; preds = %bb.fw
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fz:                                            ; preds = %.body197
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 920
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.ku) #40
          to label %bb.fx unwind label %bb.ft

bb.ga:                                            ; preds = %bb.er
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 874
  store i8 0, ptr %i.kv, align 2
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.if, ptr noundef nonnull align 16 dereferenceable(336) %i.kw, i64 336, i1 false)
  %.sroa.8405.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2616
  store i8 0, ptr %.sroa.8405.0..sroa_idx, align 8
  br label %bb.gc

bb.gb:                                            ; preds = %bb.gc
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame14execute_stream0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.ky) #40
          to label %.body145 unwind label %bb.ft

bb.gc:                                            ; preds = %bb.f, %bb.ga
  %.sroa.3.5 = phi i64 [ %.sroa.3.3, %bb.ga ], [ undef, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 3 uses
  invoke fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame14execute_stream0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.v, ptr noundef nonnull align 16 %i.ky, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.gd unwind label %bb.gb

bb.gd:                                            ; preds = %bb.gc
  %i.kz = load i64, ptr %i.v, align 8, !range !2144, !noundef !4 ; 3 uses
  %i.la = icmp eq i64 %i.kz, 21
  br i1 %i.la, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %common.ret

bb.gf:                                            ; preds = %bb.gd
  %.sroa.3408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.3408.0.copyload = load ptr, ptr %.sroa.3408.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5409.0.copyload = load ptr, ptr %.sroa.5409.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7410, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7410.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame14execute_stream0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.ky)
          to label %bb.gh unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gi, %bb.gf
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %.body145

bb.gh:                                            ; preds = %bb.gf
  %.not.i202 = icmp eq i64 %i.kz, 20
  br i1 %.not.i202, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %.sroa.4414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7410, i64 16, i1 false)
  store i64 %i.kz, ptr %i.a, align 8, !noalias !26846
  %.sroa.2412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.3408.0.copyload, ptr %.sroa.2412.0..sroa_idx, align 8, !noalias !26846
  %.sroa.3413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5409.0.copyload, ptr %.sroa.3413.0..sroa_idx, align 8, !noalias !26846
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.gk unwind label %bb.gg

bb.gj:                                            ; preds = %bb.gh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3408.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5409.0.copyload) ]
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 800
  store ptr %.sroa.3408.0.copyload, ptr %i.lc, align 16
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 808
  store ptr %.sroa.5409.0.copyload, ptr %i.ld, align 8
  br label %bb.x

bb.gk:                                            ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit231

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit231: ; preds = %bb.if, %bb.ie, %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualBP_.exit188, %bb.fv, %bb.gk
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 784
  %.val119 = load ptr, ptr %i.le, align 16        ; 5 uses
  %i.lf = getelementptr i8, ptr %1, i64 792
  %.val120 = load ptr, ptr %i.lf, align 8, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.lg = load ptr, ptr %.val120, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i206 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i206, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit231
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val119) ]
  invoke void %i.lg(ptr noundef nonnull %.val119)
          to label %bb.gm unwind label %bb.go

bb.gm:                                            ; preds = %bb.gl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit231
  %i.lh = getelementptr inbounds nuw i8, ptr %.val120, i64 8
  %i.li = load i64, ptr %i.lh, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.lj = icmp eq i64 %i.li, 0
  br i1 %i.lj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit210, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.lk = getelementptr inbounds nuw i8, ptr %.val120, i64 16
  %i.ll = load i64, ptr %i.lk, align 8, !range !947, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val119) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val119, i64 noundef range(i64 1, 0) %i.li, i64 noundef range(i64 1, 536870913) %i.ll) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit210

bb.go:                                            ; preds = %bb.gl
  %i.lm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.val120, i64 8
  %i.lo = load i64, ptr %i.ln, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.lp = icmp eq i64 %i.lo, 0
  br i1 %i.lp, label %.body149, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.lq = getelementptr inbounds nuw i8, ptr %.val120, i64 16
  %i.lr = load i64, ptr %i.lq, align 8, !range !947, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val119, i64 noundef range(i64 1, 0) %i.lo, i64 noundef range(i64 1, 536870913) %i.lr) #33
  br label %.body149

bb.gq:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit210

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit210: ; preds = %bb.gn, %bb.gm, %bb.gq
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 874
  %i.lt = load i8, ptr %i.ls, align 2, !range !34, !noundef !4
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %bb.ij, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit

bb.gr:                                            ; preds = %bb.dy
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %.body234

bb.gs:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ik, %bb.gs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit210
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 874
  store i8 0, ptr %i.lw, align 2
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 875
  %i.ly = load i8, ptr %i.lx, align 1, !range !34, !noundef !4
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %bb.in, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit241

bb.gt:                                            ; preds = %bb.dj, %bb.di
  %.pn44.ph = phi { ptr, i32 } [ %i.he, %bb.di ], [ %.pn39.pn.pn, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ag) #40
          to label %bb.gv unwind label %bb.ft

bb.gu:                                            ; preds = %bb.dw, %bb.gv
  %.pn47503 = phi { ptr, i32 } [ %.pn44.pn, %bb.gv ], [ %i.hp, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %.body234

bb.gv:                                            ; preds = %bb.df, %bb.gt, %bb.du
  %.pn44.pn = phi { ptr, i32 } [ %.pn44.ph, %bb.gt ], [ %i.ho, %bb.du ], [ %i.hb, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %i.ai) #40
          to label %bb.gu unwind label %bb.ft

.body234:                                         ; preds = %bb.gu, %bb.gr, %bb.im, %.body.i, %bb.ji, %.body149
  %.pn96.pn = phi { ptr, i32 } [ %i.pm, %.body.i ], [ %.pn93.pn, %.body149 ], [ %.pn93.pn, %bb.ji ], [ %i.po, %bb.im ], [ %i.lv, %bb.gr ], [ %.pn47503, %bb.gu ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 874
  store i8 0, ptr %i.ma, align 2
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 875
  %i.mc = load i8, ptr %i.mb, align 1, !range !34, !noundef !4
  %i.md = trunc nuw i8 %i.mc to i1
  br i1 %i.md, label %bb.jj, label %.body239

bb.gw:                                            ; preds = %bb.gx, %bb.ha
  %.pn99 = phi { ptr, i32 } [ %i.me, %bb.gx ], [ %.pn34.pn, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8297)
  br label %.body239

bb.gx:                                            ; preds = %bb.dd
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

bb.gy:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8297)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit241

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit241: ; preds = %bb.io, %bb.gy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 875
  store i8 0, ptr %i.mf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 876
  %i.mh = load i8, ptr %i.mg, align 4, !range !34, !noundef !4
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %bb.ir, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit247

bb.gz:                                            ; preds = %bb.cr, %bb.cq
  %.pn31.ph = phi { ptr, i32 } [ %i.gn, %bb.cq ], [ %.pn27.pn, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ao) #40
          to label %bb.hb unwind label %bb.ft

bb.ha:                                            ; preds = %bb.db, %bb.hb, %bb.cl
  %.pn34.pn = phi { ptr, i32 } [ %.pn31.pn, %bb.hb ], [ %i.gw, %bb.db ], [ %i.gj, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.gw

bb.hb:                                            ; preds = %bb.cn, %bb.gz, %bb.cz
  %.pn31.pn = phi { ptr, i32 } [ %.pn31.ph, %bb.gz ], [ %i.gv, %bb.cz ], [ %i.gk, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %i.aq) #40
          to label %bb.ha unwind label %bb.ft

.body239:                                         ; preds = %bb.iq, %.body.i237, %bb.jj, %bb.gw, %.body234
  %.pn99.pn = phi { ptr, i32 } [ %.pn99, %bb.gw ], [ %.pn96.pn, %.body234 ], [ %.pn96.pn, %bb.jj ], [ %i.ps, %bb.iq ], [ %i.pq, %.body.i237 ] ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 875
  store i8 0, ptr %i.mj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 876
  %i.ml = load i8, ptr %i.mk, align 4, !range !34, !noundef !4
  %i.mm = trunc nuw i8 %i.ml to i1
  br i1 %i.mm, label %bb.jk, label %.body245

bb.hc:                                            ; preds = %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_00Bd_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !26784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !26784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8279.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10286, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10286)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %.sroa.2288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2288.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8279.sroa.9, i64 24, i1 false)
  store i64 -9223372036854775722, ptr %i.s, align 16, !alias.scope !26849
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit247

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit247: ; preds = %bb.is, %bb.hc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit241
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 876
  store i8 0, ptr %i.mn, align 4
  br label %bb.he

.body245:                                         ; preds = %bb.iu, %.body.i243, %bb.jk, %.body170, %.body239
  %.pn102.pn = phi { ptr, i32 } [ %.pn23, %.body170 ], [ %.pn99.pn, %.body239 ], [ %.pn99.pn, %bb.jk ], [ %i.px, %bb.iu ], [ %i.pv, %.body.i243 ] ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 876
  store i8 0, ptr %i.mo, align 4
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 877
  %i.mq = load i8, ptr %i.mp, align 1, !range !34, !noundef !4
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %bb.jl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.hd:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit247
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 877
  store i8 0, ptr %i.ms, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 832
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.mt)
          to label %bb.hi unwind label %bb.at

.body167:                                         ; preds = %bb.cc, %bb.ca, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn105 = phi { ptr, i32 } [ %.pn18.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.fw, %bb.cc ], [ %i.fu, %bb.ca ]
end_hunk_6
begin_hunk_7_@_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s6_0Bb_:bb.a
  unreachable

bb.dp:                                            ; preds = %bb.do
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj4_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 6)
          to label %bb.ds unwind label %bb.dr

bb.dq:                                            ; preds = %bb.dt, %bb.dr
  %.pn46.pn.pn = phi { ptr, i32 } [ %.pn46.pn, %bb.dt ], [ %i.jg, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jd, i64 noundef 448, i64 noundef 16) #33
  br label %bb.gt

bb.dr:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj4_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.ds:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj4_E10new_uninitCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 6)
          to label %bb.dv unwind label %bb.du

bb.dt:                                            ; preds = %bb.dw, %bb.du
  %.pn46.pn = phi { ptr, i32 } [ %.pn46, %bb.dw ], [ %i.jh, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ag) #40
          to label %bb.dq unwind label %bb.fy

bb.du:                                            ; preds = %bb.ds
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dv:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 15)
          to label %bb.dy unwind label %bb.dx

bb.dw:                                            ; preds = %bb.dz, %bb.dx
  %.pn46 = phi { ptr, i32 } [ %i.jj, %bb.dz ], [ %i.ji, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.af) #40
          to label %bb.dt unwind label %bb.fy

bb.dx:                                            ; preds = %bb.dv
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dy:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.ad, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 16)
          to label %bb.ea unwind label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.jj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ae) #40
          to label %bb.dw unwind label %bb.fy

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.jd, ptr noundef nonnull align 16 dereferenceable(112) %i.ag, i64 112, i1 false)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.jk, ptr noundef nonnull align 16 dereferenceable(112) %i.af, i64 112, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jd, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.jl, ptr noundef nonnull align 16 dereferenceable(112) %i.ae, i64 112, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jd, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.jm, ptr noundef nonnull align 16 dereferenceable(112) %i.ad, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i64 4, ptr %i.ah, align 8, !alias.scope !27065, !noalias !27068
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.jd, ptr %i.jn, align 8, !alias.scope !27065, !noalias !27068
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 4, ptr %i.jo, align 8, !alias.scope !27065, !noalias !27068
  invoke void @_RNvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4Expr7in_list(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.aj, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.ai, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ah, i1 noundef zeroext false)
          to label %bb.ec unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.gv

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  invoke void @_RNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5_9DataFrame6filter(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.al, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.ak, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.aj)
          to label %bb.ee unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.gu

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.jr = load i64, ptr %i.al, align 16, !range !18805, !alias.scope !27070, !noalias !27073, !noundef !4 ; 2 uses
  %i.js = icmp eq i64 %i.jr, 36
  %i.jt = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8307, ptr noundef nonnull align 8 dereferenceable(40) %i.jt, i64 40, i1 false)
  br i1 %i.js, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8307, i64 40, i1 false)
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.gs unwind label %bb.gr

bb.eg:                                            ; preds = %bb.ee
  %.sroa.10309.0..sroa_idx310 = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5315)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5315, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.10309.0..sroa_idx310, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 2369
  store i8 1, ptr %i.ju, align 1
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 1952
  store i64 %i.jr, ptr %i.jv, align 16
  %.sroa.4314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4314.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8307, i64 40, i1 false)
  %.sroa.5315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5315.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5315, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5315)
  store i8 0, ptr %i.jb, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.gj, ptr noundef nonnull align 16 dereferenceable(336) %i.au, i64 336, i1 false)
  %.sroa.8328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4120
  store i8 0, ptr %.sroa.8328.0..sroa_idx, align 8
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ei
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame14execute_stream0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.jx) #40
          to label %.body165 unwind label %bb.fy

bb.ei:                                            ; preds = %bb.g, %bb.eg
  %.sroa.3.2 = phi i64 [ %.sroa.3.1, %bb.eg ], [ undef, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 2384 ; 3 uses
  invoke fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame14execute_stream0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ac, ptr noundef nonnull align 16 %i.jx, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.ej unwind label %bb.eh

bb.ej:                                            ; preds = %bb.ei
  %i.jy = load i64, ptr %i.ac, align 8, !range !2144, !noundef !4 ; 3 uses
  %i.jz = icmp eq i64 %i.jy, 21
  br i1 %i.jz, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %common.ret

bb.el:                                            ; preds = %bb.ej
  %.sroa.3330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.3330.0.copyload = load ptr, ptr %.sroa.3330.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.5331.0.copyload = load ptr, ptr %.sroa.5331.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7332, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7332.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame14execute_stream0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.jx)
          to label %bb.en unwind label %bb.em

bb.em:                                            ; preds = %bb.eo, %bb.el
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %.body165

bb.en:                                            ; preds = %bb.el
  %.not.i190 = icmp eq i64 %i.jy, 20
  br i1 %.not.i190, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %.sroa.4336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4336.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7332, i64 16, i1 false)
  store i64 %i.jy, ptr %i.c, align 8, !noalias !27075
  %.sroa.2334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.3330.0.copyload, ptr %.sroa.2334.0..sroa_idx, align 8, !noalias !27075
  %.sroa.3335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.5331.0.copyload, ptr %.sroa.3335.0..sroa_idx, align 8, !noalias !27075
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.gq unwind label %bb.em

bb.ep:                                            ; preds = %bb.en
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3330.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5331.0.copyload) ]
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 2288
  store ptr %.sroa.3330.0.copyload, ptr %i.kb, align 16
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 2296
  store ptr %.sroa.5331.0.copyload, ptr %i.kc, align 8
  br label %bb.eq

bb.eq:                                            ; preds = %bb.fv, %bb.ep
  %.sroa.3.9 = phi i64 [ %.sroa.3.2, %bb.ep ], [ %.sroa.3.4, %bb.fv ]
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 2288
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 2384
  store ptr %i.kd, ptr %i.ke, align 16
  br label %bb.es

bb.er:                                            ; preds = %bb.es
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %.body161

bb.es:                                            ; preds = %bb.h, %bb.eq
  %.sroa.3.3 = phi i64 [ %.sroa.3.9, %bb.eq ], [ undef, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 2384 ; 4 uses
  invoke void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream8try_nextINtB5_7TryNextINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB1o_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1o_6marker4SendEL_EEENtNtNtB1o_6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.et unwind label %bb.er

bb.et:                                            ; preds = %bb.es
  %i.kh = load i64, ptr %i.ab, align 8, !range !48, !noundef !4 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 2
  br i1 %i.ki, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %common.ret

bb.ev:                                            ; preds = %bb.et
  %.sroa.2338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2338, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2338.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.kk = trunc nuw i64 %i.kh to i1
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 2472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kl, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2338, i64 40, i1 false)
  br i1 %i.kk, label %bb.ex, label %bb.ey

bb.ew:                                            ; preds = %bb.ex, %bb.fx, %bb.fv
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %.body161

bb.ex:                                            ; preds = %bb.ev
  store i64 1, ptr %i.kj, align 16, !alias.scope !27078, !noalias !27081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2338, i64 40, i1 false)
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBL_yENtNtB1q_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB1q_.exit196 unwind label %bb.ew

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBL_yENtNtB1q_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB1q_.exit196: ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit216

bb.ey:                                            ; preds = %bb.ev
  store i64 0, ptr %i.kj, align 16, !alias.scope !27078, !noalias !27081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.kg, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2338, i64 40, i1 false)
  %i.kn = load i64, ptr %i.kg, align 16, !range !201, !noundef !4
  %.not61 = icmp eq i64 %i.kn, -9223372036854775808
  br i1 %.not61, label %bb.ga, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 2424 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ko, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2338, i64 40, i1 false)
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 2448
  %.val150 = load ptr, ptr %i.kp, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.val150, i64 16
  %.val151 = load ptr, ptr %i.kq, align 8, !nonnull !4, !noundef !4
  %i.kr = getelementptr i8, ptr %.val150, i64 24
  %.val152 = load i64, ptr %i.kr, align 8, !noundef !4 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.val151, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %.val152, 3
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx
  %.not540541 = icmp eq i64 %.val152, 0
  br i1 %.not540541, label %.thread516, label %.lr.ph

.thread516:                                       ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.ez
  %.not540.lcssa = phi i1 [ true, %bb.ez ], [ true, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ false, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.3.10 = phi i64 [ %.sroa.3.3, %bb.ez ], [ %.sroa.3.3, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.8347.0543, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10358)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericReEB8_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 64)
          to label %bb.fb unwind label %bb.fa

.lr.ph:                                           ; preds = %bb.ez, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.8347.0543 = phi i64 [ %i.kv, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ 0, %bb.ez ] ; 2 uses
  %.sroa.0345.0542 = phi ptr [ %i.ku, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.ks, %bb.ez ] ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0345.0542, i64 8 ; 2 uses
  %i.kv = add nuw nsw i64 %.sroa.8347.0543, 1
  %.val153 = load ptr, ptr %.sroa.0345.0542, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.kw = getelementptr i8, ptr %.val153, i64 32
  %.val1.i = load i64, ptr %i.kw, align 8, !noundef !4
  %i.kx = icmp eq i64 %.val1.i, 12
  br i1 %i.kx, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph
  %i.ky = getelementptr i8, ptr %.val153, i64 24
  %.val.i = load ptr, ptr %i.ky, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.kz = load i64, ptr %.val.i, align 1
  %i.la = xor i64 %i.kz, 6874014130029224799
  %i.lb = getelementptr i8, ptr %.val.i, i64 8
  %i.lc = load i32, ptr %i.lb, align 1
  %i.ld = zext i32 %i.lc to i64
  %i.le = xor i64 %i.ld, 1701869940
  %i.lf = or i64 %i.la, %i.le
  %i.lg = icmp ne i64 %i.lf, 0
  %i.lh = zext i1 %i.lg to i32
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %.thread516, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %.lr.ph, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit
  %.not540 = icmp eq ptr %i.ku, %i.kt
  br i1 %.not540, label %.thread516, label %.lr.ph

bb.fa:                                            ; preds = %bb.fc, %.thread516
  %i.lj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10358)
  br label %bb.fh

bb.fb:                                            ; preds = %.thread516
  br i1 %.not540.lcssa, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.z)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit.thread unwind label %bb.fa

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit.thread: ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.fd

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit: ; preds = %bb.fb
  %.sroa.0356.0.copyload = load i64, ptr %i.z, align 16, !alias.scope !27083 ; 2 uses
  %.sroa.7357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.7357.0.copyload = load i64, ptr %.sroa.7357.0..sroa_idx, align 8, !alias.scope !27083 ; 2 uses
  %.sroa.10358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.10358, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.10358.0..sroa_idx, i64 80, i1 false), !alias.scope !27083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.not.i198 = icmp eq i64 %.sroa.0356.0.copyload, -9223372036854775711
  br i1 %.not.i198, label %bb.fd, label %bb.fz

bb.fd:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit.thread, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit
  %.sroa.7357.0526.ph = phi i64 [ %.sroa.7357.0.copyload, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit ], [ %.sroa.3.10, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10358)
  %i.lk = invoke { ptr, ptr } @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch13remove_column(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ko, i64 noundef %.sroa.7357.0526.ph)
          to label %bb.ff unwind label %bb.fe     ; 2 uses

bb.fe:                                            ; preds = %bb.fd
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.ff:                                            ; preds = %bb.fd
  %i.lm = extractvalue { ptr, ptr } %i.lk, 0      ; 2 uses
  %i.ln = extractvalue { ptr, ptr } %i.lk, 1
  store ptr %i.lm, ptr %i.aa, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ln, ptr %i.lo, align 8
  %i.lp = atomicrmw sub ptr %i.lm, i64 1 release, align 8, !noalias !27087
  %i.lq = icmp eq i64 %i.lp, 1
  br i1 %i.lq, label %bb.fg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.fg:                                            ; preds = %bb.ff
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.fi

bb.fh:                                            ; preds = %bb.fi, %bb.fe, %bb.fa
  %.pn94 = phi { ptr, i32 } [ %i.ll, %bb.fe ], [ %i.lr, %bb.fi ], [ %i.lj, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ff, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ls = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.fl unwind label %bb.fk     ; 2 uses

bb.fj:                                            ; preds = %bb.fm, %bb.fr, %bb.fu, %bb.fk, %bb.fh
  %.pn94.pn = phi { ptr, i32 } [ %.pn94, %bb.fh ], [ %i.lu, %bb.fk ], [ %i.mh, %bb.fu ], [ %i.me, %bb.fr ], [ %i.ma, %bb.fm ]
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 2424
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.lt) #40
          to label %.body161 unwind label %bb.fy

bb.fk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 2512
  %i.lw = extractvalue { i64, i32 } %i.ls, 0
  %i.lx = extractvalue { i64, i32 } %i.ls, 1
  store i64 %i.lw, ptr %i.lv, align 16
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 2520
  store i32 %i.lx, ptr %i.ly, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 720
  %.sroa.8373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2880
  store ptr %i.lz, ptr %.sroa.8373.0..sroa_idx, align 16
  %.sroa.9374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2888
  store ptr %i.ko, ptr %.sroa.9374.0..sroa_idx, align 8
  %.sroa.11376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4832
  store i8 0, ptr %.sroa.11376.0..sroa_idx, align 16
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fn
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_11DeltaWriter5write0EBU_(ptr noundef nonnull align 16 %i.mb) #40
          to label %bb.fj unwind label %bb.fy

bb.fn:                                            ; preds = %bb.i, %bb.fl
  %.sroa.3.4 = phi i64 [ %.sroa.3.10, %bb.fl ], [ undef, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 2528 ; 3 uses
  invoke fastcc void @_RNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB7_11DeltaWriter5write0Bd_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.y, ptr noundef nonnull align 16 %i.mb, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.fo unwind label %bb.fm

bb.fo:                                            ; preds = %bb.fn
  %i.mc = load i64, ptr %i.y, align 16, !range !1238, !noundef !4 ; 3 uses
  %i.md = icmp eq i64 %i.mc, -9223372036854775710
  br i1 %i.md, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %common.ret

bb.fq:                                            ; preds = %bb.fo
  %.sroa.3379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3379, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3379.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_11DeltaWriter5write0EBU_(ptr noundef nonnull align 16 %i.mb)
          to label %bb.fs unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fs:                                            ; preds = %bb.fq
  %.not.i200 = icmp eq i64 %i.mc, -9223372036854775711
  br i1 %.not.i200, label %bb.ft, label %bb.fw

bb.ft:                                            ; preds = %bb.fs
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 2512
  %i.mg = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant7elapsed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.mf)
          to label %bb.fv unwind label %bb.fu     ; 2 uses

bb.fu:                                            ; preds = %bb.ft
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fv:                                            ; preds = %bb.ft
  %i.mi = extractvalue { i64, i32 } %i.mg, 0
  %i.mj = extractvalue { i64, i32 } %i.mg, 1
  %i.mk = mul i64 %i.mi, 1000
  %i.ml = udiv i32 %i.mj, 1000000
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = add i64 %i.mk, %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 2320 ; 2 uses
  %i.mp = load i64, ptr %i.mo, align 16, !noundef !4
  %i.mq = add i64 %i.mn, %i.mp
  store i64 %i.mq, ptr %i.mo, align 16
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 2424
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.mr)
          to label %bb.eq unwind label %bb.ew

bb.fw:                                            ; preds = %bb.fs
  %.sroa.2381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.2381.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3379, i64 88, i1 false)
  store i64 %i.mc, ptr %i.s, align 16, !alias.scope !27092
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fz, %bb.fw
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 2424
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.ms)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit216 unwind label %bb.ew

bb.fy:                                            ; preds = %bb.kj, %bb.ig, %bb.hg, %bb.ah, %.body161, %bb.kk, %bb.kl, %bb.kh, %bb.kg, %bb.ir, %bb.ip, %bb.ih, %.body243, %bb.ie, %bb.id, %bb.ic, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit, %bb.hb, %bb.gz, %bb.gv, %bb.gt, %bb.gb, %bb.fm, %bb.fj, %bb.eh, %bb.dz, %bb.dw, %bb.dt, %bb.de, %bb.db, %bb.ay, %bb.x
  %i.mt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.fz:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionjE5ok_orNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBU_.exit
  %.sroa.3361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.3361.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.10358, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10358)
  store i64 %.sroa.0356.0.copyload, ptr %i.s, align 16, !alias.scope !27096
  %.sroa.2360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.7357.0.copyload, ptr %.sroa.2360.0..sroa_idx, align 8, !alias.scope !27096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.fx

bb.ga:                                            ; preds = %bb.ey
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 2369
  store i8 0, ptr %i.mu, align 1
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 1952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.kg, ptr noundef nonnull align 16 dereferenceable(336) %i.mv, i64 336, i1 false)
  %.sroa.8399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4120
  store i8 0, ptr %.sroa.8399.0..sroa_idx, align 8
  br label %bb.gc

bb.gb:                                            ; preds = %bb.gc
  %i.mw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame14execute_stream0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.mx) #40
          to label %.body161 unwind label %bb.fy

bb.gc:                                            ; preds = %bb.j, %bb.ga
  %.sroa.3.5 = phi i64 [ %.sroa.3.3, %bb.ga ], [ undef, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 2384 ; 3 uses
  invoke fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame14execute_stream0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.x, ptr noundef nonnull align 16 %i.mx, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.gd unwind label %bb.gb

bb.gd:                                            ; preds = %bb.gc
  %i.my = load i64, ptr %i.x, align 8, !range !2144, !noundef !4 ; 3 uses
  %i.mz = icmp eq i64 %i.my, 21
  br i1 %i.mz, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %common.ret

bb.gf:                                            ; preds = %bb.gd
  %.sroa.3402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.3402.0.copyload = load ptr, ptr %.sroa.3402.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.5403.0.copyload = load ptr, ptr %.sroa.5403.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7404, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7404.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame14execute_stream0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.mx)
          to label %bb.gh unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gi, %bb.gf
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %.body161

bb.gh:                                            ; preds = %bb.gf
  %.not.i202 = icmp eq i64 %i.my, 20
  br i1 %.not.i202, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %.sroa.4408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4408.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7404, i64 16, i1 false)
  store i64 %i.my, ptr %i.a, align 8, !noalias !27100
  %.sroa.2406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.3402.0.copyload, ptr %.sroa.2406.0..sroa_idx, align 8, !noalias !27100
  %.sroa.3407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5403.0.copyload, ptr %.sroa.3407.0..sroa_idx, align 8, !noalias !27100
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.gk unwind label %bb.gg

bb.gj:                                            ; preds = %bb.gh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3402.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5403.0.copyload) ]
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 2304
  store ptr %.sroa.3402.0.copyload, ptr %i.nb, align 16
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 2312
  store ptr %.sroa.5403.0.copyload, ptr %i.nc, align 8
  br label %bb.aj

bb.gk:                                            ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit216

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit216: ; preds = %bb.hm, %bb.hl, %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBL_yENtNtB1q_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB1q_.exit196, %bb.fx, %bb.gk
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 2288
  %.val131 = load ptr, ptr %i.nd, align 16        ; 5 uses
  %i.ne = getelementptr i8, ptr %1, i64 2296
  %.val132 = load ptr, ptr %i.ne, align 8, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.nf = load ptr, ptr %.val132, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i206 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i206, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit216
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val131) ]
  invoke void %i.nf(ptr noundef nonnull %.val131)
          to label %bb.gm unwind label %bb.go

bb.gm:                                            ; preds = %bb.gl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit216
  %i.ng = getelementptr inbounds nuw i8, ptr %.val132, i64 8
  %i.nh = load i64, ptr %i.ng, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.ni = icmp eq i64 %i.nh, 0
  br i1 %i.ni, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit210, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.nj = getelementptr inbounds nuw i8, ptr %.val132, i64 16
  %i.nk = load i64, ptr %i.nj, align 8, !range !947, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val131) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val131, i64 noundef range(i64 1, 0) %i.nh, i64 noundef range(i64 1, 536870913) %i.nk) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit210

bb.go:                                            ; preds = %bb.gl
  %i.nl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.val132, i64 8
  %i.nn = load i64, ptr %i.nm, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.no = icmp eq i64 %i.nn, 0
  br i1 %i.no, label %.body165, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.np = getelementptr inbounds nuw i8, ptr %.val132, i64 16
  %i.nq = load i64, ptr %i.np, align 8, !range !947, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val131, i64 noundef range(i64 1, 0) %i.nn, i64 noundef range(i64 1, 536870913) %i.nq) #33
  br label %.body165

bb.gq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit210

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit210: ; preds = %bb.gn, %bb.gm, %bb.gq
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 2369
  %i.ns = load i8, ptr %i.nr, align 1, !range !34, !noundef !4
  %i.nt = trunc nuw i8 %i.ns to i1
  br i1 %i.nt, label %bb.hq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit

bb.gr:                                            ; preds = %bb.ef
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %.body219

bb.gs:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.hr, %bb.gs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit210
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 2369
  store i8 0, ptr %i.nv, align 1
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 2370
  %i.nx = load i8, ptr %i.nw, align 2, !range !34, !noundef !4
  %i.ny = trunc nuw i8 %i.nx to i1
  br i1 %i.ny, label %bb.hu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit226

bb.gt:                                            ; preds = %bb.dq, %bb.dp
  %.pn51.ph = phi { ptr, i32 } [ %i.jf, %bb.dp ], [ %.pn46.pn.pn, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ai) #40
          to label %bb.gv unwind label %bb.fy

bb.gu:                                            ; preds = %bb.ed, %bb.gv
  %.pn54509 = phi { ptr, i32 } [ %.pn51.pn, %bb.gv ], [ %i.jq, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %.body219

bb.gv:                                            ; preds = %bb.dm, %bb.gt, %bb.eb
  %.pn51.pn = phi { ptr, i32 } [ %.pn51.ph, %bb.gt ], [ %i.jp, %bb.eb ], [ %i.jc, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %i.ak) #40
          to label %bb.gu unwind label %bb.fy

.body219:                                         ; preds = %bb.gu, %bb.gr, %bb.ht, %.body.i, %bb.ic, %.body165
  %.pn102.pn = phi { ptr, i32 } [ %i.pr, %.body.i ], [ %.pn99.pn, %.body165 ], [ %.pn99.pn, %bb.ic ], [ %i.pt, %bb.ht ], [ %i.nu, %bb.gr ], [ %.pn54509, %bb.gu ] ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 2369
  store i8 0, ptr %i.nz, align 1
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 2370
  %i.ob = load i8, ptr %i.oa, align 2, !range !34, !noundef !4
  %i.oc = trunc nuw i8 %i.ob to i1
  br i1 %i.oc, label %bb.id, label %.body224

bb.gw:                                            ; preds = %bb.gx, %bb.ha
  %.pn105 = phi { ptr, i32 } [ %i.od, %bb.gx ], [ %.pn41.pn, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8296)
  br label %.body224

bb.gx:                                            ; preds = %bb.dk
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

bb.gy:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8296)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit226

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit226: ; preds = %bb.hv, %bb.gy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 2370
  store i8 0, ptr %i.oe, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 2371
  %i.og = load i8, ptr %i.of, align 1, !range !34, !noundef !4
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %bb.hy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit232

bb.gz:                                            ; preds = %bb.cy, %bb.cx
  %.pn38.ph = phi { ptr, i32 } [ %i.io, %bb.cx ], [ %.pn34.pn, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.aq) #40
          to label %bb.hb unwind label %bb.fy

bb.ha:                                            ; preds = %bb.di, %bb.hb, %bb.cs
  %.pn41.pn = phi { ptr, i32 } [ %.pn38.pn, %bb.hb ], [ %i.ix, %bb.di ], [ %i.ik, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.gw

bb.hb:                                            ; preds = %bb.cu, %bb.gz, %bb.dg
  %.pn38.pn = phi { ptr, i32 } [ %.pn38.ph, %bb.gz ], [ %i.iw, %bb.dg ], [ %i.il, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %i.as) #40
          to label %bb.ha unwind label %bb.fy

.body224:                                         ; preds = %bb.hx, %.body.i222, %bb.id, %bb.gw, %.body219
  %.pn105.pn = phi { ptr, i32 } [ %.pn105, %bb.gw ], [ %.pn102.pn, %.body219 ], [ %.pn102.pn, %bb.id ], [ %i.px, %bb.hx ], [ %i.pv, %.body.i222 ] ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 2370
  store i8 0, ptr %i.oi, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 2371
  %i.ok = load i8, ptr %i.oj, align 1, !range !34, !noundef !4
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %bb.ie, label %.body230

bb.hc:                                            ; preds = %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s6_00Bd_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !27048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !27048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8278.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10285, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10285)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %.sroa.2287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2287.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8278.sroa.9, i64 24, i1 false)
  store i64 -9223372036854775722, ptr %i.s, align 16, !alias.scope !27103
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit232

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit232: ; preds = %bb.hz, %bb.hc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit226
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 2371
  store i8 0, ptr %i.om, align 1
  br label %bb.he

.body230:                                         ; preds = %bb.ib, %.body.i228, %bb.ie, %.body178, %.body224
  %.pn108.pn = phi { ptr, i32 } [ %.pn30, %.body178 ], [ %.pn105.pn, %.body224 ], [ %.pn105.pn, %bb.ie ], [ %i.qc, %bb.ib ], [ %i.qa, %.body.i228 ] ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 2371
  store i8 0, ptr %i.on, align 1
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 2374
  %i.op = load i8, ptr %i.oo, align 2, !range !34, !noundef !4
  %i.oq = trunc nuw i8 %i.op to i1
  br i1 %i.oq, label %bb.if, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.hd:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit232
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 2374
  store i8 0, ptr %i.or, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 2328
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.os)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1l_.exit unwind label %bb.bg

.body176:                                         ; preds = %bb.cj, %bb.ch, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn111 = phi { ptr, i32 } [ %.pn25.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.hw, %bb.cj ], [ %i.hu, %bb.ch ]
end_hunk_7
begin_hunk_8_@_RNCNvCs14kWLkQVSKO_14deltalake_core31open_table_with_storage_options0B3_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.010)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1993
  store i8 0, ptr %i.ah, align 1
  br label %bb.w

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit, %bb.v
  %.sroa.013.1 = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %.sroa.013.1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4, i64 120, i1 false)
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.x, %bb.j
  store i8 0, ptr %i.v, align 1
  br label %bb.w

bb.x:                                             ; preds = %bb.j
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.y

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit6: ; preds = %bb.aa, %bb.y, %bb.k
  %.pn4 = phi { ptr, i32 } [ %i.aj, %bb.y ], [ %.pn.pn.pn, %bb.k ], [ %.pn.pn.pn, %bb.aa ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1993
  store i8 0, ptr %i.ai, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i8 2, ptr %i.h, align 8
  resume { ptr, i32 } %.pn4

bb.y:                                             ; preds = %bb.x
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit6

bb.z:                                             ; preds = %bb.aa, %bb.n
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.aa:                                            ; preds = %bb.k
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit6 unwind label %bb.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB4_8Response5bytes0Cs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 7 uses
  %.sroa.431 = alloca [16 x i8], align 8          ; 2 uses
  %.sroa.524 = alloca [104 x i8], align 8         ; 2 uses
  %i.b = alloca [128 x i8], align 8               ; 9 uses
  %i.c = alloca [128 x i8], align 8               ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !3169, !noundef !4
  switch i8 %i.f, label %default.unreachable35 [
    i8 0, label %bb.b
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.h
  ]

default.unreachable35:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.g, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !alias.scope !27228
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !27231, !align !17, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECs14kWLkQVSKO_14deltalake_core(ptr %.val1.i.i) #40
          to label %.body unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !27231, !align !17, !noundef !4 ; 4 uses
  %i.m = icmp eq ptr %.val.i.i, null
  br i1 %i.m, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #33
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.e
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #33
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.m

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i64 3, ptr %i.p, align 8
  %.sroa.816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i64 0, ptr %.sroa.816.0..sroa_idx, align 8
  %.sroa.917.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.917.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 400
  store <2 x ptr> %i.i, ptr %.sroa.11.0..sroa_idx, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.r, %bb.n, %.body
  %.pn4.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.v, %bb.r ], [ %i.s, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val9 = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core(ptr %.val9) #40
          to label %.body11 unwind label %bb.ab

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41
  unreachable

bb.m:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  invoke void @_RNvXNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collectINtB2_7CollectINtNtB4_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB2M_6marker4SyncNtB3j_4SendEL_EEENtNtNtB2M_6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtBL_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3E_4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.r) #40
          to label %bb.j unwind label %bb.ab

bb.o:                                             ; preds = %bb.m
  %i.t = load i64, ptr %i.b, align 8, !range !1502, !noundef !4 ; 3 uses
  %i.u = icmp eq i64 %i.t, 5
  br i1 %i.u, label %bb.p, label %bb.q

common.ret:                                       ; preds = %bb.aa, %bb.p
  %storemerge = phi i8 [ 1, %bb.aa ], [ 3, %bb.p ]
  store i8 %storemerge, ptr %i.e, align 8
  ret void

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %common.ret

bb.q:                                             ; preds = %bb.o
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtBL_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3E_4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.r)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.u, %bb.t, %bb.q
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.s:                                             ; preds = %bb.q
  %i.w = icmp eq i64 %i.t, 4
  br i1 %i.w, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27234
  store i64 %i.t, ptr %i.a, align 8, !noalias !27238
  %.sroa.3.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx20, align 8, !noalias !27238
  %.sroa.4.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx22, align 8, !noalias !27238
  %.sroa.524.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524.0..sroa_idx25, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524, i64 104, i1 false), !noalias !27238
  invoke void @_RNvMNtCs3eCsZ2Mx498_14http_body_util9collectedINtB2_9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE8to_bytesCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.a)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27234
  %.pr = load ptr, ptr %i.d, align 8, !alias.scope !27239, !noalias !27242 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27242)
  %i.x = icmp eq ptr %.pr, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !27244 ; 2 uses
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.x, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECs14kWLkQVSKO_14deltalake_core.exit._crit_edge, label %bb.v

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECs14kWLkQVSKO_14deltalake_core.exit._crit_edge: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECs14kWLkQVSKO_14deltalake_core.exit
  %.pre34 = load ptr, ptr %.phi.trans.insert33, align 8, !alias.scope !27239, !noalias !27242
  br label %bb.u

bb.u:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECs14kWLkQVSKO_14deltalake_core.exit._crit_edge, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.y = phi ptr [ %.pre34, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECs14kWLkQVSKO_14deltalake_core.exit._crit_edge ], [ %.sroa.4.0.copyload, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECs14kWLkQVSKO_14deltalake_core.exit.thread ]
  %i.z = phi ptr [ %.pre, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECs14kWLkQVSKO_14deltalake_core.exit._crit_edge ], [ %.sroa.3.0.copyload, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECs14kWLkQVSKO_14deltalake_core.exit.thread ]
  %i.aa = invoke noundef nonnull align 8 ptr @_RINvNtCsgO6CtM78C4N_7reqwest5error6decodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1h_6marker4SyncNtB1O_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.y)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

bb.v:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.431, ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert33, i64 16, i1 false), !alias.scope !27245
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.v, %bb.u
  %.sroa.026.0 = phi ptr [ %.pr, %bb.v ], [ null, %bb.u ]
  %.sroa.328.0 = phi ptr [ %.pre, %bb.v ], [ %i.aa, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4 ; 5 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.w

bb.w:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ae, %bb.y ], [ %i.ac, %bb.w ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #33
  br label %.body11

.body11:                                          ; preds = %bb.z, %bb.j
  %.pn7 = phi { ptr, i32 } [ %.pn4.pn, %bb.j ], [ %eh.lpad-body.i, %bb.z ]
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn7

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #33
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.026.0, ptr %i.af, align 8
  %.sroa.328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.328.0, ptr %.sroa.328.0..sroa_idx, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.431.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.431, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  br label %common.ret

bb.ab:                                            ; preds = %bb.j, %bb.n
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB4_8ReceiverNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE4recv0Cs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [3 x i8], align 4                 ; 8 uses
  %i.f = alloca [2 x i8], align 1                 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !range !3169, !noundef !4
  switch i8 %i.h, label %default.unreachable8 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.e

default.unreachable8:                             ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.e

.body:                                            ; preds = %bb.ac, %.body.i.i.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.ay, %bb.ac ]
  store i8 2, ptr %i.g, align 8
  resume { ptr, i32 } %.pn

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #41
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #41
  unreachable

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.val = phi ptr [ %.val.pre, %._crit_edge ], [ %i.i, %bb.b ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27261)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !27263
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load i8, ptr %i.l, align 8, !range !29, !noalias !27264, !noundef !4
  switch i8 %i.m, label %default.unreachable8 [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i.i.i
    i8 2, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i
  ], !prof !33

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.e
  %i.n = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.k)
          to label %.noexc unwind label %bb.ac    ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i.i.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i.i.i: ; preds = %.noexc, %bb.e
  %.sroa.0.0.i.i4.i.i.i.i = phi ptr [ %i.n, %.noexc ], [ %i.k, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i.i.i, i64 68
  %i.q = load i8, ptr %i.p, align 1, !range !34, !noalias !27267, !noundef !4 ; 2 uses
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i.i.i, i64 69 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !noalias !27267 ; 4 uses
  br i1 %i.r, label %bb.f, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.f:                                             ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add i8 %i.t, -1
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.g, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i.i.i
  %.sroa.33.0.i.i.i.i.i.i = phi i8 [ %i.u, %bb.g ], [ %i.t, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i.i.i ]
  store i8 %.sroa.33.0.i.i.i.i.i.i, ptr %i.s, align 1, !noalias !27267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27263
  store i24 0, ptr %i.e, align 4, !noalias !27263
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  invoke void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.v)
          to label %.noexc2 unwind label %bb.ac

.noexc2:                                          ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27263
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop14register_waker(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
end_hunk_8
begin_hunk_9_@_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame14execute_stream0Cs14kWLkQVSKO_14deltalake_core:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27495
  %.val6.i.i = load ptr, ptr %i.ce, align 16, !noalias !27495
  %.val7.i.i = load ptr, ptr %i.cf, align 8, !noalias !27495, !nonnull !4, !align !17, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val6.i.i, ptr nonnull %.val7.i.i) #40
          to label %.body.i.i unwind label %bb.ai, !noalias !27510

bb.aa:                                            ; preds = %bb.v, %._crit_edge.i.i
  %i.ca = phi ptr [ %i.ac, %._crit_edge.i.i ], [ %i.ar, %bb.v ] ; 6 uses
  %i.cb = phi ptr [ %i.ab, %._crit_edge.i.i ], [ %i.as, %bb.v ] ; 5 uses
  %i.cc = phi ptr [ %.phi.trans.insert.i, %._crit_edge.i.i ], [ %i.av, %bb.v ] ; 6 uses
  %i.cd = phi ptr [ %i.aq, %._crit_edge.i.i ], [ %i.aw, %bb.v ] ; 6 uses
  %.val1.i.i.i = phi ptr [ %.val1.i.pre.i.i, %._crit_edge.i.i ], [ %i.bo, %bb.v ]
  %.val.i.i.i = phi ptr [ %.val.i.pre.i.i, %._crit_edge.i.i ], [ %i.bn, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27495
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 1664 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27499)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1672 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !invariant.load !4, !noalias !27511, !nonnull !4
  invoke void %i.ch(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %.val.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #43
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.z, !noalias !27510, !inline_history !27512

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.aa
  %i.ci = load i64, ptr %i.a, align 8, !range !2144, !noalias !27495, !noundef !4 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 21
  br i1 %i.cj, label %.thread.i, label %bb.ab

.thread.i:                                        ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27495
  store i8 3, ptr %i.cc, align 16, !noalias !27495
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.9)
  br label %bb.ar

bb.ab:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !27495
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.837.0.copyload = load ptr, ptr %.sroa.837.0..sroa_idx, align 8, !noalias !27495
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.939, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.939.0..sroa_idx, i64 16, i1 false), !noalias !27495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27495
  %.val.i.i = load ptr, ptr %i.ce, align 16, !noalias !27495 ; 5 uses
  %.val5.i.i = load ptr, ptr %i.cf, align 8, !noalias !27495, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.ck = load ptr, ptr %.val5.i.i, align 8, !invariant.load !4, !noalias !27510 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.ck(ptr noundef nonnull %.val.i.i)
          to label %bb.ad unwind label %bb.af, !noalias !27510

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !range !1123, !invariant.load !4, !noalias !27510 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !range !947, !invariant.load !4, !noalias !27510
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.cm, i64 noundef range(i64 1, 536870913) %i.cp) #33, !noalias !27510
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.af:                                            ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !range !1123, !invariant.load !4, !noalias !27510 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.body.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cu = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !range !947, !invariant.load !4, !noalias !27510
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.cs, i64 noundef range(i64 1, 536870913) %i.cv) #33, !noalias !27510
  br label %.body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ae, %bb.ad
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.cd)
          to label %.thread unwind label %bb.ah, !noalias !27510

.thread:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.926.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.939, i64 16, i1 false), !noalias !27513
  store i8 1, ptr %i.cc, align 16, !noalias !27495
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.9)
  br label %bb.ak

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.ai:                                            ; preds = %bb.z, %.body.i.i
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !27510
  unreachable

bb.aj:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.926.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.sroa.9, i64 16, i1 false)
  store i8 1, ptr %i.av, align 16, !noalias !27495
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.9)
  %i.cy = icmp eq i64 %.sroa.8.i.i.sroa.0.0.copyload, 21
  br i1 %i.cy, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %.thread, %bb.aj
  %i.cz = phi ptr [ %i.ca, %.thread ], [ %i.ar, %bb.aj ] ; 4 uses
  %i.da = phi ptr [ %i.cb, %.thread ], [ %i.as, %bb.aj ] ; 4 uses
  %i.db = phi ptr [ %i.cd, %.thread ], [ %i.aw, %bb.aj ]
  %.sroa.837.048 = phi ptr [ %.sroa.837.0.copyload, %.thread ], [ %.sroa.8.i.i.sroa.8.0.copyload, %bb.aj ] ; 3 uses
  %.sroa.7.047 = phi ptr [ %.sroa.7.0.copyload, %.thread ], [ %.sroa.8.i.i.sroa.7.0.copyload, %bb.aj ] ; 3 uses
  %.sroa.034.046 = phi i64 [ %i.ci, %.thread ], [ %.sroa.8.i.i.sroa.0.0.copyload, %bb.aj ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.db)
          to label %bb.am unwind label %bb.al, !noalias !27494

bb.al:                                            ; preds = %bb.ak
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.am:                                            ; preds = %bb.ak
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27514)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 1328
  %.val.i7.i = load ptr, ptr %i.de, align 16, !alias.scope !27514, !noalias !27490, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(1680) %.val.i7.i)
          to label %bb.an unwind label %.body.i8.i, !noalias !27517

.body.i8.i:                                       ; preds = %bb.am
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i, i64 noundef 1680, i64 noundef 8) #33, !noalias !27517
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.dd) #40
          to label %.body10.i unwind label %bb.ao, !noalias !27494

bb.an:                                            ; preds = %bb.am
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i, i64 noundef 1680, i64 noundef 8) #33, !noalias !27517
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.dd)
          to label %bb.as unwind label %bb.ap, !noalias !27494

bb.ao:                                            ; preds = %.body.i8.i
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !27494
  unreachable

.body10.i:                                        ; preds = %bb.ap, %.body.i8.i, %bb.l
  %i.dh = phi ptr [ %i.aj, %bb.l ], [ %i.cz, %bb.ap ], [ %i.cz, %.body.i8.i ]
  %i.di = phi ptr [ %i.ak, %bb.l ], [ %i.da, %bb.ap ], [ %i.da, %.body.i8.i ]
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %bb.l ], [ %i.dj, %bb.ap ], [ %i.df, %.body.i8.i ]
  store i8 2, ptr %i.dh, align 16, !noalias !27490
  br label %.body11

bb.ap:                                            ; preds = %bb.an
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i

bb.aq:                                            ; preds = %.body.i, %bb.l
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !27494
  unreachable

common.ret:                                       ; preds = %bb.ay, %bb.ar
  %storemerge = phi i8 [ 1, %bb.ay ], [ 3, %bb.ar ]
  store i8 %storemerge, ptr %i.f, align 8
  ret void

bb.ar:                                            ; preds = %bb.aj, %.thread.i
  %i.dl = phi ptr [ %i.ar, %bb.aj ], [ %i.ca, %.thread.i ]
  store i8 3, ptr %i.dl, align 16, !noalias !27490
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.926.sroa.7)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.as:                                            ; preds = %bb.an
  store i8 1, ptr %i.cz, align 16, !noalias !27490
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.831, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.926.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.926.sroa.7)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.da)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.au:                                            ; preds = %bb.as
  %.not.i = icmp eq i64 %.sroa.034.046, 20
  br i1 %.not.i, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.047) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.837.048) ]
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 1737 ; 2 uses
  store i8 0, ptr %i.dn, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 1728
  %i.dp = load ptr, ptr %i.do, align 16, !nonnull !4, !noundef !4
  invoke void @_RNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan14execute_stream(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noundef nonnull %.sroa.7.047, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %.sroa.837.048, ptr noundef nonnull %i.dp)
          to label %bb.ax unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  store i8 0, ptr %i.dn, align 1
  br label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ax
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 1738
  store i8 0, ptr %i.dr, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  br label %common.ret

bb.az:                                            ; preds = %.body11, %bb.at, %bb.aw
  %.pn4.pn = phi { ptr, i32 } [ %i.dq, %bb.aw ], [ %i.dm, %bb.at ], [ %eh.lpad-body12, %.body11 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 1737
  %i.dt = load i8, ptr %i.ds, align 1, !range !34, !noundef !4
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.be, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit15

bb.ba:                                            ; preds = %bb.au
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.831, i64 16, i1 false)
  store i64 %.sroa.034.046, ptr %i.d, align 8, !alias.scope !27518
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.7.047, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !27518
  %.sroa.333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.837.048, ptr %.sroa.333.0..sroa_idx, align 8, !alias.scope !27518
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 1728 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27522)
  call void @llvm.experimental.noalias.scope.decl(metadata !27525)
  %i.dw = load ptr, ptr %i.dv, align 16, !alias.scope !27528, !nonnull !4, !noundef !4
  %i.dx = atomicrmw sub ptr %i.dw, i64 1 release, align 8, !noalias !27528
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dv) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit15

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ba, %bb.bb
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 1737
  store i8 0, ptr %i.ea, align 1
  br label %bb.ay

bb.bd:                                            ; preds = %bb.bf, %bb.bh, %.body11
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.be:                                            ; preds = %bb.az
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 1728 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27529)
  call void @llvm.experimental.noalias.scope.decl(metadata !27532)
  %i.ed = load ptr, ptr %i.ec, align 16, !alias.scope !27535, !nonnull !4, !noundef !4
  %i.ee = atomicrmw sub ptr %i.ed, i64 1 release, align 8, !noalias !27535
  %i.ef = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %bb.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit15

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ec) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit15 unwind label %bb.bd

bb.bg:                                            ; preds = %bb.bh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit15
  store i8 0, ptr %i.w, align 2
  store i8 2, ptr %i.f, align 8
  resume { ptr, i32 } %.pn7

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit15
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 336
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %i.eg) #40
          to label %bb.bg unwind label %bb.bd
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder4load0Bb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.sroa.7.i.i = alloca [80 x i8], align 16       ; 6 uses
  %.sroa.3.sroa.3.i.i = alloca [64 x i8], align 8 ; 7 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 9 uses
  %i.c = alloca [96 x i8], align 8                ; 13 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.9187.i = alloca [80 x i8], align 16      ; 10 uses
  %i.f = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.9160.i = alloca [80 x i8], align 16      ; 6 uses
  %i.g = alloca [88 x i8], align 8                ; 10 uses
  %i.h = alloca [96 x i8], align 16               ; 7 uses
  %i.i = alloca [96 x i8], align 16               ; 15 uses
  %i.j = alloca [128 x i8], align 8               ; 6 uses
  %i.k = alloca [128 x i8], align 8               ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 17 uses
  %i.m = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.3.sroa.2.i = alloca [64 x i8], align 8   ; 7 uses
  %.sroa.3.sroa.3.i = alloca [16 x i8], align 8   ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 9 uses
  %i.o = alloca [17 x i8], align 1                ; 5 uses
  %.sroa.14 = alloca [80 x i8], align 16          ; 4 uses
  %.sroa.15 = alloca [16 x i8], align 16          ; 2 uses
  %.sroa.1295 = alloca [80 x i8], align 16        ; 2 uses
  %.sroa.369.sroa.2 = alloca [80 x i8], align 8   ; 2 uses
  %i.p = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.3.sroa.2 = alloca [80 x i8], align 8     ; 2 uses
  %i.q = alloca [96 x i8], align 16               ; 10 uses
  %.sroa.6.sroa.9 = alloca [80 x i8], align 8     ; 4 uses
  %.sroa.7118 = alloca [16 x i8], align 8         ; 4 uses
  %i.r = alloca [128 x i8], align 16              ; 13 uses
  %i.s = alloca [336 x i8], align 8               ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 3 uses
  %i.u = load i8, ptr %i.t, align 8, !range !16510, !noundef !4
  switch i8 %i.u, label %default.unreachable177 [
    i8 0, label %bb.c
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.n
    i8 4, label %bb.ah
    i8 5, label %bb.ap
  ]

default.unreachable177:                           ; preds = %bb.ej, %bb.ap, %bb.n, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.f
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.s, ptr noundef nonnull align 8 dereferenceable(336) %1, i64 336, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  %.sroa.0.0.copyload = load i32, ptr %i.v, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 268
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 272
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder5build(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(336) %i.s)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !27536)
  %i.x = load i64, ptr %i.r, align 16, !range !3, !alias.scope !27539, !noalias !27536, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.6.sroa.8.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.6.sroa.8.0.copyload113 = load i64, ptr %.sroa.6.sroa.8.0..sroa_idx112, align 8, !alias.scope !27541
  %.sroa.6.sroa.9.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.sroa.9, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.6.sroa.9.0..sroa_idx114, i64 80, i1 false)
  %.sroa.6.sroa.10.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7118)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7118, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6.sroa.10.0..sroa_idx115, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ab = load <2 x i64>, ptr %i.z, align 8, !alias.scope !27541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store <2 x i64> %i.ab, ptr %i.aa, align 8
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i64 %.sroa.6.sroa.8.0.copyload113, ptr %.sroa.5117.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.sroa.9, i64 80, i1 false)
  %.sroa.7118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7118.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7118, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7118)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 464
  store ptr %i.aa, ptr %i.ac, align 8
  switch i32 %.sroa.0.0.copyload, label %bb.b [
    i32 0, label %.thread
    i32 1, label %bb.g
    i32 2, label %.thread178
  ]

.thread:                                          ; preds = %bb.f
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1336
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
end_hunk_9
begin_hunk_10_@_RNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_13EagerSnapshot7try_new0Ba_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.491, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.936.sroa.10)
  store i8 0, ptr %i.jj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.jt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit unwind label %bb.eb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit23: ; preds = %bb.ed, %bb.eb
  %.pn11 = phi { ptr, i32 } [ %i.ju, %bb.eb ], [ %.pn8.pn, %bb.ed ]
  store i8 2, ptr %i.ac, align 8
  resume { ptr, i32 } %.pn11

bb.eb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit, %bb.ea
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit23

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit, %bb.ea
  %.sroa.086.0 = phi i64 [ %.sroa.0101.0.i.i106, %bb.ea ], [ %i.ka, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit ]
  %.sroa.388.0 = phi ptr [ %.sroa.6.0.i.i105, %bb.ea ], [ %.sroa.388.0.copyload90, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit ]
  %.sroa.593.0 = phi ptr [ %.sroa.11108.0.i.i104, %bb.ea ], [ %.sroa.593.0.copyload95, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit ]
  %.sroa.696.0 = phi ptr [ %.sroa.12111.0.i.i103, %bb.ea ], [ %.sroa.696.0.copyload98, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit ]
  store i64 %.sroa.086.0, ptr %0, align 16
  %.sroa.388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.388.0, ptr %.sroa.388.0..sroa_idx, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.491.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.491, i64 64, i1 false)
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.593.0, ptr %.sroa.593.0..sroa_idx, align 16
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.696.0, ptr %.sroa.696.0..sroa_idx, align 8
  br label %common.ret

bb.ec:                                            ; preds = %bb.ed, %bb.eq, %bb.ee, %.body
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ed:                                            ; preds = %bb.eq, %.body25, %bb.n
  %.pn8.pn = phi { ptr, i32 } [ %.pn8, %bb.n ], [ %.pn6, %bb.eq ], [ %.pn6, %.body25 ]
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 193
  store i8 0, ptr %i.jw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.jx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit23 unwind label %bb.ec

bb.ee:                                            ; preds = %bb.ef
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_(ptr noundef nonnull align 8 %i.jz) #40
          to label %.body25 unwind label %bb.ec

bb.ef:                                            ; preds = %bb.l, %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  invoke fastcc void @_RNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_13EagerSnapshot21try_new_with_snapshot0Ba_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.aa, ptr noundef nonnull align 8 %i.jz, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.eg unwind label %bb.ee

bb.eg:                                            ; preds = %bb.ef
  %i.ka = load i64, ptr %i.aa, align 16, !range !1238, !noundef !4 ; 2 uses
  %i.kb = icmp eq i64 %i.ka, -9223372036854775710
  br i1 %i.kb, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %common.ret

bb.ei:                                            ; preds = %bb.eg
  %.sroa.388.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.388.0.copyload90 = load ptr, ptr %.sroa.388.0..sroa_idx89, align 8
  %.sroa.491.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.491, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.491.0..sroa_idx92, i64 64, i1 false)
  %.sroa.593.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %.sroa.593.0.copyload95 = load ptr, ptr %.sroa.593.0..sroa_idx94, align 16
  %.sroa.696.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %.sroa.696.0.copyload98 = load ptr, ptr %.sroa.696.0..sroa_idx97, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.kd = load i8, ptr %i.kc, align 8, !range !3169, !noundef !4
  switch i8 %i.kd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit [
    i8 0, label %bb.ej
    i8 3, label %bb.ek
  ]

common.ret.sink.split.i:                          ; preds = %bb.en, %bb.ej
  %.sink.i = phi ptr [ %i.ke, %bb.ej ], [ %i.ko, %bb.en ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit unwind label %bb.ep

bb.ej:                                            ; preds = %bb.ei
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29909)
  call void @llvm.experimental.noalias.scope.decl(metadata !29912)
  %i.kf = load ptr, ptr %i.ke, align 8, !alias.scope !29915, !nonnull !4, !noundef !4
  %i.kg = atomicrmw sub ptr %i.kf, i64 1 release, align 8, !noalias !29915
  %i.kh = icmp eq i64 %i.kg, 1
  br i1 %i.kh, label %common.ret.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit

bb.ek:                                            ; preds = %bb.ei
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 232
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEEB51_(ptr noalias noundef align 8 dereferenceable(40) %i.ki)
          to label %bb.en unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.kj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29916)
  call void @llvm.experimental.noalias.scope.decl(metadata !29919)
  %i.kl = load ptr, ptr %i.kk, align 8, !alias.scope !29922, !nonnull !4, !noundef !4
  %i.km = atomicrmw sub ptr %i.kl, i64 1 release, align 8, !noalias !29922
  %i.kn = icmp eq i64 %i.km, 1
  br i1 %i.kn, label %bb.em, label %.body25

bb.em:                                            ; preds = %bb.el
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kk) #42
          to label %.body25 unwind label %bb.eo

bb.en:                                            ; preds = %bb.ek
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29923)
  call void @llvm.experimental.noalias.scope.decl(metadata !29926)
  %i.kp = load ptr, ptr %i.ko, align 8, !alias.scope !29929, !nonnull !4, !noundef !4
  %i.kq = atomicrmw sub ptr %i.kp, i64 1 release, align 8, !noalias !29929
  %i.kr = icmp eq i64 %i.kq, 1
  br i1 %i.kr, label %common.ret.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit

bb.eo:                                            ; preds = %bb.em
  %i.ks = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ep:                                            ; preds = %common.ret.sink.split.i
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %.body25

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit: ; preds = %bb.en, %bb.ej, %bb.ei, %common.ret.sink.split.i
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 193
  store i8 0, ptr %i.ku, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.kv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit unwind label %bb.eb

bb.eq:                                            ; preds = %.body25
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotEBM_(ptr noalias noundef align 8 dereferenceable(88) %i.ab) #40
          to label %bb.ed unwind label %bb.ec
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29933)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !29935 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !29935 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !29935 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !29935 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !4
  %i.t = load i8, ptr %i.r, align 1, !noundef !4
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.09.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29933)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !29930, !noalias !29933
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !29933, !noalias !29930
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.029.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.030.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !29930, !noalias !29933
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !29933, !noalias !29930
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.09, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file0B9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.769.i = alloca [168 x i8], align 8       ; 6 uses
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.3.sroa.5.i = alloca [16 x i8], align 8   ; 6 uses
  %.sroa.549.i = alloca [128 x i8], align 8       ; 5 uses
  %i.j = alloca [168 x i8], align 8               ; 10 uses
  %i.k = alloca [168 x i8], align 8               ; 14 uses
  %.sroa.7 = alloca [168 x i8], align 8           ; 3 uses
  %i.l = alloca [208 x i8], align 16              ; 10 uses
  %i.m = alloca [816 x i8], align 8               ; 3 uses
  %i.n = alloca [776 x i8], align 8               ; 13 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [48 x i8], align 8                ; 10 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [48 x i8], align 8                ; 10 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [520 x i8], align 8               ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 3 uses
  %i.x = load i8, ptr %i.w, align 8, !range !16574, !noundef !4
  switch i8 %i.x, label %default.unreachable59 [
    i8 0, label %bb.d
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.b
    i8 4, label %bb.c
  ]

default.unreachable59:                            ; preds = %bb.ak, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  br label %bb.ak

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 612 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 611 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 609 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 610 ; 2 uses
  store i16 0, ptr %i.aa, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i8 1, ptr %i.y, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %i.v, ptr noundef nonnull align 8 dereferenceable(520) %1, i64 520, i1 false)
  store i8 1, ptr %i.z, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 520
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ae = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.af = icmp ult i64 %i.ae, 3
  br i1 %i.af, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.ag = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.ah = icmp ult i8 %i.ag, 3
  br i1 %i.ah, label %bb.h, label %bb.f, !prof !25908

bb.f:                                             ; preds = %bb.e
  %i.ai = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file010___CALLSITE) #42
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.h:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i8 [ %i.ag, %bb.e ], [ %i.ai, %bb.f ] ; 2 uses
  %i.ak = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.ak, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr @_RNvNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.am = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.al, i8 noundef %.sroa.0.0.i)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.k:                                             ; preds = %bb.i
  br i1 %i.am, label %bb.s, label %bb.n

bb.l:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.y

bb.m:                                             ; preds = %bb.n, %bb.q
  store i8 1, ptr %i.aa, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.v

bb.n:                                             ; preds = %bb.d, %bb.k, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ap = load ptr, ptr @_RNvNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer19upload_parquet_file010___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  store i64 2, ptr %i.r, align 8, !alias.scope !29936, !noalias !29939
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !29936, !noalias !29939
  %i.ar = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.ar, 0
  br i1 %.not, label %bb.o, label %bb.m
end_hunk_10
begin_hunk_11_@_RNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core12data_catalog7storageNtB7_21ListingSchemaProviderNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProvider5table0Bb_:bb.a
bb.ac:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @268) #41
  unreachable

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @268) #41
  unreachable

bb.ae:                                            ; preds = %bb.af
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvCs14kWLkQVSKO_14deltalake_core31open_table_with_storage_options0EBK_(ptr noundef nonnull align 16 %i.as) #40
          to label %bb.aa unwind label %bb.w

bb.af:                                            ; preds = %bb.c, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  invoke fastcc void @_RNCNvCs14kWLkQVSKO_14deltalake_core31open_table_with_storage_options0B3_(ptr noalias noundef align 16 captures(none) dereferenceable(128) %i.f, ptr noundef nonnull align 16 %i.as, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.ag unwind label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %i.at = load i64, ptr %i.f, align 16, !range !48, !noundef !4 ; 2 uses
  %i.au = icmp eq i64 %i.at, 2
  br i1 %i.au, label %bb.ah, label %bb.ai

common.ret:                                       ; preds = %bb.bg, %bb.aw, %bb.ah
  %.sink = phi i8 [ 1, %bb.bg ], [ 4, %bb.aw ], [ 3, %bb.ah ]
  store i8 %.sink, ptr %i.n, align 1
  ret void

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 21, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.038)
  br label %common.ret

bb.ai:                                            ; preds = %bb.ag
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.2.0..sroa_idx, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvCs14kWLkQVSKO_14deltalake_core31open_table_with_storage_options0EBK_(ptr noundef nonnull align 16 %i.as)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ak:                                            ; preds = %bb.ai
  %i.aw = trunc nuw i64 %i.at to i1
  br i1 %i.aw, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %.sroa.2.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.2.16..sroa_idx, i64 96, i1 false)
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB4_6errors15DeltaTableErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtB7_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE13from_residualB4Q_.exit26 unwind label %bb.aj

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtB7_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE13from_residualB4Q_.exit26: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.z

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.as, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.2, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.038)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtNtB9_5table10DeltaTable14table_provider(ptr noalias noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.as)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ay = invoke { ptr, ptr } @_RNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB5_20TableProviderBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.e)
          to label %bb.ar unwind label %bb.aq     ; 2 uses

bb.ap:                                            ; preds = %bb.aq, %bb.an
  %.pn8 = phi { ptr, i32 } [ %i.az, %bb.aq ], [ %i.ax, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.body28

bb.aq:                                            ; preds = %bb.ao
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ar:                                            ; preds = %bb.ao
  %i.ba = extractvalue { ptr, ptr } %i.ay, 0      ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %i.ay, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 248
  store ptr %i.ba, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %i.bb, ptr %i.bd, align 16
  br label %bb.av

.body28:                                          ; preds = %bb.bc, %bb.bb, %bb.au, %bb.ap
  %.pn11 = phi { ptr, i32 } [ %.pn8, %bb.ap ], [ %i.bj, %bb.au ], [ %i.bw, %bb.bb ], [ %i.bw, %bb.bc ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEBK_(ptr noalias noundef align 8 dereferenceable(120) %i.be) #40
          to label %bb.at unwind label %bb.w

bb.as:                                            ; preds = %bb.bh, %bb.z
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 0, ptr %i.bf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bg

bb.at:                                            ; preds = %bb.be, %.body28, %bb.aa
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aa ], [ %i.ce, %bb.be ], [ %.pn11, %.body28 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8, !range !34, !noundef !4
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.bj, label %bb.bi

bb.au:                                            ; preds = %bb.av
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val20 = load ptr, ptr %i.bk, align 8
  %.val21 = load ptr, ptr %i.bl, align 16, !nonnull !4, !align !17, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val20, ptr nonnull %.val21) #40
          to label %.body28 unwind label %bb.w

bb.av:                                            ; preds = %bb.d, %bb.ar
  %.val1.i = phi ptr [ %.val1.i.pre, %bb.d ], [ %i.bb, %bb.ar ]
  %.val.i = phi ptr [ %.val.i.pre, %bb.d ], [ %i.ba, %bb.ar ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30853)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !invariant.load !4, !noalias !30886, !nonnull !4
  invoke void %i.bn(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #43
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.au, !inline_history !30887

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.av
  %i.bo = load i64, ptr %i.d, align 8, !range !2144, !noundef !4 ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 21
  br i1 %i.bp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 21, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %common.ret

bb.ax:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %i.bk, align 8            ; 5 uses
  %.val19 = load ptr, ptr %i.bl, align 16, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.bq = load ptr, ptr %.val19, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bq(ptr noundef nonnull %.val)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.br = getelementptr inbounds nuw i8, ptr %.val19, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bu = getelementptr inbounds nuw i8, ptr %.val19, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !range !947, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bs, i64 noundef range(i64 1, 536870913) %i.bv) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.bb:                                            ; preds = %bb.ay
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val19, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.body28, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ca = getelementptr inbounds nuw i8, ptr %.val19, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !947, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.by, i64 noundef range(i64 1, 536870913) %i.cb) #33
  br label %.body28

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ba, %bb.az
  %.not.i30 = icmp eq i64 %i.bo, 20
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  br i1 %.not.i30, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.3.0.copyload, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.sroa.5.0.copyload, ptr %i.cd, align 8
  store i64 20, ptr %i.m, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEBK_(ptr noalias noundef align 8 dereferenceable(120) %3)
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %bb.bh, %bb.bd
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.bf:                                            ; preds = %bb.bd
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 0, ptr %i.cf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.o, %bb.as, %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  br label %common.ret

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  store i64 %i.bo, ptr %i.m, align 8, !alias.scope !30888
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.251.0..sroa_idx, align 8, !alias.scope !30888
  %.sroa.352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.sroa.5.0.copyload, ptr %.sroa.352.0..sroa_idx, align 8, !alias.scope !30888
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEBK_(ptr noalias noundef align 8 dereferenceable(120) %3)
          to label %bb.as unwind label %bb.be

bb.bi:                                            ; preds = %bb.bj, %bb.at
  store i8 0, ptr %i.bg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ab

bb.bj:                                            ; preds = %bb.at
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #40
          to label %bb.bi unwind label %bb.w
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstoreNtB7_15DefaultLogStoreNtB9_8LogStore17read_commit_entry0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.9179.i.i = alloca [32 x i8], align 16    ; 7 uses
  %.sroa.10180.i.i = alloca [32 x i8], align 16   ; 6 uses
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 10 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [72 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 8 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.3.i.i = alloca [32 x i8], align 8        ; 6 uses
  %.sroa.5135.i.i = alloca [32 x i8], align 8     ; 5 uses
  %i.aa = alloca [72 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 15 uses
  %i.ac = alloca [192 x i8], align 8              ; 6 uses
  %.sroa.4.i = alloca [32 x i8], align 16         ; 7 uses
  %.sroa.5.i = alloca [32 x i8], align 16         ; 7 uses
  %.sroa.6.i = alloca [16 x i8], align 16         ; 6 uses
  %i.ad = alloca [96 x i8], align 16              ; 10 uses
  %i.ae = alloca [952 x i8], align 8              ; 7 uses
  %i.af = alloca [912 x i8], align 8              ; 13 uses
  %i.ag = alloca [24 x i8], align 8               ; 9 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [40 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 9 uses
  %i.am = alloca [8 x i8], align 8                ; 5 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.1019 = alloca [32 x i8], align 16        ; 2 uses
  %.sroa.1120 = alloca [32 x i8], align 16        ; 2 uses
  %.sroa.12 = alloca [16 x i8], align 16          ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1064 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 8, !range !3169, !noundef !4
  switch i8 %i.aq, label %default.unreachable34 [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.i
  ]

default.unreachable34:                            ; preds = %bb.bc, %bb.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ar = load ptr, ptr %1, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30892)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 312
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !30892, !nonnull !4, !noundef !4 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 320
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !30892, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.ay = atomicrmw add ptr %i.av, i64 1 monotonic, align 8, !noalias !30892
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.thread:                                          ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.av, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ax, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !947, !invariant.load !4
  %i.be = add nsw i64 %i.bd, -1
  %i.bf = and i64 %i.be, -16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bh, ptr %i.bi, align 8
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ax, ptr %.sroa.713.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.at, ptr %.sroa.814.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 106
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 106
  br label %bb.l

bb.d:                                             ; preds = %bb.ft, %.body
  %.pn2 = phi { ptr, i32 } [ %i.ng, %bb.ft ], [ %eh.lpad-body, %.body ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30895)
  call void @llvm.experimental.noalias.scope.decl(metadata !30898)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !30901, !nonnull !4, !noundef !4
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !30901
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bl) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.fx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.e, %bb.fw
  %.pn4 = phi { ptr, i32 } [ %i.nl, %bb.fw ], [ %.pn2, %bb.d ], [ %.pn2, %bb.e ]
  store i8 2, ptr %i.ap, align 8
  resume { ptr, i32 } %.pn4

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #41
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #41
  unreachable

bb.h:                                             ; preds = %bb.as, %bb.ar
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aq, %bb.h
  %i.bq = phi ptr [ %i.br, %bb.h ], [ %i.eg, %bb.aq ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.h ], [ %.pn24.i, %bb.aq ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0EBM_(ptr noundef nonnull align 8 %i.bq) #40
          to label %bb.d unwind label %bb.fx

bb.i:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 106
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !range !16574, !noalias !30902
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 106 ; 3 uses
  switch i8 %.pre, label %default.unreachable34 [
    i8 0, label %bb.l
    i8 1, label %bb.ar
    i8 2, label %bb.as
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !30902
  br label %bb.at

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !30902
  br label %bb.bc

bb.l:                                             ; preds = %.thread, %bb.i
  %i.bt = phi ptr [ %i.bk, %.thread ], [ %i.bs, %bb.i ] ; 6 uses
  %i.bu = phi ptr [ %i.bj, %.thread ], [ %i.br, %bb.i ] ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  store i8 0, ptr %i.bv, align 8, !noalias !30902
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 105 ; 3 uses
  store i8 0, ptr %i.bw, align 1, !noalias !30902
  %i.bx = load ptr, ptr %i.bu, align 8, !noalias !30902, !nonnull !4, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !30902, !nonnull !4, !align !17, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !30902, !noundef !4
  store i64 %i.cc, ptr %i.ca, align 8, !noalias !30902
end_hunk_11
begin_hunk_12_@_RNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstoreNtB7_15DefaultLogStoreNtB9_8LogStore18abort_commit_entry0Bb_:bb.a
bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30987)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !30990, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !30990, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !30990, !noundef !4
  invoke void %i.g(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.j, i64 noundef %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesEBK_.exit unwind label %.body, !inline_history !30991

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #39
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.m, %.body ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn

.body:                                            ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesEBK_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775781, ptr %0, align 8
  store i8 1, ptr %i.b, align 8
  ret void

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesEBK_(ptr noalias noundef align 8 dereferenceable(32) %i.a) #40
          to label %bb.e unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #41
  unreachable

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #41
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstoreNtB7_15DefaultLogStoreNtB9_8LogStore18get_latest_version0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [24 x i8], align 8                ; 13 uses
  %i.j = alloca [96 x i8], align 16               ; 9 uses
  %.sroa.6.i.i = alloca [80 x i8], align 16       ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4.i.sroa.4.i = alloca [16 x i8], align 8 ; 4 uses
  %i.n = alloca [3 x i8], align 4                 ; 4 uses
  %i.o = alloca [2 x i8], align 1                 ; 8 uses
  %i.p = alloca [544 x i8], align 16              ; 11 uses
  %.sroa.773.i = alloca [80 x i8], align 16       ; 3 uses
  %i.q = alloca [544 x i8], align 16              ; 11 uses
  %.sroa.9.i = alloca [80 x i8], align 16         ; 8 uses
  %.sroa.8.i = alloca [536 x i8], align 8         ; 6 uses
  %i.r = alloca [112 x i8], align 8               ; 7 uses
  %i.s = alloca [536 x i8], align 16              ; 11 uses
  %i.t = alloca [88 x i8], align 8                ; 7 uses
  %i.u = alloca [17 x i8], align 1                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 10 uses
  %i.w = alloca [16 x i8], align 16               ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.y = load i8, ptr %i.x, align 8, !range !3169, !noundef !4
  switch i8 %i.y, label %default.unreachable25 [
    i8 0, label %.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
  ]

default.unreachable25:                            ; preds = %bb.z, %bb.e, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.z = load ptr, ptr %1, align 8, !nonnull !4, !align !17, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.z, ptr %i.ac, align 8
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @277, ptr %.sroa.711.0..sroa_idx, align 8
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.ab, ptr %.sroa.812.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 57
  br label %bb.f

.body7:                                           ; preds = %.body
  store i8 2, ptr %i.x, align 8
  resume { ptr, i32 } %eh.lpad-body

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #41
  unreachable

bb.d:                                             ; preds = %bb.w, %bb.v
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.d
  %i.ag = phi ptr [ %i.ah, %bb.d ], [ %i.ck, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.d ], [ %.pn7.pn.pn.pn.pn.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version0EBM_(ptr noundef nonnull align 8 %i.ag) #40
          to label %.body7 unwind label %bb.co

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 57
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !3169, !noalias !30992
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30996)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  switch i8 %.pre, label %default.unreachable25 [
    i8 0, label %bb.f
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.g
  ]

bb.f:                                             ; preds = %.thread, %bb.e
  %i.aj = phi ptr [ %i.ae, %.thread ], [ %i.ai, %bb.e ] ; 5 uses
  %i.ak = phi ptr [ %i.ad, %.thread ], [ %i.ah, %bb.e ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  store i8 0, ptr %i.al, align 8, !noalias !30992
  %i.am = load ptr, ptr %i.ak, align 8, !noalias !30992, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !30992, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !30992, !noundef !4
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 0)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i64 %spec.select.i, ptr %i.ar, align 8, !noalias !30992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !30992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !30992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !30992
  store i8 0, ptr %i.u, align 1, !noalias !30992
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  %i.at = load ptr, ptr %i.as, align 8, !invariant.load !4, !noalias !30997, !nonnull !4
  %i.au = invoke { ptr, ptr } %i.at(ptr noundef nonnull %i.am, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.u)
          to label %bb.i unwind label %bb.h, !noalias !30997 ; 2 uses

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !30992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !30992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !30992
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val17.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !30992
  br label %bb.z

bb.h:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30992
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.i:                                             ; preds = %bb.f
  %i.aw = extractvalue { ptr, ptr } %i.au, 0      ; 3 uses
  %i.ax = extractvalue { ptr, ptr } %i.au, 1      ; 4 uses
  store ptr %i.aw, ptr %i.v, align 8, !noalias !30992
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !noalias !30992
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !947, !invariant.load !4, !noalias !30997
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30992
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !4, !noalias !30997, !nonnull !4
  %i.bh = invoke { ptr, ptr } %i.bg(ptr noundef nonnull %i.be)
          to label %bb.l unwind label %bb.k, !noalias !30997 ; 2 uses

bb.j:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.u, !noalias !30997

bb.k:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30998)
  call void @llvm.experimental.noalias.scope.decl(metadata !31001)
  %i.bj = load ptr, ptr %i.v, align 8, !alias.scope !31004, !noalias !30992, !nonnull !4, !noundef !4
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !31005
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.l:                                             ; preds = %bb.i
  %i.bm = extractvalue { ptr, ptr } %i.bh, 0
  %i.bn = extractvalue { ptr, ptr } %i.bh, 1
  store ptr %i.bm, ptr %i.w, align 16, !noalias !30992
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !noalias !30992
  store i8 1, ptr %i.al, align 8, !noalias !30992
  call void @llvm.experimental.noalias.scope.decl(metadata !31006)
  call void @llvm.experimental.noalias.scope.decl(metadata !31009)
  %i.bp = load ptr, ptr %i.v, align 8, !alias.scope !31012, !noalias !30992, !nonnull !4, !noundef !4
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 release, align 8, !noalias !31013
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit19.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit19.i unwind label %bb.n, !noalias !30997

bb.n:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !30992
  br label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit19.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !30992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !30992
  invoke void @_RNvYDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_NtB5_11LogStoreExt12log_root_urlB7_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.t, ptr noundef nonnull %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ao)
          to label %bb.q unwind label %bb.p, !noalias !30997

bb.o:                                             ; preds = %.body36.i, %bb.p
  %i.bt = phi ptr [ %i.fz, %.body36.i ], [ %i.aj, %bb.p ]
  %i.bu = phi ptr [ %i.ga, %.body36.i ], [ %i.ak, %bb.p ]
  %.pn7.pn.pn.pn.i = phi { ptr, i32 } [ %.pn7.pn.pn.i, %.body36.i ], [ %i.bv, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !30992
  br label %bb.t

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit19.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !30992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !30992
  store i8 0, ptr %i.al, align 8, !noalias !30992
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.bx = load <2 x ptr>, ptr %i.w, align 16, !noalias !30992
  store <2 x ptr> %i.bx, ptr %i.bw, align 8, !noalias !30992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.r, ptr noundef nonnull align 8 dereferenceable(88) %i.t, i64 88, i1 false), !noalias !30992
  %i.by = load i64, ptr %i.ar, align 8, !noalias !30992, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  store i64 %i.by, ptr %i.bz, align 8, !noalias !30992
  %i.ca = invoke noundef nonnull ptr @_RINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB4_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2r_5error5ErrorEEB4_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.r)
          to label %bb.s unwind label %bb.r, !noalias !30997 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !30992
  br label %.body36.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !30992
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.ca, ptr %i.cc, align 8, !noalias !30992
  br label %bb.z

bb.t:                                             ; preds = %bb.o, %bb.n
  %i.cd = phi ptr [ %i.bt, %bb.o ], [ %i.aj, %bb.n ] ; 3 uses
  %i.ce = phi ptr [ %i.bu, %bb.o ], [ %i.ak, %bb.n ] ; 3 uses
  %.pn7.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn7.pn.pn.pn.i, %bb.o ], [ %i.bs, %bb.n ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cg = load i8, ptr %i.cf, align 8, !range !34, !noalias !30992, !noundef !4
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.u:                                             ; preds = %bb.cl, %bb.y, %.body.i, %bb.j
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !30997
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.k, %bb.j, %bb.h
  %.pn.pn.i = phi { ptr, i32 } [ %i.av, %bb.h ], [ %i.bi, %bb.j ], [ %i.bi, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !30992
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.cl, %bb.ck, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.t
  %i.cj = phi ptr [ %i.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.cd, %bb.t ], [ %i.cd, %bb.cl ], [ %i.cd, %bb.ck ]
  %i.ck = phi ptr [ %i.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ce, %bb.t ], [ %i.ce, %bb.cl ], [ %i.ce, %bb.ck ]
  %.pn7.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.pn7.pn.pn.pn.pn.i, %bb.t ], [ %.pn7.pn.pn.pn.pn.i, %bb.cl ], [ %.pn7.pn.pn.pn.pn.i, %bb.ck ]
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.cl, align 8, !noalias !30992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !30992
  store i8 2, ptr %i.cj, align 1, !noalias !30992
  br label %.body

bb.v:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #41
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #41
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs14kWLkQVSKO_14deltalake_core.exit20.i.i, %bb.ah
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.am, %.thread.i.i, %bb.x
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cm, %bb.x ], [ %.pn4.i.i, %bb.am ], [ %.pn4.i.i, %.thread.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %.val14.i = load ptr, ptr %i.cq, align 8, !noalias !30992, !nonnull !4, !noundef !4 ; 2 uses
  %i.cn = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %.val14.i)
          to label %.noexc20.i unwind label %bb.u, !noalias !30997

.noexc20.i:                                       ; preds = %.body.i
  br i1 %i.cn, label %bb.y, label %.body36.i

bb.y:                                             ; preds = %.noexc20.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %.val14.i)
          to label %.body36.i unwind label %bb.u, !noalias !30997

bb.z:                                             ; preds = %bb.s, %bb.g
  %i.co = phi ptr [ %i.ai, %bb.g ], [ %i.aj, %bb.s ] ; 11 uses
  %i.cp = phi ptr [ %i.ah, %bb.g ], [ %i.ak, %bb.s ] ; 9 uses
  %.val17.i = phi ptr [ %.val17.pre.i, %bb.g ], [ %i.ca, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31014)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !31017
  store i64 3, ptr %i.p, align 16, !noalias !31017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !31017
  %i.cr = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  %i.ct = load i8, ptr %i.cs, align 8, !range !29, !noalias !31019, !noundef !4
  switch i8 %i.ct, label %default.unreachable25 [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i.i
    i8 2, label %.thread8.i.i
  ], !prof !33

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.z
  %i.cu = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.cr)
          to label %.noexc.i.i unwind label %.thread5.i.i, !noalias !31022 ; 2 uses

.noexc.i.i:                                       ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %.thread8.i.i, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i.i: ; preds = %.noexc.i.i, %bb.z
  %.sroa.0.0.i.i4.i.i.i = phi ptr [ %i.cu, %.noexc.i.i ], [ %i.cr, %bb.z ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i.i, i64 68
  %i.cx = load i8, ptr %i.cw, align 1, !range !34, !noalias !31023, !noundef !4 ; 2 uses
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i.i, i64 69 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !noalias !31023 ; 4 uses
  br i1 %i.cy, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i.i.i
  %.not.i.i.i.i.i = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
end_hunk_12
begin_hunk_13_@_RNCNvXsd_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtB7_17DeltaTableFactoryNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactory6create0B9_:bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iw)
          to label %bb.fe unwind label %bb.fd

bb.fd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit163
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iw)
          to label %.body166 unwind label %bb.ff

bb.fe:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit163
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEEECs14kWLkQVSKO_14deltalake_core.exit168 unwind label %bb.fg

bb.ff:                                            ; preds = %bb.fd
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.body166:                                         ; preds = %bb.fg, %bb.fd, %.body160
  %.pn31 = phi { ptr, i32 } [ %.pn29, %.body160 ], [ %i.ja, %bb.fg ], [ %i.ix, %bb.fd ]
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies11ConstraintsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iz) #40
          to label %.body171 unwind label %bb.s

bb.fg:                                            ; preds = %bb.fe
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %.body166

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEEECs14kWLkQVSKO_14deltalake_core.exit168: ; preds = %bb.fe
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintEECs14kWLkQVSKO_14deltalake_core.exit.i170 unwind label %bb.fh

bb.fh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEEECs14kWLkQVSKO_14deltalake_core.exit168
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jb)
          to label %.body171 unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintEECs14kWLkQVSKO_14deltalake_core.exit.i170: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEEECs14kWLkQVSKO_14deltalake_core.exit168
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies11ConstraintsECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.fj

.body171:                                         ; preds = %bb.fj, %bb.fh, %.body166
  %.pn33 = phi { ptr, i32 } [ %.pn31, %.body166 ], [ %i.jf, %bb.fj ], [ %i.jc, %bb.fh ]
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 416
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.je)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.s

bb.fj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintEECs14kWLkQVSKO_14deltalake_core.exit.i170
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.body171

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies11ConstraintsECs14kWLkQVSKO_14deltalake_core.exit174: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintEECs14kWLkQVSKO_14deltalake_core.exit.i170
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 416
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.jg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit178 unwind label %bb.de

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit178: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies11ConstraintsECs14kWLkQVSKO_14deltalake_core.exit174
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0215)
  br label %bb.ab

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.q, %bb.r
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.jh) #40
          to label %bb.fk unwind label %bb.s

bb.fk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 216
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ji) #40
          to label %bb.fl unwind label %bb.s

bb.fl:                                            ; preds = %bb.fk
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 240
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jj) #40
          to label %bb.fm unwind label %bb.s

bb.fm:                                            ; preds = %bb.fl
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 264
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.jk) #40
          to label %bb.fn unwind label %bb.s

bb.fn:                                            ; preds = %bb.fm
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 336
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jl) #40
          to label %bb.fo unwind label %bb.s

bb.fo:                                            ; preds = %bb.fn
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 288
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.jm) #40
          to label %bb.fp unwind label %bb.s

bb.fp:                                            ; preds = %bb.fo
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies11ConstraintsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jn) #40
          to label %bb.fq unwind label %bb.s

bb.fq:                                            ; preds = %bb.fp
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 416
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.jo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.s

bb.fr:                                            ; preds = %bb.u
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.u) #40
          to label %bb.ac unwind label %bb.s

bb.fs:                                            ; preds = %bb.ac, %bb.at, %bb.gg, %.body136
  %.pn71.pn.pn = phi { ptr, i32 } [ %.pn71.pn, %bb.at ], [ %i.kp, %bb.gg ], [ %.pn64, %.body136 ], [ %.pn40.pn, %bb.ac ]
  store i8 2, ptr %i.z, align 1
  resume { ptr, i32 } %.pn71.pn.pn

bb.ft:                                            ; preds = %bb.fu
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val76 = load ptr, ptr %i.jq, align 8
  %.val77 = load ptr, ptr %i.jr, align 16, !nonnull !4, !align !17, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val76, ptr nonnull %.val77) #40
          to label %.body182 unwind label %bb.s

bb.fu:                                            ; preds = %bb.c, %bb.ea
  %.val1.i = phi ptr [ %.val1.i.pre, %bb.c ], [ %i.hg, %bb.ea ]
  %.val.i = phi ptr [ %.val.i.pre, %bb.c ], [ %i.hf, %bb.ea ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31793)
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !invariant.load !4, !noalias !31897, !nonnull !4
  invoke void %i.jt(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.j, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #43
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ft, !inline_history !30887

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.fu
  %i.ju = load i64, ptr %i.j, align 8, !range !2144, !noundef !4 ; 3 uses
  %i.jv = icmp eq i64 %i.ju, 21
  br i1 %i.jv, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 21, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %common.ret

bb.fw:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5231.0.copyload = load ptr, ptr %.sroa.5231.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7232, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7232.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val = load ptr, ptr %i.jq, align 8            ; 5 uses
  %.val75 = load ptr, ptr %i.jr, align 16, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.jw = load ptr, ptr %.val75, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jw, null
  br i1 %.not.i.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.jw(ptr noundef nonnull %.val)
          to label %bb.fy unwind label %bb.ga

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.jx = getelementptr inbounds nuw i8, ptr %.val75, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ka = getelementptr inbounds nuw i8, ptr %.val75, i64 16
  %i.kb = load i64, ptr %i.ka, align 8, !range !947, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.jy, i64 noundef range(i64 1, 536870913) %i.kb) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.ga:                                            ; preds = %bb.fx
  %i.kc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.val75, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %.body182, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.kg = getelementptr inbounds nuw i8, ptr %.val75, i64 16
  %i.kh = load i64, ptr %i.kg, align 8, !range !947, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ke, i64 noundef range(i64 1, 536870913) %i.kh) #33
  br label %.body182

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.fz, %bb.fy
  %.not.i184 = icmp eq i64 %i.ju, 20
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  br i1 %.not.i184, label %bb.gc, label %bb.gi

bb.gc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5231.0.copyload) ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %.sroa.3.0.copyload, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %.sroa.5231.0.copyload, ptr %i.kj, align 8
  store i64 20, ptr %i.y, align 8
  store i8 0, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.kk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i186.invoke unwind label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.kk)
          to label %.body136 unwind label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i186.invoke: ; preds = %bb.gc, %bb.ef
  %i.kn = phi ptr [ %i.hn, %bb.ef ], [ %i.kk, %bb.gc ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.kn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.invoke unwind label %bb.gf

bb.gf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i186.invoke
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %.body136

bb.gg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.invoke
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.gh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.invoke, %bb.as, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  br label %common.ret

bb.gi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7232, i64 16, i1 false)
  store i64 %i.ju, ptr %i.y, align 8, !alias.scope !31898
  %.sroa.2234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.2234.0..sroa_idx, align 8, !alias.scope !31898
  %.sroa.3235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %.sroa.5231.0.copyload, ptr %.sroa.3235.0..sroa_idx, align 8, !alias.scope !31898
  store i8 0, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ef

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.invoke: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i186.invoke
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEBK_(ptr noalias noundef align 8 dereferenceable(120) %i.kq)
          to label %bb.gh unwind label %bb.gg

bb.gj:                                            ; preds = %bb.gk, %.body182
  store i8 0, ptr %i.hj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ei

bb.gk:                                            ; preds = %.body182
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(1680) %i.o) #40
          to label %bb.gj unwind label %bb.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB22_10get_ranges0Bd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.333.i = alloca [24 x i8], align 8        ; 7 uses
  %.sroa.534.i = alloca [40 x i8], align 8        ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.3.i = alloca [24 x i8], align 8          ; 7 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [112 x i8], align 8               ; 5 uses
  %i.f = alloca [136 x i8], align 8               ; 5 uses
  %i.g = alloca [136 x i8], align 8               ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.814 = alloca [24 x i8], align 8          ; 2 uses
  %.sroa.915 = alloca [40 x i8], align 8          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !range !3169, !noundef !4
  switch i8 %i.j, label %default.unreachable19 [
    i8 0, label %.thread
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable19:                            ; preds = %bb.e, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !nonnull !4, !align !17, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !align !17, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !17, !noundef !4
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.m, ptr %.sroa.79.0..sroa_idx, align 8
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.o, ptr %.sroa.810.0..sroa_idx, align 8
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.k, ptr %.sroa.911.0..sroa_idx, align 8
  %.sroa.1012.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.q, ptr %.sroa.1012.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 1048576, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 249
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.333.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.534.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 249
  br label %bb.f

bb.b:                                             ; preds = %.body, %bb.as
  %.pn4 = phi { ptr, i32 } [ %i.ck, %bb.as ], [ %.pn2, %.body ]
  store i8 2, ptr %i.i, align 8
  resume { ptr, i32 } %.pn4

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #41
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #41
  unreachable

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 249
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !3169, !noalias !31902
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.333.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.534.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 249 ; 2 uses
  switch i8 %.pre, label %default.unreachable19 [
    i8 0, label %bb.f
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.g
  ]

bb.f:                                             ; preds = %.thread, %bb.e
  %i.v = phi ptr [ %i.s, %.thread ], [ %i.u, %bb.e ] ; 3 uses
  %i.w = phi ptr [ %i.r, %.thread ], [ %i.t, %bb.e ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !noalias !31902, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !31902, !noundef !4 ; 2 uses
  store ptr %i.z, ptr %i.w, align 8, !noalias !31902
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.ab, ptr %i.ac, align 8, !noalias !31902
  store i8 1, ptr %i.x, align 8, !noalias !31902
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !noalias !31902
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ag = load i64, ptr %i.af, align 8, !noalias !31902, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke void @_RNvNtCsjyY8HP3IvQ6_12object_store4util12merge_ranges(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.z, i64 noundef %i.ab, i64 noundef %i.ag)
          to label %bb.i unwind label %bb.h, !noalias !31906

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !31902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %bb.t

bb.h:                                             ; preds = %.invoke.i, %bb.f
  %i.ai = phi ptr [ %i.az, %.invoke.i ], [ %i.v, %bb.f ]
  %i.aj = phi ptr [ %i.ba, %.invoke.i ], [ %i.w, %bb.f ]
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !31902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !31902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !31902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !31902
  %i.al = getelementptr i8, ptr %1, i64 96
  %.val.i = load ptr, ptr %i.al, align 8, !noalias !31902, !nonnull !4, !noundef !4 ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 104
  %.val15.i = load i64, ptr %i.am, align 8, !noalias !31902, !noundef !4
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.val15.i
  %i.ao = invoke { ptr, ptr } @_RINvNtNtCs8CRAYtH5WmW_12futures_util6stream4iter4iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtBY_5slice4iter4IterINtNtNtBY_3ops5range5RangeyEEEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %.val.i, ptr noundef nonnull %i.an)
          to label %bb.k unwind label %bb.j, !noalias !31906 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aq = extractvalue { ptr, ptr } %i.ao, 0
  %i.ar = extractvalue { ptr, ptr } %i.ao, 1
  store i8 0, ptr %i.x, align 8, !noalias !31902
  store ptr %i.aq, ptr %i.d, align 8, !alias.scope !31907, !noalias !31910
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !alias.scope !31907, !noalias !31910
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <2 x ptr> %i.ae, ptr %i.at, align 8, !alias.scope !31907, !noalias !31910
  invoke void @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1q_5slice4iter4IterINtNtNtB1q_3ops5range5RangeyEEEENCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB5d_10get_ranges00ENtB7_9StreamExt8bufferedB3o_(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, i64 noundef 10)
          to label %bb.n unwind label %bb.m, !noalias !31906

bb.l:                                             ; preds = %bb.m, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.ap, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31902
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31902
  invoke void @_RINvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtB8_3map3MapINtNtBa_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1R_5slice4iter4IterINtNtNtB1R_3ops5range5RangeyEEEENCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB5E_10get_ranges00EENtNtBa_10try_stream12TryStreamExt11try_collectINtNtB5a_3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEB3P_(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.e)
          to label %bb.q unwind label %bb.p, !noalias !31906

bb.o:                                             ; preds = %bb.p, %bb.l
  %.pn2.i = phi { ptr, i32 } [ %i.av, %bb.p ], [ %.pn.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !31902
  br label %.body.i

bb.p:                                             ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.f, i64 136, i1 false), !alias.scope !31913, !noalias !31902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !31902
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.aw, ptr noundef nonnull align 8 dereferenceable(136) %i.g, i64 136, i1 false), !noalias !31902
  br label %bb.t
end_hunk_13
begin_hunk_14_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1D_24TokioMultiThreadExecutorNtB1F_12TaskExecutor8block_onNCNvXs0_NtB1H_7parquetINtB3O_21DefaultParquetHandlerB2H_ENtB1L_14ParquetHandler18write_parquet_file0E0EENtB4_6Future4pollCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.i = alloca [224 x i8], align 8               ; 26 uses
  %i.j = alloca [96 x i8], align 16               ; 9 uses
  %.sroa.6.sroa.10.i.i = alloca [72 x i8], align 8 ; 7 uses
  %i.k = alloca [96 x i8], align 16               ; 7 uses
  %i.l = alloca [112 x i8], align 16              ; 11 uses
  %i.m = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.8.sroa.8.i.i = alloca [16 x i8], align 8 ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 17 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.325.i = alloca [16 x i8], align 8        ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [112 x i8], align 16              ; 10 uses
  %.sroa.4.i = alloca [72 x i8], align 8          ; 4 uses
  %.sroa.12.i = alloca [72 x i8], align 8         ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.325.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 944 ; 3 uses
  %i.s = load i8, ptr %i.r, align 16, !range !16574, !noalias !41883, !noundef !4
  switch i8 %i.s, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 960
  %.val12.pre.i = load ptr, ptr %.phi.trans.insert.i, align 16, !noalias !41883
  br label %bb.ff

default.unreachable:                              ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 945
  store i8 1, ptr %i.t, align 1, !noalias !41883
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 960
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(928) %i.v, ptr noundef nonnull align 16 dereferenceable(928) %i.u, i64 928, i1 false), !noalias !41883
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #41
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #41
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 960 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3274.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5275.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3256.sroa.2.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3209.sroa.2.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8190.sroa.9.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.10.i.i)
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 1648 ; 5 uses
  %i.y = load i8, ptr %i.x, align 16, !range !16510, !noalias !41886, !noundef !4
  switch i8 %i.y, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val, i64 1649 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 1656
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 1654 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val, i64 1655
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 1651
  store i64 65792, ptr %i.z, align 1, !noalias !41886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !41886
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !41886
  %i.ae = invoke { ptr, i64 } @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url4path(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(88) %i.w)
          to label %bb.k unwind label %bb.j, !noalias !41890 ; 2 uses

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !41886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !41886
  br label %bb.au

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !41886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !41886
  br label %bb.bk

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !41886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !41886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41886
  br label %bb.df

bb.j:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ag = extractvalue { ptr, i64 } %i.ae, 0
  %i.ah = extractvalue { ptr, i64 } %i.ae, 1
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path13from_url_pathReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ah)
          to label %bb.m unwind label %bb.l, !noalias !41890

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !41891)
  %i.aj = load i64, ptr %i.m, align 8, !range !21322, !alias.scope !41894, !noalias !41896, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aj, -9223372036854775802
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.8.sroa.0.0.copyload290.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !41897, !noalias !41886 ; 2 uses
  %.sroa.8.sroa.8.0..sroa_idx291.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.8.0..sroa_idx291.i.i, i64 16, i1 false), !alias.scope !41897, !noalias !41886
  br i1 %.not.i.i.i, label %bb.o, label %bb.ap

bb.n:                                             ; preds = %bb.l, %bb.j
  %.pn.i.i = phi { ptr, i32 } [ %i.af, %bb.j ], [ %i.ai, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.8.i.i)
  br label %.body127.i.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !41886
  %.sroa.4293.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4293.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.8.i.i, i64 16, i1 false), !noalias !41886
  store i8 1, ptr %i.z, align 1, !noalias !41886
  store ptr %.sroa.8.sroa.0.0.copyload290.i.i, ptr %i.n, align 8, !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !41886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !41886
  %i.al = getelementptr inbounds nuw i8, ptr %.0.val, i64 1048
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %bb.q unwind label %bb.p, !noalias !41890

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !41898)
  %i.an = load i64, ptr %i.k, align 16, !range !1118, !alias.scope !41901, !noalias !41903, !noundef !4
  %.not.i83.i.i = icmp eq i64 %i.an, -9223372036854775742
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  br i1 %.not.i83.i.i, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvMNtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB3_5Error7genericReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ao, ptr noalias noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 50)
          to label %bb.u unwind label %bb.t, !noalias !41890

bb.s:                                             ; preds = %bb.t, %bb.p
  %.pn2.i.i = phi { ptr, i32 } [ %i.ap, %bb.t ], [ %i.am, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !41886
  br label %bb.ao

bb.t:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !41886
  %.sroa.6.sroa.0.0.copyload160.i.i = load i64, ptr %i.ao, align 16, !alias.scope !41904, !noalias !41886
  %.sroa.6.sroa.8.0..sroa_idx163.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.6.sroa.8.0.copyload164.i.i = load ptr, ptr %.sroa.6.sroa.8.0..sroa_idx163.i.i, align 8, !alias.scope !41904, !noalias !41886
  %.sroa.6.sroa.9.0..sroa_idx167.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.6.sroa.9.0.copyload168.i.i = load ptr, ptr %.sroa.6.sroa.9.0..sroa_idx167.i.i, align 16, !alias.scope !41904, !noalias !41886
  %.sroa.6.sroa.10.0..sroa_idx170.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.10.0..sroa_idx170.i.i, i64 72, i1 false), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !41886
  br label %bb.am

bb.v:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ao, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.k, i64 96, i1 false), !alias.scope !41908, !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !41886
  %.sroa.6.sroa.0.0.copyload159.i.i = load i64, ptr %i.ao, align 16, !alias.scope !41904, !noalias !41886 ; 2 uses
  %.sroa.6.sroa.8.0..sroa_idx161.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.6.sroa.8.0.copyload162.i.i = load ptr, ptr %.sroa.6.sroa.8.0..sroa_idx161.i.i, align 8, !alias.scope !41904, !noalias !41886 ; 7 uses
  %.sroa.6.sroa.9.0..sroa_idx165.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.6.sroa.9.0.copyload166.i.i = load ptr, ptr %.sroa.6.sroa.9.0..sroa_idx165.i.i, align 16, !alias.scope !41904, !noalias !41886 ; 7 uses
  %.sroa.6.sroa.10.0..sroa_idx169.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.10.0..sroa_idx169.i.i, i64 72, i1 false), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !41886
  %.not.i85.i.i = icmp eq i64 %.sroa.6.sroa.0.0.copyload159.i.i, -9223372036854775743
  br i1 %.not.i85.i.i, label %bb.w, label %bb.am

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.8.0.copyload162.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.9.0.copyload166.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !41886
  store i8 0, ptr %i.aa, align 8, !noalias !41886
  invoke void @_RNvMs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_dataNtB5_15ArrowEngineData20try_from_engine_data(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.j, ptr noundef nonnull %.sroa.6.sroa.8.0.copyload162.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.6.sroa.9.0.copyload166.i.i)
          to label %bb.y unwind label %bb.x, !noalias !41890

bb.x:                                             ; preds = %bb.w
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !41886
  br label %bb.al

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !41909)
  %i.ar = load i64, ptr %i.j, align 16, !range !1237, !alias.scope !41912, !noalias !41914, !noundef !4 ; 2 uses
  %.not.i86.i.i = icmp eq i64 %i.ar, -9223372036854775743
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !41915, !noalias !41886 ; 3 uses
  br i1 %.not.i86.i.i, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !41886
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val, i64 1080
  store ptr %i.at, ptr %i.au, align 8, !noalias !41886
  store i8 0, ptr %i.ac, align 1, !noalias !41886
  %i.av = getelementptr inbounds nuw i8, ptr %.0.val, i64 1088 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false), !noalias !41890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !41886
  store i8 0, ptr %i.ad, align 1, !noalias !41886
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.val, i64 1064
  store i8 0, ptr %i.z, align 1, !noalias !41886
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !41886
  store i64 0, ptr %i.i, align 8, !alias.scope !41916, !noalias !41919
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 -9223372036854775808, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !41916, !noalias !41919
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 -9223372036854775807, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !41916, !noalias !41919
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !41916, !noalias !41919
  %.sroa.6.sroa.5.sroa.0.sroa.4.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.5.sroa.0.sroa.4.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !41916, !noalias !41919
  %.sroa.6.sroa.5.sroa.0.sroa.5.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.6.sroa.5.sroa.0.sroa.6.sroa.4.0..sroa.6.sroa.5.sroa.0.sroa.6.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5.sroa.0.sroa.5.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !41916, !noalias !41919
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.sroa.5.sroa.0.sroa.6.sroa.4.0..sroa.6.sroa.5.sroa.0.sroa.6.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !41916, !noalias !41919
  %.sroa.6.sroa.5.sroa.0.sroa.6.sroa.5.0..sroa.6.sroa.5.sroa.0.sroa.6.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %.sroa.6.sroa.5.sroa.5.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5.sroa.0.sroa.6.sroa.5.0..sroa.6.sroa.5.sroa.0.sroa.6.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !41916, !noalias !41919
  store i64 8192, ptr %.sroa.6.sroa.5.sroa.5.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !41916, !noalias !41919
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.ax = load <2 x ptr>, ptr %i.aw, align 8, !noalias !41886
  store <2 x ptr> %i.ax, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !41916, !noalias !41919
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  store i64 10485760, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !alias.scope !41916, !noalias !41919
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  store i64 8, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !alias.scope !41916, !noalias !41919
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  store ptr null, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !alias.scope !41916, !noalias !41919
  store i8 1, ptr %i.ab, align 2, !noalias !41886
  %i.ay = getelementptr i8, ptr %.0.val, i64 1112
  %.val82.i.i = load ptr, ptr %i.ay, align 8, !noalias !41886, !nonnull !4, !noundef !4 ; 2 uses
  %i.az = atomicrmw add ptr %.val82.i.i, i64 1 monotonic, align 8, !noalias !41890
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.aa, label %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit.i.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.trap()
  unreachable

_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit.i.i: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !41886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !41886
  store i8 0, ptr %i.ab, align 2, !noalias !41886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 8 dereferenceable(224) %i.i, i64 224, i1 false), !noalias !41886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !41886
  store i64 2, ptr %i.f, align 8, !noalias !41886
  invoke void @_RNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtB5_16AsyncArrowWriterNtNtB5_5store19ParquetObjectWriterE7try_newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([520 x i8]) align 8 captures(address) dereferenceable(520) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.g, ptr noundef nonnull %.val82.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(248) %i.f)
          to label %bb.ac unwind label %bb.ab, !noalias !41890

bb.ab:                                            ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !41886
  br label %bb.ag

bb.ac:                                            ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !41886
  call void @llvm.experimental.noalias.scope.decl(metadata !41922)
  %i.bc = load i64, ptr %i.h, align 8, !range !48, !alias.scope !41925, !noalias !41927, !noundef !4 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8190.sroa.0.0.copyload305.i.i = load i64, ptr %i.be, align 8, !alias.scope !41928, !noalias !41886 ; 2 uses
  %.sroa.8190.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.8190.sroa.8.0.copyload307.i.i = load ptr, ptr %.sroa.8190.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !41928, !noalias !41886 ; 2 uses
  %.sroa.8190.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8190.sroa.9.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8190.sroa.9.0..sroa_idx.i.i, i64 16, i1 false), !noalias !41886
  br i1 %i.bd, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.10192.0..sroa_idx193.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5196.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %.sroa.5196.i.i, ptr noundef nonnull align 8 dereferenceable(480) %.sroa.10192.0..sroa_idx193.i.i, i64 480, i1 false), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !41886
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.val, i64 1128 ; 2 uses
  store i64 %i.bc, ptr %i.bf, align 8, !noalias !41886
  %.sroa.4195.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 1136
  store i64 %.sroa.8190.sroa.0.0.copyload305.i.i, ptr %.sroa.4195.0..sroa_idx.i.i, align 16, !noalias !41886
  %.sroa.4195.sroa.4.0..sroa.4195.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 1144
  store ptr %.sroa.8190.sroa.8.0.copyload307.i.i, ptr %.sroa.4195.sroa.4.0..sroa.4195.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !41886
  %.sroa.4195.sroa.5.0..sroa.4195.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 1152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4195.sroa.5.0..sroa.4195.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8190.sroa.9.i.i, i64 16, i1 false), !noalias !41886
  %.sroa.5196.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 1168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(480) %.sroa.5196.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(480) %.sroa.5196.i.i, i64 480, i1 false), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5196.i.i)
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.val, i64 1664
  store ptr %i.bf, ptr %i.bg, align 16, !noalias !41886
  %.sroa.8206.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 1672
  store ptr %i.av, ptr %.sroa.8206.0..sroa_idx.i.i, align 8, !noalias !41886
  %.sroa.10207.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 1712
  store i8 0, ptr %.sroa.10207.0..sroa_idx.i.i, align 16, !noalias !41886
  br label %bb.au

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !41886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.30.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8190.sroa.9.i.i, i64 16, i1 false), !noalias !41886
  br label %bb.af

bb.af:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit116.i.i, %bb.ae
  %.sroa.0279.0.i.i = phi i64 [ -9223372036854775778, %bb.ae ], [ %.sroa.0279.5.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit116.i.i ]
  %.sroa.12280.0.i.i = phi i64 [ %.sroa.8190.sroa.0.0.copyload305.i.i, %bb.ae ], [ %.sroa.12280.5.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit116.i.i ]
  %.sroa.22.0.i.i = phi ptr [ %.sroa.8190.sroa.8.0.copyload307.i.i, %bb.ae ], [ %.sroa.22.5.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit116.i.i ]
  %.sroa.13.1.i.i = phi ptr [ %.sroa.6.sroa.9.0.copyload166.i.i, %bb.ae ], [ %.sroa.13.6.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit116.i.i ]
  %.sroa.0146.1.i.i = phi ptr [ %.sroa.6.sroa.8.0.copyload162.i.i, %bb.ae ], [ %.sroa.0146.6.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit116.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.val, i64 1654
  store i8 0, ptr %i.bh, align 2, !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !41886
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.val, i64 1088
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.bi)
          to label %bb.dw unwind label %bb.dq, !noalias !41890

bb.ag:                                            ; preds = %bb.do, %.body108.i.i, %bb.ab
  %.sroa.13.2.i.i = phi ptr [ %.sroa.13.14.i.i, %bb.do ], [ %.sroa.13.7.i.i, %.body108.i.i ], [ %.sroa.6.sroa.9.0.copyload166.i.i, %bb.ab ]
  %.sroa.0146.2.i.i = phi ptr [ %.sroa.0146.14.i.i, %bb.do ], [ %.sroa.0146.7.i.i, %.body108.i.i ], [ %.sroa.6.sroa.8.0.copyload162.i.i, %bb.ab ]
  %.pn42.pn.i.i = phi { ptr, i32 } [ %i.hd, %bb.do ], [ %.pn39.pn.i.i, %.body108.i.i ], [ %i.bb, %bb.ab ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.val, i64 1654 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 2, !range !34, !noalias !41886, !noundef !4
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.en, label %bb.ah

bb.ah:                                            ; preds = %bb.en, %bb.ag
  store i8 0, ptr %i.bj, align 2, !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !41886
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.val, i64 1088
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.bm) #40
          to label %bb.ai unwind label %bb.bj, !noalias !41890

bb.ai:                                            ; preds = %bb.dq, %bb.ah
  %.sroa.13.3.i.i = phi ptr [ %.sroa.13.15.i.i, %bb.dq ], [ %.sroa.13.2.i.i, %bb.ah ]
  %.sroa.0146.3.i.i = phi ptr [ %.sroa.0146.15.i.i, %bb.dq ], [ %.sroa.0146.2.i.i, %bb.ah ]
  %.pn46.i.i = phi { ptr, i32 } [ %i.hg, %bb.dq ], [ %.pn42.pn.i.i, %bb.ah ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.val, i64 1080 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.val, i64 1655
  %i.bp = load i8, ptr %i.bo, align 1, !range !34, !noalias !41886, !noundef !4
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.eo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit139.i.i

bb.aj:                                            ; preds = %bb.y
  %.sroa.10183.0..sroa_idx184.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.10183.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.10183.0..sroa_idx184.i.i, align 16, !alias.scope !41929, !noalias !41886
  %.sroa.10183.sroa.6.0..sroa.10183.0..sroa_idx184.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.30.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10183.sroa.6.0..sroa.10183.0..sroa_idx184.sroa_idx.i.i, i64 72, i1 false), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !41886
  %i.br = ptrtoint ptr %i.at to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.dw, %bb.aj
  %.sroa.0279.1.i.i = phi i64 [ %.sroa.0279.0.i.i, %bb.dw ], [ %i.ar, %bb.aj ]
  %.sroa.12280.1.i.i = phi i64 [ %.sroa.12280.0.i.i, %bb.dw ], [ %i.br, %bb.aj ]
  %.sroa.22.1.i.i = phi ptr [ %.sroa.22.0.i.i, %bb.dw ], [ %.sroa.10183.sroa.0.0.copyload.i.i, %bb.aj ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.val, i64 1655
  store i8 0, ptr %i.bs, align 1, !noalias !41886
  br label %bb.an

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit139.i.i, %bb.x
  %.sroa.13.4.i.i = phi ptr [ %.sroa.13.3.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit139.i.i ], [ %.sroa.6.sroa.9.0.copyload166.i.i, %bb.x ] ; 2 uses
  %.sroa.0146.4.i.i = phi ptr [ %.sroa.0146.3.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit139.i.i ], [ %.sroa.6.sroa.8.0.copyload162.i.i, %bb.x ]
  %.pn48.pn.i.i = phi { ptr, i32 } [ %.pn46.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit139.i.i ], [ %i.aq, %bb.x ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.val, i64 1655
  store i8 0, ptr %i.bt, align 1, !noalias !41886
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.val, i64 1656
  %i.bv = load i8, ptr %i.bu, align 8, !range !34, !noalias !41886, !noundef !4
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.ep, label %bb.ao

bb.am:                                            ; preds = %bb.v, %bb.u
  %.sroa.6.sroa.9.0321.i.i = phi ptr [ %.sroa.6.sroa.9.0.copyload168.i.i, %bb.u ], [ %.sroa.6.sroa.9.0.copyload166.i.i, %bb.v ]
  %.sroa.0279.2.i.i = phi i64 [ %.sroa.6.sroa.0.0.copyload160.i.i, %bb.u ], [ %.sroa.6.sroa.0.0.copyload159.i.i, %bb.v ]
end_hunk_14
begin_hunk_15_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1D_24TokioMultiThreadExecutorNtB1F_12TaskExecutor8block_onNCNvXs0_NtB1H_7parquetINtB3O_21DefaultParquetHandlerB2H_ENtB1L_14ParquetHandler18write_parquet_file0E0EENtB4_6Future4pollCs14kWLkQVSKO_14deltalake_core:bb.a

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !41886
  br label %.thread.i

bb.bo:                                            ; preds = %bb.bm
  %.sroa.3256.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3256.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.3256.0..sroa_idx.i.i, align 8, !noalias !41886
  %.sroa.3256.sroa.2.0..sroa.3256.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3256.sroa.2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3256.sroa.2.0..sroa.3256.0..sroa_idx.sroa_idx.i.i, i64 16, i1 false), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41886
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.val, i64 1760
  %i.dt = load i8, ptr %i.ds, align 16, !range !3169, !noalias !41886, !noundef !4
  %cond.i93.i.i = icmp eq i8 %i.dt, 3
  br i1 %cond.i93.i.i, label %bb.bp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit101.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.du = getelementptr inbounds nuw i8, ptr %.0.val, i64 1752
  %i.dv = load i8, ptr %i.du, align 8, !range !3169, !noalias !41886, !noundef !4
  %cond.i.i94.i.i = icmp eq i8 %i.dv, 3
  br i1 %cond.i.i94.i.i, label %bb.bq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit101.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.val, i64 1736
  %.val.i.i95.i.i = load ptr, ptr %i.dw, align 8, !noalias !41886 ; 5 uses
  %i.dx = getelementptr i8, ptr %.0.val, i64 1744
  %.val1.i.i96.i.i = load ptr, ptr %i.dx, align 16, !noalias !41886, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.dy = load ptr, ptr %.val1.i.i96.i.i, align 8, !invariant.load !4, !noalias !41890 ; 2 uses
  %.not.i.i.i.i97.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i97.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i95.i.i) ]
  invoke void %i.dy(ptr noundef nonnull %.val.i.i95.i.i)
          to label %bb.bs unwind label %bb.bu, !noalias !41890

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.dz = getelementptr inbounds nuw i8, ptr %.val1.i.i96.i.i, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !range !1123, !invariant.load !4, !noalias !41890 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit101.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ec = getelementptr inbounds nuw i8, ptr %.val1.i.i96.i.i, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !range !947, !invariant.load !4, !noalias !41890
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i95.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i95.i.i, i64 noundef range(i64 1, 0) %i.ea, i64 noundef range(i64 1, 536870913) %i.ed) #33, !noalias !41890
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit101.i.i

bb.bu:                                            ; preds = %bb.br
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.val1.i.i96.i.i, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !range !1123, !invariant.load !4, !noalias !41890 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %.body99.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ei = getelementptr inbounds nuw i8, ptr %.val1.i.i96.i.i, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !range !947, !invariant.load !4, !noalias !41890
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i95.i.i, i64 noundef range(i64 1, 0) %i.eg, i64 noundef range(i64 1, 536870913) %i.ej) #33, !noalias !41890
  br label %.body99.i.i

.body99.i.i:                                      ; preds = %bb.bv, %bb.bu, %bb.bl
  %.pn29.i.i = phi { ptr, i32 } [ %i.ee, %bb.bv ], [ %i.dp, %bb.bl ], [ %i.ee, %bb.bu ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.val, i64 1672
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.ek) #40
          to label %bb.bx unwind label %bb.bj, !noalias !41890

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit101.i.i: ; preds = %bb.bt, %bb.bs, %bb.bp, %bb.bo
  %.not.i102.i.i = icmp eq i64 %i.dq, 8
  br i1 %.not.i102.i.i, label %bb.bw, label %bb.db

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit101.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.0.val, i64 1672
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.el)
          to label %bb.ca unwind label %bb.by, !noalias !41890

bb.bx:                                            ; preds = %bb.by, %.body99.i.i
  %.pn31.i.i = phi { ptr, i32 } [ %i.eq, %bb.by ], [ %.pn29.i.i, %.body99.i.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %.0.val, i64 1664 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0.val, i64 1652
  %i.eo = load i8, ptr %i.en, align 4, !range !34, !noalias !41886, !noundef !4
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.dd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.by:                                            ; preds = %bb.db, %bb.bw
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.co
  %.sroa.0222.1.i.i = phi ptr [ %.sroa.0222.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.3214.0.copyload.i.i, %bb.co ]
  %.sroa.9223.1.i.i = phi ptr [ %.sroa.9223.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.4217.0.copyload.i.i, %bb.co ] ; 2 uses
  %.sroa.13.9.i.i = phi ptr [ %.sroa.13.8.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.13.5.i.i, %bb.co ]
  %.sroa.0146.9.i.i = phi ptr [ %.sroa.0146.8.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.0146.5.i.i, %bb.co ]
  %.pn33.pn.i.i = phi { ptr, i32 } [ %.pn31.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.fs, %bb.co ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0.val, i64 1652
  store i8 0, ptr %i.er, align 4, !noalias !41886
  %i.es = getelementptr inbounds nuw i8, ptr %.0.val, i64 1653 ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !range !34, !noalias !41886, !noundef !4
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.de, label %bb.da

bb.ca:                                            ; preds = %bb.bw
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.val, i64 1664
  %.val81.i.i = load ptr, ptr %i.ev, align 16, !noalias !41886, !nonnull !4, !noundef !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val81.i.i, i64 noundef 40, i64 noundef 8) #33, !noalias !41890
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.val, i64 1652
  store i8 0, ptr %i.ew, align 4, !noalias !41886
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.val, i64 1653
  store i8 0, ptr %i.ex, align 1, !noalias !41886
  br label %bb.bh

bb.cb:                                            ; preds = %bb.da, %bb.cc
  %.sroa.13.10.i.i = phi ptr [ %.sroa.13.9.i.i, %bb.da ], [ %.sroa.13.5.i.i, %bb.cc ]
  %.sroa.0146.10.i.i = phi ptr [ %.sroa.0146.9.i.i, %bb.da ], [ %.sroa.0146.5.i.i, %bb.cc ]
  %.pn36.pn.i.i = phi { ptr, i32 } [ %.pn33.pn.i.i, %bb.da ], [ %i.fa, %bb.cc ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.val, i64 1768
  %.val70.i.i = load ptr, ptr %i.ey, align 8, !noalias !41886
  %i.ez = getelementptr i8, ptr %.0.val, i64 1776
  %.val71.i.i = load ptr, ptr %i.ez, align 16, !noalias !41886, !nonnull !4, !align !17, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val70.i.i, ptr nonnull %.val71.i.i) #40
          to label %.body108.i.i unwind label %bb.bj, !noalias !41890

bb.cc:                                            ; preds = %bb.bh
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cd:                                            ; preds = %bb.bh
  %i.fb = load i64, ptr %i.dk, align 16, !range !1118, !noalias !41886, !noundef !4 ; 3 uses
  %.not15.i.i = icmp eq i64 %i.fb, -9223372036854775742
  br i1 %.not15.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.sroa.3214.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 1800
  %.sroa.3214.0.copyload.i.i = load ptr, ptr %.sroa.3214.0..sroa_idx.i.i, align 8, !noalias !41886 ; 5 uses
  %.sroa.4217.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 1808
  %.sroa.4217.0.copyload.i.i = load ptr, ptr %.sroa.4217.0..sroa_idx.i.i, align 16, !noalias !41886 ; 5 uses
  %.not.i105.i.i = icmp eq i64 %i.fb, -9223372036854775743
  br i1 %.not.i105.i.i, label %bb.cn, label %bb.ct

bb.cf:                                            ; preds = %bb.cd
  %.val68.i.i = load ptr, ptr %i.dj, align 8, !noalias !41886 ; 5 uses
  %i.fc = getelementptr i8, ptr %.0.val, i64 1776
  %.val69.i.i = load ptr, ptr %i.fc, align 16, !noalias !41886, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.fd = load ptr, ptr %.val69.i.i, align 8, !invariant.load !4, !noalias !41890 ; 2 uses
  %.not.i107.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i107.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68.i.i) ]
  invoke void %i.fd(ptr noundef nonnull %.val68.i.i)
          to label %bb.ch unwind label %bb.cj, !noalias !41890

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.fe = getelementptr inbounds nuw i8, ptr %.val69.i.i, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !range !1123, !invariant.load !4, !noalias !41890 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fh = getelementptr inbounds nuw i8, ptr %.val69.i.i, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !range !947, !invariant.load !4, !noalias !41890
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val68.i.i, i64 noundef range(i64 1, 0) %i.ff, i64 noundef range(i64 1, 536870913) %i.fi) #33, !noalias !41890
  br label %bb.cl

bb.cj:                                            ; preds = %bb.cg
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val69.i.i, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !range !1123, !invariant.load !4, !noalias !41890 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %.body108.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.fn = getelementptr inbounds nuw i8, ptr %.val69.i.i, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !range !947, !invariant.load !4, !noalias !41890
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val68.i.i, i64 noundef range(i64 1, 0) %i.fl, i64 noundef range(i64 1, 536870913) %i.fo) #33, !noalias !41890
  br label %.body108.i.i

bb.cl:                                            ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41886
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.val, i64 1128
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.val, i64 1664
  store ptr %i.fp, ptr %i.fq, align 16, !noalias !41886
  %.sroa.9271.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 1848
  store i8 0, ptr %.sroa.9271.0..sroa_idx.i.i, align 8, !noalias !41886
  br label %bb.df

bb.cm:                                            ; preds = %bb.dk, %bb.dg
  %.pn20.i.i = phi { ptr, i32 } [ %i.ha, %bb.dk ], [ %i.gx, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41886
  br label %.body108.i.i

bb.cn:                                            ; preds = %bb.ce
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3214.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4217.0.copyload.i.i) ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.val, i64 1653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !41886
  store i8 0, ptr %i.fr, align 1, !noalias !41886
  invoke void @_RNvMs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_dataNtB5_15ArrowEngineData20try_from_engine_data(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.d, ptr noundef nonnull %.sroa.3214.0.copyload.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.4217.0.copyload.i.i)
          to label %bb.cp unwind label %bb.co, !noalias !41890

bb.co:                                            ; preds = %bb.cn
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !41886
  br label %bb.bz

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.experimental.noalias.scope.decl(metadata !41930)
  %i.ft = load i64, ptr %i.d, align 16, !range !1237, !alias.scope !41933, !noalias !41935, !noundef !4 ; 2 uses
  %.not.i110.i.i = icmp eq i64 %i.ft, -9223372036854775743
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !41936, !noalias !41886 ; 3 uses
  br i1 %.not.i110.i.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !41886
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.val, i64 1652
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.val, i64 1664
  store ptr %i.fv, ptr %i.fx, align 16, !noalias !41886
  store i8 0, ptr %i.fw, align 4, !noalias !41886
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.val, i64 1672 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fy, ptr noundef nonnull align 8 dereferenceable(40) %i.fv, i64 40, i1 false), !noalias !41890
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.val, i64 1128
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.val, i64 1712
  store ptr %i.fz, ptr %i.ga, align 16, !noalias !41886
  %.sroa.8251.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 1720
  store ptr %i.fy, ptr %.sroa.8251.0..sroa_idx.i.i, align 8, !noalias !41886
  %.sroa.10253.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 1760
  store i8 0, ptr %.sroa.10253.0..sroa_idx.i.i, align 16, !noalias !41886
  br label %bb.bk

bb.cr:                                            ; preds = %bb.cp
  %.sroa.10236.0..sroa_idx237.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.10236.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.10236.0..sroa_idx237.i.i, align 16, !alias.scope !41937, !noalias !41886
  %.sroa.10236.sroa.6.0..sroa.10236.0..sroa_idx237.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.30.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10236.sroa.6.0..sroa.10236.0..sroa_idx237.sroa_idx.i.i, i64 72, i1 false), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !41886
  %i.gb = ptrtoint ptr %i.fv to i64
  br label %bb.cs

bb.cs:                                            ; preds = %bb.dc, %bb.cr
  %.sroa.0279.6.i.i = phi i64 [ -9223372036854775778, %bb.dc ], [ %i.ft, %bb.cr ]
  %.sroa.12280.6.i.i = phi i64 [ %i.dq, %bb.dc ], [ %i.gb, %bb.cr ]
  %.sroa.22.6.i.i = phi ptr [ %.sroa.3256.sroa.0.0.copyload.i.i, %bb.dc ], [ %.sroa.10236.sroa.0.0.copyload.i.i, %bb.cr ]
  %.sroa.13.12.i.i = phi ptr [ %.sroa.13.8.i.i, %bb.dc ], [ %.sroa.13.5.i.i, %bb.cr ]
  %.sroa.0146.12.i.i = phi ptr [ %.sroa.0146.8.i.i, %bb.dc ], [ %.sroa.0146.5.i.i, %bb.cr ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.val, i64 1652
  store i8 0, ptr %i.gc, align 4, !noalias !41886
  br label %bb.cu

bb.ct:                                            ; preds = %bb.ce
  %.sroa.5220.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 1816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.30.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5220.0..sroa_idx.i.i, i64 72, i1 false), !noalias !41886
  %i.gd = ptrtoint ptr %.sroa.3214.0.copyload.i.i to i64
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.sroa.0279.7.i.i = phi i64 [ %.sroa.0279.6.i.i, %bb.cs ], [ %i.fb, %bb.ct ] ; 2 uses
  %.sroa.12280.7.i.i = phi i64 [ %.sroa.12280.6.i.i, %bb.cs ], [ %i.gd, %bb.ct ] ; 2 uses
  %.sroa.22.7.i.i = phi ptr [ %.sroa.22.6.i.i, %bb.cs ], [ %.sroa.4217.0.copyload.i.i, %bb.ct ] ; 2 uses
  %.sroa.13.13.i.i = phi ptr [ %.sroa.13.12.i.i, %bb.cs ], [ %.sroa.13.5.i.i, %bb.ct ] ; 4 uses
  %.sroa.0146.13.i.i = phi ptr [ %.sroa.0146.12.i.i, %bb.cs ], [ %.sroa.0146.5.i.i, %bb.ct ] ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.val, i64 1653
  store i8 0, ptr %i.ge, align 1, !noalias !41886
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.val, i64 1768
  %.val66.i.i = load ptr, ptr %i.gf, align 8, !noalias !41886 ; 5 uses
  %i.gg = getelementptr i8, ptr %.0.val, i64 1776
  %.val67.i.i = load ptr, ptr %i.gg, align 16, !noalias !41886, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.gh = load ptr, ptr %.val67.i.i, align 8, !invariant.load !4, !noalias !41890 ; 2 uses
  %.not.i112.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i112.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val66.i.i) ]
  invoke void %i.gh(ptr noundef nonnull %.val66.i.i)
          to label %bb.cw unwind label %bb.cy, !noalias !41890

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.gi = getelementptr inbounds nuw i8, ptr %.val67.i.i, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !range !1123, !invariant.load !4, !noalias !41890 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit116.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.gl = getelementptr inbounds nuw i8, ptr %.val67.i.i, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !range !947, !invariant.load !4, !noalias !41890
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val66.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66.i.i, i64 noundef range(i64 1, 0) %i.gj, i64 noundef range(i64 1, 536870913) %i.gm) #33, !noalias !41890
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit116.i.i

bb.cy:                                            ; preds = %bb.cv
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.val67.i.i, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !range !1123, !invariant.load !4, !noalias !41890 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %.body108.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.gr = getelementptr inbounds nuw i8, ptr %.val67.i.i, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !range !947, !invariant.load !4, !noalias !41890
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66.i.i, i64 noundef range(i64 1, 0) %i.gp, i64 noundef range(i64 1, 536870913) %i.gs) #33, !noalias !41890
  br label %.body108.i.i

bb.da:                                            ; preds = %bb.de, %bb.bz
  store i8 0, ptr %i.es, align 1, !noalias !41886
  br label %bb.cb

bb.db:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs14kWLkQVSKO_14deltalake_core.exit101.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.30.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3256.sroa.2.i.i, i64 16, i1 false), !noalias !41886
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.val, i64 1672
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.gt)
          to label %bb.dc unwind label %bb.by, !noalias !41890

bb.dc:                                            ; preds = %bb.db
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.val, i64 1664
  %.val80.i.i = load ptr, ptr %i.gu, align 16, !noalias !41886, !nonnull !4, !noundef !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val80.i.i, i64 noundef 40, i64 noundef 8) #33, !noalias !41890
  br label %bb.cs

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.dd, %bb.bx
  %.val79.i.i = load ptr, ptr %i.em, align 16, !noalias !41886, !nonnull !4, !noundef !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val79.i.i, i64 noundef 40, i64 noundef 8) #33, !noalias !41890
  br label %bb.bz

bb.dd:                                            ; preds = %bb.bx
  %i.gv = load ptr, ptr %i.em, align 16, !noalias !41886, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.bj, !noalias !41890

bb.de:                                            ; preds = %bb.bz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9223.1.i.i) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.sroa.0222.1.i.i, ptr nonnull %.sroa.9223.1.i.i) #40
          to label %bb.da unwind label %bb.bj, !noalias !41890

bb.df:                                            ; preds = %bb.cl, %bb.i
  %.sroa.13.11.i.i = phi ptr [ %.sroa.13.5.i.i, %bb.cl ], [ undef, %bb.i ] ; 4 uses
  %.sroa.0146.11.i.i = phi ptr [ %.sroa.0146.5.i.i, %bb.cl ], [ undef, %bb.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41886
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.val, i64 1664 ; 3 uses
  invoke fastcc void @_RNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtB7_16AsyncArrowWriterNtNtB7_5store19ParquetObjectWriterE6finish0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.a, ptr noundef nonnull align 8 %i.gw, ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.dh unwind label %bb.dg, !noalias !41890

bb.dg:                                            ; preds = %bb.df
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41886
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE6finish0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.gw) #40
          to label %bb.cm unwind label %bb.bj, !noalias !41890

bb.dh:                                            ; preds = %bb.df
  %i.gy = load i64, ptr %i.a, align 8, !range !1700, !noalias !41886, !noundef !4 ; 3 uses
  %i.gz = icmp eq i64 %i.gy, -9223372036854775807
  br i1 %i.gz, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41886
  br label %.thread.i

bb.dj:                                            ; preds = %bb.dh
  %.sroa.3274.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3274.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.3274.0..sroa_idx.i.i, align 8, !noalias !41886 ; 2 uses
  %.sroa.3274.sroa.3.0..sroa.3274.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3274.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3274.sroa.3.0..sroa.3274.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !41886 ; 2 uses
  %.sroa.3274.sroa.5.0..sroa.3274.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3274.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3274.sroa.5.0..sroa.3274.0..sroa_idx.sroa_idx.i.i, i64 16, i1 false), !noalias !41886
  %.sroa.5275.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5275.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5275.0..sroa_idx.i.i, i64 128, i1 false), !noalias !41886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41886
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE6finish0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.gw)
          to label %bb.dl unwind label %bb.dk, !noalias !41890

bb.dk:                                            ; preds = %bb.dm, %bb.dj
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.dl:                                            ; preds = %bb.dj
  %i.hb = icmp eq i64 %i.gy, -9223372036854775808
  br i1 %i.hb, label %bb.dv, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %.sroa.5278.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5278.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5275.i.i, i64 128, i1 false), !noalias !41886
  %.sroa.4277.sroa.5.0..sroa.4277.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4277.sroa.5.0..sroa.4277.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3274.sroa.5.i.i, i64 16, i1 false), !noalias !41886
  store i64 %i.gy, ptr %i.b, align 8, !noalias !41886
  %.sroa.4277.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.3274.sroa.0.0.copyload.i.i, ptr %.sroa.4277.0..sroa_idx.i.i, align 8, !noalias !41886
  %.sroa.4277.sroa.4.0..sroa.4277.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.3274.sroa.3.0.copyload.i.i, ptr %.sroa.4277.sroa.4.0..sroa.4277.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !41886
end_hunk_15
