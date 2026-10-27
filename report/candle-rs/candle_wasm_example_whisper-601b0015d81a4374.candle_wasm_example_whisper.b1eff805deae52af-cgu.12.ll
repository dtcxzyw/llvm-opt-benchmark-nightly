Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_whisper-601b0015d81a4374.candle_wasm_example_whisper.b1eff805deae52af-cgu.12?download=true
inline.NumInlined: 730
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtNtBc_5slice4iter4IterNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker7SegmentENCNvXNtB1z_3appNtB2B_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component4views_0ENCINvXs8_NtNtB31_11virtual_dom5vnodeNtB40_5VNodeINtNtNtBa_6traits7collect12FromIteratorB4r_E9from_iterB11_E0ENCINvXs2_NtB42_5vlistNtB5L_5VListIB4E_B4r_E9from_iterBX_E0ENtNtB4I_8iterator8Iterator4folduNCINvNvB6z_8for_each4callB4r_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7H_3VecB4r_E14extend_trustedBN_E0E0EB1z_:bb.a
_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit100.i.i.i.i.i: ; preds = %bb.bf
  %i.et = load i64, ptr %i.cx, align 8, !noalias !806, !noundef !5
  %i.eu = add i64 %i.et, -1                       ; 2 uses
  store i64 %i.eu, ptr %i.cx, align 8, !noalias !806
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %bb.bg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit102.i.i.i.i.i

bb.bg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit100.i.i.i.i.i
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCs9OLX912zl7o_3yew4html12NodeRefInnerEE9drop_slowB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit102.i.i.i.i.i unwind label %bb.bc, !noalias !784

bb.bh:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i, %bb.g
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew11virtual_dom10AttributesECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ac) #27
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit104.i.i.i.i.i unwind label %bb.bc, !noalias !784

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit104.i.i.i.i.i: ; preds = %bb.bh
  %i.ex = load i64, ptr %i.ca, align 8, !noalias !807, !noundef !5
  %i.ey = add i64 %i.ex, -1                       ; 2 uses
  store i64 %i.ey, ptr %i.ca, align 8, !noalias !807
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.bi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit106.i.i.i.i.i

bb.bi:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit104.i.i.i.i.i
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCs9OLX912zl7o_3yew4html12NodeRefInnerEE9drop_slowB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit106.i.i.i.i.i unwind label %bb.bc, !noalias !784

bb.bj:                                            ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ej, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !782
  %i.fa = getelementptr inbounds nuw [32 x i8], ptr %.sroa.9.0.copyload.i.i, i64 %.val10.i.i.i ; 2 uses
  store i32 3, ptr %i.fa, align 8, !noalias !808
  %.sroa.54.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr %i.ej, ptr %.sroa.54.0..sroa_idx.i.i.i.i, align 8, !noalias !808
  %i.fb = add i64 %.val10.i.i.i, 1                ; 2 uses
  %i.fc = add nuw i64 %.sroa.01.0.i.i.i, 1        ; 2 uses
  %i.fd = icmp eq i64 %i.fc, %i.am
  br i1 %i.fd, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker7SegmentENCNvXNtB1v_3appNtB2x_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component4views_0ENCINvXs8_NtNtB2X_11virtual_dom5vnodeNtB3W_5VNodeINtNtNtBa_6traits7collect12FromIteratorB4n_E9from_iterBX_E0ENtNtB4E_8iterator8Iterator4folduNCINvB6_8map_foldB4n_B4n_uNCINvXs2_NtB3Y_5vlistNtB6C_5VListIB4A_B4n_E9from_iterBN_E0NCINvNvB5x_8for_each4callB4n_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB81_3VecB4n_E14extend_trustedIBO_BN_B6t_EE0E0E0EB1v_.exit, label %bb.d

bb.bk:                                            ; preds = %bb.ba, %bb.m, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.by, %bb.c ], [ %i.el, %bb.ba ], [ %.pn51.i.i.i.i.i, %bb.m ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.val10.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !786
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker7SegmentENCNvXNtB1v_3appNtB2x_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component4views_0ENCINvXs8_NtNtB2X_11virtual_dom5vnodeNtB3W_5VNodeINtNtNtBa_6traits7collect12FromIteratorB4n_E9from_iterBX_E0ENtNtB4E_8iterator8Iterator4folduNCINvB6_8map_foldB4n_B4n_uNCINvXs2_NtB3Y_5vlistNtB6C_5VListIB4A_B4n_E9from_iterBN_E0NCINvNvB5x_8for_each4callB4n_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB81_3VecB4n_E14extend_trustedIBO_BN_B6t_EE0E0E0EB1v_.exit: ; preds = %bb.bj, %bb.a
  %storemerge.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %bb.a ], [ %i.fb, %bb.bj ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %storemerge.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !786
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterTReB1s_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENCB1C_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEEB2X_8try_folduNCINvNvB2X_12try_for_each4callmINtNtNtBc_3ops12control_flow11ControlFlowmENcNtB5M_5Break0E0B5M_E0IB5N_B5M_EEB1G_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !829, !nonnull !5, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !829, !nonnull !5, !noundef !5
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTReB1o_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldINtNtBc_6result6ResultmNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEIB3O_mNtCs6QC6JaC987F_6anyhow5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB5u_mEENCB1y_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B6g_EIB3O_zB4Y_EEB2J_8try_folduNCINvNvB2J_12try_for_each4callmB68_NcNtB68_5Break0E0B68_E0E0B5t_EB1C_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.j, ptr %0, align 8, !alias.scope !829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !830
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !827, !noalias !831, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !832
  store ptr %i.e, ptr %i.c, align 8, !noalias !832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !832
  store ptr %i.c, ptr %i.a, align 8, !noalias !832
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRReNtB6_7Display3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !832
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @78, ptr noundef nonnull %i.a), !noalias !833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !832
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !832, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !832, !noundef !5
  invoke void @_RNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker8token_id(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noundef nonnull align 8 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.d unwind label %bb.c, !noalias !834

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #27
          to label %common.resume.i.i.i unwind label %bb.g, !noalias !833

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0B5_.exit.i.i.i unwind label %bb.e, !noalias !833

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i.i.i unwind label %bb.f, !noalias !833

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !833
  unreachable

common.resume.i.i.i:                              ; preds = %bb.j, %bb.e, %bb.c
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.p, %bb.e ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !833
  unreachable

_RNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0B5_.exit.i.i.i: ; preds = %bb.d
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !832
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !830
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !830
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRTReB11_EINtNtBa_6result6ResultmNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2f_mEENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0NCIB2_B18_IB19_mNtCs6QC6JaC987F_6anyhow5ErrorEuB2e_NCB33_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB5F_INtNtNtBa_5slice4iter4IterB10_EB31_EB52_EIB19_zB4t_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6K_12try_for_each4callmB2T_NcNtB2T_5Break0E0B2T_E0E0E0B37_.exit.i.i, label %bb.h, !prof !10

bb.h:                                             ; preds = %_RNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0B5_.exit.i.i.i
  %i.s = call noundef nonnull ptr @_RINvMNtCs6QC6JaC987F_6anyhow5errorNtB5_5Error3msgNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.d), !noalias !834 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !alias.scope !835, !noalias !836, !noundef !5
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXs4_NtCs6QC6JaC987F_6anyhow5errorNtB7_5ErrorNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i unwind label %bb.j, !noalias !837

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  store ptr %i.s, ptr %2, align 8, !noalias !836
  br label %common.resume.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  store ptr %i.s, ptr %2, align 8, !noalias !836
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRTReB11_EINtNtBa_6result6ResultmNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2f_mEENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0NCIB2_B18_IB19_mNtCs6QC6JaC987F_6anyhow5ErrorEuB2e_NCB33_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB5F_INtNtNtBa_5slice4iter4IterB10_EB31_EB52_EIB19_zB4t_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6K_12try_for_each4callmB2T_NcNtB2T_5Break0E0B2T_E0E0E0B37_.exit.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRTReB11_EINtNtBa_6result6ResultmNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2f_mEENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0NCIB2_B18_IB19_mNtCs6QC6JaC987F_6anyhow5ErrorEuB2e_NCB33_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB5F_INtNtNtBa_5slice4iter4IterB10_EB31_EB52_EIB19_zB4t_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6K_12try_for_each4callmB2T_NcNtB2T_5Break0E0B2T_E0E0E0B37_.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i, %_RNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0B5_.exit.i.i.i
  %.sroa.42.07.i.i.i.i = phi i32 [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i ], [ %.sroa.4.0.copyload.i.i, %_RNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0B5_.exit.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i32 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtCs6QC6JaC987F_6anyhow5ErrorEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i ], [ 1, %_RNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0B5_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !830
  br label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTReB1o_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldINtNtBc_6result6ResultmNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEIB3O_mNtCs6QC6JaC987F_6anyhow5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB5u_mEENCB1y_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B6g_EIB3O_zB4Y_EEB2J_8try_folduNCINvNvB2J_12try_for_each4callmB68_NcNtB68_5Break0E0B68_E0E0B5t_EB1C_.exit

_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTReB1o_EENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldINtNtBc_6result6ResultmNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEIB3O_mNtCs6QC6JaC987F_6anyhow5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB5u_mEENCB1y_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B6g_EIB3O_zB4Y_EEB2J_8try_folduNCINvNvB2J_12try_for_each4callmB68_NcNtB68_5Break0E0B68_E0E0B5t_EB1C_.exit: ; preds = %bb.a, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRTReB11_EINtNtBa_6result6ResultmNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2f_mEENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0NCIB2_B18_IB19_mNtCs6QC6JaC987F_6anyhow5ErrorEuB2e_NCB33_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB5F_INtNtNtBa_5slice4iter4IterB10_EB31_EB52_EIB19_zB4t_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6K_12try_for_each4callmB2T_NcNtB2T_5Break0E0B2T_E0E0E0B37_.exit.i.i
  %.sroa.3.0.i.i = phi i32 [ %.sroa.42.07.i.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRTReB11_EINtNtBa_6result6ResultmNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2f_mEENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0NCIB2_B18_IB19_mNtCs6QC6JaC987F_6anyhow5ErrorEuB2e_NCB33_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB5F_INtNtNtBa_5slice4iter4IterB10_EB31_EB52_EIB19_zB4t_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6K_12try_for_each4callmB2T_NcNtB2T_5Break0E0B2T_E0E0E0B37_.exit.i.i ], [ undef, %bb.a ]
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRTReB11_EINtNtBa_6result6ResultmNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2f_mEENCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_language0NCIB2_B18_IB19_mNtCs6QC6JaC987F_6anyhow5ErrorEuB2e_NCB33_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB5F_INtNtNtBa_5slice4iter4IterB10_EB31_EB52_EIB19_zB4t_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6K_12try_for_each4callmB2T_NcNtB2T_5Break0E0B2T_E0E0E0B37_.exit.i.i ], [ 2, %bb.a ]
  %i.w = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i.i, 0
  %i.x = insertvalue { i32, i32 } %i.w, i32 %.sroa.3.0.i.i, 1
  ret { i32, i32 } %i.x
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesmNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEENCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB3z_7HashSetB2e_NtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateEINtNtNtBa_6traits7collect6ExtendB2e_E6extendBX_E0ENtNtB5h_8iterator8Iterator4folduNCINvNvB60_8for_each4callTB2e_uENCINvXs1i_NtB3B_3mapINtB7c_7HashMapB2e_uB4m_EIB5d_B6V_E6extendBN_E0E0ECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesmNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1X_TB1X_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB4v_7HashSetB1X_NtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateEINtNtB3d_7collect6ExtendB1X_E6extendBP_E0NCINvNvB39_8for_each4callB4e_NCINvXs1i_NtB4x_3mapINtB7q_7HashMapB1X_uB5i_EIB69_B4e_E6extendINtB3S_3MapBP_B4m_EE0E0E0ECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtCsfh9HxMbthk9_27candle_wasm_example_whisper5audio20log_mel_spectrogram_fE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2J_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3W_3VecfE14extend_trustedBN_E0E0EB1w_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.24.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.9.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.9.24.copyload = load ptr, ptr %.sroa.9.24..sroa_idx, align 8 ; 5 uses
  %.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.24.copyload = load ptr, ptr %.sroa.10.24..sroa_idx, align 8 ; 5 uses
  %.sroa.11.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.11.24.copyload = load ptr, ptr %.sroa.11.24..sroa_idx, align 8 ; 5 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjfuNCINvNtCsfh9HxMbthk9_27candle_wasm_example_whisper5audio20log_mel_spectrogram_fE0NCINvNvBL_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3Y_3VecfE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2e_.exit

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.24.copyload), "nonnull"(ptr %.sroa.9.24.copyload), "nonnull"(ptr %.sroa.10.24.copyload), "nonnull"(ptr %.sroa.11.24.copyload) ]
  %i.f = sub nuw i64 %i.d, %i.b                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.g = shl i64 %.sroa.4.0.copyload, 2
  %i.h = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.g ; 4 uses
  %i.i = add i64 %.sroa.4.0.copyload, %i.d
  %i.j = sub i64 %i.i, %i.b
  %i.k = shl i64 %i.j, 2
  %i.l = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.k ; 4 uses
  %i.m = getelementptr i8, ptr %.sroa.7.24.copyload, i64 4
  %i.n = getelementptr i8, ptr %.sroa.9.24.copyload, i64 4
  %i.o = getelementptr i8, ptr %.sroa.10.24.copyload, i64 4
  %i.p = getelementptr i8, ptr %.sroa.11.24.copyload, i64 4
  %bound0 = icmp ult ptr %i.h, %i.m
  %bound1 = icmp ult ptr %.sroa.7.24.copyload, %i.l
  %found.conflict = and i1 %bound0, %bound1
  %bound018 = icmp ult ptr %i.h, %i.n
  %bound119 = icmp ult ptr %.sroa.9.24.copyload, %i.l
  %found.conflict20 = and i1 %bound018, %bound119
  %conflict.rdx = or i1 %found.conflict, %found.conflict20
  %bound021 = icmp ult ptr %i.h, %i.o
  %bound122 = icmp ult ptr %.sroa.10.24.copyload, %i.l
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx24 = or i1 %conflict.rdx, %found.conflict23
  %bound025 = icmp ult ptr %i.h, %i.p
  %bound126 = icmp ult ptr %.sroa.11.24.copyload, %i.l
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx24, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, -4                       ; 4 uses
  %i.q = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.r = add i64 %i.b, %n.vec
  %i.s = load float, ptr %.sroa.7.24.copyload, align 4, !alias.scope !856, !noalias !857
  %broadcast.splatinsert35 = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat36 = shufflevector <4 x float> %broadcast.splatinsert35, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = load float, ptr %.sroa.9.24.copyload, align 4, !alias.scope !858, !noalias !857
  %broadcast.splatinsert33 = insertelement <4 x float> poison, float %i.t, i64 0
  %broadcast.splat34 = shufflevector <4 x float> %broadcast.splatinsert33, <4 x float> poison, <4 x i32> zeroinitializer
  %i.u = load float, ptr %.sroa.10.24.copyload, align 4, !alias.scope !859, !noalias !857
  %broadcast.splatinsert29 = insertelement <4 x float> poison, float %i.u, i64 0
  %broadcast.splat30 = shufflevector <4 x float> %broadcast.splatinsert29, <4 x float> poison, <4 x i32> zeroinitializer
  %i.v = load float, ptr %.sroa.11.24.copyload, align 4, !alias.scope !860, !noalias !857
  %broadcast.splatinsert31 = insertelement <4 x float> poison, float %i.v, i64 0
  %broadcast.splat32 = shufflevector <4 x float> %broadcast.splatinsert31, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  %i.w = getelementptr [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.x = uitofp <4 x i64> %vec.ind to <4 x float>
  %i.y = fmul <4 x float> %broadcast.splat30, %i.x
  %i.z = fdiv <4 x float> %i.y, %broadcast.splat32
  %i.aa = tail call <4 x float> @llvm.cos.v4f32(<4 x float> %i.z)
  %i.ab = fsub <4 x float> %broadcast.splat34, %i.aa
  %i.ac = fmul <4 x float> %broadcast.splat36, %i.ab
  %i.ad = getelementptr [4 x i8], ptr %i.w, i64 %index
  store <4 x float> %i.ac, ptr %i.ad, align 4, !alias.scope !861, !noalias !862
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !854

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjfuNCINvNtCsfh9HxMbthk9_27candle_wasm_example_whisper5audio20log_mel_spectrogram_fE0NCINvNvBL_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3Y_3VecfE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2e_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i ], [ %i.q, %middle.block ]
  %.sroa.0.010.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i ], [ %i.r, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.af = phi i64 [ %i.as, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.010.i = phi i64 [ %i.ag, %scalar.ph ], [ %.sroa.0.010.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ag = add nuw i64 %.sroa.0.010.i, 1           ; 2 uses
  %i.ah = load float, ptr %.sroa.7.24.copyload, align 4, !noalias !857, !noundef !5
  %i.ai = load float, ptr %.sroa.9.24.copyload, align 4, !noalias !857, !noundef !5
  %i.aj = load float, ptr %.sroa.10.24.copyload, align 4, !noalias !857, !noundef !5
  %i.ak = uitofp i64 %.sroa.0.010.i to float
  %i.al = fmul float %i.aj, %i.ak
  %i.am = load float, ptr %.sroa.11.24.copyload, align 4, !noalias !857, !noundef !5
  %i.an = fdiv float %i.al, %i.am
  %i.ao = tail call noundef float @llvm.cos.f32(float %i.an)
  %i.ap = fsub float %i.ai, %i.ao
  %i.aq = fmul float %i.ah, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.af
  store float %i.aq, ptr %i.ar, align 4, !noalias !865
  %i.as = add i64 %i.af, 1                        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.d
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjfuNCINvNtCsfh9HxMbthk9_27candle_wasm_example_whisper5audio20log_mel_spectrogram_fE0NCINvNvBL_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3Y_3VecfE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2e_.exit, label %scalar.ph, !llvm.loop !855

_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjfuNCINvNtCsfh9HxMbthk9_27candle_wasm_example_whisper5audio20log_mel_spectrogram_fE0NCINvNvBL_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3Y_3VecfE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2e_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.val6.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %i.as, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !866
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangemENCNvMs_NtCsfh9HxMbthk9_27candle_wasm_example_whisper6workerNtB1w_7Decoder3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2G_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3T_3VecfE14extend_trustedBN_E0E0EB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %i.f = icmp ult i32 %i.b, %i.d
  br i1 %i.f, label %.lr.ph.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangemENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldmfuNCNvMs_NtCsfh9HxMbthk9_27candle_wasm_example_whisper6workerNtB2e_7Decoder3new0NCINvNvBL_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3V_3VecfE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldmfuNCNvMs_NtCsfh9HxMbthk9_27candle_wasm_example_whisper6workerNtB14_7Decoder3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3g_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangemEBX_EE0E0E0B16_.exit.i
  %i.g = phi i64 [ %i.ad, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldmfuNCNvMs_NtCsfh9HxMbthk9_27candle_wasm_example_whisper6workerNtB14_7Decoder3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3g_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangemEBX_EE0E0E0B16_.exit.i ], [ %.sroa.4.0.copyload, %bb.a ] ; 2 uses
  %.sroa.0.011.i = phi i32 [ %i.h, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldmfuNCNvMs_NtCsfh9HxMbthk9_27candle_wasm_example_whisper6workerNtB14_7Decoder3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3g_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangemEBX_EE0E0E0B16_.exit.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = add nuw i32 %.sroa.0.011.i, 1            ; 2 uses
  %i.i = load i64, ptr %i.e, align 8, !range !12, !noalias !879, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.i, -1
  %.sroa.01.0.v.i.i.i = select i1 %.not.i.i.i, i64 472, i64 504
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !879, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !879, !noundef !5 ; 2 uses
  %i.n = and i64 %i.m, 2305843009213693936        ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n ; 2 uses
  %.not.i.i.i.i8 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i8, label %._crit_edge, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsB_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.preheader

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsB_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.preheader: ; preds = %.lr.ph.i
  %i.p = insertelement <16 x i32> poison, i32 %.sroa.0.011.i, i64 0
  %i.q = shufflevector <16 x i32> %i.p, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsB_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i

bb.b:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsB_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i10, i64 64
  %i.s = add nsw i64 %.sroa.5.0.i.i.i.i9, -16     ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsB_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %i.t = shl i64 %i.m, 2
  %.idx = and i64 %i.t, 60                        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %.not.not.not.i.not.not.i.i.i.i11 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i11, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldmfuNCNvMs_NtCsfh9HxMbthk9_27candle_wasm_example_whisper6workerNtB14_7Decoder3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3g_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangemEBX_EE0E0E0B16_.exit.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.not.not.i.not.not.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldmfuNCNvMs_NtCsfh9HxMbthk9_27candle_wasm_example_whisper6workerNtB14_7Decoder3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3g_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangemEBX_EE0E0E0B16_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %bb.c
  %i.w = phi ptr [ %i.v, %bb.c ], [ %i.o, %._crit_edge ] ; 2 uses
  %.val2.i.i.i.i.i = load i32, ptr %i.w, align 4, !alias.scope !880, !noalias !881, !noundef !5
  %i.x = icmp eq i32 %.val2.i.i.i.i.i, %.sroa.0.011.i
  br i1 %i.x, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldmfuNCNvMs_NtCsfh9HxMbthk9_27candle_wasm_example_whisper6workerNtB14_7Decoder3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3g_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangemEBX_EE0E0E0B16_.exit.i, label %bb.c

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsB_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsB_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.preheader, %bb.b
  %.sroa.0.05.i.i.i.i10 = phi ptr [ %i.r, %bb.b ], [ %i.k, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsB_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.0.i.i.i.i9 = phi i64 [ %i.s, %bb.b ], [ %i.n, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsB_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.preheader ]
  %i.y = load <16 x i32>, ptr %.sroa.0.05.i.i.i.i10, align 4, !alias.scope !880, !noalias !879
  %i.z = icmp eq <16 x i32> %i.y, %i.q
  %i.aa = bitcast <16 x i1> %i.z to i16
  %.not = icmp eq i16 %i.aa, 0
  br i1 %.not, label %bb.b, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldmfuNCNvMs_NtCsfh9HxMbthk9_27candle_wasm_example_whisper6workerNtB14_7Decoder3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3g_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangemEBX_EE0E0E0B16_.exit.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldmfuNCNvMs_NtCsfh9HxMbthk9_27candle_wasm_example_whisper6workerNtB14_7Decoder3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3g_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangemEBX_EE0E0E0B16_.exit.i: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsB_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i, %bb.c, %.lr.ph, %._crit_edge
  %i.ab = phi float [ 0.000000e+00, %._crit_edge ], [ -inf, %.lr.ph ], [ 0.000000e+00, %bb.c ], [ -inf, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsB_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.g
  store float %i.ab, ptr %i.ac, align 4, !noalias !882
  %i.ad = add i64 %i.g, 1                         ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.h, %i.d
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangemENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldmfuNCNvMs_NtCsfh9HxMbthk9_27candle_wasm_example_whisper6workerNtB2e_7Decoder3new0NCINvNvBL_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3V_3VecfE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit, label %.lr.ph.i

_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangemENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldmfuNCNvMs_NtCsfh9HxMbthk9_27candle_wasm_example_whisper6workerNtB2e_7Decoder3new0NCINvNvBL_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3V_3VecfE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldmfuNCNvMs_NtCsfh9HxMbthk9_27candle_wasm_example_whisper6workerNtB14_7Decoder3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3g_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangemEBX_EE0E0E0B16_.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.ad, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldmfuNCNvMs_NtCsfh9HxMbthk9_27candle_wasm_example_whisper6workerNtB14_7Decoder3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3g_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangemEBX_EE0E0E0B16_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !883
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenENCINvMs1_B1q_NtB1q_15AddedVocabulary20refresh_added_tokensNtNtB1u_11normalizers17NormalizerWrapperNtNtB1u_6models12ModelWrapperEs1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4I_8for_each4callNtNtB1s_10normalizer16NormalizedStringNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6w_3VecB5L_E14extend_trustedBN_E0E0ECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
