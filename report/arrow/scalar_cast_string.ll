inline.NumInlined: 15753
inline.NumDeleted: 2714
begin_hunk_0_@_ZNSt17_Function_handlerIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEZNS4_8internal12_GLOBAL__N_130AddBinaryToFixedSizeBinaryCastINS0_10StringTypeEEEvPNSD_12CastFunctionEEUlS6_SB_E_E9_M_invokeERKSt9_Any_dataOS6_SB_:bb.a
  %.val = load ptr, ptr %2, align 8, !tbaa !661
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !551 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.b = getelementptr inbounds nuw i8, ptr %.val.val, i64 24
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !666, !noalias !667
  %i.d = getelementptr inbounds nuw i8, ptr %.val.val, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46, !noalias !667 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10__invoke_rIN5arrow6ResultINS0_10TypeHolderEEERZNS0_7compute8internal12_GLOBAL__N_130AddBinaryToFixedSizeBinaryCastINS0_10StringTypeEEEvPNS5_12CastFunctionEEUlPNS4_13KernelContextERKSt6vectorIS2_SaIS2_EEE_JSC_SH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55, !noalias !667
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !667
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3, !noalias !667
  br label %_ZSt10__invoke_rIN5arrow6ResultINS0_10TypeHolderEEERZNS0_7compute8internal12_GLOBAL__N_130AddBinaryToFixedSizeBinaryCastINS0_10StringTypeEEEvPNS5_12CastFunctionEEUlPNS4_13KernelContextERKSt6vectorIS2_SaIS2_EEE_JSC_SH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !667 ; 0 uses
  br label %_ZSt10__invoke_rIN5arrow6ResultINS0_10TypeHolderEEERZNS0_7compute8internal12_GLOBAL__N_130AddBinaryToFixedSizeBinaryCastINS0_10StringTypeEEEvPNS5_12CastFunctionEEUlPNS4_13KernelContextERKSt6vectorIS2_SaIS2_EEE_JSC_SH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit

_ZSt10__invoke_rIN5arrow6ResultINS0_10TypeHolderEEERZNS0_7compute8internal12_GLOBAL__N_130AddBinaryToFixedSizeBinaryCastINS0_10StringTypeEEEvPNS5_12CastFunctionEEUlPNS4_13KernelContextERKSt6vectorIS2_SaIS2_EEE_JSC_SH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !83, !alias.scope !663
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.c, ptr %i.k, align 8, !tbaa !666, !alias.scope !663
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.l, align 8, !tbaa !46, !alias.scope !663
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEZNS4_8internal12_GLOBAL__N_130AddBinaryToFixedSizeBinaryCastINS0_10StringTypeEEEvPNSD_12CastFunctionEEUlS6_SB_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5arrow7compute8internal12_GLOBAL__N_130AddBinaryToFixedSizeBinaryCastINS1_10StringTypeEEEvPNS3_12CastFunctionEEUlPNS2_13KernelContextERKSt6vectorINS1_10TypeHolderESaISC_EEE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN5arrow7compute8internal12_GLOBAL__N_130AddBinaryToFixedSizeBinaryCastINS1_10StringTypeEEEvPNS3_12CastFunctionEEUlPNS2_13KernelContextERKSt6vectorINS1_10TypeHolderESaISC_EEE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow7compute8internal12_GLOBAL__N_130AddBinaryToFixedSizeBinaryCastINS1_10StringTypeEEEvPNS3_12CastFunctionEEUlPNS2_13KernelContextERKSt6vectorINS1_10TypeHolderESaISC_EEE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN5arrow7compute8internal12_GLOBAL__N_130AddBinaryToFixedSizeBinaryCastINS1_10StringTypeEEEvPNS3_12CastFunctionEEUlPNS2_13KernelContextERKSt6vectorINS1_10TypeHolderESaISC_EEE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN5arrow7compute8internal12_GLOBAL__N_130AddBinaryToFixedSizeBinaryCastINS_10StringTypeEEEvPNS1_12CastFunctionEEUlPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaISA_EEE_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !71
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow7compute8internal12_GLOBAL__N_130AddBinaryToFixedSizeBinaryCastINS1_10StringTypeEEEvPNS3_12CastFunctionEEUlPNS2_13KernelContextERKSt6vectorINS1_10TypeHolderESaISC_EEE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow7compute8internal12_GLOBAL__N_130AddBinaryToFixedSizeBinaryCastINS1_10StringTypeEEEvPNS3_12CastFunctionEEUlPNS2_13KernelContextERKSt6vectorINS1_10TypeHolderESaISC_EEE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN5arrow7compute8internal12_GLOBAL__N_130AddBinaryToFixedSizeBinaryCastINS1_10StringTypeEEEvPNS3_12CastFunctionEEUlPNS2_13KernelContextERKSt6vectorINS1_10TypeHolderESaISC_EEE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

declare void @_ZN5arrow22FixedSizeBinaryBuilderC1ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEl(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) unnamed_addr #3

declare void @_ZN5arrow22FixedSizeBinaryBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow22FixedSizeBinaryBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow22FixedSizeBinaryBuilderE, i64 16), ptr %0, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow13BufferBuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !43
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !672
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !672
  br label %_ZN5arrow13BufferBuilderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow13BufferBuilderD2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZN5arrow13BufferBuilderD2Ev.exit

_ZN5arrow13BufferBuilderD2Ev.exit:                ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #28
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12bad_weak_ptrD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #15

declare void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i64 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !673, !range !97, !noundef !98
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !676  ; 4 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !677  ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %i.e, 64
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #28 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.j, 16
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !678  ; 2 uses
  %i.l = load i64, ptr %i.k, align 1
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.m = sub nsw i64 128, %i.g
  %i.n = icmp slt i64 %i.e, %i.m
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #28 ; 2 uses
  %.sroa.5.0.extract.shift2.i = lshr i32 %i.o, 16
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !678  ; 3 uses
  %i.q = load i64, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 1
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.s, i64 %i.q, i64 %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.0.i.sink.i = phi i64 [ %.0.i.i, %bb.i ], [ %i.l, %bb.f ]
  %i.t = phi ptr [ %i.p, %bb.i ], [ %i.k, %bb.f ]
  %i.u = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.c, align 8, !tbaa !678
  %i.w = add nsw i64 %i.e, -64
  store i64 %i.w, ptr %i.d, align 8, !tbaa !676
  %i.x = trunc nuw nsw i64 %i.u to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.e
  %.sroa.0.0.i = phi i32 [ %i.j, %bb.e ], [ 64, %bb.j ], [ %i.o, %bb.h ]
  %.sroa.5.0.i = phi i32 [ %.sroa.5.0.extract.shift.i, %bb.e ], [ %i.x, %bb.j ], [ %.sroa.5.0.extract.shift2.i, %bb.h ]
  %i.y = shl nuw i32 %.sroa.5.0.i, 16
  %i.z = and i32 %.sroa.0.0.i, 65535
  %i.aa = or disjoint i32 %i.y, %i.z
  br label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit

_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit: ; preds = %bb.b, %bb.k
  %.sroa.0.0.insert.insert.i = phi i32 [ %i.aa, %bb.k ], [ 0, %bb.b ] ; 3 uses
  %.sroa.0.0.extract.trunc = zext i32 %.sroa.0.0.insert.insert.i to i64
  %.sroa.4.0.extract.shift = lshr i32 %.sroa.0.0.insert.insert.i, 16
  %sext4 = shl i64 %.sroa.0.0.extract.trunc, 48
  %1 = ashr exact i64 %sext4, 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !679
  %i.ad = add nsw i64 %1, %i.ac
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !679
  %.pre = and i32 %.sroa.0.0.insert.insert.i, 65535
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !680
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !679 ; 2 uses
  %i.ai = sub nsw i64 %i.af, %i.ah
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ai, i64 32767) ; 2 uses
  %2 = trunc i64 %.sroa.speculated to i32
  %sext = shl i64 %.sroa.speculated, 48
  %i.aj = ashr exact i64 %sext, 48
  %i.ak = add nsw i64 %i.aj, %i.ah
  store i64 %i.ak, ptr %i.ag, align 8, !tbaa !679
  %3 = and i32 %2, 65535                          ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit
  %.sroa.0.0.insert.ext.pre-phi = phi i32 [ %3, %bb.l ], [ %.pre, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ]
  %.sroa.4.0 = phi i32 [ %3, %bb.l ], [ %.sroa.4.0.extract.shift, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ]
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0, 16
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext.pre-phi
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10StringTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_122BinaryToBinaryCastExecINS_19FixedSizeBinaryTypeES2_EENSt9enable_ifIXaaoosr19is_base_binary_typeIT0_EE5valuesr24is_binary_view_like_typeISB_EE5valuesr3std7is_sameIT_S9_EE5valueENS_6StatusEE4typeEPNS5_13KernelContextERKNS5_8ExecSpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS8_IS9_S2_EESF_SH_SK_SM_EUlvE_EESD_RKNS_9ArraySpanEOSC_OSB_ENKUllE_clEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !681, !nonnull !98, !align !683
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !617
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !684, !nonnull !98, !align !685
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !686, !nonnull !98, !align !683 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !618  ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 2 uses
  %i.l = sub nsw i32 %i.k, %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store ptr %i.m, ptr %i.i, align 8, !tbaa !618
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !684, !nonnull !98, !align !685
  store i32 %i.k, ptr %i.n, align 4, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !687, !nonnull !98, !align !683 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !691, !noalias !688, !nonnull !98, !align !683 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 144 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !638, !noalias !688
  %.not.i = icmp eq i32 %i.l, %i.s
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !688
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !693, !noalias !688, !nonnull !98, !align !683
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !694, !noalias !688 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44, !noalias !688
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !688
  call void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.v, i1 noundef zeroext false), !noalias !688, !inline_history !695
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !688
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !696, !noalias !688, !nonnull !98, !align !683
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !559, !noalias !700 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i, label %bb.c

._crit_edge.i.i.i.i:                              ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ad, ptr %4, align 8, !tbaa !701, !alias.scope !697, !noalias !688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ad, ptr noundef nonnull align 1 dereferenceable(9) @.str.11, i64 9, i1 false), !noalias !688
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 9, ptr %i.ae, align 8, !tbaa !702, !alias.scope !697, !noalias !688
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 25
  store i8 0, ptr %i.af, align 1, !tbaa !55, !alias.scope !697, !noalias !688
  br label %_ZNK5arrow10TypeHolder8ToStringB5cxx11Eb.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !44, !noalias !700
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !700
  invoke void %i.ai(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i1 noundef zeroext false)
          to label %_ZNK5arrow10TypeHolder8ToStringB5cxx11Eb.exit.i unwind label %bb.f, !noalias !688, !inline_history !703

_ZNK5arrow10TypeHolder8ToStringB5cxx11Eb.exit.i:  ; preds = %bb.c, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !704
  invoke void @_ZN5arrow8internal12JoinToStringIJRA21_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SA_RA20_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(21) @.str.8, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(5) @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(20) @.str.10)
          to label %.noexc4.i unwind label %bb.g, !noalias !688

.noexc4.i:                                        ; preds = %_ZNK5arrow10TypeHolder8ToStringB5cxx11Eb.exit.i
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc4.i
  %i.aj = load ptr, ptr %2, align 8, !tbaa !298, !noalias !704 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !55, !noalias !704
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.e:                                             ; preds = %.noexc4.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %2, align 8, !tbaa !298, !noalias !704 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i: ; preds = %bb.e
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !55, !noalias !704
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !704
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !704
  %i.au = load ptr, ptr %4, align 8, !tbaa !298, !noalias !688 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !55, !noalias !688
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !688
  %i.az = load ptr, ptr %3, align 8, !tbaa !298, !noalias !688 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !55, !noalias !688
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !688
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_122BinaryToBinaryCastExecINS_19FixedSizeBinaryTypeENS_10StringTypeEEENSt9enable_ifIXaaoosr19is_base_binary_typeIT0_EE5valuesr24is_binary_view_like_typeIS7_EE5valuesr3std7is_sameIT_S4_EE5valueENS_6StatusEE4typeEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESM_.exit

bb.f:                                             ; preds = %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i

bb.g:                                             ; preds = %_ZNK5arrow10TypeHolder8ToStringB5cxx11Eb.exit.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bf, %bb.g ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i ] ; 2 uses
  %i.bg = load ptr, ptr %4, align 8, !tbaa !298, !noalias !688 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i: ; preds = %.body.i
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !55, !noalias !688
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.be, %bb.f ], [ %eh.lpad-body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !688
  %i.bl = load ptr, ptr %3, align 8, !tbaa !298, !noalias !688 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !55, !noalias !688
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !688
  resume { ptr, i32 } %.pn.i

bb.h:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !632, !noalias !688
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !636, !noalias !688 ; 2 uses
  %i.bu = sdiv i64 %i.bt, 8
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !55, !noalias !688
  %i.bx = srem i64 %i.bt, 8
  %i.by = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !55, !noalias !688
  %i.ca = or i8 %i.bz, %i.bw
  store i8 %i.ca, ptr %i.bv, align 1, !tbaa !55, !noalias !688
  %i.cb = load i64, ptr %i.bs, align 8, !tbaa !636, !noalias !688
  %i.cc = add nsw i64 %i.cb, 1
  store i64 %i.cc, ptr %i.bs, align 8, !tbaa !636, !noalias !688
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 104 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !637, !noalias !688
  %i.cf = add nsw i64 %i.ce, 1
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !637, !noalias !688
  %i.cg = load i32, ptr %i.r, align 8, !tbaa !638, !noalias !688 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dxb, ptr %i.c, align 1, !tbaa !55
  %i.dxc = load ptr, ptr %0, align 8, !tbaa !44
  %i.dxd = getelementptr i8, ptr %i.dxc, i64 -24
  %i.dxe = load i64, ptr %i.dxd, align 8
  %i.dxf = getelementptr inbounds i8, ptr %0, i64 %i.dxe
  %i.dxg = getelementptr inbounds nuw i8, ptr %i.dxf, i64 16
  %i.dxh = load i64, ptr %i.dxg, align 8, !tbaa !3486
  %.not.i2509 = icmp eq i64 %i.dxh, 0
  br i1 %.not.i2509, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.dxi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 unwind label %.loopexit ; 0 uses

bb.aik:                                           ; preds = %bb.aii
  %i.dxj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.dxb)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513: ; preds = %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507: ; preds = %bb.agk, %bb.agh, %bb.lb, %bb.kn, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.abq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213, %bb.zy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179, %bb.zs, %bb.za, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944, %bb.agz, %bb.aga, %.thread2790, %.thread2779, %.thread2771, %bb.wc, %bb.tx, %bb.ss, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm2EEE.exit, %bb.qt, %bb.oo, %bb.ni, %bb.md, %bb.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980, %bb.ahm, %bb.aez, %bb.adp, %bb.adj, %bb.acw, %bb.wb, %bb.wj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860, %bb.ud, %bb.tw, %bb.rp, %bb.pz, %bb.ov, %bb.oj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546, %bb.no, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148, %bb.fh, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092, %bb.dv, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, %bb.aq, %bb.t
  %.14820 = phi i8 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 ], [ 0, %bb.abq ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683 ], [ 0, %bb.pz ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708 ], [ 0, %bb.oo ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746 ], [ 0, %bb.rp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149 ], [ 0, %bb.za ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 ], [ 0, %bb.acw ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 ], [ 0, %bb.adp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394 ], [ 0, %bb.zy ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431 ], [ 0, %bb.aez ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458 ], [ 0, %bb.lb ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483 ], [ 0, %bb.t ], [ 0, %bb.aq ], [ 0, %bb.ch ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ 0, %bb.dv ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177 ], [ 0, %bb.fh ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308 ], [ 0, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505 ], [ %.0806, %bb.ahm ], [ 0, %bb.md ], [ 0, %bb.no ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546 ], [ 0, %bb.oj ], [ 0, %bb.ni ], [ 0, %bb.ov ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741 ], [ 0, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm2EEE.exit ], [ 0, %bb.tw ], [ 0, %bb.ss ], [ 0, %bb.ud ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860 ], [ 0, %bb.tx ], [ 0, %bb.wj ], [ 0, %bb.wb ], [ 0, %.thread2771 ], [ 0, %.thread2779 ], [ 0, %.thread2790 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 ], [ 0, %bb.adj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 ], [ 0, %bb.aga ], [ 0, %bb.qt ], [ 0, %bb.wc ], [ %i.kz, %bb.agz ], [ 0, %bb.xs ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039 ], [ 0, %bb.zs ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243 ], [ 0, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ 0, %bb.kn ], [ 0, %bb.agh ], [ 0, %bb.agk ]
  %.3805 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 ], [ null, %bb.abq ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683 ], [ null, %bb.pz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708 ], [ null, %bb.oo ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746 ], [ null, %bb.rp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149 ], [ null, %bb.za ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 ], [ null, %bb.acw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 ], [ null, %bb.adp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394 ], [ null, %bb.zy ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431 ], [ null, %bb.aez ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458 ], [ null, %bb.lb ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483 ], [ null, %bb.t ], [ null, %bb.aq ], [ null, %bb.ch ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ null, %bb.dv ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177 ], [ null, %bb.fh ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308 ], [ null, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505 ], [ %.0731, %bb.ahm ], [ null, %bb.md ], [ null, %bb.no ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546 ], [ null, %bb.oj ], [ null, %bb.ni ], [ null, %bb.ov ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741 ], [ null, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm2EEE.exit ], [ null, %bb.tw ], [ null, %bb.ss ], [ null, %bb.ud ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860 ], [ null, %bb.tx ], [ null, %bb.wj ], [ null, %bb.wb ], [ null, %.thread2771 ], [ null, %.thread2779 ], [ null, %.thread2790 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 ], [ null, %bb.adj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 ], [ null, %bb.aga ], [ null, %bb.qt ], [ null, %bb.wc ], [ %.0802, %bb.agz ], [ null, %bb.xs ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039 ], [ null, %bb.zs ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243 ], [ null, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ null, %bb.kn ], [ null, %bb.agh ], [ null, %bb.agk ]
  %.7801 = phi i8 [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 ], [ %.0794, %bb.abq ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683 ], [ %.0794, %bb.pz ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708 ], [ %.3797, %bb.oo ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746 ], [ %.0794, %bb.rp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149 ], [ %.0794, %bb.za ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 ], [ %.0794, %bb.acw ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 ], [ %.0794, %bb.adp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394 ], [ %.0794, %bb.zy ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431 ], [ %.0794, %bb.aez ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458 ], [ %.1795, %bb.lb ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483 ], [ %.0794, %bb.t ], [ %.0794, %bb.aq ], [ %.0794, %bb.ch ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ %.0794, %bb.dv ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177 ], [ %.0794, %bb.fh ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308 ], [ %.0794, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505 ], [ %.0794, %bb.ahm ], [ %.0794, %bb.md ], [ %.0794, %bb.no ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546 ], [ %.3797, %bb.oj ], [ %.0794, %bb.ni ], [ %.3797, %bb.ov ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741 ], [ %.0794, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm2EEE.exit ], [ %.5799, %bb.tw ], [ %.0794, %bb.ss ], [ %.5799, %bb.ud ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860 ], [ %.5799, %bb.tx ], [ %.0794, %bb.wj ], [ %.0794, %bb.wb ], [ %.0794, %.thread2771 ], [ %.0794, %.thread2779 ], [ %.0794, %.thread2790 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 ], [ %.0794, %bb.adj ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 ], [ %.0794, %bb.aga ], [ %.0794, %bb.qt ], [ %.0794, %bb.wc ], [ %.0794, %bb.agz ], [ %.0794, %bb.xs ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039 ], [ %.0794, %bb.zs ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243 ], [ %.1795, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ %.1795, %bb.kn ], [ %.0794, %bb.agh ], [ %.0794, %bb.agk ]
  %i.dxk = getelementptr inbounds nuw i8, ptr %.0731, i64 1
  br label %bb.h, !llvm.loop !3527

bb.ail:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.aip, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !tbaa !55
  %i.dxl = load ptr, ptr %0, align 8, !tbaa !44
  %i.dxm = getelementptr i8, ptr %i.dxl, i64 -24
  %i.dxn = load i64, ptr %i.dxm, align 8
  %i.dxo = getelementptr inbounds i8, ptr %0, i64 %i.dxn
  %i.dxp = getelementptr inbounds nuw i8, ptr %i.dxo, i64 16
  %i.dxq = load i64, ptr %i.dxp, align 8, !tbaa !3486
  %.not.i2514 = icmp eq i64 %i.dxq, 0
  br i1 %.not.i2514, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dxr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518 unwind label %.loopexit.split-lp ; 0 uses

bb.aio:                                           ; preds = %bb.aim
  %i.dxs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518: ; preds = %bb.aio, %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aip

bb.aip:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518, %bb.ail
  %.not851 = icmp eq i8 %.0806, 0
  br i1 %.not851, label %_ZNSolsEj.exit2151, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0806, ptr %i.a, align 1, !tbaa !55
  %i.dxt = load ptr, ptr %0, align 8, !tbaa !44
  %i.dxu = getelementptr i8, ptr %i.dxt, i64 -24
  %i.dxv = load i64, ptr %i.dxu, align 8
  %i.dxw = getelementptr inbounds i8, ptr %0, i64 %i.dxv
  %i.dxx = getelementptr inbounds nuw i8, ptr %i.dxw, i64 16
  %i.dxy = load i64, ptr %i.dxx, align 8, !tbaa !3486
  %.not.i2519 = icmp eq i64 %i.dxy, 0
  br i1 %.not.i2519, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.dxz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523 unwind label %.loopexit.split-lp ; 0 uses

bb.ais:                                           ; preds = %bb.aiq
  %i.dya = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0806)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit2151

_ZNSolsEj.exit2151:                               ; preds = %bb.by, %bb.zp, %bb.n, %.invoke, %bb.abz, %bb.zj, %bb.yb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.dyb = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dyc = load i32, ptr %i.dyb, align 4, !tbaa !3521
  %i.dyd = and i32 %i.dyc, 8192
  %.not.i2524 = icmp eq i32 %i.dyd, 0
  br i1 %.not.i2524, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2151
  %i.dye = call noundef i32 @_ZSt19uncaught_exceptionsv() #34
  %i.dyf = icmp eq i32 %i.dye, 0
  br i1 %i.dyf, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525

bb.aiu:                                           ; preds = %bb.ait
  %i.dyg = load ptr, ptr %5, align 8, !tbaa !3524, !nonnull !98, !align !683 ; 2 uses
  %i.dyh = getelementptr inbounds nuw i8, ptr %i.dyg, i64 32
  %i.dyi = load i32, ptr %i.dyh, align 8, !tbaa !3172
  %i.dyj = icmp eq i32 %i.dyi, 0
  br i1 %i.dyj, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525

bb.aiv:                                           ; preds = %bb.aiu
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyg, i64 232
  %i.dyl = load ptr, ptr %i.dyk, align 8, !tbaa !3509 ; 2 uses
  %i.dym = load ptr, ptr %i.dyl, align 8, !tbaa !44
  %i.dyn = getelementptr inbounds nuw i8, ptr %i.dym, i64 48
  %i.dyo = load ptr, ptr %i.dyn, align 8
  %i.dyp = invoke noundef i32 %i.dyo(ptr noundef nonnull align 8 dereferenceable(64) %i.dyl)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525 unwind label %bb.aiw, !inline_history !3525 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyq = landingpad { ptr, i32 }
          catch ptr null
  %i.dyr = extractvalue { ptr, i32 } %i.dyq, 0
  call void @__clang_call_terminate(ptr %i.dyr) #31
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525: ; preds = %_ZNSolsEj.exit2151, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kv, %bb.lc, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.bz, %bb.ci, %bb.u, %bb.ar, %bb.gm, %bb.ib, %bb.jk, %bb.op, %bb.ow, %bb.qa, %bb.rq, %bb.sr, %bb.st, %bb.ue, %bb.acx, %bb.afa, %bb.agl, %bb.dw, %bb.dp, %bb.fi, %bb.fb, %bb.np, %bb.nh, %bb.wk, %bb.wd, %bb.xe, %bb.zz, %bb.zq, %bb.abc, %bb.adq, %bb.adi, %bb.j
  %.pn953.pn = phi { ptr, i32 } [ %i.lb, %bb.j ], [ %lpad.phi2986, %bb.lc ], [ %lpad.phi3036, %bb.u ], [ %lpad.phi3031, %bb.ar ], [ %lpad.phi2921, %bb.adq ], [ %i.dso, %bb.agl ], [ %lpad.phi3016, %bb.dw ], [ %.pn935.pn, %bb.gm ], [ %.pn931.pn, %bb.ib ], [ %.pn927.pn, %bb.jk ], [ %i.cnl, %bb.xr ], [ %i.tz, %bb.bz ], [ %lpad.phi3006, %bb.fi ], [ %i.bmg, %bb.op ], [ %lpad.phi2971, %bb.ow ], [ %lpad.phi2966, %bb.qa ], [ %i.dex, %bb.abp ], [ %lpad.phi2961, %bb.rq ], [ %i.byl, %bb.st ], [ %i.byj, %bb.sr ], [ %lpad.phi2956, %bb.ue ], [ %lpad.phi2976, %bb.np ], [ %lpad.phi2951, %bb.wk ], [ %i.dek, %bb.abk ], [ %i.ckh, %bb.xe ], [ %lpad.phi2936, %bb.zz ], [ %lpad.phi2926, %bb.acx ], [ %i.dbr, %bb.abc ], [ %.pn861.pn, %bb.afa ], [ %i.cvn, %bb.yz ], [ %.pn943, %bb.dp ], [ %.pn939, %bb.fb ], [ %i.bit, %bb.nh ], [ %i.chf, %bb.wd ], [ %i.bsy, %bb.qu ], [ %i.cxu, %bb.zq ], [ %lpad.phi2931, %bb.abt ], [ %i.dki, %bb.adi ], [ %lpad.phi3026, %bb.ci ], [ %lpad.phi2941, %bb.zd ], [ %.pn918, %bb.mc ], [ %i.dqf, %bb.afk ], [ %i.bsi, %bb.qs ], [ %lpad.phi2946, %bb.xv ], [ %i.cmy, %bb.xm ], [ %i.azm, %bb.kv ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn953.pn.pn = phi { ptr, i32 } [ %.pn953.pn, %bb.aix ], [ %i.la, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn953.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !3512   ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !3513  ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !3514  ; 2 uses
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i8 %i.c, 2
  %i.g = and i16 %i.a, 3
  %i.h = icmp eq i16 %i.g, 0
  %or.cond.i = and i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %i.m = add nuw nsw i64 %i.l, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !55
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.p, %.thread.i.i ], [ 29, %bb.e ]
  %i.q = icmp uge i8 %.sroa.03.0.i.i, %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4               ; 2 uses
  %i.t = icmp ult i8 %i.s, 7
  %or.cond = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !3528  ; 2 uses
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !3528  ; 2 uses
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !3528 ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 7
  br i1 %i.ac, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ad = load ptr, ptr %0, align 8, !tbaa !44
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !3172
  %i.aj = or i32 %i.ai, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ag, i32 noundef %i.aj)
  br label %bb.k

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ak = phi i8 [ %i.v, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread ], [ %i.s, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !3514 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.am, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.an = and i16 %i.a, 3
  %i.ao = icmp eq i16 %i.an, 0
  %or.cond.i14 = and i1 %i.ao, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.ap = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.ap, 0
  %i.aq = srem i16 %i.a, 400
  %i.ar = icmp eq i16 %i.aq, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ar
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.as = zext nneg i8 %i.c to i64
  %i.at = add nuw nsw i64 %i.as, 4294967295
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !55
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.aw, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not = icmp ult i8 %.sroa.03.0.i.i17, %i.am
  br i1 %.not, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.ax = sext i16 %i.a to i32
  %i.ay = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.ay to i32
  %i.az = add nsw i32 %.neg.i.i, %i.ax            ; 4 uses
  %i.ba = zext nneg i8 %i.c to i32
  %i.bb = zext i8 %i.am to i32
  %i.bc = add nsw i32 %i.az, -399
  %i.bd = icmp slt i32 %i.az, 0
  %i.be = select i1 %i.bd, i32 %i.bc, i32 %i.az
  %i.bf = sdiv i32 %i.be, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bf, -400
  %i.bg = add nsw i32 %.neg15.i.i, %i.az          ; 3 uses
  %i.bh = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bh, i32 -3, i32 9
  %i.bi = add nsw i32 %.v.i.i, %i.ba
  %i.bj = mul nsw i32 %i.bi, 153
  %i.bk = add nsw i32 %i.bj, 2
  %i.bl = udiv i32 %i.bk, 5
  %i.bm = mul nsw i32 %i.bg, 365
  %i.bn = lshr i32 %i.bg, 2
  %i.bo = udiv i32 %i.bg, 100
  %i.bp = mul nsw i32 %i.bf, 146097
  %i.bq = add nuw nsw i32 %i.bb, -719469
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bp
  %i.bt = add nsw i32 %i.bs, %i.bn
  %i.bu = add nsw i32 %i.bt, %i.bm
  %i.bv = sub nsw i32 %i.bu, %i.bo                ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, -5
  %i.bx = add nsw i32 %i.bv, 4
  %.in.i.i = select i1 %i.bw, i32 %i.bx, i32 %i.bv
  %i.by = urem i32 %.in.i.i, 7                    ; 2 uses
  %i.bz = trunc nuw nsw i32 %i.by to i8
  %i.ca = icmp ult i8 %i.ak, 7
  %i.cb = icmp ne i8 %i.ak, %i.bz
  %or.cond32 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond32, label %bb.j, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !44
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !3172
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.k

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %2 = phi i8 [ %i.ab, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread ], [ %i.ak, %.thread ], [ %i.ak, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20 ], [ %i.y, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37 ]
  %3 = zext i8 %2 to i32
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a: ; preds = %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread
  %.sroa.023.0 = phi i32 [ %3, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ], [ %i.by, %bb.i ]
  %.fr.i = freeze i32 %.sroa.023.0
  %4 = srem i32 %.fr.i, 7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %4, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a ]
  ret i32 %.1
}

declare { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12), ptr, i8, ptr noundef nonnull align 8 dereferenceable(216), i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3521
  %i.c = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #34
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !3524, !nonnull !98, !align !683 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3172
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3509 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit unwind label %bb.e, !inline_history !3525 ; 0 uses

_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #28
  ret void

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #31
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !3500, !range !97, !noundef !98
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !55
  %i.i = load ptr, ptr %0, align 8, !tbaa !44
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !3486
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !637    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !55
  %i.s = load ptr, ptr %0, align 8, !tbaa !44
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !3486
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !3499
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !55
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !3486
  %.not.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !637 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !55
  %i.an = load ptr, ptr %0, align 8, !tbaa !44
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !3486
  %.not.i21 = icmp eq i64 %i.as, 0
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre29 = load i64, ptr %i.ak, align 8, !tbaa !3498
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %i.av = phi i64 [ %.pre29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ]
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.av) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 58, ptr %i.a, align 1, !tbaa !55
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !44
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !3486
  %.not.i24 = icmp eq i64 %i.bc, 0
  br i1 %.not.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

bb.q:                                             ; preds = %bb.o
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26: ; preds = %bb.p, %bb.q
  %.0.i25 = phi ptr [ %i.bd, %bb.p ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.0.i25) ; 0 uses
  ret ptr %0
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dxe, ptr %i.c, align 1, !tbaa !55
  %i.dxf = load ptr, ptr %0, align 8, !tbaa !44
  %i.dxg = getelementptr i8, ptr %i.dxf, i64 -24
  %i.dxh = load i64, ptr %i.dxg, align 8
  %i.dxi = getelementptr inbounds i8, ptr %0, i64 %i.dxh
  %i.dxj = getelementptr inbounds nuw i8, ptr %i.dxi, i64 16
  %i.dxk = load i64, ptr %i.dxj, align 8, !tbaa !3486
  %.not.i2511 = icmp eq i64 %i.dxk, 0
  br i1 %.not.i2511, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.dxl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 unwind label %.loopexit ; 0 uses

bb.aik:                                           ; preds = %bb.aii
  %i.dxm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.dxe)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515: ; preds = %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509: ; preds = %bb.agk, %bb.agh, %bb.lb, %bb.kn, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.abq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2245, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2215, %bb.zy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181, %bb.zs, %bb.za, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2041, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1971, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1946, %bb.agz, %bb.aga, %.thread2792, %.thread2781, %.thread2773, %bb.wc, %bb.tx, %bb.ss, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit, %bb.qt, %bb.oo, %bb.ni, %bb.md, %bb.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2500, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2485, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2460, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2433, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2396, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2366, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2351, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2324, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2286, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2201, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2186, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2151, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2027, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2012, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1932, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1917, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1897, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1882, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1860, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1840, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1808, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1793, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1748, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1710, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1685, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1649, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1629, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1589, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1574, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1544, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1330, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1263, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1197, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1147, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1132, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1091, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1076, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1037, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1022, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit987, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982, %bb.ahm, %bb.aez, %bb.adp, %bb.adj, %bb.acw, %bb.wb, %bb.wj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1862, %bb.ud, %bb.tw, %bb.rp, %bb.pz, %bb.ov, %bb.oj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1548, %bb.no, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1507, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1310, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1243, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1150, %bb.fh, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1179, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1094, %bb.dv, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, %bb.aq, %bb.t
  %.14821 = phi i8 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2500 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit987 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1022 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1076 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1037 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1132 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1091 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1197 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1147 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1263 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1330 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449 ], [ 0, %bb.abq ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1529 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1574 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1544 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1589 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1649 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1685 ], [ 0, %bb.pz ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1710 ], [ 0, %bb.oo ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1748 ], [ 0, %bb.rp ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1793 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1808 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1860 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1882 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1917 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1897 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2012 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1932 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2151 ], [ 0, %bb.za ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2186 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2027 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2286 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2201 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2324 ], [ 0, %bb.acw ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2351 ], [ 0, %bb.adp ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2396 ], [ 0, %bb.zy ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2433 ], [ 0, %bb.aez ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2460 ], [ 0, %bb.lb ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2485 ], [ 0, %bb.t ], [ 0, %bb.aq ], [ 0, %bb.ch ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ 0, %bb.dv ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1094 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1179 ], [ 0, %bb.fh ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1150 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1243 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1310 ], [ 0, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1507 ], [ %.0807, %bb.ahm ], [ 0, %bb.md ], [ 0, %bb.no ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1548 ], [ 0, %bb.oj ], [ 0, %bb.ni ], [ 0, %bb.ov ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1629 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ 0, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ 0, %bb.tw ], [ 0, %bb.ss ], [ 0, %bb.ud ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1840 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1862 ], [ 0, %bb.tx ], [ 0, %bb.wj ], [ 0, %bb.wb ], [ 0, %.thread2773 ], [ 0, %.thread2781 ], [ 0, %.thread2792 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301 ], [ 0, %bb.adj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2366 ], [ 0, %bb.aga ], [ 0, %bb.qt ], [ 0, %bb.wc ], [ %i.la, %bb.agz ], [ 0, %bb.xs ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1946 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1971 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2041 ], [ 0, %bb.zs ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2215 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2245 ], [ 0, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ 0, %bb.kn ], [ 0, %bb.agh ], [ 0, %bb.agk ]
  %.3806 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2500 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit987 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1022 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1076 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1037 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1132 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1091 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1197 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1147 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1263 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1330 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449 ], [ null, %bb.abq ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1529 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1574 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1544 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1589 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1649 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1685 ], [ null, %bb.pz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1710 ], [ null, %bb.oo ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1748 ], [ null, %bb.rp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1793 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1808 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1860 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1882 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1917 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1897 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2012 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1932 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2151 ], [ null, %bb.za ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2186 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2027 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2286 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2201 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2324 ], [ null, %bb.acw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2351 ], [ null, %bb.adp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2396 ], [ null, %bb.zy ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2433 ], [ null, %bb.aez ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2460 ], [ null, %bb.lb ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2485 ], [ null, %bb.t ], [ null, %bb.aq ], [ null, %bb.ch ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ null, %bb.dv ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1094 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1179 ], [ null, %bb.fh ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1150 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1243 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1310 ], [ null, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1507 ], [ %.0731, %bb.ahm ], [ null, %bb.md ], [ null, %bb.no ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1548 ], [ null, %bb.oj ], [ null, %bb.ni ], [ null, %bb.ov ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1629 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ null, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ null, %bb.tw ], [ null, %bb.ss ], [ null, %bb.ud ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1840 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1862 ], [ null, %bb.tx ], [ null, %bb.wj ], [ null, %bb.wb ], [ null, %.thread2773 ], [ null, %.thread2781 ], [ null, %.thread2792 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301 ], [ null, %bb.adj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2366 ], [ null, %bb.aga ], [ null, %bb.qt ], [ null, %bb.wc ], [ %.0803, %bb.agz ], [ null, %bb.xs ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1946 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1971 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2041 ], [ null, %bb.zs ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2215 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2245 ], [ null, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ null, %bb.kn ], [ null, %bb.agh ], [ null, %bb.agk ]
  %.7802 = phi i8 [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2500 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit987 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1022 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1076 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1037 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1132 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1091 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1197 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1147 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1263 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1330 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449 ], [ %.0795, %bb.abq ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1529 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1574 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1544 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1589 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1649 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1685 ], [ %.0795, %bb.pz ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1710 ], [ %.3798, %bb.oo ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1748 ], [ %.0795, %bb.rp ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1793 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1808 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1860 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1882 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1917 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1897 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2012 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1932 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2151 ], [ %.0795, %bb.za ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2186 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2027 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2286 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2201 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2324 ], [ %.0795, %bb.acw ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2351 ], [ %.0795, %bb.adp ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2396 ], [ %.0795, %bb.zy ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2433 ], [ %.0795, %bb.aez ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2460 ], [ %.1796, %bb.lb ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2485 ], [ %.0795, %bb.t ], [ %.0795, %bb.aq ], [ %.0795, %bb.ch ], [ %.0795, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ %.0795, %bb.dv ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1094 ], [ %.0795, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1179 ], [ %.0795, %bb.fh ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1150 ], [ %.0795, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1243 ], [ %.0795, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1310 ], [ %.0795, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414 ], [ %.0795, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1507 ], [ %.0795, %bb.ahm ], [ %.0795, %bb.md ], [ %.0795, %bb.no ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1548 ], [ %.3798, %bb.oj ], [ %.0795, %bb.ni ], [ %.3798, %bb.ov ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1629 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ %.0795, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ %.5800, %bb.tw ], [ %.0795, %bb.ss ], [ %.5800, %bb.ud ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1840 ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1862 ], [ %.5800, %bb.tx ], [ %.0795, %bb.wj ], [ %.0795, %bb.wb ], [ %.0795, %.thread2773 ], [ %.0795, %.thread2781 ], [ %.0795, %.thread2792 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301 ], [ %.0795, %bb.adj ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2366 ], [ %.0795, %bb.aga ], [ %.0795, %bb.qt ], [ %.0795, %bb.wc ], [ %.0795, %bb.agz ], [ %.0795, %bb.xs ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1946 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1971 ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2041 ], [ %.0795, %bb.zs ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2215 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2245 ], [ %.1796, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ %.1796, %bb.kn ], [ %.0795, %bb.agh ], [ %.0795, %bb.agk ]
  %i.dxn = getelementptr inbounds nuw i8, ptr %.0731, i64 1
  br label %bb.h, !llvm.loop !3613

bb.ail:                                           ; preds = %bb.h
  br i1 %.not952, label %bb.aip, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !tbaa !55
  %i.dxo = load ptr, ptr %0, align 8, !tbaa !44
  %i.dxp = getelementptr i8, ptr %i.dxo, i64 -24
  %i.dxq = load i64, ptr %i.dxp, align 8
  %i.dxr = getelementptr inbounds i8, ptr %0, i64 %i.dxq
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dxr, i64 16
  %i.dxt = load i64, ptr %i.dxs, align 8, !tbaa !3486
  %.not.i2516 = icmp eq i64 %i.dxt, 0
  br i1 %.not.i2516, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dxu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520 unwind label %.loopexit.split-lp ; 0 uses

bb.aio:                                           ; preds = %bb.aim
  %i.dxv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520: ; preds = %bb.aio, %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aip

bb.aip:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520, %bb.ail
  %.not852 = icmp eq i8 %.0807, 0
  br i1 %.not852, label %_ZNSolsEj.exit2153, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0807, ptr %i.a, align 1, !tbaa !55
  %i.dxw = load ptr, ptr %0, align 8, !tbaa !44
  %i.dxx = getelementptr i8, ptr %i.dxw, i64 -24
  %i.dxy = load i64, ptr %i.dxx, align 8
  %i.dxz = getelementptr inbounds i8, ptr %0, i64 %i.dxy
  %i.dya = getelementptr inbounds nuw i8, ptr %i.dxz, i64 16
  %i.dyb = load i64, ptr %i.dya, align 8, !tbaa !3486
  %.not.i2521 = icmp eq i64 %i.dyb, 0
  br i1 %.not.i2521, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.dyc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2525 unwind label %.loopexit.split-lp ; 0 uses

bb.ais:                                           ; preds = %bb.aiq
  %i.dyd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0807)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2525 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2525: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit2153

_ZNSolsEj.exit2153:                               ; preds = %bb.by, %bb.zp, %bb.n, %.invoke, %bb.abz, %bb.zj, %bb.yb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2525, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.dye = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dyf = load i32, ptr %i.dye, align 4, !tbaa !3521
  %i.dyg = and i32 %i.dyf, 8192
  %.not.i2526 = icmp eq i32 %i.dyg, 0
  br i1 %.not.i2526, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2527, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2153
  %i.dyh = call noundef i32 @_ZSt19uncaught_exceptionsv() #34
  %i.dyi = icmp eq i32 %i.dyh, 0
  br i1 %i.dyi, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2527

bb.aiu:                                           ; preds = %bb.ait
  %i.dyj = load ptr, ptr %5, align 8, !tbaa !3524, !nonnull !98, !align !683 ; 2 uses
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyj, i64 32
  %i.dyl = load i32, ptr %i.dyk, align 8, !tbaa !3172
  %i.dym = icmp eq i32 %i.dyl, 0
  br i1 %i.dym, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2527

bb.aiv:                                           ; preds = %bb.aiu
  %i.dyn = getelementptr inbounds nuw i8, ptr %i.dyj, i64 232
  %i.dyo = load ptr, ptr %i.dyn, align 8, !tbaa !3509 ; 2 uses
  %i.dyp = load ptr, ptr %i.dyo, align 8, !tbaa !44
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dyp, i64 48
  %i.dyr = load ptr, ptr %i.dyq, align 8
  %i.dys = invoke noundef i32 %i.dyr(ptr noundef nonnull align 8 dereferenceable(64) %i.dyo)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2527 unwind label %bb.aiw, !inline_history !3525 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyt = landingpad { ptr, i32 }
          catch ptr null
  %i.dyu = extractvalue { ptr, i32 } %i.dyt, 0
  call void @__clang_call_terminate(ptr %i.dyu) #31
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2527: ; preds = %_ZNSolsEj.exit2153, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kv, %bb.lc, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.bz, %bb.ci, %bb.j, %bb.adi, %bb.adq, %bb.abc, %bb.zq, %bb.zz, %bb.xe, %bb.wd, %bb.wk, %bb.nh, %bb.np, %bb.fb, %bb.fi, %bb.dp, %bb.dw, %bb.agl, %bb.afa, %bb.acx, %bb.ue, %bb.st, %bb.sr, %bb.rq, %bb.qa, %bb.ow, %bb.op, %bb.jk, %bb.ib, %bb.gm, %bb.ar, %bb.u
  %.pn954.pn.pn = phi { ptr, i32 } [ %i.cno, %bb.xr ], [ %i.lc, %bb.j ], [ %lpad.phi2988, %bb.lc ], [ %lpad.phi3038, %bb.u ], [ %lpad.phi3033, %bb.ar ], [ %lpad.phi2923, %bb.adq ], [ %i.dsr, %bb.agl ], [ %lpad.phi3018, %bb.dw ], [ %.pn936.pn, %bb.gm ], [ %.pn932.pn, %bb.ib ], [ %.pn928.pn, %bb.jk ], [ %i.cnb, %bb.xm ], [ %i.ua, %bb.bz ], [ %lpad.phi3008, %bb.fi ], [ %i.bmi, %bb.op ], [ %lpad.phi2973, %bb.ow ], [ %lpad.phi2968, %bb.qa ], [ %i.den, %bb.abk ], [ %lpad.phi2963, %bb.rq ], [ %i.byo, %bb.st ], [ %i.bym, %bb.sr ], [ %lpad.phi2958, %bb.ue ], [ %lpad.phi2978, %bb.np ], [ %lpad.phi2953, %bb.wk ], [ %i.dfa, %bb.abp ], [ %i.ckk, %bb.xe ], [ %lpad.phi2938, %bb.zz ], [ %lpad.phi2928, %bb.acx ], [ %i.dbu, %bb.abc ], [ %.pn862.pn, %bb.afa ], [ %lpad.phi2933, %bb.abt ], [ %.pn944, %bb.dp ], [ %.pn940, %bb.fb ], [ %i.biv, %bb.nh ], [ %i.chi, %bb.wd ], [ %i.btb, %bb.qu ], [ %i.cxx, %bb.zq ], [ %i.cvq, %bb.yz ], [ %i.dkl, %bb.adi ], [ %lpad.phi3028, %bb.ci ], [ %i.dqi, %bb.afk ], [ %.pn919, %bb.mc ], [ %lpad.phi2943, %bb.zd ], [ %i.bsk, %bb.qs ], [ %lpad.phi2948, %bb.xv ], [ %i.azn, %bb.kv ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn954.pn.pn.pn = phi { ptr, i32 } [ %.pn954.pn.pn, %bb.aix ], [ %i.lb, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn954.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !3512   ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !3513  ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !3514  ; 2 uses
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i8 %i.c, 2
  %i.g = and i16 %i.a, 3
  %i.h = icmp eq i16 %i.g, 0
  %or.cond.i = and i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %i.m = add nuw nsw i64 %i.l, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !55
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.p, %.thread.i.i ], [ 29, %bb.e ]
  %i.q = icmp uge i8 %.sroa.03.0.i.i, %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4               ; 2 uses
  %i.t = icmp ult i8 %i.s, 7
  %or.cond = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !3528  ; 2 uses
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !3528  ; 2 uses
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !3528 ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 7
  br i1 %i.ac, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ad = load ptr, ptr %0, align 8, !tbaa !44
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !3172
  %i.aj = or i32 %i.ai, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ag, i32 noundef %i.aj)
  br label %bb.k

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ak = phi i8 [ %i.v, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread ], [ %i.s, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !3514 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.am, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.an = and i16 %i.a, 3
  %i.ao = icmp eq i16 %i.an, 0
  %or.cond.i14 = and i1 %i.ao, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.ap = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.ap, 0
  %i.aq = srem i16 %i.a, 400
  %i.ar = icmp eq i16 %i.aq, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ar
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.as = zext nneg i8 %i.c to i64
  %i.at = add nuw nsw i64 %i.as, 4294967295
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !55
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.aw, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not = icmp ult i8 %.sroa.03.0.i.i17, %i.am
  br i1 %.not, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.ax = sext i16 %i.a to i32
  %i.ay = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.ay to i32
  %i.az = add nsw i32 %.neg.i.i, %i.ax            ; 4 uses
  %i.ba = zext nneg i8 %i.c to i32
  %i.bb = zext i8 %i.am to i32
  %i.bc = add nsw i32 %i.az, -399
  %i.bd = icmp slt i32 %i.az, 0
  %i.be = select i1 %i.bd, i32 %i.bc, i32 %i.az
  %i.bf = sdiv i32 %i.be, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bf, -400
  %i.bg = add nsw i32 %.neg15.i.i, %i.az          ; 3 uses
  %i.bh = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bh, i32 -3, i32 9
  %i.bi = add nsw i32 %.v.i.i, %i.ba
  %i.bj = mul nsw i32 %i.bi, 153
  %i.bk = add nsw i32 %i.bj, 2
  %i.bl = udiv i32 %i.bk, 5
  %i.bm = mul nsw i32 %i.bg, 365
  %i.bn = lshr i32 %i.bg, 2
  %i.bo = udiv i32 %i.bg, 100
  %i.bp = mul nsw i32 %i.bf, 146097
  %i.bq = add nuw nsw i32 %i.bb, -719469
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bp
  %i.bt = add nsw i32 %i.bs, %i.bn
  %i.bu = add nsw i32 %i.bt, %i.bm
  %i.bv = sub nsw i32 %i.bu, %i.bo                ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, -5
  %i.bx = add nsw i32 %i.bv, 4
  %.in.i.i = select i1 %i.bw, i32 %i.bx, i32 %i.bv
  %i.by = urem i32 %.in.i.i, 7                    ; 2 uses
  %i.bz = trunc nuw nsw i32 %i.by to i8
  %i.ca = icmp ult i8 %i.ak, 7
  %i.cb = icmp ne i8 %i.ak, %i.bz
  %or.cond32 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond32, label %bb.j, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !44
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !3172
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.k

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %2 = phi i8 [ %i.ab, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread ], [ %i.ak, %.thread ], [ %i.ak, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20 ], [ %i.y, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37 ]
  %3 = zext i8 %2 to i32
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a: ; preds = %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread
  %.sroa.023.0 = phi i32 [ %3, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ], [ %i.by, %bb.i ]
  %.fr.i = freeze i32 %.sroa.023.0
  %4 = srem i32 %.fr.i, 7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %4, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !3612, !range !97, !noundef !98
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !55
  %i.i = load ptr, ptr %0, align 8, !tbaa !44
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !3486
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !637    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !55
  %i.s = load ptr, ptr %0, align 8, !tbaa !44
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !3486
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !3499
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !55
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !3486
  %.not.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !637 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !55
  %i.an = load ptr, ptr %0, align 8, !tbaa !44
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !3486
  %.not.i21 = icmp eq i64 %i.as, 0
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre29 = load i64, ptr %i.ak, align 8, !tbaa !3498
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %i.av = phi i64 [ %.pre29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ]
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.av) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 58, ptr %i.a, align 1, !tbaa !55
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !44
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !3486
  %.not.i24 = icmp eq i64 %i.bc, 0
  br i1 %.not.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

bb.q:                                             ; preds = %bb.o
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26: ; preds = %bb.p, %bb.q
  %.0.i25 = phi ptr [ %i.bd, %bb.p ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.0.i25) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %3 = alloca %"class.std::locale", align 8       ; 7 uses
  %4 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %5 = alloca %"class.std::locale", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.b = load ptr, ptr %1, align 8, !tbaa !44
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(264) %i.e)
  %i.f = load ptr, ptr %1, align 8, !tbaa !44     ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 225 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !3471, !range !97, !noundef !98
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3477 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #32
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !3478
  %.not.i1.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.n)
          to label %.noexc18 unwind label %bb.s

end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dxe, ptr %i.c, align 1, !tbaa !55
  %i.dxf = load ptr, ptr %0, align 8, !tbaa !44
  %i.dxg = getelementptr i8, ptr %i.dxf, i64 -24
  %i.dxh = load i64, ptr %i.dxg, align 8
  %i.dxi = getelementptr inbounds i8, ptr %0, i64 %i.dxh
  %i.dxj = getelementptr inbounds nuw i8, ptr %i.dxi, i64 16
  %i.dxk = load i64, ptr %i.dxj, align 8, !tbaa !3486
  %.not.i2511 = icmp eq i64 %i.dxk, 0
  br i1 %.not.i2511, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.dxl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 unwind label %.loopexit ; 0 uses

bb.aik:                                           ; preds = %bb.aii
  %i.dxm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.dxe)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515: ; preds = %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509: ; preds = %bb.agk, %bb.agh, %bb.lb, %bb.kn, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.abq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2245, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2215, %bb.zy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181, %bb.zs, %bb.za, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2041, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1971, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1946, %bb.agz, %bb.aga, %.thread2792, %.thread2781, %.thread2773, %bb.wc, %bb.tx, %bb.ss, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm4EEE.exit, %bb.qt, %bb.oo, %bb.ni, %bb.md, %bb.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2500, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2485, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2460, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2433, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2396, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2366, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2351, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2324, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2286, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2201, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2186, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2151, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2027, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2012, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1932, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1917, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1897, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1882, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1860, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1840, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1808, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1793, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1748, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1710, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1685, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1649, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1629, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1589, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1574, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1544, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1330, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1263, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1197, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1147, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1132, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1091, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1076, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1037, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1022, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit987, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982, %bb.ahm, %bb.aez, %bb.adp, %bb.adj, %bb.acw, %bb.wb, %bb.wj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1862, %bb.ud, %bb.tw, %bb.rp, %bb.pz, %bb.ov, %bb.oj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1548, %bb.no, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1507, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1310, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1243, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1150, %bb.fh, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1179, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1094, %bb.dv, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, %bb.aq, %bb.t
  %.14821 = phi i8 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2500 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit987 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1022 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1076 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1037 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1132 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1091 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1197 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1147 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1263 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1330 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449 ], [ 0, %bb.abq ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1529 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1574 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1544 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1589 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1649 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1685 ], [ 0, %bb.pz ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1710 ], [ 0, %bb.oo ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1748 ], [ 0, %bb.rp ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1793 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1808 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1860 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1882 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1917 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1897 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2012 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1932 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2151 ], [ 0, %bb.za ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2186 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2027 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2286 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2201 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2324 ], [ 0, %bb.acw ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2351 ], [ 0, %bb.adp ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2396 ], [ 0, %bb.zy ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2433 ], [ 0, %bb.aez ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2460 ], [ 0, %bb.lb ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2485 ], [ 0, %bb.t ], [ 0, %bb.aq ], [ 0, %bb.ch ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ 0, %bb.dv ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1094 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1179 ], [ 0, %bb.fh ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1150 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1243 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1310 ], [ 0, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1507 ], [ %.0807, %bb.ahm ], [ 0, %bb.md ], [ 0, %bb.no ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1548 ], [ 0, %bb.oj ], [ 0, %bb.ni ], [ 0, %bb.ov ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1629 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ 0, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm4EEE.exit ], [ 0, %bb.tw ], [ 0, %bb.ss ], [ 0, %bb.ud ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1840 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1862 ], [ 0, %bb.tx ], [ 0, %bb.wj ], [ 0, %bb.wb ], [ 0, %.thread2773 ], [ 0, %.thread2781 ], [ 0, %.thread2792 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301 ], [ 0, %bb.adj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2366 ], [ 0, %bb.aga ], [ 0, %bb.qt ], [ 0, %bb.wc ], [ %i.la, %bb.agz ], [ 0, %bb.xs ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1946 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1971 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2041 ], [ 0, %bb.zs ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2215 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2245 ], [ 0, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ 0, %bb.kn ], [ 0, %bb.agh ], [ 0, %bb.agk ]
  %.3806 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2500 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit987 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1022 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1076 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1037 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1132 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1091 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1197 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1147 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1263 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1330 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449 ], [ null, %bb.abq ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1529 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1574 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1544 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1589 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1649 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1685 ], [ null, %bb.pz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1710 ], [ null, %bb.oo ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1748 ], [ null, %bb.rp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1793 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1808 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1860 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1882 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1917 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1897 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2012 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1932 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2151 ], [ null, %bb.za ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2186 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2027 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2286 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2201 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2324 ], [ null, %bb.acw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2351 ], [ null, %bb.adp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2396 ], [ null, %bb.zy ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2433 ], [ null, %bb.aez ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2460 ], [ null, %bb.lb ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2485 ], [ null, %bb.t ], [ null, %bb.aq ], [ null, %bb.ch ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ null, %bb.dv ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1094 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1179 ], [ null, %bb.fh ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1150 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1243 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1310 ], [ null, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1507 ], [ %.0731, %bb.ahm ], [ null, %bb.md ], [ null, %bb.no ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1548 ], [ null, %bb.oj ], [ null, %bb.ni ], [ null, %bb.ov ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1629 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ null, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm4EEE.exit ], [ null, %bb.tw ], [ null, %bb.ss ], [ null, %bb.ud ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1840 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1862 ], [ null, %bb.tx ], [ null, %bb.wj ], [ null, %bb.wb ], [ null, %.thread2773 ], [ null, %.thread2781 ], [ null, %.thread2792 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301 ], [ null, %bb.adj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2366 ], [ null, %bb.aga ], [ null, %bb.qt ], [ null, %bb.wc ], [ %.0803, %bb.agz ], [ null, %bb.xs ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1946 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1971 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2041 ], [ null, %bb.zs ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2215 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2245 ], [ null, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ null, %bb.kn ], [ null, %bb.agh ], [ null, %bb.agk ]
  %.7802 = phi i8 [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2500 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit987 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1022 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1076 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1037 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1132 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1091 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1197 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1147 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1263 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1330 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449 ], [ %.0795, %bb.abq ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1529 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1574 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1544 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1589 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1649 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1685 ], [ %.0795, %bb.pz ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1710 ], [ %.3798, %bb.oo ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1748 ], [ %.0795, %bb.rp ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1793 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1808 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1860 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1882 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1917 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1897 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2012 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1932 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2151 ], [ %.0795, %bb.za ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2186 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2027 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2286 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2201 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2324 ], [ %.0795, %bb.acw ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2351 ], [ %.0795, %bb.adp ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2396 ], [ %.0795, %bb.zy ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2433 ], [ %.0795, %bb.aez ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2460 ], [ %.1796, %bb.lb ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2485 ], [ %.0795, %bb.t ], [ %.0795, %bb.aq ], [ %.0795, %bb.ch ], [ %.0795, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ %.0795, %bb.dv ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1094 ], [ %.0795, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1179 ], [ %.0795, %bb.fh ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1150 ], [ %.0795, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1243 ], [ %.0795, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1310 ], [ %.0795, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414 ], [ %.0795, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1507 ], [ %.0795, %bb.ahm ], [ %.0795, %bb.md ], [ %.0795, %bb.no ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1548 ], [ %.3798, %bb.oj ], [ %.0795, %bb.ni ], [ %.3798, %bb.ov ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1629 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ %.0795, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm4EEE.exit ], [ %.5800, %bb.tw ], [ %.0795, %bb.ss ], [ %.5800, %bb.ud ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1840 ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1862 ], [ %.5800, %bb.tx ], [ %.0795, %bb.wj ], [ %.0795, %bb.wb ], [ %.0795, %.thread2773 ], [ %.0795, %.thread2781 ], [ %.0795, %.thread2792 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301 ], [ %.0795, %bb.adj ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2366 ], [ %.0795, %bb.aga ], [ %.0795, %bb.qt ], [ %.0795, %bb.wc ], [ %.0795, %bb.agz ], [ %.0795, %bb.xs ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1946 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1971 ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2041 ], [ %.0795, %bb.zs ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2215 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2245 ], [ %.1796, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ %.1796, %bb.kn ], [ %.0795, %bb.agh ], [ %.0795, %bb.agk ]
  %i.dxn = getelementptr inbounds nuw i8, ptr %.0731, i64 1
  br label %bb.h, !llvm.loop !3688

bb.ail:                                           ; preds = %bb.h
  br i1 %.not952, label %bb.aip, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !tbaa !55
  %i.dxo = load ptr, ptr %0, align 8, !tbaa !44
  %i.dxp = getelementptr i8, ptr %i.dxo, i64 -24
  %i.dxq = load i64, ptr %i.dxp, align 8
  %i.dxr = getelementptr inbounds i8, ptr %0, i64 %i.dxq
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dxr, i64 16
  %i.dxt = load i64, ptr %i.dxs, align 8, !tbaa !3486
  %.not.i2516 = icmp eq i64 %i.dxt, 0
  br i1 %.not.i2516, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dxu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520 unwind label %.loopexit.split-lp ; 0 uses

bb.aio:                                           ; preds = %bb.aim
  %i.dxv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520: ; preds = %bb.aio, %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aip

bb.aip:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520, %bb.ail
  %.not852 = icmp eq i8 %.0807, 0
  br i1 %.not852, label %_ZNSolsEj.exit2153, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0807, ptr %i.a, align 1, !tbaa !55
  %i.dxw = load ptr, ptr %0, align 8, !tbaa !44
  %i.dxx = getelementptr i8, ptr %i.dxw, i64 -24
  %i.dxy = load i64, ptr %i.dxx, align 8
  %i.dxz = getelementptr inbounds i8, ptr %0, i64 %i.dxy
  %i.dya = getelementptr inbounds nuw i8, ptr %i.dxz, i64 16
  %i.dyb = load i64, ptr %i.dya, align 8, !tbaa !3486
  %.not.i2521 = icmp eq i64 %i.dyb, 0
  br i1 %.not.i2521, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.dyc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2525 unwind label %.loopexit.split-lp ; 0 uses

bb.ais:                                           ; preds = %bb.aiq
  %i.dyd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0807)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2525 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2525: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit2153

_ZNSolsEj.exit2153:                               ; preds = %bb.by, %bb.zp, %bb.n, %.invoke, %bb.abz, %bb.zj, %bb.yb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2525, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.dye = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dyf = load i32, ptr %i.dye, align 4, !tbaa !3521
  %i.dyg = and i32 %i.dyf, 8192
  %.not.i2526 = icmp eq i32 %i.dyg, 0
  br i1 %.not.i2526, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2527, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2153
  %i.dyh = call noundef i32 @_ZSt19uncaught_exceptionsv() #34
  %i.dyi = icmp eq i32 %i.dyh, 0
  br i1 %i.dyi, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2527

bb.aiu:                                           ; preds = %bb.ait
  %i.dyj = load ptr, ptr %5, align 8, !tbaa !3524, !nonnull !98, !align !683 ; 2 uses
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyj, i64 32
  %i.dyl = load i32, ptr %i.dyk, align 8, !tbaa !3172
  %i.dym = icmp eq i32 %i.dyl, 0
  br i1 %i.dym, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2527

bb.aiv:                                           ; preds = %bb.aiu
  %i.dyn = getelementptr inbounds nuw i8, ptr %i.dyj, i64 232
  %i.dyo = load ptr, ptr %i.dyn, align 8, !tbaa !3509 ; 2 uses
  %i.dyp = load ptr, ptr %i.dyo, align 8, !tbaa !44
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dyp, i64 48
  %i.dyr = load ptr, ptr %i.dyq, align 8
  %i.dys = invoke noundef i32 %i.dyr(ptr noundef nonnull align 8 dereferenceable(64) %i.dyo)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2527 unwind label %bb.aiw, !inline_history !3525 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyt = landingpad { ptr, i32 }
          catch ptr null
  %i.dyu = extractvalue { ptr, i32 } %i.dyt, 0
  call void @__clang_call_terminate(ptr %i.dyu) #31
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2527: ; preds = %_ZNSolsEj.exit2153, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kv, %bb.lc, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.bz, %bb.ci, %bb.j, %bb.adi, %bb.adq, %bb.abc, %bb.zq, %bb.zz, %bb.xe, %bb.wd, %bb.wk, %bb.nh, %bb.np, %bb.fb, %bb.fi, %bb.dp, %bb.dw, %bb.agl, %bb.afa, %bb.acx, %bb.ue, %bb.st, %bb.sr, %bb.rq, %bb.qa, %bb.ow, %bb.op, %bb.jk, %bb.ib, %bb.gm, %bb.ar, %bb.u
  %.pn954.pn.pn = phi { ptr, i32 } [ %i.cno, %bb.xr ], [ %i.lc, %bb.j ], [ %lpad.phi2988, %bb.lc ], [ %lpad.phi3038, %bb.u ], [ %lpad.phi3033, %bb.ar ], [ %lpad.phi2923, %bb.adq ], [ %i.dsr, %bb.agl ], [ %lpad.phi3018, %bb.dw ], [ %.pn936.pn, %bb.gm ], [ %.pn932.pn, %bb.ib ], [ %.pn928.pn, %bb.jk ], [ %i.cnb, %bb.xm ], [ %i.ua, %bb.bz ], [ %lpad.phi3008, %bb.fi ], [ %i.bmi, %bb.op ], [ %lpad.phi2973, %bb.ow ], [ %lpad.phi2968, %bb.qa ], [ %i.den, %bb.abk ], [ %lpad.phi2963, %bb.rq ], [ %i.byo, %bb.st ], [ %i.bym, %bb.sr ], [ %lpad.phi2958, %bb.ue ], [ %lpad.phi2978, %bb.np ], [ %lpad.phi2953, %bb.wk ], [ %i.dfa, %bb.abp ], [ %i.ckk, %bb.xe ], [ %lpad.phi2938, %bb.zz ], [ %lpad.phi2928, %bb.acx ], [ %i.dbu, %bb.abc ], [ %.pn862.pn, %bb.afa ], [ %lpad.phi2933, %bb.abt ], [ %.pn944, %bb.dp ], [ %.pn940, %bb.fb ], [ %i.biv, %bb.nh ], [ %i.chi, %bb.wd ], [ %i.btb, %bb.qu ], [ %i.cxx, %bb.zq ], [ %i.cvq, %bb.yz ], [ %i.dkl, %bb.adi ], [ %lpad.phi3028, %bb.ci ], [ %i.dqi, %bb.afk ], [ %.pn919, %bb.mc ], [ %lpad.phi2943, %bb.zd ], [ %i.bsk, %bb.qs ], [ %lpad.phi2948, %bb.xv ], [ %i.azn, %bb.kv ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn954.pn.pn.pn = phi { ptr, i32 } [ %.pn954.pn.pn, %bb.aix ], [ %i.lb, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn954.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !3512   ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !3513  ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !3514  ; 2 uses
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i8 %i.c, 2
  %i.g = and i16 %i.a, 3
  %i.h = icmp eq i16 %i.g, 0
  %or.cond.i = and i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %i.m = add nuw nsw i64 %i.l, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !55
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.p, %.thread.i.i ], [ 29, %bb.e ]
  %i.q = icmp uge i8 %.sroa.03.0.i.i, %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4               ; 2 uses
  %i.t = icmp ult i8 %i.s, 7
  %or.cond = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !3528  ; 2 uses
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !3528  ; 2 uses
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !3528 ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 7
  br i1 %i.ac, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ad = load ptr, ptr %0, align 8, !tbaa !44
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !3172
  %i.aj = or i32 %i.ai, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ag, i32 noundef %i.aj)
  br label %bb.k

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ak = phi i8 [ %i.v, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread ], [ %i.s, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !3514 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.am, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.an = and i16 %i.a, 3
  %i.ao = icmp eq i16 %i.an, 0
  %or.cond.i14 = and i1 %i.ao, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.ap = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.ap, 0
  %i.aq = srem i16 %i.a, 400
  %i.ar = icmp eq i16 %i.aq, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ar
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.as = zext nneg i8 %i.c to i64
  %i.at = add nuw nsw i64 %i.as, 4294967295
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !55
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.aw, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not = icmp ult i8 %.sroa.03.0.i.i17, %i.am
  br i1 %.not, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.ax = sext i16 %i.a to i32
  %i.ay = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.ay to i32
  %i.az = add nsw i32 %.neg.i.i, %i.ax            ; 4 uses
  %i.ba = zext nneg i8 %i.c to i32
  %i.bb = zext i8 %i.am to i32
  %i.bc = add nsw i32 %i.az, -399
  %i.bd = icmp slt i32 %i.az, 0
  %i.be = select i1 %i.bd, i32 %i.bc, i32 %i.az
  %i.bf = sdiv i32 %i.be, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bf, -400
  %i.bg = add nsw i32 %.neg15.i.i, %i.az          ; 3 uses
  %i.bh = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bh, i32 -3, i32 9
  %i.bi = add nsw i32 %.v.i.i, %i.ba
  %i.bj = mul nsw i32 %i.bi, 153
  %i.bk = add nsw i32 %i.bj, 2
  %i.bl = udiv i32 %i.bk, 5
  %i.bm = mul nsw i32 %i.bg, 365
  %i.bn = lshr i32 %i.bg, 2
  %i.bo = udiv i32 %i.bg, 100
  %i.bp = mul nsw i32 %i.bf, 146097
  %i.bq = add nuw nsw i32 %i.bb, -719469
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bp
  %i.bt = add nsw i32 %i.bs, %i.bn
  %i.bu = add nsw i32 %i.bt, %i.bm
  %i.bv = sub nsw i32 %i.bu, %i.bo                ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, -5
  %i.bx = add nsw i32 %i.bv, 4
  %.in.i.i = select i1 %i.bw, i32 %i.bx, i32 %i.bv
  %i.by = urem i32 %.in.i.i, 7                    ; 2 uses
  %i.bz = trunc nuw nsw i32 %i.by to i8
  %i.ca = icmp ult i8 %i.ak, 7
  %i.cb = icmp ne i8 %i.ak, %i.bz
  %or.cond32 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond32, label %bb.j, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !44
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !3172
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.k

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %2 = phi i8 [ %i.ab, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread ], [ %i.ak, %.thread ], [ %i.ak, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20 ], [ %i.y, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37 ]
  %3 = zext i8 %2 to i32
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a: ; preds = %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread
  %.sroa.023.0 = phi i32 [ %3, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ], [ %i.by, %bb.i ]
  %.fr.i = freeze i32 %.sroa.023.0
  %4 = srem i32 %.fr.i, 7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %4, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !3687, !range !97, !noundef !98
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !55
  %i.i = load ptr, ptr %0, align 8, !tbaa !44
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !3486
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !637    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !55
  %i.s = load ptr, ptr %0, align 8, !tbaa !44
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !3486
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !3499
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !55
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !3486
  %.not.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !637 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !55
  %i.an = load ptr, ptr %0, align 8, !tbaa !44
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !3486
  %.not.i21 = icmp eq i64 %i.as, 0
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre29 = load i64, ptr %i.ak, align 8, !tbaa !3498
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %i.av = phi i64 [ %.pre29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ]
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.av) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 58, ptr %i.a, align 1, !tbaa !55
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !44
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !3486
  %.not.i24 = icmp eq i64 %i.bc, 0
  br i1 %.not.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

bb.q:                                             ; preds = %bb.o
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26: ; preds = %bb.p, %bb.q
  %.0.i25 = phi ptr [ %i.bd, %bb.p ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.0.i25) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %3 = alloca %"class.std::locale", align 8       ; 7 uses
  %4 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %5 = alloca %"class.std::locale", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.b = load ptr, ptr %1, align 8, !tbaa !44
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(264) %i.e)
  %i.f = load ptr, ptr %1, align 8, !tbaa !44     ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 225 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !3471, !range !97, !noundef !98
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3477 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #32
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !3478
  %.not.i1.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.n)
          to label %.noexc18 unwind label %bb.s

end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dxe, ptr %i.c, align 1, !tbaa !55
  %i.dxf = load ptr, ptr %0, align 8, !tbaa !44
  %i.dxg = getelementptr i8, ptr %i.dxf, i64 -24
  %i.dxh = load i64, ptr %i.dxg, align 8
  %i.dxi = getelementptr inbounds i8, ptr %0, i64 %i.dxh
  %i.dxj = getelementptr inbounds nuw i8, ptr %i.dxi, i64 16
  %i.dxk = load i64, ptr %i.dxj, align 8, !tbaa !3486
  %.not.i2511 = icmp eq i64 %i.dxk, 0
  br i1 %.not.i2511, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.dxl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 unwind label %.loopexit ; 0 uses

bb.aik:                                           ; preds = %bb.aii
  %i.dxm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.dxe)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515: ; preds = %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509: ; preds = %bb.agk, %bb.agh, %bb.lb, %bb.kn, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.abq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2245, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2215, %bb.zy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181, %bb.zs, %bb.za, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2041, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1971, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1946, %bb.agz, %bb.aga, %.thread2792, %.thread2781, %.thread2773, %bb.wc, %bb.tx, %bb.ss, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit, %bb.qt, %bb.oo, %bb.ni, %bb.md, %bb.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2500, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2485, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2460, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2433, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2396, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2366, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2351, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2324, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2286, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2201, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2186, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2151, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2027, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2012, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1932, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1917, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1897, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1882, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1860, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1840, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1808, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1793, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1748, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1710, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1685, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1649, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1629, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1589, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1574, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1544, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1529, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1330, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1263, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1197, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1147, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1132, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1091, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1076, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1037, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1022, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit987, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982, %bb.ahm, %bb.aez, %bb.adp, %bb.adj, %bb.acw, %bb.wb, %bb.wj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1862, %bb.ud, %bb.tw, %bb.rp, %bb.pz, %bb.ov, %bb.oj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1548, %bb.no, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1507, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1310, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1243, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1150, %bb.fh, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1179, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1094, %bb.dv, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, %bb.aq, %bb.t
  %.14821 = phi i8 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2500 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit987 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1022 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1076 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1037 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1132 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1091 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1197 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1147 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1263 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1330 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449 ], [ 0, %bb.abq ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1529 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1574 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1544 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1589 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1649 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1685 ], [ 0, %bb.pz ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1710 ], [ 0, %bb.oo ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1748 ], [ 0, %bb.rp ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1793 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1808 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1860 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1882 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1917 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1897 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2012 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1932 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2151 ], [ 0, %bb.za ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2186 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2027 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2286 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2201 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2324 ], [ 0, %bb.acw ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2351 ], [ 0, %bb.adp ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2396 ], [ 0, %bb.zy ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2433 ], [ 0, %bb.aez ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2460 ], [ 0, %bb.lb ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ %.0807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2485 ], [ 0, %bb.t ], [ 0, %bb.aq ], [ 0, %bb.ch ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ 0, %bb.dv ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1094 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1179 ], [ 0, %bb.fh ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1150 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1243 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1310 ], [ 0, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1507 ], [ %.0807, %bb.ahm ], [ 0, %bb.md ], [ 0, %bb.no ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1548 ], [ 0, %bb.oj ], [ 0, %bb.ni ], [ 0, %bb.ov ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1629 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ 0, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ 0, %bb.tw ], [ 0, %bb.ss ], [ 0, %bb.ud ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1840 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1862 ], [ 0, %bb.tx ], [ 0, %bb.wj ], [ 0, %bb.wb ], [ 0, %.thread2773 ], [ 0, %.thread2781 ], [ 0, %.thread2792 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301 ], [ 0, %bb.adj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2366 ], [ 0, %bb.aga ], [ 0, %bb.qt ], [ 0, %bb.wc ], [ %i.la, %bb.agz ], [ 0, %bb.xs ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1946 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1971 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2041 ], [ 0, %bb.zs ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2215 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2245 ], [ 0, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ 0, %bb.kn ], [ 0, %bb.agh ], [ 0, %bb.agk ]
  %.3806 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2500 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit987 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1022 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1076 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1037 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1132 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1091 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1197 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1147 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1263 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1330 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449 ], [ null, %bb.abq ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1529 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1574 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1544 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1589 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1649 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1685 ], [ null, %bb.pz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1710 ], [ null, %bb.oo ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1748 ], [ null, %bb.rp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1793 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1808 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1860 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1882 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1917 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1897 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2012 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1932 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2151 ], [ null, %bb.za ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2186 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2027 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2286 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2201 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2324 ], [ null, %bb.acw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2351 ], [ null, %bb.adp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2396 ], [ null, %bb.zy ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2433 ], [ null, %bb.aez ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2460 ], [ null, %bb.lb ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2485 ], [ null, %bb.t ], [ null, %bb.aq ], [ null, %bb.ch ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ null, %bb.dv ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1094 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1179 ], [ null, %bb.fh ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1150 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1243 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1310 ], [ null, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1507 ], [ %.0731, %bb.ahm ], [ null, %bb.md ], [ null, %bb.no ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1548 ], [ null, %bb.oj ], [ null, %bb.ni ], [ null, %bb.ov ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1629 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ null, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ null, %bb.tw ], [ null, %bb.ss ], [ null, %bb.ud ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1840 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1862 ], [ null, %bb.tx ], [ null, %bb.wj ], [ null, %bb.wb ], [ null, %.thread2773 ], [ null, %.thread2781 ], [ null, %.thread2792 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301 ], [ null, %bb.adj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2366 ], [ null, %bb.aga ], [ null, %bb.qt ], [ null, %bb.wc ], [ %.0803, %bb.agz ], [ null, %bb.xs ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1946 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1971 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2041 ], [ null, %bb.zs ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2215 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2245 ], [ null, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ null, %bb.kn ], [ null, %bb.agh ], [ null, %bb.agk ]
  %.7802 = phi i8 [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2500 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit987 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1022 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1076 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1037 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1132 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1091 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1197 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1147 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1263 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1330 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449 ], [ %.0795, %bb.abq ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1529 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1574 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1544 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1589 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1649 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1685 ], [ %.0795, %bb.pz ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1710 ], [ %.3798, %bb.oo ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1748 ], [ %.0795, %bb.rp ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1793 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1808 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1860 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1882 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1917 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1897 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2012 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1932 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2151 ], [ %.0795, %bb.za ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2186 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2027 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2286 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2201 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2324 ], [ %.0795, %bb.acw ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2351 ], [ %.0795, %bb.adp ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2396 ], [ %.0795, %bb.zy ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2433 ], [ %.0795, %bb.aez ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2460 ], [ %.1796, %bb.lb ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2485 ], [ %.0795, %bb.t ], [ %.0795, %bb.aq ], [ %.0795, %bb.ch ], [ %.0795, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ %.0795, %bb.dv ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1094 ], [ %.0795, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1179 ], [ %.0795, %bb.fh ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1150 ], [ %.0795, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1243 ], [ %.0795, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1310 ], [ %.0795, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414 ], [ %.0795, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1507 ], [ %.0795, %bb.ahm ], [ %.0795, %bb.md ], [ %.0795, %bb.no ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1548 ], [ %.3798, %bb.oj ], [ %.0795, %bb.ni ], [ %.3798, %bb.ov ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1629 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ %.0795, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ %.5800, %bb.tw ], [ %.0795, %bb.ss ], [ %.5800, %bb.ud ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1840 ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1862 ], [ %.5800, %bb.tx ], [ %.0795, %bb.wj ], [ %.0795, %bb.wb ], [ %.0795, %.thread2773 ], [ %.0795, %.thread2781 ], [ %.0795, %.thread2792 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301 ], [ %.0795, %bb.adj ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2366 ], [ %.0795, %bb.aga ], [ %.0795, %bb.qt ], [ %.0795, %bb.wc ], [ %.0795, %bb.agz ], [ %.0795, %bb.xs ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1946 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1971 ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2041 ], [ %.0795, %bb.zs ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2215 ], [ %.0795, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2245 ], [ %.1796, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ %.1796, %bb.kn ], [ %.0795, %bb.agh ], [ %.0795, %bb.agk ]
  %i.dxn = getelementptr inbounds nuw i8, ptr %.0731, i64 1
  br label %bb.h, !llvm.loop !3762

bb.ail:                                           ; preds = %bb.h
  br i1 %.not952, label %bb.aip, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !tbaa !55
  %i.dxo = load ptr, ptr %0, align 8, !tbaa !44
  %i.dxp = getelementptr i8, ptr %i.dxo, i64 -24
  %i.dxq = load i64, ptr %i.dxp, align 8
  %i.dxr = getelementptr inbounds i8, ptr %0, i64 %i.dxq
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dxr, i64 16
  %i.dxt = load i64, ptr %i.dxs, align 8, !tbaa !3486
  %.not.i2516 = icmp eq i64 %i.dxt, 0
  br i1 %.not.i2516, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dxu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520 unwind label %.loopexit.split-lp ; 0 uses

bb.aio:                                           ; preds = %bb.aim
  %i.dxv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520: ; preds = %bb.aio, %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aip

bb.aip:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520, %bb.ail
  %.not852 = icmp eq i8 %.0807, 0
  br i1 %.not852, label %_ZNSolsEj.exit2153, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0807, ptr %i.a, align 1, !tbaa !55
  %i.dxw = load ptr, ptr %0, align 8, !tbaa !44
  %i.dxx = getelementptr i8, ptr %i.dxw, i64 -24
  %i.dxy = load i64, ptr %i.dxx, align 8
  %i.dxz = getelementptr inbounds i8, ptr %0, i64 %i.dxy
  %i.dya = getelementptr inbounds nuw i8, ptr %i.dxz, i64 16
  %i.dyb = load i64, ptr %i.dya, align 8, !tbaa !3486
  %.not.i2521 = icmp eq i64 %i.dyb, 0
  br i1 %.not.i2521, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.dyc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2525 unwind label %.loopexit.split-lp ; 0 uses

bb.ais:                                           ; preds = %bb.aiq
  %i.dyd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0807)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2525 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2525: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit2153

_ZNSolsEj.exit2153:                               ; preds = %bb.by, %bb.zp, %bb.n, %.invoke, %bb.abz, %bb.zj, %bb.yb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2525, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.dye = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dyf = load i32, ptr %i.dye, align 4, !tbaa !3521
  %i.dyg = and i32 %i.dyf, 8192
  %.not.i2526 = icmp eq i32 %i.dyg, 0
  br i1 %.not.i2526, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2527, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2153
  %i.dyh = call noundef i32 @_ZSt19uncaught_exceptionsv() #34
  %i.dyi = icmp eq i32 %i.dyh, 0
  br i1 %i.dyi, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2527

bb.aiu:                                           ; preds = %bb.ait
  %i.dyj = load ptr, ptr %5, align 8, !tbaa !3524, !nonnull !98, !align !683 ; 2 uses
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyj, i64 32
  %i.dyl = load i32, ptr %i.dyk, align 8, !tbaa !3172
  %i.dym = icmp eq i32 %i.dyl, 0
  br i1 %i.dym, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2527

bb.aiv:                                           ; preds = %bb.aiu
  %i.dyn = getelementptr inbounds nuw i8, ptr %i.dyj, i64 232
  %i.dyo = load ptr, ptr %i.dyn, align 8, !tbaa !3509 ; 2 uses
  %i.dyp = load ptr, ptr %i.dyo, align 8, !tbaa !44
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dyp, i64 48
  %i.dyr = load ptr, ptr %i.dyq, align 8
  %i.dys = invoke noundef i32 %i.dyr(ptr noundef nonnull align 8 dereferenceable(64) %i.dyo)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2527 unwind label %bb.aiw, !inline_history !3525 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyt = landingpad { ptr, i32 }
          catch ptr null
  %i.dyu = extractvalue { ptr, i32 } %i.dyt, 0
  call void @__clang_call_terminate(ptr %i.dyu) #31
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2527: ; preds = %_ZNSolsEj.exit2153, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kv, %bb.lc, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.bz, %bb.ci, %bb.j, %bb.adi, %bb.adq, %bb.abc, %bb.zq, %bb.zz, %bb.xe, %bb.wd, %bb.wk, %bb.nh, %bb.np, %bb.fb, %bb.fi, %bb.dp, %bb.dw, %bb.agl, %bb.afa, %bb.acx, %bb.ue, %bb.st, %bb.sr, %bb.rq, %bb.qa, %bb.ow, %bb.op, %bb.jk, %bb.ib, %bb.gm, %bb.ar, %bb.u
  %.pn954.pn.pn = phi { ptr, i32 } [ %i.cno, %bb.xr ], [ %i.lc, %bb.j ], [ %lpad.phi2988, %bb.lc ], [ %lpad.phi3038, %bb.u ], [ %lpad.phi3033, %bb.ar ], [ %lpad.phi2923, %bb.adq ], [ %i.dsr, %bb.agl ], [ %lpad.phi3018, %bb.dw ], [ %.pn936.pn, %bb.gm ], [ %.pn932.pn, %bb.ib ], [ %.pn928.pn, %bb.jk ], [ %i.cnb, %bb.xm ], [ %i.ua, %bb.bz ], [ %lpad.phi3008, %bb.fi ], [ %i.bmi, %bb.op ], [ %lpad.phi2973, %bb.ow ], [ %lpad.phi2968, %bb.qa ], [ %i.den, %bb.abk ], [ %lpad.phi2963, %bb.rq ], [ %i.byo, %bb.st ], [ %i.bym, %bb.sr ], [ %lpad.phi2958, %bb.ue ], [ %lpad.phi2978, %bb.np ], [ %lpad.phi2953, %bb.wk ], [ %i.dfa, %bb.abp ], [ %i.ckk, %bb.xe ], [ %lpad.phi2938, %bb.zz ], [ %lpad.phi2928, %bb.acx ], [ %i.dbu, %bb.abc ], [ %.pn862.pn, %bb.afa ], [ %lpad.phi2933, %bb.abt ], [ %.pn944, %bb.dp ], [ %.pn940, %bb.fb ], [ %i.biv, %bb.nh ], [ %i.chi, %bb.wd ], [ %i.btb, %bb.qu ], [ %i.cxx, %bb.zq ], [ %i.cvq, %bb.yz ], [ %i.dkl, %bb.adi ], [ %lpad.phi3028, %bb.ci ], [ %i.dqi, %bb.afk ], [ %.pn919, %bb.mc ], [ %lpad.phi2943, %bb.zd ], [ %i.bsk, %bb.qs ], [ %lpad.phi2948, %bb.xv ], [ %i.azn, %bb.kv ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn954.pn.pn.pn = phi { ptr, i32 } [ %.pn954.pn.pn, %bb.aix ], [ %i.lb, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn954.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !3512   ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !3513  ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !3514  ; 2 uses
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i8 %i.c, 2
  %i.g = and i16 %i.a, 3
  %i.h = icmp eq i16 %i.g, 0
  %or.cond.i = and i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %i.m = add nuw nsw i64 %i.l, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !55
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.p, %.thread.i.i ], [ 29, %bb.e ]
  %i.q = icmp uge i8 %.sroa.03.0.i.i, %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4               ; 2 uses
  %i.t = icmp ult i8 %i.s, 7
  %or.cond = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !3528  ; 2 uses
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !3528  ; 2 uses
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !3528 ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 7
  br i1 %i.ac, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ad = load ptr, ptr %0, align 8, !tbaa !44
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !3172
  %i.aj = or i32 %i.ai, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ag, i32 noundef %i.aj)
  br label %bb.k

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ak = phi i8 [ %i.v, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread ], [ %i.s, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !3514 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.am, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.an = and i16 %i.a, 3
  %i.ao = icmp eq i16 %i.an, 0
  %or.cond.i14 = and i1 %i.ao, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.ap = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.ap, 0
  %i.aq = srem i16 %i.a, 400
  %i.ar = icmp eq i16 %i.aq, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ar
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.as = zext nneg i8 %i.c to i64
  %i.at = add nuw nsw i64 %i.as, 4294967295
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !55
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.aw, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not = icmp ult i8 %.sroa.03.0.i.i17, %i.am
  br i1 %.not, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.ax = sext i16 %i.a to i32
  %i.ay = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.ay to i32
  %i.az = add nsw i32 %.neg.i.i, %i.ax            ; 4 uses
  %i.ba = zext nneg i8 %i.c to i32
  %i.bb = zext i8 %i.am to i32
  %i.bc = add nsw i32 %i.az, -399
  %i.bd = icmp slt i32 %i.az, 0
  %i.be = select i1 %i.bd, i32 %i.bc, i32 %i.az
  %i.bf = sdiv i32 %i.be, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bf, -400
  %i.bg = add nsw i32 %.neg15.i.i, %i.az          ; 3 uses
  %i.bh = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bh, i32 -3, i32 9
  %i.bi = add nsw i32 %.v.i.i, %i.ba
  %i.bj = mul nsw i32 %i.bi, 153
  %i.bk = add nsw i32 %i.bj, 2
  %i.bl = udiv i32 %i.bk, 5
  %i.bm = mul nsw i32 %i.bg, 365
  %i.bn = lshr i32 %i.bg, 2
  %i.bo = udiv i32 %i.bg, 100
  %i.bp = mul nsw i32 %i.bf, 146097
  %i.bq = add nuw nsw i32 %i.bb, -719469
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bp
  %i.bt = add nsw i32 %i.bs, %i.bn
  %i.bu = add nsw i32 %i.bt, %i.bm
  %i.bv = sub nsw i32 %i.bu, %i.bo                ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, -5
  %i.bx = add nsw i32 %i.bv, 4
  %.in.i.i = select i1 %i.bw, i32 %i.bx, i32 %i.bv
  %i.by = urem i32 %.in.i.i, 7                    ; 2 uses
  %i.bz = trunc nuw nsw i32 %i.by to i8
  %i.ca = icmp ult i8 %i.ak, 7
  %i.cb = icmp ne i8 %i.ak, %i.bz
  %or.cond32 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond32, label %bb.j, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !44
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !3172
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.k

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %2 = phi i8 [ %i.ab, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread ], [ %i.ak, %.thread ], [ %i.ak, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20 ], [ %i.y, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37 ]
  %3 = zext i8 %2 to i32
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a: ; preds = %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread
  %.sroa.023.0 = phi i32 [ %3, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ], [ %i.by, %bb.i ]
  %.fr.i = freeze i32 %.sroa.023.0
  %4 = srem i32 %.fr.i, 7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %4, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !3761, !range !97, !noundef !98
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !55
  %i.i = load ptr, ptr %0, align 8, !tbaa !44
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !3486
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !637    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !55
  %i.s = load ptr, ptr %0, align 8, !tbaa !44
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !3486
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !3499
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !55
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !3486
  %.not.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !637 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !55
  %i.an = load ptr, ptr %0, align 8, !tbaa !44
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !3486
  %.not.i21 = icmp eq i64 %i.as, 0
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre29 = load i64, ptr %i.ak, align 8, !tbaa !3498
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %i.av = phi i64 [ %.pre29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ]
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.av) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 58, ptr %i.a, align 1, !tbaa !55
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !44
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !3486
  %.not.i24 = icmp eq i64 %i.bc, 0
  br i1 %.not.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

bb.q:                                             ; preds = %bb.o
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26: ; preds = %bb.p, %bb.q
  %.0.i25 = phi ptr [ %i.bd, %bb.p ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.0.i25) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %3 = alloca %"class.std::locale", align 8       ; 7 uses
  %4 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %5 = alloca %"class.std::locale", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.b = load ptr, ptr %1, align 8, !tbaa !44
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(264) %i.e)
  %i.f = load ptr, ptr %1, align 8, !tbaa !44     ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 225 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !3471, !range !97, !noundef !98
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3477 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #32
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !3478
  %.not.i1.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.n)
          to label %.noexc18 unwind label %bb.s

end_hunk_4
