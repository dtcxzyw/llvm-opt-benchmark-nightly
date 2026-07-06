inline.NumInlined: 15753
inline.NumDeleted: 2714
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 35
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
  %.sroa.0.0.insert.insert.i = phi i32 [ %i.aa, %bb.k ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.sroa.0.0.insert.insert.i to i16 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i32 %.sroa.0.0.insert.insert.i, 16
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i16
  %1 = sext i16 %.sroa.0.0.extract.trunc to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !679
  %i.ad = add nsw i64 %i.ac, %1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !679
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !680
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !679 ; 2 uses
  %i.ai = sub nsw i64 %i.af, %i.ah
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ai, i64 32767) ; 2 uses
  %2 = trunc i64 %.sroa.speculated to i16         ; 2 uses
  %sext = shl i64 %.sroa.speculated, 48
  %i.aj = ashr exact i64 %sext, 48
  %i.ak = add nsw i64 %i.aj, %i.ah
  store i64 %i.ak, ptr %i.ag, align 8, !tbaa !679
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit
  %.sroa.0.0 = phi i16 [ %.sroa.0.0.extract.trunc, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ], [ %2, %bb.l ]
  %.sroa.4.0 = phi i16 [ %.sroa.4.0.extract.trunc, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ], [ %2, %bb.l ]
  %.sroa.4.0.insert.ext = zext i16 %.sroa.4.0 to i32
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.0 to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
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
  %i.dyb = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dyc = load i32, ptr %i.dyb, align 4, !tbaa !3521
  %i.dyd = and i32 %i.dyc, 8192
  %.not.i2521 = icmp eq i32 %i.dyd, 0
  br i1 %.not.i2521, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2148
  %i.dye = call noundef i32 @_ZSt19uncaught_exceptionsv() #34
  %i.dyf = icmp eq i32 %i.dye, 0
  br i1 %i.dyf, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiu:                                           ; preds = %bb.ait
  %i.dyg = load ptr, ptr %5, align 8, !tbaa !3524, !nonnull !98, !align !683 ; 2 uses
  %i.dyh = getelementptr inbounds nuw i8, ptr %i.dyg, i64 32
  %i.dyi = load i32, ptr %i.dyh, align 8, !tbaa !3172
  %i.dyj = icmp eq i32 %i.dyi, 0
  br i1 %i.dyj, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiv:                                           ; preds = %bb.aiu
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyg, i64 232
  %i.dyl = load ptr, ptr %i.dyk, align 8, !tbaa !3509 ; 2 uses
  %i.dym = load ptr, ptr %i.dyl, align 8, !tbaa !44
  %i.dyn = getelementptr inbounds nuw i8, ptr %i.dym, i64 48
  %i.dyo = load ptr, ptr %i.dyn, align 8
  %i.dyp = invoke noundef i32 %i.dyo(ptr noundef nonnull align 8 dereferenceable(64) %i.dyl)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522 unwind label %bb.aiw, !inline_history !3525 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyq = landingpad { ptr, i32 }
          catch ptr null
  %i.dyr = extractvalue { ptr, i32 } %i.dyq, 0
  call void @__clang_call_terminate(ptr %i.dyr) #31
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522: ; preds = %_ZNSolsEj.exit2148, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kw, %bb.ld, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.ca, %bb.cj, %bb.u, %bb.ar, %bb.gn, %bb.ic, %bb.jl, %bb.op, %bb.ow, %bb.qa, %bb.rq, %bb.sr, %bb.st, %bb.ue, %bb.acx, %bb.afa, %bb.agl, %bb.dx, %bb.dq, %bb.fj, %bb.fc, %bb.np, %bb.nh, %bb.wk, %bb.wd, %bb.xe, %bb.zz, %bb.zq, %bb.abc, %bb.adq, %bb.adi, %bb.j
  %.pn953.pn = phi { ptr, i32 } [ %i.lb, %bb.j ], [ %lpad.phi2986, %bb.ld ], [ %lpad.phi3036, %bb.u ], [ %lpad.phi3031, %bb.ar ], [ %lpad.phi2921, %bb.adq ], [ %i.dso, %bb.agl ], [ %lpad.phi3016, %bb.dx ], [ %.pn935.pn, %bb.gn ], [ %.pn931.pn, %bb.ic ], [ %.pn927.pn, %bb.jl ], [ %i.cnl, %bb.xr ], [ %i.tz, %bb.ca ], [ %lpad.phi3006, %bb.fj ], [ %i.bmg, %bb.op ], [ %lpad.phi2971, %bb.ow ], [ %lpad.phi2966, %bb.qa ], [ %i.dex, %bb.abp ], [ %lpad.phi2961, %bb.rq ], [ %i.byl, %bb.st ], [ %i.byj, %bb.sr ], [ %lpad.phi2956, %bb.ue ], [ %lpad.phi2976, %bb.np ], [ %lpad.phi2951, %bb.wk ], [ %i.dek, %bb.abk ], [ %i.ckh, %bb.xe ], [ %lpad.phi2936, %bb.zz ], [ %lpad.phi2926, %bb.acx ], [ %i.dbr, %bb.abc ], [ %.pn861.pn, %bb.afa ], [ %i.cvn, %bb.yz ], [ %.pn943, %bb.dq ], [ %.pn939, %bb.fc ], [ %i.bit, %bb.nh ], [ %i.chf, %bb.wd ], [ %i.bsy, %bb.qu ], [ %i.cxu, %bb.zq ], [ %lpad.phi2931, %bb.abt ], [ %i.dki, %bb.adi ], [ %lpad.phi3026, %bb.cj ], [ %lpad.phi2941, %bb.zd ], [ %.pn918, %bb.mc ], [ %i.dqf, %bb.afk ], [ %i.bsi, %bb.qs ], [ %lpad.phi2946, %bb.xv ], [ %i.cmy, %bb.xm ], [ %i.azm, %bb.kw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
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
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33

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
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.f
  br i1 %.not, label %.thread26, label %.thread

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i8, ptr %i.q, align 4, !tbaa !3528
  %i.s = icmp ult i8 %i.r, 7
  br i1 %i.s, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i8, ptr %i.t, align 4, !tbaa !3528
  %i.v = icmp ult i8 %i.u, 7
  br i1 %i.v, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !3528
  %i.y = icmp ult i8 %i.x, 7
  br i1 %i.y, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

.thread26:                                        ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !3528
  %i.ab = icmp ult i8 %i.aa, 7
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ac = load ptr, ptr %0, align 8, !tbaa !44
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !3172
  %i.ai = or i32 %i.ah, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef %i.ai)
  br label %bb.l

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !3514 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.ak, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.al = and i16 %i.a, 3
  %i.am = icmp eq i16 %i.al, 0
  %or.cond.i14 = and i1 %i.am, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.an = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.an, 0
  %i.ao = srem i16 %i.a, 400
  %i.ap = icmp eq i16 %i.ao, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ap
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.aq = zext nneg i8 %i.c to i64
  %i.ar = add nuw nsw i64 %i.aq, 4294967295
  %i.as = and i64 %i.ar, 4294967295
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !55
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.au, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not30 = icmp ult i8 %.sroa.03.0.i.i17, %i.ak
  br i1 %.not30, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.av = sext i16 %i.a to i32
  %i.aw = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.aw to i32
  %i.ax = add nsw i32 %.neg.i.i, %i.av            ; 4 uses
  %i.ay = zext nneg i8 %i.c to i32
  %i.az = zext i8 %i.ak to i32
  %i.ba = add nsw i32 %i.ax, -399
  %i.bb = icmp slt i32 %i.ax, 0
  %i.bc = select i1 %i.bb, i32 %i.ba, i32 %i.ax
  %i.bd = sdiv i32 %i.bc, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bd, -400
  %i.be = add nsw i32 %.neg15.i.i, %i.ax          ; 3 uses
  %i.bf = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bf, i32 -3, i32 9
  %i.bg = add nsw i32 %.v.i.i, %i.ay
  %i.bh = mul nsw i32 %i.bg, 153
  %i.bi = add nsw i32 %i.bh, 2
  %i.bj = udiv i32 %i.bi, 5
  %i.bk = mul nsw i32 %i.be, 365
  %i.bl = lshr i32 %i.be, 2
  %i.bm = udiv i32 %i.be, 100
  %i.bn = mul nsw i32 %i.bd, 146097
  %i.bo = add nuw nsw i32 %i.az, -719469
  %i.bp = add nsw i32 %i.bo, %i.bj
  %i.bq = add nsw i32 %i.bp, %i.bn
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bk
  %i.bt = sub nsw i32 %i.bs, %i.bm                ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, -5
  %i.bv = add nsw i32 %i.bt, 4
  %.in.i.i = select i1 %i.bu, i32 %i.bv, i32 %i.bt
  %i.bw = urem i32 %.in.i.i, 7
  %i.bx = trunc nuw nsw i32 %i.bw to i8           ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !3528 ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 7
  %i.cb = icmp ne i8 %i.bz, %i.bx
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !44
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !3172
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.l

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !55
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread
  %.sroa.023.0 = phi i8 [ %i.ck, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ], [ %i.bx, %bb.i ]
  %.sroa.023.0.fr = freeze i8 %.sroa.023.0
  %2 = urem i8 %.sroa.023.0.fr, 7
  %3 = zext nneg i8 %2 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %3, %bb.k ]
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
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  %i.dye = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dyf = load i32, ptr %i.dye, align 4, !tbaa !3521
  %i.dyg = and i32 %i.dyf, 8192
  %.not.i2523 = icmp eq i32 %i.dyg, 0
  br i1 %.not.i2523, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2524, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2150
  %i.dyh = call noundef i32 @_ZSt19uncaught_exceptionsv() #34
  %i.dyi = icmp eq i32 %i.dyh, 0
  br i1 %i.dyi, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2524

bb.aiu:                                           ; preds = %bb.ait
  %i.dyj = load ptr, ptr %5, align 8, !tbaa !3524, !nonnull !98, !align !683 ; 2 uses
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyj, i64 32
  %i.dyl = load i32, ptr %i.dyk, align 8, !tbaa !3172
  %i.dym = icmp eq i32 %i.dyl, 0
  br i1 %i.dym, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2524

bb.aiv:                                           ; preds = %bb.aiu
  %i.dyn = getelementptr inbounds nuw i8, ptr %i.dyj, i64 232
  %i.dyo = load ptr, ptr %i.dyn, align 8, !tbaa !3509 ; 2 uses
  %i.dyp = load ptr, ptr %i.dyo, align 8, !tbaa !44
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dyp, i64 48
  %i.dyr = load ptr, ptr %i.dyq, align 8
  %i.dys = invoke noundef i32 %i.dyr(ptr noundef nonnull align 8 dereferenceable(64) %i.dyo)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2524 unwind label %bb.aiw, !inline_history !3525 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyt = landingpad { ptr, i32 }
          catch ptr null
  %i.dyu = extractvalue { ptr, i32 } %i.dyt, 0
  call void @__clang_call_terminate(ptr %i.dyu) #31
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2524: ; preds = %_ZNSolsEj.exit2150, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kw, %bb.ld, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.ca, %bb.cj, %bb.j, %bb.adi, %bb.adq, %bb.abc, %bb.zq, %bb.zz, %bb.xe, %bb.wd, %bb.wk, %bb.nh, %bb.np, %bb.fc, %bb.fj, %bb.dq, %bb.dx, %bb.agl, %bb.afa, %bb.acx, %bb.ue, %bb.st, %bb.sr, %bb.rq, %bb.qa, %bb.ow, %bb.op, %bb.jl, %bb.ic, %bb.gn, %bb.ar, %bb.u
  %.pn954.pn.pn = phi { ptr, i32 } [ %i.cno, %bb.xr ], [ %i.lc, %bb.j ], [ %lpad.phi2988, %bb.ld ], [ %lpad.phi3038, %bb.u ], [ %lpad.phi3033, %bb.ar ], [ %lpad.phi2923, %bb.adq ], [ %i.dsr, %bb.agl ], [ %lpad.phi3018, %bb.dx ], [ %.pn936.pn, %bb.gn ], [ %.pn932.pn, %bb.ic ], [ %.pn928.pn, %bb.jl ], [ %i.cnb, %bb.xm ], [ %i.ua, %bb.ca ], [ %lpad.phi3008, %bb.fj ], [ %i.bmi, %bb.op ], [ %lpad.phi2973, %bb.ow ], [ %lpad.phi2968, %bb.qa ], [ %i.den, %bb.abk ], [ %lpad.phi2963, %bb.rq ], [ %i.byo, %bb.st ], [ %i.bym, %bb.sr ], [ %lpad.phi2958, %bb.ue ], [ %lpad.phi2978, %bb.np ], [ %lpad.phi2953, %bb.wk ], [ %i.dfa, %bb.abp ], [ %i.ckk, %bb.xe ], [ %lpad.phi2938, %bb.zz ], [ %lpad.phi2928, %bb.acx ], [ %i.dbu, %bb.abc ], [ %.pn862.pn, %bb.afa ], [ %lpad.phi2933, %bb.abt ], [ %.pn944, %bb.dq ], [ %.pn940, %bb.fc ], [ %i.biv, %bb.nh ], [ %i.chi, %bb.wd ], [ %i.btb, %bb.qu ], [ %i.cxx, %bb.zq ], [ %i.cvq, %bb.yz ], [ %i.dkl, %bb.adi ], [ %lpad.phi3028, %bb.cj ], [ %i.dqi, %bb.afk ], [ %.pn919, %bb.mc ], [ %lpad.phi2943, %bb.zd ], [ %i.bsk, %bb.qs ], [ %lpad.phi2948, %bb.xv ], [ %i.azn, %bb.kw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
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
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33

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
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.f
  br i1 %.not, label %.thread26, label %.thread

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i8, ptr %i.q, align 4, !tbaa !3528
  %i.s = icmp ult i8 %i.r, 7
  br i1 %i.s, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i8, ptr %i.t, align 4, !tbaa !3528
  %i.v = icmp ult i8 %i.u, 7
  br i1 %i.v, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !3528
  %i.y = icmp ult i8 %i.x, 7
  br i1 %i.y, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

.thread26:                                        ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !3528
  %i.ab = icmp ult i8 %i.aa, 7
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ac = load ptr, ptr %0, align 8, !tbaa !44
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !3172
  %i.ai = or i32 %i.ah, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef %i.ai)
  br label %bb.l

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !3514 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.ak, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.al = and i16 %i.a, 3
  %i.am = icmp eq i16 %i.al, 0
  %or.cond.i14 = and i1 %i.am, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.an = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.an, 0
  %i.ao = srem i16 %i.a, 400
  %i.ap = icmp eq i16 %i.ao, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ap
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.aq = zext nneg i8 %i.c to i64
  %i.ar = add nuw nsw i64 %i.aq, 4294967295
  %i.as = and i64 %i.ar, 4294967295
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !55
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.au, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not30 = icmp ult i8 %.sroa.03.0.i.i17, %i.ak
  br i1 %.not30, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.av = sext i16 %i.a to i32
  %i.aw = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.aw to i32
  %i.ax = add nsw i32 %.neg.i.i, %i.av            ; 4 uses
  %i.ay = zext nneg i8 %i.c to i32
  %i.az = zext i8 %i.ak to i32
  %i.ba = add nsw i32 %i.ax, -399
  %i.bb = icmp slt i32 %i.ax, 0
  %i.bc = select i1 %i.bb, i32 %i.ba, i32 %i.ax
  %i.bd = sdiv i32 %i.bc, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bd, -400
  %i.be = add nsw i32 %.neg15.i.i, %i.ax          ; 3 uses
  %i.bf = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bf, i32 -3, i32 9
  %i.bg = add nsw i32 %.v.i.i, %i.ay
  %i.bh = mul nsw i32 %i.bg, 153
  %i.bi = add nsw i32 %i.bh, 2
  %i.bj = udiv i32 %i.bi, 5
  %i.bk = mul nsw i32 %i.be, 365
  %i.bl = lshr i32 %i.be, 2
  %i.bm = udiv i32 %i.be, 100
  %i.bn = mul nsw i32 %i.bd, 146097
  %i.bo = add nuw nsw i32 %i.az, -719469
  %i.bp = add nsw i32 %i.bo, %i.bj
  %i.bq = add nsw i32 %i.bp, %i.bn
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bk
  %i.bt = sub nsw i32 %i.bs, %i.bm                ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, -5
  %i.bv = add nsw i32 %i.bt, 4
  %.in.i.i = select i1 %i.bu, i32 %i.bv, i32 %i.bt
  %i.bw = urem i32 %.in.i.i, 7
  %i.bx = trunc nuw nsw i32 %i.bw to i8           ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !3528 ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 7
  %i.cb = icmp ne i8 %i.bz, %i.bx
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !44
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !3172
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.l

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !55
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread
  %.sroa.023.0 = phi i8 [ %i.ck, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ], [ %i.bx, %bb.i ]
  %.sroa.023.0.fr = freeze i8 %.sroa.023.0
  %2 = urem i8 %.sroa.023.0.fr, 7
  %3 = zext nneg i8 %2 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %3, %bb.k ]
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

end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  %i.dye = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dyf = load i32, ptr %i.dye, align 4, !tbaa !3521
  %i.dyg = and i32 %i.dyf, 8192
  %.not.i2523 = icmp eq i32 %i.dyg, 0
  br i1 %.not.i2523, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2524, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2150
  %i.dyh = call noundef i32 @_ZSt19uncaught_exceptionsv() #34
  %i.dyi = icmp eq i32 %i.dyh, 0
  br i1 %i.dyi, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2524

bb.aiu:                                           ; preds = %bb.ait
  %i.dyj = load ptr, ptr %5, align 8, !tbaa !3524, !nonnull !98, !align !683 ; 2 uses
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyj, i64 32
  %i.dyl = load i32, ptr %i.dyk, align 8, !tbaa !3172
  %i.dym = icmp eq i32 %i.dyl, 0
  br i1 %i.dym, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2524

bb.aiv:                                           ; preds = %bb.aiu
  %i.dyn = getelementptr inbounds nuw i8, ptr %i.dyj, i64 232
  %i.dyo = load ptr, ptr %i.dyn, align 8, !tbaa !3509 ; 2 uses
  %i.dyp = load ptr, ptr %i.dyo, align 8, !tbaa !44
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dyp, i64 48
  %i.dyr = load ptr, ptr %i.dyq, align 8
  %i.dys = invoke noundef i32 %i.dyr(ptr noundef nonnull align 8 dereferenceable(64) %i.dyo)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2524 unwind label %bb.aiw, !inline_history !3525 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyt = landingpad { ptr, i32 }
          catch ptr null
  %i.dyu = extractvalue { ptr, i32 } %i.dyt, 0
  call void @__clang_call_terminate(ptr %i.dyu) #31
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2524: ; preds = %_ZNSolsEj.exit2150, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kw, %bb.ld, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.ca, %bb.cj, %bb.j, %bb.adi, %bb.adq, %bb.abc, %bb.zq, %bb.zz, %bb.xe, %bb.wd, %bb.wk, %bb.nh, %bb.np, %bb.fc, %bb.fj, %bb.dq, %bb.dx, %bb.agl, %bb.afa, %bb.acx, %bb.ue, %bb.st, %bb.sr, %bb.rq, %bb.qa, %bb.ow, %bb.op, %bb.jl, %bb.ic, %bb.gn, %bb.ar, %bb.u
  %.pn954.pn.pn = phi { ptr, i32 } [ %i.cno, %bb.xr ], [ %i.lc, %bb.j ], [ %lpad.phi2988, %bb.ld ], [ %lpad.phi3038, %bb.u ], [ %lpad.phi3033, %bb.ar ], [ %lpad.phi2923, %bb.adq ], [ %i.dsr, %bb.agl ], [ %lpad.phi3018, %bb.dx ], [ %.pn936.pn, %bb.gn ], [ %.pn932.pn, %bb.ic ], [ %.pn928.pn, %bb.jl ], [ %i.cnb, %bb.xm ], [ %i.ua, %bb.ca ], [ %lpad.phi3008, %bb.fj ], [ %i.bmi, %bb.op ], [ %lpad.phi2973, %bb.ow ], [ %lpad.phi2968, %bb.qa ], [ %i.den, %bb.abk ], [ %lpad.phi2963, %bb.rq ], [ %i.byo, %bb.st ], [ %i.bym, %bb.sr ], [ %lpad.phi2958, %bb.ue ], [ %lpad.phi2978, %bb.np ], [ %lpad.phi2953, %bb.wk ], [ %i.dfa, %bb.abp ], [ %i.ckk, %bb.xe ], [ %lpad.phi2938, %bb.zz ], [ %lpad.phi2928, %bb.acx ], [ %i.dbu, %bb.abc ], [ %.pn862.pn, %bb.afa ], [ %lpad.phi2933, %bb.abt ], [ %.pn944, %bb.dq ], [ %.pn940, %bb.fc ], [ %i.biv, %bb.nh ], [ %i.chi, %bb.wd ], [ %i.btb, %bb.qu ], [ %i.cxx, %bb.zq ], [ %i.cvq, %bb.yz ], [ %i.dkl, %bb.adi ], [ %lpad.phi3028, %bb.cj ], [ %i.dqi, %bb.afk ], [ %.pn919, %bb.mc ], [ %lpad.phi2943, %bb.zd ], [ %i.bsk, %bb.qs ], [ %lpad.phi2948, %bb.xv ], [ %i.azn, %bb.kw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
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
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33

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
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.f
  br i1 %.not, label %.thread26, label %.thread

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i8, ptr %i.q, align 4, !tbaa !3528
  %i.s = icmp ult i8 %i.r, 7
  br i1 %i.s, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i8, ptr %i.t, align 4, !tbaa !3528
  %i.v = icmp ult i8 %i.u, 7
  br i1 %i.v, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !3528
  %i.y = icmp ult i8 %i.x, 7
  br i1 %i.y, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

.thread26:                                        ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !3528
  %i.ab = icmp ult i8 %i.aa, 7
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ac = load ptr, ptr %0, align 8, !tbaa !44
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !3172
  %i.ai = or i32 %i.ah, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef %i.ai)
  br label %bb.l

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !3514 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.ak, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.al = and i16 %i.a, 3
  %i.am = icmp eq i16 %i.al, 0
  %or.cond.i14 = and i1 %i.am, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.an = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.an, 0
  %i.ao = srem i16 %i.a, 400
  %i.ap = icmp eq i16 %i.ao, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ap
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.aq = zext nneg i8 %i.c to i64
  %i.ar = add nuw nsw i64 %i.aq, 4294967295
  %i.as = and i64 %i.ar, 4294967295
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !55
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.au, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not30 = icmp ult i8 %.sroa.03.0.i.i17, %i.ak
  br i1 %.not30, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.av = sext i16 %i.a to i32
  %i.aw = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.aw to i32
  %i.ax = add nsw i32 %.neg.i.i, %i.av            ; 4 uses
  %i.ay = zext nneg i8 %i.c to i32
  %i.az = zext i8 %i.ak to i32
  %i.ba = add nsw i32 %i.ax, -399
  %i.bb = icmp slt i32 %i.ax, 0
  %i.bc = select i1 %i.bb, i32 %i.ba, i32 %i.ax
  %i.bd = sdiv i32 %i.bc, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bd, -400
  %i.be = add nsw i32 %.neg15.i.i, %i.ax          ; 3 uses
  %i.bf = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bf, i32 -3, i32 9
  %i.bg = add nsw i32 %.v.i.i, %i.ay
  %i.bh = mul nsw i32 %i.bg, 153
  %i.bi = add nsw i32 %i.bh, 2
  %i.bj = udiv i32 %i.bi, 5
  %i.bk = mul nsw i32 %i.be, 365
  %i.bl = lshr i32 %i.be, 2
  %i.bm = udiv i32 %i.be, 100
  %i.bn = mul nsw i32 %i.bd, 146097
  %i.bo = add nuw nsw i32 %i.az, -719469
  %i.bp = add nsw i32 %i.bo, %i.bj
  %i.bq = add nsw i32 %i.bp, %i.bn
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bk
  %i.bt = sub nsw i32 %i.bs, %i.bm                ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, -5
  %i.bv = add nsw i32 %i.bt, 4
  %.in.i.i = select i1 %i.bu, i32 %i.bv, i32 %i.bt
  %i.bw = urem i32 %.in.i.i, 7
  %i.bx = trunc nuw nsw i32 %i.bw to i8           ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !3528 ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 7
  %i.cb = icmp ne i8 %i.bz, %i.bx
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !44
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !3172
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.l

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !55
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread
  %.sroa.023.0 = phi i8 [ %i.ck, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ], [ %i.bx, %bb.i ]
  %.sroa.023.0.fr = freeze i8 %.sroa.023.0
  %2 = urem i8 %.sroa.023.0.fr, 7
  %3 = zext nneg i8 %2 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %3, %bb.k ]
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

end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  %i.dye = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dyf = load i32, ptr %i.dye, align 4, !tbaa !3521
  %i.dyg = and i32 %i.dyf, 8192
  %.not.i2523 = icmp eq i32 %i.dyg, 0
  br i1 %.not.i2523, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2524, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2150
  %i.dyh = call noundef i32 @_ZSt19uncaught_exceptionsv() #34
  %i.dyi = icmp eq i32 %i.dyh, 0
  br i1 %i.dyi, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2524

bb.aiu:                                           ; preds = %bb.ait
  %i.dyj = load ptr, ptr %5, align 8, !tbaa !3524, !nonnull !98, !align !683 ; 2 uses
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyj, i64 32
  %i.dyl = load i32, ptr %i.dyk, align 8, !tbaa !3172
  %i.dym = icmp eq i32 %i.dyl, 0
  br i1 %i.dym, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2524

bb.aiv:                                           ; preds = %bb.aiu
  %i.dyn = getelementptr inbounds nuw i8, ptr %i.dyj, i64 232
  %i.dyo = load ptr, ptr %i.dyn, align 8, !tbaa !3509 ; 2 uses
  %i.dyp = load ptr, ptr %i.dyo, align 8, !tbaa !44
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dyp, i64 48
  %i.dyr = load ptr, ptr %i.dyq, align 8
  %i.dys = invoke noundef i32 %i.dyr(ptr noundef nonnull align 8 dereferenceable(64) %i.dyo)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2524 unwind label %bb.aiw, !inline_history !3525 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyt = landingpad { ptr, i32 }
          catch ptr null
  %i.dyu = extractvalue { ptr, i32 } %i.dyt, 0
  call void @__clang_call_terminate(ptr %i.dyu) #31
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2524: ; preds = %_ZNSolsEj.exit2150, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kw, %bb.ld, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.ca, %bb.cj, %bb.j, %bb.adi, %bb.adq, %bb.abc, %bb.zq, %bb.zz, %bb.xe, %bb.wd, %bb.wk, %bb.nh, %bb.np, %bb.fc, %bb.fj, %bb.dq, %bb.dx, %bb.agl, %bb.afa, %bb.acx, %bb.ue, %bb.st, %bb.sr, %bb.rq, %bb.qa, %bb.ow, %bb.op, %bb.jl, %bb.ic, %bb.gn, %bb.ar, %bb.u
  %.pn954.pn.pn = phi { ptr, i32 } [ %i.cno, %bb.xr ], [ %i.lc, %bb.j ], [ %lpad.phi2988, %bb.ld ], [ %lpad.phi3038, %bb.u ], [ %lpad.phi3033, %bb.ar ], [ %lpad.phi2923, %bb.adq ], [ %i.dsr, %bb.agl ], [ %lpad.phi3018, %bb.dx ], [ %.pn936.pn, %bb.gn ], [ %.pn932.pn, %bb.ic ], [ %.pn928.pn, %bb.jl ], [ %i.cnb, %bb.xm ], [ %i.ua, %bb.ca ], [ %lpad.phi3008, %bb.fj ], [ %i.bmi, %bb.op ], [ %lpad.phi2973, %bb.ow ], [ %lpad.phi2968, %bb.qa ], [ %i.den, %bb.abk ], [ %lpad.phi2963, %bb.rq ], [ %i.byo, %bb.st ], [ %i.bym, %bb.sr ], [ %lpad.phi2958, %bb.ue ], [ %lpad.phi2978, %bb.np ], [ %lpad.phi2953, %bb.wk ], [ %i.dfa, %bb.abp ], [ %i.ckk, %bb.xe ], [ %lpad.phi2938, %bb.zz ], [ %lpad.phi2928, %bb.acx ], [ %i.dbu, %bb.abc ], [ %.pn862.pn, %bb.afa ], [ %lpad.phi2933, %bb.abt ], [ %.pn944, %bb.dq ], [ %.pn940, %bb.fc ], [ %i.biv, %bb.nh ], [ %i.chi, %bb.wd ], [ %i.btb, %bb.qu ], [ %i.cxx, %bb.zq ], [ %i.cvq, %bb.yz ], [ %i.dkl, %bb.adi ], [ %lpad.phi3028, %bb.cj ], [ %i.dqi, %bb.afk ], [ %.pn919, %bb.mc ], [ %lpad.phi2943, %bb.zd ], [ %i.bsk, %bb.qs ], [ %lpad.phi2948, %bb.xv ], [ %i.azn, %bb.kw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
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
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33

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
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.f
  br i1 %.not, label %.thread26, label %.thread

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i8, ptr %i.q, align 4, !tbaa !3528
  %i.s = icmp ult i8 %i.r, 7
  br i1 %i.s, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i8, ptr %i.t, align 4, !tbaa !3528
  %i.v = icmp ult i8 %i.u, 7
  br i1 %i.v, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !3528
  %i.y = icmp ult i8 %i.x, 7
  br i1 %i.y, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

.thread26:                                        ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !3528
  %i.ab = icmp ult i8 %i.aa, 7
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ac = load ptr, ptr %0, align 8, !tbaa !44
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !3172
  %i.ai = or i32 %i.ah, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef %i.ai)
  br label %bb.l

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !3514 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.ak, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.al = and i16 %i.a, 3
  %i.am = icmp eq i16 %i.al, 0
  %or.cond.i14 = and i1 %i.am, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.an = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.an, 0
  %i.ao = srem i16 %i.a, 400
  %i.ap = icmp eq i16 %i.ao, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ap
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.aq = zext nneg i8 %i.c to i64
  %i.ar = add nuw nsw i64 %i.aq, 4294967295
  %i.as = and i64 %i.ar, 4294967295
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !55
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.au, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not30 = icmp ult i8 %.sroa.03.0.i.i17, %i.ak
  br i1 %.not30, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.av = sext i16 %i.a to i32
  %i.aw = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.aw to i32
  %i.ax = add nsw i32 %.neg.i.i, %i.av            ; 4 uses
  %i.ay = zext nneg i8 %i.c to i32
  %i.az = zext i8 %i.ak to i32
  %i.ba = add nsw i32 %i.ax, -399
  %i.bb = icmp slt i32 %i.ax, 0
  %i.bc = select i1 %i.bb, i32 %i.ba, i32 %i.ax
  %i.bd = sdiv i32 %i.bc, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bd, -400
  %i.be = add nsw i32 %.neg15.i.i, %i.ax          ; 3 uses
  %i.bf = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bf, i32 -3, i32 9
  %i.bg = add nsw i32 %.v.i.i, %i.ay
  %i.bh = mul nsw i32 %i.bg, 153
  %i.bi = add nsw i32 %i.bh, 2
  %i.bj = udiv i32 %i.bi, 5
  %i.bk = mul nsw i32 %i.be, 365
  %i.bl = lshr i32 %i.be, 2
  %i.bm = udiv i32 %i.be, 100
  %i.bn = mul nsw i32 %i.bd, 146097
  %i.bo = add nuw nsw i32 %i.az, -719469
  %i.bp = add nsw i32 %i.bo, %i.bj
  %i.bq = add nsw i32 %i.bp, %i.bn
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bk
  %i.bt = sub nsw i32 %i.bs, %i.bm                ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, -5
  %i.bv = add nsw i32 %i.bt, 4
  %.in.i.i = select i1 %i.bu, i32 %i.bv, i32 %i.bt
  %i.bw = urem i32 %.in.i.i, 7
  %i.bx = trunc nuw nsw i32 %i.bw to i8           ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !3528 ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 7
  %i.cb = icmp ne i8 %i.bz, %i.bx
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !44
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !3172
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.l

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !55
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread
  %.sroa.023.0 = phi i8 [ %i.ck, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ], [ %i.bx, %bb.i ]
  %.sroa.023.0.fr = freeze i8 %.sroa.023.0
  %2 = urem i8 %.sroa.023.0.fr, 7
  %3 = zext nneg i8 %2 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %3, %bb.k ]
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

end_hunk_4
