inline.NumInlined: 5607
inline.NumDeleted: 3138
begin_hunk_0_@_ZN2v88internal4wasm12NativeModule12SetWireBytesENS_4base11OwnedVectorIKhEE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !noalias !166
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2v84base11OwnedVectorIKhEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !noalias !166
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !noalias !166
  store ptr null, ptr %1, align 8, !noalias !166
  store ptr %i.e, ptr %4, align 8, !noalias !166
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noalias !166
  store i64 %i.g, ptr %i.d, align 8, !noalias !166
  store i64 0, ptr %i.f, align 8, !noalias !166
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm12NativeModule12SetWireBytesENS_4base11OwnedVectorIKhEE:bb.a
_ZNSt10shared_ptrIN2v84base11OwnedVectorIKhEEEC2ERKS5_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull %i.h) #32
  store ptr %4, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 8 uses
  store ptr %i.a, ptr %i.k, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm12NativeModule12SetWireBytesENS_4base11OwnedVectorIKhEE:bb.a
  br label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.e, %_ZNSt10shared_ptrIN2v84base11OwnedVectorIKhEEEC2ERKS5_.exit
  %i.ab = load i64, ptr %i.d, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNSt12__shared_ptrIN2v88internal4wasm12_GLOBAL__N_128NativeModuleWireBytesStorageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm12NativeModule12SetWireBytesENS_4base11OwnedVectorIKhEE:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal4wasm12_GLOBAL__N_128NativeModuleWireBytesStorageE, i64 16), ptr %i.ai, align 8, !noalias !173
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %4, ptr %i.aj, align 8, !noalias !173
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.a, ptr %i.ak, align 8, !noalias !173
  store ptr %i.ai, ptr %3, align 8
end_hunk_3
begin_hunk_4_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_T0_T1_":bb.a

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.u, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_RT0_.exit" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_RT0_.exit.i.i" ]
  %i.u = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.v = load i64, ptr %i.u, align 8
  store ptr null, ptr %i.u, align 8
  %i.w = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  store ptr %i.w, ptr %i.u, align 8
  %5 = ptrtoint ptr %i.u to i64
  %6 = sub i64 %5, %i.a                           ; 2 uses
  %7 = ashr exact i64 %6, 3
  store i64 %i.v, ptr %3, align 8
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_T0_SL_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %7, ptr noundef %3)
  %8 = load ptr, ptr %3, align 8                  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_RT0_.exit", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i9.i
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i, label %bb.g
end_hunk_4
begin_hunk_5_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_T0_T1_":bb.a
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i.i.i.i2.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i2.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i, label %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
end_hunk_5
begin_hunk_6_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_T0_T1_":bb.a
  br label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %8, i64 noundef 112) #33
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_RT0_.exit": ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i, %.lr.ph.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ac = icmp sgt i64 %6, 8
  br i1 %i.ac, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_T0_.exit", !llvm.loop !275

.lr.ph58:                                         ; preds = %.lr.ph, %bb.b
end_hunk_6
