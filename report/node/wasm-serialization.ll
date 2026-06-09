inline.NumInlined: 2442
inline.NumDeleted: 1339
begin_hunk_0_@_ZN2v88internal4wasm23DeserializeNativeModuleEPNS0_7IsolateENS_4base6VectorIKhEES7_RKNS1_18CompileTimeImportsENS5_IKcEE:bb.a
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.8.1, i64 12
  store i32 0, ptr %i.aax, align 4
  %i.aay = load ptr, ptr %.sroa.8.1, align 8
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 16
  %i.aba = load ptr, ptr %i.aaz, align 8
  call void %i.aba(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.1) #24, !inline_history !73
  %i.abb = load ptr, ptr %.sroa.8.1, align 8
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 24
  %i.abd = load ptr, ptr %i.abc, align 8
  call void %i.abd(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.1) #24, !inline_history !73
  br label %_ZNSt12__shared_ptrIN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ei:                                            ; preds = %bb.eg
  %i.abe = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i125 = icmp eq i8 %i.abe, 0
  br i1 %.not.i.i.i125, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.abf = add nsw i32 %i.aaw, -1
  store i32 %i.abf, ptr %i.aat, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126

bb.ek:                                            ; preds = %bb.ei
  %i.abg = atomicrmw volatile add ptr %i.aat, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126: ; preds = %bb.ek, %bb.ej
  %.0.i.i.i.i127 = phi i32 [ %i.aaw, %bb.ej ], [ %i.abg, %bb.ek ]
  %i.abh = icmp eq i32 %.0.i.i.i.i127, 1
  br i1 %i.abh, label %bb.el, label %_ZNSt12__shared_ptrIN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !19

bb.el:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.1) #24
  br label %_ZNSt12__shared_ptrIN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.el, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126, %bb.eh, %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123, %_ZNSt12__shared_ptrIN2v88internal7metrics8RecorderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.0144.2 = phi ptr [ %.sroa.0142.0, %_ZNSt12__shared_ptrIN2v88internal7metrics8RecorderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.sroa.0144.1, %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123 ], [ %.sroa.0144.1, %bb.eh ], [ %.sroa.0144.1, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126 ], [ %.sroa.0144.1, %bb.el ] ; 2 uses
  %.sroa.0156.2 = phi ptr [ null, %_ZNSt12__shared_ptrIN2v88internal7metrics8RecorderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.sroa.0156.1, %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123 ], [ %.sroa.0156.1, %bb.eh ], [ %.sroa.0156.1, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126 ], [ %.sroa.0156.1, %bb.el ] ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.abj = load ptr, ptr %i.abi, align 8          ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 2 uses
  %i.abl = icmp eq ptr %i.abj, %i.abk
  br i1 %i.abl, label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128: ; preds = %_ZNSt12__shared_ptrIN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.abm = load i64, ptr %i.abk, align 8
  %i.abn = add i64 %i.abm, 1
  call void @_ZdlPvm(ptr noundef %i.abj, i64 noundef %i.abn) #25
  br label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit.i

_ZN2v88internal4wasm9WasmErrorD2Ev.exit.i:        ; preds = %_ZNSt12__shared_ptrIN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128
  %i.abo = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.abp = load ptr, ptr %i.abo, align 8          ; 8 uses
  %.not.i.i.i129 = icmp eq ptr %i.abp, null
  br i1 %.not.i.i.i129, label %_ZN2v88internal4wasm6ResultISt10shared_ptrINS1_10WasmModuleEEED2Ev.exit, label %bb.em

bb.em:                                            ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit.i
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 8 ; 4 uses
  %i.abr = load atomic i64, ptr %i.abq acquire, align 8 ; 2 uses
  %i.abs = icmp eq i64 %i.abr, 4294967297
  %i.abt = trunc i64 %i.abr to i32                ; 2 uses
  br i1 %i.abs, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  store i32 0, ptr %i.abq, align 8
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abp, i64 12
  store i32 0, ptr %i.abu, align 4
  %i.abv = load ptr, ptr %i.abp, align 8
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  %i.abx = load ptr, ptr %i.abw, align 8
  call void %i.abx(ptr noundef nonnull align 8 dereferenceable(16) %i.abp) #24, !inline_history !74
  %i.aby = load ptr, ptr %i.abp, align 8
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 24
  %i.aca = load ptr, ptr %i.abz, align 8
  call void %i.aca(ptr noundef nonnull align 8 dereferenceable(16) %i.abp) #24, !inline_history !74
  br label %_ZN2v88internal4wasm6ResultISt10shared_ptrINS1_10WasmModuleEEED2Ev.exit

bb.eo:                                            ; preds = %bb.em
  %i.acb = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i130 = icmp eq i8 %i.acb, 0
  br i1 %.not.i.i.i.i130, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.acc = add nsw i32 %i.abt, -1
  store i32 %i.acc, ptr %i.abq, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.eq:                                            ; preds = %bb.eo
  %i.acd = atomicrmw volatile add ptr %i.abq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.eq, %bb.ep
  %.0.i.i.i.i.i = phi i32 [ %i.abt, %bb.ep ], [ %i.acd, %bb.eq ]
  %i.ace = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ace, label %bb.er, label %_ZN2v88internal4wasm6ResultISt10shared_ptrINS1_10WasmModuleEEED2Ev.exit, !prof !19

bb.er:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.abp) #24
  br label %_ZN2v88internal4wasm6ResultISt10shared_ptrINS1_10WasmModuleEEED2Ev.exit

_ZN2v88internal4wasm6ResultISt10shared_ptrINS1_10WasmModuleEEED2Ev.exit: ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit.i, %bb.en, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  %.not.i.i132 = icmp eq ptr %.sroa.0144.2, null
  br i1 %.not.i.i132, label %_ZN2v84base11OwnedVectorIKhED2Ev.exit134, label %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i133

_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i133: ; preds = %_ZN2v88internal4wasm6ResultISt10shared_ptrINS1_10WasmModuleEEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0144.2) #25
  br label %_ZN2v84base11OwnedVectorIKhED2Ev.exit134

_ZN2v84base11OwnedVectorIKhED2Ev.exit134:         ; preds = %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i133, %_ZN2v88internal4wasm6ResultISt10shared_ptrINS1_10WasmModuleEEED2Ev.exit, %_ZN2v88internal4wasm18IsSupportedVersionENS_4base6VectorIKhEENS1_19WasmEnabledFeaturesE.exit, %_ZN2v88internal7Isolate14native_contextEv.exit
  %.sroa.0156.3 = phi ptr [ null, %_ZN2v88internal4wasm18IsSupportedVersionENS_4base6VectorIKhEENS1_19WasmEnabledFeaturesE.exit ], [ null, %_ZN2v88internal7Isolate14native_contextEv.exit ], [ %.sroa.0156.2, %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i133 ], [ %.sroa.0156.2, %_ZN2v88internal4wasm6ResultISt10shared_ptrINS1_10WasmModuleEEED2Ev.exit ]
  ret ptr %.sroa.0156.3
}

declare i32 @_ZN2v88internal4wasm19WasmEnabledFeatures11FromIsolateEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN2v88internal4wasm20IsWasmCodegenAllowedEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZN2v88internal4wasm16DecodeWasmModuleENS1_19WasmEnabledFeaturesENS_4base6VectorIKhEEbNS1_12ModuleOriginEPNS0_8CountersESt10shared_ptrINS0_7metrics8RecorderEENS_7metrics8Recorder9ContextIdENS1_14DecodingMethodEPNS1_20WasmDetectedFeaturesE(ptr dead_on_unwind writable sret(%"class.v8::internal::wasm::Result") align 8, i32, ptr, i64, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, i64, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i64 @_ZN2v88internal7Isolate30GetOrRegisterRecorderContextIdENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull align 8 dereferenceable(64320), ptr) local_unnamed_addr #5

declare noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() local_unnamed_addr #5

declare void @_ZN2v88internal4wasm10WasmEngine20MaybeGetNativeModuleENS1_12ModuleOriginENS_4base6VectorIKhEERKNS1_18CompileTimeImportsEPNS0_7IsolateE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.805") align 8, ptr noundef nonnull align 8 dereferenceable(8488), i8 noundef zeroext, ptr, i64, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #5

declare noundef i64 @_ZN2v88internal4wasm15WasmCodeManager28EstimateNativeModuleCodeSizeEPKNS1_10WasmModuleE(ptr noundef) local_unnamed_addr #5

declare void @_ZN2v88internal4wasm10WasmEngine15NewNativeModuleEPNS0_7IsolateENS1_19WasmEnabledFeaturesENS1_20WasmDetectedFeaturesENS1_18CompileTimeImportsESt10shared_ptrIKNS1_10WasmModuleEEm(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.805") align 8, ptr noundef nonnull align 8 dereferenceable(8488), ptr noundef, i32, i64, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN2v88internal4wasm16CompilationState18set_compilation_idEi(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef) local_unnamed_addr #5

declare void @_ZN2v88internal4wasm12NativeModule12SetWireBytesENS_4base11OwnedVectorIKhEE(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef) local_unnamed_addr #5

declare void @_ZN2v88internal4wasm10WasmEngine23UpdateNativeModuleCacheEbSt10shared_ptrINS1_12NativeModuleEEPNS0_7IsolateE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.805") align 8, ptr noundef nonnull align 8 dereferenceable(8488), i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN2v88internal4wasm16CompilationState30InitializeAfterDeserializationENS_4base6VectorIKiEES6_(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, ptr, i64) local_unnamed_addr #5

declare i64 @_ZNK2v88internal4wasm16CompilationState17detected_featuresEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZN2v88internal4wasm23PublishDetectedFeaturesENS1_20WasmDetectedFeaturesEPNS0_7IsolateEb(i64, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare ptr @_ZN2v88internal4wasm10WasmEngine17GetOrCreateScriptEPNS0_7IsolateERKSt10shared_ptrINS1_12NativeModuleEENS_4base6VectorIKcEE(ptr noundef nonnull align 8 dereferenceable(8488), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #5

declare ptr @_ZN2v88internal16WasmModuleObject3NewEPNS0_7IsolateESt10shared_ptrINS0_4wasm12NativeModuleEENS0_12DirectHandleINS0_6ScriptEEE(ptr noundef, ptr noundef, ptr) local_unnamed_addr #5

declare void @_ZN2v88internal5Debug14OnAfterCompileENS0_12DirectHandleINS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(256), ptr) local_unnamed_addr #5

declare void @_ZN2v88internal4wasm12NativeModule12LogWasmCodesEPNS0_7IsolateENS0_6TaggedINS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef, i64) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef i32 @_ZN2v88internal8FlagList4HashEv() local_unnamed_addr #5

declare void @_ZN2v88internal11CpuFeatures9ProbeImplEb(i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZNK2v88internal4wasm12NativeModule42CreateIndirectCallTargetToFunctionIndexMapEv(ptr dead_on_unwind writable sret(%"class.absl::flat_hash_map") align 8, ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #5

declare void @_ZN2v88internal13RelocIteratorC1ENS_4base6VectorIhEENS3_IKhEEmi(ptr noundef nonnull align 8 dereferenceable(56), ptr, i64, ptr, i64, i64 noundef, i32 noundef) unnamed_addr #5

declare noundef i64 @_ZNK2v88internal9RelocInfo17wasm_call_addressEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef i32 @_ZNK2v88internal4wasm12NativeModule33GetFunctionIndexFromJumpTableSlotEm(ptr noundef nonnull align 8 dereferenceable(552), i64 noundef) local_unnamed_addr #5

declare noundef i64 @_ZNK2v88internal9RelocInfo22wasm_stub_call_addressEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef i32 @_ZNK2v88internal4wasm12NativeModule25GetBuiltinInJumptableSlotEm(ptr noundef nonnull align 8 dereferenceable(552), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE2atIS5_S6_EEDTclsrT0_5valueclL_ZSt9addressofIKSE_EPT_RSL_EclL_ZSt7declvalIRSK_EDTcl9__declvalISL_ELi0EEEvEEEEERSD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findIS5_EENSG_14const_iteratorERSD_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = load i32, ptr %1, align 4
  %i.h = icmp eq i32 %i.f, %i.g
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findIS5_EENSG_14const_iteratorERSD_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %sext.i.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i.i, 48
  %i.m = load i32, ptr %1, align 4                ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = xor i64 %i.l, %i.n
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i.i = load ptr, ptr %i.w, align 8 ; 3 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i.i = phi i64 [ %i.t, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i7.i.i, %i.a    ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.ab = load <16 x i8>, ptr %i.aa, align 1      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not47.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not47.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.048.i.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.6.0.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.a                     ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, %i.m
  br i1 %i.ak, label %.thread33.i.i.i, label %bb.f, !prof !11

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ah ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE10find_largeIS5_EENSG_8iteratorERSD_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i16 %.sroa.017.048.i.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.048.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not44.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE10find_largeIS5_EENSG_8iteratorERSD_m.exit.i.i, !prof !19

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !75

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE10find_largeIS5_EENSG_8iteratorERSD_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread33.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.am, %.thread33.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.al, %.thread33.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findIS5_EENSG_14const_iteratorERSD_.exit

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findIS5_EENSG_14const_iteratorERSD_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE10find_largeIS5_EENSG_8iteratorERSD_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE10find_largeIS5_EENSG_8iteratorERSD_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 4 uses
  %i.au = icmp eq ptr %i.at, null                 ; 2 uses
  %i.av = icmp eq ptr %i.at, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.au, %i.av
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findIS5_EENSG_14const_iteratorERSD_.exit
  %i.aw = load i8, ptr %i.at, align 1
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findIS5_EENSG_14const_iteratorERSD_.exit
  br i1 %i.av, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE14const_iteratorESJ_.exit, !prof !19

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #24
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE14const_iteratorESJ_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE14const_iteratorESJ_.exit
  tail call void @_ZN4absl13base_internal18ThrowStdOutOfRangeEPKc(ptr noundef nonnull @.str.10) #26
  unreachable

bb.l:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE14const_iteratorESJ_.exit
  %i.ay = load i8, ptr %i.at, align 1
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE14const_iteratordeEv.exit, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #24
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE14const_iteratordeEv.exit: ; preds = %bb.l
  %i.ba = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  ret ptr %i.bb
}

declare void @_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE4nextEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN4absl13base_internal18ThrowStdOutOfRangeEPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #11

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #13 comdat {
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = icmp ult i64 %1, 2
  %i.c = add i64 %1, 15
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = add i64 %i.d, %4
  %i.f = add i64 %i.e, %i.a
  %i.g = sub i64 0, %4
  %i.h = and i64 %i.f, %i.g
  %i.i = mul i64 %3, %1
  %i.j = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.k = add i64 %i.i, 7
  %i.l = add i64 %i.k, %i.h
  %i.m = and i64 %i.l, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #25
  ret void
}

declare void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_121ExternalReferenceListC2Ev() unnamed_addr #4 align 2 {
vector.ph:
  %0 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %1 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %2 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %14 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %15 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %16 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %17 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %18 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %19 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %20 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %21 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %22 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %23 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %24 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %25 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %26 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %27 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %28 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %29 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %30 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %31 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %32 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %33 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %34 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %35 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %36 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %37 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %38 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %39 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %40 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %41 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %42 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %43 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %44 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %45 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %46 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %47 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %48 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %49 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %50 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %51 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %52 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %53 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %54 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %55 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %56 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %57 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %58 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %59 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %60 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %61 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %62 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %63 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %64 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %65 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %66 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %67 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %68 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %69 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %70 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %71 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %72 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %73 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %74 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %75 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %76 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %77 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %78 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %79 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %80 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %81 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %82 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %83 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
end_hunk_0
