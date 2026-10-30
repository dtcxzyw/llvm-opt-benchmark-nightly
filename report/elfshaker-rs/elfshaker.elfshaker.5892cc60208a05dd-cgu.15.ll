Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.15?download=true
inline.NumInlined: 481
inline.NumDeleted: 345
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENCINvMsa_NtNtB1Y_4repo4packNtB2P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0ENtNtNtBa_6traits8iterator8Iterator4foldyNCINvNtB8_7flatten11flatten_oneINtNtBc_6option6OptionyEyNCINvXsC_NtB4d_5accumyNtB5Q_3Sum3sumINtB4S_7FlatMapBX_B5i_B2G_EE0E0ECs7BtpbLEd5q3_9elfshaker:bb.a
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.i.i.i.i.epil.init ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %.val.i.i.i.i.i.i.epil = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ab = getelementptr i8, ptr %i.z, i64 32
  %.val11.i.i.i.i.i.i.epil = load i64, ptr %i.ab, align 8, !noundef !6
  %i.ac = add i64 %.val11.i.i.i.i.i.i.epil, %.val.i.i.i.i.i.i.epil
  %..i.i.i.i.i.i.i.i.i.epil = tail call noundef i64 @llvm.umax.i64(i64 %i.ac, i64 %.sroa.02.0.i.i.i.i.i.i.epil.init)
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %.epil.preheader, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.loopexit.unr-lcssa, %bb.d, %bb.c
  %i.ad = phi i64 [ 0, %bb.c ], [ %i.l, %bb.d ], [ %..i.i.i.i.i.i.i.i.i.1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.loopexit.unr-lcssa ], [ %..i.i.i.i.i.i.i.i.i.epil, %.epil.preheader ]
  %spec.select.i.i.i = add i64 %i.ad, %.sroa.02.0.i ; 2 uses
  %i.ae = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.e
  br i1 %i.af, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB2f_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionyEyNCINvMsa_NtNtB1r_4repo4packNtB45_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB31_7flatten11flatten_oneB3x_yNCINvXsC_NtB2d_5accumyNtB68_3Sum3sumINtB5t_7FlatMapBF_B3x_B3W_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB2f_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionyEyNCINvMsa_NtNtB1r_4repo4packNtB45_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB31_7flatten11flatten_oneB3x_yNCINvXsC_NtB2d_5accumyNtB68_3Sum3sumINtB5t_7FlatMapBF_B3x_B3W_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %spec.select.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1p_NtB1p_9PackIndex20entries_from_handlesBX_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtB1p_9PackErrorEEB35_8try_folduNCINvNvB35_12try_for_each4callNtB1p_9FileEntryINtNtNtBc_3ops12control_flow11ControlFlowB5G_ENcNtB5W_5Break0E0B5W_E0IB5X_B5W_EECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.6.i = alloca [48 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !560, !nonnull !6, !noundef !6 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !560 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i, %i.c
  br i1 %i.d, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !561, !nonnull !6, !align !11, !noundef !6
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.g = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.h, %bb.f ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !alias.scope !560
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !562
  %i.i = load ptr, ptr %.val.i.i, align 8, !noalias !563, !nonnull !6, !align !11, !noundef !6
  call void @_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex15handle_to_entry(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.g), !noalias !564
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !561 ; 3 uses
  %i.j = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %i.j, label %bb.c, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %3, align 8, !range !17, !alias.scope !565, !noalias !566, !noundef !6
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i unwind label %bb.e, !noalias !567

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !561
  resume { ptr, i32 } %i.m

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !562
  br label %.loopexit.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.b
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !562
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -2
  br i1 %.not.i.i, label %bb.f, label %.loopexit.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.a
  store i64 -2, ptr %0, align 8, !alias.scope !569
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtBL_9FileEntryNtBL_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3W_B3p_EENCINvMsd_BL_NtBL_9PackIndex20entries_from_handlesB3_E0NCINvXB2s_INtB2s_12GenericShuntINtB2q_3MapB3_B4L_EIB34_zB3E_EEB1w_8try_folduNCINvNvB1w_12try_for_each4callB3p_B4A_NcNtB4A_5Break0E0B4A_E0E0B3V_ECs7BtpbLEd5q3_9elfshaker.exit

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i
  %.sroa.8.011.i = phi i64 [ undef, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i ], [ %.sroa.7.0.copyload.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i, i64 48, i1 false), !noalias !559
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  store i64 %.sroa.0.0.copyload.i.i, ptr %0, align 8, !alias.scope !570
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.8.011.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !570
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtBL_9FileEntryNtBL_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3W_B3p_EENCINvMsd_BL_NtBL_9PackIndex20entries_from_handlesB3_E0NCINvXB2s_INtB2s_12GenericShuntINtB2q_3MapB3_B4L_EIB34_zB3E_EEB1w_8try_folduNCINvNvB1w_12try_for_each4callB3p_B4A_NcNtB4A_5Break0E0B4A_E0E0B3V_ECs7BtpbLEd5q3_9elfshaker.exit

bb.f:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.n = icmp eq ptr %i.h, %i.c
  br i1 %i.n, label %._crit_edge.i, label %bb.b

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtBL_9FileEntryNtBL_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3W_B3p_EENCINvMsd_BL_NtBL_9PackIndex20entries_from_handlesB3_E0NCINvXB2s_INtB2s_12GenericShuntINtB2q_3MapB3_B4L_EIB34_zB3E_EEB1w_8try_folduNCINvNvB1w_12try_for_each4callB3p_B4A_NcNtB4A_5Break0E0B4A_E0E0B3V_ECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %._crit_edge.i, %.loopexit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1p_NtB1p_9PackIndex23entry_refs_from_handlesBX_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtB1p_9PackErrorEEB38_8try_folduNCINvNvB38_12try_for_each4callNtB1p_12FileEntryRefINtNtNtBc_3ops12control_flow11ControlFlowB5J_ENcNtB63_5Break0E0B63_E0IB64_B63_EECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sink.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sink.i.sroa.gep1.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !589, !nonnull !6, !noundef !6 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !589 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i, %i.e
  br i1 %i.f, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtBL_12FileEntryRefNtBL_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB40_B3p_EENCINvMsd_BL_NtBL_9PackIndex23entry_refs_from_handlesB3_E0NCINvXB2s_INtB2s_12GenericShuntINtB2q_3MapB3_B4P_EIB34_zB3I_EEB1w_8try_folduNCINvNvB1w_12try_for_each4callB3p_B4E_NcNtB4E_5Break0E0B4E_E0E0B3Z_ECs7BtpbLEd5q3_9elfshaker.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !590, !nonnull !6, !align !11, !noundef !6
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.i, %bb.h ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !alias.scope !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !591
  %i.j = load ptr, ptr %.val.i.i, align 8, !noalias !592, !nonnull !6, !align !11, !noundef !6
  call void @_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex19handle_to_entry_ref(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.h), !noalias !593
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !590 ; 3 uses
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !590 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.l = load i64, ptr %3, align 8, !range !17, !alias.scope !594, !noalias !595, !noundef !6
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.f, !noalias !596

bb.e:                                             ; preds = %bb.b
  %.not.i3.i.i.i = icmp eq ptr %.sroa.4.0.copyload.i.i, null
  br i1 %.not.i3.i.i.i, label %bb.h, label %.loopexit.i

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !595
  %.sroa.516.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.516.0..8.val.sroa_idx.i.i.i, align 8, !noalias !595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.gep.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !590
  resume { ptr, i32 } %i.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !595
  %.sroa.516.0..8.val.sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.516.0..8.val.sroa_idx17.i.i.i, align 8, !noalias !595
  br label %bb.g

.loopexit.i:                                      ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %i.p = phi ptr [ %i.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i ], [ %i.o, %.loopexit.i ]
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i ], [ %.sink.i.sroa.gep1.i, %.loopexit.i ]
  %.sroa.4.0.copyload.sink.i.i = phi ptr [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i ], [ %.sroa.4.0.copyload.i.i, %.loopexit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.phi.i, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !591
  store ptr %.sroa.4.0.copyload.sink.i.i, ptr %i.c, align 8, !noalias !591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !591
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !588
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtBL_12FileEntryRefNtBL_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB40_B3p_EENCINvMsd_BL_NtBL_9PackIndex23entry_refs_from_handlesB3_E0NCINvXB2s_INtB2s_12GenericShuntINtB2q_3MapB3_B4P_EIB34_zB3I_EEB1w_8try_folduNCINvNvB1w_12try_for_each4callB3p_B4E_NcNtB4E_5Break0E0B4E_E0E0B3Z_ECs7BtpbLEd5q3_9elfshaker.exit

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !591
  %i.r = icmp eq ptr %i.i, %i.e
  br i1 %i.r, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtBL_12FileEntryRefNtBL_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB40_B3p_EENCINvMsd_BL_NtBL_9PackIndex23entry_refs_from_handlesB3_E0NCINvXB2s_INtB2s_12GenericShuntINtB2q_3MapB3_B4P_EIB34_zB3I_EEB1w_8try_folduNCINvNvB1w_12try_for_each4callB3p_B4E_NcNtB4E_5Break0E0B4E_E0E0B3Z_ECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtBL_12FileEntryRefNtBL_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB40_B3p_EENCINvMsd_BL_NtBL_9PackIndex23entry_refs_from_handlesB3_E0NCINvXB2s_INtB2s_12GenericShuntINtB2q_3MapB3_B4P_EIB34_zB3I_EEB1w_8try_folduNCINvNvB1w_12try_for_each4callB3p_B4E_NcNtB4E_5Break0E0B4E_E0E0B3Z_ECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.h, %bb.a, %bb.g
  %.sink.i = phi i64 [ 1, %bb.g ], [ 0, %bb.a ], [ 0, %bb.h ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs1xwejQucwHj_5alloc6string6StringENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB2I_8try_folduNCINvNvB2I_12try_for_each4callNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtNtBc_3ops12control_flow11ControlFlowB53_ENcNtB5N_5Break0E0B5N_E0IB5O_B5N_EEB27_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %.sroa.8.i.i = alloca [20 x i8], align 8        ; 4 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 5 uses
  %.sroa.9.i = alloca [20 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !624, !nonnull !6, !noundef !6 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !624 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i, %i.e
  br i1 %i.f, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !625, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %.lr.ph.i
  %i.m = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.o ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %i.n, ptr %1, align 8, !alias.scope !624
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %.val5.i = load ptr, ptr %i.m, align 8, !noalias !626, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !627
  %i.o = getelementptr i8, ptr %.val5.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.o, align 8, !noalias !627, !nonnull !6, !noundef !6
  %i.p = getelementptr i8, ptr %.val5.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.p, align 8, !noalias !627, !noundef !6 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !627
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val1.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !627
  %i.q = load i64, ptr %i.b, align 8, !range !15, !noalias !627, !noundef !6
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = load i64, ptr %i.h, align 8, !range !9, !noalias !627, !noundef !6 ; 3 uses
  br i1 %i.r, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.i, align 8, !noalias !627
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.t) #24, !noalias !627
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.i, align 8, !noalias !627, !nonnull !6, !noundef !6 ; 4 uses
  %i.v = icmp ule i64 %.val1.i.i.i.i, %i.s
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !627
  %.not.i.i.i = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.j, %bb.d
  store i64 %i.s, ptr %i.c, align 8, !noalias !627
  store ptr %i.u, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !627
  store i64 %.val1.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !627
  %i.w = load i64, ptr %i.j, align 8, !alias.scope !628, !noalias !627, !noundef !6
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %select.unfold.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtNtB9_3ffi6os_str5OsStrECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %.val1.i.i.i.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !627 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.z = lshr i64 %i.y, 57
  %i.aa = trunc nuw nsw i64 %i.z to i8
  %i.ab = load i64, ptr %i.l, align 8, !alias.scope !631, !noalias !627, !noundef !6 ; 2 uses
  %i.ac = load ptr, ptr %.val.i.i, align 8, !alias.scope !631, !noalias !627, !nonnull !6, !noundef !6 ; 2 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.noexc.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.noexc.i.i.i ], [ %i.av, %bb.i ]
  %.pn.i.i.i.i.i = phi i64 [ %i.y, %.noexc.i.i.i ], [ %i.aw, %bb.i ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.ab ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !632 ; 2 uses
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.ae
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.au, %bb.h ], [ %i.ah, %bb.g ] ; 3 uses
  %i.ai = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.ab
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds [88 x i8], ptr %i.ac, i64 %i.am ; 5 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -88
  %i.ap = invoke noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrINtB2_10EquivalentNtBs_8OsStringE10equivalentCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %.val1.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ao)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !627

.noexc13.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ap, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBU_4hash6random11RandomStateE3getNtBQ_5OsStrECs7BtpbLEd5q3_9elfshaker.exit.i.i.i, label %bb.h, !prof !12

._crit_edge.i.i.i.i.i:                            ; preds = %bb.h, %bb.g
  %i.aq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = icmp eq i16 %i.ar, 0
  br i1 %i.as, label %bb.i, label %select.unfold.i.i.i, !prof !16

bb.h:                                             ; preds = %.noexc13.i.i.i
  %i.at = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.au = and i16 %i.at, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.au, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.av = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.aw = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.av
  br label %bb.g

bb.j:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %.val.i.i.i.i, i64 %.val1.i.i.i.i, i1 false), !noalias !627
  br label %bb.e

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBU_4hash6random11RandomStateE3getNtBQ_5OsStrECs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %bb.f
  %lpad.loopexit.split-lp103 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #21
          to label %common.resume.i.i.i unwind label %bb.n, !noalias !627

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBU_4hash6random11RandomStateE3getNtBQ_5OsStrECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %.noexc13.i.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.an, i64 -64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !627
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !627

select.unfold.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i, %bb.m, %bb.e
  %.sroa.9.0.i.i = phi i32 [ %i.bf, %bb.m ], [ undef, %bb.e ], [ undef, %._crit_edge.i.i.i.i.i ]
  %.sroa.01.0.i.i = phi i1 [ %4, %bb.m ], [ true, %bb.e ], [ true, %._crit_edge.i.i.i.i.i ]
  %.not.i.i = phi i1 [ %5, %bb.m ], [ false, %bb.e ], [ false, %._crit_edge.i.i.i.i.i ]
  %.sroa.01.0.i.i.a = phi i64 [ %.sroa.01.0.copyload.i.i, %bb.m ], [ -1, %bb.e ], [ -1, %._crit_edge.i.i.i.i.i ]
  %i.ay = phi <2 x i64> [ %i.bd, %bb.m ], [ undef, %bb.e ], [ undef, %._crit_edge.i.i.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0B5_.exit.i.i unwind label %bb.k, !noalias !627

bb.k:                                             ; preds = %select.unfold.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i.i.i unwind label %bb.l, !noalias !627

bb.l:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !627
  unreachable

common.resume.i.i.i:                              ; preds = %bb.k, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.az, %bb.k ], [ %lpad.loopexit.split-lp103, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.m:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBU_4hash6random11RandomStateE3getNtBQ_5OsStrECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !625 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !627
  %i.bb = getelementptr inbounds i8, ptr %i.an, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.bb, i64 20, i1 false), !noalias !625
  %i.bc = getelementptr inbounds i8, ptr %i.an, i64 -40
  %i.bd = load <2 x i64>, ptr %i.bc, align 8, !noalias !627
  %i.be = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !noalias !627, !noundef !6
  %4 = icmp eq i64 %.sroa.01.0.copyload.i.i, -1
  %5 = icmp eq i64 %.sroa.01.0.copyload.i.i, -2
  br label %select.unfold.i.i.i

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !627
  unreachable

_RNCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0B5_.exit.i.i: ; preds = %select.unfold.i.i.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !627
  br i1 %.sroa.01.0.i.i, label %6, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB2M_B1Z_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3B_EIB1E_zEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callB1Z_B3q_NcNtB3q_5Break0E0B3q_E0E0B3H_.exit.thread.i

6:                                                ; preds = %_RNCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0B5_.exit.i.i
  store i8 1, ptr %3, align 1, !noalias !633
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB2M_B1Z_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3B_EIB1E_zEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callB1Z_B3q_NcNtB3q_5Break0E0B3q_E0E0B3H_.exit.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB2M_B1Z_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3B_EIB1E_zEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callB1Z_B3q_NcNtB3q_5Break0E0B3q_E0E0B3H_.exit.thread.i: ; preds = %_RNCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0B5_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8.i.i, i64 20, i1 false), !noalias !626
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB2M_B1Z_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3B_EIB1E_zEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callB1Z_B3q_NcNtB3q_5Break0E0B3q_E0E0B3H_.exit.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB2M_B1Z_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3B_EIB1E_zEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callB1Z_B3q_NcNtB3q_5Break0E0B3q_E0E0B3H_.exit.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB2M_B1Z_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3B_EIB1E_zEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callB1Z_B3q_NcNtB3q_5Break0E0B3q_E0E0B3H_.exit.thread.i, %6
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  br i1 %.not.i.i, label %bb.o, label %.loopexit.i

._crit_edge.i:                                    ; preds = %bb.o, %bb.a
  store i64 -2, ptr %0, align 8, !alias.scope !634
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterRNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1t_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB43_B3g_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB2j_INtB2j_12GenericShuntINtB2h_3MapB3_B4S_EIB2V_zEEB1n_8try_folduNCINvNvB1n_12try_for_each4callB3g_B4H_NcNtB4H_5Break0E0B4H_E0E0B42_EB4Y_.exit

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB2M_B1Z_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3B_EIB1E_zEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callB1Z_B3q_NcNtB3q_5Break0E0B3q_E0E0B3H_.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !623
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7.0..sroa_idx8.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.9.i, i64 20, i1 false), !noalias !623
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 %.sroa.01.0.i.i.a, ptr %0, align 8, !alias.scope !635
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.ay, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !635
  %.sroa.89.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.sroa.9.0.i.i, ptr %.sroa.89.0..sroa_idx.i, align 4, !alias.scope !635
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterRNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1t_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB43_B3g_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB2j_INtB2j_12GenericShuntINtB2h_3MapB3_B4S_EIB2V_zEEB1n_8try_folduNCINvNvB1n_12try_for_each4callB3g_B4H_NcNtB4H_5Break0E0B4H_E0E0B42_EB4Y_.exit

bb.o:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB2M_B1Z_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3B_EIB1E_zEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callB1Z_B3q_NcNtB3q_5Break0E0B3q_E0E0B3H_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.bh = icmp eq ptr %i.n, %i.e
  br i1 %i.bh, label %._crit_edge.i, label %bb.b

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterRNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1t_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB43_B3g_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB2j_INtB2j_12GenericShuntINtB2h_3MapB3_B4S_EIB2V_zEEB1n_8try_folduNCINvNvB1n_12try_for_each4callB3g_B4H_NcNtB4H_5Break0E0B4H_E0E0B42_EB4Y_.exit: ; preds = %._crit_edge.i, %.loopexit.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = add i64 %i.i, -1
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.o, align 1, !noalias !644, !noundef !6 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !noalias !645, !noundef !6
  %i.q = icmp eq i8 %.val15.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !noalias !645, !noundef !6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val15.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !noalias !646
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.val15.i.1 = load i8, ptr %i.u, align 1, !noalias !644, !noundef !6 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !noalias !645, !noundef !6
  %i.w = icmp eq i8 %.val15.i.1, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !noalias !645, !noundef !6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val15.i.1, %bb.e ]
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !noalias !646
  %i.aa = add i64 %i.n, 2                         ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val15.i.epil = load i8, ptr %i.ac, align 1, !noalias !644, !noundef !6 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !noalias !645, !noundef !6
  %i.ae = icmp eq i8 %.val15.i.epil, %i.ad
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !noalias !645, !noundef !6
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val15.i.epil, %.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !noalias !646
  %i.ah = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !644
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB12_3VecINtNtBc_6result6ResultIB2L_NtNtB14_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB3N_4algo15run_in_parallelRNtNtB3N_4pack6PackIdB2V_NCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBc_5slice4iter4IterB58_EE0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2K_ENCINvXB8_INtB8_12GenericShuntBN_IB2W_zINtNtB14_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEB6Y_8try_foldB7F_NCINvNtB12_16in_place_collect24write_in_place_with_dropB2K_E0IB2W_B7F_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBbb_B7F_EEB5C_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4, ptr noalias nofree noundef align 8 dereferenceable(16) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB8_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIB1X_NtNtBa_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1W_ENCINvNtNtB44_8adapters3map12map_try_foldBX_IB27_B1W_INtNtBa_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEB4N_INtNtNtB2b_3ops12control_flow11ControlFlowIB27_B4N_zEB4N_ENCNCINvNtB3d_4algo15run_in_parallelRNtNtB3d_4pack6PackIdB26_NCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB2b_5slice4iter4IterB8Q_EE0s_0NCINvXB5z_INtB5z_12GenericShuntINtB5x_3MapBI_B8g_EIB27_zB6i_EEB3Y_8try_foldB4N_NCINvNtB8_16in_place_collect24write_in_place_with_dropB1W_E0B80_E0E0B7k_EB9k_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB12_3VecINtNtBc_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBc_2io5error5ErrorEEEENCNCINvNtNtB3l_4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufB2V_NCINvMs0_NtB4C_10repositoryNtB5V_10Repository15create_snapshotIBY_B59_EB59_E0B6M_E0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2K_ENCINvXB8_INtB8_12GenericShuntBN_IB2W_zINtNtB14_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEB7b_8try_foldB7S_NCINvNtB12_16in_place_collect24write_in_place_with_dropB2K_E0IB2W_B7S_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBbo_B7S_EECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4, ptr noalias nofree noundef align 8 dereferenceable(16) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB8_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB2b_2io5error5ErrorEEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1W_ENCINvNtNtB41_8adapters3map12map_try_foldBX_IB27_B1W_INtNtBa_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEB4K_INtNtNtB2b_3ops12control_flow11ControlFlowIB27_B4K_zEB4K_ENCNCINvNtNtB2M_4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufB26_NCINvMs0_NtB8m_10repositoryNtB9F_10Repository15create_snapshotIBJ_B8T_EB8T_E0Baw_E0s_0NCINvXB5w_INtB5w_12GenericShuntINtB5u_3MapBI_B8d_EIB27_zB6f_EEB3V_8try_foldB4K_NCINvNtB8_16in_place_collect24write_in_place_with_dropB1W_E0B7X_E0E0B7h_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB12_3VecINtNtBc_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB3l_5error5ErrorEEEENCNCINvNtB3l_4algo15run_in_parallelTNtB3j_10PackReaderIB2L_NtNtB3n_7packidx9FileEntryEEB2V_NCINvMsa_B3j_NtB3j_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IBY_B56_EE0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2K_ENCINvXB8_INtB8_12GenericShuntBN_IB2W_zINtNtB14_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEB7w_8try_foldB8d_NCINvNtB12_16in_place_collect24write_in_place_with_dropB2K_E0IB2W_B8d_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBbJ_B8d_EECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4, ptr noalias nofree noundef align 8 dereferenceable(16) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB8_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2M_5error5ErrorEEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1W_ENCINvNtNtB44_8adapters3map12map_try_foldBX_IB27_B1W_INtNtBa_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEB4N_INtNtNtB2b_3ops12control_flow11ControlFlowIB27_B4N_zEB4N_ENCNCINvNtB2M_4algo15run_in_parallelTNtB2K_10PackReaderIB1X_NtNtB2O_7packidx9FileEntryEEB26_NCINvMsa_B2K_NtB2K_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IBJ_B8P_EE0s_0NCINvXB5z_INtB5z_12GenericShuntINtB5x_3MapBI_B8g_EIB27_zB6i_EEB3Y_8try_foldB4N_NCINvNtB8_16in_place_collect24write_in_place_with_dropB1W_E0B80_E0E0B7k_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB12_3VecINtNtBc_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB3m_4algo15run_in_parallelNtNtB3m_4pack6PackIdB2V_NCINvMs0_NtB3m_10repositoryNtB5d_10Repository25find_unreferenced_objectsIBY_B4G_EEs1_0B6e_E0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2K_ENCINvXB8_INtB8_12GenericShuntBN_IB2W_zINtNtB14_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEB6C_8try_foldB7j_NCINvNtB12_16in_place_collect24write_in_place_with_dropB2K_E0IB2W_B7j_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBaP_B7j_EECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4, ptr noalias nofree noundef align 8 dereferenceable(16) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB8_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1W_ENCINvNtNtB3E_8adapters3map12map_try_foldBX_IB27_B1W_INtNtBa_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEB4n_INtNtNtB2b_3ops12control_flow11ControlFlowIB27_B4n_zEB4n_ENCNCINvNtB2N_4algo15run_in_parallelNtNtB2N_4pack6PackIdB26_NCINvMs0_NtB2N_10repositoryNtB8W_10Repository25find_unreferenced_objectsIBJ_B8p_EEs1_0B9X_E0s_0NCINvXB59_INtB59_12GenericShuntINtB57_3MapBI_B7Q_EIB27_zB5S_EEB3y_8try_foldB4n_NCINvNtB8_16in_place_collect24write_in_place_with_dropB1W_E0B7A_E0E0B6U_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENCINvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB2u_10Repository15create_snapshotBX_B1L_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3W_8for_each4callINtNtBc_6result6ResultNtNtB2y_7packidx9FileEntryNtNtNtBc_2io5error5ErrorENCINvMsk_B12_INtB12_3VecB4Z_E14extend_trustedBN_E0E0ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
