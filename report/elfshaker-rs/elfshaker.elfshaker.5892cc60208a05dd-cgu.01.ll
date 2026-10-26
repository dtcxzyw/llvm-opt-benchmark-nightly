Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.01?download=true
inline.NumInlined: 670
inline.NumDeleted: 437
begin_hunk_0_@_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB12_2io5error5ErrorEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1z_ENCINvXNtB2Q_8adaptersINtB4k_12GenericShuntBI_IBY_zB2j_EEB2K_8try_foldB3z_NCINvNtB8_16in_place_collect24write_in_place_with_dropB1z_E0IBY_B3z_zEE0INtNtNtB12_3ops12control_flow11ControlFlowB6n_B3z_EECs7BtpbLEd5q3_9elfshaker:bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.615.0..sroa_idx, i64 48, i1 false)
  store i64 %.sroa.013.0.copyload, ptr %.sroa.4.021, align 8, !noalias !371
  %.sroa.68.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.021, i64 8
  store ptr %.sroa.514.0.copyload, ptr %.sroa.68.16..sroa_idx.i, align 8, !noalias !371
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.4.021, i64 64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.h, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1D_5error5ErrorEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_folduNCINvXNtB2T_8adaptersINtB3J_12GenericShuntBI_IBY_zB2r_EEB2N_8try_folduNCINvNvB2N_12try_for_each4callB1z_INtNtNtB12_3ops12control_flow11ControlFlowB1z_ENcNtB5j_5Break0E0B5j_E0IB5k_B5j_EECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 dereferenceable(56) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [40 x i8], align 8            ; 2 uses
  %.sroa.4 = alloca [40 x i8], align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.09.0.copyload = load i64, ptr %i.d, align 8 ; 3 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510.0..sroa_idx, i64 40, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.e, ptr %i.c, align 8
  %.not.i.i = icmp eq i64 %.sroa.09.0.copyload, -2
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %3, align 8, !range !7, !alias.scope !383, !noalias !384, !noundef !6
  %i.g = icmp eq i64 %i.f, -2
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %3)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.f, !noalias !384

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510.0..sroa_idx, i64 40, i1 false)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.09.0.copyload, ptr %3, align 8, !noalias !384
  %.sroa.510.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510.0..8.val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4, i64 40, i1 false), !noalias !385
  %.sroa.612.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %.sroa.6.0.copyload, ptr %.sroa.612.0..8.val.sroa_idx.i, align 8, !noalias !384
  resume { ptr, i32 } %i.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.09.0.copyload, ptr %3, align 8, !noalias !384
  %.sroa.510.0..8.val.sroa_idx11.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510.0..8.val.sroa_idx11.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4, i64 40, i1 false), !noalias !385
  %.sroa.612.0..8.val.sroa_idx13.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %.sroa.6.0.copyload, ptr %.sroa.612.0..8.val.sroa_idx13.i, align 8, !noalias !384
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8, !alias.scope !386
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  ret void

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i, %bb.e
  %storemerge.i = phi i64 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !387
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_folduNCINvXNtB2t_8adaptersINtB3j_12GenericShuntBI_IBY_zB1A_EEB2n_8try_folduNCINvNvB2n_12try_for_each4calluINtNtNtB12_3ops12control_flow11ControlFlowuENcNtB4Q_5Break0E0B4Q_E0IB4R_B4Q_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef align 8 dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [48 x i8], align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.copyload = load i64, ptr %i.d, align 8 ; 3 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.46.0..sroa_idx, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.e, ptr %i.c, align 8
  %.not.i.i = icmp eq i64 %.sroa.05.0.copyload, -2
  br i1 %.not.i.i, label %_RNCINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB5_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB9_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEIB1P_zB2b_EENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB3a_12try_for_each4calluINtNtNtB9_3ops12control_flow11ControlFlowuENcNtB4n_5Break0E0B4n_E0Cs7BtpbLEd5q3_9elfshaker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %2, align 8, !range !7, !alias.scope !392, !noalias !393, !noundef !6
  %i.g = icmp eq i64 %i.f, -2
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.e, !noalias !393

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.05.0.copyload, ptr %2, align 8, !noalias !393
  %.sroa.5.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..8.val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4, i64 48, i1 false)
  resume { ptr, i32 } %i.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.05.0.copyload, ptr %2, align 8, !noalias !393
  %.sroa.5.0..8.val.sroa_idx6.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..8.val.sroa_idx6.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4, i64 48, i1 false)
  br label %_RNCINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB5_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB9_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEIB1P_zB2b_EENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB3a_12try_for_each4calluINtNtNtB9_3ops12control_flow11ControlFlowuENcNtB4n_5Break0E0B4n_E0Cs7BtpbLEd5q3_9elfshaker.exit

_RNCINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB5_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB9_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEIB1P_zB2b_EENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB3a_12try_for_each4calluINtNtNtB9_3ops12control_flow11ControlFlowuENcNtB4n_5Break0E0B4n_E0Cs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i
  %.sroa.0.1.i = phi i8 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNCINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB5_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB9_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEIB1P_zB2b_EENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB3a_12try_for_each4calluINtNtNtB9_3ops12control_flow11ControlFlowuENcNtB4n_5Break0E0B4n_E0Cs7BtpbLEd5q3_9elfshaker.exit
  %.sroa.0.0 = phi i8 [ %.sroa.0.1.i, %_RNCINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB5_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB9_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEIB1P_zB2b_EENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB3a_12try_for_each4calluINtNtNtB9_3ops12control_flow11ControlFlowuENcNtB4n_5Break0E0B4n_E0Cs7BtpbLEd5q3_9elfshaker.exit ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1j_8find_map5checkBX_INtNtNtB1r_5array4iter8IntoIterBX_Kj2_EQNCNCNCNvNtCs7BtpbLEd5q3_9elfshaker4find3run000E0INtNtNtB1r_3ops12control_flow11ControlFlowB2R_EEB3F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not5 = icmp eq ptr %.promoted, %i.e
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.g = phi ptr [ %i.h, %bb.c ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !398
  call void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNCNvNtCs7BtpbLEd5q3_9elfshaker4find3run000INtB7_5FnMutTNtNtCs1xwejQucwHj_5alloc6string6StringEE8call_mutBY_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !398
  %i.i = load i64, ptr %i.b, align 8, !range !15, !noalias !398, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !398
  br label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !398
  %.not = icmp eq ptr %i.h, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1D_8adapters3map8map_foldBX_INtNtB1F_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB1F_2io5error5ErrorEuNCINvMs0_NtNtB3B_4repo10repositoryNtB4R_10Repository15create_snapshotBI_BX_E0NCINvNvB1x_8for_each4callB3a_NCINvMsk_B8_INtB8_3VecB3a_E14extend_trustedINtB2D_3MapBI_B4I_EE0E0E0ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [64 x i8], align 1                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
  %i.f = alloca [20 x i8], align 4                ; 8 uses
  %i.g = alloca [104 x i8], align 8               ; 7 uses
  %i.h = alloca [20 x i8], align 1                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [104 x i8], align 8               ; 5 uses
  %i.k = alloca [20 x i8], align 1                ; 6 uses
  %i.l = alloca [104 x i8], align 8               ; 13 uses
  %i.m = alloca [176 x i8], align 8               ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 12 uses
  %i.o = alloca [24 x i8], align 8                ; 13 uses
  %i.p = alloca [176 x i8], align 8               ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 9 uses
  %i.r = alloca [4 x i8], align 4                 ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.19.i = alloca [20 x i8], align 8         ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.v, align 8        ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.not.not39 = icmp eq ptr %.promoted, %i.w
  br i1 %.not.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.980.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.10.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.15.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.959.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.sroa.1464.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted41 = load i64, ptr %i.au, align 8
  %.val.i.pre = load ptr, ptr %i.x, align 8, !alias.scope !450 ; 2 uses
  %.val1.i.pre = load ptr, ptr %i.y, align 8, !alias.scope !450 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val1.i.pre, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i.pre, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bf
  %i.ax = phi i64 [ %.promoted41, %.lr.ph ], [ %i.fg, %bb.bf ] ; 3 uses
  %i.ay = phi ptr [ %.promoted, %.lr.ph ], [ %i.az, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !451
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 3 uses
  store ptr %i.az, ptr %i.v, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !454
  invoke void @_RINvMs2_NtCsaL1QbXo9JQH_3std2fsNtB6_4File4openRNtNtB8_4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.e unwind label %bb.d, !noalias !455

bb.c:                                             ; preds = %.body.i.i, %bb.v
  %.sroa.050.0.i.i = phi i8 [ %.sroa.050.3.i.i, %bb.v ], [ %.sroa.050.7.i.i, %.body.i.i ]
  %.pn108.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.v ], [ %.pn.i.i, %.body.i.i ] ; 2 uses
  %2 = trunc nuw i8 %.sroa.050.0.i.i to i1
  br i1 %2, label %.thread14.i.i, label %bb.bi

bb.d:                                             ; preds = %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.thread14.i.i

bb.e:                                             ; preds = %bb.b
  %i.bb = load i32, ptr %i.q, align 8, !range !456, !noalias !454, !noundef !6
  %i.bc = trunc nuw i32 %i.bb to i1
  br i1 %i.bc, label %bb.f, label %bb.x

bb.f:                                             ; preds = %bb.e
  %.val112.i.i = load ptr, ptr %i.aq, align 8, !noalias !454, !nonnull !6, !noundef !6 ; 10 uses
  %i.bd = ptrtoint ptr %.val112.i.i to i64        ; 4 uses
  %i.be = and i64 %i.bd, 3                        ; 2 uses
  switch i64 %i.be, label %default.unreachable [
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 0, label %bb.i
    i64 1, label %bb.j
  ], !prof !9

default.unreachable:                              ; preds = %bb.q, %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.bf = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i unwind label %bb.w, !noalias !455

.noexc.i.i:                                       ; preds = %bb.g
  %i.bg = lshr i64 %i.bd, 32
  %i.bh = trunc nuw i64 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !455, !nonnull !6, !noundef !6
  %i.bk = invoke noundef i8 %i.bj(i32 noundef %i.bh)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i unwind label %bb.w, !noalias !455, !inline_history !406

bb.h:                                             ; preds = %bb.f
  %i.bl = lshr i64 %i.bd, 32
  %i.bm = icmp ult ptr %.val112.i.i, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i = trunc i64 %i.bl to i8 ; 2 uses
  %i.bn = icmp ne i8 %switch.idx.cast.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bm)
  call void @llvm.assume(i1 %i.bn)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.i:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %.val112.i.i, i64 16
  %i.bp = load i8, ptr %i.bo, align 8, !range !457, !noalias !455, !noundef !6
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.j:                                             ; preds = %bb.f
  %i.bq = getelementptr i8, ptr %.val112.i.i, i64 31
  %i.br = load i8, ptr %i.bq, align 8, !range !457, !noalias !455, !noundef !6
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %.noexc.i.i
  %.sroa.0.0.i.i.i = phi i8 [ %i.br, %bb.j ], [ %switch.idx.cast.i.i.i.i.i, %bb.h ], [ %i.bp, %bb.i ], [ %i.bk, %.noexc.i.i ]
  %i.bs = icmp eq i8 %.sroa.0.0.i.i.i, 1
  br i1 %i.bs, label %bb.k, label %.thread1.i.i

bb.k:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !454
  invoke void @_RINvNtCsaL1QbXo9JQH_3std2fs8metadataRNtNtB4_4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.m unwind label %bb.l, !noalias !455

bb.l:                                             ; preds = %bb.k
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr nonnull %.val112.i.i) #17
          to label %.thread14.i.i unwind label %bb.u, !noalias !455

bb.m:                                             ; preds = %bb.k
  %i.bu = load i64, ptr %i.p, align 8, !range !18, !noalias !454, !noundef !6
  %i.bv = icmp eq i64 %i.bu, 2
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.ar, align 8, !noalias !454, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !454
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.sroa.959.0.copyload.i.i = load i32, ptr %.sroa.959.0..sroa_idx.i.i, align 8, !noalias !454
  %.sroa.1464.0.copyload.i.i = load i64, ptr %.sroa.1464.0..sroa_idx.i.i, align 8, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !454
  %i.bx = icmp eq i64 %.sroa.1464.0.copyload.i.i, 0
  br i1 %i.bx, label %bb.p, label %.thread19.i.i

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload3.i = load i64, ptr %i.s, align 8, !alias.scope !458, !noalias !451
  %.sroa.10.0.copyload7.i = load ptr, ptr %.sroa.10.0..sroa_idx4.i, align 8, !alias.scope !458, !noalias !451
  %.sroa.15.0.copyload11.i = load i64, ptr %.sroa.15.0..sroa_idx8.i, align 8, !alias.scope !458, !noalias !451
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.19.i, i8 0, i64 20, i1 false), !noalias !451
  br label %bb.q

.thread19.i.i:                                    ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !454
  br label %.sink.split.i.i

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.21.1.i = phi i32 [ undef, %bb.n ], [ %.sroa.959.0.copyload.i.i, %bb.p ] ; 2 uses
  %.sroa.15.1.i = phi i64 [ undef, %bb.n ], [ %.sroa.15.0.copyload11.i, %bb.p ] ; 2 uses
  %.sroa.10.3.i = phi ptr [ %i.bw, %bb.n ], [ %.sroa.10.0.copyload7.i, %bb.p ] ; 2 uses
  %.sroa.0.3.i = phi i64 [ -1, %bb.n ], [ %.sroa.0.0.copyload3.i, %bb.p ] ; 2 uses
  %.sroa.050.3.i.i = phi i8 [ 1, %bb.n ], [ 0, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !454
  switch i64 %i.be, label %default.unreachable [
    i64 2, label %bb.t
    i64 3, label %bb.r
    i64 0, label %bb.t
    i64 1, label %bb.s
  ], !prof !9

bb.r:                                             ; preds = %bb.q
  %i.by = icmp ult ptr %.val112.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bz = and i64 %i.bd, 1095216660480
  %i.ca = icmp ne i64 %i.bz, 1095216660480
  call void @llvm.assume(i1 %i.by)
  call void @llvm.assume(i1 %i.ca)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cb = getelementptr i8, ptr %.val112.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  store ptr %i.cb, ptr %i.as, align 8, !alias.scope !459, !noalias !454
  store i8 3, ptr %i.i, align 8, !alias.scope !459, !noalias !454
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %bb.t unwind label %bb.v, !noalias !455

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !454
  %3 = trunc nuw i8 %.sroa.050.3.i.i to i1
  br i1 %3, label %bb.bb, label %bb.bf

bb.u:                                             ; preds = %.thread14.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.y, %bb.w, %bb.l
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !455
  unreachable

bb.v:                                             ; preds = %bb.s
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.w:                                             ; preds = %.noexc.i.i, %bb.g
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr nonnull %.val112.i.i) #17
          to label %.thread14.i.i unwind label %bb.u, !noalias !455

.thread1.i.i:                                     ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !454
  br label %.sink.split.i.i

bb.x:                                             ; preds = %bb.e
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 4, !noalias !454
  store i32 %.sroa.2.0.copyload.i.i, ptr %i.r, align 4, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !454
  store i64 0, ptr %i.n, align 8, !noalias !454
  store ptr inttoptr (i64 1 to ptr), ptr %i.z, align 8, !noalias !454
  store i64 0, ptr %i.aa, align 8, !noalias !454
  %i.cd = invoke { i64, ptr } @_RNvXsa_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.z unwind label %bb.y, !noalias !455 ; 2 uses

bb.y:                                             ; preds = %bb.ab, %bb.x
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #17
          to label %.body.i.i unwind label %bb.u, !noalias !455

bb.z:                                             ; preds = %bb.x
  %i.cf = extractvalue { i64, ptr } %i.cd, 0
  %i.cg = trunc nuw i64 %i.cf to i1
  br i1 %i.cg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = extractvalue { i64, ptr } %i.cd, 1
  br label %bb.aw

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !454
  invoke void @_RNvMs2_NtCsaL1QbXo9JQH_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.r)
          to label %bb.ac unwind label %bb.y, !noalias !455

bb.ac:                                            ; preds = %bb.ab
  %i.ci = load i64, ptr %i.m, align 8, !range !18, !noalias !454, !noundef !6
  %i.cj = icmp eq i64 %i.ci, 2
  br i1 %i.cj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ck = load ptr, ptr %i.ap, align 8, !noalias !454, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !454
  br label %bb.aw

bb.ae:                                            ; preds = %bb.ac
  %.sroa.980.0.copyload.i.i = load i32, ptr %.sroa.980.0..sroa_idx.i.i, align 8, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !454
  invoke void @_RNvXs1_Cs6kU8M6Zwtah_12block_bufferINtB5_11BlockBufferINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtCs3oUPovFnLWP_4core7default7Default7defaultCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([65 x i8]) align 1 captures(none) dereferenceable(65) %i.ab)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i, %.loopexit21.i.i, %_RINvMs4_Cs6kU8M6Zwtah_12block_bufferINtB6_11BlockBufferINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_Cs18FmLiCbOr5_4sha1NtB3l_8Sha1CoreNtNtCsl2BbkTbfUYR_6digest8core_api15FixedOutputCore19finalize_fixed_core0ECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i, %.noexc132.i.i, %bb.ak, %.noexc130.i.i, %.noexc129.i.i, %.noexc128.i.i, %._crit_edge.thread.i.i.i.i.i, %bb.aj, %bb.ai, %.noexc124.i.i, %bb.ah, %.noexc122.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i, %bb.ae
  %lpad.loopexit.split-lp93 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #17
          to label %.body.i.i unwind label %bb.u, !noalias !455

bb.af:                                            ; preds = %bb.ae
  store i64 0, ptr %i.l, align 8, !alias.scope !460, !noalias !454
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !460, !noalias !454
  store i32 -1009589776, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !460, !noalias !454
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %.val.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !462, !noalias !454, !nonnull !6, !noundef !6 ; 4 uses
  %.val1.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !462, !noalias !454, !noundef !6 ; 6 uses
  %i.cl = load i8, ptr %i.ae, align 8, !alias.scope !463, !noalias !454, !noundef !6 ; 3 uses
  %i.cm = zext nneg i8 %i.cl to i64               ; 4 uses
  %i.cn = icmp ult i8 %i.cl, 64
  call void @llvm.assume(i1 %i.cn)
  %i.co = sub nuw nsw i64 64, %i.cm               ; 5 uses
  %i.cp = icmp samesign ult i64 %.val1.i.i.i.i, %i.co
  br i1 %i.cp, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cq = icmp eq i8 %i.cl, 0
  br i1 %i.cq, label %.noexc123.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i

.noexc123.i.i:                                    ; preds = %.noexc122.i.i, %bb.ag
  %.sroa.6.0.i.i.i.i.i = phi i64 [ %.val1.i.i.i.i, %bb.ag ], [ %i.cy, %.noexc122.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.val.i.i.i.i, %bb.ag ], [ %i.cx, %.noexc122.i.i ] ; 2 uses
  %i.cr = lshr i64 %.sroa.6.0.i.i.i.i.i, 6        ; 3 uses
  %i.cs = and i64 %.sroa.6.0.i.i.i.i.i, 9223372036854775744
  %i.ct = and i64 %.sroa.6.0.i.i.i.i.i, 63        ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 %i.cs
  %i.cv = icmp eq i64 %i.cr, 0
  br i1 %i.cv, label %.noexc124.i.i, label %bb.ah

_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.cm
  invoke void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.cw, i64 noundef %i.co, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %.noexc122.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455

.noexc122.i.i:                                    ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.co
  %i.cy = sub nuw nsw i64 %.val1.i.i.i.i, %i.co
  %i.cz = load i64, ptr %i.l, align 8, !alias.scope !464, !noalias !465, !noundef !6
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %i.l, align 8, !alias.scope !464, !noalias !465
  invoke void @_RNvNtCs18FmLiCbOr5_4sha18compress8compress(ptr noalias nofree noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(65) %i.ab, i64 noundef range(i64 1, 144115188075855872) 1)
          to label %.noexc123.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455

bb.ah:                                            ; preds = %.noexc123.i.i
  %i.db = load i64, ptr %i.l, align 8, !alias.scope !466, !noalias !467, !noundef !6
  %i.dc = add i64 %i.db, %i.cr
  store i64 %i.dc, ptr %i.l, align 8, !alias.scope !466, !noalias !467
  invoke void @_RNvNtCs18FmLiCbOr5_4sha18compress8compress(ptr noalias nofree noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i, i64 noundef range(i64 1, 144115188075855872) %i.cr)
          to label %.noexc124.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455

.noexc124.i.i:                                    ; preds = %bb.ah, %.noexc123.i.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull dereferenceable(65) %i.ab, i64 noundef %i.ct, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455

bb.ai:                                            ; preds = %bb.af
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.cm
  invoke void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.dd, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %.noexc126.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455

.noexc126.i.i:                                    ; preds = %bb.ai
  %i.de = add nuw nsw i64 %.val1.i.i.i.i, %i.cm
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc126.i.i, %.noexc124.i.i
  %storemerge.in.i.i.i.i.i = phi i64 [ %i.de, %.noexc126.i.i ], [ %i.ct, %.noexc124.i.i ]
  %storemerge.i.i.i.i.i = trunc nuw nsw i64 %storemerge.in.i.i.i.i.i to i8
  store i8 %storemerge.i.i.i.i.i, ptr %i.ae, align 8, !alias.scope !463, !noalias !454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(104) %i.l, i64 104, i1 false), !noalias !454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !468
  invoke void @_RINvXsg_Cs1XKMWD4UPJk_13generic_arrayINtB6_12GenericArrayhINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBV_IBV_IBV_IBV_NtBX_5UTermNtNtBZ_3bit2B1ENtB1Y_2B0EB1W_EB2b_EB2b_EEINtNtB6_8sequence15GenericSequencehE8generateNCNvXNtB6_5implsBz_NtNtCs3oUPovFnLWP_4core7default7Default7default0ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([20 x i8]) align 1 captures(none) dereferenceable(20) %i.h)
          to label %.noexc127.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455

.noexc127.i.i:                                    ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.j, i64 104, i1 false), !noalias !469
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.df = load i8, ptr %i.ag, align 8, !alias.scope !473, !noalias !468, !noundef !6 ; 3 uses
  %i.dg = zext nneg i8 %i.df to i64               ; 4 uses
  %i.dh = icmp ult i8 %i.df, 64
  call void @llvm.assume(i1 %i.dh)
  %i.di = load i64, ptr %i.g, align 8, !alias.scope !474, !noalias !468, !noundef !6
  %i.dj = shl i64 %i.di, 9
  %i.dk = shl nuw nsw i64 %i.dg, 3
  %i.dl = or disjoint i64 %i.dj, %i.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.ah, i64 20, i1 false), !noalias !469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !475
  %i.dm = call i64 @llvm.bswap.i64(i64 %i.dl)
  store i64 %i.dm, ptr %i.c, align 8, !noalias !475
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.dg ; 2 uses
  store i8 -128, ptr %i.dn, align 1, !alias.scope !477, !noalias !468
  %i.do = icmp eq i8 %i.df, 63
  br i1 %i.do, label %._crit_edge.thread.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc127.i.i
  %i.dp = getelementptr i8, ptr %i.dn, i64 1
  %i.dq = xor i64 %i.dg, 63
  call void @llvm.memset.p0.i64(ptr align 1 %i.dp, i8 0, i64 %i.dq, i1 false), !alias.scope !477, !noalias !468
  %i.dr = xor i64 %i.dg, 56
  %i.ds = icmp samesign ult i64 %i.dr, 8
  br i1 %i.ds, label %._crit_edge.thread.i.i.i.i.i, label %bb.ak

._crit_edge.thread.i.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i.i, %.noexc127.i.i
  invoke void @_RNvNtCs18FmLiCbOr5_4sha18compress8compress(ptr noalias nofree noundef nonnull align 4 dereferenceable(20) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(65) %i.af, i64 noundef 1)
          to label %.noexc128.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455

.noexc128.i.i:                                    ; preds = %._crit_edge.thread.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !478
  invoke void @_RINvXsg_Cs1XKMWD4UPJk_13generic_arrayINtB6_12GenericArrayhINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBV_IBV_IBV_IBV_IBV_IBV_NtBX_5UTermNtNtBZ_3bit2B1ENtB26_2B0EB2j_EB2j_EB2j_EB2j_EB2j_EEINtNtB6_8sequence15GenericSequencehE8generateNCNvXNtB6_5implsBz_NtNtCs3oUPovFnLWP_4core7default7Default7default0ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([64 x i8]) align 1 captures(none) dereferenceable(64) %i.b)
          to label %.noexc129.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455

.noexc129.i.i:                                    ; preds = %.noexc128.i.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.aj, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %.noexc130.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455

.noexc130.i.i:                                    ; preds = %.noexc129.i.i
  invoke void @_RNvNtCs18FmLiCbOr5_4sha18compress8compress(ptr noalias nofree noundef nonnull align 4 dereferenceable(20) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.b, i64 noundef 1)
          to label %.noexc131.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455

.noexc131.i.i:                                    ; preds = %.noexc130.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !478
  br label %_RINvMs4_Cs6kU8M6Zwtah_12block_bufferINtB6_11BlockBufferINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_Cs18FmLiCbOr5_4sha1NtB3l_8Sha1CoreNtNtCsl2BbkTbfUYR_6digest8core_api15FixedOutputCore19finalize_fixed_core0ECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.ai, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc132.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455

.noexc132.i.i:                                    ; preds = %bb.ak
  invoke void @_RNvNtCs18FmLiCbOr5_4sha18compress8compress(ptr noalias nofree noundef nonnull align 4 dereferenceable(20) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(65) %i.af, i64 noundef 1)
          to label %_RINvMs4_Cs6kU8M6Zwtah_12block_bufferINtB6_11BlockBufferINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_Cs18FmLiCbOr5_4sha1NtB3l_8Sha1CoreNtNtCsl2BbkTbfUYR_6digest8core_api15FixedOutputCore19finalize_fixed_core0ECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455

_RINvMs4_Cs6kU8M6Zwtah_12block_bufferINtB6_11BlockBufferINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_Cs18FmLiCbOr5_4sha1NtB3l_8Sha1CoreNtNtCsl2BbkTbfUYR_6digest8core_api15FixedOutputCore19finalize_fixed_core0ECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %.noexc132.i.i, %.noexc131.i.i
  store i8 0, ptr %i.ag, align 8, !alias.scope !477, !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !479
  store ptr %i.ak, ptr %i.a, align 8, !noalias !480
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !480
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !480
  store i64 20, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !480
  store i64 4, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !475
  invoke void @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.al)
          to label %.noexc134.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455

.noexc134.i.i:                                    ; preds = %_RINvMs4_Cs6kU8M6Zwtah_12block_bufferINtB6_11BlockBufferINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_Cs18FmLiCbOr5_4sha1NtB3l_8Sha1CoreNtNtCsl2BbkTbfUYR_6digest8core_api15FixedOutputCore19finalize_fixed_core0ECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !479
  %i.dt = load i64, ptr %i.am, align 8, !alias.scope !481, !noalias !475, !noundef !6 ; 2 uses
  %i.du = load i64, ptr %i.an, align 8, !alias.scope !481, !noalias !475, !noundef !6
  %i.dv = icmp ult i64 %i.dt, %i.du
  br i1 %i.dv, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i, label %.loopexit21.i.i

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %.noexc134.i.i, %.noexc136.i.i
  %i.dw = phi i64 [ %i.ee, %.noexc136.i.i ], [ %i.dt, %.noexc134.i.i ] ; 3 uses
  %i.dx = add nuw i64 %i.dw, 1
  store i64 %i.dx, ptr %i.am, align 8, !alias.scope !481, !noalias !475
  %i.dy = invoke { ptr, i64 } @_RNvXs1y_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %i.dw)
          to label %.noexc135.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455 ; 2 uses

.noexc135.i.i:                                    ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  %i.dz = extractvalue { ptr, i64 } %i.dy, 0      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i, label %.loopexit21.i.i, label %bb.al

bb.al:                                            ; preds = %.noexc135.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !481, !noalias !475, !nonnull !6, !noundef !6
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.dw
  %i.eb = extractvalue { ptr, i64 } %i.dy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !475
  %i.ec = load i32, ptr %i.ea, align 4, !noalias !482, !noundef !6
  %i.ed = call i32 @llvm.bswap.i32(i32 %i.ec)
  store i32 %i.ed, ptr %i.d, align 4, !noalias !475
  invoke void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.dz, i64 noundef %i.eb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %.noexc136.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455

.noexc136.i.i:                                    ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !475
  %i.ee = load i64, ptr %i.am, align 8, !alias.scope !481, !noalias !475, !noundef !6 ; 2 uses
  %i.ef = load i64, ptr %i.an, align 8, !alias.scope !481, !noalias !475, !noundef !6
  %i.eg = icmp ult i64 %i.ee, %i.ef
  br i1 %i.eg, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i, label %.loopexit21.i.i

.loopexit21.i.i:                                  ; preds = %.noexc136.i.i, %.noexc135.i.i, %.noexc134.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.k, ptr noundef nonnull align 1 dereferenceable(20) %i.h, i64 20, i1 false), !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.pre) ]
  %i.eh = load ptr, ptr %.val.i.pre, align 8, !noalias !454, !nonnull !6, !align !10, !noundef !6
  %i.ei = load ptr, ptr %i.ac, align 8, !noalias !454, !nonnull !6, !noundef !6
  %i.ej = load i64, ptr %i.ad, align 8, !noalias !454, !noundef !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.pre) ]
  %i.ek = load ptr, ptr %i.av, align 8, !noalias !454, !nonnull !6, !noundef !6
  %i.el = load i64, ptr %i.aw, align 8, !noalias !454, !noundef !6
  %i.em = invoke noundef ptr @_RINvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB6_10Repository18write_loose_objectRShECs7BtpbLEd5q3_9elfshaker(ptr noundef nonnull align 8 %i.eh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ei, i64 noundef %i.ej, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ek, i64 noundef %i.el, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.k)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !455 ; 2 uses

bb.am:                                            ; preds = %.loopexit21.i.i
  %.not.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !454
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.ap unwind label %bb.ao, !noalias !455

bb.ao:                                            ; preds = %bb.an
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.i.i unwind label %bb.aq, !noalias !455

bb.ap:                                            ; preds = %bb.an
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %5, !noalias !455

bb.aq:                                            ; preds = %bb.ao
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !455
  unreachable

bb.ar:                                            ; preds = %bb.am
  %.sroa.0.0.copyload2.i = load i64, ptr %i.s, align 8, !alias.scope !458, !noalias !451
  %.sroa.10.0.copyload5.i = load ptr, ptr %.sroa.10.0..sroa_idx4.i, align 8, !alias.scope !458, !noalias !451
  %.sroa.15.0.copyload9.i = load i64, ptr %.sroa.15.0..sroa_idx8.i, align 8, !alias.scope !458, !noalias !451
  %i.ep = load i64, ptr %i.ad, align 8, !noalias !454, !noundef !6 ; 2 uses
  %i.eq = icmp sgt i64 %i.ep, -1
  call void @llvm.assume(i1 %i.eq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.19.i, ptr noundef nonnull align 1 dereferenceable(20) %i.k, i64 20, i1 false), !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !454
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.at unwind label %bb.as, !noalias !455

bb.as:                                            ; preds = %bb.ar
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.i.i unwind label %bb.au, !noalias !455

bb.at:                                            ; preds = %bb.ar
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.av unwind label %5, !noalias !455

bb.au:                                            ; preds = %bb.as
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !455
  unreachable

.body.i.i:                                        ; preds = %bb.ax, %5, %bb.as, %bb.ao, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.y
  %.sroa.050.7.i.i = phi i8 [ 1, %bb.y ], [ 1, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.ao ], [ 0, %bb.as ], [ %.sroa.050.8.i.i, %5 ], [ 1, %bb.ax ]
  %.pn.i.i = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %lpad.loopexit.split-lp93, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.en, %bb.ao ], [ %i.er, %bb.as ], [ %6, %5 ], [ %i.eu, %bb.ax ]
  %.val115.i.i = load i32, ptr %i.r, align 4, !range !14, !noalias !454, !noundef !6
  %4 = call noundef i32 @close(i32 noundef %.val115.i.i) #18, !noalias !455 ; 0 uses
  br label %bb.c

5:                                                ; preds = %bb.ay, %bb.at, %bb.ap
  %.sroa.050.8.i.i = phi i8 [ 1, %bb.ay ], [ 1, %bb.ap ], [ 0, %bb.at ]
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !454
  %.val114.i.i = load i32, ptr %i.r, align 4, !range !14, !noalias !454, !noundef !6
  %i.et = call noundef i32 @close(i32 noundef %.val114.i.i) #18, !noalias !455 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !454
  br label %bb.bf

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !454
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ad, %bb.aa
  %.sink.i.i = phi ptr [ %i.ck, %bb.ad ], [ %i.ch, %bb.aa ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.ay unwind label %bb.ax, !noalias !455

bb.ax:                                            ; preds = %bb.aw
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i.i unwind label %bb.az, !noalias !455

bb.ay:                                            ; preds = %bb.aw
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit149.i.i unwind label %5, !noalias !455

bb.az:                                            ; preds = %bb.ax
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !455
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit149.i.i: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !454
  br label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit149.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %.sroa.10.0.i = phi ptr [ %.sink.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit149.i.i ], [ %i.em, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i.i ]
  %.val113.i.i = load i32, ptr %i.r, align 4, !range !14, !noalias !454, !noundef !6
  %i.ew = call noundef i32 @close(i32 noundef %.val113.i.i) #18, !noalias !455 ; 0 uses
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ba, %.thread1.i.i, %.thread19.i.i
  %.sroa.10.1.i = phi ptr [ %.val112.i.i, %.thread19.i.i ], [ %.val112.i.i, %.thread1.i.i ], [ %.sroa.10.0.i, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !454
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split.i.i, %bb.t
  %.sroa.21.0.i = phi i32 [ %.sroa.21.1.i, %bb.t ], [ undef, %.sink.split.i.i ]
  %.sroa.15.0.i = phi i64 [ %.sroa.15.1.i, %bb.t ], [ undef, %.sink.split.i.i ]
  %.sroa.10.2.i = phi ptr [ %.sroa.10.3.i, %bb.t ], [ %.sroa.10.1.i, %.sink.split.i.i ]
  %.sroa.0.2.i = phi i64 [ %.sroa.0.3.i, %bb.t ], [ -1, %.sink.split.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.bc, !noalias !455

bb.bc:                                            ; preds = %bb.bb
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.bi unwind label %bb.bd, !noalias !455

bb.bd:                                            ; preds = %bb.bc
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !455
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.bf unwind label %.loopexit

.thread14.i.i:                                    ; preds = %bb.w, %bb.l, %bb.d, %bb.c
  %.pn10818.i.i = phi { ptr, i32 } [ %.pn108.i.i, %bb.c ], [ %i.ba, %bb.d ], [ %lpad.thr_comm.i.i, %bb.w ], [ %i.bt, %bb.l ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #17
          to label %bb.bi unwind label %bb.u, !noalias !455

._crit_edge:                                      ; preds = %bb.bf, %bb.a
  %i.ez = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 %i.fb, ptr %i.t, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.ez, ptr %i.fc, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %bb.be unwind label %bb.bh

.loopexit:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %lpad.loopexit13 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.be:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !align !10, !noundef !6
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.fd, align 8, !noundef !6
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.bf:                                            ; preds = %bb.av, %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %.sroa.21.2.i = phi i32 [ %.sroa.980.0.copyload.i.i, %bb.av ], [ %.sroa.21.1.i, %bb.t ], [ %.sroa.21.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i ]
  %.sroa.17.2.i = phi i64 [ %i.ep, %bb.av ], [ 0, %bb.t ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i ]
  %.sroa.15.2.i = phi i64 [ %.sroa.15.0.copyload9.i, %bb.av ], [ %.sroa.15.1.i, %bb.t ], [ %.sroa.15.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i ]
  %.sroa.10.4.i = phi ptr [ %.sroa.10.0.copyload5.i, %bb.av ], [ %.sroa.10.3.i, %bb.t ], [ %.sroa.10.2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i ]
  %.sroa.0.4.i = phi i64 [ %.sroa.0.0.copyload2.i, %bb.av ], [ %.sroa.0.3.i, %bb.t ], [ %.sroa.0.2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !451
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.fe = load ptr, ptr %i.at, align 8, !alias.scope !485, !noundef !6
  %i.ff = getelementptr inbounds nuw [64 x i8], ptr %i.fe, i64 %i.ax ; 7 uses
  store i64 %.sroa.0.4.i, ptr %i.ff, align 8, !noalias !486
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %.sroa.10.4.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !486
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i64 %.sroa.15.2.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !486
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store i64 -1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !486
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  store i64 %.sroa.17.2.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !486
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.19.i, i64 20, i1 false), !noalias !451
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 60
  store i32 %.sroa.21.2.i, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !486
  %i.fg = add i64 %i.ax, 1                        ; 2 uses
  store i64 %i.fg, ptr %i.au, align 8, !alias.scope !485
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  %.not.not = icmp eq ptr %i.az, %i.w
  br i1 %.not.not, label %._crit_edge, label %bb.b

bb.bg:                                            ; preds = %bb.bi
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bh:                                            ; preds = %._crit_edge
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7.pre = load i64, ptr %.phi.trans.insert, align 8
  %.val6 = load ptr, ptr %1, align 8, !nonnull !6, !align !10, !noundef !6
  store i64 %.val7.pre, ptr %.val6, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.bh, %bb.bi
  %eh.lpad-body58 = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.bi ], [ %lpad.loopexit.split-lp14, %bb.bh ]
  resume { ptr, i32 } %eh.lpad-body58

bb.bi:                                            ; preds = %bb.c, %bb.bc, %.thread14.i.i, %.loopexit
  %eh.lpad-body.ph = phi { ptr, i32 } [ %lpad.loopexit13, %.loopexit ], [ %.pn10818.i.i, %.thread14.i.i ], [ %i.ex, %bb.bc ], [ %.pn108.i.i, %bb.c ]
  %.val656 = load ptr, ptr %1, align 8, !nonnull !6, !align !10, !noundef !6
  store i64 %i.ax, ptr %.val656, align 8
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.bg
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs7_NtNtB1D_8adapters4takeINtB2N_4TakepENtB2N_8SpecTake13spec_for_each5checkBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedIB3a_QINtNtB2P_8peekable8PeekableBI_EEE0E0INtNtB1F_6option6OptionjEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 3 uses
  %.not14 = icmp eq ptr %.promoted, %i.b
  br i1 %.not14, label %._crit_edge26, label %.lr.ph

._crit_edge26:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val9.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !491, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.promoted18 = load i64, ptr %i.f, align 8, !alias.scope !491 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.promoted, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.promoted18
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.promoted, i64 24, i1 false)
  %i.i = add i64 %.promoted18, 1                  ; 2 uses
  %i.j = icmp eq i64 %1, 0
  br i1 %i.j, label %._crit_edge39, label %.lr.ph38

._crit_edge:                                      ; preds = %.lr.ph38
  store ptr %i.r, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge26, %._crit_edge39
  %.lcssa.sink = phi i64 [ %.lcssa, %._crit_edge39 ], [ %i.q, %._crit_edge ], [ %.val9.pre, %._crit_edge26 ]
  %.sroa.0.013 = phi i64 [ 0, %._crit_edge39 ], [ %i.s, %._crit_edge ], [ %1, %._crit_edge26 ]
  %.sroa.02.0 = phi i64 [ 0, %._crit_edge39 ], [ 1, %._crit_edge ], [ 1, %._crit_edge26 ]
  %.val = load ptr, ptr %2, align 8, !nonnull !6, !align !10, !noundef !6
  store i64 %.lcssa.sink, ptr %.val, align 8
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.02.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.0.013, 1
  ret { i64, i64 } %i.l

bb.c:                                             ; preds = %.lr.ph38
  %i.m = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.q
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.o = add i64 %i.q, 1                          ; 2 uses
  %i.p = icmp eq i64 %i.s, 0
  br i1 %i.p, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph, %bb.c
  %i.q = phi i64 [ %i.o, %bb.c ], [ %i.i, %.lr.ph ] ; 3 uses
  %i.r = phi ptr [ %i.m, %bb.c ], [ %i.g, %.lr.ph ] ; 4 uses
  %.sroa.0.01537 = phi i64 [ %i.s, %bb.c ], [ %1, %.lr.ph ]
  %i.s = add i64 %.sroa.0.01537, -1               ; 3 uses
  %.not = icmp eq ptr %i.r, %i.b
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge39:                                    ; preds = %bb.c, %.lr.ph
  %.lcssa34 = phi ptr [ %i.g, %.lr.ph ], [ %i.m, %bb.c ]
  %.lcssa = phi i64 [ %i.i, %.lr.ph ], [ %i.o, %bb.c ]
  store ptr %.lcssa34, ptr %i.c, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1D_8adapters3map12map_try_foldBX_INtNtB1F_6result6ResultBX_NtNtNtB1F_2io5error5ErrorEuINtNtNtB1F_3ops12control_flow11ControlFlowIB4b_BX_EENCINvNtNtCskuiImRAV2ip_9elfshaker4repo10repository15clean_file_listBX_BI_E0NCINvNtB2J_7flatten15try_flatten_oneB3j_uB4a_NCIB2F_BX_B3j_uB4a_NCB52_s_0NCINvNtB2J_6filter15filter_try_foldB3j_uB4a_NCB52_s0_0NCINvXB2J_INtB2J_12GenericShuntINtB7t_6FilterINtB2H_3MapINtB6i_7FlatMapBI_B3j_B50_EB7f_EB86_EIB3k_zB3J_EEB1x_8try_folduNCINvNvB1x_12try_for_each4callBX_B4Q_NcNtB4Q_5Break0E0B4Q_E0E0E0E0E0B4a_ECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [64 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.s, align 8        ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.not27 = icmp eq ptr %.promoted, %i.t
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx2.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7.8..sroa.410.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !6, !align !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val1.i.i.i = load ptr, ptr %2, align 8, !nonnull !6, !align !10 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val2.i.i.i = load ptr, ptr %i.aa, align 8     ; 4 uses
  %i.ab = getelementptr i8, ptr %.val1.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.av
  %i.ag = phi ptr [ %.promoted, %.lr.ph ], [ %i.ah, %bb.av ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  store ptr %i.ah, ptr %i.s, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !548
  %.val7.i.i = load ptr, ptr %i.u, align 8, !alias.scope !550, !noalias !548, !nonnull !6, !noundef !6 ; 6 uses
  %.val8.i.i = load i64, ptr %i.v, align 8, !alias.scope !550, !noalias !548, !noundef !6 ; 5 uses
  %i.ai = invoke noundef zeroext i1 @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path11is_absolute(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val7.i.i, i64 noundef %.val8.i.i)
          to label %bb.d unwind label %bb.c, !noalias !551

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i, %bb.e, %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #17
          to label %common.resume.i unwind label %bb.i, !noalias !552

bb.d:                                             ; preds = %bb.b
  br i1 %i.ai, label %bb.e, label %_RNCINvNtNtCskuiImRAV2ip_9elfshaker4repo10repository15clean_file_listNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB14_EE0Cs7BtpbLEd5q3_9elfshaker.exit.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !551
  store ptr %.val7.i.i, ptr %i.o, align 8, !noalias !551
  store i64 %.val8.i.i, ptr %i.ae, align 8, !noalias !551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !551
  store ptr %i.o, ptr %i.n, align 8, !noalias !551
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsaL1QbXo9JQH_3std4path4PathNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !551
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull @8, ptr noundef nonnull %i.n)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.c, !noalias !551

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !551
  %i.ak = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsfwHX9XeyMnn_4zstd(i8 noundef 20, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.f unwind label %bb.c, !noalias !551

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RNCINvNtNtCskuiImRAV2ip_9elfshaker4repo10repository15clean_file_listNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB14_EE0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i unwind label %bb.g, !noalias !552

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume.i unwind label %bb.h, !noalias !552

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !552
  unreachable

common.resume.i:                                  ; preds = %bb.ar, %.body.i.i, %bb.g, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.aj, %bb.c ], [ %i.al, %bb.g ], [ %i.ck, %bb.ar ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i

_RNCINvNtNtCskuiImRAV2ip_9elfshaker4repo10repository15clean_file_listNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB14_EE0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i: ; preds = %bb.f
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !553
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !552
  unreachable

_RNCINvNtNtCskuiImRAV2ip_9elfshaker4repo10repository15clean_file_listNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB14_EE0Cs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.d
  %.sroa.05.0.copyload.i = load i64, ptr %i.q, align 8, !alias.scope !554, !noalias !548 ; 2 uses
end_hunk_0
