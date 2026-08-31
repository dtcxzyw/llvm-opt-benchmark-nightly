Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemoryMapper?download=true
inline.NumInlined: 2838
inline.NumDeleted: 1442
begin_hunk_0_@"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionBufferEEEC1IZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_15SPSExecutorAddrEEESC_SC_NS3_8SPSTupleIJNS3_11SPSSequenceINSE_IJNS3_19SPSRemoteAllocGroupESC_mEEEEENSF_INSE_IJNSE_IJSC_NSF_IcEEEEESK_EEEEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncISO_S8_ZNS2_18SharedMemoryMapper10initializeERNS2_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS2_12ExecutorAddrEEEEEEE3$_0JSY_SY_NS2_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SY_OT1_DpRKT2_EUlOT_PKcmE_S12_JSY_SY_S14_EEEvS1E_S16_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1E_EUlS4_E_S1O_EES1D_NS5_8CalledAsIS15_EEENUlPKS5_RS4_E_8__invokeES1S_S1T_":bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !586, !noalias !742
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i64 0, ptr %i.r, align 8, !tbaa !590, !noalias !742
  store i8 0, ptr %i.q, align 8, !tbaa !168, !noalias !742
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store ptr @.str.7, ptr %i.s, align 8, !tbaa !748, !noalias !742
  store ptr %i.j, ptr %2, align 8, !tbaa !676
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nofree noundef nonnull align 8 dereferenceable(8) %2) #26, !inline_history !751
  %i.w = load ptr, ptr %2, align 8, !tbaa !680    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4llvm3orc16GenericNamedTaskESt14default_deleteIS2_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4llvm3orc4TaskEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm3orc4TaskEEclEPS2_.exit.i.i.i: ; preds = %"_ZN4llvm3orc20makeGenericNamedTaskIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_S8_NS5_8SPSTupleIJNS5_11SPSSequenceINSA_IJNS5_19SPSRemoteAllocGroupES8_mEEEEENSB_INSA_IJNSA_IJS8_NSB_IcEEEEESG_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISK_S3_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSU_SU_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SU_OT1_DpRKT2_EUlOT_PKcmE_SY_JSU_SU_S10_EEEvS1A_S12_DpRKT1_EUlNS5_21WrapperFunctionBufferEE_EENS2_18IncomingWFRHandlerES1A_ENUlS1I_E_clES1I_EUlvE_EESt10unique_ptrINS0_16GenericNamedTaskESt14default_deleteIS1O_EES1A_S1C_.exit.i.i"
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #26, !inline_history !752
  br label %_ZNSt10unique_ptrIN4llvm3orc16GenericNamedTaskESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4llvm3orc16GenericNamedTaskESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm3orc4TaskEEclEPS2_.exit.i.i.i, %"_ZN4llvm3orc20makeGenericNamedTaskIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_S8_NS5_8SPSTupleIJNS5_11SPSSequenceINSA_IJNS5_19SPSRemoteAllocGroupES8_mEEEEENSB_INSA_IJNSA_IJS8_NSB_IcEEEEESG_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISK_S3_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSU_SU_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SU_OT1_DpRKT2_EUlOT_PKcmE_SY_JSU_SU_S10_EEEvS1A_S12_DpRKT1_EUlNS5_21WrapperFunctionBufferEE_EENS2_18IncomingWFRHandlerES1A_ENUlS1I_E_clES1I_EUlvE_EESt10unique_ptrINS0_16GenericNamedTaskESt14default_deleteIS1O_EES1A_S1C_.exit.i.i"
  %i.aa = load i64, ptr %.sroa.5.0..sroa_idx2.i, align 8, !tbaa !316 ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 8
  %.pre.i.i.i.i = load ptr, ptr %i.i, align 8     ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm3orc16GenericNamedTaskESt14default_deleteIS2_EED2Ev.exit.i.i
  %i.ac = icmp ne i64 %i.aa, 0
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  %or.cond.i.i.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm3orc6shared21WrapperFunctionBufferD2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt10unique_ptrIN4llvm3orc16GenericNamedTaskESt14default_deleteIS2_EED2Ev.exit.i.i
  call void @free(ptr noundef %.pre.i.i.i.i) #26
  br label %_ZN4llvm3orc6shared21WrapperFunctionBufferD2Ev.exit.i.i.i

_ZN4llvm3orc6shared21WrapperFunctionBufferD2Ev.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i.i2.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i2.i.i, label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionBufferEEEC1IZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_15SPSExecutorAddrEEESC_SC_NS3_8SPSTupleIJNS3_11SPSSequenceINSE_IJNS3_19SPSRemoteAllocGroupESC_mEEEEENSF_INSE_IJNSE_IJSC_NSF_IcEEEEESK_EEEEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncISO_S8_ZNS2_18SharedMemoryMapper10initializeERNS2_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS2_12ExecutorAddrEEEEEEE3$_0JSY_SY_NS2_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SY_OT1_DpRKT2_EUlOT_PKcmE_S12_JSY_SY_S14_EEEvS1E_S16_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1E_EUlS4_E_S1O_EES1D_NS5_8CalledAsIS15_EEENKUlPKS5_RS4_E_clES1S_S1T_.exit", label %bb.h

bb.h:                                             ; preds = %_ZN4llvm3orc6shared21WrapperFunctionBufferD2Ev.exit.i.i.i
  call void %i.ad(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(56) %3) #26, !inline_history !753
  br label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionBufferEEEC1IZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_15SPSExecutorAddrEEESC_SC_NS3_8SPSTupleIJNS3_11SPSSequenceINSE_IJNS3_19SPSRemoteAllocGroupESC_mEEEEENSF_INSE_IJNSE_IJSC_NSF_IcEEEEESK_EEEEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncISO_S8_ZNS2_18SharedMemoryMapper10initializeERNS2_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS2_12ExecutorAddrEEEEEEE3$_0JSY_SY_NS2_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SY_OT1_DpRKT2_EUlOT_PKcmE_S12_JSY_SY_S14_EEEvS1E_S16_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1E_EUlS4_E_S1O_EES1D_NS5_8CalledAsIS15_EEENKUlPKS5_RS4_E_clES1S_S1T_.exit"

"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_3orc6shared21WrapperFunctionBufferEEEC1IZNS2_22ExecutorProcessControl9RunAsTaskclIZNS3_15WrapperFunctionIFNS3_11SPSExpectedINS3_15SPSExecutorAddrEEESC_SC_NS3_8SPSTupleIJNS3_11SPSSequenceINSE_IJNS3_19SPSRemoteAllocGroupESC_mEEEEENSF_INSE_IJNSE_IJSC_NSF_IcEEEEESK_EEEEEEEEEE9callAsyncIZNS7_19callSPSWrapperAsyncISO_S8_ZNS2_18SharedMemoryMapper10initializeERNS2_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS2_12ExecutorAddrEEEEEEE3$_0JSY_SY_NS2_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SY_OT1_DpRKT2_EUlOT_PKcmE_S12_JSY_SY_S14_EEEvS1E_S16_DpRKT1_EUlS4_E_EENS7_18IncomingWFRHandlerES1E_EUlS4_E_S1O_EES1D_NS5_8CalledAsIS15_EEENKUlPKS5_RS4_E_clES1S_S1T_.exit": ; preds = %_ZN4llvm3orc6shared21WrapperFunctionBufferD2Ev.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_S8_NS5_8SPSTupleIJNS5_11SPSSequenceINSA_IJNS5_19SPSRemoteAllocGroupES8_mEEEEENSB_INSA_IJNSA_IJS8_NSB_IcEEEEESG_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISK_S3_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSU_SU_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SU_OT1_DpRKT2_EUlOT_PKcmE_SY_JSU_SU_S10_EEEvS1A_S12_DpRKT1_EUlNS5_21WrapperFunctionBufferEE_EENS2_18IncomingWFRHandlerES1A_ENUlS1I_E_clES1I_EUlvE_ED2Ev"(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #19 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @"_ZTVN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_S8_NS5_8SPSTupleIJNS5_11SPSSequenceINSA_IJNS5_19SPSRemoteAllocGroupES8_mEEEEENSB_INSA_IJNSA_IJS8_NSB_IcEEEEESG_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISK_S3_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSU_SU_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SU_OT1_DpRKT2_EUlOT_PKcmE_SY_JSU_SU_S10_EEEvS1A_S12_DpRKT1_EUlNS5_21WrapperFunctionBufferEE_EENS2_18IncomingWFRHandlerES1A_ENUlS1I_E_clES1I_EUlvE_EE", i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !588  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !168
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !316  ; 2 uses
  %i.k = icmp ugt i64 %i.j, 8
  %.pre.i.i = load ptr, ptr %i.h, align 8         ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = icmp ne i64 %i.j, 0
  %.not.i.i = icmp eq ptr %.pre.i.i, null
  %or.cond.i.i = select i1 %i.l, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZN4llvm3orc6shared21WrapperFunctionBufferD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @free(ptr noundef %.pre.i.i) #26
  br label %_ZN4llvm3orc6shared21WrapperFunctionBufferD2Ev.exit.i

_ZN4llvm3orc6shared21WrapperFunctionBufferD2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !314  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %"_ZZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_11SPSExpectedINS4_15SPSExecutorAddrEEES7_S7_NS4_8SPSTupleIJNS4_11SPSSequenceINS9_IJNS4_19SPSRemoteAllocGroupES7_mEEEEENSA_INS9_IJNS9_IJS7_NSA_IcEEEEESF_EEEEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncISJ_S2_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JST_ST_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_ST_OT1_DpRKT2_EUlOT_PKcmE_SX_JST_ST_SZ_EEEvS19_S11_DpRKT1_EUlNS4_21WrapperFunctionBufferEE_EENS1_18IncomingWFRHandlerES19_ENUlS1H_E_clES1H_ENUlvE_D2Ev.exit", label %bb.d

bb.d:                                             ; preds = %_ZN4llvm3orc6shared21WrapperFunctionBufferD2Ev.exit.i
  tail call void %i.n(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(56) %i.g) #26, !inline_history !754
  br label %"_ZZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_11SPSExpectedINS4_15SPSExecutorAddrEEES7_S7_NS4_8SPSTupleIJNS4_11SPSSequenceINS9_IJNS4_19SPSRemoteAllocGroupES7_mEEEEENSA_INS9_IJNS9_IJS7_NSA_IcEEEEESF_EEEEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncISJ_S2_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JST_ST_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_ST_OT1_DpRKT2_EUlOT_PKcmE_SX_JST_ST_SZ_EEEvS19_S11_DpRKT1_EUlNS4_21WrapperFunctionBufferEE_EENS1_18IncomingWFRHandlerES19_ENUlS1H_E_clES1H_ENUlvE_D2Ev.exit"

"_ZZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_11SPSExpectedINS4_15SPSExecutorAddrEEES7_S7_NS4_8SPSTupleIJNS4_11SPSSequenceINS9_IJNS4_19SPSRemoteAllocGroupES7_mEEEEENSA_INS9_IJNS9_IJS7_NSA_IcEEEEESF_EEEEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncISJ_S2_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JST_ST_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_ST_OT1_DpRKT2_EUlOT_PKcmE_SX_JST_ST_SZ_EEEvS19_S11_DpRKT1_EUlNS4_21WrapperFunctionBufferEE_EENS1_18IncomingWFRHandlerES19_ENUlS1H_E_clES1H_ENUlvE_D2Ev.exit": ; preds = %_ZN4llvm3orc6shared21WrapperFunctionBufferD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_S8_NS5_8SPSTupleIJNS5_11SPSSequenceINSA_IJNS5_19SPSRemoteAllocGroupES8_mEEEEENSB_INSA_IJNSA_IJS8_NSB_IcEEEEESG_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISK_S3_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSU_SU_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SU_OT1_DpRKT2_EUlOT_PKcmE_SY_JSU_SU_S10_EEEvS1A_S12_DpRKT1_EUlNS5_21WrapperFunctionBufferEE_EENS2_18IncomingWFRHandlerES1A_ENUlS1I_E_clES1I_EUlvE_ED0Ev"(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #19 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @"_ZTVN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_S8_NS5_8SPSTupleIJNS5_11SPSSequenceINSA_IJNS5_19SPSRemoteAllocGroupES8_mEEEEENSB_INSA_IJNSA_IJS8_NSB_IcEEEEESG_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISK_S3_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSU_SU_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SU_OT1_DpRKT2_EUlOT_PKcmE_SY_JSU_SU_S10_EEEvS1A_S12_DpRKT1_EUlNS5_21WrapperFunctionBufferEE_EENS2_18IncomingWFRHandlerES1A_ENUlS1I_E_clES1I_EUlvE_EE", i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !588  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !168
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29, !inline_history !755
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !316  ; 2 uses
  %i.k = icmp ugt i64 %i.j, 8
  %.pre.i.i.i = load ptr, ptr %i.h, align 8       ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.l = icmp ne i64 %i.j, 0
  %.not.i.i.i = icmp eq ptr %.pre.i.i.i, null
  %or.cond.i.i.i = select i1 %i.l, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4llvm3orc6shared21WrapperFunctionBufferD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  tail call void @free(ptr noundef %.pre.i.i.i) #26, !inline_history !755
  br label %_ZN4llvm3orc6shared21WrapperFunctionBufferD2Ev.exit.i.i

_ZN4llvm3orc6shared21WrapperFunctionBufferD2Ev.exit.i.i: ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !314  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %"_ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_S8_NS5_8SPSTupleIJNS5_11SPSSequenceINSA_IJNS5_19SPSRemoteAllocGroupES8_mEEEEENSB_INSA_IJNSA_IJS8_NSB_IcEEEEESG_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISK_S3_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSU_SU_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SU_OT1_DpRKT2_EUlOT_PKcmE_SY_JSU_SU_S10_EEEvS1A_S12_DpRKT1_EUlNS5_21WrapperFunctionBufferEE_EENS2_18IncomingWFRHandlerES1A_ENUlS1I_E_clES1I_EUlvE_ED2Ev.exit", label %bb.d

bb.d:                                             ; preds = %_ZN4llvm3orc6shared21WrapperFunctionBufferD2Ev.exit.i.i
  tail call void %i.n(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(56) %i.g) #26, !inline_history !756
  br label %"_ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_S8_NS5_8SPSTupleIJNS5_11SPSSequenceINSA_IJNS5_19SPSRemoteAllocGroupES8_mEEEEENSB_INSA_IJNSA_IJS8_NSB_IcEEEEESG_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISK_S3_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSU_SU_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SU_OT1_DpRKT2_EUlOT_PKcmE_SY_JSU_SU_S10_EEEvS1A_S12_DpRKT1_EUlNS5_21WrapperFunctionBufferEE_EENS2_18IncomingWFRHandlerES1A_ENUlS1I_E_clES1I_EUlvE_ED2Ev.exit"

"_ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_S8_NS5_8SPSTupleIJNS5_11SPSSequenceINSA_IJNS5_19SPSRemoteAllocGroupES8_mEEEEENSB_INSA_IJNSA_IJS8_NSB_IcEEEEESG_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISK_S3_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSU_SU_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SU_OT1_DpRKT2_EUlOT_PKcmE_SY_JSU_SU_S10_EEEvS1A_S12_DpRKT1_EUlNS5_21WrapperFunctionBufferEE_EENS2_18IncomingWFRHandlerES1A_ENUlS1I_E_clES1I_EUlvE_ED2Ev.exit": ; preds = %_ZN4llvm3orc6shared21WrapperFunctionBufferD2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_S8_NS5_8SPSTupleIJNS5_11SPSSequenceINSA_IJNS5_19SPSRemoteAllocGroupES8_mEEEEENSB_INSA_IJNSA_IJS8_NSB_IcEEEEESG_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISK_S3_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSU_SU_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SU_OT1_DpRKT2_EUlOT_PKcmE_SY_JSU_SU_S10_EEEvS1A_S12_DpRKT1_EUlNS5_21WrapperFunctionBufferEE_EENS2_18IncomingWFRHandlerES1A_ENUlS1I_E_clES1I_EUlvE_E16printDescriptionERNS_11raw_ostreamE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !748  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #26 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !686
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !690  ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.b, i64 noundef %i.c) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %.not.i2.i = icmp eq i64 %i.c, 0
  br i1 %.not.i2.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.b, i64 %i.c, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !690
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c
  store ptr %i.n, ptr %i.f, align 8, !tbaa !690
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm3orc20GenericNamedTaskImplIZZNS0_22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS5_11SPSExpectedINS5_15SPSExecutorAddrEEES8_S8_NS5_8SPSTupleIJNS5_11SPSSequenceINSA_IJNS5_19SPSRemoteAllocGroupES8_mEEEEENSB_INSA_IJNSA_IJS8_NSB_IcEEEEESG_EEEEEEEEEE9callAsyncIZNS2_19callSPSWrapperAsyncISK_S3_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSU_SU_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SU_OT1_DpRKT2_EUlOT_PKcmE_SY_JSU_SU_S10_EEEvS1A_S12_DpRKT1_EUlNS5_21WrapperFunctionBufferEE_EENS2_18IncomingWFRHandlerES1A_ENUlS1I_E_clES1I_EUlvE_E3runEv"(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.llvm::Expected.30", align 8 ; 6 uses
  %2 = alloca %"class.llvm::Expected.30", align 8 ; 6 uses
  %3 = alloca %"class.llvm::Expected.30", align 8 ; 6 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Expected.30", align 8 ; 9 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 7 uses
  %7 = alloca %"class.llvm::orc::shared::WrapperFunctionBuffer", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !667
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.d = load i8, ptr %i.c, align 8, !alias.scope !757
  %i.e = and i8 %i.d, -2
  store i8 %i.e, ptr %i.c, align 8, !alias.scope !757
  store i64 0, ptr %5, align 8, !tbaa !58, !alias.scope !757
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !316  ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = load ptr, ptr %7, align 8                ; 4 uses
  %.not78.i.i = icmp eq ptr %i.i, null
  %.not.i.i = select i1 %i.h, i1 true, i1 %.not78.i.i
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #26 ; 2 uses
  %i.k = extractvalue { i32, ptr } %i.j, 0
  %i.l = extractvalue { i32, ptr } %i.j, 1
  %i.m = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27, !noalias !760 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !760
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !324, !noalias !760
  %i.o = load i8, ptr %i.i, align 1, !tbaa !168, !noalias !760
  %.not.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.i, ptr %4, align 8, !tbaa !168, !noalias !760
  br label %_ZN4llvm5ErrorD2Ev.exit.i.i.i

_ZN4llvm5ErrorD2Ev.exit.i.i.i:                    ; preds = %bb.c, %bb.b
  %storemerge.i.i.i.i.i = phi i8 [ 3, %bb.c ], [ 1, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 %storemerge.i.i.i.i.i, ptr %i.p, align 8, !tbaa !327, !noalias !760
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull align 8 dereferenceable(34) %4, i32 %i.k, ptr %i.l) #26, !noalias !760
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i8 -1, ptr %i.q, align 8
  store ptr %i.m, ptr %3, align 8, !tbaa !22, !alias.scope !765
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3) #26, !inline_history !768
  %i.t = load i8, ptr %i.q, align 8
  %i.u = trunc i8 %i.t to i1
  %i.v = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i.i6.i.i = icmp ne ptr %i.v, null
  %or.cond.not.i.i.i = select i1 %i.u, i1 %.not.i.i.i6.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEED2Ev.exit.sink.split.i.i.i, label %"_ZZN4llvm3orc18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEEN3$_0clENS_5ErrorES8_.exit.i.i"

_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEED2Ev.exit.sink.split.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i.i.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #26, !inline_history !769
  br label %"_ZZN4llvm3orc18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEEN3$_0clENS_5ErrorES8_.exit.i.i"

"_ZZN4llvm3orc18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEEN3$_0clENS_5ErrorES8_.exit.i.i": ; preds = %_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEED2Ev.exit.sink.split.i.i.i, %_ZN4llvm5ErrorD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN4llvm5ErrorD2Ev.exit.i.i

.critedge.i.i:                                    ; preds = %bb.a
  %i.z = icmp ugt i64 %i.g, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.aa = select i1 %i.z, ptr %i.i, ptr %7
  call void @_ZN4llvm3orc6shared6detail18ResultDeserializerINS1_11SPSExpectedINS1_15SPSExecutorAddrEEENS_8ExpectedINS0_12ExecutorAddrEEEE11deserializeERS9_PKcm(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %6, ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef %i.aa, i64 noundef %i.g)
  %i.ab = load ptr, ptr %6, align 8, !tbaa !41    ; 2 uses
  %.not79.i.i = icmp eq ptr %i.ab, null
  br i1 %.not79.i.i, label %_ZN4llvm5ErrorD2Ev.exit27.i.i, label %bb.d

bb.d:                                             ; preds = %.critedge.i.i
  store ptr null, ptr %6, align 8, !tbaa !41
  %i.ac = load i8, ptr %i.c, align 8
  %i.ad = trunc i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %_ZN4llvm5ErrorD2Ev.exit.i10.i.i

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %5, align 8, !tbaa !22
  br label %_ZN4llvm5ErrorD2Ev.exit.i10.i.i

_ZN4llvm5ErrorD2Ev.exit.i10.i.i:                  ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i8 -1, ptr %i.ae, align 8
  store ptr %i.ab, ptr %2, align 8, !tbaa !22, !alias.scope !770
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !73
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2) #26, !inline_history !768
  %i.ah = load i8, ptr %i.ae, align 8
  %i.ai = trunc i8 %i.ah to i1
  %i.aj = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i12.i.i = icmp ne ptr %i.aj, null
  %or.cond.not.i13.i.i = select i1 %i.ai, i1 %.not.i.i.i12.i.i, i1 false
  br i1 %or.cond.not.i13.i.i, label %_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEED2Ev.exit.sink.split.i14.i.i, label %"_ZZN4llvm3orc18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEEN3$_0clENS_5ErrorES8_.exit21.i.i"

_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEED2Ev.exit.sink.split.i14.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i10.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #26, !inline_history !769
  br label %"_ZZN4llvm3orc18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEEN3$_0clENS_5ErrorES8_.exit21.i.i"

"_ZZN4llvm3orc18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEEN3$_0clENS_5ErrorES8_.exit21.i.i": ; preds = %_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEED2Ev.exit.sink.split.i14.i.i, %_ZN4llvm5ErrorD2Ev.exit.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.an = load ptr, ptr %6, align 8, !tbaa !41    ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN4llvm5ErrorD2Ev.exit26.i.i, label %bb.f

bb.f:                                             ; preds = %"_ZZN4llvm3orc18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEEN3$_0clENS_5ErrorES8_.exit21.i.i"
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #26, !inline_history !773
  br label %_ZN4llvm5ErrorD2Ev.exit26.i.i

_ZN4llvm5ErrorD2Ev.exit26.i.i:                    ; preds = %bb.f, %"_ZZN4llvm3orc18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEEN3$_0clENS_5ErrorES8_.exit21.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN4llvm5ErrorD2Ev.exit.i.i

_ZN4llvm5ErrorD2Ev.exit27.i.i:                    ; preds = %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.as = load i8, ptr %i.c, align 8              ; 2 uses
  %i.at = and i8 %i.as, 1
  %i.au = trunc i8 %i.as to i1
  %i.av = load i64, ptr %5, align 8, !tbaa !168
  br i1 %i.au, label %bb.g, label %_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEEC2EOS3_.exit.i38.i.i

bb.g:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit27.i.i
  store ptr null, ptr %5, align 8, !tbaa !22
  br label %_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEEC2EOS3_.exit.i38.i.i

_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEEC2EOS3_.exit.i38.i.i: ; preds = %bb.g, %_ZN4llvm5ErrorD2Ev.exit27.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i8 %i.at, ptr %i.aw, align 8
  store i64 %i.av, ptr %1, align 8, !tbaa !168
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !73
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !768
  %i.az = load i8, ptr %i.aw, align 8
  %i.ba = trunc i8 %i.az to i1
  %i.bb = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i3.i39.i.i = icmp ne ptr %i.bb, null
  %or.cond15.not.i40.i.i = select i1 %i.ba, i1 %.not.i.i3.i39.i.i, i1 false
  br i1 %or.cond15.not.i40.i.i, label %_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEED2Ev.exit.sink.split.i34.i.i, label %"_ZZN4llvm3orc18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEEN3$_0clENS_5ErrorES8_.exit41.i.i"

_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEED2Ev.exit.sink.split.i34.i.i: ; preds = %_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEEC2EOS3_.exit.i38.i.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #26, !inline_history !769
  br label %"_ZZN4llvm3orc18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEEN3$_0clENS_5ErrorES8_.exit41.i.i"

"_ZZN4llvm3orc18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEEN3$_0clENS_5ErrorES8_.exit41.i.i": ; preds = %_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEED2Ev.exit.sink.split.i34.i.i, %_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEEC2EOS3_.exit.i38.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %_ZN4llvm5ErrorD2Ev.exit.i.i

_ZN4llvm5ErrorD2Ev.exit.i.i:                      ; preds = %"_ZZN4llvm3orc18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEEN3$_0clENS_5ErrorES8_.exit41.i.i", %_ZN4llvm5ErrorD2Ev.exit26.i.i, %"_ZZN4llvm3orc18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEEN3$_0clENS_5ErrorES8_.exit.i.i"
  %i.bf = load i8, ptr %i.c, align 8
  %i.bg = trunc i8 %i.bf to i1
  br i1 %i.bg, label %bb.h, label %"_ZZN4llvm3orc6shared15WrapperFunctionIFNS1_11SPSExpectedINS1_15SPSExecutorAddrEEES4_S4_NS1_8SPSTupleIJNS1_11SPSSequenceINS6_IJNS1_19SPSRemoteAllocGroupES4_mEEEEENS7_INS6_IJNS6_IJS4_NS7_IcEEEEESC_EEEEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncISG_NSJ_9RunAsTaskEZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSS_SS_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SS_OT1_DpRKT2_EUlOT_PKcmE_SW_JSS_SS_SY_EEEvS18_S10_DpRKT1_ENUlNS1_21WrapperFunctionBufferEE_clES1G_.exit.i"

bb.h:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit.i.i
  %i.bh = load ptr, ptr %5, align 8, !tbaa !22    ; 3 uses
  %.not.i.i47.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i47.i.i, label %"_ZZN4llvm3orc6shared15WrapperFunctionIFNS1_11SPSExpectedINS1_15SPSExecutorAddrEEES4_S4_NS1_8SPSTupleIJNS1_11SPSSequenceINS6_IJNS1_19SPSRemoteAllocGroupES4_mEEEEENS7_INS6_IJNS6_IJS4_NS7_IcEEEEESC_EEEEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncISG_NSJ_9RunAsTaskEZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSS_SS_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SS_OT1_DpRKT2_EUlOT_PKcmE_SW_JSS_SS_SY_EEEvS18_S10_DpRKT1_ENUlNS1_21WrapperFunctionBufferEE_clES1G_.exit.i", label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i48.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i48.i.i: ; preds = %bb.h
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) #26, !inline_history !774
  br label %"_ZZN4llvm3orc6shared15WrapperFunctionIFNS1_11SPSExpectedINS1_15SPSExecutorAddrEEES4_S4_NS1_8SPSTupleIJNS1_11SPSSequenceINS6_IJNS1_19SPSRemoteAllocGroupES4_mEEEEENS7_INS6_IJNS6_IJS4_NS7_IcEEEEESC_EEEEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncISG_NSJ_9RunAsTaskEZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSS_SS_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SS_OT1_DpRKT2_EUlOT_PKcmE_SW_JSS_SS_SY_EEEvS18_S10_DpRKT1_ENUlNS1_21WrapperFunctionBufferEE_clES1G_.exit.i"

"_ZZN4llvm3orc6shared15WrapperFunctionIFNS1_11SPSExpectedINS1_15SPSExecutorAddrEEES4_S4_NS1_8SPSTupleIJNS1_11SPSSequenceINS6_IJNS1_19SPSRemoteAllocGroupES4_mEEEEENS7_INS6_IJNS6_IJS4_NS7_IcEEEEESC_EEEEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncISG_NSJ_9RunAsTaskEZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSS_SS_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SS_OT1_DpRKT2_EUlOT_PKcmE_SW_JSS_SS_SY_EEEvS18_S10_DpRKT1_ENUlNS1_21WrapperFunctionBufferEE_clES1G_.exit.i": ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i48.i.i, %bb.h, %_ZN4llvm5ErrorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.bl = load i64, ptr %i.f, align 8, !tbaa !316 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, 8
  %.pre.i.i = load ptr, ptr %7, align 8           ; 2 uses
  br i1 %i.bm, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZZN4llvm3orc6shared15WrapperFunctionIFNS1_11SPSExpectedINS1_15SPSExecutorAddrEEES4_S4_NS1_8SPSTupleIJNS1_11SPSSequenceINS6_IJNS1_19SPSRemoteAllocGroupES4_mEEEEENS7_INS6_IJNS6_IJS4_NS7_IcEEEEESC_EEEEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncISG_NSJ_9RunAsTaskEZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSS_SS_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SS_OT1_DpRKT2_EUlOT_PKcmE_SW_JSS_SS_SY_EEEvS18_S10_DpRKT1_ENUlNS1_21WrapperFunctionBufferEE_clES1G_.exit.i"
  %i.bn = icmp ne i64 %i.bl, 0
  %.not.i1.i = icmp eq ptr %.pre.i.i, null
  %or.cond.i.i = select i1 %i.bn, i1 true, i1 %.not.i1.i
  br i1 %or.cond.i.i, label %"_ZZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_11SPSExpectedINS4_15SPSExecutorAddrEEES7_S7_NS4_8SPSTupleIJNS4_11SPSSequenceINS9_IJNS4_19SPSRemoteAllocGroupES7_mEEEEENSA_INS9_IJNS9_IJS7_NSA_IcEEEEESF_EEEEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncISJ_S2_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JST_ST_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_ST_OT1_DpRKT2_EUlOT_PKcmE_SX_JST_ST_SZ_EEEvS19_S11_DpRKT1_EUlNS4_21WrapperFunctionBufferEE_EENS1_18IncomingWFRHandlerES19_ENUlS1H_E_clES1H_ENUlvE_clEv.exit", label %bb.j

bb.j:                                             ; preds = %bb.i, %"_ZZN4llvm3orc6shared15WrapperFunctionIFNS1_11SPSExpectedINS1_15SPSExecutorAddrEEES4_S4_NS1_8SPSTupleIJNS1_11SPSSequenceINS6_IJNS1_19SPSRemoteAllocGroupES4_mEEEEENS7_INS6_IJNS6_IJS4_NS7_IcEEEEESC_EEEEEEEEEE9callAsyncIZNS0_22ExecutorProcessControl19callSPSWrapperAsyncISG_NSJ_9RunAsTaskEZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JSS_SS_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_SS_OT1_DpRKT2_EUlOT_PKcmE_SW_JSS_SS_SY_EEEvS18_S10_DpRKT1_ENUlNS1_21WrapperFunctionBufferEE_clES1G_.exit.i"
  call void @free(ptr noundef %.pre.i.i) #26
  br label %"_ZZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_11SPSExpectedINS4_15SPSExecutorAddrEEES7_S7_NS4_8SPSTupleIJNS4_11SPSSequenceINS9_IJNS4_19SPSRemoteAllocGroupES7_mEEEEENSA_INS9_IJNS9_IJS7_NSA_IcEEEEESF_EEEEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncISJ_S2_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JST_ST_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_ST_OT1_DpRKT2_EUlOT_PKcmE_SX_JST_ST_SZ_EEEvS19_S11_DpRKT1_EUlNS4_21WrapperFunctionBufferEE_EENS1_18IncomingWFRHandlerES19_ENUlS1H_E_clES1H_ENUlvE_clEv.exit"

"_ZZZN4llvm3orc22ExecutorProcessControl9RunAsTaskclIZNS0_6shared15WrapperFunctionIFNS4_11SPSExpectedINS4_15SPSExecutorAddrEEES7_S7_NS4_8SPSTupleIJNS4_11SPSSequenceINS9_IJNS4_19SPSRemoteAllocGroupES7_mEEEEENSA_INS9_IJNS9_IJS7_NSA_IcEEEEESF_EEEEEEEEEE9callAsyncIZNS1_19callSPSWrapperAsyncISJ_S2_ZNS0_18SharedMemoryMapper10initializeERNS0_12MemoryMapper9AllocInfoENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEE3$_0JST_ST_NS0_8tpctypes27SharedMemoryFinalizeRequestEEEEvOT0_ST_OT1_DpRKT2_EUlOT_PKcmE_SX_JST_ST_SZ_EEEvS19_S11_DpRKT1_EUlNS4_21WrapperFunctionBufferEE_EENS1_18IncomingWFRHandlerES19_ENUlS1H_E_clES1H_ENUlvE_clEv.exit": ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc6shared6detail18ResultDeserializerINS1_11SPSExpectedINS1_15SPSExecutorAddrEEENS_8ExpectedINS0_12ExecutorAddrEEEE11deserializeERS9_PKcm(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"struct.llvm::orc::shared::detail::SPSSerializableExpected.247", align 8 ; 9 uses
  %7 = alloca %"struct.llvm::orc::shared::detail::SPSSerializableExpected.247", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i8 0, ptr %6, align 8, !tbaa !775
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !586
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  store i64 0, ptr %i.d, align 8, !tbaa !590
  store i8 0, ptr %i.c, align 8, !tbaa !168
  %.not.i.not.i = icmp eq i64 %3, 0
  br i1 %.not.i.not.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i.i.i = load i8, ptr %2, align 1   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 %.0.copyload.i.i.i, ptr %6, align 8, !tbaa !357
  %i.f = trunc nuw i8 %.0.copyload.i.i.i to i1
  %i.g = add i64 %3, -9
  %i.h = icmp ult i64 %i.g, -8                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 1
  store i64 %.0.copyload.i.i.i.i.i, ptr %i.a, align 8, !tbaa !58
  br label %_ZN4llvm3orc6shared22SPSSerializationTraitsINS1_11SPSExpectedINS1_15SPSExecutorAddrEEENS1_6detail23SPSSerializableExpectedINS0_12ExecutorAddrEEEvE11deserializeERNS1_14SPSInputBufferERS9_.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.0.copyload.i.i.i.i8.i = load i64, ptr %i.e, align 1 ; 3 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %.0.copyload.i.i.i.i8.i) #26
  %.not21.i.i.i = icmp eq i64 %.0.copyload.i.i.i.i8.i, 0
  br i1 %.not21.i.i.i, label %_ZN4llvm3orc6shared22SPSSerializationTraitsINS1_11SPSExpectedINS1_15SPSExecutorAddrEEENS1_6detail23SPSSerializableExpectedINS0_12ExecutorAddrEEEvE11deserializeERNS1_14SPSInputBufferERS9_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f
  %i.i = add i64 %3, -9
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 9
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.i
  %.sroa.012.0 = phi ptr [ %i.k, %bb.i ], [ %i.j, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %i.l, %bb.i ], [ %i.i, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.022.i.i.i = phi i64 [ %i.y, %bb.i ], [ 0, %.lr.ph.i.i.i.preheader ]
  %.not.i.not.not.i.not.i.not.i = icmp eq i64 %.sroa.9.0, 0
  br i1 %.not.i.not.not.i.not.i.not.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %.0.copyload.i.i12.i.i.i = load i8, ptr %.sroa.012.0, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 1
  %i.l = add i64 %.sroa.9.0, -1
  %i.m = load i64, ptr %i.d, align 8, !tbaa !590  ; 4 uses
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !588  ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.g
  %i.q = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.r = load i64, ptr %i.c, align 8, !tbaa !168
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %i.t = icmp ugt i64 %i.n, %i.s
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.m, i64 noundef 0, ptr noundef null, i64 noundef 1) #26
  %.pre.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !588
  br label %bb.i
end_hunk_0
