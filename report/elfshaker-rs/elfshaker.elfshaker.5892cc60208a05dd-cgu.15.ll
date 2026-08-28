Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.15?download=true
inline.NumInlined: 481
inline.NumDeleted: 345
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringKj2_ENCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB8_7flatten7FlattenINtB31_7FlatMapINtNtNtB1v_3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBc_6result6ResultINtB3G_3VecBX_ENtNtB4d_5error5ErrorENCNvNtB2h_4find3run0EEBX_B1r_E00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6o_8for_each4callB1r_NCINvMsk_B3G_IB5i_B1r_E14extend_trustedBN_E0E0EB2h_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !479, !noalias !480
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #21
          to label %.body.i unwind label %bb.f, !noalias !497

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !493
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCINvMNtNtCs3oUPovFnLWP_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uNtNtCs1xwejQucwHj_5alloc6string6StringNCINvNtNtNtB9_4iter8adapters3map8map_foldB1k_B1k_uNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB23_7flatten7FlattenINtB3D_7FlatMapINtNtNtB1o_3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB9_6result6ResultINtB4j_3VecINtNtNtB9_5array4iter8IntoIterB1k_Kj2_EENtNtB4Q_5error5ErrorENCNvNtB2T_4find3run0EEB65_B1k_E00NCINvNvNtNtNtB25_6traits8iterator8Iterator8for_each4callB1k_NCINvMsk_B4j_IB5V_B1k_E14extend_trustedINtB21_3MapB65_B2K_EE0E0E0E0B2T_.exit.i.i.i unwind label %bb.d, !noalias !497

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !479, !noalias !480
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.e, !noalias !497

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !497
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !497
  unreachable

_RNCINvMNtNtCs3oUPovFnLWP_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uNtNtCs1xwejQucwHj_5alloc6string6StringNCINvNtNtNtB9_4iter8adapters3map8map_foldB1k_B1k_uNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB23_7flatten7FlattenINtB3D_7FlatMapINtNtNtB1o_3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB9_6result6ResultINtB4j_3VecINtNtNtB9_5array4iter8IntoIterB1k_Kj2_EENtNtB4Q_5error5ErrorENCNvNtB2T_4find3run0EEB65_B1k_E00NCINvNvNtNtNtB25_6traits8iterator8Iterator8for_each4callB1k_NCINvMsk_B4j_IB5V_B1k_E14extend_trustedINtB21_3MapB65_B2K_EE0E0E0E0B2T_.exit.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !498

bb.g:                                             ; preds = %_RNCINvMNtNtCs3oUPovFnLWP_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uNtNtCs1xwejQucwHj_5alloc6string6StringNCINvNtNtNtB9_4iter8adapters3map8map_foldB1k_B1k_uNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB23_7flatten7FlattenINtB3D_7FlatMapINtNtNtB1o_3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB9_6result6ResultINtB4j_3VecINtNtNtB9_5array4iter8IntoIterB1k_Kj2_EENtNtB4Q_5error5ErrorENCNvNtB2T_4find3run0EEB65_B1k_E00NCINvNvNtNtNtB25_6traits8iterator8Iterator8for_each4callB1k_NCINvMsk_B4j_IB5V_B1k_E14extend_trustedINtB21_3MapB65_B2K_EE0E0E0E0B2T_.exit.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !479, !noalias !480
  br label %.body.i

bb.h:                                             ; preds = %_RNCINvMNtNtCs3oUPovFnLWP_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uNtNtCs1xwejQucwHj_5alloc6string6StringNCINvNtNtNtB9_4iter8adapters3map8map_foldB1k_B1k_uNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB23_7flatten7FlattenINtB3D_7FlatMapINtNtNtB1o_3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtB9_6result6ResultINtB4j_3VecINtNtNtB9_5array4iter8IntoIterB1k_Kj2_EENtNtB4Q_5error5ErrorENCNvNtB2T_4find3run0EEB65_B1k_E00NCINvNvNtNtNtB25_6traits8iterator8Iterator8for_each4callB1k_NCINvMsk_B4j_IB5V_B1k_E14extend_trustedINtB21_3MapB65_B2K_EE0E0E0E0B2T_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !482
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %.sroa.11.16.copyload.i, i64 %.val4.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !482
  %i.t = add i64 %.val4.i.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !492
  %.not.i.i = icmp eq i64 %i.k, %i.h
  br i1 %.not.i.i, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldBT_BT_uNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB2s_7flatten7FlattenINtB3U_7FlatMapINtNtNtBX_3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBa_6result6ResultINtB4A_3VecBE_ENtNtB56_5error5ErrorENCNvNtB3a_4find3run0EEBE_BT_E00NCINvNvB1A_8for_each4callBT_NCINvMsk_B4A_IB6b_BT_E14extend_trustedINtB2q_3MapBE_B31_EE0E0E0EB3a_.exit.loopexit, label %bb.b

.body.i:                                          ; preds = %bb.g, %bb.d, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.o, %bb.d ], [ %i.n, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val4.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !498
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs1xwejQucwHj_5alloc6string6StringEj2_NtB4_11PartialDrop12partial_dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef %i.k, i64 noundef %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringKj2_EECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.i, !noalias !474

bb.i:                                             ; preds = %.body.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !474
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringKj2_EECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldBT_BT_uNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB2s_7flatten7FlattenINtB3U_7FlatMapINtNtNtBX_3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBa_6result6ResultINtB4A_3VecBE_ENtNtB56_5error5ErrorENCNvNtB3a_4find3run0EEBE_BT_E00NCINvNvB1A_8for_each4callBT_NCINvMsk_B4A_IB6b_BT_E14extend_trustedINtB2q_3MapBE_B31_EE0E0E0EB3a_.exit.loopexit: ; preds = %bb.h
  store i64 %i.h, ptr %i.d, align 8, !alias.scope !479, !noalias !480
  br label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldBT_BT_uNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB2s_7flatten7FlattenINtB3U_7FlatMapINtNtNtBX_3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBa_6result6ResultINtB4A_3VecBE_ENtNtB56_5error5ErrorENCNvNtB3a_4find3run0EEBE_BT_E00NCINvNvB1A_8for_each4callBT_NCINvMsk_B4A_IB6b_BT_E14extend_trustedINtB2q_3MapBE_B31_EE0E0E0EB3a_.exit

_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldBT_BT_uNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB2s_7flatten7FlattenINtB3U_7FlatMapINtNtNtBX_3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBa_6result6ResultINtB4A_3VecBE_ENtNtB56_5error5ErrorENCNvNtB3a_4find3run0EEBE_BT_E00NCINvNvB1A_8for_each4callBT_NCINvMsk_B4A_IB6b_BT_E14extend_trustedINtB2q_3MapBE_B31_EE0E0E0EB3a_.exit: ; preds = %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldBT_BT_uNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB2s_7flatten7FlattenINtB3U_7FlatMapINtNtNtBX_3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBa_6result6ResultINtB4A_3VecBE_ENtNtB56_5error5ErrorENCNvNtB3a_4find3run0EEBE_BT_E00NCINvNvB1A_8for_each4callBT_NCINvMsk_B4A_IB6b_BT_E14extend_trustedINtB2q_3MapBE_B31_EE0E0E0EB3a_.exit.loopexit, %bb.a
  %i.v = phi i64 [ %i.f, %bb.a ], [ %i.h, %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldBT_BT_uNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB2s_7flatten7FlattenINtB3U_7FlatMapINtNtNtBX_3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBa_6result6ResultINtB4A_3VecBE_ENtNtB56_5error5ErrorENCNvNtB3a_4find3run0EEBE_BT_E00NCINvNvB1A_8for_each4callBT_NCINvMsk_B4A_IB6b_BT_E14extend_trustedINtB2q_3MapBE_B31_EE0E0E0EB3a_.exit.loopexit ] ; 2 uses
  %.val2.i.i = phi i64 [ %.sroa.9.16.copyload.i, %bb.a ], [ %i.t, %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldBT_BT_uNCNCINvNtCs7BtpbLEd5q3_9elfshaker5utils11print_tableINtNtB2s_7flatten7FlattenINtB3U_7FlatMapINtNtNtBX_3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBa_6result6ResultINtB4A_3VecBE_ENtNtB56_5error5ErrorENCNvNtB3a_4find3run0EEBE_BT_E00NCINvNvB1A_8for_each4callBT_NCINvMsk_B4A_IB6b_BT_E14extend_trustedINtB2q_3MapBE_B31_EE0E0E0EB3a_.exit.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val2.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !498
  call void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs1xwejQucwHj_5alloc6string6StringEj2_NtB4_11PartialDrop12partial_dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef %i.v, i64 noundef %i.v), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrKj1_ENCINvMs_NtB1v_3argNtB2s_3Arg11value_namesB1r_AB1r_B2g_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3f_8for_each4callB1r_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4v_3VecB1r_E14extend_trustedBN_E0E0ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !alias.scope !499, !noalias !502 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !alias.scope !499, !noalias !502 ; 3 uses
  %i.a = icmp ule i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  tail call void @llvm.assume(i1 %i.a)
  %.not5.i.i = icmp eq i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  br i1 %.not5.i.i, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3l_3Arg11value_namesBT_ABT_B1I_E0NCINvNvB1M_8for_each4callBT_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4F_3VecBT_E14extend_trustedINtB2C_3MapBE_B3d_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.16.copyload.i = load ptr, ptr %.sroa.10.16..sroa_idx.i, align 8, !alias.scope !499, !noalias !502
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 1
  %i.b = icmp eq i64 %.sroa.0.0.copyload, 0
  tail call void @llvm.assume(i1 %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.16.copyload.i, i64 %.sroa.8.16.copyload.i ; 2 uses
  store ptr %.sroa.5.0.copyload, ptr %i.c, align 8, !noalias !504
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.6.0.copyload, ptr %i.d, align 8, !noalias !522
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = add i64 %.sroa.8.16.copyload.i, 1
  br label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3l_3Arg11value_namesBT_ABT_B1I_E0NCINvNvB1M_8for_each4callBT_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4F_3VecBT_E14extend_trustedINtB2C_3MapBE_B3d_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit

_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3l_3Arg11value_namesBT_ABT_B1I_E0NCINvNvB1M_8for_each4callBT_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4F_3VecBT_E14extend_trustedINtB2C_3MapBE_B3d_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %.lr.ph.i.preheader.i
  %.val2.i.i = phi i64 [ %i.e, %.lr.ph.i.preheader.i ], [ %.sroa.8.16.copyload.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val2.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !523
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrKj1_ENCINvMs_NtB1v_3argNtB2x_3Arg14default_valuesB1r_AB1r_B2l_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3n_8for_each4callB1r_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4D_3VecB1r_E14extend_trustedBN_E0E0ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !alias.scope !524, !noalias !527 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !alias.scope !524, !noalias !527 ; 3 uses
  %i.a = icmp ule i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  tail call void @llvm.assume(i1 %i.a)
  %.not5.i.i = icmp eq i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  br i1 %.not5.i.i, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg14default_valuesBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4N_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.16.copyload.i = load ptr, ptr %.sroa.10.16..sroa_idx.i, align 8, !alias.scope !524, !noalias !527
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 1
  %i.b = icmp eq i64 %.sroa.0.0.copyload, 0
  tail call void @llvm.assume(i1 %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.16.copyload.i, i64 %.sroa.8.16.copyload.i ; 2 uses
  store ptr %.sroa.5.0.copyload, ptr %i.c, align 8, !noalias !529
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.6.0.copyload, ptr %i.d, align 8, !noalias !547
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = add i64 %.sroa.8.16.copyload.i, 1
  br label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg14default_valuesBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4N_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit

_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg14default_valuesBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4N_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %.lr.ph.i.preheader.i
  %.val2.i.i = phi i64 [ %i.e, %.lr.ph.i.preheader.i ], [ %.sroa.8.16.copyload.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val2.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !548
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENCINvMsa_NtNtB1Y_4repo4packNtB2P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0ENtNtNtBa_6traits8iterator8Iterator4foldyNCINvNtB8_7flatten11flatten_oneINtNtBc_6option6OptionyEyNCINvXsC_NtB4d_5accumyNtB5Q_3Sum3sumINtB4S_7FlatMapBX_B5i_B2G_EE0E0ECs7BtpbLEd5q3_9elfshaker(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB2f_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionyEyNCINvMsa_NtNtB1r_4repo4packNtB45_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB31_7flatten11flatten_oneB3x_yNCINvXsC_NtB2d_5accumyNtB68_3Sum3sumINtB5t_7FlatMapBF_B3x_B3W_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.ad, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %spec.select.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i ]
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %.val11.i = load i64, ptr %i.g, align 8, !noundef !6 ; 3 uses
  %.not.i.i = icmp eq i64 %.val11.i, 0
  br i1 %.not.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 64 ; 3 uses
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %.val.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !549, !noundef !6
  %i.k = getelementptr i8, ptr %.val.i, i64 32
  %.val3.i.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !549, !noundef !6
  %i.l = add i64 %.val3.i.i.i.i.i, %.val.i.i.i.i.i ; 3 uses
  %i.m = icmp eq i64 %.val11.i, 1
  br i1 %i.m, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add i64 %.val11.i, 288230376151711743    ; 4 uses
  %3 = and i64 %i.n, 288230376151711743
  %xtraiter = and i64 %i.n, 1
  %i.o = icmp eq i64 %3, 1
  br i1 %i.o, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.n, 288230376151711742
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ 0, %.new ], [ %i.x, %bb.f ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %i.l, %.new ], [ %..i.i.i.i.i.i.i.i.i.1, %bb.f ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.f ]
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.i.i.i.i ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %.val.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !noundef !6
  %i.r = getelementptr i8, ptr %i.p, i64 32
  %.val11.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !noundef !6
  %i.s = add i64 %.val11.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %..i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.s, i64 %.sroa.02.0.i.i.i.i.i.i)
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.i.i.i.i ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 88
  %.val.i.i.i.i.i.i.1 = load i64, ptr %i.u, align 8, !noundef !6
  %i.v = getelementptr i8, ptr %i.t, i64 96
  %.val11.i.i.i.i.i.i.1 = load i64, ptr %i.v, align 8, !noundef !6
  %i.w = add i64 %.val11.i.i.i.i.i.i.1, %.val.i.i.i.i.i.i.1
  %..i.i.i.i.i.i.i.i.i.1 = tail call noundef i64 @llvm.umax.i64(i64 %i.w, i64 %..i.i.i.i.i.i.i.i.i) ; 3 uses
  %i.x = add nuw i64 %.sroa.04.0.i.i.i.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.loopexit.unr-lcssa, label %bb.f

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.loopexit.unr-lcssa, %bb.e
  %.sroa.04.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.x, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.epil.init = phi i64 [ %i.l, %bb.e ], [ %..i.i.i.i.i.i.i.i.i.1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.i.i.i.i.epil.init ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 24
  %.val.i.i.i.i.i.i.epil = load i64, ptr %i.z, align 8, !noundef !6
  %i.aa = getelementptr i8, ptr %i.y, i64 32
  %.val11.i.i.i.i.i.i.epil = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ab = add i64 %.val11.i.i.i.i.i.i.epil, %.val.i.i.i.i.i.i.epil
  %..i.i.i.i.i.i.i.i.i.epil = tail call noundef i64 @llvm.umax.i64(i64 %i.ab, i64 %.sroa.02.0.i.i.i.i.i.i.epil.init)
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %.epil.preheader, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.loopexit.unr-lcssa, %bb.d, %bb.c
  %i.ac = phi i64 [ 0, %bb.c ], [ %i.l, %bb.d ], [ %..i.i.i.i.i.i.i.i.i.1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.loopexit.unr-lcssa ], [ %..i.i.i.i.i.i.i.i.i.epil, %.epil.preheader ]
  %spec.select.i.i.i = add i64 %i.ac, %.sroa.02.0.i ; 2 uses
  %i.ad = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.e
  br i1 %i.ae, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB2f_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionyEyNCINvMsa_NtNtB1r_4repo4packNtB45_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB31_7flatten11flatten_oneB3x_yNCINvXsC_NtB2d_5accumyNtB68_3Sum3sumINtB5t_7FlatMapBF_B3x_B3W_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB2f_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionyEyNCINvMsa_NtNtB1r_4repo4packNtB45_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB31_7flatten11flatten_oneB3x_yNCINvXsC_NtB2d_5accumyNtB68_3Sum3sumINtB5t_7FlatMapBF_B3x_B3W_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %spec.select.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1p_NtB1p_9PackIndex20entries_from_handlesBX_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtB1p_9PackErrorEEB35_8try_folduNCINvNvB35_12try_for_each4callNtB1p_9FileEntryINtNtNtBc_3ops12control_flow11ControlFlowB5G_ENcNtB5W_5Break0E0B5W_E0IB5X_B5W_EECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.6.i = alloca [48 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !557, !noalias !552, !nonnull !6, !noundef !6 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !557, !noalias !552 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i, %i.c
  br i1 %i.d, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !560, !nonnull !6, !align !73, !noundef !6
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.g = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.h, %bb.f ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !alias.scope !557, !noalias !552
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !564
  %i.i = load ptr, ptr %.val.i.i, align 8, !noalias !565, !nonnull !6, !align !73, !noundef !6
  call void @_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex15handle_to_entry(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.g), !noalias !569
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !560 ; 3 uses
  %i.j = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %i.j, label %bb.c, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %3, align 8, !range !436, !alias.scope !570, !noalias !573, !noundef !6
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i unwind label %bb.e, !noalias !577

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !560
  resume { ptr, i32 } %i.m

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !564
  br label %.loopexit.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.b
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !564
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -2
  br i1 %.not.i.i, label %bb.f, label %.loopexit.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.a
  store i64 -2, ptr %0, align 8, !alias.scope !579, !noalias !555
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtBL_9FileEntryNtBL_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3W_B3p_EENCINvMsd_BL_NtBL_9PackIndex20entries_from_handlesB3_E0NCINvXB2s_INtB2s_12GenericShuntINtB2q_3MapB3_B4L_EIB34_zB3E_EEB1w_8try_folduNCINvNvB1w_12try_for_each4callB3p_B4A_NcNtB4A_5Break0E0B4A_E0E0B3V_ECs7BtpbLEd5q3_9elfshaker.exit

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i
  %.sroa.8.011.i = phi i64 [ undef, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i ], [ %.sroa.7.0.copyload.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBa_6result6ResultNtB12_9FileEntryNtB12_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2H_B28_EENCINvMsd_B12_NtB12_9PackIndex20entries_from_handlesINtNtNtBa_5slice4iter4IterB10_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapB4l_B3w_EIB1N_zB2o_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5Q_12try_for_each4callB28_B3l_NcNtB3l_5Break0E0B3l_E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i, i64 48, i1 false), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  store i64 %.sroa.0.0.copyload.i.i, ptr %0, align 8, !alias.scope !582, !noalias !555
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.8.011.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !582, !noalias !555
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sink.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sink.i.sroa.gep1.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !591, !noalias !586, !nonnull !6, !noundef !6 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !591, !noalias !586 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i, %i.e
  br i1 %i.f, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtBL_12FileEntryRefNtBL_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB40_B3p_EENCINvMsd_BL_NtBL_9PackIndex23entry_refs_from_handlesB3_E0NCINvXB2s_INtB2s_12GenericShuntINtB2q_3MapB3_B4P_EIB34_zB3I_EEB1w_8try_folduNCINvNvB1w_12try_for_each4callB3p_B4E_NcNtB4E_5Break0E0B4E_E0E0B3Z_ECs7BtpbLEd5q3_9elfshaker.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !594, !nonnull !6, !align !73, !noundef !6
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.i, %bb.h ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !alias.scope !591, !noalias !586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !598
  %i.j = load ptr, ptr %.val.i.i, align 8, !noalias !599, !nonnull !6, !align !73, !noundef !6
  call void @_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex19handle_to_entry_ref(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.h), !noalias !603
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !594 ; 3 uses
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !594 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.l = load i64, ptr %3, align 8, !range !436, !alias.scope !604, !noalias !607, !noundef !6
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.f, !noalias !611

bb.e:                                             ; preds = %bb.b
  %.not.i3.i.i.i = icmp eq ptr %.sroa.4.0.copyload.i.i, null
  br i1 %.not.i3.i.i.i, label %bb.h, label %.loopexit.i

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !607
  %.sroa.516.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.516.0..8.val.sroa_idx.i.i.i, align 8, !noalias !607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.gep.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !594
  resume { ptr, i32 } %i.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !607
  %.sroa.516.0..8.val.sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.516.0..8.val.sroa_idx17.i.i.i, align 8, !noalias !607
  br label %bb.g

.loopexit.i:                                      ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %i.p = phi ptr [ %i.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i ], [ %i.o, %.loopexit.i ]
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i ], [ %.sink.i.sroa.gep1.i, %.loopexit.i ]
  %.sroa.4.0.copyload.sink.i.i = phi ptr [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i ], [ %.sroa.4.0.copyload.i.i, %.loopexit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.phi.i, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !598
  store ptr %.sroa.4.0.copyload.sink.i.i, ptr %i.c, align 8, !noalias !598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !598
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !589
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtBL_12FileEntryRefNtBL_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB40_B3p_EENCINvMsd_BL_NtBL_9PackIndex23entry_refs_from_handlesB3_E0NCINvXB2s_INtB2s_12GenericShuntINtB2q_3MapB3_B4P_EIB34_zB3I_EEB1w_8try_folduNCINvNvB1w_12try_for_each4callB3p_B4E_NcNtB4E_5Break0E0B4E_E0E0B3Z_ECs7BtpbLEd5q3_9elfshaker.exit

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !598
  %i.r = icmp eq ptr %i.i, %i.e
  br i1 %i.r, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtBL_12FileEntryRefNtBL_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB40_B3p_EENCINvMsd_BL_NtBL_9PackIndex23entry_refs_from_handlesB3_E0NCINvXB2s_INtB2s_12GenericShuntINtB2q_3MapB3_B4P_EIB34_zB3I_EEB1w_8try_folduNCINvNvB1w_12try_for_each4callB3p_B4E_NcNtB4E_5Break0E0B4E_E0E0B3Z_ECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtBL_12FileEntryRefNtBL_9PackErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB40_B3p_EENCINvMsd_BL_NtBL_9PackIndex23entry_refs_from_handlesB3_E0NCINvXB2s_INtB2s_12GenericShuntINtB2q_3MapB3_B4P_EIB34_zB3I_EEB1w_8try_folduNCINvNvB1w_12try_for_each4callB3p_B4E_NcNtB4E_5Break0E0B4E_E0E0B3Z_ECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.h, %bb.a, %bb.g
  %.sink.i = phi i64 [ 1, %bb.g ], [ 0, %bb.a ], [ 0, %bb.h ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !586, !noalias !589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs1xwejQucwHj_5alloc6string6StringENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB2I_8try_folduNCINvNvB2I_12try_for_each4callNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtNtBc_3ops12control_flow11ControlFlowB53_ENcNtB5N_5Break0E0B5N_E0IB5O_B5N_EEB27_:bb.a
  store ptr %i.u, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !624
  store i64 %.val1.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !624
  %i.w = load i64, ptr %i.j, align 8, !alias.scope !627, !noalias !630, !noundef !6
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %select.unfold.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtNtB9_3ffi6os_str5OsStrECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %.val1.i.i.i.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !624 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.z = lshr i64 %i.y, 57
  %i.aa = trunc nuw nsw i64 %i.z to i8
  %i.ab = load i64, ptr %i.l, align 8, !alias.scope !638, !noalias !639, !noundef !6 ; 2 uses
  %i.ac = load ptr, ptr %.val.i.i, align 8, !alias.scope !638, !noalias !639, !nonnull !6, !noundef !6 ; 2 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.noexc.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.noexc.i.i.i ], [ %i.av, %bb.i ]
  %.pn.i.i.i.i.i = phi i64 [ %i.y, %.noexc.i.i.i ], [ %i.aw, %bb.i ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.ab ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !641 ; 2 uses
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
          to label %.noexc13.i.i.i unwind label %.loopexit.i.i.i, !noalias !624

.noexc13.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ap, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBU_4hash6random11RandomStateE3getNtBQ_5OsStrECs7BtpbLEd5q3_9elfshaker.exit.i.i.i, label %bb.h, !prof !86

._crit_edge.i.i.i.i.i:                            ; preds = %bb.h, %bb.g
  %i.aq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = icmp eq i16 %i.ar, 0
  br i1 %i.as, label %bb.i, label %select.unfold.i.i.i, !prof !326

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
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %.val.i.i.i.i, i64 %.val1.i.i.i.i, i1 false), !noalias !624
  br label %bb.e

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp.i.i.i:                         ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBU_4hash6random11RandomStateE3getNtBQ_5OsStrECs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %bb.f
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #21
          to label %common.resume.i.i.i unwind label %bb.o, !noalias !624

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBU_4hash6random11RandomStateE3getNtBQ_5OsStrECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %.noexc13.i.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.an, i64 -64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !624
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %bb.n unwind label %.loopexit.split-lp.i.i.i, !noalias !624

select.unfold.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i, %bb.n, %bb.e
  %.sroa.9.0.i.i = phi i32 [ %i.bf, %bb.n ], [ undef, %bb.e ], [ undef, %._crit_edge.i.i.i.i.i ]
  %.sroa.01.0.i.i = phi i64 [ %.sroa.01.0.copyload.i.i, %bb.n ], [ -1, %bb.e ], [ -1, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ay = phi <2 x i64> [ %i.bd, %bb.n ], [ undef, %bb.e ], [ undef, %._crit_edge.i.i.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0B5_.exit.i.i unwind label %bb.l, !noalias !624

bb.l:                                             ; preds = %select.unfold.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i.i.i unwind label %bb.m, !noalias !624

bb.m:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !624
  unreachable

common.resume.i.i.i:                              ; preds = %bb.l, %bb.k
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.az, %bb.l ], [ %lpad.phi.i.i.i, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.n:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBU_4hash6random11RandomStateE3getNtBQ_5OsStrECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !noalias !620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !624
  %i.bb = getelementptr inbounds i8, ptr %i.an, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.bb, i64 20, i1 false), !noalias !620
  %i.bc = getelementptr inbounds i8, ptr %i.an, i64 -40
  %i.bd = load <2 x i64>, ptr %i.bc, align 8, !noalias !624
  %i.be = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !noalias !624, !noundef !6
  br label %select.unfold.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !624
  unreachable

_RNCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0B5_.exit.i.i: ; preds = %select.unfold.i.i.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !624
  %.not.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i, -1
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB2M_B1Z_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3B_EIB1E_zEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callB1Z_B3q_NcNtB3q_5Break0E0B3q_E0E0B3H_.exit.thread.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB2M_B1Z_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3B_EIB1E_zEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callB1Z_B3q_NcNtB3q_5Break0E0B3q_E0E0B3H_.exit.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB2M_B1Z_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3B_EIB1E_zEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callB1Z_B3q_NcNtB3q_5Break0E0B3q_E0E0B3H_.exit.thread.i: ; preds = %_RNCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0B5_.exit.i.i
  store i8 1, ptr %3, align 1, !noalias !644
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  br label %.loopexit.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB2M_B1Z_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3B_EIB1E_zEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callB1Z_B3q_NcNtB3q_5Break0E0B3q_E0E0B3H_.exit.i: ; preds = %_RNCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0B5_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8.i.i, i64 20, i1 false), !noalias !623
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  %.not.i.i = icmp eq i64 %.sroa.01.0.i.i, -2
  br i1 %.not.i.i, label %bb.p, label %.loopexit.i

._crit_edge.i:                                    ; preds = %bb.p, %bb.a
  store i64 -2, ptr %0, align 8, !alias.scope !648, !noalias !615
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterRNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1t_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB43_B3g_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB2j_INtB2j_12GenericShuntINtB2h_3MapB3_B4S_EIB2V_zEEB1n_8try_folduNCINvNvB1n_12try_for_each4callB3g_B4H_NcNtB4H_5Break0E0B4H_E0E0B42_EB4Y_.exit

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB2M_B1Z_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3B_EIB1E_zEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callB1Z_B3q_NcNtB3q_5Break0E0B3q_E0E0B3H_.exit.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB2M_B1Z_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3B_EIB1E_zEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callB1Z_B3q_NcNtB3q_5Break0E0B3q_E0E0B3H_.exit.thread.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !615
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7.0..sroa_idx8.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.9.i, i64 20, i1 false), !noalias !615
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 %.sroa.01.0.i.i, ptr %0, align 8, !alias.scope !651, !noalias !615
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.ay, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !651, !noalias !615
  %.sroa.89.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.sroa.9.0.i.i, ptr %.sroa.89.0..sroa_idx.i, align 4, !alias.scope !651, !noalias !615
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterRNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1t_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB43_B3g_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB2j_INtB2j_12GenericShuntINtB2h_3MapB3_B4S_EIB2V_zEEB1n_8try_folduNCINvNvB1n_12try_for_each4callB3g_B4H_NcNtB4H_5Break0E0B4H_E0E0B42_EB4Y_.exit

bb.p:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBa_6option6OptionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuINtNtNtBa_3ops12control_flow11ControlFlowIB2M_B1Z_EENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3B_EIB1E_zEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callB1Z_B3q_NcNtB3q_5Break0E0B3q_E0E0B3H_.exit.i
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
  %.val15.i = load i8, ptr %i.o, align 1, !noalias !655, !noundef !6 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !noalias !658, !noundef !6
  %i.q = icmp eq i8 %.val15.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !noalias !658, !noundef !6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val15.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !noalias !661
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.val15.i.1 = load i8, ptr %i.u, align 1, !noalias !655, !noundef !6 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !noalias !658, !noundef !6
  %i.w = icmp eq i8 %.val15.i.1, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !noalias !658, !noundef !6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val15.i.1, %bb.e ]
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !noalias !661
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
  %.val15.i.epil = load i8, ptr %i.ac, align 1, !noalias !655, !noundef !6 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !noalias !658, !noundef !6
  %i.ae = icmp eq i8 %.val15.i.epil, %i.ad
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !noalias !658, !noundef !6
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val15.i.epil, %.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !noalias !661
  %i.ah = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7BtpbLEd5q3_9elfshaker.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !655
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load <2 x ptr>, ptr %i.c, align 8
  store <2 x ptr> %i.e, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1D_8adapters3map8map_foldBX_INtNtB1F_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB1F_2io5error5ErrorEuNCINvMs0_NtNtB3B_4repo10repositoryNtB4R_10Repository15create_snapshotBI_BX_E0NCINvNvB1x_8for_each4callB3a_NCINvMsk_B8_INtB8_3VecB3a_E14extend_trustedINtB2D_3MapBI_B4I_EE0E0E0ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCINvMsd_B1N_NtB1N_9PackIndex13push_snapshotB1L_INtB12_3VecB1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtB1N_9PackErrorEEB3B_8try_folduNCINvMNtNtBc_3ops9try_traitINtB5O_17NeverShortCircuituE10wrap_mut_2uNtB1N_10FileHandleNCINvB6_8map_foldB6O_TB6O_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB7I_7HashSetB6O_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3F_7collect6ExtendB6O_E6extendB4s_E0NCINvNvB3B_8for_each4callB7r_NCINvXs1i_NtB7K_3mapINtBaC_7HashMapB6O_uB8v_EIB9k_B7r_E6extendIBO_B4s_B7z_EE0E0E0E0B69_E0INtNtB5Q_12control_flow11ControlFlowB69_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  %i.e = call noundef zeroext i1 @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1O_8adapters3map12map_try_foldBX_INtNtB1Q_6result6ResultNtBZ_10FileHandleNtBZ_9PackErrorEuINtNtNtB1Q_3ops12control_flow11ControlFlowINtNtB4u_9try_trait17NeverShortCircuituEENCINvMsd_BZ_NtBZ_9PackIndex13push_snapshotBX_INtB8_3VecBX_EE0NCINvXB2U_INtB2U_12GenericShuntINtB2S_3MapBI_B5K_EIB3v_zB48_EEB1I_8try_folduNCINvMB58_B55_10wrap_mut_2uB3R_NCINvB2S_8map_foldB3R_TB3R_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB95_7HashSetB3R_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB1M_7collect6ExtendB3R_E6extendB6T_E0NCINvNvB1I_8for_each4callB8O_NCINvXs1i_NtB97_3mapINtBbZ_7HashMapB3R_uB9S_EIBaH_B8O_E6extendIB7f_B6T_B8W_EE0E0E0E0B55_E0E0B4p_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvNtCs7BtpbLEd5q3_9elfshaker10list_files11print_files0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB14_6string6StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB4J_E0INtNtBc_6result6ResultB48_zEEB2C_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtBa_6string6StringENCINvNtNtB1O_8adapters3map12map_try_foldBX_B3m_B2M_INtNtB1Q_6result6ResultB2M_zENCNvNtCs7BtpbLEd5q3_9elfshaker10list_files11print_files0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3m_E0E0B4x_EB56_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvNtCs7BtpbLEd5q3_9elfshaker4show3run0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB1L_ENCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB5c_7HashMapB4f_B1L_NtNtNtB4l_4hash6random11RandomStateEINtNtB3f_7collect6ExtendB4e_E6extendBN_E0E0EB2C_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldBX_TNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBX_EuNCNvNtCs7BtpbLEd5q3_9elfshaker4show3run0NCINvNvB1I_8for_each4callB3l_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB5q_7HashMapB3m_BX_NtNtNtB3s_4hash6random11RandomStateEINtNtB1M_7collect6ExtendB3l_E6extendINtB2O_3MapBI_B49_EE0E0E0EB4f_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCINvMs0_NtB1P_10repositoryNtB2G_10Repository25find_unreferenced_objectsBX_Es1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Q_8for_each4callINtNtBc_6result6ResultuNtNtB1P_5error5ErrorENCINvMsk_B12_INtB12_3VecB4T_E14extend_trustedBN_E0E0ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load <2 x ptr>, ptr %i.c, align 8
  store <2 x ptr> %i.e, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1P_8adapters3map8map_foldBX_INtNtB1R_6result6ResultuNtNtB11_5error5ErrorEuNCINvMs0_NtB11_10repositoryNtB4f_10Repository25find_unreferenced_objectsBI_Es1_0NCINvNvB1J_8for_each4callB3m_NCINvMsk_B8_INtB8_3VecB3m_E14extend_trustedINtB2P_3MapBI_B46_EE0E0E0ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3q_8for_each4callINtNtBc_6result6ResultINtB12_3VecNtNtB14_6string6StringENtNtB1Q_5error5ErrorENCINvMsk_B12_IB4Q_B4t_E14extend_trustedBN_E0E0EB2E_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load <2 x ptr>, ptr %i.c, align 8
  store <2 x ptr> %i.e, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1Q_8adapters3map8map_foldBX_INtNtB1S_6result6ResultINtB8_3VecNtNtBa_6string6StringENtNtB12_5error5ErrorEuNCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0NCINvNvB1K_8for_each4callB3n_NCINvMsk_B8_IB3L_B3n_E14extend_trustedINtB2Q_3MapBI_B4C_EE0E0E0EB4I_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB12_3VecNtNtB1S_7packidx9FileEntryEEENCINvMsa_B1O_NtB1O_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtNtBc_6result6ResultNtB1O_12ExtractStatsNtNtB1Q_5error5ErrorEENCINvNtB12_16in_place_collect24write_in_place_with_dropB5Q_E0IB5R_B5f_zEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB8_3VecNtNtB14_7packidx9FileEntryEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtB2z_6result6ResultNtB10_12ExtractStatsNtNtB12_5error5ErrorEENCINvNtNtB2x_8adapters3map12map_try_foldBX_B45_B3v_IB46_B3v_zENCINvMsa_B10_NtB10_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB45_E0E0B5X_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs7BtpbLEd5q3_9elfshaker(ptr noundef nonnull %i.a) #23
  ret i32 0
end_hunk_1
