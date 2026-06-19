inline.NumInlined: 6772
inline.NumDeleted: 1981
begin_hunk_0_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %38) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.anc, i32 noundef %i.axu, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.kw unwind label %bb.ky

.loopexit44.i.i.i.i.i.i.i.i258:                   ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i266, %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i264, %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i262, %.lr.ph.i.i.i.preheader.i29.preheader.i.i.i.i.i.i.i.i260, %bb.ko
  invoke void @__cxa_rethrow() #29
          to label %bb.lc unwind label %bb.kv

bb.kp:                                            ; preds = %bb.kn
  %i.bai = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.baj = icmp eq i32 %i.azq, %i.bai
  br i1 %i.baj, label %bb.kq, label %.body49.i207

bb.kq:                                            ; preds = %bb.kp
  %i.bak = call ptr @__cxa_begin_catch(ptr %i.azp) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %37) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.anc, i32 noundef %i.axu, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.kr unwind label %bb.kt

bb.kr:                                            ; preds = %bb.kq
  %i.bal = load ptr, ptr %37, align 8, !tbaa !340
  %.not.i34.i.i.i.i.i.i.i.i253 = icmp eq ptr %i.bal, null
  br i1 %.not.i34.i.i.i.i.i.i.i.i253, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i254, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %37) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i254

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i254: ; preds = %bb.ks, %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.kt:                                            ; preds = %bb.kq
  %i.bam = landingpad { ptr, i32 }
          cleanup
  %i.ban = load ptr, ptr %37, align 8, !tbaa !340
  %.not.i36.i.i.i.i.i.i.i.i251 = icmp eq ptr %i.ban, null
  br i1 %.not.i36.i.i.i.i.i.i.i.i251, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %37) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252: ; preds = %bb.ku, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  invoke void @__cxa_end_catch()
          to label %.body49.i207 unwind label %bb.lb

bb.kv:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i258
  %i.bao = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.kw:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i268
  %i.bap = load ptr, ptr %38, align 8, !tbaa !340
  %.not.i38.i.i.i.i.i.i.i.i271 = icmp eq ptr %i.bap, null
  br i1 %.not.i38.i.i.i.i.i.i.i.i271, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i272, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i272

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i272: ; preds = %bb.kx, %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.ky:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i268
  %i.baq = landingpad { ptr, i32 }
          cleanup
  %i.bar = load ptr, ptr %38, align 8, !tbaa !340
  %.not.i40.i.i.i.i.i.i.i.i269 = icmp eq ptr %i.bar, null
  br i1 %.not.i40.i.i.i.i.i.i.i.i269, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i270, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i270

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i270: ; preds = %bb.kz, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.la

bb.la:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i270, %bb.kv
  %.pn.i.i.i.i.i.i.i.i.i259 = phi { ptr, i32 } [ %i.baq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i270 ], [ %i.bao, %bb.kv ]
  invoke void @__cxa_end_catch()
          to label %.body49.i207 unwind label %bb.lb

bb.lb:                                            ; preds = %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252
  %i.bas = landingpad { ptr, i32 }
          catch ptr null
  %i.bat = extractvalue { ptr, i32 } %i.bas, 0
  call void @__clang_call_terminate(ptr %i.bat) #32
  unreachable

bb.lc:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i258
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i272, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i254
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i255

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit6.i27.i.i.i.i.i.i.i.i
  %i.bau = add i64 %.01558.i.i.i.i.i.i.i.i248, -1
  %i.bav = and i64 %i.bau, %.01558.i.i.i.i.i.i.i.i248 ; 2 uses
  %.not.i.i.i.i.i.i.i.i257 = icmp eq i64 %i.bav, 0
  br i1 %.not.i.i.i.i.i.i.i.i257, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %bb.kg, !llvm.loop !480

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i, %bb.ji, %.lr.ph.i.i.i.i.i.i.i211
  %i.baw = add nsw i32 %i.aug, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i213 = icmp sgt i32 %i.baw, %i.atk
  br i1 %.not33.i.i.i.i.i.i.i213, label %._crit_edge.i.i.i.i.i.i.i214, label %.lr.ph.i.i.i.i.i.i.i211, !llvm.loop !481

bb.ld:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i214
  %i.bax = and i32 %i.atg, 63
  %i.bay = zext nneg i32 %i.bax to i64
  %notmask.i36.i.i.i.i.i.i.i216 = shl nsw i64 -1, %i.bay
  %i.baz = xor i64 %notmask.i36.i.i.i.i.i.i.i216, -1
  br label %.invoke.i217

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i214, %.invoke.i217, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  br label %.loopexit10.i202

.loopexit10.i202:                                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i, %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %43)
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

.loopexit.i283:                                   ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i
  %lpad.loopexit.i284 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i207

.loopexit.split-lp.loopexit.i255:                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit12.i256 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i207

.loopexit.split-lp.loopexit.split-lp.loopexit.i230: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit16.i231 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i207

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i205: ; preds = %bb.jh, %.invoke.i217
  %lpad.loopexit.split-lp.i206 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i207

.body49.i207:                                     ; preds = %bb.js, %bb.kp, %bb.ip, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i205, %.loopexit.split-lp.loopexit.split-lp.loopexit.i230, %.loopexit.split-lp.loopexit.i255, %.loopexit.i283, %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252, %bb.kd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i227, %bb.ja, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i280
  %eh.lpad-body50.i208 = phi { ptr, i32 } [ %i.azo, %bb.kp ], [ %.pn.i.i.i.i.i289, %bb.ja ], [ %i.asu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i280 ], [ %i.arw, %bb.ip ], [ %.pn.i18.i.i.i.i.i.i.i.i233, %bb.kd ], [ %i.axi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i227 ], [ %.pn.i.i.i.i.i.i.i.i.i259, %bb.la ], [ %i.bam, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252 ], [ %lpad.loopexit.split-lp.i206, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i205 ], [ %lpad.loopexit.i284, %.loopexit.i283 ], [ %lpad.loopexit12.i256, %.loopexit.split-lp.loopexit.i255 ], [ %lpad.loopexit16.i231, %.loopexit.split-lp.loopexit.split-lp.loopexit.i230 ], [ %i.awk, %bb.js ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #28
  br label %.body.i186

.body.i186:                                       ; preds = %.body49.i207, %bb.hy
  %.pn.i187 = phi { ptr, i32 } [ %eh.lpad-body50.i208, %.body49.i207 ], [ %i.aou, %bb.hy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %common.resume

bb.le:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i179
  %i.bba = load i32, ptr %i.ang, align 4, !tbaa !288
  %i.bbb = icmp eq i32 %i.bba, 1
  %i.bbc = load i32, ptr %i.ani, align 4, !tbaa !288
  %i.bbd = icmp eq i32 %i.bbc, 1                  ; 2 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.amy, i64 28
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !291 ; 6 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.amy, i64 32
  %i.bbh = load i32, ptr %i.bbg, align 8, !tbaa !300 ; 9 uses
  %i.bbi = sub nsw i32 %i.bbh, %i.bbf
  %i.bbj = and i32 %i.bbi, -16                    ; 10 uses
  %i.bbk = sext i32 %i.bbj to i64                 ; 5 uses
  %i.bbl = icmp ult i32 %i.bbf, %i.bbj            ; 4 uses
  br i1 %i.bbb, label %bb.lf, label %bb.lk

bb.lf:                                            ; preds = %bb.le
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.bbn = load i16, ptr %i.bbm, align 8, !tbaa !482 ; 4 uses
  br i1 %i.bbd, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.ana, i64 144
  %i.bbp = load i16, ptr %i.bbo, align 8, !tbaa !482 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i.preheader.i342, label %.preheader.i.i336

.lr.ph.i.preheader.i342:                          ; preds = %bb.lg
  %i.bbq = insertelement <16 x i16> poison, i16 %i.bbn, i64 0
  %i.bbr = insertelement <16 x i16> poison, i16 %i.bbp, i64 0
  %i.bbs = icmp eq <16 x i16> %i.bbq, %i.bbr
  %i.bbt = shufflevector <16 x i1> %i.bbs, <16 x i1> poison, <16 x i32> zeroinitializer
  %i.bbu = sext <16 x i1> %i.bbt to <16 x i16>
  %i.bbv = bitcast <16 x i16> %i.bbu to <32 x i8>
  %i.bbw = icmp slt <32 x i8> %i.bbv, zeroinitializer
  %i.bbx = bitcast <32 x i1> %i.bbw to i32
  %69 = tail call noundef i32 @llvm.pext.i32(i32 %i.bbx, i32 -1431655766)
  %i.bby = trunc i32 %69 to i16
  br label %.lr.ph.i.i343

.preheader.i.i336:                                ; preds = %.lr.ph.i.i343, %bb.lg
  %i.bbz = sext i32 %i.bbh to i64                 ; 2 uses
  %i.bca = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bca, label %.lr.ph32.i.preheader.i337, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph32.i.preheader.i337:                        ; preds = %.preheader.i.i336
  %i.bcb = icmp eq i16 %i.bbn, %i.bbp
  br i1 %i.bcb, label %.lr.ph32.i.us.i340, label %.lr.ph32.i.i338

.lr.ph32.i.us.i340:                               ; preds = %.lr.ph32.i.preheader.i337, %.lr.ph32.i.us.i340
  %.031.i.us.i341 = phi i64 [ %i.bcj, %.lr.ph32.i.us.i340 ], [ %i.bbk, %.lr.ph32.i.preheader.i337 ] ; 3 uses
  %i.bcc = lshr i64 %.031.i.us.i341, 3
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bcc ; 2 uses
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !32
  %i.bcf = trunc i64 %.031.i.us.i341 to i8
  %i.bcg = and i8 %i.bcf, 7
  %i.bch = shl nuw i8 1, %i.bcg
  %i.bci = or i8 %i.bch, %i.bce
  store i8 %i.bci, ptr %i.bcd, align 1, !tbaa !32
  %i.bcj = add nuw i64 %.031.i.us.i341, 1         ; 2 uses
  %i.bck = icmp ult i64 %i.bcj, %i.bbz
  br i1 %i.bck, label %.lr.ph32.i.us.i340, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !490

.lr.ph.i.i343:                                    ; preds = %.lr.ph.i.i343, %.lr.ph.i.preheader.i342
  %.02330.i.i344 = phi i32 [ %i.bco, %.lr.ph.i.i343 ], [ %i.bbf, %.lr.ph.i.preheader.i342 ] ; 2 uses
  %i.bcl = sdiv i32 %.02330.i.i344, 8
  %i.bcm = sext i32 %i.bcl to i64
  %i.bcn = getelementptr inbounds i8, ptr %i.anf, i64 %i.bcm
  store i16 %i.bby, ptr %i.bcn, align 2, !tbaa !474
  %i.bco = add nuw i32 %.02330.i.i344, 16         ; 2 uses
  %i.bcp = icmp ult i32 %i.bco, %i.bbj
  br i1 %i.bcp, label %.lr.ph.i.i343, label %.preheader.i.i336, !llvm.loop !491

.lr.ph32.i.i338:                                  ; preds = %.lr.ph32.i.preheader.i337, %.lr.ph32.i.i338
  %.031.i.i339 = phi i64 [ %i.bcx, %.lr.ph32.i.i338 ], [ %i.bbk, %.lr.ph32.i.preheader.i337 ] ; 3 uses
  %i.bcq = lshr i64 %.031.i.i339, 3
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bcq ; 2 uses
  %i.bcs = load i8, ptr %i.bcr, align 1, !tbaa !32
  %i.bct = and i64 %.031.i.i339, 7
  %i.bcu = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bct
  %i.bcv = load i8, ptr %i.bcu, align 1, !tbaa !32
  %i.bcw = and i8 %i.bcv, %i.bcs
  store i8 %i.bcw, ptr %i.bcr, align 1, !tbaa !32
  %i.bcx = add nuw i64 %.031.i.i339, 1            ; 2 uses
  %i.bcy = icmp ult i64 %i.bcx, %i.bbz
  br i1 %i.bcy, label %.lr.ph32.i.i338, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !490

bb.lh:                                            ; preds = %bb.lf
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.ana, i64 120
  %i.bda = load ptr, ptr %i.bcz, align 8, !tbaa !492 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i59.preheader.i333, label %.preheader.i56.i328

.lr.ph.i59.preheader.i333:                        ; preds = %bb.lh
  %i.bdb = insertelement <16 x i16> poison, i16 %i.bbn, i64 0
  %i.bdc = shufflevector <16 x i16> %i.bdb, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i59.i334

.preheader.i56.i328:                              ; preds = %.lr.ph.i59.i334, %bb.lh
  %i.bdd = sext i32 %i.bbh to i64
  %i.bde = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bde, label %.lr.ph33.i.i329, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i59.i334:                                  ; preds = %.lr.ph.i59.i334, %.lr.ph.i59.preheader.i333
  %.02431.i.i335 = phi i32 [ %i.bdr, %.lr.ph.i59.i334 ], [ %i.bbf, %.lr.ph.i59.preheader.i333 ] ; 3 uses
  %i.bdf = sext i32 %.02431.i.i335 to i64
  %i.bdg = getelementptr inbounds [2 x i8], ptr %i.bda, i64 %i.bdf
  %i.bdh = load <16 x i16>, ptr %i.bdg, align 1, !tbaa !32, !noalias !495
  %i.bdi = icmp eq <16 x i16> %i.bdc, %i.bdh
  %i.bdj = sext <16 x i1> %i.bdi to <16 x i16>
  %i.bdk = bitcast <16 x i16> %i.bdj to <32 x i8>
  %i.bdl = icmp slt <32 x i8> %i.bdk, zeroinitializer
  %i.bdm = bitcast <32 x i1> %i.bdl to i32
  %70 = tail call noundef i32 @llvm.pext.i32(i32 %i.bdm, i32 -1431655766)
  %i.bdn = sdiv i32 %.02431.i.i335, 8
  %i.bdo = sext i32 %i.bdn to i64
  %i.bdp = getelementptr inbounds i8, ptr %i.anf, i64 %i.bdo
  %i.bdq = trunc i32 %70 to i16
  store i16 %i.bdq, ptr %i.bdp, align 2, !tbaa !474
  %i.bdr = add nuw i32 %.02431.i.i335, 16         ; 2 uses
  %i.bds = icmp ult i32 %i.bdr, %i.bbj
  br i1 %i.bds, label %.lr.ph.i59.i334, label %.preheader.i56.i328, !llvm.loop !502

.lr.ph33.i.i329:                                  ; preds = %.preheader.i56.i328, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331
  %.032.i.i330 = phi i64 [ %i.beh, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331 ], [ %i.bbk, %.preheader.i56.i328 ] ; 5 uses
  %i.bdt = getelementptr inbounds nuw [2 x i8], ptr %i.bda, i64 %.032.i.i330
  %i.bdu = load i16, ptr %i.bdt, align 2, !tbaa !474
  %i.bdv = icmp eq i16 %i.bbn, %i.bdu
  %i.bdw = lshr i64 %.032.i.i330, 3
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bdw ; 2 uses
  %i.bdy = load i8, ptr %i.bdx, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bdv, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %.lr.ph33.i.i329
  %i.bdz = trunc i64 %.032.i.i330 to i8
  %i.bea = and i8 %i.bdz, 7
  %i.beb = shl nuw i8 1, %i.bea
  %i.bec = or i8 %i.beb, %i.bdy
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331

bb.lj:                                            ; preds = %.lr.ph33.i.i329
  %i.bed = and i64 %.032.i.i330, 7
  %i.bee = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bed
  %i.bef = load i8, ptr %i.bee, align 1, !tbaa !32
  %i.beg = and i8 %i.bef, %i.bdy
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331: ; preds = %bb.lj, %bb.li
  %.sink.i.i58.i332 = phi i8 [ %i.beg, %bb.lj ], [ %i.bec, %bb.li ]
  store i8 %.sink.i.i58.i332, ptr %i.bdx, align 1, !tbaa !32
  %i.beh = add nuw i64 %.032.i.i330, 1            ; 2 uses
  %i.bei = icmp ult i64 %i.beh, %i.bdd
  br i1 %i.bei, label %.lr.ph33.i.i329, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !503

bb.lk:                                            ; preds = %bb.le
  %i.bej = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.bek = load ptr, ptr %i.bej, align 8, !tbaa !492 ; 4 uses
  br i1 %i.bbd, label %bb.ll, label %bb.lo

bb.ll:                                            ; preds = %bb.lk
  %i.bel = getelementptr inbounds nuw i8, ptr %i.ana, i64 144
  %i.bem = load i16, ptr %i.bel, align 8, !tbaa !482 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i65.preheader.i325, label %.preheader.i60.i320

.lr.ph.i65.preheader.i325:                        ; preds = %bb.ll
  %i.ben = insertelement <16 x i16> poison, i16 %i.bem, i64 0
  %i.beo = shufflevector <16 x i16> %i.ben, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i65.i326

.preheader.i60.i320:                              ; preds = %.lr.ph.i65.i326, %bb.ll
  %i.bep = sext i32 %i.bbh to i64
  %i.beq = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.beq, label %.lr.ph33.i61.i321, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i65.i326:                                  ; preds = %.lr.ph.i65.i326, %.lr.ph.i65.preheader.i325
  %.02431.i66.i327 = phi i32 [ %i.bfd, %.lr.ph.i65.i326 ], [ %i.bbf, %.lr.ph.i65.preheader.i325 ] ; 3 uses
  %i.ber = sext i32 %.02431.i66.i327 to i64
  %i.bes = getelementptr inbounds [2 x i8], ptr %i.bek, i64 %i.ber
  %i.bet = load <16 x i16>, ptr %i.bes, align 1, !tbaa !32, !noalias !504
  %i.beu = icmp eq <16 x i16> %i.bet, %i.beo
  %i.bev = sext <16 x i1> %i.beu to <16 x i16>
  %i.bew = bitcast <16 x i16> %i.bev to <32 x i8>
  %i.bex = icmp slt <32 x i8> %i.bew, zeroinitializer
  %i.bey = bitcast <32 x i1> %i.bex to i32
  %71 = tail call noundef i32 @llvm.pext.i32(i32 %i.bey, i32 -1431655766)
  %i.bez = sdiv i32 %.02431.i66.i327, 8
  %i.bfa = sext i32 %i.bez to i64
  %i.bfb = getelementptr inbounds i8, ptr %i.anf, i64 %i.bfa
  %i.bfc = trunc i32 %71 to i16
  store i16 %i.bfc, ptr %i.bfb, align 2, !tbaa !474
  %i.bfd = add nuw i32 %.02431.i66.i327, 16       ; 2 uses
  %i.bfe = icmp ult i32 %i.bfd, %i.bbj
  br i1 %i.bfe, label %.lr.ph.i65.i326, label %.preheader.i60.i320, !llvm.loop !511

.lr.ph33.i61.i321:                                ; preds = %.preheader.i60.i320, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323
  %.032.i62.i322 = phi i64 [ %i.bft, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323 ], [ %i.bbk, %.preheader.i60.i320 ] ; 5 uses
  %i.bff = getelementptr inbounds nuw [2 x i8], ptr %i.bek, i64 %.032.i62.i322
  %i.bfg = load i16, ptr %i.bff, align 2, !tbaa !474
  %i.bfh = icmp eq i16 %i.bfg, %i.bem
  %i.bfi = lshr i64 %.032.i62.i322, 3
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bfi ; 2 uses
  %i.bfk = load i8, ptr %i.bfj, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bfh, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %.lr.ph33.i61.i321
  %i.bfl = trunc i64 %.032.i62.i322 to i8
  %i.bfm = and i8 %i.bfl, 7
  %i.bfn = shl nuw i8 1, %i.bfm
  %i.bfo = or i8 %i.bfn, %i.bfk
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323

bb.ln:                                            ; preds = %.lr.ph33.i61.i321
  %i.bfp = and i64 %.032.i62.i322, 7
  %i.bfq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bfp
  %i.bfr = load i8, ptr %i.bfq, align 1, !tbaa !32
  %i.bfs = and i8 %i.bfr, %i.bfk
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323: ; preds = %bb.ln, %bb.lm
  %.sink.i.i64.i324 = phi i8 [ %i.bfs, %bb.ln ], [ %i.bfo, %bb.lm ]
  store i8 %.sink.i.i64.i324, ptr %i.bfj, align 1, !tbaa !32
  %i.bft = add nuw i64 %.032.i62.i322, 1          ; 2 uses
  %i.bfu = icmp ult i64 %i.bft, %i.bep
  br i1 %i.bfu, label %.lr.ph33.i61.i321, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !512

bb.lo:                                            ; preds = %bb.lk
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.ana, i64 120
  %i.bfw = load ptr, ptr %i.bfv, align 8, !tbaa !492 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i70.i318, label %.preheader.i67.i313

.preheader.i67.i313:                              ; preds = %.lr.ph.i70.i318, %bb.lo
  %i.bfx = sext i32 %i.bbh to i64
  %i.bfy = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bfy, label %.lr.ph34.i.i314, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i70.i318:                                  ; preds = %bb.lo, %.lr.ph.i70.i318
  %.02532.i.i319 = phi i32 [ %i.bgn, %.lr.ph.i70.i318 ], [ %i.bbf, %bb.lo ] ; 3 uses
  %i.bfz = sext i32 %.02532.i.i319 to i64         ; 2 uses
  %i.bga = getelementptr inbounds [2 x i8], ptr %i.bek, i64 %i.bfz
  %i.bgb = load <16 x i16>, ptr %i.bga, align 1, !tbaa !32, !noalias !513
  %i.bgc = getelementptr inbounds [2 x i8], ptr %i.bfw, i64 %i.bfz
  %i.bgd = load <16 x i16>, ptr %i.bgc, align 1, !tbaa !32, !noalias !520
  %i.bge = icmp eq <16 x i16> %i.bgb, %i.bgd
  %i.bgf = sext <16 x i1> %i.bge to <16 x i16>
  %i.bgg = bitcast <16 x i16> %i.bgf to <32 x i8>
  %i.bgh = icmp slt <32 x i8> %i.bgg, zeroinitializer
  %i.bgi = bitcast <32 x i1> %i.bgh to i32
  %72 = tail call noundef i32 @llvm.pext.i32(i32 %i.bgi, i32 -1431655766)
  %i.bgj = sdiv i32 %.02532.i.i319, 8
  %i.bgk = sext i32 %i.bgj to i64
  %i.bgl = getelementptr inbounds i8, ptr %i.anf, i64 %i.bgk
  %i.bgm = trunc i32 %72 to i16
  store i16 %i.bgm, ptr %i.bgl, align 2, !tbaa !474
  %i.bgn = add nuw i32 %.02532.i.i319, 16         ; 2 uses
  %i.bgo = icmp ult i32 %i.bgn, %i.bbj
  br i1 %i.bgo, label %.lr.ph.i70.i318, label %.preheader.i67.i313, !llvm.loop !527

.lr.ph34.i.i314:                                  ; preds = %.preheader.i67.i313, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316
  %.033.i.i315 = phi i64 [ %i.bhf, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316 ], [ %i.bbk, %.preheader.i67.i313 ] ; 6 uses
  %i.bgp = getelementptr inbounds nuw [2 x i8], ptr %i.bek, i64 %.033.i.i315
  %i.bgq = getelementptr inbounds nuw [2 x i8], ptr %i.bfw, i64 %.033.i.i315
  %i.bgr = load i16, ptr %i.bgp, align 2, !tbaa !474
  %i.bgs = load i16, ptr %i.bgq, align 2, !tbaa !474
  %i.bgt = icmp eq i16 %i.bgr, %i.bgs
  %i.bgu = lshr i64 %.033.i.i315, 3
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bgu ; 2 uses
  %i.bgw = load i8, ptr %i.bgv, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bgt, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %.lr.ph34.i.i314
  %i.bgx = trunc i64 %.033.i.i315 to i8
  %i.bgy = and i8 %i.bgx, 7
  %i.bgz = shl nuw i8 1, %i.bgy
  %i.bha = or i8 %i.bgw, %i.bgz
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316

bb.lq:                                            ; preds = %.lr.ph34.i.i314
  %i.bhb = and i64 %.033.i.i315, 7
  %i.bhc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bhb
  %i.bhd = load i8, ptr %i.bhc, align 1, !tbaa !32
  %i.bhe = and i8 %i.bhd, %i.bgw
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316: ; preds = %bb.lq, %bb.lp
  %.sink.i.i69.i317 = phi i8 [ %i.bhe, %bb.lq ], [ %i.bha, %bb.lp ]
  store i8 %.sink.i.i69.i317, ptr %i.bgv, align 1, !tbaa !32
  %i.bhf = add nuw i64 %.033.i.i315, 1            ; 2 uses
  %i.bhg = icmp ult i64 %i.bhf, %i.bfx
  br i1 %i.bhg, label %.lr.ph34.i.i314, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !528

_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i: ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331, %.lr.ph32.i.i338, %.lr.ph32.i.us.i340, %.preheader.i67.i313, %.preheader.i60.i320, %.preheader.i56.i328, %.preheader.i.i336
  tail call void @_ZN8facebook5velox10BaseVector10clearNullsERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(94) %.val4, ptr noundef nonnull align 8 dereferenceable(38) %i.amy)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit: ; preds = %.loopexit10.i202, %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.xt

bb.lr:                                            ; preds = %bb.a
  %i.bhh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bhi = load ptr, ptr %i.bhh, align 8, !tbaa !348, !nonnull !57
  %i.bhj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bhk = load ptr, ptr %i.bhj, align 8, !tbaa !349, !nonnull !57, !align !318 ; 22 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bhm = load ptr, ptr %i.bhl, align 8, !tbaa !208 ; 6 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bho = load ptr, ptr %i.bhn, align 8, !tbaa !350, !nonnull !57, !align !318 ; 9 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !351, !nonnull !57, !align !318
  %.val5 = load ptr, ptr %i.bhq, align 8, !tbaa !208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %.val5, ptr %i.c, align 8, !tbaa !286
  %i.bhr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIbE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %.val5) ; 49 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.bht = load i32, ptr %i.bhs, align 4, !tbaa !288
  switch i32 %i.bht, label %.critedge.i360 [
    i32 1, label %bb.ls
    i32 3, label %bb.ls
  ]

bb.ls:                                            ; preds = %bb.lr, %bb.lr
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhm, i64 28 ; 2 uses
  %i.bhv = load i32, ptr %i.bhu, align 4, !tbaa !288
  switch i32 %i.bhv, label %.critedge.i360 [
    i32 1, label %bb.lt
    i32 3, label %bb.lt
  ]

bb.lt:                                            ; preds = %bb.ls, %bb.ls
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhk, i64 36 ; 2 uses
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhk, i64 37
  %i.bhy = load i8, ptr %i.bhx, align 1, !tbaa !289, !range !56, !noundef !57
  %i.bhz = trunc nuw i8 %i.bhy to i1
  br i1 %i.bhz, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499, label %bb.lu

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499: ; preds = %bb.lt
  %.0.in.pre.i.i500 = load i8, ptr %i.bhw, align 4, !tbaa !64, !range !56
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357

bb.lu:                                            ; preds = %bb.lt
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhk, i64 28
  %i.bib = load i32, ptr %i.bia, align 4, !tbaa !291
  %i.bic = icmp eq i32 %i.bib, 0
  br i1 %i.bic, label %bb.lv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lv:                                            ; preds = %bb.lu
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bhk, i64 32
  %i.bie = load i32, ptr %i.bid, align 8, !tbaa !300 ; 6 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bhk, i64 24
  %i.big = load i32, ptr %i.bif, align 8, !tbaa !301
  %i.bih = icmp eq i32 %i.bie, %i.big
  br i1 %i.bih, label %bb.lw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lw:                                            ; preds = %bb.lv
  %i.bii = load ptr, ptr %i.bhk, align 8, !tbaa !302 ; 2 uses
  %.not.i.i.i491 = icmp sgt i32 %i.bie, 0
  br i1 %.not.i.i.i491, label %bb.lx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lx:                                            ; preds = %bb.lw
  %i.bij = and i32 %i.bie, 2147483584             ; 3 uses
  %i.bik = zext nneg i32 %i.bij to i64
  %.not37.i.i.not.i.i4931407.not = icmp eq i32 %i.bij, 0
  br i1 %.not37.i.i.not.i.i4931407.not, label %.critedge.i.i.i.i494, label %.lr.ph1409

bb.ly:                                            ; preds = %.lr.ph1409
  %indvars.iv.next.i.i498 = add nuw nsw i64 %indvars.iv.i.i4921408, 64 ; 2 uses
  %.not37.i.i.not.i.i493 = icmp samesign ult i64 %indvars.iv.next.i.i498, %i.bik
  br i1 %.not37.i.i.not.i.i493, label %.lr.ph1409, label %.critedge.i.i.i.i494, !llvm.loop !303

.lr.ph1409:                                       ; preds = %bb.lx, %bb.ly
  %indvars.iv.i.i4921408 = phi i64 [ %indvars.iv.next.i.i498, %bb.ly ], [ 0, %bb.lx ] ; 2 uses
  %i.bil = lshr exact i64 %indvars.iv.i.i4921408, 3
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bii, i64 %i.bil
  %i.bin = load i64, ptr %i.bim, align 8, !tbaa !176
  %i.bio = icmp eq i64 %i.bin, -1
  br i1 %i.bio, label %bb.ly, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, !llvm.loop !303

.critedge.i.i.i.i494:                             ; preds = %bb.ly, %bb.lx
  %.not38.i.i.i.i495 = icmp eq i32 %i.bie, %i.bij
  br i1 %.not38.i.i.i.i495, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, label %bb.lz

bb.lz:                                            ; preds = %.critedge.i.i.i.i494
  %i.bip = lshr i32 %i.bie, 6
  %i.biq = and i32 %i.bie, 63
  %i.bir = zext nneg i32 %i.biq to i64
  %notmask.i40.i.i.i.i496 = shl nsw i64 -1, %i.bir
  %i.bis = zext nneg i32 %i.bip to i64
  %i.bit = getelementptr inbounds nuw [8 x i8], ptr %i.bii, i64 %i.bis
  %i.biu = load i64, ptr %i.bit, align 8, !tbaa !176
  %.demorgan.i.i497 = or i64 %i.biu, %notmask.i40.i.i.i.i496
  %i.biv = icmp eq i64 %.demorgan.i.i497, -1
  %i.biw = zext i1 %i.biv to i16
  %i.bix = or disjoint i16 %i.biw, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355: ; preds = %.lr.ph1409, %bb.lz, %.critedge.i.i.i.i494, %bb.lw, %bb.lv, %bb.lu
  %.sroa.0.0.insert.ext.i.i356 = phi i16 [ 256, %bb.lv ], [ 256, %bb.lu ], [ 257, %bb.lw ], [ 257, %.critedge.i.i.i.i494 ], [ %i.bix, %bb.lz ], [ 256, %.lr.ph1409 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i356, ptr %i.bhw, align 4
  %i.biy = trunc i16 %.sroa.0.0.insert.ext.i.i356 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499
  %.0.in.i.i358 = phi i8 [ %.0.in.pre.i.i500, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499 ], [ %i.biy, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355 ]
  %.0.i.i359 = trunc nuw i8 %.0.in.i.i358 to i1
  br i1 %.0.i.i359, label %bb.pj, label %.critedge.i360

.critedge.i360:                                   ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357, %bb.ls, %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.biz = load ptr, ptr %i.bho, align 8, !tbaa !239
  store ptr %i.biz, ptr %33, align 8, !tbaa !304
  %i.bja = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr null, ptr %i.bja, align 8, !tbaa !313
  %i.bjb = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.ma unwind label %bb.mb

bb.ma:                                            ; preds = %.critedge.i360
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bjb, ptr noundef nonnull align 8 dereferenceable(94) %i.i, ptr noundef nonnull align 8 dereferenceable(38) %i.bhk, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363 unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %.critedge.i360
  %i.bjc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bja) #28
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363: ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.bjd = load ptr, ptr %i.bho, align 8, !tbaa !239
  store ptr %i.bjd, ptr %34, align 8, !tbaa !304
  %i.bje = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr null, ptr %i.bje, align 8, !tbaa !313
  %i.bjf = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %bb.mc unwind label %bb.md

bb.mc:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bjf, ptr noundef nonnull align 8 dereferenceable(94) %i.bhm, ptr noundef nonnull align 8 dereferenceable(38) %i.bhk, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i366 unwind label %bb.md

bb.md:                                            ; preds = %bb.mc, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363
  %i.bjg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bje) #28
  br label %.body.i364

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i366: ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %33, ptr %32, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i273:       ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i271
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %38) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.amq, i32 noundef %i.axi, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.kw unwind label %bb.ky

.loopexit44.i.i.i.i.i.i.i.i263:                   ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i271, %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i269, %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i267, %.lr.ph.i.i.i.preheader.i29.preheader.i.i.i.i.i.i.i.i265, %bb.ko
  invoke void @__cxa_rethrow() #29
          to label %bb.lc unwind label %bb.kv

bb.kp:                                            ; preds = %bb.kn
  %i.azw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.azx = icmp eq i32 %i.aze, %i.azw
  br i1 %i.azx, label %bb.kq, label %.body49.i212

bb.kq:                                            ; preds = %bb.kp
  %i.azy = call ptr @__cxa_begin_catch(ptr %i.azd) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %37) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.amq, i32 noundef %i.axi, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.kr unwind label %bb.kt

bb.kr:                                            ; preds = %bb.kq
  %i.azz = load ptr, ptr %37, align 8, !tbaa !340
  %.not.i34.i.i.i.i.i.i.i.i258 = icmp eq ptr %i.azz, null
  br i1 %.not.i34.i.i.i.i.i.i.i.i258, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i259, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %37) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i259

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i259: ; preds = %bb.ks, %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.kt:                                            ; preds = %bb.kq
  %i.baa = landingpad { ptr, i32 }
          cleanup
  %i.bab = load ptr, ptr %37, align 8, !tbaa !340
  %.not.i36.i.i.i.i.i.i.i.i256 = icmp eq ptr %i.bab, null
  br i1 %.not.i36.i.i.i.i.i.i.i.i256, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %37) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257: ; preds = %bb.ku, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  invoke void @__cxa_end_catch()
          to label %.body49.i212 unwind label %bb.lb

bb.kv:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i263
  %i.bac = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.kw:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i273
  %i.bad = load ptr, ptr %38, align 8, !tbaa !340
  %.not.i38.i.i.i.i.i.i.i.i276 = icmp eq ptr %i.bad, null
  br i1 %.not.i38.i.i.i.i.i.i.i.i276, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i277, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i277

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i277: ; preds = %bb.kx, %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.ky:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i273
  %i.bae = landingpad { ptr, i32 }
          cleanup
  %i.baf = load ptr, ptr %38, align 8, !tbaa !340
  %.not.i40.i.i.i.i.i.i.i.i274 = icmp eq ptr %i.baf, null
  br i1 %.not.i40.i.i.i.i.i.i.i.i274, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i275, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i275

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i275: ; preds = %bb.kz, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.la

bb.la:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i275, %bb.kv
  %.pn.i.i.i.i.i.i.i.i.i264 = phi { ptr, i32 } [ %i.bae, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i275 ], [ %i.bac, %bb.kv ]
  invoke void @__cxa_end_catch()
          to label %.body49.i212 unwind label %bb.lb

bb.lb:                                            ; preds = %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257
  %i.bag = landingpad { ptr, i32 }
          catch ptr null
  %i.bah = extractvalue { ptr, i32 } %i.bag, 0
  call void @__clang_call_terminate(ptr %i.bah) #32
  unreachable

bb.lc:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i263
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i277, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i259
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i260

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit6.i27.i.i.i.i.i.i.i.i
  %i.bai = add i64 %.01558.i.i.i.i.i.i.i.i253, -1
  %i.baj = and i64 %i.bai, %.01558.i.i.i.i.i.i.i.i253 ; 2 uses
  %.not.i.i.i.i.i.i.i.i262 = icmp eq i64 %i.baj, 0
  br i1 %.not.i.i.i.i.i.i.i.i262, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %bb.kg, !llvm.loop !1044

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i, %bb.ji, %.lr.ph.i.i.i.i.i.i.i216
  %i.bak = add nsw i32 %i.atu, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i218 = icmp sgt i32 %i.bak, %i.asy
  br i1 %.not33.i.i.i.i.i.i.i218, label %._crit_edge.i.i.i.i.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i216, !llvm.loop !1045

bb.ld:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i219
  %i.bal = and i32 %i.asu, 63
  %i.bam = zext nneg i32 %i.bal to i64
  %notmask.i36.i.i.i.i.i.i.i221 = shl nsw i64 -1, %i.bam
  %i.ban = xor i64 %notmask.i36.i.i.i.i.i.i.i221, -1
  br label %.invoke.i222

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i219, %.invoke.i222, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  br label %.loopexit10.i207

.loopexit10.i207:                                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i, %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %43)
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

.loopexit.i288:                                   ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i
  %lpad.loopexit.i289 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i212

.loopexit.split-lp.loopexit.i260:                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit12.i261 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i212

.loopexit.split-lp.loopexit.split-lp.loopexit.i235: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit16.i236 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i212

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i210: ; preds = %bb.jh, %.invoke.i222
  %lpad.loopexit.split-lp.i211 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i212

.body49.i212:                                     ; preds = %bb.js, %bb.kp, %bb.ip, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i210, %.loopexit.split-lp.loopexit.split-lp.loopexit.i235, %.loopexit.split-lp.loopexit.i260, %.loopexit.i288, %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257, %bb.kd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i232, %bb.ja, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i285
  %eh.lpad-body50.i213 = phi { ptr, i32 } [ %i.azc, %bb.kp ], [ %.pn.i.i.i.i.i294, %bb.ja ], [ %i.asi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i285 ], [ %i.ark, %bb.ip ], [ %.pn.i18.i.i.i.i.i.i.i.i238, %bb.kd ], [ %i.aww, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i232 ], [ %.pn.i.i.i.i.i.i.i.i.i264, %bb.la ], [ %i.baa, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257 ], [ %lpad.loopexit.split-lp.i211, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i210 ], [ %lpad.loopexit.i289, %.loopexit.i288 ], [ %lpad.loopexit12.i261, %.loopexit.split-lp.loopexit.i260 ], [ %lpad.loopexit16.i236, %.loopexit.split-lp.loopexit.split-lp.loopexit.i235 ], [ %i.avy, %bb.js ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #28
  br label %.body.i191

.body.i191:                                       ; preds = %.body49.i212, %bb.hy
  %.pn.i192 = phi { ptr, i32 } [ %eh.lpad-body50.i213, %.body49.i212 ], [ %i.aoi, %bb.hy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %common.resume

bb.le:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i184
  %i.bao = load i32, ptr %i.amu, align 4, !tbaa !288
  %i.bap = icmp eq i32 %i.bao, 1
  %i.baq = load i32, ptr %i.amw, align 4, !tbaa !288
  %i.bar = icmp eq i32 %i.baq, 1                  ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.amm, i64 28
  %i.bat = load i32, ptr %i.bas, align 4, !tbaa !291 ; 6 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %i.amm, i64 32
  %i.bav = load i32, ptr %i.bau, align 8, !tbaa !300 ; 9 uses
  %i.baw = sub nsw i32 %i.bav, %i.bat
  %i.bax = and i32 %i.baw, -16                    ; 10 uses
  %i.bay = sext i32 %i.bax to i64                 ; 5 uses
  %i.baz = icmp ult i32 %i.bat, %i.bax            ; 4 uses
  br i1 %i.bap, label %bb.lf, label %bb.lk

bb.lf:                                            ; preds = %bb.le
  %i.bba = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.bbb = load i16, ptr %i.bba, align 8, !tbaa !482 ; 4 uses
  br i1 %i.bar, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.amo, i64 144
  %i.bbd = load i16, ptr %i.bbc, align 8, !tbaa !482 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i.preheader.i351, label %.preheader.i.i344

.lr.ph.i.preheader.i351:                          ; preds = %bb.lg
  %.scalar.i.i352 = icmp ne i16 %i.bbb, %i.bbd
  %i.bbe = insertelement <16 x i1> poison, i1 %.scalar.i.i352, i64 0
  %i.bbf = shufflevector <16 x i1> %i.bbe, <16 x i1> poison, <16 x i32> zeroinitializer
  %i.bbg = sext <16 x i1> %i.bbf to <16 x i16>
  %i.bbh = bitcast <16 x i16> %i.bbg to <32 x i8>
  %i.bbi = icmp slt <32 x i8> %i.bbh, zeroinitializer
  %i.bbj = bitcast <32 x i1> %i.bbi to i32
  %69 = tail call noundef i32 @llvm.pext.i32(i32 %i.bbj, i32 -1431655766)
  %i.bbk = trunc i32 %69 to i16
  br label %.lr.ph.i.i353

.preheader.i.i344:                                ; preds = %.lr.ph.i.i353, %bb.lg
  %i.bbl = sext i32 %i.bav to i64                 ; 2 uses
  %i.bbm = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bbm, label %.lr.ph32.i.preheader.i345, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph32.i.preheader.i345:                        ; preds = %.preheader.i.i344
  %.not.i.i346 = icmp eq i16 %i.bbb, %i.bbd
  br i1 %.not.i.i346, label %.lr.ph32.i.us.i349, label %.lr.ph32.i.i347

.lr.ph32.i.us.i349:                               ; preds = %.lr.ph32.i.preheader.i345, %.lr.ph32.i.us.i349
  %.031.i.us.i350 = phi i64 [ %i.bbu, %.lr.ph32.i.us.i349 ], [ %i.bay, %.lr.ph32.i.preheader.i345 ] ; 3 uses
  %i.bbn = lshr i64 %.031.i.us.i350, 3
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bbn ; 2 uses
  %i.bbp = load i8, ptr %i.bbo, align 1, !tbaa !32
  %i.bbq = and i64 %.031.i.us.i350, 7
  %i.bbr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bbq
  %i.bbs = load i8, ptr %i.bbr, align 1, !tbaa !32
  %i.bbt = and i8 %i.bbs, %i.bbp
  store i8 %i.bbt, ptr %i.bbo, align 1, !tbaa !32
  %i.bbu = add nuw i64 %.031.i.us.i350, 1         ; 2 uses
  %i.bbv = icmp ult i64 %i.bbu, %i.bbl
  br i1 %i.bbv, label %.lr.ph32.i.us.i349, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1046

.lr.ph.i.i353:                                    ; preds = %.lr.ph.i.i353, %.lr.ph.i.preheader.i351
  %.02330.i.i354 = phi i32 [ %i.bbz, %.lr.ph.i.i353 ], [ %i.bat, %.lr.ph.i.preheader.i351 ] ; 2 uses
  %i.bbw = sdiv i32 %.02330.i.i354, 8
  %i.bbx = sext i32 %i.bbw to i64
  %i.bby = getelementptr inbounds i8, ptr %i.amt, i64 %i.bbx
  store i16 %i.bbk, ptr %i.bby, align 2, !tbaa !474
  %i.bbz = add nuw i32 %.02330.i.i354, 16         ; 2 uses
  %i.bca = icmp ult i32 %i.bbz, %i.bax
  br i1 %i.bca, label %.lr.ph.i.i353, label %.preheader.i.i344, !llvm.loop !1047

.lr.ph32.i.i347:                                  ; preds = %.lr.ph32.i.preheader.i345, %.lr.ph32.i.i347
  %.031.i.i348 = phi i64 [ %i.bci, %.lr.ph32.i.i347 ], [ %i.bay, %.lr.ph32.i.preheader.i345 ] ; 3 uses
  %i.bcb = lshr i64 %.031.i.i348, 3
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bcb ; 2 uses
  %i.bcd = load i8, ptr %i.bcc, align 1, !tbaa !32
  %i.bce = trunc i64 %.031.i.i348 to i8
  %i.bcf = and i8 %i.bce, 7
  %i.bcg = shl nuw i8 1, %i.bcf
  %i.bch = or i8 %i.bcg, %i.bcd
  store i8 %i.bch, ptr %i.bcc, align 1, !tbaa !32
  %i.bci = add nuw i64 %.031.i.i348, 1            ; 2 uses
  %i.bcj = icmp ult i64 %i.bci, %i.bbl
  br i1 %i.bcj, label %.lr.ph32.i.i347, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1046

bb.lh:                                            ; preds = %bb.lf
  %i.bck = getelementptr inbounds nuw i8, ptr %i.amo, i64 120
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !492 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i60.preheader.i341, label %.preheader.i56.i335

.lr.ph.i60.preheader.i341:                        ; preds = %bb.lh
  %i.bcm = insertelement <16 x i16> poison, i16 %i.bbb, i64 0
  %i.bcn = shufflevector <16 x i16> %i.bcm, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i60.i342

.preheader.i56.i335:                              ; preds = %.lr.ph.i60.i342, %bb.lh
  %i.bco = sext i32 %i.bav to i64
  %i.bcp = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bcp, label %.lr.ph33.i.i336, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i60.i342:                                  ; preds = %.lr.ph.i60.i342, %.lr.ph.i60.preheader.i341
  %.02431.i.i343 = phi i32 [ %i.bdc, %.lr.ph.i60.i342 ], [ %i.bat, %.lr.ph.i60.preheader.i341 ] ; 3 uses
  %i.bcq = sext i32 %.02431.i.i343 to i64
  %i.bcr = getelementptr inbounds [2 x i8], ptr %i.bcl, i64 %i.bcq
  %i.bcs = load <16 x i16>, ptr %i.bcr, align 1, !tbaa !32, !noalias !1048
  %i.bct = icmp ne <16 x i16> %i.bcn, %i.bcs
  %i.bcu = sext <16 x i1> %i.bct to <16 x i16>
  %i.bcv = bitcast <16 x i16> %i.bcu to <32 x i8>
  %i.bcw = icmp slt <32 x i8> %i.bcv, zeroinitializer
  %i.bcx = bitcast <32 x i1> %i.bcw to i32
  %70 = tail call noundef i32 @llvm.pext.i32(i32 %i.bcx, i32 -1431655766)
  %i.bcy = sdiv i32 %.02431.i.i343, 8
  %i.bcz = sext i32 %i.bcy to i64
  %i.bda = getelementptr inbounds i8, ptr %i.amt, i64 %i.bcz
  %i.bdb = trunc i32 %70 to i16
  store i16 %i.bdb, ptr %i.bda, align 2, !tbaa !474
  %i.bdc = add nuw i32 %.02431.i.i343, 16         ; 2 uses
  %i.bdd = icmp ult i32 %i.bdc, %i.bax
  br i1 %i.bdd, label %.lr.ph.i60.i342, label %.preheader.i56.i335, !llvm.loop !1055

.lr.ph33.i.i336:                                  ; preds = %.preheader.i56.i335, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339
  %.032.i.i337 = phi i64 [ %i.bdr, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339 ], [ %i.bay, %.preheader.i56.i335 ] ; 5 uses
  %i.bde = getelementptr inbounds nuw [2 x i8], ptr %i.bcl, i64 %.032.i.i337
  %i.bdf = load i16, ptr %i.bde, align 2, !tbaa !474
  %.not.i57.i338 = icmp eq i16 %i.bbb, %i.bdf
  %i.bdg = lshr i64 %.032.i.i337, 3
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bdg ; 2 uses
  %i.bdi = load i8, ptr %i.bdh, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i57.i338, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %.lr.ph33.i.i336
  %i.bdj = trunc i64 %.032.i.i337 to i8
  %i.bdk = and i8 %i.bdj, 7
  %i.bdl = shl nuw i8 1, %i.bdk
  %i.bdm = or i8 %i.bdl, %i.bdi
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339

bb.lj:                                            ; preds = %.lr.ph33.i.i336
  %i.bdn = and i64 %.032.i.i337, 7
  %i.bdo = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bdn
  %i.bdp = load i8, ptr %i.bdo, align 1, !tbaa !32
  %i.bdq = and i8 %i.bdp, %i.bdi
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339: ; preds = %bb.lj, %bb.li
  %.sink.i.i59.i340 = phi i8 [ %i.bdq, %bb.lj ], [ %i.bdm, %bb.li ]
  store i8 %.sink.i.i59.i340, ptr %i.bdh, align 1, !tbaa !32
  %i.bdr = add nuw i64 %.032.i.i337, 1            ; 2 uses
  %i.bds = icmp ult i64 %i.bdr, %i.bco
  br i1 %i.bds, label %.lr.ph33.i.i336, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1056

bb.lk:                                            ; preds = %bb.le
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.bdu = load ptr, ptr %i.bdt, align 8, !tbaa !492 ; 4 uses
  br i1 %i.bar, label %bb.ll, label %bb.lo

bb.ll:                                            ; preds = %bb.lk
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.amo, i64 144
  %i.bdw = load i16, ptr %i.bdv, align 8, !tbaa !482 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i67.preheader.i332, label %.preheader.i61.i326

.lr.ph.i67.preheader.i332:                        ; preds = %bb.ll
  %i.bdx = insertelement <16 x i16> poison, i16 %i.bdw, i64 0
  %i.bdy = shufflevector <16 x i16> %i.bdx, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i67.i333

.preheader.i61.i326:                              ; preds = %.lr.ph.i67.i333, %bb.ll
  %i.bdz = sext i32 %i.bav to i64
  %i.bea = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bea, label %.lr.ph33.i62.i327, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i67.i333:                                  ; preds = %.lr.ph.i67.i333, %.lr.ph.i67.preheader.i332
  %.02431.i68.i334 = phi i32 [ %i.ben, %.lr.ph.i67.i333 ], [ %i.bat, %.lr.ph.i67.preheader.i332 ] ; 3 uses
  %i.beb = sext i32 %.02431.i68.i334 to i64
  %i.bec = getelementptr inbounds [2 x i8], ptr %i.bdu, i64 %i.beb
  %i.bed = load <16 x i16>, ptr %i.bec, align 1, !tbaa !32, !noalias !1057
  %i.bee = icmp ne <16 x i16> %i.bed, %i.bdy
  %i.bef = sext <16 x i1> %i.bee to <16 x i16>
  %i.beg = bitcast <16 x i16> %i.bef to <32 x i8>
  %i.beh = icmp slt <32 x i8> %i.beg, zeroinitializer
  %i.bei = bitcast <32 x i1> %i.beh to i32
  %71 = tail call noundef i32 @llvm.pext.i32(i32 %i.bei, i32 -1431655766)
  %i.bej = sdiv i32 %.02431.i68.i334, 8
  %i.bek = sext i32 %i.bej to i64
  %i.bel = getelementptr inbounds i8, ptr %i.amt, i64 %i.bek
  %i.bem = trunc i32 %71 to i16
  store i16 %i.bem, ptr %i.bel, align 2, !tbaa !474
  %i.ben = add nuw i32 %.02431.i68.i334, 16       ; 2 uses
  %i.beo = icmp ult i32 %i.ben, %i.bax
  br i1 %i.beo, label %.lr.ph.i67.i333, label %.preheader.i61.i326, !llvm.loop !1064

.lr.ph33.i62.i327:                                ; preds = %.preheader.i61.i326, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330
  %.032.i63.i328 = phi i64 [ %i.bfc, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330 ], [ %i.bay, %.preheader.i61.i326 ] ; 5 uses
  %i.bep = getelementptr inbounds nuw [2 x i8], ptr %i.bdu, i64 %.032.i63.i328
  %i.beq = load i16, ptr %i.bep, align 2, !tbaa !474
  %.not.i64.i329 = icmp eq i16 %i.beq, %i.bdw
  %i.ber = lshr i64 %.032.i63.i328, 3
  %i.bes = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.ber ; 2 uses
  %i.bet = load i8, ptr %i.bes, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i64.i329, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %.lr.ph33.i62.i327
  %i.beu = trunc i64 %.032.i63.i328 to i8
  %i.bev = and i8 %i.beu, 7
  %i.bew = shl nuw i8 1, %i.bev
  %i.bex = or i8 %i.bew, %i.bet
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330

bb.ln:                                            ; preds = %.lr.ph33.i62.i327
  %i.bey = and i64 %.032.i63.i328, 7
  %i.bez = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bey
  %i.bfa = load i8, ptr %i.bez, align 1, !tbaa !32
  %i.bfb = and i8 %i.bfa, %i.bet
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330: ; preds = %bb.ln, %bb.lm
  %.sink.i.i66.i331 = phi i8 [ %i.bfb, %bb.ln ], [ %i.bex, %bb.lm ]
  store i8 %.sink.i.i66.i331, ptr %i.bes, align 1, !tbaa !32
  %i.bfc = add nuw i64 %.032.i63.i328, 1          ; 2 uses
  %i.bfd = icmp ult i64 %i.bfc, %i.bdz
  br i1 %i.bfd, label %.lr.ph33.i62.i327, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1065

bb.lo:                                            ; preds = %bb.lk
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.amo, i64 120
  %i.bff = load ptr, ptr %i.bfe, align 8, !tbaa !492 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i73.i324, label %.preheader.i69.i318

.preheader.i69.i318:                              ; preds = %.lr.ph.i73.i324, %bb.lo
  %i.bfg = sext i32 %i.bav to i64
  %i.bfh = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bfh, label %.lr.ph34.i.i319, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i73.i324:                                  ; preds = %bb.lo, %.lr.ph.i73.i324
  %.02532.i.i325 = phi i32 [ %i.bfw, %.lr.ph.i73.i324 ], [ %i.bat, %bb.lo ] ; 3 uses
  %i.bfi = sext i32 %.02532.i.i325 to i64         ; 2 uses
  %i.bfj = getelementptr inbounds [2 x i8], ptr %i.bdu, i64 %i.bfi
  %i.bfk = load <16 x i16>, ptr %i.bfj, align 1, !tbaa !32, !noalias !1066
  %i.bfl = getelementptr inbounds [2 x i8], ptr %i.bff, i64 %i.bfi
  %i.bfm = load <16 x i16>, ptr %i.bfl, align 1, !tbaa !32, !noalias !1073
  %i.bfn = icmp ne <16 x i16> %i.bfk, %i.bfm
  %i.bfo = sext <16 x i1> %i.bfn to <16 x i16>
  %i.bfp = bitcast <16 x i16> %i.bfo to <32 x i8>
  %i.bfq = icmp slt <32 x i8> %i.bfp, zeroinitializer
  %i.bfr = bitcast <32 x i1> %i.bfq to i32
  %72 = tail call noundef i32 @llvm.pext.i32(i32 %i.bfr, i32 -1431655766)
  %i.bfs = sdiv i32 %.02532.i.i325, 8
  %i.bft = sext i32 %i.bfs to i64
  %i.bfu = getelementptr inbounds i8, ptr %i.amt, i64 %i.bft
  %i.bfv = trunc i32 %72 to i16
  store i16 %i.bfv, ptr %i.bfu, align 2, !tbaa !474
  %i.bfw = add nuw i32 %.02532.i.i325, 16         ; 2 uses
  %i.bfx = icmp ult i32 %i.bfw, %i.bax
  br i1 %i.bfx, label %.lr.ph.i73.i324, label %.preheader.i69.i318, !llvm.loop !1080

.lr.ph34.i.i319:                                  ; preds = %.preheader.i69.i318, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322
  %.033.i.i320 = phi i64 [ %i.bgn, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322 ], [ %i.bay, %.preheader.i69.i318 ] ; 6 uses
  %i.bfy = getelementptr inbounds nuw [2 x i8], ptr %i.bdu, i64 %.033.i.i320
  %i.bfz = getelementptr inbounds nuw [2 x i8], ptr %i.bff, i64 %.033.i.i320
  %i.bga = load i16, ptr %i.bfy, align 2, !tbaa !474
  %i.bgb = load i16, ptr %i.bfz, align 2, !tbaa !474
  %.not.i70.i321 = icmp eq i16 %i.bga, %i.bgb
  %i.bgc = lshr i64 %.033.i.i320, 3
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bgc ; 2 uses
  %i.bge = load i8, ptr %i.bgd, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i70.i321, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %.lr.ph34.i.i319
  %i.bgf = trunc i64 %.033.i.i320 to i8
  %i.bgg = and i8 %i.bgf, 7
  %i.bgh = shl nuw i8 1, %i.bgg
  %i.bgi = or i8 %i.bge, %i.bgh
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322

bb.lq:                                            ; preds = %.lr.ph34.i.i319
  %i.bgj = and i64 %.033.i.i320, 7
  %i.bgk = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bgj
  %i.bgl = load i8, ptr %i.bgk, align 1, !tbaa !32
  %i.bgm = and i8 %i.bgl, %i.bge
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322: ; preds = %bb.lq, %bb.lp
  %.sink.i.i72.i323 = phi i8 [ %i.bgm, %bb.lq ], [ %i.bgi, %bb.lp ]
  store i8 %.sink.i.i72.i323, ptr %i.bgd, align 1, !tbaa !32
  %i.bgn = add nuw i64 %.033.i.i320, 1            ; 2 uses
  %i.bgo = icmp ult i64 %i.bgn, %i.bfg
  br i1 %i.bgo, label %.lr.ph34.i.i319, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1081

_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i: ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339, %.lr.ph32.i.i347, %.lr.ph32.i.us.i349, %.preheader.i69.i318, %.preheader.i61.i326, %.preheader.i56.i335, %.preheader.i.i344
  tail call void @_ZN8facebook5velox10BaseVector10clearNullsERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(94) %.val4, ptr noundef nonnull align 8 dereferenceable(38) %i.amm)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit: ; preds = %.loopexit10.i207, %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.xt

bb.lr:                                            ; preds = %bb.a
  %i.bgp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bgq = load ptr, ptr %i.bgp, align 8, !tbaa !946, !nonnull !57
  %i.bgr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bgs = load ptr, ptr %i.bgr, align 8, !tbaa !947, !nonnull !57, !align !318 ; 22 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bgu = load ptr, ptr %i.bgt, align 8, !tbaa !208 ; 6 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !948, !nonnull !57, !align !318 ; 9 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bgy = load ptr, ptr %i.bgx, align 8, !tbaa !949, !nonnull !57, !align !318
  %.val5 = load ptr, ptr %i.bgy, align 8, !tbaa !208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %.val5, ptr %i.c, align 8, !tbaa !286
  %i.bgz = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIbE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %.val5) ; 49 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.bhb = load i32, ptr %i.bha, align 4, !tbaa !288
  switch i32 %i.bhb, label %.critedge.i370 [
    i32 1, label %bb.ls
    i32 3, label %bb.ls
  ]

bb.ls:                                            ; preds = %bb.lr, %bb.lr
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bgu, i64 28 ; 2 uses
  %i.bhd = load i32, ptr %i.bhc, align 4, !tbaa !288
  switch i32 %i.bhd, label %.critedge.i370 [
    i32 1, label %bb.lt
    i32 3, label %bb.lt
  ]

bb.lt:                                            ; preds = %bb.ls, %bb.ls
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgs, i64 36 ; 2 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bgs, i64 37
  %i.bhg = load i8, ptr %i.bhf, align 1, !tbaa !289, !range !56, !noundef !57
  %i.bhh = trunc nuw i8 %i.bhg to i1
  br i1 %i.bhh, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511, label %bb.lu

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511: ; preds = %bb.lt
  %.0.in.pre.i.i512 = load i8, ptr %i.bhe, align 4, !tbaa !64, !range !56
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367

bb.lu:                                            ; preds = %bb.lt
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bgs, i64 28
  %i.bhj = load i32, ptr %i.bhi, align 4, !tbaa !291
  %i.bhk = icmp eq i32 %i.bhj, 0
  br i1 %i.bhk, label %bb.lv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lv:                                            ; preds = %bb.lu
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bgs, i64 32
  %i.bhm = load i32, ptr %i.bhl, align 8, !tbaa !300 ; 6 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bgs, i64 24
  %i.bho = load i32, ptr %i.bhn, align 8, !tbaa !301
  %i.bhp = icmp eq i32 %i.bhm, %i.bho
  br i1 %i.bhp, label %bb.lw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lw:                                            ; preds = %bb.lv
  %i.bhq = load ptr, ptr %i.bgs, align 8, !tbaa !302 ; 2 uses
  %.not.i.i.i503 = icmp sgt i32 %i.bhm, 0
  br i1 %.not.i.i.i503, label %bb.lx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lx:                                            ; preds = %bb.lw
  %i.bhr = and i32 %i.bhm, 2147483584             ; 3 uses
  %i.bhs = zext nneg i32 %i.bhr to i64
  %.not37.i.i.not.i.i5051418.not = icmp eq i32 %i.bhr, 0
  br i1 %.not37.i.i.not.i.i5051418.not, label %.critedge.i.i.i.i506, label %.lr.ph1420

bb.ly:                                            ; preds = %.lr.ph1420
  %indvars.iv.next.i.i510 = add nuw nsw i64 %indvars.iv.i.i5041419, 64 ; 2 uses
  %.not37.i.i.not.i.i505 = icmp samesign ult i64 %indvars.iv.next.i.i510, %i.bhs
  br i1 %.not37.i.i.not.i.i505, label %.lr.ph1420, label %.critedge.i.i.i.i506, !llvm.loop !303

.lr.ph1420:                                       ; preds = %bb.lx, %bb.ly
  %indvars.iv.i.i5041419 = phi i64 [ %indvars.iv.next.i.i510, %bb.ly ], [ 0, %bb.lx ] ; 2 uses
  %i.bht = lshr exact i64 %indvars.iv.i.i5041419, 3
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhq, i64 %i.bht
  %i.bhv = load i64, ptr %i.bhu, align 8, !tbaa !176
  %i.bhw = icmp eq i64 %i.bhv, -1
  br i1 %i.bhw, label %bb.ly, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, !llvm.loop !303

.critedge.i.i.i.i506:                             ; preds = %bb.ly, %bb.lx
  %.not38.i.i.i.i507 = icmp eq i32 %i.bhm, %i.bhr
  br i1 %.not38.i.i.i.i507, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, label %bb.lz

bb.lz:                                            ; preds = %.critedge.i.i.i.i506
  %i.bhx = lshr i32 %i.bhm, 6
  %i.bhy = and i32 %i.bhm, 63
  %i.bhz = zext nneg i32 %i.bhy to i64
  %notmask.i40.i.i.i.i508 = shl nsw i64 -1, %i.bhz
  %i.bia = zext nneg i32 %i.bhx to i64
  %i.bib = getelementptr inbounds nuw [8 x i8], ptr %i.bhq, i64 %i.bia
  %i.bic = load i64, ptr %i.bib, align 8, !tbaa !176
  %.demorgan.i.i509 = or i64 %i.bic, %notmask.i40.i.i.i.i508
  %i.bid = icmp eq i64 %.demorgan.i.i509, -1
  %i.bie = zext i1 %i.bid to i16
  %i.bif = or disjoint i16 %i.bie, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365: ; preds = %.lr.ph1420, %bb.lz, %.critedge.i.i.i.i506, %bb.lw, %bb.lv, %bb.lu
  %.sroa.0.0.insert.ext.i.i366 = phi i16 [ 256, %bb.lv ], [ 256, %bb.lu ], [ 257, %bb.lw ], [ 257, %.critedge.i.i.i.i506 ], [ %i.bif, %bb.lz ], [ 256, %.lr.ph1420 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i366, ptr %i.bhe, align 4
  %i.big = trunc i16 %.sroa.0.0.insert.ext.i.i366 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511
  %.0.in.i.i368 = phi i8 [ %.0.in.pre.i.i512, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511 ], [ %i.big, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365 ]
  %.0.i.i369 = trunc nuw i8 %.0.in.i.i368 to i1
  br i1 %.0.i.i369, label %bb.pj, label %.critedge.i370

.critedge.i370:                                   ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367, %bb.ls, %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.bih = load ptr, ptr %i.bgw, align 8, !tbaa !239
  store ptr %i.bih, ptr %33, align 8, !tbaa !304
  %i.bii = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr null, ptr %i.bii, align 8, !tbaa !313
  %i.bij = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.ma unwind label %bb.mb

bb.ma:                                            ; preds = %.critedge.i370
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bij, ptr noundef nonnull align 8 dereferenceable(94) %i.i, ptr noundef nonnull align 8 dereferenceable(38) %i.bgs, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373 unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %.critedge.i370
  %i.bik = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bii) #28
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373: ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.bil = load ptr, ptr %i.bgw, align 8, !tbaa !239
  store ptr %i.bil, ptr %34, align 8, !tbaa !304
  %i.bim = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr null, ptr %i.bim, align 8, !tbaa !313
  %i.bin = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %bb.mc unwind label %bb.md

bb.mc:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bin, ptr noundef nonnull align 8 dereferenceable(94) %i.bgu, ptr noundef nonnull align 8 dereferenceable(38) %i.bgs, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i376 unwind label %bb.md

bb.md:                                            ; preds = %bb.mc, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373
  %i.bio = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bim) #28
  br label %.body.i374

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i376: ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %33, ptr %32, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %38) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.anc, i32 noundef %i.axu, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.kw unwind label %bb.ky

.loopexit44.i.i.i.i.i.i.i.i258:                   ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i266, %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i264, %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i262, %.lr.ph.i.i.i.preheader.i29.preheader.i.i.i.i.i.i.i.i260, %bb.ko
  invoke void @__cxa_rethrow() #29
          to label %bb.lc unwind label %bb.kv

bb.kp:                                            ; preds = %bb.kn
  %i.bai = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.baj = icmp eq i32 %i.azq, %i.bai
  br i1 %i.baj, label %bb.kq, label %.body49.i207

bb.kq:                                            ; preds = %bb.kp
  %i.bak = call ptr @__cxa_begin_catch(ptr %i.azp) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %37) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.anc, i32 noundef %i.axu, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.kr unwind label %bb.kt

bb.kr:                                            ; preds = %bb.kq
  %i.bal = load ptr, ptr %37, align 8, !tbaa !340
  %.not.i34.i.i.i.i.i.i.i.i253 = icmp eq ptr %i.bal, null
  br i1 %.not.i34.i.i.i.i.i.i.i.i253, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i254, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %37) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i254

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i254: ; preds = %bb.ks, %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.kt:                                            ; preds = %bb.kq
  %i.bam = landingpad { ptr, i32 }
          cleanup
  %i.ban = load ptr, ptr %37, align 8, !tbaa !340
  %.not.i36.i.i.i.i.i.i.i.i251 = icmp eq ptr %i.ban, null
  br i1 %.not.i36.i.i.i.i.i.i.i.i251, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %37) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252: ; preds = %bb.ku, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  invoke void @__cxa_end_catch()
          to label %.body49.i207 unwind label %bb.lb

bb.kv:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i258
  %i.bao = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.kw:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i268
  %i.bap = load ptr, ptr %38, align 8, !tbaa !340
  %.not.i38.i.i.i.i.i.i.i.i271 = icmp eq ptr %i.bap, null
  br i1 %.not.i38.i.i.i.i.i.i.i.i271, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i272, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i272

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i272: ; preds = %bb.kx, %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.ky:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i268
  %i.baq = landingpad { ptr, i32 }
          cleanup
  %i.bar = load ptr, ptr %38, align 8, !tbaa !340
  %.not.i40.i.i.i.i.i.i.i.i269 = icmp eq ptr %i.bar, null
  br i1 %.not.i40.i.i.i.i.i.i.i.i269, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i270, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i270

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i270: ; preds = %bb.kz, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.la

bb.la:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i270, %bb.kv
  %.pn.i.i.i.i.i.i.i.i.i259 = phi { ptr, i32 } [ %i.baq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i270 ], [ %i.bao, %bb.kv ]
  invoke void @__cxa_end_catch()
          to label %.body49.i207 unwind label %bb.lb

bb.lb:                                            ; preds = %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252
  %i.bas = landingpad { ptr, i32 }
          catch ptr null
  %i.bat = extractvalue { ptr, i32 } %i.bas, 0
  call void @__clang_call_terminate(ptr %i.bat) #32
  unreachable

bb.lc:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i258
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i272, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i254
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i255

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit6.i27.i.i.i.i.i.i.i.i
  %i.bau = add i64 %.01558.i.i.i.i.i.i.i.i248, -1
  %i.bav = and i64 %i.bau, %.01558.i.i.i.i.i.i.i.i248 ; 2 uses
  %.not.i.i.i.i.i.i.i.i257 = icmp eq i64 %i.bav, 0
  br i1 %.not.i.i.i.i.i.i.i.i257, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %bb.kg, !llvm.loop !1315

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i, %bb.ji, %.lr.ph.i.i.i.i.i.i.i211
  %i.baw = add nsw i32 %i.aug, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i213 = icmp sgt i32 %i.baw, %i.atk
  br i1 %.not33.i.i.i.i.i.i.i213, label %._crit_edge.i.i.i.i.i.i.i214, label %.lr.ph.i.i.i.i.i.i.i211, !llvm.loop !1316

bb.ld:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i214
  %i.bax = and i32 %i.atg, 63
  %i.bay = zext nneg i32 %i.bax to i64
  %notmask.i36.i.i.i.i.i.i.i216 = shl nsw i64 -1, %i.bay
  %i.baz = xor i64 %notmask.i36.i.i.i.i.i.i.i216, -1
  br label %.invoke.i217

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i214, %.invoke.i217, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  br label %.loopexit10.i202

.loopexit10.i202:                                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i, %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %43)
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

.loopexit.i283:                                   ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i
  %lpad.loopexit.i284 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i207

.loopexit.split-lp.loopexit.i255:                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit12.i256 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i207

.loopexit.split-lp.loopexit.split-lp.loopexit.i230: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit16.i231 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i207

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i205: ; preds = %bb.jh, %.invoke.i217
  %lpad.loopexit.split-lp.i206 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i207

.body49.i207:                                     ; preds = %bb.js, %bb.kp, %bb.ip, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i205, %.loopexit.split-lp.loopexit.split-lp.loopexit.i230, %.loopexit.split-lp.loopexit.i255, %.loopexit.i283, %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252, %bb.kd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i227, %bb.ja, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i280
  %eh.lpad-body50.i208 = phi { ptr, i32 } [ %i.azo, %bb.kp ], [ %.pn.i.i.i.i.i289, %bb.ja ], [ %i.asu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i280 ], [ %i.arw, %bb.ip ], [ %.pn.i18.i.i.i.i.i.i.i.i233, %bb.kd ], [ %i.axi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i227 ], [ %.pn.i.i.i.i.i.i.i.i.i259, %bb.la ], [ %i.bam, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252 ], [ %lpad.loopexit.split-lp.i206, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i205 ], [ %lpad.loopexit.i284, %.loopexit.i283 ], [ %lpad.loopexit12.i256, %.loopexit.split-lp.loopexit.i255 ], [ %lpad.loopexit16.i231, %.loopexit.split-lp.loopexit.split-lp.loopexit.i230 ], [ %i.awk, %bb.js ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #28
  br label %.body.i186

.body.i186:                                       ; preds = %.body49.i207, %bb.hy
  %.pn.i187 = phi { ptr, i32 } [ %eh.lpad-body50.i208, %.body49.i207 ], [ %i.aou, %bb.hy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %common.resume

bb.le:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i179
  %i.bba = load i32, ptr %i.ang, align 4, !tbaa !288
  %i.bbb = icmp eq i32 %i.bba, 1
  %i.bbc = load i32, ptr %i.ani, align 4, !tbaa !288
  %i.bbd = icmp eq i32 %i.bbc, 1                  ; 2 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.amy, i64 28
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !291 ; 6 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.amy, i64 32
  %i.bbh = load i32, ptr %i.bbg, align 8, !tbaa !300 ; 9 uses
  %i.bbi = sub nsw i32 %i.bbh, %i.bbf
  %i.bbj = and i32 %i.bbi, -16                    ; 10 uses
  %i.bbk = sext i32 %i.bbj to i64                 ; 5 uses
  %i.bbl = icmp ult i32 %i.bbf, %i.bbj            ; 4 uses
  br i1 %i.bbb, label %bb.lf, label %bb.lk

bb.lf:                                            ; preds = %bb.le
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.bbn = load i16, ptr %i.bbm, align 8, !tbaa !482 ; 4 uses
  br i1 %i.bbd, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.ana, i64 144
  %i.bbp = load i16, ptr %i.bbo, align 8, !tbaa !482 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i.preheader.i342, label %.preheader.i.i336

.lr.ph.i.preheader.i342:                          ; preds = %bb.lg
  %i.bbq = insertelement <16 x i16> poison, i16 %i.bbn, i64 0
  %i.bbr = insertelement <16 x i16> poison, i16 %i.bbp, i64 0
  %i.bbs = icmp sgt <16 x i16> %i.bbr, %i.bbq
  %i.bbt = shufflevector <16 x i1> %i.bbs, <16 x i1> poison, <16 x i32> zeroinitializer
  %i.bbu = sext <16 x i1> %i.bbt to <16 x i16>
  %i.bbv = bitcast <16 x i16> %i.bbu to <32 x i8>
  %i.bbw = icmp slt <32 x i8> %i.bbv, zeroinitializer
  %i.bbx = bitcast <32 x i1> %i.bbw to i32
  %69 = tail call noundef i32 @llvm.pext.i32(i32 %i.bbx, i32 -1431655766)
  %i.bby = trunc i32 %69 to i16
  br label %.lr.ph.i.i343

.preheader.i.i336:                                ; preds = %.lr.ph.i.i343, %bb.lg
  %i.bbz = sext i32 %i.bbh to i64                 ; 2 uses
  %i.bca = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bca, label %.lr.ph32.i.preheader.i337, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i

.lr.ph32.i.preheader.i337:                        ; preds = %.preheader.i.i336
  %i.bcb = icmp slt i16 %i.bbn, %i.bbp
  br i1 %i.bcb, label %.lr.ph32.i.us.i340, label %.lr.ph32.i.i338

.lr.ph32.i.us.i340:                               ; preds = %.lr.ph32.i.preheader.i337, %.lr.ph32.i.us.i340
  %.031.i.us.i341 = phi i64 [ %i.bcj, %.lr.ph32.i.us.i340 ], [ %i.bbk, %.lr.ph32.i.preheader.i337 ] ; 3 uses
  %i.bcc = lshr i64 %.031.i.us.i341, 3
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bcc ; 2 uses
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !32
  %i.bcf = trunc i64 %.031.i.us.i341 to i8
  %i.bcg = and i8 %i.bcf, 7
  %i.bch = shl nuw i8 1, %i.bcg
  %i.bci = or i8 %i.bch, %i.bce
  store i8 %i.bci, ptr %i.bcd, align 1, !tbaa !32
  %i.bcj = add nuw i64 %.031.i.us.i341, 1         ; 2 uses
  %i.bck = icmp ult i64 %i.bcj, %i.bbz
  br i1 %i.bck, label %.lr.ph32.i.us.i340, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1317

.lr.ph.i.i343:                                    ; preds = %.lr.ph.i.i343, %.lr.ph.i.preheader.i342
  %.02330.i.i344 = phi i32 [ %i.bco, %.lr.ph.i.i343 ], [ %i.bbf, %.lr.ph.i.preheader.i342 ] ; 2 uses
  %i.bcl = sdiv i32 %.02330.i.i344, 8
  %i.bcm = sext i32 %i.bcl to i64
  %i.bcn = getelementptr inbounds i8, ptr %i.anf, i64 %i.bcm
  store i16 %i.bby, ptr %i.bcn, align 2, !tbaa !474
  %i.bco = add nuw i32 %.02330.i.i344, 16         ; 2 uses
  %i.bcp = icmp ult i32 %i.bco, %i.bbj
  br i1 %i.bcp, label %.lr.ph.i.i343, label %.preheader.i.i336, !llvm.loop !1318

.lr.ph32.i.i338:                                  ; preds = %.lr.ph32.i.preheader.i337, %.lr.ph32.i.i338
  %.031.i.i339 = phi i64 [ %i.bcx, %.lr.ph32.i.i338 ], [ %i.bbk, %.lr.ph32.i.preheader.i337 ] ; 3 uses
  %i.bcq = lshr i64 %.031.i.i339, 3
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bcq ; 2 uses
  %i.bcs = load i8, ptr %i.bcr, align 1, !tbaa !32
  %i.bct = and i64 %.031.i.i339, 7
  %i.bcu = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bct
  %i.bcv = load i8, ptr %i.bcu, align 1, !tbaa !32
  %i.bcw = and i8 %i.bcv, %i.bcs
  store i8 %i.bcw, ptr %i.bcr, align 1, !tbaa !32
  %i.bcx = add nuw i64 %.031.i.i339, 1            ; 2 uses
  %i.bcy = icmp ult i64 %i.bcx, %i.bbz
  br i1 %i.bcy, label %.lr.ph32.i.i338, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1317

bb.lh:                                            ; preds = %bb.lf
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.ana, i64 120
  %i.bda = load ptr, ptr %i.bcz, align 8, !tbaa !492 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i59.preheader.i333, label %.preheader.i56.i328

.lr.ph.i59.preheader.i333:                        ; preds = %bb.lh
  %i.bdb = insertelement <16 x i16> poison, i16 %i.bbn, i64 0
  %i.bdc = shufflevector <16 x i16> %i.bdb, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i59.i334

.preheader.i56.i328:                              ; preds = %.lr.ph.i59.i334, %bb.lh
  %i.bdd = sext i32 %i.bbh to i64
  %i.bde = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bde, label %.lr.ph33.i.i329, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i59.i334:                                  ; preds = %.lr.ph.i59.i334, %.lr.ph.i59.preheader.i333
  %.02431.i.i335 = phi i32 [ %i.bdr, %.lr.ph.i59.i334 ], [ %i.bbf, %.lr.ph.i59.preheader.i333 ] ; 3 uses
  %i.bdf = sext i32 %.02431.i.i335 to i64
  %i.bdg = getelementptr inbounds [2 x i8], ptr %i.bda, i64 %i.bdf
  %i.bdh = load <16 x i16>, ptr %i.bdg, align 1, !tbaa !32, !noalias !1319
  %i.bdi = icmp sgt <16 x i16> %i.bdh, %i.bdc
  %i.bdj = sext <16 x i1> %i.bdi to <16 x i16>
  %i.bdk = bitcast <16 x i16> %i.bdj to <32 x i8>
  %i.bdl = icmp slt <32 x i8> %i.bdk, zeroinitializer
  %i.bdm = bitcast <32 x i1> %i.bdl to i32
  %70 = tail call noundef i32 @llvm.pext.i32(i32 %i.bdm, i32 -1431655766)
  %i.bdn = sdiv i32 %.02431.i.i335, 8
  %i.bdo = sext i32 %i.bdn to i64
  %i.bdp = getelementptr inbounds i8, ptr %i.anf, i64 %i.bdo
  %i.bdq = trunc i32 %70 to i16
  store i16 %i.bdq, ptr %i.bdp, align 2, !tbaa !474
  %i.bdr = add nuw i32 %.02431.i.i335, 16         ; 2 uses
  %i.bds = icmp ult i32 %i.bdr, %i.bbj
  br i1 %i.bds, label %.lr.ph.i59.i334, label %.preheader.i56.i328, !llvm.loop !1326

.lr.ph33.i.i329:                                  ; preds = %.preheader.i56.i328, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331
  %.032.i.i330 = phi i64 [ %i.beh, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331 ], [ %i.bbk, %.preheader.i56.i328 ] ; 5 uses
  %i.bdt = getelementptr inbounds nuw [2 x i8], ptr %i.bda, i64 %.032.i.i330
  %i.bdu = load i16, ptr %i.bdt, align 2, !tbaa !474
  %i.bdv = icmp slt i16 %i.bbn, %i.bdu
  %i.bdw = lshr i64 %.032.i.i330, 3
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bdw ; 2 uses
  %i.bdy = load i8, ptr %i.bdx, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bdv, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %.lr.ph33.i.i329
  %i.bdz = trunc i64 %.032.i.i330 to i8
  %i.bea = and i8 %i.bdz, 7
  %i.beb = shl nuw i8 1, %i.bea
  %i.bec = or i8 %i.beb, %i.bdy
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331

bb.lj:                                            ; preds = %.lr.ph33.i.i329
  %i.bed = and i64 %.032.i.i330, 7
  %i.bee = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bed
  %i.bef = load i8, ptr %i.bee, align 1, !tbaa !32
  %i.beg = and i8 %i.bef, %i.bdy
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331: ; preds = %bb.lj, %bb.li
  %.sink.i.i58.i332 = phi i8 [ %i.beg, %bb.lj ], [ %i.bec, %bb.li ]
  store i8 %.sink.i.i58.i332, ptr %i.bdx, align 1, !tbaa !32
  %i.beh = add nuw i64 %.032.i.i330, 1            ; 2 uses
  %i.bei = icmp ult i64 %i.beh, %i.bdd
  br i1 %i.bei, label %.lr.ph33.i.i329, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1327

bb.lk:                                            ; preds = %bb.le
  %i.bej = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.bek = load ptr, ptr %i.bej, align 8, !tbaa !492 ; 4 uses
  br i1 %i.bbd, label %bb.ll, label %bb.lo

bb.ll:                                            ; preds = %bb.lk
  %i.bel = getelementptr inbounds nuw i8, ptr %i.ana, i64 144
  %i.bem = load i16, ptr %i.bel, align 8, !tbaa !482 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i65.preheader.i325, label %.preheader.i60.i320

.lr.ph.i65.preheader.i325:                        ; preds = %bb.ll
  %i.ben = insertelement <16 x i16> poison, i16 %i.bem, i64 0
  %i.beo = shufflevector <16 x i16> %i.ben, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i65.i326

.preheader.i60.i320:                              ; preds = %.lr.ph.i65.i326, %bb.ll
  %i.bep = sext i32 %i.bbh to i64
  %i.beq = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.beq, label %.lr.ph33.i61.i321, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i65.i326:                                  ; preds = %.lr.ph.i65.i326, %.lr.ph.i65.preheader.i325
  %.02431.i66.i327 = phi i32 [ %i.bfd, %.lr.ph.i65.i326 ], [ %i.bbf, %.lr.ph.i65.preheader.i325 ] ; 3 uses
  %i.ber = sext i32 %.02431.i66.i327 to i64
  %i.bes = getelementptr inbounds [2 x i8], ptr %i.bek, i64 %i.ber
  %i.bet = load <16 x i16>, ptr %i.bes, align 1, !tbaa !32, !noalias !1328
  %i.beu = icmp sgt <16 x i16> %i.beo, %i.bet
  %i.bev = sext <16 x i1> %i.beu to <16 x i16>
  %i.bew = bitcast <16 x i16> %i.bev to <32 x i8>
  %i.bex = icmp slt <32 x i8> %i.bew, zeroinitializer
  %i.bey = bitcast <32 x i1> %i.bex to i32
  %71 = tail call noundef i32 @llvm.pext.i32(i32 %i.bey, i32 -1431655766)
  %i.bez = sdiv i32 %.02431.i66.i327, 8
  %i.bfa = sext i32 %i.bez to i64
  %i.bfb = getelementptr inbounds i8, ptr %i.anf, i64 %i.bfa
  %i.bfc = trunc i32 %71 to i16
  store i16 %i.bfc, ptr %i.bfb, align 2, !tbaa !474
  %i.bfd = add nuw i32 %.02431.i66.i327, 16       ; 2 uses
  %i.bfe = icmp ult i32 %i.bfd, %i.bbj
  br i1 %i.bfe, label %.lr.ph.i65.i326, label %.preheader.i60.i320, !llvm.loop !1335

.lr.ph33.i61.i321:                                ; preds = %.preheader.i60.i320, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323
  %.032.i62.i322 = phi i64 [ %i.bft, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323 ], [ %i.bbk, %.preheader.i60.i320 ] ; 5 uses
  %i.bff = getelementptr inbounds nuw [2 x i8], ptr %i.bek, i64 %.032.i62.i322
  %i.bfg = load i16, ptr %i.bff, align 2, !tbaa !474
  %i.bfh = icmp slt i16 %i.bfg, %i.bem
  %i.bfi = lshr i64 %.032.i62.i322, 3
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bfi ; 2 uses
  %i.bfk = load i8, ptr %i.bfj, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bfh, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %.lr.ph33.i61.i321
  %i.bfl = trunc i64 %.032.i62.i322 to i8
  %i.bfm = and i8 %i.bfl, 7
  %i.bfn = shl nuw i8 1, %i.bfm
  %i.bfo = or i8 %i.bfn, %i.bfk
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323

bb.ln:                                            ; preds = %.lr.ph33.i61.i321
  %i.bfp = and i64 %.032.i62.i322, 7
  %i.bfq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bfp
  %i.bfr = load i8, ptr %i.bfq, align 1, !tbaa !32
  %i.bfs = and i8 %i.bfr, %i.bfk
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323: ; preds = %bb.ln, %bb.lm
  %.sink.i.i64.i324 = phi i8 [ %i.bfs, %bb.ln ], [ %i.bfo, %bb.lm ]
  store i8 %.sink.i.i64.i324, ptr %i.bfj, align 1, !tbaa !32
  %i.bft = add nuw i64 %.032.i62.i322, 1          ; 2 uses
  %i.bfu = icmp ult i64 %i.bft, %i.bep
  br i1 %i.bfu, label %.lr.ph33.i61.i321, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1336

bb.lo:                                            ; preds = %bb.lk
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.ana, i64 120
  %i.bfw = load ptr, ptr %i.bfv, align 8, !tbaa !492 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i70.i318, label %.preheader.i67.i313

.preheader.i67.i313:                              ; preds = %.lr.ph.i70.i318, %bb.lo
  %i.bfx = sext i32 %i.bbh to i64
  %i.bfy = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bfy, label %.lr.ph34.i.i314, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i70.i318:                                  ; preds = %bb.lo, %.lr.ph.i70.i318
  %.02532.i.i319 = phi i32 [ %i.bgn, %.lr.ph.i70.i318 ], [ %i.bbf, %bb.lo ] ; 3 uses
  %i.bfz = sext i32 %.02532.i.i319 to i64         ; 2 uses
  %i.bga = getelementptr inbounds [2 x i8], ptr %i.bek, i64 %i.bfz
  %i.bgb = load <16 x i16>, ptr %i.bga, align 1, !tbaa !32, !noalias !1337
  %i.bgc = getelementptr inbounds [2 x i8], ptr %i.bfw, i64 %i.bfz
  %i.bgd = load <16 x i16>, ptr %i.bgc, align 1, !tbaa !32, !noalias !1344
  %i.bge = icmp sgt <16 x i16> %i.bgd, %i.bgb
  %i.bgf = sext <16 x i1> %i.bge to <16 x i16>
  %i.bgg = bitcast <16 x i16> %i.bgf to <32 x i8>
  %i.bgh = icmp slt <32 x i8> %i.bgg, zeroinitializer
  %i.bgi = bitcast <32 x i1> %i.bgh to i32
  %72 = tail call noundef i32 @llvm.pext.i32(i32 %i.bgi, i32 -1431655766)
  %i.bgj = sdiv i32 %.02532.i.i319, 8
  %i.bgk = sext i32 %i.bgj to i64
  %i.bgl = getelementptr inbounds i8, ptr %i.anf, i64 %i.bgk
  %i.bgm = trunc i32 %72 to i16
  store i16 %i.bgm, ptr %i.bgl, align 2, !tbaa !474
  %i.bgn = add nuw i32 %.02532.i.i319, 16         ; 2 uses
  %i.bgo = icmp ult i32 %i.bgn, %i.bbj
  br i1 %i.bgo, label %.lr.ph.i70.i318, label %.preheader.i67.i313, !llvm.loop !1351

.lr.ph34.i.i314:                                  ; preds = %.preheader.i67.i313, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316
  %.033.i.i315 = phi i64 [ %i.bhf, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316 ], [ %i.bbk, %.preheader.i67.i313 ] ; 6 uses
  %i.bgp = getelementptr inbounds nuw [2 x i8], ptr %i.bek, i64 %.033.i.i315
  %i.bgq = getelementptr inbounds nuw [2 x i8], ptr %i.bfw, i64 %.033.i.i315
  %i.bgr = load i16, ptr %i.bgp, align 2, !tbaa !474
  %i.bgs = load i16, ptr %i.bgq, align 2, !tbaa !474
  %i.bgt = icmp slt i16 %i.bgr, %i.bgs
  %i.bgu = lshr i64 %.033.i.i315, 3
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bgu ; 2 uses
  %i.bgw = load i8, ptr %i.bgv, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bgt, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %.lr.ph34.i.i314
  %i.bgx = trunc i64 %.033.i.i315 to i8
  %i.bgy = and i8 %i.bgx, 7
  %i.bgz = shl nuw i8 1, %i.bgy
  %i.bha = or i8 %i.bgw, %i.bgz
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316

bb.lq:                                            ; preds = %.lr.ph34.i.i314
  %i.bhb = and i64 %.033.i.i315, 7
  %i.bhc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bhb
  %i.bhd = load i8, ptr %i.bhc, align 1, !tbaa !32
  %i.bhe = and i8 %i.bhd, %i.bgw
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316: ; preds = %bb.lq, %bb.lp
  %.sink.i.i69.i317 = phi i8 [ %i.bhe, %bb.lq ], [ %i.bha, %bb.lp ]
  store i8 %.sink.i.i69.i317, ptr %i.bgv, align 1, !tbaa !32
  %i.bhf = add nuw i64 %.033.i.i315, 1            ; 2 uses
  %i.bhg = icmp ult i64 %i.bhf, %i.bfx
  br i1 %i.bhg, label %.lr.ph34.i.i314, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1352

_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i: ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331, %.lr.ph32.i.i338, %.lr.ph32.i.us.i340, %.preheader.i67.i313, %.preheader.i60.i320, %.preheader.i56.i328, %.preheader.i.i336
  tail call void @_ZN8facebook5velox10BaseVector10clearNullsERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(94) %.val4, ptr noundef nonnull align 8 dereferenceable(38) %i.amy)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit: ; preds = %.loopexit10.i202, %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.xt

bb.lr:                                            ; preds = %bb.a
  %i.bhh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bhi = load ptr, ptr %i.bhh, align 8, !tbaa !1217, !nonnull !57
  %i.bhj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bhk = load ptr, ptr %i.bhj, align 8, !tbaa !1218, !nonnull !57, !align !318 ; 22 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bhm = load ptr, ptr %i.bhl, align 8, !tbaa !208 ; 6 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bho = load ptr, ptr %i.bhn, align 8, !tbaa !1219, !nonnull !57, !align !318 ; 9 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !1220, !nonnull !57, !align !318
  %.val5 = load ptr, ptr %i.bhq, align 8, !tbaa !208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %.val5, ptr %i.c, align 8, !tbaa !286
  %i.bhr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIbE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %.val5) ; 49 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.bht = load i32, ptr %i.bhs, align 4, !tbaa !288
  switch i32 %i.bht, label %.critedge.i360 [
    i32 1, label %bb.ls
    i32 3, label %bb.ls
  ]

bb.ls:                                            ; preds = %bb.lr, %bb.lr
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhm, i64 28 ; 2 uses
  %i.bhv = load i32, ptr %i.bhu, align 4, !tbaa !288
  switch i32 %i.bhv, label %.critedge.i360 [
    i32 1, label %bb.lt
    i32 3, label %bb.lt
  ]

bb.lt:                                            ; preds = %bb.ls, %bb.ls
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhk, i64 36 ; 2 uses
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhk, i64 37
  %i.bhy = load i8, ptr %i.bhx, align 1, !tbaa !289, !range !56, !noundef !57
  %i.bhz = trunc nuw i8 %i.bhy to i1
  br i1 %i.bhz, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499, label %bb.lu

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499: ; preds = %bb.lt
  %.0.in.pre.i.i500 = load i8, ptr %i.bhw, align 4, !tbaa !64, !range !56
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357

bb.lu:                                            ; preds = %bb.lt
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhk, i64 28
  %i.bib = load i32, ptr %i.bia, align 4, !tbaa !291
  %i.bic = icmp eq i32 %i.bib, 0
  br i1 %i.bic, label %bb.lv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lv:                                            ; preds = %bb.lu
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bhk, i64 32
  %i.bie = load i32, ptr %i.bid, align 8, !tbaa !300 ; 6 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bhk, i64 24
  %i.big = load i32, ptr %i.bif, align 8, !tbaa !301
  %i.bih = icmp eq i32 %i.bie, %i.big
  br i1 %i.bih, label %bb.lw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lw:                                            ; preds = %bb.lv
  %i.bii = load ptr, ptr %i.bhk, align 8, !tbaa !302 ; 2 uses
  %.not.i.i.i491 = icmp sgt i32 %i.bie, 0
  br i1 %.not.i.i.i491, label %bb.lx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lx:                                            ; preds = %bb.lw
  %i.bij = and i32 %i.bie, 2147483584             ; 3 uses
  %i.bik = zext nneg i32 %i.bij to i64
  %.not37.i.i.not.i.i4931407.not = icmp eq i32 %i.bij, 0
  br i1 %.not37.i.i.not.i.i4931407.not, label %.critedge.i.i.i.i494, label %.lr.ph1409

bb.ly:                                            ; preds = %.lr.ph1409
  %indvars.iv.next.i.i498 = add nuw nsw i64 %indvars.iv.i.i4921408, 64 ; 2 uses
  %.not37.i.i.not.i.i493 = icmp samesign ult i64 %indvars.iv.next.i.i498, %i.bik
  br i1 %.not37.i.i.not.i.i493, label %.lr.ph1409, label %.critedge.i.i.i.i494, !llvm.loop !303

.lr.ph1409:                                       ; preds = %bb.lx, %bb.ly
  %indvars.iv.i.i4921408 = phi i64 [ %indvars.iv.next.i.i498, %bb.ly ], [ 0, %bb.lx ] ; 2 uses
  %i.bil = lshr exact i64 %indvars.iv.i.i4921408, 3
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bii, i64 %i.bil
  %i.bin = load i64, ptr %i.bim, align 8, !tbaa !176
  %i.bio = icmp eq i64 %i.bin, -1
  br i1 %i.bio, label %bb.ly, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, !llvm.loop !303

.critedge.i.i.i.i494:                             ; preds = %bb.ly, %bb.lx
  %.not38.i.i.i.i495 = icmp eq i32 %i.bie, %i.bij
  br i1 %.not38.i.i.i.i495, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, label %bb.lz

bb.lz:                                            ; preds = %.critedge.i.i.i.i494
  %i.bip = lshr i32 %i.bie, 6
  %i.biq = and i32 %i.bie, 63
  %i.bir = zext nneg i32 %i.biq to i64
  %notmask.i40.i.i.i.i496 = shl nsw i64 -1, %i.bir
  %i.bis = zext nneg i32 %i.bip to i64
  %i.bit = getelementptr inbounds nuw [8 x i8], ptr %i.bii, i64 %i.bis
  %i.biu = load i64, ptr %i.bit, align 8, !tbaa !176
  %.demorgan.i.i497 = or i64 %i.biu, %notmask.i40.i.i.i.i496
  %i.biv = icmp eq i64 %.demorgan.i.i497, -1
  %i.biw = zext i1 %i.biv to i16
  %i.bix = or disjoint i16 %i.biw, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355: ; preds = %.lr.ph1409, %bb.lz, %.critedge.i.i.i.i494, %bb.lw, %bb.lv, %bb.lu
  %.sroa.0.0.insert.ext.i.i356 = phi i16 [ 256, %bb.lv ], [ 256, %bb.lu ], [ 257, %bb.lw ], [ 257, %.critedge.i.i.i.i494 ], [ %i.bix, %bb.lz ], [ 256, %.lr.ph1409 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i356, ptr %i.bhw, align 4
  %i.biy = trunc i16 %.sroa.0.0.insert.ext.i.i356 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499
  %.0.in.i.i358 = phi i8 [ %.0.in.pre.i.i500, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499 ], [ %i.biy, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355 ]
  %.0.i.i359 = trunc nuw i8 %.0.in.i.i358 to i1
  br i1 %.0.i.i359, label %bb.pj, label %.critedge.i360

.critedge.i360:                                   ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357, %bb.ls, %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.biz = load ptr, ptr %i.bho, align 8, !tbaa !239
  store ptr %i.biz, ptr %33, align 8, !tbaa !304
  %i.bja = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr null, ptr %i.bja, align 8, !tbaa !313
  %i.bjb = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.ma unwind label %bb.mb

bb.ma:                                            ; preds = %.critedge.i360
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bjb, ptr noundef nonnull align 8 dereferenceable(94) %i.i, ptr noundef nonnull align 8 dereferenceable(38) %i.bhk, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363 unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %.critedge.i360
  %i.bjc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bja) #28
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363: ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.bjd = load ptr, ptr %i.bho, align 8, !tbaa !239
  store ptr %i.bjd, ptr %34, align 8, !tbaa !304
  %i.bje = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr null, ptr %i.bje, align 8, !tbaa !313
  %i.bjf = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %bb.mc unwind label %bb.md

bb.mc:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bjf, ptr noundef nonnull align 8 dereferenceable(94) %i.bhm, ptr noundef nonnull align 8 dereferenceable(38) %i.bhk, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i366 unwind label %bb.md

bb.md:                                            ; preds = %bb.mc, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363
  %i.bjg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bje) #28
  br label %.body.i364

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i366: ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %33, ptr %32, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %38) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.anc, i32 noundef %i.axu, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.kw unwind label %bb.ky

.loopexit44.i.i.i.i.i.i.i.i258:                   ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i266, %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i264, %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i262, %.lr.ph.i.i.i.preheader.i29.preheader.i.i.i.i.i.i.i.i260, %bb.ko
  invoke void @__cxa_rethrow() #29
          to label %bb.lc unwind label %bb.kv

bb.kp:                                            ; preds = %bb.kn
  %i.bai = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.baj = icmp eq i32 %i.azq, %i.bai
  br i1 %i.baj, label %bb.kq, label %.body49.i207

bb.kq:                                            ; preds = %bb.kp
  %i.bak = call ptr @__cxa_begin_catch(ptr %i.azp) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %37) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.anc, i32 noundef %i.axu, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.kr unwind label %bb.kt

bb.kr:                                            ; preds = %bb.kq
  %i.bal = load ptr, ptr %37, align 8, !tbaa !340
  %.not.i34.i.i.i.i.i.i.i.i253 = icmp eq ptr %i.bal, null
  br i1 %.not.i34.i.i.i.i.i.i.i.i253, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i254, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %37) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i254

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i254: ; preds = %bb.ks, %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.kt:                                            ; preds = %bb.kq
  %i.bam = landingpad { ptr, i32 }
          cleanup
  %i.ban = load ptr, ptr %37, align 8, !tbaa !340
  %.not.i36.i.i.i.i.i.i.i.i251 = icmp eq ptr %i.ban, null
  br i1 %.not.i36.i.i.i.i.i.i.i.i251, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %37) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252: ; preds = %bb.ku, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  invoke void @__cxa_end_catch()
          to label %.body49.i207 unwind label %bb.lb

bb.kv:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i258
  %i.bao = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.kw:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i268
  %i.bap = load ptr, ptr %38, align 8, !tbaa !340
  %.not.i38.i.i.i.i.i.i.i.i271 = icmp eq ptr %i.bap, null
  br i1 %.not.i38.i.i.i.i.i.i.i.i271, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i272, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i272

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i272: ; preds = %bb.kx, %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.ky:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i268
  %i.baq = landingpad { ptr, i32 }
          cleanup
  %i.bar = load ptr, ptr %38, align 8, !tbaa !340
  %.not.i40.i.i.i.i.i.i.i.i269 = icmp eq ptr %i.bar, null
  br i1 %.not.i40.i.i.i.i.i.i.i.i269, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i270, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i270

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i270: ; preds = %bb.kz, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.la

bb.la:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i270, %bb.kv
  %.pn.i.i.i.i.i.i.i.i.i259 = phi { ptr, i32 } [ %i.baq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i270 ], [ %i.bao, %bb.kv ]
  invoke void @__cxa_end_catch()
          to label %.body49.i207 unwind label %bb.lb

bb.lb:                                            ; preds = %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252
  %i.bas = landingpad { ptr, i32 }
          catch ptr null
  %i.bat = extractvalue { ptr, i32 } %i.bas, 0
  call void @__clang_call_terminate(ptr %i.bat) #32
  unreachable

bb.lc:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i258
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i272, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i254
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i255

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit6.i27.i.i.i.i.i.i.i.i
  %i.bau = add i64 %.01558.i.i.i.i.i.i.i.i248, -1
  %i.bav = and i64 %i.bau, %.01558.i.i.i.i.i.i.i.i248 ; 2 uses
  %.not.i.i.i.i.i.i.i.i257 = icmp eq i64 %i.bav, 0
  br i1 %.not.i.i.i.i.i.i.i.i257, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %bb.kg, !llvm.loop !1586

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i, %bb.ji, %.lr.ph.i.i.i.i.i.i.i211
  %i.baw = add nsw i32 %i.aug, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i213 = icmp sgt i32 %i.baw, %i.atk
  br i1 %.not33.i.i.i.i.i.i.i213, label %._crit_edge.i.i.i.i.i.i.i214, label %.lr.ph.i.i.i.i.i.i.i211, !llvm.loop !1587

bb.ld:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i214
  %i.bax = and i32 %i.atg, 63
  %i.bay = zext nneg i32 %i.bax to i64
  %notmask.i36.i.i.i.i.i.i.i216 = shl nsw i64 -1, %i.bay
  %i.baz = xor i64 %notmask.i36.i.i.i.i.i.i.i216, -1
  br label %.invoke.i217

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i214, %.invoke.i217, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  br label %.loopexit10.i202

.loopexit10.i202:                                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i, %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %43)
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

.loopexit.i283:                                   ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i
  %lpad.loopexit.i284 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i207

.loopexit.split-lp.loopexit.i255:                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit12.i256 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i207

.loopexit.split-lp.loopexit.split-lp.loopexit.i230: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit16.i231 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i207

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i205: ; preds = %bb.jh, %.invoke.i217
  %lpad.loopexit.split-lp.i206 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i207

.body49.i207:                                     ; preds = %bb.js, %bb.kp, %bb.ip, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i205, %.loopexit.split-lp.loopexit.split-lp.loopexit.i230, %.loopexit.split-lp.loopexit.i255, %.loopexit.i283, %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252, %bb.kd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i227, %bb.ja, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i280
  %eh.lpad-body50.i208 = phi { ptr, i32 } [ %i.azo, %bb.kp ], [ %.pn.i.i.i.i.i289, %bb.ja ], [ %i.asu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i280 ], [ %i.arw, %bb.ip ], [ %.pn.i18.i.i.i.i.i.i.i.i233, %bb.kd ], [ %i.axi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i227 ], [ %.pn.i.i.i.i.i.i.i.i.i259, %bb.la ], [ %i.bam, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i252 ], [ %lpad.loopexit.split-lp.i206, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i205 ], [ %lpad.loopexit.i284, %.loopexit.i283 ], [ %lpad.loopexit12.i256, %.loopexit.split-lp.loopexit.i255 ], [ %lpad.loopexit16.i231, %.loopexit.split-lp.loopexit.split-lp.loopexit.i230 ], [ %i.awk, %bb.js ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #28
  br label %.body.i186

.body.i186:                                       ; preds = %.body49.i207, %bb.hy
  %.pn.i187 = phi { ptr, i32 } [ %eh.lpad-body50.i208, %.body49.i207 ], [ %i.aou, %bb.hy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %common.resume

bb.le:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i179
  %i.bba = load i32, ptr %i.ang, align 4, !tbaa !288
  %i.bbb = icmp eq i32 %i.bba, 1
  %i.bbc = load i32, ptr %i.ani, align 4, !tbaa !288
  %i.bbd = icmp eq i32 %i.bbc, 1                  ; 2 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.amy, i64 28
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !291 ; 6 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.amy, i64 32
  %i.bbh = load i32, ptr %i.bbg, align 8, !tbaa !300 ; 9 uses
  %i.bbi = sub nsw i32 %i.bbh, %i.bbf
  %i.bbj = and i32 %i.bbi, -16                    ; 10 uses
  %i.bbk = sext i32 %i.bbj to i64                 ; 5 uses
  %i.bbl = icmp ult i32 %i.bbf, %i.bbj            ; 4 uses
  br i1 %i.bbb, label %bb.lf, label %bb.lk

bb.lf:                                            ; preds = %bb.le
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.bbn = load i16, ptr %i.bbm, align 8, !tbaa !482 ; 4 uses
  br i1 %i.bbd, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.ana, i64 144
  %i.bbp = load i16, ptr %i.bbo, align 8, !tbaa !482 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i.preheader.i342, label %.preheader.i.i336

.lr.ph.i.preheader.i342:                          ; preds = %bb.lg
  %i.bbq = insertelement <16 x i16> poison, i16 %i.bbn, i64 0
  %i.bbr = insertelement <16 x i16> poison, i16 %i.bbp, i64 0
  %i.bbs = icmp sgt <16 x i16> %i.bbq, %i.bbr
  %i.bbt = shufflevector <16 x i1> %i.bbs, <16 x i1> poison, <16 x i32> zeroinitializer
  %i.bbu = sext <16 x i1> %i.bbt to <16 x i16>
  %i.bbv = bitcast <16 x i16> %i.bbu to <32 x i8>
  %i.bbw = icmp slt <32 x i8> %i.bbv, zeroinitializer
  %i.bbx = bitcast <32 x i1> %i.bbw to i32
  %69 = tail call noundef i32 @llvm.pext.i32(i32 %i.bbx, i32 -1431655766)
  %i.bby = trunc i32 %69 to i16
  br label %.lr.ph.i.i343

.preheader.i.i336:                                ; preds = %.lr.ph.i.i343, %bb.lg
  %i.bbz = sext i32 %i.bbh to i64                 ; 2 uses
  %i.bca = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bca, label %.lr.ph32.i.preheader.i337, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i

.lr.ph32.i.preheader.i337:                        ; preds = %.preheader.i.i336
  %i.bcb = icmp sgt i16 %i.bbn, %i.bbp
  br i1 %i.bcb, label %.lr.ph32.i.us.i340, label %.lr.ph32.i.i338

.lr.ph32.i.us.i340:                               ; preds = %.lr.ph32.i.preheader.i337, %.lr.ph32.i.us.i340
  %.031.i.us.i341 = phi i64 [ %i.bcj, %.lr.ph32.i.us.i340 ], [ %i.bbk, %.lr.ph32.i.preheader.i337 ] ; 3 uses
  %i.bcc = lshr i64 %.031.i.us.i341, 3
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bcc ; 2 uses
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !32
  %i.bcf = trunc i64 %.031.i.us.i341 to i8
  %i.bcg = and i8 %i.bcf, 7
  %i.bch = shl nuw i8 1, %i.bcg
  %i.bci = or i8 %i.bch, %i.bce
  store i8 %i.bci, ptr %i.bcd, align 1, !tbaa !32
  %i.bcj = add nuw i64 %.031.i.us.i341, 1         ; 2 uses
  %i.bck = icmp ult i64 %i.bcj, %i.bbz
  br i1 %i.bck, label %.lr.ph32.i.us.i340, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1588

.lr.ph.i.i343:                                    ; preds = %.lr.ph.i.i343, %.lr.ph.i.preheader.i342
  %.02330.i.i344 = phi i32 [ %i.bco, %.lr.ph.i.i343 ], [ %i.bbf, %.lr.ph.i.preheader.i342 ] ; 2 uses
  %i.bcl = sdiv i32 %.02330.i.i344, 8
  %i.bcm = sext i32 %i.bcl to i64
  %i.bcn = getelementptr inbounds i8, ptr %i.anf, i64 %i.bcm
  store i16 %i.bby, ptr %i.bcn, align 2, !tbaa !474
  %i.bco = add nuw i32 %.02330.i.i344, 16         ; 2 uses
  %i.bcp = icmp ult i32 %i.bco, %i.bbj
  br i1 %i.bcp, label %.lr.ph.i.i343, label %.preheader.i.i336, !llvm.loop !1589

.lr.ph32.i.i338:                                  ; preds = %.lr.ph32.i.preheader.i337, %.lr.ph32.i.i338
  %.031.i.i339 = phi i64 [ %i.bcx, %.lr.ph32.i.i338 ], [ %i.bbk, %.lr.ph32.i.preheader.i337 ] ; 3 uses
  %i.bcq = lshr i64 %.031.i.i339, 3
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bcq ; 2 uses
  %i.bcs = load i8, ptr %i.bcr, align 1, !tbaa !32
  %i.bct = and i64 %.031.i.i339, 7
  %i.bcu = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bct
  %i.bcv = load i8, ptr %i.bcu, align 1, !tbaa !32
  %i.bcw = and i8 %i.bcv, %i.bcs
  store i8 %i.bcw, ptr %i.bcr, align 1, !tbaa !32
  %i.bcx = add nuw i64 %.031.i.i339, 1            ; 2 uses
  %i.bcy = icmp ult i64 %i.bcx, %i.bbz
  br i1 %i.bcy, label %.lr.ph32.i.i338, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1588

bb.lh:                                            ; preds = %bb.lf
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.ana, i64 120
  %i.bda = load ptr, ptr %i.bcz, align 8, !tbaa !492 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i59.preheader.i333, label %.preheader.i56.i328

.lr.ph.i59.preheader.i333:                        ; preds = %bb.lh
  %i.bdb = insertelement <16 x i16> poison, i16 %i.bbn, i64 0
  %i.bdc = shufflevector <16 x i16> %i.bdb, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i59.i334

.preheader.i56.i328:                              ; preds = %.lr.ph.i59.i334, %bb.lh
  %i.bdd = sext i32 %i.bbh to i64
  %i.bde = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bde, label %.lr.ph33.i.i329, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i59.i334:                                  ; preds = %.lr.ph.i59.i334, %.lr.ph.i59.preheader.i333
  %.02431.i.i335 = phi i32 [ %i.bdr, %.lr.ph.i59.i334 ], [ %i.bbf, %.lr.ph.i59.preheader.i333 ] ; 3 uses
  %i.bdf = sext i32 %.02431.i.i335 to i64
  %i.bdg = getelementptr inbounds [2 x i8], ptr %i.bda, i64 %i.bdf
  %i.bdh = load <16 x i16>, ptr %i.bdg, align 1, !tbaa !32, !noalias !1590
  %i.bdi = icmp sgt <16 x i16> %i.bdc, %i.bdh
  %i.bdj = sext <16 x i1> %i.bdi to <16 x i16>
  %i.bdk = bitcast <16 x i16> %i.bdj to <32 x i8>
  %i.bdl = icmp slt <32 x i8> %i.bdk, zeroinitializer
  %i.bdm = bitcast <32 x i1> %i.bdl to i32
  %70 = tail call noundef i32 @llvm.pext.i32(i32 %i.bdm, i32 -1431655766)
  %i.bdn = sdiv i32 %.02431.i.i335, 8
  %i.bdo = sext i32 %i.bdn to i64
  %i.bdp = getelementptr inbounds i8, ptr %i.anf, i64 %i.bdo
  %i.bdq = trunc i32 %70 to i16
  store i16 %i.bdq, ptr %i.bdp, align 2, !tbaa !474
  %i.bdr = add nuw i32 %.02431.i.i335, 16         ; 2 uses
  %i.bds = icmp ult i32 %i.bdr, %i.bbj
  br i1 %i.bds, label %.lr.ph.i59.i334, label %.preheader.i56.i328, !llvm.loop !1597

.lr.ph33.i.i329:                                  ; preds = %.preheader.i56.i328, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331
  %.032.i.i330 = phi i64 [ %i.beh, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331 ], [ %i.bbk, %.preheader.i56.i328 ] ; 5 uses
  %i.bdt = getelementptr inbounds nuw [2 x i8], ptr %i.bda, i64 %.032.i.i330
  %i.bdu = load i16, ptr %i.bdt, align 2, !tbaa !474
  %i.bdv = icmp sgt i16 %i.bbn, %i.bdu
  %i.bdw = lshr i64 %.032.i.i330, 3
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bdw ; 2 uses
  %i.bdy = load i8, ptr %i.bdx, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bdv, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %.lr.ph33.i.i329
  %i.bdz = trunc i64 %.032.i.i330 to i8
  %i.bea = and i8 %i.bdz, 7
  %i.beb = shl nuw i8 1, %i.bea
  %i.bec = or i8 %i.beb, %i.bdy
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331

bb.lj:                                            ; preds = %.lr.ph33.i.i329
  %i.bed = and i64 %.032.i.i330, 7
  %i.bee = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bed
  %i.bef = load i8, ptr %i.bee, align 1, !tbaa !32
  %i.beg = and i8 %i.bef, %i.bdy
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331: ; preds = %bb.lj, %bb.li
  %.sink.i.i58.i332 = phi i8 [ %i.beg, %bb.lj ], [ %i.bec, %bb.li ]
  store i8 %.sink.i.i58.i332, ptr %i.bdx, align 1, !tbaa !32
  %i.beh = add nuw i64 %.032.i.i330, 1            ; 2 uses
  %i.bei = icmp ult i64 %i.beh, %i.bdd
  br i1 %i.bei, label %.lr.ph33.i.i329, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1598

bb.lk:                                            ; preds = %bb.le
  %i.bej = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.bek = load ptr, ptr %i.bej, align 8, !tbaa !492 ; 4 uses
  br i1 %i.bbd, label %bb.ll, label %bb.lo

bb.ll:                                            ; preds = %bb.lk
  %i.bel = getelementptr inbounds nuw i8, ptr %i.ana, i64 144
  %i.bem = load i16, ptr %i.bel, align 8, !tbaa !482 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i65.preheader.i325, label %.preheader.i60.i320

.lr.ph.i65.preheader.i325:                        ; preds = %bb.ll
  %i.ben = insertelement <16 x i16> poison, i16 %i.bem, i64 0
  %i.beo = shufflevector <16 x i16> %i.ben, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i65.i326

.preheader.i60.i320:                              ; preds = %.lr.ph.i65.i326, %bb.ll
  %i.bep = sext i32 %i.bbh to i64
  %i.beq = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.beq, label %.lr.ph33.i61.i321, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i65.i326:                                  ; preds = %.lr.ph.i65.i326, %.lr.ph.i65.preheader.i325
  %.02431.i66.i327 = phi i32 [ %i.bfd, %.lr.ph.i65.i326 ], [ %i.bbf, %.lr.ph.i65.preheader.i325 ] ; 3 uses
  %i.ber = sext i32 %.02431.i66.i327 to i64
  %i.bes = getelementptr inbounds [2 x i8], ptr %i.bek, i64 %i.ber
  %i.bet = load <16 x i16>, ptr %i.bes, align 1, !tbaa !32, !noalias !1599
  %i.beu = icmp sgt <16 x i16> %i.bet, %i.beo
  %i.bev = sext <16 x i1> %i.beu to <16 x i16>
  %i.bew = bitcast <16 x i16> %i.bev to <32 x i8>
  %i.bex = icmp slt <32 x i8> %i.bew, zeroinitializer
  %i.bey = bitcast <32 x i1> %i.bex to i32
  %71 = tail call noundef i32 @llvm.pext.i32(i32 %i.bey, i32 -1431655766)
  %i.bez = sdiv i32 %.02431.i66.i327, 8
  %i.bfa = sext i32 %i.bez to i64
  %i.bfb = getelementptr inbounds i8, ptr %i.anf, i64 %i.bfa
  %i.bfc = trunc i32 %71 to i16
  store i16 %i.bfc, ptr %i.bfb, align 2, !tbaa !474
  %i.bfd = add nuw i32 %.02431.i66.i327, 16       ; 2 uses
  %i.bfe = icmp ult i32 %i.bfd, %i.bbj
  br i1 %i.bfe, label %.lr.ph.i65.i326, label %.preheader.i60.i320, !llvm.loop !1606

.lr.ph33.i61.i321:                                ; preds = %.preheader.i60.i320, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323
  %.032.i62.i322 = phi i64 [ %i.bft, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323 ], [ %i.bbk, %.preheader.i60.i320 ] ; 5 uses
  %i.bff = getelementptr inbounds nuw [2 x i8], ptr %i.bek, i64 %.032.i62.i322
  %i.bfg = load i16, ptr %i.bff, align 2, !tbaa !474
  %i.bfh = icmp sgt i16 %i.bfg, %i.bem
  %i.bfi = lshr i64 %.032.i62.i322, 3
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bfi ; 2 uses
  %i.bfk = load i8, ptr %i.bfj, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bfh, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %.lr.ph33.i61.i321
  %i.bfl = trunc i64 %.032.i62.i322 to i8
  %i.bfm = and i8 %i.bfl, 7
  %i.bfn = shl nuw i8 1, %i.bfm
  %i.bfo = or i8 %i.bfn, %i.bfk
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323

bb.ln:                                            ; preds = %.lr.ph33.i61.i321
  %i.bfp = and i64 %.032.i62.i322, 7
  %i.bfq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bfp
  %i.bfr = load i8, ptr %i.bfq, align 1, !tbaa !32
  %i.bfs = and i8 %i.bfr, %i.bfk
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323: ; preds = %bb.ln, %bb.lm
  %.sink.i.i64.i324 = phi i8 [ %i.bfs, %bb.ln ], [ %i.bfo, %bb.lm ]
  store i8 %.sink.i.i64.i324, ptr %i.bfj, align 1, !tbaa !32
  %i.bft = add nuw i64 %.032.i62.i322, 1          ; 2 uses
  %i.bfu = icmp ult i64 %i.bft, %i.bep
  br i1 %i.bfu, label %.lr.ph33.i61.i321, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1607

bb.lo:                                            ; preds = %bb.lk
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.ana, i64 120
  %i.bfw = load ptr, ptr %i.bfv, align 8, !tbaa !492 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i70.i318, label %.preheader.i67.i313

.preheader.i67.i313:                              ; preds = %.lr.ph.i70.i318, %bb.lo
  %i.bfx = sext i32 %i.bbh to i64
  %i.bfy = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bfy, label %.lr.ph34.i.i314, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i70.i318:                                  ; preds = %bb.lo, %.lr.ph.i70.i318
  %.02532.i.i319 = phi i32 [ %i.bgn, %.lr.ph.i70.i318 ], [ %i.bbf, %bb.lo ] ; 3 uses
  %i.bfz = sext i32 %.02532.i.i319 to i64         ; 2 uses
  %i.bga = getelementptr inbounds [2 x i8], ptr %i.bek, i64 %i.bfz
  %i.bgb = load <16 x i16>, ptr %i.bga, align 1, !tbaa !32, !noalias !1608
  %i.bgc = getelementptr inbounds [2 x i8], ptr %i.bfw, i64 %i.bfz
  %i.bgd = load <16 x i16>, ptr %i.bgc, align 1, !tbaa !32, !noalias !1615
  %i.bge = icmp sgt <16 x i16> %i.bgb, %i.bgd
  %i.bgf = sext <16 x i1> %i.bge to <16 x i16>
  %i.bgg = bitcast <16 x i16> %i.bgf to <32 x i8>
  %i.bgh = icmp slt <32 x i8> %i.bgg, zeroinitializer
  %i.bgi = bitcast <32 x i1> %i.bgh to i32
  %72 = tail call noundef i32 @llvm.pext.i32(i32 %i.bgi, i32 -1431655766)
  %i.bgj = sdiv i32 %.02532.i.i319, 8
  %i.bgk = sext i32 %i.bgj to i64
  %i.bgl = getelementptr inbounds i8, ptr %i.anf, i64 %i.bgk
  %i.bgm = trunc i32 %72 to i16
  store i16 %i.bgm, ptr %i.bgl, align 2, !tbaa !474
  %i.bgn = add nuw i32 %.02532.i.i319, 16         ; 2 uses
  %i.bgo = icmp ult i32 %i.bgn, %i.bbj
  br i1 %i.bgo, label %.lr.ph.i70.i318, label %.preheader.i67.i313, !llvm.loop !1622

.lr.ph34.i.i314:                                  ; preds = %.preheader.i67.i313, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316
  %.033.i.i315 = phi i64 [ %i.bhf, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316 ], [ %i.bbk, %.preheader.i67.i313 ] ; 6 uses
  %i.bgp = getelementptr inbounds nuw [2 x i8], ptr %i.bek, i64 %.033.i.i315
  %i.bgq = getelementptr inbounds nuw [2 x i8], ptr %i.bfw, i64 %.033.i.i315
  %i.bgr = load i16, ptr %i.bgp, align 2, !tbaa !474
  %i.bgs = load i16, ptr %i.bgq, align 2, !tbaa !474
  %i.bgt = icmp sgt i16 %i.bgr, %i.bgs
  %i.bgu = lshr i64 %.033.i.i315, 3
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bgu ; 2 uses
  %i.bgw = load i8, ptr %i.bgv, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bgt, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %.lr.ph34.i.i314
  %i.bgx = trunc i64 %.033.i.i315 to i8
  %i.bgy = and i8 %i.bgx, 7
  %i.bgz = shl nuw i8 1, %i.bgy
  %i.bha = or i8 %i.bgw, %i.bgz
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316

bb.lq:                                            ; preds = %.lr.ph34.i.i314
  %i.bhb = and i64 %.033.i.i315, 7
  %i.bhc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bhb
  %i.bhd = load i8, ptr %i.bhc, align 1, !tbaa !32
  %i.bhe = and i8 %i.bhd, %i.bgw
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316: ; preds = %bb.lq, %bb.lp
  %.sink.i.i69.i317 = phi i8 [ %i.bhe, %bb.lq ], [ %i.bha, %bb.lp ]
  store i8 %.sink.i.i69.i317, ptr %i.bgv, align 1, !tbaa !32
  %i.bhf = add nuw i64 %.033.i.i315, 1            ; 2 uses
  %i.bhg = icmp ult i64 %i.bhf, %i.bfx
  br i1 %i.bhg, label %.lr.ph34.i.i314, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1623

_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i: ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331, %.lr.ph32.i.i338, %.lr.ph32.i.us.i340, %.preheader.i67.i313, %.preheader.i60.i320, %.preheader.i56.i328, %.preheader.i.i336
  tail call void @_ZN8facebook5velox10BaseVector10clearNullsERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(94) %.val4, ptr noundef nonnull align 8 dereferenceable(38) %i.amy)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit: ; preds = %.loopexit10.i202, %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.xt

bb.lr:                                            ; preds = %bb.a
  %i.bhh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bhi = load ptr, ptr %i.bhh, align 8, !tbaa !1488, !nonnull !57
  %i.bhj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bhk = load ptr, ptr %i.bhj, align 8, !tbaa !1489, !nonnull !57, !align !318 ; 22 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bhm = load ptr, ptr %i.bhl, align 8, !tbaa !208 ; 6 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bho = load ptr, ptr %i.bhn, align 8, !tbaa !1490, !nonnull !57, !align !318 ; 9 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !1491, !nonnull !57, !align !318
  %.val5 = load ptr, ptr %i.bhq, align 8, !tbaa !208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %.val5, ptr %i.c, align 8, !tbaa !286
  %i.bhr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIbE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %.val5) ; 49 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.bht = load i32, ptr %i.bhs, align 4, !tbaa !288
  switch i32 %i.bht, label %.critedge.i360 [
    i32 1, label %bb.ls
    i32 3, label %bb.ls
  ]

bb.ls:                                            ; preds = %bb.lr, %bb.lr
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhm, i64 28 ; 2 uses
  %i.bhv = load i32, ptr %i.bhu, align 4, !tbaa !288
  switch i32 %i.bhv, label %.critedge.i360 [
    i32 1, label %bb.lt
    i32 3, label %bb.lt
  ]

bb.lt:                                            ; preds = %bb.ls, %bb.ls
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhk, i64 36 ; 2 uses
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhk, i64 37
  %i.bhy = load i8, ptr %i.bhx, align 1, !tbaa !289, !range !56, !noundef !57
  %i.bhz = trunc nuw i8 %i.bhy to i1
  br i1 %i.bhz, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499, label %bb.lu

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499: ; preds = %bb.lt
  %.0.in.pre.i.i500 = load i8, ptr %i.bhw, align 4, !tbaa !64, !range !56
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357

bb.lu:                                            ; preds = %bb.lt
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhk, i64 28
  %i.bib = load i32, ptr %i.bia, align 4, !tbaa !291
  %i.bic = icmp eq i32 %i.bib, 0
  br i1 %i.bic, label %bb.lv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lv:                                            ; preds = %bb.lu
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bhk, i64 32
  %i.bie = load i32, ptr %i.bid, align 8, !tbaa !300 ; 6 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bhk, i64 24
  %i.big = load i32, ptr %i.bif, align 8, !tbaa !301
  %i.bih = icmp eq i32 %i.bie, %i.big
  br i1 %i.bih, label %bb.lw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lw:                                            ; preds = %bb.lv
  %i.bii = load ptr, ptr %i.bhk, align 8, !tbaa !302 ; 2 uses
  %.not.i.i.i491 = icmp sgt i32 %i.bie, 0
  br i1 %.not.i.i.i491, label %bb.lx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lx:                                            ; preds = %bb.lw
  %i.bij = and i32 %i.bie, 2147483584             ; 3 uses
  %i.bik = zext nneg i32 %i.bij to i64
  %.not37.i.i.not.i.i4931381.not = icmp eq i32 %i.bij, 0
  br i1 %.not37.i.i.not.i.i4931381.not, label %.critedge.i.i.i.i494, label %.lr.ph1383

bb.ly:                                            ; preds = %.lr.ph1383
  %indvars.iv.next.i.i498 = add nuw nsw i64 %indvars.iv.i.i4921382, 64 ; 2 uses
  %.not37.i.i.not.i.i493 = icmp samesign ult i64 %indvars.iv.next.i.i498, %i.bik
  br i1 %.not37.i.i.not.i.i493, label %.lr.ph1383, label %.critedge.i.i.i.i494, !llvm.loop !303

.lr.ph1383:                                       ; preds = %bb.lx, %bb.ly
  %indvars.iv.i.i4921382 = phi i64 [ %indvars.iv.next.i.i498, %bb.ly ], [ 0, %bb.lx ] ; 2 uses
  %i.bil = lshr exact i64 %indvars.iv.i.i4921382, 3
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bii, i64 %i.bil
  %i.bin = load i64, ptr %i.bim, align 8, !tbaa !176
  %i.bio = icmp eq i64 %i.bin, -1
  br i1 %i.bio, label %bb.ly, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, !llvm.loop !303

.critedge.i.i.i.i494:                             ; preds = %bb.ly, %bb.lx
  %.not38.i.i.i.i495 = icmp eq i32 %i.bie, %i.bij
  br i1 %.not38.i.i.i.i495, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, label %bb.lz

bb.lz:                                            ; preds = %.critedge.i.i.i.i494
  %i.bip = lshr i32 %i.bie, 6
  %i.biq = and i32 %i.bie, 63
  %i.bir = zext nneg i32 %i.biq to i64
  %notmask.i40.i.i.i.i496 = shl nsw i64 -1, %i.bir
  %i.bis = zext nneg i32 %i.bip to i64
  %i.bit = getelementptr inbounds nuw [8 x i8], ptr %i.bii, i64 %i.bis
  %i.biu = load i64, ptr %i.bit, align 8, !tbaa !176
  %.demorgan.i.i497 = or i64 %i.biu, %notmask.i40.i.i.i.i496
  %i.biv = icmp eq i64 %.demorgan.i.i497, -1
  %i.biw = zext i1 %i.biv to i16
  %i.bix = or disjoint i16 %i.biw, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355: ; preds = %.lr.ph1383, %bb.lz, %.critedge.i.i.i.i494, %bb.lw, %bb.lv, %bb.lu
  %.sroa.0.0.insert.ext.i.i356 = phi i16 [ 256, %bb.lv ], [ 256, %bb.lu ], [ 257, %bb.lw ], [ 257, %.critedge.i.i.i.i494 ], [ %i.bix, %bb.lz ], [ 256, %.lr.ph1383 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i356, ptr %i.bhw, align 4
  %i.biy = trunc i16 %.sroa.0.0.insert.ext.i.i356 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499
  %.0.in.i.i358 = phi i8 [ %.0.in.pre.i.i500, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499 ], [ %i.biy, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355 ]
  %.0.i.i359 = trunc nuw i8 %.0.in.i.i358 to i1
  br i1 %.0.i.i359, label %bb.pj, label %.critedge.i360

.critedge.i360:                                   ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357, %bb.ls, %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.biz = load ptr, ptr %i.bho, align 8, !tbaa !239
  store ptr %i.biz, ptr %33, align 8, !tbaa !304
  %i.bja = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr null, ptr %i.bja, align 8, !tbaa !313
  %i.bjb = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.ma unwind label %bb.mb

bb.ma:                                            ; preds = %.critedge.i360
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bjb, ptr noundef nonnull align 8 dereferenceable(94) %i.i, ptr noundef nonnull align 8 dereferenceable(38) %i.bhk, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363 unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %.critedge.i360
  %i.bjc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bja) #28
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363: ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.bjd = load ptr, ptr %i.bho, align 8, !tbaa !239
  store ptr %i.bjd, ptr %34, align 8, !tbaa !304
  %i.bje = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr null, ptr %i.bje, align 8, !tbaa !313
  %i.bjf = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %bb.mc unwind label %bb.md

bb.mc:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bjf, ptr noundef nonnull align 8 dereferenceable(94) %i.bhm, ptr noundef nonnull align 8 dereferenceable(38) %i.bhk, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i366 unwind label %bb.md

bb.md:                                            ; preds = %bb.mc, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363
  %i.bjg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bje) #28
  br label %.body.i364

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i366: ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %33, ptr %32, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
end_hunk_3
begin_hunk_4_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i273:       ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i271
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %38) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.amq, i32 noundef %i.axi, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.kw unwind label %bb.ky

.loopexit44.i.i.i.i.i.i.i.i263:                   ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i271, %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i269, %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i267, %.lr.ph.i.i.i.preheader.i29.preheader.i.i.i.i.i.i.i.i265, %bb.ko
  invoke void @__cxa_rethrow() #29
          to label %bb.lc unwind label %bb.kv

bb.kp:                                            ; preds = %bb.kn
  %i.azw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.azx = icmp eq i32 %i.aze, %i.azw
  br i1 %i.azx, label %bb.kq, label %.body49.i212

bb.kq:                                            ; preds = %bb.kp
  %i.azy = call ptr @__cxa_begin_catch(ptr %i.azd) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %37) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.amq, i32 noundef %i.axi, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.kr unwind label %bb.kt

bb.kr:                                            ; preds = %bb.kq
  %i.azz = load ptr, ptr %37, align 8, !tbaa !340
  %.not.i34.i.i.i.i.i.i.i.i258 = icmp eq ptr %i.azz, null
  br i1 %.not.i34.i.i.i.i.i.i.i.i258, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i259, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %37) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i259

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i259: ; preds = %bb.ks, %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.kt:                                            ; preds = %bb.kq
  %i.baa = landingpad { ptr, i32 }
          cleanup
  %i.bab = load ptr, ptr %37, align 8, !tbaa !340
  %.not.i36.i.i.i.i.i.i.i.i256 = icmp eq ptr %i.bab, null
  br i1 %.not.i36.i.i.i.i.i.i.i.i256, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %37) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257: ; preds = %bb.ku, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  invoke void @__cxa_end_catch()
          to label %.body49.i212 unwind label %bb.lb

bb.kv:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i263
  %i.bac = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.kw:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i273
  %i.bad = load ptr, ptr %38, align 8, !tbaa !340
  %.not.i38.i.i.i.i.i.i.i.i276 = icmp eq ptr %i.bad, null
  br i1 %.not.i38.i.i.i.i.i.i.i.i276, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i277, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i277

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i277: ; preds = %bb.kx, %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.ky:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i273
  %i.bae = landingpad { ptr, i32 }
          cleanup
  %i.baf = load ptr, ptr %38, align 8, !tbaa !340
  %.not.i40.i.i.i.i.i.i.i.i274 = icmp eq ptr %i.baf, null
  br i1 %.not.i40.i.i.i.i.i.i.i.i274, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i275, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i275

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i275: ; preds = %bb.kz, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.la

bb.la:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i275, %bb.kv
  %.pn.i.i.i.i.i.i.i.i.i264 = phi { ptr, i32 } [ %i.bae, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i275 ], [ %i.bac, %bb.kv ]
  invoke void @__cxa_end_catch()
          to label %.body49.i212 unwind label %bb.lb

bb.lb:                                            ; preds = %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257
  %i.bag = landingpad { ptr, i32 }
          catch ptr null
  %i.bah = extractvalue { ptr, i32 } %i.bag, 0
  call void @__clang_call_terminate(ptr %i.bah) #32
  unreachable

bb.lc:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i263
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i277, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i259
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i260

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit6.i27.i.i.i.i.i.i.i.i
  %i.bai = add i64 %.01558.i.i.i.i.i.i.i.i253, -1
  %i.baj = and i64 %i.bai, %.01558.i.i.i.i.i.i.i.i253 ; 2 uses
  %.not.i.i.i.i.i.i.i.i262 = icmp eq i64 %i.baj, 0
  br i1 %.not.i.i.i.i.i.i.i.i262, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %bb.kg, !llvm.loop !1857

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i, %bb.ji, %.lr.ph.i.i.i.i.i.i.i216
  %i.bak = add nsw i32 %i.atu, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i218 = icmp sgt i32 %i.bak, %i.asy
  br i1 %.not33.i.i.i.i.i.i.i218, label %._crit_edge.i.i.i.i.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i216, !llvm.loop !1858

bb.ld:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i219
  %i.bal = and i32 %i.asu, 63
  %i.bam = zext nneg i32 %i.bal to i64
  %notmask.i36.i.i.i.i.i.i.i221 = shl nsw i64 -1, %i.bam
  %i.ban = xor i64 %notmask.i36.i.i.i.i.i.i.i221, -1
  br label %.invoke.i222

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i219, %.invoke.i222, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  br label %.loopexit10.i207

.loopexit10.i207:                                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i, %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %43)
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

.loopexit.i288:                                   ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i
  %lpad.loopexit.i289 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i212

.loopexit.split-lp.loopexit.i260:                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit12.i261 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i212

.loopexit.split-lp.loopexit.split-lp.loopexit.i235: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit16.i236 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i212

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i210: ; preds = %bb.jh, %.invoke.i222
  %lpad.loopexit.split-lp.i211 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i212

.body49.i212:                                     ; preds = %bb.js, %bb.kp, %bb.ip, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i210, %.loopexit.split-lp.loopexit.split-lp.loopexit.i235, %.loopexit.split-lp.loopexit.i260, %.loopexit.i288, %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257, %bb.kd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i232, %bb.ja, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i285
  %eh.lpad-body50.i213 = phi { ptr, i32 } [ %i.azc, %bb.kp ], [ %.pn.i.i.i.i.i294, %bb.ja ], [ %i.asi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i285 ], [ %i.ark, %bb.ip ], [ %.pn.i18.i.i.i.i.i.i.i.i238, %bb.kd ], [ %i.aww, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i232 ], [ %.pn.i.i.i.i.i.i.i.i.i264, %bb.la ], [ %i.baa, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257 ], [ %lpad.loopexit.split-lp.i211, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i210 ], [ %lpad.loopexit.i289, %.loopexit.i288 ], [ %lpad.loopexit12.i261, %.loopexit.split-lp.loopexit.i260 ], [ %lpad.loopexit16.i236, %.loopexit.split-lp.loopexit.split-lp.loopexit.i235 ], [ %i.avy, %bb.js ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #28
  br label %.body.i191

.body.i191:                                       ; preds = %.body49.i212, %bb.hy
  %.pn.i192 = phi { ptr, i32 } [ %eh.lpad-body50.i213, %.body49.i212 ], [ %i.aoi, %bb.hy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %common.resume

bb.le:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i184
  %i.bao = load i32, ptr %i.amu, align 4, !tbaa !288
  %i.bap = icmp eq i32 %i.bao, 1
  %i.baq = load i32, ptr %i.amw, align 4, !tbaa !288
  %i.bar = icmp eq i32 %i.baq, 1                  ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.amm, i64 28
  %i.bat = load i32, ptr %i.bas, align 4, !tbaa !291 ; 6 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %i.amm, i64 32
  %i.bav = load i32, ptr %i.bau, align 8, !tbaa !300 ; 9 uses
  %i.baw = sub nsw i32 %i.bav, %i.bat
  %i.bax = and i32 %i.baw, -16                    ; 10 uses
  %i.bay = sext i32 %i.bax to i64                 ; 5 uses
  %i.baz = icmp ult i32 %i.bat, %i.bax            ; 4 uses
  br i1 %i.bap, label %bb.lf, label %bb.lk

bb.lf:                                            ; preds = %bb.le
  %i.bba = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.bbb = load i16, ptr %i.bba, align 8, !tbaa !482 ; 4 uses
  br i1 %i.bar, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.amo, i64 144
  %i.bbd = load i16, ptr %i.bbc, align 8, !tbaa !482 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i.preheader.i351, label %.preheader.i.i344

.lr.ph.i.preheader.i351:                          ; preds = %bb.lg
  %.scalar.i.i352 = icmp sge i16 %i.bbd, %i.bbb
  %i.bbe = insertelement <16 x i1> poison, i1 %.scalar.i.i352, i64 0
  %i.bbf = shufflevector <16 x i1> %i.bbe, <16 x i1> poison, <16 x i32> zeroinitializer
  %i.bbg = sext <16 x i1> %i.bbf to <16 x i16>
  %i.bbh = bitcast <16 x i16> %i.bbg to <32 x i8>
  %i.bbi = icmp slt <32 x i8> %i.bbh, zeroinitializer
  %i.bbj = bitcast <32 x i1> %i.bbi to i32
  %69 = tail call noundef i32 @llvm.pext.i32(i32 %i.bbj, i32 -1431655766)
  %i.bbk = trunc i32 %69 to i16
  br label %.lr.ph.i.i353

.preheader.i.i344:                                ; preds = %.lr.ph.i.i353, %bb.lg
  %i.bbl = sext i32 %i.bav to i64                 ; 2 uses
  %i.bbm = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bbm, label %.lr.ph32.i.preheader.i345, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph32.i.preheader.i345:                        ; preds = %.preheader.i.i344
  %.not.i.i346 = icmp sgt i16 %i.bbb, %i.bbd
  br i1 %.not.i.i346, label %.lr.ph32.i.us.i349, label %.lr.ph32.i.i347

.lr.ph32.i.us.i349:                               ; preds = %.lr.ph32.i.preheader.i345, %.lr.ph32.i.us.i349
  %.031.i.us.i350 = phi i64 [ %i.bbu, %.lr.ph32.i.us.i349 ], [ %i.bay, %.lr.ph32.i.preheader.i345 ] ; 3 uses
  %i.bbn = lshr i64 %.031.i.us.i350, 3
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bbn ; 2 uses
  %i.bbp = load i8, ptr %i.bbo, align 1, !tbaa !32
  %i.bbq = and i64 %.031.i.us.i350, 7
  %i.bbr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bbq
  %i.bbs = load i8, ptr %i.bbr, align 1, !tbaa !32
  %i.bbt = and i8 %i.bbs, %i.bbp
  store i8 %i.bbt, ptr %i.bbo, align 1, !tbaa !32
  %i.bbu = add nuw i64 %.031.i.us.i350, 1         ; 2 uses
  %i.bbv = icmp ult i64 %i.bbu, %i.bbl
  br i1 %i.bbv, label %.lr.ph32.i.us.i349, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1859

.lr.ph.i.i353:                                    ; preds = %.lr.ph.i.i353, %.lr.ph.i.preheader.i351
  %.02330.i.i354 = phi i32 [ %i.bbz, %.lr.ph.i.i353 ], [ %i.bat, %.lr.ph.i.preheader.i351 ] ; 2 uses
  %i.bbw = sdiv i32 %.02330.i.i354, 8
  %i.bbx = sext i32 %i.bbw to i64
  %i.bby = getelementptr inbounds i8, ptr %i.amt, i64 %i.bbx
  store i16 %i.bbk, ptr %i.bby, align 2, !tbaa !474
  %i.bbz = add nuw i32 %.02330.i.i354, 16         ; 2 uses
  %i.bca = icmp ult i32 %i.bbz, %i.bax
  br i1 %i.bca, label %.lr.ph.i.i353, label %.preheader.i.i344, !llvm.loop !1860

.lr.ph32.i.i347:                                  ; preds = %.lr.ph32.i.preheader.i345, %.lr.ph32.i.i347
  %.031.i.i348 = phi i64 [ %i.bci, %.lr.ph32.i.i347 ], [ %i.bay, %.lr.ph32.i.preheader.i345 ] ; 3 uses
  %i.bcb = lshr i64 %.031.i.i348, 3
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bcb ; 2 uses
  %i.bcd = load i8, ptr %i.bcc, align 1, !tbaa !32
  %i.bce = trunc i64 %.031.i.i348 to i8
  %i.bcf = and i8 %i.bce, 7
  %i.bcg = shl nuw i8 1, %i.bcf
  %i.bch = or i8 %i.bcg, %i.bcd
  store i8 %i.bch, ptr %i.bcc, align 1, !tbaa !32
  %i.bci = add nuw i64 %.031.i.i348, 1            ; 2 uses
  %i.bcj = icmp ult i64 %i.bci, %i.bbl
  br i1 %i.bcj, label %.lr.ph32.i.i347, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1859

bb.lh:                                            ; preds = %bb.lf
  %i.bck = getelementptr inbounds nuw i8, ptr %i.amo, i64 120
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !492 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i60.preheader.i341, label %.preheader.i56.i335

.lr.ph.i60.preheader.i341:                        ; preds = %bb.lh
  %i.bcm = insertelement <16 x i16> poison, i16 %i.bbb, i64 0
  %i.bcn = shufflevector <16 x i16> %i.bcm, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i60.i342

.preheader.i56.i335:                              ; preds = %.lr.ph.i60.i342, %bb.lh
  %i.bco = sext i32 %i.bav to i64
  %i.bcp = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bcp, label %.lr.ph33.i.i336, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i60.i342:                                  ; preds = %.lr.ph.i60.i342, %.lr.ph.i60.preheader.i341
  %.02431.i.i343 = phi i32 [ %i.bdc, %.lr.ph.i60.i342 ], [ %i.bat, %.lr.ph.i60.preheader.i341 ] ; 3 uses
  %i.bcq = sext i32 %.02431.i.i343 to i64
  %i.bcr = getelementptr inbounds [2 x i8], ptr %i.bcl, i64 %i.bcq
  %i.bcs = load <16 x i16>, ptr %i.bcr, align 1, !tbaa !32, !noalias !1861
  %i.bct = icmp sge <16 x i16> %i.bcs, %i.bcn
  %i.bcu = sext <16 x i1> %i.bct to <16 x i16>
  %i.bcv = bitcast <16 x i16> %i.bcu to <32 x i8>
  %i.bcw = icmp slt <32 x i8> %i.bcv, zeroinitializer
  %i.bcx = bitcast <32 x i1> %i.bcw to i32
  %70 = tail call noundef i32 @llvm.pext.i32(i32 %i.bcx, i32 -1431655766)
  %i.bcy = sdiv i32 %.02431.i.i343, 8
  %i.bcz = sext i32 %i.bcy to i64
  %i.bda = getelementptr inbounds i8, ptr %i.amt, i64 %i.bcz
  %i.bdb = trunc i32 %70 to i16
  store i16 %i.bdb, ptr %i.bda, align 2, !tbaa !474
  %i.bdc = add nuw i32 %.02431.i.i343, 16         ; 2 uses
  %i.bdd = icmp ult i32 %i.bdc, %i.bax
  br i1 %i.bdd, label %.lr.ph.i60.i342, label %.preheader.i56.i335, !llvm.loop !1868

.lr.ph33.i.i336:                                  ; preds = %.preheader.i56.i335, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339
  %.032.i.i337 = phi i64 [ %i.bdr, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339 ], [ %i.bay, %.preheader.i56.i335 ] ; 5 uses
  %i.bde = getelementptr inbounds nuw [2 x i8], ptr %i.bcl, i64 %.032.i.i337
  %i.bdf = load i16, ptr %i.bde, align 2, !tbaa !474
  %.not.i57.i338 = icmp sgt i16 %i.bbb, %i.bdf
  %i.bdg = lshr i64 %.032.i.i337, 3
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bdg ; 2 uses
  %i.bdi = load i8, ptr %i.bdh, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i57.i338, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %.lr.ph33.i.i336
  %i.bdj = trunc i64 %.032.i.i337 to i8
  %i.bdk = and i8 %i.bdj, 7
  %i.bdl = shl nuw i8 1, %i.bdk
  %i.bdm = or i8 %i.bdl, %i.bdi
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339

bb.lj:                                            ; preds = %.lr.ph33.i.i336
  %i.bdn = and i64 %.032.i.i337, 7
  %i.bdo = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bdn
  %i.bdp = load i8, ptr %i.bdo, align 1, !tbaa !32
  %i.bdq = and i8 %i.bdp, %i.bdi
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339: ; preds = %bb.lj, %bb.li
  %.sink.i.i59.i340 = phi i8 [ %i.bdq, %bb.lj ], [ %i.bdm, %bb.li ]
  store i8 %.sink.i.i59.i340, ptr %i.bdh, align 1, !tbaa !32
  %i.bdr = add nuw i64 %.032.i.i337, 1            ; 2 uses
  %i.bds = icmp ult i64 %i.bdr, %i.bco
  br i1 %i.bds, label %.lr.ph33.i.i336, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1869

bb.lk:                                            ; preds = %bb.le
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.bdu = load ptr, ptr %i.bdt, align 8, !tbaa !492 ; 4 uses
  br i1 %i.bar, label %bb.ll, label %bb.lo

bb.ll:                                            ; preds = %bb.lk
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.amo, i64 144
  %i.bdw = load i16, ptr %i.bdv, align 8, !tbaa !482 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i67.preheader.i332, label %.preheader.i61.i326

.lr.ph.i67.preheader.i332:                        ; preds = %bb.ll
  %i.bdx = insertelement <16 x i16> poison, i16 %i.bdw, i64 0
  %i.bdy = shufflevector <16 x i16> %i.bdx, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i67.i333

.preheader.i61.i326:                              ; preds = %.lr.ph.i67.i333, %bb.ll
  %i.bdz = sext i32 %i.bav to i64
  %i.bea = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bea, label %.lr.ph33.i62.i327, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i67.i333:                                  ; preds = %.lr.ph.i67.i333, %.lr.ph.i67.preheader.i332
  %.02431.i68.i334 = phi i32 [ %i.ben, %.lr.ph.i67.i333 ], [ %i.bat, %.lr.ph.i67.preheader.i332 ] ; 3 uses
  %i.beb = sext i32 %.02431.i68.i334 to i64
  %i.bec = getelementptr inbounds [2 x i8], ptr %i.bdu, i64 %i.beb
  %i.bed = load <16 x i16>, ptr %i.bec, align 1, !tbaa !32, !noalias !1870
  %i.bee = icmp sge <16 x i16> %i.bdy, %i.bed
  %i.bef = sext <16 x i1> %i.bee to <16 x i16>
  %i.beg = bitcast <16 x i16> %i.bef to <32 x i8>
  %i.beh = icmp slt <32 x i8> %i.beg, zeroinitializer
  %i.bei = bitcast <32 x i1> %i.beh to i32
  %71 = tail call noundef i32 @llvm.pext.i32(i32 %i.bei, i32 -1431655766)
  %i.bej = sdiv i32 %.02431.i68.i334, 8
  %i.bek = sext i32 %i.bej to i64
  %i.bel = getelementptr inbounds i8, ptr %i.amt, i64 %i.bek
  %i.bem = trunc i32 %71 to i16
  store i16 %i.bem, ptr %i.bel, align 2, !tbaa !474
  %i.ben = add nuw i32 %.02431.i68.i334, 16       ; 2 uses
  %i.beo = icmp ult i32 %i.ben, %i.bax
  br i1 %i.beo, label %.lr.ph.i67.i333, label %.preheader.i61.i326, !llvm.loop !1877

.lr.ph33.i62.i327:                                ; preds = %.preheader.i61.i326, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330
  %.032.i63.i328 = phi i64 [ %i.bfc, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330 ], [ %i.bay, %.preheader.i61.i326 ] ; 5 uses
  %i.bep = getelementptr inbounds nuw [2 x i8], ptr %i.bdu, i64 %.032.i63.i328
  %i.beq = load i16, ptr %i.bep, align 2, !tbaa !474
  %.not.i64.i329 = icmp sgt i16 %i.beq, %i.bdw
  %i.ber = lshr i64 %.032.i63.i328, 3
  %i.bes = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.ber ; 2 uses
  %i.bet = load i8, ptr %i.bes, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i64.i329, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %.lr.ph33.i62.i327
  %i.beu = trunc i64 %.032.i63.i328 to i8
  %i.bev = and i8 %i.beu, 7
  %i.bew = shl nuw i8 1, %i.bev
  %i.bex = or i8 %i.bew, %i.bet
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330

bb.ln:                                            ; preds = %.lr.ph33.i62.i327
  %i.bey = and i64 %.032.i63.i328, 7
  %i.bez = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bey
  %i.bfa = load i8, ptr %i.bez, align 1, !tbaa !32
  %i.bfb = and i8 %i.bfa, %i.bet
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330: ; preds = %bb.ln, %bb.lm
  %.sink.i.i66.i331 = phi i8 [ %i.bfb, %bb.ln ], [ %i.bex, %bb.lm ]
  store i8 %.sink.i.i66.i331, ptr %i.bes, align 1, !tbaa !32
  %i.bfc = add nuw i64 %.032.i63.i328, 1          ; 2 uses
  %i.bfd = icmp ult i64 %i.bfc, %i.bdz
  br i1 %i.bfd, label %.lr.ph33.i62.i327, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1878

bb.lo:                                            ; preds = %bb.lk
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.amo, i64 120
  %i.bff = load ptr, ptr %i.bfe, align 8, !tbaa !492 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i73.i324, label %.preheader.i69.i318

.preheader.i69.i318:                              ; preds = %.lr.ph.i73.i324, %bb.lo
  %i.bfg = sext i32 %i.bav to i64
  %i.bfh = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bfh, label %.lr.ph34.i.i319, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i73.i324:                                  ; preds = %bb.lo, %.lr.ph.i73.i324
  %.02532.i.i325 = phi i32 [ %i.bfw, %.lr.ph.i73.i324 ], [ %i.bat, %bb.lo ] ; 3 uses
  %i.bfi = sext i32 %.02532.i.i325 to i64         ; 2 uses
  %i.bfj = getelementptr inbounds [2 x i8], ptr %i.bdu, i64 %i.bfi
  %i.bfk = load <16 x i16>, ptr %i.bfj, align 1, !tbaa !32, !noalias !1879
  %i.bfl = getelementptr inbounds [2 x i8], ptr %i.bff, i64 %i.bfi
  %i.bfm = load <16 x i16>, ptr %i.bfl, align 1, !tbaa !32, !noalias !1886
  %i.bfn = icmp sge <16 x i16> %i.bfm, %i.bfk
  %i.bfo = sext <16 x i1> %i.bfn to <16 x i16>
  %i.bfp = bitcast <16 x i16> %i.bfo to <32 x i8>
  %i.bfq = icmp slt <32 x i8> %i.bfp, zeroinitializer
  %i.bfr = bitcast <32 x i1> %i.bfq to i32
  %72 = tail call noundef i32 @llvm.pext.i32(i32 %i.bfr, i32 -1431655766)
  %i.bfs = sdiv i32 %.02532.i.i325, 8
  %i.bft = sext i32 %i.bfs to i64
  %i.bfu = getelementptr inbounds i8, ptr %i.amt, i64 %i.bft
  %i.bfv = trunc i32 %72 to i16
  store i16 %i.bfv, ptr %i.bfu, align 2, !tbaa !474
  %i.bfw = add nuw i32 %.02532.i.i325, 16         ; 2 uses
  %i.bfx = icmp ult i32 %i.bfw, %i.bax
  br i1 %i.bfx, label %.lr.ph.i73.i324, label %.preheader.i69.i318, !llvm.loop !1893

.lr.ph34.i.i319:                                  ; preds = %.preheader.i69.i318, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322
  %.033.i.i320 = phi i64 [ %i.bgn, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322 ], [ %i.bay, %.preheader.i69.i318 ] ; 6 uses
  %i.bfy = getelementptr inbounds nuw [2 x i8], ptr %i.bdu, i64 %.033.i.i320
  %i.bfz = getelementptr inbounds nuw [2 x i8], ptr %i.bff, i64 %.033.i.i320
  %i.bga = load i16, ptr %i.bfy, align 2, !tbaa !474
  %i.bgb = load i16, ptr %i.bfz, align 2, !tbaa !474
  %.not.i70.i321 = icmp sgt i16 %i.bga, %i.bgb
  %i.bgc = lshr i64 %.033.i.i320, 3
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bgc ; 2 uses
  %i.bge = load i8, ptr %i.bgd, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i70.i321, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %.lr.ph34.i.i319
  %i.bgf = trunc i64 %.033.i.i320 to i8
  %i.bgg = and i8 %i.bgf, 7
  %i.bgh = shl nuw i8 1, %i.bgg
  %i.bgi = or i8 %i.bge, %i.bgh
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322

bb.lq:                                            ; preds = %.lr.ph34.i.i319
  %i.bgj = and i64 %.033.i.i320, 7
  %i.bgk = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bgj
  %i.bgl = load i8, ptr %i.bgk, align 1, !tbaa !32
  %i.bgm = and i8 %i.bgl, %i.bge
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322: ; preds = %bb.lq, %bb.lp
  %.sink.i.i72.i323 = phi i8 [ %i.bgm, %bb.lq ], [ %i.bgi, %bb.lp ]
  store i8 %.sink.i.i72.i323, ptr %i.bgd, align 1, !tbaa !32
  %i.bgn = add nuw i64 %.033.i.i320, 1            ; 2 uses
  %i.bgo = icmp ult i64 %i.bgn, %i.bfg
  br i1 %i.bgo, label %.lr.ph34.i.i319, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1894

_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i: ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339, %.lr.ph32.i.i347, %.lr.ph32.i.us.i349, %.preheader.i69.i318, %.preheader.i61.i326, %.preheader.i56.i335, %.preheader.i.i344
  tail call void @_ZN8facebook5velox10BaseVector10clearNullsERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(94) %.val4, ptr noundef nonnull align 8 dereferenceable(38) %i.amm)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit: ; preds = %.loopexit10.i207, %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.xt

bb.lr:                                            ; preds = %bb.a
  %i.bgp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bgq = load ptr, ptr %i.bgp, align 8, !tbaa !1759, !nonnull !57
  %i.bgr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bgs = load ptr, ptr %i.bgr, align 8, !tbaa !1760, !nonnull !57, !align !318 ; 22 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bgu = load ptr, ptr %i.bgt, align 8, !tbaa !208 ; 6 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !1761, !nonnull !57, !align !318 ; 9 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bgy = load ptr, ptr %i.bgx, align 8, !tbaa !1762, !nonnull !57, !align !318
  %.val5 = load ptr, ptr %i.bgy, align 8, !tbaa !208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %.val5, ptr %i.c, align 8, !tbaa !286
  %i.bgz = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIbE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %.val5) ; 49 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.bhb = load i32, ptr %i.bha, align 4, !tbaa !288
  switch i32 %i.bhb, label %.critedge.i370 [
    i32 1, label %bb.ls
    i32 3, label %bb.ls
  ]

bb.ls:                                            ; preds = %bb.lr, %bb.lr
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bgu, i64 28 ; 2 uses
  %i.bhd = load i32, ptr %i.bhc, align 4, !tbaa !288
  switch i32 %i.bhd, label %.critedge.i370 [
    i32 1, label %bb.lt
    i32 3, label %bb.lt
  ]

bb.lt:                                            ; preds = %bb.ls, %bb.ls
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgs, i64 36 ; 2 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bgs, i64 37
  %i.bhg = load i8, ptr %i.bhf, align 1, !tbaa !289, !range !56, !noundef !57
  %i.bhh = trunc nuw i8 %i.bhg to i1
  br i1 %i.bhh, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511, label %bb.lu

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511: ; preds = %bb.lt
  %.0.in.pre.i.i512 = load i8, ptr %i.bhe, align 4, !tbaa !64, !range !56
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367

bb.lu:                                            ; preds = %bb.lt
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bgs, i64 28
  %i.bhj = load i32, ptr %i.bhi, align 4, !tbaa !291
  %i.bhk = icmp eq i32 %i.bhj, 0
  br i1 %i.bhk, label %bb.lv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lv:                                            ; preds = %bb.lu
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bgs, i64 32
  %i.bhm = load i32, ptr %i.bhl, align 8, !tbaa !300 ; 6 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bgs, i64 24
  %i.bho = load i32, ptr %i.bhn, align 8, !tbaa !301
  %i.bhp = icmp eq i32 %i.bhm, %i.bho
  br i1 %i.bhp, label %bb.lw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lw:                                            ; preds = %bb.lv
  %i.bhq = load ptr, ptr %i.bgs, align 8, !tbaa !302 ; 2 uses
  %.not.i.i.i503 = icmp sgt i32 %i.bhm, 0
  br i1 %.not.i.i.i503, label %bb.lx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lx:                                            ; preds = %bb.lw
  %i.bhr = and i32 %i.bhm, 2147483584             ; 3 uses
  %i.bhs = zext nneg i32 %i.bhr to i64
  %.not37.i.i.not.i.i5051410.not = icmp eq i32 %i.bhr, 0
  br i1 %.not37.i.i.not.i.i5051410.not, label %.critedge.i.i.i.i506, label %.lr.ph1412

bb.ly:                                            ; preds = %.lr.ph1412
  %indvars.iv.next.i.i510 = add nuw nsw i64 %indvars.iv.i.i5041411, 64 ; 2 uses
  %.not37.i.i.not.i.i505 = icmp samesign ult i64 %indvars.iv.next.i.i510, %i.bhs
  br i1 %.not37.i.i.not.i.i505, label %.lr.ph1412, label %.critedge.i.i.i.i506, !llvm.loop !303

.lr.ph1412:                                       ; preds = %bb.lx, %bb.ly
  %indvars.iv.i.i5041411 = phi i64 [ %indvars.iv.next.i.i510, %bb.ly ], [ 0, %bb.lx ] ; 2 uses
  %i.bht = lshr exact i64 %indvars.iv.i.i5041411, 3
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhq, i64 %i.bht
  %i.bhv = load i64, ptr %i.bhu, align 8, !tbaa !176
  %i.bhw = icmp eq i64 %i.bhv, -1
  br i1 %i.bhw, label %bb.ly, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, !llvm.loop !303

.critedge.i.i.i.i506:                             ; preds = %bb.ly, %bb.lx
  %.not38.i.i.i.i507 = icmp eq i32 %i.bhm, %i.bhr
  br i1 %.not38.i.i.i.i507, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, label %bb.lz

bb.lz:                                            ; preds = %.critedge.i.i.i.i506
  %i.bhx = lshr i32 %i.bhm, 6
  %i.bhy = and i32 %i.bhm, 63
  %i.bhz = zext nneg i32 %i.bhy to i64
  %notmask.i40.i.i.i.i508 = shl nsw i64 -1, %i.bhz
  %i.bia = zext nneg i32 %i.bhx to i64
  %i.bib = getelementptr inbounds nuw [8 x i8], ptr %i.bhq, i64 %i.bia
  %i.bic = load i64, ptr %i.bib, align 8, !tbaa !176
  %.demorgan.i.i509 = or i64 %i.bic, %notmask.i40.i.i.i.i508
  %i.bid = icmp eq i64 %.demorgan.i.i509, -1
  %i.bie = zext i1 %i.bid to i16
  %i.bif = or disjoint i16 %i.bie, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365: ; preds = %.lr.ph1412, %bb.lz, %.critedge.i.i.i.i506, %bb.lw, %bb.lv, %bb.lu
  %.sroa.0.0.insert.ext.i.i366 = phi i16 [ 256, %bb.lv ], [ 256, %bb.lu ], [ 257, %bb.lw ], [ 257, %.critedge.i.i.i.i506 ], [ %i.bif, %bb.lz ], [ 256, %.lr.ph1412 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i366, ptr %i.bhe, align 4
  %i.big = trunc i16 %.sroa.0.0.insert.ext.i.i366 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511
  %.0.in.i.i368 = phi i8 [ %.0.in.pre.i.i512, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511 ], [ %i.big, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365 ]
  %.0.i.i369 = trunc nuw i8 %.0.in.i.i368 to i1
  br i1 %.0.i.i369, label %bb.pj, label %.critedge.i370

.critedge.i370:                                   ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367, %bb.ls, %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.bih = load ptr, ptr %i.bgw, align 8, !tbaa !239
  store ptr %i.bih, ptr %33, align 8, !tbaa !304
  %i.bii = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr null, ptr %i.bii, align 8, !tbaa !313
  %i.bij = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.ma unwind label %bb.mb

bb.ma:                                            ; preds = %.critedge.i370
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bij, ptr noundef nonnull align 8 dereferenceable(94) %i.i, ptr noundef nonnull align 8 dereferenceable(38) %i.bgs, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373 unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %.critedge.i370
  %i.bik = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bii) #28
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373: ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.bil = load ptr, ptr %i.bgw, align 8, !tbaa !239
  store ptr %i.bil, ptr %34, align 8, !tbaa !304
  %i.bim = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr null, ptr %i.bim, align 8, !tbaa !313
  %i.bin = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %bb.mc unwind label %bb.md

bb.mc:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bin, ptr noundef nonnull align 8 dereferenceable(94) %i.bgu, ptr noundef nonnull align 8 dereferenceable(38) %i.bgs, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i376 unwind label %bb.md

bb.md:                                            ; preds = %bb.mc, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373
  %i.bio = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bim) #28
  br label %.body.i374

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i376: ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %33, ptr %32, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
end_hunk_4
begin_hunk_5_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i273:       ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i271
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %38) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.amq, i32 noundef %i.axi, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.kw unwind label %bb.ky

.loopexit44.i.i.i.i.i.i.i.i263:                   ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i271, %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i269, %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i267, %.lr.ph.i.i.i.preheader.i29.preheader.i.i.i.i.i.i.i.i265, %bb.ko
  invoke void @__cxa_rethrow() #29
          to label %bb.lc unwind label %bb.kv

bb.kp:                                            ; preds = %bb.kn
  %i.azw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.azx = icmp eq i32 %i.aze, %i.azw
  br i1 %i.azx, label %bb.kq, label %.body49.i212

bb.kq:                                            ; preds = %bb.kp
  %i.azy = call ptr @__cxa_begin_catch(ptr %i.azd) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %37) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.amq, i32 noundef %i.axi, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.kr unwind label %bb.kt

bb.kr:                                            ; preds = %bb.kq
  %i.azz = load ptr, ptr %37, align 8, !tbaa !340
  %.not.i34.i.i.i.i.i.i.i.i258 = icmp eq ptr %i.azz, null
  br i1 %.not.i34.i.i.i.i.i.i.i.i258, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i259, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %37) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i259

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i259: ; preds = %bb.ks, %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.kt:                                            ; preds = %bb.kq
  %i.baa = landingpad { ptr, i32 }
          cleanup
  %i.bab = load ptr, ptr %37, align 8, !tbaa !340
  %.not.i36.i.i.i.i.i.i.i.i256 = icmp eq ptr %i.bab, null
  br i1 %.not.i36.i.i.i.i.i.i.i.i256, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %37) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257: ; preds = %bb.ku, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  invoke void @__cxa_end_catch()
          to label %.body49.i212 unwind label %bb.lb

bb.kv:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i263
  %i.bac = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.kw:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i273
  %i.bad = load ptr, ptr %38, align 8, !tbaa !340
  %.not.i38.i.i.i.i.i.i.i.i276 = icmp eq ptr %i.bad, null
  br i1 %.not.i38.i.i.i.i.i.i.i.i276, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i277, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i277

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i277: ; preds = %bb.kx, %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.ky:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i273
  %i.bae = landingpad { ptr, i32 }
          cleanup
  %i.baf = load ptr, ptr %38, align 8, !tbaa !340
  %.not.i40.i.i.i.i.i.i.i.i274 = icmp eq ptr %i.baf, null
  br i1 %.not.i40.i.i.i.i.i.i.i.i274, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i275, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i275

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i275: ; preds = %bb.kz, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.la

bb.la:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i275, %bb.kv
  %.pn.i.i.i.i.i.i.i.i.i264 = phi { ptr, i32 } [ %i.bae, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i275 ], [ %i.bac, %bb.kv ]
  invoke void @__cxa_end_catch()
          to label %.body49.i212 unwind label %bb.lb

bb.lb:                                            ; preds = %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257
  %i.bag = landingpad { ptr, i32 }
          catch ptr null
  %i.bah = extractvalue { ptr, i32 } %i.bag, 0
  call void @__clang_call_terminate(ptr %i.bah) #32
  unreachable

bb.lc:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i263
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i277, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i259
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i260

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit6.i27.i.i.i.i.i.i.i.i
  %i.bai = add i64 %.01558.i.i.i.i.i.i.i.i253, -1
  %i.baj = and i64 %i.bai, %.01558.i.i.i.i.i.i.i.i253 ; 2 uses
  %.not.i.i.i.i.i.i.i.i262 = icmp eq i64 %i.baj, 0
  br i1 %.not.i.i.i.i.i.i.i.i262, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %bb.kg, !llvm.loop !2128

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i, %bb.ji, %.lr.ph.i.i.i.i.i.i.i216
  %i.bak = add nsw i32 %i.atu, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i218 = icmp sgt i32 %i.bak, %i.asy
  br i1 %.not33.i.i.i.i.i.i.i218, label %._crit_edge.i.i.i.i.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i216, !llvm.loop !2129

bb.ld:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i219
  %i.bal = and i32 %i.asu, 63
  %i.bam = zext nneg i32 %i.bal to i64
  %notmask.i36.i.i.i.i.i.i.i221 = shl nsw i64 -1, %i.bam
  %i.ban = xor i64 %notmask.i36.i.i.i.i.i.i.i221, -1
  br label %.invoke.i222

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i219, %.invoke.i222, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  br label %.loopexit10.i207

.loopexit10.i207:                                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i, %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %43)
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

.loopexit.i288:                                   ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i
  %lpad.loopexit.i289 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i212

.loopexit.split-lp.loopexit.i260:                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit12.i261 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i212

.loopexit.split-lp.loopexit.split-lp.loopexit.i235: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit16.i236 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i212

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i210: ; preds = %bb.jh, %.invoke.i222
  %lpad.loopexit.split-lp.i211 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i212

.body49.i212:                                     ; preds = %bb.js, %bb.kp, %bb.ip, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i210, %.loopexit.split-lp.loopexit.split-lp.loopexit.i235, %.loopexit.split-lp.loopexit.i260, %.loopexit.i288, %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257, %bb.kd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i232, %bb.ja, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i285
  %eh.lpad-body50.i213 = phi { ptr, i32 } [ %i.azc, %bb.kp ], [ %.pn.i.i.i.i.i294, %bb.ja ], [ %i.asi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i285 ], [ %i.ark, %bb.ip ], [ %.pn.i18.i.i.i.i.i.i.i.i238, %bb.kd ], [ %i.aww, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i232 ], [ %.pn.i.i.i.i.i.i.i.i.i264, %bb.la ], [ %i.baa, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i257 ], [ %lpad.loopexit.split-lp.i211, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i210 ], [ %lpad.loopexit.i289, %.loopexit.i288 ], [ %lpad.loopexit12.i261, %.loopexit.split-lp.loopexit.i260 ], [ %lpad.loopexit16.i236, %.loopexit.split-lp.loopexit.split-lp.loopexit.i235 ], [ %i.avy, %bb.js ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #28
  br label %.body.i191

.body.i191:                                       ; preds = %.body49.i212, %bb.hy
  %.pn.i192 = phi { ptr, i32 } [ %eh.lpad-body50.i213, %.body49.i212 ], [ %i.aoi, %bb.hy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %common.resume

bb.le:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i184
  %i.bao = load i32, ptr %i.amu, align 4, !tbaa !288
  %i.bap = icmp eq i32 %i.bao, 1
  %i.baq = load i32, ptr %i.amw, align 4, !tbaa !288
  %i.bar = icmp eq i32 %i.baq, 1                  ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.amm, i64 28
  %i.bat = load i32, ptr %i.bas, align 4, !tbaa !291 ; 6 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %i.amm, i64 32
  %i.bav = load i32, ptr %i.bau, align 8, !tbaa !300 ; 9 uses
  %i.baw = sub nsw i32 %i.bav, %i.bat
  %i.bax = and i32 %i.baw, -16                    ; 10 uses
  %i.bay = sext i32 %i.bax to i64                 ; 5 uses
  %i.baz = icmp ult i32 %i.bat, %i.bax            ; 4 uses
  br i1 %i.bap, label %bb.lf, label %bb.lk

bb.lf:                                            ; preds = %bb.le
  %i.bba = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.bbb = load i16, ptr %i.bba, align 8, !tbaa !482 ; 4 uses
  br i1 %i.bar, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.amo, i64 144
  %i.bbd = load i16, ptr %i.bbc, align 8, !tbaa !482 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i.preheader.i351, label %.preheader.i.i344

.lr.ph.i.preheader.i351:                          ; preds = %bb.lg
  %.scalar.i.i352 = icmp sge i16 %i.bbb, %i.bbd
  %i.bbe = insertelement <16 x i1> poison, i1 %.scalar.i.i352, i64 0
  %i.bbf = shufflevector <16 x i1> %i.bbe, <16 x i1> poison, <16 x i32> zeroinitializer
  %i.bbg = sext <16 x i1> %i.bbf to <16 x i16>
  %i.bbh = bitcast <16 x i16> %i.bbg to <32 x i8>
  %i.bbi = icmp slt <32 x i8> %i.bbh, zeroinitializer
  %i.bbj = bitcast <32 x i1> %i.bbi to i32
  %69 = tail call noundef i32 @llvm.pext.i32(i32 %i.bbj, i32 -1431655766)
  %i.bbk = trunc i32 %69 to i16
  br label %.lr.ph.i.i353

.preheader.i.i344:                                ; preds = %.lr.ph.i.i353, %bb.lg
  %i.bbl = sext i32 %i.bav to i64                 ; 2 uses
  %i.bbm = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bbm, label %.lr.ph32.i.preheader.i345, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph32.i.preheader.i345:                        ; preds = %.preheader.i.i344
  %.not.i.i346 = icmp slt i16 %i.bbb, %i.bbd
  br i1 %.not.i.i346, label %.lr.ph32.i.us.i349, label %.lr.ph32.i.i347

.lr.ph32.i.us.i349:                               ; preds = %.lr.ph32.i.preheader.i345, %.lr.ph32.i.us.i349
  %.031.i.us.i350 = phi i64 [ %i.bbu, %.lr.ph32.i.us.i349 ], [ %i.bay, %.lr.ph32.i.preheader.i345 ] ; 3 uses
  %i.bbn = lshr i64 %.031.i.us.i350, 3
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bbn ; 2 uses
  %i.bbp = load i8, ptr %i.bbo, align 1, !tbaa !32
  %i.bbq = and i64 %.031.i.us.i350, 7
  %i.bbr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bbq
  %i.bbs = load i8, ptr %i.bbr, align 1, !tbaa !32
  %i.bbt = and i8 %i.bbs, %i.bbp
  store i8 %i.bbt, ptr %i.bbo, align 1, !tbaa !32
  %i.bbu = add nuw i64 %.031.i.us.i350, 1         ; 2 uses
  %i.bbv = icmp ult i64 %i.bbu, %i.bbl
  br i1 %i.bbv, label %.lr.ph32.i.us.i349, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !2130

.lr.ph.i.i353:                                    ; preds = %.lr.ph.i.i353, %.lr.ph.i.preheader.i351
  %.02330.i.i354 = phi i32 [ %i.bbz, %.lr.ph.i.i353 ], [ %i.bat, %.lr.ph.i.preheader.i351 ] ; 2 uses
  %i.bbw = sdiv i32 %.02330.i.i354, 8
  %i.bbx = sext i32 %i.bbw to i64
  %i.bby = getelementptr inbounds i8, ptr %i.amt, i64 %i.bbx
  store i16 %i.bbk, ptr %i.bby, align 2, !tbaa !474
  %i.bbz = add nuw i32 %.02330.i.i354, 16         ; 2 uses
  %i.bca = icmp ult i32 %i.bbz, %i.bax
  br i1 %i.bca, label %.lr.ph.i.i353, label %.preheader.i.i344, !llvm.loop !2131

.lr.ph32.i.i347:                                  ; preds = %.lr.ph32.i.preheader.i345, %.lr.ph32.i.i347
  %.031.i.i348 = phi i64 [ %i.bci, %.lr.ph32.i.i347 ], [ %i.bay, %.lr.ph32.i.preheader.i345 ] ; 3 uses
  %i.bcb = lshr i64 %.031.i.i348, 3
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bcb ; 2 uses
  %i.bcd = load i8, ptr %i.bcc, align 1, !tbaa !32
  %i.bce = trunc i64 %.031.i.i348 to i8
  %i.bcf = and i8 %i.bce, 7
  %i.bcg = shl nuw i8 1, %i.bcf
  %i.bch = or i8 %i.bcg, %i.bcd
  store i8 %i.bch, ptr %i.bcc, align 1, !tbaa !32
  %i.bci = add nuw i64 %.031.i.i348, 1            ; 2 uses
  %i.bcj = icmp ult i64 %i.bci, %i.bbl
  br i1 %i.bcj, label %.lr.ph32.i.i347, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !2130

bb.lh:                                            ; preds = %bb.lf
  %i.bck = getelementptr inbounds nuw i8, ptr %i.amo, i64 120
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !492 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i60.preheader.i341, label %.preheader.i56.i335

.lr.ph.i60.preheader.i341:                        ; preds = %bb.lh
  %i.bcm = insertelement <16 x i16> poison, i16 %i.bbb, i64 0
  %i.bcn = shufflevector <16 x i16> %i.bcm, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i60.i342

.preheader.i56.i335:                              ; preds = %.lr.ph.i60.i342, %bb.lh
  %i.bco = sext i32 %i.bav to i64
  %i.bcp = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bcp, label %.lr.ph33.i.i336, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i60.i342:                                  ; preds = %.lr.ph.i60.i342, %.lr.ph.i60.preheader.i341
  %.02431.i.i343 = phi i32 [ %i.bdc, %.lr.ph.i60.i342 ], [ %i.bat, %.lr.ph.i60.preheader.i341 ] ; 3 uses
  %i.bcq = sext i32 %.02431.i.i343 to i64
  %i.bcr = getelementptr inbounds [2 x i8], ptr %i.bcl, i64 %i.bcq
  %i.bcs = load <16 x i16>, ptr %i.bcr, align 1, !tbaa !32, !noalias !2132
  %i.bct = icmp sge <16 x i16> %i.bcn, %i.bcs
  %i.bcu = sext <16 x i1> %i.bct to <16 x i16>
  %i.bcv = bitcast <16 x i16> %i.bcu to <32 x i8>
  %i.bcw = icmp slt <32 x i8> %i.bcv, zeroinitializer
  %i.bcx = bitcast <32 x i1> %i.bcw to i32
  %70 = tail call noundef i32 @llvm.pext.i32(i32 %i.bcx, i32 -1431655766)
  %i.bcy = sdiv i32 %.02431.i.i343, 8
  %i.bcz = sext i32 %i.bcy to i64
  %i.bda = getelementptr inbounds i8, ptr %i.amt, i64 %i.bcz
  %i.bdb = trunc i32 %70 to i16
  store i16 %i.bdb, ptr %i.bda, align 2, !tbaa !474
  %i.bdc = add nuw i32 %.02431.i.i343, 16         ; 2 uses
  %i.bdd = icmp ult i32 %i.bdc, %i.bax
  br i1 %i.bdd, label %.lr.ph.i60.i342, label %.preheader.i56.i335, !llvm.loop !2139

.lr.ph33.i.i336:                                  ; preds = %.preheader.i56.i335, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339
  %.032.i.i337 = phi i64 [ %i.bdr, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339 ], [ %i.bay, %.preheader.i56.i335 ] ; 5 uses
  %i.bde = getelementptr inbounds nuw [2 x i8], ptr %i.bcl, i64 %.032.i.i337
  %i.bdf = load i16, ptr %i.bde, align 2, !tbaa !474
  %.not.i57.i338 = icmp slt i16 %i.bbb, %i.bdf
  %i.bdg = lshr i64 %.032.i.i337, 3
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bdg ; 2 uses
  %i.bdi = load i8, ptr %i.bdh, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i57.i338, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %.lr.ph33.i.i336
  %i.bdj = trunc i64 %.032.i.i337 to i8
  %i.bdk = and i8 %i.bdj, 7
  %i.bdl = shl nuw i8 1, %i.bdk
  %i.bdm = or i8 %i.bdl, %i.bdi
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339

bb.lj:                                            ; preds = %.lr.ph33.i.i336
  %i.bdn = and i64 %.032.i.i337, 7
  %i.bdo = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bdn
  %i.bdp = load i8, ptr %i.bdo, align 1, !tbaa !32
  %i.bdq = and i8 %i.bdp, %i.bdi
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339: ; preds = %bb.lj, %bb.li
  %.sink.i.i59.i340 = phi i8 [ %i.bdq, %bb.lj ], [ %i.bdm, %bb.li ]
  store i8 %.sink.i.i59.i340, ptr %i.bdh, align 1, !tbaa !32
  %i.bdr = add nuw i64 %.032.i.i337, 1            ; 2 uses
  %i.bds = icmp ult i64 %i.bdr, %i.bco
  br i1 %i.bds, label %.lr.ph33.i.i336, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !2140

bb.lk:                                            ; preds = %bb.le
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.bdu = load ptr, ptr %i.bdt, align 8, !tbaa !492 ; 4 uses
  br i1 %i.bar, label %bb.ll, label %bb.lo

bb.ll:                                            ; preds = %bb.lk
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.amo, i64 144
  %i.bdw = load i16, ptr %i.bdv, align 8, !tbaa !482 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i67.preheader.i332, label %.preheader.i61.i326

.lr.ph.i67.preheader.i332:                        ; preds = %bb.ll
  %i.bdx = insertelement <16 x i16> poison, i16 %i.bdw, i64 0
  %i.bdy = shufflevector <16 x i16> %i.bdx, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i67.i333

.preheader.i61.i326:                              ; preds = %.lr.ph.i67.i333, %bb.ll
  %i.bdz = sext i32 %i.bav to i64
  %i.bea = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bea, label %.lr.ph33.i62.i327, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i67.i333:                                  ; preds = %.lr.ph.i67.i333, %.lr.ph.i67.preheader.i332
  %.02431.i68.i334 = phi i32 [ %i.ben, %.lr.ph.i67.i333 ], [ %i.bat, %.lr.ph.i67.preheader.i332 ] ; 3 uses
  %i.beb = sext i32 %.02431.i68.i334 to i64
  %i.bec = getelementptr inbounds [2 x i8], ptr %i.bdu, i64 %i.beb
  %i.bed = load <16 x i16>, ptr %i.bec, align 1, !tbaa !32, !noalias !2141
  %i.bee = icmp sge <16 x i16> %i.bed, %i.bdy
  %i.bef = sext <16 x i1> %i.bee to <16 x i16>
  %i.beg = bitcast <16 x i16> %i.bef to <32 x i8>
  %i.beh = icmp slt <32 x i8> %i.beg, zeroinitializer
  %i.bei = bitcast <32 x i1> %i.beh to i32
  %71 = tail call noundef i32 @llvm.pext.i32(i32 %i.bei, i32 -1431655766)
  %i.bej = sdiv i32 %.02431.i68.i334, 8
  %i.bek = sext i32 %i.bej to i64
  %i.bel = getelementptr inbounds i8, ptr %i.amt, i64 %i.bek
  %i.bem = trunc i32 %71 to i16
  store i16 %i.bem, ptr %i.bel, align 2, !tbaa !474
  %i.ben = add nuw i32 %.02431.i68.i334, 16       ; 2 uses
  %i.beo = icmp ult i32 %i.ben, %i.bax
  br i1 %i.beo, label %.lr.ph.i67.i333, label %.preheader.i61.i326, !llvm.loop !2148

.lr.ph33.i62.i327:                                ; preds = %.preheader.i61.i326, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330
  %.032.i63.i328 = phi i64 [ %i.bfc, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330 ], [ %i.bay, %.preheader.i61.i326 ] ; 5 uses
  %i.bep = getelementptr inbounds nuw [2 x i8], ptr %i.bdu, i64 %.032.i63.i328
  %i.beq = load i16, ptr %i.bep, align 2, !tbaa !474
  %.not.i64.i329 = icmp slt i16 %i.beq, %i.bdw
  %i.ber = lshr i64 %.032.i63.i328, 3
  %i.bes = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.ber ; 2 uses
  %i.bet = load i8, ptr %i.bes, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i64.i329, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %.lr.ph33.i62.i327
  %i.beu = trunc i64 %.032.i63.i328 to i8
  %i.bev = and i8 %i.beu, 7
  %i.bew = shl nuw i8 1, %i.bev
  %i.bex = or i8 %i.bew, %i.bet
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330

bb.ln:                                            ; preds = %.lr.ph33.i62.i327
  %i.bey = and i64 %.032.i63.i328, 7
  %i.bez = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bey
  %i.bfa = load i8, ptr %i.bez, align 1, !tbaa !32
  %i.bfb = and i8 %i.bfa, %i.bet
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330: ; preds = %bb.ln, %bb.lm
  %.sink.i.i66.i331 = phi i8 [ %i.bfb, %bb.ln ], [ %i.bex, %bb.lm ]
  store i8 %.sink.i.i66.i331, ptr %i.bes, align 1, !tbaa !32
  %i.bfc = add nuw i64 %.032.i63.i328, 1          ; 2 uses
  %i.bfd = icmp ult i64 %i.bfc, %i.bdz
  br i1 %i.bfd, label %.lr.ph33.i62.i327, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !2149

bb.lo:                                            ; preds = %bb.lk
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.amo, i64 120
  %i.bff = load ptr, ptr %i.bfe, align 8, !tbaa !492 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i73.i324, label %.preheader.i69.i318

.preheader.i69.i318:                              ; preds = %.lr.ph.i73.i324, %bb.lo
  %i.bfg = sext i32 %i.bav to i64
  %i.bfh = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bfh, label %.lr.ph34.i.i319, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i73.i324:                                  ; preds = %bb.lo, %.lr.ph.i73.i324
  %.02532.i.i325 = phi i32 [ %i.bfw, %.lr.ph.i73.i324 ], [ %i.bat, %bb.lo ] ; 3 uses
  %i.bfi = sext i32 %.02532.i.i325 to i64         ; 2 uses
  %i.bfj = getelementptr inbounds [2 x i8], ptr %i.bdu, i64 %i.bfi
  %i.bfk = load <16 x i16>, ptr %i.bfj, align 1, !tbaa !32, !noalias !2150
  %i.bfl = getelementptr inbounds [2 x i8], ptr %i.bff, i64 %i.bfi
  %i.bfm = load <16 x i16>, ptr %i.bfl, align 1, !tbaa !32, !noalias !2157
  %i.bfn = icmp sge <16 x i16> %i.bfk, %i.bfm
  %i.bfo = sext <16 x i1> %i.bfn to <16 x i16>
  %i.bfp = bitcast <16 x i16> %i.bfo to <32 x i8>
  %i.bfq = icmp slt <32 x i8> %i.bfp, zeroinitializer
  %i.bfr = bitcast <32 x i1> %i.bfq to i32
  %72 = tail call noundef i32 @llvm.pext.i32(i32 %i.bfr, i32 -1431655766)
  %i.bfs = sdiv i32 %.02532.i.i325, 8
  %i.bft = sext i32 %i.bfs to i64
  %i.bfu = getelementptr inbounds i8, ptr %i.amt, i64 %i.bft
  %i.bfv = trunc i32 %72 to i16
  store i16 %i.bfv, ptr %i.bfu, align 2, !tbaa !474
  %i.bfw = add nuw i32 %.02532.i.i325, 16         ; 2 uses
  %i.bfx = icmp ult i32 %i.bfw, %i.bax
  br i1 %i.bfx, label %.lr.ph.i73.i324, label %.preheader.i69.i318, !llvm.loop !2164

.lr.ph34.i.i319:                                  ; preds = %.preheader.i69.i318, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322
  %.033.i.i320 = phi i64 [ %i.bgn, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322 ], [ %i.bay, %.preheader.i69.i318 ] ; 6 uses
  %i.bfy = getelementptr inbounds nuw [2 x i8], ptr %i.bdu, i64 %.033.i.i320
  %i.bfz = getelementptr inbounds nuw [2 x i8], ptr %i.bff, i64 %.033.i.i320
  %i.bga = load i16, ptr %i.bfy, align 2, !tbaa !474
  %i.bgb = load i16, ptr %i.bfz, align 2, !tbaa !474
  %.not.i70.i321 = icmp slt i16 %i.bga, %i.bgb
  %i.bgc = lshr i64 %.033.i.i320, 3
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bgc ; 2 uses
  %i.bge = load i8, ptr %i.bgd, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i70.i321, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %.lr.ph34.i.i319
  %i.bgf = trunc i64 %.033.i.i320 to i8
  %i.bgg = and i8 %i.bgf, 7
  %i.bgh = shl nuw i8 1, %i.bgg
  %i.bgi = or i8 %i.bge, %i.bgh
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322

bb.lq:                                            ; preds = %.lr.ph34.i.i319
  %i.bgj = and i64 %.033.i.i320, 7
  %i.bgk = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bgj
  %i.bgl = load i8, ptr %i.bgk, align 1, !tbaa !32
  %i.bgm = and i8 %i.bgl, %i.bge
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322: ; preds = %bb.lq, %bb.lp
  %.sink.i.i72.i323 = phi i8 [ %i.bgm, %bb.lq ], [ %i.bgi, %bb.lp ]
  store i8 %.sink.i.i72.i323, ptr %i.bgd, align 1, !tbaa !32
  %i.bgn = add nuw i64 %.033.i.i320, 1            ; 2 uses
  %i.bgo = icmp ult i64 %i.bgn, %i.bfg
  br i1 %i.bgo, label %.lr.ph34.i.i319, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !2165

_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i: ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339, %.lr.ph32.i.i347, %.lr.ph32.i.us.i349, %.preheader.i69.i318, %.preheader.i61.i326, %.preheader.i56.i335, %.preheader.i.i344
  tail call void @_ZN8facebook5velox10BaseVector10clearNullsERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(94) %.val4, ptr noundef nonnull align 8 dereferenceable(38) %i.amm)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit: ; preds = %.loopexit10.i207, %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.xt

bb.lr:                                            ; preds = %bb.a
  %i.bgp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bgq = load ptr, ptr %i.bgp, align 8, !tbaa !2030, !nonnull !57
  %i.bgr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bgs = load ptr, ptr %i.bgr, align 8, !tbaa !2031, !nonnull !57, !align !318 ; 22 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bgu = load ptr, ptr %i.bgt, align 8, !tbaa !208 ; 6 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !2032, !nonnull !57, !align !318 ; 9 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bgy = load ptr, ptr %i.bgx, align 8, !tbaa !2033, !nonnull !57, !align !318
  %.val5 = load ptr, ptr %i.bgy, align 8, !tbaa !208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %.val5, ptr %i.c, align 8, !tbaa !286
  %i.bgz = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIbE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %.val5) ; 49 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.bhb = load i32, ptr %i.bha, align 4, !tbaa !288
  switch i32 %i.bhb, label %.critedge.i370 [
    i32 1, label %bb.ls
    i32 3, label %bb.ls
  ]

bb.ls:                                            ; preds = %bb.lr, %bb.lr
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bgu, i64 28 ; 2 uses
  %i.bhd = load i32, ptr %i.bhc, align 4, !tbaa !288
  switch i32 %i.bhd, label %.critedge.i370 [
    i32 1, label %bb.lt
    i32 3, label %bb.lt
  ]

bb.lt:                                            ; preds = %bb.ls, %bb.ls
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgs, i64 36 ; 2 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bgs, i64 37
  %i.bhg = load i8, ptr %i.bhf, align 1, !tbaa !289, !range !56, !noundef !57
  %i.bhh = trunc nuw i8 %i.bhg to i1
  br i1 %i.bhh, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511, label %bb.lu

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511: ; preds = %bb.lt
  %.0.in.pre.i.i512 = load i8, ptr %i.bhe, align 4, !tbaa !64, !range !56
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367

bb.lu:                                            ; preds = %bb.lt
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bgs, i64 28
  %i.bhj = load i32, ptr %i.bhi, align 4, !tbaa !291
  %i.bhk = icmp eq i32 %i.bhj, 0
  br i1 %i.bhk, label %bb.lv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lv:                                            ; preds = %bb.lu
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bgs, i64 32
  %i.bhm = load i32, ptr %i.bhl, align 8, !tbaa !300 ; 6 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bgs, i64 24
  %i.bho = load i32, ptr %i.bhn, align 8, !tbaa !301
  %i.bhp = icmp eq i32 %i.bhm, %i.bho
  br i1 %i.bhp, label %bb.lw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lw:                                            ; preds = %bb.lv
  %i.bhq = load ptr, ptr %i.bgs, align 8, !tbaa !302 ; 2 uses
  %.not.i.i.i503 = icmp sgt i32 %i.bhm, 0
  br i1 %.not.i.i.i503, label %bb.lx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lx:                                            ; preds = %bb.lw
  %i.bhr = and i32 %i.bhm, 2147483584             ; 3 uses
  %i.bhs = zext nneg i32 %i.bhr to i64
  %.not37.i.i.not.i.i5051410.not = icmp eq i32 %i.bhr, 0
  br i1 %.not37.i.i.not.i.i5051410.not, label %.critedge.i.i.i.i506, label %.lr.ph1412

bb.ly:                                            ; preds = %.lr.ph1412
  %indvars.iv.next.i.i510 = add nuw nsw i64 %indvars.iv.i.i5041411, 64 ; 2 uses
  %.not37.i.i.not.i.i505 = icmp samesign ult i64 %indvars.iv.next.i.i510, %i.bhs
  br i1 %.not37.i.i.not.i.i505, label %.lr.ph1412, label %.critedge.i.i.i.i506, !llvm.loop !303

.lr.ph1412:                                       ; preds = %bb.lx, %bb.ly
  %indvars.iv.i.i5041411 = phi i64 [ %indvars.iv.next.i.i510, %bb.ly ], [ 0, %bb.lx ] ; 2 uses
  %i.bht = lshr exact i64 %indvars.iv.i.i5041411, 3
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhq, i64 %i.bht
  %i.bhv = load i64, ptr %i.bhu, align 8, !tbaa !176
  %i.bhw = icmp eq i64 %i.bhv, -1
  br i1 %i.bhw, label %bb.ly, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, !llvm.loop !303

.critedge.i.i.i.i506:                             ; preds = %bb.ly, %bb.lx
  %.not38.i.i.i.i507 = icmp eq i32 %i.bhm, %i.bhr
  br i1 %.not38.i.i.i.i507, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, label %bb.lz

bb.lz:                                            ; preds = %.critedge.i.i.i.i506
  %i.bhx = lshr i32 %i.bhm, 6
  %i.bhy = and i32 %i.bhm, 63
  %i.bhz = zext nneg i32 %i.bhy to i64
  %notmask.i40.i.i.i.i508 = shl nsw i64 -1, %i.bhz
  %i.bia = zext nneg i32 %i.bhx to i64
  %i.bib = getelementptr inbounds nuw [8 x i8], ptr %i.bhq, i64 %i.bia
  %i.bic = load i64, ptr %i.bib, align 8, !tbaa !176
  %.demorgan.i.i509 = or i64 %i.bic, %notmask.i40.i.i.i.i508
  %i.bid = icmp eq i64 %.demorgan.i.i509, -1
  %i.bie = zext i1 %i.bid to i16
  %i.bif = or disjoint i16 %i.bie, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365: ; preds = %.lr.ph1412, %bb.lz, %.critedge.i.i.i.i506, %bb.lw, %bb.lv, %bb.lu
  %.sroa.0.0.insert.ext.i.i366 = phi i16 [ 256, %bb.lv ], [ 256, %bb.lu ], [ 257, %bb.lw ], [ 257, %.critedge.i.i.i.i506 ], [ %i.bif, %bb.lz ], [ 256, %.lr.ph1412 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i366, ptr %i.bhe, align 4
  %i.big = trunc i16 %.sroa.0.0.insert.ext.i.i366 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511
  %.0.in.i.i368 = phi i8 [ %.0.in.pre.i.i512, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511 ], [ %i.big, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365 ]
  %.0.i.i369 = trunc nuw i8 %.0.in.i.i368 to i1
  br i1 %.0.i.i369, label %bb.pj, label %.critedge.i370

.critedge.i370:                                   ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367, %bb.ls, %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.bih = load ptr, ptr %i.bgw, align 8, !tbaa !239
  store ptr %i.bih, ptr %33, align 8, !tbaa !304
  %i.bii = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr null, ptr %i.bii, align 8, !tbaa !313
  %i.bij = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.ma unwind label %bb.mb

bb.ma:                                            ; preds = %.critedge.i370
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bij, ptr noundef nonnull align 8 dereferenceable(94) %i.i, ptr noundef nonnull align 8 dereferenceable(38) %i.bgs, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373 unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %.critedge.i370
  %i.bik = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bii) #28
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373: ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.bil = load ptr, ptr %i.bgw, align 8, !tbaa !239
  store ptr %i.bil, ptr %34, align 8, !tbaa !304
  %i.bim = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr null, ptr %i.bim, align 8, !tbaa !313
  %i.bin = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %bb.mc unwind label %bb.md

bb.mc:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bin, ptr noundef nonnull align 8 dereferenceable(94) %i.bgu, ptr noundef nonnull align 8 dereferenceable(38) %i.bgs, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i376 unwind label %bb.md

bb.md:                                            ; preds = %bb.mc, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373
  %i.bio = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bim) #28
  br label %.body.i374

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i376: ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %33, ptr %32, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
end_hunk_5
begin_hunk_6_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE6ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 58
  %i.av = load i8, ptr %i.au, align 2, !tbaa !331, !range !56, !noundef !57
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit6.i, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 59
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !332, !range !56, !noundef !57
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !333
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit6.i

bb.h:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !334
  %i.be = sext i32 %i.q to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit6.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit6.i: ; preds = %bb.h, %bb.g, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i
  %.0.i.i5.i = phi i32 [ %i.bg, %bb.h ], [ %i.bb, %bb.g ], [ %i.q, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i ]
  %i.bh = sext i32 %.0.i.i5.i to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !597
  %i.bk = fcmp uno double %i.an, 0.000000e+00
  %i.bl = fcmp oge double %i.an, %i.bj
  %.0.i.i7.i = select i1 %i.bk, i1 true, i1 %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2223, !nonnull !57, !align !318
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !286
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.bo, i32 noundef %i.q, i1 noundef zeroext %.0.i.i7.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE6ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit6.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0      ; 2 uses
  %i.br = extractvalue { ptr, i32 } %i.bp, 1      ; 2 uses
  %i.bs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #28
  %i.bt = icmp eq i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = call ptr @__cxa_begin_catch(ptr %i.bq) #28
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !337 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 144
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !38 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 152
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !30
  %i.cb = icmp eq i64 %i.ca, 4
  br i1 %i.cb, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.j
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !32
  %or.cond.not.i.i.i = icmp eq i8 %i.cc, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !32
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ce, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !32
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.cg, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !32
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.ci, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.r unwind label %bb.t

.loopexit:                                        ; preds = %bb.j, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #29
          to label %bb.x unwind label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.cj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.ck = icmp eq i32 %i.br, %i.cj
  br i1 %i.ck, label %bb.l, label %.loopexit18

bb.l:                                             ; preds = %bb.k
  %i.cl = call ptr @__cxa_begin_catch(ptr %i.bq) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cm = load ptr, ptr %3, align 8, !tbaa !340
  %.not.i = icmp eq ptr %i.cm, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE6ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split

bb.o:                                             ; preds = %bb.l
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %3, align 8, !tbaa !340
  %.not.i11 = icmp eq ptr %i.co, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.w

bb.q:                                             ; preds = %.loopexit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.r:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cq = load ptr, ptr %4, align 8, !tbaa !340
  %.not.i13 = icmp eq ptr %i.cq, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE6ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split

bb.t:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %4, align 8, !tbaa !340
  %.not.i15 = icmp eq ptr %i.cs, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, %bb.q
  %.pn.i = phi { ptr, i32 } [ %i.cr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16 ], [ %i.cp, %bb.q ]
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.w

.loopexit18:                                      ; preds = %bb.k, %bb.v, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %.merged.i = phi { ptr, i32 } [ %i.cn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12 ], [ %.pn.i, %bb.v ], [ %i.bp, %bb.k ]
  resume { ptr, i32 } %.merged.i

bb.w:                                             ; preds = %bb.v, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #32
  unreachable

bb.x:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE6ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE6ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE6ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE6ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit6.i
  %i.cv = add i64 %.024, -1
  %i.cw = and i64 %i.cv, %.024                    ; 2 uses
  %.not10 = icmp eq i64 %i.cw, 0
  br i1 %.not10, label %.loopexit17, label %bb.b, !llvm.loop !2279

.loopexit17:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE6ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.pext.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { cold noreturn }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind memory(none) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv: argument 0"}
!9 = distinct !{!9, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv"}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !12, i64 0, !15, i64 8, !16, i64 16, !15, i64 24, !18, i64 32, !17, i64 48}
!12 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!13 = !{!"any p2 pointer", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !17, i64 0}
!17 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!18 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !19, i64 0, !15, i64 8}
!19 = !{!"float", !5, i64 0}
!20 = !{!11, !15, i64 8}
!21 = !{!18, !19, i64 0}
!22 = !{!23, !26, i64 32}
!23 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !24, i64 0, !24, i64 16, !26, i64 32}
!24 = !{!"_ZTSSt13_Bit_iterator", !25, i64 0}
!25 = !{!"_ZTSSt18_Bit_iterator_base", !26, i64 0, !4, i64 8}
!26 = !{!"p1 long", !14, i64 0}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !29, i64 0}
!29 = !{!"p1 omnipotent char", !14, i64 0}
!30 = !{!31, !15, i64 8}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !15, i64 8, !5, i64 16}
!32 = !{!5, !5, i64 0}
!33 = !{!34, !35, i64 32}
!34 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !5, i64 0, !35, i64 32}
!35 = !{!"bool", !5, i64 0}
!36 = !{!29, !29, i64 0}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{!31, !29, i64 0}
!39 = !{!40, !41, i64 8}
!40 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEE", !14, i64 0}
!42 = !{!40, !41, i64 16}
!43 = !{!44, !45, i64 0}
!44 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0}
!45 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!46 = !{!14, !14, i64 0}
!47 = !{!48, !49, i64 0}
!48 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EE", !49, i64 0, !44, i64 8}
!49 = !{!"p1 _ZTSN8facebook5velox4exec17FunctionSignatureE", !14, i64 0}
!50 = !{!51, !4, i64 8}
!51 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!52 = !{!51, !4, i64 12}
!53 = !{!54, !54, i64 0}
!54 = !{!"vtable pointer", !6, i64 0}
!55 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!60 = distinct !{!60, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!61 = !{!62, !63, i64 0}
!62 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec14VectorFunctionELb0EE", !63, i64 0}
!63 = !{!"p1 _ZTSN8facebook5velox4exec14VectorFunctionE", !14, i64 0}
!64 = !{!35, !35, i64 0}
!65 = !{!66, !15, i64 0}
!66 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !15, i64 0, !29, i64 8}
!67 = !{!66, !29, i64 8}
!68 = !{!63, !63, i64 0}
!69 = distinct !{null, null}
!70 = !{!40, !41, i64 0}
!71 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv: argument 0"}
!77 = distinct !{!77, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv"}
!78 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!81 = distinct !{!81, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv: argument 0"}
!84 = distinct !{!84, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv"}
!85 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!88 = distinct !{!88, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv: argument 0"}
!91 = distinct !{!91, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv"}
!92 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!95 = distinct !{!95, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv: argument 0"}
!98 = distinct !{!98, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv"}
!99 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!102 = distinct !{!102, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv: argument 0"}
!105 = distinct !{!105, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv"}
!106 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!109 = distinct !{!109, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!110 = distinct !{null, null}
!111 = distinct !{null}
!112 = !{!113, !35, i64 104}
!113 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !5, i64 0, !35, i64 104}
!114 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!115 = !{!116, !117, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !117, i64 0, !117, i64 8, !117, i64 16}
!117 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !14, i64 0}
!118 = !{!116, !117, i64 8}
!119 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!120 = distinct !{!120, !73}
!121 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!122 = !{!116, !117, i64 16}
!123 = !{!25, !26, i64 0}
!124 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev, null}
!125 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!126 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!129 = distinct !{!129, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZSt19__relocate_object_aISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!132 = distinct !{!132, !"_ZSt19__relocate_object_aISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_SaIS5_EEvPT_PT0_RT1_"}
!133 = !{!134}
!134 = distinct !{!134, !132, !"_ZSt19__relocate_object_aISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!135 = distinct !{!135, !73, !136, !137}
!136 = !{!"llvm.loop.isvectorized", i32 1}
!137 = !{!"llvm.loop.unroll.runtime.disable"}
!138 = distinct !{!138, !73, !136}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZSt19__relocate_object_aISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!141 = distinct !{!141, !"_ZSt19__relocate_object_aISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_SaIS5_EEvPT_PT0_RT1_"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"_ZSt19__relocate_object_aISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!144 = distinct !{!144, !73, !136, !137}
!145 = distinct !{!145, !73, !136}
!146 = distinct !{null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!147 = !{!148, !35, i64 96}
!148 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !31, i64 0, !149, i64 32, !152, i64 56, !35, i64 96}
!149 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !150, i64 0}
!150 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !151, i64 0}
!151 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !116, i64 0}
!152 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !153, i64 0}
!153 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !154, i64 0}
!154 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !155, i64 0}
!155 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !34, i64 0}
!156 = !{!117, !117, i64 0}
!157 = distinct !{null, null, null, null}
!158 = distinct !{!158, !73}
!159 = distinct !{null, null, null}
!160 = distinct !{null, null, null, null}
!161 = distinct !{null}
end_hunk_6
