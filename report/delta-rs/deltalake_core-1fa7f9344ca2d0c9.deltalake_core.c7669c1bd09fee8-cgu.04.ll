Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.04?download=true
inline.NumInlined: 8498
inline.NumDeleted: 3151
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1P_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1P_IB1P_IB2a_INtNtNtB2e_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4C_4Scan18scan_metadata_fromB2X_E0ENCB4v_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6t_4Scan18scan_metadata_fromB29_E0ENCINvYNtNtB6t_10log_replay22ScanLogReplayProcessorNtNtB6v_10log_replay18LogReplayProcessor20process_actions_iterB24_E0ENCB7G_s_0EEENtNtNtB9_6traits8iterator8Iterator4nextB4I_:.peel.begin
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.peel

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.peel: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_3map3MapIB1t_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1t_IB1t_IB1O_INtNtNtB1S_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4g_4Scan18scan_metadata_fromB2B_E0ENCB49_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB67_4Scan18scan_metadata_fromB1N_E0ENCINvYNtNtB67_10log_replay22ScanLogReplayProcessorNtNtB69_10log_replay18LogReplayProcessor20process_actions_iterB1I_E0ENCB7k_s_0EINtNtB8_6result6ResultNtB67_12ScanMetadataNtNtB69_5error5ErrorENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB4m_.exit.thread25.i.peel, %.peel.begin
  %i.h = load i64, ptr %1, align 8, !range !31, !alias.scope !20285, !noundef !30
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1J_IB1J_IB24_INtNtNtB28_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4w_4Scan18scan_metadata_fromB2R_E0ENCB4p_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6n_4Scan18scan_metadata_fromB23_E0ENCINvYNtNtB6n_10log_replay22ScanLogReplayProcessorNtNtB6p_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCB7A_s_0EEEINtB5_8FuseImplBY_E4nextB4C_.exit.i.peel, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1J_IB1J_IB24_INtNtNtB28_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4w_4Scan18scan_metadata_fromB2R_E0ENCB4p_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6n_4Scan18scan_metadata_fromB23_E0ENCINvYNtNtB6n_10log_replay22ScanLogReplayProcessorNtNtB6p_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCB7A_s_0EEEINtB5_8FuseImplBY_E4nextB4C_.exit.thread.i

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1J_IB1J_IB24_INtNtNtB28_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4w_4Scan18scan_metadata_fromB2R_E0ENCB4p_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6n_4Scan18scan_metadata_fromB23_E0ENCINvYNtNtB6n_10log_replay22ScanLogReplayProcessorNtNtB6p_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCB7A_s_0EEEINtB5_8FuseImplBY_E4nextB4C_.exit.i.peel: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.peel
  %.sroa.0.0.copyload10.i.peel = load ptr, ptr %i.e, align 8, !alias.scope !20286 ; 3 uses
  store ptr null, ptr %i.e, align 8, !alias.scope !20287
  %.not1.i.peel = icmp eq ptr %.sroa.0.0.copyload10.i.peel, null
  br i1 %.not1.i.peel, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1J_IB1J_IB24_INtNtNtB28_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4w_4Scan18scan_metadata_fromB2R_E0ENCB4p_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6n_4Scan18scan_metadata_fromB23_E0ENCINvYNtNtB6n_10log_replay22ScanLogReplayProcessorNtNtB6p_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCB7A_s_0EEEINtB5_8FuseImplBY_E4nextB4C_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1J_IB1J_IB24_INtNtNtB28_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4w_4Scan18scan_metadata_fromB2R_E0ENCB4p_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6n_4Scan18scan_metadata_fromB23_E0ENCINvYNtNtB6n_10log_replay22ScanLogReplayProcessorNtNtB6p_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCB7A_s_0EEEINtB5_8FuseImplBY_E4nextB4C_.exit.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7.0..sroa_idx11.i, i64 168, i1 false), !noalias !20277
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1H_IB1H_IB23_INtNtNtB27_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4v_4Scan18scan_metadata_fromB2Q_E0ENCB4o_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6m_4Scan18scan_metadata_fromB22_E0ENCINvYNtNtB6m_10log_replay22ScanLogReplayProcessorNtNtB6o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCB7z_s_0EEEB4B_(ptr noalias noundef align 8 dereferenceable(176) %i.c)
          to label %.peel.next unwind label %.loopexit.split-lp, !noalias !20277

.peel.next:                                       ; preds = %bb.c, %bb.e
  %.sroa.0.0.copyload10.i.peel.sink = phi ptr [ %.sroa.0.0.copyload10.i, %bb.e ], [ %.sroa.0.0.copyload10.i.peel, %bb.c ]
  store ptr %.sroa.0.0.copyload10.i.peel.sink, ptr %i.c, align 8, !alias.scope !20278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5.0..sroa_idx16.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5.i, i64 168, i1 false), !noalias !20277
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !20288)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20289
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBO_IBO_IB12_INtNtNtB16_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB3s_4Scan18scan_metadata_fromB1N_E0ENCB3l_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB5j_4Scan18scan_metadata_fromB11_E0ENCINvYNtNtB5j_10log_replay22ScanLogReplayProcessorNtNtB5l_10log_replay18LogReplayProcessor20process_actions_iterBX_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB8o_4find5checkINtNtBc_6result6ResultNtB5j_12ScanMetadataNtNtB5l_5error5ErrorEQNCB6w_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9s_EEB3y_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(176) %i.c, ptr noalias noundef nonnull %i.d), !noalias !20282
  %i.j = load i64, ptr %i.b, align 16, !range !56, !noalias !20289, !noundef !30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.j, -9223372036854775742
  br i1 %.not.i.i.i.i.i, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.peel.next
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20289
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1H_IB1H_IB23_INtNtNtB27_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4v_4Scan18scan_metadata_fromB2Q_E0ENCB4o_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6m_4Scan18scan_metadata_fromB22_E0ENCINvYNtNtB6m_10log_replay22ScanLogReplayProcessorNtNtB6o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCB7z_s_0EEEB4B_(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20283

common.resume.i:                                  ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i7.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i7.i ], [ %lpad.phi7, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.c, align 8, !alias.scope !20279
  br label %common.resume.i

.loopexit:                                        ; preds = %.peel.next, %bb.a
  %.lcssa = phi i64 [ %i.g, %bb.a ], [ %i.j, %.peel.next ]
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.737.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.737.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx.i, i64 88, i1 false), !noalias !20278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20289
  store i64 %.lcssa, ptr %0, align 16, !alias.scope !20277
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1W_IB1W_IB2h_INtNtNtB2l_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4J_4Scan18scan_metadata_fromB34_E0ENCB4C_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6A_4Scan18scan_metadata_fromB2g_E0ENCINvYNtNtB6A_10log_replay22ScanLogReplayProcessorNtNtB6C_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCB7N_s_0EEB1z_ENtNtNtB9_6traits8iterator8Iterator4nextB4P_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d
  store ptr null, ptr %i.c, align 8, !alias.scope !20279
  call void @llvm.experimental.noalias.scope.decl(metadata !20290)
  %i.k = load i64, ptr %1, align 8, !range !31, !alias.scope !20285, !noundef !30
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1J_IB1J_IB24_INtNtNtB28_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4w_4Scan18scan_metadata_fromB2R_E0ENCB4p_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6n_4Scan18scan_metadata_fromB23_E0ENCINvYNtNtB6n_10log_replay22ScanLogReplayProcessorNtNtB6p_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCB7A_s_0EEEINtB5_8FuseImplBY_E4nextB4C_.exit.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1J_IB1J_IB24_INtNtNtB28_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4w_4Scan18scan_metadata_fromB2R_E0ENCB4p_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6n_4Scan18scan_metadata_fromB23_E0ENCINvYNtNtB6n_10log_replay22ScanLogReplayProcessorNtNtB6p_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCB7A_s_0EEEINtB5_8FuseImplBY_E4nextB4C_.exit.thread.i

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1J_IB1J_IB24_INtNtNtB28_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4w_4Scan18scan_metadata_fromB2R_E0ENCB4p_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6n_4Scan18scan_metadata_fromB23_E0ENCINvYNtNtB6n_10log_replay22ScanLogReplayProcessorNtNtB6p_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCB7A_s_0EEEINtB5_8FuseImplBY_E4nextB4C_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !20291)
  %.sroa.0.0.copyload10.i = load ptr, ptr %i.e, align 8, !alias.scope !20292 ; 3 uses
  store ptr null, ptr %i.e, align 8, !alias.scope !20287
  %.not1.i = icmp eq ptr %.sroa.0.0.copyload10.i, null
  br i1 %.not1.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1J_IB1J_IB24_INtNtNtB28_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4w_4Scan18scan_metadata_fromB2R_E0ENCB4p_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6n_4Scan18scan_metadata_fromB23_E0ENCINvYNtNtB6n_10log_replay22ScanLogReplayProcessorNtNtB6p_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCB7A_s_0EEEINtB5_8FuseImplBY_E4nextB4C_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1J_IB1J_IB24_INtNtNtB28_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4w_4Scan18scan_metadata_fromB2R_E0ENCB4p_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6n_4Scan18scan_metadata_fromB23_E0ENCINvYNtNtB6n_10log_replay22ScanLogReplayProcessorNtNtB6p_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCB7A_s_0EEEINtB5_8FuseImplBY_E4nextB4C_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7.0..sroa_idx11.i, i64 168, i1 false), !noalias !20277
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1H_IB1H_IB23_INtNtNtB27_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4v_4Scan18scan_metadata_fromB2Q_E0ENCB4o_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6m_4Scan18scan_metadata_fromB22_E0ENCINvYNtNtB6m_10log_replay22ScanLogReplayProcessorNtNtB6o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCB7z_s_0EEEB4B_(ptr noalias noundef align 8 dereferenceable(176) %i.c)
          to label %.peel.next unwind label %.loopexit4, !noalias !20277, !llvm.loop !20263

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1J_IB1J_IB24_INtNtNtB28_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4w_4Scan18scan_metadata_fromB2R_E0ENCB4p_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6n_4Scan18scan_metadata_fromB23_E0ENCINvYNtNtB6n_10log_replay22ScanLogReplayProcessorNtNtB6p_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCB7A_s_0EEEINtB5_8FuseImplBY_E4nextB4C_.exit.thread.i: ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1J_IB1J_IB24_INtNtNtB28_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4w_4Scan18scan_metadata_fromB2R_E0ENCB4p_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6n_4Scan18scan_metadata_fromB23_E0ENCINvYNtNtB6n_10log_replay22ScanLogReplayProcessorNtNtB6p_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCB7A_s_0EEEINtB5_8FuseImplBY_E4nextB4C_.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1J_IB1J_IB24_INtNtNtB28_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4w_4Scan18scan_metadata_fromB2R_E0ENCB4p_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6n_4Scan18scan_metadata_fromB23_E0ENCINvYNtNtB6n_10log_replay22ScanLogReplayProcessorNtNtB6p_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCB7A_s_0EEEINtB5_8FuseImplBY_E4nextB4C_.exit.i.peel, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.peel
  call void @llvm.experimental.noalias.scope.decl(metadata !20293)
  call void @llvm.experimental.noalias.scope.decl(metadata !20294)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.622.i)
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !20295, !noundef !30
  %.not.i2.i = icmp eq ptr %i.m, null
  br i1 %.not.i2.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1J_IB1J_IB24_INtNtNtB28_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4w_4Scan18scan_metadata_fromB2R_E0ENCB4p_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6n_4Scan18scan_metadata_fromB23_E0ENCINvYNtNtB6n_10log_replay22ScanLogReplayProcessorNtNtB6p_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCB7A_s_0EEEINtB5_8FuseImplBY_E4nextB4C_.exit.thread.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20296
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBO_IBO_IB12_INtNtNtB16_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB3s_4Scan18scan_metadata_fromB1N_E0ENCB3l_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB5j_4Scan18scan_metadata_fromB11_E0ENCINvYNtNtB5j_10log_replay22ScanLogReplayProcessorNtNtB5l_10log_replay18LogReplayProcessor20process_actions_iterBX_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB8o_4find5checkINtNtBc_6result6ResultNtB5j_12ScanMetadataNtNtB5l_5error5ErrorEQNCB6w_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9s_EEB3y_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(176) %i.d, ptr noalias noundef nonnull %i.n), !noalias !20297
  %i.o = load i64, ptr %i.a, align 16, !range !56, !noalias !20296, !noundef !30 ; 2 uses
  %.not.i.i.i.i3.i = icmp eq i64 %i.o, -9223372036854775742
  br i1 %.not.i.i.i.i3.i, label %bb.i, label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB10_IB10_IB1l_INtNtNtB1p_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB3N_4Scan18scan_metadata_fromB28_E0ENCB3G_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB5E_4Scan18scan_metadata_fromB1k_E0ENCINvYNtNtB5E_10log_replay22ScanLogReplayProcessorNtNtB5G_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCB6R_s_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB3T_.exit.i4.i

_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB10_IB10_IB1l_INtNtNtB1p_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB3N_4Scan18scan_metadata_fromB28_E0ENCB3G_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB5E_4Scan18scan_metadata_fromB1k_E0ENCINvYNtNtB5E_10log_replay22ScanLogReplayProcessorNtNtB5G_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCB6R_s_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB3T_.exit.i4.i: ; preds = %bb.f
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.622.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.622.0..sroa_idx.i, i64 88, i1 false), !noalias !20298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20296
  br label %bb.h

bb.g:                                             ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1J_IB1J_IB24_INtNtNtB28_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4w_4Scan18scan_metadata_fromB2R_E0ENCB4p_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6n_4Scan18scan_metadata_fromB23_E0ENCINvYNtNtB6n_10log_replay22ScanLogReplayProcessorNtNtB6p_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCB7A_s_0EEEINtB5_8FuseImplBY_E4nextB4C_.exit.thread.i
  store i64 -9223372036854775742, ptr %0, align 16, !alias.scope !20299
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_3map3MapIB1t_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1t_IB1t_IB1O_INtNtNtB1S_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4g_4Scan18scan_metadata_fromB2B_E0ENCB49_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB67_4Scan18scan_metadata_fromB1N_E0ENCINvYNtNtB67_10log_replay22ScanLogReplayProcessorNtNtB69_10log_replay18LogReplayProcessor20process_actions_iterB1I_E0ENCB7k_s_0EINtNtB8_6result6ResultNtB67_12ScanMetadataNtNtB69_5error5ErrorENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB4m_.exit9.i

bb.h:                                             ; preds = %bb.j, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB10_IB10_IB1l_INtNtNtB1p_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB3N_4Scan18scan_metadata_fromB28_E0ENCB3G_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB5E_4Scan18scan_metadata_fromB1k_E0ENCINvYNtNtB5E_10log_replay22ScanLogReplayProcessorNtNtB5G_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCB6R_s_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB3T_.exit.i4.i
  store i64 %i.o, ptr %0, align 16, !alias.scope !20277, !noalias !20294
  %.sroa.622.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.622.0..sroa_idx23.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.622.i, i64 88, i1 false), !noalias !20295
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_3map3MapIB1t_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1t_IB1t_IB1O_INtNtNtB1S_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4g_4Scan18scan_metadata_fromB2B_E0ENCB49_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB67_4Scan18scan_metadata_fromB1N_E0ENCINvYNtNtB67_10log_replay22ScanLogReplayProcessorNtNtB69_10log_replay18LogReplayProcessor20process_actions_iterB1I_E0ENCB7k_s_0EINtNtB8_6result6ResultNtB67_12ScanMetadataNtNtB69_5error5ErrorENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB4m_.exit9.i

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20296
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1H_IB1H_IB23_INtNtNtB27_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4v_4Scan18scan_metadata_fromB2Q_E0ENCB4o_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6m_4Scan18scan_metadata_fromB22_E0ENCINvYNtNtB6m_10log_replay22ScanLogReplayProcessorNtNtB6o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCB7z_s_0EEEB4B_(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.d)
          to label %bb.j unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i7.i, !noalias !20299

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.d, align 8, !alias.scope !20295
  br label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i7.i: ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.d, align 8, !alias.scope !20295
  br label %common.resume.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_3map3MapIB1t_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1t_IB1t_IB1O_INtNtNtB1S_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4g_4Scan18scan_metadata_fromB2B_E0ENCB49_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB67_4Scan18scan_metadata_fromB1N_E0ENCINvYNtNtB67_10log_replay22ScanLogReplayProcessorNtNtB69_10log_replay18LogReplayProcessor20process_actions_iterB1I_E0ENCB7k_s_0EINtNtB8_6result6ResultNtB67_12ScanMetadataNtNtB69_5error5ErrorENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB4m_.exit9.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622.i)
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1W_IB1W_IB2h_INtNtNtB2l_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4J_4Scan18scan_metadata_fromB34_E0ENCB4C_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6A_4Scan18scan_metadata_fromB2g_E0ENCINvYNtNtB6A_10log_replay22ScanLogReplayProcessorNtNtB6C_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCB7N_s_0EEB1z_ENtNtNtB9_6traits8iterator8Iterator4nextB4P_.exit

.loopexit4:                                       ; preds = %bb.e
  %lpad.loopexit5 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp6 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit4
  %.sroa.0.0.copyload10.i.lcssa = phi ptr [ %.sroa.0.0.copyload10.i, %.loopexit4 ], [ %.sroa.0.0.copyload10.i.peel, %.loopexit.split-lp ]
  %lpad.phi7 = phi { ptr, i32 } [ %lpad.loopexit5, %.loopexit4 ], [ %lpad.loopexit.split-lp6, %.loopexit.split-lp ]
  store ptr %.sroa.0.0.copyload10.i.lcssa, ptr %i.c, align 8, !alias.scope !20278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5.0..sroa_idx16.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5.i, i64 168, i1 false), !noalias !20277
  br label %common.resume.i

_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1W_IB1W_IB2h_INtNtNtB2l_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4J_4Scan18scan_metadata_fromB34_E0ENCB4C_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6A_4Scan18scan_metadata_fromB2g_E0ENCINvYNtNtB6A_10log_replay22ScanLogReplayProcessorNtNtB6C_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCB7N_s_0EEB1z_ENtNtNtB9_6traits8iterator8Iterator4nextB4P_.exit: ; preds = %.loopexit, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_3map3MapIB1t_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1t_IB1t_IB1O_INtNtNtB1S_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4g_4Scan18scan_metadata_fromB2B_E0ENCB49_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB67_4Scan18scan_metadata_fromB1N_E0ENCINvYNtNtB67_10log_replay22ScanLogReplayProcessorNtNtB69_10log_replay18LogReplayProcessor20process_actions_iterB1I_E0ENCB7k_s_0EINtNtB8_6result6ResultNtB67_12ScanMetadataNtNtB69_5error5ErrorENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB4m_.exit9.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1P_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1P_IB1P_IB2a_INtNtNtB2e_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4C_4Scan18scan_metadata_fromB2X_E0ENCB4v_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6t_4Scan18scan_metadata_fromB29_E0ENCINvYNtNtB6t_10log_replay22ScanLogReplayProcessorNtNtB6v_10log_replay18LogReplayProcessor20process_actions_iterB24_E0ENCB7G_s_0EEENtNtNtB9_6traits8iterator8Iterator9size_hintB4I_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(536) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20324)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !20324, !noundef !30
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1o_IB1o_IB1J_INtNtNtB1N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4b_4Scan18scan_metadata_fromB2w_E0ENCB44_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB62_4Scan18scan_metadata_fromB1I_E0ENCINvYNtNtB62_10log_replay22ScanLogReplayProcessorNtNtB64_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCB7f_s_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB4h_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20325
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBM_IBC_INtNtNtB6_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB3l_4Scan18scan_metadata_fromB1H_E0ENCB3e_s_0EENtNtNtBS_6traits8iterator8Iterator9size_hintB3r_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) dereferenceable_or_null(176) %i.c), !noalias !20326
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !31, !noalias !20325, !noundef !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !20325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20325
  %i.i = trunc nuw i64 %i.f to i1
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1o_IB1o_IB1J_INtNtNtB1N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4b_4Scan18scan_metadata_fromB2w_E0ENCB44_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB62_4Scan18scan_metadata_fromB1I_E0ENCINvYNtNtB62_10log_replay22ScanLogReplayProcessorNtNtB64_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCB7f_s_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB4h_.exit.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1o_IB1o_IB1J_INtNtNtB1N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4b_4Scan18scan_metadata_fromB2w_E0ENCB44_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB62_4Scan18scan_metadata_fromB1I_E0ENCINvYNtNtB62_10log_replay22ScanLogReplayProcessorNtNtB64_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCB7f_s_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB4h_.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.7.0.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.5.0.i = phi i1 [ %i.i, %bb.b ], [ true, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !20324, !noundef !30
  %.not54.i = icmp eq ptr %i.k, null
  br i1 %.not54.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1o_IB1o_IB1J_INtNtNtB1N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4b_4Scan18scan_metadata_fromB2w_E0ENCB44_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB62_4Scan18scan_metadata_fromB1I_E0ENCINvYNtNtB62_10log_replay22ScanLogReplayProcessorNtNtB64_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCB7f_s_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB4h_.exit61.i, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1o_IB1o_IB1J_INtNtNtB1N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4b_4Scan18scan_metadata_fromB2w_E0ENCB44_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB62_4Scan18scan_metadata_fromB1I_E0ENCINvYNtNtB62_10log_replay22ScanLogReplayProcessorNtNtB64_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCB7f_s_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB4h_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20327
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBM_IBC_INtNtNtB6_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB3l_4Scan18scan_metadata_fromB1H_E0ENCB3e_s_0EENtNtNtBS_6traits8iterator8Iterator9size_hintB3r_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) dereferenceable_or_null(176) %i.j), !noalias !20328
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !31, !noalias !20327, !noundef !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !20327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20327
  %i.p = trunc nuw i64 %i.m to i1
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1o_IB1o_IB1J_INtNtNtB1N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4b_4Scan18scan_metadata_fromB2w_E0ENCB44_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB62_4Scan18scan_metadata_fromB1I_E0ENCINvYNtNtB62_10log_replay22ScanLogReplayProcessorNtNtB64_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCB7f_s_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB4h_.exit61.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1o_IB1o_IB1J_INtNtNtB1N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4b_4Scan18scan_metadata_fromB2w_E0ENCB44_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB62_4Scan18scan_metadata_fromB1I_E0ENCINvYNtNtB62_10log_replay22ScanLogReplayProcessorNtNtB64_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCB7f_s_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB4h_.exit61.i: ; preds = %bb.c, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1o_IB1o_IB1J_INtNtNtB1N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4b_4Scan18scan_metadata_fromB2w_E0ENCB44_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB62_4Scan18scan_metadata_fromB1I_E0ENCINvYNtNtB62_10log_replay22ScanLogReplayProcessorNtNtB64_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCB7f_s_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB4h_.exit.i
  %.sroa.8.0.i = phi i64 [ %i.o, %bb.c ], [ 0, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1o_IB1o_IB1J_INtNtNtB1N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4b_4Scan18scan_metadata_fromB2w_E0ENCB44_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB62_4Scan18scan_metadata_fromB1I_E0ENCINvYNtNtB62_10log_replay22ScanLogReplayProcessorNtNtB64_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCB7f_s_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB4h_.exit.i ]
  %.sroa.569.0.i = phi i1 [ %i.p, %bb.c ], [ true, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1o_IB1o_IB1J_INtNtNtB1N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4b_4Scan18scan_metadata_fromB2w_E0ENCB44_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB62_4Scan18scan_metadata_fromB1I_E0ENCINvYNtNtB62_10log_replay22ScanLogReplayProcessorNtNtB64_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCB7f_s_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB4h_.exit.i ] ; 2 uses
  %i.q = load i64, ptr %1, align 8, !range !31, !alias.scope !20324, !noundef !30
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1o_IB1o_IB1J_INtNtNtB1N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4b_4Scan18scan_metadata_fromB2w_E0ENCB44_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB62_4Scan18scan_metadata_fromB1I_E0ENCINvYNtNtB62_10log_replay22ScanLogReplayProcessorNtNtB64_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCB7f_s_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB4h_.exit61.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !20324, !noundef !30
  %.not75.i = icmp eq ptr %.val.i, null
  %op.rdx = select i1 %.not75.i, i1 %.sroa.5.0.i, i1 false
  %op.rdx1 = select i1 %op.rdx, i1 %.sroa.569.0.i, i1 false
  br i1 %op.rdx1, label %bb.g, label %bb.f

bb.e:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1o_IB1o_IB1J_INtNtNtB1N_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4b_4Scan18scan_metadata_fromB2w_E0ENCB44_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB62_4Scan18scan_metadata_fromB1I_E0ENCINvYNtNtB62_10log_replay22ScanLogReplayProcessorNtNtB64_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCB7f_s_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB4h_.exit61.i
  %or.cond55.i = select i1 %.sroa.5.0.i, i1 %.sroa.569.0.i, i1 false
  br i1 %or.cond55.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !20323
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1W_IB1W_IB2h_INtNtNtB2l_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4J_4Scan18scan_metadata_fromB34_E0ENCB4C_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6A_4Scan18scan_metadata_fromB2g_E0ENCINvYNtNtB6A_10log_replay22ScanLogReplayProcessorNtNtB6C_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCB7N_s_0EEB1z_ENtNtNtB9_6traits8iterator8Iterator9size_hintB4P_.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.t = add i64 %.sroa.8.0.i, %.sroa.7.0.i       ; 2 uses
  %i.u = icmp uge i64 %i.t, %.sroa.7.0.i
  %.56.i = zext i1 %i.u to i64
  store i64 0, ptr %0, align 8, !alias.scope !20323
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.56.i, ptr %i.v, align 8, !alias.scope !20323
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %i.w, align 8, !alias.scope !20323
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1W_IB1W_IB2h_INtNtNtB2l_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4J_4Scan18scan_metadata_fromB34_E0ENCB4C_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6A_4Scan18scan_metadata_fromB2g_E0ENCINvYNtNtB6A_10log_replay22ScanLogReplayProcessorNtNtB6C_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCB7N_s_0EEB1z_ENtNtNtB9_6traits8iterator8Iterator9size_hintB4P_.exit

_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1W_IB1W_IB2h_INtNtNtB2l_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4J_4Scan18scan_metadata_fromB34_E0ENCB4C_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6A_4Scan18scan_metadata_fromB2g_E0ENCINvYNtNtB6A_10log_replay22ScanLogReplayProcessorNtNtB6C_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCB7N_s_0EEB1z_ENtNtNtB9_6traits8iterator8Iterator9size_hintB4P_.exit: ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB25_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1P_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1P_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4y_DNtNtB2z_11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2z_11log_segmentNtB7B_10LogSegment24create_checkpoint_streams_0EINtNtNtB3I_8adaptors3map14MapSpecialCaseIB25_INtNtNtB9_7sources4once4OnceB5L_EIBR_IB15_B4x_EEEINtB8J_18MapSpecialCaseFnOkNCNCB7y_s_00EEB6O_ENCB7y_s0_0EEIB1P_IB4y_IB1P_IB1P_IB4y_INtNtNtB4C_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdc_4Scan18scan_metadata_fromBbx_E0ENCBd5_s_0EENCINvMs6_NtB2z_4scanNtBf3_4Scan18scan_metadata_fromBbd_E0EENCINvYNtNtBf3_10log_replay22ScanLogReplayProcessorNtNtB2z_10log_replay18LogReplayProcessor20process_actions_iterB24_E0ENCBfT_s_0EEEB57_10advance_byBdi_(ptr noalias noundef align 16 dereferenceable(2112) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.b = load i64, ptr %i.a, align 16, !range !43, !alias.scope !20352, !noundef !30
  %.not.i.i = icmp eq i64 %i.b, 6
  br i1 %.not.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtNtB, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters6filter6FilterINtNtB1i_3map3MapINtNtB1i_5chain5ChainIB22_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1L_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1L_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDB6_p4ItemINtNtBe_6result6ResultIB4w_DNtNtB2x_11engine_data10EngineDataEL_ENtNtB2x_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB2x_11log_segmentNtB74_10LogSegment24create_checkpoint_streams_0EINtNtNtB3G_8adaptors3map14MapSpecialCaseIB22_INtNtNtBc_7sources4once4OnceB5e_EINtNtB1i_7flatten7FlattenINtNtBe_6option8IntoIterB4v_EEEINtB8c_18MapSpecialCaseFnOkNCNCB71_s_00EEB6h_ENCB71_s0_0EEIB1L_IB4w_IB1L_IB1L_IB4w_INtNtNtB4A_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdj_4Scan18scan_metadata_fromBbE_E0ENCBdc_s_0EENCINvMs6_NtB2x_4scanNtBfa_4Scan18scan_metadata_fromBbk_E0EENCINvYNtNtBfa_10log_replay22ScanLogReplayProcessorNtNtB2x_10log_replay18LogReplayProcessor20process_actions_iterB21_E0ENCBg0_s_0ENtB4_13SpecAdvanceBy15spec_advance_byBdp_(ptr noalias noundef nonnull align 16 dereferenceable(2112) %0, i64 noundef %1) ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB2c_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4F_DNtNtB2G_11engine_data10EngineDataEL_ENtNtB2G_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2G_11log_segmentNtB7I_10LogSegment24create_checkpoint_streams_0EINtNtNtB3P_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5S_EINtB5_7FlattenIB1c_B4E_EEEINtB8Q_18MapSpecialCaseFnOkNCNCB7F_s_00EEB6V_ENCB7F_s0_0EEIB1W_IB4F_IB1W_IB1W_IB4F_INtNtNtB4J_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdt_4Scan18scan_metadata_fromBbO_E0ENCBdm_s_0EENCINvMs6_NtB2G_4scanNtBfk_4Scan18scan_metadata_fromBbu_E0EENCINvYNtNtBfk_10log_r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.pr.i.i = load i64, ptr %i.a, align 16, !alias.scope !20353
  %i.d = icmp eq i64 %.pr.i.i, 6
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtNtB, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainIBH_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2s_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3C_DNtNtB1s_11engine_data10EngineDataEL_ENtNtB1s_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1s_11log_segmentNtB6F_10LogSegment24create_checkpoint_streams_0EINtNtNtB2M_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4P_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3B_EEEINtB7N_18MapSpecialCaseFnOkNCNCB6C_s_00EEB5S_ENCB6C_s0_0EEIB2s_IB3C_IB2s_IB2s_IB3C_INtNtNtB3G_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBcS_4Scan18scan_metadata_fromBbd_E0ENCBcL_s_0EENCINvMs6_NtB1s_4scanNtBeJ_4Scan18scan_metadata_fromBaT_E0EEEBcY_(ptr noalias noundef nonnull align 16 dereferenceable(2112) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay22S unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 544
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.f)
          to label %.body.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay22S: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtNtB unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay22S
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.e, %bb.e ]
  store i64 6, ptr %i.a, align 16, !alias.scope !20352
  br label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtNtB: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay22S, %bb.c, %bb.a
  %.sroa.0.057.i.i = phi i64 [ %i.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay22S ], [ %i.c, %bb.c ], [ %1, %bb.a ] ; 3 uses
  store i64 6, ptr %i.a, align 16, !alias.scope !20352
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20355)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 3 uses
  %i.l = load i64, ptr %i.k, align 16, !range !44, !alias.scope !20356, !noundef !30 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.l, 7
  br i1 %.not.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtN43, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtNtB
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20358)
  store i64 6, ptr %i.k, align 16, !alias.scope !20359
  %.not34.i.i.i.i = icmp eq i64 %i.l, 6
  br i1 %.not34.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtN43, label %_RNCINvNvMsg_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenINtNtBc_6filter6FilterINtNtBc_3map3MapINtNtBc_5chain5ChainIB2j_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB23_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB23_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBe_6traits8iterator8Iteratorp4ItemINtNtBg_6result6ResultIB4M_DNtNtB2N_11engine_data10EngineDataEL_ENtNtB2N_5error5ErrorENtNtBg_6marker4SendEL_ENCNvMNtB2N_11log_segmentNtB7P_10LogSegment24create_checkpoint_streams_0EINtNtNtB3W_8adaptors3map14MapSpecialCaseIB2j_INtNtNtBe_7sources4once4OnceB5Z_EINtBa_7FlattenINtNtBg_6option8IntoIterB4L_EEEINtB8X_18MapSpecialCaseFnOkNCNCB7M_s_00EEB72_ENCB7M_s0_0EEIB23_IB4M_IB23_IB23_IB4M_INtNtNtB4Q_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdT_4Scan18scan_metadata_fromBce_E0ENCBdM_s_0EENCINvMs6_NtB2N_4scanNtBfK_4Scan18scan_metadata_fromB39

_RNCINvNvMsg_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenINtNtBc_6filter6FilterINtNtBc_3map3MapINtNtBc_5chain5ChainIB2j_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB23_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB23_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBe_6traits8iterator8Iteratorp4ItemINtNtBg_6result6ResultIB4M_DNtNtB2N_11engine_data10EngineDataEL_ENtNtB2N_5error5ErrorENtNtBg_6marker4SendEL_ENCNvMNtB2N_11log_segmentNtB7P_10LogSegment24create_checkpoint_streams_0EINtNtNtB3W_8adaptors3map14MapSpecialCaseIB2j_INtNtNtBe_7sources4once4OnceB5Z_EINtBa_7FlattenINtNtBg_6option8IntoIterB4L_EEEINtB8X_18MapSpecialCaseFnOkNCNCB7M_s_00EEB72_ENCB7M_s0_0EEIB23_IB4M_IB23_IB23_IB4M_INtNtNtB4Q_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdT_4Scan18scan_metadata_fromBce_E0ENCBdM_s_0EENCINvMs6_NtB2N_4scanNtBfK_4Scan18scan_metadata_fromB39: ; preds = %bb.h
  %.sroa.7.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.sroa.719.16..sroa.1.8..val.sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2112) %0, ptr noundef nonnull align 16 dereferenceable(704) %i.j, i64 96, i1 false), !alias.scope !20360
  store i64 %i.l, ptr %i.a, align 16, !alias.scope !20361
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %.sroa.719.16..sroa.1.8..val.sroa_idx20.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(600) %.sroa.7.0..sroa_idx10.i.i.i.i, i64 600, i1 false), !alias.scope !20360
  %i.m = tail call noundef i64 @_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters6filter6FilterINtNtB1i_3map3MapINtNtB1i_5chain5ChainIB22_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1L_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1L_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDB6_p4ItemINtNtBe_6result6ResultIB4w_DNtNtB2x_11engine_data10EngineDataEL_ENtNtB2x_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB2x_11log_segmentNtB74_10LogSegment24create_checkpoint_streams_0EINtNtNtB3G_8adaptors3map14MapSpecialCaseIB22_INtNtNtBc_7sources4once4OnceB5e_EINtNtB1i_7flatten7FlattenINtNtBe_6option8IntoIterB4v_EEEINtB8c_18MapSpecialCaseFnOkNCNCB71_s_00EEB6h_ENCB71_s0_0EEIB1L_IB4w_IB1L_IB1L_IB4w_INtNtNtB4A_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdj_4Scan18scan_metadata_fromBbE_E0ENCBdc_s_0EENCINvMs6_NtB2x_4scanNtBfa_4Scan18scan_metadata_fromBbk_E0EENCINvYNtNtBfa_10log_replay22ScanLogReplayProcessorNtNtB2x_10log_replay18LogReplayProcessor20process_actions_iterB21_E0ENCBg0_s_0ENtB4_13SpecAdvanceBy15spec_advance_byBdp_(ptr noalias noundef nonnull align 16 dereferenceable(2112) %0, i64 noundef %.sroa.0.057.i.i), !noalias !20362 ; 3 uses
  %.not.i.i.i.us.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.us.i.i.i.i, label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB2c_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4F_DNtNtB2G_11engine_data10EngineDataEL_ENtNtB2G_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2G_11log_segmentNtB7I_10LogSegment24create_checkpoint_streams_0EINtNtNtB3P_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5S_EINtB5_7FlattenIB1c_B4E_EEEINtB8Q_18MapSpecialCaseFnOkNCNCB7F_s_00EEB6V_ENCB7F_s0_0EEIB1W_IB4F_IB1W_IB1W_IB4F_INtNtNtB4J_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdt_4Scan18scan_metadata_fromBbO_E0ENCBdm_s_0EENCINvMs6_NtB2G_4scanNtBfk_4Scan18scan_metadata_fromBbu_E0EENCINvYNtNtBfk_10log_r, label %bb.i

bb.i:                                             ; preds = %_RNCINvNvMsg_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenINtNtBc_6filter6FilterINtNtBc_3map3MapINtNtBc_5chain5ChainIB2j_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB23_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB23_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBe_6traits8iterator8Iteratorp4ItemINtNtBg_6result6ResultIB4M_DNtNtB2N_11engine_data10EngineDataEL_ENtNtB2N_5error5ErrorENtNtBg_6marker4SendEL_ENCNvMNtB2N_11log_segmentNtB7P_10LogSegment24create_checkpoint_streams_0EINtNtNtB3W_8adaptors3map14MapSpecialCaseIB2j_INtNtNtBe_7sources4once4OnceB5Z_EINtBa_7FlattenINtNtBg_6option8IntoIterB4L_EEEINtB8X_18MapSpecialCaseFnOkNCNCB7M_s_00EEB72_ENCB7M_s0_0EEIB23_IB4M_IB23_IB23_IB4M_INtNtNtB4Q_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdT_4Scan18scan_metadata_fromBce_E0ENCBdM_s_0EENCINvMs6_NtB2N_4scanNtBfK_4Scan18scan_metadata_fromB39
  store i64 6, ptr %i.k, align 16, !alias.scope !20359
  %.pre.i.i = load i64, ptr %i.a, align 16, !range !43, !alias.scope !20363
  %i.n = icmp eq i64 %.pre.i.i, 6
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtN43, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainIBH_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2s_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3C_DNtNtB1s_11engine_data10EngineDataEL_ENtNtB1s_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1s_11log_segmentNtB6F_10LogSegment24create_checkpoint_streams_0EINtNtNtB2M_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4P_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3B_EEEINtB7N_18MapSpecialCaseFnOkNCNCB6C_s_00EEB5S_ENCB6C_s0_0EEIB2s_IB3C_IB2s_IB2s_IB3C_INtNtNtB3G_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBcS_4Scan18scan_metadata_fromBbd_E0ENCBcL_s_0EENCINvMs6_NtB1s_4scanNtBeJ_4Scan18scan_metadata_fromBaT_E0EEEBcY_(ptr noalias noundef nonnull align 16 dereferenceable(2112) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay238 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 544
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.p)
          to label %.body39.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay238: ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 544
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtN43 unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay238
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body39.i.i

.body39.i.i:                                      ; preds = %bb.m, %bb.k
  %eh.lpad-body40.i.i = phi { ptr, i32 } [ %i.s, %bb.m ], [ %i.o, %bb.k ]
  store i64 6, ptr %i.a, align 16, !alias.scope !20352
  br label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtN43: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay238, %bb.i, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtNtB
  %.sroa.4.0.i.ph71.i.i = phi i64 [ %i.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay238 ], [ %i.m, %bb.i ], [ %.sroa.0.057.i.i, %bb.h ], [ %.sroa.0.057.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtNtB ] ; 2 uses
  store i64 6, ptr %i.a, align 16, !alias.scope !20352
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 4 uses
  %i.v = load i64, ptr %i.u, align 16, !range !43, !alias.scope !20352, !noundef !30
  %.not32.i.i = icmp eq i64 %i.v, 6
  br i1 %.not32.i.i, label %bb.u, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtN43
  %i.w = tail call noundef i64 @_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters6filter6FilterINtNtB1i_3map3MapINtNtB1i_5chain5ChainIB22_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1L_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1L_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDB6_p4ItemINtNtBe_6result6ResultIB4w_DNtNtB2x_11engine_data10EngineDataEL_ENtNtB2x_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB2x_11log_segmentNtB74_10LogSegment24create_checkpoint_streams_0EINtNtNtB3G_8adaptors3map14MapSpecialCaseIB22_INtNtNtBc_7sources4once4OnceB5e_EINtNtB1i_7flatten7FlattenINtNtBe_6option8IntoIterB4v_EEEINtB8c_18MapSpecialCaseFnOkNCNCB71_s_00EEB6h_ENCB71_s0_0EEIB1L_IB4w_IB1L_IB1L_IB4w_INtNtNtB4A_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdj_4Scan18scan_metadata_fromBbE_E0ENCBdc_s_0EENCINvMs6_NtB2x_4scanNtBfa_4Scan18scan_metadata_fromBbk_E0EENCINvYNtNtBfa_10log_replay22ScanLogReplayProcessorNtNtB2x_10log_replay18LogReplayProcessor20process_actions_iterB21_E0ENCBg0_s_0ENtB4_13SpecAdvanceBy15spec_advance_byBdp_(ptr noalias noundef nonnull align 16 dereferenceable(704) %i.t, i64 noundef %.sroa.4.0.i.ph71.i.i) ; 3 uses
  %.not.i.i44.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i44.i.i, label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB2c_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4F_DNtNtB2G_11engine_data10EngineDataEL_ENtNtB2G_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2G_11log_segmentNtB7I_10LogSegment24create_checkpoint_streams_0EINtNtNtB3P_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5S_EINtB5_7FlattenIB1c_B4E_EEEINtB8Q_18MapSpecialCaseFnOkNCNCB7F_s_00EEB6V_ENCB7F_s0_0EEIB1W_IB4F_IB1W_IB1W_IB4F_INtNtNtB4J_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdt_4Scan18scan_metadata_fromBbO_E0ENCBdm_s_0EENCINvMs6_NtB2G_4scanNtBfk_4Scan18scan_metadata_fromBbu_E0EENCINvYNtNtBfk_10log_r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.pre66.i.i = load i64, ptr %i.u, align 16, !range !43, !alias.scope !20364
  %i.x = icmp eq i64 %.pre66.i.i, 6
  br i1 %i.x, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainIBH_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2s_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3C_DNtNtB1s_11engine_data10EngineDataEL_ENtNtB1s_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1s_11log_segmentNtB6F_10LogSegment24create_checkpoint_streams_0EINtNtNtB2M_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4P_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3B_EEEINtB7N_18MapSpecialCaseFnOkNCNCB6C_s_00EEB5S_ENCB6C_s0_0EEIB2s_IB3C_IB2s_IB2s_IB3C_INtNtNtB3G_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBcS_4Scan18scan_metadata_fromBbd_E0ENCBcL_s_0EENCINvMs6_NtB1s_4scanNtBeJ_4Scan18scan_metadata_fromBaT_E0EEEBcY_(ptr noalias noundef nonnull align 16 dereferenceable(704) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay250 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1248
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.z)
          to label %.body51.i.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay250: ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1248
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.ab)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay250
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body51.i.i

.body51.i.i:                                      ; preds = %bb.s, %bb.q
  %eh.lpad-body52.i.i = phi { ptr, i32 } [ %i.ac, %bb.s ], [ %i.y, %bb.q ]
  store i64 6, ptr %i.u, align 16, !alias.scope !20352
  br label %bb.t

bb.t:                                             ; preds = %.body51.i.i, %.body39.i.i, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body52.i.i, %.body51.i.i ], [ %eh.lpad-body40.i.i, %.body39.i.i ]
  resume { ptr, i32 } %.pn.i.i

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay250, %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtN43
  %.sroa.0.174.i.i = phi i64 [ %i.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainIB1B_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB44_DNtNtB25_11engine_data10EngineDataEL_ENtNtB25_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB25_11log_segmentNtB77_10LogSegment24create_checkpoint_streams_0EINtNtNtB3e_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5h_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB43_EEEINtB8f_18MapSpecialCaseFnOkNCNCB74_s_00EEB6k_ENCB74_s0_0EEIB1l_IB44_IB1l_IB1l_IB44_INtNtNtB48_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdl_4Scan18scan_metadata_fromBbG_E0ENCBde_s_0EENCINvMs6_NtB25_4scanNtBfc_4Scan18scan_metadata_fromBbm_E0EENCINvYNtNtBfc_10log_replay250 ], [ %i.w, %bb.o ], [ %.sroa.4.0.i.ph71.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainIB1Y_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4s_DNtNtB2t_11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2t_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3C_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5G_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4r_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EEIB1H_IB4s_IB1H_IB1H_IB4s_INtNtNtB4w_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdD_4Scan18scan_metadata_fromBbY_E0ENCBdw_s_0EENCINvMs6_NtB2t_4scanNtBfu_4Scan18scan_metadata_fromBbE_E0EENCINvYNtN43 ]
  store i64 6, ptr %i.u, align 16, !alias.scope !20352
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainIB2c_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4F_DNtNtB2G_11engine_data10EngineDataEL_ENtNtB2G_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2G_11log_segmentNtB7I_10LogSegment24create_checkpoint_streams_0EINtNtNtB3P_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5S_EINtB5_7FlattenIB1c_B4E_EEEINtB8Q_18MapSpecialCaseFnOkNCNCB7F_s_00EEB6V_ENCB7F_s0_0EEIB1W_IB4F_IB1W_IB1W_IB4F_INtNtNtB4J_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdt_4Scan18scan_metadata_fromBbO_E0ENCBdm_s_0EENCINvMs6_NtB2G_4scanNtBfk_4Scan18scan_metadata_fromBbu_E0EENCINvYNtNtBfk_10log_r
end_hunk_0
begin_hunk_1_@_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1P_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1P_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4t_DNtNtB2u_11engine_data10EngineDataEL_ENtNtB2u_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2u_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3D_8adaptors3map14MapSpecialCaseIB25_INtNtNtB9_7sources4once4OnceB5G_EIBR_IB15_B4s_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EENCINvYNtNtNtB2u_4scan10log_replay22ScanLogReplayProcessorNtNtB2u_10log_replay18LogReplayProcessor20process_actions_iterB24_E0ENCBb5_s_0EEEB52_4nextCs14kWLkQVSKO_14deltalake_core:.peel.begin
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp26, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp28, %.loopexit.split-lp8.loopexit.split-lp.loopexit.split-lp ]
  store i64 5, ptr %i.c, align 16, !alias.scope !20511
  br label %common.resume.i

.loopexit:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  %.lcssa = phi i64 [ %i.i, %bb.a ], [ %i.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.758.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.758.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.628.0..sroa_idx.i, i64 88, i1 false), !noalias !20510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20521
  store i64 %.lcssa, ptr %0, align 16, !alias.scope !20509
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4A_DNtNtB2B_11engine_data10EngineDataEL_ENtNtB2B_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2B_11log_segmentNtB7D_10LogSegment24create_checkpoint_streams_0EINtNtNtB3K_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5N_EINtB5_7FlattenIB1c_B4z_EEEINtB8L_18MapSpecialCaseFnOkNCNCB7A_s_00EEB6Q_ENCB7A_s0_0EENCINvYNtNtNtB2B_4scan10log_replay22ScanLogReplayProcessorNtNtB2B_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCBbm_s_0EEB1z_EB59_4nextCs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  store i64 5, ptr %i.c, align 16, !alias.scope !20511
  %.pre = load i64, ptr %i.f, align 16, !range !43, !alias.scope !20518 ; 3 uses
  %.not.i2.i = icmp eq i64 %.pre, 6
  br i1 %.not.i2.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 5, ptr %i.f, align 16, !alias.scope !20519
  %.not1.i = icmp eq i64 %.pre, 5
  br i1 %.not1.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i, !llvm.loop !20493

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.peel, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.peel
  call void @llvm.experimental.noalias.scope.decl(metadata !20523)
  call void @llvm.experimental.noalias.scope.decl(metadata !20524)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.632.i)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 4 uses
  %i.r = load i64, ptr %i.q, align 16, !range !29, !alias.scope !20525, !noundef !30
  %.not.i3.i = icmp eq i64 %i.r, 5
  br i1 %.not.i3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20526
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIBO_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIBO_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemINtNtBc_6result6ResultIB3k_DNtNtB1n_11engine_data10EngineDataEL_ENtNtB1n_5error5ErrorENtNtBc_6marker4SendEL_ENCNvMNtB1n_11log_segmentNtB6n_10LogSegment24create_checkpoint_streams_0EINtNtNtB2v_8adaptors3map14MapSpecialCaseIBY_INtNtNtBa_7sources4once4OnceB4x_EINtNtB8_7flatten7FlattenINtNtBc_6option8IntoIterB3j_EEEINtB7v_18MapSpecialCaseFnOkNCNCB6k_s_00EEB5A_ENCB6k_s0_0EENCINvYNtNtNtB1n_4scan10log_replay22ScanLogReplayProcessorNtNtB1n_10log_replay18LogReplayProcessor20process_actions_iterBX_E0EB3T_8try_folduNCINvNvB3T_4find5checkIB4y_NtBaG_12ScanMetadataB5A_EQNCBay_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowBd7_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 16 dereferenceable(672) %i.d, ptr noalias noundef nonnull %i.g), !noalias !20527
  %i.s = load i64, ptr %i.a, align 16, !range !56, !noalias !20526, !noundef !30 ; 2 uses
  %.not.i.i.i.i4.i = icmp eq i64 %i.s, -9223372036854775742
  br i1 %.not.i.i.i.i4.i, label %bb.j, label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i5.i

_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i5.i: ; preds = %bb.g
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.632.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.632.0..sroa_idx.i, i64 88, i1 false), !noalias !20528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20526
  br label %bb.i

bb.h:                                             ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  store i64 -9223372036854775742, ptr %0, align 16, !alias.scope !20529
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_3map3MapINtNtB4_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1t_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1t_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultIB47_DNtNtB28_11engine_data10EngineDataEL_ENtNtB28_5error5ErrorENtNtB8_6marker4SendEL_ENCNvMNtB28_11log_segmentNtB7a_10LogSegment24create_checkpoint_streams_0EINtNtNtB3h_8adaptors3map14MapSpecialCaseIB1J_INtNtNtB6_7sources4once4OnceB5k_EINtB2_7FlattenINtNtB8_6option8IntoIterB46_EEEINtB8i_18MapSpecialCaseFnOkNCNCB77_s_00EEB6n_ENCB77_s0_0EENCINvYNtNtNtB28_4scan10log_replay22ScanLogReplayProcessorNtNtB28_10log_replay18LogReplayProcessor20process_actions_iterB1I_E0ENCBbc_s_0EIB5l_NtBbk_12ScanMetadataB6n_ENvYB16_B4G_4nextECs14kWLkQVSKO_14deltalake_core.exit13.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i11.i, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i5.i
  store i64 %i.s, ptr %0, align 16, !alias.scope !20509, !noalias !20524
  %.sroa.632.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.632.0..sroa_idx33.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.632.i, i64 88, i1 false), !noalias !20525
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_3map3MapINtNtB4_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1t_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1t_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultIB47_DNtNtB28_11engine_data10EngineDataEL_ENtNtB28_5error5ErrorENtNtB8_6marker4SendEL_ENCNvMNtB28_11log_segmentNtB7a_10LogSegment24create_checkpoint_streams_0EINtNtNtB3h_8adaptors3map14MapSpecialCaseIB1J_INtNtNtB6_7sources4once4OnceB5k_EINtB2_7FlattenINtNtB8_6option8IntoIterB46_EEEINtB8i_18MapSpecialCaseFnOkNCNCB77_s_00EEB6n_ENCB77_s0_0EENCINvYNtNtNtB28_4scan10log_replay22ScanLogReplayProcessorNtNtB28_10log_replay18LogReplayProcessor20process_actions_iterB1I_E0ENCBbc_s_0EIB5l_NtBbk_12ScanMetadataB6n_ENvYB16_B4G_4nextECs14kWLkQVSKO_14deltalake_core.exit13.i

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20526
  %i.t = load i64, ptr %i.q, align 16, !range !29, !alias.scope !20530, !noundef !30
  %i.u = icmp eq i64 %i.t, 5
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i11.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3y_DNtNtB1o_11engine_data10EngineDataEL_ENtNtB1o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1o_11log_segmentNtB6B_10LogSegment24create_checkpoint_streams_0EINtNtNtB2I_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4L_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3x_EEEINtB7J_18MapSpecialCaseFnOkNCNCB6y_s_00EEB5O_ENCB6y_s0_0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(672) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i10.i unwind label %bb.l, !noalias !20529

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1184
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i8.i unwind label %bb.m, !noalias !20529

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !20529
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i10.i: ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1184
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i11.i unwind label %bb.n, !noalias !20529

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i10.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i8.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i11.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i10.i, %bb.j
  store i64 5, ptr %i.q, align 16, !alias.scope !20525
  br label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i8.i: ; preds = %bb.n, %bb.l
  %eh.lpad-body.i9.i = phi { ptr, i32 } [ %i.z, %bb.n ], [ %i.v, %bb.l ]
  store i64 5, ptr %i.q, align 16, !alias.scope !20525
  br label %common.resume.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_3map3MapINtNtB4_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1t_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1t_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultIB47_DNtNtB28_11engine_data10EngineDataEL_ENtNtB28_5error5ErrorENtNtB8_6marker4SendEL_ENCNvMNtB28_11log_segmentNtB7a_10LogSegment24create_checkpoint_streams_0EINtNtNtB3h_8adaptors3map14MapSpecialCaseIB1J_INtNtNtB6_7sources4once4OnceB5k_EINtB2_7FlattenINtNtB8_6option8IntoIterB46_EEEINtB8i_18MapSpecialCaseFnOkNCNCB77_s_00EEB6n_ENCB77_s0_0EENCINvYNtNtNtB28_4scan10log_replay22ScanLogReplayProcessorNtNtB28_10log_replay18LogReplayProcessor20process_actions_iterB1I_E0ENCBbc_s_0EIB5l_NtBbk_12ScanMetadataB6n_ENvYB16_B4G_4nextECs14kWLkQVSKO_14deltalake_core.exit13.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.632.i)
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4A_DNtNtB2B_11engine_data10EngineDataEL_ENtNtB2B_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2B_11log_segmentNtB7D_10LogSegment24create_checkpoint_streams_0EINtNtNtB3K_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5N_EINtB5_7FlattenIB1c_B4z_EEEINtB8L_18MapSpecialCaseFnOkNCNCB7A_s_00EEB6Q_ENCB7A_s0_0EENCINvYNtNtNtB2B_4scan10log_replay22ScanLogReplayProcessorNtNtB2B_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCBbm_s_0EEB1z_EB59_4nextCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4A_DNtNtB2B_11engine_data10EngineDataEL_ENtNtB2B_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2B_11log_segmentNtB7D_10LogSegment24create_checkpoint_streams_0EINtNtNtB3K_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5N_EINtB5_7FlattenIB1c_B4z_EEEINtB8L_18MapSpecialCaseFnOkNCNCB7A_s_00EEB6Q_ENCB7A_s0_0EENCINvYNtNtNtB2B_4scan10log_replay22ScanLogReplayProcessorNtNtB2B_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCBbm_s_0EEB1z_EB59_4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.loopexit, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_3map3MapINtNtB4_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1t_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1t_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultIB47_DNtNtB28_11engine_data10EngineDataEL_ENtNtB28_5error5ErrorENtNtB8_6marker4SendEL_ENCNvMNtB28_11log_segmentNtB7a_10LogSegment24create_checkpoint_streams_0EINtNtNtB3h_8adaptors3map14MapSpecialCaseIB1J_INtNtNtB6_7sources4once4OnceB5k_EINtB2_7FlattenINtNtB8_6option8IntoIterB46_EEEINtB8i_18MapSpecialCaseFnOkNCNCB77_s_00EEB6n_ENCB77_s0_0EENCINvYNtNtNtB28_4scan10log_replay22ScanLogReplayProcessorNtNtB28_10log_replay18LogReplayProcessor20process_actions_iterB1I_E0ENCBbc_s_0EIB5l_NtBbk_12ScanMetadataB6n_ENvYB16_B4G_4nextECs14kWLkQVSKO_14deltalake_core.exit13.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1P_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1P_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4t_DNtNtB2u_11engine_data10EngineDataEL_ENtNtB2u_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2u_11log_segmentNtB7w_10LogSegment24create_checkpoint_streams_0EINtNtNtB3D_8adaptors3map14MapSpecialCaseIB25_INtNtNtB9_7sources4once4OnceB5G_EIBR_IB15_B4s_EEEINtB8E_18MapSpecialCaseFnOkNCNCB7t_s_00EEB6J_ENCB7t_s0_0EENCINvYNtNtNtB2u_4scan10log_replay22ScanLogReplayProcessorNtNtB2u_10log_replay18LogReplayProcessor20process_actions_iterB24_E0ENCBb5_s_0EEEB52_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(2016) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20567)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = load i64, ptr %i.e, align 16, !range !29, !alias.scope !20567, !noundef !30 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20568)
  br i1 %.not.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapINtNtBO_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1o_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIB42_DNtNtB23_11engine_data10EngineDataEL_ENtNtB23_5error5ErrorENtNtB5_6marker4SendEL_ENCNvMNtB23_11log_segmentNtB75_10LogSegment24create_checkpoint_streams_0EINtNtNtB3c_8adaptors3map14MapSpecialCaseIB1E_INtNtNtBQ_7sources4once4OnceB5f_EINtNtBO_7flatten7FlattenINtB3_8IntoIterB41_EEEINtB8d_18MapSpecialCaseFnOkNCNCB72_s_00EEB6i_ENCB72_s0_0EENCINvYNtNtNtB23_4scan10log_replay22ScanLogReplayProcessorNtNtB23_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCBb8_s_0EE6map_orTjIBw_jEENvYBJ_B4B_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20570)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20571
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20575)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.h = load ptr, ptr %i.g, align 16, !alias.scope !20576, !noundef !30
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %.not7.i.i.i.i.i.i = icmp eq i64 %i.f, 4        ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not7.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.g

bb.d:                                             ; preds = %bb.b
  br i1 %.not7.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB11_6traits8iterator8Iteratorp4ItemINtNtB13_6result6ResultIB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3u_5error5ErrorENtNtB13_6marker4SendEL_ENCNvMNtB3u_11log_segmentNtB5d_10LogSegment24create_checkpoint_streams_0EINtNtNtB4_8adaptors3map14MapSpecialCaseINtNtBZ_5chain5ChainINtNtNtB11_7sources4once4OnceB2X_EINtNtBZ_7flatten7FlattenINtNtB13_6option8IntoIterB1I_EEEINtB6l_18MapSpecialCaseFnOkNCNCB5a_s_00EEB4p_EB2i_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(2016) dereferenceable_or_null(672) %1), !noalias !20577
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !31, !noalias !20571
  %i.i = trunc nuw i64 %.pre.i.i.i.i to i1
  br label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.j, align 8, !alias.scope !20578, !noalias !20571
  br label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20579
  call void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB11_6traits8iterator8Iteratorp4ItemINtNtB13_6result6ResultIB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3u_5error5ErrorENtNtB13_6marker4SendEL_ENCNvMNtB3u_11log_segmentNtB5d_10LogSegment24create_checkpoint_streams_0EINtNtNtB4_8adaptors3map14MapSpecialCaseINtNtBZ_5chain5ChainINtNtNtB11_7sources4once4OnceB2X_EINtNtBZ_7flatten7FlattenINtNtB13_6option8IntoIterB1I_EEEINtB6l_18MapSpecialCaseFnOkNCNCB5a_s_00EEB4p_EB2i_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(2016) dereferenceable_or_null(672) %1), !noalias !20580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20579
  br label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i

_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %i.k = phi i1 [ %i.i, %bb.e ], [ true, %bb.f ], [ false, %bb.g ], [ false, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !20571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20571
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapINtNtBO_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1o_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIB42_DNtNtB23_11engine_data10EngineDataEL_ENtNtB23_5error5ErrorENtNtB5_6marker4SendEL_ENCNvMNtB23_11log_segmentNtB75_10LogSegment24create_checkpoint_streams_0EINtNtNtB3c_8adaptors3map14MapSpecialCaseIB1E_INtNtNtBQ_7sources4once4OnceB5f_EINtNtBO_7flatten7FlattenINtB3_8IntoIterB41_EEEINtB8d_18MapSpecialCaseFnOkNCNCB72_s_00EEB6i_ENCB72_s0_0EENCINvYNtNtNtB23_4scan10log_replay22ScanLogReplayProcessorNtNtB23_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCBb8_s_0EE6map_orTjIBw_jEENvYBJ_B4B_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapINtNtBO_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1o_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIB42_DNtNtB23_11engine_data10EngineDataEL_ENtNtB23_5error5ErrorENtNtB5_6marker4SendEL_ENCNvMNtB23_11log_segmentNtB75_10LogSegment24create_checkpoint_streams_0EINtNtNtB3c_8adaptors3map14MapSpecialCaseIB1E_INtNtNtBQ_7sources4once4OnceB5f_EINtNtBO_7flatten7FlattenINtB3_8IntoIterB41_EEEINtB8d_18MapSpecialCaseFnOkNCNCB72_s_00EEB6i_ENCB72_s0_0EENCINvYNtNtNtB23_4scan10log_replay22ScanLogReplayProcessorNtNtB23_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCBb8_s_0EE6map_orTjIBw_jEENvYBJ_B4B_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.a
  %.sroa.7.0.i = phi i64 [ %i.m, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.5.0.i = phi i1 [ %i.k, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ true, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.o = load i64, ptr %i.n, align 16, !range !29, !alias.scope !20567, !noundef !30 ; 2 uses
  %.not54.i = icmp eq i64 %i.o, 5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20581)
  br i1 %.not54.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapINtNtBO_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1o_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIB42_DNtNtB23_11engine_data10EngineDataEL_ENtNtB23_5error5ErrorENtNtB5_6marker4SendEL_ENCNvMNtB23_11log_segmentNtB75_10LogSegment24create_checkpoint_streams_0EINtNtNtB3c_8adaptors3map14MapSpecialCaseIB1E_INtNtNtBQ_7sources4once4OnceB5f_EINtNtBO_7flatten7FlattenINtB3_8IntoIterB41_EEEINtB8d_18MapSpecialCaseFnOkNCNCB72_s_00EEB6i_ENCB72_s0_0EENCINvYNtNtNtB23_4scan10log_replay22ScanLogReplayProcessorNtNtB23_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCBb8_s_0EE6map_orTjIBw_jEENvYBJ_B4B_9size_hintECs14kWLkQVSKO_14deltalake_core.exit67.i, label %bb.h

bb.h:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapINtNtBO_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1o_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIB42_DNtNtB23_11engine_data10EngineDataEL_ENtNtB23_5error5ErrorENtNtB5_6marker4SendEL_ENCNvMNtB23_11log_segmentNtB75_10LogSegment24create_checkpoint_streams_0EINtNtNtB3c_8adaptors3map14MapSpecialCaseIB1E_INtNtNtBQ_7sources4once4OnceB5f_EINtNtBO_7flatten7FlattenINtB3_8IntoIterB41_EEEINtB8d_18MapSpecialCaseFnOkNCNCB72_s_00EEB6i_ENCB72_s0_0EENCINvYNtNtNtB23_4scan10log_replay22ScanLogReplayProcessorNtNtB23_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCBb8_s_0EE6map_orTjIBw_jEENvYBJ_B4B_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20583)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20584
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20588)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.r = load ptr, ptr %i.q, align 16, !alias.scope !20589, !noundef !30
  %.not.i.i.i.i.i62.i = icmp eq ptr %i.r, null
  %.not7.i.i.i.i.i63.i = icmp eq i64 %i.o, 4      ; 2 uses
  br i1 %.not.i.i.i.i.i62.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not7.i.i.i.i.i63.i, label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i64.i, label %bb.m

bb.j:                                             ; preds = %bb.h
  br i1 %.not7.i.i.i.i.i63.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB11_6traits8iterator8Iteratorp4ItemINtNtB13_6result6ResultIB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3u_5error5ErrorENtNtB13_6marker4SendEL_ENCNvMNtB3u_11log_segmentNtB5d_10LogSegment24create_checkpoint_streams_0EINtNtNtB4_8adaptors3map14MapSpecialCaseINtNtBZ_5chain5ChainINtNtNtB11_7sources4once4OnceB2X_EINtNtBZ_7flatten7FlattenINtNtB13_6option8IntoIterB1I_EEEINtB6l_18MapSpecialCaseFnOkNCNCB5a_s_00EEB4p_EB2i_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(672) dereferenceable_or_null(672) %i.p), !noalias !20590
  %.phi.trans.insert.i.i.i65.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i.i.i66.i = load i64, ptr %.phi.trans.insert.i.i.i65.i, align 8, !range !31, !noalias !20584
  %i.s = trunc nuw i64 %.pre.i.i.i66.i to i1
  br label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i64.i

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.t, align 8, !alias.scope !20591, !noalias !20584
  br label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i64.i

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20592
  call void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB11_6traits8iterator8Iteratorp4ItemINtNtB13_6result6ResultIB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3u_5error5ErrorENtNtB13_6marker4SendEL_ENCNvMNtB3u_11log_segmentNtB5d_10LogSegment24create_checkpoint_streams_0EINtNtNtB4_8adaptors3map14MapSpecialCaseINtNtBZ_5chain5ChainINtNtNtB11_7sources4once4OnceB2X_EINtNtBZ_7flatten7FlattenINtNtB13_6option8IntoIterB1I_EEEINtB6l_18MapSpecialCaseFnOkNCNCB5a_s_00EEB4p_EB2i_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(672) dereferenceable_or_null(672) %i.p), !noalias !20593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20592
  br label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i64.i

_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i64.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  %i.u = phi i1 [ %i.s, %bb.k ], [ true, %bb.l ], [ false, %bb.m ], [ false, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !20584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20584
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapINtNtBO_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1o_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIB42_DNtNtB23_11engine_data10EngineDataEL_ENtNtB23_5error5ErrorENtNtB5_6marker4SendEL_ENCNvMNtB23_11log_segmentNtB75_10LogSegment24create_checkpoint_streams_0EINtNtNtB3c_8adaptors3map14MapSpecialCaseIB1E_INtNtNtBQ_7sources4once4OnceB5f_EINtNtBO_7flatten7FlattenINtB3_8IntoIterB41_EEEINtB8d_18MapSpecialCaseFnOkNCNCB72_s_00EEB6i_ENCB72_s0_0EENCINvYNtNtNtB23_4scan10log_replay22ScanLogReplayProcessorNtNtB23_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCBb8_s_0EE6map_orTjIBw_jEENvYBJ_B4B_9size_hintECs14kWLkQVSKO_14deltalake_core.exit67.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapINtNtBO_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1o_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIB42_DNtNtB23_11engine_data10EngineDataEL_ENtNtB23_5error5ErrorENtNtB5_6marker4SendEL_ENCNvMNtB23_11log_segmentNtB75_10LogSegment24create_checkpoint_streams_0EINtNtNtB3c_8adaptors3map14MapSpecialCaseIB1E_INtNtNtBQ_7sources4once4OnceB5f_EINtNtBO_7flatten7FlattenINtB3_8IntoIterB41_EEEINtB8d_18MapSpecialCaseFnOkNCNCB72_s_00EEB6i_ENCB72_s0_0EENCINvYNtNtNtB23_4scan10log_replay22ScanLogReplayProcessorNtNtB23_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCBb8_s_0EE6map_orTjIBw_jEENvYBJ_B4B_9size_hintECs14kWLkQVSKO_14deltalake_core.exit67.i: ; preds = %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i64.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapINtNtBO_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1o_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIB42_DNtNtB23_11engine_data10EngineDataEL_ENtNtB23_5error5ErrorENtNtB5_6marker4SendEL_ENCNvMNtB23_11log_segmentNtB75_10LogSegment24create_checkpoint_streams_0EINtNtNtB3c_8adaptors3map14MapSpecialCaseIB1E_INtNtNtBQ_7sources4once4OnceB5f_EINtNtBO_7flatten7FlattenINtB3_8IntoIterB41_EEEINtB8d_18MapSpecialCaseFnOkNCNCB72_s_00EEB6i_ENCB72_s0_0EENCINvYNtNtNtB23_4scan10log_replay22ScanLogReplayProcessorNtNtB23_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCBb8_s_0EE6map_orTjIBw_jEENvYBJ_B4B_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.8.0.i = phi i64 [ %i.w, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i64.i ], [ 0, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapINtNtBO_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1o_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIB42_DNtNtB23_11engine_data10EngineDataEL_ENtNtB23_5error5ErrorENtNtB5_6marker4SendEL_ENCNvMNtB23_11log_segmentNtB75_10LogSegment24create_checkpoint_streams_0EINtNtNtB3c_8adaptors3map14MapSpecialCaseIB1E_INtNtNtBQ_7sources4once4OnceB5f_EINtNtBO_7flatten7FlattenINtB3_8IntoIterB41_EEEINtB8d_18MapSpecialCaseFnOkNCNCB72_s_00EEB6i_ENCB72_s0_0EENCINvYNtNtNtB23_4scan10log_replay22ScanLogReplayProcessorNtNtB23_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCBb8_s_0EE6map_orTjIBw_jEENvYBJ_B4B_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.575.0.i = phi i1 [ %i.u, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtBa_3map3MapINtNtBa_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB10_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB10_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6traits8iterator8Iteratorp4ItemINtNtBe_6result6ResultIB3E_DNtNtB1F_11engine_data10EngineDataEL_ENtNtB1F_5error5ErrorENtNtBe_6marker4SendEL_ENCNvMNtB1F_11log_segmentNtB6H_10LogSegment24create_checkpoint_streams_0EINtNtNtB2O_8adaptors3map14MapSpecialCaseIB1g_INtNtNtBc_7sources4once4OnceB4R_EINtNtBa_7flatten7FlattenINtNtBe_6option8IntoIterB3D_EEEINtB7P_18MapSpecialCaseFnOkNCNCB6E_s_00EEB5U_ENCB6E_s0_0EENCINvYNtNtNtB1F_4scan10log_replay22ScanLogReplayProcessorNtNtB1F_10log_replay18LogReplayProcessor20process_actions_iterB1f_E0ENCBaT_s_0EB4d_9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i64.i ], [ true, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapINtNtBO_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1o_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIB42_DNtNtB23_11engine_data10EngineDataEL_ENtNtB23_5error5ErrorENtNtB5_6marker4SendEL_ENCNvMNtB23_11log_segmentNtB75_10LogSegment24create_checkpoint_streams_0EINtNtNtB3c_8adaptors3map14MapSpecialCaseIB1E_INtNtNtBQ_7sources4once4OnceB5f_EINtNtBO_7flatten7FlattenINtB3_8IntoIterB41_EEEINtB8d_18MapSpecialCaseFnOkNCNCB72_s_00EEB6i_ENCB72_s0_0EENCINvYNtNtNtB23_4scan10log_replay22ScanLogReplayProcessorNtNtB23_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCBb8_s_0EE6map_orTjIBw_jEENvYBJ_B4B_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1440
  %i.y = load i64, ptr %i.x, align 16, !range !43, !alias.scope !20567, !noundef !30 ; 2 uses
  %.not55.i = icmp eq i64 %i.y, 6
  br i1 %.not55.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapINtNtBO_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1o_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIB42_DNtNtB23_11engine_data10EngineDataEL_ENtNtB23_5error5ErrorENtNtB5_6marker4SendEL_ENCNvMNtB23_11log_segmentNtB75_10LogSegment24create_checkpoint_streams_0EINtNtNtB3c_8adaptors3map14MapSpecialCaseIB1E_INtNtNtBQ_7sources4once4OnceB5f_EINtNtBO_7flatten7FlattenINtB3_8IntoIterB41_EEEINtB8d_18MapSpecialCaseFnOkNCNCB72_s_00EEB6i_ENCB72_s0_0EENCINvYNtNtNtB23_4scan10log_replay22ScanLogReplayProcessorNtNtB23_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCBb8_s_0EE6map_orTjIBw_jEENvYBJ_B4B_9size_hintECs14kWLkQVSKO_14deltalake_core.exit67.i
  %.not81.i = icmp eq i64 %i.y, 5
  %op.rdx = select i1 %.not81.i, i1 %.sroa.5.0.i, i1 false
  %op.rdx3 = select i1 %op.rdx, i1 %.sroa.575.0.i, i1 false
  br i1 %op.rdx3, label %bb.q, label %bb.p

bb.o:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6filter6FilterINtNtBO_3map3MapINtNtBO_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1o_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIB42_DNtNtB23_11engine_data10EngineDataEL_ENtNtB23_5error5ErrorENtNtB5_6marker4SendEL_ENCNvMNtB23_11log_segmentNtB75_10LogSegment24create_checkpoint_streams_0EINtNtNtB3c_8adaptors3map14MapSpecialCaseIB1E_INtNtNtBQ_7sources4once4OnceB5f_EINtNtBO_7flatten7FlattenINtB3_8IntoIterB41_EEEINtB8d_18MapSpecialCaseFnOkNCNCB72_s_00EEB6i_ENCB72_s0_0EENCINvYNtNtNtB23_4scan10log_replay22ScanLogReplayProcessorNtNtB23_10log_replay18LogReplayProcessor20process_actions_iterB1D_E0ENCBb8_s_0EE6map_orTjIBw_jEENvYBJ_B4B_9size_hintECs14kWLkQVSKO_14deltalake_core.exit67.i
  %or.cond56.i = select i1 %.sroa.5.0.i, i1 %.sroa.575.0.i, i1 false
  br i1 %or.cond56.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !20566
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4A_DNtNtB2B_11engine_data10EngineDataEL_ENtNtB2B_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2B_11log_segmentNtB7D_10LogSegment24create_checkpoint_streams_0EINtNtNtB3K_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5N_EINtB5_7FlattenIB1c_B4z_EEEINtB8L_18MapSpecialCaseFnOkNCNCB7A_s_00EEB6Q_ENCB7A_s0_0EENCINvYNtNtNtB2B_4scan10log_replay22ScanLogReplayProcessorNtNtB2B_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCBbm_s_0EEB1z_EB59_9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.z = add i64 %.sroa.8.0.i, %.sroa.7.0.i       ; 2 uses
  %i.aa = icmp uge i64 %i.z, %.sroa.7.0.i
  %.57.i = zext i1 %i.aa to i64
  store i64 0, ptr %0, align 8, !alias.scope !20566
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.57.i, ptr %i.ab, align 8, !alias.scope !20566
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %i.ac, align 8, !alias.scope !20566
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4A_DNtNtB2B_11engine_data10EngineDataEL_ENtNtB2B_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2B_11log_segmentNtB7D_10LogSegment24create_checkpoint_streams_0EINtNtNtB3K_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5N_EINtB5_7FlattenIB1c_B4z_EEEINtB8L_18MapSpecialCaseFnOkNCNCB7A_s_00EEB6Q_ENCB7A_s0_0EENCINvYNtNtNtB2B_4scan10log_replay22ScanLogReplayProcessorNtNtB2B_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCBbm_s_0EEB1z_EB59_9size_hintCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4A_DNtNtB2B_11engine_data10EngineDataEL_ENtNtB2B_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2B_11log_segmentNtB7D_10LogSegment24create_checkpoint_streams_0EINtNtNtB3K_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5N_EINtB5_7FlattenIB1c_B4z_EEEINtB8L_18MapSpecialCaseFnOkNCNCB7A_s_00EEB6Q_ENCB7A_s0_0EENCINvYNtNtNtB2B_4scan10log_replay22ScanLogReplayProcessorNtNtB2B_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCBbm_s_0EEB1z_EB59_9size_hintCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.q
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1b_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1T_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3m_5error5ErrorENtNtBb_6marker4SendEL_EEEB2c_10advance_byCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !20600, !noundef !30
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDB6_p4ItemINtNtBe_6result6ResultIB1e_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2s_5error5ErrorENtNtBe_6marker4SendEL_ENtB4_13SpecAdvanceBy15spec_advance_byCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %1) ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1i_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB20_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtBb_6marker4SendEL_EEB1Z_EB2j_10advance_byCs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val21.pr.i.i = load ptr, ptr %i.b, align 8, !alias.scope !20600 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.val22.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20600 ; 6 uses
  %i.g = icmp eq ptr %.val21.pr.i.i, null
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val22.i.i) ]
  %i.h = load ptr, ptr %.val22.i.i, align 8, !invariant.load !30 ; 2 uses
  %.not.i.i23.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i23.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.h(ptr noundef nonnull %.val21.pr.i.i)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !34, !invariant.load !30 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !42, !invariant.load !30
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.pr.i.i, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #60
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !34, !invariant.load !30 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.body.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !42, !invariant.load !30
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.pr.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #60
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.h
  store ptr null, ptr %i.b, align 8, !alias.scope !20600
  br label %bb.x

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.g, %bb.f, %bb.c, %.thread.i.i
  %i.t = phi ptr [ %i.d, %.thread.i.i ], [ %i.f, %bb.c ], [ %i.f, %bb.f ], [ %i.f, %bb.g ]
  %.sroa.0.041.i.i = phi i64 [ %1, %.thread.i.i ], [ %i.e, %bb.c ], [ %i.e, %bb.f ], [ %i.e, %bb.g ] ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !20600
  %i.u = load ptr, ptr %0, align 8, !alias.scope !20601, !noundef !30
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit29.i.i, label %_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB16_5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemINtNtBc_6result6ResultIB1O_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3h_5error5ErrorENtNtBc_6marker4SendEL_EEEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5A_13FlattenCompatppE13iter_try_fold7flattenB1N_jINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B5A_B5N_B27_10advance_by7advanceB1N_EE0B6E_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB16_5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemINtNtBc_6result6ResultIB1O_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3h_5error5ErrorENtNtBc_6marker4SendEL_EEEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5A_13FlattenCompatppE13iter_try_fold7flattenB1N_jINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B5A_B5N_B27_10advance_by7advanceB1N_EE0B6E_ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.v = call { i64, i64 } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtBa_5boxed3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtB1o_6result6ResultIBY_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2N_5error5ErrorENtNtB1o_6marker4SendEL_EEB1g_8try_foldjNCINvNvMsg_NtNtB1m_8adapters7flattenINtB4R_13FlattenCompatppE13iter_try_fold7flattenBX_jINtNtNtB1o_3ops12control_flow11ControlFlowujEINvNvXsi_B4R_B5g_B1g_10advance_by7advanceBX_EE0B66_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %.sroa.0.041.i.i, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1i_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB20_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtBb_6marker4SendEL_EEB1Z_EB2j_10advance_byCs14kWLkQVSKO_14deltalake_core.exit, label %_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB16_5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemINtNtBc_6result6ResultIB1O_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3h_5error5ErrorENtNtBc_6marker4SendEL_EEEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5A_13FlattenCompatppE13iter_try_fold7flattenB1N_jINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B5A_B5N_B27_10advance_by7advanceB1N_EE0B6E_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB16_5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemINtNtBc_6result6ResultIB1O_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3h_5error5ErrorENtNtBc_6marker4SendEL_EEEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5A_13FlattenCompatppE13iter_try_fold7flattenB1N_jINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B5A_B5N_B27_10advance_by7advanceB1N_EE0B6E_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB16_5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemINtNtBc_6result6ResultIB1O_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3h_5error5ErrorENtNtBc_6marker4SendEL_EEEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5A_13FlattenCompatppE13iter_try_fold7flattenB1N_jINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B5A_B5N_B27_10advance_by7advanceB1N_EE0B6E_ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.y = extractvalue { i64, i64 } %i.v, 1        ; 3 uses
  %.val19.pre.i.i = load ptr, ptr %i.b, align 8, !alias.scope !20600 ; 4 uses
  %.val20.i.i = load ptr, ptr %i.t, align 8, !alias.scope !20600 ; 6 uses
  %i.z = icmp eq ptr %.val19.pre.i.i, null
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit29.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB16_5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemINtNtBc_6result6ResultIB1O_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3h_5error5ErrorENtNtBc_6marker4SendEL_EEEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5A_13FlattenCompatppE13iter_try_fold7flattenB1N_jINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B5A_B5N_B27_10advance_by7advanceB1N_EE0B6E_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i.i) ]
  %i.aa = load ptr, ptr %.val20.i.i, align 8, !invariant.load !30 ; 2 uses
  %.not.i.i25.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i25.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.aa(ptr noundef nonnull %.val19.pre.i.i)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !34, !invariant.load !30 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit29.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !42, !invariant.load !30
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.pre.i.i, i64 noundef range(i64 1, 0) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #60
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit29.i.i

bb.n:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !34, !invariant.load !30 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.body27.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !42, !invariant.load !30
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.pre.i.i, i64 noundef range(i64 1, 0) %i.ai, i64 noundef range(i64 1, 536870913) %i.al) #60
  br label %.body27.i.i

.body27.i.i:                                      ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.b, align 8, !alias.scope !20600
  br label %bb.x

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit29.i.i: ; preds = %bb.m, %bb.l, %_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB16_5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemINtNtBc_6result6ResultIB1O_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3h_5error5ErrorENtNtBc_6marker4SendEL_EEEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5A_13FlattenCompatppE13iter_try_fold7flattenB1N_jINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B5A_B5N_B27_10advance_by7advanceB1N_EE0B6E_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.3.i244565.i.i = phi i64 [ %i.y, %_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB16_5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemINtNtBc_6result6ResultIB1O_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3h_5error5ErrorENtNtBc_6marker4SendEL_EEEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5A_13FlattenCompatppE13iter_try_fold7flattenB1N_jINtNtNtBc_3ops12control_flow11ControlFlowujEINvNvXsi_B5A_B5N_B27_10advance_by7advanceB1N_EE0B6E_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ %i.y, %bb.m ], [ %i.y, %bb.l ], [ %.sroa.0.041.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !20600
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !20600, !noundef !30
  %.not16.i.i = icmp eq ptr %i.an, null
  br i1 %.not16.i.i, label %bb.y, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit29.i.i
  %i.ao = call noundef i64 @_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDB6_p4ItemINtNtBe_6result6ResultIB1e_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2s_5error5ErrorENtNtBe_6marker4SendEL_ENtB4_13SpecAdvanceBy15spec_advance_byCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am, i64 noundef %.3.i244565.i.i) ; 4 uses
  %.not.i.i30.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i30.i.i, label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1i_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB20_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtBb_6marker4SendEL_EEB1Z_EB2j_10advance_byCs14kWLkQVSKO_14deltalake_core.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val.pr.i.i = load ptr, ptr %i.am, align 8, !alias.scope !20600 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val18.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !20600 ; 6 uses
  %i.aq = icmp eq ptr %.val.pr.i.i, null
  br i1 %i.aq, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18.i.i) ]
  %i.ar = load ptr, ptr %.val18.i.i, align 8, !invariant.load !30 ; 2 uses
  %.not.i.i33.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i33.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void %i.ar(ptr noundef nonnull %.val.pr.i.i)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !34, !invariant.load !30 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !42, !invariant.load !30
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.pr.i.i, i64 noundef range(i64 1, 0) %i.at, i64 noundef range(i64 1, 536870913) %i.aw) #60
  br label %bb.y

bb.v:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !34, !invariant.load !30 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.body35.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !42, !invariant.load !30
end_hunk_1
begin_hunk_2_@_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1b_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1T_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3m_5error5ErrorENtNtBb_6marker4SendEL_EEEB2c_4nextCs14kWLkQVSKO_14deltalake_core:.peel.begin
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !42, !invariant.load !30, !noalias !20627
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #60, !noalias !20627
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit8:                                       ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit8
  %.val.i.i.lcssa = phi ptr [ %.val.i.i, %.loopexit8 ], [ %.val.i.i.peel, %.loopexit.split-lp ]
  %.val4.i.i.lcssa = phi ptr [ %.val4.i.i, %.loopexit8 ], [ %.val4.i.i.peel, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit8 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4.i.i.lcssa, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !34, !invariant.load !30, !noalias !20627 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.val4.i.i.lcssa, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !42, !invariant.load !30, !noalias !20627
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.lcssa, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #60, !noalias !20627
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.n, %bb.m
  store ptr null, ptr %i.c, align 8, !alias.scope !20624
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.b) #59
          to label %common.resume.i unwind label %bb.o, !noalias !20627

bb.o:                                             ; preds = %.body.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !20627
  unreachable

common.resume.i:                                  ; preds = %.body.i14.i, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ay, %.body.i14.i ], [ %lpad.phi, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i

.loopexit:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  %.lcssa = phi i64 [ %i.h, %bb.a ], [ %i.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.7.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx30.i, i64 88, i1 false), !noalias !20623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20632
  store i64 %.lcssa, ptr %0, align 16, !alias.scope !20622
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1i_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB20_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtBb_6marker4SendEL_EEB1Z_EB2j_4nextCs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.h, %bb.k, %bb.l
  store ptr null, ptr %i.c, align 8, !alias.scope !20624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20632
  %i.aj = load ptr, ptr %1, align 8, !alias.scope !20633, !noundef !30
  %.not.i8.i = icmp eq ptr %i.aj, null
  br i1 %.not.i8.i, label %.loopexit9, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ak = load ptr, ptr %i.e, align 8, !alias.scope !20634, !nonnull !30, !noundef !30
  %i.al = load ptr, ptr %i.f, align 8, !alias.scope !20634, !nonnull !30, !noundef !30 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ak
  br i1 %i.am, label %.loopexit9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i, !llvm.loop !20618

.loopexit9:                                       ; preds = %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.peel
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20635)
  call void @llvm.experimental.noalias.scope.decl(metadata !20636)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20637
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !20638, !noundef !30
  %.not.i9.i = icmp eq ptr %i.ao, null
  br i1 %.not.i9.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit9
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an), !noalias !20639
  %i.ap = load i64, ptr %i.a, align 16, !range !56, !noalias !20637, !noundef !30
  %.not3.i10.i = icmp eq i64 %i.ap, -9223372036854775742
  br i1 %.not3.i10.i, label %bb.t, label %bb.s

bb.r:                                             ; preds = %.loopexit9
  store i64 -9223372036854775742, ptr %0, align 16, !alias.scope !20639
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultIB17_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Q_5error5ErrorENtNtB8_6marker4SendEL_EB2k_NvYB16_B1G_4nextECs14kWLkQVSKO_14deltalake_core.exit16.i

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i15.i, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !20638
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultIB17_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Q_5error5ErrorENtNtB8_6marker4SendEL_EB2k_NvYB16_B1G_4nextECs14kWLkQVSKO_14deltalake_core.exit16.i

bb.t:                                             ; preds = %bb.q
  %.val.i11.i = load ptr, ptr %i.an, align 8, !alias.scope !20638, !noundef !30 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val4.i12.i = load ptr, ptr %i.aq, align 8, !alias.scope !20638 ; 6 uses
  %i.ar = icmp eq ptr %.val.i11.i, null
  br i1 %i.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i15.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i12.i) ]
  %i.as = load ptr, ptr %.val4.i12.i, align 8, !invariant.load !30, !noalias !20639 ; 2 uses
  %.not.i.i.i13.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i13.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void %i.as(ptr noundef nonnull %.val.i11.i)
          to label %bb.w unwind label %bb.y, !noalias !20639

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %.val4.i12.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !34, !invariant.load !30, !noalias !20639 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i15.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = getelementptr inbounds nuw i8, ptr %.val4.i12.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !42, !invariant.load !30, !noalias !20639
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i11.i, i64 noundef range(i64 1, 0) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #60, !noalias !20639
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i15.i

bb.y:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = getelementptr inbounds nuw i8, ptr %.val4.i12.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !34, !invariant.load !30, !noalias !20639 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.body.i14.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = getelementptr inbounds nuw i8, ptr %.val4.i12.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !42, !invariant.load !30, !noalias !20639
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i11.i, i64 noundef range(i64 1, 0) %i.ba, i64 noundef range(i64 1, 536870913) %i.bd) #60, !noalias !20639
  br label %.body.i14.i

.body.i14.i:                                      ; preds = %bb.z, %bb.y
  store ptr null, ptr %i.an, align 8, !alias.scope !20638
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.a) #59
          to label %common.resume.i unwind label %bb.aa, !noalias !20639

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i15.i: ; preds = %bb.x, %bb.w, %bb.t
  store ptr null, ptr %i.an, align 8, !alias.scope !20638
  br label %bb.s

bb.aa:                                            ; preds = %.body.i14.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !20639
  unreachable

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultIB17_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Q_5error5ErrorENtNtB8_6marker4SendEL_EB2k_NvYB16_B1G_4nextECs14kWLkQVSKO_14deltalake_core.exit16.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20637
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1i_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB20_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtBb_6marker4SendEL_EEB1Z_EB2j_4nextCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1i_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB20_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtBb_6marker4SendEL_EEB1Z_EB2j_4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.loopexit, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultIB17_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Q_5error5ErrorENtNtB8_6marker4SendEL_EB2k_NvYB16_B1G_4nextECs14kWLkQVSKO_14deltalake_core.exit16.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1b_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1T_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3m_5error5ErrorENtNtBb_6marker4SendEL_EEEB2c_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20648)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20649
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !20648, !noundef !30
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.c), !noalias !20650
  %.pre.i = load i64, ptr %i.b, align 8, !noalias !20649
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre73.i = load i64, ptr %.phi.trans.insert.i, align 8, !range !31, !noalias !20649
  %.phi.trans.insert74.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre75.i = load i64, ptr %.phi.trans.insert74.i, align 8, !noalias !20649
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %.pre75.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.f = phi i64 [ %.pre73.i, %bb.b ], [ 1, %bb.a ] ; 2 uses
  %i.g = phi i64 [ %.pre.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20649
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !20648, !noundef !30
  %.not54.i = icmp eq ptr %i.i, null
  br i1 %.not54.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit63.i, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.h), !noalias !20651
  %.pre76.i = load i64, ptr %i.a, align 8, !noalias !20649
  %.phi.trans.insert77.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre78.i = load i64, ptr %.phi.trans.insert77.i, align 8, !range !31, !noalias !20649
  %.phi.trans.insert79.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre80.i = load i64, ptr %.phi.trans.insert79.i, align 8, !noalias !20649
  %i.j = call i64 @llvm.uadd.sat.i64(i64 %i.g, i64 %.pre76.i)
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit63.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit63.i: ; preds = %bb.c, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.k = phi i64 [ %.pre80.i, %bb.c ], [ 0, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.fr2 = phi i64 [ %.pre78.i, %bb.c ], [ 1, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.l = phi i64 [ %i.j, %bb.c ], [ %i.g, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20649
  %i.m = load ptr, ptr %1, align 8, !alias.scope !20648, !noundef !30
  %.not55.i = icmp eq ptr %i.m, null
  br i1 %.not55.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit63.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !20648, !nonnull !30, !noundef !30
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val62.i = load ptr, ptr %i.o, align 8, !alias.scope !20648, !nonnull !30, !noundef !30
  %i.p = icmp eq ptr %.val62.i, %.val.i
  %i.q = trunc nuw i64 %i.f to i1
  %i.r = trunc nuw i64 %.fr2 to i1
  %op.rdx = select i1 %i.p, i1 %i.q, i1 false
  %op.rdx1 = select i1 %op.rdx, i1 %i.r, i1 false
  br i1 %op.rdx1, label %bb.g, label %bb.f

bb.e:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit63.i
  %i.s = and i64 %.fr2, %i.f
  %or.cond56.not.i = icmp eq i64 %i.s, 0
  br i1 %or.cond56.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.l, ptr %0, align 8, !alias.scope !20647
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1i_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB20_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtBb_6marker4SendEL_EEB1Z_EB2j_9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.t = add i64 %i.k, %i.e                       ; 2 uses
  %i.u = icmp uge i64 %i.t, %i.e
  %.57.i = zext i1 %i.u to i64
  store i64 %i.l, ptr %0, align 8, !alias.scope !20647
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.57.i, ptr %i.v, align 8, !alias.scope !20647
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1i_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB20_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtBb_6marker4SendEL_EEB1Z_EB2j_9size_hintCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1i_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB20_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtBb_6marker4SendEL_EEB1Z_EB2j_9size_hintCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %bb.g
  %.sink82.i = phi i64 [ 16, %bb.g ], [ 8, %bb.f ]
  %.sink.i = phi i64 [ %i.t, %bb.g ], [ 0, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.sink82.i
  store i64 %.sink.i, ptr %i.w, align 8, !alias.scope !20647
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs9a_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !59, !noundef !30 ; 3 uses
  %i.b = load i64, ptr %1, align 8, !range !59, !noundef !30 ; 2 uses
  %.not = icmp eq i64 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.c [
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call i8 @llvm.scmp.i8.i64(i64 %i.a, i64 %i.b)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.h)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi i8 [ %i.c, %bb.c ], [ %i.f, %bb.d ], [ %i.i, %bb.e ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs9e_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !94, !noundef !30
  %i.b = icmp eq i64 %i.a, 69                     ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !94, !noundef !30
  %i.d = icmp eq i64 %i.c, 69                     ; 2 uses
  %or.cond = or i1 %i.b, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.neg = sext i1 %i.d to i8
  %i.e = zext i1 %i.b to i8
  %i.f = add nsw i8 %.neg, %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #62
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs9o_NtCs4lawaffTVVK_9sqlparser3astNtB6_13CaseStatementNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1232) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1232) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !94, !noundef !30
  %.not = icmp eq i64 %i.a, 69
  %i.b = load i64, ptr %1, align 8, !range !94, !noundef !30
  %.not16 = icmp eq i64 %i.b, 69                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not16, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2V_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.c:                                             ; preds = %bb.a
  br i1 %.not16, label %bb.d, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2V_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.t
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !30, !noundef !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.f = load i64, ptr %i.e, align 8, !noundef !30 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !30, !noundef !30
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.j = load i64, ptr %i.i, align 8, !noundef !30 ; 3 uses
  %.sroa.0.0.i25 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 13101380734168716) %i.j, i64 range(i64 0, 13101380734168716) %i.f) ; 2 uses
  %exitcond.not55 = icmp eq i64 %.sroa.0.0.i25, 0
  br i1 %exitcond.not55, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2V_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph58

bb.e:                                             ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit
  %exitcond.not = icmp eq i64 %i.k, %.sroa.0.0.i25
  br i1 %exitcond.not, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2V_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.d, %bb.e
  %.sroa.01.0.i56 = phi i64 [ %i.k, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.k = add nuw i64 %.sroa.01.0.i56, 1           ; 2 uses
  %i.l = getelementptr inbounds nuw [704 x i8], ptr %i.d, i64 %.sroa.01.0.i56 ; 8 uses
  %i.m = getelementptr inbounds nuw [704 x i8], ptr %i.h, i64 %.sroa.01.0.i56 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20670)
  %i.n = load i64, ptr %i.l, align 8, !range !94, !alias.scope !20671, !noundef !30
  %.not.i.i = icmp eq i64 %i.n, 69
  %i.o = load i64, ptr %i.m, align 8, !range !94, !alias.scope !20672, !noundef !30
  %.not12.i.i = icmp eq i64 %i.o, 69              ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph58
  br i1 %.not12.i.i, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2V_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.g:                                             ; preds = %.lr.ph58
  br i1 %.not12.i.i, label %bb.h, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2V_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 616
  %i.q = load i8, ptr %i.p, align 8, !range !126, !alias.scope !20671, !noundef !30
  %.not14.i.i = icmp eq i8 %i.q, 103
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 616
  %i.s = load i8, ptr %i.r, align 8, !range !126, !alias.scope !20672, !noundef !30
  %.not15.i.i = icmp eq i8 %i.s, 103              ; 2 uses
  br i1 %.not14.i.i, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.t = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %i.m) #62, !inline_history !19 ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.h, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.h
  br i1 %.not15.i.i, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2V_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.k:                                             ; preds = %bb.h
  br i1 %.not15.i.i, label %bb.l, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2V_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 328
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20674)
  %i.x = load i64, ptr %i.v, align 8, !range !32, !alias.scope !20673, !noundef !30
  %i.y = icmp ne i64 %i.x, -9223372036854775808   ; 2 uses
  %i.z = zext i1 %i.y to i8
  %i.aa = load i64, ptr %i.w, align 8, !range !32, !alias.scope !20674, !noundef !30
  %i.ab = icmp ne i64 %i.aa, -9223372036854775808 ; 3 uses
  %.neg.i = sext i1 %i.ab to i8
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.ab, label %bb.r, label %bb.o

bb.n:                                             ; preds = %bb.l
  br i1 %i.ab, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ac = add nsw i8 %.neg.i, %i.z
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.p:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 344
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !20673, !nonnull !30, !noundef !30
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 352
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !20673, !noundef !30 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !20674, !nonnull !30, !noundef !30
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 352
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !20674, !noundef !30 ; 2 uses
  %.sroa.0.0.i2.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 3431314001806093) %i.ak, i64 range(i64 0, 3431314001806093) %i.ag) ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %.sroa.0.0.i2.i, 0
  br i1 %exitcond.not.i49, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %i.al = add nuw i64 %.sroa.01.0.i.i50, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %.sroa.0.0.i2.i
end_hunk_2
