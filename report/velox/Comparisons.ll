inline.NumInlined: 6772
inline.NumDeleted: 1981
begin_hunk_0_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
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
  %i.bby = tail call noundef i32 @llvm.pext.i32(i32 %i.bbx, i32 -1431655766)
  %i.bbz = trunc nuw i32 %i.bby to i16
  br label %.lr.ph.i.i343

.preheader.i.i336:                                ; preds = %.lr.ph.i.i343, %bb.lg
  %i.bca = sext i32 %i.bbh to i64                 ; 2 uses
  %i.bcb = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bcb, label %.lr.ph32.i.preheader.i337, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph32.i.preheader.i337:                        ; preds = %.preheader.i.i336
  %i.bcc = icmp eq i16 %i.bbn, %i.bbp
  br i1 %i.bcc, label %.lr.ph32.i.us.i340, label %.lr.ph32.i.i338

.lr.ph32.i.us.i340:                               ; preds = %.lr.ph32.i.preheader.i337, %.lr.ph32.i.us.i340
  %.031.i.us.i341 = phi i64 [ %i.bck, %.lr.ph32.i.us.i340 ], [ %i.bbk, %.lr.ph32.i.preheader.i337 ] ; 3 uses
  %i.bcd = lshr i64 %.031.i.us.i341, 3
  %i.bce = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bcd ; 2 uses
  %i.bcf = load i8, ptr %i.bce, align 1, !tbaa !32
  %i.bcg = trunc i64 %.031.i.us.i341 to i8
  %i.bch = and i8 %i.bcg, 7
  %i.bci = shl nuw i8 1, %i.bch
  %i.bcj = or i8 %i.bci, %i.bcf
  store i8 %i.bcj, ptr %i.bce, align 1, !tbaa !32
  %i.bck = add nuw i64 %.031.i.us.i341, 1         ; 2 uses
  %i.bcl = icmp ult i64 %i.bck, %i.bca
  br i1 %i.bcl, label %.lr.ph32.i.us.i340, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !490

.lr.ph.i.i343:                                    ; preds = %.lr.ph.i.i343, %.lr.ph.i.preheader.i342
  %.02330.i.i344 = phi i32 [ %i.bcp, %.lr.ph.i.i343 ], [ %i.bbf, %.lr.ph.i.preheader.i342 ] ; 2 uses
  %i.bcm = sdiv i32 %.02330.i.i344, 8
  %i.bcn = sext i32 %i.bcm to i64
  %i.bco = getelementptr inbounds i8, ptr %i.anf, i64 %i.bcn
  store i16 %i.bbz, ptr %i.bco, align 2, !tbaa !474
  %i.bcp = add nuw i32 %.02330.i.i344, 16         ; 2 uses
  %i.bcq = icmp ult i32 %i.bcp, %i.bbj
  br i1 %i.bcq, label %.lr.ph.i.i343, label %.preheader.i.i336, !llvm.loop !491

.lr.ph32.i.i338:                                  ; preds = %.lr.ph32.i.preheader.i337, %.lr.ph32.i.i338
  %.031.i.i339 = phi i64 [ %i.bcy, %.lr.ph32.i.i338 ], [ %i.bbk, %.lr.ph32.i.preheader.i337 ] ; 3 uses
  %i.bcr = lshr i64 %.031.i.i339, 3
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bcr ; 2 uses
  %i.bct = load i8, ptr %i.bcs, align 1, !tbaa !32
  %i.bcu = and i64 %.031.i.i339, 7
  %i.bcv = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bcu
  %i.bcw = load i8, ptr %i.bcv, align 1, !tbaa !32
  %i.bcx = and i8 %i.bcw, %i.bct
  store i8 %i.bcx, ptr %i.bcs, align 1, !tbaa !32
  %i.bcy = add nuw i64 %.031.i.i339, 1            ; 2 uses
  %i.bcz = icmp ult i64 %i.bcy, %i.bca
  br i1 %i.bcz, label %.lr.ph32.i.i338, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !490

bb.lh:                                            ; preds = %bb.lf
  %i.bda = getelementptr inbounds nuw i8, ptr %i.ana, i64 120
  %i.bdb = load ptr, ptr %i.bda, align 8, !tbaa !492 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i59.preheader.i333, label %.preheader.i56.i328

.lr.ph.i59.preheader.i333:                        ; preds = %bb.lh
  %i.bdc = insertelement <16 x i16> poison, i16 %i.bbn, i64 0
  %i.bdd = shufflevector <16 x i16> %i.bdc, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i59.i334

.preheader.i56.i328:                              ; preds = %.lr.ph.i59.i334, %bb.lh
  %i.bde = sext i32 %i.bbh to i64
  %i.bdf = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bdf, label %.lr.ph33.i.i329, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i59.i334:                                  ; preds = %.lr.ph.i59.i334, %.lr.ph.i59.preheader.i333
  %.02431.i.i335 = phi i32 [ %i.bdt, %.lr.ph.i59.i334 ], [ %i.bbf, %.lr.ph.i59.preheader.i333 ] ; 3 uses
  %i.bdg = sext i32 %.02431.i.i335 to i64
  %i.bdh = getelementptr inbounds [2 x i8], ptr %i.bdb, i64 %i.bdg
  %i.bdi = load <16 x i16>, ptr %i.bdh, align 1, !tbaa !32, !noalias !495
  %i.bdj = icmp eq <16 x i16> %i.bdd, %i.bdi
  %i.bdk = sext <16 x i1> %i.bdj to <16 x i16>
  %i.bdl = bitcast <16 x i16> %i.bdk to <32 x i8>
  %i.bdm = icmp slt <32 x i8> %i.bdl, zeroinitializer
  %i.bdn = bitcast <32 x i1> %i.bdm to i32
  %i.bdo = tail call noundef i32 @llvm.pext.i32(i32 %i.bdn, i32 -1431655766)
  %i.bdp = sdiv i32 %.02431.i.i335, 8
  %i.bdq = sext i32 %i.bdp to i64
  %i.bdr = getelementptr inbounds i8, ptr %i.anf, i64 %i.bdq
  %i.bds = trunc nuw i32 %i.bdo to i16
  store i16 %i.bds, ptr %i.bdr, align 2, !tbaa !474
  %i.bdt = add nuw i32 %.02431.i.i335, 16         ; 2 uses
  %i.bdu = icmp ult i32 %i.bdt, %i.bbj
  br i1 %i.bdu, label %.lr.ph.i59.i334, label %.preheader.i56.i328, !llvm.loop !502

.lr.ph33.i.i329:                                  ; preds = %.preheader.i56.i328, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331
  %.032.i.i330 = phi i64 [ %i.bej, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331 ], [ %i.bbk, %.preheader.i56.i328 ] ; 5 uses
  %i.bdv = getelementptr inbounds nuw [2 x i8], ptr %i.bdb, i64 %.032.i.i330
  %i.bdw = load i16, ptr %i.bdv, align 2, !tbaa !474
  %i.bdx = icmp eq i16 %i.bbn, %i.bdw
  %i.bdy = lshr i64 %.032.i.i330, 3
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bdy ; 2 uses
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bdx, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %.lr.ph33.i.i329
  %i.beb = trunc i64 %.032.i.i330 to i8
  %i.bec = and i8 %i.beb, 7
  %i.bed = shl nuw i8 1, %i.bec
  %i.bee = or i8 %i.bed, %i.bea
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331

bb.lj:                                            ; preds = %.lr.ph33.i.i329
  %i.bef = and i64 %.032.i.i330, 7
  %i.beg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bef
  %i.beh = load i8, ptr %i.beg, align 1, !tbaa !32
  %i.bei = and i8 %i.beh, %i.bea
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331: ; preds = %bb.lj, %bb.li
  %.sink.i.i58.i332 = phi i8 [ %i.bei, %bb.lj ], [ %i.bee, %bb.li ]
  store i8 %.sink.i.i58.i332, ptr %i.bdz, align 1, !tbaa !32
  %i.bej = add nuw i64 %.032.i.i330, 1            ; 2 uses
  %i.bek = icmp ult i64 %i.bej, %i.bde
  br i1 %i.bek, label %.lr.ph33.i.i329, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !503

bb.lk:                                            ; preds = %bb.le
  %i.bel = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.bem = load ptr, ptr %i.bel, align 8, !tbaa !492 ; 4 uses
  br i1 %i.bbd, label %bb.ll, label %bb.lo

bb.ll:                                            ; preds = %bb.lk
  %i.ben = getelementptr inbounds nuw i8, ptr %i.ana, i64 144
  %i.beo = load i16, ptr %i.ben, align 8, !tbaa !482 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i65.preheader.i325, label %.preheader.i60.i320

.lr.ph.i65.preheader.i325:                        ; preds = %bb.ll
  %i.bep = insertelement <16 x i16> poison, i16 %i.beo, i64 0
  %i.beq = shufflevector <16 x i16> %i.bep, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i65.i326

.preheader.i60.i320:                              ; preds = %.lr.ph.i65.i326, %bb.ll
  %i.ber = sext i32 %i.bbh to i64
  %i.bes = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bes, label %.lr.ph33.i61.i321, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i65.i326:                                  ; preds = %.lr.ph.i65.i326, %.lr.ph.i65.preheader.i325
  %.02431.i66.i327 = phi i32 [ %i.bfg, %.lr.ph.i65.i326 ], [ %i.bbf, %.lr.ph.i65.preheader.i325 ] ; 3 uses
  %i.bet = sext i32 %.02431.i66.i327 to i64
  %i.beu = getelementptr inbounds [2 x i8], ptr %i.bem, i64 %i.bet
  %i.bev = load <16 x i16>, ptr %i.beu, align 1, !tbaa !32, !noalias !504
  %i.bew = icmp eq <16 x i16> %i.bev, %i.beq
  %i.bex = sext <16 x i1> %i.bew to <16 x i16>
  %i.bey = bitcast <16 x i16> %i.bex to <32 x i8>
  %i.bez = icmp slt <32 x i8> %i.bey, zeroinitializer
  %i.bfa = bitcast <32 x i1> %i.bez to i32
  %i.bfb = tail call noundef i32 @llvm.pext.i32(i32 %i.bfa, i32 -1431655766)
  %i.bfc = sdiv i32 %.02431.i66.i327, 8
  %i.bfd = sext i32 %i.bfc to i64
  %i.bfe = getelementptr inbounds i8, ptr %i.anf, i64 %i.bfd
  %i.bff = trunc nuw i32 %i.bfb to i16
  store i16 %i.bff, ptr %i.bfe, align 2, !tbaa !474
  %i.bfg = add nuw i32 %.02431.i66.i327, 16       ; 2 uses
  %i.bfh = icmp ult i32 %i.bfg, %i.bbj
  br i1 %i.bfh, label %.lr.ph.i65.i326, label %.preheader.i60.i320, !llvm.loop !511

.lr.ph33.i61.i321:                                ; preds = %.preheader.i60.i320, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323
  %.032.i62.i322 = phi i64 [ %i.bfw, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323 ], [ %i.bbk, %.preheader.i60.i320 ] ; 5 uses
  %i.bfi = getelementptr inbounds nuw [2 x i8], ptr %i.bem, i64 %.032.i62.i322
  %i.bfj = load i16, ptr %i.bfi, align 2, !tbaa !474
  %i.bfk = icmp eq i16 %i.bfj, %i.beo
  %i.bfl = lshr i64 %.032.i62.i322, 3
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bfl ; 2 uses
  %i.bfn = load i8, ptr %i.bfm, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bfk, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %.lr.ph33.i61.i321
  %i.bfo = trunc i64 %.032.i62.i322 to i8
  %i.bfp = and i8 %i.bfo, 7
  %i.bfq = shl nuw i8 1, %i.bfp
  %i.bfr = or i8 %i.bfq, %i.bfn
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323

bb.ln:                                            ; preds = %.lr.ph33.i61.i321
  %i.bfs = and i64 %.032.i62.i322, 7
  %i.bft = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bfs
  %i.bfu = load i8, ptr %i.bft, align 1, !tbaa !32
  %i.bfv = and i8 %i.bfu, %i.bfn
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323: ; preds = %bb.ln, %bb.lm
  %.sink.i.i64.i324 = phi i8 [ %i.bfv, %bb.ln ], [ %i.bfr, %bb.lm ]
  store i8 %.sink.i.i64.i324, ptr %i.bfm, align 1, !tbaa !32
  %i.bfw = add nuw i64 %.032.i62.i322, 1          ; 2 uses
  %i.bfx = icmp ult i64 %i.bfw, %i.ber
  br i1 %i.bfx, label %.lr.ph33.i61.i321, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !512

bb.lo:                                            ; preds = %bb.lk
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.ana, i64 120
  %i.bfz = load ptr, ptr %i.bfy, align 8, !tbaa !492 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i70.i318, label %.preheader.i67.i313

.preheader.i67.i313:                              ; preds = %.lr.ph.i70.i318, %bb.lo
  %i.bga = sext i32 %i.bbh to i64
  %i.bgb = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bgb, label %.lr.ph34.i.i314, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i70.i318:                                  ; preds = %bb.lo, %.lr.ph.i70.i318
  %.02532.i.i319 = phi i32 [ %i.bgr, %.lr.ph.i70.i318 ], [ %i.bbf, %bb.lo ] ; 3 uses
  %i.bgc = sext i32 %.02532.i.i319 to i64         ; 2 uses
  %i.bgd = getelementptr inbounds [2 x i8], ptr %i.bem, i64 %i.bgc
  %i.bge = load <16 x i16>, ptr %i.bgd, align 1, !tbaa !32, !noalias !513
  %i.bgf = getelementptr inbounds [2 x i8], ptr %i.bfz, i64 %i.bgc
  %i.bgg = load <16 x i16>, ptr %i.bgf, align 1, !tbaa !32, !noalias !520
  %i.bgh = icmp eq <16 x i16> %i.bge, %i.bgg
  %i.bgi = sext <16 x i1> %i.bgh to <16 x i16>
  %i.bgj = bitcast <16 x i16> %i.bgi to <32 x i8>
  %i.bgk = icmp slt <32 x i8> %i.bgj, zeroinitializer
  %i.bgl = bitcast <32 x i1> %i.bgk to i32
  %i.bgm = tail call noundef i32 @llvm.pext.i32(i32 %i.bgl, i32 -1431655766)
  %i.bgn = sdiv i32 %.02532.i.i319, 8
  %i.bgo = sext i32 %i.bgn to i64
  %i.bgp = getelementptr inbounds i8, ptr %i.anf, i64 %i.bgo
  %i.bgq = trunc nuw i32 %i.bgm to i16
  store i16 %i.bgq, ptr %i.bgp, align 2, !tbaa !474
  %i.bgr = add nuw i32 %.02532.i.i319, 16         ; 2 uses
  %i.bgs = icmp ult i32 %i.bgr, %i.bbj
  br i1 %i.bgs, label %.lr.ph.i70.i318, label %.preheader.i67.i313, !llvm.loop !527

.lr.ph34.i.i314:                                  ; preds = %.preheader.i67.i313, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316
  %.033.i.i315 = phi i64 [ %i.bhj, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316 ], [ %i.bbk, %.preheader.i67.i313 ] ; 6 uses
  %i.bgt = getelementptr inbounds nuw [2 x i8], ptr %i.bem, i64 %.033.i.i315
  %i.bgu = getelementptr inbounds nuw [2 x i8], ptr %i.bfz, i64 %.033.i.i315
  %i.bgv = load i16, ptr %i.bgt, align 2, !tbaa !474
  %i.bgw = load i16, ptr %i.bgu, align 2, !tbaa !474
  %i.bgx = icmp eq i16 %i.bgv, %i.bgw
  %i.bgy = lshr i64 %.033.i.i315, 3
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bgy ; 2 uses
  %i.bha = load i8, ptr %i.bgz, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bgx, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %.lr.ph34.i.i314
  %i.bhb = trunc i64 %.033.i.i315 to i8
  %i.bhc = and i8 %i.bhb, 7
  %i.bhd = shl nuw i8 1, %i.bhc
  %i.bhe = or i8 %i.bha, %i.bhd
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316

bb.lq:                                            ; preds = %.lr.ph34.i.i314
  %i.bhf = and i64 %.033.i.i315, 7
  %i.bhg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bhf
  %i.bhh = load i8, ptr %i.bhg, align 1, !tbaa !32
  %i.bhi = and i8 %i.bhh, %i.bha
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316: ; preds = %bb.lq, %bb.lp
  %.sink.i.i69.i317 = phi i8 [ %i.bhi, %bb.lq ], [ %i.bhe, %bb.lp ]
  store i8 %.sink.i.i69.i317, ptr %i.bgz, align 1, !tbaa !32
  %i.bhj = add nuw i64 %.033.i.i315, 1            ; 2 uses
  %i.bhk = icmp ult i64 %i.bhj, %i.bga
  br i1 %i.bhk, label %.lr.ph34.i.i314, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !528

_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i: ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331, %.lr.ph32.i.i338, %.lr.ph32.i.us.i340, %.preheader.i67.i313, %.preheader.i60.i320, %.preheader.i56.i328, %.preheader.i.i336
  tail call void @_ZN8facebook5velox10BaseVector10clearNullsERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(94) %.val4, ptr noundef nonnull align 8 dereferenceable(38) %i.amy)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit: ; preds = %.loopexit10.i202, %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt8equal_toIvEEEviiPKT_S7_Ph.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.xt

bb.lr:                                            ; preds = %bb.a
  %i.bhl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bhm = load ptr, ptr %i.bhl, align 8, !tbaa !348, !nonnull !57
  %i.bhn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bho = load ptr, ptr %i.bhn, align 8, !tbaa !349, !nonnull !57, !align !318 ; 22 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !208 ; 6 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bhs = load ptr, ptr %i.bhr, align 8, !tbaa !350, !nonnull !57, !align !318 ; 9 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bhu = load ptr, ptr %i.bht, align 8, !tbaa !351, !nonnull !57, !align !318
  %.val5 = load ptr, ptr %i.bhu, align 8, !tbaa !208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %.val5, ptr %i.c, align 8, !tbaa !286
  %i.bhv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIbE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %.val5) ; 49 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.bhx = load i32, ptr %i.bhw, align 4, !tbaa !288
  switch i32 %i.bhx, label %.critedge.i360 [
    i32 1, label %bb.ls
    i32 3, label %bb.ls
  ]

bb.ls:                                            ; preds = %bb.lr, %bb.lr
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhq, i64 28 ; 2 uses
  %i.bhz = load i32, ptr %i.bhy, align 4, !tbaa !288
  switch i32 %i.bhz, label %.critedge.i360 [
    i32 1, label %bb.lt
    i32 3, label %bb.lt
  ]

bb.lt:                                            ; preds = %bb.ls, %bb.ls
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bho, i64 36 ; 2 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bho, i64 37
  %i.bic = load i8, ptr %i.bib, align 1, !tbaa !289, !range !56, !noundef !57
  %i.bid = trunc nuw i8 %i.bic to i1
  br i1 %i.bid, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499, label %bb.lu

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499: ; preds = %bb.lt
  %.0.in.pre.i.i500 = load i8, ptr %i.bia, align 4, !tbaa !64, !range !56
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357

bb.lu:                                            ; preds = %bb.lt
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bho, i64 28
  %i.bif = load i32, ptr %i.bie, align 4, !tbaa !291
  %i.big = icmp eq i32 %i.bif, 0
  br i1 %i.big, label %bb.lv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lv:                                            ; preds = %bb.lu
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bho, i64 32
  %i.bii = load i32, ptr %i.bih, align 8, !tbaa !300 ; 6 uses
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bho, i64 24
  %i.bik = load i32, ptr %i.bij, align 8, !tbaa !301
  %i.bil = icmp eq i32 %i.bii, %i.bik
  br i1 %i.bil, label %bb.lw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lw:                                            ; preds = %bb.lv
  %i.bim = load ptr, ptr %i.bho, align 8, !tbaa !302 ; 2 uses
  %.not.i.i.i491 = icmp sgt i32 %i.bii, 0
  br i1 %.not.i.i.i491, label %bb.lx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lx:                                            ; preds = %bb.lw
  %i.bin = and i32 %i.bii, 2147483584             ; 3 uses
  %i.bio = zext nneg i32 %i.bin to i64
  %.not37.i.i.not.i.i4931407.not = icmp eq i32 %i.bin, 0
  br i1 %.not37.i.i.not.i.i4931407.not, label %.critedge.i.i.i.i494, label %.lr.ph1409

bb.ly:                                            ; preds = %.lr.ph1409
  %indvars.iv.next.i.i498 = add nuw nsw i64 %indvars.iv.i.i4921408, 64 ; 2 uses
  %.not37.i.i.not.i.i493 = icmp samesign ult i64 %indvars.iv.next.i.i498, %i.bio
  br i1 %.not37.i.i.not.i.i493, label %.lr.ph1409, label %.critedge.i.i.i.i494, !llvm.loop !303

.lr.ph1409:                                       ; preds = %bb.lx, %bb.ly
  %indvars.iv.i.i4921408 = phi i64 [ %indvars.iv.next.i.i498, %bb.ly ], [ 0, %bb.lx ] ; 2 uses
  %i.bip = lshr exact i64 %indvars.iv.i.i4921408, 3
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bim, i64 %i.bip
  %i.bir = load i64, ptr %i.biq, align 8, !tbaa !176
  %i.bis = icmp eq i64 %i.bir, -1
  br i1 %i.bis, label %bb.ly, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, !llvm.loop !303

.critedge.i.i.i.i494:                             ; preds = %bb.ly, %bb.lx
  %.not38.i.i.i.i495 = icmp eq i32 %i.bii, %i.bin
  br i1 %.not38.i.i.i.i495, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, label %bb.lz

bb.lz:                                            ; preds = %.critedge.i.i.i.i494
  %i.bit = lshr i32 %i.bii, 6
  %i.biu = and i32 %i.bii, 63
  %i.biv = zext nneg i32 %i.biu to i64
  %notmask.i40.i.i.i.i496 = shl nsw i64 -1, %i.biv
  %i.biw = zext nneg i32 %i.bit to i64
  %i.bix = getelementptr inbounds nuw [8 x i8], ptr %i.bim, i64 %i.biw
  %i.biy = load i64, ptr %i.bix, align 8, !tbaa !176
  %.demorgan.i.i497 = or i64 %i.biy, %notmask.i40.i.i.i.i496
  %i.biz = icmp eq i64 %.demorgan.i.i497, -1
  %i.bja = zext i1 %i.biz to i16
  %i.bjb = or disjoint i16 %i.bja, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355: ; preds = %.lr.ph1409, %bb.lz, %.critedge.i.i.i.i494, %bb.lw, %bb.lv, %bb.lu
  %.sroa.0.0.insert.ext.i.i356 = phi i16 [ 256, %bb.lv ], [ 256, %bb.lu ], [ 257, %bb.lw ], [ 257, %.critedge.i.i.i.i494 ], [ %i.bjb, %bb.lz ], [ 256, %.lr.ph1409 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i356, ptr %i.bia, align 4
  %i.bjc = trunc i16 %.sroa.0.0.insert.ext.i.i356 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499
  %.0.in.i.i358 = phi i8 [ %.0.in.pre.i.i500, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499 ], [ %i.bjc, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355 ]
  %.0.i.i359 = trunc nuw i8 %.0.in.i.i358 to i1
  br i1 %.0.i.i359, label %bb.pj, label %.critedge.i360

.critedge.i360:                                   ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357, %bb.ls, %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.bjd = load ptr, ptr %i.bhs, align 8, !tbaa !239
  store ptr %i.bjd, ptr %33, align 8, !tbaa !304
  %i.bje = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr null, ptr %i.bje, align 8, !tbaa !313
  %i.bjf = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.ma unwind label %bb.mb

bb.ma:                                            ; preds = %.critedge.i360
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bjf, ptr noundef nonnull align 8 dereferenceable(94) %i.i, ptr noundef nonnull align 8 dereferenceable(38) %i.bho, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363 unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %.critedge.i360
  %i.bjg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bje) #28
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363: ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.bjh = load ptr, ptr %i.bhs, align 8, !tbaa !239
  store ptr %i.bjh, ptr %34, align 8, !tbaa !304
  %i.bji = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr null, ptr %i.bji, align 8, !tbaa !313
  %i.bjj = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %bb.mc unwind label %bb.md

bb.mc:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bjj, ptr noundef nonnull align 8 dereferenceable(94) %i.bhq, ptr noundef nonnull align 8 dereferenceable(38) %i.bho, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i366 unwind label %bb.md

bb.md:                                            ; preds = %bb.mc, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363
  %i.bjk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bji) #28
  br label %.body.i364

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i366: ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %33, ptr %32, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  store ptr %34, ptr %.sroa.411.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i367 = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %i.bhm, ptr %.sroa.5.0..sroa_idx.i367, align 8
  %.sroa.6.0..sroa_idx.i368 = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
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
  %i.bbk = tail call noundef i32 @llvm.pext.i32(i32 %i.bbj, i32 -1431655766)
  %i.bbl = trunc nuw i32 %i.bbk to i16
  br label %.lr.ph.i.i353

.preheader.i.i344:                                ; preds = %.lr.ph.i.i353, %bb.lg
  %i.bbm = sext i32 %i.bav to i64                 ; 2 uses
  %i.bbn = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bbn, label %.lr.ph32.i.preheader.i345, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph32.i.preheader.i345:                        ; preds = %.preheader.i.i344
  %.not.i.i346 = icmp eq i16 %i.bbb, %i.bbd
  br i1 %.not.i.i346, label %.lr.ph32.i.us.i349, label %.lr.ph32.i.i347

.lr.ph32.i.us.i349:                               ; preds = %.lr.ph32.i.preheader.i345, %.lr.ph32.i.us.i349
  %.031.i.us.i350 = phi i64 [ %i.bbv, %.lr.ph32.i.us.i349 ], [ %i.bay, %.lr.ph32.i.preheader.i345 ] ; 3 uses
  %i.bbo = lshr i64 %.031.i.us.i350, 3
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bbo ; 2 uses
  %i.bbq = load i8, ptr %i.bbp, align 1, !tbaa !32
  %i.bbr = and i64 %.031.i.us.i350, 7
  %i.bbs = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bbr
  %i.bbt = load i8, ptr %i.bbs, align 1, !tbaa !32
  %i.bbu = and i8 %i.bbt, %i.bbq
  store i8 %i.bbu, ptr %i.bbp, align 1, !tbaa !32
  %i.bbv = add nuw i64 %.031.i.us.i350, 1         ; 2 uses
  %i.bbw = icmp ult i64 %i.bbv, %i.bbm
  br i1 %i.bbw, label %.lr.ph32.i.us.i349, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1046

.lr.ph.i.i353:                                    ; preds = %.lr.ph.i.i353, %.lr.ph.i.preheader.i351
  %.02330.i.i354 = phi i32 [ %i.bca, %.lr.ph.i.i353 ], [ %i.bat, %.lr.ph.i.preheader.i351 ] ; 2 uses
  %i.bbx = sdiv i32 %.02330.i.i354, 8
  %i.bby = sext i32 %i.bbx to i64
  %i.bbz = getelementptr inbounds i8, ptr %i.amt, i64 %i.bby
  store i16 %i.bbl, ptr %i.bbz, align 2, !tbaa !474
  %i.bca = add nuw i32 %.02330.i.i354, 16         ; 2 uses
  %i.bcb = icmp ult i32 %i.bca, %i.bax
  br i1 %i.bcb, label %.lr.ph.i.i353, label %.preheader.i.i344, !llvm.loop !1047

.lr.ph32.i.i347:                                  ; preds = %.lr.ph32.i.preheader.i345, %.lr.ph32.i.i347
  %.031.i.i348 = phi i64 [ %i.bcj, %.lr.ph32.i.i347 ], [ %i.bay, %.lr.ph32.i.preheader.i345 ] ; 3 uses
  %i.bcc = lshr i64 %.031.i.i348, 3
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bcc ; 2 uses
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !32
  %i.bcf = trunc i64 %.031.i.i348 to i8
  %i.bcg = and i8 %i.bcf, 7
  %i.bch = shl nuw i8 1, %i.bcg
  %i.bci = or i8 %i.bch, %i.bce
  store i8 %i.bci, ptr %i.bcd, align 1, !tbaa !32
  %i.bcj = add nuw i64 %.031.i.i348, 1            ; 2 uses
  %i.bck = icmp ult i64 %i.bcj, %i.bbm
  br i1 %i.bck, label %.lr.ph32.i.i347, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1046

bb.lh:                                            ; preds = %bb.lf
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.amo, i64 120
  %i.bcm = load ptr, ptr %i.bcl, align 8, !tbaa !492 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i60.preheader.i341, label %.preheader.i56.i335

.lr.ph.i60.preheader.i341:                        ; preds = %bb.lh
  %i.bcn = insertelement <16 x i16> poison, i16 %i.bbb, i64 0
  %i.bco = shufflevector <16 x i16> %i.bcn, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i60.i342

.preheader.i56.i335:                              ; preds = %.lr.ph.i60.i342, %bb.lh
  %i.bcp = sext i32 %i.bav to i64
  %i.bcq = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bcq, label %.lr.ph33.i.i336, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i60.i342:                                  ; preds = %.lr.ph.i60.i342, %.lr.ph.i60.preheader.i341
  %.02431.i.i343 = phi i32 [ %i.bde, %.lr.ph.i60.i342 ], [ %i.bat, %.lr.ph.i60.preheader.i341 ] ; 3 uses
  %i.bcr = sext i32 %.02431.i.i343 to i64
  %i.bcs = getelementptr inbounds [2 x i8], ptr %i.bcm, i64 %i.bcr
  %i.bct = load <16 x i16>, ptr %i.bcs, align 1, !tbaa !32, !noalias !1048
  %i.bcu = icmp ne <16 x i16> %i.bco, %i.bct
  %i.bcv = sext <16 x i1> %i.bcu to <16 x i16>
  %i.bcw = bitcast <16 x i16> %i.bcv to <32 x i8>
  %i.bcx = icmp slt <32 x i8> %i.bcw, zeroinitializer
  %i.bcy = bitcast <32 x i1> %i.bcx to i32
  %i.bcz = tail call noundef i32 @llvm.pext.i32(i32 %i.bcy, i32 -1431655766)
  %i.bda = sdiv i32 %.02431.i.i343, 8
  %i.bdb = sext i32 %i.bda to i64
  %i.bdc = getelementptr inbounds i8, ptr %i.amt, i64 %i.bdb
  %i.bdd = trunc nuw i32 %i.bcz to i16
  store i16 %i.bdd, ptr %i.bdc, align 2, !tbaa !474
  %i.bde = add nuw i32 %.02431.i.i343, 16         ; 2 uses
  %i.bdf = icmp ult i32 %i.bde, %i.bax
  br i1 %i.bdf, label %.lr.ph.i60.i342, label %.preheader.i56.i335, !llvm.loop !1055

.lr.ph33.i.i336:                                  ; preds = %.preheader.i56.i335, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339
  %.032.i.i337 = phi i64 [ %i.bdt, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339 ], [ %i.bay, %.preheader.i56.i335 ] ; 5 uses
  %i.bdg = getelementptr inbounds nuw [2 x i8], ptr %i.bcm, i64 %.032.i.i337
  %i.bdh = load i16, ptr %i.bdg, align 2, !tbaa !474
  %.not.i57.i338 = icmp eq i16 %i.bbb, %i.bdh
  %i.bdi = lshr i64 %.032.i.i337, 3
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bdi ; 2 uses
  %i.bdk = load i8, ptr %i.bdj, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i57.i338, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %.lr.ph33.i.i336
  %i.bdl = trunc i64 %.032.i.i337 to i8
  %i.bdm = and i8 %i.bdl, 7
  %i.bdn = shl nuw i8 1, %i.bdm
  %i.bdo = or i8 %i.bdn, %i.bdk
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339

bb.lj:                                            ; preds = %.lr.ph33.i.i336
  %i.bdp = and i64 %.032.i.i337, 7
  %i.bdq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bdp
  %i.bdr = load i8, ptr %i.bdq, align 1, !tbaa !32
  %i.bds = and i8 %i.bdr, %i.bdk
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339: ; preds = %bb.lj, %bb.li
  %.sink.i.i59.i340 = phi i8 [ %i.bds, %bb.lj ], [ %i.bdo, %bb.li ]
  store i8 %.sink.i.i59.i340, ptr %i.bdj, align 1, !tbaa !32
  %i.bdt = add nuw i64 %.032.i.i337, 1            ; 2 uses
  %i.bdu = icmp ult i64 %i.bdt, %i.bcp
  br i1 %i.bdu, label %.lr.ph33.i.i336, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1056

bb.lk:                                            ; preds = %bb.le
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !492 ; 4 uses
  br i1 %i.bar, label %bb.ll, label %bb.lo

bb.ll:                                            ; preds = %bb.lk
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.amo, i64 144
  %i.bdy = load i16, ptr %i.bdx, align 8, !tbaa !482 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i67.preheader.i332, label %.preheader.i61.i326

.lr.ph.i67.preheader.i332:                        ; preds = %bb.ll
  %i.bdz = insertelement <16 x i16> poison, i16 %i.bdy, i64 0
  %i.bea = shufflevector <16 x i16> %i.bdz, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i67.i333

.preheader.i61.i326:                              ; preds = %.lr.ph.i67.i333, %bb.ll
  %i.beb = sext i32 %i.bav to i64
  %i.bec = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bec, label %.lr.ph33.i62.i327, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i67.i333:                                  ; preds = %.lr.ph.i67.i333, %.lr.ph.i67.preheader.i332
  %.02431.i68.i334 = phi i32 [ %i.beq, %.lr.ph.i67.i333 ], [ %i.bat, %.lr.ph.i67.preheader.i332 ] ; 3 uses
  %i.bed = sext i32 %.02431.i68.i334 to i64
  %i.bee = getelementptr inbounds [2 x i8], ptr %i.bdw, i64 %i.bed
  %i.bef = load <16 x i16>, ptr %i.bee, align 1, !tbaa !32, !noalias !1057
  %i.beg = icmp ne <16 x i16> %i.bef, %i.bea
  %i.beh = sext <16 x i1> %i.beg to <16 x i16>
  %i.bei = bitcast <16 x i16> %i.beh to <32 x i8>
  %i.bej = icmp slt <32 x i8> %i.bei, zeroinitializer
  %i.bek = bitcast <32 x i1> %i.bej to i32
  %i.bel = tail call noundef i32 @llvm.pext.i32(i32 %i.bek, i32 -1431655766)
  %i.bem = sdiv i32 %.02431.i68.i334, 8
  %i.ben = sext i32 %i.bem to i64
  %i.beo = getelementptr inbounds i8, ptr %i.amt, i64 %i.ben
  %i.bep = trunc nuw i32 %i.bel to i16
  store i16 %i.bep, ptr %i.beo, align 2, !tbaa !474
  %i.beq = add nuw i32 %.02431.i68.i334, 16       ; 2 uses
  %i.ber = icmp ult i32 %i.beq, %i.bax
  br i1 %i.ber, label %.lr.ph.i67.i333, label %.preheader.i61.i326, !llvm.loop !1064

.lr.ph33.i62.i327:                                ; preds = %.preheader.i61.i326, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330
  %.032.i63.i328 = phi i64 [ %i.bff, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330 ], [ %i.bay, %.preheader.i61.i326 ] ; 5 uses
  %i.bes = getelementptr inbounds nuw [2 x i8], ptr %i.bdw, i64 %.032.i63.i328
  %i.bet = load i16, ptr %i.bes, align 2, !tbaa !474
  %.not.i64.i329 = icmp eq i16 %i.bet, %i.bdy
  %i.beu = lshr i64 %.032.i63.i328, 3
  %i.bev = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.beu ; 2 uses
  %i.bew = load i8, ptr %i.bev, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i64.i329, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %.lr.ph33.i62.i327
  %i.bex = trunc i64 %.032.i63.i328 to i8
  %i.bey = and i8 %i.bex, 7
  %i.bez = shl nuw i8 1, %i.bey
  %i.bfa = or i8 %i.bez, %i.bew
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330

bb.ln:                                            ; preds = %.lr.ph33.i62.i327
  %i.bfb = and i64 %.032.i63.i328, 7
  %i.bfc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bfb
  %i.bfd = load i8, ptr %i.bfc, align 1, !tbaa !32
  %i.bfe = and i8 %i.bfd, %i.bew
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330: ; preds = %bb.ln, %bb.lm
  %.sink.i.i66.i331 = phi i8 [ %i.bfe, %bb.ln ], [ %i.bfa, %bb.lm ]
  store i8 %.sink.i.i66.i331, ptr %i.bev, align 1, !tbaa !32
  %i.bff = add nuw i64 %.032.i63.i328, 1          ; 2 uses
  %i.bfg = icmp ult i64 %i.bff, %i.beb
  br i1 %i.bfg, label %.lr.ph33.i62.i327, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1065

bb.lo:                                            ; preds = %bb.lk
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.amo, i64 120
  %i.bfi = load ptr, ptr %i.bfh, align 8, !tbaa !492 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i73.i324, label %.preheader.i69.i318

.preheader.i69.i318:                              ; preds = %.lr.ph.i73.i324, %bb.lo
  %i.bfj = sext i32 %i.bav to i64
  %i.bfk = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bfk, label %.lr.ph34.i.i319, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i73.i324:                                  ; preds = %bb.lo, %.lr.ph.i73.i324
  %.02532.i.i325 = phi i32 [ %i.bga, %.lr.ph.i73.i324 ], [ %i.bat, %bb.lo ] ; 3 uses
  %i.bfl = sext i32 %.02532.i.i325 to i64         ; 2 uses
  %i.bfm = getelementptr inbounds [2 x i8], ptr %i.bdw, i64 %i.bfl
  %i.bfn = load <16 x i16>, ptr %i.bfm, align 1, !tbaa !32, !noalias !1066
  %i.bfo = getelementptr inbounds [2 x i8], ptr %i.bfi, i64 %i.bfl
  %i.bfp = load <16 x i16>, ptr %i.bfo, align 1, !tbaa !32, !noalias !1073
  %i.bfq = icmp ne <16 x i16> %i.bfn, %i.bfp
  %i.bfr = sext <16 x i1> %i.bfq to <16 x i16>
  %i.bfs = bitcast <16 x i16> %i.bfr to <32 x i8>
  %i.bft = icmp slt <32 x i8> %i.bfs, zeroinitializer
  %i.bfu = bitcast <32 x i1> %i.bft to i32
  %i.bfv = tail call noundef i32 @llvm.pext.i32(i32 %i.bfu, i32 -1431655766)
  %i.bfw = sdiv i32 %.02532.i.i325, 8
  %i.bfx = sext i32 %i.bfw to i64
  %i.bfy = getelementptr inbounds i8, ptr %i.amt, i64 %i.bfx
  %i.bfz = trunc nuw i32 %i.bfv to i16
  store i16 %i.bfz, ptr %i.bfy, align 2, !tbaa !474
  %i.bga = add nuw i32 %.02532.i.i325, 16         ; 2 uses
  %i.bgb = icmp ult i32 %i.bga, %i.bax
  br i1 %i.bgb, label %.lr.ph.i73.i324, label %.preheader.i69.i318, !llvm.loop !1080

.lr.ph34.i.i319:                                  ; preds = %.preheader.i69.i318, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322
  %.033.i.i320 = phi i64 [ %i.bgr, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322 ], [ %i.bay, %.preheader.i69.i318 ] ; 6 uses
  %i.bgc = getelementptr inbounds nuw [2 x i8], ptr %i.bdw, i64 %.033.i.i320
  %i.bgd = getelementptr inbounds nuw [2 x i8], ptr %i.bfi, i64 %.033.i.i320
  %i.bge = load i16, ptr %i.bgc, align 2, !tbaa !474
  %i.bgf = load i16, ptr %i.bgd, align 2, !tbaa !474
  %.not.i70.i321 = icmp eq i16 %i.bge, %i.bgf
  %i.bgg = lshr i64 %.033.i.i320, 3
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bgg ; 2 uses
  %i.bgi = load i8, ptr %i.bgh, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i70.i321, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %.lr.ph34.i.i319
  %i.bgj = trunc i64 %.033.i.i320 to i8
  %i.bgk = and i8 %i.bgj, 7
  %i.bgl = shl nuw i8 1, %i.bgk
  %i.bgm = or i8 %i.bgi, %i.bgl
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322

bb.lq:                                            ; preds = %.lr.ph34.i.i319
  %i.bgn = and i64 %.033.i.i320, 7
  %i.bgo = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bgn
  %i.bgp = load i8, ptr %i.bgo, align 1, !tbaa !32
  %i.bgq = and i8 %i.bgp, %i.bgi
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322: ; preds = %bb.lq, %bb.lp
  %.sink.i.i72.i323 = phi i8 [ %i.bgq, %bb.lq ], [ %i.bgm, %bb.lp ]
  store i8 %.sink.i.i72.i323, ptr %i.bgh, align 1, !tbaa !32
  %i.bgr = add nuw i64 %.033.i.i320, 1            ; 2 uses
  %i.bgs = icmp ult i64 %i.bgr, %i.bfj
  br i1 %i.bgs, label %.lr.ph34.i.i319, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1081

_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i: ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339, %.lr.ph32.i.i347, %.lr.ph32.i.us.i349, %.preheader.i69.i318, %.preheader.i61.i326, %.preheader.i56.i335, %.preheader.i.i344
  tail call void @_ZN8facebook5velox10BaseVector10clearNullsERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(94) %.val4, ptr noundef nonnull align 8 dereferenceable(38) %i.amm)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit: ; preds = %.loopexit10.i207, %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt12not_equal_toIvEEEviiPKT_S7_Ph.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.xt

bb.lr:                                            ; preds = %bb.a
  %i.bgt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bgu = load ptr, ptr %i.bgt, align 8, !tbaa !946, !nonnull !57
  %i.bgv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !947, !nonnull !57, !align !318 ; 22 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bgy = load ptr, ptr %i.bgx, align 8, !tbaa !208 ; 6 uses
  %i.bgz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bha = load ptr, ptr %i.bgz, align 8, !tbaa !948, !nonnull !57, !align !318 ; 9 uses
  %i.bhb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !949, !nonnull !57, !align !318
  %.val5 = load ptr, ptr %i.bhc, align 8, !tbaa !208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %.val5, ptr %i.c, align 8, !tbaa !286
  %i.bhd = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIbE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %.val5) ; 49 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.bhf = load i32, ptr %i.bhe, align 4, !tbaa !288
  switch i32 %i.bhf, label %.critedge.i370 [
    i32 1, label %bb.ls
    i32 3, label %bb.ls
  ]

bb.ls:                                            ; preds = %bb.lr, %bb.lr
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bgy, i64 28 ; 2 uses
  %i.bhh = load i32, ptr %i.bhg, align 4, !tbaa !288
  switch i32 %i.bhh, label %.critedge.i370 [
    i32 1, label %bb.lt
    i32 3, label %bb.lt
  ]

bb.lt:                                            ; preds = %bb.ls, %bb.ls
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bgw, i64 36 ; 2 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bgw, i64 37
  %i.bhk = load i8, ptr %i.bhj, align 1, !tbaa !289, !range !56, !noundef !57
  %i.bhl = trunc nuw i8 %i.bhk to i1
  br i1 %i.bhl, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511, label %bb.lu

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511: ; preds = %bb.lt
  %.0.in.pre.i.i512 = load i8, ptr %i.bhi, align 4, !tbaa !64, !range !56
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367

bb.lu:                                            ; preds = %bb.lt
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bgw, i64 28
  %i.bhn = load i32, ptr %i.bhm, align 4, !tbaa !291
  %i.bho = icmp eq i32 %i.bhn, 0
  br i1 %i.bho, label %bb.lv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lv:                                            ; preds = %bb.lu
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bgw, i64 32
  %i.bhq = load i32, ptr %i.bhp, align 8, !tbaa !300 ; 6 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bgw, i64 24
  %i.bhs = load i32, ptr %i.bhr, align 8, !tbaa !301
  %i.bht = icmp eq i32 %i.bhq, %i.bhs
  br i1 %i.bht, label %bb.lw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lw:                                            ; preds = %bb.lv
  %i.bhu = load ptr, ptr %i.bgw, align 8, !tbaa !302 ; 2 uses
  %.not.i.i.i503 = icmp sgt i32 %i.bhq, 0
  br i1 %.not.i.i.i503, label %bb.lx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lx:                                            ; preds = %bb.lw
  %i.bhv = and i32 %i.bhq, 2147483584             ; 3 uses
  %i.bhw = zext nneg i32 %i.bhv to i64
  %.not37.i.i.not.i.i5051418.not = icmp eq i32 %i.bhv, 0
  br i1 %.not37.i.i.not.i.i5051418.not, label %.critedge.i.i.i.i506, label %.lr.ph1420

bb.ly:                                            ; preds = %.lr.ph1420
  %indvars.iv.next.i.i510 = add nuw nsw i64 %indvars.iv.i.i5041419, 64 ; 2 uses
  %.not37.i.i.not.i.i505 = icmp samesign ult i64 %indvars.iv.next.i.i510, %i.bhw
  br i1 %.not37.i.i.not.i.i505, label %.lr.ph1420, label %.critedge.i.i.i.i506, !llvm.loop !303

.lr.ph1420:                                       ; preds = %bb.lx, %bb.ly
  %indvars.iv.i.i5041419 = phi i64 [ %indvars.iv.next.i.i510, %bb.ly ], [ 0, %bb.lx ] ; 2 uses
  %i.bhx = lshr exact i64 %indvars.iv.i.i5041419, 3
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhu, i64 %i.bhx
  %i.bhz = load i64, ptr %i.bhy, align 8, !tbaa !176
  %i.bia = icmp eq i64 %i.bhz, -1
  br i1 %i.bia, label %bb.ly, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, !llvm.loop !303

.critedge.i.i.i.i506:                             ; preds = %bb.ly, %bb.lx
  %.not38.i.i.i.i507 = icmp eq i32 %i.bhq, %i.bhv
  br i1 %.not38.i.i.i.i507, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, label %bb.lz

bb.lz:                                            ; preds = %.critedge.i.i.i.i506
  %i.bib = lshr i32 %i.bhq, 6
  %i.bic = and i32 %i.bhq, 63
  %i.bid = zext nneg i32 %i.bic to i64
  %notmask.i40.i.i.i.i508 = shl nsw i64 -1, %i.bid
  %i.bie = zext nneg i32 %i.bib to i64
  %i.bif = getelementptr inbounds nuw [8 x i8], ptr %i.bhu, i64 %i.bie
  %i.big = load i64, ptr %i.bif, align 8, !tbaa !176
  %.demorgan.i.i509 = or i64 %i.big, %notmask.i40.i.i.i.i508
  %i.bih = icmp eq i64 %.demorgan.i.i509, -1
  %i.bii = zext i1 %i.bih to i16
  %i.bij = or disjoint i16 %i.bii, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365: ; preds = %.lr.ph1420, %bb.lz, %.critedge.i.i.i.i506, %bb.lw, %bb.lv, %bb.lu
  %.sroa.0.0.insert.ext.i.i366 = phi i16 [ 256, %bb.lv ], [ 256, %bb.lu ], [ 257, %bb.lw ], [ 257, %.critedge.i.i.i.i506 ], [ %i.bij, %bb.lz ], [ 256, %.lr.ph1420 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i366, ptr %i.bhi, align 4
  %i.bik = trunc i16 %.sroa.0.0.insert.ext.i.i366 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511
  %.0.in.i.i368 = phi i8 [ %.0.in.pre.i.i512, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511 ], [ %i.bik, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365 ]
  %.0.i.i369 = trunc nuw i8 %.0.in.i.i368 to i1
  br i1 %.0.i.i369, label %bb.pj, label %.critedge.i370

.critedge.i370:                                   ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367, %bb.ls, %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.bil = load ptr, ptr %i.bha, align 8, !tbaa !239
  store ptr %i.bil, ptr %33, align 8, !tbaa !304
  %i.bim = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr null, ptr %i.bim, align 8, !tbaa !313
  %i.bin = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.ma unwind label %bb.mb

bb.ma:                                            ; preds = %.critedge.i370
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bin, ptr noundef nonnull align 8 dereferenceable(94) %i.i, ptr noundef nonnull align 8 dereferenceable(38) %i.bgw, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373 unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %.critedge.i370
  %i.bio = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bim) #28
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373: ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.bip = load ptr, ptr %i.bha, align 8, !tbaa !239
  store ptr %i.bip, ptr %34, align 8, !tbaa !304
  %i.biq = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr null, ptr %i.biq, align 8, !tbaa !313
  %i.bir = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %bb.mc unwind label %bb.md

bb.mc:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bir, ptr noundef nonnull align 8 dereferenceable(94) %i.bgy, ptr noundef nonnull align 8 dereferenceable(38) %i.bgw, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i376 unwind label %bb.md

bb.md:                                            ; preds = %bb.mc, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373
  %i.bis = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.biq) #28
  br label %.body.i374

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i376: ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %33, ptr %32, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  store ptr %34, ptr %.sroa.411.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i377 = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %i.bgu, ptr %.sroa.5.0..sroa_idx.i377, align 8
  %.sroa.6.0..sroa_idx.i378 = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
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
  %i.bby = tail call noundef i32 @llvm.pext.i32(i32 %i.bbx, i32 -1431655766)
  %i.bbz = trunc nuw i32 %i.bby to i16
  br label %.lr.ph.i.i343

.preheader.i.i336:                                ; preds = %.lr.ph.i.i343, %bb.lg
  %i.bca = sext i32 %i.bbh to i64                 ; 2 uses
  %i.bcb = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bcb, label %.lr.ph32.i.preheader.i337, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i

.lr.ph32.i.preheader.i337:                        ; preds = %.preheader.i.i336
  %i.bcc = icmp slt i16 %i.bbn, %i.bbp
  br i1 %i.bcc, label %.lr.ph32.i.us.i340, label %.lr.ph32.i.i338

.lr.ph32.i.us.i340:                               ; preds = %.lr.ph32.i.preheader.i337, %.lr.ph32.i.us.i340
  %.031.i.us.i341 = phi i64 [ %i.bck, %.lr.ph32.i.us.i340 ], [ %i.bbk, %.lr.ph32.i.preheader.i337 ] ; 3 uses
  %i.bcd = lshr i64 %.031.i.us.i341, 3
  %i.bce = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bcd ; 2 uses
  %i.bcf = load i8, ptr %i.bce, align 1, !tbaa !32
  %i.bcg = trunc i64 %.031.i.us.i341 to i8
  %i.bch = and i8 %i.bcg, 7
  %i.bci = shl nuw i8 1, %i.bch
  %i.bcj = or i8 %i.bci, %i.bcf
  store i8 %i.bcj, ptr %i.bce, align 1, !tbaa !32
  %i.bck = add nuw i64 %.031.i.us.i341, 1         ; 2 uses
  %i.bcl = icmp ult i64 %i.bck, %i.bca
  br i1 %i.bcl, label %.lr.ph32.i.us.i340, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1317

.lr.ph.i.i343:                                    ; preds = %.lr.ph.i.i343, %.lr.ph.i.preheader.i342
  %.02330.i.i344 = phi i32 [ %i.bcp, %.lr.ph.i.i343 ], [ %i.bbf, %.lr.ph.i.preheader.i342 ] ; 2 uses
  %i.bcm = sdiv i32 %.02330.i.i344, 8
  %i.bcn = sext i32 %i.bcm to i64
  %i.bco = getelementptr inbounds i8, ptr %i.anf, i64 %i.bcn
  store i16 %i.bbz, ptr %i.bco, align 2, !tbaa !474
  %i.bcp = add nuw i32 %.02330.i.i344, 16         ; 2 uses
  %i.bcq = icmp ult i32 %i.bcp, %i.bbj
  br i1 %i.bcq, label %.lr.ph.i.i343, label %.preheader.i.i336, !llvm.loop !1318

.lr.ph32.i.i338:                                  ; preds = %.lr.ph32.i.preheader.i337, %.lr.ph32.i.i338
  %.031.i.i339 = phi i64 [ %i.bcy, %.lr.ph32.i.i338 ], [ %i.bbk, %.lr.ph32.i.preheader.i337 ] ; 3 uses
  %i.bcr = lshr i64 %.031.i.i339, 3
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bcr ; 2 uses
  %i.bct = load i8, ptr %i.bcs, align 1, !tbaa !32
  %i.bcu = and i64 %.031.i.i339, 7
  %i.bcv = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bcu
  %i.bcw = load i8, ptr %i.bcv, align 1, !tbaa !32
  %i.bcx = and i8 %i.bcw, %i.bct
  store i8 %i.bcx, ptr %i.bcs, align 1, !tbaa !32
  %i.bcy = add nuw i64 %.031.i.i339, 1            ; 2 uses
  %i.bcz = icmp ult i64 %i.bcy, %i.bca
  br i1 %i.bcz, label %.lr.ph32.i.i338, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1317

bb.lh:                                            ; preds = %bb.lf
  %i.bda = getelementptr inbounds nuw i8, ptr %i.ana, i64 120
  %i.bdb = load ptr, ptr %i.bda, align 8, !tbaa !492 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i59.preheader.i333, label %.preheader.i56.i328

.lr.ph.i59.preheader.i333:                        ; preds = %bb.lh
  %i.bdc = insertelement <16 x i16> poison, i16 %i.bbn, i64 0
  %i.bdd = shufflevector <16 x i16> %i.bdc, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i59.i334

.preheader.i56.i328:                              ; preds = %.lr.ph.i59.i334, %bb.lh
  %i.bde = sext i32 %i.bbh to i64
  %i.bdf = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bdf, label %.lr.ph33.i.i329, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i59.i334:                                  ; preds = %.lr.ph.i59.i334, %.lr.ph.i59.preheader.i333
  %.02431.i.i335 = phi i32 [ %i.bdt, %.lr.ph.i59.i334 ], [ %i.bbf, %.lr.ph.i59.preheader.i333 ] ; 3 uses
  %i.bdg = sext i32 %.02431.i.i335 to i64
  %i.bdh = getelementptr inbounds [2 x i8], ptr %i.bdb, i64 %i.bdg
  %i.bdi = load <16 x i16>, ptr %i.bdh, align 1, !tbaa !32, !noalias !1319
  %i.bdj = icmp sgt <16 x i16> %i.bdi, %i.bdd
  %i.bdk = sext <16 x i1> %i.bdj to <16 x i16>
  %i.bdl = bitcast <16 x i16> %i.bdk to <32 x i8>
  %i.bdm = icmp slt <32 x i8> %i.bdl, zeroinitializer
  %i.bdn = bitcast <32 x i1> %i.bdm to i32
  %i.bdo = tail call noundef i32 @llvm.pext.i32(i32 %i.bdn, i32 -1431655766)
  %i.bdp = sdiv i32 %.02431.i.i335, 8
  %i.bdq = sext i32 %i.bdp to i64
  %i.bdr = getelementptr inbounds i8, ptr %i.anf, i64 %i.bdq
  %i.bds = trunc nuw i32 %i.bdo to i16
  store i16 %i.bds, ptr %i.bdr, align 2, !tbaa !474
  %i.bdt = add nuw i32 %.02431.i.i335, 16         ; 2 uses
  %i.bdu = icmp ult i32 %i.bdt, %i.bbj
  br i1 %i.bdu, label %.lr.ph.i59.i334, label %.preheader.i56.i328, !llvm.loop !1326

.lr.ph33.i.i329:                                  ; preds = %.preheader.i56.i328, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331
  %.032.i.i330 = phi i64 [ %i.bej, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331 ], [ %i.bbk, %.preheader.i56.i328 ] ; 5 uses
  %i.bdv = getelementptr inbounds nuw [2 x i8], ptr %i.bdb, i64 %.032.i.i330
  %i.bdw = load i16, ptr %i.bdv, align 2, !tbaa !474
  %i.bdx = icmp slt i16 %i.bbn, %i.bdw
  %i.bdy = lshr i64 %.032.i.i330, 3
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bdy ; 2 uses
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bdx, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %.lr.ph33.i.i329
  %i.beb = trunc i64 %.032.i.i330 to i8
  %i.bec = and i8 %i.beb, 7
  %i.bed = shl nuw i8 1, %i.bec
  %i.bee = or i8 %i.bed, %i.bea
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331

bb.lj:                                            ; preds = %.lr.ph33.i.i329
  %i.bef = and i64 %.032.i.i330, 7
  %i.beg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bef
  %i.beh = load i8, ptr %i.beg, align 1, !tbaa !32
  %i.bei = and i8 %i.beh, %i.bea
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331: ; preds = %bb.lj, %bb.li
  %.sink.i.i58.i332 = phi i8 [ %i.bei, %bb.lj ], [ %i.bee, %bb.li ]
  store i8 %.sink.i.i58.i332, ptr %i.bdz, align 1, !tbaa !32
  %i.bej = add nuw i64 %.032.i.i330, 1            ; 2 uses
  %i.bek = icmp ult i64 %i.bej, %i.bde
  br i1 %i.bek, label %.lr.ph33.i.i329, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1327

bb.lk:                                            ; preds = %bb.le
  %i.bel = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.bem = load ptr, ptr %i.bel, align 8, !tbaa !492 ; 4 uses
  br i1 %i.bbd, label %bb.ll, label %bb.lo

bb.ll:                                            ; preds = %bb.lk
  %i.ben = getelementptr inbounds nuw i8, ptr %i.ana, i64 144
  %i.beo = load i16, ptr %i.ben, align 8, !tbaa !482 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i65.preheader.i325, label %.preheader.i60.i320

.lr.ph.i65.preheader.i325:                        ; preds = %bb.ll
  %i.bep = insertelement <16 x i16> poison, i16 %i.beo, i64 0
  %i.beq = shufflevector <16 x i16> %i.bep, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i65.i326

.preheader.i60.i320:                              ; preds = %.lr.ph.i65.i326, %bb.ll
  %i.ber = sext i32 %i.bbh to i64
  %i.bes = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bes, label %.lr.ph33.i61.i321, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i65.i326:                                  ; preds = %.lr.ph.i65.i326, %.lr.ph.i65.preheader.i325
  %.02431.i66.i327 = phi i32 [ %i.bfg, %.lr.ph.i65.i326 ], [ %i.bbf, %.lr.ph.i65.preheader.i325 ] ; 3 uses
  %i.bet = sext i32 %.02431.i66.i327 to i64
  %i.beu = getelementptr inbounds [2 x i8], ptr %i.bem, i64 %i.bet
  %i.bev = load <16 x i16>, ptr %i.beu, align 1, !tbaa !32, !noalias !1328
  %i.bew = icmp sgt <16 x i16> %i.beq, %i.bev
  %i.bex = sext <16 x i1> %i.bew to <16 x i16>
  %i.bey = bitcast <16 x i16> %i.bex to <32 x i8>
  %i.bez = icmp slt <32 x i8> %i.bey, zeroinitializer
  %i.bfa = bitcast <32 x i1> %i.bez to i32
  %i.bfb = tail call noundef i32 @llvm.pext.i32(i32 %i.bfa, i32 -1431655766)
  %i.bfc = sdiv i32 %.02431.i66.i327, 8
  %i.bfd = sext i32 %i.bfc to i64
  %i.bfe = getelementptr inbounds i8, ptr %i.anf, i64 %i.bfd
  %i.bff = trunc nuw i32 %i.bfb to i16
  store i16 %i.bff, ptr %i.bfe, align 2, !tbaa !474
  %i.bfg = add nuw i32 %.02431.i66.i327, 16       ; 2 uses
  %i.bfh = icmp ult i32 %i.bfg, %i.bbj
  br i1 %i.bfh, label %.lr.ph.i65.i326, label %.preheader.i60.i320, !llvm.loop !1335

.lr.ph33.i61.i321:                                ; preds = %.preheader.i60.i320, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323
  %.032.i62.i322 = phi i64 [ %i.bfw, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323 ], [ %i.bbk, %.preheader.i60.i320 ] ; 5 uses
  %i.bfi = getelementptr inbounds nuw [2 x i8], ptr %i.bem, i64 %.032.i62.i322
  %i.bfj = load i16, ptr %i.bfi, align 2, !tbaa !474
  %i.bfk = icmp slt i16 %i.bfj, %i.beo
  %i.bfl = lshr i64 %.032.i62.i322, 3
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bfl ; 2 uses
  %i.bfn = load i8, ptr %i.bfm, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bfk, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %.lr.ph33.i61.i321
  %i.bfo = trunc i64 %.032.i62.i322 to i8
  %i.bfp = and i8 %i.bfo, 7
  %i.bfq = shl nuw i8 1, %i.bfp
  %i.bfr = or i8 %i.bfq, %i.bfn
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323

bb.ln:                                            ; preds = %.lr.ph33.i61.i321
  %i.bfs = and i64 %.032.i62.i322, 7
  %i.bft = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bfs
  %i.bfu = load i8, ptr %i.bft, align 1, !tbaa !32
  %i.bfv = and i8 %i.bfu, %i.bfn
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323: ; preds = %bb.ln, %bb.lm
  %.sink.i.i64.i324 = phi i8 [ %i.bfv, %bb.ln ], [ %i.bfr, %bb.lm ]
  store i8 %.sink.i.i64.i324, ptr %i.bfm, align 1, !tbaa !32
  %i.bfw = add nuw i64 %.032.i62.i322, 1          ; 2 uses
  %i.bfx = icmp ult i64 %i.bfw, %i.ber
  br i1 %i.bfx, label %.lr.ph33.i61.i321, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1336

bb.lo:                                            ; preds = %bb.lk
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.ana, i64 120
  %i.bfz = load ptr, ptr %i.bfy, align 8, !tbaa !492 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i70.i318, label %.preheader.i67.i313

.preheader.i67.i313:                              ; preds = %.lr.ph.i70.i318, %bb.lo
  %i.bga = sext i32 %i.bbh to i64
  %i.bgb = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bgb, label %.lr.ph34.i.i314, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i70.i318:                                  ; preds = %bb.lo, %.lr.ph.i70.i318
  %.02532.i.i319 = phi i32 [ %i.bgr, %.lr.ph.i70.i318 ], [ %i.bbf, %bb.lo ] ; 3 uses
  %i.bgc = sext i32 %.02532.i.i319 to i64         ; 2 uses
  %i.bgd = getelementptr inbounds [2 x i8], ptr %i.bem, i64 %i.bgc
  %i.bge = load <16 x i16>, ptr %i.bgd, align 1, !tbaa !32, !noalias !1337
  %i.bgf = getelementptr inbounds [2 x i8], ptr %i.bfz, i64 %i.bgc
  %i.bgg = load <16 x i16>, ptr %i.bgf, align 1, !tbaa !32, !noalias !1344
  %i.bgh = icmp sgt <16 x i16> %i.bgg, %i.bge
  %i.bgi = sext <16 x i1> %i.bgh to <16 x i16>
  %i.bgj = bitcast <16 x i16> %i.bgi to <32 x i8>
  %i.bgk = icmp slt <32 x i8> %i.bgj, zeroinitializer
  %i.bgl = bitcast <32 x i1> %i.bgk to i32
  %i.bgm = tail call noundef i32 @llvm.pext.i32(i32 %i.bgl, i32 -1431655766)
  %i.bgn = sdiv i32 %.02532.i.i319, 8
  %i.bgo = sext i32 %i.bgn to i64
  %i.bgp = getelementptr inbounds i8, ptr %i.anf, i64 %i.bgo
  %i.bgq = trunc nuw i32 %i.bgm to i16
  store i16 %i.bgq, ptr %i.bgp, align 2, !tbaa !474
  %i.bgr = add nuw i32 %.02532.i.i319, 16         ; 2 uses
  %i.bgs = icmp ult i32 %i.bgr, %i.bbj
  br i1 %i.bgs, label %.lr.ph.i70.i318, label %.preheader.i67.i313, !llvm.loop !1351

.lr.ph34.i.i314:                                  ; preds = %.preheader.i67.i313, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316
  %.033.i.i315 = phi i64 [ %i.bhj, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316 ], [ %i.bbk, %.preheader.i67.i313 ] ; 6 uses
  %i.bgt = getelementptr inbounds nuw [2 x i8], ptr %i.bem, i64 %.033.i.i315
  %i.bgu = getelementptr inbounds nuw [2 x i8], ptr %i.bfz, i64 %.033.i.i315
  %i.bgv = load i16, ptr %i.bgt, align 2, !tbaa !474
  %i.bgw = load i16, ptr %i.bgu, align 2, !tbaa !474
  %i.bgx = icmp slt i16 %i.bgv, %i.bgw
  %i.bgy = lshr i64 %.033.i.i315, 3
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bgy ; 2 uses
  %i.bha = load i8, ptr %i.bgz, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bgx, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %.lr.ph34.i.i314
  %i.bhb = trunc i64 %.033.i.i315 to i8
  %i.bhc = and i8 %i.bhb, 7
  %i.bhd = shl nuw i8 1, %i.bhc
  %i.bhe = or i8 %i.bha, %i.bhd
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316

bb.lq:                                            ; preds = %.lr.ph34.i.i314
  %i.bhf = and i64 %.033.i.i315, 7
  %i.bhg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bhf
  %i.bhh = load i8, ptr %i.bhg, align 1, !tbaa !32
  %i.bhi = and i8 %i.bhh, %i.bha
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316: ; preds = %bb.lq, %bb.lp
  %.sink.i.i69.i317 = phi i8 [ %i.bhi, %bb.lq ], [ %i.bhe, %bb.lp ]
  store i8 %.sink.i.i69.i317, ptr %i.bgz, align 1, !tbaa !32
  %i.bhj = add nuw i64 %.033.i.i315, 1            ; 2 uses
  %i.bhk = icmp ult i64 %i.bhj, %i.bga
  br i1 %i.bhk, label %.lr.ph34.i.i314, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1352

_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i: ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331, %.lr.ph32.i.i338, %.lr.ph32.i.us.i340, %.preheader.i67.i313, %.preheader.i60.i320, %.preheader.i56.i328, %.preheader.i.i336
  tail call void @_ZN8facebook5velox10BaseVector10clearNullsERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(94) %.val4, ptr noundef nonnull align 8 dereferenceable(38) %i.amy)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit: ; preds = %.loopexit10.i202, %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt4lessIvEEEviiPKT_S7_Ph.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.xt

bb.lr:                                            ; preds = %bb.a
  %i.bhl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bhm = load ptr, ptr %i.bhl, align 8, !tbaa !1217, !nonnull !57
  %i.bhn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bho = load ptr, ptr %i.bhn, align 8, !tbaa !1218, !nonnull !57, !align !318 ; 22 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !208 ; 6 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bhs = load ptr, ptr %i.bhr, align 8, !tbaa !1219, !nonnull !57, !align !318 ; 9 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bhu = load ptr, ptr %i.bht, align 8, !tbaa !1220, !nonnull !57, !align !318
  %.val5 = load ptr, ptr %i.bhu, align 8, !tbaa !208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %.val5, ptr %i.c, align 8, !tbaa !286
  %i.bhv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIbE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %.val5) ; 49 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.bhx = load i32, ptr %i.bhw, align 4, !tbaa !288
  switch i32 %i.bhx, label %.critedge.i360 [
    i32 1, label %bb.ls
    i32 3, label %bb.ls
  ]

bb.ls:                                            ; preds = %bb.lr, %bb.lr
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhq, i64 28 ; 2 uses
  %i.bhz = load i32, ptr %i.bhy, align 4, !tbaa !288
  switch i32 %i.bhz, label %.critedge.i360 [
    i32 1, label %bb.lt
    i32 3, label %bb.lt
  ]

bb.lt:                                            ; preds = %bb.ls, %bb.ls
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bho, i64 36 ; 2 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bho, i64 37
  %i.bic = load i8, ptr %i.bib, align 1, !tbaa !289, !range !56, !noundef !57
  %i.bid = trunc nuw i8 %i.bic to i1
  br i1 %i.bid, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499, label %bb.lu

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499: ; preds = %bb.lt
  %.0.in.pre.i.i500 = load i8, ptr %i.bia, align 4, !tbaa !64, !range !56
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357

bb.lu:                                            ; preds = %bb.lt
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bho, i64 28
  %i.bif = load i32, ptr %i.bie, align 4, !tbaa !291
  %i.big = icmp eq i32 %i.bif, 0
  br i1 %i.big, label %bb.lv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lv:                                            ; preds = %bb.lu
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bho, i64 32
  %i.bii = load i32, ptr %i.bih, align 8, !tbaa !300 ; 6 uses
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bho, i64 24
  %i.bik = load i32, ptr %i.bij, align 8, !tbaa !301
  %i.bil = icmp eq i32 %i.bii, %i.bik
  br i1 %i.bil, label %bb.lw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lw:                                            ; preds = %bb.lv
  %i.bim = load ptr, ptr %i.bho, align 8, !tbaa !302 ; 2 uses
  %.not.i.i.i491 = icmp sgt i32 %i.bii, 0
  br i1 %.not.i.i.i491, label %bb.lx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lx:                                            ; preds = %bb.lw
  %i.bin = and i32 %i.bii, 2147483584             ; 3 uses
  %i.bio = zext nneg i32 %i.bin to i64
  %.not37.i.i.not.i.i4931407.not = icmp eq i32 %i.bin, 0
  br i1 %.not37.i.i.not.i.i4931407.not, label %.critedge.i.i.i.i494, label %.lr.ph1409

bb.ly:                                            ; preds = %.lr.ph1409
  %indvars.iv.next.i.i498 = add nuw nsw i64 %indvars.iv.i.i4921408, 64 ; 2 uses
  %.not37.i.i.not.i.i493 = icmp samesign ult i64 %indvars.iv.next.i.i498, %i.bio
  br i1 %.not37.i.i.not.i.i493, label %.lr.ph1409, label %.critedge.i.i.i.i494, !llvm.loop !303

.lr.ph1409:                                       ; preds = %bb.lx, %bb.ly
  %indvars.iv.i.i4921408 = phi i64 [ %indvars.iv.next.i.i498, %bb.ly ], [ 0, %bb.lx ] ; 2 uses
  %i.bip = lshr exact i64 %indvars.iv.i.i4921408, 3
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bim, i64 %i.bip
  %i.bir = load i64, ptr %i.biq, align 8, !tbaa !176
  %i.bis = icmp eq i64 %i.bir, -1
  br i1 %i.bis, label %bb.ly, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, !llvm.loop !303

.critedge.i.i.i.i494:                             ; preds = %bb.ly, %bb.lx
  %.not38.i.i.i.i495 = icmp eq i32 %i.bii, %i.bin
  br i1 %.not38.i.i.i.i495, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, label %bb.lz

bb.lz:                                            ; preds = %.critedge.i.i.i.i494
  %i.bit = lshr i32 %i.bii, 6
  %i.biu = and i32 %i.bii, 63
  %i.biv = zext nneg i32 %i.biu to i64
  %notmask.i40.i.i.i.i496 = shl nsw i64 -1, %i.biv
  %i.biw = zext nneg i32 %i.bit to i64
  %i.bix = getelementptr inbounds nuw [8 x i8], ptr %i.bim, i64 %i.biw
  %i.biy = load i64, ptr %i.bix, align 8, !tbaa !176
  %.demorgan.i.i497 = or i64 %i.biy, %notmask.i40.i.i.i.i496
  %i.biz = icmp eq i64 %.demorgan.i.i497, -1
  %i.bja = zext i1 %i.biz to i16
  %i.bjb = or disjoint i16 %i.bja, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355: ; preds = %.lr.ph1409, %bb.lz, %.critedge.i.i.i.i494, %bb.lw, %bb.lv, %bb.lu
  %.sroa.0.0.insert.ext.i.i356 = phi i16 [ 256, %bb.lv ], [ 256, %bb.lu ], [ 257, %bb.lw ], [ 257, %.critedge.i.i.i.i494 ], [ %i.bjb, %bb.lz ], [ 256, %.lr.ph1409 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i356, ptr %i.bia, align 4
  %i.bjc = trunc i16 %.sroa.0.0.insert.ext.i.i356 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499
  %.0.in.i.i358 = phi i8 [ %.0.in.pre.i.i500, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499 ], [ %i.bjc, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355 ]
  %.0.i.i359 = trunc nuw i8 %.0.in.i.i358 to i1
  br i1 %.0.i.i359, label %bb.pj, label %.critedge.i360

.critedge.i360:                                   ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357, %bb.ls, %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.bjd = load ptr, ptr %i.bhs, align 8, !tbaa !239
  store ptr %i.bjd, ptr %33, align 8, !tbaa !304
  %i.bje = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr null, ptr %i.bje, align 8, !tbaa !313
  %i.bjf = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.ma unwind label %bb.mb

bb.ma:                                            ; preds = %.critedge.i360
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bjf, ptr noundef nonnull align 8 dereferenceable(94) %i.i, ptr noundef nonnull align 8 dereferenceable(38) %i.bho, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363 unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %.critedge.i360
  %i.bjg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bje) #28
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363: ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.bjh = load ptr, ptr %i.bhs, align 8, !tbaa !239
  store ptr %i.bjh, ptr %34, align 8, !tbaa !304
  %i.bji = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr null, ptr %i.bji, align 8, !tbaa !313
  %i.bjj = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %bb.mc unwind label %bb.md

bb.mc:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bjj, ptr noundef nonnull align 8 dereferenceable(94) %i.bhq, ptr noundef nonnull align 8 dereferenceable(38) %i.bho, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i366 unwind label %bb.md

bb.md:                                            ; preds = %bb.mc, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363
  %i.bjk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bji) #28
  br label %.body.i364

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i366: ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %33, ptr %32, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  store ptr %34, ptr %.sroa.411.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i367 = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %i.bhm, ptr %.sroa.5.0..sroa_idx.i367, align 8
  %.sroa.6.0..sroa_idx.i368 = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
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
  %i.bby = tail call noundef i32 @llvm.pext.i32(i32 %i.bbx, i32 -1431655766)
  %i.bbz = trunc nuw i32 %i.bby to i16
  br label %.lr.ph.i.i343

.preheader.i.i336:                                ; preds = %.lr.ph.i.i343, %bb.lg
  %i.bca = sext i32 %i.bbh to i64                 ; 2 uses
  %i.bcb = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bcb, label %.lr.ph32.i.preheader.i337, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i

.lr.ph32.i.preheader.i337:                        ; preds = %.preheader.i.i336
  %i.bcc = icmp sgt i16 %i.bbn, %i.bbp
  br i1 %i.bcc, label %.lr.ph32.i.us.i340, label %.lr.ph32.i.i338

.lr.ph32.i.us.i340:                               ; preds = %.lr.ph32.i.preheader.i337, %.lr.ph32.i.us.i340
  %.031.i.us.i341 = phi i64 [ %i.bck, %.lr.ph32.i.us.i340 ], [ %i.bbk, %.lr.ph32.i.preheader.i337 ] ; 3 uses
  %i.bcd = lshr i64 %.031.i.us.i341, 3
  %i.bce = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bcd ; 2 uses
  %i.bcf = load i8, ptr %i.bce, align 1, !tbaa !32
  %i.bcg = trunc i64 %.031.i.us.i341 to i8
  %i.bch = and i8 %i.bcg, 7
  %i.bci = shl nuw i8 1, %i.bch
  %i.bcj = or i8 %i.bci, %i.bcf
  store i8 %i.bcj, ptr %i.bce, align 1, !tbaa !32
  %i.bck = add nuw i64 %.031.i.us.i341, 1         ; 2 uses
  %i.bcl = icmp ult i64 %i.bck, %i.bca
  br i1 %i.bcl, label %.lr.ph32.i.us.i340, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1588

.lr.ph.i.i343:                                    ; preds = %.lr.ph.i.i343, %.lr.ph.i.preheader.i342
  %.02330.i.i344 = phi i32 [ %i.bcp, %.lr.ph.i.i343 ], [ %i.bbf, %.lr.ph.i.preheader.i342 ] ; 2 uses
  %i.bcm = sdiv i32 %.02330.i.i344, 8
  %i.bcn = sext i32 %i.bcm to i64
  %i.bco = getelementptr inbounds i8, ptr %i.anf, i64 %i.bcn
  store i16 %i.bbz, ptr %i.bco, align 2, !tbaa !474
  %i.bcp = add nuw i32 %.02330.i.i344, 16         ; 2 uses
  %i.bcq = icmp ult i32 %i.bcp, %i.bbj
  br i1 %i.bcq, label %.lr.ph.i.i343, label %.preheader.i.i336, !llvm.loop !1589

.lr.ph32.i.i338:                                  ; preds = %.lr.ph32.i.preheader.i337, %.lr.ph32.i.i338
  %.031.i.i339 = phi i64 [ %i.bcy, %.lr.ph32.i.i338 ], [ %i.bbk, %.lr.ph32.i.preheader.i337 ] ; 3 uses
  %i.bcr = lshr i64 %.031.i.i339, 3
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bcr ; 2 uses
  %i.bct = load i8, ptr %i.bcs, align 1, !tbaa !32
  %i.bcu = and i64 %.031.i.i339, 7
  %i.bcv = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bcu
  %i.bcw = load i8, ptr %i.bcv, align 1, !tbaa !32
  %i.bcx = and i8 %i.bcw, %i.bct
  store i8 %i.bcx, ptr %i.bcs, align 1, !tbaa !32
  %i.bcy = add nuw i64 %.031.i.i339, 1            ; 2 uses
  %i.bcz = icmp ult i64 %i.bcy, %i.bca
  br i1 %i.bcz, label %.lr.ph32.i.i338, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1588

bb.lh:                                            ; preds = %bb.lf
  %i.bda = getelementptr inbounds nuw i8, ptr %i.ana, i64 120
  %i.bdb = load ptr, ptr %i.bda, align 8, !tbaa !492 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i59.preheader.i333, label %.preheader.i56.i328

.lr.ph.i59.preheader.i333:                        ; preds = %bb.lh
  %i.bdc = insertelement <16 x i16> poison, i16 %i.bbn, i64 0
  %i.bdd = shufflevector <16 x i16> %i.bdc, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i59.i334

.preheader.i56.i328:                              ; preds = %.lr.ph.i59.i334, %bb.lh
  %i.bde = sext i32 %i.bbh to i64
  %i.bdf = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bdf, label %.lr.ph33.i.i329, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i59.i334:                                  ; preds = %.lr.ph.i59.i334, %.lr.ph.i59.preheader.i333
  %.02431.i.i335 = phi i32 [ %i.bdt, %.lr.ph.i59.i334 ], [ %i.bbf, %.lr.ph.i59.preheader.i333 ] ; 3 uses
  %i.bdg = sext i32 %.02431.i.i335 to i64
  %i.bdh = getelementptr inbounds [2 x i8], ptr %i.bdb, i64 %i.bdg
  %i.bdi = load <16 x i16>, ptr %i.bdh, align 1, !tbaa !32, !noalias !1590
  %i.bdj = icmp sgt <16 x i16> %i.bdd, %i.bdi
  %i.bdk = sext <16 x i1> %i.bdj to <16 x i16>
  %i.bdl = bitcast <16 x i16> %i.bdk to <32 x i8>
  %i.bdm = icmp slt <32 x i8> %i.bdl, zeroinitializer
  %i.bdn = bitcast <32 x i1> %i.bdm to i32
  %i.bdo = tail call noundef i32 @llvm.pext.i32(i32 %i.bdn, i32 -1431655766)
  %i.bdp = sdiv i32 %.02431.i.i335, 8
  %i.bdq = sext i32 %i.bdp to i64
  %i.bdr = getelementptr inbounds i8, ptr %i.anf, i64 %i.bdq
  %i.bds = trunc nuw i32 %i.bdo to i16
  store i16 %i.bds, ptr %i.bdr, align 2, !tbaa !474
  %i.bdt = add nuw i32 %.02431.i.i335, 16         ; 2 uses
  %i.bdu = icmp ult i32 %i.bdt, %i.bbj
  br i1 %i.bdu, label %.lr.ph.i59.i334, label %.preheader.i56.i328, !llvm.loop !1597

.lr.ph33.i.i329:                                  ; preds = %.preheader.i56.i328, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331
  %.032.i.i330 = phi i64 [ %i.bej, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331 ], [ %i.bbk, %.preheader.i56.i328 ] ; 5 uses
  %i.bdv = getelementptr inbounds nuw [2 x i8], ptr %i.bdb, i64 %.032.i.i330
  %i.bdw = load i16, ptr %i.bdv, align 2, !tbaa !474
  %i.bdx = icmp sgt i16 %i.bbn, %i.bdw
  %i.bdy = lshr i64 %.032.i.i330, 3
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bdy ; 2 uses
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bdx, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %.lr.ph33.i.i329
  %i.beb = trunc i64 %.032.i.i330 to i8
  %i.bec = and i8 %i.beb, 7
  %i.bed = shl nuw i8 1, %i.bec
  %i.bee = or i8 %i.bed, %i.bea
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331

bb.lj:                                            ; preds = %.lr.ph33.i.i329
  %i.bef = and i64 %.032.i.i330, 7
  %i.beg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bef
  %i.beh = load i8, ptr %i.beg, align 1, !tbaa !32
  %i.bei = and i8 %i.beh, %i.bea
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331: ; preds = %bb.lj, %bb.li
  %.sink.i.i58.i332 = phi i8 [ %i.bei, %bb.lj ], [ %i.bee, %bb.li ]
  store i8 %.sink.i.i58.i332, ptr %i.bdz, align 1, !tbaa !32
  %i.bej = add nuw i64 %.032.i.i330, 1            ; 2 uses
  %i.bek = icmp ult i64 %i.bej, %i.bde
  br i1 %i.bek, label %.lr.ph33.i.i329, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1598

bb.lk:                                            ; preds = %bb.le
  %i.bel = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.bem = load ptr, ptr %i.bel, align 8, !tbaa !492 ; 4 uses
  br i1 %i.bbd, label %bb.ll, label %bb.lo

bb.ll:                                            ; preds = %bb.lk
  %i.ben = getelementptr inbounds nuw i8, ptr %i.ana, i64 144
  %i.beo = load i16, ptr %i.ben, align 8, !tbaa !482 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i65.preheader.i325, label %.preheader.i60.i320

.lr.ph.i65.preheader.i325:                        ; preds = %bb.ll
  %i.bep = insertelement <16 x i16> poison, i16 %i.beo, i64 0
  %i.beq = shufflevector <16 x i16> %i.bep, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i65.i326

.preheader.i60.i320:                              ; preds = %.lr.ph.i65.i326, %bb.ll
  %i.ber = sext i32 %i.bbh to i64
  %i.bes = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bes, label %.lr.ph33.i61.i321, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i65.i326:                                  ; preds = %.lr.ph.i65.i326, %.lr.ph.i65.preheader.i325
  %.02431.i66.i327 = phi i32 [ %i.bfg, %.lr.ph.i65.i326 ], [ %i.bbf, %.lr.ph.i65.preheader.i325 ] ; 3 uses
  %i.bet = sext i32 %.02431.i66.i327 to i64
  %i.beu = getelementptr inbounds [2 x i8], ptr %i.bem, i64 %i.bet
  %i.bev = load <16 x i16>, ptr %i.beu, align 1, !tbaa !32, !noalias !1599
  %i.bew = icmp sgt <16 x i16> %i.bev, %i.beq
  %i.bex = sext <16 x i1> %i.bew to <16 x i16>
  %i.bey = bitcast <16 x i16> %i.bex to <32 x i8>
  %i.bez = icmp slt <32 x i8> %i.bey, zeroinitializer
  %i.bfa = bitcast <32 x i1> %i.bez to i32
  %i.bfb = tail call noundef i32 @llvm.pext.i32(i32 %i.bfa, i32 -1431655766)
  %i.bfc = sdiv i32 %.02431.i66.i327, 8
  %i.bfd = sext i32 %i.bfc to i64
  %i.bfe = getelementptr inbounds i8, ptr %i.anf, i64 %i.bfd
  %i.bff = trunc nuw i32 %i.bfb to i16
  store i16 %i.bff, ptr %i.bfe, align 2, !tbaa !474
  %i.bfg = add nuw i32 %.02431.i66.i327, 16       ; 2 uses
  %i.bfh = icmp ult i32 %i.bfg, %i.bbj
  br i1 %i.bfh, label %.lr.ph.i65.i326, label %.preheader.i60.i320, !llvm.loop !1606

.lr.ph33.i61.i321:                                ; preds = %.preheader.i60.i320, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323
  %.032.i62.i322 = phi i64 [ %i.bfw, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323 ], [ %i.bbk, %.preheader.i60.i320 ] ; 5 uses
  %i.bfi = getelementptr inbounds nuw [2 x i8], ptr %i.bem, i64 %.032.i62.i322
  %i.bfj = load i16, ptr %i.bfi, align 2, !tbaa !474
  %i.bfk = icmp sgt i16 %i.bfj, %i.beo
  %i.bfl = lshr i64 %.032.i62.i322, 3
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bfl ; 2 uses
  %i.bfn = load i8, ptr %i.bfm, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bfk, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %.lr.ph33.i61.i321
  %i.bfo = trunc i64 %.032.i62.i322 to i8
  %i.bfp = and i8 %i.bfo, 7
  %i.bfq = shl nuw i8 1, %i.bfp
  %i.bfr = or i8 %i.bfq, %i.bfn
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323

bb.ln:                                            ; preds = %.lr.ph33.i61.i321
  %i.bfs = and i64 %.032.i62.i322, 7
  %i.bft = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bfs
  %i.bfu = load i8, ptr %i.bft, align 1, !tbaa !32
  %i.bfv = and i8 %i.bfu, %i.bfn
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323: ; preds = %bb.ln, %bb.lm
  %.sink.i.i64.i324 = phi i8 [ %i.bfv, %bb.ln ], [ %i.bfr, %bb.lm ]
  store i8 %.sink.i.i64.i324, ptr %i.bfm, align 1, !tbaa !32
  %i.bfw = add nuw i64 %.032.i62.i322, 1          ; 2 uses
  %i.bfx = icmp ult i64 %i.bfw, %i.ber
  br i1 %i.bfx, label %.lr.ph33.i61.i321, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1607

bb.lo:                                            ; preds = %bb.lk
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.ana, i64 120
  %i.bfz = load ptr, ptr %i.bfy, align 8, !tbaa !492 ; 2 uses
  br i1 %i.bbl, label %.lr.ph.i70.i318, label %.preheader.i67.i313

.preheader.i67.i313:                              ; preds = %.lr.ph.i70.i318, %bb.lo
  %i.bga = sext i32 %i.bbh to i64
  %i.bgb = icmp ult i32 %i.bbj, %i.bbh
  br i1 %i.bgb, label %.lr.ph34.i.i314, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i70.i318:                                  ; preds = %bb.lo, %.lr.ph.i70.i318
  %.02532.i.i319 = phi i32 [ %i.bgr, %.lr.ph.i70.i318 ], [ %i.bbf, %bb.lo ] ; 3 uses
  %i.bgc = sext i32 %.02532.i.i319 to i64         ; 2 uses
  %i.bgd = getelementptr inbounds [2 x i8], ptr %i.bem, i64 %i.bgc
  %i.bge = load <16 x i16>, ptr %i.bgd, align 1, !tbaa !32, !noalias !1608
  %i.bgf = getelementptr inbounds [2 x i8], ptr %i.bfz, i64 %i.bgc
  %i.bgg = load <16 x i16>, ptr %i.bgf, align 1, !tbaa !32, !noalias !1615
  %i.bgh = icmp sgt <16 x i16> %i.bge, %i.bgg
  %i.bgi = sext <16 x i1> %i.bgh to <16 x i16>
  %i.bgj = bitcast <16 x i16> %i.bgi to <32 x i8>
  %i.bgk = icmp slt <32 x i8> %i.bgj, zeroinitializer
  %i.bgl = bitcast <32 x i1> %i.bgk to i32
  %i.bgm = tail call noundef i32 @llvm.pext.i32(i32 %i.bgl, i32 -1431655766)
  %i.bgn = sdiv i32 %.02532.i.i319, 8
  %i.bgo = sext i32 %i.bgn to i64
  %i.bgp = getelementptr inbounds i8, ptr %i.anf, i64 %i.bgo
  %i.bgq = trunc nuw i32 %i.bgm to i16
  store i16 %i.bgq, ptr %i.bgp, align 2, !tbaa !474
  %i.bgr = add nuw i32 %.02532.i.i319, 16         ; 2 uses
  %i.bgs = icmp ult i32 %i.bgr, %i.bbj
  br i1 %i.bgs, label %.lr.ph.i70.i318, label %.preheader.i67.i313, !llvm.loop !1622

.lr.ph34.i.i314:                                  ; preds = %.preheader.i67.i313, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316
  %.033.i.i315 = phi i64 [ %i.bhj, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316 ], [ %i.bbk, %.preheader.i67.i313 ] ; 6 uses
  %i.bgt = getelementptr inbounds nuw [2 x i8], ptr %i.bem, i64 %.033.i.i315
  %i.bgu = getelementptr inbounds nuw [2 x i8], ptr %i.bfz, i64 %.033.i.i315
  %i.bgv = load i16, ptr %i.bgt, align 2, !tbaa !474
  %i.bgw = load i16, ptr %i.bgu, align 2, !tbaa !474
  %i.bgx = icmp sgt i16 %i.bgv, %i.bgw
  %i.bgy = lshr i64 %.033.i.i315, 3
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.bgy ; 2 uses
  %i.bha = load i8, ptr %i.bgz, align 1, !tbaa !32 ; 2 uses
  br i1 %i.bgx, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %.lr.ph34.i.i314
  %i.bhb = trunc i64 %.033.i.i315 to i8
  %i.bhc = and i8 %i.bhb, 7
  %i.bhd = shl nuw i8 1, %i.bhc
  %i.bhe = or i8 %i.bha, %i.bhd
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316

bb.lq:                                            ; preds = %.lr.ph34.i.i314
  %i.bhf = and i64 %.033.i.i315, 7
  %i.bhg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bhf
  %i.bhh = load i8, ptr %i.bhg, align 1, !tbaa !32
  %i.bhi = and i8 %i.bhh, %i.bha
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316: ; preds = %bb.lq, %bb.lp
  %.sink.i.i69.i317 = phi i8 [ %i.bhi, %bb.lq ], [ %i.bhe, %bb.lp ]
  store i8 %.sink.i.i69.i317, ptr %i.bgz, align 1, !tbaa !32
  %i.bhj = add nuw i64 %.033.i.i315, 1            ; 2 uses
  %i.bhk = icmp ult i64 %i.bhj, %i.bga
  br i1 %i.bhk, label %.lr.ph34.i.i314, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1623

_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i: ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i68.i316, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i63.i323, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i57.i331, %.lr.ph32.i.i338, %.lr.ph32.i.us.i340, %.preheader.i67.i313, %.preheader.i60.i320, %.preheader.i56.i328, %.preheader.i.i336
  tail call void @_ZN8facebook5velox10BaseVector10clearNullsERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(94) %.val4, ptr noundef nonnull align 8 dereferenceable(38) %i.amy)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit: ; preds = %.loopexit10.i202, %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt7greaterIvEEEviiPKT_S7_Ph.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.xt

bb.lr:                                            ; preds = %bb.a
  %i.bhl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bhm = load ptr, ptr %i.bhl, align 8, !tbaa !1488, !nonnull !57
  %i.bhn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bho = load ptr, ptr %i.bhn, align 8, !tbaa !1489, !nonnull !57, !align !318 ; 22 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !208 ; 6 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bhs = load ptr, ptr %i.bhr, align 8, !tbaa !1490, !nonnull !57, !align !318 ; 9 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bhu = load ptr, ptr %i.bht, align 8, !tbaa !1491, !nonnull !57, !align !318
  %.val5 = load ptr, ptr %i.bhu, align 8, !tbaa !208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %.val5, ptr %i.c, align 8, !tbaa !286
  %i.bhv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIbE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %.val5) ; 49 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.bhx = load i32, ptr %i.bhw, align 4, !tbaa !288
  switch i32 %i.bhx, label %.critedge.i360 [
    i32 1, label %bb.ls
    i32 3, label %bb.ls
  ]

bb.ls:                                            ; preds = %bb.lr, %bb.lr
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhq, i64 28 ; 2 uses
  %i.bhz = load i32, ptr %i.bhy, align 4, !tbaa !288
  switch i32 %i.bhz, label %.critedge.i360 [
    i32 1, label %bb.lt
    i32 3, label %bb.lt
  ]

bb.lt:                                            ; preds = %bb.ls, %bb.ls
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bho, i64 36 ; 2 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bho, i64 37
  %i.bic = load i8, ptr %i.bib, align 1, !tbaa !289, !range !56, !noundef !57
  %i.bid = trunc nuw i8 %i.bic to i1
  br i1 %i.bid, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499, label %bb.lu

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499: ; preds = %bb.lt
  %.0.in.pre.i.i500 = load i8, ptr %i.bia, align 4, !tbaa !64, !range !56
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357

bb.lu:                                            ; preds = %bb.lt
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bho, i64 28
  %i.bif = load i32, ptr %i.bie, align 4, !tbaa !291
  %i.big = icmp eq i32 %i.bif, 0
  br i1 %i.big, label %bb.lv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lv:                                            ; preds = %bb.lu
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bho, i64 32
  %i.bii = load i32, ptr %i.bih, align 8, !tbaa !300 ; 6 uses
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bho, i64 24
  %i.bik = load i32, ptr %i.bij, align 8, !tbaa !301
  %i.bil = icmp eq i32 %i.bii, %i.bik
  br i1 %i.bil, label %bb.lw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lw:                                            ; preds = %bb.lv
  %i.bim = load ptr, ptr %i.bho, align 8, !tbaa !302 ; 2 uses
  %.not.i.i.i491 = icmp sgt i32 %i.bii, 0
  br i1 %.not.i.i.i491, label %bb.lx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

bb.lx:                                            ; preds = %bb.lw
  %i.bin = and i32 %i.bii, 2147483584             ; 3 uses
  %i.bio = zext nneg i32 %i.bin to i64
  %.not37.i.i.not.i.i4931381.not = icmp eq i32 %i.bin, 0
  br i1 %.not37.i.i.not.i.i4931381.not, label %.critedge.i.i.i.i494, label %.lr.ph1383

bb.ly:                                            ; preds = %.lr.ph1383
  %indvars.iv.next.i.i498 = add nuw nsw i64 %indvars.iv.i.i4921382, 64 ; 2 uses
  %.not37.i.i.not.i.i493 = icmp samesign ult i64 %indvars.iv.next.i.i498, %i.bio
  br i1 %.not37.i.i.not.i.i493, label %.lr.ph1383, label %.critedge.i.i.i.i494, !llvm.loop !303

.lr.ph1383:                                       ; preds = %bb.lx, %bb.ly
  %indvars.iv.i.i4921382 = phi i64 [ %indvars.iv.next.i.i498, %bb.ly ], [ 0, %bb.lx ] ; 2 uses
  %i.bip = lshr exact i64 %indvars.iv.i.i4921382, 3
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bim, i64 %i.bip
  %i.bir = load i64, ptr %i.biq, align 8, !tbaa !176
  %i.bis = icmp eq i64 %i.bir, -1
  br i1 %i.bis, label %bb.ly, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, !llvm.loop !303

.critedge.i.i.i.i494:                             ; preds = %bb.ly, %bb.lx
  %.not38.i.i.i.i495 = icmp eq i32 %i.bii, %i.bin
  br i1 %.not38.i.i.i.i495, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, label %bb.lz

bb.lz:                                            ; preds = %.critedge.i.i.i.i494
  %i.bit = lshr i32 %i.bii, 6
  %i.biu = and i32 %i.bii, 63
  %i.biv = zext nneg i32 %i.biu to i64
  %notmask.i40.i.i.i.i496 = shl nsw i64 -1, %i.biv
  %i.biw = zext nneg i32 %i.bit to i64
  %i.bix = getelementptr inbounds nuw [8 x i8], ptr %i.bim, i64 %i.biw
  %i.biy = load i64, ptr %i.bix, align 8, !tbaa !176
  %.demorgan.i.i497 = or i64 %i.biy, %notmask.i40.i.i.i.i496
  %i.biz = icmp eq i64 %.demorgan.i.i497, -1
  %i.bja = zext i1 %i.biz to i16
  %i.bjb = or disjoint i16 %i.bja, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355: ; preds = %.lr.ph1383, %bb.lz, %.critedge.i.i.i.i494, %bb.lw, %bb.lv, %bb.lu
  %.sroa.0.0.insert.ext.i.i356 = phi i16 [ 256, %bb.lv ], [ 256, %bb.lu ], [ 257, %bb.lw ], [ 257, %.critedge.i.i.i.i494 ], [ %i.bjb, %bb.lz ], [ 256, %.lr.ph1383 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i356, ptr %i.bia, align 4
  %i.bjc = trunc i16 %.sroa.0.0.insert.ext.i.i356 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499
  %.0.in.i.i358 = phi i8 [ %.0.in.pre.i.i500, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i499 ], [ %i.bjc, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i355 ]
  %.0.i.i359 = trunc nuw i8 %.0.in.i.i358 to i1
  br i1 %.0.i.i359, label %bb.pj, label %.critedge.i360

.critedge.i360:                                   ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357, %bb.ls, %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.bjd = load ptr, ptr %i.bhs, align 8, !tbaa !239
  store ptr %i.bjd, ptr %33, align 8, !tbaa !304
  %i.bje = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr null, ptr %i.bje, align 8, !tbaa !313
  %i.bjf = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.ma unwind label %bb.mb

bb.ma:                                            ; preds = %.critedge.i360
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bjf, ptr noundef nonnull align 8 dereferenceable(94) %i.i, ptr noundef nonnull align 8 dereferenceable(38) %i.bho, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363 unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %.critedge.i360
  %i.bjg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bje) #28
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363: ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.bjh = load ptr, ptr %i.bhs, align 8, !tbaa !239
  store ptr %i.bjh, ptr %34, align 8, !tbaa !304
  %i.bji = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr null, ptr %i.bji, align 8, !tbaa !313
  %i.bjj = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %bb.mc unwind label %bb.md

bb.mc:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bjj, ptr noundef nonnull align 8 dereferenceable(94) %i.bhq, ptr noundef nonnull align 8 dereferenceable(38) %i.bho, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i366 unwind label %bb.md

bb.md:                                            ; preds = %bb.mc, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i363
  %i.bjk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bji) #28
  br label %.body.i364

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i366: ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %33, ptr %32, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  store ptr %34, ptr %.sroa.411.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i367 = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %i.bhm, ptr %.sroa.5.0..sroa_idx.i367, align 8
  %.sroa.6.0..sroa_idx.i368 = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 4 uses
end_hunk_3
begin_hunk_4_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
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
  %i.bbk = tail call noundef i32 @llvm.pext.i32(i32 %i.bbj, i32 -1431655766)
  %i.bbl = trunc nuw i32 %i.bbk to i16
  br label %.lr.ph.i.i353

.preheader.i.i344:                                ; preds = %.lr.ph.i.i353, %bb.lg
  %i.bbm = sext i32 %i.bav to i64                 ; 2 uses
  %i.bbn = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bbn, label %.lr.ph32.i.preheader.i345, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph32.i.preheader.i345:                        ; preds = %.preheader.i.i344
  %.not.i.i346 = icmp sgt i16 %i.bbb, %i.bbd
  br i1 %.not.i.i346, label %.lr.ph32.i.us.i349, label %.lr.ph32.i.i347

.lr.ph32.i.us.i349:                               ; preds = %.lr.ph32.i.preheader.i345, %.lr.ph32.i.us.i349
  %.031.i.us.i350 = phi i64 [ %i.bbv, %.lr.ph32.i.us.i349 ], [ %i.bay, %.lr.ph32.i.preheader.i345 ] ; 3 uses
  %i.bbo = lshr i64 %.031.i.us.i350, 3
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bbo ; 2 uses
  %i.bbq = load i8, ptr %i.bbp, align 1, !tbaa !32
  %i.bbr = and i64 %.031.i.us.i350, 7
  %i.bbs = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bbr
  %i.bbt = load i8, ptr %i.bbs, align 1, !tbaa !32
  %i.bbu = and i8 %i.bbt, %i.bbq
  store i8 %i.bbu, ptr %i.bbp, align 1, !tbaa !32
  %i.bbv = add nuw i64 %.031.i.us.i350, 1         ; 2 uses
  %i.bbw = icmp ult i64 %i.bbv, %i.bbm
  br i1 %i.bbw, label %.lr.ph32.i.us.i349, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1859

.lr.ph.i.i353:                                    ; preds = %.lr.ph.i.i353, %.lr.ph.i.preheader.i351
  %.02330.i.i354 = phi i32 [ %i.bca, %.lr.ph.i.i353 ], [ %i.bat, %.lr.ph.i.preheader.i351 ] ; 2 uses
  %i.bbx = sdiv i32 %.02330.i.i354, 8
  %i.bby = sext i32 %i.bbx to i64
  %i.bbz = getelementptr inbounds i8, ptr %i.amt, i64 %i.bby
  store i16 %i.bbl, ptr %i.bbz, align 2, !tbaa !474
  %i.bca = add nuw i32 %.02330.i.i354, 16         ; 2 uses
  %i.bcb = icmp ult i32 %i.bca, %i.bax
  br i1 %i.bcb, label %.lr.ph.i.i353, label %.preheader.i.i344, !llvm.loop !1860

.lr.ph32.i.i347:                                  ; preds = %.lr.ph32.i.preheader.i345, %.lr.ph32.i.i347
  %.031.i.i348 = phi i64 [ %i.bcj, %.lr.ph32.i.i347 ], [ %i.bay, %.lr.ph32.i.preheader.i345 ] ; 3 uses
  %i.bcc = lshr i64 %.031.i.i348, 3
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bcc ; 2 uses
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !32
  %i.bcf = trunc i64 %.031.i.i348 to i8
  %i.bcg = and i8 %i.bcf, 7
  %i.bch = shl nuw i8 1, %i.bcg
  %i.bci = or i8 %i.bch, %i.bce
  store i8 %i.bci, ptr %i.bcd, align 1, !tbaa !32
  %i.bcj = add nuw i64 %.031.i.i348, 1            ; 2 uses
  %i.bck = icmp ult i64 %i.bcj, %i.bbm
  br i1 %i.bck, label %.lr.ph32.i.i347, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1859

bb.lh:                                            ; preds = %bb.lf
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.amo, i64 120
  %i.bcm = load ptr, ptr %i.bcl, align 8, !tbaa !492 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i60.preheader.i341, label %.preheader.i56.i335

.lr.ph.i60.preheader.i341:                        ; preds = %bb.lh
  %i.bcn = insertelement <16 x i16> poison, i16 %i.bbb, i64 0
  %i.bco = shufflevector <16 x i16> %i.bcn, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i60.i342

.preheader.i56.i335:                              ; preds = %.lr.ph.i60.i342, %bb.lh
  %i.bcp = sext i32 %i.bav to i64
  %i.bcq = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bcq, label %.lr.ph33.i.i336, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i60.i342:                                  ; preds = %.lr.ph.i60.i342, %.lr.ph.i60.preheader.i341
  %.02431.i.i343 = phi i32 [ %i.bde, %.lr.ph.i60.i342 ], [ %i.bat, %.lr.ph.i60.preheader.i341 ] ; 3 uses
  %i.bcr = sext i32 %.02431.i.i343 to i64
  %i.bcs = getelementptr inbounds [2 x i8], ptr %i.bcm, i64 %i.bcr
  %i.bct = load <16 x i16>, ptr %i.bcs, align 1, !tbaa !32, !noalias !1861
  %i.bcu = icmp sge <16 x i16> %i.bct, %i.bco
  %i.bcv = sext <16 x i1> %i.bcu to <16 x i16>
  %i.bcw = bitcast <16 x i16> %i.bcv to <32 x i8>
  %i.bcx = icmp slt <32 x i8> %i.bcw, zeroinitializer
  %i.bcy = bitcast <32 x i1> %i.bcx to i32
  %i.bcz = tail call noundef i32 @llvm.pext.i32(i32 %i.bcy, i32 -1431655766)
  %i.bda = sdiv i32 %.02431.i.i343, 8
  %i.bdb = sext i32 %i.bda to i64
  %i.bdc = getelementptr inbounds i8, ptr %i.amt, i64 %i.bdb
  %i.bdd = trunc nuw i32 %i.bcz to i16
  store i16 %i.bdd, ptr %i.bdc, align 2, !tbaa !474
  %i.bde = add nuw i32 %.02431.i.i343, 16         ; 2 uses
  %i.bdf = icmp ult i32 %i.bde, %i.bax
  br i1 %i.bdf, label %.lr.ph.i60.i342, label %.preheader.i56.i335, !llvm.loop !1868

.lr.ph33.i.i336:                                  ; preds = %.preheader.i56.i335, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339
  %.032.i.i337 = phi i64 [ %i.bdt, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339 ], [ %i.bay, %.preheader.i56.i335 ] ; 5 uses
  %i.bdg = getelementptr inbounds nuw [2 x i8], ptr %i.bcm, i64 %.032.i.i337
  %i.bdh = load i16, ptr %i.bdg, align 2, !tbaa !474
  %.not.i57.i338 = icmp sgt i16 %i.bbb, %i.bdh
  %i.bdi = lshr i64 %.032.i.i337, 3
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bdi ; 2 uses
  %i.bdk = load i8, ptr %i.bdj, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i57.i338, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %.lr.ph33.i.i336
  %i.bdl = trunc i64 %.032.i.i337 to i8
  %i.bdm = and i8 %i.bdl, 7
  %i.bdn = shl nuw i8 1, %i.bdm
  %i.bdo = or i8 %i.bdn, %i.bdk
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339

bb.lj:                                            ; preds = %.lr.ph33.i.i336
  %i.bdp = and i64 %.032.i.i337, 7
  %i.bdq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bdp
  %i.bdr = load i8, ptr %i.bdq, align 1, !tbaa !32
  %i.bds = and i8 %i.bdr, %i.bdk
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339: ; preds = %bb.lj, %bb.li
  %.sink.i.i59.i340 = phi i8 [ %i.bds, %bb.lj ], [ %i.bdo, %bb.li ]
  store i8 %.sink.i.i59.i340, ptr %i.bdj, align 1, !tbaa !32
  %i.bdt = add nuw i64 %.032.i.i337, 1            ; 2 uses
  %i.bdu = icmp ult i64 %i.bdt, %i.bcp
  br i1 %i.bdu, label %.lr.ph33.i.i336, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1869

bb.lk:                                            ; preds = %bb.le
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !492 ; 4 uses
  br i1 %i.bar, label %bb.ll, label %bb.lo

bb.ll:                                            ; preds = %bb.lk
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.amo, i64 144
  %i.bdy = load i16, ptr %i.bdx, align 8, !tbaa !482 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i67.preheader.i332, label %.preheader.i61.i326

.lr.ph.i67.preheader.i332:                        ; preds = %bb.ll
  %i.bdz = insertelement <16 x i16> poison, i16 %i.bdy, i64 0
  %i.bea = shufflevector <16 x i16> %i.bdz, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i67.i333

.preheader.i61.i326:                              ; preds = %.lr.ph.i67.i333, %bb.ll
  %i.beb = sext i32 %i.bav to i64
  %i.bec = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bec, label %.lr.ph33.i62.i327, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i67.i333:                                  ; preds = %.lr.ph.i67.i333, %.lr.ph.i67.preheader.i332
  %.02431.i68.i334 = phi i32 [ %i.beq, %.lr.ph.i67.i333 ], [ %i.bat, %.lr.ph.i67.preheader.i332 ] ; 3 uses
  %i.bed = sext i32 %.02431.i68.i334 to i64
  %i.bee = getelementptr inbounds [2 x i8], ptr %i.bdw, i64 %i.bed
  %i.bef = load <16 x i16>, ptr %i.bee, align 1, !tbaa !32, !noalias !1870
  %i.beg = icmp sge <16 x i16> %i.bea, %i.bef
  %i.beh = sext <16 x i1> %i.beg to <16 x i16>
  %i.bei = bitcast <16 x i16> %i.beh to <32 x i8>
  %i.bej = icmp slt <32 x i8> %i.bei, zeroinitializer
  %i.bek = bitcast <32 x i1> %i.bej to i32
  %i.bel = tail call noundef i32 @llvm.pext.i32(i32 %i.bek, i32 -1431655766)
  %i.bem = sdiv i32 %.02431.i68.i334, 8
  %i.ben = sext i32 %i.bem to i64
  %i.beo = getelementptr inbounds i8, ptr %i.amt, i64 %i.ben
  %i.bep = trunc nuw i32 %i.bel to i16
  store i16 %i.bep, ptr %i.beo, align 2, !tbaa !474
  %i.beq = add nuw i32 %.02431.i68.i334, 16       ; 2 uses
  %i.ber = icmp ult i32 %i.beq, %i.bax
  br i1 %i.ber, label %.lr.ph.i67.i333, label %.preheader.i61.i326, !llvm.loop !1877

.lr.ph33.i62.i327:                                ; preds = %.preheader.i61.i326, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330
  %.032.i63.i328 = phi i64 [ %i.bff, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330 ], [ %i.bay, %.preheader.i61.i326 ] ; 5 uses
  %i.bes = getelementptr inbounds nuw [2 x i8], ptr %i.bdw, i64 %.032.i63.i328
  %i.bet = load i16, ptr %i.bes, align 2, !tbaa !474
  %.not.i64.i329 = icmp sgt i16 %i.bet, %i.bdy
  %i.beu = lshr i64 %.032.i63.i328, 3
  %i.bev = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.beu ; 2 uses
  %i.bew = load i8, ptr %i.bev, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i64.i329, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %.lr.ph33.i62.i327
  %i.bex = trunc i64 %.032.i63.i328 to i8
  %i.bey = and i8 %i.bex, 7
  %i.bez = shl nuw i8 1, %i.bey
  %i.bfa = or i8 %i.bez, %i.bew
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330

bb.ln:                                            ; preds = %.lr.ph33.i62.i327
  %i.bfb = and i64 %.032.i63.i328, 7
  %i.bfc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bfb
  %i.bfd = load i8, ptr %i.bfc, align 1, !tbaa !32
  %i.bfe = and i8 %i.bfd, %i.bew
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330: ; preds = %bb.ln, %bb.lm
  %.sink.i.i66.i331 = phi i8 [ %i.bfe, %bb.ln ], [ %i.bfa, %bb.lm ]
  store i8 %.sink.i.i66.i331, ptr %i.bev, align 1, !tbaa !32
  %i.bff = add nuw i64 %.032.i63.i328, 1          ; 2 uses
  %i.bfg = icmp ult i64 %i.bff, %i.beb
  br i1 %i.bfg, label %.lr.ph33.i62.i327, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1878

bb.lo:                                            ; preds = %bb.lk
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.amo, i64 120
  %i.bfi = load ptr, ptr %i.bfh, align 8, !tbaa !492 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i73.i324, label %.preheader.i69.i318

.preheader.i69.i318:                              ; preds = %.lr.ph.i73.i324, %bb.lo
  %i.bfj = sext i32 %i.bav to i64
  %i.bfk = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bfk, label %.lr.ph34.i.i319, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i73.i324:                                  ; preds = %bb.lo, %.lr.ph.i73.i324
  %.02532.i.i325 = phi i32 [ %i.bga, %.lr.ph.i73.i324 ], [ %i.bat, %bb.lo ] ; 3 uses
  %i.bfl = sext i32 %.02532.i.i325 to i64         ; 2 uses
  %i.bfm = getelementptr inbounds [2 x i8], ptr %i.bdw, i64 %i.bfl
  %i.bfn = load <16 x i16>, ptr %i.bfm, align 1, !tbaa !32, !noalias !1879
  %i.bfo = getelementptr inbounds [2 x i8], ptr %i.bfi, i64 %i.bfl
  %i.bfp = load <16 x i16>, ptr %i.bfo, align 1, !tbaa !32, !noalias !1886
  %i.bfq = icmp sge <16 x i16> %i.bfp, %i.bfn
  %i.bfr = sext <16 x i1> %i.bfq to <16 x i16>
  %i.bfs = bitcast <16 x i16> %i.bfr to <32 x i8>
  %i.bft = icmp slt <32 x i8> %i.bfs, zeroinitializer
  %i.bfu = bitcast <32 x i1> %i.bft to i32
  %i.bfv = tail call noundef i32 @llvm.pext.i32(i32 %i.bfu, i32 -1431655766)
  %i.bfw = sdiv i32 %.02532.i.i325, 8
  %i.bfx = sext i32 %i.bfw to i64
  %i.bfy = getelementptr inbounds i8, ptr %i.amt, i64 %i.bfx
  %i.bfz = trunc nuw i32 %i.bfv to i16
  store i16 %i.bfz, ptr %i.bfy, align 2, !tbaa !474
  %i.bga = add nuw i32 %.02532.i.i325, 16         ; 2 uses
  %i.bgb = icmp ult i32 %i.bga, %i.bax
  br i1 %i.bgb, label %.lr.ph.i73.i324, label %.preheader.i69.i318, !llvm.loop !1893

.lr.ph34.i.i319:                                  ; preds = %.preheader.i69.i318, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322
  %.033.i.i320 = phi i64 [ %i.bgr, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322 ], [ %i.bay, %.preheader.i69.i318 ] ; 6 uses
  %i.bgc = getelementptr inbounds nuw [2 x i8], ptr %i.bdw, i64 %.033.i.i320
  %i.bgd = getelementptr inbounds nuw [2 x i8], ptr %i.bfi, i64 %.033.i.i320
  %i.bge = load i16, ptr %i.bgc, align 2, !tbaa !474
  %i.bgf = load i16, ptr %i.bgd, align 2, !tbaa !474
  %.not.i70.i321 = icmp sgt i16 %i.bge, %i.bgf
  %i.bgg = lshr i64 %.033.i.i320, 3
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bgg ; 2 uses
  %i.bgi = load i8, ptr %i.bgh, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i70.i321, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %.lr.ph34.i.i319
  %i.bgj = trunc i64 %.033.i.i320 to i8
  %i.bgk = and i8 %i.bgj, 7
  %i.bgl = shl nuw i8 1, %i.bgk
  %i.bgm = or i8 %i.bgi, %i.bgl
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322

bb.lq:                                            ; preds = %.lr.ph34.i.i319
  %i.bgn = and i64 %.033.i.i320, 7
  %i.bgo = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bgn
  %i.bgp = load i8, ptr %i.bgo, align 1, !tbaa !32
  %i.bgq = and i8 %i.bgp, %i.bgi
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322: ; preds = %bb.lq, %bb.lp
  %.sink.i.i72.i323 = phi i8 [ %i.bgq, %bb.lq ], [ %i.bgm, %bb.lp ]
  store i8 %.sink.i.i72.i323, ptr %i.bgh, align 1, !tbaa !32
  %i.bgr = add nuw i64 %.033.i.i320, 1            ; 2 uses
  %i.bgs = icmp ult i64 %i.bgr, %i.bfj
  br i1 %i.bgs, label %.lr.ph34.i.i319, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !1894

_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i: ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339, %.lr.ph32.i.i347, %.lr.ph32.i.us.i349, %.preheader.i69.i318, %.preheader.i61.i326, %.preheader.i56.i335, %.preheader.i.i344
  tail call void @_ZN8facebook5velox10BaseVector10clearNullsERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(94) %.val4, ptr noundef nonnull align 8 dereferenceable(38) %i.amm)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit: ; preds = %.loopexit10.i207, %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt10less_equalIvEEEviiPKT_S7_Ph.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.xt

bb.lr:                                            ; preds = %bb.a
  %i.bgt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bgu = load ptr, ptr %i.bgt, align 8, !tbaa !1759, !nonnull !57
  %i.bgv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !1760, !nonnull !57, !align !318 ; 22 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bgy = load ptr, ptr %i.bgx, align 8, !tbaa !208 ; 6 uses
  %i.bgz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bha = load ptr, ptr %i.bgz, align 8, !tbaa !1761, !nonnull !57, !align !318 ; 9 uses
  %i.bhb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !1762, !nonnull !57, !align !318
  %.val5 = load ptr, ptr %i.bhc, align 8, !tbaa !208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %.val5, ptr %i.c, align 8, !tbaa !286
  %i.bhd = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIbE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %.val5) ; 49 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.bhf = load i32, ptr %i.bhe, align 4, !tbaa !288
  switch i32 %i.bhf, label %.critedge.i370 [
    i32 1, label %bb.ls
    i32 3, label %bb.ls
  ]

bb.ls:                                            ; preds = %bb.lr, %bb.lr
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bgy, i64 28 ; 2 uses
  %i.bhh = load i32, ptr %i.bhg, align 4, !tbaa !288
  switch i32 %i.bhh, label %.critedge.i370 [
    i32 1, label %bb.lt
    i32 3, label %bb.lt
  ]

bb.lt:                                            ; preds = %bb.ls, %bb.ls
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bgw, i64 36 ; 2 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bgw, i64 37
  %i.bhk = load i8, ptr %i.bhj, align 1, !tbaa !289, !range !56, !noundef !57
  %i.bhl = trunc nuw i8 %i.bhk to i1
  br i1 %i.bhl, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511, label %bb.lu

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511: ; preds = %bb.lt
  %.0.in.pre.i.i512 = load i8, ptr %i.bhi, align 4, !tbaa !64, !range !56
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367

bb.lu:                                            ; preds = %bb.lt
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bgw, i64 28
  %i.bhn = load i32, ptr %i.bhm, align 4, !tbaa !291
  %i.bho = icmp eq i32 %i.bhn, 0
  br i1 %i.bho, label %bb.lv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lv:                                            ; preds = %bb.lu
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bgw, i64 32
  %i.bhq = load i32, ptr %i.bhp, align 8, !tbaa !300 ; 6 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bgw, i64 24
  %i.bhs = load i32, ptr %i.bhr, align 8, !tbaa !301
  %i.bht = icmp eq i32 %i.bhq, %i.bhs
  br i1 %i.bht, label %bb.lw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lw:                                            ; preds = %bb.lv
  %i.bhu = load ptr, ptr %i.bgw, align 8, !tbaa !302 ; 2 uses
  %.not.i.i.i503 = icmp sgt i32 %i.bhq, 0
  br i1 %.not.i.i.i503, label %bb.lx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lx:                                            ; preds = %bb.lw
  %i.bhv = and i32 %i.bhq, 2147483584             ; 3 uses
  %i.bhw = zext nneg i32 %i.bhv to i64
  %.not37.i.i.not.i.i5051410.not = icmp eq i32 %i.bhv, 0
  br i1 %.not37.i.i.not.i.i5051410.not, label %.critedge.i.i.i.i506, label %.lr.ph1412

bb.ly:                                            ; preds = %.lr.ph1412
  %indvars.iv.next.i.i510 = add nuw nsw i64 %indvars.iv.i.i5041411, 64 ; 2 uses
  %.not37.i.i.not.i.i505 = icmp samesign ult i64 %indvars.iv.next.i.i510, %i.bhw
  br i1 %.not37.i.i.not.i.i505, label %.lr.ph1412, label %.critedge.i.i.i.i506, !llvm.loop !303

.lr.ph1412:                                       ; preds = %bb.lx, %bb.ly
  %indvars.iv.i.i5041411 = phi i64 [ %indvars.iv.next.i.i510, %bb.ly ], [ 0, %bb.lx ] ; 2 uses
  %i.bhx = lshr exact i64 %indvars.iv.i.i5041411, 3
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhu, i64 %i.bhx
  %i.bhz = load i64, ptr %i.bhy, align 8, !tbaa !176
  %i.bia = icmp eq i64 %i.bhz, -1
  br i1 %i.bia, label %bb.ly, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, !llvm.loop !303

.critedge.i.i.i.i506:                             ; preds = %bb.ly, %bb.lx
  %.not38.i.i.i.i507 = icmp eq i32 %i.bhq, %i.bhv
  br i1 %.not38.i.i.i.i507, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, label %bb.lz

bb.lz:                                            ; preds = %.critedge.i.i.i.i506
  %i.bib = lshr i32 %i.bhq, 6
  %i.bic = and i32 %i.bhq, 63
  %i.bid = zext nneg i32 %i.bic to i64
  %notmask.i40.i.i.i.i508 = shl nsw i64 -1, %i.bid
  %i.bie = zext nneg i32 %i.bib to i64
  %i.bif = getelementptr inbounds nuw [8 x i8], ptr %i.bhu, i64 %i.bie
  %i.big = load i64, ptr %i.bif, align 8, !tbaa !176
  %.demorgan.i.i509 = or i64 %i.big, %notmask.i40.i.i.i.i508
  %i.bih = icmp eq i64 %.demorgan.i.i509, -1
  %i.bii = zext i1 %i.bih to i16
  %i.bij = or disjoint i16 %i.bii, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365: ; preds = %.lr.ph1412, %bb.lz, %.critedge.i.i.i.i506, %bb.lw, %bb.lv, %bb.lu
  %.sroa.0.0.insert.ext.i.i366 = phi i16 [ 256, %bb.lv ], [ 256, %bb.lu ], [ 257, %bb.lw ], [ 257, %.critedge.i.i.i.i506 ], [ %i.bij, %bb.lz ], [ 256, %.lr.ph1412 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i366, ptr %i.bhi, align 4
  %i.bik = trunc i16 %.sroa.0.0.insert.ext.i.i366 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511
  %.0.in.i.i368 = phi i8 [ %.0.in.pre.i.i512, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511 ], [ %i.bik, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365 ]
  %.0.i.i369 = trunc nuw i8 %.0.in.i.i368 to i1
  br i1 %.0.i.i369, label %bb.pj, label %.critedge.i370

.critedge.i370:                                   ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367, %bb.ls, %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.bil = load ptr, ptr %i.bha, align 8, !tbaa !239
  store ptr %i.bil, ptr %33, align 8, !tbaa !304
  %i.bim = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr null, ptr %i.bim, align 8, !tbaa !313
  %i.bin = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.ma unwind label %bb.mb

bb.ma:                                            ; preds = %.critedge.i370
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bin, ptr noundef nonnull align 8 dereferenceable(94) %i.i, ptr noundef nonnull align 8 dereferenceable(38) %i.bgw, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373 unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %.critedge.i370
  %i.bio = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bim) #28
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373: ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.bip = load ptr, ptr %i.bha, align 8, !tbaa !239
  store ptr %i.bip, ptr %34, align 8, !tbaa !304
  %i.biq = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr null, ptr %i.biq, align 8, !tbaa !313
  %i.bir = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %bb.mc unwind label %bb.md

bb.mc:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bir, ptr noundef nonnull align 8 dereferenceable(94) %i.bgy, ptr noundef nonnull align 8 dereferenceable(38) %i.bgw, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i376 unwind label %bb.md

bb.md:                                            ; preds = %bb.mc, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373
  %i.bis = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.biq) #28
  br label %.body.i374

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i376: ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %33, ptr %32, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  store ptr %34, ptr %.sroa.411.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i377 = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %i.bgu, ptr %.sroa.5.0..sroa_idx.i377, align 8
  %.sroa.6.0..sroa_idx.i378 = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 4 uses
end_hunk_4
begin_hunk_5_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
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
  %i.bbk = tail call noundef i32 @llvm.pext.i32(i32 %i.bbj, i32 -1431655766)
  %i.bbl = trunc nuw i32 %i.bbk to i16
  br label %.lr.ph.i.i353

.preheader.i.i344:                                ; preds = %.lr.ph.i.i353, %bb.lg
  %i.bbm = sext i32 %i.bav to i64                 ; 2 uses
  %i.bbn = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bbn, label %.lr.ph32.i.preheader.i345, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph32.i.preheader.i345:                        ; preds = %.preheader.i.i344
  %.not.i.i346 = icmp slt i16 %i.bbb, %i.bbd
  br i1 %.not.i.i346, label %.lr.ph32.i.us.i349, label %.lr.ph32.i.i347

.lr.ph32.i.us.i349:                               ; preds = %.lr.ph32.i.preheader.i345, %.lr.ph32.i.us.i349
  %.031.i.us.i350 = phi i64 [ %i.bbv, %.lr.ph32.i.us.i349 ], [ %i.bay, %.lr.ph32.i.preheader.i345 ] ; 3 uses
  %i.bbo = lshr i64 %.031.i.us.i350, 3
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bbo ; 2 uses
  %i.bbq = load i8, ptr %i.bbp, align 1, !tbaa !32
  %i.bbr = and i64 %.031.i.us.i350, 7
  %i.bbs = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bbr
  %i.bbt = load i8, ptr %i.bbs, align 1, !tbaa !32
  %i.bbu = and i8 %i.bbt, %i.bbq
  store i8 %i.bbu, ptr %i.bbp, align 1, !tbaa !32
  %i.bbv = add nuw i64 %.031.i.us.i350, 1         ; 2 uses
  %i.bbw = icmp ult i64 %i.bbv, %i.bbm
  br i1 %i.bbw, label %.lr.ph32.i.us.i349, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !2130

.lr.ph.i.i353:                                    ; preds = %.lr.ph.i.i353, %.lr.ph.i.preheader.i351
  %.02330.i.i354 = phi i32 [ %i.bca, %.lr.ph.i.i353 ], [ %i.bat, %.lr.ph.i.preheader.i351 ] ; 2 uses
  %i.bbx = sdiv i32 %.02330.i.i354, 8
  %i.bby = sext i32 %i.bbx to i64
  %i.bbz = getelementptr inbounds i8, ptr %i.amt, i64 %i.bby
  store i16 %i.bbl, ptr %i.bbz, align 2, !tbaa !474
  %i.bca = add nuw i32 %.02330.i.i354, 16         ; 2 uses
  %i.bcb = icmp ult i32 %i.bca, %i.bax
  br i1 %i.bcb, label %.lr.ph.i.i353, label %.preheader.i.i344, !llvm.loop !2131

.lr.ph32.i.i347:                                  ; preds = %.lr.ph32.i.preheader.i345, %.lr.ph32.i.i347
  %.031.i.i348 = phi i64 [ %i.bcj, %.lr.ph32.i.i347 ], [ %i.bay, %.lr.ph32.i.preheader.i345 ] ; 3 uses
  %i.bcc = lshr i64 %.031.i.i348, 3
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bcc ; 2 uses
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !32
  %i.bcf = trunc i64 %.031.i.i348 to i8
  %i.bcg = and i8 %i.bcf, 7
  %i.bch = shl nuw i8 1, %i.bcg
  %i.bci = or i8 %i.bch, %i.bce
  store i8 %i.bci, ptr %i.bcd, align 1, !tbaa !32
  %i.bcj = add nuw i64 %.031.i.i348, 1            ; 2 uses
  %i.bck = icmp ult i64 %i.bcj, %i.bbm
  br i1 %i.bck, label %.lr.ph32.i.i347, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !2130

bb.lh:                                            ; preds = %bb.lf
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.amo, i64 120
  %i.bcm = load ptr, ptr %i.bcl, align 8, !tbaa !492 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i60.preheader.i341, label %.preheader.i56.i335

.lr.ph.i60.preheader.i341:                        ; preds = %bb.lh
  %i.bcn = insertelement <16 x i16> poison, i16 %i.bbb, i64 0
  %i.bco = shufflevector <16 x i16> %i.bcn, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i60.i342

.preheader.i56.i335:                              ; preds = %.lr.ph.i60.i342, %bb.lh
  %i.bcp = sext i32 %i.bav to i64
  %i.bcq = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bcq, label %.lr.ph33.i.i336, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i60.i342:                                  ; preds = %.lr.ph.i60.i342, %.lr.ph.i60.preheader.i341
  %.02431.i.i343 = phi i32 [ %i.bde, %.lr.ph.i60.i342 ], [ %i.bat, %.lr.ph.i60.preheader.i341 ] ; 3 uses
  %i.bcr = sext i32 %.02431.i.i343 to i64
  %i.bcs = getelementptr inbounds [2 x i8], ptr %i.bcm, i64 %i.bcr
  %i.bct = load <16 x i16>, ptr %i.bcs, align 1, !tbaa !32, !noalias !2132
  %i.bcu = icmp sge <16 x i16> %i.bco, %i.bct
  %i.bcv = sext <16 x i1> %i.bcu to <16 x i16>
  %i.bcw = bitcast <16 x i16> %i.bcv to <32 x i8>
  %i.bcx = icmp slt <32 x i8> %i.bcw, zeroinitializer
  %i.bcy = bitcast <32 x i1> %i.bcx to i32
  %i.bcz = tail call noundef i32 @llvm.pext.i32(i32 %i.bcy, i32 -1431655766)
  %i.bda = sdiv i32 %.02431.i.i343, 8
  %i.bdb = sext i32 %i.bda to i64
  %i.bdc = getelementptr inbounds i8, ptr %i.amt, i64 %i.bdb
  %i.bdd = trunc nuw i32 %i.bcz to i16
  store i16 %i.bdd, ptr %i.bdc, align 2, !tbaa !474
  %i.bde = add nuw i32 %.02431.i.i343, 16         ; 2 uses
  %i.bdf = icmp ult i32 %i.bde, %i.bax
  br i1 %i.bdf, label %.lr.ph.i60.i342, label %.preheader.i56.i335, !llvm.loop !2139

.lr.ph33.i.i336:                                  ; preds = %.preheader.i56.i335, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339
  %.032.i.i337 = phi i64 [ %i.bdt, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339 ], [ %i.bay, %.preheader.i56.i335 ] ; 5 uses
  %i.bdg = getelementptr inbounds nuw [2 x i8], ptr %i.bcm, i64 %.032.i.i337
  %i.bdh = load i16, ptr %i.bdg, align 2, !tbaa !474
  %.not.i57.i338 = icmp slt i16 %i.bbb, %i.bdh
  %i.bdi = lshr i64 %.032.i.i337, 3
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bdi ; 2 uses
  %i.bdk = load i8, ptr %i.bdj, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i57.i338, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %.lr.ph33.i.i336
  %i.bdl = trunc i64 %.032.i.i337 to i8
  %i.bdm = and i8 %i.bdl, 7
  %i.bdn = shl nuw i8 1, %i.bdm
  %i.bdo = or i8 %i.bdn, %i.bdk
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339

bb.lj:                                            ; preds = %.lr.ph33.i.i336
  %i.bdp = and i64 %.032.i.i337, 7
  %i.bdq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bdp
  %i.bdr = load i8, ptr %i.bdq, align 1, !tbaa !32
  %i.bds = and i8 %i.bdr, %i.bdk
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339: ; preds = %bb.lj, %bb.li
  %.sink.i.i59.i340 = phi i8 [ %i.bds, %bb.lj ], [ %i.bdo, %bb.li ]
  store i8 %.sink.i.i59.i340, ptr %i.bdj, align 1, !tbaa !32
  %i.bdt = add nuw i64 %.032.i.i337, 1            ; 2 uses
  %i.bdu = icmp ult i64 %i.bdt, %i.bcp
  br i1 %i.bdu, label %.lr.ph33.i.i336, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !2140

bb.lk:                                            ; preds = %bb.le
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !492 ; 4 uses
  br i1 %i.bar, label %bb.ll, label %bb.lo

bb.ll:                                            ; preds = %bb.lk
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.amo, i64 144
  %i.bdy = load i16, ptr %i.bdx, align 8, !tbaa !482 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i67.preheader.i332, label %.preheader.i61.i326

.lr.ph.i67.preheader.i332:                        ; preds = %bb.ll
  %i.bdz = insertelement <16 x i16> poison, i16 %i.bdy, i64 0
  %i.bea = shufflevector <16 x i16> %i.bdz, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i67.i333

.preheader.i61.i326:                              ; preds = %.lr.ph.i67.i333, %bb.ll
  %i.beb = sext i32 %i.bav to i64
  %i.bec = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bec, label %.lr.ph33.i62.i327, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i67.i333:                                  ; preds = %.lr.ph.i67.i333, %.lr.ph.i67.preheader.i332
  %.02431.i68.i334 = phi i32 [ %i.beq, %.lr.ph.i67.i333 ], [ %i.bat, %.lr.ph.i67.preheader.i332 ] ; 3 uses
  %i.bed = sext i32 %.02431.i68.i334 to i64
  %i.bee = getelementptr inbounds [2 x i8], ptr %i.bdw, i64 %i.bed
  %i.bef = load <16 x i16>, ptr %i.bee, align 1, !tbaa !32, !noalias !2141
  %i.beg = icmp sge <16 x i16> %i.bef, %i.bea
  %i.beh = sext <16 x i1> %i.beg to <16 x i16>
  %i.bei = bitcast <16 x i16> %i.beh to <32 x i8>
  %i.bej = icmp slt <32 x i8> %i.bei, zeroinitializer
  %i.bek = bitcast <32 x i1> %i.bej to i32
  %i.bel = tail call noundef i32 @llvm.pext.i32(i32 %i.bek, i32 -1431655766)
  %i.bem = sdiv i32 %.02431.i68.i334, 8
  %i.ben = sext i32 %i.bem to i64
  %i.beo = getelementptr inbounds i8, ptr %i.amt, i64 %i.ben
  %i.bep = trunc nuw i32 %i.bel to i16
  store i16 %i.bep, ptr %i.beo, align 2, !tbaa !474
  %i.beq = add nuw i32 %.02431.i68.i334, 16       ; 2 uses
  %i.ber = icmp ult i32 %i.beq, %i.bax
  br i1 %i.ber, label %.lr.ph.i67.i333, label %.preheader.i61.i326, !llvm.loop !2148

.lr.ph33.i62.i327:                                ; preds = %.preheader.i61.i326, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330
  %.032.i63.i328 = phi i64 [ %i.bff, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330 ], [ %i.bay, %.preheader.i61.i326 ] ; 5 uses
  %i.bes = getelementptr inbounds nuw [2 x i8], ptr %i.bdw, i64 %.032.i63.i328
  %i.bet = load i16, ptr %i.bes, align 2, !tbaa !474
  %.not.i64.i329 = icmp slt i16 %i.bet, %i.bdy
  %i.beu = lshr i64 %.032.i63.i328, 3
  %i.bev = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.beu ; 2 uses
  %i.bew = load i8, ptr %i.bev, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i64.i329, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %.lr.ph33.i62.i327
  %i.bex = trunc i64 %.032.i63.i328 to i8
  %i.bey = and i8 %i.bex, 7
  %i.bez = shl nuw i8 1, %i.bey
  %i.bfa = or i8 %i.bez, %i.bew
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330

bb.ln:                                            ; preds = %.lr.ph33.i62.i327
  %i.bfb = and i64 %.032.i63.i328, 7
  %i.bfc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bfb
  %i.bfd = load i8, ptr %i.bfc, align 1, !tbaa !32
  %i.bfe = and i8 %i.bfd, %i.bew
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330: ; preds = %bb.ln, %bb.lm
  %.sink.i.i66.i331 = phi i8 [ %i.bfe, %bb.ln ], [ %i.bfa, %bb.lm ]
  store i8 %.sink.i.i66.i331, ptr %i.bev, align 1, !tbaa !32
  %i.bff = add nuw i64 %.032.i63.i328, 1          ; 2 uses
  %i.bfg = icmp ult i64 %i.bff, %i.beb
  br i1 %i.bfg, label %.lr.ph33.i62.i327, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !2149

bb.lo:                                            ; preds = %bb.lk
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.amo, i64 120
  %i.bfi = load ptr, ptr %i.bfh, align 8, !tbaa !492 ; 2 uses
  br i1 %i.baz, label %.lr.ph.i73.i324, label %.preheader.i69.i318

.preheader.i69.i318:                              ; preds = %.lr.ph.i73.i324, %bb.lo
  %i.bfj = sext i32 %i.bav to i64
  %i.bfk = icmp ult i32 %i.bax, %i.bav
  br i1 %i.bfk, label %.lr.ph34.i.i319, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i

.lr.ph.i73.i324:                                  ; preds = %bb.lo, %.lr.ph.i73.i324
  %.02532.i.i325 = phi i32 [ %i.bga, %.lr.ph.i73.i324 ], [ %i.bat, %bb.lo ] ; 3 uses
  %i.bfl = sext i32 %.02532.i.i325 to i64         ; 2 uses
  %i.bfm = getelementptr inbounds [2 x i8], ptr %i.bdw, i64 %i.bfl
  %i.bfn = load <16 x i16>, ptr %i.bfm, align 1, !tbaa !32, !noalias !2150
  %i.bfo = getelementptr inbounds [2 x i8], ptr %i.bfi, i64 %i.bfl
  %i.bfp = load <16 x i16>, ptr %i.bfo, align 1, !tbaa !32, !noalias !2157
  %i.bfq = icmp sge <16 x i16> %i.bfn, %i.bfp
  %i.bfr = sext <16 x i1> %i.bfq to <16 x i16>
  %i.bfs = bitcast <16 x i16> %i.bfr to <32 x i8>
  %i.bft = icmp slt <32 x i8> %i.bfs, zeroinitializer
  %i.bfu = bitcast <32 x i1> %i.bft to i32
  %i.bfv = tail call noundef i32 @llvm.pext.i32(i32 %i.bfu, i32 -1431655766)
  %i.bfw = sdiv i32 %.02532.i.i325, 8
  %i.bfx = sext i32 %i.bfw to i64
  %i.bfy = getelementptr inbounds i8, ptr %i.amt, i64 %i.bfx
  %i.bfz = trunc nuw i32 %i.bfv to i16
  store i16 %i.bfz, ptr %i.bfy, align 2, !tbaa !474
  %i.bga = add nuw i32 %.02532.i.i325, 16         ; 2 uses
  %i.bgb = icmp ult i32 %i.bga, %i.bax
  br i1 %i.bgb, label %.lr.ph.i73.i324, label %.preheader.i69.i318, !llvm.loop !2164

.lr.ph34.i.i319:                                  ; preds = %.preheader.i69.i318, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322
  %.033.i.i320 = phi i64 [ %i.bgr, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322 ], [ %i.bay, %.preheader.i69.i318 ] ; 6 uses
  %i.bgc = getelementptr inbounds nuw [2 x i8], ptr %i.bdw, i64 %.033.i.i320
  %i.bgd = getelementptr inbounds nuw [2 x i8], ptr %i.bfi, i64 %.033.i.i320
  %i.bge = load i16, ptr %i.bgc, align 2, !tbaa !474
  %i.bgf = load i16, ptr %i.bgd, align 2, !tbaa !474
  %.not.i70.i321 = icmp slt i16 %i.bge, %i.bgf
  %i.bgg = lshr i64 %.033.i.i320, 3
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.bgg ; 2 uses
  %i.bgi = load i8, ptr %i.bgh, align 1, !tbaa !32 ; 2 uses
  br i1 %.not.i70.i321, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %.lr.ph34.i.i319
  %i.bgj = trunc i64 %.033.i.i320 to i8
  %i.bgk = and i8 %i.bgj, 7
  %i.bgl = shl nuw i8 1, %i.bgk
  %i.bgm = or i8 %i.bgi, %i.bgl
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322

bb.lq:                                            ; preds = %.lr.ph34.i.i319
  %i.bgn = and i64 %.033.i.i320, 7
  %i.bgo = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bgn
  %i.bgp = load i8, ptr %i.bgo, align 1, !tbaa !32
  %i.bgq = and i8 %i.bgp, %i.bgi
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322: ; preds = %bb.lq, %bb.lp
  %.sink.i.i72.i323 = phi i8 [ %i.bgq, %bb.lq ], [ %i.bgm, %bb.lp ]
  store i8 %.sink.i.i72.i323, ptr %i.bgh, align 1, !tbaa !32
  %i.bgr = add nuw i64 %.033.i.i320, 1            ; 2 uses
  %i.bgs = icmp ult i64 %i.bgr, %i.bfj
  br i1 %i.bgs, label %.lr.ph34.i.i319, label %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i, !llvm.loop !2165

_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i: ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i71.i322, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i65.i330, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i58.i339, %.lr.ph32.i.i347, %.lr.ph32.i.us.i349, %.preheader.i69.i318, %.preheader.i61.i326, %.preheader.i56.i335, %.preheader.i.i344
  tail call void @_ZN8facebook5velox10BaseVector10clearNullsERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(94) %.val4, ptr noundef nonnull align 8 dereferenceable(38) %i.amm)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE2ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit: ; preds = %.loopexit10.i207, %_ZN8facebook5velox9functions19applySimdComparisonIsLb1ELb1ESt13greater_equalIvEEEviiPKT_S7_Ph.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.xt

bb.lr:                                            ; preds = %bb.a
  %i.bgt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bgu = load ptr, ptr %i.bgt, align 8, !tbaa !2030, !nonnull !57
  %i.bgv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !2031, !nonnull !57, !align !318 ; 22 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bgy = load ptr, ptr %i.bgx, align 8, !tbaa !208 ; 6 uses
  %i.bgz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bha = load ptr, ptr %i.bgz, align 8, !tbaa !2032, !nonnull !57, !align !318 ; 9 uses
  %i.bhb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !2033, !nonnull !57, !align !318
  %.val5 = load ptr, ptr %i.bhc, align 8, !tbaa !208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %.val5, ptr %i.c, align 8, !tbaa !286
  %i.bhd = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIbE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %.val5) ; 49 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.bhf = load i32, ptr %i.bhe, align 4, !tbaa !288
  switch i32 %i.bhf, label %.critedge.i370 [
    i32 1, label %bb.ls
    i32 3, label %bb.ls
  ]

bb.ls:                                            ; preds = %bb.lr, %bb.lr
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bgy, i64 28 ; 2 uses
  %i.bhh = load i32, ptr %i.bhg, align 4, !tbaa !288
  switch i32 %i.bhh, label %.critedge.i370 [
    i32 1, label %bb.lt
    i32 3, label %bb.lt
  ]

bb.lt:                                            ; preds = %bb.ls, %bb.ls
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bgw, i64 36 ; 2 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bgw, i64 37
  %i.bhk = load i8, ptr %i.bhj, align 1, !tbaa !289, !range !56, !noundef !57
  %i.bhl = trunc nuw i8 %i.bhk to i1
  br i1 %i.bhl, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511, label %bb.lu

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511: ; preds = %bb.lt
  %.0.in.pre.i.i512 = load i8, ptr %i.bhi, align 4, !tbaa !64, !range !56
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367

bb.lu:                                            ; preds = %bb.lt
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bgw, i64 28
  %i.bhn = load i32, ptr %i.bhm, align 4, !tbaa !291
  %i.bho = icmp eq i32 %i.bhn, 0
  br i1 %i.bho, label %bb.lv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lv:                                            ; preds = %bb.lu
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bgw, i64 32
  %i.bhq = load i32, ptr %i.bhp, align 8, !tbaa !300 ; 6 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bgw, i64 24
  %i.bhs = load i32, ptr %i.bhr, align 8, !tbaa !301
  %i.bht = icmp eq i32 %i.bhq, %i.bhs
  br i1 %i.bht, label %bb.lw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lw:                                            ; preds = %bb.lv
  %i.bhu = load ptr, ptr %i.bgw, align 8, !tbaa !302 ; 2 uses
  %.not.i.i.i503 = icmp sgt i32 %i.bhq, 0
  br i1 %.not.i.i.i503, label %bb.lx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

bb.lx:                                            ; preds = %bb.lw
  %i.bhv = and i32 %i.bhq, 2147483584             ; 3 uses
  %i.bhw = zext nneg i32 %i.bhv to i64
  %.not37.i.i.not.i.i5051410.not = icmp eq i32 %i.bhv, 0
  br i1 %.not37.i.i.not.i.i5051410.not, label %.critedge.i.i.i.i506, label %.lr.ph1412

bb.ly:                                            ; preds = %.lr.ph1412
  %indvars.iv.next.i.i510 = add nuw nsw i64 %indvars.iv.i.i5041411, 64 ; 2 uses
  %.not37.i.i.not.i.i505 = icmp samesign ult i64 %indvars.iv.next.i.i510, %i.bhw
  br i1 %.not37.i.i.not.i.i505, label %.lr.ph1412, label %.critedge.i.i.i.i506, !llvm.loop !303

.lr.ph1412:                                       ; preds = %bb.lx, %bb.ly
  %indvars.iv.i.i5041411 = phi i64 [ %indvars.iv.next.i.i510, %bb.ly ], [ 0, %bb.lx ] ; 2 uses
  %i.bhx = lshr exact i64 %indvars.iv.i.i5041411, 3
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhu, i64 %i.bhx
  %i.bhz = load i64, ptr %i.bhy, align 8, !tbaa !176
  %i.bia = icmp eq i64 %i.bhz, -1
  br i1 %i.bia, label %bb.ly, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, !llvm.loop !303

.critedge.i.i.i.i506:                             ; preds = %bb.ly, %bb.lx
  %.not38.i.i.i.i507 = icmp eq i32 %i.bhq, %i.bhv
  br i1 %.not38.i.i.i.i507, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, label %bb.lz

bb.lz:                                            ; preds = %.critedge.i.i.i.i506
  %i.bib = lshr i32 %i.bhq, 6
  %i.bic = and i32 %i.bhq, 63
  %i.bid = zext nneg i32 %i.bic to i64
  %notmask.i40.i.i.i.i508 = shl nsw i64 -1, %i.bid
  %i.bie = zext nneg i32 %i.bib to i64
  %i.bif = getelementptr inbounds nuw [8 x i8], ptr %i.bhu, i64 %i.bie
  %i.big = load i64, ptr %i.bif, align 8, !tbaa !176
  %.demorgan.i.i509 = or i64 %i.big, %notmask.i40.i.i.i.i508
  %i.bih = icmp eq i64 %.demorgan.i.i509, -1
  %i.bii = zext i1 %i.bih to i16
  %i.bij = or disjoint i16 %i.bii, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365: ; preds = %.lr.ph1412, %bb.lz, %.critedge.i.i.i.i506, %bb.lw, %bb.lv, %bb.lu
  %.sroa.0.0.insert.ext.i.i366 = phi i16 [ 256, %bb.lv ], [ 256, %bb.lu ], [ 257, %bb.lw ], [ 257, %.critedge.i.i.i.i506 ], [ %i.bij, %bb.lz ], [ 256, %.lr.ph1412 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i366, ptr %i.bhi, align 4
  %i.bik = trunc i16 %.sroa.0.0.insert.ext.i.i366 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511
  %.0.in.i.i368 = phi i8 [ %.0.in.pre.i.i512, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i511 ], [ %i.bik, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i365 ]
  %.0.i.i369 = trunc nuw i8 %.0.in.i.i368 to i1
  br i1 %.0.i.i369, label %bb.pj, label %.critedge.i370

.critedge.i370:                                   ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367, %bb.ls, %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.bil = load ptr, ptr %i.bha, align 8, !tbaa !239
  store ptr %i.bil, ptr %33, align 8, !tbaa !304
  %i.bim = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr null, ptr %i.bim, align 8, !tbaa !313
  %i.bin = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.ma unwind label %bb.mb

bb.ma:                                            ; preds = %.critedge.i370
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bin, ptr noundef nonnull align 8 dereferenceable(94) %i.i, ptr noundef nonnull align 8 dereferenceable(38) %i.bgw, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373 unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %.critedge.i370
  %i.bio = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bim) #28
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373: ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.bip = load ptr, ptr %i.bha, align 8, !tbaa !239
  store ptr %i.bip, ptr %34, align 8, !tbaa !304
  %i.biq = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr null, ptr %i.biq, align 8, !tbaa !313
  %i.bir = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %bb.mc unwind label %bb.md

bb.mc:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.bir, ptr noundef nonnull align 8 dereferenceable(94) %i.bgy, ptr noundef nonnull align 8 dereferenceable(38) %i.bgw, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i376 unwind label %bb.md

bb.md:                                            ; preds = %bb.mc, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i373
  %i.bis = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.biq) #28
  br label %.body.i374

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit48.i376: ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %33, ptr %32, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  store ptr %34, ptr %.sroa.411.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i377 = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %i.bgu, ptr %.sroa.5.0..sroa_idx.i377, align 8
  %.sroa.6.0..sroa_idx.i378 = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 4 uses
end_hunk_5
